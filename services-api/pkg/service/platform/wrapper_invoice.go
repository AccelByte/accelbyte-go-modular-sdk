// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platform

import (
	"io"

	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/invoice"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

// InvoiceService this is use for compatibility with latest modular sdk only
// Deprecated: 2023-03-30 - please use InvoiceService imported from "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
type InvoiceService struct {
	Client           *platformclient.JusticePlatformService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdInvoice *string

func (aaa *InvoiceService) UpdateFlightId(flightId string) {
	tempFlightIdInvoice = &flightId
}

func (aaa *InvoiceService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

// Deprecated: 2022-01-10 - Please use DownloadInvoiceDetailsShort instead.
func (aaa *InvoiceService) DownloadInvoiceDetails(input *invoice.DownloadInvoiceDetailsParams, writer io.Writer) (io.Writer, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.Invoice.DownloadInvoiceDetails(input, client.BearerToken(*token.AccessToken), writer)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - Please use GenerateInvoiceSummaryShort instead.
func (aaa *InvoiceService) GenerateInvoiceSummary(input *invoice.GenerateInvoiceSummaryParams) (*platformclientmodels.InvoiceSummary, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unprocessableEntity, err := aaa.Client.Invoice.GenerateInvoiceSummary(input, client.BearerToken(*token.AccessToken))
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *InvoiceService) DownloadInvoiceDetailsShort(input *invoice.DownloadInvoiceDetailsParams, writer io.Writer) (io.Writer, error) {
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
	if tempFlightIdInvoice != nil {
		input.XFlightId = tempFlightIdInvoice
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.Invoice.DownloadInvoiceDetailsShort(input, authInfoWriter, writer)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *InvoiceService) GenerateInvoiceSummaryShort(input *invoice.GenerateInvoiceSummaryParams) (*platformclientmodels.InvoiceSummary, error) {
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
	if tempFlightIdInvoice != nil {
		input.XFlightId = tempFlightIdInvoice
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.Invoice.GenerateInvoiceSummaryShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
