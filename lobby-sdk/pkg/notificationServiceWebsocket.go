// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package lobby

import (
	"fmt"
	"log/slog"

	"github.com/gorilla/websocket"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/wsm"
	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/lobbyclientmodels/model"
)

type NotificationServiceWebsocket struct {
	ConfigRepository  repository.ConfigRepository
	TokenRepository   repository.TokenRepository
	ConnectionManager wsm.ConnectionManager
}

func (notificationService *NotificationServiceWebsocket) GetNotificationMessage() error {
	slog.Debug("GetNotificationMessage")
	text := fmt.Sprintf("type: %s\n%s", model.TypeNotificationMessage, utils.GenerateMessageID())
	err := notificationService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (notificationService *NotificationServiceWebsocket) GetOfflineNotification() error {
	slog.Debug("GetOfflineNotification")
	text := fmt.Sprintf("type: %s\n%s", model.TypeGetOfflineNotificationRequest, utils.GenerateMessageID())
	err := notificationService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}
