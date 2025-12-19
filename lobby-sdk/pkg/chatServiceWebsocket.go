// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package lobby

import (
	"fmt"

	"log/slog"

	"github.com/gorilla/websocket"

	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/lobbyclientmodels/model"

	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/connectionutils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
)

type ChatServiceWebsocket struct {
	ConfigRepository  repository.ConfigRepository
	TokenRepository   repository.TokenRepository
	ConnectionManager connectionutils.ConnectionManager
}

func (s *ChatServiceWebsocket) JoinDefaultChannel() error {
	slog.Info("JoinDefaultChannel")
	text := fmt.Sprintf("type: %s\n%s", model.TypeJoinDefaultChannelRequest, utils.GenerateMessageID())
	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (s *ChatServiceWebsocket) SendChannelChat(channelSlug, payload string) error {
	slog.Info("SendChannelChat")
	text := fmt.Sprintf("type: %s\n"+
		"%s\n"+
		"channelSlug: %s\n"+
		"payload: %s",
		model.TypeSendChannelChatRequest,
		utils.GenerateMessageID(),
		channelSlug,
		payload)
	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (s *ChatServiceWebsocket) SendPersonalChat(friendID, content string) error {
	slog.Info("SendPersonalChat")
	text := fmt.Sprintf("type: %s\nid: %s\nto: %s\npayload: %s", model.TypePersonalChatRequest, utils.GenerateMessageID(), friendID, content)
	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (s *ChatServiceWebsocket) SendPartyChat(content string) error {
	slog.Info("SendPartyChat")
	text := fmt.Sprintf("type: %s\nid: %s\npayload: %s", model.TypePartyChatRequest, utils.GenerateMessageID(), content)
	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (s *ChatServiceWebsocket) GetPersonalChatHistory(friendID string) error {
	slog.Info("GetPersonalChatHistory")
	text := fmt.Sprintf("type: %s\n%s\nfriendId: %s", model.TypePersonalChatHistoryRequest, utils.GenerateMessageID(), friendID)
	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}
