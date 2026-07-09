// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package inventory

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/inventory-sdk/pkg/inventoryclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/inventory-sdk/pkg/inventoryclient/public_inventory_configurations"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

// PublicInventoryConfigurationsService this is use for compatibility with latest modular sdk only
// Deprecated: 2023-03-30 - please use PublicInventoryConfigurationsService imported from "github.com/AccelByte/accelbyte-go-modular-sdk/inventory-sdk/pkg"
type PublicInventoryConfigurationsService struct {
	Client  *inventoryclient.JusticeInventoryService
	Session repository.Session
}

var tempFlightIdPublicInventoryConfigurations *string

func (aaa *PublicInventoryConfigurationsService) UpdateFlightId(flightId string) {
	tempFlightIdPublicInventoryConfigurations = &flightId
}

func (aaa *PublicInventoryConfigurationsService) GetAuthSession() auth.Session {
	return auth.Session{
		Token:   aaa.Session.TokenRepository,
		Config:  aaa.Session.ConfigRepository,
		Refresh: nil,
	}
}

func (aaa *PublicInventoryConfigurationsService) PublicListInventoryConfigurationsShort(input *public_inventory_configurations.PublicListInventoryConfigurationsParams) (*public_inventory_configurations.PublicListInventoryConfigurationsResponse, error) {
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
	if tempFlightIdPublicInventoryConfigurations != nil {
		input.XFlightId = tempFlightIdPublicInventoryConfigurations
	} else if aaa.Session.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.Session.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.PublicInventoryConfigurations.PublicListInventoryConfigurationsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}
