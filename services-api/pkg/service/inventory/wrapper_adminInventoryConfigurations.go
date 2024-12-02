// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package inventory

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/inventory-sdk/pkg/inventoryclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/inventory-sdk/pkg/inventoryclient/admin_inventory_configurations"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

// AdminInventoryConfigurationsService this is use for compatibility with latest modular sdk only
// Deprecated: 2023-03-30 - please use AdminInventoryConfigurationsService imported from "github.com/AccelByte/accelbyte-go-modular-sdk/inventory-sdk/pkg"
type AdminInventoryConfigurationsService struct {
	Client           *inventoryclient.JusticeInventoryService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdAdminInventoryConfigurations *string

func (aaa *AdminInventoryConfigurationsService) UpdateFlightId(flightId string) {
	tempFlightIdAdminInventoryConfigurations = &flightId
}

func (aaa *AdminInventoryConfigurationsService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

func (aaa *AdminInventoryConfigurationsService) AdminListInventoryConfigurationsShort(input *admin_inventory_configurations.AdminListInventoryConfigurationsParams) (*admin_inventory_configurations.AdminListInventoryConfigurationsResponse, error) {
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
	if tempFlightIdAdminInventoryConfigurations != nil {
		input.XFlightId = tempFlightIdAdminInventoryConfigurations
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.AdminInventoryConfigurations.AdminListInventoryConfigurationsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *AdminInventoryConfigurationsService) AdminCreateInventoryConfigurationShort(input *admin_inventory_configurations.AdminCreateInventoryConfigurationParams) (*admin_inventory_configurations.AdminCreateInventoryConfigurationResponse, error) {
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
	if tempFlightIdAdminInventoryConfigurations != nil {
		input.XFlightId = tempFlightIdAdminInventoryConfigurations
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	created, err := aaa.Client.AdminInventoryConfigurations.AdminCreateInventoryConfigurationShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created, nil
}

func (aaa *AdminInventoryConfigurationsService) AdminGetInventoryConfigurationShort(input *admin_inventory_configurations.AdminGetInventoryConfigurationParams) (*admin_inventory_configurations.AdminGetInventoryConfigurationResponse, error) {
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
	if tempFlightIdAdminInventoryConfigurations != nil {
		input.XFlightId = tempFlightIdAdminInventoryConfigurations
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.AdminInventoryConfigurations.AdminGetInventoryConfigurationShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *AdminInventoryConfigurationsService) AdminUpdateInventoryConfigurationShort(input *admin_inventory_configurations.AdminUpdateInventoryConfigurationParams) (*admin_inventory_configurations.AdminUpdateInventoryConfigurationResponse, error) {
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
	if tempFlightIdAdminInventoryConfigurations != nil {
		input.XFlightId = tempFlightIdAdminInventoryConfigurations
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.AdminInventoryConfigurations.AdminUpdateInventoryConfigurationShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *AdminInventoryConfigurationsService) AdminDeleteInventoryConfigurationShort(input *admin_inventory_configurations.AdminDeleteInventoryConfigurationParams) error {
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
	if tempFlightIdAdminInventoryConfigurations != nil {
		input.XFlightId = tempFlightIdAdminInventoryConfigurations
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.AdminInventoryConfigurations.AdminDeleteInventoryConfigurationShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}
