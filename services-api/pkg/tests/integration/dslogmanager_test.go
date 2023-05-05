// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"testing"

	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"

	"github.com/AccelByte/accelbyte-go-sdk/dslogmanager-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-sdk/dslogmanager-sdk/pkg/dslogmanagerclient/terminated_servers"
)

var (
	terminatedServersService = &dslogmanager.TerminatedServersService{
		Client:          dslogmanager.NewDslogmanagerClient(auth.DefaultConfigRepositoryImpl()),
		TokenRepository: tokenRepository,
	}
	limit = int64(20)
)

func TestIntegrationListTerminatedServers(t *testing.T) {
	t.Parallel()

	// Login User - Arrange
	Init()

	// CASE Get all terminated servers
	inputTerminatedServer := &terminated_servers.ListTerminatedServersParams{
		Namespace: integration.NamespaceTest,
		Limit:     &limit,
	}

	ok, err := terminatedServersService.ListTerminatedServersShort(inputTerminatedServer)
	if err != nil {
		assert.FailNow(t, err.Error())
	}
	// ESAC

	// Assert
	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}
