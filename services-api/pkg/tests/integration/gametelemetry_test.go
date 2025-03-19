// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"strings"
	"testing"

	"github.com/go-openapi/strfmt"
	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-modular-sdk/gametelemetry-sdk/pkg/gametelemetryclient/gametelemetry_operations"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"

	gametelemetry "github.com/AccelByte/accelbyte-go-modular-sdk/gametelemetry-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/gametelemetry-sdk/pkg/gametelemetryclientmodels"
)

var (
	gameTelemetryOperationsService = &gametelemetry.GametelemetryOperationsService{
		Client:          gametelemetry.NewGametelemetryClient(auth.DefaultConfigRepositoryImpl()),
		TokenRepository: tokenRepository,
	}
	telemetryBodyArray []*gametelemetryclientmodels.TelemetryBody
	telemetryBody      = &gametelemetryclientmodels.TelemetryBody{
		EventID:        eventID,
		EventName:      &eventName,
		EventNamespace: &eventNamespace,
		EventTimestamp: &eventTimestamp,
		Payload:        map[string]interface{}{"foo": "bar"},
	}
	eventID        = "gosdk"
	eventName      = "gosdkevent"
	eventNamespace = "test"
	eventTimestamp = strfmt.DateTime{}
	steamId        = "76561199259217491"
)

func TestIntegrationProtectedSaveEventsGameTelemetryV1ProtectedEventsPost(t *testing.T) {
	if strings.Contains(configRepository.BaseUrl, "gamingservices.accelbyte.io") {
		t.Skip("skip for ags starter")
	}

	// Login User - Arrange
	Init()

	// CASE Protected Save Events
	telemetryBodyArray = append(telemetryBodyArray, telemetryBody)
	input := &gametelemetry_operations.ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams{
		Body: telemetryBodyArray,
	}

	err := gameTelemetryOperationsService.ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostShort(input)
	if err != nil {
		assert.FailNow(t, err.Error())
	}
	// ESAC

	// Assert
	assert.Nil(t, err, "err should be nil")
}
