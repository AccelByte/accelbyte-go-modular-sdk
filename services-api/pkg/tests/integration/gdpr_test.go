// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"strings"
	"testing"

	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-modular-sdk/gdpr-sdk/pkg/gdprclient/data_retrieval"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/tests/integration"

	gdpr "github.com/AccelByte/accelbyte-go-modular-sdk/gdpr-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/gdpr-sdk/pkg/gdprclient/configuration"
)

var (
	gdprConfigurationService = &gdpr.ConfigurationService{
		Client:          gdpr.NewGdprClient(auth.DefaultConfigRepositoryImpl()),
		TokenRepository: tokenRepository,
	}
	gdprRetrievalService = &gdpr.DataRetrievalService{
		Client:          gdpr.NewGdprClient(auth.DefaultConfigRepositoryImpl()),
		TokenRepository: tokenRepository,
	}
	body   []string
	email  = "goSDK@accelbyte.net"
	emails []string
)

func TestIntegrationAdminGetUserPersonalDataRequest(t *testing.T) {
	if strings.Contains(configRepository.BaseUrl, "gamingservices.accelbyte.io") {
		t.Skip("skip for ags starter")
	}

	// Login User - Arrange
	Init()

	// CASE Create admin email configuration
	body = append(body, email)
	input := &data_retrieval.PublicGetUserPersonalDataRequestsParams{
		Namespace: integration.NamespaceTest,
		UserID:    GetUserID(),
	}

	get, err := gdprRetrievalService.PublicGetUserPersonalDataRequestsShort(input)
	// ESAC

	// Assert
	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, get.Data, "should not be nil")
}

func TestIntegrationSaveAdminEmailConfiguration(t *testing.T) {
	if strings.Contains(configRepository.BaseUrl, "gamingservices.accelbyte.io") {
		t.Skip("skip for ags starter")
	}

	// Login User - Arrange
	Init()

	// CASE Create admin email configuration
	body = append(body, email)
	input := &configuration.SaveAdminEmailConfigurationParams{
		Body:      body,
		Namespace: integration.NamespaceTest,
	}

	err := gdprConfigurationService.SaveAdminEmailConfigurationShort(input)
	// ESAC

	// Assert
	assert.Nil(t, err, "err should be nil")
}

func TestIntegrationAdminListDataRetrieval(t *testing.T) {
	if strings.Contains(configRepository.BaseUrl, "gamingservices.accelbyte.io") {
		t.Skip("skip for ags starter")
	}

	// Login User - Arrange
	Init()

	// CASE Get admin email addresses configuration
	input := &configuration.GetAdminEmailConfigurationParams{
		Namespace: integration.NamespaceTest,
	}

	ok, err := gdprConfigurationService.GetAdminEmailConfigurationShort(input)
	// ESAC

	ok.Unpack()

	// Assert
	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

func TestIntegrationUpdateAdminEmailConfiguration(t *testing.T) {
	if strings.Contains(configRepository.BaseUrl, "gamingservices.accelbyte.io") {
		t.Skip("skip for ags starter")
	}

	// Login User - Arrange
	Init()

	// CASE Update admin email configuration
	body = append(body, email)
	input := &configuration.UpdateAdminEmailConfigurationParams{
		Body:      body,
		Namespace: integration.NamespaceTest,
	}

	err := gdprConfigurationService.UpdateAdminEmailConfigurationShort(input)
	if err != nil {
		assert.FailNow(t, err.Error())
	}
	// ESAC

	// Assert
	assert.Nil(t, err, "err should be nil")
}

func TestIntegrationDeleteAdminEmailConfiguration(t *testing.T) {
	if strings.Contains(configRepository.BaseUrl, "gamingservices.accelbyte.io") {
		t.Skip("skip for ags starter")
	}

	// Login User - Arrange
	Init()

	// CASE Delete admin email configuration
	emails = append(emails, email)
	input := &configuration.DeleteAdminEmailConfigurationParams{
		Emails:    emails,
		Namespace: integration.NamespaceTest,
	}

	err := gdprConfigurationService.DeleteAdminEmailConfigurationShort(input)
	// ESAC

	// Assert
	assert.Nil(t, err, "response should not be nil")
}
