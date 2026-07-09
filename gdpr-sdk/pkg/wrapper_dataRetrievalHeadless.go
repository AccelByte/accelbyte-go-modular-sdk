// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package gdpr

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/gdpr-sdk/pkg/gdprclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/gdpr-sdk/pkg/gdprclient/data_retrieval_headless"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

type DataRetrievalHeadlessService struct {
	Client  *gdprclient.JusticeGdprService
	Session repository.Session
}

var tempFlightIdDataRetrievalHeadless *string

func (aaa *DataRetrievalHeadlessService) UpdateFlightId(flightId string) {
	tempFlightIdDataRetrievalHeadless = &flightId
}

func (aaa *DataRetrievalHeadlessService) GetAuthSession() auth.Session {
	return auth.Session{
		Token:   aaa.Session.TokenRepository,
		Config:  aaa.Session.ConfigRepository,
		Refresh: nil,
	}
}

func (aaa *DataRetrievalHeadlessService) PublicSubmitMyHeadlessPersonalDataRequestShort(input *data_retrieval_headless.PublicSubmitMyHeadlessPersonalDataRequestParams) (*data_retrieval_headless.PublicSubmitMyHeadlessPersonalDataRequestResponse, error) {
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
	if tempFlightIdDataRetrievalHeadless != nil {
		input.XFlightId = tempFlightIdDataRetrievalHeadless
	} else if aaa.Session.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.Session.FlightIdRepository.Value)
	}

	created, err := aaa.Client.DataRetrievalHeadless.PublicSubmitMyHeadlessPersonalDataRequestShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	if created == nil {
		return nil, nil
	}

	return created, nil
}

func (aaa *DataRetrievalHeadlessService) PublicGenerateMyHeadlessPersonalDataURLShort(input *data_retrieval_headless.PublicGenerateMyHeadlessPersonalDataURLParams) (*data_retrieval_headless.PublicGenerateMyHeadlessPersonalDataURLResponse, error) {
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
	if tempFlightIdDataRetrievalHeadless != nil {
		input.XFlightId = tempFlightIdDataRetrievalHeadless
	} else if aaa.Session.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.Session.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.DataRetrievalHeadless.PublicGenerateMyHeadlessPersonalDataURLShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	if ok == nil {
		return nil, nil
	}

	return ok, nil
}

func (aaa *DataRetrievalHeadlessService) PublicGetMyPersonalDataRequestsShort(input *data_retrieval_headless.PublicGetMyPersonalDataRequestsParams) (*data_retrieval_headless.PublicGetMyPersonalDataRequestsResponse, error) {
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
	if tempFlightIdDataRetrievalHeadless != nil {
		input.XFlightId = tempFlightIdDataRetrievalHeadless
	} else if aaa.Session.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.Session.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.DataRetrievalHeadless.PublicGetMyPersonalDataRequestsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	if ok == nil {
		return nil, nil
	}

	return ok, nil
}

func (aaa *DataRetrievalHeadlessService) PublicSubmitMyPersonalDataRequestShort(input *data_retrieval_headless.PublicSubmitMyPersonalDataRequestParams) (*data_retrieval_headless.PublicSubmitMyPersonalDataRequestResponse, error) {
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
	if tempFlightIdDataRetrievalHeadless != nil {
		input.XFlightId = tempFlightIdDataRetrievalHeadless
	} else if aaa.Session.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.Session.FlightIdRepository.Value)
	}

	created, err := aaa.Client.DataRetrievalHeadless.PublicSubmitMyPersonalDataRequestShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	if created == nil {
		return nil, nil
	}

	return created, nil
}

func (aaa *DataRetrievalHeadlessService) PublicCancelMyPersonalDataRequestShort(input *data_retrieval_headless.PublicCancelMyPersonalDataRequestParams) error {
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
	if tempFlightIdDataRetrievalHeadless != nil {
		input.XFlightId = tempFlightIdDataRetrievalHeadless
	} else if aaa.Session.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.Session.FlightIdRepository.Value)
	}

	_, err := aaa.Client.DataRetrievalHeadless.PublicCancelMyPersonalDataRequestShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}
