// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dsartifact

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/dsartifact-sdk/pkg/dsartifactclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/dsartifact-sdk/pkg/dsartifactclient/download_server_artifact"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

type DownloadServerArtifactService struct {
	Client           *dsartifactclient.JusticeDsartifactService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdDownloadServerArtifact *string

func (aaa *DownloadServerArtifactService) UpdateFlightId(flightId string) {
	tempFlightIdDownloadServerArtifact = &flightId
}

func (aaa *DownloadServerArtifactService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

func (aaa *DownloadServerArtifactService) DownloadServerArtifactsShort(input *download_server_artifact.DownloadServerArtifactsParams) error {
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
	if tempFlightIdDownloadServerArtifact != nil {
		input.XFlightId = tempFlightIdDownloadServerArtifact
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.DownloadServerArtifact.DownloadServerArtifactsShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *DownloadServerArtifactService) CheckServerArtifactShort(input *download_server_artifact.CheckServerArtifactParams) (*download_server_artifact.CheckServerArtifactResponse, error) {
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
	if tempFlightIdDownloadServerArtifact != nil {
		input.XFlightId = tempFlightIdDownloadServerArtifact
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.DownloadServerArtifact.CheckServerArtifactShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}
