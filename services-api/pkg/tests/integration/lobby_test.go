// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"bufio"
	"bytes"
	"os"
	"strings"
	"testing"

	"github.com/sirupsen/logrus"
	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/tests/integration"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/wsm"

	lobby "github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/connectionutils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/lobbyclient/admin"
	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/lobbyclient/config"
	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/lobbyclient/notification"
	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/lobbyclientmodels/model"
)

var (
	connMgr             wsm.ConnectionManager
	msgType             string
	notificationService = &lobby.NotificationServiceWebsocket{
		ConfigRepository:  oAuth20Service.ConfigRepository,
		TokenRepository:   oAuth20Service.TokenRepository,
		ConnectionManager: connMgr,
	}
	lobbyMessageHandler = func(dataByte []byte) {

		msg := decodeWSMessage(string(dataByte))

		if v, ok := msg["type"]; ok {
			msgType = v
		}
		switch msgType {
		case model.TypeNotificationMessage:
		}
	}
)

func decodeWSMessage(msg string) map[string]string {
	scanner := bufio.NewScanner(strings.NewReader(msg))
	res := make(map[string]string)

	for scanner.Scan() {
		str := scanner.Text()
		keyValue := strings.Split(str, ": ")
		if len(keyValue) == 2 {
			res[keyValue[0]] = keyValue[1]
		}
	}

	if err := scanner.Err(); err != nil {
		logrus.Errorf("error reading websocket message: %v", err)
	}

	return res
}

func TestIntegrationNotification(t *testing.T) {
	t.Parallel()

	var scheme string
	if strings.Contains(configRepository.BaseUrl, "accelbyte") {
		scheme = "wss"
	} else {
		scheme = "ws"
	}

	// Login User - Arrange
	Init()
	connMgr = &wsm.DefaultConnectionManagerImpl{}
	connection, err := wsm.NewWSConnection(
		oAuth20Service.ConfigRepository,
		oAuth20Service.TokenRepository,
		wsm.WithScheme(scheme),
		wsm.WithMessageHandler(lobbyMessageHandler))
	assert.Nil(t, err, "err should be nil")

	lobbyClient := connectionutils.NewLobbyWebSocketClient(connection)
	assert.NotNil(t, lobbyClient)

	success, err := lobbyClient.Connect(false)
	assert.True(t, success)
	assert.Nil(t, err, "err should be nil")

	connMgr.Save(connection)

	// CASE Lobby get a notification
	err = notificationService.GetNotificationMessage()
	// ESAC

	// Assert
	assert.Nil(t, err, "err should be nil")

	// CASE Lobby get offline notification
	err = notificationService.GetOfflineNotification()
	// ESAC

	// Assert
	assert.Nil(t, err, "err should be nil")
}

func TestIntegrationLobbyFreeFormNotification(t *testing.T) {
	// Login User - Arrange
	oAuth20Service := integration.LoginUser(t)

	lobbyAdminSvc := &lobby.AdminService{
		Client:           lobby.NewLobbyClient(oAuth20Service.ConfigRepository),
		ConfigRepository: oAuth20Service.ConfigRepository,
		TokenRepository:  oAuth20Service.TokenRepository,
	}

	topic := "go_server_sdk_integration_test"
	message := "This is a Go Extend SDK integration test"

	// CASE Lobby free form notification
	err := lobbyAdminSvc.FreeFormNotificationShort(&admin.FreeFormNotificationParams{
		Body: &lobbyclientmodels.ModelFreeFormNotificationRequest{
			Message: &message,
			Topic:   &topic,
		},
		Namespace: integration.NamespaceTest,
	})

	// ESAC

	// Assert
	assert.NoError(t, err)
}

func TestIntegrationLobbyService(t *testing.T) {
	var scheme string
	if strings.Contains(configRepository.BaseUrl, "accelbyte") {
		scheme = "wss"
	} else {
		scheme = "ws"
	}

	// Login User - Arrange
	Init()
	connMgr = &wsm.DefaultConnectionManagerImpl{}
	connection, err := wsm.NewWSConnection(
		oAuth20Service.ConfigRepository,
		oAuth20Service.TokenRepository,
		wsm.WithScheme(scheme),
		wsm.WithMessageHandler(lobbyMessageHandler))
	assert.Nil(t, err, "err should be nil")

	lobbyClient := connectionutils.NewLobbyWebSocketClient(connection)
	assert.NotNil(t, lobbyClient)

	success, err := lobbyClient.Connect(false)
	assert.True(t, success)
	assert.Nil(t, err, "err should be nil")

	connMgr.Save(connection)

	lobbyWebsocketSvc := &lobby.LobbyServiceWebsocket{
		ConfigRepository:  oAuth20Service.ConfigRepository,
		TokenRepository:   oAuth20Service.TokenRepository,
		ConnectionManager: connMgr,
	}

	id := ""

	// CASE Lobby party create request
	err = lobbyWebsocketSvc.PartyCreateRequest(&id)

	// ESAC

	// Assert
	assert.Nil(t, err)
}

func TestIntegrationLobbyNotificationTopics(t *testing.T) {
	// prepare
	oauthSvc := integration.LoginUser(t)
	lobbyNotifSvc := &lobby.NotificationService{
		Client:           lobby.NewLobbyClient(oauthSvc.ConfigRepository),
		ConfigRepository: oauthSvc.ConfigRepository,
		TokenRepository:  oauthSvc.TokenRepository,
	}
	desc := "go lobby notification topics integration test"
	topic := "GOINTEGRATIONTESTTOPIC"
	_ = lobbyNotifSvc.DeleteNotificationTopicV1AdminShort(&notification.DeleteNotificationTopicV1AdminParams{
		TopicName: topic,
		Namespace: integration.NamespaceTest,
	})

	// tests run
	t.Run("Admin create notification topics", func(t *testing.T) {
		err := lobbyNotifSvc.CreateNotificationTopicV1AdminShort(&notification.CreateNotificationTopicV1AdminParams{
			Body: &lobbyclientmodels.ModelCreateTopicRequestV1{
				Description: &desc,
				TopicName:   &topic,
			},
			Namespace: integration.NamespaceTest,
		})
		assert.NoError(t, err)
	})

	//
	t.Run("Admin get notification topics admin", func(t *testing.T) {
		resp, err := lobbyNotifSvc.GetNotificationTopicV1AdminShort(&notification.GetNotificationTopicV1AdminParams{
			TopicName: topic,
			Namespace: integration.NamespaceTest,
		})
		assert.NoError(t, err)
		assert.NotNil(t, resp)
		assert.Equal(t, topic, *resp.Data.TopicName)
	})

	//
	t.Run("Admin update notification topics admin", func(t *testing.T) {
		newDesc := "[updated] go lobby notification topics integration test"
		err := lobbyNotifSvc.UpdateNotificationTopicV1AdminShort(&notification.UpdateNotificationTopicV1AdminParams{
			Body: &lobbyclientmodels.ModelUpdateTopicRequest{
				Description: &newDesc,
			},
			Namespace: integration.NamespaceTest,
			TopicName: topic,
		})
		assert.NoError(t, err)
	})

	//
	t.Run("Admin delete notification topics admin", func(t *testing.T) {
		err := lobbyNotifSvc.DeleteNotificationTopicV1AdminShort(&notification.DeleteNotificationTopicV1AdminParams{
			Namespace: integration.NamespaceTest,
			TopicName: topic,
		})
		assert.NoError(t, err)
	})
}

func TestIntegrationLobbyNotificationTemplates(t *testing.T) {
	// prepare
	oauthSvc := integration.LoginUser(t)
	lobbyNotifSvc := &lobby.NotificationService{
		Client:           lobby.NewLobbyClient(oauthSvc.ConfigRepository),
		ConfigRepository: oauthSvc.ConfigRepository,
		TokenRepository:  oauthSvc.TokenRepository,
	}
	templSlug := "GoIntegrationTestTemplate"
	templLang := "en"
	templContent := "go integration test notification template content"
	updatedTemplContent := "[updated] go integration test content"
	_ = lobbyNotifSvc.DeleteNotificationTemplateSlugV1AdminShort(&notification.DeleteNotificationTemplateSlugV1AdminParams{
		Namespace:    integration.NamespaceTest,
		TemplateSlug: templSlug,
	})

	// tests run
	t.Run("Admin create notification templates", func(t *testing.T) {
		err := lobbyNotifSvc.CreateNotificationTemplateV1AdminShort(&notification.CreateNotificationTemplateV1AdminParams{
			Body: &lobbyclientmodels.ModelCreateTemplateRequest{
				TemplateContent:  &templContent,
				TemplateLanguage: &templLang,
				TemplateSlug:     &templSlug,
			},
			Namespace: integration.NamespaceTest,
		})
		assert.NoError(t, err)
	})

	t.Run("Admin get notification templates", func(t *testing.T) {
		resp, err := lobbyNotifSvc.GetTemplateSlugLocalizationsTemplateV1AdminShort(&notification.GetTemplateSlugLocalizationsTemplateV1AdminParams{
			Namespace:    integration.NamespaceTest,
			TemplateSlug: templSlug,
		})
		assert.NoError(t, err)
		assert.NotNil(t, resp)
		assert.NotEmpty(t, resp.Data)
		assert.Equal(t, templLang, *resp.Data.Data[0].TemplateLanguage)
		assert.Equal(t, templContent, *resp.Data.Data[0].TemplateContent.Draft)
	})

	t.Run("Admin update template language", func(t *testing.T) {
		err := lobbyNotifSvc.UpdateTemplateLocalizationV1AdminShort(&notification.UpdateTemplateLocalizationV1AdminParams{
			Body: &lobbyclientmodels.ModelUpdateTemplateRequest{
				TemplateContent: &updatedTemplContent,
			},
			Namespace:        integration.NamespaceTest,
			TemplateLanguage: templLang,
			TemplateSlug:     templSlug,
		})
		assert.NoError(t, err)
	})

	t.Run("Admin delete notification template", func(t *testing.T) {
		err := lobbyNotifSvc.DeleteNotificationTemplateSlugV1AdminShort(&notification.DeleteNotificationTemplateSlugV1AdminParams{
			Namespace:    integration.NamespaceTest,
			TemplateSlug: templSlug,
		})
		assert.NoError(t, err)
	})
}

func TestIntegrationLobbyExportConfig(t *testing.T) {
	// prepare
	oauthSvc := integration.LoginUser(t)
	lobbyConfigSvc := &lobby.ConfigService{
		Client:           lobby.NewLobbyClient(oauthSvc.ConfigRepository),
		ConfigRepository: oauthSvc.ConfigRepository,
		TokenRepository:  oauthSvc.TokenRepository,
	}

	// tests run
	t.Run("Admin export config", func(t *testing.T) {
		// CASE Lobby admin export config
		file, errFile := os.Create("file")
		if errFile != nil {
			t.Errorf("Failed to create file: %v", errFile)
		}
		defer file.Close()

		logrus.Infof("Successfully created file: %v", file.Name())

		writer := bytes.NewBuffer(nil)

		export, err := lobbyConfigSvc.AdminExportConfigV1Short(&config.AdminExportConfigV1Params{
			Namespace: integration.NamespaceTest,
		}, writer)

		// ESAC

		// Assert
		assert.NoError(t, err)
		assert.NotNil(t, export)

		if _, errWrite := file.Write(writer.Bytes()); errWrite != nil {
			t.Errorf("Failed to write export data to file: %v", errWrite)
		}

		defer os.Remove("file")
	})
}
