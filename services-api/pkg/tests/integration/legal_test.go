// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"testing"

	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"

	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclient/agreement"
	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclientmodels"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/tests/integration"

	legal "github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg"
)

var (
	agreementService = &legal.AgreementService{
		Client:          legal.NewLegalClient(auth.DefaultConfigRepositoryImpl()),
		TokenRepository: tokenRepository,
	}
	baseLegalService = &legal.BaseLegalPoliciesService{
		Client:          legal.NewLegalClient(auth.DefaultConfigRepositoryImpl()),
		TokenRepository: tokenRepository,
	}
	policyVersionService = &legal.PolicyVersionsService{
		Client:          legal.NewLegalClient(auth.DefaultConfigRepositoryImpl()),
		TokenRepository: tokenRepository,
	}
	isAccepted               = true
	bodyLegals               []*legalclientmodels.AcceptAgreementRequest
	localizedPolicyVersionID = ""
	policyVersionID          = ""
	policyID                 = "" // the marketing policy
	bodyLegal                = &legalclientmodels.AcceptAgreementRequest{
		IsAccepted:               &isAccepted,
		LocalizedPolicyVersionID: &localizedPolicyVersionID,
		PolicyID:                 &policyID,
		PolicyVersionID:          &policyVersionID,
	}
)

func TestIntegrationBulkAcceptVersionedPolicy(t *testing.T) {
	t.Parallel()

	// Login User - Arrange
	Init()

	// Check if policy exist
	exist, errCheck := checkPolicy()
	if !exist {
		t.Skip("No policy to accept found.")
	}

	// CASE Bulk accept policy versions
	bodyLegals = append(bodyLegals, bodyLegal)
	inputLegal := &agreement.BulkAcceptVersionedPolicyParams{
		Body: bodyLegals,
	}

	ok, err := agreementService.BulkAcceptVersionedPolicyShort(inputLegal)
	// ESAC

	// Assert
	assert.Nil(t, errCheck, "errCheck should be nil")
	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

func TestIntegrationRetrieveAgreementsPublic(t *testing.T) {
	t.Parallel()
	// Login User - Arrange
	Init()

	// CASE Get agreements
	inputLegal := &agreement.RetrieveAgreementsPublicParams{}

	ok, err := agreementService.RetrieveAgreementsPublicShort(inputLegal)
	// ESAC

	// Assert
	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

func TestIntegrationChangePreferenceConsent(t *testing.T) {
	t.Parallel()

	// Check if policy exist
	exist, errCheck := checkPolicy()
	if !exist {
		t.Skip("No policy to accept found.")
	}

	// CASE Update marketing preference consent
	bodyLegals = append(bodyLegals, bodyLegal)
	inputLegal := &agreement.ChangePreferenceConsentParams{
		Body:      bodyLegals,
		Namespace: integration.NamespaceTest,
		UserID:    GetUserID(),
	}

	err := agreementService.ChangePreferenceConsentShort(inputLegal)
	// ESAC

	// Assert
	assert.Nil(t, errCheck, "errCheck should be nil")
	assert.Nil(t, err, "err should be nil")
}

func checkPolicy() (bool, error) {
	// CASE Retrieve Agreements Public
	input := &agreement.RetrieveAgreementsPublicParams{}

	policiesExist, err := agreementService.RetrieveAgreementsPublicShort(input)
	// ESAC

	if err != nil {
		return false, err
	}

	if len(policiesExist.Data) == 0 {
		return false, nil
	} else {
		policyID = policiesExist.Data[0].PolicyID
		policyVersionID = policiesExist.Data[0].PolicyID
		localizedPolicyVersionID = *policiesExist.Data[0].LocalizedPolicyVersion.ID
	}

	return true, nil
}
