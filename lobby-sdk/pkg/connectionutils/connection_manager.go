// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package connectionutils

import (
	"errors"
	"io"
	"net/http"
	"strings"
	"sync"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/gorilla/websocket"
	"github.com/sirupsen/logrus"
)

const (
	separator = "://"
)

const (
	Disconnected = "Disconnected"
	Connecting   = "Connecting"
	Connected    = "Connected"
	Reconnecting = "Reconnecting"
	Closed       = "Closed"
)

type WSConnection struct {
	Conn     *websocket.Conn
	Mu       sync.RWMutex
	MuStatus sync.RWMutex

	Header http.Header
	Data   map[string]interface{}
	Meta   map[string]interface{}

	EnableAutoReconnect  bool
	MaxReconnectAttempts int
	StatusHandler        WSConnectionStatusHandler
	MessageHandler       WSConnectionMessageHandler

	status string
}

type WSConnectionOption func(wsConn *WSConnection) error

func WithStatusHandler(handler WSConnectionStatusHandler) WSConnectionOption {
	return func(wsConn *WSConnection) error {
		wsConn.StatusHandler = handler

		return nil
	}
}

func WithMessageHandler(handler WSConnectionMessageHandler) WSConnectionOption {
	return func(wsConn *WSConnection) error {
		wsConn.MessageHandler = handler

		return nil
	}
}

func WithEnableAutoReconnect() WSConnectionOption {
	return func(wsConn *WSConnection) error {
		wsConn.EnableAutoReconnect = true

		return nil
	}
}

func WithMaxReconnectAttempts(maxReconnectAttempts int) WSConnectionOption {
	return func(wsConn *WSConnection) error {
		wsConn.MaxReconnectAttempts = maxReconnectAttempts

		return nil
	}
}

func WithScheme(scheme string) WSConnectionOption {
	return func(wsConn *WSConnection) error {
		wsConn.Data["scheme"] = scheme

		return nil
	}
}

func WithToken(token string) WSConnectionOption {
	return func(wsConn *WSConnection) error {
		wsConn.Data["token"] = token

		return nil
	}
}

type WSConnectionStatusHandler func(status string)

type WSConnectionMessageHandler func(msg []byte)

func NewWSConnection(
	configRepo repository.ConfigRepository,
	tokenRepo repository.TokenRepository,
	options ...WSConnectionOption,
) (*WSConnection, error) {
	baseURL := configRepo.GetJusticeBaseUrl()
	baseURLSplit := strings.Split(baseURL, separator)

	wsConn := &WSConnection{
		Conn: &websocket.Conn{},
		Data: map[string]interface{}{
			"token":  nil,
			"host":   baseURLSplit[1],
			"scheme": "wss",
		},
		Meta: map[string]interface{}{
			"token":  nil,
			"host":   nil,
			"scheme": nil,
		},
		MaxReconnectAttempts: 10,
	}

	for _, opt := range options {
		err := opt(wsConn)
		if err != nil {
			return nil, err
		}
	}

	// Try to fill in the auth token with value from the token repository.
	if tokenValue, exists := wsConn.Data["token"]; !exists || tokenValue == nil {
		tokenResponse, err := tokenRepo.GetToken()
		if err == nil && tokenResponse != nil {
			accessToken := tokenResponse.AccessToken
			if accessToken != nil && *accessToken != "" {
				wsConn.Data["token"] = accessToken
			}
		}
	}

	return wsConn, nil
}

// NewWebsocketConnection
// Deprecated: use NewWSConnection instead
func NewWebsocketConnection(
	configRepo repository.ConfigRepository,
	tokenRepo repository.TokenRepository,
	messageHandler func(msg []byte),
) (*WSConnection, error) {
	return NewWSConnection(configRepo, tokenRepo, WithMessageHandler(messageHandler))
}

func (c *WSConnection) Dial(url string, headers http.Header) (*websocket.Conn, error) {
	conn, res, err := websocket.DefaultDialer.Dial(url, headers)
	if errors.Is(err, websocket.ErrBadHandshake) {
		if _, e := io.ReadAll(res.Body); e == nil {
			return nil, err
		}
	}
	if err != nil {
		return nil, err
	}
	defer res.Body.Close()

	return conn, nil
}

func (c *WSConnection) Close(code int, reason string) error {
	err := c.Conn.WriteControl(websocket.CloseMessage, websocket.FormatCloseMessage(code, reason), time.Now().Add(time.Second))
	if err != nil {
		logrus.Error("Error writing control message: ", err)
	}

	if err = c.Conn.Close(); err != nil {
		logrus.Error("Failed to close connection: ", err)
	}

	c.SetStatus(Disconnected)

	return nil
}

func (c *WSConnection) SetStatus(status string) {
	c.MuStatus.Lock()
	defer c.MuStatus.Unlock()
	c.status = status

	if c.StatusHandler != nil {
		c.StatusHandler(c.status)
	}

	logrus.Debugf("status: %s", status)
}

func (c *WSConnection) GetStatus() string {
	c.MuStatus.Lock()
	defer c.MuStatus.Unlock()

	return c.status
}

func (c *WSConnection) DefaultCloseHandler(code int, reason string) error {
	c.SetStatus(Disconnected)

	return c.Close(code, reason)
}

func (c *WSConnection) DefaultPongHandler(text string) error {
	err := c.Conn.SetReadDeadline(time.Now().Add(6 * time.Second))
	if err != nil {
		logrus.Warn(err.Error())
	}

	return nil
}

func (c *WSConnection) GetData(key string) interface{} {
	if value, exists := c.Data[key]; exists {
		return value
	}

	return nil
}

type ConnectionManager interface {
	Save(wsConnection *WSConnection)
	Get() *WSConnection
	Close() error
}

func (c *WSConnection) Lock(location string) {
	logrus.Debugf("locking at %s", location)
	c.Mu.Lock()
}

func (c *WSConnection) Unlock(location string) {
	logrus.Debugf("unlocking at %s", location)
	c.Mu.Unlock()
}
