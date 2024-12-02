// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package ams

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg/amsclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg/amsclient/a_m_s_qo_s"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

// AMSQoSService this is use for compatibility with latest modular sdk only
// Deprecated: 2023-03-30 - please use AMSQoSService imported from "github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg"
type AMSQoSService struct {
	Client           *amsclient.JusticeAmsService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdAMSQoS *string

func (aaa *AMSQoSService) UpdateFlightId(flightId string) {
	tempFlightIdAMSQoS = &flightId
}

func (aaa *AMSQoSService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

func (aaa *AMSQoSService) QoSRegionsGetShort(input *a_m_s_qo_s.QoSRegionsGetParams) (*a_m_s_qo_s.QoSRegionsGetResponse, error) {
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
	if tempFlightIdAMSQoS != nil {
		input.XFlightId = tempFlightIdAMSQoS
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.AmsQos.QoSRegionsGetShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *AMSQoSService) QoSRegionsUpdateShort(input *a_m_s_qo_s.QoSRegionsUpdateParams) error {
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
	if tempFlightIdAMSQoS != nil {
		input.XFlightId = tempFlightIdAMSQoS
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.AmsQos.QoSRegionsUpdateShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}
