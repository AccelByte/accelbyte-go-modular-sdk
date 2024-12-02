// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dsartifact

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/dsartifact-sdk/pkg/dsartifactclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/dsartifact-sdk/pkg/dsartifactclient/terminated_servers"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

type TerminatedServersService struct {
	Client           *dsartifactclient.JusticeDsartifactService
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

func (aaa *TerminatedServersService) ListTerminatedServersWithNamespaceShort(input *terminated_servers.ListTerminatedServersWithNamespaceParams) (*terminated_servers.ListTerminatedServersWithNamespaceResponse, error) {
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

	ok, err := aaa.Client.TerminatedServers.ListTerminatedServersWithNamespaceShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}
