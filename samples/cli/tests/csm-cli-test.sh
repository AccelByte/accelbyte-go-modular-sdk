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
echo "1..75"

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
    --app 'ulKTOtLk' \
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
    --limit '97' \
    --offset '1' \
    --body '{"appNames": ["hq4cTHuM", "rYnjZ5QF", "VmOjj4bO"], "appStatuses": ["LEGqllEW", "FQHGQYVC", "RtfBw4cl"], "fuzzyAppName": "iaGy2b8o", "scenario": "F7FxLavx"}' \
    > test.out 2>&1
eval_tap $? 25 'GetAppListV2' test.out

#- 26 GetAppV2
samples/cli/sample-apps Csm getAppV2 \
    --app 'wDakGXYZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'GetAppV2' test.out

#- 27 CreateAppV2
samples/cli/sample-apps Csm createAppV2 \
    --app 'bpcSMUS2' \
    --namespace $AB_NAMESPACE \
    --body '{"autoscaling": {"targetCPUUtilizationPercent": 39}, "cpu": {"requestCPU": 23}, "description": "gDaXZX62", "memory": {"requestMemory": 61}, "replica": {"maxReplica": 8, "minReplica": 22}, "scenario": "5DTmbdl6", "vmSharingConfiguration": "Frto31O8"}' \
    > test.out 2>&1
eval_tap $? 27 'CreateAppV2' test.out

#- 28 DeleteAppV2
samples/cli/sample-apps Csm deleteAppV2 \
    --app 'lTOmJd6T' \
    --namespace $AB_NAMESPACE \
    --forced 'PxMbx861' \
    > test.out 2>&1
eval_tap $? 28 'DeleteAppV2' test.out

#- 29 UpdateAppV2
samples/cli/sample-apps Csm updateAppV2 \
    --app 'GQ8hT6O5' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "f64F3ySY"}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateAppV2' test.out

#- 30 CreateSubscriptionHandler
samples/cli/sample-apps Csm createSubscriptionHandler \
    --app '0CrC87Si' \
    --namespace $AB_NAMESPACE \
    --body '{"topicNames": ["dzqhAuPo", "SiHjZIED", "mWF849zr"]}' \
    > test.out 2>&1
eval_tap $? 30 'CreateSubscriptionHandler' test.out

#- 31 UnsubscribeTopicHandler
samples/cli/sample-apps Csm unsubscribeTopicHandler \
    --app '1faEQbv0' \
    --namespace $AB_NAMESPACE \
    --topicName 'V7aRJ9dE' \
    > test.out 2>&1
eval_tap $? 31 'UnsubscribeTopicHandler' test.out

#- 32 CreateDeploymentV2
samples/cli/sample-apps Csm createDeploymentV2 \
    --app '4MJwfhIG' \
    --namespace $AB_NAMESPACE \
    --body '{"imageTag": "9gyzpb2y"}' \
    > test.out 2>&1
eval_tap $? 32 'CreateDeploymentV2' test.out

#- 33 GetAppImageListV2
samples/cli/sample-apps Csm getAppImageListV2 \
    --app 'HGn0qZfa' \
    --namespace $AB_NAMESPACE \
    --cached 'kp0RZrYO' \
    > test.out 2>&1
eval_tap $? 33 'GetAppImageListV2' test.out

#- 34 DeleteAppImagesV2
samples/cli/sample-apps Csm deleteAppImagesV2 \
    --app 'vOMBcIXi' \
    --namespace $AB_NAMESPACE \
    --body '{"imageTags": ["6qbipL8j", "77v2eDSS", "no94g66J"]}' \
    > test.out 2>&1
eval_tap $? 34 'DeleteAppImagesV2' test.out

#- 35 CreateNoSQLDatabaseCredentialV2
samples/cli/sample-apps Csm createNoSQLDatabaseCredentialV2 \
    --app 'duxPgvud' \
    --namespace $AB_NAMESPACE \
    --body '{"password": "gHt4cme2", "username": "nwdlWNBP"}' \
    > test.out 2>&1
eval_tap $? 35 'CreateNoSQLDatabaseCredentialV2' test.out

#- 36 GetNoSQLDatabaseV2
samples/cli/sample-apps Csm getNoSQLDatabaseV2 \
    --app 'w43XrA1l' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 36 'GetNoSQLDatabaseV2' test.out

#- 37 CreateNoSQLDatabaseV2
samples/cli/sample-apps Csm createNoSQLDatabaseV2 \
    --app 'dVt3Q6tD' \
    --namespace $AB_NAMESPACE \
    --body '{"dbName": "9JEErTve", "password": "cqI9Dyn2", "username": "lHYU5OGB"}' \
    > test.out 2>&1
eval_tap $? 37 'CreateNoSQLDatabaseV2' test.out

#- 38 DeleteNoSQLDatabaseV2
samples/cli/sample-apps Csm deleteNoSQLDatabaseV2 \
    --app 'iKHWnw9y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'DeleteNoSQLDatabaseV2' test.out

#- 39 UpdateAppResourcesV2
samples/cli/sample-apps Csm updateAppResourcesV2 \
    --app 'IueNfl8W' \
    --namespace $AB_NAMESPACE \
    --body '{"autoscaling": {"targetCPUUtilizationPercent": 16}, "cpu": {"requestCPU": 89}, "memory": {"requestMemory": 6}, "replica": {"maxReplica": 89, "minReplica": 98}, "vmSharingConfiguration": "2JEZAUBl"}' \
    > test.out 2>&1
eval_tap $? 39 'UpdateAppResourcesV2' test.out

#- 40 UpdateAppResourcesResourceLimitFormV2
samples/cli/sample-apps Csm updateAppResourcesResourceLimitFormV2 \
    --app 'duTgouxE' \
    --namespace $AB_NAMESPACE \
    --body '{"clientEmail": "47C2fbCb", "preferredLimitReplica": 77, "requestReason": "IfIIgIXk"}' \
    > test.out 2>&1
eval_tap $? 40 'UpdateAppResourcesResourceLimitFormV2' test.out

#- 41 GetListOfSecretsV2
samples/cli/sample-apps Csm getListOfSecretsV2 \
    --app 'O3oscFPX' \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 41 'GetListOfSecretsV2' test.out

#- 42 SaveSecretV2
samples/cli/sample-apps Csm saveSecretV2 \
    --app 'hISiv6l5' \
    --namespace $AB_NAMESPACE \
    --body '{"configName": "ubQunK9M", "description": "rUYOkPU5", "source": "iXHfhovB", "value": "GJd0bJtl"}' \
    > test.out 2>&1
eval_tap $? 42 'SaveSecretV2' test.out

#- 43 UpdateSecretV2
samples/cli/sample-apps Csm updateSecretV2 \
    --app '1p3nBNcV' \
    --configId 'J0l0D7RA' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "Q0Y07aOb", "value": "LzRxcjTk"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateSecretV2' test.out

#- 44 DeleteSecretV2
samples/cli/sample-apps Csm deleteSecretV2 \
    --app 'wTOlhesC' \
    --configId 'GdqtimwP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteSecretV2' test.out

#- 45 StartAppV2
samples/cli/sample-apps Csm startAppV2 \
    --app 'qfQCIzNH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 45 'StartAppV2' test.out

#- 46 StopAppV2
samples/cli/sample-apps Csm stopAppV2 \
    --app 'VSu3nSb7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'StopAppV2' test.out

#- 47 GetNotificationSubscriberListV2
samples/cli/sample-apps Csm getNotificationSubscriberListV2 \
    --app 'rOjwTyL8' \
    --namespace $AB_NAMESPACE \
    --notificationType 'Q60IabKa' \
    > test.out 2>&1
eval_tap $? 47 'GetNotificationSubscriberListV2' test.out

#- 48 BulkSaveSubscriptionAppNotificationV2
samples/cli/sample-apps Csm bulkSaveSubscriptionAppNotificationV2 \
    --app 'EwdflHIj' \
    --namespace $AB_NAMESPACE \
    --body '{"subscribers": [{"emailAddress": "8StLrrLz", "notificationType": {"lnKkH8KM": false, "qit7dR7A": false, "9yu5KeRJ": false}, "userId": "RIbJ8fpE"}, {"emailAddress": "wg7iyjrm", "notificationType": {"3CW5zxoU": false, "2weRE4a8": true, "hfCqJI5p": true}, "userId": "ITqfKgX8"}, {"emailAddress": "REyuiDmY", "notificationType": {"KRoOJdGO": false, "VoQP5tTo": true, "b4NSxN4W": false}, "userId": "qCLXdAOp"}]}' \
    > test.out 2>&1
eval_tap $? 48 'BulkSaveSubscriptionAppNotificationV2' test.out

#- 49 SubscribeAppNotificationV2
samples/cli/sample-apps Csm subscribeAppNotificationV2 \
    --app 'ZlC2zEF5' \
    --namespace $AB_NAMESPACE \
    --body '{"notificationType": "jhmg4kQV", "subscribers": [{"emailAddress": "sc9pOd7u", "userId": "grg0Za8r"}, {"emailAddress": "zu4sLm1L", "userId": "0E2h96de"}, {"emailAddress": "KnYfiVnS", "userId": "iPsUa8WZ"}]}' \
    > test.out 2>&1
eval_tap $? 49 'SubscribeAppNotificationV2' test.out

#- 50 GetSubscriptionV2Handler
samples/cli/sample-apps Csm getSubscriptionV2Handler \
    --app 'GNUTN8WR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'GetSubscriptionV2Handler' test.out

#- 51 SubscribeV2Handler
samples/cli/sample-apps Csm subscribeV2Handler \
    --app 'kJI859vW' \
    --namespace $AB_NAMESPACE \
    --body '{"notificationType": "ueJf2Kaa"}' \
    > test.out 2>&1
eval_tap $? 51 'SubscribeV2Handler' test.out

#- 52 UnsubscribeV2Handler
samples/cli/sample-apps Csm unsubscribeV2Handler \
    --app 'TQb0wwAc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'UnsubscribeV2Handler' test.out

#- 53 DeleteSubscriptionAppNotificationByUserIDV2
samples/cli/sample-apps Csm deleteSubscriptionAppNotificationByUserIDV2 \
    --app '2iymzRLR' \
    --namespace $AB_NAMESPACE \
    --userId 'yshTnSU9' \
    > test.out 2>&1
eval_tap $? 53 'DeleteSubscriptionAppNotificationByUserIDV2' test.out

#- 54 DeleteSubscriptionAppNotificationV2
eval_tap 0 54 'DeleteSubscriptionAppNotificationV2 # SKIP deprecated' test.out

#- 55 GetListOfVariablesV2
samples/cli/sample-apps Csm getListOfVariablesV2 \
    --app 'J4NAHgwC' \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 55 'GetListOfVariablesV2' test.out

#- 56 SaveVariableV2
samples/cli/sample-apps Csm saveVariableV2 \
    --app 'dUlynSZb' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": true, "configName": "1m201tpE", "description": "8gVCTDBY", "source": "PXrMO6rh", "value": "p8ZEYQIr"}' \
    > test.out 2>&1
eval_tap $? 56 'SaveVariableV2' test.out

#- 57 UpdateVariableV2
samples/cli/sample-apps Csm updateVariableV2 \
    --app '2h83wqzE' \
    --configId 'qD0nY5V5' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": false, "description": "Hvu5WuJP", "value": "z5iQW5sf"}' \
    > test.out 2>&1
eval_tap $? 57 'UpdateVariableV2' test.out

#- 58 DeleteVariableV2
samples/cli/sample-apps Csm deleteVariableV2 \
    --app 'j7N5AL4R' \
    --configId 'R9q2jW45' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'DeleteVariableV2' test.out

#- 59 ListTopicsHandler
samples/cli/sample-apps Csm listTopicsHandler \
    --namespace $AB_NAMESPACE \
    --fuzzyTopicName 'dyV6wuIM' \
    --isSubscribedByAppName 'pyFHn0KR' \
    --isUnsubscribedByAppName 'lbu5JIyc' \
    --limit '77' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 59 'ListTopicsHandler' test.out

#- 60 CreateTopicHandler
samples/cli/sample-apps Csm createTopicHandler \
    --namespace $AB_NAMESPACE \
    --body '{"description": "QhbabfZv", "topicName": "fjhDU49M"}' \
    > test.out 2>&1
eval_tap $? 60 'CreateTopicHandler' test.out

#- 61 DeleteTopicHandler
samples/cli/sample-apps Csm deleteTopicHandler \
    --namespace $AB_NAMESPACE \
    --topicName 'tHcY70Xj' \
    > test.out 2>&1
eval_tap $? 61 'DeleteTopicHandler' test.out

#- 62 GetListOfDeploymentV2
samples/cli/sample-apps Csm getListOfDeploymentV2 \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '10' \
    --body '{"appIds": ["KhhtrkXC", "WHBc79SA", "6LnIEHnQ"], "deploymentIds": ["ha85tfZa", "9nN64bzE", "hPvnsX4l"], "statuses": ["zA0WLq0B", "rnPxr6jl", "UzijDBWB"]}' \
    > test.out 2>&1
eval_tap $? 62 'GetListOfDeploymentV2' test.out

#- 63 GetDeploymentV2
samples/cli/sample-apps Csm getDeploymentV2 \
    --deploymentId 'VFsZtpXp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'GetDeploymentV2' test.out

#- 64 DeleteDeploymentV2
samples/cli/sample-apps Csm deleteDeploymentV2 \
    --deploymentId 'DNvzH2In' \
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
    --body '{"maxDCU": 0.18795783028258595, "minDCU": 0.3205528972832211, "profileName": "737mNfRR"}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateNoSQLClusterV2' test.out

#- 67 CreateNoSQLClusterV2
samples/cli/sample-apps Csm createNoSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    --body '{"maxDCU": 0.393856802995148, "minDCU": 0.20824711315600075, "profileName": "VHEvyCF8"}' \
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

#- 73 GetNoSQLAppListV2
samples/cli/sample-apps Csm getNoSQLAppListV2 \
    --resourceId 'oKzhsDK3' \
    --studioName 'ppauHlaB' \
    --appName 'hG0I4rhK' \
    --limit '36' \
    --namespace 'JLYBINP4' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 73 'GetNoSQLAppListV2' test.out

#- 74 GetNotificationSubscriberListV3
samples/cli/sample-apps Csm getNotificationSubscriberListV3 \
    --app 'KYDeMLHr' \
    --namespace $AB_NAMESPACE \
    --notificationType '7Yw3r5TB' \
    > test.out 2>&1
eval_tap $? 74 'GetNotificationSubscriberListV3' test.out

#- 75 DeleteSubscriptionAppNotificationV3
samples/cli/sample-apps Csm deleteSubscriptionAppNotificationV3 \
    --app 'QTSLTEIZ' \
    --namespace $AB_NAMESPACE \
    --emailAddress 'pvTC8nFH' \
    --userId 'gFpe6RxS' \
    > test.out 2>&1
eval_tap $? 75 'DeleteSubscriptionAppNotificationV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE