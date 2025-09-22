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
echo "1..58"

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
    --app 'iUcFBeuW' \
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
    --limit '2' \
    --offset '98' \
    --body '{"appNames": ["CG0Jyk5I", "4CqHRrHV", "JbFRlJav"], "appStatuses": ["aOryEZfp", "DWmY9J5N", "MrYXGfPL"], "fuzzyAppName": "q3A2bF4Q", "scenario": "B56GTcHd"}' \
    > test.out 2>&1
eval_tap $? 25 'GetAppListV2' test.out

#- 26 GetAppV2
samples/cli/sample-apps Csm getAppV2 \
    --app 'T0ABWj39' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'GetAppV2' test.out

#- 27 CreateAppV2
samples/cli/sample-apps Csm createAppV2 \
    --app 'RWavhOOv' \
    --namespace $AB_NAMESPACE \
    --body '{"autoscaling": {"targetCPUUtilizationPercent": 89}, "cpu": {"requestCPU": 8}, "description": "TTOtfGOZ", "memory": {"requestMemory": 9}, "replica": {"maxReplica": 92, "minReplica": 67}, "scenario": "F104swXj", "vmSharingConfiguration": "FIxbF7BT"}' \
    > test.out 2>&1
eval_tap $? 27 'CreateAppV2' test.out

#- 28 DeleteAppV2
samples/cli/sample-apps Csm deleteAppV2 \
    --app '9tmKYxMw' \
    --namespace $AB_NAMESPACE \
    --forced 'SQesOemS' \
    > test.out 2>&1
eval_tap $? 28 'DeleteAppV2' test.out

#- 29 UpdateAppV2
samples/cli/sample-apps Csm updateAppV2 \
    --app 'kGjK7GwV' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "Eto9ybmT"}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateAppV2' test.out

#- 30 CreateDeploymentV2
samples/cli/sample-apps Csm createDeploymentV2 \
    --app 'rGC1VRak' \
    --namespace $AB_NAMESPACE \
    --body '{"imageTag": "fo79N7O5"}' \
    > test.out 2>&1
eval_tap $? 30 'CreateDeploymentV2' test.out

#- 31 GetAppImageListV2
samples/cli/sample-apps Csm getAppImageListV2 \
    --app 'TBKzQmyH' \
    --namespace $AB_NAMESPACE \
    --cached '5MZBrvP4' \
    > test.out 2>&1
eval_tap $? 31 'GetAppImageListV2' test.out

#- 32 DeleteAppImagesV2
samples/cli/sample-apps Csm deleteAppImagesV2 \
    --app '6nohl5nF' \
    --namespace $AB_NAMESPACE \
    --body '{"imageTags": ["pjhBfNFI", "BSl4kSaM", "Aytwt9uO"]}' \
    > test.out 2>&1
eval_tap $? 32 'DeleteAppImagesV2' test.out

#- 33 UpdateAppResourcesV2
samples/cli/sample-apps Csm updateAppResourcesV2 \
    --app 'IcXFYdI6' \
    --namespace $AB_NAMESPACE \
    --body '{"autoscaling": {"targetCPUUtilizationPercent": 53}, "cpu": {"requestCPU": 38}, "memory": {"requestMemory": 39}, "replica": {"maxReplica": 27, "minReplica": 34}, "vmSharingConfiguration": "4aeVCIKe"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateAppResourcesV2' test.out

#- 34 UpdateAppResourcesResourceLimitFormV2
samples/cli/sample-apps Csm updateAppResourcesResourceLimitFormV2 \
    --app '7xFS9NXH' \
    --namespace $AB_NAMESPACE \
    --body '{"clientEmail": "K5TOtDFq", "preferredLimitReplica": 96, "requestReason": "2IzbI40u"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateAppResourcesResourceLimitFormV2' test.out

#- 35 GetListOfSecretsV2
samples/cli/sample-apps Csm getListOfSecretsV2 \
    --app 'oGFImXU1' \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 35 'GetListOfSecretsV2' test.out

#- 36 SaveSecretV2
samples/cli/sample-apps Csm saveSecretV2 \
    --app 'xIWCEPif' \
    --namespace $AB_NAMESPACE \
    --body '{"configName": "GKUnmrhS", "description": "LEt8eMuZ", "source": "biuCzxuw", "value": "0YuQLerH"}' \
    > test.out 2>&1
eval_tap $? 36 'SaveSecretV2' test.out

#- 37 UpdateSecretV2
samples/cli/sample-apps Csm updateSecretV2 \
    --app 'S4WqE4up' \
    --configId 'Ed1cyTGH' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "J5qpDwG6", "value": "fxiQ5dDw"}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateSecretV2' test.out

#- 38 DeleteSecretV2
samples/cli/sample-apps Csm deleteSecretV2 \
    --app 'LJEknpye' \
    --configId 'DGlT9hy0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'DeleteSecretV2' test.out

#- 39 StartAppV2
samples/cli/sample-apps Csm startAppV2 \
    --app 'vsRvdqjm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 39 'StartAppV2' test.out

#- 40 StopAppV2
samples/cli/sample-apps Csm stopAppV2 \
    --app 'xg5Rlofc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 40 'StopAppV2' test.out

#- 41 GetNotificationSubscriberListV2
samples/cli/sample-apps Csm getNotificationSubscriberListV2 \
    --app 'T5AlWN7m' \
    --namespace $AB_NAMESPACE \
    --notificationType 't6dmm5DI' \
    > test.out 2>&1
eval_tap $? 41 'GetNotificationSubscriberListV2' test.out

#- 42 BulkSaveSubscriptionAppNotificationV2
samples/cli/sample-apps Csm bulkSaveSubscriptionAppNotificationV2 \
    --app 'uGox2bF7' \
    --namespace $AB_NAMESPACE \
    --body '{"subscribers": [{"emailAddress": "qYU1ewfF", "notificationType": {"D0uqA9D4": true, "sojfvp2M": false, "J5iTmZls": false}, "userId": "HWjybeMV"}, {"emailAddress": "saMHEFXD", "notificationType": {"kCjUQQfB": false, "fCC88hIU": true, "uWaLh9IX": false}, "userId": "gl7KAkqZ"}, {"emailAddress": "SHedz4fm", "notificationType": {"PaZqy3m8": true, "57NUzISv": false, "T23sz4q1": false}, "userId": "7ZClVMW9"}]}' \
    > test.out 2>&1
eval_tap $? 42 'BulkSaveSubscriptionAppNotificationV2' test.out

#- 43 SubscribeAppNotificationV2
samples/cli/sample-apps Csm subscribeAppNotificationV2 \
    --app 'kZKkKl7I' \
    --namespace $AB_NAMESPACE \
    --body '{"notificationType": "FoiqyM0t", "subscribers": [{"emailAddress": "lOSvQQOQ", "userId": "25dRVkor"}, {"emailAddress": "LOm3tSdt", "userId": "d7MC9WKt"}, {"emailAddress": "wMXAgj4S", "userId": "YkEYUyNv"}]}' \
    > test.out 2>&1
eval_tap $? 43 'SubscribeAppNotificationV2' test.out

#- 44 GetSubscriptionV2Handler
samples/cli/sample-apps Csm getSubscriptionV2Handler \
    --app 'rbVQjEE3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'GetSubscriptionV2Handler' test.out

#- 45 SubscribeV2Handler
samples/cli/sample-apps Csm subscribeV2Handler \
    --app 'OOd8hWIW' \
    --namespace $AB_NAMESPACE \
    --body '{"notificationType": "djUafQwd"}' \
    > test.out 2>&1
eval_tap $? 45 'SubscribeV2Handler' test.out

#- 46 UnsubscribeV2Handler
samples/cli/sample-apps Csm unsubscribeV2Handler \
    --app 'do3voqG1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'UnsubscribeV2Handler' test.out

#- 47 DeleteSubscriptionAppNotificationByUserIDV2
samples/cli/sample-apps Csm deleteSubscriptionAppNotificationByUserIDV2 \
    --app 'uUF1C70w' \
    --namespace $AB_NAMESPACE \
    --userId '8fXudwdv' \
    > test.out 2>&1
eval_tap $? 47 'DeleteSubscriptionAppNotificationByUserIDV2' test.out

#- 48 DeleteSubscriptionAppNotificationV2
eval_tap 0 48 'DeleteSubscriptionAppNotificationV2 # SKIP deprecated' test.out

#- 49 GetListOfVariablesV2
samples/cli/sample-apps Csm getListOfVariablesV2 \
    --app 'CKTOZ9gS' \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 49 'GetListOfVariablesV2' test.out

#- 50 SaveVariableV2
samples/cli/sample-apps Csm saveVariableV2 \
    --app 'ZlbM4sfz' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": false, "configName": "KaSSIx8L", "description": "mc5KwfUg", "source": "P6tgbpAN", "value": "azqbQqU5"}' \
    > test.out 2>&1
eval_tap $? 50 'SaveVariableV2' test.out

#- 51 UpdateVariableV2
samples/cli/sample-apps Csm updateVariableV2 \
    --app 'Kzue6Wac' \
    --configId 'ffbYsVQx' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": true, "description": "vgSIorpv", "value": "0iEhDO0e"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdateVariableV2' test.out

#- 52 DeleteVariableV2
samples/cli/sample-apps Csm deleteVariableV2 \
    --app 'F39ifft9' \
    --configId 'eqWU6AoQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteVariableV2' test.out

#- 53 GetListOfDeploymentV2
samples/cli/sample-apps Csm getListOfDeploymentV2 \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '83' \
    --body '{"appIds": ["cChTvCSp", "HUN1Vk67", "4K74mCKz"], "deploymentIds": ["xgPwptYU", "JsmzISAQ", "Luu9tIbg"], "statuses": ["nsbaDhOS", "cCilkoMm", "372Hwj4u"]}' \
    > test.out 2>&1
eval_tap $? 53 'GetListOfDeploymentV2' test.out

#- 54 GetDeploymentV2
samples/cli/sample-apps Csm getDeploymentV2 \
    --deploymentId 'zCJhSsrQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'GetDeploymentV2' test.out

#- 55 DeleteDeploymentV2
samples/cli/sample-apps Csm deleteDeploymentV2 \
    --deploymentId 'h3zF70Vx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'DeleteDeploymentV2' test.out

#- 56 GetResourcesLimits
samples/cli/sample-apps Csm getResourcesLimits \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'GetResourcesLimits' test.out

#- 57 GetNotificationSubscriberListV3
samples/cli/sample-apps Csm getNotificationSubscriberListV3 \
    --app 'kWxd9I9u' \
    --namespace $AB_NAMESPACE \
    --notificationType 'iRLicDx5' \
    > test.out 2>&1
eval_tap $? 57 'GetNotificationSubscriberListV3' test.out

#- 58 DeleteSubscriptionAppNotificationV3
samples/cli/sample-apps Csm deleteSubscriptionAppNotificationV3 \
    --app '3ovzQYcM' \
    --namespace $AB_NAMESPACE \
    --emailAddress 'RYxOP1Iu' \
    --userId '10m20gMN' \
    > test.out 2>&1
eval_tap $? 58 'DeleteSubscriptionAppNotificationV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE