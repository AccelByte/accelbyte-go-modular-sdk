// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package legal

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclient/base_legal_policies_with_namespace"
	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

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

func (aaa *BaseLegalPoliciesWithNamespaceService) RetrieveAllLegalPoliciesByNamespaceShort(input *base_legal_policies_with_namespace.RetrieveAllLegalPoliciesByNamespaceParams) ([]*legalclientmodels.RetrieveBasePolicyResponse, error) {
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

	return ok.GetPayload(), nil
}

func (aaa *BaseLegalPoliciesWithNamespaceService) CreatePolicy1Short(input *base_legal_policies_with_namespace.CreatePolicy1Params) (*legalclientmodels.CreateBasePolicyResponse, error) {
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

	return created.GetPayload(), nil
}

func (aaa *BaseLegalPoliciesWithNamespaceService) RetrieveSinglePolicy1Short(input *base_legal_policies_with_namespace.RetrieveSinglePolicy1Params) (*legalclientmodels.RetrieveBasePolicyResponse, error) {
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

	return ok.GetPayload(), nil
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

func (aaa *BaseLegalPoliciesWithNamespaceService) PartialUpdatePolicy1Short(input *base_legal_policies_with_namespace.PartialUpdatePolicy1Params) (*legalclientmodels.UpdateBasePolicyResponse, error) {
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

	return ok.GetPayload(), nil
}

func (aaa *BaseLegalPoliciesWithNamespaceService) RetrievePolicyCountry1Short(input *base_legal_policies_with_namespace.RetrievePolicyCountry1Params) (*legalclientmodels.RetrievePolicyResponse, error) {
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

	return ok.GetPayload(), nil
}

func (aaa *BaseLegalPoliciesWithNamespaceService) RetrieveAllPoliciesFromBasePolicyShort(input *base_legal_policies_with_namespace.RetrieveAllPoliciesFromBasePolicyParams) ([]*legalclientmodels.RetrievePoliciesFromBasePolicyResponse, error) {
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

	return ok.GetPayload(), nil
}

func (aaa *BaseLegalPoliciesWithNamespaceService) CreatePolicyUnderBasePolicyShort(input *base_legal_policies_with_namespace.CreatePolicyUnderBasePolicyParams) (*legalclientmodels.CreatePolicyResponse, error) {
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

	return created.GetPayload(), nil
}

func (aaa *BaseLegalPoliciesWithNamespaceService) RetrieveAllPolicyTypes1Short(input *base_legal_policies_with_namespace.RetrieveAllPolicyTypes1Params) ([]*legalclientmodels.RetrievePolicyTypeResponse, error) {
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

	return ok.GetPayload(), nil
}
