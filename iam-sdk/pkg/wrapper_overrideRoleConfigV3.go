// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iam

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/override_role_config_v3"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

type OverrideRoleConfigv3Service struct {
	Client           *iamclient.JusticeIamService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdOverrideRoleConfigv3 *string

func (aaa *OverrideRoleConfigv3Service) UpdateFlightId(flightId string) {
	tempFlightIdOverrideRoleConfigv3 = &flightId
}

func (aaa *OverrideRoleConfigv3Service) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

func (aaa *OverrideRoleConfigv3Service) AdminGetRoleOverrideConfigV3Short(input *override_role_config_v3.AdminGetRoleOverrideConfigV3Params) (*override_role_config_v3.AdminGetRoleOverrideConfigV3Response, error) {
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
	if tempFlightIdOverrideRoleConfigv3 != nil {
		input.XFlightId = tempFlightIdOverrideRoleConfigv3
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.OverrideRoleConfigV3.AdminGetRoleOverrideConfigV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *OverrideRoleConfigv3Service) AdminUpdateRoleOverrideConfigV3Short(input *override_role_config_v3.AdminUpdateRoleOverrideConfigV3Params) (*override_role_config_v3.AdminUpdateRoleOverrideConfigV3Response, error) {
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
	if tempFlightIdOverrideRoleConfigv3 != nil {
		input.XFlightId = tempFlightIdOverrideRoleConfigv3
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.OverrideRoleConfigV3.AdminUpdateRoleOverrideConfigV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *OverrideRoleConfigv3Service) AdminGetRoleSourceV3Short(input *override_role_config_v3.AdminGetRoleSourceV3Params) (*override_role_config_v3.AdminGetRoleSourceV3Response, error) {
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
	if tempFlightIdOverrideRoleConfigv3 != nil {
		input.XFlightId = tempFlightIdOverrideRoleConfigv3
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.OverrideRoleConfigV3.AdminGetRoleSourceV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *OverrideRoleConfigv3Service) AdminChangeRoleOverrideConfigStatusV3Short(input *override_role_config_v3.AdminChangeRoleOverrideConfigStatusV3Params) (*override_role_config_v3.AdminChangeRoleOverrideConfigStatusV3Response, error) {
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
	if tempFlightIdOverrideRoleConfigv3 != nil {
		input.XFlightId = tempFlightIdOverrideRoleConfigv3
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.OverrideRoleConfigV3.AdminChangeRoleOverrideConfigStatusV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *OverrideRoleConfigv3Service) AdminGetRoleNamespacePermissionV3Short(input *override_role_config_v3.AdminGetRoleNamespacePermissionV3Params) (*override_role_config_v3.AdminGetRoleNamespacePermissionV3Response, error) {
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
	if tempFlightIdOverrideRoleConfigv3 != nil {
		input.XFlightId = tempFlightIdOverrideRoleConfigv3
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.OverrideRoleConfigV3.AdminGetRoleNamespacePermissionV3Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}
