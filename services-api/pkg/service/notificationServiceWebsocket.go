// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package service

import (
	"fmt"

	"github.com/gorilla/websocket"
	"github.com/sirupsen/logrus"

	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/lobbyclientmodels/model"

	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/connectionutils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
)

type NotificationServiceWebsocket struct {
	ConfigRepository  repository.ConfigRepository
	TokenRepository   repository.TokenRepository
	ConnectionManager connectionutils.ConnectionManager
}

func (notificationService *NotificationServiceWebsocket) GetNotificationMessage() error {
	logrus.Debug("GetNotificationMessage")
	text := fmt.Sprintf("type: %s\n%s", model.TypeNotificationMessage, utils.GenerateMessageID())
	err := notificationService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}

func (notificationService *NotificationServiceWebsocket) GetOfflineNotification() error {
	logrus.Debug("GetOfflineNotification")
	text := fmt.Sprintf("type: %s\n%s", model.TypeGetOfflineNotificationRequest, utils.GenerateMessageID())
	err := notificationService.ConnectionManager.Get().Conn.WriteMessage(websocket.TextMessage, []byte(text))
	if err != nil {
		return err
	}

	return nil
}
