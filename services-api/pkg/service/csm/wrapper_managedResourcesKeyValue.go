// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package csm

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclient/managed_resources_key_value"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

// ManagedResourcesKeyValueService this is use for compatibility with latest modular sdk only
// Deprecated: 2023-03-30 - please use ManagedResourcesKeyValueService imported from "github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg"
type ManagedResourcesKeyValueService struct {
	Client           *csmclient.JusticeCsmService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdManagedResourcesKeyValue *string

func (aaa *ManagedResourcesKeyValueService) UpdateFlightId(flightId string) {
	tempFlightIdManagedResourcesKeyValue = &flightId
}

func (aaa *ManagedResourcesKeyValueService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

func (aaa *ManagedResourcesKeyValueService) CreateKeyValueCredentialV2Short(input *managed_resources_key_value.CreateKeyValueCredentialV2Params) (*managed_resources_key_value.CreateKeyValueCredentialV2Response, error) {
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
	if tempFlightIdManagedResourcesKeyValue != nil {
		input.XFlightId = tempFlightIdManagedResourcesKeyValue
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.ManagedResourcesKeyValue.CreateKeyValueCredentialV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *ManagedResourcesKeyValueService) GetIntegrationAppKeyValueClusterV2Short(input *managed_resources_key_value.GetIntegrationAppKeyValueClusterV2Params) (*managed_resources_key_value.GetIntegrationAppKeyValueClusterV2Response, error) {
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
	if tempFlightIdManagedResourcesKeyValue != nil {
		input.XFlightId = tempFlightIdManagedResourcesKeyValue
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.ManagedResourcesKeyValue.GetIntegrationAppKeyValueClusterV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *ManagedResourcesKeyValueService) IntegrateAppKeyValueClusterV2Short(input *managed_resources_key_value.IntegrateAppKeyValueClusterV2Params) (*managed_resources_key_value.IntegrateAppKeyValueClusterV2Response, error) {
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
	if tempFlightIdManagedResourcesKeyValue != nil {
		input.XFlightId = tempFlightIdManagedResourcesKeyValue
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.ManagedResourcesKeyValue.IntegrateAppKeyValueClusterV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *ManagedResourcesKeyValueService) RemoveIntegrationAppKeyValueClusterV2Short(input *managed_resources_key_value.RemoveIntegrationAppKeyValueClusterV2Params) error {
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
	if tempFlightIdManagedResourcesKeyValue != nil {
		input.XFlightId = tempFlightIdManagedResourcesKeyValue
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.ManagedResourcesKeyValue.RemoveIntegrationAppKeyValueClusterV2Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *ManagedResourcesKeyValueService) GetKeyValueClusterV2Short(input *managed_resources_key_value.GetKeyValueClusterV2Params) (*managed_resources_key_value.GetKeyValueClusterV2Response, error) {
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
	if tempFlightIdManagedResourcesKeyValue != nil {
		input.XFlightId = tempFlightIdManagedResourcesKeyValue
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.ManagedResourcesKeyValue.GetKeyValueClusterV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *ManagedResourcesKeyValueService) ListKeyValueClusterV2Short(input *managed_resources_key_value.ListKeyValueClusterV2Params) (*managed_resources_key_value.ListKeyValueClusterV2Response, error) {
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
	if tempFlightIdManagedResourcesKeyValue != nil {
		input.XFlightId = tempFlightIdManagedResourcesKeyValue
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.ManagedResourcesKeyValue.ListKeyValueClusterV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *ManagedResourcesKeyValueService) CreateKeyValueClusterV2Short(input *managed_resources_key_value.CreateKeyValueClusterV2Params) (*managed_resources_key_value.CreateKeyValueClusterV2Response, error) {
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
	if tempFlightIdManagedResourcesKeyValue != nil {
		input.XFlightId = tempFlightIdManagedResourcesKeyValue
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	created, err := aaa.Client.ManagedResourcesKeyValue.CreateKeyValueClusterV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created, nil
}

func (aaa *ManagedResourcesKeyValueService) GetKeyValueClusterLimitConfigV2Short(input *managed_resources_key_value.GetKeyValueClusterLimitConfigV2Params) (*managed_resources_key_value.GetKeyValueClusterLimitConfigV2Response, error) {
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
	if tempFlightIdManagedResourcesKeyValue != nil {
		input.XFlightId = tempFlightIdManagedResourcesKeyValue
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.ManagedResourcesKeyValue.GetKeyValueClusterLimitConfigV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *ManagedResourcesKeyValueService) UpdateKeyValueClusterV2Short(input *managed_resources_key_value.UpdateKeyValueClusterV2Params) (*managed_resources_key_value.UpdateKeyValueClusterV2Response, error) {
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
	if tempFlightIdManagedResourcesKeyValue != nil {
		input.XFlightId = tempFlightIdManagedResourcesKeyValue
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.ManagedResourcesKeyValue.UpdateKeyValueClusterV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *ManagedResourcesKeyValueService) DeleteKeyValueClusterV2Short(input *managed_resources_key_value.DeleteKeyValueClusterV2Params) (*managed_resources_key_value.DeleteKeyValueClusterV2Response, error) {
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
	if tempFlightIdManagedResourcesKeyValue != nil {
		input.XFlightId = tempFlightIdManagedResourcesKeyValue
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.ManagedResourcesKeyValue.DeleteKeyValueClusterV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *ManagedResourcesKeyValueService) GetListIntegratedAppKeyValueClusterV2Short(input *managed_resources_key_value.GetListIntegratedAppKeyValueClusterV2Params) (*managed_resources_key_value.GetListIntegratedAppKeyValueClusterV2Response, error) {
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
	if tempFlightIdManagedResourcesKeyValue != nil {
		input.XFlightId = tempFlightIdManagedResourcesKeyValue
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.ManagedResourcesKeyValue.GetListIntegratedAppKeyValueClusterV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}
