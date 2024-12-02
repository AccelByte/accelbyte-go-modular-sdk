// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dslogmanager

import (
	"io"

	"github.com/AccelByte/accelbyte-go-modular-sdk/dslogmanager-sdk/pkg/dslogmanagerclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/dslogmanager-sdk/pkg/dslogmanagerclient/all_terminated_servers"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

type AllTerminatedServersService struct {
	Client           *dslogmanagerclient.JusticeDslogmanagerService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdAllTerminatedServers *string

func (aaa *AllTerminatedServersService) UpdateFlightId(flightId string) {
	tempFlightIdAllTerminatedServers = &flightId
}

func (aaa *AllTerminatedServersService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

func (aaa *AllTerminatedServersService) BatchDownloadServerLogsShort(input *all_terminated_servers.BatchDownloadServerLogsParams, writer io.Writer) (*all_terminated_servers.BatchDownloadServerLogsResponse, error) {
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
	if tempFlightIdAllTerminatedServers != nil {
		input.XFlightId = tempFlightIdAllTerminatedServers
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.AllTerminatedServers.BatchDownloadServerLogsShort(input, authInfoWriter, writer)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *AllTerminatedServersService) ListMetadataServersShort(input *all_terminated_servers.ListMetadataServersParams) (*all_terminated_servers.ListMetadataServersResponse, error) {
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
	if tempFlightIdAllTerminatedServers != nil {
		input.XFlightId = tempFlightIdAllTerminatedServers
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.AllTerminatedServers.ListMetadataServersShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *AllTerminatedServersService) ListAllTerminatedServersShort(input *all_terminated_servers.ListAllTerminatedServersParams) (*all_terminated_servers.ListAllTerminatedServersResponse, error) {
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
	if tempFlightIdAllTerminatedServers != nil {
		input.XFlightId = tempFlightIdAllTerminatedServers
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.AllTerminatedServers.ListAllTerminatedServersShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}
