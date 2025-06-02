// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package match2

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg/match2client"
	"github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg/match2client/play_feature_flag"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

type PlayFeatureFlagService struct {
	Client           *match2client.JusticeMatch2Service
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdPlayFeatureFlag *string

func (aaa *PlayFeatureFlagService) UpdateFlightId(flightId string) {
	tempFlightIdPlayFeatureFlag = &flightId
}

func (aaa *PlayFeatureFlagService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

func (aaa *PlayFeatureFlagService) AdminGetPlayFeatureFlagShort(input *play_feature_flag.AdminGetPlayFeatureFlagParams) (*play_feature_flag.AdminGetPlayFeatureFlagResponse, error) {
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
	if tempFlightIdPlayFeatureFlag != nil {
		input.XFlightId = tempFlightIdPlayFeatureFlag
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.PlayFeatureFlag.AdminGetPlayFeatureFlagShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *PlayFeatureFlagService) AdminUpsertPlayFeatureFlagShort(input *play_feature_flag.AdminUpsertPlayFeatureFlagParams) (*play_feature_flag.AdminUpsertPlayFeatureFlagResponse, error) {
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
	if tempFlightIdPlayFeatureFlag != nil {
		input.XFlightId = tempFlightIdPlayFeatureFlag
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.PlayFeatureFlag.AdminUpsertPlayFeatureFlagShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *PlayFeatureFlagService) AdminDeletePlayFeatureFlagShort(input *play_feature_flag.AdminDeletePlayFeatureFlagParams) error {
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
	if tempFlightIdPlayFeatureFlag != nil {
		input.XFlightId = tempFlightIdPlayFeatureFlag
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.PlayFeatureFlag.AdminDeletePlayFeatureFlagShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}
