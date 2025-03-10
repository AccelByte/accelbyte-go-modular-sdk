// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package legal

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclient/localized_policy_versions"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

// LocalizedPolicyVersionsService this is use for compatibility with latest modular sdk only
// Deprecated: 2023-03-30 - please use LocalizedPolicyVersionsService imported from "github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg"
type LocalizedPolicyVersionsService struct {
	Client           *legalclient.JusticeLegalService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdLocalizedPolicyVersions *string

func (aaa *LocalizedPolicyVersionsService) UpdateFlightId(flightId string) {
	tempFlightIdLocalizedPolicyVersions = &flightId
}

func (aaa *LocalizedPolicyVersionsService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

func (aaa *LocalizedPolicyVersionsService) RetrieveLocalizedPolicyVersionsShort(input *localized_policy_versions.RetrieveLocalizedPolicyVersionsParams) (*localized_policy_versions.RetrieveLocalizedPolicyVersionsResponse, error) {
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
	if tempFlightIdLocalizedPolicyVersions != nil {
		input.XFlightId = tempFlightIdLocalizedPolicyVersions
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.LocalizedPolicyVersions.RetrieveLocalizedPolicyVersionsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *LocalizedPolicyVersionsService) CreateLocalizedPolicyVersionShort(input *localized_policy_versions.CreateLocalizedPolicyVersionParams) (*localized_policy_versions.CreateLocalizedPolicyVersionResponse, error) {
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
	if tempFlightIdLocalizedPolicyVersions != nil {
		input.XFlightId = tempFlightIdLocalizedPolicyVersions
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	created, err := aaa.Client.LocalizedPolicyVersions.CreateLocalizedPolicyVersionShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created, nil
}

func (aaa *LocalizedPolicyVersionsService) RetrieveSingleLocalizedPolicyVersionShort(input *localized_policy_versions.RetrieveSingleLocalizedPolicyVersionParams) (*localized_policy_versions.RetrieveSingleLocalizedPolicyVersionResponse, error) {
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
	if tempFlightIdLocalizedPolicyVersions != nil {
		input.XFlightId = tempFlightIdLocalizedPolicyVersions
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.LocalizedPolicyVersions.RetrieveSingleLocalizedPolicyVersionShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *LocalizedPolicyVersionsService) UpdateLocalizedPolicyVersionShort(input *localized_policy_versions.UpdateLocalizedPolicyVersionParams) (*localized_policy_versions.UpdateLocalizedPolicyVersionResponse, error) {
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
	if tempFlightIdLocalizedPolicyVersions != nil {
		input.XFlightId = tempFlightIdLocalizedPolicyVersions
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.LocalizedPolicyVersions.UpdateLocalizedPolicyVersionShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *LocalizedPolicyVersionsService) RequestPresignedURLShort(input *localized_policy_versions.RequestPresignedURLParams) (*localized_policy_versions.RequestPresignedURLResponse, error) {
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
	if tempFlightIdLocalizedPolicyVersions != nil {
		input.XFlightId = tempFlightIdLocalizedPolicyVersions
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	created, err := aaa.Client.LocalizedPolicyVersions.RequestPresignedURLShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created, nil
}

func (aaa *LocalizedPolicyVersionsService) SetDefaultPolicyShort(input *localized_policy_versions.SetDefaultPolicyParams) error {
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
	if tempFlightIdLocalizedPolicyVersions != nil {
		input.XFlightId = tempFlightIdLocalizedPolicyVersions
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.LocalizedPolicyVersions.SetDefaultPolicyShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *LocalizedPolicyVersionsService) RetrieveSingleLocalizedPolicyVersion2Short(input *localized_policy_versions.RetrieveSingleLocalizedPolicyVersion2Params) (*localized_policy_versions.RetrieveSingleLocalizedPolicyVersion2Response, error) {
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdLocalizedPolicyVersions != nil {
		input.XFlightId = tempFlightIdLocalizedPolicyVersions
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.LocalizedPolicyVersions.RetrieveSingleLocalizedPolicyVersion2Short(input)
	if err != nil {
		return nil, err
	}

	return ok, nil
}
