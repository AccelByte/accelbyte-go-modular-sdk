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
echo "1..104"

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
    --limit '50' \
    --name 'fduKTYDE' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 2 'ListAppUI' test.out

#- 3 CreateAppUI
samples/cli/sample-apps Csm createAppUI \
    --namespace $AB_NAMESPACE \
    --body '{"name": "WID4Luvn"}' \
    > test.out 2>&1
eval_tap $? 3 'CreateAppUI' test.out

#- 4 DeleteAppUI
samples/cli/sample-apps Csm deleteAppUI \
    --appUiName 'BrBSJk8D' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'DeleteAppUI' test.out

#- 5 UploadAppUIFile
samples/cli/sample-apps Csm uploadAppUIFile \
    --appUiName '7MqCYZwZ' \
    --namespace $AB_NAMESPACE \
    --version 'nnqxgBz3' \
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
    --app 'dNDJtWH8' \
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
    --filePath 'TlUByWuq' \
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
    --limit '6' \
    --offset '90' \
    --body '{"appNames": ["558Wkm1W", "hqFefAxW", "yLPr8rTo"], "appStatuses": ["eskLXiYA", "e8uk8kHT", "Pe819KJ3"], "fuzzyAppName": "e68DbtXS", "scenario": "NaMkTWvF"}' \
    > test.out 2>&1
eval_tap $? 30 'GetAppListV2' test.out

#- 31 GetAppV2
samples/cli/sample-apps Csm getAppV2 \
    --app 'R2OwjlYP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetAppV2' test.out

#- 32 CreateAppV2
samples/cli/sample-apps Csm createAppV2 \
    --app 'ouSx66ji' \
    --namespace $AB_NAMESPACE \
    --body '{"autoscaling": {"targetCPUUtilizationPercent": 71}, "cpu": {"requestCPU": 91}, "description": "8bCUwbJ7", "memory": {"requestMemory": 66}, "replica": {"maxReplica": 89, "minReplica": 45}, "scenario": "zZe15LGU", "vmSharingConfiguration": "wOePzKdN"}' \
    > test.out 2>&1
eval_tap $? 32 'CreateAppV2' test.out

#- 33 DeleteAppV2
samples/cli/sample-apps Csm deleteAppV2 \
    --app 'B35JRBbK' \
    --namespace $AB_NAMESPACE \
    --forced '0NT6stiv' \
    > test.out 2>&1
eval_tap $? 33 'DeleteAppV2' test.out

#- 34 UpdateAppV2
samples/cli/sample-apps Csm updateAppV2 \
    --app 'igK7ksDv' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "FALDiFOx"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateAppV2' test.out

#- 35 ApplyAppConfigV2
samples/cli/sample-apps Csm applyAppConfigV2 \
    --app 'ClympJM7' \
    --namespace $AB_NAMESPACE \
    --body '{"autoscaling": {"targetCPUUtilizationPercent": 6}, "cpu": {"requestCPU": 6}, "description": "GZHB6BiW", "memory": {"requestMemory": 39}, "permissions": [{"action": 41, "resource": "kWX6rWgw"}, {"action": 60, "resource": "PQ7nITy9"}, {"action": 77, "resource": "3O7vXIkn"}], "replica": {"maxReplica": 81, "minReplica": 58}, "scenario": "y7eYapbF", "secrets": [{"name": "SVyhy5rs", "value": "8juVQjZc"}, {"name": "j6zCuC5f", "value": "OOv57Nqi"}, {"name": "DbqBCjbh", "value": "k6zwmN9Y"}], "variables": [{"name": "t5DzzkJY", "value": "vOuJBTGJ"}, {"name": "hqU9uY0g", "value": "Sl0dcQz8"}, {"name": "URPPN8lW", "value": "OQmEpxha"}], "vmSharingConfiguration": "mD157PXj"}' \
    > test.out 2>&1
eval_tap $? 35 'ApplyAppConfigV2' test.out

#- 36 CreateSubscriptionHandler
samples/cli/sample-apps Csm createSubscriptionHandler \
    --app 'JE77DPwi' \
    --namespace $AB_NAMESPACE \
    --body '{"topicNames": ["azTkICB3", "OpkjHaYg", "mJt5SHyJ"]}' \
    > test.out 2>&1
eval_tap $? 36 'CreateSubscriptionHandler' test.out

#- 37 UnsubscribeTopicHandler
samples/cli/sample-apps Csm unsubscribeTopicHandler \
    --app '2CBHr2eA' \
    --namespace $AB_NAMESPACE \
    --topicName 'F4TmmnNu' \
    > test.out 2>&1
eval_tap $? 37 'UnsubscribeTopicHandler' test.out

#- 38 CreateDeploymentV2
samples/cli/sample-apps Csm createDeploymentV2 \
    --app 'x6aDZRh1' \
    --namespace $AB_NAMESPACE \
    --body '{"imageTag": "Yel0FU0k"}' \
    > test.out 2>&1
eval_tap $? 38 'CreateDeploymentV2' test.out

#- 39 GetAppImageListV2
samples/cli/sample-apps Csm getAppImageListV2 \
    --app 'uv0A67Qu' \
    --namespace $AB_NAMESPACE \
    --cached 'GNtxUGWW' \
    > test.out 2>&1
eval_tap $? 39 'GetAppImageListV2' test.out

#- 40 DeleteAppImagesV2
samples/cli/sample-apps Csm deleteAppImagesV2 \
    --app 'g0H31IOY' \
    --namespace $AB_NAMESPACE \
    --body '{"imageTags": ["8Nany8wy", "fOPWfttN", "aHuzcKjz"]}' \
    > test.out 2>&1
eval_tap $? 40 'DeleteAppImagesV2' test.out

#- 41 CreateKeyValueCredentialV2
samples/cli/sample-apps Csm createKeyValueCredentialV2 \
    --app 'jJLs3Xgg' \
    --namespace $AB_NAMESPACE \
    --body '{"password": "nB9nmC1i", "username": "NzpfoN16"}' \
    > test.out 2>&1
eval_tap $? 41 'CreateKeyValueCredentialV2' test.out

#- 42 GetIntegrationAppKeyValueClusterV2
samples/cli/sample-apps Csm getIntegrationAppKeyValueClusterV2 \
    --app '9MOV2fET' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'GetIntegrationAppKeyValueClusterV2' test.out

#- 43 IntegrateAppKeyValueClusterV2
samples/cli/sample-apps Csm integrateAppKeyValueClusterV2 \
    --app 'VGkz8tCp' \
    --namespace $AB_NAMESPACE \
    --body '{"acknowledgements": {"acceptKeyValueSecureCredentialHandling": false}, "password": "1a85gptD", "resourceId": "ZNzKDJMT", "username": "0jP48blm"}' \
    > test.out 2>&1
eval_tap $? 43 'IntegrateAppKeyValueClusterV2' test.out

#- 44 RemoveIntegrationAppKeyValueClusterV2
samples/cli/sample-apps Csm removeIntegrationAppKeyValueClusterV2 \
    --app '8CRTFtFA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'RemoveIntegrationAppKeyValueClusterV2' test.out

#- 45 CreateNewNoSQLDatabaseCredentialV2
samples/cli/sample-apps Csm createNewNoSQLDatabaseCredentialV2 \
    --app 'PZBizB8H' \
    --namespace $AB_NAMESPACE \
    --body '{"acknowledgements": {"acceptNosqlSecureCredentialHandling": false}, "password": "Fp0HTa3R", "username": "86eumA87"}' \
    > test.out 2>&1
eval_tap $? 45 'CreateNewNoSQLDatabaseCredentialV2' test.out

#- 46 CreateNoSQLDatabaseCredentialV2
eval_tap 0 46 'CreateNoSQLDatabaseCredentialV2 # SKIP deprecated' test.out

#- 47 GetNoSQLDatabaseV2
samples/cli/sample-apps Csm getNoSQLDatabaseV2 \
    --app 'bBxtFNCG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'GetNoSQLDatabaseV2' test.out

#- 48 CreateNoSQLDatabaseV2
samples/cli/sample-apps Csm createNoSQLDatabaseV2 \
    --app 'dn3XneGz' \
    --namespace $AB_NAMESPACE \
    --body '{"acknowledgements": {"acceptNosqlSecureCredentialHandling": false}, "dbName": "p6zOKcz2", "password": "cF8tAiVb", "username": "ByKQk6zd"}' \
    > test.out 2>&1
eval_tap $? 48 'CreateNoSQLDatabaseV2' test.out

#- 49 DeleteNoSQLDatabaseV2
samples/cli/sample-apps Csm deleteNoSQLDatabaseV2 \
    --app 'G7pdJmkc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'DeleteNoSQLDatabaseV2' test.out

#- 50 UpdateAppResourcesV2
samples/cli/sample-apps Csm updateAppResourcesV2 \
    --app 'P3g0yE1y' \
    --namespace $AB_NAMESPACE \
    --body '{"autoscaling": {"targetCPUUtilizationPercent": 45}, "cpu": {"requestCPU": 65}, "memory": {"requestMemory": 25}, "replica": {"maxReplica": 40, "minReplica": 38}, "vmSharingConfiguration": "Bo318Fq6"}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateAppResourcesV2' test.out

#- 51 UpdateAppResourcesResourceLimitFormV2
samples/cli/sample-apps Csm updateAppResourcesResourceLimitFormV2 \
    --app 'eDX05p3J' \
    --namespace $AB_NAMESPACE \
    --body '{"clientEmail": "UsqcSY2B", "preferredLimitReplica": 33, "requestReason": "O1FfSXWd"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdateAppResourcesResourceLimitFormV2' test.out

#- 52 GetListOfSecretsV2
samples/cli/sample-apps Csm getListOfSecretsV2 \
    --app 'qBu5y58u' \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 52 'GetListOfSecretsV2' test.out

#- 53 SaveSecretV2
samples/cli/sample-apps Csm saveSecretV2 \
    --app 'wgEe7LwA' \
    --namespace $AB_NAMESPACE \
    --body '{"configName": "FQaAvsOl", "description": "GER5WR4G", "source": "xqc7s4db", "value": "6uHDNWn1"}' \
    > test.out 2>&1
eval_tap $? 53 'SaveSecretV2' test.out

#- 54 UpdateSecretV2
samples/cli/sample-apps Csm updateSecretV2 \
    --app 'IKvlrfCG' \
    --configId 'z66NHFcM' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "0ZYJp2Eq", "value": "1KqQfZSm"}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateSecretV2' test.out

#- 55 DeleteSecretV2
samples/cli/sample-apps Csm deleteSecretV2 \
    --app '6cPxWT93' \
    --configId 'qnAucPSE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'DeleteSecretV2' test.out

#- 56 CreateSQLDatabaseCredentialV2
samples/cli/sample-apps Csm createSQLDatabaseCredentialV2 \
    --app 'HvXhEaef' \
    --namespace $AB_NAMESPACE \
    --body '{"password": "HRxJudbz", "username": "WU5VyWOT"}' \
    > test.out 2>&1
eval_tap $? 56 'CreateSQLDatabaseCredentialV2' test.out

#- 57 GetSQLDatabaseV2
samples/cli/sample-apps Csm getSQLDatabaseV2 \
    --app 'H9RrAwcz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'GetSQLDatabaseV2' test.out

#- 58 CreateSQLDatabaseV2
samples/cli/sample-apps Csm createSQLDatabaseV2 \
    --app '5oi8eB4F' \
    --namespace $AB_NAMESPACE \
    --body '{"acknowledgements": {"acceptSQLSecureCredentialHandling": true}, "dbName": "ZzaSjEpg", "password": "IT0ohM2F", "username": "bmtNhlhv"}' \
    > test.out 2>&1
eval_tap $? 58 'CreateSQLDatabaseV2' test.out

#- 59 DeleteSQLDatabaseV2
samples/cli/sample-apps Csm deleteSQLDatabaseV2 \
    --app 'ojbV47Tn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'DeleteSQLDatabaseV2' test.out

#- 60 StartAppV2
samples/cli/sample-apps Csm startAppV2 \
    --app 'hLCvQKkH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'StartAppV2' test.out

#- 61 StopAppV2
samples/cli/sample-apps Csm stopAppV2 \
    --app 'YHce84m7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'StopAppV2' test.out

#- 62 GetNotificationSubscriberListV2
samples/cli/sample-apps Csm getNotificationSubscriberListV2 \
    --app 'TzDVHHlI' \
    --namespace $AB_NAMESPACE \
    --notificationType 'fLQBLcrr' \
    > test.out 2>&1
eval_tap $? 62 'GetNotificationSubscriberListV2' test.out

#- 63 BulkSaveSubscriptionAppNotificationV2
samples/cli/sample-apps Csm bulkSaveSubscriptionAppNotificationV2 \
    --app 'q3CMxiRK' \
    --namespace $AB_NAMESPACE \
    --body '{"subscribers": [{"emailAddress": "d3ezJ1z5", "notificationType": {"QsMJZjx6": true, "tEZCrFOU": true, "f7wY1nZu": true}, "userId": "7UFIpaJz"}, {"emailAddress": "kVowaxRs", "notificationType": {"9ZqdmaSf": true, "pu4m28Wm": false, "b4Tk58Ge": false}, "userId": "nBjnULmV"}, {"emailAddress": "6QrLkbUM", "notificationType": {"ddQiUioG": true, "yIMsFJSa": false, "qGcJbbDg": false}, "userId": "w8syGdP8"}]}' \
    > test.out 2>&1
eval_tap $? 63 'BulkSaveSubscriptionAppNotificationV2' test.out

#- 64 SubscribeAppNotificationV2
samples/cli/sample-apps Csm subscribeAppNotificationV2 \
    --app 'Z88Y4Quy' \
    --namespace $AB_NAMESPACE \
    --body '{"notificationType": "mfZJzu22", "subscribers": [{"emailAddress": "BsuraRjd", "userId": "yc4hTtqK"}, {"emailAddress": "iHgnD5zK", "userId": "qIKgWDHh"}, {"emailAddress": "aZh5VkF9", "userId": "DM8Vbxtp"}]}' \
    > test.out 2>&1
eval_tap $? 64 'SubscribeAppNotificationV2' test.out

#- 65 GetSubscriptionV2Handler
samples/cli/sample-apps Csm getSubscriptionV2Handler \
    --app 'VGfMtzGs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'GetSubscriptionV2Handler' test.out

#- 66 SubscribeV2Handler
samples/cli/sample-apps Csm subscribeV2Handler \
    --app 'r6OAvAp9' \
    --namespace $AB_NAMESPACE \
    --body '{"notificationType": "eL3Sjs0R"}' \
    > test.out 2>&1
eval_tap $? 66 'SubscribeV2Handler' test.out

#- 67 UnsubscribeV2Handler
samples/cli/sample-apps Csm unsubscribeV2Handler \
    --app 'Exv9JPLC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'UnsubscribeV2Handler' test.out

#- 68 DeleteSubscriptionAppNotificationByUserIDV2
samples/cli/sample-apps Csm deleteSubscriptionAppNotificationByUserIDV2 \
    --app 'qa7Sv3od' \
    --namespace $AB_NAMESPACE \
    --userId 'sOsfHDEf' \
    > test.out 2>&1
eval_tap $? 68 'DeleteSubscriptionAppNotificationByUserIDV2' test.out

#- 69 DeleteSubscriptionAppNotificationV2
eval_tap 0 69 'DeleteSubscriptionAppNotificationV2 # SKIP deprecated' test.out

#- 70 GetListOfVariablesV2
samples/cli/sample-apps Csm getListOfVariablesV2 \
    --app 'pyvCXdY5' \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 70 'GetListOfVariablesV2' test.out

#- 71 SaveVariableV2
samples/cli/sample-apps Csm saveVariableV2 \
    --app 'yU2h4ovK' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": true, "configName": "x2fqW9KN", "description": "DIJc3cRx", "source": "weLA0Hk8", "value": "6yKk3l2A"}' \
    > test.out 2>&1
eval_tap $? 71 'SaveVariableV2' test.out

#- 72 UpdateVariableV2
samples/cli/sample-apps Csm updateVariableV2 \
    --app 'ybJGY7pL' \
    --configId 'U5ovgLXS' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": true, "description": "ealFH68s", "value": "hmRF4p70"}' \
    > test.out 2>&1
eval_tap $? 72 'UpdateVariableV2' test.out

#- 73 DeleteVariableV2
samples/cli/sample-apps Csm deleteVariableV2 \
    --app '5MEYJWQp' \
    --configId 'tlFQZC9r' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 73 'DeleteVariableV2' test.out

#- 74 ListTopicsHandler
samples/cli/sample-apps Csm listTopicsHandler \
    --namespace $AB_NAMESPACE \
    --fuzzyTopicName '81j53vi1' \
    --isSubscribedByAppName 'hVPxQqWI' \
    --isUnsubscribedByAppName 'KM7xx1fw' \
    --limit '75' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 74 'ListTopicsHandler' test.out

#- 75 CreateTopicHandler
samples/cli/sample-apps Csm createTopicHandler \
    --namespace $AB_NAMESPACE \
    --body '{"description": "zEFDihOx", "topicName": "SAO2NpSI"}' \
    > test.out 2>&1
eval_tap $? 75 'CreateTopicHandler' test.out

#- 76 DeleteTopicHandler
samples/cli/sample-apps Csm deleteTopicHandler \
    --namespace $AB_NAMESPACE \
    --topicName 'j3WvkldQ' \
    > test.out 2>&1
eval_tap $? 76 'DeleteTopicHandler' test.out

#- 77 GetListOfDeploymentV2
samples/cli/sample-apps Csm getListOfDeploymentV2 \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '100' \
    --body '{"appIds": ["X554ZFNc", "B51vTYTm", "VM5yCQQH"], "deploymentIds": ["xobxEODr", "Pufu6EVz", "ExXVIdiX"], "statuses": ["f6uRwTlh", "RdLzes6M", "nha9HkQZ"]}' \
    > test.out 2>&1
eval_tap $? 77 'GetListOfDeploymentV2' test.out

#- 78 GetDeploymentV2
samples/cli/sample-apps Csm getDeploymentV2 \
    --deploymentId '1xPRnOI8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 78 'GetDeploymentV2' test.out

#- 79 DeleteDeploymentV2
samples/cli/sample-apps Csm deleteDeploymentV2 \
    --deploymentId '1igZTf1i' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 79 'DeleteDeploymentV2' test.out

#- 80 GetKeyValueClusterV2
samples/cli/sample-apps Csm getKeyValueClusterV2 \
    --namespace $AB_NAMESPACE \
    --resourceId 'TXjYSLfZ' \
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
    --body '{"clusterName": "xoYQq8ss", "maxDataStorageGB": 34, "maxECPUPerSecond": 1, "profileName": "C0st9jlA"}' \
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
    --resourceId 'HbA45cAI' \
    --body '{"maxDataStorageGB": 98, "maxECPUPerSecond": 22, "profileName": "DvJAbdoP"}' \
    > test.out 2>&1
eval_tap $? 84 'UpdateKeyValueClusterV2' test.out

#- 85 DeleteKeyValueClusterV2
samples/cli/sample-apps Csm deleteKeyValueClusterV2 \
    --namespace $AB_NAMESPACE \
    --resourceId 'tVqwvpiY' \
    > test.out 2>&1
eval_tap $? 85 'DeleteKeyValueClusterV2' test.out

#- 86 GetListIntegratedAppKeyValueClusterV2
samples/cli/sample-apps Csm getListIntegratedAppKeyValueClusterV2 \
    --namespace $AB_NAMESPACE \
    --resourceId 'jeAOkUga' \
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
    --body '{"maxDCU": 0.7758719292053032, "minDCU": 0.4141919288398861, "profileName": "lH0CezjE"}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateNoSQLClusterV2' test.out

#- 89 CreateNoSQLClusterV2
samples/cli/sample-apps Csm createNoSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    --body '{"maxDCU": 0.782520490821054, "minDCU": 0.23340189261485955, "profileName": "A4nFkXVy"}' \
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
    --body '{"maxACU": 0.09397109207186838, "minACU": 0.6410667334082606, "multiAZ": true, "profileName": "IPWgaNjk"}' \
    > test.out 2>&1
eval_tap $? 96 'UpdateSQLClusterV2' test.out

#- 97 CreateSQLClusterV2
samples/cli/sample-apps Csm createSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    --body '{"maxACU": 0.7028517450311234, "minACU": 0.5480357456406282, "multiAZ": false, "profileName": "yBhWqMPB"}' \
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
    --resourceId 'bfcvLqaf' \
    --appName '4mubqQfT' \
    --gameNamespace 'XvPULBlB' \
    --limit '55' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 101 'GetSQLAppListV2' test.out

#- 102 GetNoSQLAppListV2
samples/cli/sample-apps Csm getNoSQLAppListV2 \
    --resourceId 'QIRu2ydR' \
    --studioName 'euep5msg' \
    --appName 'jD1MK7uK' \
    --limit '37' \
    --namespace 'UKW4UyrI' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 102 'GetNoSQLAppListV2' test.out

#- 103 GetNotificationSubscriberListV3
samples/cli/sample-apps Csm getNotificationSubscriberListV3 \
    --app 'UIVOXUBH' \
    --namespace $AB_NAMESPACE \
    --notificationType 'mO4Vurk4' \
    > test.out 2>&1
eval_tap $? 103 'GetNotificationSubscriberListV3' test.out

#- 104 DeleteSubscriptionAppNotificationV3
samples/cli/sample-apps Csm deleteSubscriptionAppNotificationV3 \
    --app 'jejdz4g7' \
    --namespace $AB_NAMESPACE \
    --emailAddress 'ftSVF17a' \
    --userId 'tZlAuyzY' \
    > test.out 2>&1
eval_tap $? 104 'DeleteSubscriptionAppNotificationV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE