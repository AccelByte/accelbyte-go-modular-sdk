// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package legal

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclient/base_legal_policies_with_namespace"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

// BaseLegalPoliciesWithNamespaceService this is use for compatibility with latest modular sdk only
// Deprecated: 2023-03-30 - please use BaseLegalPoliciesWithNamespaceService imported from "github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg"
type BaseLegalPoliciesWithNamespaceService struct {
	Client           *legalclient.JusticeLegalService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdBaseLegalPoliciesWithNamespace *string

func (aaa *BaseLegalPoliciesWithNamespaceService) UpdateFlightId(flightId string) {
	tempFlightIdBaseLegalPoliciesWithNamespace = &flightId
}

func (aaa *BaseLegalPoliciesWithNamespaceService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

func (aaa *BaseLegalPoliciesWithNamespaceService) RetrieveAllLegalPoliciesByNamespaceShort(input *base_legal_policies_with_namespace.RetrieveAllLegalPoliciesByNamespaceParams) (*base_legal_policies_with_namespace.RetrieveAllLegalPoliciesByNamespaceResponse, error) {
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
	if tempFlightIdBaseLegalPoliciesWithNamespace != nil {
		input.XFlightId = tempFlightIdBaseLegalPoliciesWithNamespace
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.BaseLegalPoliciesWithNamespace.RetrieveAllLegalPoliciesByNamespaceShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *BaseLegalPoliciesWithNamespaceService) CreatePolicy1Short(input *base_legal_policies_with_namespace.CreatePolicy1Params) (*base_legal_policies_with_namespace.CreatePolicy1Response, error) {
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
	if tempFlightIdBaseLegalPoliciesWithNamespace != nil {
		input.XFlightId = tempFlightIdBaseLegalPoliciesWithNamespace
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	created, err := aaa.Client.BaseLegalPoliciesWithNamespace.CreatePolicy1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created, nil
}

func (aaa *BaseLegalPoliciesWithNamespaceService) RetrieveSinglePolicy1Short(input *base_legal_policies_with_namespace.RetrieveSinglePolicy1Params) (*base_legal_policies_with_namespace.RetrieveSinglePolicy1Response, error) {
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
	if tempFlightIdBaseLegalPoliciesWithNamespace != nil {
		input.XFlightId = tempFlightIdBaseLegalPoliciesWithNamespace
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.BaseLegalPoliciesWithNamespace.RetrieveSinglePolicy1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *BaseLegalPoliciesWithNamespaceService) DeleteBasePolicyShort(input *base_legal_policies_with_namespace.DeleteBasePolicyParams) error {
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
	if tempFlightIdBaseLegalPoliciesWithNamespace != nil {
		input.XFlightId = tempFlightIdBaseLegalPoliciesWithNamespace
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	_, err := aaa.Client.BaseLegalPoliciesWithNamespace.DeleteBasePolicyShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *BaseLegalPoliciesWithNamespaceService) PartialUpdatePolicy1Short(input *base_legal_policies_with_namespace.PartialUpdatePolicy1Params) (*base_legal_policies_with_namespace.PartialUpdatePolicy1Response, error) {
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
	if tempFlightIdBaseLegalPoliciesWithNamespace != nil {
		input.XFlightId = tempFlightIdBaseLegalPoliciesWithNamespace
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.BaseLegalPoliciesWithNamespace.PartialUpdatePolicy1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *BaseLegalPoliciesWithNamespaceService) RetrievePolicyCountry1Short(input *base_legal_policies_with_namespace.RetrievePolicyCountry1Params) (*base_legal_policies_with_namespace.RetrievePolicyCountry1Response, error) {
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
	if tempFlightIdBaseLegalPoliciesWithNamespace != nil {
		input.XFlightId = tempFlightIdBaseLegalPoliciesWithNamespace
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.BaseLegalPoliciesWithNamespace.RetrievePolicyCountry1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *BaseLegalPoliciesWithNamespaceService) RetrieveAllPoliciesFromBasePolicyShort(input *base_legal_policies_with_namespace.RetrieveAllPoliciesFromBasePolicyParams) (*base_legal_policies_with_namespace.RetrieveAllPoliciesFromBasePolicyResponse, error) {
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
	if tempFlightIdBaseLegalPoliciesWithNamespace != nil {
		input.XFlightId = tempFlightIdBaseLegalPoliciesWithNamespace
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.BaseLegalPoliciesWithNamespace.RetrieveAllPoliciesFromBasePolicyShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}

func (aaa *BaseLegalPoliciesWithNamespaceService) CreatePolicyUnderBasePolicyShort(input *base_legal_policies_with_namespace.CreatePolicyUnderBasePolicyParams) (*base_legal_policies_with_namespace.CreatePolicyUnderBasePolicyResponse, error) {
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
	if tempFlightIdBaseLegalPoliciesWithNamespace != nil {
		input.XFlightId = tempFlightIdBaseLegalPoliciesWithNamespace
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	created, err := aaa.Client.BaseLegalPoliciesWithNamespace.CreatePolicyUnderBasePolicyShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created, nil
}

func (aaa *BaseLegalPoliciesWithNamespaceService) RetrieveAllPolicyTypes1Short(input *base_legal_policies_with_namespace.RetrieveAllPolicyTypes1Params) (*base_legal_policies_with_namespace.RetrieveAllPolicyTypes1Response, error) {
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
	if tempFlightIdBaseLegalPoliciesWithNamespace != nil {
		input.XFlightId = tempFlightIdBaseLegalPoliciesWithNamespace
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.BaseLegalPoliciesWithNamespace.RetrieveAllPolicyTypes1Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok, nil
}
