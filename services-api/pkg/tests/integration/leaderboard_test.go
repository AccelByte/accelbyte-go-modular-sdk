// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"math/rand"
	"testing"
	"time"

	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/tests/integration"

	leaderboard "github.com/AccelByte/accelbyte-go-modular-sdk/leaderboard-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/leaderboard-sdk/pkg/leaderboardclient/leaderboard_configuration"
	"github.com/AccelByte/accelbyte-go-modular-sdk/leaderboard-sdk/pkg/leaderboardclientmodels"
	"github.com/AccelByte/accelbyte-go-modular-sdk/social-sdk/pkg/socialclient/stat_configuration"
)

const letterBytes = "abcdefghijklmnopqrstuvwxyz1234567890"

var (
	leaderboardConfigurationService = &leaderboard.LeaderboardConfigurationService{
		Client:          leaderboard.NewLeaderboardClient(auth.DefaultConfigRepositoryImpl()),
		TokenRepository: tokenRepository,
	}
	nameLeaderboard     = "test"
	timeLeaderboard     = "12:00"
	dateLeaderboard     = int64(1)
	descending          = false
	iconURL             = ""
	leaderboardCode     string
	seasonPeriod        = int32(0)
	statCodeLeaderboard = "testgo"
	startTime           = "2022-07-22T00:00:00Z"
	daily               = &leaderboardclientmodels.ModelsDailyConfig{
		ResetTime: &timeLeaderboard,
	}
	monthly = &leaderboardclientmodels.ModelsMonthlyConfig{
		ResetTime: &timeLeaderboard,
		ResetDate: &dateLeaderboard,
	}
	weekly = &leaderboardclientmodels.ModelsWeeklyConfig{
		ResetTime: &timeLeaderboard,
		ResetDay:  &dateLeaderboard,
	}
	bodyReq = &leaderboardclientmodels.ModelsLeaderboardConfigReq{
		Daily:           daily,
		Descending:      &descending,
		IconURL:         &iconURL,
		LeaderboardCode: &leaderboardCode,
		Monthly:         monthly,
		Name:            &nameLeaderboard,
		SeasonPeriod:    &seasonPeriod,
		StartTime:       &startTime,
		StatCode:        &statCodeLeaderboard,
		Weekly:          weekly,
	}
	bodyReqUpdate = &leaderboardclientmodels.ModelsUpdateLeaderboardConfigReq{
		Daily:        daily,
		Descending:   &descending,
		IconURL:      &iconURL,
		Monthly:      monthly,
		Name:         &nameLeaderboard,
		SeasonPeriod: &seasonPeriod,
		StartTime:    &startTime,
		StatCode:     &statCodeLeaderboard,
		Weekly:       weekly,
	}
)

func TestIntegrationCreateLeaderboardConfigurationAdminV1(t *testing.T) {
	// Login User - Arrange
	Init()

	statCodeLeaderboard = checkStatCode(t) // check existing stat code
	rand.Seed(time.Now().UnixNano())
	timeNow := time.Now().UTC().AddDate(1, 0, 0)
	startTime = timeNow.Format("2006-01-02T15:04:05Z")
	randomString := RandStringBytes(5)
	leaderboardCode = randomString

	// CASE Create a leaderboard
	inputCreate := &leaderboard_configuration.CreateLeaderboardConfigurationAdminV1Params{
		Body:      bodyReq,
		Namespace: integration.NamespaceTest,
	}

	created, errCreate := leaderboardConfigurationService.CreateLeaderboardConfigurationAdminV1Short(inputCreate)
	if errCreate != nil {
		assert.FailNow(t, errCreate.Error())
	}
	t.Logf("Leaderboard Code: %v created", *created.Data.LeaderboardCode)
	// ESAC

	// Assert
	assert.Nil(t, errCreate, "err should be nil")
	assert.NotNil(t, created, "response should not be nil")

	// CASE Get a single leaderboard
	inputGet := &leaderboard_configuration.GetLeaderboardConfigurationAdminV1Params{
		LeaderboardCode: leaderboardCode,
		Namespace:       integration.NamespaceTest,
	}

	get, errGet := leaderboardConfigurationService.GetLeaderboardConfigurationAdminV1Short(inputGet)
	if errGet != nil {
		assert.FailNow(t, errGet.Error())
	}
	// ESAC

	// Assert
	assert.Nil(t, errGet, "err should be nil")
	assert.NotNil(t, get, "response should not be nil")

	// CASE Update a leaderboard
	inputUpdate := &leaderboard_configuration.UpdateLeaderboardConfigurationAdminV1Params{
		Body:            bodyReqUpdate,
		LeaderboardCode: leaderboardCode,
		Namespace:       integration.NamespaceTest,
	}

	updated, errUpdate := leaderboardConfigurationService.UpdateLeaderboardConfigurationAdminV1Short(inputUpdate)
	if errUpdate != nil {
		assert.FailNow(t, errUpdate.Error())
	}
	// ESAC

	// Assert
	assert.Nil(t, errUpdate, "err should be nil")
	assert.NotNil(t, updated, "response should not be nil")

	// CASE Delete a leaderboard
	inputLeaderboard := &leaderboard_configuration.DeleteLeaderboardConfigurationAdminV1Params{
		LeaderboardCode: leaderboardCode,
		Namespace:       integration.NamespaceTest,
	}

	errDelete := leaderboardConfigurationService.DeleteLeaderboardConfigurationAdminV1Short(inputLeaderboard)
	if errDelete != nil {
		assert.FailNow(t, errDelete.Error())
	}
	// ESAC

	// Assert
	assert.Nil(t, errDelete, "err should be nil")
}

func RandStringBytes(n int) string {
	b := make([]byte, n)
	for i := range b {
		rand.Seed(time.Now().UnixNano())
		b[i] = letterBytes[rand.Intn(len(letterBytes))]
	}

	return string(b)
}

func checkStatCode(t *testing.T) string {
	t.Helper()

	getStat, errGetStat := statConfigurationService.GetStatShort(&stat_configuration.GetStatParams{
		Namespace: integration.NamespaceTest,
		StatCode:  statCodeLeaderboard,
	})

	if getStat == nil {
		tagsSocial = append(tagsSocial, tag)
		bodyStatSocial.StatCode = &statCodeLeaderboard
		ok, err := statConfigurationService.CreateStatShort(&stat_configuration.CreateStatParams{
			Body:      bodyStatSocial,
			Namespace: integration.NamespaceTest,
		})
		if err != nil {
			assert.Nil(t, err)

			return ""
		}

		return *ok.Data.StatCode
	}

	if errGetStat != nil {
		assert.Nil(t, errGetStat)
	}

	return *getStat.Data.StatCode
}
