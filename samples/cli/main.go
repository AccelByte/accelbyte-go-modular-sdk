// Copyright (c) 2025 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package main

import (
	"bufio"
	"encoding/json"
	"fmt"
	"os"
	"strings"

	"github.com/gorilla/websocket"
	"github.com/sirupsen/logrus"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/wsm"

	lobbyUtils "github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/connectionutils"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/AccelByte/sample-apps/pkg/utils"
)

var (
	reader                        *bufio.Reader
	connMgr                       *utils.ConnectionManagerImpl
	unifiedMessageFromMapRegistry = wsm.NewMessageFromMap{}
)

type LegacyCommand struct {
	Name  string
	Alias string
	Short string
}

func main() {
	args := os.Args

	mode := args[1]

	switch mode {
	case "--ws", "--wsModeStandalone":
	default:
		cmd.Execute()
		return
	}

	reader = bufio.NewReader(os.Stdin)
	connMgr = &utils.ConnectionManagerImpl{}

	configRepo := &repository.ConfigRepositoryImpl{}
	tokenRepo := &repository.TokenRepositoryImpl{}

	wsConn, err := lobbyUtils.NewWSConnection(
		configRepo,
		tokenRepo,
		lobbyUtils.WithScheme("ws"),
		lobbyUtils.WithMessageHandler(onMessageCallback),
	)
	if err != nil {
		panic(err)
	}

	lobbyClient := lobbyUtils.NewLobbyWebSocketClient(wsConn)
	if _, err = lobbyClient.Connect(false); err != nil {
		panic(err)
	}

	connMgr.Save(wsConn)

	logrus.Info("starting...")

	switch mode {
	case "--ws", "--wsModeStandalone":
		wsServe()
	}

	defer func(connMgr *utils.ConnectionManagerImpl) { _ = connMgr.Close() }(connMgr)

	logrus.Info("done")
}

func wsServe() {
	args := os.Args
	text := args[2]

	message, err := getMessage(text)
	if err != nil {
		logrus.Error(err)

		return
	}

	awesome, err := message.SafeString()
	if err != nil {
		logrus.Error(err)

		return
	}

	err = sendMessage(awesome)
	if err != nil {
		logrus.Error(err)

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
		return nil, fmt.Errorf(fmt.Sprintf("cannot find message type from string: %s", s))
	}

	newMessageFromMapFunc, exists := unifiedMessageFromMapRegistry[messageType]
	if !exists {
		return nil, fmt.Errorf(fmt.Sprintf("cannot find NewMessageFromMapFunc for message type: %s", messageType))
	}

	message, err := newMessageFromMapFunc(m)
	if err != nil {
		return nil, err
	}

	return message, nil
}

func readInput() string {
	text, err := reader.ReadString('\n')
	if err != nil {
		return ""
	}

	// convert CRLF to LF
	text = strings.Replace(text, "\n", "", -1)
	text = strings.Replace(text, "\r", "", -1)

	return text
}

func sendMessage(text string) error {
	return connMgr.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
}

func onMessageCallback(data []byte) {
	s := string(data)
	message, err := getMessage(s)
	if err != nil {
		logrus.Error(err)

		return
	}

	logrus.Infof("Message Type: %s", message.Type())

	j, err := json.Marshal(message)
	if err != nil {
		logrus.Error(err)

		return
	}

	logrus.Info("Message Content: %s", string(j))
}
