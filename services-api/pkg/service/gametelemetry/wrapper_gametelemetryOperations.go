// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package gametelemetry

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/gametelemetry-sdk/pkg/gametelemetryclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/gametelemetry-sdk/pkg/gametelemetryclient/gametelemetry_operations"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/constant"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

// GametelemetryOperationsService this is use for compatibility with latest modular sdk only
// Deprecated: 2023-03-30 - please use GametelemetryOperationsService imported from "github.com/AccelByte/accelbyte-go-modular-sdk/gametelemetry-sdk/pkg"
type GametelemetryOperationsService struct {
	Client           *gametelemetryclient.JusticeGametelemetryService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdGametelemetryOperations *string

func (aaa *GametelemetryOperationsService) UpdateFlightId(flightId string) {
	tempFlightIdGametelemetryOperations = &flightId
}

func (aaa *GametelemetryOperationsService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

func (aaa *GametelemetryOperationsService) ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostShort(input *gametelemetry_operations.ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
			{"cookie"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, constant.AccessToken)
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdGametelemetryOperations != nil {
		input.XFlightId = tempFlightIdGametelemetryOperations
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.GametelemetryOperations.ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *GametelemetryOperationsService) ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetShort(input *gametelemetry_operations.ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetParams) (*gametelemetry_operations.ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
			{"cookie"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, constant.AccessToken)
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdGametelemetryOperations != nil {
		input.XFlightId = tempFlightIdGametelemetryOperations
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.GametelemetryOperations.ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *GametelemetryOperationsService) ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutShort(input *gametelemetry_operations.ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams) (*gametelemetry_operations.ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
			{"cookie"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, constant.AccessToken)
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdGametelemetryOperations != nil {
		input.XFlightId = tempFlightIdGametelemetryOperations
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.GametelemetryOperations.ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}
