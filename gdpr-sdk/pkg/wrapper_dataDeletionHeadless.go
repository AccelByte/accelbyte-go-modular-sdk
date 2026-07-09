// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package gdpr

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/gdpr-sdk/pkg/gdprclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/gdpr-sdk/pkg/gdprclient/data_deletion_headless"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

type DataDeletionHeadlessService struct {
	Client  *gdprclient.JusticeGdprService
	Session repository.Session
}

var tempFlightIdDataDeletionHeadless *string

func (aaa *DataDeletionHeadlessService) UpdateFlightId(flightId string) {
	tempFlightIdDataDeletionHeadless = &flightId
}

func (aaa *DataDeletionHeadlessService) GetAuthSession() auth.Session {
	return auth.Session{
		Token:   aaa.Session.TokenRepository,
		Config:  aaa.Session.ConfigRepository,
		Refresh: nil,
	}
}

func (aaa *DataDeletionHeadlessService) PublicSubmitMyAccountDeletionRequestShort(input *data_deletion_headless.PublicSubmitMyAccountDeletionRequestParams) (*data_deletion_headless.PublicSubmitMyAccountDeletionRequestResponse, error) {
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
	if tempFlightIdDataDeletionHeadless != nil {
		input.XFlightId = tempFlightIdDataDeletionHeadless
	} else if aaa.Session.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.Session.FlightIdRepository.Value)
	}

	created, err := aaa.Client.DataDeletionHeadless.PublicSubmitMyAccountDeletionRequestShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	if created == nil {
		return nil, nil
	}

	return created, nil
}

func (aaa *DataDeletionHeadlessService) PublicCancelMyAccountDeletionRequestShort(input *data_deletion_headless.PublicCancelMyAccountDeletionRequestParams) error {
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
	if tempFlightIdDataDeletionHeadless != nil {
		input.XFlightId = tempFlightIdDataDeletionHeadless
	} else if aaa.Session.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.Session.FlightIdRepository.Value)
	}

	_, err := aaa.Client.DataDeletionHeadless.PublicCancelMyAccountDeletionRequestShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *DataDeletionHeadlessService) PublicGetMyAccountDeletionStatusShort(input *data_deletion_headless.PublicGetMyAccountDeletionStatusParams) (*data_deletion_headless.PublicGetMyAccountDeletionStatusResponse, error) {
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
	if tempFlightIdDataDeletionHeadless != nil {
		input.XFlightId = tempFlightIdDataDeletionHeadless
	} else if aaa.Session.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.Session.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.DataDeletionHeadless.PublicGetMyAccountDeletionStatusShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	if ok == nil {
		return nil, nil
	}

	return ok, nil
}

func (aaa *DataDeletionHeadlessService) PublicSubmitMyHeadlessDeletionRequestShort(input *data_deletion_headless.PublicSubmitMyHeadlessDeletionRequestParams) (*data_deletion_headless.PublicSubmitMyHeadlessDeletionRequestResponse, error) {
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
	if tempFlightIdDataDeletionHeadless != nil {
		input.XFlightId = tempFlightIdDataDeletionHeadless
	} else if aaa.Session.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.Session.FlightIdRepository.Value)
	}

	created, err := aaa.Client.DataDeletionHeadless.PublicSubmitMyHeadlessDeletionRequestShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	if created == nil {
		return nil, nil
	}

	return created, nil
}
