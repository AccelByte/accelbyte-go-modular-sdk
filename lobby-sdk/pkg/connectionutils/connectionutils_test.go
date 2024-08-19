// Copyright (c) 2024 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package connectionutils_test

import (
	"net/http"
	"strings"
	"testing"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/connectionutils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"

	"github.com/gorilla/websocket"
	"github.com/stretchr/testify/assert"
)

var (
	configRepo = auth.DefaultConfigRepositoryImpl()
	tokenRepo  = auth.DefaultTokenRepositoryImpl()
	token      = "foo"
	baseUrl    = utils.GetEnv("AB_BASE_URL", "http://localhost:8080")
	messages   = make([][]byte, 0)
)

const (
	url1 = "http://localhost:8080/ws/lobby/force-close?errorCode=2000"
	url2 = "http://localhost:8080/ws/lobby/force-close?errorCode=4000"
)

func onMessage(msg []byte) {
	messages = append(messages, msg)
}

func TestConnectionUtils(t *testing.T) {
	tokenRepo.AccessToken.AccessToken = &token
	configRepo.BaseUrl = baseUrl

	conn, err := connectionutils.NewWSConnection(
		configRepo, tokenRepo,
		connectionutils.WithEnableAutoReconnect(), connectionutils.WithMessageHandler(onMessage),
	)
	if err != nil {
		return
	}

	assert.NotNil(t, conn)
}

func TestConnectionUtils_ShouldReconnect(t *testing.T) {
	tokenRepo.AccessToken.AccessToken = &token
	configRepo.BaseUrl = baseUrl
	conn, err := connectionutils.NewWSConnection(
		configRepo, tokenRepo,
		connectionutils.WithEnableAutoReconnect(), connectionutils.WithMessageHandler(onMessage),
	)
	if err != nil {
		return
	}
	lobby := connectionutils.NewLobbyWebSocketClient(conn)

	assert.False(t, lobby.ShouldReconnect(-1, "Invalid code", 0))
	assert.False(t, lobby.ShouldReconnect(1000, "Normal closure", 0))
	assert.False(t, lobby.ShouldReconnect(3000, "Library-specific code", 0))
	assert.False(t, lobby.ShouldReconnect(4000, "Private-use code", 0))
	assert.False(t, lobby.ShouldReconnect(5000, "Undefined code", 0))
	assert.True(t, lobby.ShouldReconnect(1001, "Valid reconnect code", 0))
	assert.True(t, lobby.ShouldReconnect(2999, "Valid reconnect code", 0))
}

//func TestConnectionUtils_ReconnectDelay(t *testing.T) {
//	tokenRepo.AccessToken.AccessToken = &token
//	connection := connectionutils.NewDefaultBaseWebSocketClient(configRepo, tokenRepo)
//
//	assert.InDelta(t, 1.0, connection.ReconnectDelay(0), 0.01)
//	assert.InDelta(t, 2.0, connection.ReconnectDelay(1), 0.01)
//	assert.InDelta(t, 4.0, connection.ReconnectDelay(2), 0.01)
//	assert.InDelta(t, 8.0, connection.ReconnectDelay(3), 0.01)
//}

//func TestConnectionUtils_DataManagement(t *testing.T) {
//	tokenRepo.AccessToken.AccessToken = &token
//	connection := connectionutils.NewDefaultBaseWebSocketClient(configRepo, tokenRepo)
//
//	connection.SetData("key1", "value1")
//	connection.SetData("key2", 42)
//
//	assert.True(t, connection.HasData("key1"))
//	assert.Equal(t, "value1", connection.GetData("key1"))
//
//	assert.True(t, connection.HasData("key2"))
//	assert.Equal(t, 42, connection.GetData("key2"))
//
//	connection.ClearData()
//
//	assert.False(t, connection.HasData("key1"))
//	assert.False(t, connection.HasData("key2"))
//}

func TestWebSocketReconnect_Case1(t *testing.T) {
	tokenRepo.AccessToken.AccessToken = &token
	configRepo.BaseUrl = baseUrl

	// 1. Connecting to mock server
	conn, err := connectionutils.NewWSConnection(
		configRepo, tokenRepo,
		connectionutils.WithEnableAutoReconnect(), connectionutils.WithMessageHandler(onMessage),
	)
	if err != nil {
		return
	}
	lobby := connectionutils.NewLobbyWebSocketClient(conn)
	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, lobby)

	success, err := lobby.Connect(false)
	assert.NotNil(t, err)
	assert.True(t, success)

	// 2. Wait for the connectNotif message and store lobbySessionId from the connectNotif message.
	originalLobbySessionId := waitForConnectNotif(t)

	// 3. Assert that the value from the WebSocket Client using GetData("LobbySessionId") is equal to originalLobbySessionId.
	assert.Equal(t, originalLobbySessionId, lobby.WSConn.GetData("LobbySessionID").(string))
	assert.False(t, checkIfClosed(t, lobby.WSConn.Conn))

	// 4. Send a POST /ws/lobby/force-close?errorCode=2000 HTTP request to the Mock Server.
	req, _ := http.NewRequest("POST", url1, nil)
	_, err = http.DefaultClient.Do(req)
	assert.NoError(t, err)

	// 5. Assert that the websocket connection has disconnected.
	assert.True(t, checkIfClosed(t, lobby.WSConn.Conn))

	// 6. Wait for 1 second.
	time.Sleep(3 * time.Second)

	// 7. Assert that the websocket connection has reconnected.
	assert.NotNil(t, lobby.WSConn.GetData("LobbySessionID")) // make sure the data is not deleted
	assert.False(t, checkIfClosed(t, lobby.WSConn.Conn))

	// 8. Wait for the connectNotif message and store lobbySessionId from the connectNotif message.
	newLobbySessionId := waitForConnectNotif(t)

	// 9. Assert that the originalLobbySessionId is equal to newLobbySessionId.
	assert.Equal(t, originalLobbySessionId, newLobbySessionId)
}

func TestWebSocketReconnect_Case2(t *testing.T) {
	tokenRepo.AccessToken.AccessToken = &token
	configRepo.BaseUrl = baseUrl

	// 1. Connecting to mock server
	conn, err := connectionutils.NewWSConnection(
		configRepo, tokenRepo,
		connectionutils.WithEnableAutoReconnect(), connectionutils.WithMessageHandler(onMessage),
	)
	if err != nil {
		return
	}
	lobby := connectionutils.NewLobbyWebSocketClient(conn)
	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, lobby)

	success, err := lobby.Connect(false)
	assert.NotNil(t, err)
	assert.True(t, success)

	// 2. Wait for the connectNotif message and store lobbySessionId from the connectNotif message.
	var originalLobbySessionId string
	originalLobbySessionId = waitForConnectNotif(t)

	// 3. Assert that the value from the WebSocket Client using GetData("LobbySessionId") is equal to originalLobbySessionId.
	assert.Equal(t, originalLobbySessionId, client.LobbyWSClient.GetData("LobbySessionID"))

	// 4. Send a POST /ws/lobby/force-close?errorCode=4000 HTTP request to the Mock Server.
	req, _ := http.NewRequest("POST", url2, nil)
	_, err = http.DefaultClient.Do(req)
	assert.NoError(t, err)

	// 5. Assert that the websocket connection has disconnected.
	assert.True(t, checkIfClosed(t, client.Conn))

	// 6. Wait for 1 second.
	time.Sleep(1 * time.Second)

	// 7. Assert that the websocket connection has stayed disconnected.
	assert.True(t, checkIfClosed(t, client.Conn))

	// 8. Assert that the value from the WebSocket Client using GetData("LobbySessionId") is null or empty.
	assert.Empty(t, client.LobbyWSClient.GetData("LobbySessionID"))

	// 9. Start a new connection with existing lobby WS client instance to the Mock Server’s Lobby Service.
	success, err = lobby.Connect(false)
	assert.NotNil(t, err)
	assert.True(t, success)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, client)
	assert.NotNil(t, client.Conn)

	assert.False(t, checkIfClosed(t, client.Conn))

	// 10. Wait for the connectNotif message and store lobbySessionId from the connectNotif message.
	newLobbySessionId := waitForConnectNotif(t, client.LobbyWSClient)
	t.Logf(originalLobbySessionId)

	// 11. Assert that the originalLobbySessionId is not equal to newLobbySessionId.
	assert.NotEqual(t, originalLobbySessionId, newLobbySessionId)
}

// Utility function to wait for the connectNotif message
func waitForConnectNotif(t *testing.T) string {
	t.Helper()

	time.Sleep(100 * time.Millisecond) // Give the server time to send the message

	lobbySessionID := ""

	for _, message := range messages {
		msg := string(message)
		if strings.HasPrefix(msg, "type: connectNotif") {
			data := connectionutils.DecodeWSMessage(msg)
			if value, exists := data["LobbySessionID"]; exists {
				lobbySessionID = value.(string)
			}
		}
	}

	assert.NotEmpty(t, lobbySessionID)

	messages = make([][]byte, 0)

	return lobbySessionID
}

//func waitForConnectNotif(t *testing.T, client *connectionutils.LobbyWebSocketClient) {
//	t.Helper()
//
//	done := make(chan struct{})
//	messageHandler := func(dataByte []byte) {
//
//		msg := connectionutils.DecodeWSMessage(string(dataByte))
//		if v, ok := msg["type"]; ok {
//			msgType = v.(string)
//		}
//		switch msgType {
//		case model.TypeConnectNotif:
//			if l, ok := msg["lobbySessionID"]; ok {
//				logrus.Debugf("Storing LobbySessionID: %v", l)
//				lobbySessionID = l.(string)
//			}
//		}
//	}
//	go client.ReadWSMessage(done, messageHandler)
//	time.Sleep(100 * time.Millisecond) // Give the server time to send the message
//	assert.NotNil(t, lobbySessionID)
//
//	return
//}

func checkIfClosed(t *testing.T, conn *websocket.Conn) bool {
	t.Helper()

	err := conn.WriteMessage(websocket.PingMessage, []byte("ping"))
	if err != nil {
		t.Logf("Connection is closed: %v", err)

		return true
	}

	return false
}
