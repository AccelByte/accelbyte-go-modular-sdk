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
    --app 'QrdiF6d3' \
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
    --limit '6' \
    --offset '20' \
    --body '{"appNames": ["swQdSlqX", "MNGbanqj", "Xhonx2Fs"], "appStatuses": ["aDvJzUtz", "KDT5Mq0i", "jpGVn5cE"], "fuzzyAppName": "HXfkD3fm", "scenario": "6arN3oLQ"}' \
    > test.out 2>&1
eval_tap $? 25 'GetAppListV2' test.out

#- 26 GetAppV2
samples/cli/sample-apps Csm getAppV2 \
    --app 'IobnbROY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'GetAppV2' test.out

#- 27 CreateAppV2
samples/cli/sample-apps Csm createAppV2 \
    --app 'HKnnQ8Qr' \
    --namespace $AB_NAMESPACE \
    --body '{"autoscaling": {"targetCPUUtilizationPercent": 65}, "cpu": {"requestCPU": 88}, "description": "xWyBAlXU", "memory": {"requestMemory": 69}, "replica": {"maxReplica": 100, "minReplica": 80}, "scenario": "hjQuLQst", "vmSharingConfiguration": "BzwHOE75"}' \
    > test.out 2>&1
eval_tap $? 27 'CreateAppV2' test.out

#- 28 DeleteAppV2
samples/cli/sample-apps Csm deleteAppV2 \
    --app 'YfHdkA0s' \
    --namespace $AB_NAMESPACE \
    --forced 'C0SEgsvp' \
    > test.out 2>&1
eval_tap $? 28 'DeleteAppV2' test.out

#- 29 UpdateAppV2
samples/cli/sample-apps Csm updateAppV2 \
    --app 'bRHvtMxJ' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "GHBk0jQJ"}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateAppV2' test.out

#- 30 CreateSubscriptionHandler
samples/cli/sample-apps Csm createSubscriptionHandler \
    --app '4tyuzSUI' \
    --namespace $AB_NAMESPACE \
    --body '{"topicNames": ["b91lQiCI", "hL7DmaMq", "QcLlgqlJ"]}' \
    > test.out 2>&1
eval_tap $? 30 'CreateSubscriptionHandler' test.out

#- 31 UnsubscribeTopicHandler
samples/cli/sample-apps Csm unsubscribeTopicHandler \
    --app '65c6IE57' \
    --namespace $AB_NAMESPACE \
    --topicName '2B8ahNpd' \
    > test.out 2>&1
eval_tap $? 31 'UnsubscribeTopicHandler' test.out

#- 32 CreateDeploymentV2
samples/cli/sample-apps Csm createDeploymentV2 \
    --app 'sNV9yYZV' \
    --namespace $AB_NAMESPACE \
    --body '{"imageTag": "u6W78Xiz"}' \
    > test.out 2>&1
eval_tap $? 32 'CreateDeploymentV2' test.out

#- 33 GetAppImageListV2
samples/cli/sample-apps Csm getAppImageListV2 \
    --app 'e10Kw289' \
    --namespace $AB_NAMESPACE \
    --cached 'adXU6b9B' \
    > test.out 2>&1
eval_tap $? 33 'GetAppImageListV2' test.out

#- 34 DeleteAppImagesV2
samples/cli/sample-apps Csm deleteAppImagesV2 \
    --app 'dsVL1nqO' \
    --namespace $AB_NAMESPACE \
    --body '{"imageTags": ["FMy6TI5k", "yg3HQotz", "qGJ6oHph"]}' \
    > test.out 2>&1
eval_tap $? 34 'DeleteAppImagesV2' test.out

#- 35 CreateNoSQLDatabaseCredentialV2
samples/cli/sample-apps Csm createNoSQLDatabaseCredentialV2 \
    --app 'b0pLfA2D' \
    --namespace $AB_NAMESPACE \
    --body '{"password": "JmHcDTlW", "username": "pSIoZMku"}' \
    > test.out 2>&1
eval_tap $? 35 'CreateNoSQLDatabaseCredentialV2' test.out

#- 36 GetNoSQLDatabaseV2
samples/cli/sample-apps Csm getNoSQLDatabaseV2 \
    --app 'F7masUgQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 36 'GetNoSQLDatabaseV2' test.out

#- 37 CreateNoSQLDatabaseV2
samples/cli/sample-apps Csm createNoSQLDatabaseV2 \
    --app 'Efn9yGuj' \
    --namespace $AB_NAMESPACE \
    --body '{"dbName": "J6bNE7os", "password": "96Y1rMiG", "username": "cAlQzT6j"}' \
    > test.out 2>&1
eval_tap $? 37 'CreateNoSQLDatabaseV2' test.out

#- 38 DeleteNoSQLDatabaseV2
samples/cli/sample-apps Csm deleteNoSQLDatabaseV2 \
    --app '3UTx1ary' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'DeleteNoSQLDatabaseV2' test.out

#- 39 UpdateAppResourcesV2
samples/cli/sample-apps Csm updateAppResourcesV2 \
    --app 'oHWe3SeJ' \
    --namespace $AB_NAMESPACE \
    --body '{"autoscaling": {"targetCPUUtilizationPercent": 46}, "cpu": {"requestCPU": 62}, "memory": {"requestMemory": 76}, "replica": {"maxReplica": 12, "minReplica": 24}, "vmSharingConfiguration": "jjH01guV"}' \
    > test.out 2>&1
eval_tap $? 39 'UpdateAppResourcesV2' test.out

#- 40 UpdateAppResourcesResourceLimitFormV2
samples/cli/sample-apps Csm updateAppResourcesResourceLimitFormV2 \
    --app 'zauMgXBQ' \
    --namespace $AB_NAMESPACE \
    --body '{"clientEmail": "3ooAcOA4", "preferredLimitReplica": 22, "requestReason": "qk8wkXMS"}' \
    > test.out 2>&1
eval_tap $? 40 'UpdateAppResourcesResourceLimitFormV2' test.out

#- 41 GetListOfSecretsV2
samples/cli/sample-apps Csm getListOfSecretsV2 \
    --app 'uC3BkJnK' \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 41 'GetListOfSecretsV2' test.out

#- 42 SaveSecretV2
samples/cli/sample-apps Csm saveSecretV2 \
    --app 'y0vxjLcy' \
    --namespace $AB_NAMESPACE \
    --body '{"configName": "QokKpR9E", "description": "f26SUF1F", "source": "6mtehEjG", "value": "0y2Tz19Z"}' \
    > test.out 2>&1
eval_tap $? 42 'SaveSecretV2' test.out

#- 43 UpdateSecretV2
samples/cli/sample-apps Csm updateSecretV2 \
    --app 'DwtU83pX' \
    --configId '91piengO' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "KrT4A6NI", "value": "UQjZBmck"}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateSecretV2' test.out

#- 44 DeleteSecretV2
samples/cli/sample-apps Csm deleteSecretV2 \
    --app 'MUmrne54' \
    --configId 'zeqe6Ttk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'DeleteSecretV2' test.out

#- 45 StartAppV2
samples/cli/sample-apps Csm startAppV2 \
    --app 'aMs7pRmd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 45 'StartAppV2' test.out

#- 46 StopAppV2
samples/cli/sample-apps Csm stopAppV2 \
    --app 'qzoMZt2x' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'StopAppV2' test.out

#- 47 GetNotificationSubscriberListV2
samples/cli/sample-apps Csm getNotificationSubscriberListV2 \
    --app 'XXkLW5YN' \
    --namespace $AB_NAMESPACE \
    --notificationType 'CtifUsbv' \
    > test.out 2>&1
eval_tap $? 47 'GetNotificationSubscriberListV2' test.out

#- 48 BulkSaveSubscriptionAppNotificationV2
samples/cli/sample-apps Csm bulkSaveSubscriptionAppNotificationV2 \
    --app 'xnpqKAtV' \
    --namespace $AB_NAMESPACE \
    --body '{"subscribers": [{"emailAddress": "NEFoarrm", "notificationType": {"COHhLECz": false, "97q6K6se": false, "VZhCxanR": true}, "userId": "hVtl61gs"}, {"emailAddress": "rWYADYXJ", "notificationType": {"9W7YW0bi": true, "Klf9pmJz": true, "HIY6yakU": true}, "userId": "MjAXxV6O"}, {"emailAddress": "SZ1iWzOk", "notificationType": {"IcZX9eDK": true, "wNgjt0yS": false, "TX8f5avw": false}, "userId": "9VGqXxOG"}]}' \
    > test.out 2>&1
eval_tap $? 48 'BulkSaveSubscriptionAppNotificationV2' test.out

#- 49 SubscribeAppNotificationV2
samples/cli/sample-apps Csm subscribeAppNotificationV2 \
    --app 'fVKFW1A0' \
    --namespace $AB_NAMESPACE \
    --body '{"notificationType": "05dREgEg", "subscribers": [{"emailAddress": "v3e7O0I8", "userId": "NGKyoMlX"}, {"emailAddress": "T4WXtibN", "userId": "dQml5h1z"}, {"emailAddress": "GwLfTfiq", "userId": "TwYAtOyW"}]}' \
    > test.out 2>&1
eval_tap $? 49 'SubscribeAppNotificationV2' test.out

#- 50 GetSubscriptionV2Handler
samples/cli/sample-apps Csm getSubscriptionV2Handler \
    --app 'ocgZtJiT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'GetSubscriptionV2Handler' test.out

#- 51 SubscribeV2Handler
samples/cli/sample-apps Csm subscribeV2Handler \
    --app 'UWVmwuZA' \
    --namespace $AB_NAMESPACE \
    --body '{"notificationType": "9mkZjs5p"}' \
    > test.out 2>&1
eval_tap $? 51 'SubscribeV2Handler' test.out

#- 52 UnsubscribeV2Handler
samples/cli/sample-apps Csm unsubscribeV2Handler \
    --app 'gYACVVvF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'UnsubscribeV2Handler' test.out

#- 53 DeleteSubscriptionAppNotificationByUserIDV2
samples/cli/sample-apps Csm deleteSubscriptionAppNotificationByUserIDV2 \
    --app 'c0nW7mZS' \
    --namespace $AB_NAMESPACE \
    --userId '5TbMhgRy' \
    > test.out 2>&1
eval_tap $? 53 'DeleteSubscriptionAppNotificationByUserIDV2' test.out

#- 54 DeleteSubscriptionAppNotificationV2
eval_tap 0 54 'DeleteSubscriptionAppNotificationV2 # SKIP deprecated' test.out

#- 55 GetListOfVariablesV2
samples/cli/sample-apps Csm getListOfVariablesV2 \
    --app 'soX7Kiaj' \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 55 'GetListOfVariablesV2' test.out

#- 56 SaveVariableV2
samples/cli/sample-apps Csm saveVariableV2 \
    --app 'tc3yr6Zf' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": false, "configName": "VugO7vQv", "description": "V3evfXZ7", "source": "BuRE946j", "value": "CyPCkm7y"}' \
    > test.out 2>&1
eval_tap $? 56 'SaveVariableV2' test.out

#- 57 UpdateVariableV2
samples/cli/sample-apps Csm updateVariableV2 \
    --app '3WXrD0WW' \
    --configId 'qd2vterX' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": true, "description": "woUTG4r0", "value": "iQVL6Xch"}' \
    > test.out 2>&1
eval_tap $? 57 'UpdateVariableV2' test.out

#- 58 DeleteVariableV2
samples/cli/sample-apps Csm deleteVariableV2 \
    --app '2xdhaevP' \
    --configId 'etAzvsgk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'DeleteVariableV2' test.out

#- 59 ListTopicsHandler
samples/cli/sample-apps Csm listTopicsHandler \
    --namespace $AB_NAMESPACE \
    --fuzzyTopicName 'd6NL25e6' \
    --isSubscribedByAppName 'tGN9rU5M' \
    --isUnsubscribedByAppName 'QV2wMfa6' \
    --limit '68' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 59 'ListTopicsHandler' test.out

#- 60 CreateTopicHandler
samples/cli/sample-apps Csm createTopicHandler \
    --namespace $AB_NAMESPACE \
    --body '{"description": "PMzrUuTK", "topicName": "UxaWBqo5"}' \
    > test.out 2>&1
eval_tap $? 60 'CreateTopicHandler' test.out

#- 61 DeleteTopicHandler
samples/cli/sample-apps Csm deleteTopicHandler \
    --namespace $AB_NAMESPACE \
    --topicName 'TEKQFDEU' \
    > test.out 2>&1
eval_tap $? 61 'DeleteTopicHandler' test.out

#- 62 GetListOfDeploymentV2
samples/cli/sample-apps Csm getListOfDeploymentV2 \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '49' \
    --body '{"appIds": ["vQZFYUx6", "cQi3r0H1", "FpiDU64n"], "deploymentIds": ["5cw7hz9c", "hvwKeNXq", "Ti0FVqvY"], "statuses": ["CsEvXNrd", "gtxWV2RP", "U2ykXpe0"]}' \
    > test.out 2>&1
eval_tap $? 62 'GetListOfDeploymentV2' test.out

#- 63 GetDeploymentV2
samples/cli/sample-apps Csm getDeploymentV2 \
    --deploymentId 'jsKoHoJf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'GetDeploymentV2' test.out

#- 64 DeleteDeploymentV2
samples/cli/sample-apps Csm deleteDeploymentV2 \
    --deploymentId 'XCmUdTvN' \
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
    --body '{"maxDCU": 0.09114953057944841, "minDCU": 0.6154869740097688, "profileName": "NyirDO9O"}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateNoSQLClusterV2' test.out

#- 67 CreateNoSQLClusterV2
samples/cli/sample-apps Csm createNoSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    --body '{"maxDCU": 0.15162305962634304, "minDCU": 0.03778466195175645, "profileName": "LMH7nyTV"}' \
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
    --resourceId 'Rwg8L3TM' \
    --studioName 'Bj36szCM' \
    --appName 'x0leDL8i' \
    --limit '91' \
    --namespace 'VoOSUzmQ' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 73 'GetNoSQLAppListV2' test.out

#- 74 GetNotificationSubscriberListV3
samples/cli/sample-apps Csm getNotificationSubscriberListV3 \
    --app 'sN72HreS' \
    --namespace $AB_NAMESPACE \
    --notificationType 'KmN4NgVb' \
    > test.out 2>&1
eval_tap $? 74 'GetNotificationSubscriberListV3' test.out

#- 75 DeleteSubscriptionAppNotificationV3
samples/cli/sample-apps Csm deleteSubscriptionAppNotificationV3 \
    --app 'FHR7BqsX' \
    --namespace $AB_NAMESPACE \
    --emailAddress '5ehsYQqv' \
    --userId '6uiGma1N' \
    > test.out 2>&1
eval_tap $? 75 'DeleteSubscriptionAppNotificationV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE