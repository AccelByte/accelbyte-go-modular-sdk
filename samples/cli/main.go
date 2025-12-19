// Copyright (c) 2025 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package main

import (
	"encoding/json"
	"fmt"
	"log/slog"
	"os"

	"github.com/gorilla/websocket"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/wsm"

	lobbyUtils "github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/connectionutils"

	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
)

var (
	connMgr                       wsm.ConnectionManager
	unifiedMessageFromMapRegistry = wsm.NewMessageFromMap{}
)

func main() {
	args := os.Args

	mode := args[1]

	switch mode {
	case "--ws", "--wsModeStandalone":
	default:
		cmd.Execute()

		return
	}

	connMgr = &wsm.DefaultConnectionManagerImpl{}

	configRepo := &repository.ConfigRepositoryImpl{}
	tokenRepo := &repository.TokenRepositoryImpl{}

	wsConn, err := wsm.NewWSConnection(
		configRepo,
		tokenRepo,
		wsm.WithScheme("ws"),
		wsm.WithMessageHandler(onMessageCallback),
	)
	if err != nil {
		panic(err)
	}

	lobbyClient := lobbyUtils.NewLobbyWebSocketClient(wsConn)
	if _, err = lobbyClient.Connect(false); err != nil {
		panic(err)
	}

	connMgr.Save(wsConn)

	slog.Info("starting...")

	switch mode {
	case "--ws", "--wsModeStandalone":
		wsServe()
	}

	defer func(connMgr wsm.ConnectionManager) { _ = connMgr.Close() }(connMgr)

	slog.Info("done")
}

func wsServe() {
	args := os.Args
	text := args[2]

	message, err := getMessage(text)
	if err != nil {
		slog.Error("failed to get message", "error", err)

		return
	}

	awesome, err := message.SafeString()
	if err != nil {
		slog.Error("failed to convert message to string", "error", err)

		return
	}

	err = sendMessage(awesome)
	if err != nil {
		slog.Error("failed to send message", "error", err)

		return
	}
}

func getMessage(s string) (wsm.Message, error) {
	m, err := wsm.SplitMessageIntoMap(s)
	if err != nil {
		return nil, err
	}

	messageType, ok := m["type"].(string)
	if !ok {
		return nil, fmt.Errorf("cannot find message type from string: %s", s)
	}

	newMessageFromMapFunc, exists := unifiedMessageFromMapRegistry[messageType]
	if !exists {
		return nil, fmt.Errorf("cannot find NewMessageFromMapFunc for message type: %s", messageType)
	}

	message, err := newMessageFromMapFunc(m)
	if err != nil {
		return nil, err
	}

	return message, nil
}

func sendMessage(text string) error {
	return connMgr.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
}

func onMessageCallback(data []byte) {
	s := string(data)
	message, err := getMessage(s)
	if err != nil {
		slog.Error("failed to get message", "error", err)

		return
	}

	slog.Info("received message", "type", message.Type())

	j, err := json.Marshal(message)
	if err != nil {
		slog.Error("failed to marshal message", "error", err)

		return
	}

	slog.Info("message received", "content", string(j))
}
