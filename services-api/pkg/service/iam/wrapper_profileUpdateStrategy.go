// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iam

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/profile_update_strategy"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

// ProfileUpdateStrategyService this is use for compatibility with latest modular sdk only
// Deprecated: 2023-03-30 - please use ProfileUpdateStrategyService imported from "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
type ProfileUpdateStrategyService struct {
	Client           *iamclient.JusticeIamService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdProfileUpdateStrategy *string

func (aaa *ProfileUpdateStrategyService) UpdateFlightId(flightId string) {
	tempFlightIdProfileUpdateStrategy = &flightId
}

func (aaa *ProfileUpdateStrategyService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

func (aaa *ProfileUpdateStrategyService) AdminGetProfileUpdateStrategyV3Short(input *profile_update_strategy.AdminGetProfileUpdateStrategyV3Params) (*iamclientmodels.ModelGetProfileUpdateStrategyConfigResponse, error) {
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
	if tempFlightIdProfileUpdateStrategy != nil {
		input.XFlightId = tempFlightIdProfileUpdateStrategy
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.ProfileUpdateStrategy.AdminGetProfileUpdateStrategyV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *ProfileUpdateStrategyService) AdminUpdateProfileUpdateStrategyV3Short(input *profile_update_strategy.AdminUpdateProfileUpdateStrategyV3Params) (*iamclientmodels.ModelSimpleProfileUpdateStrategyConfigs, error) {
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
	if tempFlightIdProfileUpdateStrategy != nil {
		input.XFlightId = tempFlightIdProfileUpdateStrategy
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.ProfileUpdateStrategy.AdminUpdateProfileUpdateStrategyV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *ProfileUpdateStrategyService) PublicGetProfileUpdateStrategyV3Short(input *profile_update_strategy.PublicGetProfileUpdateStrategyV3Params) (*iamclientmodels.ModelGetProfileUpdateStrategyConfigResponse, error) {
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
	if tempFlightIdProfileUpdateStrategy != nil {
		input.XFlightId = tempFlightIdProfileUpdateStrategy
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.ProfileUpdateStrategy.PublicGetProfileUpdateStrategyV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}