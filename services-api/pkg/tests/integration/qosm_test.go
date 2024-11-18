// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"testing"

	"github.com/stretchr/testify/assert"

	qosm "github.com/AccelByte/accelbyte-go-modular-sdk/qosm-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/qosm-sdk/pkg/qosmclient/public"
	"github.com/AccelByte/accelbyte-go-modular-sdk/qosm-sdk/pkg/qosmclient/server"
	"github.com/AccelByte/accelbyte-go-modular-sdk/qosm-sdk/pkg/qosmclientmodels"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

// ListServer + Heartbeat
func TestIntegrationListServerHeartbeat(t *testing.T) {
	t.Skipf("temporarily disabled") // Armada is deprecated

	// Login User - Arrange
	Init()

	qosmConfigRepo := auth.DefaultConfigRepositoryImpl()
	qosmTokenRepo := tokenRepository
	qosmClient := qosm.NewQosmClient(qosmConfigRepo)

	publicService := &qosm.PublicService{
		Client:          qosmClient,
		TokenRepository: qosmTokenRepo,
	}

	inputListServer := &public.ListServerParams{}

	listServerOk, errListSertver := publicService.ListServerShort(inputListServer)

	// Assert
	assert.Nil(t, errListSertver, "err should be nil")

	if len(listServerOk.Data.Servers) == 0 {
		t.Skip("response 'Servers' is empty")
	}

	firstServer := listServerOk.Data.Servers[0]
	heartbeatRequest := qosmclientmodels.ModelsHeartbeatRequest{
		IP:     firstServer.IP,
		Port:   firstServer.Port,
		Region: firstServer.Region,
	}
	inputHeartbeat := &server.HeartbeatParams{
		Body: &heartbeatRequest,
	}

	serverService := &qosm.ServerService{
		Client:          qosmClient,
		TokenRepository: qosmTokenRepo,
	}

	err := serverService.HeartbeatShort(inputHeartbeat)

	// Assert
	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, listServerOk, "response should not be nil")
}
