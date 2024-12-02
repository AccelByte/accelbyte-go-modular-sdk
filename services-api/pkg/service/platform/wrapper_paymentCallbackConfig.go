// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platform

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/payment_callback_config"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

// PaymentCallbackConfigService this is use for compatibility with latest modular sdk only
// Deprecated: 2023-03-30 - please use PaymentCallbackConfigService imported from "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
type PaymentCallbackConfigService struct {
	Client           *platformclient.JusticePlatformService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdPaymentCallbackConfig *string

func (aaa *PaymentCallbackConfigService) UpdateFlightId(flightId string) {
	tempFlightIdPaymentCallbackConfig = &flightId
}

func (aaa *PaymentCallbackConfigService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

func (aaa *PaymentCallbackConfigService) GetPaymentCallbackConfigShort(input *payment_callback_config.GetPaymentCallbackConfigParams) (*payment_callback_config.GetPaymentCallbackConfigResponse, error) {
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
	if tempFlightIdPaymentCallbackConfig != nil {
		input.XFlightId = tempFlightIdPaymentCallbackConfig
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.PaymentCallbackConfig.GetPaymentCallbackConfigShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *PaymentCallbackConfigService) UpdatePaymentCallbackConfigShort(input *payment_callback_config.UpdatePaymentCallbackConfigParams) (*payment_callback_config.UpdatePaymentCallbackConfigResponse, error) {
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
	if tempFlightIdPaymentCallbackConfig != nil {
		input.XFlightId = tempFlightIdPaymentCallbackConfig
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.PaymentCallbackConfig.UpdatePaymentCallbackConfigShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}
