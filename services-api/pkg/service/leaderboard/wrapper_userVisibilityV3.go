// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package leaderboard

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/leaderboard-sdk/pkg/leaderboardclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/leaderboard-sdk/pkg/leaderboardclient/user_visibility_v3"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

// UserVisibilityV3Service this is use for compatibility with latest modular sdk only
// Deprecated: 2023-03-30 - please use UserVisibilityV3Service imported from "github.com/AccelByte/accelbyte-go-modular-sdk/leaderboard-sdk/pkg"
type UserVisibilityV3Service struct {
	Client           *leaderboardclient.JusticeLeaderboardService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdUserVisibilityV3 *string

func (aaa *UserVisibilityV3Service) UpdateFlightId(flightId string) {
	tempFlightIdUserVisibilityV3 = &flightId
}

func (aaa *UserVisibilityV3Service) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

func (aaa *UserVisibilityV3Service) GetHiddenUsersV3Short(input *user_visibility_v3.GetHiddenUsersV3Params) (*user_visibility_v3.GetHiddenUsersV3Response, error) {
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
	if tempFlightIdUserVisibilityV3 != nil {
		input.XFlightId = tempFlightIdUserVisibilityV3
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.UserVisibilityV3.GetHiddenUsersV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *UserVisibilityV3Service) GetUserVisibilityStatusV3Short(input *user_visibility_v3.GetUserVisibilityStatusV3Params) (*user_visibility_v3.GetUserVisibilityStatusV3Response, error) {
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
	if tempFlightIdUserVisibilityV3 != nil {
		input.XFlightId = tempFlightIdUserVisibilityV3
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.UserVisibilityV3.GetUserVisibilityStatusV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *UserVisibilityV3Service) SetUserLeaderboardVisibilityV3Short(input *user_visibility_v3.SetUserLeaderboardVisibilityV3Params) (*user_visibility_v3.SetUserLeaderboardVisibilityV3Response, error) {
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
	if tempFlightIdUserVisibilityV3 != nil {
		input.XFlightId = tempFlightIdUserVisibilityV3
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.UserVisibilityV3.SetUserLeaderboardVisibilityV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *UserVisibilityV3Service) SetUserVisibilityV3Short(input *user_visibility_v3.SetUserVisibilityV3Params) (*user_visibility_v3.SetUserVisibilityV3Response, error) {
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
	if tempFlightIdUserVisibilityV3 != nil {
		input.XFlightId = tempFlightIdUserVisibilityV3
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.UserVisibilityV3.SetUserVisibilityV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}
