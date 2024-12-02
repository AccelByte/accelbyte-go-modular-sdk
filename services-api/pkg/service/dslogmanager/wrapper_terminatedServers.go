// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dslogmanager

import (
	"io"

	"github.com/AccelByte/accelbyte-go-modular-sdk/dslogmanager-sdk/pkg/dslogmanagerclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/dslogmanager-sdk/pkg/dslogmanagerclient/terminated_servers"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

// TerminatedServersService this is use for compatibility with latest modular sdk only
// Deprecated: 2023-03-30 - please use TerminatedServersService imported from "github.com/AccelByte/accelbyte-go-modular-sdk/dslogmanager-sdk/pkg"
type TerminatedServersService struct {
	Client           *dslogmanagerclient.JusticeDslogmanagerService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdTerminatedServers *string

func (aaa *TerminatedServersService) UpdateFlightId(flightId string) {
	tempFlightIdTerminatedServers = &flightId
}

func (aaa *TerminatedServersService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

func (aaa *TerminatedServersService) ListTerminatedServersShort(input *terminated_servers.ListTerminatedServersParams) (*terminated_servers.ListTerminatedServersResponse, error) {
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
	if tempFlightIdTerminatedServers != nil {
		input.XFlightId = tempFlightIdTerminatedServers
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.TerminatedServers.ListTerminatedServersShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *TerminatedServersService) DownloadServerLogsShort(input *terminated_servers.DownloadServerLogsParams, writer io.Writer) (*terminated_servers.DownloadServerLogsResponse, error) {
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
	if tempFlightIdTerminatedServers != nil {
		input.XFlightId = tempFlightIdTerminatedServers
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.TerminatedServers.DownloadServerLogsShort(input, authInfoWriter, writer)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *TerminatedServersService) CheckServerLogsShort(input *terminated_servers.CheckServerLogsParams) (*terminated_servers.CheckServerLogsResponse, error) {
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
	if tempFlightIdTerminatedServers != nil {
		input.XFlightId = tempFlightIdTerminatedServers
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.TerminatedServers.CheckServerLogsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}
