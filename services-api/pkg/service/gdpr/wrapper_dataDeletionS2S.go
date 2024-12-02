// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package gdpr

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/gdpr-sdk/pkg/gdprclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/gdpr-sdk/pkg/gdprclient/data_deletion_s2_s"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

// DataDeletionS2SService this is use for compatibility with latest modular sdk only
// Deprecated: 2023-03-30 - please use DataDeletionS2SService imported from "github.com/AccelByte/accelbyte-go-modular-sdk/gdpr-sdk/pkg"
type DataDeletionS2SService struct {
	Client           *gdprclient.JusticeGdprService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdDataDeletionS2S *string

func (aaa *DataDeletionS2SService) UpdateFlightId(flightId string) {
	tempFlightIdDataDeletionS2S = &flightId
}

func (aaa *DataDeletionS2SService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

func (aaa *DataDeletionS2SService) S2SGetListFinishedAccountDeletionRequestShort(input *data_deletion_s2_s.S2SGetListFinishedAccountDeletionRequestParams) (*data_deletion_s2_s.S2SGetListFinishedAccountDeletionRequestResponse, error) {
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
	if tempFlightIdDataDeletionS2S != nil {
		input.XFlightId = tempFlightIdDataDeletionS2S
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.DataDeletionS2s.S2SGetListFinishedAccountDeletionRequestShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *DataDeletionS2SService) S2SSubmitUserAccountDeletionRequestShort(input *data_deletion_s2_s.S2SSubmitUserAccountDeletionRequestParams) (*data_deletion_s2_s.S2SSubmitUserAccountDeletionRequestResponse, error) {
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
	if tempFlightIdDataDeletionS2S != nil {
		input.XFlightId = tempFlightIdDataDeletionS2S
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	created, err := aaa.Client.DataDeletionS2s.S2SSubmitUserAccountDeletionRequestShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created, nil
}
