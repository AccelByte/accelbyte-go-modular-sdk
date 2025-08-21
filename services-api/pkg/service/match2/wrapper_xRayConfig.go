// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package match2

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg/match2client"
	"github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg/match2client/x_ray_config"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

// XRayConfigService this is use for compatibility with latest modular sdk only
// Deprecated: 2023-03-30 - please use XRayConfigService imported from "github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg"
type XRayConfigService struct {
	Client           *match2client.JusticeMatch2Service
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdXRayConfig *string

func (aaa *XRayConfigService) UpdateFlightId(flightId string) {
	tempFlightIdXRayConfig = &flightId
}

func (aaa *XRayConfigService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

func (aaa *XRayConfigService) AdminGetXRayConfigShort(input *x_ray_config.AdminGetXRayConfigParams) (*x_ray_config.AdminGetXRayConfigResponse, error) {
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
	if tempFlightIdXRayConfig != nil {
		input.XFlightId = tempFlightIdXRayConfig
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.XRayConfig.AdminGetXRayConfigShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *XRayConfigService) AdminUpdateXRayConfigShort(input *x_ray_config.AdminUpdateXRayConfigParams) error {
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
	if tempFlightIdXRayConfig != nil {
		input.XFlightId = tempFlightIdXRayConfig
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.XRayConfig.AdminUpdateXRayConfigShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}
