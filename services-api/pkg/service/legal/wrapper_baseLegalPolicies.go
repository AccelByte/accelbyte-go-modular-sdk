// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package legal

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclient/base_legal_policies"
	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

// BaseLegalPoliciesService this is use for compatibility with latest modular sdk only
// Deprecated: 2023-03-30 - please use BaseLegalPoliciesService imported from "github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg"
type BaseLegalPoliciesService struct {
	Client           *legalclient.JusticeLegalService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdBaseLegalPolicies *string

func (aaa *BaseLegalPoliciesService) UpdateFlightId(flightId string) {
	tempFlightIdBaseLegalPolicies = &flightId
}

func (aaa *BaseLegalPoliciesService) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

// Deprecated: 2022-01-10 - Please use RetrieveAllLegalPoliciesShort instead.
func (aaa *BaseLegalPoliciesService) RetrieveAllLegalPolicies(input *base_legal_policies.RetrieveAllLegalPoliciesParams) ([]*legalclientmodels.RetrieveBasePolicyResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.BaseLegalPolicies.RetrieveAllLegalPolicies(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - Please use CreatePolicyShort instead.
func (aaa *BaseLegalPoliciesService) CreatePolicy(input *base_legal_policies.CreatePolicyParams) (*legalclientmodels.CreateBasePolicyResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, notFound, unprocessableEntity, err := aaa.Client.BaseLegalPolicies.CreatePolicy(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: 2022-01-10 - Please use RetrieveSinglePolicyShort instead.
func (aaa *BaseLegalPoliciesService) RetrieveSinglePolicy(input *base_legal_policies.RetrieveSinglePolicyParams) (*legalclientmodels.RetrieveBasePolicyResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := aaa.Client.BaseLegalPolicies.RetrieveSinglePolicy(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - Please use PartialUpdatePolicyShort instead.
func (aaa *BaseLegalPoliciesService) PartialUpdatePolicy(input *base_legal_policies.PartialUpdatePolicyParams) (*legalclientmodels.UpdateBasePolicyResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, err := aaa.Client.BaseLegalPolicies.PartialUpdatePolicy(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - Please use RetrievePolicyCountryShort instead.
func (aaa *BaseLegalPoliciesService) RetrievePolicyCountry(input *base_legal_policies.RetrievePolicyCountryParams) (*legalclientmodels.RetrievePolicyResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := aaa.Client.BaseLegalPolicies.RetrievePolicyCountry(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - Please use RetrieveAllPolicyTypesShort instead.
func (aaa *BaseLegalPoliciesService) RetrieveAllPolicyTypes(input *base_legal_policies.RetrieveAllPolicyTypesParams) ([]*legalclientmodels.RetrievePolicyTypeResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := aaa.Client.BaseLegalPolicies.RetrieveAllPolicyTypes(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *BaseLegalPoliciesService) RetrieveAllLegalPoliciesShort(input *base_legal_policies.RetrieveAllLegalPoliciesParams) ([]*legalclientmodels.RetrieveBasePolicyResponse, error) {
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
	if tempFlightIdBaseLegalPolicies != nil {
		input.XFlightId = tempFlightIdBaseLegalPolicies
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.BaseLegalPolicies.RetrieveAllLegalPoliciesShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *BaseLegalPoliciesService) CreatePolicyShort(input *base_legal_policies.CreatePolicyParams) (*legalclientmodels.CreateBasePolicyResponse, error) {
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
	if tempFlightIdBaseLegalPolicies != nil {
		input.XFlightId = tempFlightIdBaseLegalPolicies
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	created, err := aaa.Client.BaseLegalPolicies.CreatePolicyShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (aaa *BaseLegalPoliciesService) RetrieveSinglePolicyShort(input *base_legal_policies.RetrieveSinglePolicyParams) (*legalclientmodels.RetrieveBasePolicyResponse, error) {
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
	if tempFlightIdBaseLegalPolicies != nil {
		input.XFlightId = tempFlightIdBaseLegalPolicies
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.BaseLegalPolicies.RetrieveSinglePolicyShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *BaseLegalPoliciesService) PartialUpdatePolicyShort(input *base_legal_policies.PartialUpdatePolicyParams) (*legalclientmodels.UpdateBasePolicyResponse, error) {
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
	if tempFlightIdBaseLegalPolicies != nil {
		input.XFlightId = tempFlightIdBaseLegalPolicies
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.BaseLegalPolicies.PartialUpdatePolicyShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *BaseLegalPoliciesService) RetrievePolicyCountryShort(input *base_legal_policies.RetrievePolicyCountryParams) (*legalclientmodels.RetrievePolicyResponse, error) {
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
	if tempFlightIdBaseLegalPolicies != nil {
		input.XFlightId = tempFlightIdBaseLegalPolicies
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.BaseLegalPolicies.RetrievePolicyCountryShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *BaseLegalPoliciesService) RetrieveAllPolicyTypesShort(input *base_legal_policies.RetrieveAllPolicyTypesParams) ([]*legalclientmodels.RetrievePolicyTypeResponse, error) {
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
	if tempFlightIdBaseLegalPolicies != nil {
		input.XFlightId = tempFlightIdBaseLegalPolicies
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.BaseLegalPolicies.RetrieveAllPolicyTypesShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
