// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package legal

import (
	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclient/policies_with_namespace_v2"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

// PoliciesWithNamespaceV2Service this is use for compatibility with latest modular sdk only
// Deprecated: 2023-03-30 - please use PoliciesWithNamespaceV2Service imported from "github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg"
type PoliciesWithNamespaceV2Service struct {
	Client           *legalclient.JusticeLegalService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository

	FlightIdRepository *utils.FlightIdContainer
}

var tempFlightIdPoliciesWithNamespaceV2 *string

func (aaa *PoliciesWithNamespaceV2Service) UpdateFlightId(flightId string) {
	tempFlightIdPoliciesWithNamespaceV2 = &flightId
}

func (aaa *PoliciesWithNamespaceV2Service) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

func (aaa *PoliciesWithNamespaceV2Service) RetrieveLatestPoliciesByNamespaceAndCountryPublicShort(input *policies_with_namespace_v2.RetrieveLatestPoliciesByNamespaceAndCountryPublicParams) (*policies_with_namespace_v2.RetrieveLatestPoliciesByNamespaceAndCountryPublicResponse, error) {
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}
	if tempFlightIdPoliciesWithNamespaceV2 != nil {
		input.XFlightId = tempFlightIdPoliciesWithNamespaceV2
	} else if aaa.FlightIdRepository != nil {
		utils.GetDefaultFlightID().SetFlightID(aaa.FlightIdRepository.Value)
	}

	ok, err := aaa.Client.PoliciesWithNamespaceV2.RetrieveLatestPoliciesByNamespaceAndCountryPublicShort(input)
	if err != nil {
		return nil, err
	}

	return ok, nil
}
