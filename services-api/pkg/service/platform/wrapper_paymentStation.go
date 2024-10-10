// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platform

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/payment_station"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

// PaymentStationService this is use for compatibility with latest modular sdk only
// Deprecated: 2023-03-30 - please use PaymentStationService imported from "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
type PaymentStationService struct {
	Client           *platformclient.JusticePlatformService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdPaymentStation *string

func (aaa *PaymentStationService) UpdateFlightId(flightId string) {
	tempFlightIdPaymentStation = &flightId
}

func (aaa *PaymentStationService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

func (aaa *PaymentStationService) GetPaymentCustomizationShort(input *payment_station.GetPaymentCustomizationParams) (*platformclientmodels.Customization, error) {
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdPaymentStation != nil {
		input.XFlightId = tempFlightIdPaymentStation
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.PaymentStation.GetPaymentCustomizationShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PaymentStationService) PublicGetPaymentURLShort(input *payment_station.PublicGetPaymentURLParams) (*platformclientmodels.PaymentURL, error) {
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdPaymentStation != nil {
		input.XFlightId = tempFlightIdPaymentStation
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.PaymentStation.PublicGetPaymentURLShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PaymentStationService) PublicGetPaymentMethodsShort(input *payment_station.PublicGetPaymentMethodsParams) ([]*platformclientmodels.PaymentMethod, error) {
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdPaymentStation != nil {
		input.XFlightId = tempFlightIdPaymentStation
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.PaymentStation.PublicGetPaymentMethodsShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PaymentStationService) PublicGetUnpaidPaymentOrderShort(input *payment_station.PublicGetUnpaidPaymentOrderParams) (*platformclientmodels.PaymentOrderDetails, error) {
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdPaymentStation != nil {
		input.XFlightId = tempFlightIdPaymentStation
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.PaymentStation.PublicGetUnpaidPaymentOrderShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PaymentStationService) PayShort(input *payment_station.PayParams) (*platformclientmodels.PaymentProcessResult, error) {
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdPaymentStation != nil {
		input.XFlightId = tempFlightIdPaymentStation
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.PaymentStation.PayShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PaymentStationService) PublicCheckPaymentOrderPaidStatusShort(input *payment_station.PublicCheckPaymentOrderPaidStatusParams) (*platformclientmodels.PaymentOrderPaidResult, error) {
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdPaymentStation != nil {
		input.XFlightId = tempFlightIdPaymentStation
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.PaymentStation.PublicCheckPaymentOrderPaidStatusShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PaymentStationService) GetPaymentPublicConfigShort(input *payment_station.GetPaymentPublicConfigParams) (map[string]interface{}, error) {
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdPaymentStation != nil {
		input.XFlightId = tempFlightIdPaymentStation
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.PaymentStation.GetPaymentPublicConfigShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PaymentStationService) PublicGetQRCodeShort(input *payment_station.PublicGetQRCodeParams) (*platformclientmodels.BinarySchema, error) {
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdPaymentStation != nil {
		input.XFlightId = tempFlightIdPaymentStation
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.PaymentStation.PublicGetQRCodeShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PaymentStationService) PublicNormalizePaymentReturnURLShort(input *payment_station.PublicNormalizePaymentReturnURLParams) error {
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdPaymentStation != nil {
		input.XFlightId = tempFlightIdPaymentStation
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.PaymentStation.PublicNormalizePaymentReturnURLShort(input)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *PaymentStationService) GetPaymentTaxValueShort(input *payment_station.GetPaymentTaxValueParams) (*platformclientmodels.TaxResult, error) {
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdPaymentStation != nil {
		input.XFlightId = tempFlightIdPaymentStation
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.PaymentStation.GetPaymentTaxValueShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
