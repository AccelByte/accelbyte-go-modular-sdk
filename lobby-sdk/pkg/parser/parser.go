// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package parser

import (
	"bufio"
	"bytes"
	"encoding/json"
	"errors"
	"io"
	"strconv"
	"strings"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/model"

	"github.com/sirupsen/logrus"
)

// Error types
var (
	ErrUnknownType        = errors.New("unknown type")
	ErrUnexpectedType     = errors.New("unexpected type")
	ErrInvalidMessageLine = errors.New("invalid message line")
)

const (
	newLine = '\n'
	keyType = "type: "
)

// UnmarshalResponse converts response message to internal message format
func UnmarshalResponse(message []byte) (model.Message, error) {
	reader := bufio.NewReader(bytes.NewReader(message))
	msgType, err := getResponseIdentifier(reader)
	if err != nil {
		return nil, err
	}

	return unmarshalResponseContent(msgType, reader)
}

func getResponseIdentifier(reader *bufio.Reader) (messageType string, err error) {
	msgType, err := reader.ReadString(newLine)
	if err != nil && err != io.EOF {
		return model.TypeUnknown, err
	}
	msgType = strings.TrimSuffix(msgType, string(newLine))
	msgType = strings.TrimPrefix(msgType, keyType)

	if msgType == "" {
		return model.TypeHeartbeat, nil
	}

	switch msgType {
	case model.TypeAcceptFriendsNotif,
		model.TypeAcceptFriendsRequest,
		model.TypeAcceptFriendsResponse,
		model.TypeBlockPlayerNotif,
		model.TypeBlockPlayerRequest,
		model.TypeBlockPlayerResponse,
		model.TypeCancelFriendsNotif,
		model.TypeCancelFriendsRequest,
		model.TypeCancelFriendsResponse,
		model.TypeCancelMatchmakingRequest,
		model.TypeCancelMatchmakingResponse,
		model.TypeChannelChatNotif,
		model.TypeClientResetRequest,
		model.TypeConnectNotif,
		model.TypeDisconnectNotif,
		model.TypeDsNotif,
		model.TypeErrorNotif,
		model.TypeExitAllChannel,
		model.TypeFriendsStatusRequest,
		model.TypeFriendsStatusResponse,
		model.TypeGetAllSessionAttributeRequest,
		model.TypeGetAllSessionAttributeResponse,
		model.TypeGetFriendshipStatusRequest,
		model.TypeGetFriendshipStatusResponse,
		model.TypeGetSessionAttributeRequest,
		model.TypeGetSessionAttributeResponse,
		model.TypeHeartbeat,
		model.TypeJoinDefaultChannelRequest,
		model.TypeJoinDefaultChannelResponse,
		model.TypeListIncomingFriendsRequest,
		model.TypeListIncomingFriendsResponse,
		model.TypeListOfFriendsRequest,
		model.TypeListOfFriendsResponse,
		model.TypeListOnlineFriendsRequest,
		model.TypeListOutgoingFriendsRequest,
		model.TypeListOutgoingFriendsResponse,
		model.TypeMatchmakingNotif,
		model.TypeMessageNotif,
		model.TypeMessageSessionNotif,
		model.TypeOfflineNotificationRequest,
		model.TypeOfflineNotificationResponse,
		model.TypeOnlineFriends,
		model.TypePartyChatNotif,
		model.TypePartyChatRequest,
		model.TypePartyChatResponse,
		model.TypePartyCreateRequest,
		model.TypePartyCreateResponse,
		model.TypePartyDataUpdateNotif,
		model.TypePartyGetInvitedNotif,
		model.TypePartyInfoRequest,
		model.TypePartyInfoResponse,
		model.TypePartyInviteNotif,
		model.TypePartyInviteRequest,
		model.TypePartyInviteResponse,
		model.TypePartyJoinNotif,
		model.TypePartyJoinRequest,
		model.TypePartyJoinResponse,
		model.TypePartyKickNotif,
		model.TypePartyKickRequest,
		model.TypePartyKickResponse,
		model.TypePartyLeaveNotif,
		model.TypePartyLeaveRequest,
		model.TypePartyLeaveResponse,
		model.TypePartyPromoteLeaderRequest,
		model.TypePartyPromoteLeaderResponse,
		model.TypePartyRejectNotif,
		model.TypePartyRejectRequest,
		model.TypePartyRejectResponse,
		model.TypePersonalChatHistoryRequest,
		model.TypePersonalChatHistoryResponse,
		model.TypePersonalChatNotif,
		model.TypePersonalChatRequest,
		model.TypePersonalChatResponse,
		model.TypeRefreshTokenRequest,
		model.TypeRefreshTokenResponse,
		model.TypeRejectFriendsNotif,
		model.TypeRejectFriendsRequest,
		model.TypeRejectFriendsResponse,
		model.TypeRematchmakingNotif,
		model.TypeRequestFriendsNotif,
		model.TypeRequestFriendsRequest,
		model.TypeRequestFriendsResponse,
		model.TypeSendChannelChatRequest,
		model.TypeSendChannelChatResponse,
		model.TypeSetReadyConsentNotif,
		model.TypeSetReadyConsentRequest,
		model.TypeSetReadyConsentResponse,
		model.TypeSetSessionAttributeRequest,
		model.TypeSetSessionAttributeResponse,
		model.TypeSetUserStatusRequest,
		model.TypeSetUserStatusResponse,
		model.TypeShutdownNotif,
		model.TypeSignalingP2PNotif,
		model.TypeStartMatchmakingRequest,
		model.TypeStartMatchmakingResponse,
		model.TypeUnblockPlayerNotif,
		model.TypeUnblockPlayerRequest,
		model.TypeUnblockPlayerResponse,
		model.TypeUnfriendNotif,
		model.TypeUnfriendRequest,
		model.TypeUnfriendResponse,
		model.TypeUserBannedNotification,
		model.TypeUserMetricRequest,
		model.TypeUserMetricResponse,
		model.TypeUserStatusNotif,

		model.TypeGeneratePartyCodeResponse,
		model.TypeGetPartyCodeResponse,
		model.TypeDeletePartyCodeResponse,
		model.TypeJoinViaPartyCodeResponse,

		model.TypeUserUnbannedNotification:
	default:
		return model.TypeUnknown, ErrUnknownType
	}

	return msgType, nil
}

// nolint: gocyclo
func unmarshalResponseContent(messageType string, reader *bufio.Reader) (model.Message, error) {
	switch messageType {
	case model.TypeAcceptFriendsNotif:
		return unmarshalAcceptFriendsNotif(reader)
	case model.TypeAcceptFriendsRequest:
		return unmarshalAcceptFriendsRequest(reader)
	case model.TypeAcceptFriendsResponse:
		return unmarshalAcceptFriendsResponse(reader)
	case model.TypeBlockPlayerNotif:
		return unmarshalBlockPlayerNotif(reader)
	case model.TypeBlockPlayerRequest:
		return unmarshalBlockPlayerRequest(reader)
	case model.TypeBlockPlayerResponse:
		return unmarshalBlockPlayerResponse(reader)
	case model.TypeCancelFriendsNotif:
		return unmarshalCancelFriendsNotif(reader)
	case model.TypeCancelFriendsRequest:
		return unmarshalCancelFriendsRequest(reader)
	case model.TypeCancelFriendsResponse:
		return unmarshalCancelFriendsResponse(reader)
	case model.TypeCancelMatchmakingRequest:
		return unmarshalCancelMatchmakingRequest(reader)
	case model.TypeCancelMatchmakingResponse:
		return unmarshalCancelMatchmakingResponse(reader)
	case model.TypeChannelChatNotif:
		return unmarshalChannelChatNotif(reader)
	case model.TypeClientResetRequest:
		return unmarshalClientResetRequest(reader)
	case model.TypeConnectNotif:
		return unmarshalConnectNotif(reader)
	case model.TypeDisconnectNotif:
		return unmarshalDisconnectNotif(reader)
	case model.TypeDsNotif:
		return unmarshalDsNotif(reader)
	case model.TypeErrorNotif:
		return unmarshalErrorNotif(reader)
	case model.TypeExitAllChannel:
		return unmarshalExitAllChannel(reader)
	case model.TypeFriendsStatusRequest:
		return unmarshalFriendsStatusRequest(reader)
	case model.TypeFriendsStatusResponse:
		return unmarshalFriendsStatusResponse(reader)
	case model.TypeGetAllSessionAttributeRequest:
		return unmarshalGetAllSessionAttributeRequest(reader)
	case model.TypeGetAllSessionAttributeResponse:
		return unmarshalGetAllSessionAttributeResponse(reader)
	case model.TypeGetFriendshipStatusRequest:
		return unmarshalGetFriendshipStatusRequest(reader)
	case model.TypeGetFriendshipStatusResponse:
		return unmarshalGetFriendshipStatusResponse(reader)
	case model.TypeGetSessionAttributeRequest:
		return unmarshalGetSessionAttributeRequest(reader)
	case model.TypeGetSessionAttributeResponse:
		return unmarshalGetSessionAttributeResponse(reader)
	case model.TypeHeartbeat:
		return unmarshalHeartbeat(reader)
	case model.TypeJoinDefaultChannelRequest:
		return unmarshalJoinDefaultChannelRequest(reader)
	case model.TypeJoinDefaultChannelResponse:
		return unmarshalJoinDefaultChannelResponse(reader)
	case model.TypeListIncomingFriendsRequest:
		return unmarshalListIncomingFriendsRequest(reader)
	case model.TypeListIncomingFriendsResponse:
		return unmarshalListIncomingFriendsResponse(reader)
	case model.TypeListOfFriendsRequest:
		return unmarshalListOfFriendsRequest(reader)
	case model.TypeListOfFriendsResponse:
		return unmarshalListOfFriendsResponse(reader)
	case model.TypeListOnlineFriendsRequest:
		return unmarshalListOnlineFriendsRequest(reader)
	case model.TypeListOutgoingFriendsRequest:
		return unmarshalListOutgoingFriendsRequest(reader)
	case model.TypeListOutgoingFriendsResponse:
		return unmarshalListOutgoingFriendsResponse(reader)
	case model.TypeMatchmakingNotif:
		return unmarshalMatchmakingNotif(reader)
	case model.TypeMessageNotif:
		return unmarshalMessageNotif(reader)
	case model.TypeMessageSessionNotif:
		return unmarshalMessageSessionNotif(reader)
	case model.TypeOfflineNotificationRequest:
		return unmarshalOfflineNotificationRequest(reader)
	case model.TypeOfflineNotificationResponse:
		return unmarshalOfflineNotificationResponse(reader)
	case model.TypeOnlineFriends:
		return unmarshalOnlineFriends(reader)
	case model.TypePartyChatNotif:
		return unmarshalPartyChatNotif(reader)
	case model.TypePartyChatRequest:
		return unmarshalPartyChatRequest(reader)
	case model.TypePartyChatResponse:
		return unmarshalPartyChatResponse(reader)
	case model.TypePartyCreateRequest:
		return unmarshalPartyCreateRequest(reader)
	case model.TypePartyCreateResponse:
		return unmarshalPartyCreateResponse(reader)
	case model.TypePartyDataUpdateNotif:
		return unmarshalPartyDataUpdateNotif(reader)
	case model.TypePartyGetInvitedNotif:
		return unmarshalPartyGetInvitedNotif(reader)
	case model.TypePartyInfoRequest:
		return unmarshalPartyInfoRequest(reader)
	case model.TypePartyInfoResponse:
		return unmarshalPartyInfoResponse(reader)
	case model.TypePartyInviteNotif:
		return unmarshalPartyInviteNotif(reader)
	case model.TypePartyInviteRequest:
		return unmarshalPartyInviteRequest(reader)
	case model.TypePartyInviteResponse:
		return unmarshalPartyInviteResponse(reader)
	case model.TypePartyJoinNotif:
		return unmarshalPartyJoinNotif(reader)
	case model.TypePartyJoinRequest:
		return unmarshalPartyJoinRequest(reader)
	case model.TypePartyJoinResponse:
		return unmarshalPartyJoinResponse(reader)
	case model.TypePartyKickNotif:
		return unmarshalPartyKickNotif(reader)
	case model.TypePartyKickRequest:
		return unmarshalPartyKickRequest(reader)
	case model.TypePartyKickResponse:
		return unmarshalPartyKickResponse(reader)
	case model.TypePartyLeaveNotif:
		return unmarshalPartyLeaveNotif(reader)
	case model.TypePartyLeaveRequest:
		return unmarshalPartyLeaveRequest(reader)
	case model.TypePartyLeaveResponse:
		return unmarshalPartyLeaveResponse(reader)
	case model.TypePartyPromoteLeaderRequest:
		return unmarshalPartyPromoteLeaderRequest(reader)
	case model.TypePartyPromoteLeaderResponse:
		return unmarshalPartyPromoteLeaderResponse(reader)
	case model.TypePartyRejectNotif:
		return unmarshalPartyRejectNotif(reader)
	case model.TypePartyRejectRequest:
		return unmarshalPartyRejectRequest(reader)
	case model.TypePartyRejectResponse:
		return unmarshalPartyRejectResponse(reader)
	case model.TypePersonalChatHistoryRequest:
		return unmarshalPersonalChatHistoryRequest(reader)
	case model.TypePersonalChatHistoryResponse:
		return unmarshalPersonalChatHistoryResponse(reader)
	case model.TypePersonalChatNotif:
		return unmarshalPersonalChatNotif(reader)
	case model.TypePersonalChatRequest:
		return unmarshalPersonalChatRequest(reader)
	case model.TypePersonalChatResponse:
		return unmarshalPersonalChatResponse(reader)
	case model.TypeRefreshTokenRequest:
		return unmarshalRefreshTokenRequest(reader)
	case model.TypeRefreshTokenResponse:
		return unmarshalRefreshTokenResponse(reader)
	case model.TypeRejectFriendsNotif:
		return unmarshalRejectFriendsNotif(reader)
	case model.TypeRejectFriendsRequest:
		return unmarshalRejectFriendsRequest(reader)
	case model.TypeRejectFriendsResponse:
		return unmarshalRejectFriendsResponse(reader)
	case model.TypeRematchmakingNotif:
		return unmarshalRematchmakingNotif(reader)
	case model.TypeRequestFriendsNotif:
		return unmarshalRequestFriendsNotif(reader)
	case model.TypeRequestFriendsRequest:
		return unmarshalRequestFriendsRequest(reader)
	case model.TypeRequestFriendsResponse:
		return unmarshalRequestFriendsResponse(reader)
	case model.TypeSendChannelChatRequest:
		return unmarshalSendChannelChatRequest(reader)
	case model.TypeSendChannelChatResponse:
		return unmarshalSendChannelChatResponse(reader)
	case model.TypeSetReadyConsentNotif:
		return unmarshalSetReadyConsentNotif(reader)
	case model.TypeSetReadyConsentRequest:
		return unmarshalSetReadyConsentRequest(reader)
	case model.TypeSetReadyConsentResponse:
		return unmarshalSetReadyConsentResponse(reader)
	case model.TypeSetSessionAttributeRequest:
		return unmarshalSetSessionAttributeRequest(reader)
	case model.TypeSetSessionAttributeResponse:
		return unmarshalSetSessionAttributeResponse(reader)
	case model.TypeSetUserStatusRequest:
		return unmarshalSetUserStatusRequest(reader)
	case model.TypeSetUserStatusResponse:
		return unmarshalSetUserStatusResponse(reader)
	case model.TypeShutdownNotif:
		return unmarshalShutdownNotif(reader)
	case model.TypeSignalingP2PNotif:
		return unmarshalSignalingP2PNotif(reader)
	case model.TypeStartMatchmakingRequest:
		return unmarshalStartMatchmakingRequest(reader)
	case model.TypeStartMatchmakingResponse:
		return unmarshalStartMatchmakingResponse(reader)
	case model.TypeUnblockPlayerNotif:
		return unmarshalUnblockPlayerNotif(reader)
	case model.TypeUnblockPlayerRequest:
		return unmarshalUnblockPlayerRequest(reader)
	case model.TypeUnblockPlayerResponse:
		return unmarshalUnblockPlayerResponse(reader)
	case model.TypeUnfriendNotif:
		return unmarshalUnfriendNotif(reader)
	case model.TypeUnfriendRequest:
		return unmarshalUnfriendRequest(reader)
	case model.TypeUnfriendResponse:
		return unmarshalUnfriendResponse(reader)
	case model.TypeUserBannedNotification:
		return unmarshalUserBannedNotification(reader)
	case model.TypeUserMetricRequest:
		return unmarshalUserMetricRequest(reader)
	case model.TypeUserMetricResponse:
		return unmarshalUserMetricResponse(reader)
	case model.TypeUserStatusNotif:
		return unmarshalUserStatusNotif(reader)

		// FIXME: hardcoded in the template, need to add to the spec
	case model.TypeGeneratePartyCodeResponse:
		return unmarshalGeneratePartyCodeResponse(reader)
	case model.TypeGetPartyCodeResponse:
		return unmarshalGetPartyCodeResponse(reader)
	case model.TypeDeletePartyCodeResponse:
		return unmarshalDeletePartyCodeResponse(reader)
	case model.TypeJoinViaPartyCodeResponse:
		return unmarshalJoinViaPartyCodeResponse(reader)

		// FIXME: hardcoded in the template, need to add to the spec
	case model.TypeUserUnbannedNotification:
		return unmarshalUserUnbannedNotificationResponse(reader)
	case model.TypeSendPartyNotifResponse:
		return unmarshalSendPartyNotifResponse(reader)
	case model.TypePartyNotif:
		return unmarshalPartyNotif(reader)
	}

	logrus.Debug("type not handled : ", messageType)

	return nil, ErrUnexpectedType
}

// FIXME: hardcoded in the template, need to add to the spec
func unmarshalGeneratePartyCodeResponse(reader *bufio.Reader) (*model.GeneratePartyCodeResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}

	response := &model.GeneratePartyCodeResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
		PartyCode: content["partyCode"],
	}

	return response, nil
}

// FIXME: hardcoded in the template, need to add to the spec
func unmarshalGetPartyCodeResponse(reader *bufio.Reader) (*model.GetPartyCodeResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}

	response := &model.GetPartyCodeResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
		PartyCode: content["partyCode"],
	}

	return response, nil
}

// FIXME: hardcoded in the template, need to add to the spec
func unmarshalDeletePartyCodeResponse(reader *bufio.Reader) (*model.DeletePartyCodeResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}

	response := &model.DeletePartyCodeResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
	}

	return response, nil
}

// FIXME: hardcoded in the template, need to add to the spec
func unmarshalJoinViaPartyCodeResponse(reader *bufio.Reader) (*model.JoinViaPartyCodeResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}

	response := &model.JoinViaPartyCodeResponse{
		BaseResponse:    &model.BaseResponse{Code: responseCode},
		PartyID:         content["partyID"],
		LeaderID:        content["leaderID"],
		Members:         content["members"],
		Invitees:        content["invitees"],
		InvitationToken: content["invitationToken"],
	}

	return response, nil
}

// FIXME: hardcoded in the template, need to add to the spec
func unmarshalUserUnbannedNotificationResponse(reader *bufio.Reader) (*model.UserUnbannedNotification, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}

	enable, err := strconv.ParseBool(content["enable"])
	if err != nil {
		return nil, err
	}

	response := &model.UserUnbannedNotification{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
		UserID:    content["userId"],
		Namespace: content["namespace"],
		Ban:       content["ban"],
		EndDate:   content["endDate"],
		Reason:    content["reason"],
		Enable:    enable,
	}

	return response, nil
}

// FIXME: hardcoded in the template, need to add to the spec
func unmarshalSendPartyNotifResponse(reader *bufio.Reader) (*model.SendPartyNotifResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}

	response := &model.SendPartyNotifResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
	}

	return response, nil
}

// FIXME: hardcoded in the template, need to add to the spec
func unmarshalPartyNotif(reader *bufio.Reader) (*model.PartyNotif, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}

	response := &model.PartyNotif{
		Sender:  content["sender"],
		Topic:   content["topic"],
		Payload: content["payload"],
	}

	return response, nil
}

func unmarshalAcceptFriendsNotif(reader *bufio.Reader) (*model.AcceptFriendsNotif, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.AcceptFriendsNotif{
		FriendID: content["friendID"],
	}

	return response, nil
}

func unmarshalAcceptFriendsRequest(reader *bufio.Reader) (*model.AcceptFriendsRequest, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.AcceptFriendsRequest{
		BaseRequest: &model.BaseRequest{
			MessageID: content["id"],
			UserID:    content["userId"],
		},
		FriendID: content["friendID"],
	}

	return response, nil
}

func unmarshalAcceptFriendsResponse(reader *bufio.Reader) (*model.AcceptFriendsResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model.AcceptFriendsResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
	}

	return response, nil
}

func unmarshalBlockPlayerNotif(reader *bufio.Reader) (*model.BlockPlayerNotif, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.BlockPlayerNotif{
		BlockedUserID: content["blockedUserID"],
		UserID:        content["userID"],
	}

	return response, nil
}

func unmarshalBlockPlayerRequest(reader *bufio.Reader) (*model.BlockPlayerRequest, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.BlockPlayerRequest{
		BaseRequest: &model.BaseRequest{
			MessageID: content["id"],
			UserID:    content["userId"],
		},
		BlockUserID: content["blockUserID"],
		Namespace:   content["namespace"],
	}

	return response, nil
}

func unmarshalBlockPlayerResponse(reader *bufio.Reader) (*model.BlockPlayerResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model.BlockPlayerResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
		BlockUserID: content["blockUserID"],
		Namespace:   content["namespace"],
	}

	return response, nil
}

func unmarshalCancelFriendsNotif(reader *bufio.Reader) (*model.CancelFriendsNotif, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.CancelFriendsNotif{
		UserID: content["userID"],
	}

	return response, nil
}

func unmarshalCancelFriendsRequest(reader *bufio.Reader) (*model.CancelFriendsRequest, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.CancelFriendsRequest{
		BaseRequest: &model.BaseRequest{
			MessageID: content["id"],
			UserID:    content["userId"],
		},
		FriendID: content["friendID"],
	}

	return response, nil
}

func unmarshalCancelFriendsResponse(reader *bufio.Reader) (*model.CancelFriendsResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model.CancelFriendsResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
	}

	return response, nil
}

func unmarshalCancelMatchmakingRequest(reader *bufio.Reader) (*model.CancelMatchmakingRequest, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	isTempParty, err := strconv.ParseBool(content["isTempParty"])
	if err != nil {
		return nil, err
	}
	response := &model.CancelMatchmakingRequest{
		BaseRequest: &model.BaseRequest{
			MessageID: content["id"],
			UserID:    content["userId"],
		},
		GameMode:    content["gameMode"],
		IsTempParty: isTempParty,
	}

	return response, nil
}

func unmarshalCancelMatchmakingResponse(reader *bufio.Reader) (*model.CancelMatchmakingResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model.CancelMatchmakingResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
	}

	return response, nil
}

func unmarshalChannelChatNotif(reader *bufio.Reader) (*model.ChannelChatNotif, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	sentAt, err := time.Parse(time.RFC3339, content["sentAt"])
	if err != nil {
		return nil, err
	}
	response := &model.ChannelChatNotif{
		ChannelSlug: content["channelSlug"],
		From:        content["from"],
		Payload:     content["payload"],
		SentAt:      strconv.FormatInt(sentAt.Unix(), 10),
	}

	return response, nil
}

func unmarshalClientResetRequest(reader *bufio.Reader) (*model.ClientResetRequest, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.ClientResetRequest{
		BaseRequest: &model.BaseRequest{
			MessageID: content["id"],
			UserID:    content["userId"],
		},
		Namespace: content["namespace"],
		UserID:    content["userID"],
	}

	return response, nil
}

func unmarshalConnectNotif(reader *bufio.Reader) (*model.ConnectNotif, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.ConnectNotif{
		LobbySessionID: content["lobbySessionID"],
	}

	return response, nil
}

func unmarshalDisconnectNotif(reader *bufio.Reader) (*model.DisconnectNotif, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.DisconnectNotif{
		ConnectionID: content["connectionID"],
		Namespace:    content["namespace"],
	}

	return response, nil
}

func unmarshalDsNotif(reader *bufio.Reader) (*model.DsNotif, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	alternateIps := strings.Split(content["alternateIps"], ",")
	// for unknown reasons alternateIps have an empty element, remove it
	if len(alternateIps) > 1 && alternateIps[len(alternateIps)-1] == "" {
		alternateIps = alternateIps[:len(alternateIps)-1]
	}
	isOK, err := strconv.ParseBool(content["isOK"])
	if err != nil {
		return nil, err
	}
	isOverrideGameVersion, err := strconv.ParseBool(content["isOverrideGameVersion"])
	if err != nil {
		return nil, err
	}
	port, err := strconv.Atoi(content["port"])
	if err != nil {
		return nil, err
	}
	ports := make(map[string]int64)
	err = json.Unmarshal([]byte(content["ports"]), &ports) // INT64
	if err != nil {
		return nil, err
	}
	response := &model.DsNotif{
		AlternateIps:          alternateIps,
		CustomAttribute:       content["customAttribute"],
		Deployment:            content["deployment"],
		GameVersion:           content["gameVersion"],
		ImageVersion:          content["imageVersion"],
		IP:                    content["ip"],
		IsOK:                  isOK,
		IsOverrideGameVersion: isOverrideGameVersion,
		LastUpdate:            content["lastUpdate"],
		MatchID:               content["matchID"],
		Message:               content["message"],
		Namespace:             content["namespace"],
		PodName:               content["podName"],
		Port:                  port,
		Ports:                 ports,
		Protocol:              content["protocol"],
		Provider:              content["provider"],
		Region:                content["region"],
		SessionID:             content["sessionID"],
		Status:                content["status"],
	}

	return response, nil
}

func unmarshalErrorNotif(reader *bufio.Reader) (*model.ErrorNotif, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.ErrorNotif{
		Message: content["message"],
	}

	return response, nil
}

func unmarshalExitAllChannel(reader *bufio.Reader) (*model.ExitAllChannel, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.ExitAllChannel{
		Namespace: content["namespace"],
		UserID:    content["userID"],
	}

	return response, nil
}

func unmarshalFriendsStatusRequest(reader *bufio.Reader) (*model.FriendsStatusRequest, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.FriendsStatusRequest{
		BaseRequest: &model.BaseRequest{
			MessageID: content["id"],
			UserID:    content["userId"],
		},
	}

	return response, nil
}

func unmarshalFriendsStatusResponse(reader *bufio.Reader) (*model.FriendsStatusResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	activity := strings.Split(content["activity"], ",")
	// for unknown reasons activity have an empty element, remove it
	if len(activity) > 1 && activity[len(activity)-1] == "" {
		activity = activity[:len(activity)-1]
	}
	availability := strings.Split(content["availability"], ",")
	// for unknown reasons availability have an empty element, remove it
	if len(availability) > 1 && availability[len(availability)-1] == "" {
		availability = availability[:len(availability)-1]
	}
	friendIds := strings.Split(content["friendIds"], ",")
	// for unknown reasons friendIds have an empty element, remove it
	if len(friendIds) > 1 && friendIds[len(friendIds)-1] == "" {
		friendIds = friendIds[:len(friendIds)-1]
	}
	lastSeenAt := strings.Split(content["lastSeenAt"], ",")
	// for unknown reasons lastSeenAt have an empty element, remove it
	if len(lastSeenAt) > 1 && lastSeenAt[len(lastSeenAt)-1] == "" {
		lastSeenAt = lastSeenAt[:len(lastSeenAt)-1]
	}
	response := &model.FriendsStatusResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
		Activity:     activity,
		Availability: availability,
		FriendIds:    friendIds,
		LastSeenAt:   lastSeenAt,
	}

	return response, nil
}

func unmarshalGetAllSessionAttributeRequest(reader *bufio.Reader) (*model.GetAllSessionAttributeRequest, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.GetAllSessionAttributeRequest{
		BaseRequest: &model.BaseRequest{
			MessageID: content["id"],
			UserID:    content["userId"],
		},
	}

	return response, nil
}

func unmarshalGetAllSessionAttributeResponse(reader *bufio.Reader) (*model.GetAllSessionAttributeResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	attributes := make(map[string]string)
	err = json.Unmarshal([]byte(content["attributes"]), &attributes) // TEXT
	if err != nil {
		return nil, err
	}
	response := &model.GetAllSessionAttributeResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
		Attributes: attributes,
	}

	return response, nil
}

func unmarshalGetFriendshipStatusRequest(reader *bufio.Reader) (*model.GetFriendshipStatusRequest, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.GetFriendshipStatusRequest{
		BaseRequest: &model.BaseRequest{
			MessageID: content["id"],
			UserID:    content["userId"],
		},
		FriendID: content["friendID"],
	}

	return response, nil
}

func unmarshalGetFriendshipStatusResponse(reader *bufio.Reader) (*model.GetFriendshipStatusResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model.GetFriendshipStatusResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
		FriendshipStatus: content["friendshipStatus"],
	}

	return response, nil
}

func unmarshalGetSessionAttributeRequest(reader *bufio.Reader) (*model.GetSessionAttributeRequest, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.GetSessionAttributeRequest{
		BaseRequest: &model.BaseRequest{
			MessageID: content["id"],
			UserID:    content["userId"],
		},
		Key: content["key"],
	}

	return response, nil
}

func unmarshalGetSessionAttributeResponse(reader *bufio.Reader) (*model.GetSessionAttributeResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model.GetSessionAttributeResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
		Value: content["value"],
	}

	return response, nil
}

func unmarshalHeartbeat(reader *bufio.Reader) (*model.Heartbeat, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.Heartbeat{
		BaseRequest: &model.BaseRequest{
			MessageID: content["id"],
			UserID:    content["userId"],
		},
	}

	return response, nil
}

func unmarshalJoinDefaultChannelRequest(reader *bufio.Reader) (*model.JoinDefaultChannelRequest, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.JoinDefaultChannelRequest{
		BaseRequest: &model.BaseRequest{
			MessageID: content["id"],
			UserID:    content["userId"],
		},
	}

	return response, nil
}

func unmarshalJoinDefaultChannelResponse(reader *bufio.Reader) (*model.JoinDefaultChannelResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model.JoinDefaultChannelResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
		ChannelSlug: content["channelSlug"],
	}

	return response, nil
}

func unmarshalListIncomingFriendsRequest(reader *bufio.Reader) (*model.ListIncomingFriendsRequest, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.ListIncomingFriendsRequest{
		BaseRequest: &model.BaseRequest{
			MessageID: content["id"],
			UserID:    content["userId"],
		},
	}

	return response, nil
}

func unmarshalListIncomingFriendsResponse(reader *bufio.Reader) (*model.ListIncomingFriendsResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	userIds := strings.Split(content["userIds"], ",")
	// for unknown reasons userIds have an empty element, remove it
	if len(userIds) > 1 && userIds[len(userIds)-1] == "" {
		userIds = userIds[:len(userIds)-1]
	}
	response := &model.ListIncomingFriendsResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
		UserIds: userIds,
	}

	return response, nil
}

func unmarshalListOfFriendsRequest(reader *bufio.Reader) (*model.ListOfFriendsRequest, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.ListOfFriendsRequest{
		BaseRequest: &model.BaseRequest{
			MessageID: content["id"],
			UserID:    content["userId"],
		},
		FriendID: content["friendID"],
	}

	return response, nil
}

func unmarshalListOfFriendsResponse(reader *bufio.Reader) (*model.ListOfFriendsResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	friendIds := strings.Split(content["friendIds"], ",")
	// for unknown reasons friendIds have an empty element, remove it
	if len(friendIds) > 1 && friendIds[len(friendIds)-1] == "" {
		friendIds = friendIds[:len(friendIds)-1]
	}
	response := &model.ListOfFriendsResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
		FriendIds: friendIds,
	}

	return response, nil
}

func unmarshalListOnlineFriendsRequest(reader *bufio.Reader) (*model.ListOnlineFriendsRequest, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.ListOnlineFriendsRequest{
		BaseRequest: &model.BaseRequest{
			MessageID: content["id"],
			UserID:    content["userId"],
		},
	}

	return response, nil
}

func unmarshalListOutgoingFriendsRequest(reader *bufio.Reader) (*model.ListOutgoingFriendsRequest, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.ListOutgoingFriendsRequest{
		BaseRequest: &model.BaseRequest{
			MessageID: content["id"],
			UserID:    content["userId"],
		},
	}

	return response, nil
}

func unmarshalListOutgoingFriendsResponse(reader *bufio.Reader) (*model.ListOutgoingFriendsResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	friendIds := strings.Split(content["friendIds"], ",")
	// for unknown reasons friendIds have an empty element, remove it
	if len(friendIds) > 1 && friendIds[len(friendIds)-1] == "" {
		friendIds = friendIds[:len(friendIds)-1]
	}
	response := &model.ListOutgoingFriendsResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
		FriendIds: friendIds,
	}

	return response, nil
}

func unmarshalMatchmakingNotif(reader *bufio.Reader) (*model.MatchmakingNotif, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	counterPartyMember := strings.Split(content["counterPartyMember"], ",")
	// for unknown reasons counterPartyMember have an empty element, remove it
	if len(counterPartyMember) > 1 && counterPartyMember[len(counterPartyMember)-1] == "" {
		counterPartyMember = counterPartyMember[:len(counterPartyMember)-1]
	}
	partyMember := strings.Split(content["partyMember"], ",")
	// for unknown reasons partyMember have an empty element, remove it
	if len(partyMember) > 1 && partyMember[len(partyMember)-1] == "" {
		partyMember = partyMember[:len(partyMember)-1]
	}
	readyDuration, err := strconv.Atoi(content["readyDuration"])
	if err != nil {
		return nil, err
	}
	response := &model.MatchmakingNotif{
		CounterPartyMember: counterPartyMember,
		MatchID:            content["matchID"],
		Message:            content["message"],
		PartyMember:        partyMember,
		ReadyDuration:      readyDuration,
		Status:             content["status"],
	}

	return response, nil
}

func unmarshalMessageNotif(reader *bufio.Reader) (*model.MessageNotif, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	sentAt, err := time.Parse(time.RFC3339, content["sentAt"])
	if err != nil {
		return nil, err
	}
	response := &model.MessageNotif{
		From:    content["from"],
		Payload: content["payload"],
		SentAt:  strconv.FormatInt(sentAt.Unix(), 10),
		To:      content["to"],
		Topic:   content["topic"],
	}

	return response, nil
}

func unmarshalMessageSessionNotif(reader *bufio.Reader) (*model.MessageSessionNotif, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	sentAt, err := time.Parse(time.RFC3339, content["sentAt"])
	if err != nil {
		return nil, err
	}
	response := &model.MessageSessionNotif{
		From:    content["from"],
		Payload: content["payload"],
		SentAt:  strconv.FormatInt(sentAt.Unix(), 10),
		To:      content["to"],
		Topic:   content["topic"],
	}

	return response, nil
}

func unmarshalOfflineNotificationRequest(reader *bufio.Reader) (*model.OfflineNotificationRequest, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.OfflineNotificationRequest{
		BaseRequest: &model.BaseRequest{
			MessageID: content["id"],
			UserID:    content["userId"],
		},
	}

	return response, nil
}

func unmarshalOfflineNotificationResponse(reader *bufio.Reader) (*model.OfflineNotificationResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model.OfflineNotificationResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
	}

	return response, nil
}

func unmarshalOnlineFriends(reader *bufio.Reader) (*model.OnlineFriends, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	onlineFriendIds := strings.Split(content["onlineFriendIds"], ",")
	// for unknown reasons onlineFriendIds have an empty element, remove it
	if len(onlineFriendIds) > 1 && onlineFriendIds[len(onlineFriendIds)-1] == "" {
		onlineFriendIds = onlineFriendIds[:len(onlineFriendIds)-1]
	}
	response := &model.OnlineFriends{
		OnlineFriendIds: onlineFriendIds,
	}

	return response, nil
}

func unmarshalPartyChatNotif(reader *bufio.Reader) (*model.PartyChatNotif, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	receivedAt, err := time.Parse(time.RFC3339, content["receivedAt"])
	if err != nil {
		return nil, err
	}
	response := &model.PartyChatNotif{
		From:       content["from"],
		Payload:    content["payload"],
		ReceivedAt: strconv.FormatInt(receivedAt.Unix(), 10),
		To:         content["to"],
	}

	return response, nil
}

func unmarshalPartyChatRequest(reader *bufio.Reader) (*model.PartyChatRequest, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	receivedAt, err := time.Parse(time.RFC3339, content["receivedAt"])
	if err != nil {
		return nil, err
	}
	response := &model.PartyChatRequest{
		BaseRequest: &model.BaseRequest{
			MessageID: content["id"],
			UserID:    content["userId"],
		},
		From:       content["from"],
		Payload:    content["payload"],
		ReceivedAt: strconv.FormatInt(receivedAt.Unix(), 10),
		To:         content["to"],
	}

	return response, nil
}

func unmarshalPartyChatResponse(reader *bufio.Reader) (*model.PartyChatResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model.PartyChatResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
	}

	return response, nil
}

func unmarshalPartyCreateRequest(reader *bufio.Reader) (*model.PartyCreateRequest, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.PartyCreateRequest{
		BaseRequest: &model.BaseRequest{
			MessageID: content["id"],
			UserID:    content["userId"],
		},
	}

	return response, nil
}

func unmarshalPartyCreateResponse(reader *bufio.Reader) (*model.PartyCreateResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model.PartyCreateResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
		InvitationToken: content["invitationToken"],
		Invitees:        content["invitees"],
		LeaderID:        content["leaderID"],
		Members:         content["members"],
		PartyID:         content["partyID"],
	}

	return response, nil
}

func unmarshalPartyDataUpdateNotif(reader *bufio.Reader) (*model.PartyDataUpdateNotif, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	customAttributes := make(map[string]interface{})
	err = json.Unmarshal([]byte(content["customAttributes"]), &customAttributes) // OBJECT
	if err != nil {
		return nil, err
	}
	invitees := strings.Split(content["invitees"], ",")
	// for unknown reasons invitees have an empty element, remove it
	if len(invitees) > 1 && invitees[len(invitees)-1] == "" {
		invitees = invitees[:len(invitees)-1]
	}
	members := strings.Split(content["members"], ",")
	// for unknown reasons members have an empty element, remove it
	if len(members) > 1 && members[len(members)-1] == "" {
		members = members[:len(members)-1]
	}
	updatedAt, err := time.Parse(time.RFC3339, content["updatedAt"])
	if err != nil {
		return nil, err
	}
	response := &model.PartyDataUpdateNotif{
		CustomAttributes: customAttributes,
		Invitees:         invitees,
		Leader:           content["leader"],
		Members:          members,
		Namespace:        content["namespace"],
		PartyID:          content["partyID"],
		UpdatedAt:        strconv.FormatInt(updatedAt.Unix(), 10),
	}

	return response, nil
}

func unmarshalPartyGetInvitedNotif(reader *bufio.Reader) (*model.PartyGetInvitedNotif, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.PartyGetInvitedNotif{
		From:            content["from"],
		InvitationToken: content["invitationToken"],
		PartyID:         content["partyID"],
	}

	return response, nil
}

func unmarshalPartyInfoRequest(reader *bufio.Reader) (*model.PartyInfoRequest, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.PartyInfoRequest{
		BaseRequest: &model.BaseRequest{
			MessageID: content["id"],
			UserID:    content["userId"],
		},
	}

	return response, nil
}

func unmarshalPartyInfoResponse(reader *bufio.Reader) (*model.PartyInfoResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	customAttributes := make(map[string]interface{})
	err = json.Unmarshal([]byte(content["customAttributes"]), &customAttributes) // OBJECT
	if err != nil {
		return nil, err
	}
	response := &model.PartyInfoResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
		CustomAttributes: customAttributes,
		InvitationToken:  content["invitationToken"],
		Invitees:         content["invitees"],
		LeaderID:         content["leaderID"],
		Members:          content["members"],
		PartyID:          content["partyID"],
	}

	return response, nil
}

func unmarshalPartyInviteNotif(reader *bufio.Reader) (*model.PartyInviteNotif, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.PartyInviteNotif{
		InviteeID: content["inviteeID"],
		InviterID: content["inviterID"],
	}

	return response, nil
}

func unmarshalPartyInviteRequest(reader *bufio.Reader) (*model.PartyInviteRequest, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.PartyInviteRequest{
		BaseRequest: &model.BaseRequest{
			MessageID: content["id"],
			UserID:    content["userId"],
		},
		FriendID: content["friendID"],
	}

	return response, nil
}

func unmarshalPartyInviteResponse(reader *bufio.Reader) (*model.PartyInviteResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model.PartyInviteResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
	}

	return response, nil
}

func unmarshalPartyJoinNotif(reader *bufio.Reader) (*model.PartyJoinNotif, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.PartyJoinNotif{
		UserID: content["userID"],
	}

	return response, nil
}

func unmarshalPartyJoinRequest(reader *bufio.Reader) (*model.PartyJoinRequest, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.PartyJoinRequest{
		BaseRequest: &model.BaseRequest{
			MessageID: content["id"],
			UserID:    content["userId"],
		},
		InvitationToken: content["invitationToken"],
		PartyID:         content["partyID"],
	}

	return response, nil
}

func unmarshalPartyJoinResponse(reader *bufio.Reader) (*model.PartyJoinResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model.PartyJoinResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
		InvitationToken: content["invitationToken"],
		Invitees:        content["invitees"],
		LeaderID:        content["leaderID"],
		Members:         content["members"],
		PartyID:         content["partyID"],
	}

	return response, nil
}

func unmarshalPartyKickNotif(reader *bufio.Reader) (*model.PartyKickNotif, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.PartyKickNotif{
		LeaderID: content["leaderID"],
		PartyID:  content["partyID"],
		UserID:   content["userID"],
	}

	return response, nil
}

func unmarshalPartyKickRequest(reader *bufio.Reader) (*model.PartyKickRequest, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.PartyKickRequest{
		BaseRequest: &model.BaseRequest{
			MessageID: content["id"],
			UserID:    content["userId"],
		},
		MemberID: content["memberID"],
	}

	return response, nil
}

func unmarshalPartyKickResponse(reader *bufio.Reader) (*model.PartyKickResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model.PartyKickResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
	}

	return response, nil
}

func unmarshalPartyLeaveNotif(reader *bufio.Reader) (*model.PartyLeaveNotif, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.PartyLeaveNotif{
		LeaderID: content["leaderID"],
		UserID:   content["userID"],
	}

	return response, nil
}

func unmarshalPartyLeaveRequest(reader *bufio.Reader) (*model.PartyLeaveRequest, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	ignoreUserRegistry, err := strconv.ParseBool(content["ignoreUserRegistry"])
	if err != nil {
		return nil, err
	}
	response := &model.PartyLeaveRequest{
		BaseRequest: &model.BaseRequest{
			MessageID: content["id"],
			UserID:    content["userId"],
		},
		IgnoreUserRegistry: ignoreUserRegistry,
	}

	return response, nil
}

func unmarshalPartyLeaveResponse(reader *bufio.Reader) (*model.PartyLeaveResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model.PartyLeaveResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
	}

	return response, nil
}

func unmarshalPartyPromoteLeaderRequest(reader *bufio.Reader) (*model.PartyPromoteLeaderRequest, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.PartyPromoteLeaderRequest{
		BaseRequest: &model.BaseRequest{
			MessageID: content["id"],
			UserID:    content["userId"],
		},
		NewLeaderUserID: content["newLeaderUserID"],
	}

	return response, nil
}

func unmarshalPartyPromoteLeaderResponse(reader *bufio.Reader) (*model.PartyPromoteLeaderResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model.PartyPromoteLeaderResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
		InvitationToken: content["invitationToken"],
		Invitees:        content["invitees"],
		LeaderID:        content["leaderID"],
		Members:         content["members"],
		PartyID:         content["partyID"],
	}

	return response, nil
}

func unmarshalPartyRejectNotif(reader *bufio.Reader) (*model.PartyRejectNotif, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.PartyRejectNotif{
		LeaderID: content["leaderID"],
		PartyID:  content["partyID"],
		UserID:   content["userID"],
	}

	return response, nil
}

func unmarshalPartyRejectRequest(reader *bufio.Reader) (*model.PartyRejectRequest, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.PartyRejectRequest{
		BaseRequest: &model.BaseRequest{
			MessageID: content["id"],
			UserID:    content["userId"],
		},
		InvitationToken: content["invitationToken"],
		PartyID:         content["partyID"],
	}

	return response, nil
}

func unmarshalPartyRejectResponse(reader *bufio.Reader) (*model.PartyRejectResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model.PartyRejectResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
		PartyID: content["partyID"],
	}

	return response, nil
}

func unmarshalPersonalChatHistoryRequest(reader *bufio.Reader) (*model.PersonalChatHistoryRequest, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.PersonalChatHistoryRequest{
		BaseRequest: &model.BaseRequest{
			MessageID: content["id"],
			UserID:    content["userId"],
		},
		FriendID: content["friendID"],
	}

	return response, nil
}

func unmarshalPersonalChatHistoryResponse(reader *bufio.Reader) (*model.PersonalChatHistoryResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model.PersonalChatHistoryResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
		Chat:     content["chat"],
		FriendID: content["friendID"],
	}

	return response, nil
}

func unmarshalPersonalChatNotif(reader *bufio.Reader) (*model.PersonalChatNotif, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	receivedAt, err := time.Parse(time.RFC3339, content["receivedAt"])
	if err != nil {
		return nil, err
	}
	response := &model.PersonalChatNotif{
		From:       content["from"],
		Payload:    content["payload"],
		ReceivedAt: strconv.FormatInt(receivedAt.Unix(), 10),
		To:         content["to"],
	}

	return response, nil
}

func unmarshalPersonalChatRequest(reader *bufio.Reader) (*model.PersonalChatRequest, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	receivedAt, err := time.Parse(time.RFC3339, content["receivedAt"])
	if err != nil {
		return nil, err
	}
	response := &model.PersonalChatRequest{
		BaseRequest: &model.BaseRequest{
			MessageID: content["id"],
			UserID:    content["userId"],
		},
		From:       content["from"],
		Payload:    content["payload"],
		ReceivedAt: strconv.FormatInt(receivedAt.Unix(), 10),
		To:         content["to"],
	}

	return response, nil
}

func unmarshalPersonalChatResponse(reader *bufio.Reader) (*model.PersonalChatResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model.PersonalChatResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
	}

	return response, nil
}

func unmarshalRefreshTokenRequest(reader *bufio.Reader) (*model.RefreshTokenRequest, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.RefreshTokenRequest{
		BaseRequest: &model.BaseRequest{
			MessageID: content["id"],
			UserID:    content["userId"],
		},
		Token: content["token"],
	}

	return response, nil
}

func unmarshalRefreshTokenResponse(reader *bufio.Reader) (*model.RefreshTokenResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model.RefreshTokenResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
	}

	return response, nil
}

func unmarshalRejectFriendsNotif(reader *bufio.Reader) (*model.RejectFriendsNotif, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.RejectFriendsNotif{
		UserID: content["userID"],
	}

	return response, nil
}

func unmarshalRejectFriendsRequest(reader *bufio.Reader) (*model.RejectFriendsRequest, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.RejectFriendsRequest{
		BaseRequest: &model.BaseRequest{
			MessageID: content["id"],
			UserID:    content["userId"],
		},
		FriendID: content["friendID"],
	}

	return response, nil
}

func unmarshalRejectFriendsResponse(reader *bufio.Reader) (*model.RejectFriendsResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model.RejectFriendsResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
	}

	return response, nil
}

func unmarshalRematchmakingNotif(reader *bufio.Reader) (*model.RematchmakingNotif, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	banDuration, err := strconv.Atoi(content["banDuration"])
	if err != nil {
		return nil, err
	}
	response := &model.RematchmakingNotif{
		BanDuration: banDuration,
	}

	return response, nil
}

func unmarshalRequestFriendsNotif(reader *bufio.Reader) (*model.RequestFriendsNotif, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.RequestFriendsNotif{
		FriendID: content["friendID"],
	}

	return response, nil
}

func unmarshalRequestFriendsRequest(reader *bufio.Reader) (*model.RequestFriendsRequest, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.RequestFriendsRequest{
		BaseRequest: &model.BaseRequest{
			MessageID: content["id"],
			UserID:    content["userId"],
		},
		FriendID: content["friendID"],
	}

	return response, nil
}

func unmarshalRequestFriendsResponse(reader *bufio.Reader) (*model.RequestFriendsResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model.RequestFriendsResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
	}

	return response, nil
}

func unmarshalSendChannelChatRequest(reader *bufio.Reader) (*model.SendChannelChatRequest, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.SendChannelChatRequest{
		BaseRequest: &model.BaseRequest{
			MessageID: content["id"],
			UserID:    content["userId"],
		},
		ChannelSlug: content["channelSlug"],
		Payload:     content["payload"],
	}

	return response, nil
}

func unmarshalSendChannelChatResponse(reader *bufio.Reader) (*model.SendChannelChatResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model.SendChannelChatResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
	}

	return response, nil
}

func unmarshalSetReadyConsentNotif(reader *bufio.Reader) (*model.SetReadyConsentNotif, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.SetReadyConsentNotif{
		MatchID: content["matchID"],
		UserID:  content["userID"],
	}

	return response, nil
}

func unmarshalSetReadyConsentRequest(reader *bufio.Reader) (*model.SetReadyConsentRequest, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.SetReadyConsentRequest{
		BaseRequest: &model.BaseRequest{
			MessageID: content["id"],
			UserID:    content["userId"],
		},
		MatchID: content["matchID"],
	}

	return response, nil
}

func unmarshalSetReadyConsentResponse(reader *bufio.Reader) (*model.SetReadyConsentResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model.SetReadyConsentResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
	}

	return response, nil
}

func unmarshalSetSessionAttributeRequest(reader *bufio.Reader) (*model.SetSessionAttributeRequest, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.SetSessionAttributeRequest{
		BaseRequest: &model.BaseRequest{
			MessageID: content["id"],
			UserID:    content["userId"],
		},
		Key:       content["key"],
		Namespace: content["namespace"],
		Value:     content["value"],
	}

	return response, nil
}

func unmarshalSetSessionAttributeResponse(reader *bufio.Reader) (*model.SetSessionAttributeResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model.SetSessionAttributeResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
	}

	return response, nil
}

func unmarshalSetUserStatusRequest(reader *bufio.Reader) (*model.SetUserStatusRequest, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	availability, err := strconv.Atoi(content["availability"])
	if err != nil {
		return nil, err
	}
	response := &model.SetUserStatusRequest{
		BaseRequest: &model.BaseRequest{
			MessageID: content["id"],
			UserID:    content["userId"],
		},
		Activity:     content["activity"],
		Availability: availability,
	}

	return response, nil
}

func unmarshalSetUserStatusResponse(reader *bufio.Reader) (*model.SetUserStatusResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model.SetUserStatusResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
	}

	return response, nil
}

func unmarshalShutdownNotif(reader *bufio.Reader) (*model.ShutdownNotif, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.ShutdownNotif{
		Message: content["message"],
	}

	return response, nil
}

func unmarshalSignalingP2PNotif(reader *bufio.Reader) (*model.SignalingP2PNotif, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.SignalingP2PNotif{
		DestinationID: content["destinationID"],
		Message:       content["message"],
	}

	return response, nil
}

func unmarshalStartMatchmakingRequest(reader *bufio.Reader) (*model.StartMatchmakingRequest, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	partyAttributes := make(map[string]interface{})
	err = json.Unmarshal([]byte(content["partyAttributes"]), &partyAttributes) // OBJECT
	if err != nil {
		return nil, err
	}
	priority, err := strconv.Atoi(content["priority"])
	if err != nil {
		return nil, err
	}
	response := &model.StartMatchmakingRequest{
		BaseRequest: &model.BaseRequest{
			MessageID: content["id"],
			UserID:    content["userId"],
		},
		ExtraAttributes: content["extraAttributes"],
		GameMode:        content["gameMode"],
		PartyAttributes: partyAttributes,
		Priority:        priority,
		TempParty:       content["tempParty"],
	}

	return response, nil
}

func unmarshalStartMatchmakingResponse(reader *bufio.Reader) (*model.StartMatchmakingResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model.StartMatchmakingResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
	}

	return response, nil
}

func unmarshalUnblockPlayerNotif(reader *bufio.Reader) (*model.UnblockPlayerNotif, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.UnblockPlayerNotif{
		UnblockedUserID: content["unblockedUserID"],
		UserID:          content["userID"],
	}

	return response, nil
}

func unmarshalUnblockPlayerRequest(reader *bufio.Reader) (*model.UnblockPlayerRequest, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.UnblockPlayerRequest{
		BaseRequest: &model.BaseRequest{
			MessageID: content["id"],
			UserID:    content["userId"],
		},
		Namespace:       content["namespace"],
		UnblockedUserID: content["unblockedUserID"],
	}

	return response, nil
}

func unmarshalUnblockPlayerResponse(reader *bufio.Reader) (*model.UnblockPlayerResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model.UnblockPlayerResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
		Namespace:       content["namespace"],
		UnblockedUserID: content["unblockedUserID"],
	}

	return response, nil
}

func unmarshalUnfriendNotif(reader *bufio.Reader) (*model.UnfriendNotif, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.UnfriendNotif{
		FriendID: content["friendID"],
	}

	return response, nil
}

func unmarshalUnfriendRequest(reader *bufio.Reader) (*model.UnfriendRequest, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.UnfriendRequest{
		BaseRequest: &model.BaseRequest{
			MessageID: content["id"],
			UserID:    content["userId"],
		},
		FriendID: content["friendID"],
	}

	return response, nil
}

func unmarshalUnfriendResponse(reader *bufio.Reader) (*model.UnfriendResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model.UnfriendResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
	}

	return response, nil
}

func unmarshalUserBannedNotification(reader *bufio.Reader) (*model.UserBannedNotification, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	response := &model.UserBannedNotification{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
	}

	return response, nil
}

func unmarshalUserMetricRequest(reader *bufio.Reader) (*model.UserMetricRequest, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	response := &model.UserMetricRequest{
		BaseRequest: &model.BaseRequest{
			MessageID: content["id"],
			UserID:    content["userId"],
		},
	}

	return response, nil
}

func unmarshalUserMetricResponse(reader *bufio.Reader) (*model.UserMetricResponse, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	responseCode, err := strconv.Atoi(content["code"])
	if err != nil {
		return nil, err
	}
	playerCount, err := strconv.Atoi(content["playerCount"])
	if err != nil {
		return nil, err
	}
	response := &model.UserMetricResponse{
		BaseResponse: &model.BaseResponse{
			MessageID: content["id"],
			Code:      responseCode,
		},
		PlayerCount: playerCount,
	}

	return response, nil
}

func unmarshalUserStatusNotif(reader *bufio.Reader) (*model.UserStatusNotif, error) {
	content, err := readAll(reader)
	if err != nil {
		return nil, err
	}
	availability, err := strconv.Atoi(content["availability"])
	if err != nil {
		return nil, err
	}
	lastSeenAt, err := time.Parse(time.RFC3339, content["lastSeenAt"])
	if err != nil {
		return nil, err
	}
	response := &model.UserStatusNotif{
		Activity:     content["activity"],
		Availability: availability,
		LastSeenAt:   strconv.FormatInt(lastSeenAt.Unix(), 10),
		UserID:       content["userID"],
	}

	return response, nil
}

func readAll(reader *bufio.Reader) (map[string]string, error) {
	content := make(map[string]string)
	var err error
	var key, val string
	for err == nil {
		key, val, err = readLine(reader)
		if err == nil {
			content[key] = val
		}
	}

	return content, nil
}

func readLine(reader *bufio.Reader) (key, val string, err error) {
	str, err := reader.ReadString(newLine)

	if err != nil && err != io.EOF {
		return key, val, err
	}
	str = strings.TrimSuffix(str, string(newLine))
	parts := strings.SplitN(str, ": ", 2)
	if len(parts) < 2 {
		err = ErrInvalidMessageLine

		return key, val, err
	}
	key = parts[0]
	val = parts[1]

	return key, val, nil
}
