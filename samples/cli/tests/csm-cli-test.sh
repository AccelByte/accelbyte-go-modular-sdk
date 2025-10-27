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
echo "1..67"

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
    --app 'heJ2CcBR' \
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
    --limit '90' \
    --offset '42' \
    --body '{"appNames": ["BsHtAlip", "uAoJeVt6", "ioG00era"], "appStatuses": ["T67F36eQ", "KHjzoWfs", "DOnGDuO2"], "fuzzyAppName": "AjMzZsqy", "scenario": "aGgr0x33"}' \
    > test.out 2>&1
eval_tap $? 25 'GetAppListV2' test.out

#- 26 GetAppV2
samples/cli/sample-apps Csm getAppV2 \
    --app 'EZJ2lV5e' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'GetAppV2' test.out

#- 27 CreateAppV2
samples/cli/sample-apps Csm createAppV2 \
    --app '7dJPbQZV' \
    --namespace $AB_NAMESPACE \
    --body '{"autoscaling": {"targetCPUUtilizationPercent": 9}, "cpu": {"requestCPU": 80}, "description": "w3bqoriA", "memory": {"requestMemory": 51}, "replica": {"maxReplica": 76, "minReplica": 98}, "scenario": "PPcN0zDy", "vmSharingConfiguration": "UYlXucrk"}' \
    > test.out 2>&1
eval_tap $? 27 'CreateAppV2' test.out

#- 28 DeleteAppV2
samples/cli/sample-apps Csm deleteAppV2 \
    --app 'KqoJOKdy' \
    --namespace $AB_NAMESPACE \
    --forced 'a7eTrOFF' \
    > test.out 2>&1
eval_tap $? 28 'DeleteAppV2' test.out

#- 29 UpdateAppV2
samples/cli/sample-apps Csm updateAppV2 \
    --app 'V8Yx59vB' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "mjJOtQQL"}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateAppV2' test.out

#- 30 CreateDeploymentV2
samples/cli/sample-apps Csm createDeploymentV2 \
    --app 'NmZ7cPgf' \
    --namespace $AB_NAMESPACE \
    --body '{"imageTag": "VGp6pQVg"}' \
    > test.out 2>&1
eval_tap $? 30 'CreateDeploymentV2' test.out

#- 31 GetAppImageListV2
samples/cli/sample-apps Csm getAppImageListV2 \
    --app '1MG7CQR1' \
    --namespace $AB_NAMESPACE \
    --cached 'ezqC7VGD' \
    > test.out 2>&1
eval_tap $? 31 'GetAppImageListV2' test.out

#- 32 DeleteAppImagesV2
samples/cli/sample-apps Csm deleteAppImagesV2 \
    --app 'MMVyxcnZ' \
    --namespace $AB_NAMESPACE \
    --body '{"imageTags": ["GCjS7Pu5", "CxgorMIb", "AgjnZdfy"]}' \
    > test.out 2>&1
eval_tap $? 32 'DeleteAppImagesV2' test.out

#- 33 CreateNoSQLDatabaseCredentialV2
samples/cli/sample-apps Csm createNoSQLDatabaseCredentialV2 \
    --app 'PFERwzzq' \
    --namespace $AB_NAMESPACE \
    --body '{"password": "rbAx4vbq", "username": "0QBSmnXo"}' \
    > test.out 2>&1
eval_tap $? 33 'CreateNoSQLDatabaseCredentialV2' test.out

#- 34 GetNoSQLDatabaseV2
samples/cli/sample-apps Csm getNoSQLDatabaseV2 \
    --app 'Cb2iUaGW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'GetNoSQLDatabaseV2' test.out

#- 35 CreateNoSQLDatabaseV2
samples/cli/sample-apps Csm createNoSQLDatabaseV2 \
    --app 'sVAw2ahd' \
    --namespace $AB_NAMESPACE \
    --body '{"dbName": "CJyIACt8", "password": "jy0k0xhR", "username": "6voAVRnF"}' \
    > test.out 2>&1
eval_tap $? 35 'CreateNoSQLDatabaseV2' test.out

#- 36 DeleteNoSQLDatabaseV2
samples/cli/sample-apps Csm deleteNoSQLDatabaseV2 \
    --app 'OVpAYUxt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 36 'DeleteNoSQLDatabaseV2' test.out

#- 37 UpdateAppResourcesV2
samples/cli/sample-apps Csm updateAppResourcesV2 \
    --app 'SZR0hfre' \
    --namespace $AB_NAMESPACE \
    --body '{"autoscaling": {"targetCPUUtilizationPercent": 79}, "cpu": {"requestCPU": 33}, "memory": {"requestMemory": 40}, "replica": {"maxReplica": 50, "minReplica": 5}, "vmSharingConfiguration": "zTJq5Jih"}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateAppResourcesV2' test.out

#- 38 UpdateAppResourcesResourceLimitFormV2
samples/cli/sample-apps Csm updateAppResourcesResourceLimitFormV2 \
    --app 'RvJp1IUf' \
    --namespace $AB_NAMESPACE \
    --body '{"clientEmail": "M2mZJjvY", "preferredLimitReplica": 54, "requestReason": "cswaT07Y"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateAppResourcesResourceLimitFormV2' test.out

#- 39 GetListOfSecretsV2
samples/cli/sample-apps Csm getListOfSecretsV2 \
    --app 'Spwa7mcy' \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 39 'GetListOfSecretsV2' test.out

#- 40 SaveSecretV2
samples/cli/sample-apps Csm saveSecretV2 \
    --app 'REKkCAQh' \
    --namespace $AB_NAMESPACE \
    --body '{"configName": "p8lMXiWH", "description": "7zfJqlgJ", "source": "LsehdZok", "value": "wIO7E1Xu"}' \
    > test.out 2>&1
eval_tap $? 40 'SaveSecretV2' test.out

#- 41 UpdateSecretV2
samples/cli/sample-apps Csm updateSecretV2 \
    --app 'gyfTYRgt' \
    --configId '7Nmc2zMs' \
    --namespace $AB_NAMESPACE \
    --body '{"description": "37jtQWdw", "value": "z4AWLIPe"}' \
    > test.out 2>&1
eval_tap $? 41 'UpdateSecretV2' test.out

#- 42 DeleteSecretV2
samples/cli/sample-apps Csm deleteSecretV2 \
    --app 'c4py86ts' \
    --configId 'bxbS82tO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DeleteSecretV2' test.out

#- 43 StartAppV2
samples/cli/sample-apps Csm startAppV2 \
    --app 'on5Yt6DB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'StartAppV2' test.out

#- 44 StopAppV2
samples/cli/sample-apps Csm stopAppV2 \
    --app '9UDqcDS6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'StopAppV2' test.out

#- 45 GetNotificationSubscriberListV2
samples/cli/sample-apps Csm getNotificationSubscriberListV2 \
    --app 'UR0trbDd' \
    --namespace $AB_NAMESPACE \
    --notificationType '4dni26Wc' \
    > test.out 2>&1
eval_tap $? 45 'GetNotificationSubscriberListV2' test.out

#- 46 BulkSaveSubscriptionAppNotificationV2
samples/cli/sample-apps Csm bulkSaveSubscriptionAppNotificationV2 \
    --app 'zA6Gv6tZ' \
    --namespace $AB_NAMESPACE \
    --body '{"subscribers": [{"emailAddress": "GxupGku0", "notificationType": {"0D6YKwi9": false, "i30KR6lH": true, "DWYLt4B8": false}, "userId": "wZvbLE0W"}, {"emailAddress": "PtRc3jBF", "notificationType": {"3l6Ufuln": true, "EkNdyrZv": false, "HLwBl06m": true}, "userId": "xvIWBxxl"}, {"emailAddress": "9NCQ2vNU", "notificationType": {"EM16gm5W": false, "2Z5mIBUi": false, "h3MDlxzH": false}, "userId": "5xDydoOg"}]}' \
    > test.out 2>&1
eval_tap $? 46 'BulkSaveSubscriptionAppNotificationV2' test.out

#- 47 SubscribeAppNotificationV2
samples/cli/sample-apps Csm subscribeAppNotificationV2 \
    --app 'emxvcBcS' \
    --namespace $AB_NAMESPACE \
    --body '{"notificationType": "T80a8ZpW", "subscribers": [{"emailAddress": "Y981q0KO", "userId": "JCJ70CAu"}, {"emailAddress": "1nQKnrgB", "userId": "syfQvvh0"}, {"emailAddress": "ODuaudb5", "userId": "xfYnGScW"}]}' \
    > test.out 2>&1
eval_tap $? 47 'SubscribeAppNotificationV2' test.out

#- 48 GetSubscriptionV2Handler
samples/cli/sample-apps Csm getSubscriptionV2Handler \
    --app 'mOmbMUms' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'GetSubscriptionV2Handler' test.out

#- 49 SubscribeV2Handler
samples/cli/sample-apps Csm subscribeV2Handler \
    --app 'Ve8xrdwX' \
    --namespace $AB_NAMESPACE \
    --body '{"notificationType": "m1bsovH5"}' \
    > test.out 2>&1
eval_tap $? 49 'SubscribeV2Handler' test.out

#- 50 UnsubscribeV2Handler
samples/cli/sample-apps Csm unsubscribeV2Handler \
    --app 'PdUPjxxb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'UnsubscribeV2Handler' test.out

#- 51 DeleteSubscriptionAppNotificationByUserIDV2
samples/cli/sample-apps Csm deleteSubscriptionAppNotificationByUserIDV2 \
    --app 'SdepYBvn' \
    --namespace $AB_NAMESPACE \
    --userId 'kxPyxrPA' \
    > test.out 2>&1
eval_tap $? 51 'DeleteSubscriptionAppNotificationByUserIDV2' test.out

#- 52 DeleteSubscriptionAppNotificationV2
eval_tap 0 52 'DeleteSubscriptionAppNotificationV2 # SKIP deprecated' test.out

#- 53 GetListOfVariablesV2
samples/cli/sample-apps Csm getListOfVariablesV2 \
    --app 'Djs5rDEQ' \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 53 'GetListOfVariablesV2' test.out

#- 54 SaveVariableV2
samples/cli/sample-apps Csm saveVariableV2 \
    --app 'sDQwyFeJ' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": true, "configName": "ylatuex2", "description": "hdfQ12dY", "source": "X3DORVrd", "value": "EvjcyLK9"}' \
    > test.out 2>&1
eval_tap $? 54 'SaveVariableV2' test.out

#- 55 UpdateVariableV2
samples/cli/sample-apps Csm updateVariableV2 \
    --app 'YrRNr3gB' \
    --configId 'GW2VsplD' \
    --namespace $AB_NAMESPACE \
    --body '{"applyMask": false, "description": "XUskiqZV", "value": "4EZgdKLn"}' \
    > test.out 2>&1
eval_tap $? 55 'UpdateVariableV2' test.out

#- 56 DeleteVariableV2
samples/cli/sample-apps Csm deleteVariableV2 \
    --app 'KwAKc7yU' \
    --configId 'YRQucEar' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'DeleteVariableV2' test.out

#- 57 GetListOfDeploymentV2
samples/cli/sample-apps Csm getListOfDeploymentV2 \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '99' \
    --body '{"appIds": ["n6X4HfoP", "EL9KOCkc", "O7TGPfdk"], "deploymentIds": ["mJD5s5Xn", "jmv184oG", "KVcxIXnB"], "statuses": ["KZflKB1c", "5DAZbmQu", "JNTquTjx"]}' \
    > test.out 2>&1
eval_tap $? 57 'GetListOfDeploymentV2' test.out

#- 58 GetDeploymentV2
samples/cli/sample-apps Csm getDeploymentV2 \
    --deploymentId 'BjTkA3XW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetDeploymentV2' test.out

#- 59 DeleteDeploymentV2
samples/cli/sample-apps Csm deleteDeploymentV2 \
    --deploymentId 'GsYtP5GM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'DeleteDeploymentV2' test.out

#- 60 GetNoSQLClusterV2
samples/cli/sample-apps Csm getNoSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'GetNoSQLClusterV2' test.out

#- 61 UpdateNoSQLClusterV2
samples/cli/sample-apps Csm updateNoSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    --body '{"maxDCU": 0.09203121916241619, "minDCU": 0.033287800346494256, "profileName": "5lyiXNfC"}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateNoSQLClusterV2' test.out

#- 62 CreateNoSQLClusterV2
samples/cli/sample-apps Csm createNoSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    --body '{"maxDCU": 0.17985565309318463, "minDCU": 0.05732389541899163, "profileName": "TdmmFTog"}' \
    > test.out 2>&1
eval_tap $? 62 'CreateNoSQLClusterV2' test.out

#- 63 DeleteNoSQLClusterV2
samples/cli/sample-apps Csm deleteNoSQLClusterV2 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeleteNoSQLClusterV2' test.out

#- 64 GetNoSQLAccessTunnelV2
samples/cli/sample-apps Csm getNoSQLAccessTunnelV2 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetNoSQLAccessTunnelV2' test.out

#- 65 GetResourcesLimits
samples/cli/sample-apps Csm getResourcesLimits \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'GetResourcesLimits' test.out

#- 66 GetNotificationSubscriberListV3
samples/cli/sample-apps Csm getNotificationSubscriberListV3 \
    --app '3Z4EFYws' \
    --namespace $AB_NAMESPACE \
    --notificationType 'ZneUwfO7' \
    > test.out 2>&1
eval_tap $? 66 'GetNotificationSubscriberListV3' test.out

#- 67 DeleteSubscriptionAppNotificationV3
samples/cli/sample-apps Csm deleteSubscriptionAppNotificationV3 \
    --app 'vnnJThSq' \
    --namespace $AB_NAMESPACE \
    --emailAddress 'Vf4nvx6I' \
    --userId '8JN5dDk1' \
    > test.out 2>&1
eval_tap $? 67 'DeleteSubscriptionAppNotificationV3' test.out


rm -f "tmp.dat"

exit $EXIT_CODE