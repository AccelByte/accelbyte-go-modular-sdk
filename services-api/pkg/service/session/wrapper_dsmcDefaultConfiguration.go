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
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclient/d_s_m_c_default_configuration"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclientmodels"
	"github.com/go-openapi/runtime/client"
)

// DSMCDefaultConfigurationService this is use for compatibility with latest modular sdk only
// Deprecated: 2023-03-30 - please use DSMCDefaultConfigurationService imported from "github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg"
type DSMCDefaultConfigurationService struct {
	Client           *sessionclient.JusticeSessionService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdDSMCDefaultConfiguration *string

func (aaa *DSMCDefaultConfigurationService) UpdateFlightId(flightId string) {
	tempFlightIdDSMCDefaultConfiguration = &flightId
}

func (aaa *DSMCDefaultConfigurationService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

// Deprecated: 2022-01-10 - Please use AdminGetDSMCConfigurationDefaultShort instead.
func (aaa *DSMCDefaultConfigurationService) AdminGetDSMCConfigurationDefault(input *d_s_m_c_default_configuration.AdminGetDSMCConfigurationDefaultParams) (*sessionclientmodels.ModelsDefaultDSMCConfig, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.DsmcDefaultConfiguration.AdminGetDSMCConfigurationDefault(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *DSMCDefaultConfigurationService) AdminGetDSMCConfigurationDefaultShort(input *d_s_m_c_default_configuration.AdminGetDSMCConfigurationDefaultParams) (*sessionclientmodels.ModelsDefaultDSMCConfig, error) {
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
	if tempFlightIdDSMCDefaultConfiguration != nil {
		input.XFlightId = tempFlightIdDSMCDefaultConfiguration
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.DsmcDefaultConfiguration.AdminGetDSMCConfigurationDefaultShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
