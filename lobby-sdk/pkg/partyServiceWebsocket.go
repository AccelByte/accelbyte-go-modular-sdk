// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package lobby

import (
	"fmt"
	"log/slog"

	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/connectionutils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/lobbyclientmodels/model"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/gorilla/websocket"
)

type PartyServiceWebsocket struct {
	ConfigRepository  repository.ConfigRepository
	TokenRepository   repository.TokenRepository
	ConnectionManager connectionutils.ConnectionManager
}

func (s *PartyServiceWebsocket) CreateParty() error {
	slog.Info("CreateParty")
	text := fmt.Sprintf("type: %s\n%s", model.TypeCreateRequest, utils.GenerateMessageID())
	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (s *PartyServiceWebsocket) GetPartyInfo() error {
	slog.Info("GetPartyInfo")
	text := fmt.Sprintf("type: %s\n%s", model.TypeInfoRequest, utils.GenerateMessageID())
	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (s *PartyServiceWebsocket) LeaveParty() error {
	slog.Info("LeaveParty")
	text := fmt.Sprintf("type: %s\n%s", model.TypeLeaveRequest, utils.GenerateMessageID())
	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (s *PartyServiceWebsocket) InviteParty(friendID string) error {
	slog.Info("InviteParty")
	text := fmt.Sprintf("type: %s\n%s\nfriendID: %s", model.TypeInviteRequest, utils.GenerateMessageID(), friendID)
	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (s *PartyServiceWebsocket) JoinParty(partyID, token string) error {
	slog.Info("JoinParty")
	text := fmt.Sprintf("type: %s\n%s\npartyID: %s\ninvitationToken: %s", model.TypeJoinRequest, utils.GenerateMessageID(), partyID, token)
	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (s *PartyServiceWebsocket) RejectPartyInvitation(partyID, token string) error {
	slog.Info("RejectPartyInvitation")
	text := fmt.Sprintf("type: %s\n%s\npartyID: %s\ninvitationToken: %s", model.TypeRejectRequest, utils.GenerateMessageID(), partyID, token)
	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (s *PartyServiceWebsocket) KickPartyMember(id string) error {
	slog.Info("KickPartyMember")
	text := fmt.Sprintf("type: %s\n%s\nmemberID: %s", model.TypeKickRequest, utils.GenerateMessageID(), id)
	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (s *PartyServiceWebsocket) PromotePartyLeader(leaderUserID string) error {
	slog.Info("PromotePartyLeader")
	text := fmt.Sprintf("type: %s\n%s\nnewLeaderUserId: %s", model.TypePromoteLeaderRequest, utils.GenerateMessageID(), leaderUserID)
	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}
func (s *PartyServiceWebsocket) GetPartyCode() error {
	slog.Info("GetPartyCode")
	text := fmt.Sprintf("type: %s\n%s", model.TypeGetPartyCodeRequest, utils.GenerateMessageID())
	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (s *PartyServiceWebsocket) GeneratePartyCode() error {
	slog.Info("GeneratePartyCode")
	text := fmt.Sprintf("type: %s\n%s", model.TypeGeneratePartyCodeRequest, utils.GenerateMessageID())
	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (s *PartyServiceWebsocket) DeletePartyCode() error {
	slog.Info("DeletePartyCode")
	text := fmt.Sprintf("type: %s\n%s", model.TypeDeletePartyCodeRequest, utils.GenerateMessageID())
	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (s *PartyServiceWebsocket) JoinViaPartyCode(partyCode string) error {
	slog.Info("JoinViaPartyCode")
	text := fmt.Sprintf("type: %s\n%s\npartyCode: %s", model.TypeJoinViaPartyCodeRequest, utils.GenerateMessageID(), partyCode)
	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (s *PartyServiceWebsocket) SetSessionAttribute(key, value string) error {
	slog.Info("SetSessionAttribute")
	text := fmt.Sprintf("type: %s\n%s\nkey: %s\nvalue: %s", model.TypeSetSessionAttributeRequest, utils.GenerateMessageID(), key, value)
	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (s *PartyServiceWebsocket) GetSessionAttribute(key string) error {
	slog.Info("GetSessionAttribute")
	text := fmt.Sprintf("type: %s\n%s\nkey: %s", model.TypeGetSessionAttributeRequest, utils.GenerateMessageID(), key)
	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (s *PartyServiceWebsocket) GetAllSessionAttribute() error {
	slog.Info("GetAllSessionAttribute")
	text := fmt.Sprintf("type: %s\n%s", model.TypeGetAllSessionAttributeRequest, utils.GenerateMessageID())
	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (s *PartyServiceWebsocket) UserMetric() error {
	slog.Info("UserMetric")
	text := fmt.Sprintf("type: %s\n%s", model.TypeUserMetricRequest, utils.GenerateMessageID())
	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (s *PartyServiceWebsocket) SendPartyNotif(topic, payload string) error {
	slog.Info("SendPartyNotif")
	text := fmt.Sprintf("type: %s\n%s\ntopic: %s\npayload: %s", model.TypeSendPartyNotifRequest, utils.GenerateMessageID(), topic, payload)
	err := s.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}
