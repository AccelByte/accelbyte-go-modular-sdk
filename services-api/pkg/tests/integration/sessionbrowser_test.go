// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"testing"

	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"

	"github.com/AccelByte/accelbyte-go-modular-sdk/sessionbrowser-sdk/pkg/sessionbrowserclient/session"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/tests/integration"

	"github.com/AccelByte/accelbyte-go-modular-sdk/sessionbrowser-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/sessionbrowser-sdk/pkg/sessionbrowserclientmodels"
)

var (
	sessionService = &sessionbrowser.SessionService{
		Client:          sessionbrowser.NewSessionbrowserClient(auth.DefaultConfigRepositoryImpl()),
		TokenRepository: tokenRepository,
	}
	namespaceSession   = integration.NamespaceTest
	sessionType        = "p2p" // "dedicated server can not be updated"
	mode               = "mode"
	mapName            = "mapName"
	emptyInt32         = int32(0)
	defaultInt32       = int32(1)
	defaultBool        = false
	gameSessionSetting = &sessionbrowserclientmodels.ModelsGameSessionSetting{
		AllowJoinInProgress:   &defaultBool,
		CurrentInternalPlayer: &emptyInt32,
		CurrentPlayer:         &emptyInt32,
		MapName:               &mapName,
		MaxInternalPlayer:     &emptyInt32,
		MaxPlayer:             &emptyInt32,
		Mode:                  &mode,
		NumBot:                &emptyInt32,
		Password:              &emptyString,
		Settings:              &emptyInterface,
	}
	bodySession = &sessionbrowserclientmodels.ModelsCreateSessionRequest{
		GameSessionSetting: gameSessionSetting,
		GameVersion:        &emptyString,
		Namespace:          &namespaceSession,
		SessionType:        &sessionType,
		Username:           &emptyString,
	}
	bodySessionUpdate = &sessionbrowserclientmodels.ModelsUpdateSessionRequest{
		GameMaxPlayer: &defaultInt32,
	}
)

func TestIntegrationSessionBrowser(t *testing.T) {
	// Login User - Arrange
	Init()

	// CASE Create a session
	inputCreate := &session.CreateSessionParams{
		Body:      bodySession,
		Namespace: integration.NamespaceTest,
	}

	created, errCreate := sessionService.CreateSessionShort(inputCreate)
	if errCreate != nil {
		assert.FailNow(t, errCreate.Error())
	}
	sessionBrowserID := *created.SessionID
	t.Logf("SessionID: %v created", sessionBrowserID)
	// ESAC

	// Assert
	assert.Nil(t, errCreate, "err should be nil")
	assert.NotNil(t, created, "response should not be nil")

	// CASE Get a session
	inputGet := &session.GetSessionParams{
		Namespace: integration.NamespaceTest,
		SessionID: sessionBrowserID,
	}

	get, errGet := sessionService.GetSessionShort(inputGet)
	if errGet != nil {
		assert.FailNow(t, errGet.Error())
	}
	// ESAC

	// Assert
	assert.Nil(t, errGet, "err should be nil")
	assert.NotNil(t, get, "response should not be nil")

	// CASE Update a session
	inputUpdate := &session.UpdateSessionParams{
		Body:      bodySessionUpdate,
		Namespace: integration.NamespaceTest,
		SessionID: sessionBrowserID,
	}

	updated, errUpdate := sessionService.UpdateSessionShort(inputUpdate)
	if errUpdate != nil {
		assert.FailNow(t, errUpdate.Error())
	}
	// ESAC

	// Assert
	assert.Nil(t, errUpdate, "err should be nil")
	assert.NotNil(t, updated, "response should not be nil")

	// CASE Delete a session
	inputDelete := &session.DeleteSessionParams{
		Namespace: integration.NamespaceTest,
		SessionID: sessionBrowserID,
	}

	deleted, errDelete := sessionService.DeleteSessionShort(inputDelete)
	if errDelete != nil {
		assert.FailNow(t, errDelete.Error())
	}
	// ESAC

	// Assert
	assert.Nil(t, errDelete, "err should be nil")
	assert.NotNil(t, deleted, "response should not be nil")
}
