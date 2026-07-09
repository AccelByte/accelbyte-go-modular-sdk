#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Code generated. DO NOT EDIT.

# Meta:
# - random seed: 256
# - template file: 

# Instructions:
# - Run the Justice SDK Mock Server first before running this script.

export AB_BASE_URL="http://127.0.0.1:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"

EXIT_CODE=0

eval_tap() {
  if [ $1 -eq 0 ]; then
    echo "ok $2 - $3"
  else
    EXIT_CODE=1
    echo "not ok $2 - $3"
    sed 's/^/# /g' $4
  fi
  rm -f $4
}

echo "TAP version 13"
echo "1..108"

#- 1 Login
samples/cli/sample-apps login \
    -u 'admin' \
    -p 'admin' \
    > test.out 2>&1
eval_tap $? 1 'Login' test.out

if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

touch "tmp.dat"

#- 2 ListAppUI
samples/cli/sample-apps Csm listAppUI \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --name 'JtkVFrur' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 2 'ListAppUI' test.out

#- 3 CreateAppUI
samples/cli/sample-apps Csm createAppUI \
    --namespace $AB_NAMESPACE \
    --body '{"name": "TYrCBzvY"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateAppUI' test.out

#- 4 DeleteAppUI
samples/cli/sample-apps Csm deleteAppUI \
    --appUiName 'zxwz5Fop' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'DeleteAppUI' test.out

#- 5 UploadAppUIFile
samples/cli/sample-apps Csm uploadAppUIFile \
    --appUiName 'opmohcFS' \
    --namespace $AB_NAMESPACE \
    --version '2YI9iuS1' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 5 'UploadAppUIFile' test.out

#- 6 GetAppListV1
eval_tap 0 6 'GetAppListV1 # SKIP deprecated' test.out

#- 7 GetAppV1
eval_tap 0 7 'GetAppV1 # SKIP deprecated' test.out

#- 8 CreateAppV1
eval_tap 0 8 'CreateAppV1 # SKIP deprecated' test.out

#- 9 DeleteAppV1
eval_tap 0 9 'DeleteAppV1 # SKIP deprecated' test.out

#- 10 UpdateAppV1
eval_tap 0 10 'UpdateAppV1 # SKIP deprecated' test.out

#- 11 CreateDeploymentV1
eval_tap 0 11 'CreateDeploymentV1 # SKIP deprecated' test.out

#- 12 GetAppImageListV1
eval_tap 0 12 'GetAppImageListV1 # SKIP deprecated' test.out

#- 13 DeleteAppImagesV1
eval_tap 0 13 'DeleteAppImagesV1 # SKIP deprecated' test.out

#- 14 GetAppReleaseV1
samples/cli/sample-apps Csm getAppReleaseV1 \
    --app 'yZOd4jN1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'GetAppReleaseV1' test.out

#- 15 GetListOfSecretsV1
eval_tap 0 15 'GetListOfSecretsV1 # SKIP deprecated' test.out

#- 16 SaveSecretV1
eval_tap 0 16 'SaveSecretV1 # SKIP deprecated' test.out

#- 17 UpdateSecretV1
eval_tap 0 17 'UpdateSecretV1 # SKIP deprecated' test.out

#- 18 DeleteSecretV1
eval_tap 0 18 'DeleteSecretV1 # SKIP deprecated' test.out

#- 19 StartAppV1
eval_tap 0 19 'StartAppV1 # SKIP deprecated' test.out

#- 20 StopAppV1
eval_tap 0 20 'StopAppV1 # SKIP deprecated' test.out

#- 21 GetListOfVariablesV1
eval_tap 0 21 'GetListOfVariablesV1 # SKIP deprecated' test.out

#- 22 SaveVariableV1
eval_tap 0 22 'SaveVariableV1 # SKIP deprecated' test.out

#- 23 UpdateVariableV1
eval_tap 0 23 'UpdateVariableV1 # SKIP deprecated' test.out

#- 24 DeleteVariableV1
eval_tap 0 24 'DeleteVariableV1 # SKIP deprecated' test.out

#- 25 GetListOfDeploymentV1
eval_tap 0 25 'GetListOfDeploymentV1 # SKIP deprecated' test.out

#- 26 GetDeploymentV1
eval_tap 0 26 'GetDeploymentV1 # SKIP deprecated' test.out

#- 27 DeleteDeploymentV1
eval_tap 0 27 'DeleteDeploymentV1 # SKIP deprecated' test.out

#- 28 GetExtendFile
samples/cli/sample-apps Csm getExtendFile \
    --filePath 'Kk8ZMCqp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetExtendFile' test.out

#- 29 PublicGetMessages
samples/cli/sample-apps Csm publicGetMessages \
    > test.out 2>&1
eval_tap $? 29 'PublicGetMessages' test.out

#- 30 GetAppListV2
samples/cli/sample-apps Csm getAppListV2 \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '45' \
    --body '{"appNames": ["L6G0BoTO", "BvAu1ITZ", "2Jv2jega"], "appStatuses": ["UsUiVIPn", "g0kFOEqT", "dVqAzCXQ"], "fuzzyAppName": "n8VvC34O", "scenario": "8rLkDH6a"}' \
    > test.out 2>&1
eval_tap $? 30 'GetAppListV2' test.out

#- 31 GetAppV2
samples/cli/sample-apps Csm getAppV2 \
    --app 'IqGQSvwO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetAppV2' test.out

#- 32 CreateAppV2
eval_tap 0 32 'CreateAppV2 # SKIP deprecated' test.out

#- 33 DeleteAppV2
samples/cli/sample-apps Csm deleteAppV2 \
    --app 'jEYKxdUs' \
    --namespace $AB_NAMESPACE \
    --forced '1ezuVpV3' \
    > test.out 2>&1
eval_tap $? 33 'DeleteAppV2' test.out

#- 34 UpdateAppV2
samples/cli/sample-apps Csm updateAppV2 \
    --app '6FH0oiNS' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "mW59bRvk", "enableDebugMode": true}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateAppV2' test.out

#- 35 ApplyAppConfigV2
samples/cli/sample-apps Csm applyAppConfigV2 \
    --app 'FH8HgvLw' \
    --namespace $AB_NAMESPACE \
    --body '{"autoscaling": {"targetCPUUtilizationPercent": 8}, "cpu": {"requestCPU": 85}, "description": "aeQsmwaT", "memory": {"requestMemory": 27}, "permissions": [{"action": 17, "resource": "yA3BGnfO"}, {"action": 42, "resource": "0I9s6GYI"}, {"action": 50, "resource": "kknVwarI"}], "replica": {"maxReplica": 29, "minReplica": 30}, "scenario": "TTC5Kwf6", "secrets": [{"name": "O3ocnvCD", "value": "Q0wSNqut"}, {"name": "f1iSDtUh", "value": "rYWD6LqL"}, {"name": "DspgGvK1", "value": "NLba7EDR"}], "variables": [{"name": "FmQsBzE4", "value": "uRk7wNAX"}, {"name": "NZnPPKua", "value": "Y3au2ipK"}, {"name": "oSZx6UnW", "value": "F29ifW7c"}], "vmSharingConfiguration": "i5IOlFsn"}' \
    > test.out 2>&1
eval_tap $? 35 'ApplyAppConfigV2' test.out

#- 36 CreateSubscriptionHandler
samples/cli/sample-apps Csm createSubscriptionHandler \
    --app 'w4HadRpw' \
    --namespace $AB_NAMESPACE \
    --body '{"topicNames": ["kn2w2RaW", "bJ5Pwlrf", "cB8FjfO8"]}' \
    > test.out 2>&1
eval_tap $? 36 'CreateSubscriptionHandler' test.out

#- 37 UnsubscribeTopicHandler
samples/cli/sample-apps Csm unsubscribeTopicHandler \
    --app 'mocFFIfp' \
    --namespace $AB_NAMESPACE \
    --topicName 'zX1J7Sh3' \
    > test.out 2>&1
eval_tap $? 37 'UnsubscribeTopicHandler' test.out

#- 38 CreateDeploymentV2
samples/cli/sample-apps Csm createDeploymentV2 \
    --app 'wStrzbPA' \
    --namespace $AB_NAMESPACE \
    --body '{"imageTag": "JriYaqZA"}' \
    > test.out 2>&1
eval_tap $? 38 'CreateDeploymentV2' test.out

#- 39 GetAppImageListV2
samples/cli/sample-apps Csm getAppImageListV2 \
    --app 'cgRefGgf' \
    --namespace $AB_NAMESPACE \
    --cached 'EqGeSGvX' \
    > test.out 2>&1
eval_tap $? 39 'GetAppImageListV2' test.out

#- 40 DeleteAppImagesV2
samples/cli/sample-apps Csm deleteAppImagesV2 \
    --app 'PwqHuHS1' \
    --namespace $AB_NAMESPACE \
    --body '{"imageTags": ["4h2GWMub", "P6Lnw8J8", "kRyc6c7t"]}' \
    > test.out 2>&1
eval_tap $? 40 'DeleteAppImagesV2' test.out

#- 41 CreateKeyValueCredentialV2
samples/cli/sample-apps Csm createKeyValueCredentialV2 \
    --app 'Y73dZrv1' \
    --namespace $AB_NAMESPACE \
    --body '{"password": "Vxpdflnr", "username": "0fHl5WDL"}' \
    > test.out 2>&1
eval_tap $? 41 'CreateKeyValueCredentialV2' test.out

#- 42 GetIntegrationAppKeyValueClusterV2
samples/cli/sample-apps Csm getIntegrationAppKeyValueClusterV2 \
    --app 'm6wPfjgb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetIntegrationAppKeyValueClusterV2' test.out

#- 43 IntegrateAppKeyValueClusterV2
samples/cli/sample-apps Csm integrateAppKeyValueClusterV2 \
    --app 'MbrhQHiO' \
    --namespace $AB_NAMESPACE \
    --body '{"acknowledgements": {"acceptKeyValueSecureCredentialHandling": true}, "password": "RvgVn9YD", "resourceId": "clkwjAeR", "username": "gsBuakGg"}' \
    > test.out 2>&1
eval_tap $? 43 'IntegrateAppKeyValueClusterV2' test.out

#- 44 RemoveIntegrationAppKeyValueClusterV2
samples/cli/sample-apps Csm removeIntegrationAppKeyValueClusterV2 \
    --app 'MtfHIaWY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'RemoveIntegrationAppKeyValueClusterV2' test.out

#- 45 CreateNewNoSQLDatabaseCredentialV2
samples/cli/sample-apps Csm createNewNoSQLDatabaseCredentialV2 \
    --app 'DzDgKZa8' \
    --namespace $AB_NAMESPACE \
    --body '{"acknowledgements": {"acceptNosqlSecureCredentialHandling": false}, "password": "x8ia9aJW", "username": "ta102eHr"}' \
    > test.out 2>&1
eval_tap $? 45 'CreateNewNoSQLDatabaseCredentialV2' test.out

#- 46 CreateNoSQLDatabaseCredentialV2
eval_tap 0 46 'CreateNoSQLDatabaseCredentialV2 # SKIP deprecated' test.out

#- 47 GetNoSQLDatabaseV2
samples/cli/sample-apps Csm getNoSQLDatabaseV2 \
    --app 'M1OBWGmx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'GetNoSQLDatabaseV2' test.out

#- 48 CreateNoSQLDatabaseV2
samples/cli/sample-apps Csm createNoSQLDatabaseV2 \
    --app 'mK2Pttcy' \
    --namespace $AB_NAMESPACE \
    --body '{"acknowledgements": {"acceptNosqlSecureCredentialHandling": false}, "dbName": "YPD8JUnD", "password": "A7oiyge7", "username": "lLonxDwG"}' \
    > test.out 2>&1
eval_tap $? 48 'CreateNoSQLDatabaseV2' test.out

#- 49 DeleteNoSQLDatabaseV2
samples/cli/sample-apps Csm deleteNoSQLDatabaseV2 \
    --app 'uv0SpMQm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'DeleteNoSQLDatabaseV2' test.out

#- 50 UpdateAppResourcesV2
samples/cli/sample-apps Csm updateAppResourcesV2 \
    --app '8bVlq3Kh' \
    --namespace $AB_NAMESPACE \
    --body '{"autoscaling": {"targetCPUUtilizationPercent": 75}, "cpu": {"requestCPU": 31}, "memory": {"requestMemory": 84}, "replica": {"maxReplica": 81, "minReplica": 64}, "vmSharingConfiguration": "BKwLCzij"}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateAppResourcesV2' test.out

#- 51 UpdateAppResourcesResourceLimitFormV2
samples/cli/sample-apps Csm updateAppResourcesResourceLimitFormV2 \
    --app 'qXssGYav' \
    --namespace $AB_NAMESPACE \
    --body '{"clientEmail": "UeFRZSQO", "preferredLimitReplica": 74, "requestReason": "sYAwOFoc"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdateAppResourcesResourceLimitFormV2' test.out

#- 52 GetListOfSecretsV2
samples/cli/sample-apps Csm getListOfSecretsV2 \
    --app 'GfuBiHAk' \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 52 'GetListOfSecretsV2' test.out

#- 53 SaveSecretV2
samples/cli/sample-apps Csm saveSecretV2 \
    --app 'VWix7VXI' \
    --namespace $AB_NAMESPACE \
    --body '{"configName": "43KxDaCC", "description": "eGgtnkr4", "source": "wFtweyGC", "value": "JlJCt8He"}' \
    > test.out 2>&1
eval_tap $? 53 'SaveSecretV2' test.out

#- 54 UpdateSecretV2
samples/cli/sample-apps Csm updateSecretV2 \
    --app 'glszBNEP' \
    --configId '0Nkd7za1' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "dKd4Zcsm", "value": "1D0UWzam"}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateSecretV2' test.out

#- 55 DeleteSecretV2
samples/cli/sample-apps Csm deleteSecretV2 \
    --app 'h1nIU8xv' \
    --configId '6LkTUKMX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'DeleteSecretV2' test.out

#- 56 CreateSQLDatabaseCredentialV2
samples/cli/sample-apps Csm createSQLDatabaseCredentialV2 \
    --app 'Ax0YYDY1' \
    --namespace $AB_NAMESPACE \
    --body '{"password": "eYO4MjHz", "username": "1jWb6E8F"}' \
    > test.out 2>&1
eval_tap $? 56 'CreateSQLDatabaseCredentialV2' test.out

#- 57 GetSQLDatabaseV2
samples/cli/sample-apps Csm getSQLDatabaseV2 \
    --app 'UZD4z5El' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'GetSQLDatabaseV2' test.out

#- 58 CreateSQLDatabaseV2
samples/cli/sample-apps Csm createSQLDatabaseV2 \
    --app 'GkOwTD0u' \
    --namespace $AB_NAMESPACE \
    --body '{"acknowledgements": {"acceptSQLSecureCredentialHandling": true}, "dbName": "1WIfmBIa", "password": "uX6NsN8y", "username": "bsFB7lru"}' \
    > test.out 2>&1
eval_tap $? 58 'CreateSQLDatabaseV2' test.out

#- 59 DeleteSQLDatabaseV2
samples/cli/sample-apps Csm deleteSQLDatabaseV2 \
    --app 'KZ6bmjkT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'DeleteSQLDatabaseV2' test.out

#- 60 StartAppV2
samples/cli/sample-apps Csm startAppV2 \
    --app 'FYloHBfn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'StartAppV2' test.out

#- 61 StopAppV2
samples/cli/sample-apps Csm stopAppV2 \
    --app 'IMmtL57A' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'StopAppV2' test.out

#- 62 GetNotificationSubscriberListV2
samples/cli/sample-apps Csm getNotificationSubscriberListV2 \
    --app 'U3NQoRty' \
    --namespace $AB_NAMESPACE \
    --notificationType 'uj3oxDCW' \
    > test.out 2>&1
eval_tap $? 62 'GetNotificationSubscriberListV2' test.out

#- 63 BulkSaveSubscriptionAppNotificationV2
samples/cli/sample-apps Csm bulkSaveSubscriptionAppNotificationV2 \
    --app 'noldYr3P' \
    --namespace $AB_NAMESPACE \
    --body '{"subscribers": [{"emailAddress": "taZHjeFX", "notificationType": {"wzDI9Dn7": false, "bTAMzSgA": true, "fKrsCyTP": true}, "userId": "1HsCt9og"}, {"emailAddress": "lImPLWgY", "notificationType": {"3yzJVgLX": true, "u9x6MDOx": true, "H2NVoB48": false}, "userId": "y5SSv73C"}, {"emailAddress": "8rnv1HXh", "notificationType": {"NL3iTHIA": false, "Sy2QmxRN": true, "xdn0Inz0": false}, "userId": "n3VG9ccf"}]}' \
    > test.out 2>&1
eval_tap $? 63 'BulkSaveSubscriptionAppNotificationV2' test.out

#- 64 SubscribeAppNotificationV2
samples/cli/sample-apps Csm subscribeAppNotificationV2 \
    --app 'JbLyWiBg' \
    --namespace $AB_NAMESPACE \
    --body '{"notificationType": "Z0co8QM6", "subscribers": [{"emailAddress": "Ze0gndjc", "userId": "784i4fQX"}, {"emailAddress": "AzvP1Ppq", "userId": "fUZqInSV"}, {"emailAddress": "zcUPDOEj", "userId": "iOuZDw6V"}]}' \
    > test.out 2>&1
eval_tap $? 64 'SubscribeAppNotificationV2' test.out

#- 65 GetSubscriptionV2Handler
samples/cli/sample-apps Csm getSubscriptionV2Handler \
    --app 'K4OfivUJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'GetSubscriptionV2Handler' test.out

#- 66 SubscribeV2Handler
samples/cli/sample-apps Csm subscribeV2Handler \
    --app 'lR1EUvXP' \
    --namespace $AB_NAMESPACE \
    --body '{"notificationType": "0Ah9ImsO"}' \
    > test.out 2>&1
eval_tap $? 66 'SubscribeV2Handler' test.out

#- 67 UnsubscribeV2Handler
samples/cli/sample-apps Csm unsubscribeV2Handler \
    --app 'gdJQgAty' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'UnsubscribeV2Handler' test.out

#- 68 DeleteSubscriptionAppNotificationByUserIDV2
samples/cli/sample-apps Csm deleteSubscriptionAppNotificationByUserIDV2 \
    --app 'UNBtWmL5' \
    --namespace $AB_NAMESPACE \
    --userId 'PILv1f0G' \
    > test.out 2>&1
eval_tap $? 68 'DeleteSubscriptionAppNotificationByUserIDV2' test.out

#- 69 DeleteSubscriptionAppNotificationV2
eval_tap 0 69 'DeleteSubscriptionAppNotificationV2 # SKIP deprecated' test.out

#- 70 GetListOfVariablesV2
samples/cli/sample-apps Csm getListOfVariablesV2 \
    --app 'YShBgfny' \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 70 'GetListOfVariablesV2' test.out

#- 71 SaveVariableV2
samples/cli/sample-apps Csm saveVariableV2 \
    --app 'nSlgTlTt' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": false, "configName": "Fl5rwb1U", "description": "WbQktcpR", "source": "LiVOnSuy", "value": "8ur9JoTJ"}' \
    > test.out 2>&1
eval_tap $? 71 'SaveVariableV2' test.out

#- 72 UpdateVariableV2
samples/cli/sample-apps Csm updateVariableV2 \
    --app '97A39zeM' \
    --configId 'StwGyUxY' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": true, "description": "vHjksm8i", "value": "Cavyt84e"}' \
    > test.out 2>&1
eval_tap $? 72 'UpdateVariableV2' test.out

#- 73 DeleteVariableV2
samples/cli/sample-apps Csm deleteVariableV2 \
    --app 'OqdSZJIK' \
    --configId 'BAb7giGM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 73 'DeleteVariableV2' test.out

#- 74 ListTopicsHandler
samples/cli/sample-apps Csm listTopicsHandler \
    --namespace $AB_NAMESPACE \
    --fuzzyTopicName 'mzD14V1G' \
    --isSubscribedByAppName 'oRvcmcCi' \
    --isUnsubscribedByAppName 'FQVb5AeX' \
    --limit '79' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 74 'ListTopicsHandler' test.out

#- 75 CreateTopicHandler
samples/cli/sample-apps Csm createTopicHandler \
    --namespace $AB_NAMESPACE \
    --body '{"description": "2FLt2hsK", "topicName": "9qTfcRGf"}' \
    > test.out 2>&1
eval_tap $? 75 'CreateTopicHandler' test.out

#- 76 DeleteTopicHandler
samples/cli/sample-apps Csm deleteTopicHandler \
    --namespace $AB_NAMESPACE \
    --topicName 'BN0fOwFP' \
    > test.out 2>&1
eval_tap $? 76 'DeleteTopicHandler' test.out

#- 77 GetListOfDeploymentV2
samples/cli/sample-apps Csm getListOfDeploymentV2 \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '46' \
    --body '{"appIds": ["ImnODTSL", "Z7gbOY5O", "yrygCOdI"], "deploymentIds": ["82JubRb1", "CSEQ5CAF", "iqPOoOsl"], "statuses": ["Q0w0o08m", "eOK7J0aG", "3u4mnT5x"]}' \
    > test.out 2>&1
eval_tap $? 77 'GetListOfDeploymentV2' test.out

#- 78 GetDeploymentV2
samples/cli/sample-apps Csm getDeploymentV2 \
    --deploymentId 'gMQZG0nc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 78 'GetDeploymentV2' test.out

#- 79 DeleteDeploymentV2
samples/cli/sample-apps Csm deleteDeploymentV2 \
    --deploymentId 'xnsPFrEw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 79 'DeleteDeploymentV2' test.out

#- 80 GetKeyValueClusterV2
samples/cli/sample-apps Csm getKeyValueClusterV2 \
    --namespace $AB_NAMESPACE \
    --resourceId 'vvRPNZlv' \
    > test.out 2>&1
eval_tap $? 80 'GetKeyValueClusterV2' test.out

#- 81 ListKeyValueClusterV2
samples/cli/sample-apps Csm listKeyValueClusterV2 \
    --namespace $AB_NAMESPACE \
    --refresh 'false' \
    > test.out 2>&1
eval_tap $? 81 'ListKeyValueClusterV2' test.out

#- 82 CreateKeyValueClusterV2
samples/cli/sample-apps Csm createKeyValueClusterV2 \
    --namespace $AB_NAMESPACE \
    --body '{"clusterName": "sqN0FZui", "maxDataStorageGB": 6, "maxECPUPerSecond": 24, "profileName": "MkCitZ7E"}' \
    > test.out 2>&1
eval_tap $? 82 'CreateKeyValueClusterV2' test.out

#- 83 GetKeyValueClusterLimitConfigV2
samples/cli/sample-apps Csm getKeyValueClusterLimitConfigV2 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 83 'GetKeyValueClusterLimitConfigV2' test.out

#- 84 UpdateKeyValueClusterV2
samples/cli/sample-apps Csm updateKeyValueClusterV2 \
    --namespace $AB_NAMESPACE \
    --resourceId 'rsWsuFQl' \
    --body '{"maxDataStorageGB": 24, "maxECPUPerSecond": 4, "profileName": "PnZLfuYz"}' \
    > test.out 2>&1
eval_tap $? 84 'UpdateKeyValueClusterV2' test.out

#- 85 DeleteKeyValueClusterV2
samples/cli/sample-apps Csm deleteKeyValueClusterV2 \
    --namespace $AB_NAMESPACE \
    --resourceId 'oDCirq7V' \
    > test.out 2>&1
eval_tap $? 85 'DeleteKeyValueClusterV2' test.out

#- 86 GetListIntegratedAppKeyValueClusterV2
samples/cli/sample-apps Csm getListIntegratedAppKeyValueClusterV2 \
    --namespace $AB_NAMESPACE \
    --resourceId 'P7aYDaBC' \
    > test.out 2>&1
eval_tap $? 86 'GetListIntegratedAppKeyValueClusterV2' test.out

#- 87 GetNoSQLClusterV2
samples/cli/sample-apps Csm getNoSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 87 'GetNoSQLClusterV2' test.out

#- 88 UpdateNoSQLClusterV2
samples/cli/sample-apps Csm updateNoSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    --body '{"maxDCU": 0.21242878927230435, "minDCU": 0.2754453908315082, "profileName": "Eb7bZ1Sl"}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateNoSQLClusterV2' test.out

#- 89 CreateNoSQLClusterV2
samples/cli/sample-apps Csm createNoSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    --body '{"maxDCU": 0.06041518178487393, "minDCU": 0.2424791144377496, "profileName": "fqzqplsk"}' \
    > test.out 2>&1
eval_tap $? 89 'CreateNoSQLClusterV2' test.out

#- 90 DeleteNoSQLClusterV2
samples/cli/sample-apps Csm deleteNoSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 90 'DeleteNoSQLClusterV2' test.out

#- 91 StartNoSQLClusterV2
samples/cli/sample-apps Csm startNoSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 91 'StartNoSQLClusterV2' test.out

#- 92 StopNoSQLClusterV2
samples/cli/sample-apps Csm stopNoSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 92 'StopNoSQLClusterV2' test.out

#- 93 GetNoSQLAccessTunnelV2
samples/cli/sample-apps Csm getNoSQLAccessTunnelV2 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 93 'GetNoSQLAccessTunnelV2' test.out

#- 94 GetResourcesLimits
samples/cli/sample-apps Csm getResourcesLimits \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 94 'GetResourcesLimits' test.out

#- 95 GetSQLClusterV2
samples/cli/sample-apps Csm getSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 95 'GetSQLClusterV2' test.out

#- 96 UpdateSQLClusterV2
samples/cli/sample-apps Csm updateSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    --body '{"maxACU": 0.8195758016977752, "minACU": 0.6284330321617135, "multiAZ": false, "profileName": "lxvgTPwc"}' \
    > test.out 2>&1
eval_tap $? 96 'UpdateSQLClusterV2' test.out

#- 97 CreateSQLClusterV2
samples/cli/sample-apps Csm createSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    --body '{"maxACU": 0.006028772173721109, "minACU": 0.5625840857960273, "multiAZ": false, "profileName": "HXmABrht"}' \
    > test.out 2>&1
eval_tap $? 97 'CreateSQLClusterV2' test.out

#- 98 DeleteSQLClusterV2
samples/cli/sample-apps Csm deleteSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 98 'DeleteSQLClusterV2' test.out

#- 99 StartSQLClusterV2
samples/cli/sample-apps Csm startSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 99 'StartSQLClusterV2' test.out

#- 100 StopSQLClusterV2
samples/cli/sample-apps Csm stopSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 100 'StopSQLClusterV2' test.out

#- 101 GetSQLAppListV2
samples/cli/sample-apps Csm getSQLAppListV2 \
    --namespace $AB_NAMESPACE \
    --resourceId 'jN76oVrT' \
    --appName '6YhwpurV' \
    --gameNamespace 'nENT1WK5' \
    --limit '41' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 101 'GetSQLAppListV2' test.out

#- 102 GetNoSQLAppListV2
samples/cli/sample-apps Csm getNoSQLAppListV2 \
    --resourceId '8iAJ6BdA' \
    --studioName 'IdWJXPYZ' \
    --appName 'F9Jgyr3B' \
    --gameNamespace 'PBTJKGM4' \
    --limit '36' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 102 'GetNoSQLAppListV2' test.out

#- 103 GetNotificationSubscriberListV3
samples/cli/sample-apps Csm getNotificationSubscriberListV3 \
    --app 'vGFwsc78' \
    --namespace $AB_NAMESPACE \
    --notificationType 'Ys68XrYy' \
    > test.out 2>&1
eval_tap $? 103 'GetNotificationSubscriberListV3' test.out

#- 104 DeleteSubscriptionAppNotificationV3
samples/cli/sample-apps Csm deleteSubscriptionAppNotificationV3 \
    --app 'D6rfzOeJ' \
    --namespace $AB_NAMESPACE \
    --emailAddress 'Sa2xoSSP' \
    --userId 'bbblGYTL' \
    > test.out 2>&1
eval_tap $? 104 'DeleteSubscriptionAppNotificationV3' test.out

#- 105 GetAppDebugInfoV4
samples/cli/sample-apps Csm getAppDebugInfoV4 \
    --app 'ivpxws9C' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 105 'GetAppDebugInfoV4' test.out

#- 106 UpdateAppDebugModeV4
samples/cli/sample-apps Csm updateAppDebugModeV4 \
    --app 'mvV9SVMW' \
    --namespace $AB_NAMESPACE \
    --body '{"enableDebugMode": false}' \
    > test.out 2>&1
eval_tap $? 106 'UpdateAppDebugModeV4' test.out

#- 107 GetAppStatusProgressV4
samples/cli/sample-apps Csm getAppStatusProgressV4 \
    --app '6FvrjuEg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 107 'GetAppStatusProgressV4' test.out

#- 108 CreateAppV5
samples/cli/sample-apps Csm createAppV5 \
    --app 'zl8vCagA' \
    --namespace $AB_NAMESPACE \
    --body '{"autoscaling": {"targetCPUUtilizationPercent": 71}, "cpu": {"requestCPU": 56}, "description": "N9bTsY3i", "memory": {"requestMemory": 19}, "preferred_k8s_namespace": "nkAN4tpG", "replica": {"maxReplica": 7, "minReplica": 58}, "scenario": "GphFb2Jg", "vmSharingConfiguration": "moj7dNif"}' \
    > test.out 2>&1
eval_tap $? 108 'CreateAppV5' test.out


rm -f "tmp.dat"

exit $EXIT_CODE