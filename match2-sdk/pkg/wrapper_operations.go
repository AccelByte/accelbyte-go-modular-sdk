// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package match2

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg/match2client"
	"github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg/match2client/operations"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

type OperationsService struct {
	Client  *match2client.JusticeMatch2Service
	Session repository.Session
}

var tempFlightIdOperations *string

func (aaa *OperationsService) UpdateFlightId(flightId string) {
	tempFlightIdOperations = &flightId
}

func (aaa *OperationsService) GetAuthSession() auth.Session {
	return auth.Session{
		Token:   aaa.Session.TokenRepository,
		Config:  aaa.Session.ConfigRepository,
		Refresh: nil,
	}
}

func (aaa *OperationsService) GetHealthcheckInfoShort(input *operations.GetHealthcheckInfoParams) error {
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
	if tempFlightIdOperations != nil {
		input.XFlightId = tempFlightIdOperations
	} else if aaa.Session.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.Session.FlightIdRepository.Value)
	}

	_, err := aaa.Client.Operations.GetHealthcheckInfoShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *OperationsService) GetHealthcheckInfoV1Short(input *operations.GetHealthcheckInfoV1Params) error {
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
	if tempFlightIdOperations != nil {
		input.XFlightId = tempFlightIdOperations
	} else if aaa.Session.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.Session.FlightIdRepository.Value)
	}

	_, err := aaa.Client.Operations.GetHealthcheckInfoV1Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *OperationsService) VersionCheckHandlerShort(input *operations.VersionCheckHandlerParams) error {
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
	if tempFlightIdOperations != nil {
		input.XFlightId = tempFlightIdOperations
	} else if aaa.Session.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.Session.FlightIdRepository.Value)
	}

	_, err := aaa.Client.Operations.VersionCheckHandlerShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}
