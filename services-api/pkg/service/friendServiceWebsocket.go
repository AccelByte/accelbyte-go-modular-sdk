// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package service

import (
	"fmt"
	"log/slog"

	"github.com/gorilla/websocket"
	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/lobbyclientmodels/model"
	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/connectionutils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
)

type FriendServiceWebsocket struct {
	ConfigRepository  repository.ConfigRepository
	TokenRepository   repository.TokenRepository
	ConnectionManager connectionutils.ConnectionManager
}

func (friendService *FriendServiceWebsocket) GetFriends() error {
	slog.Debug("GetFriends")
	text := fmt.Sprintf("type: %s\n%s", model.TypeListOfFriendsRequest, utils.GenerateMessageID())
	err := friendService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (friendService *FriendServiceWebsocket) RequestFriend(friendID string) error {
	slog.Debug("RequestFriend")
	text := fmt.Sprintf("type: %s\n%s\nfriendId: %s", model.TypeRequestFriendsRequest, utils.GenerateMessageID(), friendID)
	err := friendService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (friendService *FriendServiceWebsocket) GetIncomingFriendRequest() error {
	slog.Debug("GetIncomingFriendRequest")
	text := fmt.Sprintf("type: %s\n%s", model.TypeListIncomingFriendsRequest, utils.GenerateMessageID())
	err := friendService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (friendService *FriendServiceWebsocket) GetOutgoingFriendRequest() error {
	slog.Debug("GetOutgoingFriendRequest")
	text := fmt.Sprintf("type: %s\n%s", model.TypeListOutgoingFriendsRequest, utils.GenerateMessageID())
	err := friendService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (friendService *FriendServiceWebsocket) AcceptFriendRequest(friendID string) error {
	slog.Debug("AcceptFriendRequest")
	text := fmt.Sprintf("type: %s\n%s\nfriendId: %s", model.TypeAcceptFriendsRequest, utils.GenerateMessageID(), friendID)
	err := friendService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (friendService *FriendServiceWebsocket) RejectFriendRequest(friendID string) error {
	slog.Debug("RejectFriendRequest")
	text := fmt.Sprintf("type: %s\n%s\nfriendId: %s", model.TypeRejectFriendsRequest, utils.GenerateMessageID(), friendID)
	err := friendService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (friendService *FriendServiceWebsocket) Unfriend(friendID string) error {
	slog.Debug("Unfriend")
	text := fmt.Sprintf("type: %s\n%s\nfriendId: %s", model.TypeUnfriendRequest, utils.GenerateMessageID(), friendID)
	err := friendService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (friendService *FriendServiceWebsocket) CancelFriendRequest(friendID string) error {
	slog.Debug("CancelFriendRequest")
	text := fmt.Sprintf("type: %s\n%s\nfriendId: %s", model.TypeCancelFriendsRequest, utils.GenerateMessageID(), friendID)
	err := friendService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (friendService *FriendServiceWebsocket) GetFriendshipStatus(friendID string) error {
	slog.Debug("GetFriendshipStatus")
	text := fmt.Sprintf("type: %s\n%s\nfriendId: %s", model.TypeGetFriendshipStatusRequest, utils.GenerateMessageID(), friendID)
	err := friendService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (friendService *FriendServiceWebsocket) GetFriendPresenceStatus() error {
	slog.Debug("GetFriendPresenceStatus")
	text := fmt.Sprintf("type: %s\n%s", model.TypeFriendsPresenceRequest, utils.GenerateMessageID())
	err := friendService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (friendService *FriendServiceWebsocket) Block(namespace, userID, blockedUserID string) error {
	slog.Debug("Block")
	text := fmt.Sprintf("type: %s\n%s\nuserId: %s\nnamespace: %s\nblockedUserId: %s", model.TypeBlockPlayerRequest, utils.GenerateMessageID(), userID, namespace, blockedUserID)
	err := friendService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (friendService *FriendServiceWebsocket) Unblock(namespace, userID, unblockedUserID string) error {
	slog.Debug("Block")
	text := fmt.Sprintf("type: %s\n%s\nuserId: %s\nnamespace: %s\nblockedUserId: %s", model.TypeUnblockPlayerRequest, utils.GenerateMessageID(), userID, namespace, unblockedUserID)
	err := friendService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (friendService *FriendServiceWebsocket) SetUserStatus(availability int, activity string) error {
	slog.Debug("SetUserStatus")
	text := fmt.Sprintf("type: %s\n%s\navailability: %d\nactivity: %s", model.TypeSetUserStatusRequest, utils.GenerateMessageID(), availability, activity)
	err := friendService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}
