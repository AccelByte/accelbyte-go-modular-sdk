// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package leaderboard

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/leaderboard-sdk/pkg/leaderboardclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/leaderboard-sdk/pkg/leaderboardclient/user_visibility"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

type UserVisibilityService struct {
	Client           *leaderboardclient.JusticeLeaderboardService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdUserVisibility *string

func (aaa *UserVisibilityService) UpdateFlightId(flightId string) {
	tempFlightIdUserVisibility = &flightId
}

func (aaa *UserVisibilityService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

func (aaa *UserVisibilityService) GetHiddenUsersV2Short(input *user_visibility.GetHiddenUsersV2Params) (*user_visibility.GetHiddenUsersV2Response, error) {
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
	if tempFlightIdUserVisibility != nil {
		input.XFlightId = tempFlightIdUserVisibility
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.UserVisibility.GetHiddenUsersV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *UserVisibilityService) GetUserVisibilityStatusV2Short(input *user_visibility.GetUserVisibilityStatusV2Params) (*user_visibility.GetUserVisibilityStatusV2Response, error) {
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
	if tempFlightIdUserVisibility != nil {
		input.XFlightId = tempFlightIdUserVisibility
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.UserVisibility.GetUserVisibilityStatusV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *UserVisibilityService) SetUserLeaderboardVisibilityStatusV2Short(input *user_visibility.SetUserLeaderboardVisibilityStatusV2Params) (*user_visibility.SetUserLeaderboardVisibilityStatusV2Response, error) {
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
	if tempFlightIdUserVisibility != nil {
		input.XFlightId = tempFlightIdUserVisibility
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.UserVisibility.SetUserLeaderboardVisibilityStatusV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *UserVisibilityService) SetUserVisibilityStatusV2Short(input *user_visibility.SetUserVisibilityStatusV2Params) (*user_visibility.SetUserVisibilityStatusV2Response, error) {
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
	if tempFlightIdUserVisibility != nil {
		input.XFlightId = tempFlightIdUserVisibility
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.UserVisibility.SetUserVisibilityStatusV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}
