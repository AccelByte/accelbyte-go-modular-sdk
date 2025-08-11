// Copyright (c) 2025 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package wsm

import (
	"errors"
	"fmt"
	"io"
	"net/http"
	"strings"
	"sync"
	"time"

	"github.com/sirupsen/logrus"

	"github.com/gorilla/websocket"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
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

type WSConnectionStatusHandler func(status string)

type WSConnectionMessageHandler func(msg []byte)

type WSConnection struct {
	Conn     *websocket.Conn
	Mu       sync.RWMutex
	MuStatus sync.RWMutex

	Header http.Header
	Data   map[string]interface{}
	Meta   map[string]interface{}

	EnableAutoReconnect  bool
	MaxReconnectAttempts int

	StatusHandler  WSConnectionStatusHandler
	MessageHandler WSConnectionMessageHandler

	status string
}

// region WSConnection

func (c *WSConnection) GetData(key string) interface{} {
	if value, exists := c.Data[key]; exists {
		return value
	}

	return nil
}

func (c *WSConnection) GetStatus() string {
	c.MuStatus.Lock()
	defer c.MuStatus.Unlock()

	return c.status
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
	defer func(Body io.ReadCloser) {
		_ = Body.Close()
	}(res.Body)

	return conn, nil
}

func (c *WSConnection) Close(code int, reason string) error {
	err := c.Conn.WriteControl(websocket.CloseMessage, websocket.FormatCloseMessage(code, reason), time.Now().Add(time.Second))
	if err != nil {
		logrus.Errorf("error writing control message: %v", err)
	}

	if err = c.Conn.Close(); err != nil {
		logrus.Errorf("failed to close connection: %v", err)
	}

	c.SetStatus(Disconnected)

	return nil
}

// endregion WSConnection

// region WSConnectionOption

type WSConnectionOption func(wsConn *WSConnection) error

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

// endregion WSConnectionOption

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
			"host":   baseURLSplit[1],
			"scheme": "wss",
			"token":  nil,
		},
		Meta: map[string]interface{}{
			"host":   nil,
			"scheme": nil,
			"token":  nil,
		},
		MaxReconnectAttempts: 10,
	}

	for _, opt := range options {
		err := opt(wsConn)
		if err != nil {
			return nil, err
		}
	}

	// try to fill in the auth token with value from the token repository.
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

// region ConnectionManager

type ConnectionManager interface {
	Close() error
	Get() *WSConnection
	Save(wsConnection *WSConnection)
}

func (c *WSConnection) Lock(location string) {
	logrus.Debugf("locking at %s", location)
	c.Mu.Lock()
}

func (c *WSConnection) Unlock(location string) {
	logrus.Debugf("unlocking at %s", location)
	c.Mu.Unlock()
}

// endregion ConnectionManager

// region DefaultConnectionManagerImpl

type DefaultConnectionManagerImpl struct {
	wsConn *WSConnection
}

func (m *DefaultConnectionManagerImpl) Save(conn *WSConnection) {
	m.wsConn = conn
}

func (m *DefaultConnectionManagerImpl) Get() *WSConnection {
	return m.wsConn
}

func (m *DefaultConnectionManagerImpl) Close() error {
	if m.wsConn == nil {
		return fmt.Errorf("no websocket connection can be closed")
	}

	return m.wsConn.Close(websocket.CloseNormalClosure, "closing websocket")
}

// endregion DefaultConnectionManagerImpl
