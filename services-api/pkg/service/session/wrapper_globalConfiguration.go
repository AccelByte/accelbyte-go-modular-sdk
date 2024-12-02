// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package session

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclient/global_configuration"
)

// GlobalConfigurationService this is use for compatibility with latest modular sdk only
// Deprecated: 2023-03-30 - please use GlobalConfigurationService imported from "github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg"
type GlobalConfigurationService struct {
	Client           *sessionclient.JusticeSessionService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdGlobalConfiguration *string

func (aaa *GlobalConfigurationService) UpdateFlightId(flightId string) {
	tempFlightIdGlobalConfiguration = &flightId
}

func (aaa *GlobalConfigurationService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

func (aaa *GlobalConfigurationService) AdminListGlobalConfigurationShort(input *global_configuration.AdminListGlobalConfigurationParams) (*global_configuration.AdminListGlobalConfigurationResponse, error) {
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
	if tempFlightIdGlobalConfiguration != nil {
		input.XFlightId = tempFlightIdGlobalConfiguration
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.GlobalConfiguration.AdminListGlobalConfigurationShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *GlobalConfigurationService) AdminUpdateGlobalConfigurationShort(input *global_configuration.AdminUpdateGlobalConfigurationParams) (*global_configuration.AdminUpdateGlobalConfigurationResponse, error) {
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
	if tempFlightIdGlobalConfiguration != nil {
		input.XFlightId = tempFlightIdGlobalConfiguration
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.GlobalConfiguration.AdminUpdateGlobalConfigurationShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *GlobalConfigurationService) AdminDeleteGlobalConfigurationShort(input *global_configuration.AdminDeleteGlobalConfigurationParams) (*global_configuration.AdminDeleteGlobalConfigurationResponse, error) {
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
	if tempFlightIdGlobalConfiguration != nil {
		input.XFlightId = tempFlightIdGlobalConfiguration
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	noContent, err := aaa.Client.GlobalConfiguration.AdminDeleteGlobalConfigurationShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return noContent, nil
}
