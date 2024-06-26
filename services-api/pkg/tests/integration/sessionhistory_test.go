// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"testing"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/tests/integration"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
	sessionhistory "github.com/AccelByte/accelbyte-go-modular-sdk/sessionhistory-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/sessionhistory-sdk/pkg/sessionhistoryclient/game_session_detail"
	"github.com/stretchr/testify/assert"
)

var (
	sessionHistoryService = &sessionhistory.GameSessionDetailService{
		Client:          sessionhistory.NewSessionhistoryClient(auth.DefaultConfigRepositoryImpl()),
		TokenRepository: tokenRepository,
	}
)

func Test_AdminQueryGameSessionDetail(t *testing.T) {
	Init()

	// CASE Query a game session detail
	param := game_session_detail.NewAdminQueryGameSessionDetailParams()
	param.SetNamespace(integration.NamespaceTest)

	resp, err := sessionHistoryService.AdminQueryGameSessionDetailShort(param)
	// ESAC

	assert.NoError(t, err)

	assert.NotNil(t, resp)
}

func Test_AdminQueryMatchmakingDetail(t *testing.T) {
	Init()

	// CASE Query a matchmaking detail
	param := game_session_detail.NewAdminQueryMatchmakingDetailParams()
	param.SetNamespace(integration.NamespaceTest)

	resp, err := sessionHistoryService.AdminQueryMatchmakingDetailShort(param)
	// ESAC

	assert.NoError(t, err)

	assert.NotNil(t, resp)
}

func Test_AdminQueryPartyDetail(t *testing.T) {
	Init()

	// CASE Query a party detail
	param := game_session_detail.NewAdminQueryPartyDetailParams()
	param.SetNamespace(integration.NamespaceTest)

	resp, err := sessionHistoryService.AdminQueryPartyDetailShort(param)
	// ESAC

	assert.NoError(t, err)

	assert.NotNil(t, resp)
}
