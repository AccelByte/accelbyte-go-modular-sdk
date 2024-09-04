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
echo "1..89"

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

#- 2 ListConfig
samples/cli/sample-apps Dsmc listConfig \
    > test.out 2>&1
eval_tap $? 2 'ListConfig' test.out

#- 3 SaveConfig
eval_tap 0 3 'SaveConfig # SKIP deprecated' test.out

#- 4 UpdateImage
samples/cli/sample-apps Dsmc updateImage \
    --body '{"artifactPath": "dsQ0o8qk", "coreDumpEnabled": true, "image": "7QMfaGkt", "imageReplicationsMap": {"8c2tT9h7": {"failure_code": "eCA0yQVR", "region": "gq6SXoOX", "status": "YQRx40nv", "uri": "iCk9ezSO"}, "NItRc1xe": {"failure_code": "xystoOuC", "region": "CQ4Zv3ar", "status": "q5KRDxrM", "uri": "KwUTdazX"}, "NFWwtomn": {"failure_code": "mEu8HTGq", "region": "VZJ2ymNb", "status": "Dy7i2yOg", "uri": "r6z7IHwj"}}, "namespace": "XKRUg0hZ", "patchVersion": "pSTLfSXF", "persistent": true, "ulimitFileSize": 55, "version": "MJE20uI4"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "M2tZobTv", "coreDumpEnabled": false, "dockerPath": "qWFAvbof", "image": "YfGJ6DEw", "imageSize": 55, "namespace": "IX6lV0Yr", "persistent": false, "ulimitFileSize": 56, "version": "4jS9oW9s"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "R4S9rcw4", "coreDumpEnabled": true, "dockerPath": "RKTQsA9x", "image": "plN9Oh2k", "imageSize": 22, "namespace": "FPLnjoIQ", "patchVersion": "kIEFS0vs", "persistent": true, "ulimitFileSize": 96, "uploaderFlag": "rrXduC6p", "version": "RPSqGyLY"}' \
    > test.out 2>&1
eval_tap $? 6 'CreateImagePatch' test.out

#- 7 GetLowestInstanceSpec
samples/cli/sample-apps Dsmc getLowestInstanceSpec \
    > test.out 2>&1
eval_tap $? 7 'GetLowestInstanceSpec' test.out

#- 8 GetWorkerConfig
samples/cli/sample-apps Dsmc getWorkerConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'GetWorkerConfig' test.out

#- 9 UpdateWorkerConfig
samples/cli/sample-apps Dsmc updateWorkerConfig \
    --namespace $AB_NAMESPACE \
    --body '{"auto_deletion": true, "ghost_worker": true, "manual_buffer_override": false, "zombie_worker": true}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateWorkerConfig' test.out

#- 10 CreateWorkerConfig
samples/cli/sample-apps Dsmc createWorkerConfig \
    --namespace $AB_NAMESPACE \
    --body '{"auto_deletion": false, "ghost_worker": true, "manual_buffer_override": true, "zombie_worker": true}' \
    > test.out 2>&1
eval_tap $? 10 'CreateWorkerConfig' test.out

#- 11 GetConfig
samples/cli/sample-apps Dsmc getConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetConfig' test.out

#- 12 CreateConfig
samples/cli/sample-apps Dsmc createConfig \
    --namespace $AB_NAMESPACE \
    --body '{"claim_timeout": 91, "creation_timeout": 51, "default_version": "LRJnGtnM", "port": 53, "ports": {"sSUTQojS": 54, "2PiPA6Ru": 65, "2vMnIZHp": 3}, "protocol": "da33Stqi", "providers": ["Sn2gspoL", "apUDaOa8", "srMLfAWh"], "session_timeout": 30, "unreachable_timeout": 18}' \
    > test.out 2>&1
eval_tap $? 12 'CreateConfig' test.out

#- 13 DeleteConfig
samples/cli/sample-apps Dsmc deleteConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteConfig' test.out

#- 14 UpdateConfig
samples/cli/sample-apps Dsmc updateConfig \
    --namespace $AB_NAMESPACE \
    --body '{"claim_timeout": 85, "creation_timeout": 84, "default_version": "rLK2ohUp", "port": 14, "protocol": "Ej0zgRbg", "providers": ["IPAksD4p", "LGkVqHxP", "lGdrUymD"], "session_timeout": 95, "unreachable_timeout": 8}' \
    > test.out 2>&1
eval_tap $? 14 'UpdateConfig' test.out

#- 15 ClearCache
samples/cli/sample-apps Dsmc clearCache \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'ClearCache' test.out

#- 16 GetAllDeployment
samples/cli/sample-apps Dsmc getAllDeployment \
    --namespace $AB_NAMESPACE \
    --name 'AgAkKOPL' \
    --count '8' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 16 'GetAllDeployment' test.out

#- 17 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'Fu7vmYS0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetDeployment' test.out

#- 18 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'uCyBtlkC' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 36, "buffer_percent": 87, "configuration": "RXkTelrH", "enable_region_overrides": false, "extendable_session": true, "game_version": "LOjICZkm", "max_count": 51, "min_count": 50, "overrides": {"R5MWi0hL": {"buffer_count": 55, "buffer_percent": 39, "configuration": "swHYk0fU", "enable_region_overrides": true, "extendable_session": true, "game_version": "SwnhTVkC", "max_count": 60, "min_count": 87, "name": "VnMsrmw3", "region_overrides": {"iJurICVl": {"buffer_count": 34, "buffer_percent": 68, "max_count": 22, "min_count": 95, "name": "Dxzem5P3", "unlimited": false, "use_buffer_percent": false}, "MJ6kjWVl": {"buffer_count": 18, "buffer_percent": 45, "max_count": 91, "min_count": 39, "name": "DuQuBYYs", "unlimited": true, "use_buffer_percent": true}, "je2knq5u": {"buffer_count": 69, "buffer_percent": 94, "max_count": 14, "min_count": 75, "name": "wKoFv15I", "unlimited": false, "use_buffer_percent": false}}, "regions": ["tgFSM8cS", "jHRQNmTS", "6qMT5S6r"], "session_timeout": 43, "unlimited": true, "use_buffer_percent": false}, "wsHF8APa": {"buffer_count": 31, "buffer_percent": 8, "configuration": "z0awDMhJ", "enable_region_overrides": false, "extendable_session": true, "game_version": "oihWKIpb", "max_count": 4, "min_count": 16, "name": "gKVRltLg", "region_overrides": {"ZmN4oqcz": {"buffer_count": 52, "buffer_percent": 48, "max_count": 89, "min_count": 74, "name": "H4kw728c", "unlimited": true, "use_buffer_percent": true}, "e1qhfF3c": {"buffer_count": 49, "buffer_percent": 99, "max_count": 27, "min_count": 74, "name": "GF3Ntvbm", "unlimited": false, "use_buffer_percent": false}, "COhwMPat": {"buffer_count": 71, "buffer_percent": 65, "max_count": 67, "min_count": 24, "name": "7wAI2zRf", "unlimited": false, "use_buffer_percent": true}}, "regions": ["Vs8eRoWE", "PG1kka2v", "dH05R1Yl"], "session_timeout": 79, "unlimited": true, "use_buffer_percent": false}, "BpPBJFUM": {"buffer_count": 11, "buffer_percent": 8, "configuration": "QV2UuWn1", "enable_region_overrides": true, "extendable_session": true, "game_version": "wh26Jlmh", "max_count": 12, "min_count": 86, "name": "GA0zly99", "region_overrides": {"Vh7l2Plb": {"buffer_count": 12, "buffer_percent": 20, "max_count": 22, "min_count": 49, "name": "aFUl9r5V", "unlimited": true, "use_buffer_percent": true}, "mEXbLlUU": {"buffer_count": 60, "buffer_percent": 40, "max_count": 82, "min_count": 39, "name": "1gh69ion", "unlimited": false, "use_buffer_percent": false}, "2HTPe8zC": {"buffer_count": 52, "buffer_percent": 12, "max_count": 86, "min_count": 79, "name": "1vJcfhwG", "unlimited": true, "use_buffer_percent": false}}, "regions": ["afbXNCAl", "7D9H3iMa", "7vEtiaEm"], "session_timeout": 86, "unlimited": true, "use_buffer_percent": false}}, "region_overrides": {"h9CFl7eE": {"buffer_count": 31, "buffer_percent": 28, "max_count": 95, "min_count": 48, "name": "MO39nRuU", "unlimited": true, "use_buffer_percent": false}, "C7uGYjda": {"buffer_count": 35, "buffer_percent": 18, "max_count": 51, "min_count": 94, "name": "DzHv36Lj", "unlimited": true, "use_buffer_percent": false}, "DuJDyG31": {"buffer_count": 34, "buffer_percent": 40, "max_count": 3, "min_count": 71, "name": "PMS4zj2a", "unlimited": false, "use_buffer_percent": true}}, "regions": ["CwfKgEDC", "Rsw9moCs", "7dLzB8Di"], "session_timeout": 18, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 18 'CreateDeployment' test.out

#- 19 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'qHzJtZyB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'DeleteDeployment' test.out

#- 20 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment '8FpqnDHo' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 26, "buffer_percent": 6, "configuration": "xbhHYDax", "enable_region_overrides": true, "extendable_session": true, "game_version": "aEXQ6bsF", "max_count": 98, "min_count": 43, "regions": ["nPYwXfAT", "FcnLTk0m", "EZL3BOWW"], "session_timeout": 92, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateDeployment' test.out

#- 21 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'xlwfBnCf' \
    --namespace $AB_NAMESPACE \
    --region 'MZZ5Xhem' \
    --body '{"buffer_count": 32, "buffer_percent": 63, "max_count": 63, "min_count": 81, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 21 'CreateRootRegionOverride' test.out

#- 22 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'ThbQnl8P' \
    --namespace $AB_NAMESPACE \
    --region '2eJN4ySM' \
    > test.out 2>&1
eval_tap $? 22 'DeleteRootRegionOverride' test.out

#- 23 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'EJCuqtVT' \
    --namespace $AB_NAMESPACE \
    --region 'aYbS6cYR' \
    --body '{"buffer_count": 11, "buffer_percent": 73, "max_count": 8, "min_count": 99, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateRootRegionOverride' test.out

#- 24 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'E08EFgqB' \
    --namespace $AB_NAMESPACE \
    --version 'q3DesEPL' \
    --body '{"buffer_count": 74, "buffer_percent": 49, "configuration": "r9SOFnMR", "enable_region_overrides": false, "extendable_session": false, "game_version": "gJ8oeMPk", "max_count": 93, "min_count": 32, "region_overrides": {"6ZMPjnb6": {"buffer_count": 9, "buffer_percent": 4, "max_count": 100, "min_count": 62, "name": "UpAZfkmk", "unlimited": true, "use_buffer_percent": false}, "9KbnX3iI": {"buffer_count": 51, "buffer_percent": 18, "max_count": 4, "min_count": 23, "name": "VHxwwLgH", "unlimited": true, "use_buffer_percent": false}, "wex695ev": {"buffer_count": 57, "buffer_percent": 12, "max_count": 94, "min_count": 33, "name": "zw5kwH6y", "unlimited": true, "use_buffer_percent": false}}, "regions": ["ZtiVIIsZ", "outsggmS", "6qRcsJh7"], "session_timeout": 12, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 24 'CreateDeploymentOverride' test.out

#- 25 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'VUTvpa0T' \
    --namespace $AB_NAMESPACE \
    --version 'AdlK6CBg' \
    > test.out 2>&1
eval_tap $? 25 'DeleteDeploymentOverride' test.out

#- 26 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'psoEymvB' \
    --namespace $AB_NAMESPACE \
    --version 'KSiVDIOp' \
    --body '{"buffer_count": 10, "buffer_percent": 47, "configuration": "84QkjgBV", "enable_region_overrides": true, "game_version": "BbXlR9VV", "max_count": 93, "min_count": 7, "regions": ["XJ9bgDxI", "36xEV3cJ", "rndCgKka"], "session_timeout": 54, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateDeploymentOverride' test.out

#- 27 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment '6qYVTwd8' \
    --namespace $AB_NAMESPACE \
    --region 'ejCVaWWb' \
    --version 'hnwfUd3k' \
    --body '{"buffer_count": 13, "buffer_percent": 71, "max_count": 62, "min_count": 92, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 27 'CreateOverrideRegionOverride' test.out

#- 28 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'vFlyoU1M' \
    --namespace $AB_NAMESPACE \
    --region 'KSSJAWze' \
    --version '55GK7b47' \
    > test.out 2>&1
eval_tap $? 28 'DeleteOverrideRegionOverride' test.out

#- 29 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'mJQY1NYW' \
    --namespace $AB_NAMESPACE \
    --region 'mQeB3bYV' \
    --version 'B7NFPGLV' \
    --body '{"buffer_count": 90, "buffer_percent": 80, "max_count": 67, "min_count": 88, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateOverrideRegionOverride' test.out

#- 30 DeleteCreatingServerCountQueue
samples/cli/sample-apps Dsmc deleteCreatingServerCountQueue \
    --deployment 'rogftgOG' \
    --namespace $AB_NAMESPACE \
    --version 'ZWpnxCxl' \
    > test.out 2>&1
eval_tap $? 30 'DeleteCreatingServerCountQueue' test.out

#- 31 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '61' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 31 'GetAllPodConfig' test.out

#- 32 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'urz1CWLC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'GetPodConfig' test.out

#- 33 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'vezmpaK7' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 17, "mem_limit": 79, "params": "IBBY6R0t"}' \
    > test.out 2>&1
eval_tap $? 33 'CreatePodConfig' test.out

#- 34 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name '8DZM60Ca' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePodConfig' test.out

#- 35 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'yycHwt3T' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 56, "mem_limit": 8, "name": "JXXnGlJF", "params": "1Vq6GjiZ"}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePodConfig' test.out

#- 36 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'FP8jeigX' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 15}' \
    > test.out 2>&1
eval_tap $? 36 'AddPort' test.out

#- 37 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'vpB1q7gA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'DeletePort' test.out

#- 38 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'cPK2bFBB' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "ogw65MbK", "port": 8}' \
    > test.out 2>&1
eval_tap $? 38 'UpdatePort' test.out

#- 39 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q '5INvyACD' \
    --sortBy 'updatedAt' \
    --sortDirection 'desc' \
    --count '64' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 39 'ListImages' test.out

#- 40 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI '20Qdzy0g' \
    --version 'dpnA1ixZ' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImage' test.out

#- 41 GetImageLimit
samples/cli/sample-apps Dsmc getImageLimit \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'GetImageLimit' test.out

#- 42 DeleteImagePatch
samples/cli/sample-apps Dsmc deleteImagePatch \
    --namespace $AB_NAMESPACE \
    --imageURI 'ZuJYJje8' \
    --version 't7jMwX23' \
    --versionPatch '3v3lBhyd' \
    > test.out 2>&1
eval_tap $? 42 'DeleteImagePatch' test.out

#- 43 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'Hc2oTUic' \
    > test.out 2>&1
eval_tap $? 43 'GetImageDetail' test.out

#- 44 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'r6wTZ8ea' \
    > test.out 2>&1
eval_tap $? 44 'GetImagePatches' test.out

#- 45 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'BkNBX7U9' \
    --versionPatch 'nqA7nCOA' \
    > test.out 2>&1
eval_tap $? 45 'GetImagePatchDetail' test.out

#- 46 AddBuffer
samples/cli/sample-apps Dsmc addBuffer \
    --namespace $AB_NAMESPACE \
    --body '{"AllocCount": 38, "DeploymentName": "t4VRiBws", "JobCount": 58, "JobPriority": 29, "OverrideVersion": "FTRI2RiN", "Region": "hNo80QgP"}' \
    > test.out 2>&1
eval_tap $? 46 'AddBuffer' test.out

#- 47 GetRepository
samples/cli/sample-apps Dsmc getRepository \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'GetRepository' test.out

#- 48 ListServer
samples/cli/sample-apps Dsmc listServer \
    --namespace $AB_NAMESPACE \
    --region 'OplqepfG' \
    --count '85' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 48 'ListServer' test.out

#- 49 CountServer
samples/cli/sample-apps Dsmc countServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'CountServer' test.out

#- 50 CountServerDetailed
samples/cli/sample-apps Dsmc countServerDetailed \
    --namespace $AB_NAMESPACE \
    --region '43zY4g5F' \
    > test.out 2>&1
eval_tap $? 50 'CountServerDetailed' test.out

#- 51 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'ListLocalServer' test.out

#- 52 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'DyyGDBeR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteLocalServer' test.out

#- 53 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'Ia7WHRww' \
    > test.out 2>&1
eval_tap $? 53 'GetServer' test.out

#- 54 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'wrEiofRW' \
    > test.out 2>&1
eval_tap $? 54 'DeleteServer' test.out

#- 55 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'ExzQB2M2' \
    --withServer 'true' \
    --count '59' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 55 'ListSession' test.out

#- 56 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'qRkgPFCJ' \
    > test.out 2>&1
eval_tap $? 56 'CountSession' test.out

#- 57 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'l0dLYT9T' \
    > test.out 2>&1
eval_tap $? 57 'DeleteSession' test.out

#- 58 RunGhostCleanerRequestHandler
samples/cli/sample-apps Dsmc runGhostCleanerRequestHandler \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'RunGhostCleanerRequestHandler' test.out

#- 59 RunZombieCleanerRequestHandler
samples/cli/sample-apps Dsmc runZombieCleanerRequestHandler \
    --namespace $AB_NAMESPACE \
    --body '{"JobCount": 75, "Region": "7b4jnrKb", "TimeoutSecond": 15, "ZombieCount": 15}' \
    > test.out 2>&1
eval_tap $? 59 'RunZombieCleanerRequestHandler' test.out

#- 60 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "wvwIXUmt", "repository": "NXJmvZt2"}' \
    > test.out 2>&1
eval_tap $? 60 'CreateRepository' test.out

#- 61 ExportConfigV1
samples/cli/sample-apps Dsmc exportConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'ExportConfigV1' test.out

#- 62 ImportConfigV1
samples/cli/sample-apps Dsmc importConfigV1 \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 62 'ImportConfigV1' test.out

#- 63 GetAllDeploymentClient
samples/cli/sample-apps Dsmc getAllDeploymentClient \
    --namespace $AB_NAMESPACE \
    --name 'O92X6zvd' \
    --count '32' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 63 'GetAllDeploymentClient' test.out

#- 64 GetDeploymentClient
samples/cli/sample-apps Dsmc getDeploymentClient \
    --deployment 'm5OQwlrt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetDeploymentClient' test.out

#- 65 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment 'LhsDNfjb' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 77, "buffer_percent": 98, "configuration": "m6aUzb9q", "enable_region_overrides": false, "extendable_session": true, "game_version": "b756hbke", "max_count": 13, "min_count": 77, "overrides": {"Dp5YOfKd": {"buffer_count": 28, "buffer_percent": 38, "configuration": "RGzCNind", "enable_region_overrides": true, "extendable_session": false, "game_version": "oRQmnICf", "max_count": 26, "min_count": 72, "name": "ex4lcCrp", "region_overrides": {"icZdgCSw": {"buffer_count": 56, "buffer_percent": 28, "max_count": 9, "min_count": 2, "name": "OraZxErN", "unlimited": true, "use_buffer_percent": false}, "AKG3HElD": {"buffer_count": 29, "buffer_percent": 69, "max_count": 7, "min_count": 97, "name": "xvmhaMp4", "unlimited": false, "use_buffer_percent": false}, "6a1A8xhL": {"buffer_count": 96, "buffer_percent": 52, "max_count": 74, "min_count": 91, "name": "v2wpN4f2", "unlimited": true, "use_buffer_percent": true}}, "regions": ["ntPcZf5B", "LkRun5IK", "aQrIi7QJ"], "session_timeout": 47, "unlimited": false, "use_buffer_percent": true}, "aEFSctqx": {"buffer_count": 35, "buffer_percent": 34, "configuration": "MrOl0Xyx", "enable_region_overrides": true, "extendable_session": true, "game_version": "ArGIzdZV", "max_count": 78, "min_count": 54, "name": "6eO9cmsy", "region_overrides": {"LLhgnqb0": {"buffer_count": 46, "buffer_percent": 80, "max_count": 78, "min_count": 23, "name": "v21KdyB6", "unlimited": true, "use_buffer_percent": true}, "aFOZUKtR": {"buffer_count": 23, "buffer_percent": 99, "max_count": 30, "min_count": 100, "name": "UFc0dClX", "unlimited": true, "use_buffer_percent": false}, "jEghl7R4": {"buffer_count": 82, "buffer_percent": 13, "max_count": 18, "min_count": 83, "name": "2Mh3W8zu", "unlimited": true, "use_buffer_percent": true}}, "regions": ["fdfPwf1f", "9v4nvDmM", "37TwNqri"], "session_timeout": 50, "unlimited": false, "use_buffer_percent": false}, "OH7qQqUj": {"buffer_count": 19, "buffer_percent": 54, "configuration": "YrLlHDiw", "enable_region_overrides": true, "extendable_session": true, "game_version": "GxZ8Coqo", "max_count": 9, "min_count": 29, "name": "1iIckr1O", "region_overrides": {"HHOdCsuX": {"buffer_count": 11, "buffer_percent": 2, "max_count": 38, "min_count": 16, "name": "uO2Empsb", "unlimited": true, "use_buffer_percent": false}, "ucYKZI4s": {"buffer_count": 1, "buffer_percent": 39, "max_count": 70, "min_count": 48, "name": "z2KrQMog", "unlimited": true, "use_buffer_percent": false}, "nrRROuJT": {"buffer_count": 72, "buffer_percent": 80, "max_count": 26, "min_count": 53, "name": "beN900VB", "unlimited": true, "use_buffer_percent": false}}, "regions": ["hiwY3iwM", "n1rmBCIn", "Jgy1YkA1"], "session_timeout": 38, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"rhXEaoOT": {"buffer_count": 75, "buffer_percent": 84, "max_count": 12, "min_count": 80, "name": "TvBcBoQ8", "unlimited": true, "use_buffer_percent": false}, "XLpOtOKp": {"buffer_count": 96, "buffer_percent": 45, "max_count": 1, "min_count": 62, "name": "G18xaCXK", "unlimited": true, "use_buffer_percent": false}, "E0bc9qPh": {"buffer_count": 82, "buffer_percent": 75, "max_count": 22, "min_count": 72, "name": "suJYDAkS", "unlimited": false, "use_buffer_percent": false}}, "regions": ["2rUFzNFe", "ciY2ntXm", "TUXuTRom"], "session_timeout": 66, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 65 'CreateDeploymentClient' test.out

#- 66 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'kHdfbbSd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'DeleteDeploymentClient' test.out

#- 67 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '61' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 67 'GetAllPodConfigClient' test.out

#- 68 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'sa709BZ2' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 40, "mem_limit": 22, "params": "lJTfc8si"}' \
    > test.out 2>&1
eval_tap $? 68 'CreatePodConfigClient' test.out

#- 69 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'xTKsrgOm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'DeletePodConfigClient' test.out

#- 70 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '38' \
    --offset '87' \
    --q 'Kw99BZKg' \
    --sortBy 'createdAt' \
    --sortDirection 'asc' \
    > test.out 2>&1
eval_tap $? 70 'ListImagesClient' test.out

#- 71 ImageLimitClient
samples/cli/sample-apps Dsmc imageLimitClient \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'ImageLimitClient' test.out

#- 72 ImageDetailClient
samples/cli/sample-apps Dsmc imageDetailClient \
    --namespace $AB_NAMESPACE \
    --version 'MVCOTAMv' \
    > test.out 2>&1
eval_tap $? 72 'ImageDetailClient' test.out

#- 73 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'AcMqEJvE' \
    --count '70' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 73 'ListServerClient' test.out

#- 74 CountServerDetailedClient
samples/cli/sample-apps Dsmc countServerDetailedClient \
    --namespace $AB_NAMESPACE \
    --region 'JGW3JTL4' \
    > test.out 2>&1
eval_tap $? 74 'CountServerDetailedClient' test.out

#- 75 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "UJSoJJ21"}' \
    > test.out 2>&1
eval_tap $? 75 'ServerHeartbeat' test.out

#- 76 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "TbJoeCPH"}' \
    > test.out 2>&1
eval_tap $? 76 'DeregisterLocalServer' test.out

#- 77 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "Sqdnx2xK", "ip": "oWIBqyQ3", "name": "5beyZMTl", "port": 63}' \
    > test.out 2>&1
eval_tap $? 77 'RegisterLocalServer' test.out

#- 78 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "pUSdAoWN", "pod_name": "k4pxOLxL"}' \
    > test.out 2>&1
eval_tap $? 78 'RegisterServer' test.out

#- 79 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "iUh9VvUL"}' \
    > test.out 2>&1
eval_tap $? 79 'ShutdownServer' test.out

#- 80 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'CdnDylbA' \
    > test.out 2>&1
eval_tap $? 80 'GetServerSessionTimeout' test.out

#- 81 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'tvVFwBt0' \
    > test.out 2>&1
eval_tap $? 81 'GetServerSession' test.out

#- 82 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "pLwgZMPL", "configuration": "X1Xsk8tC", "deployment": "fcxOTvro", "game_mode": "lpGS82Bl", "matching_allies": [{"matching_parties": [{"party_attributes": {"YJbnZS7f": {}, "vw0J8OdH": {}, "ymI1PApJ": {}}, "party_id": "qcZA8rCI", "party_members": [{"user_id": "WPX03yPD"}, {"user_id": "QDAZy05X"}, {"user_id": "MmiIO5qN"}]}, {"party_attributes": {"0AoxdynF": {}, "ZMOIXhlD": {}, "oxg6Akvk": {}}, "party_id": "2bJupofi", "party_members": [{"user_id": "NfIIhdMf"}, {"user_id": "Uy0JBMJL"}, {"user_id": "l9PqWghI"}]}, {"party_attributes": {"ZACAAlEP": {}, "G4xNpmJ8": {}, "5r11axPr": {}}, "party_id": "Pwb2QlYK", "party_members": [{"user_id": "V0r13xCf"}, {"user_id": "sxNnLKCU"}, {"user_id": "F0r5sJZ0"}]}]}, {"matching_parties": [{"party_attributes": {"T2egeIxr": {}, "7kgbTzjB": {}, "6hUE0H2z": {}}, "party_id": "DjJI3NbD", "party_members": [{"user_id": "zNB0KMRZ"}, {"user_id": "UCTyN7uX"}, {"user_id": "jkB1Favx"}]}, {"party_attributes": {"3jGMEIyM": {}, "nckVONRV": {}, "8qUSqsy3": {}}, "party_id": "DV2OH638", "party_members": [{"user_id": "1s3k9gBW"}, {"user_id": "y37M26iJ"}, {"user_id": "iVbpn4K3"}]}, {"party_attributes": {"9YQ78qnR": {}, "irrFI1PI": {}, "YrKpWWTz": {}}, "party_id": "xKtOI5Vd", "party_members": [{"user_id": "pvpgOikd"}, {"user_id": "07pwN59E"}, {"user_id": "qQX61xxl"}]}]}, {"matching_parties": [{"party_attributes": {"aJpUYMdQ": {}, "f2Ajmcnj": {}, "nbnudt04": {}}, "party_id": "wFGjq8z7", "party_members": [{"user_id": "G9BkTlMD"}, {"user_id": "07Hp03sF"}, {"user_id": "IFjb787q"}]}, {"party_attributes": {"pJ3sOHVS": {}, "Af8gKQje": {}, "ATixKh9v": {}}, "party_id": "b9UyiwdY", "party_members": [{"user_id": "NVJNnLN6"}, {"user_id": "PrTsyeai"}, {"user_id": "5J3MSxJ0"}]}, {"party_attributes": {"9Plcase9": {}, "crPmES2e": {}, "phjPUPUs": {}}, "party_id": "YRL6iz28", "party_members": [{"user_id": "xgGKVEbB"}, {"user_id": "RoouRpaU"}, {"user_id": "JnQ6HAMv"}]}]}], "namespace": "e1q9Gs9u", "notification_payload": {}, "pod_name": "2qhSDocR", "region": "oPwqwmdI", "session_id": "bgsn934P"}' \
    > test.out 2>&1
eval_tap $? 82 'CreateSession' test.out

#- 83 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"game_mode": "D8Yej1cU", "matching_allies": [{"matching_parties": [{"party_attributes": {"WR8Sg083": {}, "gUJ7tTYc": {}, "otCgXzIH": {}}, "party_id": "Edb5Ef6x", "party_members": [{"user_id": "FgJg5XUq"}, {"user_id": "BhD963as"}, {"user_id": "wEhUidN9"}]}, {"party_attributes": {"OICbgxlT": {}, "8MprLSEQ": {}, "S7CmxBIQ": {}}, "party_id": "XpswlJB1", "party_members": [{"user_id": "4c3psyQ6"}, {"user_id": "7KI0Ii5e"}, {"user_id": "cQ44ZrxD"}]}, {"party_attributes": {"5Z2JNESm": {}, "LlrWnZ6f": {}, "01IAWbiZ": {}}, "party_id": "RHNL8wWR", "party_members": [{"user_id": "97Xu9AZe"}, {"user_id": "7WxATdQK"}, {"user_id": "75uWLzkr"}]}]}, {"matching_parties": [{"party_attributes": {"crjKETNV": {}, "EEYvAf49": {}, "voc3lgLI": {}}, "party_id": "JjrHAa5j", "party_members": [{"user_id": "reKYu50u"}, {"user_id": "yaaCn8tc"}, {"user_id": "xBeb2CGO"}]}, {"party_attributes": {"I3kpfiKp": {}, "6fDT9xVl": {}, "tVJSXuhE": {}}, "party_id": "eiDSCZhV", "party_members": [{"user_id": "meV93cFi"}, {"user_id": "OEdb1KfH"}, {"user_id": "2cHiXkvo"}]}, {"party_attributes": {"jhzbZHqu": {}, "33XnH82p": {}, "GQQcbJ54": {}}, "party_id": "4xU3hAYk", "party_members": [{"user_id": "hS6LNAnp"}, {"user_id": "JQK9lOiy"}, {"user_id": "hPDl4pxm"}]}]}, {"matching_parties": [{"party_attributes": {"F0LXMNmL": {}, "WOQQqORe": {}, "zFu1kc3n": {}}, "party_id": "9o7gH7a5", "party_members": [{"user_id": "IONrgdI4"}, {"user_id": "R6TXROc3"}, {"user_id": "JDzClKia"}]}, {"party_attributes": {"muvI24KK": {}, "Undu9K0a": {}, "7WrM9bLT": {}}, "party_id": "SKo09nMJ", "party_members": [{"user_id": "CJjDTEAp"}, {"user_id": "1YwHnHCd"}, {"user_id": "jdfUmfvr"}]}, {"party_attributes": {"7qBfo3hv": {}, "IcE6Dxlk": {}, "8BqRx0ui": {}}, "party_id": "QCZLbxlL", "party_members": [{"user_id": "z1yKNc0i"}, {"user_id": "gcgLAmMG"}, {"user_id": "9Woukavn"}]}]}], "namespace": "oqdFMkKW", "notification_payload": {}, "session_id": "EkVGMhJt"}' \
    > test.out 2>&1
eval_tap $? 83 'ClaimServer' test.out

#- 84 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'xfNmaBOB' \
    > test.out 2>&1
eval_tap $? 84 'GetSession' test.out

#- 85 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID '7DZig0Ly' \
    > test.out 2>&1
eval_tap $? 85 'CancelSession' test.out

#- 86 GetDefaultProvider
samples/cli/sample-apps Dsmc getDefaultProvider \
    > test.out 2>&1
eval_tap $? 86 'GetDefaultProvider' test.out

#- 87 ListProviders
samples/cli/sample-apps Dsmc listProviders \
    > test.out 2>&1
eval_tap $? 87 'ListProviders' test.out

#- 88 ListProvidersByRegion
samples/cli/sample-apps Dsmc listProvidersByRegion \
    --region '8OykGbuo' \
    > test.out 2>&1
eval_tap $? 88 'ListProvidersByRegion' test.out

#- 89 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 89 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE