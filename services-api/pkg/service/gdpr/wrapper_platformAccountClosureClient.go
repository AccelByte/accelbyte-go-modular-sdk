// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package gdpr

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/gdpr-sdk/pkg/gdprclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/gdpr-sdk/pkg/gdprclient/platform_account_closure_client"
	"github.com/AccelByte/accelbyte-go-modular-sdk/gdpr-sdk/pkg/gdprclientmodels"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

// PlatformAccountClosureClientService this is use for compatibility with latest modular sdk only
// Deprecated: 2023-03-30 - please use PlatformAccountClosureClientService imported from "github.com/AccelByte/accelbyte-go-modular-sdk/gdpr-sdk/pkg"
type PlatformAccountClosureClientService struct {
	Client           *gdprclient.JusticeGdprService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdPlatformAccountClosureClient *string

func (aaa *PlatformAccountClosureClientService) UpdateFlightId(flightId string) {
	tempFlightIdPlatformAccountClosureClient = &flightId
}

func (aaa *PlatformAccountClosureClientService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

func (aaa *PlatformAccountClosureClientService) AdminGetPlatformAccountClosureClientShort(input *platform_account_closure_client.AdminGetPlatformAccountClosureClientParams) (*gdprclientmodels.DTOPlatformAccountClosureClientResponse, error) {
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
	if tempFlightIdPlatformAccountClosureClient != nil {
		input.XFlightId = tempFlightIdPlatformAccountClosureClient
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.PlatformAccountClosureClient.AdminGetPlatformAccountClosureClientShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PlatformAccountClosureClientService) AdminUpdatePlatformAccountClosureClientShort(input *platform_account_closure_client.AdminUpdatePlatformAccountClosureClientParams) error {
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
	if tempFlightIdPlatformAccountClosureClient != nil {
		input.XFlightId = tempFlightIdPlatformAccountClosureClient
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.PlatformAccountClosureClient.AdminUpdatePlatformAccountClosureClientShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *PlatformAccountClosureClientService) AdminDeletePlatformAccountClosureClientShort(input *platform_account_closure_client.AdminDeletePlatformAccountClosureClientParams) error {
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
	if tempFlightIdPlatformAccountClosureClient != nil {
		input.XFlightId = tempFlightIdPlatformAccountClosureClient
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.PlatformAccountClosureClient.AdminDeletePlatformAccountClosureClientShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}