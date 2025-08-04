// Copyright (c) 2025 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package wsm

import (
	"fmt"
	"strings"

	baseWsm "github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/wsm"
)

const (
	TypeAcceptFriendsNotif             = "acceptFriendsNotif"
	TypeAcceptFriendsRequest           = "acceptFriendsRequest"
	TypeAcceptFriendsResponse          = "acceptFriendsResponse"
	TypeBlockPlayerNotif               = "blockPlayerNotif"
	TypeBlockPlayerRequest             = "blockPlayerRequest"
	TypeBlockPlayerResponse            = "blockPlayerResponse"
	TypeCancelFriendsNotif             = "cancelFriendsNotif"
	TypeCancelFriendsRequest           = "cancelFriendsRequest"
	TypeCancelFriendsResponse          = "cancelFriendsResponse"
	TypeCancelMatchmakingRequest       = "cancelMatchmakingRequest"
	TypeCancelMatchmakingResponse      = "cancelMatchmakingResponse"
	TypeChannelChatNotif               = "channelChatNotif"
	TypeClientResetRequest             = "clientResetRequest"
	TypeConnectNotif                   = "connectNotif"
	TypeDisconnectNotif                = "disconnectNotif"
	TypeDsNotif                        = "dsNotif"
	TypeErrorNotif                     = "errorNotif"
	TypeExitAllChannel                 = "exitAllChannel"
	TypeFriendsStatusRequest           = "friendsStatusRequest"
	TypeFriendsStatusResponse          = "friendsStatusResponse"
	TypeGetAllSessionAttributeRequest  = "getAllSessionAttributeRequest"
	TypeGetAllSessionAttributeResponse = "getAllSessionAttributeResponse"
	TypeGetFriendshipStatusRequest     = "getFriendshipStatusRequest"
	TypeGetFriendshipStatusResponse    = "getFriendshipStatusResponse"
	TypeGetSessionAttributeRequest     = "getSessionAttributeRequest"
	TypeGetSessionAttributeResponse    = "getSessionAttributeResponse"
	TypeHeartbeat                      = "heartbeat"
	TypeJoinDefaultChannelRequest      = "joinDefaultChannelRequest"
	TypeJoinDefaultChannelResponse     = "joinDefaultChannelResponse"
	TypeListIncomingFriendsRequest     = "listIncomingFriendsRequest"
	TypeListIncomingFriendsResponse    = "listIncomingFriendsResponse"
	TypeListOfFriendsRequest           = "listOfFriendsRequest"
	TypeListOfFriendsResponse          = "listOfFriendsResponse"
	TypeListOnlineFriendsRequest       = "listOnlineFriendsRequest"
	TypeListOutgoingFriendsRequest     = "listOutgoingFriendsRequest"
	TypeListOutgoingFriendsResponse    = "listOutgoingFriendsResponse"
	TypeMatchmakingNotif               = "matchmakingNotif"
	TypeMessageNotif                   = "messageNotif"
	TypeMessageSessionNotif            = "messageSessionNotif"
	TypeOfflineNotificationRequest     = "offlineNotificationRequest"
	TypeOfflineNotificationResponse    = "offlineNotificationResponse"
	TypeOnlineFriends                  = "onlineFriends"
	TypePartyChatNotif                 = "partyChatNotif"
	TypePartyChatRequest               = "partyChatRequest"
	TypePartyChatResponse              = "partyChatResponse"
	TypePartyCreateRequest             = "partyCreateRequest"
	TypePartyCreateResponse            = "partyCreateResponse"
	TypePartyDataUpdateNotif           = "partyDataUpdateNotif"
	TypePartyGetInvitedNotif           = "partyGetInvitedNotif"
	TypePartyInfoRequest               = "partyInfoRequest"
	TypePartyInfoResponse              = "partyInfoResponse"
	TypePartyInviteNotif               = "partyInviteNotif"
	TypePartyInviteRequest             = "partyInviteRequest"
	TypePartyInviteResponse            = "partyInviteResponse"
	TypePartyJoinNotif                 = "partyJoinNotif"
	TypePartyJoinRequest               = "partyJoinRequest"
	TypePartyJoinResponse              = "partyJoinResponse"
	TypePartyKickNotif                 = "partyKickNotif"
	TypePartyKickRequest               = "partyKickRequest"
	TypePartyKickResponse              = "partyKickResponse"
	TypePartyLeaveNotif                = "partyLeaveNotif"
	TypePartyLeaveRequest              = "partyLeaveRequest"
	TypePartyLeaveResponse             = "partyLeaveResponse"
	TypePartyPromoteLeaderRequest      = "partyPromoteLeaderRequest"
	TypePartyPromoteLeaderResponse     = "partyPromoteLeaderResponse"
	TypePartyRejectNotif               = "partyRejectNotif"
	TypePartyRejectRequest             = "partyRejectRequest"
	TypePartyRejectResponse            = "partyRejectResponse"
	TypePersonalChatHistoryRequest     = "personalChatHistoryRequest"
	TypePersonalChatHistoryResponse    = "personalChatHistoryResponse"
	TypePersonalChatNotif              = "personalChatNotif"
	TypePersonalChatRequest            = "personalChatRequest"
	TypePersonalChatResponse           = "personalChatResponse"
	TypeRefreshTokenRequest            = "refreshTokenRequest"
	TypeRefreshTokenResponse           = "refreshTokenResponse"
	TypeRejectFriendsNotif             = "rejectFriendsNotif"
	TypeRejectFriendsRequest           = "rejectFriendsRequest"
	TypeRejectFriendsResponse          = "rejectFriendsResponse"
	TypeRematchmakingNotif             = "rematchmakingNotif"
	TypeRequestFriendsNotif            = "requestFriendsNotif"
	TypeRequestFriendsRequest          = "requestFriendsRequest"
	TypeRequestFriendsResponse         = "requestFriendsResponse"
	TypeSendChannelChatRequest         = "sendChannelChatRequest"
	TypeSendChannelChatResponse        = "sendChannelChatResponse"
	TypeSetReadyConsentNotif           = "setReadyConsentNotif"
	TypeSetReadyConsentRequest         = "setReadyConsentRequest"
	TypeSetReadyConsentResponse        = "setReadyConsentResponse"
	TypeSetSessionAttributeRequest     = "setSessionAttributeRequest"
	TypeSetSessionAttributeResponse    = "setSessionAttributeResponse"
	TypeSetUserStatusRequest           = "setUserStatusRequest"
	TypeSetUserStatusResponse          = "setUserStatusResponse"
	TypeShutdownNotif                  = "shutdownNotif"
	TypeSignalingP2PNotif              = "signalingP2PNotif"
	TypeStartMatchmakingRequest        = "startMatchmakingRequest"
	TypeStartMatchmakingResponse       = "startMatchmakingResponse"
	TypeUnblockPlayerNotif             = "unblockPlayerNotif"
	TypeUnblockPlayerRequest           = "unblockPlayerRequest"
	TypeUnblockPlayerResponse          = "unblockPlayerResponse"
	TypeUnfriendNotif                  = "unfriendNotif"
	TypeUnfriendRequest                = "unfriendRequest"
	TypeUnfriendResponse               = "unfriendResponse"
	TypeUserBannedNotification         = "userBannedNotification"
	TypeUserMetricRequest              = "userMetricRequest"
	TypeUserMetricResponse             = "userMetricResponse"
	TypeUserStatusNotif                = "userStatusNotif"
)

// region AcceptFriendsNotif

type AcceptFriendsNotif struct {
	FriendID string `json:"friendId" required:"false"`
}

// Type implements the Message interface.
func (*AcceptFriendsNotif) Type() string {
	return TypeAcceptFriendsNotif
}

// String implements the Message interface.
func (m *AcceptFriendsNotif) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *AcceptFriendsNotif) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))

	if len(m.FriendID) > 0 {
		sb.WriteString(fmt.Sprintf("friendId: %s\n", m.FriendID))
	}

	return sb.String(), nil
}

func NewAcceptFriendsNotifFromMap(m map[string]interface{}) (*AcceptFriendsNotif, error) {
	message := &AcceptFriendsNotif{}

	tempFriendID, _, err := baseWsm.ExtractValue[string](m, "friendId")
	if err != nil {
		return nil, err
	}
	message.FriendID = tempFriendID

	return message, nil
}

// endregion AcceptFriendsNotif

// region AcceptFriendsRequest

type AcceptFriendsRequest struct {
	FriendID *string `json:"friendId" required:"true"`
	ID       *string `json:"id" required:"true"`
}

// Type implements the Message interface.
func (*AcceptFriendsRequest) Type() string {
	return TypeAcceptFriendsRequest
}

// String implements the Message interface.
func (m *AcceptFriendsRequest) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *AcceptFriendsRequest) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", *m.ID))

	sb.WriteString(fmt.Sprintf("friendId: %s\n", *m.FriendID))

	return sb.String(), nil
}

func NewAcceptFriendsRequestFromMap(m map[string]interface{}) (*AcceptFriendsRequest, error) {
	message := &AcceptFriendsRequest{}

	tempFriendID, foundFriendID, err := baseWsm.ExtractValue[string](m, "friendId")
	if err != nil {
		return nil, err
	}
	if !foundFriendID {
		return nil, baseWsm.NewMissingFieldError("FriendID", "*string", "friendId", "AcceptFriendsRequest")
	}
	message.FriendID = &tempFriendID

	tempID, foundID, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	if !foundID {
		return nil, baseWsm.NewMissingFieldError("ID", "*string", "id", "AcceptFriendsRequest")
	}
	message.ID = &tempID

	return message, nil
}

// endregion AcceptFriendsRequest

// region AcceptFriendsResponse

type AcceptFriendsResponse struct {
	Code int64  `json:"code" required:"false"`
	ID   string `json:"id" required:"false"`
}

// Type implements the Message interface.
func (*AcceptFriendsResponse) Type() string {
	return TypeAcceptFriendsResponse
}

// String implements the Message interface.
func (m *AcceptFriendsResponse) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *AcceptFriendsResponse) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", m.ID))

	sb.WriteString(fmt.Sprintf("code: %d\n", m.Code))

	return sb.String(), nil
}

func NewAcceptFriendsResponseFromMap(m map[string]interface{}) (*AcceptFriendsResponse, error) {
	message := &AcceptFriendsResponse{}

	tempCode, _, err := baseWsm.ExtractValue[int64](m, "code")
	if err != nil {
		return nil, err
	}
	message.Code = tempCode

	tempID, _, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	message.ID = tempID

	return message, nil
}

// endregion AcceptFriendsResponse

// region BlockPlayerNotif

type BlockPlayerNotif struct {
	BlockedUserID string `json:"blockedUserId" required:"false"`
	UserID        string `json:"userId" required:"false"`
}

// Type implements the Message interface.
func (*BlockPlayerNotif) Type() string {
	return TypeBlockPlayerNotif
}

// String implements the Message interface.
func (m *BlockPlayerNotif) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *BlockPlayerNotif) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))

	if len(m.BlockedUserID) > 0 {
		sb.WriteString(fmt.Sprintf("blockedUserId: %s\n", m.BlockedUserID))
	}

	if len(m.UserID) > 0 {
		sb.WriteString(fmt.Sprintf("userId: %s\n", m.UserID))
	}

	return sb.String(), nil
}

func NewBlockPlayerNotifFromMap(m map[string]interface{}) (*BlockPlayerNotif, error) {
	message := &BlockPlayerNotif{}

	tempBlockedUserID, _, err := baseWsm.ExtractValue[string](m, "blockedUserId")
	if err != nil {
		return nil, err
	}
	message.BlockedUserID = tempBlockedUserID

	tempUserID, _, err := baseWsm.ExtractValue[string](m, "userId")
	if err != nil {
		return nil, err
	}
	message.UserID = tempUserID

	return message, nil
}

// endregion BlockPlayerNotif

// region BlockPlayerRequest

type BlockPlayerRequest struct {
	BlockUserID *string `json:"blockUserId" required:"true"`
	ID          *string `json:"id" required:"true"`
	Namespace   *string `json:"namespace" required:"true"`
}

// Type implements the Message interface.
func (*BlockPlayerRequest) Type() string {
	return TypeBlockPlayerRequest
}

// String implements the Message interface.
func (m *BlockPlayerRequest) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *BlockPlayerRequest) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", *m.ID))

	sb.WriteString(fmt.Sprintf("blockUserId: %s\n", *m.BlockUserID))

	sb.WriteString(fmt.Sprintf("namespace: %s\n", *m.Namespace))

	return sb.String(), nil
}

func NewBlockPlayerRequestFromMap(m map[string]interface{}) (*BlockPlayerRequest, error) {
	message := &BlockPlayerRequest{}

	tempBlockUserID, foundBlockUserID, err := baseWsm.ExtractValue[string](m, "blockUserId")
	if err != nil {
		return nil, err
	}
	if !foundBlockUserID {
		return nil, baseWsm.NewMissingFieldError("BlockUserID", "*string", "blockUserId", "BlockPlayerRequest")
	}
	message.BlockUserID = &tempBlockUserID

	tempID, foundID, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	if !foundID {
		return nil, baseWsm.NewMissingFieldError("ID", "*string", "id", "BlockPlayerRequest")
	}
	message.ID = &tempID

	tempNamespace, foundNamespace, err := baseWsm.ExtractValue[string](m, "namespace")
	if err != nil {
		return nil, err
	}
	if !foundNamespace {
		return nil, baseWsm.NewMissingFieldError("Namespace", "*string", "namespace", "BlockPlayerRequest")
	}
	message.Namespace = &tempNamespace

	return message, nil
}

// endregion BlockPlayerRequest

// region BlockPlayerResponse

type BlockPlayerResponse struct {
	BlockUserID string `json:"blockUserId" required:"false"`
	Code        int64  `json:"code" required:"false"`
	ID          string `json:"id" required:"false"`
	Namespace   string `json:"namespace" required:"false"`
}

// Type implements the Message interface.
func (*BlockPlayerResponse) Type() string {
	return TypeBlockPlayerResponse
}

// String implements the Message interface.
func (m *BlockPlayerResponse) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *BlockPlayerResponse) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", m.ID))

	if len(m.BlockUserID) > 0 {
		sb.WriteString(fmt.Sprintf("blockUserId: %s\n", m.BlockUserID))
	}

	sb.WriteString(fmt.Sprintf("code: %d\n", m.Code))

	if len(m.Namespace) > 0 {
		sb.WriteString(fmt.Sprintf("namespace: %s\n", m.Namespace))
	}

	return sb.String(), nil
}

func NewBlockPlayerResponseFromMap(m map[string]interface{}) (*BlockPlayerResponse, error) {
	message := &BlockPlayerResponse{}

	tempBlockUserID, _, err := baseWsm.ExtractValue[string](m, "blockUserId")
	if err != nil {
		return nil, err
	}
	message.BlockUserID = tempBlockUserID

	tempCode, _, err := baseWsm.ExtractValue[int64](m, "code")
	if err != nil {
		return nil, err
	}
	message.Code = tempCode

	tempID, _, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	message.ID = tempID

	tempNamespace, _, err := baseWsm.ExtractValue[string](m, "namespace")
	if err != nil {
		return nil, err
	}
	message.Namespace = tempNamespace

	return message, nil
}

// endregion BlockPlayerResponse

// region CancelFriendsNotif

type CancelFriendsNotif struct {
	UserID string `json:"userId" required:"false"`
}

// Type implements the Message interface.
func (*CancelFriendsNotif) Type() string {
	return TypeCancelFriendsNotif
}

// String implements the Message interface.
func (m *CancelFriendsNotif) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *CancelFriendsNotif) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))

	if len(m.UserID) > 0 {
		sb.WriteString(fmt.Sprintf("userId: %s\n", m.UserID))
	}

	return sb.String(), nil
}

func NewCancelFriendsNotifFromMap(m map[string]interface{}) (*CancelFriendsNotif, error) {
	message := &CancelFriendsNotif{}

	tempUserID, _, err := baseWsm.ExtractValue[string](m, "userId")
	if err != nil {
		return nil, err
	}
	message.UserID = tempUserID

	return message, nil
}

// endregion CancelFriendsNotif

// region CancelFriendsRequest

type CancelFriendsRequest struct {
	FriendID *string `json:"friendId" required:"true"`
	ID       *string `json:"id" required:"true"`
}

// Type implements the Message interface.
func (*CancelFriendsRequest) Type() string {
	return TypeCancelFriendsRequest
}

// String implements the Message interface.
func (m *CancelFriendsRequest) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *CancelFriendsRequest) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", *m.ID))

	sb.WriteString(fmt.Sprintf("friendId: %s\n", *m.FriendID))

	return sb.String(), nil
}

func NewCancelFriendsRequestFromMap(m map[string]interface{}) (*CancelFriendsRequest, error) {
	message := &CancelFriendsRequest{}

	tempFriendID, foundFriendID, err := baseWsm.ExtractValue[string](m, "friendId")
	if err != nil {
		return nil, err
	}
	if !foundFriendID {
		return nil, baseWsm.NewMissingFieldError("FriendID", "*string", "friendId", "CancelFriendsRequest")
	}
	message.FriendID = &tempFriendID

	tempID, foundID, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	if !foundID {
		return nil, baseWsm.NewMissingFieldError("ID", "*string", "id", "CancelFriendsRequest")
	}
	message.ID = &tempID

	return message, nil
}

// endregion CancelFriendsRequest

// region CancelFriendsResponse

type CancelFriendsResponse struct {
	Code int64  `json:"code" required:"false"`
	ID   string `json:"id" required:"false"`
}

// Type implements the Message interface.
func (*CancelFriendsResponse) Type() string {
	return TypeCancelFriendsResponse
}

// String implements the Message interface.
func (m *CancelFriendsResponse) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *CancelFriendsResponse) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", m.ID))

	sb.WriteString(fmt.Sprintf("code: %d\n", m.Code))

	return sb.String(), nil
}

func NewCancelFriendsResponseFromMap(m map[string]interface{}) (*CancelFriendsResponse, error) {
	message := &CancelFriendsResponse{}

	tempCode, _, err := baseWsm.ExtractValue[int64](m, "code")
	if err != nil {
		return nil, err
	}
	message.Code = tempCode

	tempID, _, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	message.ID = tempID

	return message, nil
}

// endregion CancelFriendsResponse

// region CancelMatchmakingRequest

type CancelMatchmakingRequest struct {
	GameMode    *string `json:"gameMode" required:"true"`
	ID          *string `json:"id" required:"true"`
	IsTempParty *bool   `json:"isTempParty" required:"true"`
}

// Type implements the Message interface.
func (*CancelMatchmakingRequest) Type() string {
	return TypeCancelMatchmakingRequest
}

// String implements the Message interface.
func (m *CancelMatchmakingRequest) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *CancelMatchmakingRequest) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", *m.ID))

	sb.WriteString(fmt.Sprintf("gameMode: %s\n", *m.GameMode))

	sb.WriteString(fmt.Sprintf("isTempParty: %t\n", *m.IsTempParty))

	return sb.String(), nil
}

func NewCancelMatchmakingRequestFromMap(m map[string]interface{}) (*CancelMatchmakingRequest, error) {
	message := &CancelMatchmakingRequest{}

	tempGameMode, foundGameMode, err := baseWsm.ExtractValue[string](m, "gameMode")
	if err != nil {
		return nil, err
	}
	if !foundGameMode {
		return nil, baseWsm.NewMissingFieldError("GameMode", "*string", "gameMode", "CancelMatchmakingRequest")
	}
	message.GameMode = &tempGameMode

	tempID, foundID, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	if !foundID {
		return nil, baseWsm.NewMissingFieldError("ID", "*string", "id", "CancelMatchmakingRequest")
	}
	message.ID = &tempID

	tempIsTempParty, foundIsTempParty, err := baseWsm.ExtractValue[bool](m, "isTempParty")
	if err != nil {
		return nil, err
	}
	if !foundIsTempParty {
		return nil, baseWsm.NewMissingFieldError("IsTempParty", "*bool", "isTempParty", "CancelMatchmakingRequest")
	}
	message.IsTempParty = &tempIsTempParty

	return message, nil
}

// endregion CancelMatchmakingRequest

// region CancelMatchmakingResponse

type CancelMatchmakingResponse struct {
	Code int64  `json:"code" required:"false"`
	ID   string `json:"id" required:"false"`
}

// Type implements the Message interface.
func (*CancelMatchmakingResponse) Type() string {
	return TypeCancelMatchmakingResponse
}

// String implements the Message interface.
func (m *CancelMatchmakingResponse) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *CancelMatchmakingResponse) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", m.ID))

	sb.WriteString(fmt.Sprintf("code: %d\n", m.Code))

	return sb.String(), nil
}

func NewCancelMatchmakingResponseFromMap(m map[string]interface{}) (*CancelMatchmakingResponse, error) {
	message := &CancelMatchmakingResponse{}

	tempCode, _, err := baseWsm.ExtractValue[int64](m, "code")
	if err != nil {
		return nil, err
	}
	message.Code = tempCode

	tempID, _, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	message.ID = tempID

	return message, nil
}

// endregion CancelMatchmakingResponse

// region ChannelChatNotif

type ChannelChatNotif struct {
	ChannelSlug string `json:"channelSlug" required:"false"`
	From        string `json:"from" required:"false"`
	Payload     string `json:"payload" required:"false"`
	SentAt      string `json:"sentAt" required:"false"`
}

// Type implements the Message interface.
func (*ChannelChatNotif) Type() string {
	return TypeChannelChatNotif
}

// String implements the Message interface.
func (m *ChannelChatNotif) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *ChannelChatNotif) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))

	if len(m.ChannelSlug) > 0 {
		sb.WriteString(fmt.Sprintf("channelSlug: %s\n", m.ChannelSlug))
	}

	if len(m.From) > 0 {
		sb.WriteString(fmt.Sprintf("from: %s\n", m.From))
	}

	if len(m.Payload) > 0 {
		sb.WriteString(fmt.Sprintf("payload: %s\n", m.Payload))
	}

	if len(m.SentAt) > 0 {
		sb.WriteString(fmt.Sprintf("sentAt: %s\n", m.SentAt))
	}

	return sb.String(), nil
}

func NewChannelChatNotifFromMap(m map[string]interface{}) (*ChannelChatNotif, error) {
	message := &ChannelChatNotif{}

	tempChannelSlug, _, err := baseWsm.ExtractValue[string](m, "channelSlug")
	if err != nil {
		return nil, err
	}
	message.ChannelSlug = tempChannelSlug

	tempFrom, _, err := baseWsm.ExtractValue[string](m, "from")
	if err != nil {
		return nil, err
	}
	message.From = tempFrom

	tempPayload, _, err := baseWsm.ExtractValue[string](m, "payload")
	if err != nil {
		return nil, err
	}
	message.Payload = tempPayload

	tempSentAt, _, err := baseWsm.ExtractValue[string](m, "sentAt")
	if err != nil {
		return nil, err
	}
	message.SentAt = tempSentAt

	return message, nil
}

// endregion ChannelChatNotif

// region ClientResetRequest

type ClientResetRequest struct {
	Namespace *string `json:"namespace" required:"true"`
	UserID    *string `json:"userId" required:"true"`
}

// Type implements the Message interface.
func (*ClientResetRequest) Type() string {
	return TypeClientResetRequest
}

// String implements the Message interface.
func (m *ClientResetRequest) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *ClientResetRequest) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))

	sb.WriteString(fmt.Sprintf("namespace: %s\n", *m.Namespace))

	sb.WriteString(fmt.Sprintf("userId: %s\n", *m.UserID))

	return sb.String(), nil
}

func NewClientResetRequestFromMap(m map[string]interface{}) (*ClientResetRequest, error) {
	message := &ClientResetRequest{}

	tempNamespace, foundNamespace, err := baseWsm.ExtractValue[string](m, "namespace")
	if err != nil {
		return nil, err
	}
	if !foundNamespace {
		return nil, baseWsm.NewMissingFieldError("Namespace", "*string", "namespace", "ClientResetRequest")
	}
	message.Namespace = &tempNamespace

	tempUserID, foundUserID, err := baseWsm.ExtractValue[string](m, "userId")
	if err != nil {
		return nil, err
	}
	if !foundUserID {
		return nil, baseWsm.NewMissingFieldError("UserID", "*string", "userId", "ClientResetRequest")
	}
	message.UserID = &tempUserID

	return message, nil
}

// endregion ClientResetRequest

// region ConnectNotif

type ConnectNotif struct {
	LobbySessionID string `json:"lobbySessionID" required:"false"`
}

// Type implements the Message interface.
func (*ConnectNotif) Type() string {
	return TypeConnectNotif
}

// String implements the Message interface.
func (m *ConnectNotif) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *ConnectNotif) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))

	if len(m.LobbySessionID) > 0 {
		sb.WriteString(fmt.Sprintf("lobbySessionID: %s\n", m.LobbySessionID))
	}

	return sb.String(), nil
}

func NewConnectNotifFromMap(m map[string]interface{}) (*ConnectNotif, error) {
	message := &ConnectNotif{}

	tempLobbySessionID, _, err := baseWsm.ExtractValue[string](m, "lobbySessionID")
	if err != nil {
		return nil, err
	}
	message.LobbySessionID = tempLobbySessionID

	return message, nil
}

// endregion ConnectNotif

// region DisconnectNotif

type DisconnectNotif struct {
	ConnectionID string `json:"connectionId" required:"false"`
	Namespace    string `json:"namespace" required:"false"`
}

// Type implements the Message interface.
func (*DisconnectNotif) Type() string {
	return TypeDisconnectNotif
}

// String implements the Message interface.
func (m *DisconnectNotif) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *DisconnectNotif) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))

	if len(m.ConnectionID) > 0 {
		sb.WriteString(fmt.Sprintf("connectionId: %s\n", m.ConnectionID))
	}

	if len(m.Namespace) > 0 {
		sb.WriteString(fmt.Sprintf("namespace: %s\n", m.Namespace))
	}

	return sb.String(), nil
}

func NewDisconnectNotifFromMap(m map[string]interface{}) (*DisconnectNotif, error) {
	message := &DisconnectNotif{}

	tempConnectionID, _, err := baseWsm.ExtractValue[string](m, "connectionId")
	if err != nil {
		return nil, err
	}
	message.ConnectionID = tempConnectionID

	tempNamespace, _, err := baseWsm.ExtractValue[string](m, "namespace")
	if err != nil {
		return nil, err
	}
	message.Namespace = tempNamespace

	return message, nil
}

// endregion DisconnectNotif

// region DsNotif

type DsNotif struct {
	AlternateIps          []string         `json:"alternateIps" required:"false"`
	CustomAttribute       string           `json:"customAttribute" required:"false"`
	Deployment            string           `json:"deployment" required:"false"`
	GameVersion           string           `json:"gameVersion" required:"false"`
	ImageVersion          string           `json:"imageVersion" required:"false"`
	IP                    string           `json:"ip" required:"false"`
	IsOK                  bool             `json:"isOK" required:"false"`
	IsOverrideGameVersion bool             `json:"isOverrideGameVersion" required:"false"`
	LastUpdate            string           `json:"lastUpdate" required:"false"`
	MatchID               string           `json:"matchId" required:"false"`
	Message               string           `json:"message" required:"false"`
	Namespace             string           `json:"namespace" required:"false"`
	PodName               string           `json:"podName" required:"false"`
	Port                  int64            `json:"port" required:"false"`
	Ports                 map[string]int64 `json:"ports" required:"false"`
	Protocol              string           `json:"protocol" required:"false"`
	Provider              string           `json:"provider" required:"false"`
	Region                string           `json:"region" required:"false"`
	SessionID             string           `json:"sessionId" required:"false"`
	Status                string           `json:"status" required:"false"`
}

// Type implements the Message interface.
func (*DsNotif) Type() string {
	return TypeDsNotif
}

// String implements the Message interface.
func (m *DsNotif) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *DsNotif) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))

	if len(m.AlternateIps) > 0 {
		sb.WriteString(fmt.Sprintf("alternateIps: %s\n", baseWsm.ConvertSliceToString(m.AlternateIps)))
	}

	if len(m.CustomAttribute) > 0 {
		sb.WriteString(fmt.Sprintf("customAttribute: %s\n", m.CustomAttribute))
	}

	if len(m.Deployment) > 0 {
		sb.WriteString(fmt.Sprintf("deployment: %s\n", m.Deployment))
	}

	if len(m.GameVersion) > 0 {
		sb.WriteString(fmt.Sprintf("gameVersion: %s\n", m.GameVersion))
	}

	if len(m.ImageVersion) > 0 {
		sb.WriteString(fmt.Sprintf("imageVersion: %s\n", m.ImageVersion))
	}

	if len(m.IP) > 0 {
		sb.WriteString(fmt.Sprintf("ip: %s\n", m.IP))
	}

	sb.WriteString(fmt.Sprintf("isOK: %t\n", m.IsOK))

	sb.WriteString(fmt.Sprintf("isOverrideGameVersion: %t\n", m.IsOverrideGameVersion))

	if len(m.LastUpdate) > 0 {
		sb.WriteString(fmt.Sprintf("lastUpdate: %s\n", m.LastUpdate))
	}

	if len(m.MatchID) > 0 {
		sb.WriteString(fmt.Sprintf("matchId: %s\n", m.MatchID))
	}

	if len(m.Message) > 0 {
		sb.WriteString(fmt.Sprintf("message: %s\n", m.Message))
	}

	if len(m.Namespace) > 0 {
		sb.WriteString(fmt.Sprintf("namespace: %s\n", m.Namespace))
	}

	if len(m.PodName) > 0 {
		sb.WriteString(fmt.Sprintf("podName: %s\n", m.PodName))
	}

	sb.WriteString(fmt.Sprintf("port: %d\n", m.Port))

	if len(m.Ports) > 0 {
		tempPorts, err := baseWsm.ConvertMapToString(m.Ports)
		if err != nil {
			return "", err
		}
		sb.WriteString(fmt.Sprintf("ports: %s\n", tempPorts))
	}

	if len(m.Protocol) > 0 {
		sb.WriteString(fmt.Sprintf("protocol: %s\n", m.Protocol))
	}

	if len(m.Provider) > 0 {
		sb.WriteString(fmt.Sprintf("provider: %s\n", m.Provider))
	}

	if len(m.Region) > 0 {
		sb.WriteString(fmt.Sprintf("region: %s\n", m.Region))
	}

	if len(m.SessionID) > 0 {
		sb.WriteString(fmt.Sprintf("sessionId: %s\n", m.SessionID))
	}

	if len(m.Status) > 0 {
		sb.WriteString(fmt.Sprintf("status: %s\n", m.Status))
	}

	return sb.String(), nil
}

func NewDsNotifFromMap(m map[string]interface{}) (*DsNotif, error) {
	message := &DsNotif{}

	tempAlternateIps, _, err := baseWsm.ExtractStringSlice(m, "alternateIps", true)
	if err != nil {
		return nil, err
	}
	message.AlternateIps = tempAlternateIps

	tempCustomAttribute, _, err := baseWsm.ExtractValue[string](m, "customAttribute")
	if err != nil {
		return nil, err
	}
	message.CustomAttribute = tempCustomAttribute

	tempDeployment, _, err := baseWsm.ExtractValue[string](m, "deployment")
	if err != nil {
		return nil, err
	}
	message.Deployment = tempDeployment

	tempGameVersion, _, err := baseWsm.ExtractValue[string](m, "gameVersion")
	if err != nil {
		return nil, err
	}
	message.GameVersion = tempGameVersion

	tempImageVersion, _, err := baseWsm.ExtractValue[string](m, "imageVersion")
	if err != nil {
		return nil, err
	}
	message.ImageVersion = tempImageVersion

	tempIP, _, err := baseWsm.ExtractValue[string](m, "ip")
	if err != nil {
		return nil, err
	}
	message.IP = tempIP

	tempIsOK, _, err := baseWsm.ExtractValue[bool](m, "isOK")
	if err != nil {
		return nil, err
	}
	message.IsOK = tempIsOK

	tempIsOverrideGameVersion, _, err := baseWsm.ExtractValue[bool](m, "isOverrideGameVersion")
	if err != nil {
		return nil, err
	}
	message.IsOverrideGameVersion = tempIsOverrideGameVersion

	tempLastUpdate, _, err := baseWsm.ExtractValue[string](m, "lastUpdate")
	if err != nil {
		return nil, err
	}
	message.LastUpdate = tempLastUpdate

	tempMatchID, _, err := baseWsm.ExtractValue[string](m, "matchId")
	if err != nil {
		return nil, err
	}
	message.MatchID = tempMatchID

	tempMessage, _, err := baseWsm.ExtractValue[string](m, "message")
	if err != nil {
		return nil, err
	}
	message.Message = tempMessage

	tempNamespace, _, err := baseWsm.ExtractValue[string](m, "namespace")
	if err != nil {
		return nil, err
	}
	message.Namespace = tempNamespace

	tempPodName, _, err := baseWsm.ExtractValue[string](m, "podName")
	if err != nil {
		return nil, err
	}
	message.PodName = tempPodName

	tempPort, _, err := baseWsm.ExtractValue[int64](m, "port")
	if err != nil {
		return nil, err
	}
	message.Port = tempPort

	tempPorts, _, err := baseWsm.ExtractInt64Map(m, "ports", true)
	if err != nil {
		return nil, err
	}
	message.Ports = tempPorts

	tempProtocol, _, err := baseWsm.ExtractValue[string](m, "protocol")
	if err != nil {
		return nil, err
	}
	message.Protocol = tempProtocol

	tempProvider, _, err := baseWsm.ExtractValue[string](m, "provider")
	if err != nil {
		return nil, err
	}
	message.Provider = tempProvider

	tempRegion, _, err := baseWsm.ExtractValue[string](m, "region")
	if err != nil {
		return nil, err
	}
	message.Region = tempRegion

	tempSessionID, _, err := baseWsm.ExtractValue[string](m, "sessionId")
	if err != nil {
		return nil, err
	}
	message.SessionID = tempSessionID

	tempStatus, _, err := baseWsm.ExtractValue[string](m, "status")
	if err != nil {
		return nil, err
	}
	message.Status = tempStatus

	return message, nil
}

// endregion DsNotif

// region ErrorNotif

type ErrorNotif struct {
	Message string `json:"message" required:"false"`
}

// Type implements the Message interface.
func (*ErrorNotif) Type() string {
	return TypeErrorNotif
}

// String implements the Message interface.
func (m *ErrorNotif) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *ErrorNotif) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))

	if len(m.Message) > 0 {
		sb.WriteString(fmt.Sprintf("message: %s\n", m.Message))
	}

	return sb.String(), nil
}

func NewErrorNotifFromMap(m map[string]interface{}) (*ErrorNotif, error) {
	message := &ErrorNotif{}

	tempMessage, _, err := baseWsm.ExtractValue[string](m, "message")
	if err != nil {
		return nil, err
	}
	message.Message = tempMessage

	return message, nil
}

// endregion ErrorNotif

// region ExitAllChannel

type ExitAllChannel struct {
	Namespace string `json:"namespace" required:"false"`
	UserID    string `json:"userId" required:"false"`
}

// Type implements the Message interface.
func (*ExitAllChannel) Type() string {
	return TypeExitAllChannel
}

// String implements the Message interface.
func (m *ExitAllChannel) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *ExitAllChannel) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))

	if len(m.Namespace) > 0 {
		sb.WriteString(fmt.Sprintf("namespace: %s\n", m.Namespace))
	}

	if len(m.UserID) > 0 {
		sb.WriteString(fmt.Sprintf("userId: %s\n", m.UserID))
	}

	return sb.String(), nil
}

func NewExitAllChannelFromMap(m map[string]interface{}) (*ExitAllChannel, error) {
	message := &ExitAllChannel{}

	tempNamespace, _, err := baseWsm.ExtractValue[string](m, "namespace")
	if err != nil {
		return nil, err
	}
	message.Namespace = tempNamespace

	tempUserID, _, err := baseWsm.ExtractValue[string](m, "userId")
	if err != nil {
		return nil, err
	}
	message.UserID = tempUserID

	return message, nil
}

// endregion ExitAllChannel

// region FriendsStatusRequest

type FriendsStatusRequest struct {
	ID *string `json:"id" required:"true"`
}

// Type implements the Message interface.
func (*FriendsStatusRequest) Type() string {
	return TypeFriendsStatusRequest
}

// String implements the Message interface.
func (m *FriendsStatusRequest) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *FriendsStatusRequest) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", *m.ID))

	return sb.String(), nil
}

func NewFriendsStatusRequestFromMap(m map[string]interface{}) (*FriendsStatusRequest, error) {
	message := &FriendsStatusRequest{}

	tempID, foundID, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	if !foundID {
		return nil, baseWsm.NewMissingFieldError("ID", "*string", "id", "FriendsStatusRequest")
	}
	message.ID = &tempID

	return message, nil
}

// endregion FriendsStatusRequest

// region FriendsStatusResponse

type FriendsStatusResponse struct {
	Activity     []string `json:"activity" required:"false"`
	Availability []string `json:"availability" required:"false"`
	Code         int64    `json:"code" required:"false"`
	FriendIds    []string `json:"friendIds" required:"false"`
	ID           string   `json:"id" required:"false"`
	LastSeenAt   []string `json:"lastSeenAt" required:"false"`
}

// Type implements the Message interface.
func (*FriendsStatusResponse) Type() string {
	return TypeFriendsStatusResponse
}

// String implements the Message interface.
func (m *FriendsStatusResponse) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *FriendsStatusResponse) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", m.ID))

	if len(m.Activity) > 0 {
		sb.WriteString(fmt.Sprintf("activity: %s\n", baseWsm.ConvertSliceToString(m.Activity)))
	}

	if len(m.Availability) > 0 {
		sb.WriteString(fmt.Sprintf("availability: %s\n", baseWsm.ConvertSliceToString(m.Availability)))
	}

	sb.WriteString(fmt.Sprintf("code: %d\n", m.Code))

	if len(m.FriendIds) > 0 {
		sb.WriteString(fmt.Sprintf("friendIds: %s\n", baseWsm.ConvertSliceToString(m.FriendIds)))
	}

	if len(m.LastSeenAt) > 0 {
		sb.WriteString(fmt.Sprintf("lastSeenAt: %s\n", baseWsm.ConvertSliceToString(m.LastSeenAt)))
	}

	return sb.String(), nil
}

func NewFriendsStatusResponseFromMap(m map[string]interface{}) (*FriendsStatusResponse, error) {
	message := &FriendsStatusResponse{}

	tempActivity, _, err := baseWsm.ExtractStringSlice(m, "activity", true)
	if err != nil {
		return nil, err
	}
	message.Activity = tempActivity

	tempAvailability, _, err := baseWsm.ExtractStringSlice(m, "availability", true)
	if err != nil {
		return nil, err
	}
	message.Availability = tempAvailability

	tempCode, _, err := baseWsm.ExtractValue[int64](m, "code")
	if err != nil {
		return nil, err
	}
	message.Code = tempCode

	tempFriendIds, _, err := baseWsm.ExtractStringSlice(m, "friendIds", true)
	if err != nil {
		return nil, err
	}
	message.FriendIds = tempFriendIds

	tempID, _, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	message.ID = tempID

	tempLastSeenAt, _, err := baseWsm.ExtractStringSlice(m, "lastSeenAt", true)
	if err != nil {
		return nil, err
	}
	message.LastSeenAt = tempLastSeenAt

	return message, nil
}

// endregion FriendsStatusResponse

// region GetAllSessionAttributeRequest

type GetAllSessionAttributeRequest struct {
	ID *string `json:"id" required:"true"`
}

// Type implements the Message interface.
func (*GetAllSessionAttributeRequest) Type() string {
	return TypeGetAllSessionAttributeRequest
}

// String implements the Message interface.
func (m *GetAllSessionAttributeRequest) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *GetAllSessionAttributeRequest) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", *m.ID))

	return sb.String(), nil
}

func NewGetAllSessionAttributeRequestFromMap(m map[string]interface{}) (*GetAllSessionAttributeRequest, error) {
	message := &GetAllSessionAttributeRequest{}

	tempID, foundID, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	if !foundID {
		return nil, baseWsm.NewMissingFieldError("ID", "*string", "id", "GetAllSessionAttributeRequest")
	}
	message.ID = &tempID

	return message, nil
}

// endregion GetAllSessionAttributeRequest

// region GetAllSessionAttributeResponse

type GetAllSessionAttributeResponse struct {
	Attributes map[string]string `json:"attributes" required:"false"`
	Code       int64             `json:"code" required:"false"`
	ID         string            `json:"id" required:"false"`
}

// Type implements the Message interface.
func (*GetAllSessionAttributeResponse) Type() string {
	return TypeGetAllSessionAttributeResponse
}

// String implements the Message interface.
func (m *GetAllSessionAttributeResponse) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *GetAllSessionAttributeResponse) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", m.ID))

	if len(m.Attributes) > 0 {
		tempAttributes, err := baseWsm.ConvertMapToString(m.Attributes)
		if err != nil {
			return "", err
		}
		sb.WriteString(fmt.Sprintf("attributes: %s\n", tempAttributes))
	}

	sb.WriteString(fmt.Sprintf("code: %d\n", m.Code))

	return sb.String(), nil
}

func NewGetAllSessionAttributeResponseFromMap(m map[string]interface{}) (*GetAllSessionAttributeResponse, error) {
	message := &GetAllSessionAttributeResponse{}

	tempAttributes, _, err := baseWsm.ExtractStringMap(m, "attributes", true)
	if err != nil {
		return nil, err
	}
	message.Attributes = tempAttributes

	tempCode, _, err := baseWsm.ExtractValue[int64](m, "code")
	if err != nil {
		return nil, err
	}
	message.Code = tempCode

	tempID, _, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	message.ID = tempID

	return message, nil
}

// endregion GetAllSessionAttributeResponse

// region GetFriendshipStatusRequest

type GetFriendshipStatusRequest struct {
	FriendID *string `json:"friendId" required:"true"`
	ID       *string `json:"id" required:"true"`
}

// Type implements the Message interface.
func (*GetFriendshipStatusRequest) Type() string {
	return TypeGetFriendshipStatusRequest
}

// String implements the Message interface.
func (m *GetFriendshipStatusRequest) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *GetFriendshipStatusRequest) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", *m.ID))

	sb.WriteString(fmt.Sprintf("friendId: %s\n", *m.FriendID))

	return sb.String(), nil
}

func NewGetFriendshipStatusRequestFromMap(m map[string]interface{}) (*GetFriendshipStatusRequest, error) {
	message := &GetFriendshipStatusRequest{}

	tempFriendID, foundFriendID, err := baseWsm.ExtractValue[string](m, "friendId")
	if err != nil {
		return nil, err
	}
	if !foundFriendID {
		return nil, baseWsm.NewMissingFieldError("FriendID", "*string", "friendId", "GetFriendshipStatusRequest")
	}
	message.FriendID = &tempFriendID

	tempID, foundID, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	if !foundID {
		return nil, baseWsm.NewMissingFieldError("ID", "*string", "id", "GetFriendshipStatusRequest")
	}
	message.ID = &tempID

	return message, nil
}

// endregion GetFriendshipStatusRequest

// region GetFriendshipStatusResponse

type GetFriendshipStatusResponse struct {
	Code             int64  `json:"code" required:"false"`
	FriendshipStatus string `json:"friendshipStatus" required:"false"`
	ID               string `json:"id" required:"false"`
}

// Type implements the Message interface.
func (*GetFriendshipStatusResponse) Type() string {
	return TypeGetFriendshipStatusResponse
}

// String implements the Message interface.
func (m *GetFriendshipStatusResponse) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *GetFriendshipStatusResponse) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", m.ID))

	sb.WriteString(fmt.Sprintf("code: %d\n", m.Code))

	if len(m.FriendshipStatus) > 0 {
		sb.WriteString(fmt.Sprintf("friendshipStatus: %s\n", m.FriendshipStatus))
	}

	return sb.String(), nil
}

func NewGetFriendshipStatusResponseFromMap(m map[string]interface{}) (*GetFriendshipStatusResponse, error) {
	message := &GetFriendshipStatusResponse{}

	tempCode, _, err := baseWsm.ExtractValue[int64](m, "code")
	if err != nil {
		return nil, err
	}
	message.Code = tempCode

	tempFriendshipStatus, _, err := baseWsm.ExtractValue[string](m, "friendshipStatus")
	if err != nil {
		return nil, err
	}
	message.FriendshipStatus = tempFriendshipStatus

	tempID, _, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	message.ID = tempID

	return message, nil
}

// endregion GetFriendshipStatusResponse

// region GetSessionAttributeRequest

type GetSessionAttributeRequest struct {
	ID  *string `json:"id" required:"true"`
	Key *string `json:"key" required:"true"`
}

// Type implements the Message interface.
func (*GetSessionAttributeRequest) Type() string {
	return TypeGetSessionAttributeRequest
}

// String implements the Message interface.
func (m *GetSessionAttributeRequest) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *GetSessionAttributeRequest) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", *m.ID))

	sb.WriteString(fmt.Sprintf("key: %s\n", *m.Key))

	return sb.String(), nil
}

func NewGetSessionAttributeRequestFromMap(m map[string]interface{}) (*GetSessionAttributeRequest, error) {
	message := &GetSessionAttributeRequest{}

	tempID, foundID, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	if !foundID {
		return nil, baseWsm.NewMissingFieldError("ID", "*string", "id", "GetSessionAttributeRequest")
	}
	message.ID = &tempID

	tempKey, foundKey, err := baseWsm.ExtractValue[string](m, "key")
	if err != nil {
		return nil, err
	}
	if !foundKey {
		return nil, baseWsm.NewMissingFieldError("Key", "*string", "key", "GetSessionAttributeRequest")
	}
	message.Key = &tempKey

	return message, nil
}

// endregion GetSessionAttributeRequest

// region GetSessionAttributeResponse

type GetSessionAttributeResponse struct {
	Code  int64  `json:"code" required:"false"`
	ID    string `json:"id" required:"false"`
	Value string `json:"value" required:"false"`
}

// Type implements the Message interface.
func (*GetSessionAttributeResponse) Type() string {
	return TypeGetSessionAttributeResponse
}

// String implements the Message interface.
func (m *GetSessionAttributeResponse) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *GetSessionAttributeResponse) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", m.ID))

	sb.WriteString(fmt.Sprintf("code: %d\n", m.Code))

	if len(m.Value) > 0 {
		sb.WriteString(fmt.Sprintf("value: %s\n", m.Value))
	}

	return sb.String(), nil
}

func NewGetSessionAttributeResponseFromMap(m map[string]interface{}) (*GetSessionAttributeResponse, error) {
	message := &GetSessionAttributeResponse{}

	tempCode, _, err := baseWsm.ExtractValue[int64](m, "code")
	if err != nil {
		return nil, err
	}
	message.Code = tempCode

	tempID, _, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	message.ID = tempID

	tempValue, _, err := baseWsm.ExtractValue[string](m, "value")
	if err != nil {
		return nil, err
	}
	message.Value = tempValue

	return message, nil
}

// endregion GetSessionAttributeResponse

// region Heartbeat

type Heartbeat struct {
}

// Type implements the Message interface.
func (*Heartbeat) Type() string {
	return TypeHeartbeat
}

// String implements the Message interface.
func (m *Heartbeat) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *Heartbeat) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))

	return sb.String(), nil
}

func NewHeartbeatFromMap(m map[string]interface{}) (*Heartbeat, error) {
	message := &Heartbeat{}

	return message, nil
}

// endregion Heartbeat

// region JoinDefaultChannelRequest

type JoinDefaultChannelRequest struct {
	ID *string `json:"id" required:"true"`
}

// Type implements the Message interface.
func (*JoinDefaultChannelRequest) Type() string {
	return TypeJoinDefaultChannelRequest
}

// String implements the Message interface.
func (m *JoinDefaultChannelRequest) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *JoinDefaultChannelRequest) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", *m.ID))

	return sb.String(), nil
}

func NewJoinDefaultChannelRequestFromMap(m map[string]interface{}) (*JoinDefaultChannelRequest, error) {
	message := &JoinDefaultChannelRequest{}

	tempID, foundID, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	if !foundID {
		return nil, baseWsm.NewMissingFieldError("ID", "*string", "id", "JoinDefaultChannelRequest")
	}
	message.ID = &tempID

	return message, nil
}

// endregion JoinDefaultChannelRequest

// region JoinDefaultChannelResponse

type JoinDefaultChannelResponse struct {
	ChannelSlug string `json:"channelSlug" required:"false"`
	Code        int64  `json:"code" required:"false"`
	ID          string `json:"id" required:"false"`
}

// Type implements the Message interface.
func (*JoinDefaultChannelResponse) Type() string {
	return TypeJoinDefaultChannelResponse
}

// String implements the Message interface.
func (m *JoinDefaultChannelResponse) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *JoinDefaultChannelResponse) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", m.ID))

	if len(m.ChannelSlug) > 0 {
		sb.WriteString(fmt.Sprintf("channelSlug: %s\n", m.ChannelSlug))
	}

	sb.WriteString(fmt.Sprintf("code: %d\n", m.Code))

	return sb.String(), nil
}

func NewJoinDefaultChannelResponseFromMap(m map[string]interface{}) (*JoinDefaultChannelResponse, error) {
	message := &JoinDefaultChannelResponse{}

	tempChannelSlug, _, err := baseWsm.ExtractValue[string](m, "channelSlug")
	if err != nil {
		return nil, err
	}
	message.ChannelSlug = tempChannelSlug

	tempCode, _, err := baseWsm.ExtractValue[int64](m, "code")
	if err != nil {
		return nil, err
	}
	message.Code = tempCode

	tempID, _, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	message.ID = tempID

	return message, nil
}

// endregion JoinDefaultChannelResponse

// region ListIncomingFriendsRequest

type ListIncomingFriendsRequest struct {
	ID *string `json:"id" required:"true"`
}

// Type implements the Message interface.
func (*ListIncomingFriendsRequest) Type() string {
	return TypeListIncomingFriendsRequest
}

// String implements the Message interface.
func (m *ListIncomingFriendsRequest) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *ListIncomingFriendsRequest) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", *m.ID))

	return sb.String(), nil
}

func NewListIncomingFriendsRequestFromMap(m map[string]interface{}) (*ListIncomingFriendsRequest, error) {
	message := &ListIncomingFriendsRequest{}

	tempID, foundID, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	if !foundID {
		return nil, baseWsm.NewMissingFieldError("ID", "*string", "id", "ListIncomingFriendsRequest")
	}
	message.ID = &tempID

	return message, nil
}

// endregion ListIncomingFriendsRequest

// region ListIncomingFriendsResponse

type ListIncomingFriendsResponse struct {
	Code    int64    `json:"code" required:"false"`
	ID      string   `json:"id" required:"false"`
	UserIds []string `json:"userIds" required:"false"`
}

// Type implements the Message interface.
func (*ListIncomingFriendsResponse) Type() string {
	return TypeListIncomingFriendsResponse
}

// String implements the Message interface.
func (m *ListIncomingFriendsResponse) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *ListIncomingFriendsResponse) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", m.ID))

	sb.WriteString(fmt.Sprintf("code: %d\n", m.Code))

	if len(m.UserIds) > 0 {
		sb.WriteString(fmt.Sprintf("userIds: %s\n", baseWsm.ConvertSliceToString(m.UserIds)))
	}

	return sb.String(), nil
}

func NewListIncomingFriendsResponseFromMap(m map[string]interface{}) (*ListIncomingFriendsResponse, error) {
	message := &ListIncomingFriendsResponse{}

	tempCode, _, err := baseWsm.ExtractValue[int64](m, "code")
	if err != nil {
		return nil, err
	}
	message.Code = tempCode

	tempID, _, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	message.ID = tempID

	tempUserIds, _, err := baseWsm.ExtractStringSlice(m, "userIds", true)
	if err != nil {
		return nil, err
	}
	message.UserIds = tempUserIds

	return message, nil
}

// endregion ListIncomingFriendsResponse

// region ListOfFriendsRequest

type ListOfFriendsRequest struct {
	FriendID *string `json:"friendId" required:"true"`
	ID       *string `json:"id" required:"true"`
}

// Type implements the Message interface.
func (*ListOfFriendsRequest) Type() string {
	return TypeListOfFriendsRequest
}

// String implements the Message interface.
func (m *ListOfFriendsRequest) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *ListOfFriendsRequest) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", *m.ID))

	sb.WriteString(fmt.Sprintf("friendId: %s\n", *m.FriendID))

	return sb.String(), nil
}

func NewListOfFriendsRequestFromMap(m map[string]interface{}) (*ListOfFriendsRequest, error) {
	message := &ListOfFriendsRequest{}

	tempFriendID, foundFriendID, err := baseWsm.ExtractValue[string](m, "friendId")
	if err != nil {
		return nil, err
	}
	if !foundFriendID {
		return nil, baseWsm.NewMissingFieldError("FriendID", "*string", "friendId", "ListOfFriendsRequest")
	}
	message.FriendID = &tempFriendID

	tempID, foundID, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	if !foundID {
		return nil, baseWsm.NewMissingFieldError("ID", "*string", "id", "ListOfFriendsRequest")
	}
	message.ID = &tempID

	return message, nil
}

// endregion ListOfFriendsRequest

// region ListOfFriendsResponse

type ListOfFriendsResponse struct {
	Code      int64    `json:"code" required:"false"`
	FriendIds []string `json:"friendIds" required:"false"`
	ID        string   `json:"id" required:"false"`
}

// Type implements the Message interface.
func (*ListOfFriendsResponse) Type() string {
	return TypeListOfFriendsResponse
}

// String implements the Message interface.
func (m *ListOfFriendsResponse) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *ListOfFriendsResponse) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", m.ID))

	sb.WriteString(fmt.Sprintf("code: %d\n", m.Code))

	if len(m.FriendIds) > 0 {
		sb.WriteString(fmt.Sprintf("friendIds: %s\n", baseWsm.ConvertSliceToString(m.FriendIds)))
	}

	return sb.String(), nil
}

func NewListOfFriendsResponseFromMap(m map[string]interface{}) (*ListOfFriendsResponse, error) {
	message := &ListOfFriendsResponse{}

	tempCode, _, err := baseWsm.ExtractValue[int64](m, "code")
	if err != nil {
		return nil, err
	}
	message.Code = tempCode

	tempFriendIds, _, err := baseWsm.ExtractStringSlice(m, "friendIds", true)
	if err != nil {
		return nil, err
	}
	message.FriendIds = tempFriendIds

	tempID, _, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	message.ID = tempID

	return message, nil
}

// endregion ListOfFriendsResponse

// region ListOnlineFriendsRequest

type ListOnlineFriendsRequest struct {
	ID *string `json:"id" required:"true"`
}

// Type implements the Message interface.
func (*ListOnlineFriendsRequest) Type() string {
	return TypeListOnlineFriendsRequest
}

// String implements the Message interface.
func (m *ListOnlineFriendsRequest) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *ListOnlineFriendsRequest) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", *m.ID))

	return sb.String(), nil
}

func NewListOnlineFriendsRequestFromMap(m map[string]interface{}) (*ListOnlineFriendsRequest, error) {
	message := &ListOnlineFriendsRequest{}

	tempID, foundID, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	if !foundID {
		return nil, baseWsm.NewMissingFieldError("ID", "*string", "id", "ListOnlineFriendsRequest")
	}
	message.ID = &tempID

	return message, nil
}

// endregion ListOnlineFriendsRequest

// region ListOutgoingFriendsRequest

type ListOutgoingFriendsRequest struct {
	ID *string `json:"id" required:"true"`
}

// Type implements the Message interface.
func (*ListOutgoingFriendsRequest) Type() string {
	return TypeListOutgoingFriendsRequest
}

// String implements the Message interface.
func (m *ListOutgoingFriendsRequest) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *ListOutgoingFriendsRequest) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", *m.ID))

	return sb.String(), nil
}

func NewListOutgoingFriendsRequestFromMap(m map[string]interface{}) (*ListOutgoingFriendsRequest, error) {
	message := &ListOutgoingFriendsRequest{}

	tempID, foundID, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	if !foundID {
		return nil, baseWsm.NewMissingFieldError("ID", "*string", "id", "ListOutgoingFriendsRequest")
	}
	message.ID = &tempID

	return message, nil
}

// endregion ListOutgoingFriendsRequest

// region ListOutgoingFriendsResponse

type ListOutgoingFriendsResponse struct {
	Code      int64    `json:"code" required:"false"`
	FriendIds []string `json:"friendIds" required:"false"`
	ID        string   `json:"id" required:"false"`
}

// Type implements the Message interface.
func (*ListOutgoingFriendsResponse) Type() string {
	return TypeListOutgoingFriendsResponse
}

// String implements the Message interface.
func (m *ListOutgoingFriendsResponse) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *ListOutgoingFriendsResponse) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", m.ID))

	sb.WriteString(fmt.Sprintf("code: %d\n", m.Code))

	if len(m.FriendIds) > 0 {
		sb.WriteString(fmt.Sprintf("friendIds: %s\n", baseWsm.ConvertSliceToString(m.FriendIds)))
	}

	return sb.String(), nil
}

func NewListOutgoingFriendsResponseFromMap(m map[string]interface{}) (*ListOutgoingFriendsResponse, error) {
	message := &ListOutgoingFriendsResponse{}

	tempCode, _, err := baseWsm.ExtractValue[int64](m, "code")
	if err != nil {
		return nil, err
	}
	message.Code = tempCode

	tempFriendIds, _, err := baseWsm.ExtractStringSlice(m, "friendIds", true)
	if err != nil {
		return nil, err
	}
	message.FriendIds = tempFriendIds

	tempID, _, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	message.ID = tempID

	return message, nil
}

// endregion ListOutgoingFriendsResponse

// region MatchmakingNotif

type MatchmakingNotif struct {
	CounterPartyMember []string `json:"counterPartyMember" required:"false"`
	MatchID            string   `json:"matchId" required:"false"`
	Message            string   `json:"message" required:"false"`
	PartyMember        []string `json:"partyMember" required:"false"`
	ReadyDuration      int64    `json:"readyDuration" required:"false"`
	Status             string   `json:"status" required:"false"`
}

// Type implements the Message interface.
func (*MatchmakingNotif) Type() string {
	return TypeMatchmakingNotif
}

// String implements the Message interface.
func (m *MatchmakingNotif) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *MatchmakingNotif) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))

	if len(m.CounterPartyMember) > 0 {
		sb.WriteString(fmt.Sprintf("counterPartyMember: %s\n", baseWsm.ConvertSliceToString(m.CounterPartyMember)))
	}

	if len(m.MatchID) > 0 {
		sb.WriteString(fmt.Sprintf("matchId: %s\n", m.MatchID))
	}

	if len(m.Message) > 0 {
		sb.WriteString(fmt.Sprintf("message: %s\n", m.Message))
	}

	if len(m.PartyMember) > 0 {
		sb.WriteString(fmt.Sprintf("partyMember: %s\n", baseWsm.ConvertSliceToString(m.PartyMember)))
	}

	sb.WriteString(fmt.Sprintf("readyDuration: %d\n", m.ReadyDuration))

	if len(m.Status) > 0 {
		sb.WriteString(fmt.Sprintf("status: %s\n", m.Status))
	}

	return sb.String(), nil
}

func NewMatchmakingNotifFromMap(m map[string]interface{}) (*MatchmakingNotif, error) {
	message := &MatchmakingNotif{}

	tempCounterPartyMember, _, err := baseWsm.ExtractStringSlice(m, "counterPartyMember", true)
	if err != nil {
		return nil, err
	}
	message.CounterPartyMember = tempCounterPartyMember

	tempMatchID, _, err := baseWsm.ExtractValue[string](m, "matchId")
	if err != nil {
		return nil, err
	}
	message.MatchID = tempMatchID

	tempMessage, _, err := baseWsm.ExtractValue[string](m, "message")
	if err != nil {
		return nil, err
	}
	message.Message = tempMessage

	tempPartyMember, _, err := baseWsm.ExtractStringSlice(m, "partyMember", true)
	if err != nil {
		return nil, err
	}
	message.PartyMember = tempPartyMember

	tempReadyDuration, _, err := baseWsm.ExtractValue[int64](m, "readyDuration")
	if err != nil {
		return nil, err
	}
	message.ReadyDuration = tempReadyDuration

	tempStatus, _, err := baseWsm.ExtractValue[string](m, "status")
	if err != nil {
		return nil, err
	}
	message.Status = tempStatus

	return message, nil
}

// endregion MatchmakingNotif

// region MessageNotif

type MessageNotif struct {
	From    string `json:"from" required:"false"`
	ID      string `json:"id" required:"false"`
	Payload string `json:"payload" required:"false"`
	SentAt  string `json:"sentAt" required:"false"`
	To      string `json:"to" required:"false"`
	Topic   string `json:"topic" required:"false"`
}

// Type implements the Message interface.
func (*MessageNotif) Type() string {
	return TypeMessageNotif
}

// String implements the Message interface.
func (m *MessageNotif) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *MessageNotif) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", m.ID))

	if len(m.From) > 0 {
		sb.WriteString(fmt.Sprintf("from: %s\n", m.From))
	}

	if len(m.Payload) > 0 {
		sb.WriteString(fmt.Sprintf("payload: %s\n", m.Payload))
	}

	if len(m.SentAt) > 0 {
		sb.WriteString(fmt.Sprintf("sentAt: %s\n", m.SentAt))
	}

	if len(m.To) > 0 {
		sb.WriteString(fmt.Sprintf("to: %s\n", m.To))
	}

	if len(m.Topic) > 0 {
		sb.WriteString(fmt.Sprintf("topic: %s\n", m.Topic))
	}

	return sb.String(), nil
}

func NewMessageNotifFromMap(m map[string]interface{}) (*MessageNotif, error) {
	message := &MessageNotif{}

	tempFrom, _, err := baseWsm.ExtractValue[string](m, "from")
	if err != nil {
		return nil, err
	}
	message.From = tempFrom

	tempID, _, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	message.ID = tempID

	tempPayload, _, err := baseWsm.ExtractValue[string](m, "payload")
	if err != nil {
		return nil, err
	}
	message.Payload = tempPayload

	tempSentAt, _, err := baseWsm.ExtractValue[string](m, "sentAt")
	if err != nil {
		return nil, err
	}
	message.SentAt = tempSentAt

	tempTo, _, err := baseWsm.ExtractValue[string](m, "to")
	if err != nil {
		return nil, err
	}
	message.To = tempTo

	tempTopic, _, err := baseWsm.ExtractValue[string](m, "topic")
	if err != nil {
		return nil, err
	}
	message.Topic = tempTopic

	return message, nil
}

// endregion MessageNotif

// region MessageSessionNotif

type MessageSessionNotif struct {
	From    string `json:"from" required:"false"`
	ID      string `json:"id" required:"false"`
	Payload string `json:"payload" required:"false"`
	SentAt  string `json:"sentAt" required:"false"`
	To      string `json:"to" required:"false"`
	Topic   string `json:"topic" required:"false"`
}

// Type implements the Message interface.
func (*MessageSessionNotif) Type() string {
	return TypeMessageSessionNotif
}

// String implements the Message interface.
func (m *MessageSessionNotif) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *MessageSessionNotif) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", m.ID))

	if len(m.From) > 0 {
		sb.WriteString(fmt.Sprintf("from: %s\n", m.From))
	}

	if len(m.Payload) > 0 {
		sb.WriteString(fmt.Sprintf("payload: %s\n", m.Payload))
	}

	if len(m.SentAt) > 0 {
		sb.WriteString(fmt.Sprintf("sentAt: %s\n", m.SentAt))
	}

	if len(m.To) > 0 {
		sb.WriteString(fmt.Sprintf("to: %s\n", m.To))
	}

	if len(m.Topic) > 0 {
		sb.WriteString(fmt.Sprintf("topic: %s\n", m.Topic))
	}

	return sb.String(), nil
}

func NewMessageSessionNotifFromMap(m map[string]interface{}) (*MessageSessionNotif, error) {
	message := &MessageSessionNotif{}

	tempFrom, _, err := baseWsm.ExtractValue[string](m, "from")
	if err != nil {
		return nil, err
	}
	message.From = tempFrom

	tempID, _, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	message.ID = tempID

	tempPayload, _, err := baseWsm.ExtractValue[string](m, "payload")
	if err != nil {
		return nil, err
	}
	message.Payload = tempPayload

	tempSentAt, _, err := baseWsm.ExtractValue[string](m, "sentAt")
	if err != nil {
		return nil, err
	}
	message.SentAt = tempSentAt

	tempTo, _, err := baseWsm.ExtractValue[string](m, "to")
	if err != nil {
		return nil, err
	}
	message.To = tempTo

	tempTopic, _, err := baseWsm.ExtractValue[string](m, "topic")
	if err != nil {
		return nil, err
	}
	message.Topic = tempTopic

	return message, nil
}

// endregion MessageSessionNotif

// region OfflineNotificationRequest

type OfflineNotificationRequest struct {
	ID *string `json:"id" required:"true"`
}

// Type implements the Message interface.
func (*OfflineNotificationRequest) Type() string {
	return TypeOfflineNotificationRequest
}

// String implements the Message interface.
func (m *OfflineNotificationRequest) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *OfflineNotificationRequest) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", *m.ID))

	return sb.String(), nil
}

func NewOfflineNotificationRequestFromMap(m map[string]interface{}) (*OfflineNotificationRequest, error) {
	message := &OfflineNotificationRequest{}

	tempID, foundID, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	if !foundID {
		return nil, baseWsm.NewMissingFieldError("ID", "*string", "id", "OfflineNotificationRequest")
	}
	message.ID = &tempID

	return message, nil
}

// endregion OfflineNotificationRequest

// region OfflineNotificationResponse

type OfflineNotificationResponse struct {
	Code int64  `json:"code" required:"false"`
	ID   string `json:"id" required:"false"`
}

// Type implements the Message interface.
func (*OfflineNotificationResponse) Type() string {
	return TypeOfflineNotificationResponse
}

// String implements the Message interface.
func (m *OfflineNotificationResponse) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *OfflineNotificationResponse) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", m.ID))

	sb.WriteString(fmt.Sprintf("code: %d\n", m.Code))

	return sb.String(), nil
}

func NewOfflineNotificationResponseFromMap(m map[string]interface{}) (*OfflineNotificationResponse, error) {
	message := &OfflineNotificationResponse{}

	tempCode, _, err := baseWsm.ExtractValue[int64](m, "code")
	if err != nil {
		return nil, err
	}
	message.Code = tempCode

	tempID, _, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	message.ID = tempID

	return message, nil
}

// endregion OfflineNotificationResponse

// region OnlineFriends

type OnlineFriends struct {
	Code            int64    `json:"code" required:"false"`
	ID              string   `json:"id" required:"false"`
	OnlineFriendIds []string `json:"onlineFriendIds" required:"false"`
}

// Type implements the Message interface.
func (*OnlineFriends) Type() string {
	return TypeOnlineFriends
}

// String implements the Message interface.
func (m *OnlineFriends) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *OnlineFriends) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", m.ID))

	sb.WriteString(fmt.Sprintf("code: %d\n", m.Code))

	if len(m.OnlineFriendIds) > 0 {
		sb.WriteString(fmt.Sprintf("onlineFriendIds: %s\n", baseWsm.ConvertSliceToString(m.OnlineFriendIds)))
	}

	return sb.String(), nil
}

func NewOnlineFriendsFromMap(m map[string]interface{}) (*OnlineFriends, error) {
	message := &OnlineFriends{}

	tempCode, _, err := baseWsm.ExtractValue[int64](m, "code")
	if err != nil {
		return nil, err
	}
	message.Code = tempCode

	tempID, _, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	message.ID = tempID

	tempOnlineFriendIds, _, err := baseWsm.ExtractStringSlice(m, "onlineFriendIds", true)
	if err != nil {
		return nil, err
	}
	message.OnlineFriendIds = tempOnlineFriendIds

	return message, nil
}

// endregion OnlineFriends

// region PartyChatNotif

type PartyChatNotif struct {
	From       string `json:"from" required:"false"`
	ID         string `json:"id" required:"false"`
	Payload    string `json:"payload" required:"false"`
	ReceivedAt string `json:"receivedAt" required:"false"`
	To         string `json:"to" required:"false"`
}

// Type implements the Message interface.
func (*PartyChatNotif) Type() string {
	return TypePartyChatNotif
}

// String implements the Message interface.
func (m *PartyChatNotif) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *PartyChatNotif) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", m.ID))

	if len(m.From) > 0 {
		sb.WriteString(fmt.Sprintf("from: %s\n", m.From))
	}

	if len(m.Payload) > 0 {
		sb.WriteString(fmt.Sprintf("payload: %s\n", m.Payload))
	}

	if len(m.ReceivedAt) > 0 {
		sb.WriteString(fmt.Sprintf("receivedAt: %s\n", m.ReceivedAt))
	}

	if len(m.To) > 0 {
		sb.WriteString(fmt.Sprintf("to: %s\n", m.To))
	}

	return sb.String(), nil
}

func NewPartyChatNotifFromMap(m map[string]interface{}) (*PartyChatNotif, error) {
	message := &PartyChatNotif{}

	tempFrom, _, err := baseWsm.ExtractValue[string](m, "from")
	if err != nil {
		return nil, err
	}
	message.From = tempFrom

	tempID, _, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	message.ID = tempID

	tempPayload, _, err := baseWsm.ExtractValue[string](m, "payload")
	if err != nil {
		return nil, err
	}
	message.Payload = tempPayload

	tempReceivedAt, _, err := baseWsm.ExtractValue[string](m, "receivedAt")
	if err != nil {
		return nil, err
	}
	message.ReceivedAt = tempReceivedAt

	tempTo, _, err := baseWsm.ExtractValue[string](m, "to")
	if err != nil {
		return nil, err
	}
	message.To = tempTo

	return message, nil
}

// endregion PartyChatNotif

// region PartyChatRequest

type PartyChatRequest struct {
	From       *string `json:"from" required:"true"`
	ID         *string `json:"id" required:"true"`
	Payload    *string `json:"payload" required:"true"`
	ReceivedAt *string `json:"receivedAt" required:"true"`
	To         *string `json:"to" required:"true"`
}

// Type implements the Message interface.
func (*PartyChatRequest) Type() string {
	return TypePartyChatRequest
}

// String implements the Message interface.
func (m *PartyChatRequest) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *PartyChatRequest) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", *m.ID))

	sb.WriteString(fmt.Sprintf("from: %s\n", *m.From))

	sb.WriteString(fmt.Sprintf("payload: %s\n", *m.Payload))

	sb.WriteString(fmt.Sprintf("receivedAt: %s\n", *m.ReceivedAt))

	sb.WriteString(fmt.Sprintf("to: %s\n", *m.To))

	return sb.String(), nil
}

func NewPartyChatRequestFromMap(m map[string]interface{}) (*PartyChatRequest, error) {
	message := &PartyChatRequest{}

	tempFrom, foundFrom, err := baseWsm.ExtractValue[string](m, "from")
	if err != nil {
		return nil, err
	}
	if !foundFrom {
		return nil, baseWsm.NewMissingFieldError("From", "*string", "from", "PartyChatRequest")
	}
	message.From = &tempFrom

	tempID, foundID, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	if !foundID {
		return nil, baseWsm.NewMissingFieldError("ID", "*string", "id", "PartyChatRequest")
	}
	message.ID = &tempID

	tempPayload, foundPayload, err := baseWsm.ExtractValue[string](m, "payload")
	if err != nil {
		return nil, err
	}
	if !foundPayload {
		return nil, baseWsm.NewMissingFieldError("Payload", "*string", "payload", "PartyChatRequest")
	}
	message.Payload = &tempPayload

	tempReceivedAt, foundReceivedAt, err := baseWsm.ExtractValue[string](m, "receivedAt")
	if err != nil {
		return nil, err
	}
	if !foundReceivedAt {
		return nil, baseWsm.NewMissingFieldError("ReceivedAt", "*string", "receivedAt", "PartyChatRequest")
	}
	message.ReceivedAt = &tempReceivedAt

	tempTo, foundTo, err := baseWsm.ExtractValue[string](m, "to")
	if err != nil {
		return nil, err
	}
	if !foundTo {
		return nil, baseWsm.NewMissingFieldError("To", "*string", "to", "PartyChatRequest")
	}
	message.To = &tempTo

	return message, nil
}

// endregion PartyChatRequest

// region PartyChatResponse

type PartyChatResponse struct {
	Code int64  `json:"code" required:"false"`
	ID   string `json:"id" required:"false"`
}

// Type implements the Message interface.
func (*PartyChatResponse) Type() string {
	return TypePartyChatResponse
}

// String implements the Message interface.
func (m *PartyChatResponse) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *PartyChatResponse) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", m.ID))

	sb.WriteString(fmt.Sprintf("code: %d\n", m.Code))

	return sb.String(), nil
}

func NewPartyChatResponseFromMap(m map[string]interface{}) (*PartyChatResponse, error) {
	message := &PartyChatResponse{}

	tempCode, _, err := baseWsm.ExtractValue[int64](m, "code")
	if err != nil {
		return nil, err
	}
	message.Code = tempCode

	tempID, _, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	message.ID = tempID

	return message, nil
}

// endregion PartyChatResponse

// region PartyCreateRequest

type PartyCreateRequest struct {
	ID *string `json:"id" required:"true"`
}

// Type implements the Message interface.
func (*PartyCreateRequest) Type() string {
	return TypePartyCreateRequest
}

// String implements the Message interface.
func (m *PartyCreateRequest) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *PartyCreateRequest) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", *m.ID))

	return sb.String(), nil
}

func NewPartyCreateRequestFromMap(m map[string]interface{}) (*PartyCreateRequest, error) {
	message := &PartyCreateRequest{}

	tempID, foundID, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	if !foundID {
		return nil, baseWsm.NewMissingFieldError("ID", "*string", "id", "PartyCreateRequest")
	}
	message.ID = &tempID

	return message, nil
}

// endregion PartyCreateRequest

// region PartyCreateResponse

type PartyCreateResponse struct {
	Code            int64  `json:"code" required:"false"`
	ID              string `json:"id" required:"false"`
	InvitationToken string `json:"invitationToken" required:"false"`
	Invitees        string `json:"invitees" required:"false"`
	LeaderID        string `json:"leaderId" required:"false"`
	Members         string `json:"members" required:"false"`
	PartyID         string `json:"partyId" required:"false"`
}

// Type implements the Message interface.
func (*PartyCreateResponse) Type() string {
	return TypePartyCreateResponse
}

// String implements the Message interface.
func (m *PartyCreateResponse) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *PartyCreateResponse) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", m.ID))

	sb.WriteString(fmt.Sprintf("code: %d\n", m.Code))

	if len(m.InvitationToken) > 0 {
		sb.WriteString(fmt.Sprintf("invitationToken: %s\n", m.InvitationToken))
	}

	if len(m.Invitees) > 0 {
		sb.WriteString(fmt.Sprintf("invitees: %s\n", m.Invitees))
	}

	if len(m.LeaderID) > 0 {
		sb.WriteString(fmt.Sprintf("leaderId: %s\n", m.LeaderID))
	}

	if len(m.Members) > 0 {
		sb.WriteString(fmt.Sprintf("members: %s\n", m.Members))
	}

	if len(m.PartyID) > 0 {
		sb.WriteString(fmt.Sprintf("partyId: %s\n", m.PartyID))
	}

	return sb.String(), nil
}

func NewPartyCreateResponseFromMap(m map[string]interface{}) (*PartyCreateResponse, error) {
	message := &PartyCreateResponse{}

	tempCode, _, err := baseWsm.ExtractValue[int64](m, "code")
	if err != nil {
		return nil, err
	}
	message.Code = tempCode

	tempID, _, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	message.ID = tempID

	tempInvitationToken, _, err := baseWsm.ExtractValue[string](m, "invitationToken")
	if err != nil {
		return nil, err
	}
	message.InvitationToken = tempInvitationToken

	tempInvitees, _, err := baseWsm.ExtractValue[string](m, "invitees")
	if err != nil {
		return nil, err
	}
	message.Invitees = tempInvitees

	tempLeaderID, _, err := baseWsm.ExtractValue[string](m, "leaderId")
	if err != nil {
		return nil, err
	}
	message.LeaderID = tempLeaderID

	tempMembers, _, err := baseWsm.ExtractValue[string](m, "members")
	if err != nil {
		return nil, err
	}
	message.Members = tempMembers

	tempPartyID, _, err := baseWsm.ExtractValue[string](m, "partyId")
	if err != nil {
		return nil, err
	}
	message.PartyID = tempPartyID

	return message, nil
}

// endregion PartyCreateResponse

// region PartyDataUpdateNotif

type PartyDataUpdateNotif struct {
	CustomAttributes map[string]interface{} `json:"customAttributes" required:"false"`
	Invitees         []string               `json:"invitees" required:"false"`
	Leader           string                 `json:"leader" required:"false"`
	Members          []string               `json:"members" required:"false"`
	Namespace        string                 `json:"namespace" required:"false"`
	PartyID          string                 `json:"partyId" required:"false"`
	UpdatedAt        string                 `json:"updatedAt" required:"false"`
}

// Type implements the Message interface.
func (*PartyDataUpdateNotif) Type() string {
	return TypePartyDataUpdateNotif
}

// String implements the Message interface.
func (m *PartyDataUpdateNotif) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *PartyDataUpdateNotif) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))

	if len(m.CustomAttributes) > 0 {
		tempCustomAttributes, err := baseWsm.ConvertMapToString(m.CustomAttributes)
		if err != nil {
			return "", err
		}
		sb.WriteString(fmt.Sprintf("customAttributes: %s\n", tempCustomAttributes))
	}

	if len(m.Invitees) > 0 {
		sb.WriteString(fmt.Sprintf("invitees: %s\n", baseWsm.ConvertSliceToString(m.Invitees)))
	}

	if len(m.Leader) > 0 {
		sb.WriteString(fmt.Sprintf("leader: %s\n", m.Leader))
	}

	if len(m.Members) > 0 {
		sb.WriteString(fmt.Sprintf("members: %s\n", baseWsm.ConvertSliceToString(m.Members)))
	}

	if len(m.Namespace) > 0 {
		sb.WriteString(fmt.Sprintf("namespace: %s\n", m.Namespace))
	}

	if len(m.PartyID) > 0 {
		sb.WriteString(fmt.Sprintf("partyId: %s\n", m.PartyID))
	}

	if len(m.UpdatedAt) > 0 {
		sb.WriteString(fmt.Sprintf("updatedAt: %s\n", m.UpdatedAt))
	}

	return sb.String(), nil
}

func NewPartyDataUpdateNotifFromMap(m map[string]interface{}) (*PartyDataUpdateNotif, error) {
	message := &PartyDataUpdateNotif{}

	tempCustomAttributes, _, err := baseWsm.ExtractAnyMap(m, "customAttributes", true)
	if err != nil {
		return nil, err
	}
	message.CustomAttributes = tempCustomAttributes

	tempInvitees, _, err := baseWsm.ExtractStringSlice(m, "invitees", true)
	if err != nil {
		return nil, err
	}
	message.Invitees = tempInvitees

	tempLeader, _, err := baseWsm.ExtractValue[string](m, "leader")
	if err != nil {
		return nil, err
	}
	message.Leader = tempLeader

	tempMembers, _, err := baseWsm.ExtractStringSlice(m, "members", true)
	if err != nil {
		return nil, err
	}
	message.Members = tempMembers

	tempNamespace, _, err := baseWsm.ExtractValue[string](m, "namespace")
	if err != nil {
		return nil, err
	}
	message.Namespace = tempNamespace

	tempPartyID, _, err := baseWsm.ExtractValue[string](m, "partyId")
	if err != nil {
		return nil, err
	}
	message.PartyID = tempPartyID

	tempUpdatedAt, _, err := baseWsm.ExtractValue[string](m, "updatedAt")
	if err != nil {
		return nil, err
	}
	message.UpdatedAt = tempUpdatedAt

	return message, nil
}

// endregion PartyDataUpdateNotif

// region PartyGetInvitedNotif

type PartyGetInvitedNotif struct {
	From            string `json:"from" required:"false"`
	InvitationToken string `json:"invitationToken" required:"false"`
	PartyID         string `json:"partyId" required:"false"`
}

// Type implements the Message interface.
func (*PartyGetInvitedNotif) Type() string {
	return TypePartyGetInvitedNotif
}

// String implements the Message interface.
func (m *PartyGetInvitedNotif) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *PartyGetInvitedNotif) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))

	if len(m.From) > 0 {
		sb.WriteString(fmt.Sprintf("from: %s\n", m.From))
	}

	if len(m.InvitationToken) > 0 {
		sb.WriteString(fmt.Sprintf("invitationToken: %s\n", m.InvitationToken))
	}

	if len(m.PartyID) > 0 {
		sb.WriteString(fmt.Sprintf("partyId: %s\n", m.PartyID))
	}

	return sb.String(), nil
}

func NewPartyGetInvitedNotifFromMap(m map[string]interface{}) (*PartyGetInvitedNotif, error) {
	message := &PartyGetInvitedNotif{}

	tempFrom, _, err := baseWsm.ExtractValue[string](m, "from")
	if err != nil {
		return nil, err
	}
	message.From = tempFrom

	tempInvitationToken, _, err := baseWsm.ExtractValue[string](m, "invitationToken")
	if err != nil {
		return nil, err
	}
	message.InvitationToken = tempInvitationToken

	tempPartyID, _, err := baseWsm.ExtractValue[string](m, "partyId")
	if err != nil {
		return nil, err
	}
	message.PartyID = tempPartyID

	return message, nil
}

// endregion PartyGetInvitedNotif

// region PartyInfoRequest

type PartyInfoRequest struct {
	ID *string `json:"id" required:"true"`
}

// Type implements the Message interface.
func (*PartyInfoRequest) Type() string {
	return TypePartyInfoRequest
}

// String implements the Message interface.
func (m *PartyInfoRequest) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *PartyInfoRequest) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", *m.ID))

	return sb.String(), nil
}

func NewPartyInfoRequestFromMap(m map[string]interface{}) (*PartyInfoRequest, error) {
	message := &PartyInfoRequest{}

	tempID, foundID, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	if !foundID {
		return nil, baseWsm.NewMissingFieldError("ID", "*string", "id", "PartyInfoRequest")
	}
	message.ID = &tempID

	return message, nil
}

// endregion PartyInfoRequest

// region PartyInfoResponse

type PartyInfoResponse struct {
	Code             int64                  `json:"code" required:"false"`
	CustomAttributes map[string]interface{} `json:"customAttributes" required:"false"`
	ID               string                 `json:"id" required:"false"`
	InvitationToken  string                 `json:"invitationToken" required:"false"`
	Invitees         string                 `json:"invitees" required:"false"`
	LeaderID         string                 `json:"leaderId" required:"false"`
	Members          string                 `json:"members" required:"false"`
	PartyID          string                 `json:"partyId" required:"false"`
}

// Type implements the Message interface.
func (*PartyInfoResponse) Type() string {
	return TypePartyInfoResponse
}

// String implements the Message interface.
func (m *PartyInfoResponse) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *PartyInfoResponse) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", m.ID))

	sb.WriteString(fmt.Sprintf("code: %d\n", m.Code))

	if len(m.CustomAttributes) > 0 {
		tempCustomAttributes, err := baseWsm.ConvertMapToString(m.CustomAttributes)
		if err != nil {
			return "", err
		}
		sb.WriteString(fmt.Sprintf("customAttributes: %s\n", tempCustomAttributes))
	}

	if len(m.InvitationToken) > 0 {
		sb.WriteString(fmt.Sprintf("invitationToken: %s\n", m.InvitationToken))
	}

	if len(m.Invitees) > 0 {
		sb.WriteString(fmt.Sprintf("invitees: %s\n", m.Invitees))
	}

	if len(m.LeaderID) > 0 {
		sb.WriteString(fmt.Sprintf("leaderId: %s\n", m.LeaderID))
	}

	if len(m.Members) > 0 {
		sb.WriteString(fmt.Sprintf("members: %s\n", m.Members))
	}

	if len(m.PartyID) > 0 {
		sb.WriteString(fmt.Sprintf("partyId: %s\n", m.PartyID))
	}

	return sb.String(), nil
}

func NewPartyInfoResponseFromMap(m map[string]interface{}) (*PartyInfoResponse, error) {
	message := &PartyInfoResponse{}

	tempCode, _, err := baseWsm.ExtractValue[int64](m, "code")
	if err != nil {
		return nil, err
	}
	message.Code = tempCode

	tempCustomAttributes, _, err := baseWsm.ExtractAnyMap(m, "customAttributes", true)
	if err != nil {
		return nil, err
	}
	message.CustomAttributes = tempCustomAttributes

	tempID, _, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	message.ID = tempID

	tempInvitationToken, _, err := baseWsm.ExtractValue[string](m, "invitationToken")
	if err != nil {
		return nil, err
	}
	message.InvitationToken = tempInvitationToken

	tempInvitees, _, err := baseWsm.ExtractValue[string](m, "invitees")
	if err != nil {
		return nil, err
	}
	message.Invitees = tempInvitees

	tempLeaderID, _, err := baseWsm.ExtractValue[string](m, "leaderId")
	if err != nil {
		return nil, err
	}
	message.LeaderID = tempLeaderID

	tempMembers, _, err := baseWsm.ExtractValue[string](m, "members")
	if err != nil {
		return nil, err
	}
	message.Members = tempMembers

	tempPartyID, _, err := baseWsm.ExtractValue[string](m, "partyId")
	if err != nil {
		return nil, err
	}
	message.PartyID = tempPartyID

	return message, nil
}

// endregion PartyInfoResponse

// region PartyInviteNotif

type PartyInviteNotif struct {
	InviteeID string `json:"inviteeId" required:"false"`
	InviterID string `json:"inviterId" required:"false"`
}

// Type implements the Message interface.
func (*PartyInviteNotif) Type() string {
	return TypePartyInviteNotif
}

// String implements the Message interface.
func (m *PartyInviteNotif) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *PartyInviteNotif) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))

	if len(m.InviteeID) > 0 {
		sb.WriteString(fmt.Sprintf("inviteeId: %s\n", m.InviteeID))
	}

	if len(m.InviterID) > 0 {
		sb.WriteString(fmt.Sprintf("inviterId: %s\n", m.InviterID))
	}

	return sb.String(), nil
}

func NewPartyInviteNotifFromMap(m map[string]interface{}) (*PartyInviteNotif, error) {
	message := &PartyInviteNotif{}

	tempInviteeID, _, err := baseWsm.ExtractValue[string](m, "inviteeId")
	if err != nil {
		return nil, err
	}
	message.InviteeID = tempInviteeID

	tempInviterID, _, err := baseWsm.ExtractValue[string](m, "inviterId")
	if err != nil {
		return nil, err
	}
	message.InviterID = tempInviterID

	return message, nil
}

// endregion PartyInviteNotif

// region PartyInviteRequest

type PartyInviteRequest struct {
	FriendID *string `json:"friendId" required:"true"`
	ID       *string `json:"id" required:"true"`
}

// Type implements the Message interface.
func (*PartyInviteRequest) Type() string {
	return TypePartyInviteRequest
}

// String implements the Message interface.
func (m *PartyInviteRequest) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *PartyInviteRequest) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", *m.ID))

	sb.WriteString(fmt.Sprintf("friendId: %s\n", *m.FriendID))

	return sb.String(), nil
}

func NewPartyInviteRequestFromMap(m map[string]interface{}) (*PartyInviteRequest, error) {
	message := &PartyInviteRequest{}

	tempFriendID, foundFriendID, err := baseWsm.ExtractValue[string](m, "friendId")
	if err != nil {
		return nil, err
	}
	if !foundFriendID {
		return nil, baseWsm.NewMissingFieldError("FriendID", "*string", "friendId", "PartyInviteRequest")
	}
	message.FriendID = &tempFriendID

	tempID, foundID, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	if !foundID {
		return nil, baseWsm.NewMissingFieldError("ID", "*string", "id", "PartyInviteRequest")
	}
	message.ID = &tempID

	return message, nil
}

// endregion PartyInviteRequest

// region PartyInviteResponse

type PartyInviteResponse struct {
	Code int64  `json:"code" required:"false"`
	ID   string `json:"id" required:"false"`
}

// Type implements the Message interface.
func (*PartyInviteResponse) Type() string {
	return TypePartyInviteResponse
}

// String implements the Message interface.
func (m *PartyInviteResponse) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *PartyInviteResponse) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", m.ID))

	sb.WriteString(fmt.Sprintf("code: %d\n", m.Code))

	return sb.String(), nil
}

func NewPartyInviteResponseFromMap(m map[string]interface{}) (*PartyInviteResponse, error) {
	message := &PartyInviteResponse{}

	tempCode, _, err := baseWsm.ExtractValue[int64](m, "code")
	if err != nil {
		return nil, err
	}
	message.Code = tempCode

	tempID, _, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	message.ID = tempID

	return message, nil
}

// endregion PartyInviteResponse

// region PartyJoinNotif

type PartyJoinNotif struct {
	UserID string `json:"userId" required:"false"`
}

// Type implements the Message interface.
func (*PartyJoinNotif) Type() string {
	return TypePartyJoinNotif
}

// String implements the Message interface.
func (m *PartyJoinNotif) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *PartyJoinNotif) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))

	if len(m.UserID) > 0 {
		sb.WriteString(fmt.Sprintf("userId: %s\n", m.UserID))
	}

	return sb.String(), nil
}

func NewPartyJoinNotifFromMap(m map[string]interface{}) (*PartyJoinNotif, error) {
	message := &PartyJoinNotif{}

	tempUserID, _, err := baseWsm.ExtractValue[string](m, "userId")
	if err != nil {
		return nil, err
	}
	message.UserID = tempUserID

	return message, nil
}

// endregion PartyJoinNotif

// region PartyJoinRequest

type PartyJoinRequest struct {
	ID              *string `json:"id" required:"true"`
	InvitationToken *string `json:"invitationToken" required:"true"`
	PartyID         *string `json:"partyId" required:"true"`
}

// Type implements the Message interface.
func (*PartyJoinRequest) Type() string {
	return TypePartyJoinRequest
}

// String implements the Message interface.
func (m *PartyJoinRequest) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *PartyJoinRequest) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", *m.ID))

	sb.WriteString(fmt.Sprintf("invitationToken: %s\n", *m.InvitationToken))

	sb.WriteString(fmt.Sprintf("partyId: %s\n", *m.PartyID))

	return sb.String(), nil
}

func NewPartyJoinRequestFromMap(m map[string]interface{}) (*PartyJoinRequest, error) {
	message := &PartyJoinRequest{}

	tempID, foundID, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	if !foundID {
		return nil, baseWsm.NewMissingFieldError("ID", "*string", "id", "PartyJoinRequest")
	}
	message.ID = &tempID

	tempInvitationToken, foundInvitationToken, err := baseWsm.ExtractValue[string](m, "invitationToken")
	if err != nil {
		return nil, err
	}
	if !foundInvitationToken {
		return nil, baseWsm.NewMissingFieldError("InvitationToken", "*string", "invitationToken", "PartyJoinRequest")
	}
	message.InvitationToken = &tempInvitationToken

	tempPartyID, foundPartyID, err := baseWsm.ExtractValue[string](m, "partyId")
	if err != nil {
		return nil, err
	}
	if !foundPartyID {
		return nil, baseWsm.NewMissingFieldError("PartyID", "*string", "partyId", "PartyJoinRequest")
	}
	message.PartyID = &tempPartyID

	return message, nil
}

// endregion PartyJoinRequest

// region PartyJoinResponse

type PartyJoinResponse struct {
	Code            int64  `json:"code" required:"false"`
	ID              string `json:"id" required:"false"`
	InvitationToken string `json:"invitationToken" required:"false"`
	Invitees        string `json:"invitees" required:"false"`
	LeaderID        string `json:"leaderId" required:"false"`
	Members         string `json:"members" required:"false"`
	PartyID         string `json:"partyId" required:"false"`
}

// Type implements the Message interface.
func (*PartyJoinResponse) Type() string {
	return TypePartyJoinResponse
}

// String implements the Message interface.
func (m *PartyJoinResponse) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *PartyJoinResponse) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", m.ID))

	sb.WriteString(fmt.Sprintf("code: %d\n", m.Code))

	if len(m.InvitationToken) > 0 {
		sb.WriteString(fmt.Sprintf("invitationToken: %s\n", m.InvitationToken))
	}

	if len(m.Invitees) > 0 {
		sb.WriteString(fmt.Sprintf("invitees: %s\n", m.Invitees))
	}

	if len(m.LeaderID) > 0 {
		sb.WriteString(fmt.Sprintf("leaderId: %s\n", m.LeaderID))
	}

	if len(m.Members) > 0 {
		sb.WriteString(fmt.Sprintf("members: %s\n", m.Members))
	}

	if len(m.PartyID) > 0 {
		sb.WriteString(fmt.Sprintf("partyId: %s\n", m.PartyID))
	}

	return sb.String(), nil
}

func NewPartyJoinResponseFromMap(m map[string]interface{}) (*PartyJoinResponse, error) {
	message := &PartyJoinResponse{}

	tempCode, _, err := baseWsm.ExtractValue[int64](m, "code")
	if err != nil {
		return nil, err
	}
	message.Code = tempCode

	tempID, _, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	message.ID = tempID

	tempInvitationToken, _, err := baseWsm.ExtractValue[string](m, "invitationToken")
	if err != nil {
		return nil, err
	}
	message.InvitationToken = tempInvitationToken

	tempInvitees, _, err := baseWsm.ExtractValue[string](m, "invitees")
	if err != nil {
		return nil, err
	}
	message.Invitees = tempInvitees

	tempLeaderID, _, err := baseWsm.ExtractValue[string](m, "leaderId")
	if err != nil {
		return nil, err
	}
	message.LeaderID = tempLeaderID

	tempMembers, _, err := baseWsm.ExtractValue[string](m, "members")
	if err != nil {
		return nil, err
	}
	message.Members = tempMembers

	tempPartyID, _, err := baseWsm.ExtractValue[string](m, "partyId")
	if err != nil {
		return nil, err
	}
	message.PartyID = tempPartyID

	return message, nil
}

// endregion PartyJoinResponse

// region PartyKickNotif

type PartyKickNotif struct {
	LeaderID string `json:"leaderId" required:"false"`
	PartyID  string `json:"partyId" required:"false"`
	UserID   string `json:"userId" required:"false"`
}

// Type implements the Message interface.
func (*PartyKickNotif) Type() string {
	return TypePartyKickNotif
}

// String implements the Message interface.
func (m *PartyKickNotif) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *PartyKickNotif) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))

	if len(m.LeaderID) > 0 {
		sb.WriteString(fmt.Sprintf("leaderId: %s\n", m.LeaderID))
	}

	if len(m.PartyID) > 0 {
		sb.WriteString(fmt.Sprintf("partyId: %s\n", m.PartyID))
	}

	if len(m.UserID) > 0 {
		sb.WriteString(fmt.Sprintf("userId: %s\n", m.UserID))
	}

	return sb.String(), nil
}

func NewPartyKickNotifFromMap(m map[string]interface{}) (*PartyKickNotif, error) {
	message := &PartyKickNotif{}

	tempLeaderID, _, err := baseWsm.ExtractValue[string](m, "leaderId")
	if err != nil {
		return nil, err
	}
	message.LeaderID = tempLeaderID

	tempPartyID, _, err := baseWsm.ExtractValue[string](m, "partyId")
	if err != nil {
		return nil, err
	}
	message.PartyID = tempPartyID

	tempUserID, _, err := baseWsm.ExtractValue[string](m, "userId")
	if err != nil {
		return nil, err
	}
	message.UserID = tempUserID

	return message, nil
}

// endregion PartyKickNotif

// region PartyKickRequest

type PartyKickRequest struct {
	ID       *string `json:"id" required:"true"`
	MemberID *string `json:"memberId" required:"true"`
}

// Type implements the Message interface.
func (*PartyKickRequest) Type() string {
	return TypePartyKickRequest
}

// String implements the Message interface.
func (m *PartyKickRequest) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *PartyKickRequest) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", *m.ID))

	sb.WriteString(fmt.Sprintf("memberId: %s\n", *m.MemberID))

	return sb.String(), nil
}

func NewPartyKickRequestFromMap(m map[string]interface{}) (*PartyKickRequest, error) {
	message := &PartyKickRequest{}

	tempID, foundID, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	if !foundID {
		return nil, baseWsm.NewMissingFieldError("ID", "*string", "id", "PartyKickRequest")
	}
	message.ID = &tempID

	tempMemberID, foundMemberID, err := baseWsm.ExtractValue[string](m, "memberId")
	if err != nil {
		return nil, err
	}
	if !foundMemberID {
		return nil, baseWsm.NewMissingFieldError("MemberID", "*string", "memberId", "PartyKickRequest")
	}
	message.MemberID = &tempMemberID

	return message, nil
}

// endregion PartyKickRequest

// region PartyKickResponse

type PartyKickResponse struct {
	Code int64  `json:"code" required:"false"`
	ID   string `json:"id" required:"false"`
}

// Type implements the Message interface.
func (*PartyKickResponse) Type() string {
	return TypePartyKickResponse
}

// String implements the Message interface.
func (m *PartyKickResponse) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *PartyKickResponse) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", m.ID))

	sb.WriteString(fmt.Sprintf("code: %d\n", m.Code))

	return sb.String(), nil
}

func NewPartyKickResponseFromMap(m map[string]interface{}) (*PartyKickResponse, error) {
	message := &PartyKickResponse{}

	tempCode, _, err := baseWsm.ExtractValue[int64](m, "code")
	if err != nil {
		return nil, err
	}
	message.Code = tempCode

	tempID, _, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	message.ID = tempID

	return message, nil
}

// endregion PartyKickResponse

// region PartyLeaveNotif

type PartyLeaveNotif struct {
	LeaderID string `json:"leaderId" required:"false"`
	UserID   string `json:"userId" required:"false"`
}

// Type implements the Message interface.
func (*PartyLeaveNotif) Type() string {
	return TypePartyLeaveNotif
}

// String implements the Message interface.
func (m *PartyLeaveNotif) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *PartyLeaveNotif) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))

	if len(m.LeaderID) > 0 {
		sb.WriteString(fmt.Sprintf("leaderId: %s\n", m.LeaderID))
	}

	if len(m.UserID) > 0 {
		sb.WriteString(fmt.Sprintf("userId: %s\n", m.UserID))
	}

	return sb.String(), nil
}

func NewPartyLeaveNotifFromMap(m map[string]interface{}) (*PartyLeaveNotif, error) {
	message := &PartyLeaveNotif{}

	tempLeaderID, _, err := baseWsm.ExtractValue[string](m, "leaderId")
	if err != nil {
		return nil, err
	}
	message.LeaderID = tempLeaderID

	tempUserID, _, err := baseWsm.ExtractValue[string](m, "userId")
	if err != nil {
		return nil, err
	}
	message.UserID = tempUserID

	return message, nil
}

// endregion PartyLeaveNotif

// region PartyLeaveRequest

type PartyLeaveRequest struct {
	ID                 *string `json:"id" required:"true"`
	IgnoreUserRegistry *bool   `json:"ignoreUserRegistry" required:"true"`
}

// Type implements the Message interface.
func (*PartyLeaveRequest) Type() string {
	return TypePartyLeaveRequest
}

// String implements the Message interface.
func (m *PartyLeaveRequest) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *PartyLeaveRequest) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", *m.ID))

	sb.WriteString(fmt.Sprintf("ignoreUserRegistry: %t\n", *m.IgnoreUserRegistry))

	return sb.String(), nil
}

func NewPartyLeaveRequestFromMap(m map[string]interface{}) (*PartyLeaveRequest, error) {
	message := &PartyLeaveRequest{}

	tempID, foundID, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	if !foundID {
		return nil, baseWsm.NewMissingFieldError("ID", "*string", "id", "PartyLeaveRequest")
	}
	message.ID = &tempID

	tempIgnoreUserRegistry, foundIgnoreUserRegistry, err := baseWsm.ExtractValue[bool](m, "ignoreUserRegistry")
	if err != nil {
		return nil, err
	}
	if !foundIgnoreUserRegistry {
		return nil, baseWsm.NewMissingFieldError("IgnoreUserRegistry", "*bool", "ignoreUserRegistry", "PartyLeaveRequest")
	}
	message.IgnoreUserRegistry = &tempIgnoreUserRegistry

	return message, nil
}

// endregion PartyLeaveRequest

// region PartyLeaveResponse

type PartyLeaveResponse struct {
	Code int64  `json:"code" required:"false"`
	ID   string `json:"id" required:"false"`
}

// Type implements the Message interface.
func (*PartyLeaveResponse) Type() string {
	return TypePartyLeaveResponse
}

// String implements the Message interface.
func (m *PartyLeaveResponse) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *PartyLeaveResponse) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", m.ID))

	sb.WriteString(fmt.Sprintf("code: %d\n", m.Code))

	return sb.String(), nil
}

func NewPartyLeaveResponseFromMap(m map[string]interface{}) (*PartyLeaveResponse, error) {
	message := &PartyLeaveResponse{}

	tempCode, _, err := baseWsm.ExtractValue[int64](m, "code")
	if err != nil {
		return nil, err
	}
	message.Code = tempCode

	tempID, _, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	message.ID = tempID

	return message, nil
}

// endregion PartyLeaveResponse

// region PartyPromoteLeaderRequest

type PartyPromoteLeaderRequest struct {
	ID              *string `json:"id" required:"true"`
	NewLeaderUserID *string `json:"newLeaderUserId" required:"true"`
}

// Type implements the Message interface.
func (*PartyPromoteLeaderRequest) Type() string {
	return TypePartyPromoteLeaderRequest
}

// String implements the Message interface.
func (m *PartyPromoteLeaderRequest) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *PartyPromoteLeaderRequest) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", *m.ID))

	sb.WriteString(fmt.Sprintf("newLeaderUserId: %s\n", *m.NewLeaderUserID))

	return sb.String(), nil
}

func NewPartyPromoteLeaderRequestFromMap(m map[string]interface{}) (*PartyPromoteLeaderRequest, error) {
	message := &PartyPromoteLeaderRequest{}

	tempID, foundID, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	if !foundID {
		return nil, baseWsm.NewMissingFieldError("ID", "*string", "id", "PartyPromoteLeaderRequest")
	}
	message.ID = &tempID

	tempNewLeaderUserID, foundNewLeaderUserID, err := baseWsm.ExtractValue[string](m, "newLeaderUserId")
	if err != nil {
		return nil, err
	}
	if !foundNewLeaderUserID {
		return nil, baseWsm.NewMissingFieldError("NewLeaderUserID", "*string", "newLeaderUserId", "PartyPromoteLeaderRequest")
	}
	message.NewLeaderUserID = &tempNewLeaderUserID

	return message, nil
}

// endregion PartyPromoteLeaderRequest

// region PartyPromoteLeaderResponse

type PartyPromoteLeaderResponse struct {
	Code            int64  `json:"code" required:"false"`
	ID              string `json:"id" required:"false"`
	InvitationToken string `json:"invitationToken" required:"false"`
	Invitees        string `json:"invitees" required:"false"`
	LeaderID        string `json:"leaderId" required:"false"`
	Members         string `json:"members" required:"false"`
	PartyID         string `json:"partyId" required:"false"`
}

// Type implements the Message interface.
func (*PartyPromoteLeaderResponse) Type() string {
	return TypePartyPromoteLeaderResponse
}

// String implements the Message interface.
func (m *PartyPromoteLeaderResponse) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *PartyPromoteLeaderResponse) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", m.ID))

	sb.WriteString(fmt.Sprintf("code: %d\n", m.Code))

	if len(m.InvitationToken) > 0 {
		sb.WriteString(fmt.Sprintf("invitationToken: %s\n", m.InvitationToken))
	}

	if len(m.Invitees) > 0 {
		sb.WriteString(fmt.Sprintf("invitees: %s\n", m.Invitees))
	}

	if len(m.LeaderID) > 0 {
		sb.WriteString(fmt.Sprintf("leaderId: %s\n", m.LeaderID))
	}

	if len(m.Members) > 0 {
		sb.WriteString(fmt.Sprintf("members: %s\n", m.Members))
	}

	if len(m.PartyID) > 0 {
		sb.WriteString(fmt.Sprintf("partyId: %s\n", m.PartyID))
	}

	return sb.String(), nil
}

func NewPartyPromoteLeaderResponseFromMap(m map[string]interface{}) (*PartyPromoteLeaderResponse, error) {
	message := &PartyPromoteLeaderResponse{}

	tempCode, _, err := baseWsm.ExtractValue[int64](m, "code")
	if err != nil {
		return nil, err
	}
	message.Code = tempCode

	tempID, _, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	message.ID = tempID

	tempInvitationToken, _, err := baseWsm.ExtractValue[string](m, "invitationToken")
	if err != nil {
		return nil, err
	}
	message.InvitationToken = tempInvitationToken

	tempInvitees, _, err := baseWsm.ExtractValue[string](m, "invitees")
	if err != nil {
		return nil, err
	}
	message.Invitees = tempInvitees

	tempLeaderID, _, err := baseWsm.ExtractValue[string](m, "leaderId")
	if err != nil {
		return nil, err
	}
	message.LeaderID = tempLeaderID

	tempMembers, _, err := baseWsm.ExtractValue[string](m, "members")
	if err != nil {
		return nil, err
	}
	message.Members = tempMembers

	tempPartyID, _, err := baseWsm.ExtractValue[string](m, "partyId")
	if err != nil {
		return nil, err
	}
	message.PartyID = tempPartyID

	return message, nil
}

// endregion PartyPromoteLeaderResponse

// region PartyRejectNotif

type PartyRejectNotif struct {
	LeaderID string `json:"leaderId" required:"false"`
	PartyID  string `json:"partyId" required:"false"`
	UserID   string `json:"userId" required:"false"`
}

// Type implements the Message interface.
func (*PartyRejectNotif) Type() string {
	return TypePartyRejectNotif
}

// String implements the Message interface.
func (m *PartyRejectNotif) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *PartyRejectNotif) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))

	if len(m.LeaderID) > 0 {
		sb.WriteString(fmt.Sprintf("leaderId: %s\n", m.LeaderID))
	}

	if len(m.PartyID) > 0 {
		sb.WriteString(fmt.Sprintf("partyId: %s\n", m.PartyID))
	}

	if len(m.UserID) > 0 {
		sb.WriteString(fmt.Sprintf("userId: %s\n", m.UserID))
	}

	return sb.String(), nil
}

func NewPartyRejectNotifFromMap(m map[string]interface{}) (*PartyRejectNotif, error) {
	message := &PartyRejectNotif{}

	tempLeaderID, _, err := baseWsm.ExtractValue[string](m, "leaderId")
	if err != nil {
		return nil, err
	}
	message.LeaderID = tempLeaderID

	tempPartyID, _, err := baseWsm.ExtractValue[string](m, "partyId")
	if err != nil {
		return nil, err
	}
	message.PartyID = tempPartyID

	tempUserID, _, err := baseWsm.ExtractValue[string](m, "userId")
	if err != nil {
		return nil, err
	}
	message.UserID = tempUserID

	return message, nil
}

// endregion PartyRejectNotif

// region PartyRejectRequest

type PartyRejectRequest struct {
	ID              *string `json:"id" required:"true"`
	InvitationToken *string `json:"invitationToken" required:"true"`
	PartyID         *string `json:"partyId" required:"true"`
}

// Type implements the Message interface.
func (*PartyRejectRequest) Type() string {
	return TypePartyRejectRequest
}

// String implements the Message interface.
func (m *PartyRejectRequest) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *PartyRejectRequest) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", *m.ID))

	sb.WriteString(fmt.Sprintf("invitationToken: %s\n", *m.InvitationToken))

	sb.WriteString(fmt.Sprintf("partyId: %s\n", *m.PartyID))

	return sb.String(), nil
}

func NewPartyRejectRequestFromMap(m map[string]interface{}) (*PartyRejectRequest, error) {
	message := &PartyRejectRequest{}

	tempID, foundID, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	if !foundID {
		return nil, baseWsm.NewMissingFieldError("ID", "*string", "id", "PartyRejectRequest")
	}
	message.ID = &tempID

	tempInvitationToken, foundInvitationToken, err := baseWsm.ExtractValue[string](m, "invitationToken")
	if err != nil {
		return nil, err
	}
	if !foundInvitationToken {
		return nil, baseWsm.NewMissingFieldError("InvitationToken", "*string", "invitationToken", "PartyRejectRequest")
	}
	message.InvitationToken = &tempInvitationToken

	tempPartyID, foundPartyID, err := baseWsm.ExtractValue[string](m, "partyId")
	if err != nil {
		return nil, err
	}
	if !foundPartyID {
		return nil, baseWsm.NewMissingFieldError("PartyID", "*string", "partyId", "PartyRejectRequest")
	}
	message.PartyID = &tempPartyID

	return message, nil
}

// endregion PartyRejectRequest

// region PartyRejectResponse

type PartyRejectResponse struct {
	Code    int64  `json:"code" required:"false"`
	ID      string `json:"id" required:"false"`
	PartyID string `json:"partyId" required:"false"`
}

// Type implements the Message interface.
func (*PartyRejectResponse) Type() string {
	return TypePartyRejectResponse
}

// String implements the Message interface.
func (m *PartyRejectResponse) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *PartyRejectResponse) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", m.ID))

	sb.WriteString(fmt.Sprintf("code: %d\n", m.Code))

	if len(m.PartyID) > 0 {
		sb.WriteString(fmt.Sprintf("partyId: %s\n", m.PartyID))
	}

	return sb.String(), nil
}

func NewPartyRejectResponseFromMap(m map[string]interface{}) (*PartyRejectResponse, error) {
	message := &PartyRejectResponse{}

	tempCode, _, err := baseWsm.ExtractValue[int64](m, "code")
	if err != nil {
		return nil, err
	}
	message.Code = tempCode

	tempID, _, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	message.ID = tempID

	tempPartyID, _, err := baseWsm.ExtractValue[string](m, "partyId")
	if err != nil {
		return nil, err
	}
	message.PartyID = tempPartyID

	return message, nil
}

// endregion PartyRejectResponse

// region PersonalChatHistoryRequest

type PersonalChatHistoryRequest struct {
	FriendID *string `json:"friendId" required:"true"`
	ID       *string `json:"id" required:"true"`
}

// Type implements the Message interface.
func (*PersonalChatHistoryRequest) Type() string {
	return TypePersonalChatHistoryRequest
}

// String implements the Message interface.
func (m *PersonalChatHistoryRequest) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *PersonalChatHistoryRequest) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", *m.ID))

	sb.WriteString(fmt.Sprintf("friendId: %s\n", *m.FriendID))

	return sb.String(), nil
}

func NewPersonalChatHistoryRequestFromMap(m map[string]interface{}) (*PersonalChatHistoryRequest, error) {
	message := &PersonalChatHistoryRequest{}

	tempFriendID, foundFriendID, err := baseWsm.ExtractValue[string](m, "friendId")
	if err != nil {
		return nil, err
	}
	if !foundFriendID {
		return nil, baseWsm.NewMissingFieldError("FriendID", "*string", "friendId", "PersonalChatHistoryRequest")
	}
	message.FriendID = &tempFriendID

	tempID, foundID, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	if !foundID {
		return nil, baseWsm.NewMissingFieldError("ID", "*string", "id", "PersonalChatHistoryRequest")
	}
	message.ID = &tempID

	return message, nil
}

// endregion PersonalChatHistoryRequest

// region PersonalChatHistoryResponse

type PersonalChatHistoryResponse struct {
	Chat     string `json:"chat" required:"false"`
	Code     int64  `json:"code" required:"false"`
	FriendID string `json:"friendId" required:"false"`
	ID       string `json:"id" required:"false"`
}

// Type implements the Message interface.
func (*PersonalChatHistoryResponse) Type() string {
	return TypePersonalChatHistoryResponse
}

// String implements the Message interface.
func (m *PersonalChatHistoryResponse) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *PersonalChatHistoryResponse) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", m.ID))

	if len(m.Chat) > 0 {
		sb.WriteString(fmt.Sprintf("chat: %s\n", m.Chat))
	}

	sb.WriteString(fmt.Sprintf("code: %d\n", m.Code))

	if len(m.FriendID) > 0 {
		sb.WriteString(fmt.Sprintf("friendId: %s\n", m.FriendID))
	}

	return sb.String(), nil
}

func NewPersonalChatHistoryResponseFromMap(m map[string]interface{}) (*PersonalChatHistoryResponse, error) {
	message := &PersonalChatHistoryResponse{}

	tempChat, _, err := baseWsm.ExtractValue[string](m, "chat")
	if err != nil {
		return nil, err
	}
	message.Chat = tempChat

	tempCode, _, err := baseWsm.ExtractValue[int64](m, "code")
	if err != nil {
		return nil, err
	}
	message.Code = tempCode

	tempFriendID, _, err := baseWsm.ExtractValue[string](m, "friendId")
	if err != nil {
		return nil, err
	}
	message.FriendID = tempFriendID

	tempID, _, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	message.ID = tempID

	return message, nil
}

// endregion PersonalChatHistoryResponse

// region PersonalChatNotif

type PersonalChatNotif struct {
	From       string `json:"from" required:"false"`
	ID         string `json:"id" required:"false"`
	Payload    string `json:"payload" required:"false"`
	ReceivedAt string `json:"receivedAt" required:"false"`
	To         string `json:"to" required:"false"`
}

// Type implements the Message interface.
func (*PersonalChatNotif) Type() string {
	return TypePersonalChatNotif
}

// String implements the Message interface.
func (m *PersonalChatNotif) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *PersonalChatNotif) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", m.ID))

	if len(m.From) > 0 {
		sb.WriteString(fmt.Sprintf("from: %s\n", m.From))
	}

	if len(m.Payload) > 0 {
		sb.WriteString(fmt.Sprintf("payload: %s\n", m.Payload))
	}

	if len(m.ReceivedAt) > 0 {
		sb.WriteString(fmt.Sprintf("receivedAt: %s\n", m.ReceivedAt))
	}

	if len(m.To) > 0 {
		sb.WriteString(fmt.Sprintf("to: %s\n", m.To))
	}

	return sb.String(), nil
}

func NewPersonalChatNotifFromMap(m map[string]interface{}) (*PersonalChatNotif, error) {
	message := &PersonalChatNotif{}

	tempFrom, _, err := baseWsm.ExtractValue[string](m, "from")
	if err != nil {
		return nil, err
	}
	message.From = tempFrom

	tempID, _, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	message.ID = tempID

	tempPayload, _, err := baseWsm.ExtractValue[string](m, "payload")
	if err != nil {
		return nil, err
	}
	message.Payload = tempPayload

	tempReceivedAt, _, err := baseWsm.ExtractValue[string](m, "receivedAt")
	if err != nil {
		return nil, err
	}
	message.ReceivedAt = tempReceivedAt

	tempTo, _, err := baseWsm.ExtractValue[string](m, "to")
	if err != nil {
		return nil, err
	}
	message.To = tempTo

	return message, nil
}

// endregion PersonalChatNotif

// region PersonalChatRequest

type PersonalChatRequest struct {
	From       *string `json:"from" required:"true"`
	ID         *string `json:"id" required:"true"`
	Payload    *string `json:"payload" required:"true"`
	ReceivedAt *string `json:"receivedAt" required:"true"`
	To         *string `json:"to" required:"true"`
}

// Type implements the Message interface.
func (*PersonalChatRequest) Type() string {
	return TypePersonalChatRequest
}

// String implements the Message interface.
func (m *PersonalChatRequest) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *PersonalChatRequest) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", *m.ID))

	sb.WriteString(fmt.Sprintf("from: %s\n", *m.From))

	sb.WriteString(fmt.Sprintf("payload: %s\n", *m.Payload))

	sb.WriteString(fmt.Sprintf("receivedAt: %s\n", *m.ReceivedAt))

	sb.WriteString(fmt.Sprintf("to: %s\n", *m.To))

	return sb.String(), nil
}

func NewPersonalChatRequestFromMap(m map[string]interface{}) (*PersonalChatRequest, error) {
	message := &PersonalChatRequest{}

	tempFrom, foundFrom, err := baseWsm.ExtractValue[string](m, "from")
	if err != nil {
		return nil, err
	}
	if !foundFrom {
		return nil, baseWsm.NewMissingFieldError("From", "*string", "from", "PersonalChatRequest")
	}
	message.From = &tempFrom

	tempID, foundID, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	if !foundID {
		return nil, baseWsm.NewMissingFieldError("ID", "*string", "id", "PersonalChatRequest")
	}
	message.ID = &tempID

	tempPayload, foundPayload, err := baseWsm.ExtractValue[string](m, "payload")
	if err != nil {
		return nil, err
	}
	if !foundPayload {
		return nil, baseWsm.NewMissingFieldError("Payload", "*string", "payload", "PersonalChatRequest")
	}
	message.Payload = &tempPayload

	tempReceivedAt, foundReceivedAt, err := baseWsm.ExtractValue[string](m, "receivedAt")
	if err != nil {
		return nil, err
	}
	if !foundReceivedAt {
		return nil, baseWsm.NewMissingFieldError("ReceivedAt", "*string", "receivedAt", "PersonalChatRequest")
	}
	message.ReceivedAt = &tempReceivedAt

	tempTo, foundTo, err := baseWsm.ExtractValue[string](m, "to")
	if err != nil {
		return nil, err
	}
	if !foundTo {
		return nil, baseWsm.NewMissingFieldError("To", "*string", "to", "PersonalChatRequest")
	}
	message.To = &tempTo

	return message, nil
}

// endregion PersonalChatRequest

// region PersonalChatResponse

type PersonalChatResponse struct {
	Code int64  `json:"code" required:"false"`
	ID   string `json:"id" required:"false"`
}

// Type implements the Message interface.
func (*PersonalChatResponse) Type() string {
	return TypePersonalChatResponse
}

// String implements the Message interface.
func (m *PersonalChatResponse) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *PersonalChatResponse) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", m.ID))

	sb.WriteString(fmt.Sprintf("code: %d\n", m.Code))

	return sb.String(), nil
}

func NewPersonalChatResponseFromMap(m map[string]interface{}) (*PersonalChatResponse, error) {
	message := &PersonalChatResponse{}

	tempCode, _, err := baseWsm.ExtractValue[int64](m, "code")
	if err != nil {
		return nil, err
	}
	message.Code = tempCode

	tempID, _, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	message.ID = tempID

	return message, nil
}

// endregion PersonalChatResponse

// region RefreshTokenRequest

type RefreshTokenRequest struct {
	ID    *string `json:"id" required:"true"`
	Token *string `json:"token" required:"true"`
}

// Type implements the Message interface.
func (*RefreshTokenRequest) Type() string {
	return TypeRefreshTokenRequest
}

// String implements the Message interface.
func (m *RefreshTokenRequest) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *RefreshTokenRequest) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", *m.ID))

	sb.WriteString(fmt.Sprintf("token: %s\n", *m.Token))

	return sb.String(), nil
}

func NewRefreshTokenRequestFromMap(m map[string]interface{}) (*RefreshTokenRequest, error) {
	message := &RefreshTokenRequest{}

	tempID, foundID, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	if !foundID {
		return nil, baseWsm.NewMissingFieldError("ID", "*string", "id", "RefreshTokenRequest")
	}
	message.ID = &tempID

	tempToken, foundToken, err := baseWsm.ExtractValue[string](m, "token")
	if err != nil {
		return nil, err
	}
	if !foundToken {
		return nil, baseWsm.NewMissingFieldError("Token", "*string", "token", "RefreshTokenRequest")
	}
	message.Token = &tempToken

	return message, nil
}

// endregion RefreshTokenRequest

// region RefreshTokenResponse

type RefreshTokenResponse struct {
	Code int64  `json:"code" required:"false"`
	ID   string `json:"id" required:"false"`
}

// Type implements the Message interface.
func (*RefreshTokenResponse) Type() string {
	return TypeRefreshTokenResponse
}

// String implements the Message interface.
func (m *RefreshTokenResponse) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *RefreshTokenResponse) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", m.ID))

	sb.WriteString(fmt.Sprintf("code: %d\n", m.Code))

	return sb.String(), nil
}

func NewRefreshTokenResponseFromMap(m map[string]interface{}) (*RefreshTokenResponse, error) {
	message := &RefreshTokenResponse{}

	tempCode, _, err := baseWsm.ExtractValue[int64](m, "code")
	if err != nil {
		return nil, err
	}
	message.Code = tempCode

	tempID, _, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	message.ID = tempID

	return message, nil
}

// endregion RefreshTokenResponse

// region RejectFriendsNotif

type RejectFriendsNotif struct {
	UserID string `json:"userId" required:"false"`
}

// Type implements the Message interface.
func (*RejectFriendsNotif) Type() string {
	return TypeRejectFriendsNotif
}

// String implements the Message interface.
func (m *RejectFriendsNotif) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *RejectFriendsNotif) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))

	if len(m.UserID) > 0 {
		sb.WriteString(fmt.Sprintf("userId: %s\n", m.UserID))
	}

	return sb.String(), nil
}

func NewRejectFriendsNotifFromMap(m map[string]interface{}) (*RejectFriendsNotif, error) {
	message := &RejectFriendsNotif{}

	tempUserID, _, err := baseWsm.ExtractValue[string](m, "userId")
	if err != nil {
		return nil, err
	}
	message.UserID = tempUserID

	return message, nil
}

// endregion RejectFriendsNotif

// region RejectFriendsRequest

type RejectFriendsRequest struct {
	FriendID *string `json:"friendId" required:"true"`
	ID       *string `json:"id" required:"true"`
}

// Type implements the Message interface.
func (*RejectFriendsRequest) Type() string {
	return TypeRejectFriendsRequest
}

// String implements the Message interface.
func (m *RejectFriendsRequest) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *RejectFriendsRequest) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", *m.ID))

	sb.WriteString(fmt.Sprintf("friendId: %s\n", *m.FriendID))

	return sb.String(), nil
}

func NewRejectFriendsRequestFromMap(m map[string]interface{}) (*RejectFriendsRequest, error) {
	message := &RejectFriendsRequest{}

	tempFriendID, foundFriendID, err := baseWsm.ExtractValue[string](m, "friendId")
	if err != nil {
		return nil, err
	}
	if !foundFriendID {
		return nil, baseWsm.NewMissingFieldError("FriendID", "*string", "friendId", "RejectFriendsRequest")
	}
	message.FriendID = &tempFriendID

	tempID, foundID, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	if !foundID {
		return nil, baseWsm.NewMissingFieldError("ID", "*string", "id", "RejectFriendsRequest")
	}
	message.ID = &tempID

	return message, nil
}

// endregion RejectFriendsRequest

// region RejectFriendsResponse

type RejectFriendsResponse struct {
	Code int64  `json:"code" required:"false"`
	ID   string `json:"id" required:"false"`
}

// Type implements the Message interface.
func (*RejectFriendsResponse) Type() string {
	return TypeRejectFriendsResponse
}

// String implements the Message interface.
func (m *RejectFriendsResponse) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *RejectFriendsResponse) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", m.ID))

	sb.WriteString(fmt.Sprintf("code: %d\n", m.Code))

	return sb.String(), nil
}

func NewRejectFriendsResponseFromMap(m map[string]interface{}) (*RejectFriendsResponse, error) {
	message := &RejectFriendsResponse{}

	tempCode, _, err := baseWsm.ExtractValue[int64](m, "code")
	if err != nil {
		return nil, err
	}
	message.Code = tempCode

	tempID, _, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	message.ID = tempID

	return message, nil
}

// endregion RejectFriendsResponse

// region RematchmakingNotif

type RematchmakingNotif struct {
	BanDuration int64 `json:"banDuration" required:"false"`
}

// Type implements the Message interface.
func (*RematchmakingNotif) Type() string {
	return TypeRematchmakingNotif
}

// String implements the Message interface.
func (m *RematchmakingNotif) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *RematchmakingNotif) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))

	sb.WriteString(fmt.Sprintf("banDuration: %d\n", m.BanDuration))

	return sb.String(), nil
}

func NewRematchmakingNotifFromMap(m map[string]interface{}) (*RematchmakingNotif, error) {
	message := &RematchmakingNotif{}

	tempBanDuration, _, err := baseWsm.ExtractValue[int64](m, "banDuration")
	if err != nil {
		return nil, err
	}
	message.BanDuration = tempBanDuration

	return message, nil
}

// endregion RematchmakingNotif

// region RequestFriendsNotif

type RequestFriendsNotif struct {
	FriendID string `json:"friendId" required:"false"`
}

// Type implements the Message interface.
func (*RequestFriendsNotif) Type() string {
	return TypeRequestFriendsNotif
}

// String implements the Message interface.
func (m *RequestFriendsNotif) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *RequestFriendsNotif) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))

	if len(m.FriendID) > 0 {
		sb.WriteString(fmt.Sprintf("friendId: %s\n", m.FriendID))
	}

	return sb.String(), nil
}

func NewRequestFriendsNotifFromMap(m map[string]interface{}) (*RequestFriendsNotif, error) {
	message := &RequestFriendsNotif{}

	tempFriendID, _, err := baseWsm.ExtractValue[string](m, "friendId")
	if err != nil {
		return nil, err
	}
	message.FriendID = tempFriendID

	return message, nil
}

// endregion RequestFriendsNotif

// region RequestFriendsRequest

type RequestFriendsRequest struct {
	FriendID *string `json:"friendId" required:"true"`
	ID       *string `json:"id" required:"true"`
}

// Type implements the Message interface.
func (*RequestFriendsRequest) Type() string {
	return TypeRequestFriendsRequest
}

// String implements the Message interface.
func (m *RequestFriendsRequest) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *RequestFriendsRequest) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", *m.ID))

	sb.WriteString(fmt.Sprintf("friendId: %s\n", *m.FriendID))

	return sb.String(), nil
}

func NewRequestFriendsRequestFromMap(m map[string]interface{}) (*RequestFriendsRequest, error) {
	message := &RequestFriendsRequest{}

	tempFriendID, foundFriendID, err := baseWsm.ExtractValue[string](m, "friendId")
	if err != nil {
		return nil, err
	}
	if !foundFriendID {
		return nil, baseWsm.NewMissingFieldError("FriendID", "*string", "friendId", "RequestFriendsRequest")
	}
	message.FriendID = &tempFriendID

	tempID, foundID, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	if !foundID {
		return nil, baseWsm.NewMissingFieldError("ID", "*string", "id", "RequestFriendsRequest")
	}
	message.ID = &tempID

	return message, nil
}

// endregion RequestFriendsRequest

// region RequestFriendsResponse

type RequestFriendsResponse struct {
	Code int64  `json:"code" required:"false"`
	ID   string `json:"id" required:"false"`
}

// Type implements the Message interface.
func (*RequestFriendsResponse) Type() string {
	return TypeRequestFriendsResponse
}

// String implements the Message interface.
func (m *RequestFriendsResponse) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *RequestFriendsResponse) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", m.ID))

	sb.WriteString(fmt.Sprintf("code: %d\n", m.Code))

	return sb.String(), nil
}

func NewRequestFriendsResponseFromMap(m map[string]interface{}) (*RequestFriendsResponse, error) {
	message := &RequestFriendsResponse{}

	tempCode, _, err := baseWsm.ExtractValue[int64](m, "code")
	if err != nil {
		return nil, err
	}
	message.Code = tempCode

	tempID, _, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	message.ID = tempID

	return message, nil
}

// endregion RequestFriendsResponse

// region SendChannelChatRequest

type SendChannelChatRequest struct {
	ChannelSlug *string `json:"channelSlug" required:"true"`
	ID          *string `json:"id" required:"true"`
	Payload     *string `json:"payload" required:"true"`
}

// Type implements the Message interface.
func (*SendChannelChatRequest) Type() string {
	return TypeSendChannelChatRequest
}

// String implements the Message interface.
func (m *SendChannelChatRequest) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *SendChannelChatRequest) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", *m.ID))

	sb.WriteString(fmt.Sprintf("channelSlug: %s\n", *m.ChannelSlug))

	sb.WriteString(fmt.Sprintf("payload: %s\n", *m.Payload))

	return sb.String(), nil
}

func NewSendChannelChatRequestFromMap(m map[string]interface{}) (*SendChannelChatRequest, error) {
	message := &SendChannelChatRequest{}

	tempChannelSlug, foundChannelSlug, err := baseWsm.ExtractValue[string](m, "channelSlug")
	if err != nil {
		return nil, err
	}
	if !foundChannelSlug {
		return nil, baseWsm.NewMissingFieldError("ChannelSlug", "*string", "channelSlug", "SendChannelChatRequest")
	}
	message.ChannelSlug = &tempChannelSlug

	tempID, foundID, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	if !foundID {
		return nil, baseWsm.NewMissingFieldError("ID", "*string", "id", "SendChannelChatRequest")
	}
	message.ID = &tempID

	tempPayload, foundPayload, err := baseWsm.ExtractValue[string](m, "payload")
	if err != nil {
		return nil, err
	}
	if !foundPayload {
		return nil, baseWsm.NewMissingFieldError("Payload", "*string", "payload", "SendChannelChatRequest")
	}
	message.Payload = &tempPayload

	return message, nil
}

// endregion SendChannelChatRequest

// region SendChannelChatResponse

type SendChannelChatResponse struct {
	Code int64  `json:"code" required:"false"`
	ID   string `json:"id" required:"false"`
}

// Type implements the Message interface.
func (*SendChannelChatResponse) Type() string {
	return TypeSendChannelChatResponse
}

// String implements the Message interface.
func (m *SendChannelChatResponse) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *SendChannelChatResponse) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", m.ID))

	sb.WriteString(fmt.Sprintf("code: %d\n", m.Code))

	return sb.String(), nil
}

func NewSendChannelChatResponseFromMap(m map[string]interface{}) (*SendChannelChatResponse, error) {
	message := &SendChannelChatResponse{}

	tempCode, _, err := baseWsm.ExtractValue[int64](m, "code")
	if err != nil {
		return nil, err
	}
	message.Code = tempCode

	tempID, _, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	message.ID = tempID

	return message, nil
}

// endregion SendChannelChatResponse

// region SetReadyConsentNotif

type SetReadyConsentNotif struct {
	MatchID string `json:"matchId" required:"false"`
	UserID  string `json:"userId" required:"false"`
}

// Type implements the Message interface.
func (*SetReadyConsentNotif) Type() string {
	return TypeSetReadyConsentNotif
}

// String implements the Message interface.
func (m *SetReadyConsentNotif) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *SetReadyConsentNotif) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))

	if len(m.MatchID) > 0 {
		sb.WriteString(fmt.Sprintf("matchId: %s\n", m.MatchID))
	}

	if len(m.UserID) > 0 {
		sb.WriteString(fmt.Sprintf("userId: %s\n", m.UserID))
	}

	return sb.String(), nil
}

func NewSetReadyConsentNotifFromMap(m map[string]interface{}) (*SetReadyConsentNotif, error) {
	message := &SetReadyConsentNotif{}

	tempMatchID, _, err := baseWsm.ExtractValue[string](m, "matchId")
	if err != nil {
		return nil, err
	}
	message.MatchID = tempMatchID

	tempUserID, _, err := baseWsm.ExtractValue[string](m, "userId")
	if err != nil {
		return nil, err
	}
	message.UserID = tempUserID

	return message, nil
}

// endregion SetReadyConsentNotif

// region SetReadyConsentRequest

type SetReadyConsentRequest struct {
	ID      *string `json:"id" required:"true"`
	MatchID *string `json:"matchId" required:"true"`
}

// Type implements the Message interface.
func (*SetReadyConsentRequest) Type() string {
	return TypeSetReadyConsentRequest
}

// String implements the Message interface.
func (m *SetReadyConsentRequest) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *SetReadyConsentRequest) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", *m.ID))

	sb.WriteString(fmt.Sprintf("matchId: %s\n", *m.MatchID))

	return sb.String(), nil
}

func NewSetReadyConsentRequestFromMap(m map[string]interface{}) (*SetReadyConsentRequest, error) {
	message := &SetReadyConsentRequest{}

	tempID, foundID, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	if !foundID {
		return nil, baseWsm.NewMissingFieldError("ID", "*string", "id", "SetReadyConsentRequest")
	}
	message.ID = &tempID

	tempMatchID, foundMatchID, err := baseWsm.ExtractValue[string](m, "matchId")
	if err != nil {
		return nil, err
	}
	if !foundMatchID {
		return nil, baseWsm.NewMissingFieldError("MatchID", "*string", "matchId", "SetReadyConsentRequest")
	}
	message.MatchID = &tempMatchID

	return message, nil
}

// endregion SetReadyConsentRequest

// region SetReadyConsentResponse

type SetReadyConsentResponse struct {
	Code int64  `json:"code" required:"false"`
	ID   string `json:"id" required:"false"`
}

// Type implements the Message interface.
func (*SetReadyConsentResponse) Type() string {
	return TypeSetReadyConsentResponse
}

// String implements the Message interface.
func (m *SetReadyConsentResponse) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *SetReadyConsentResponse) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", m.ID))

	sb.WriteString(fmt.Sprintf("code: %d\n", m.Code))

	return sb.String(), nil
}

func NewSetReadyConsentResponseFromMap(m map[string]interface{}) (*SetReadyConsentResponse, error) {
	message := &SetReadyConsentResponse{}

	tempCode, _, err := baseWsm.ExtractValue[int64](m, "code")
	if err != nil {
		return nil, err
	}
	message.Code = tempCode

	tempID, _, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	message.ID = tempID

	return message, nil
}

// endregion SetReadyConsentResponse

// region SetSessionAttributeRequest

type SetSessionAttributeRequest struct {
	ID        *string `json:"id" required:"true"`
	Key       *string `json:"key" required:"true"`
	Namespace *string `json:"namespace" required:"true"`
	Value     *string `json:"value" required:"true"`
}

// Type implements the Message interface.
func (*SetSessionAttributeRequest) Type() string {
	return TypeSetSessionAttributeRequest
}

// String implements the Message interface.
func (m *SetSessionAttributeRequest) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *SetSessionAttributeRequest) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", *m.ID))

	sb.WriteString(fmt.Sprintf("key: %s\n", *m.Key))

	sb.WriteString(fmt.Sprintf("namespace: %s\n", *m.Namespace))

	sb.WriteString(fmt.Sprintf("value: %s\n", *m.Value))

	return sb.String(), nil
}

func NewSetSessionAttributeRequestFromMap(m map[string]interface{}) (*SetSessionAttributeRequest, error) {
	message := &SetSessionAttributeRequest{}

	tempID, foundID, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	if !foundID {
		return nil, baseWsm.NewMissingFieldError("ID", "*string", "id", "SetSessionAttributeRequest")
	}
	message.ID = &tempID

	tempKey, foundKey, err := baseWsm.ExtractValue[string](m, "key")
	if err != nil {
		return nil, err
	}
	if !foundKey {
		return nil, baseWsm.NewMissingFieldError("Key", "*string", "key", "SetSessionAttributeRequest")
	}
	message.Key = &tempKey

	tempNamespace, foundNamespace, err := baseWsm.ExtractValue[string](m, "namespace")
	if err != nil {
		return nil, err
	}
	if !foundNamespace {
		return nil, baseWsm.NewMissingFieldError("Namespace", "*string", "namespace", "SetSessionAttributeRequest")
	}
	message.Namespace = &tempNamespace

	tempValue, foundValue, err := baseWsm.ExtractValue[string](m, "value")
	if err != nil {
		return nil, err
	}
	if !foundValue {
		return nil, baseWsm.NewMissingFieldError("Value", "*string", "value", "SetSessionAttributeRequest")
	}
	message.Value = &tempValue

	return message, nil
}

// endregion SetSessionAttributeRequest

// region SetSessionAttributeResponse

type SetSessionAttributeResponse struct {
	Code int64  `json:"code" required:"false"`
	ID   string `json:"id" required:"false"`
}

// Type implements the Message interface.
func (*SetSessionAttributeResponse) Type() string {
	return TypeSetSessionAttributeResponse
}

// String implements the Message interface.
func (m *SetSessionAttributeResponse) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *SetSessionAttributeResponse) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", m.ID))

	sb.WriteString(fmt.Sprintf("code: %d\n", m.Code))

	return sb.String(), nil
}

func NewSetSessionAttributeResponseFromMap(m map[string]interface{}) (*SetSessionAttributeResponse, error) {
	message := &SetSessionAttributeResponse{}

	tempCode, _, err := baseWsm.ExtractValue[int64](m, "code")
	if err != nil {
		return nil, err
	}
	message.Code = tempCode

	tempID, _, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	message.ID = tempID

	return message, nil
}

// endregion SetSessionAttributeResponse

// region SetUserStatusRequest

type SetUserStatusRequest struct {
	Activity     *string `json:"activity" required:"true"`
	Availability *int64  `json:"availability" required:"true"`
	ID           *string `json:"id" required:"true"`
}

// Type implements the Message interface.
func (*SetUserStatusRequest) Type() string {
	return TypeSetUserStatusRequest
}

// String implements the Message interface.
func (m *SetUserStatusRequest) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *SetUserStatusRequest) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", *m.ID))

	sb.WriteString(fmt.Sprintf("activity: %s\n", *m.Activity))

	sb.WriteString(fmt.Sprintf("availability: %d\n", *m.Availability))

	return sb.String(), nil
}

func NewSetUserStatusRequestFromMap(m map[string]interface{}) (*SetUserStatusRequest, error) {
	message := &SetUserStatusRequest{}

	tempActivity, foundActivity, err := baseWsm.ExtractValue[string](m, "activity")
	if err != nil {
		return nil, err
	}
	if !foundActivity {
		return nil, baseWsm.NewMissingFieldError("Activity", "*string", "activity", "SetUserStatusRequest")
	}
	message.Activity = &tempActivity

	tempAvailability, foundAvailability, err := baseWsm.ExtractValue[int64](m, "availability")
	if err != nil {
		return nil, err
	}
	if !foundAvailability {
		return nil, baseWsm.NewMissingFieldError("Availability", "*int64", "availability", "SetUserStatusRequest")
	}
	message.Availability = &tempAvailability

	tempID, foundID, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	if !foundID {
		return nil, baseWsm.NewMissingFieldError("ID", "*string", "id", "SetUserStatusRequest")
	}
	message.ID = &tempID

	return message, nil
}

// endregion SetUserStatusRequest

// region SetUserStatusResponse

type SetUserStatusResponse struct {
	Code int64  `json:"code" required:"false"`
	ID   string `json:"id" required:"false"`
}

// Type implements the Message interface.
func (*SetUserStatusResponse) Type() string {
	return TypeSetUserStatusResponse
}

// String implements the Message interface.
func (m *SetUserStatusResponse) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *SetUserStatusResponse) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", m.ID))

	sb.WriteString(fmt.Sprintf("code: %d\n", m.Code))

	return sb.String(), nil
}

func NewSetUserStatusResponseFromMap(m map[string]interface{}) (*SetUserStatusResponse, error) {
	message := &SetUserStatusResponse{}

	tempCode, _, err := baseWsm.ExtractValue[int64](m, "code")
	if err != nil {
		return nil, err
	}
	message.Code = tempCode

	tempID, _, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	message.ID = tempID

	return message, nil
}

// endregion SetUserStatusResponse

// region ShutdownNotif

type ShutdownNotif struct {
	Message string `json:"message" required:"false"`
}

// Type implements the Message interface.
func (*ShutdownNotif) Type() string {
	return TypeShutdownNotif
}

// String implements the Message interface.
func (m *ShutdownNotif) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *ShutdownNotif) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))

	if len(m.Message) > 0 {
		sb.WriteString(fmt.Sprintf("message: %s\n", m.Message))
	}

	return sb.String(), nil
}

func NewShutdownNotifFromMap(m map[string]interface{}) (*ShutdownNotif, error) {
	message := &ShutdownNotif{}

	tempMessage, _, err := baseWsm.ExtractValue[string](m, "message")
	if err != nil {
		return nil, err
	}
	message.Message = tempMessage

	return message, nil
}

// endregion ShutdownNotif

// region SignalingP2PNotif

type SignalingP2PNotif struct {
	DestinationID string `json:"destinationId" required:"false"`
	Message       string `json:"message" required:"false"`
}

// Type implements the Message interface.
func (*SignalingP2PNotif) Type() string {
	return TypeSignalingP2PNotif
}

// String implements the Message interface.
func (m *SignalingP2PNotif) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *SignalingP2PNotif) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))

	if len(m.DestinationID) > 0 {
		sb.WriteString(fmt.Sprintf("destinationId: %s\n", m.DestinationID))
	}

	if len(m.Message) > 0 {
		sb.WriteString(fmt.Sprintf("message: %s\n", m.Message))
	}

	return sb.String(), nil
}

func NewSignalingP2PNotifFromMap(m map[string]interface{}) (*SignalingP2PNotif, error) {
	message := &SignalingP2PNotif{}

	tempDestinationID, _, err := baseWsm.ExtractValue[string](m, "destinationId")
	if err != nil {
		return nil, err
	}
	message.DestinationID = tempDestinationID

	tempMessage, _, err := baseWsm.ExtractValue[string](m, "message")
	if err != nil {
		return nil, err
	}
	message.Message = tempMessage

	return message, nil
}

// endregion SignalingP2PNotif

// region StartMatchmakingRequest

type StartMatchmakingRequest struct {
	ExtraAttributes *string                `json:"extraAttributes" required:"true"`
	GameMode        *string                `json:"gameMode" required:"true"`
	ID              *string                `json:"id" required:"true"`
	PartyAttributes map[string]interface{} `json:"partyAttributes" required:"true"`
	Priority        *int64                 `json:"priority" required:"true"`
	TempParty       *string                `json:"tempParty" required:"true"`
}

// Type implements the Message interface.
func (*StartMatchmakingRequest) Type() string {
	return TypeStartMatchmakingRequest
}

// String implements the Message interface.
func (m *StartMatchmakingRequest) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *StartMatchmakingRequest) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", *m.ID))

	sb.WriteString(fmt.Sprintf("extraAttributes: %s\n", *m.ExtraAttributes))

	sb.WriteString(fmt.Sprintf("gameMode: %s\n", *m.GameMode))

	tempPartyAttributes, err := baseWsm.ConvertMapToString(m.PartyAttributes)
	if err != nil {
		return "", err
	}
	sb.WriteString(fmt.Sprintf("partyAttributes: %s\n", tempPartyAttributes))

	sb.WriteString(fmt.Sprintf("priority: %d\n", *m.Priority))

	sb.WriteString(fmt.Sprintf("tempParty: %s\n", *m.TempParty))

	return sb.String(), nil
}

func NewStartMatchmakingRequestFromMap(m map[string]interface{}) (*StartMatchmakingRequest, error) {
	message := &StartMatchmakingRequest{}

	tempExtraAttributes, foundExtraAttributes, err := baseWsm.ExtractValue[string](m, "extraAttributes")
	if err != nil {
		return nil, err
	}
	if !foundExtraAttributes {
		return nil, baseWsm.NewMissingFieldError("ExtraAttributes", "*string", "extraAttributes", "StartMatchmakingRequest")
	}
	message.ExtraAttributes = &tempExtraAttributes

	tempGameMode, foundGameMode, err := baseWsm.ExtractValue[string](m, "gameMode")
	if err != nil {
		return nil, err
	}
	if !foundGameMode {
		return nil, baseWsm.NewMissingFieldError("GameMode", "*string", "gameMode", "StartMatchmakingRequest")
	}
	message.GameMode = &tempGameMode

	tempID, foundID, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	if !foundID {
		return nil, baseWsm.NewMissingFieldError("ID", "*string", "id", "StartMatchmakingRequest")
	}
	message.ID = &tempID

	tempPartyAttributes, foundPartyAttributes, err := baseWsm.ExtractAnyMap(m, "partyAttributes", true)
	if err != nil {
		return nil, err
	}
	if !foundPartyAttributes {
		return nil, baseWsm.NewMissingFieldError("PartyAttributes", "map[string]interface{}", "partyAttributes", "StartMatchmakingRequest")
	}
	message.PartyAttributes = tempPartyAttributes

	tempPriority, foundPriority, err := baseWsm.ExtractValue[int64](m, "priority")
	if err != nil {
		return nil, err
	}
	if !foundPriority {
		return nil, baseWsm.NewMissingFieldError("Priority", "*int64", "priority", "StartMatchmakingRequest")
	}
	message.Priority = &tempPriority

	tempTempParty, foundTempParty, err := baseWsm.ExtractValue[string](m, "tempParty")
	if err != nil {
		return nil, err
	}
	if !foundTempParty {
		return nil, baseWsm.NewMissingFieldError("TempParty", "*string", "tempParty", "StartMatchmakingRequest")
	}
	message.TempParty = &tempTempParty

	return message, nil
}

// endregion StartMatchmakingRequest

// region StartMatchmakingResponse

type StartMatchmakingResponse struct {
	Code int64  `json:"code" required:"false"`
	ID   string `json:"id" required:"false"`
}

// Type implements the Message interface.
func (*StartMatchmakingResponse) Type() string {
	return TypeStartMatchmakingResponse
}

// String implements the Message interface.
func (m *StartMatchmakingResponse) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *StartMatchmakingResponse) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", m.ID))

	sb.WriteString(fmt.Sprintf("code: %d\n", m.Code))

	return sb.String(), nil
}

func NewStartMatchmakingResponseFromMap(m map[string]interface{}) (*StartMatchmakingResponse, error) {
	message := &StartMatchmakingResponse{}

	tempCode, _, err := baseWsm.ExtractValue[int64](m, "code")
	if err != nil {
		return nil, err
	}
	message.Code = tempCode

	tempID, _, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	message.ID = tempID

	return message, nil
}

// endregion StartMatchmakingResponse

// region UnblockPlayerNotif

type UnblockPlayerNotif struct {
	UnblockedUserID string `json:"unblockedUserId" required:"false"`
	UserID          string `json:"userId" required:"false"`
}

// Type implements the Message interface.
func (*UnblockPlayerNotif) Type() string {
	return TypeUnblockPlayerNotif
}

// String implements the Message interface.
func (m *UnblockPlayerNotif) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *UnblockPlayerNotif) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))

	if len(m.UnblockedUserID) > 0 {
		sb.WriteString(fmt.Sprintf("unblockedUserId: %s\n", m.UnblockedUserID))
	}

	if len(m.UserID) > 0 {
		sb.WriteString(fmt.Sprintf("userId: %s\n", m.UserID))
	}

	return sb.String(), nil
}

func NewUnblockPlayerNotifFromMap(m map[string]interface{}) (*UnblockPlayerNotif, error) {
	message := &UnblockPlayerNotif{}

	tempUnblockedUserID, _, err := baseWsm.ExtractValue[string](m, "unblockedUserId")
	if err != nil {
		return nil, err
	}
	message.UnblockedUserID = tempUnblockedUserID

	tempUserID, _, err := baseWsm.ExtractValue[string](m, "userId")
	if err != nil {
		return nil, err
	}
	message.UserID = tempUserID

	return message, nil
}

// endregion UnblockPlayerNotif

// region UnblockPlayerRequest

type UnblockPlayerRequest struct {
	ID              *string `json:"id" required:"true"`
	Namespace       *string `json:"namespace" required:"true"`
	UnblockedUserID *string `json:"unblockedUserId" required:"true"`
}

// Type implements the Message interface.
func (*UnblockPlayerRequest) Type() string {
	return TypeUnblockPlayerRequest
}

// String implements the Message interface.
func (m *UnblockPlayerRequest) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *UnblockPlayerRequest) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", *m.ID))

	sb.WriteString(fmt.Sprintf("namespace: %s\n", *m.Namespace))

	sb.WriteString(fmt.Sprintf("unblockedUserId: %s\n", *m.UnblockedUserID))

	return sb.String(), nil
}

func NewUnblockPlayerRequestFromMap(m map[string]interface{}) (*UnblockPlayerRequest, error) {
	message := &UnblockPlayerRequest{}

	tempID, foundID, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	if !foundID {
		return nil, baseWsm.NewMissingFieldError("ID", "*string", "id", "UnblockPlayerRequest")
	}
	message.ID = &tempID

	tempNamespace, foundNamespace, err := baseWsm.ExtractValue[string](m, "namespace")
	if err != nil {
		return nil, err
	}
	if !foundNamespace {
		return nil, baseWsm.NewMissingFieldError("Namespace", "*string", "namespace", "UnblockPlayerRequest")
	}
	message.Namespace = &tempNamespace

	tempUnblockedUserID, foundUnblockedUserID, err := baseWsm.ExtractValue[string](m, "unblockedUserId")
	if err != nil {
		return nil, err
	}
	if !foundUnblockedUserID {
		return nil, baseWsm.NewMissingFieldError("UnblockedUserID", "*string", "unblockedUserId", "UnblockPlayerRequest")
	}
	message.UnblockedUserID = &tempUnblockedUserID

	return message, nil
}

// endregion UnblockPlayerRequest

// region UnblockPlayerResponse

type UnblockPlayerResponse struct {
	Code            int64  `json:"code" required:"false"`
	ID              string `json:"id" required:"false"`
	Namespace       string `json:"namespace" required:"false"`
	UnblockedUserID string `json:"unblockedUserId" required:"false"`
}

// Type implements the Message interface.
func (*UnblockPlayerResponse) Type() string {
	return TypeUnblockPlayerResponse
}

// String implements the Message interface.
func (m *UnblockPlayerResponse) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *UnblockPlayerResponse) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", m.ID))

	sb.WriteString(fmt.Sprintf("code: %d\n", m.Code))

	if len(m.Namespace) > 0 {
		sb.WriteString(fmt.Sprintf("namespace: %s\n", m.Namespace))
	}

	if len(m.UnblockedUserID) > 0 {
		sb.WriteString(fmt.Sprintf("unblockedUserId: %s\n", m.UnblockedUserID))
	}

	return sb.String(), nil
}

func NewUnblockPlayerResponseFromMap(m map[string]interface{}) (*UnblockPlayerResponse, error) {
	message := &UnblockPlayerResponse{}

	tempCode, _, err := baseWsm.ExtractValue[int64](m, "code")
	if err != nil {
		return nil, err
	}
	message.Code = tempCode

	tempID, _, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	message.ID = tempID

	tempNamespace, _, err := baseWsm.ExtractValue[string](m, "namespace")
	if err != nil {
		return nil, err
	}
	message.Namespace = tempNamespace

	tempUnblockedUserID, _, err := baseWsm.ExtractValue[string](m, "unblockedUserId")
	if err != nil {
		return nil, err
	}
	message.UnblockedUserID = tempUnblockedUserID

	return message, nil
}

// endregion UnblockPlayerResponse

// region UnfriendNotif

type UnfriendNotif struct {
	FriendID string `json:"friendId" required:"false"`
}

// Type implements the Message interface.
func (*UnfriendNotif) Type() string {
	return TypeUnfriendNotif
}

// String implements the Message interface.
func (m *UnfriendNotif) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *UnfriendNotif) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))

	if len(m.FriendID) > 0 {
		sb.WriteString(fmt.Sprintf("friendId: %s\n", m.FriendID))
	}

	return sb.String(), nil
}

func NewUnfriendNotifFromMap(m map[string]interface{}) (*UnfriendNotif, error) {
	message := &UnfriendNotif{}

	tempFriendID, _, err := baseWsm.ExtractValue[string](m, "friendId")
	if err != nil {
		return nil, err
	}
	message.FriendID = tempFriendID

	return message, nil
}

// endregion UnfriendNotif

// region UnfriendRequest

type UnfriendRequest struct {
	FriendID *string `json:"friendId" required:"true"`
	ID       *string `json:"id" required:"true"`
}

// Type implements the Message interface.
func (*UnfriendRequest) Type() string {
	return TypeUnfriendRequest
}

// String implements the Message interface.
func (m *UnfriendRequest) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *UnfriendRequest) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", *m.ID))

	sb.WriteString(fmt.Sprintf("friendId: %s\n", *m.FriendID))

	return sb.String(), nil
}

func NewUnfriendRequestFromMap(m map[string]interface{}) (*UnfriendRequest, error) {
	message := &UnfriendRequest{}

	tempFriendID, foundFriendID, err := baseWsm.ExtractValue[string](m, "friendId")
	if err != nil {
		return nil, err
	}
	if !foundFriendID {
		return nil, baseWsm.NewMissingFieldError("FriendID", "*string", "friendId", "UnfriendRequest")
	}
	message.FriendID = &tempFriendID

	tempID, foundID, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	if !foundID {
		return nil, baseWsm.NewMissingFieldError("ID", "*string", "id", "UnfriendRequest")
	}
	message.ID = &tempID

	return message, nil
}

// endregion UnfriendRequest

// region UnfriendResponse

type UnfriendResponse struct {
	Code int64  `json:"code" required:"false"`
	ID   string `json:"id" required:"false"`
}

// Type implements the Message interface.
func (*UnfriendResponse) Type() string {
	return TypeUnfriendResponse
}

// String implements the Message interface.
func (m *UnfriendResponse) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *UnfriendResponse) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", m.ID))

	sb.WriteString(fmt.Sprintf("code: %d\n", m.Code))

	return sb.String(), nil
}

func NewUnfriendResponseFromMap(m map[string]interface{}) (*UnfriendResponse, error) {
	message := &UnfriendResponse{}

	tempCode, _, err := baseWsm.ExtractValue[int64](m, "code")
	if err != nil {
		return nil, err
	}
	message.Code = tempCode

	tempID, _, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	message.ID = tempID

	return message, nil
}

// endregion UnfriendResponse

// region UserBannedNotification

type UserBannedNotification struct {
}

// Type implements the Message interface.
func (*UserBannedNotification) Type() string {
	return TypeUserBannedNotification
}

// String implements the Message interface.
func (m *UserBannedNotification) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *UserBannedNotification) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))

	return sb.String(), nil
}

func NewUserBannedNotificationFromMap(m map[string]interface{}) (*UserBannedNotification, error) {
	message := &UserBannedNotification{}

	return message, nil
}

// endregion UserBannedNotification

// region UserMetricRequest

type UserMetricRequest struct {
	ID *string `json:"id" required:"true"`
}

// Type implements the Message interface.
func (*UserMetricRequest) Type() string {
	return TypeUserMetricRequest
}

// String implements the Message interface.
func (m *UserMetricRequest) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *UserMetricRequest) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", *m.ID))

	return sb.String(), nil
}

func NewUserMetricRequestFromMap(m map[string]interface{}) (*UserMetricRequest, error) {
	message := &UserMetricRequest{}

	tempID, foundID, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	if !foundID {
		return nil, baseWsm.NewMissingFieldError("ID", "*string", "id", "UserMetricRequest")
	}
	message.ID = &tempID

	return message, nil
}

// endregion UserMetricRequest

// region UserMetricResponse

type UserMetricResponse struct {
	Code        int64  `json:"code" required:"false"`
	ID          string `json:"id" required:"false"`
	PlayerCount int64  `json:"playerCount" required:"false"`
}

// Type implements the Message interface.
func (*UserMetricResponse) Type() string {
	return TypeUserMetricResponse
}

// String implements the Message interface.
func (m *UserMetricResponse) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *UserMetricResponse) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))
	sb.WriteString(fmt.Sprintf("id: %s\n", m.ID))

	sb.WriteString(fmt.Sprintf("code: %d\n", m.Code))

	sb.WriteString(fmt.Sprintf("playerCount: %d\n", m.PlayerCount))

	return sb.String(), nil
}

func NewUserMetricResponseFromMap(m map[string]interface{}) (*UserMetricResponse, error) {
	message := &UserMetricResponse{}

	tempCode, _, err := baseWsm.ExtractValue[int64](m, "code")
	if err != nil {
		return nil, err
	}
	message.Code = tempCode

	tempID, _, err := baseWsm.ExtractValue[string](m, "id")
	if err != nil {
		return nil, err
	}
	message.ID = tempID

	tempPlayerCount, _, err := baseWsm.ExtractValue[int64](m, "playerCount")
	if err != nil {
		return nil, err
	}
	message.PlayerCount = tempPlayerCount

	return message, nil
}

// endregion UserMetricResponse

// region UserStatusNotif

type UserStatusNotif struct {
	Activity     string `json:"activity" required:"false"`
	Availability int64  `json:"availability" required:"false"`
	LastSeenAt   string `json:"lastSeenAt" required:"false"`
	UserID       string `json:"userId" required:"false"`
}

// Type implements the Message interface.
func (*UserStatusNotif) Type() string {
	return TypeUserStatusNotif
}

// String implements the Message interface.
func (m *UserStatusNotif) String() string {
	s, err := m.SafeString()
	if err != nil {
		return fmt.Sprintf("error: %v", err)
	}

	return s
}

// SafeString implements the Message interface.
func (m *UserStatusNotif) SafeString() (string, error) {
	sb := strings.Builder{}

	sb.WriteString(fmt.Sprintf("type: %s\n", m.Type()))

	if len(m.Activity) > 0 {
		sb.WriteString(fmt.Sprintf("activity: %s\n", m.Activity))
	}

	sb.WriteString(fmt.Sprintf("availability: %d\n", m.Availability))

	if len(m.LastSeenAt) > 0 {
		sb.WriteString(fmt.Sprintf("lastSeenAt: %s\n", m.LastSeenAt))
	}

	if len(m.UserID) > 0 {
		sb.WriteString(fmt.Sprintf("userId: %s\n", m.UserID))
	}

	return sb.String(), nil
}

func NewUserStatusNotifFromMap(m map[string]interface{}) (*UserStatusNotif, error) {
	message := &UserStatusNotif{}

	tempActivity, _, err := baseWsm.ExtractValue[string](m, "activity")
	if err != nil {
		return nil, err
	}
	message.Activity = tempActivity

	tempAvailability, _, err := baseWsm.ExtractValue[int64](m, "availability")
	if err != nil {
		return nil, err
	}
	message.Availability = tempAvailability

	tempLastSeenAt, _, err := baseWsm.ExtractValue[string](m, "lastSeenAt")
	if err != nil {
		return nil, err
	}
	message.LastSeenAt = tempLastSeenAt

	tempUserID, _, err := baseWsm.ExtractValue[string](m, "userId")
	if err != nil {
		return nil, err
	}
	message.UserID = tempUserID

	return message, nil
}

// endregion UserStatusNotif

var MessageTypes = []string{
	TypeAcceptFriendsNotif,
	TypeAcceptFriendsRequest,
	TypeAcceptFriendsResponse,
	TypeBlockPlayerNotif,
	TypeBlockPlayerRequest,
	TypeBlockPlayerResponse,
	TypeCancelFriendsNotif,
	TypeCancelFriendsRequest,
	TypeCancelFriendsResponse,
	TypeCancelMatchmakingRequest,
	TypeCancelMatchmakingResponse,
	TypeChannelChatNotif,
	TypeClientResetRequest,
	TypeConnectNotif,
	TypeDisconnectNotif,
	TypeDsNotif,
	TypeErrorNotif,
	TypeExitAllChannel,
	TypeFriendsStatusRequest,
	TypeFriendsStatusResponse,
	TypeGetAllSessionAttributeRequest,
	TypeGetAllSessionAttributeResponse,
	TypeGetFriendshipStatusRequest,
	TypeGetFriendshipStatusResponse,
	TypeGetSessionAttributeRequest,
	TypeGetSessionAttributeResponse,
	TypeHeartbeat,
	TypeJoinDefaultChannelRequest,
	TypeJoinDefaultChannelResponse,
	TypeListIncomingFriendsRequest,
	TypeListIncomingFriendsResponse,
	TypeListOfFriendsRequest,
	TypeListOfFriendsResponse,
	TypeListOnlineFriendsRequest,
	TypeListOutgoingFriendsRequest,
	TypeListOutgoingFriendsResponse,
	TypeMatchmakingNotif,
	TypeMessageNotif,
	TypeMessageSessionNotif,
	TypeOfflineNotificationRequest,
	TypeOfflineNotificationResponse,
	TypeOnlineFriends,
	TypePartyChatNotif,
	TypePartyChatRequest,
	TypePartyChatResponse,
	TypePartyCreateRequest,
	TypePartyCreateResponse,
	TypePartyDataUpdateNotif,
	TypePartyGetInvitedNotif,
	TypePartyInfoRequest,
	TypePartyInfoResponse,
	TypePartyInviteNotif,
	TypePartyInviteRequest,
	TypePartyInviteResponse,
	TypePartyJoinNotif,
	TypePartyJoinRequest,
	TypePartyJoinResponse,
	TypePartyKickNotif,
	TypePartyKickRequest,
	TypePartyKickResponse,
	TypePartyLeaveNotif,
	TypePartyLeaveRequest,
	TypePartyLeaveResponse,
	TypePartyPromoteLeaderRequest,
	TypePartyPromoteLeaderResponse,
	TypePartyRejectNotif,
	TypePartyRejectRequest,
	TypePartyRejectResponse,
	TypePersonalChatHistoryRequest,
	TypePersonalChatHistoryResponse,
	TypePersonalChatNotif,
	TypePersonalChatRequest,
	TypePersonalChatResponse,
	TypeRefreshTokenRequest,
	TypeRefreshTokenResponse,
	TypeRejectFriendsNotif,
	TypeRejectFriendsRequest,
	TypeRejectFriendsResponse,
	TypeRematchmakingNotif,
	TypeRequestFriendsNotif,
	TypeRequestFriendsRequest,
	TypeRequestFriendsResponse,
	TypeSendChannelChatRequest,
	TypeSendChannelChatResponse,
	TypeSetReadyConsentNotif,
	TypeSetReadyConsentRequest,
	TypeSetReadyConsentResponse,
	TypeSetSessionAttributeRequest,
	TypeSetSessionAttributeResponse,
	TypeSetUserStatusRequest,
	TypeSetUserStatusResponse,
	TypeShutdownNotif,
	TypeSignalingP2PNotif,
	TypeStartMatchmakingRequest,
	TypeStartMatchmakingResponse,
	TypeUnblockPlayerNotif,
	TypeUnblockPlayerRequest,
	TypeUnblockPlayerResponse,
	TypeUnfriendNotif,
	TypeUnfriendRequest,
	TypeUnfriendResponse,
	TypeUserBannedNotification,
	TypeUserMetricRequest,
	TypeUserMetricResponse,
	TypeUserStatusNotif,
}

var NewMessageFromMapRegistry = baseWsm.NewMessageFromMap{
	TypeAcceptFriendsNotif:             baseWsm.WrapNewMessageFromMapFunc(NewAcceptFriendsNotifFromMap),
	TypeAcceptFriendsRequest:           baseWsm.WrapNewMessageFromMapFunc(NewAcceptFriendsRequestFromMap),
	TypeAcceptFriendsResponse:          baseWsm.WrapNewMessageFromMapFunc(NewAcceptFriendsResponseFromMap),
	TypeBlockPlayerNotif:               baseWsm.WrapNewMessageFromMapFunc(NewBlockPlayerNotifFromMap),
	TypeBlockPlayerRequest:             baseWsm.WrapNewMessageFromMapFunc(NewBlockPlayerRequestFromMap),
	TypeBlockPlayerResponse:            baseWsm.WrapNewMessageFromMapFunc(NewBlockPlayerResponseFromMap),
	TypeCancelFriendsNotif:             baseWsm.WrapNewMessageFromMapFunc(NewCancelFriendsNotifFromMap),
	TypeCancelFriendsRequest:           baseWsm.WrapNewMessageFromMapFunc(NewCancelFriendsRequestFromMap),
	TypeCancelFriendsResponse:          baseWsm.WrapNewMessageFromMapFunc(NewCancelFriendsResponseFromMap),
	TypeCancelMatchmakingRequest:       baseWsm.WrapNewMessageFromMapFunc(NewCancelMatchmakingRequestFromMap),
	TypeCancelMatchmakingResponse:      baseWsm.WrapNewMessageFromMapFunc(NewCancelMatchmakingResponseFromMap),
	TypeChannelChatNotif:               baseWsm.WrapNewMessageFromMapFunc(NewChannelChatNotifFromMap),
	TypeClientResetRequest:             baseWsm.WrapNewMessageFromMapFunc(NewClientResetRequestFromMap),
	TypeConnectNotif:                   baseWsm.WrapNewMessageFromMapFunc(NewConnectNotifFromMap),
	TypeDisconnectNotif:                baseWsm.WrapNewMessageFromMapFunc(NewDisconnectNotifFromMap),
	TypeDsNotif:                        baseWsm.WrapNewMessageFromMapFunc(NewDsNotifFromMap),
	TypeErrorNotif:                     baseWsm.WrapNewMessageFromMapFunc(NewErrorNotifFromMap),
	TypeExitAllChannel:                 baseWsm.WrapNewMessageFromMapFunc(NewExitAllChannelFromMap),
	TypeFriendsStatusRequest:           baseWsm.WrapNewMessageFromMapFunc(NewFriendsStatusRequestFromMap),
	TypeFriendsStatusResponse:          baseWsm.WrapNewMessageFromMapFunc(NewFriendsStatusResponseFromMap),
	TypeGetAllSessionAttributeRequest:  baseWsm.WrapNewMessageFromMapFunc(NewGetAllSessionAttributeRequestFromMap),
	TypeGetAllSessionAttributeResponse: baseWsm.WrapNewMessageFromMapFunc(NewGetAllSessionAttributeResponseFromMap),
	TypeGetFriendshipStatusRequest:     baseWsm.WrapNewMessageFromMapFunc(NewGetFriendshipStatusRequestFromMap),
	TypeGetFriendshipStatusResponse:    baseWsm.WrapNewMessageFromMapFunc(NewGetFriendshipStatusResponseFromMap),
	TypeGetSessionAttributeRequest:     baseWsm.WrapNewMessageFromMapFunc(NewGetSessionAttributeRequestFromMap),
	TypeGetSessionAttributeResponse:    baseWsm.WrapNewMessageFromMapFunc(NewGetSessionAttributeResponseFromMap),
	TypeHeartbeat:                      baseWsm.WrapNewMessageFromMapFunc(NewHeartbeatFromMap),
	TypeJoinDefaultChannelRequest:      baseWsm.WrapNewMessageFromMapFunc(NewJoinDefaultChannelRequestFromMap),
	TypeJoinDefaultChannelResponse:     baseWsm.WrapNewMessageFromMapFunc(NewJoinDefaultChannelResponseFromMap),
	TypeListIncomingFriendsRequest:     baseWsm.WrapNewMessageFromMapFunc(NewListIncomingFriendsRequestFromMap),
	TypeListIncomingFriendsResponse:    baseWsm.WrapNewMessageFromMapFunc(NewListIncomingFriendsResponseFromMap),
	TypeListOfFriendsRequest:           baseWsm.WrapNewMessageFromMapFunc(NewListOfFriendsRequestFromMap),
	TypeListOfFriendsResponse:          baseWsm.WrapNewMessageFromMapFunc(NewListOfFriendsResponseFromMap),
	TypeListOnlineFriendsRequest:       baseWsm.WrapNewMessageFromMapFunc(NewListOnlineFriendsRequestFromMap),
	TypeListOutgoingFriendsRequest:     baseWsm.WrapNewMessageFromMapFunc(NewListOutgoingFriendsRequestFromMap),
	TypeListOutgoingFriendsResponse:    baseWsm.WrapNewMessageFromMapFunc(NewListOutgoingFriendsResponseFromMap),
	TypeMatchmakingNotif:               baseWsm.WrapNewMessageFromMapFunc(NewMatchmakingNotifFromMap),
	TypeMessageNotif:                   baseWsm.WrapNewMessageFromMapFunc(NewMessageNotifFromMap),
	TypeMessageSessionNotif:            baseWsm.WrapNewMessageFromMapFunc(NewMessageSessionNotifFromMap),
	TypeOfflineNotificationRequest:     baseWsm.WrapNewMessageFromMapFunc(NewOfflineNotificationRequestFromMap),
	TypeOfflineNotificationResponse:    baseWsm.WrapNewMessageFromMapFunc(NewOfflineNotificationResponseFromMap),
	TypeOnlineFriends:                  baseWsm.WrapNewMessageFromMapFunc(NewOnlineFriendsFromMap),
	TypePartyChatNotif:                 baseWsm.WrapNewMessageFromMapFunc(NewPartyChatNotifFromMap),
	TypePartyChatRequest:               baseWsm.WrapNewMessageFromMapFunc(NewPartyChatRequestFromMap),
	TypePartyChatResponse:              baseWsm.WrapNewMessageFromMapFunc(NewPartyChatResponseFromMap),
	TypePartyCreateRequest:             baseWsm.WrapNewMessageFromMapFunc(NewPartyCreateRequestFromMap),
	TypePartyCreateResponse:            baseWsm.WrapNewMessageFromMapFunc(NewPartyCreateResponseFromMap),
	TypePartyDataUpdateNotif:           baseWsm.WrapNewMessageFromMapFunc(NewPartyDataUpdateNotifFromMap),
	TypePartyGetInvitedNotif:           baseWsm.WrapNewMessageFromMapFunc(NewPartyGetInvitedNotifFromMap),
	TypePartyInfoRequest:               baseWsm.WrapNewMessageFromMapFunc(NewPartyInfoRequestFromMap),
	TypePartyInfoResponse:              baseWsm.WrapNewMessageFromMapFunc(NewPartyInfoResponseFromMap),
	TypePartyInviteNotif:               baseWsm.WrapNewMessageFromMapFunc(NewPartyInviteNotifFromMap),
	TypePartyInviteRequest:             baseWsm.WrapNewMessageFromMapFunc(NewPartyInviteRequestFromMap),
	TypePartyInviteResponse:            baseWsm.WrapNewMessageFromMapFunc(NewPartyInviteResponseFromMap),
	TypePartyJoinNotif:                 baseWsm.WrapNewMessageFromMapFunc(NewPartyJoinNotifFromMap),
	TypePartyJoinRequest:               baseWsm.WrapNewMessageFromMapFunc(NewPartyJoinRequestFromMap),
	TypePartyJoinResponse:              baseWsm.WrapNewMessageFromMapFunc(NewPartyJoinResponseFromMap),
	TypePartyKickNotif:                 baseWsm.WrapNewMessageFromMapFunc(NewPartyKickNotifFromMap),
	TypePartyKickRequest:               baseWsm.WrapNewMessageFromMapFunc(NewPartyKickRequestFromMap),
	TypePartyKickResponse:              baseWsm.WrapNewMessageFromMapFunc(NewPartyKickResponseFromMap),
	TypePartyLeaveNotif:                baseWsm.WrapNewMessageFromMapFunc(NewPartyLeaveNotifFromMap),
	TypePartyLeaveRequest:              baseWsm.WrapNewMessageFromMapFunc(NewPartyLeaveRequestFromMap),
	TypePartyLeaveResponse:             baseWsm.WrapNewMessageFromMapFunc(NewPartyLeaveResponseFromMap),
	TypePartyPromoteLeaderRequest:      baseWsm.WrapNewMessageFromMapFunc(NewPartyPromoteLeaderRequestFromMap),
	TypePartyPromoteLeaderResponse:     baseWsm.WrapNewMessageFromMapFunc(NewPartyPromoteLeaderResponseFromMap),
	TypePartyRejectNotif:               baseWsm.WrapNewMessageFromMapFunc(NewPartyRejectNotifFromMap),
	TypePartyRejectRequest:             baseWsm.WrapNewMessageFromMapFunc(NewPartyRejectRequestFromMap),
	TypePartyRejectResponse:            baseWsm.WrapNewMessageFromMapFunc(NewPartyRejectResponseFromMap),
	TypePersonalChatHistoryRequest:     baseWsm.WrapNewMessageFromMapFunc(NewPersonalChatHistoryRequestFromMap),
	TypePersonalChatHistoryResponse:    baseWsm.WrapNewMessageFromMapFunc(NewPersonalChatHistoryResponseFromMap),
	TypePersonalChatNotif:              baseWsm.WrapNewMessageFromMapFunc(NewPersonalChatNotifFromMap),
	TypePersonalChatRequest:            baseWsm.WrapNewMessageFromMapFunc(NewPersonalChatRequestFromMap),
	TypePersonalChatResponse:           baseWsm.WrapNewMessageFromMapFunc(NewPersonalChatResponseFromMap),
	TypeRefreshTokenRequest:            baseWsm.WrapNewMessageFromMapFunc(NewRefreshTokenRequestFromMap),
	TypeRefreshTokenResponse:           baseWsm.WrapNewMessageFromMapFunc(NewRefreshTokenResponseFromMap),
	TypeRejectFriendsNotif:             baseWsm.WrapNewMessageFromMapFunc(NewRejectFriendsNotifFromMap),
	TypeRejectFriendsRequest:           baseWsm.WrapNewMessageFromMapFunc(NewRejectFriendsRequestFromMap),
	TypeRejectFriendsResponse:          baseWsm.WrapNewMessageFromMapFunc(NewRejectFriendsResponseFromMap),
	TypeRematchmakingNotif:             baseWsm.WrapNewMessageFromMapFunc(NewRematchmakingNotifFromMap),
	TypeRequestFriendsNotif:            baseWsm.WrapNewMessageFromMapFunc(NewRequestFriendsNotifFromMap),
	TypeRequestFriendsRequest:          baseWsm.WrapNewMessageFromMapFunc(NewRequestFriendsRequestFromMap),
	TypeRequestFriendsResponse:         baseWsm.WrapNewMessageFromMapFunc(NewRequestFriendsResponseFromMap),
	TypeSendChannelChatRequest:         baseWsm.WrapNewMessageFromMapFunc(NewSendChannelChatRequestFromMap),
	TypeSendChannelChatResponse:        baseWsm.WrapNewMessageFromMapFunc(NewSendChannelChatResponseFromMap),
	TypeSetReadyConsentNotif:           baseWsm.WrapNewMessageFromMapFunc(NewSetReadyConsentNotifFromMap),
	TypeSetReadyConsentRequest:         baseWsm.WrapNewMessageFromMapFunc(NewSetReadyConsentRequestFromMap),
	TypeSetReadyConsentResponse:        baseWsm.WrapNewMessageFromMapFunc(NewSetReadyConsentResponseFromMap),
	TypeSetSessionAttributeRequest:     baseWsm.WrapNewMessageFromMapFunc(NewSetSessionAttributeRequestFromMap),
	TypeSetSessionAttributeResponse:    baseWsm.WrapNewMessageFromMapFunc(NewSetSessionAttributeResponseFromMap),
	TypeSetUserStatusRequest:           baseWsm.WrapNewMessageFromMapFunc(NewSetUserStatusRequestFromMap),
	TypeSetUserStatusResponse:          baseWsm.WrapNewMessageFromMapFunc(NewSetUserStatusResponseFromMap),
	TypeShutdownNotif:                  baseWsm.WrapNewMessageFromMapFunc(NewShutdownNotifFromMap),
	TypeSignalingP2PNotif:              baseWsm.WrapNewMessageFromMapFunc(NewSignalingP2PNotifFromMap),
	TypeStartMatchmakingRequest:        baseWsm.WrapNewMessageFromMapFunc(NewStartMatchmakingRequestFromMap),
	TypeStartMatchmakingResponse:       baseWsm.WrapNewMessageFromMapFunc(NewStartMatchmakingResponseFromMap),
	TypeUnblockPlayerNotif:             baseWsm.WrapNewMessageFromMapFunc(NewUnblockPlayerNotifFromMap),
	TypeUnblockPlayerRequest:           baseWsm.WrapNewMessageFromMapFunc(NewUnblockPlayerRequestFromMap),
	TypeUnblockPlayerResponse:          baseWsm.WrapNewMessageFromMapFunc(NewUnblockPlayerResponseFromMap),
	TypeUnfriendNotif:                  baseWsm.WrapNewMessageFromMapFunc(NewUnfriendNotifFromMap),
	TypeUnfriendRequest:                baseWsm.WrapNewMessageFromMapFunc(NewUnfriendRequestFromMap),
	TypeUnfriendResponse:               baseWsm.WrapNewMessageFromMapFunc(NewUnfriendResponseFromMap),
	TypeUserBannedNotification:         baseWsm.WrapNewMessageFromMapFunc(NewUserBannedNotificationFromMap),
	TypeUserMetricRequest:              baseWsm.WrapNewMessageFromMapFunc(NewUserMetricRequestFromMap),
	TypeUserMetricResponse:             baseWsm.WrapNewMessageFromMapFunc(NewUserMetricResponseFromMap),
	TypeUserStatusNotif:                baseWsm.WrapNewMessageFromMapFunc(NewUserStatusNotifFromMap),
}
