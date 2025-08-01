// Copyright (c) 2024 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"errors"
	"strings"
	"testing"
	"time"

	csm "github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclient/app_v2"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclient/configuration_v2"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclientmodels"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/clients"
	"github.com/stretchr/testify/assert"
)

var (
	csmAppService = &csm.AppV2Service{
		Client:          csm.NewCsmClient(configRepository),
		TokenRepository: tokenRepository,
	}

	csmConfigService = &csm.ConfigurationV2Service{
		Client:          csm.NewCsmClient(configRepository),
		TokenRepository: tokenRepository,
	}

	// csmNotificationSubscriptionService = &csm.NotificationSubscriptionService{
	// 	Client:          csm.NewCsmClient(configRepository),
	// 	TokenRepository: tokenRepository,
	// }

	cpu      int32 = 100
	scenario       = "service-extension"

	secretName         = "THIS_IS_A_SECRET"
	secretValue        = "ssshhhh"
	updatedSecretValue = "silence"

	configSource = "plaintext"

	envVarName         = "MY_ENV_VAR"
	envVarValue        = "helloworld!"
	updatedEnvVarValue = "hellosekai!"

	// appDownNotification = "app-down"

	forced = "true"

	secretConfigID = ""
	envVarConfigID = ""
)

const (
	extendAppName = "test-golang-app-integration"
)

func TestIntegrationExtendApp(t *testing.T) {
	// Login User - Arrange
	Init()

	// CASE Create extend app
	input := &app_v2.CreateAppV2Params{
		Namespace: namespace,
		App:       extendAppName,
		Body: &csmclientmodels.ApimodelCreateAppV2Request{
			CPU: &csmclientmodels.ApimodelCPURequest{
				RequestCPU: &cpu,
			},
			Description: "test integration create extend app for extend sdk",
			Memory: &csmclientmodels.ApimodelMemoryRequest{
				RequestMemory: 100,
			},
			Scenario: &scenario,
		},
	}
	ok, err := csmAppService.CreateAppV2Short(input)
	// ESAC

	// Assert
	assert.NoError(t, err, "should not return an error")
	assert.NotNil(t, ok, "response should not be nil")

	// CASE Get extend app detail
	app, err := csmAppService.GetAppV2Short(&app_v2.GetAppV2Params{
		Namespace: namespace,
		App:       extendAppName,
	})
	// ESAC

	// Assert
	assert.NoError(t, err, "should not return an error")
	assert.Equal(t, extendAppName, *app.Data.AppName)
}

func TestIntegrationSecretVariable(t *testing.T) {
	// Login User - Arrange
	Init()

	// waiting app to be ready
	time.Sleep(3 * time.Minute)

	// CASE Save extend app secret
	input := &configuration_v2.SaveSecretV2Params{
		Namespace: namespace,
		App:       extendAppName,
		Body: &csmclientmodels.ApimodelSaveSecretConfigurationV2Request{
			ConfigName: &secretName,
			Value:      &secretValue,
			Source:     &configSource,
		},
	}

	secret, err := csmConfigService.SaveSecretV2Short(input)
	// ESAC

	// Assert
	assert.NoError(t, err, "should not return an error")
	assert.NotNil(t, secret, "response should not be nil")

	// CASE Get extend app secrets list
	secrets, err := csmConfigService.GetListOfSecretsV2Short(&configuration_v2.GetListOfSecretsV2Params{
		Namespace: namespace,
		App:       extendAppName,
	})
	// ESAC

	secretConfigID = *secret.Data.ConfigID

	// Assert
	assert.NoError(t, err, "should not return an error")
	assert.NotNil(t, secrets, "response should not be nil")

	// CASE Update extend app secret
	updatedSecret, err := csmConfigService.UpdateSecretV2Short(&configuration_v2.UpdateSecretV2Params{
		Namespace: namespace,
		App:       extendAppName,
		ConfigID:  *secret.Data.ConfigID,
		Body: &csmclientmodels.ApimodelUpdateSecretConfigurationV2Request{
			Value: &updatedSecretValue,
		},
	})
	// ESAC

	// Assert
	assert.NoError(t, err, "should not return an error")
	assert.NotNil(t, updatedSecret, "response should not be nil")
}

func TestIntegrationEnvironmentVariable(t *testing.T) {
	// Login User - Arrange
	Init()

	// CASE Save extend app environment variable
	input := &configuration_v2.SaveVariableV2Params{
		Namespace: namespace,
		App:       extendAppName,
		Body: &csmclientmodels.ApimodelSaveConfigurationV2Request{
			ApplyMask:  true,
			ConfigName: &envVarName,
			Value:      &envVarValue,
			Source:     &configSource,
		},
	}

	envVar, err := csmConfigService.SaveVariableV2Short(input)
	// ESAC

	// Assert
	assert.NoError(t, err, "should not return an error")
	assert.NotNil(t, envVar, "response should not be nil")

	// CASE Get extend app environment variables list
	envVars, err := csmConfigService.GetListOfVariablesV2Short(&configuration_v2.GetListOfVariablesV2Params{
		Namespace: namespace,
		App:       extendAppName,
	})
	// ESAC

	envVarConfigID = *envVar.Data.ConfigID

	// Assert
	assert.NoError(t, err, "should not return an error")
	assert.NotNil(t, envVars, "response should not be nil")

	// CASE Update extend app environment variable
	updatedVariable, err := csmConfigService.UpdateVariableV2Short(&configuration_v2.UpdateVariableV2Params{
		Namespace: namespace,
		App:       extendAppName,
		ConfigID:  *envVar.Data.ConfigID,
		Body: &csmclientmodels.ApimodelUpdateConfigurationV2Request{
			ApplyMask: true,
			Value:     &updatedEnvVarValue,
		},
	})
	// ESAC

	// Assert
	assert.NoError(t, err, "should not return an error")
	assert.NotNil(t, updatedVariable, "response should not be nil")
}

// TODO: fix the CSM
// func TestIntegrationNotificationSubscription(t *testing.T) {
// 	// Login User - Arrange
// 	Init()

// 	input := notification_subscription.SubscribeV2HandlerParams{
// 		Namespace: namespace,
// 		App:       extendAppName,
// 		Body: &csmclientmodels.ApimodelSelfSubscribeNotificationRequest{
// 			NotificationType: &appDownNotification,
// 		},
// 	}

// 	err := csmNotificationSubscriptionService.SubscribeV2HandlerShort(&input)

// 	// Assert
// 	assert.NoError(t, err, "should not return an error")

// 	notifs, err := csmNotificationSubscriptionService.GetNotificationSubscriberListV2Short(&notification_subscription.GetNotificationSubscriberListV2Params{
// 		Namespace:        namespace,
// 		App:              extendAppName,
// 		NotificationType: &appDownNotification,
// 	})

// 	assert.NoError(t, err, "should not return an error")
// 	assert.NotNil(t, notifs, "response should not be nil")
// }

func TestIntegrationCleanupExtendApp(t *testing.T) {
	appClientID, err := getExtendAppClientID(extendAppName, namespace)
	assert.NoError(t, err)

	// CASE Delete extend app's IAM Client
	err = clientService.AdminDeleteClientV3Short(&clients.AdminDeleteClientV3Params{
		Namespace: namespace,
		ClientID:  appClientID,
	})
	// ESAC

	// Assert
	assert.NoError(t, err)

	// CASE Delete extend app secret
	err = csmConfigService.DeleteSecretV2Short(&configuration_v2.DeleteSecretV2Params{
		Namespace: namespace,
		App:       extendAppName,
		ConfigID:  secretConfigID,
	})
	// ESAC

	// Assert
	assert.NoError(t, err, "should not return an error")

	// CASE Delete extend app environment variable
	err = csmConfigService.DeleteVariableV2Short(&configuration_v2.DeleteVariableV2Params{
		Namespace: namespace,
		App:       extendAppName,
		ConfigID:  envVarConfigID,
	})
	// ESAC

	// Assert
	assert.NoError(t, err, "should not return an error")

	// err = csmNotificationSubscriptionService.UnsubscribeV2HandlerShort(&notification_subscription.UnsubscribeV2HandlerParams{
	// 	Namespace: namespace,
	// 	App:       extendAppName,
	// })

	// assert.NoError(t, err, "should not return an error")

	// CASE Delete extend app
	err = csmAppService.DeleteAppV2Short(&app_v2.DeleteAppV2Params{
		Namespace: namespace,
		App:       extendAppName,
		Forced:    &forced,
	})
	// ESAC

	// Assert
	assert.NoError(t, err, "should not return an error")
}

func getExtendAppClientID(extendAppName string, namespace string) (string, error) {
	secretResp, err := csmConfigService.GetListOfSecretsV2Short(&configuration_v2.GetListOfSecretsV2Params{
		App:       extendAppName,
		Namespace: namespace,
	})
	if err != nil {
		return "", err
	}

	if secretResp == nil {
		return "", errors.New("get list of secret returning empty response")
	}

	for _, secret := range secretResp.Data.Data {
		if strings.ToUpper(*secret.ConfigName) == "AB_CLIENT_ID" {
			return *secret.Value, nil
		}
	}

	return "", errors.New("app client ID not found")
}
