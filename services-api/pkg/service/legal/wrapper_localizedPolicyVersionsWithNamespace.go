// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package legal

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclient/localized_policy_versions_with_namespace"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

// LocalizedPolicyVersionsWithNamespaceService this is use for compatibility with latest modular sdk only
// Deprecated: 2023-03-30 - please use LocalizedPolicyVersionsWithNamespaceService imported from "github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg"
type LocalizedPolicyVersionsWithNamespaceService struct {
	Client           *legalclient.JusticeLegalService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdLocalizedPolicyVersionsWithNamespace *string

func (aaa *LocalizedPolicyVersionsWithNamespaceService) UpdateFlightId(flightId string) {
	tempFlightIdLocalizedPolicyVersionsWithNamespace = &flightId
}

func (aaa *LocalizedPolicyVersionsWithNamespaceService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

func (aaa *LocalizedPolicyVersionsWithNamespaceService) DeleteLocalizedPolicyShort(input *localized_policy_versions_with_namespace.DeleteLocalizedPolicyParams) error {
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
	if tempFlightIdLocalizedPolicyVersionsWithNamespace != nil {
		input.XFlightId = tempFlightIdLocalizedPolicyVersionsWithNamespace
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.LocalizedPolicyVersionsWithNamespace.DeleteLocalizedPolicyShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *LocalizedPolicyVersionsWithNamespaceService) RetrieveLocalizedPolicyVersions1Short(input *localized_policy_versions_with_namespace.RetrieveLocalizedPolicyVersions1Params) (*localized_policy_versions_with_namespace.RetrieveLocalizedPolicyVersions1Response, error) {
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
	if tempFlightIdLocalizedPolicyVersionsWithNamespace != nil {
		input.XFlightId = tempFlightIdLocalizedPolicyVersionsWithNamespace
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.LocalizedPolicyVersionsWithNamespace.RetrieveLocalizedPolicyVersions1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *LocalizedPolicyVersionsWithNamespaceService) CreateLocalizedPolicyVersion1Short(input *localized_policy_versions_with_namespace.CreateLocalizedPolicyVersion1Params) (*localized_policy_versions_with_namespace.CreateLocalizedPolicyVersion1Response, error) {
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
	if tempFlightIdLocalizedPolicyVersionsWithNamespace != nil {
		input.XFlightId = tempFlightIdLocalizedPolicyVersionsWithNamespace
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	created, err := aaa.Client.LocalizedPolicyVersionsWithNamespace.CreateLocalizedPolicyVersion1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created, nil
}

func (aaa *LocalizedPolicyVersionsWithNamespaceService) RetrieveSingleLocalizedPolicyVersion1Short(input *localized_policy_versions_with_namespace.RetrieveSingleLocalizedPolicyVersion1Params) (*localized_policy_versions_with_namespace.RetrieveSingleLocalizedPolicyVersion1Response, error) {
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
	if tempFlightIdLocalizedPolicyVersionsWithNamespace != nil {
		input.XFlightId = tempFlightIdLocalizedPolicyVersionsWithNamespace
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.LocalizedPolicyVersionsWithNamespace.RetrieveSingleLocalizedPolicyVersion1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *LocalizedPolicyVersionsWithNamespaceService) UpdateLocalizedPolicyVersion1Short(input *localized_policy_versions_with_namespace.UpdateLocalizedPolicyVersion1Params) (*localized_policy_versions_with_namespace.UpdateLocalizedPolicyVersion1Response, error) {
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
	if tempFlightIdLocalizedPolicyVersionsWithNamespace != nil {
		input.XFlightId = tempFlightIdLocalizedPolicyVersionsWithNamespace
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.LocalizedPolicyVersionsWithNamespace.UpdateLocalizedPolicyVersion1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *LocalizedPolicyVersionsWithNamespaceService) RequestPresignedURL1Short(input *localized_policy_versions_with_namespace.RequestPresignedURL1Params) (*localized_policy_versions_with_namespace.RequestPresignedURL1Response, error) {
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
	if tempFlightIdLocalizedPolicyVersionsWithNamespace != nil {
		input.XFlightId = tempFlightIdLocalizedPolicyVersionsWithNamespace
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	created, err := aaa.Client.LocalizedPolicyVersionsWithNamespace.RequestPresignedURL1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created, nil
}

func (aaa *LocalizedPolicyVersionsWithNamespaceService) SetDefaultPolicy1Short(input *localized_policy_versions_with_namespace.SetDefaultPolicy1Params) error {
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
	if tempFlightIdLocalizedPolicyVersionsWithNamespace != nil {
		input.XFlightId = tempFlightIdLocalizedPolicyVersionsWithNamespace
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.LocalizedPolicyVersionsWithNamespace.SetDefaultPolicy1Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *LocalizedPolicyVersionsWithNamespaceService) RetrieveSingleLocalizedPolicyVersion3Short(input *localized_policy_versions_with_namespace.RetrieveSingleLocalizedPolicyVersion3Params) (*localized_policy_versions_with_namespace.RetrieveSingleLocalizedPolicyVersion3Response, error) {
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdLocalizedPolicyVersionsWithNamespace != nil {
		input.XFlightId = tempFlightIdLocalizedPolicyVersionsWithNamespace
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.LocalizedPolicyVersionsWithNamespace.RetrieveSingleLocalizedPolicyVersion3Short(input)
	if err != nil {
		return nil, err
	}

	return ok, nil
}
