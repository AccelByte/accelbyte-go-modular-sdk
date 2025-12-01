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
echo "1..74"

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

#- 2 GetAppListV1
eval_tap 0 2 'GetAppListV1 # SKIP deprecated' test.out

#- 3 GetAppV1
eval_tap 0 3 'GetAppV1 # SKIP deprecated' test.out

#- 4 CreateAppV1
eval_tap 0 4 'CreateAppV1 # SKIP deprecated' test.out

#- 5 DeleteAppV1
eval_tap 0 5 'DeleteAppV1 # SKIP deprecated' test.out

#- 6 UpdateAppV1
eval_tap 0 6 'UpdateAppV1 # SKIP deprecated' test.out

#- 7 CreateDeploymentV1
eval_tap 0 7 'CreateDeploymentV1 # SKIP deprecated' test.out

#- 8 GetAppImageListV1
eval_tap 0 8 'GetAppImageListV1 # SKIP deprecated' test.out

#- 9 DeleteAppImagesV1
eval_tap 0 9 'DeleteAppImagesV1 # SKIP deprecated' test.out

#- 10 GetAppReleaseV1
samples/cli/sample-apps Csm getAppReleaseV1 \
    --app 'JKx5aFnH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetAppReleaseV1' test.out

#- 11 GetListOfSecretsV1
eval_tap 0 11 'GetListOfSecretsV1 # SKIP deprecated' test.out

#- 12 SaveSecretV1
eval_tap 0 12 'SaveSecretV1 # SKIP deprecated' test.out

#- 13 UpdateSecretV1
eval_tap 0 13 'UpdateSecretV1 # SKIP deprecated' test.out

#- 14 DeleteSecretV1
eval_tap 0 14 'DeleteSecretV1 # SKIP deprecated' test.out

#- 15 StartAppV1
eval_tap 0 15 'StartAppV1 # SKIP deprecated' test.out

#- 16 StopAppV1
eval_tap 0 16 'StopAppV1 # SKIP deprecated' test.out

#- 17 GetListOfVariablesV1
eval_tap 0 17 'GetListOfVariablesV1 # SKIP deprecated' test.out

#- 18 SaveVariableV1
eval_tap 0 18 'SaveVariableV1 # SKIP deprecated' test.out

#- 19 UpdateVariableV1
eval_tap 0 19 'UpdateVariableV1 # SKIP deprecated' test.out

#- 20 DeleteVariableV1
eval_tap 0 20 'DeleteVariableV1 # SKIP deprecated' test.out

#- 21 GetListOfDeploymentV1
eval_tap 0 21 'GetListOfDeploymentV1 # SKIP deprecated' test.out

#- 22 GetDeploymentV1
eval_tap 0 22 'GetDeploymentV1 # SKIP deprecated' test.out

#- 23 DeleteDeploymentV1
eval_tap 0 23 'DeleteDeploymentV1 # SKIP deprecated' test.out

#- 24 PublicGetMessages
samples/cli/sample-apps Csm publicGetMessages \
    > test.out 2>&1
eval_tap $? 24 'PublicGetMessages' test.out

#- 25 GetAppListV2
samples/cli/sample-apps Csm getAppListV2 \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '21' \
    --body '{"appNames": ["Uk9D2Hfo", "udX3BGjw", "TzdrYy1U"], "appStatuses": ["MnywGYDU", "zGSh9TSS", "PNaPQG7X"], "fuzzyAppName": "2tWHsFzO", "scenario": "wl83g8tr"}' \
    > test.out 2>&1
eval_tap $? 25 'GetAppListV2' test.out

#- 26 GetAppV2
samples/cli/sample-apps Csm getAppV2 \
    --app 'hRqpOUTg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'GetAppV2' test.out

#- 27 CreateAppV2
samples/cli/sample-apps Csm createAppV2 \
    --app 'WRYXNBdb' \
    --namespace $AB_NAMESPACE \
    --body '{"autoscaling": {"targetCPUUtilizationPercent": 74}, "cpu": {"requestCPU": 31}, "description": "pfBcAWgZ", "memory": {"requestMemory": 62}, "replica": {"maxReplica": 15, "minReplica": 9}, "scenario": "iFPYYvOH", "vmSharingConfiguration": "NgJT8isq"}' \
    > test.out 2>&1
eval_tap $? 27 'CreateAppV2' test.out

#- 28 DeleteAppV2
samples/cli/sample-apps Csm deleteAppV2 \
    --app 'MXPD55a2' \
    --namespace $AB_NAMESPACE \
    --forced 'nu5kKIZm' \
    > test.out 2>&1
eval_tap $? 28 'DeleteAppV2' test.out

#- 29 UpdateAppV2
samples/cli/sample-apps Csm updateAppV2 \
    --app '6GHUUngK' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "gzR9Eutx"}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateAppV2' test.out

#- 30 CreateSubscriptionHandler
samples/cli/sample-apps Csm createSubscriptionHandler \
    --app 'NYjv0zc4' \
    --namespace $AB_NAMESPACE \
    --body '{"topicNames": ["kLwIvkVa", "w9ut0oqL", "GkObaYI5"]}' \
    > test.out 2>&1
eval_tap $? 30 'CreateSubscriptionHandler' test.out

#- 31 UnsubscribeTopicHandler
samples/cli/sample-apps Csm unsubscribeTopicHandler \
    --app 'OkzJHgLP' \
    --namespace $AB_NAMESPACE \
    --topicName 'UAWhjv0J' \
    > test.out 2>&1
eval_tap $? 31 'UnsubscribeTopicHandler' test.out

#- 32 CreateDeploymentV2
samples/cli/sample-apps Csm createDeploymentV2 \
    --app 'PbMMzxLY' \
    --namespace $AB_NAMESPACE \
    --body '{"imageTag": "87xcdABG"}' \
    > test.out 2>&1
eval_tap $? 32 'CreateDeploymentV2' test.out

#- 33 GetAppImageListV2
samples/cli/sample-apps Csm getAppImageListV2 \
    --app 'O3SxKuY2' \
    --namespace $AB_NAMESPACE \
    --cached 'FBYi3zHL' \
    > test.out 2>&1
eval_tap $? 33 'GetAppImageListV2' test.out

#- 34 DeleteAppImagesV2
samples/cli/sample-apps Csm deleteAppImagesV2 \
    --app '3C7VXqS0' \
    --namespace $AB_NAMESPACE \
    --body '{"imageTags": ["sFmYyxll", "ThCFnbQN", "tnYQ7PaH"]}' \
    > test.out 2>&1
eval_tap $? 34 'DeleteAppImagesV2' test.out

#- 35 CreateNoSQLDatabaseCredentialV2
samples/cli/sample-apps Csm createNoSQLDatabaseCredentialV2 \
    --app 'bEjXM196' \
    --namespace $AB_NAMESPACE \
    --body '{"password": "wduPAq7A", "username": "myHyf17h"}' \
    > test.out 2>&1
eval_tap $? 35 'CreateNoSQLDatabaseCredentialV2' test.out

#- 36 GetNoSQLDatabaseV2
samples/cli/sample-apps Csm getNoSQLDatabaseV2 \
    --app '2NxEHlyN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 36 'GetNoSQLDatabaseV2' test.out

#- 37 CreateNoSQLDatabaseV2
samples/cli/sample-apps Csm createNoSQLDatabaseV2 \
    --app 'kdyW3p2M' \
    --namespace $AB_NAMESPACE \
    --body '{"dbName": "tRhPgGmr", "password": "JouYpKck", "username": "dpYwlmO2"}' \
    > test.out 2>&1
eval_tap $? 37 'CreateNoSQLDatabaseV2' test.out

#- 38 DeleteNoSQLDatabaseV2
samples/cli/sample-apps Csm deleteNoSQLDatabaseV2 \
    --app 'Y8WSNfuH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'DeleteNoSQLDatabaseV2' test.out

#- 39 UpdateAppResourcesV2
samples/cli/sample-apps Csm updateAppResourcesV2 \
    --app 'Q7avh8hU' \
    --namespace $AB_NAMESPACE \
    --body '{"autoscaling": {"targetCPUUtilizationPercent": 88}, "cpu": {"requestCPU": 80}, "memory": {"requestMemory": 11}, "replica": {"maxReplica": 13, "minReplica": 27}, "vmSharingConfiguration": "glXTEAI2"}' \
    > test.out 2>&1
eval_tap $? 39 'UpdateAppResourcesV2' test.out

#- 40 UpdateAppResourcesResourceLimitFormV2
samples/cli/sample-apps Csm updateAppResourcesResourceLimitFormV2 \
    --app 'gedXlbyJ' \
    --namespace $AB_NAMESPACE \
    --body '{"clientEmail": "M7l0c5LQ", "preferredLimitReplica": 23, "requestReason": "tFLpqmAm"}' \
    > test.out 2>&1
eval_tap $? 40 'UpdateAppResourcesResourceLimitFormV2' test.out

#- 41 GetListOfSecretsV2
samples/cli/sample-apps Csm getListOfSecretsV2 \
    --app 'Hq7d2jny' \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 41 'GetListOfSecretsV2' test.out

#- 42 SaveSecretV2
samples/cli/sample-apps Csm saveSecretV2 \
    --app 'nvSdHW11' \
    --namespace $AB_NAMESPACE \
    --body '{"configName": "Dnwlgdci", "description": "wUb9FpnJ", "source": "w1HNCUGq", "value": "usiys1h3"}' \
    > test.out 2>&1
eval_tap $? 42 'SaveSecretV2' test.out

#- 43 UpdateSecretV2
samples/cli/sample-apps Csm updateSecretV2 \
    --app 'bc58wMxv' \
    --configId 'f6rl7NO3' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "wRddwl1K", "value": "8j8PGl0m"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateSecretV2' test.out

#- 44 DeleteSecretV2
samples/cli/sample-apps Csm deleteSecretV2 \
    --app 'CyoeB4Ne' \
    --configId 'LifQGQ4F' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteSecretV2' test.out

#- 45 StartAppV2
samples/cli/sample-apps Csm startAppV2 \
    --app 'icNwkjNb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 45 'StartAppV2' test.out

#- 46 StopAppV2
samples/cli/sample-apps Csm stopAppV2 \
    --app 'FHZ5fNw5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'StopAppV2' test.out

#- 47 GetNotificationSubscriberListV2
samples/cli/sample-apps Csm getNotificationSubscriberListV2 \
    --app 'wHNsujKV' \
    --namespace $AB_NAMESPACE \
    --notificationType '6Oo0bwAp' \
    > test.out 2>&1
eval_tap $? 47 'GetNotificationSubscriberListV2' test.out

#- 48 BulkSaveSubscriptionAppNotificationV2
samples/cli/sample-apps Csm bulkSaveSubscriptionAppNotificationV2 \
    --app 'qvx3Dxic' \
    --namespace $AB_NAMESPACE \
    --body '{"subscribers": [{"emailAddress": "hrnYEdhN", "notificationType": {"5srDq9KT": false, "vWYJxwms": true, "7qfILIC5": false}, "userId": "kYvv2cG1"}, {"emailAddress": "bq00sSYE", "notificationType": {"lggggpZg": false, "xxxVeDUD": false, "3vaBGUeW": true}, "userId": "ujkAeth5"}, {"emailAddress": "UexIY1zJ", "notificationType": {"7keZbERI": false, "sFHxElnC": false, "eDvKBPbb": false}, "userId": "zYA7d4Zt"}]}' \
    > test.out 2>&1
eval_tap $? 48 'BulkSaveSubscriptionAppNotificationV2' test.out

#- 49 SubscribeAppNotificationV2
samples/cli/sample-apps Csm subscribeAppNotificationV2 \
    --app '7yXgEMMp' \
    --namespace $AB_NAMESPACE \
    --body '{"notificationType": "ajWaca3a", "subscribers": [{"emailAddress": "MT3mGAhN", "userId": "LMX1NlSc"}, {"emailAddress": "Hm9jO4lv", "userId": "KaDe4EEb"}, {"emailAddress": "sMmeUhn9", "userId": "4t2DwDTR"}]}' \
    > test.out 2>&1
eval_tap $? 49 'SubscribeAppNotificationV2' test.out

#- 50 GetSubscriptionV2Handler
samples/cli/sample-apps Csm getSubscriptionV2Handler \
    --app '38rFdSQe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'GetSubscriptionV2Handler' test.out

#- 51 SubscribeV2Handler
samples/cli/sample-apps Csm subscribeV2Handler \
    --app 'Dprf0FX3' \
    --namespace $AB_NAMESPACE \
    --body '{"notificationType": "hE2E4IMj"}' \
    > test.out 2>&1
eval_tap $? 51 'SubscribeV2Handler' test.out

#- 52 UnsubscribeV2Handler
samples/cli/sample-apps Csm unsubscribeV2Handler \
    --app 'Qonmamf9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'UnsubscribeV2Handler' test.out

#- 53 DeleteSubscriptionAppNotificationByUserIDV2
samples/cli/sample-apps Csm deleteSubscriptionAppNotificationByUserIDV2 \
    --app 'AKZjnXY9' \
    --namespace $AB_NAMESPACE \
    --userId 'KO2p5fWi' \
    > test.out 2>&1
eval_tap $? 53 'DeleteSubscriptionAppNotificationByUserIDV2' test.out

#- 54 DeleteSubscriptionAppNotificationV2
eval_tap 0 54 'DeleteSubscriptionAppNotificationV2 # SKIP deprecated' test.out

#- 55 GetListOfVariablesV2
samples/cli/sample-apps Csm getListOfVariablesV2 \
    --app 'cNducGBk' \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 55 'GetListOfVariablesV2' test.out

#- 56 SaveVariableV2
samples/cli/sample-apps Csm saveVariableV2 \
    --app 'LHqKaOqc' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": true, "configName": "2hUuFq8s", "description": "SJkP4mgK", "source": "d6mJnvXK", "value": "qvPjb9C5"}' \
    > test.out 2>&1
eval_tap $? 56 'SaveVariableV2' test.out

#- 57 UpdateVariableV2
samples/cli/sample-apps Csm updateVariableV2 \
    --app 'bJ2zpZlQ' \
    --configId 'LwQrz7p3' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": true, "description": "wKzLUKGa", "value": "7gVWq054"}' \
    > test.out 2>&1
eval_tap $? 57 'UpdateVariableV2' test.out

#- 58 DeleteVariableV2
samples/cli/sample-apps Csm deleteVariableV2 \
    --app 'AcATJPSH' \
    --configId 'fhU0UAjc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'DeleteVariableV2' test.out

#- 59 ListTopicsHandler
samples/cli/sample-apps Csm listTopicsHandler \
    --namespace $AB_NAMESPACE \
    --fuzzyTopicName 'PgtKF9wX' \
    --isSubscribedByAppName 'XzFS4HMc' \
    --isUnsubscribedByAppName 'MgmBVtWo' \
    --limit '17' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 59 'ListTopicsHandler' test.out

#- 60 CreateTopicHandler
samples/cli/sample-apps Csm createTopicHandler \
    --namespace $AB_NAMESPACE \
    --body '{"description": "ykYLCVfc", "topicName": "y5dTFpRQ"}' \
    > test.out 2>&1
eval_tap $? 60 'CreateTopicHandler' test.out

#- 61 DeleteTopicHandler
samples/cli/sample-apps Csm deleteTopicHandler \
    --namespace $AB_NAMESPACE \
    --topicName 'fAqMY7aC' \
    > test.out 2>&1
eval_tap $? 61 'DeleteTopicHandler' test.out

#- 62 GetListOfDeploymentV2
samples/cli/sample-apps Csm getListOfDeploymentV2 \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '60' \
    --body '{"appIds": ["3BRyIGD0", "FQ7isbiE", "jeNE1TtK"], "deploymentIds": ["1a21NjIg", "3sD9JueL", "Rs0NCBym"], "statuses": ["vZd5TGEs", "NjKnsZUS", "smM97QlP"]}' \
    > test.out 2>&1
eval_tap $? 62 'GetListOfDeploymentV2' test.out

#- 63 GetDeploymentV2
samples/cli/sample-apps Csm getDeploymentV2 \
    --deploymentId 'NAut3KM3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'GetDeploymentV2' test.out

#- 64 DeleteDeploymentV2
samples/cli/sample-apps Csm deleteDeploymentV2 \
    --deploymentId 'Q5JHlqQL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'DeleteDeploymentV2' test.out

#- 65 GetNoSQLClusterV2
samples/cli/sample-apps Csm getNoSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'GetNoSQLClusterV2' test.out

#- 66 UpdateNoSQLClusterV2
samples/cli/sample-apps Csm updateNoSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    --body '{"maxDCU": 0.5535049673889748, "minDCU": 0.4658517938298403, "profileName": "b3fB7DSK"}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateNoSQLClusterV2' test.out

#- 67 CreateNoSQLClusterV2
samples/cli/sample-apps Csm createNoSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    --body '{"maxDCU": 0.493938455304348, "minDCU": 0.833834769134016, "profileName": "cKp8SuRT"}' \
    > test.out 2>&1
eval_tap $? 67 'CreateNoSQLClusterV2' test.out

#- 68 DeleteNoSQLClusterV2
samples/cli/sample-apps Csm deleteNoSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 68 'DeleteNoSQLClusterV2' test.out

#- 69 StartNoSQLClusterV2
samples/cli/sample-apps Csm startNoSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'StartNoSQLClusterV2' test.out

#- 70 StopNoSQLClusterV2
samples/cli/sample-apps Csm stopNoSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 70 'StopNoSQLClusterV2' test.out

#- 71 GetNoSQLAccessTunnelV2
samples/cli/sample-apps Csm getNoSQLAccessTunnelV2 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'GetNoSQLAccessTunnelV2' test.out

#- 72 GetResourcesLimits
samples/cli/sample-apps Csm getResourcesLimits \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 72 'GetResourcesLimits' test.out

#- 73 GetNotificationSubscriberListV3
samples/cli/sample-apps Csm getNotificationSubscriberListV3 \
    --app 'vxUXswvk' \
    --namespace $AB_NAMESPACE \
    --notificationType 'WwW8CEAT' \
    > test.out 2>&1
eval_tap $? 73 'GetNotificationSubscriberListV3' test.out

#- 74 DeleteSubscriptionAppNotificationV3
samples/cli/sample-apps Csm deleteSubscriptionAppNotificationV3 \
    --app 'hVUA0Kq0' \
    --namespace $AB_NAMESPACE \
    --emailAddress 'suBUT9Ko' \
    --userId '2qqMAyJz' \
    > test.out 2>&1
eval_tap $? 74 'DeleteSubscriptionAppNotificationV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE