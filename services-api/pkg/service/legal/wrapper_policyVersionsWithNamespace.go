// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package legal

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclient/policy_versions_with_namespace"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

// PolicyVersionsWithNamespaceService this is use for compatibility with latest modular sdk only
// Deprecated: 2023-03-30 - please use PolicyVersionsWithNamespaceService imported from "github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg"
type PolicyVersionsWithNamespaceService struct {
	Client           *legalclient.JusticeLegalService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdPolicyVersionsWithNamespace *string

func (aaa *PolicyVersionsWithNamespaceService) UpdateFlightId(flightId string) {
	tempFlightIdPolicyVersionsWithNamespace = &flightId
}

func (aaa *PolicyVersionsWithNamespaceService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

func (aaa *PolicyVersionsWithNamespaceService) DeletePolicyVersionShort(input *policy_versions_with_namespace.DeletePolicyVersionParams) error {
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
	if tempFlightIdPolicyVersionsWithNamespace != nil {
		input.XFlightId = tempFlightIdPolicyVersionsWithNamespace
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.PolicyVersionsWithNamespace.DeletePolicyVersionShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *PolicyVersionsWithNamespaceService) UpdatePolicyVersion1Short(input *policy_versions_with_namespace.UpdatePolicyVersion1Params) (*policy_versions_with_namespace.UpdatePolicyVersion1Response, error) {
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
	if tempFlightIdPolicyVersionsWithNamespace != nil {
		input.XFlightId = tempFlightIdPolicyVersionsWithNamespace
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.PolicyVersionsWithNamespace.UpdatePolicyVersion1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *PolicyVersionsWithNamespaceService) PublishPolicyVersion1Short(input *policy_versions_with_namespace.PublishPolicyVersion1Params) error {
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
	if tempFlightIdPolicyVersionsWithNamespace != nil {
		input.XFlightId = tempFlightIdPolicyVersionsWithNamespace
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.PolicyVersionsWithNamespace.PublishPolicyVersion1Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *PolicyVersionsWithNamespaceService) UnpublishPolicyVersionShort(input *policy_versions_with_namespace.UnpublishPolicyVersionParams) error {
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
	if tempFlightIdPolicyVersionsWithNamespace != nil {
		input.XFlightId = tempFlightIdPolicyVersionsWithNamespace
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.PolicyVersionsWithNamespace.UnpublishPolicyVersionShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *PolicyVersionsWithNamespaceService) RetrieveSinglePolicyVersion1Short(input *policy_versions_with_namespace.RetrieveSinglePolicyVersion1Params) (*policy_versions_with_namespace.RetrieveSinglePolicyVersion1Response, error) {
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
	if tempFlightIdPolicyVersionsWithNamespace != nil {
		input.XFlightId = tempFlightIdPolicyVersionsWithNamespace
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.PolicyVersionsWithNamespace.RetrieveSinglePolicyVersion1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *PolicyVersionsWithNamespaceService) CreatePolicyVersion1Short(input *policy_versions_with_namespace.CreatePolicyVersion1Params) (*policy_versions_with_namespace.CreatePolicyVersion1Response, error) {
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
	if tempFlightIdPolicyVersionsWithNamespace != nil {
		input.XFlightId = tempFlightIdPolicyVersionsWithNamespace
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	created, err := aaa.Client.PolicyVersionsWithNamespace.CreatePolicyVersion1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created, nil
}
