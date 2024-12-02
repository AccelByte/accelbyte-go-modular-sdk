// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package leaderboard

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/leaderboard-sdk/pkg/leaderboardclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/leaderboard-sdk/pkg/leaderboardclient/user_data_v3"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

// UserDataV3Service this is use for compatibility with latest modular sdk only
// Deprecated: 2023-03-30 - please use UserDataV3Service imported from "github.com/AccelByte/accelbyte-go-modular-sdk/leaderboard-sdk/pkg"
type UserDataV3Service struct {
	Client           *leaderboardclient.JusticeLeaderboardService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdUserDataV3 *string

func (aaa *UserDataV3Service) UpdateFlightId(flightId string) {
	tempFlightIdUserDataV3 = &flightId
}

func (aaa *UserDataV3Service) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

func (aaa *UserDataV3Service) GetUserLeaderboardRankingsAdminV3Short(input *user_data_v3.GetUserLeaderboardRankingsAdminV3Params) (*user_data_v3.GetUserLeaderboardRankingsAdminV3Response, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdUserDataV3 != nil {
		input.XFlightId = tempFlightIdUserDataV3
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.UserDataV3.GetUserLeaderboardRankingsAdminV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}
