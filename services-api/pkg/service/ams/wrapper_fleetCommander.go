// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package ams

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg/amsclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg/amsclient/fleet_commander"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

// FleetCommanderService this is use for compatibility with latest modular sdk only
// Deprecated: 2023-03-30 - please use FleetCommanderService imported from "github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg"
type FleetCommanderService struct {
	Client  *amsclient.JusticeAmsService
	Session repository.Session
}

var tempFlightIdFleetCommander *string

func (aaa *FleetCommanderService) UpdateFlightId(flightId string) {
	tempFlightIdFleetCommander = &flightId
}

func (aaa *FleetCommanderService) GetAuthSession() auth.Session {
	return auth.Session{
		Token:   aaa.Session.TokenRepository,
		Config:  aaa.Session.ConfigRepository,
		Refresh: nil,
	}
}

func (aaa *FleetCommanderService) PortalHealthCheckShort(input *fleet_commander.PortalHealthCheckParams) error {
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
	if tempFlightIdFleetCommander != nil {
		input.XFlightId = tempFlightIdFleetCommander
	} else if aaa.Session.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.Session.FlightIdRepository.Value)
	}

	_, err := aaa.Client.FleetCommander.PortalHealthCheckShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *FleetCommanderService) VersionInfoShort(input *fleet_commander.VersionInfoParams) error {
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
	if tempFlightIdFleetCommander != nil {
		input.XFlightId = tempFlightIdFleetCommander
	} else if aaa.Session.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.Session.FlightIdRepository.Value)
	}

	_, err := aaa.Client.FleetCommander.VersionInfoShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *FleetCommanderService) BasicHealthCheckShort(input *fleet_commander.BasicHealthCheckParams) error {
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
	if tempFlightIdFleetCommander != nil {
		input.XFlightId = tempFlightIdFleetCommander
	} else if aaa.Session.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.Session.FlightIdRepository.Value)
	}

	_, err := aaa.Client.FleetCommander.BasicHealthCheckShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}
