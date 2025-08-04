// Copyright (c) 2025 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package main

import (
	"fmt"
	"strconv"
	"strings"

	"github.com/gorilla/websocket"
	"github.com/sirupsen/logrus"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"

	lobby "github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg"
)

var (
	chatService         *lobby.ChatServiceWebsocket
	friendService       *lobby.FriendServiceWebsocket
	lobbyService        *lobby.LobbyServiceWebsocket
	notificationService *lobby.NotificationServiceWebsocket
	partyService        *lobby.PartyServiceWebsocket
)

var (
	lobbyWsLegacyCommandHelp string
	lobbyWsLegacyCommands    = []LegacyCommand{
		{Name: "partyInfoRequest", Alias: "info", Short: "0"},
		{Name: "partyCreateRequest", Alias: "create", Short: "1"},
		{Name: "partyLeaveRequest", Alias: "leave", Short: "2"},
		{Name: "partyInviteRequest", Alias: "invite", Short: "3"},
		{Name: "partyJoinRequest", Alias: "join", Short: "4"},
		{Name: "partyKickRequest", Alias: "kick", Short: "5"},
		{Name: "partyRejectRequest", Alias: "reject", Short: "6"},
		{Name: "partyPromoteLeaderRequest", Alias: "promoteLeader", Short: "7"},
		{Name: "personalChatRequest", Alias: "chat", Short: "8"},
		{Name: "partyChatRequest", Alias: "partyChat", Short: "9"},
		{Name: "offlineNotificationRequest", Alias: "getOfflineNotification", Short: "10"},
		{Name: "friendsStatusRequest", Alias: "getFriends", Short: "11"},
		{Name: "setUserStatusRequest", Alias: "setUserStatus", Short: "12"},
		{Name: "requestFriendsRequest", Alias: "requestFriends", Short: "13"},
		{Name: "listIncomingFriendsRequest", Alias: "listIncomingFriends", Short: "14"},
		{Name: "listOutgoingFriendsRequest", Alias: "listOutgoingFriends", Short: "15"},
		{Name: "acceptFriendsRequest", Alias: "acceptFriends", Short: "16"},
		{Name: "rejectFriendsRequest", Alias: "rejectFriends", Short: "17"},
		{Name: "cancelFriendsRequest", Alias: "cancelFriendsRequest", Short: "18"},
		{Name: "unfriendRequest", Alias: "unfriend", Short: "19"},
		{Name: "listOfFriendsRequest", Alias: "listOfFriends", Short: "20"},
		{Name: "getFriendshipStatusRequest", Alias: "getFriendshipStatus", Short: "21"},
		{Name: "personalChatHistoryRequest", Alias: "personalChatHistory", Short: "22"},
		{Name: "joinDefaultChannelRequest", Alias: "joinDefaultChatChannel", Short: "23"},
		{Name: "sendChannelChatRequest", Alias: "sendChatChannel", Short: "24"},
		{Name: "blockPlayerRequest", Alias: "block", Short: "25"},
		{Name: "unblockPlayerRequest", Alias: "unblock", Short: "26"},
		{Name: "Quit", Alias: "quit", Short: "q"},
	}
)

func init() {
	sb := strings.Builder{}
	for index, command := range lobbyWsLegacyCommands {
		sb.WriteString(fmt.Sprintf("%s: %s (%s)\n", strconv.Itoa(index), command.Alias, command.Name))
	}
	lobbyWsLegacyCommandHelp = sb.String()
}

func lobbyWsLegacyInit(configRepo repository.ConfigRepository, tokenRepo repository.TokenRepository) {
	chatService = &lobby.ChatServiceWebsocket{
		ConfigRepository:  configRepo,
		TokenRepository:   tokenRepo,
		ConnectionManager: connMgr,
	}

	friendService = &lobby.FriendServiceWebsocket{
		ConfigRepository:  configRepo,
		TokenRepository:   tokenRepo,
		ConnectionManager: connMgr,
	}

	lobbyService = &lobby.LobbyServiceWebsocket{
		ConfigRepository:  configRepo,
		TokenRepository:   tokenRepo,
		ConnectionManager: connMgr,
	}

	notificationService = &lobby.NotificationServiceWebsocket{
		ConfigRepository:  configRepo,
		TokenRepository:   tokenRepo,
		ConnectionManager: connMgr,
	}

	partyService = &lobby.PartyServiceWebsocket{
		ConfigRepository:  configRepo,
		TokenRepository:   tokenRepo,
		ConnectionManager: connMgr,
	}
}

func lobbyWsLegacyServe() {
	for {
		fmt.Println(lobbyWsLegacyCommandHelp)
		command := readInput()
		switch command {
		case lobbyWsLegacyCommands[0].Name: // info (partyInfoRequest)
			err := partyService.GetPartyInfo()
			if err != nil {
				logrus.Error(err)
			}
		case lobbyWsLegacyCommands[1].Name: // create (partyCreateRequest)
			err := partyService.CreateParty()
			if err != nil {
				logrus.Error(err)
			}
		case lobbyWsLegacyCommands[2].Name: // leave (partyLeaveRequest)
			err := partyService.LeaveParty()
			if err != nil {
				logrus.Error(err)
			}
		case lobbyWsLegacyCommands[3].Name: // invite (partyInviteRequest)
			fmt.Println("Friend ID:")
			friendID := readInput()
			err := partyService.InviteParty(friendID)
			if err != nil {
				logrus.Error(err)
			}
		case lobbyWsLegacyCommands[4].Name: // join (partyJoinRequest)
			fmt.Println("Party ID:")
			partyID := readInput()
			fmt.Println("Invitation token:")
			token := readInput()
			err := partyService.JoinParty(partyID, token)
			if err != nil {
				logrus.Error(err)
			}
		case lobbyWsLegacyCommands[5].Name: // kick (partyKickRequest)
			fmt.Println("Member ID:")
			id := readInput()
			err := partyService.KickPartyMember(id)
			if err != nil {
				logrus.Error(err)
			}
		case lobbyWsLegacyCommands[6].Name: // reject (partyRejectRequest)
			fmt.Println("Party ID:")
			partyID := readInput()
			fmt.Println("Invitation token:")
			token := readInput()
			err := partyService.RejectPartyInvitation(partyID, token)
			if err != nil {
				logrus.Error(err)
			}
		case lobbyWsLegacyCommands[7].Name: // promoteLeader (partyPromoteLeaderRequest)
			fmt.Println("New leader User ID:")
			leaderUserID := readInput()
			err := partyService.PromotePartyLeader(leaderUserID)
			if err != nil {
				logrus.Error(err)
			}
		case lobbyWsLegacyCommands[8].Name: // chat (personalChatRequest)
			fmt.Println("Friend ID:")
			friendID := readInput()
			fmt.Println("Message:")
			content := readInput()
			err := chatService.SendPersonalChat(friendID, content)
			if err != nil {
				logrus.Error(err)
			}
		case lobbyWsLegacyCommands[9].Name: // partyChat (partyChatRequest)
			fmt.Println("Message:")
			content := readInput()
			err := chatService.SendPartyChat(content)
			if err != nil {
				logrus.Error(err)
			}
		case lobbyWsLegacyCommands[10].Name: // getOfflineNotification (offlineNotificationRequest)
			err := notificationService.GetOfflineNotification()
			if err != nil {
				logrus.Error(err)
			}
		case lobbyWsLegacyCommands[11].Name: // getFriends (friendsStatusRequest)
			err := friendService.GetFriendPresenceStatus()
			if err != nil {
				logrus.Error(err)
			}
		case lobbyWsLegacyCommands[12].Name: // setUserStatus (setUserStatusRequest)
			fmt.Println("Availability:")
			availability := readInput()
			fmt.Println("Activity:")
			activity := readInput()
			i, err := strconv.Atoi(availability)
			if err != nil {
				logrus.Error(err)
			}
			err = friendService.SetUserStatus(i, activity)
			if err != nil {
				logrus.Error(err)
			}
		case lobbyWsLegacyCommands[13].Name: // requestFriends (requestFriendsRequest)
			fmt.Println("Friend ID:")
			friendID := readInput()
			err := friendService.RequestFriend(friendID)
			if err != nil {
				logrus.Error(err)
			}
		case lobbyWsLegacyCommands[14].Name: // listIncomingFriends (listIncomingFriendsRequest)
			err := friendService.GetIncomingFriendRequest()
			if err != nil {
				logrus.Error(err)
			}
		case lobbyWsLegacyCommands[15].Name: // listOutgoingFriends (listOutgoingFriendsRequest)
			err := friendService.GetOutgoingFriendRequest()
			if err != nil {
				logrus.Error(err)
			}
		case lobbyWsLegacyCommands[16].Name: // acceptFriends (acceptFriendsRequest)
			fmt.Println("Friend ID:")
			friendID := readInput()
			err := friendService.AcceptFriendRequest(friendID)
			if err != nil {
				logrus.Error(err)
			}
		case lobbyWsLegacyCommands[17].Name: // rejectFriends (rejectFriendsRequest)
			fmt.Println("Friend ID:")
			friendID := readInput()
			err := friendService.RejectFriendRequest(friendID)
			if err != nil {
				logrus.Error(err)
			}
		case lobbyWsLegacyCommands[18].Name: // cancelFriendsRequest (cancelFriendsRequest)
			fmt.Println("Friend ID:")
			friendID := readInput()
			err := friendService.CancelFriendRequest(friendID)
			if err != nil {
				logrus.Error(err)
			}
		case lobbyWsLegacyCommands[19].Name: // unfriend (unfriendRequest)
			fmt.Println("Friend ID:")
			friendID := readInput()
			err := friendService.Unfriend(friendID)
			if err != nil {
				logrus.Error(err)
			}
		case lobbyWsLegacyCommands[20].Name: // listOfFriends (listOfFriendsRequest)
			err := friendService.GetFriends()
			if err != nil {
				logrus.Error(err)
			}
		case lobbyWsLegacyCommands[21].Name: // getFriendshipStatus (getFriendshipStatusRequest)
			fmt.Println("Friend ID:")
			friendID := readInput()
			err := friendService.GetFriendshipStatus(friendID)
			if err != nil {
				logrus.Error(err)
			}
		case lobbyWsLegacyCommands[22].Name: // personalChatHistory (personalChatHistoryRequest)
			fmt.Println("Friend ID:")
			friendID := readInput()
			err := chatService.GetPersonalChatHistory(friendID)
			if err != nil {
				logrus.Error(err)
			}
		case lobbyWsLegacyCommands[23].Name: // joinDefaultChatChannel (joinDefaultChannelRequest)
			err := chatService.JoinDefaultChannel()
			if err != nil {
				logrus.Error(err)
				return
			}
		case lobbyWsLegacyCommands[24].Name: // sendChatChannel (sendChannelChatRequest)
			fmt.Println("Channel Slug:")
			channelSlug := readInput()
			fmt.Println("Content:")
			content := readInput()
			err := chatService.SendChannelChat(channelSlug, content)
			if err != nil {
				logrus.Error(err)
			}
		case lobbyWsLegacyCommands[25].Name: // block (blockPlayerRequest)
			fmt.Println("Namespace:")
			namespace := readInput()
			fmt.Println("UserID:")
			userID := readInput()
			fmt.Println("Blocked user ID:")
			blockedUserID := readInput()
			err := friendService.Block(namespace, userID, blockedUserID)
			if err != nil {
				logrus.Error(err)
			}
		case lobbyWsLegacyCommands[26].Name: // unblock (unblockPlayerRequest)
			fmt.Println("Namespace:")
			namespace := readInput()
			fmt.Println("UserID:")
			userID := readInput()
			fmt.Println("Blocked user ID:")
			blockedUserID := readInput()
			err := friendService.Unblock(namespace, userID, blockedUserID)
			if err != nil {
				logrus.Error(err)
			}
		case "q":
			logrus.Print("disconnect message: ")
			msg := readInput()
			_ = connMgr.Get().Conn.WriteMessage(
				websocket.CloseMessage,
				websocket.FormatCloseMessage(websocket.CloseNormalClosure, msg),
			)

			return
		}
	}
}
