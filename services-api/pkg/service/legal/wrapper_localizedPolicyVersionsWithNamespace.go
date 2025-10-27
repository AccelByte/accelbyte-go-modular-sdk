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

func (aaa *LocalizedPolicyVersionsWithNamespaceService) RetrieveLocalizedPolicyVersionsShort(input *localized_policy_versions_with_namespace.RetrieveLocalizedPolicyVersionsParams) (*localized_policy_versions_with_namespace.RetrieveLocalizedPolicyVersionsResponse, error) {
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

	ok, err := aaa.Client.LocalizedPolicyVersionsWithNamespace.RetrieveLocalizedPolicyVersionsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *LocalizedPolicyVersionsWithNamespaceService) CreateLocalizedPolicyVersionShort(input *localized_policy_versions_with_namespace.CreateLocalizedPolicyVersionParams) (*localized_policy_versions_with_namespace.CreateLocalizedPolicyVersionResponse, error) {
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

	created, err := aaa.Client.LocalizedPolicyVersionsWithNamespace.CreateLocalizedPolicyVersionShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created, nil
}

func (aaa *LocalizedPolicyVersionsWithNamespaceService) RetrieveSingleLocalizedPolicyVersionShort(input *localized_policy_versions_with_namespace.RetrieveSingleLocalizedPolicyVersionParams) (*localized_policy_versions_with_namespace.RetrieveSingleLocalizedPolicyVersionResponse, error) {
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

	ok, err := aaa.Client.LocalizedPolicyVersionsWithNamespace.RetrieveSingleLocalizedPolicyVersionShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *LocalizedPolicyVersionsWithNamespaceService) UpdateLocalizedPolicyVersionShort(input *localized_policy_versions_with_namespace.UpdateLocalizedPolicyVersionParams) (*localized_policy_versions_with_namespace.UpdateLocalizedPolicyVersionResponse, error) {
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

	ok, err := aaa.Client.LocalizedPolicyVersionsWithNamespace.UpdateLocalizedPolicyVersionShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *LocalizedPolicyVersionsWithNamespaceService) RequestPresignedURLShort(input *localized_policy_versions_with_namespace.RequestPresignedURLParams) (*localized_policy_versions_with_namespace.RequestPresignedURLResponse, error) {
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

	created, err := aaa.Client.LocalizedPolicyVersionsWithNamespace.RequestPresignedURLShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created, nil
}

func (aaa *LocalizedPolicyVersionsWithNamespaceService) SetDefaultLocalizedPolicyShort(input *localized_policy_versions_with_namespace.SetDefaultLocalizedPolicyParams) error {
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

	_, err := aaa.Client.LocalizedPolicyVersionsWithNamespace.SetDefaultLocalizedPolicyShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *LocalizedPolicyVersionsWithNamespaceService) PublicRetrieveSingleLocalizedPolicyVersionShort(input *localized_policy_versions_with_namespace.PublicRetrieveSingleLocalizedPolicyVersionParams) (*localized_policy_versions_with_namespace.PublicRetrieveSingleLocalizedPolicyVersionResponse, error) {
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

	ok, err := aaa.Client.LocalizedPolicyVersionsWithNamespace.PublicRetrieveSingleLocalizedPolicyVersionShort(input)
	if err != nil {
		return nil, err
	}

	return ok, nil
}
