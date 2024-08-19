// Copyright (c) 2024 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package connectionutils

import (
	"bufio"
	"errors"
	"fmt"
	"math"
	"net/http"
	"strings"
	"sync"
	"time"

	"github.com/gorilla/websocket"
	"github.com/sirupsen/logrus"
)

const (
	interval    = 1.0
	backoffRate = 2.0
)

// LobbyWebSocketClient is the extended implementation of ConnectionManagerImpl
type LobbyWebSocketClient struct {
	WSConn *WSConnection
}

func NewLobbyWebSocketClient(wsConn *WSConnection) *LobbyWebSocketClient {
	return &LobbyWebSocketClient{
		WSConn: wsConn,
	}
}

func (c *LobbyWebSocketClient) Connect(reconnecting bool) (bool, error) {
	c.WSConn.Mu = sync.RWMutex{}
	c.WSConn.Mu.Lock()
	defer c.WSConn.Mu.Unlock()

	// Re-usable
	url := c.createURL(c.WSConn.Data["host"].(string))
	req, err := http.NewRequest(http.MethodGet, url, nil)
	if err != nil {
		return false, err
	}
	if token, exists := c.WSConn.Data["token"]; exists {
		req.Header.Add("Authorization", fmt.Sprintf("Bearer %s", token))
	}

	// Specific to Lobby Service can be moved later
	if lobbySessionId, exists := c.WSConn.Data["LobbySessionID"]; exists {
		req.Header.Add("X-Ab-LobbySessionID", lobbySessionId.(string))
	}

	conn, err := c.WSConn.Dial(req.URL.String(), req.Header)
	if err != nil {
		return false, err
	}

	c.WSConn.Conn = conn

	c.setHandlers()

	done := make(chan struct{})
	go c.ReadWSMessage(done, c.WSConn.MessageHandler)
	go c.WSHeartbeat(done)

	c.OnConnect(reconnecting)

	return true, nil
}

func (c *LobbyWebSocketClient) setHandlers() {
	c.WSConn.Conn.SetCloseHandler(c.lobbyCloseHandler)
	c.WSConn.Conn.SetPongHandler(c.WSConn.DefaultPongHandler)
}

func (c *LobbyWebSocketClient) lobbyCloseHandler(code int, reason string) error {
	didReconnect := false

	if c.WSConn.EnableAutoReconnect {
		didReconnect = c.reconnect(code, reason)
	}

	if didReconnect {
		return nil
	}

	c.OnDisconnect(int32(code), reason)

	return c.WSConn.DefaultCloseHandler(code, reason)
}

func (c *LobbyWebSocketClient) reconnect(code int, reason string) bool {
	c.WSConn.Mu.Lock()
	defer c.WSConn.Mu.Unlock()

	didReconnect := false
	numberOfAttempts := 0

	for {
		success, err := c.Connect(true) // TODO: store error perhaps?
		if err != nil {
			// explicitly ignore in favor of the original code and reason
			logrus.Warnf("error on reconnect: %s, discarding in favor of disconnect error", err.Error())
		}
		if success {
			didReconnect = true
			break
		}

		if !c.ShouldReconnect(code, reason, numberOfAttempts) {
			break
		}

		numberOfAttempts++
		delay := c.ReconnectDelay(int32(numberOfAttempts))
		time.Sleep(time.Duration(delay) * time.Second)
	}

	return didReconnect
}

func (c *LobbyWebSocketClient) Save(conn *WSConnection) {
	c.WSConn = conn
}

func (c *LobbyWebSocketClient) Get() *WSConnection {
	return c.WSConn
}

func (c *LobbyWebSocketClient) Close() error {
	if c.WSConn.Conn == nil {
		logrus.Errorf("no websocket connection can be closed")

		return errors.New("no websocket connection can be closed")
	}

	return c.WSConn.Close(websocket.CloseNormalClosure, "")
}

func (c *LobbyWebSocketClient) OnConnect(reconnecting bool) {
	if reconnecting {
		logrus.Debug("Reconnected to the WebSocket server.")
	} else {
		logrus.Debug("Connected to the WebSocket server.")
	}
}

func (c *LobbyWebSocketClient) OnDisconnect(code int32, reason string) {
	logrus.Debugf("Disconnected from WebSocket server with code %d and reason: %s\n", code, reason)

	// Clean up data or state related to the connection
	logrus.Debug("clearing data...")

	c.ClearData()
}

func (c *LobbyWebSocketClient) Send(code int, message string) error {
	// Check if the connection is still open
	if c.WSConn.Conn == nil {
		return errors.New("connection is not initialized")
	}
	if c.WSConn.Conn.UnderlyingConn() == nil {
		return errors.New("connection is closed")
	}

	err := c.WSConn.Conn.WriteMessage(code, []byte(message))
	if err != nil {
		logrus.Error("failed to send websocket message: ", err)
		return err
	}

	return nil
}

func (c *LobbyWebSocketClient) OnMessage(msg string) {
	if strings.HasPrefix(msg, "type: connectNotif") {
		message := DecodeWSMessage(msg)
		if lobbySessionID, ok := message["lobbySessionID"]; ok {
			if c.GetData("LobbySessionID") == "" {
				logrus.Debugf("Storing LobbySessionID: %v", lobbySessionID)
				c.SetData("LobbySessionID", lobbySessionID)
			}
		}
	}
}

func (c *LobbyWebSocketClient) ShouldReconnect(code int, reason string, numberOfAttempts int) bool {
	if numberOfAttempts > 0 && numberOfAttempts > c.WSConn.MaxReconnectAttempts { // -1 is infinite
		return false
	}

	logrus.Debugf("code received: %v", code)
	// Undefined
	if code < 0 {
		return false
	}

	// 0-999
	if code >= 0 && code <= 999 {
		return false
	}

	// 1000 indicates a normal closure
	if code == 1000 {
		return false
	}

	// 3000-3999
	if code >= 3000 && code <= 3999 {
		return false
	}

	// 4000-4999
	if code >= 4000 && code <= 4999 {
		return false
	}

	// Undefined
	if code >= 5000 {
		return false
	}

	// Return true for all other codes
	return code >= 1001 && code <= 2999
}

func (c *LobbyWebSocketClient) ReconnectDelay(numberOfAttempts int32) float32 {
	logrus.Debug("adding reconnect delay")

	return float32(interval * math.Pow(backoffRate, float64(numberOfAttempts)))
}

func (c *LobbyWebSocketClient) GetData(key string) interface{} {
	if _, exists := c.WSConn.Data[key]; exists {
		return c.WSConn.Data[key]
	}

	return ""
}

func (c *LobbyWebSocketClient) HasData(key string) bool {
	c.WSConn.Mu.Lock()
	defer c.WSConn.Mu.Unlock()

	_, exists := c.WSConn.Data[key]

	return exists
}

func (c *LobbyWebSocketClient) SetData(key string, value interface{}) {
	c.WSConn.Mu.Lock()
	defer c.WSConn.Mu.Unlock()

	c.WSConn.Data[key] = value
}

func (c *LobbyWebSocketClient) ClearData() {
	c.WSConn.Data["LobbySessionID"] = ""
}

func (c *LobbyWebSocketClient) readWs() (messageType int, p []byte, err error) {
	return c.WSConn.Conn.ReadMessage()
}

func (c *LobbyWebSocketClient) ReadWSMessage(done chan struct{}, messageHandler func(message []byte)) {
	go func() {
		for {
			var msg []byte
			var err error

			_, msg, err = c.readWs()
			if err != nil {
				logrus.Errorf("read message failed: %v", err)

				code := websocket.CloseProtocolError
				text := err.Error()

				err = c.lobbyCloseHandler(code, text)
				if err != nil {
					close(done)
					return
				}
			} else {
				if len(msg) > 0 {
					c.OnMessage(string(msg))

					// Use custom message handler if provided
					if messageHandler != nil {
						messageHandler(msg)
					}
				}
			}
		}
	}()
}

func (c *LobbyWebSocketClient) WSHeartbeat(done chan struct{}) {
	ticker := time.NewTicker(4 * time.Second)
	defer ticker.Stop()

	for {
		select {
		case <-ticker.C:
			err := c.WSConn.Conn.WriteMessage(websocket.PingMessage, []byte{})
			if err != nil {
				logrus.Errorf("cannot write heartbeat: %v", err)
			}

		case <-done:
			logrus.Info("done signal received, stop heartbeat.")

			return
		}
	}
}

func (c *LobbyWebSocketClient) createURL(host string) string {
	if strings.Contains(host, "8080") {
		return "ws" + separator + host + "/lobby/"
	}

	return "wss" + separator + host + "/lobby/"
}

func DecodeWSMessage(msg string) map[string]interface{} {
	scanner := bufio.NewScanner(strings.NewReader(msg))
	res := make(map[string]interface{})

	for scanner.Scan() {
		str := scanner.Text()
		keyValue := strings.Split(str, ": ")
		if len(keyValue) == 2 {
			res[keyValue[0]] = keyValue[1]
		}
	}

	if err := scanner.Err(); err != nil {
		logrus.Errorf("error reading websocket message: %v", err)
	}

	return res
}
