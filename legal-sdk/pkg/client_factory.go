// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package legal

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
)

type LegalClient struct {
	Agreement                            *AgreementService
	BaseLegalPolicies                    *BaseLegalPoliciesService
	LocalizedPolicyVersions              *LocalizedPolicyVersionsService
	AgreementWithNamespace               *AgreementWithNamespaceService
	BaseLegalPoliciesWithNamespace       *BaseLegalPoliciesWithNamespaceService
	LocalizedPolicyVersionsWithNamespace *LocalizedPolicyVersionsWithNamespaceService
	PolicyVersionsWithNamespace          *PolicyVersionsWithNamespaceService
	PoliciesWithNamespace                *PoliciesWithNamespaceService
	AdminUserAgreement                   *AdminUserAgreementService
	AdminUserEligibilities               *AdminUserEligibilitiesService
	Policies                             *PoliciesService
	PolicyVersions                       *PolicyVersionsService
	UserInfo                             *UserInfoService
	Anonymization                        *AnonymizationService
	Eligibilities                        *EligibilitiesService
	Utility                              *UtilityService
	PoliciesWithNamespaceV2              *PoliciesWithNamespaceV2Service
}

func NewLegalClient(session repository.Session) *LegalClient {
	httpClient := NewLegalHttpClient(session.ConfigRepository)
	return &LegalClient{
		Agreement:                            &AgreementService{Client: httpClient, Session: session},
		BaseLegalPolicies:                    &BaseLegalPoliciesService{Client: httpClient, Session: session},
		LocalizedPolicyVersions:              &LocalizedPolicyVersionsService{Client: httpClient, Session: session},
		AgreementWithNamespace:               &AgreementWithNamespaceService{Client: httpClient, Session: session},
		BaseLegalPoliciesWithNamespace:       &BaseLegalPoliciesWithNamespaceService{Client: httpClient, Session: session},
		LocalizedPolicyVersionsWithNamespace: &LocalizedPolicyVersionsWithNamespaceService{Client: httpClient, Session: session},
		PolicyVersionsWithNamespace:          &PolicyVersionsWithNamespaceService{Client: httpClient, Session: session},
		PoliciesWithNamespace:                &PoliciesWithNamespaceService{Client: httpClient, Session: session},
		AdminUserAgreement:                   &AdminUserAgreementService{Client: httpClient, Session: session},
		AdminUserEligibilities:               &AdminUserEligibilitiesService{Client: httpClient, Session: session},
		Policies:                             &PoliciesService{Client: httpClient, Session: session},
		PolicyVersions:                       &PolicyVersionsService{Client: httpClient, Session: session},
		UserInfo:                             &UserInfoService{Client: httpClient, Session: session},
		Anonymization:                        &AnonymizationService{Client: httpClient, Session: session},
		Eligibilities:                        &EligibilitiesService{Client: httpClient, Session: session},
		Utility:                              &UtilityService{Client: httpClient, Session: session},
		PoliciesWithNamespaceV2:              &PoliciesWithNamespaceV2Service{Client: httpClient, Session: session},
	}
}

func NewLegalHttpClient(configRepository repository.ConfigRepository) *legalclient.JusticeLegalService {
	baseURL := strings.TrimSuffix(configRepository.GetJusticeBaseUrl(), "/")

	if extendedConfigRepository, ok := configRepository.(repository.ExtendedConfigRepository); ok {
		baseURL = extendedConfigRepository.GetCustomBasePath("/legal")
		baseURL = strings.TrimSuffix(baseURL, "/")
	}

	if len(baseURL) > 0 {
		baseURLSplit := strings.Split(baseURL, "://")
		httpClientConfig := &legalclient.TransportConfig{
			Host:          baseURLSplit[1],
			BasePath:      "",
			Schemes:       []string{baseURLSplit[0]},
			UserAgentFunc: GetUserAgent,
		}
		return legalclient.NewHTTPClientWithConfig(nil, httpClientConfig)
	} else {
		return legalclient.NewHTTPClient(nil)
	}
}
