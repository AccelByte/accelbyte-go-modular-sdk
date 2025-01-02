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
    --body '{"artifactPath": "hcfWGyzT", "coreDumpEnabled": false, "image": "h4KcGGJ2", "imageReplicationsMap": {"OUqWOIgl": {"failure_code": "a7Bzl9Wg", "region": "RBqgTfnV", "status": "ofZSfpVN", "uri": "uPytCuv9"}, "9OU7W01Q": {"failure_code": "144JTTAb", "region": "7gBjxfoT", "status": "h8MjC5fe", "uri": "ohRb8BiP"}, "7DrpFZtQ": {"failure_code": "T3vuVdEe", "region": "k4XLR6AY", "status": "0pb7y04c", "uri": "V1mvOjYY"}}, "namespace": "PEEBr2Cd", "patchVersion": "1Kxl2B0s", "persistent": false, "ulimitFileSize": 69, "version": "el6WFQDz"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "bAaoqH0u", "coreDumpEnabled": false, "dockerPath": "zntPG1ew", "image": "Txelits9", "imageSize": 20, "namespace": "tIB9Phr6", "persistent": false, "ulimitFileSize": 48, "version": "zOyPZt6l"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "N5I5CLEQ", "coreDumpEnabled": false, "dockerPath": "kSuVZNav", "image": "d5v2ysmb", "imageSize": 47, "namespace": "KgvLZETc", "patchVersion": "ryWlkqRW", "persistent": false, "ulimitFileSize": 61, "uploaderFlag": "z2UNb1U7", "version": "nxvOH2lJ"}' \
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
    --body '{"auto_deletion": true, "ghost_worker": true, "manual_buffer_override": true, "zombie_worker": false}' \
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
    --body '{"claim_timeout": 11, "creation_timeout": 79, "default_version": "FEYncleB", "port": 19, "ports": {"M47XYS2O": 13, "7bLlVoBL": 87, "1JINJ3bR": 41}, "protocol": "8lRyv6AH", "providers": ["4VqRZT2G", "BZjhvRRv", "8ITyKINV"], "session_timeout": 51, "unreachable_timeout": 30}' \
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
    --body '{"claim_timeout": 11, "creation_timeout": 25, "default_version": "b7brp5gO", "port": 64, "protocol": "7sXrgjg1", "providers": ["ost2GBnR", "DI2kT4z9", "y2z5D5Wm"], "session_timeout": 48, "unreachable_timeout": 41}' \
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
    --name 'aewItXBi' \
    --count '26' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 16 'GetAllDeployment' test.out

#- 17 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'ydDL7abK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetDeployment' test.out

#- 18 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'uPiqjeSj' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 24, "buffer_percent": 60, "configuration": "NKInf4gd", "enable_region_overrides": false, "extendable_session": true, "game_version": "ilU66Cih", "max_count": 73, "min_count": 3, "overrides": {"05o45IQJ": {"buffer_count": 25, "buffer_percent": 28, "configuration": "EX5WGRqb", "enable_region_overrides": false, "extendable_session": false, "game_version": "TwCrv2YA", "max_count": 53, "min_count": 76, "name": "YoU3CvUT", "region_overrides": {"pkO8BVwv": {"buffer_count": 40, "buffer_percent": 65, "max_count": 95, "min_count": 54, "name": "83uBG32w", "unlimited": false, "use_buffer_percent": true}, "sXbggv1n": {"buffer_count": 29, "buffer_percent": 26, "max_count": 25, "min_count": 23, "name": "KIhxoNPU", "unlimited": true, "use_buffer_percent": false}, "82l41lkN": {"buffer_count": 48, "buffer_percent": 96, "max_count": 47, "min_count": 90, "name": "j7byUUHv", "unlimited": true, "use_buffer_percent": false}}, "regions": ["s1VCb91m", "JoMdHHGE", "pF2unOlI"], "session_timeout": 30, "unlimited": true, "use_buffer_percent": false}, "721jpknC": {"buffer_count": 22, "buffer_percent": 10, "configuration": "rp8xnBa0", "enable_region_overrides": false, "extendable_session": true, "game_version": "mZT0ChSm", "max_count": 27, "min_count": 61, "name": "xZRktW7i", "region_overrides": {"YivDBBYa": {"buffer_count": 16, "buffer_percent": 63, "max_count": 56, "min_count": 48, "name": "THcqVdJE", "unlimited": true, "use_buffer_percent": false}, "qWujnODu": {"buffer_count": 98, "buffer_percent": 38, "max_count": 93, "min_count": 95, "name": "M5owScHj", "unlimited": false, "use_buffer_percent": true}, "QJ3mQKzk": {"buffer_count": 53, "buffer_percent": 93, "max_count": 8, "min_count": 71, "name": "tovcOVW1", "unlimited": false, "use_buffer_percent": true}}, "regions": ["GGkkXSi3", "j18I2Psw", "gZQUw5Xn"], "session_timeout": 19, "unlimited": true, "use_buffer_percent": true}, "2NEcryU7": {"buffer_count": 60, "buffer_percent": 15, "configuration": "r69mmQh6", "enable_region_overrides": false, "extendable_session": true, "game_version": "akPBGs1E", "max_count": 91, "min_count": 100, "name": "dh8fadCn", "region_overrides": {"Uf2McBgO": {"buffer_count": 59, "buffer_percent": 7, "max_count": 9, "min_count": 16, "name": "ly7J8dUk", "unlimited": false, "use_buffer_percent": true}, "uBuqKsgB": {"buffer_count": 78, "buffer_percent": 91, "max_count": 41, "min_count": 33, "name": "oCOM2vbR", "unlimited": false, "use_buffer_percent": false}, "pWahkP3W": {"buffer_count": 11, "buffer_percent": 17, "max_count": 60, "min_count": 82, "name": "lft3WQln", "unlimited": true, "use_buffer_percent": true}}, "regions": ["UVRFH9dY", "I1rEyJIU", "HtJmIAS6"], "session_timeout": 52, "unlimited": true, "use_buffer_percent": false}}, "region_overrides": {"WSq7E11T": {"buffer_count": 70, "buffer_percent": 59, "max_count": 80, "min_count": 87, "name": "AJ1sOAnW", "unlimited": false, "use_buffer_percent": true}, "MoX3PbjN": {"buffer_count": 9, "buffer_percent": 97, "max_count": 42, "min_count": 38, "name": "aI6ptAIK", "unlimited": false, "use_buffer_percent": true}, "RTGYZXZf": {"buffer_count": 77, "buffer_percent": 49, "max_count": 82, "min_count": 42, "name": "25YdIKT7", "unlimited": true, "use_buffer_percent": false}}, "regions": ["th0RTB8i", "fu25A8sa", "LDkmTEcZ"], "session_timeout": 3, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 18 'CreateDeployment' test.out

#- 19 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'KR5fbrJ8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'DeleteDeployment' test.out

#- 20 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'aAyoGqHS' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 44, "buffer_percent": 51, "configuration": "fErpsbH2", "enable_region_overrides": true, "extendable_session": false, "game_version": "nO1I6rIb", "max_count": 17, "min_count": 21, "regions": ["RNFoykPt", "e9lPOFZk", "KaXNdgfn"], "session_timeout": 37, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateDeployment' test.out

#- 21 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'otj1fDxr' \
    --namespace $AB_NAMESPACE \
    --region '72PdCzmX' \
    --body '{"buffer_count": 34, "buffer_percent": 34, "max_count": 13, "min_count": 36, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'CreateRootRegionOverride' test.out

#- 22 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'omQax4vV' \
    --namespace $AB_NAMESPACE \
    --region 'LcbMtbQj' \
    > test.out 2>&1
eval_tap $? 22 'DeleteRootRegionOverride' test.out

#- 23 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'TaiuTPOU' \
    --namespace $AB_NAMESPACE \
    --region '7YeC0toD' \
    --body '{"buffer_count": 45, "buffer_percent": 47, "max_count": 87, "min_count": 30, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateRootRegionOverride' test.out

#- 24 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'ziHmiAS1' \
    --namespace $AB_NAMESPACE \
    --version 'XPGhMzWt' \
    --body '{"buffer_count": 45, "buffer_percent": 45, "configuration": "Ms6mmcrz", "enable_region_overrides": false, "extendable_session": true, "game_version": "bc0vXhEn", "max_count": 84, "min_count": 55, "region_overrides": {"tCMHQRD7": {"buffer_count": 9, "buffer_percent": 55, "max_count": 31, "min_count": 97, "name": "zcv6M0jA", "unlimited": true, "use_buffer_percent": true}, "iV8vQ94P": {"buffer_count": 94, "buffer_percent": 90, "max_count": 23, "min_count": 97, "name": "uMwonRoC", "unlimited": false, "use_buffer_percent": true}, "K4duXku2": {"buffer_count": 97, "buffer_percent": 69, "max_count": 39, "min_count": 10, "name": "a26TACXG", "unlimited": true, "use_buffer_percent": true}}, "regions": ["zYYet6mT", "qE4Lp2fj", "kmSBfB40"], "session_timeout": 13, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 24 'CreateDeploymentOverride' test.out

#- 25 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'Qi8CsIon' \
    --namespace $AB_NAMESPACE \
    --version 'xHiTI50G' \
    > test.out 2>&1
eval_tap $? 25 'DeleteDeploymentOverride' test.out

#- 26 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'WFvlgPDO' \
    --namespace $AB_NAMESPACE \
    --version 'es6J4nCl' \
    --body '{"buffer_count": 48, "buffer_percent": 59, "configuration": "sKxZdqCv", "enable_region_overrides": true, "game_version": "zvrCsmHK", "max_count": 21, "min_count": 20, "regions": ["p2ulEdXg", "drqhJiSv", "eFGmVB2z"], "session_timeout": 75, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateDeploymentOverride' test.out

#- 27 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'Mp0RNSU8' \
    --namespace $AB_NAMESPACE \
    --region 'bspoKMGo' \
    --version '01NAfZUf' \
    --body '{"buffer_count": 28, "buffer_percent": 6, "max_count": 88, "min_count": 76, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 27 'CreateOverrideRegionOverride' test.out

#- 28 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'gqlqH0Nk' \
    --namespace $AB_NAMESPACE \
    --region 'EmhlRe6F' \
    --version 'JHhJm7dj' \
    > test.out 2>&1
eval_tap $? 28 'DeleteOverrideRegionOverride' test.out

#- 29 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'r8l9cOMd' \
    --namespace $AB_NAMESPACE \
    --region 'p6t8RnyS' \
    --version 'oK7kUt53' \
    --body '{"buffer_count": 90, "buffer_percent": 10, "max_count": 24, "min_count": 75, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateOverrideRegionOverride' test.out

#- 30 DeleteCreatingServerCountQueue
samples/cli/sample-apps Dsmc deleteCreatingServerCountQueue \
    --deployment 'PvzNDe7l' \
    --namespace $AB_NAMESPACE \
    --version 'kIpeFeH0' \
    > test.out 2>&1
eval_tap $? 30 'DeleteCreatingServerCountQueue' test.out

#- 31 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '45' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 31 'GetAllPodConfig' test.out

#- 32 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'Eg1ttTVe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'GetPodConfig' test.out

#- 33 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'ghJVqhlx' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 5, "mem_limit": 16, "params": "diEjqCD6"}' \
    > test.out 2>&1
eval_tap $? 33 'CreatePodConfig' test.out

#- 34 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'R1vKZir2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePodConfig' test.out

#- 35 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'fci8tu9Q' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 53, "mem_limit": 16, "name": "ganeaiMm", "params": "gSOuo7e1"}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePodConfig' test.out

#- 36 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'meS9bVq3' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 63}' \
    > test.out 2>&1
eval_tap $? 36 'AddPort' test.out

#- 37 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'z0cVCUNU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'DeletePort' test.out

#- 38 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'a98ijcth' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "yIXK4h3I", "port": 41}' \
    > test.out 2>&1
eval_tap $? 38 'UpdatePort' test.out

#- 39 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'BqR69KII' \
    --sortBy 'version' \
    --sortDirection 'asc' \
    --count '91' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 39 'ListImages' test.out

#- 40 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'YyyNiR3Y' \
    --version 'nupCW8B6' \
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
    --imageURI 'uhtvYxf6' \
    --version 'sWP3TKSV' \
    --versionPatch 'CT0Pm1Xp' \
    > test.out 2>&1
eval_tap $? 42 'DeleteImagePatch' test.out

#- 43 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'piMOMtbs' \
    > test.out 2>&1
eval_tap $? 43 'GetImageDetail' test.out

#- 44 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'rm21HIjA' \
    > test.out 2>&1
eval_tap $? 44 'GetImagePatches' test.out

#- 45 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'XnF6MbZz' \
    --versionPatch '3NNmm0mo' \
    > test.out 2>&1
eval_tap $? 45 'GetImagePatchDetail' test.out

#- 46 AddBuffer
samples/cli/sample-apps Dsmc addBuffer \
    --namespace $AB_NAMESPACE \
    --body '{"AllocCount": 52, "DeploymentName": "bdv9xjdg", "JobCount": 97, "JobPriority": 96, "OverrideVersion": "tUQxqd1x", "Region": "KR65i6U3"}' \
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
    --region 'M4Aweizi' \
    --count '33' \
    --offset '34' \
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
    --region 'T4UrB0kj' \
    > test.out 2>&1
eval_tap $? 50 'CountServerDetailed' test.out

#- 51 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'ListLocalServer' test.out

#- 52 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'oRggZDul' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteLocalServer' test.out

#- 53 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'KJFyCKJT' \
    > test.out 2>&1
eval_tap $? 53 'GetServer' test.out

#- 54 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'MrskrPQi' \
    > test.out 2>&1
eval_tap $? 54 'DeleteServer' test.out

#- 55 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'YVCqMwjm' \
    --withServer 'false' \
    --count '53' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 55 'ListSession' test.out

#- 56 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'IsIFf5D6' \
    > test.out 2>&1
eval_tap $? 56 'CountSession' test.out

#- 57 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 't9qwJWPi' \
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
    --body '{"JobCount": 0, "Region": "VkLoQqtT", "TimeoutSecond": 51, "ZombieCount": 10}' \
    > test.out 2>&1
eval_tap $? 59 'RunZombieCleanerRequestHandler' test.out

#- 60 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "VnP4ufdp", "repository": "HDZIs1s9"}' \
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
    --name 'Rst2Oswr' \
    --count '82' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 63 'GetAllDeploymentClient' test.out

#- 64 GetDeploymentClient
samples/cli/sample-apps Dsmc getDeploymentClient \
    --deployment 'L5KYBIU6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetDeploymentClient' test.out

#- 65 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment 'y0FDnJVp' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 100, "buffer_percent": 25, "configuration": "69zPiRhU", "enable_region_overrides": true, "extendable_session": true, "game_version": "z8UIzh8V", "max_count": 94, "min_count": 3, "overrides": {"Y12m69n1": {"buffer_count": 93, "buffer_percent": 71, "configuration": "ffBfCT94", "enable_region_overrides": true, "extendable_session": false, "game_version": "STZjCphP", "max_count": 11, "min_count": 6, "name": "H7ShJBkM", "region_overrides": {"57H32VX8": {"buffer_count": 2, "buffer_percent": 64, "max_count": 31, "min_count": 71, "name": "gyYTaVKa", "unlimited": false, "use_buffer_percent": true}, "Q77vQS2U": {"buffer_count": 7, "buffer_percent": 67, "max_count": 52, "min_count": 17, "name": "CtFFubaf", "unlimited": true, "use_buffer_percent": false}, "m6eSEAdF": {"buffer_count": 71, "buffer_percent": 25, "max_count": 6, "min_count": 15, "name": "crI91Jr6", "unlimited": true, "use_buffer_percent": true}}, "regions": ["DaCmfd8o", "ue0YYNie", "lWPL6Fhl"], "session_timeout": 89, "unlimited": true, "use_buffer_percent": false}, "GEeDH8T4": {"buffer_count": 19, "buffer_percent": 4, "configuration": "T7Ch0fM7", "enable_region_overrides": false, "extendable_session": false, "game_version": "khkYU54I", "max_count": 20, "min_count": 26, "name": "5zalXk0x", "region_overrides": {"Hss7IXVh": {"buffer_count": 24, "buffer_percent": 81, "max_count": 78, "min_count": 31, "name": "48arbQBO", "unlimited": true, "use_buffer_percent": false}, "Zsgb4AXf": {"buffer_count": 47, "buffer_percent": 22, "max_count": 87, "min_count": 51, "name": "zT5fBy2i", "unlimited": true, "use_buffer_percent": false}, "GQmYSGT1": {"buffer_count": 6, "buffer_percent": 79, "max_count": 58, "min_count": 41, "name": "XXZkJoyL", "unlimited": false, "use_buffer_percent": false}}, "regions": ["vk7Usuz9", "WYbGAYWH", "3MNOMv42"], "session_timeout": 61, "unlimited": false, "use_buffer_percent": true}, "NfImnnVC": {"buffer_count": 73, "buffer_percent": 44, "configuration": "ZDMeN1d4", "enable_region_overrides": false, "extendable_session": false, "game_version": "Ybr2FZS7", "max_count": 56, "min_count": 51, "name": "y6L5rcZt", "region_overrides": {"VgYoz7uT": {"buffer_count": 100, "buffer_percent": 42, "max_count": 70, "min_count": 88, "name": "5V9i2C2l", "unlimited": false, "use_buffer_percent": true}, "oDsZHIqe": {"buffer_count": 80, "buffer_percent": 45, "max_count": 38, "min_count": 72, "name": "OSKRk4Xk", "unlimited": false, "use_buffer_percent": false}, "dDgqVHXc": {"buffer_count": 80, "buffer_percent": 62, "max_count": 99, "min_count": 30, "name": "Zqj7j9X3", "unlimited": false, "use_buffer_percent": true}}, "regions": ["EoGD289B", "FYaWUYDC", "LBB2Wg60"], "session_timeout": 35, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"V9WohWYi": {"buffer_count": 73, "buffer_percent": 46, "max_count": 54, "min_count": 43, "name": "9opoMMBQ", "unlimited": true, "use_buffer_percent": false}, "3hjBV2Ia": {"buffer_count": 31, "buffer_percent": 41, "max_count": 45, "min_count": 52, "name": "ORrcYVcs", "unlimited": false, "use_buffer_percent": false}, "F6BdiSs8": {"buffer_count": 38, "buffer_percent": 35, "max_count": 65, "min_count": 33, "name": "bov4dDEw", "unlimited": true, "use_buffer_percent": true}}, "regions": ["Rls1CD9t", "AdvOJ1g2", "ixVylHlx"], "session_timeout": 76, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 65 'CreateDeploymentClient' test.out

#- 66 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'e8BBvbzF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'DeleteDeploymentClient' test.out

#- 67 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '87' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 67 'GetAllPodConfigClient' test.out

#- 68 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'xF6AMW2L' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 24, "mem_limit": 79, "params": "GEnrYVbq"}' \
    > test.out 2>&1
eval_tap $? 68 'CreatePodConfigClient' test.out

#- 69 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'K2oc7WTc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'DeletePodConfigClient' test.out

#- 70 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '48' \
    --offset '30' \
    --q 'gkHAz3qX' \
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
    --version '1mj2QWZ5' \
    > test.out 2>&1
eval_tap $? 72 'ImageDetailClient' test.out

#- 73 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region '9IZPMR8h' \
    --count '12' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 73 'ListServerClient' test.out

#- 74 CountServerDetailedClient
samples/cli/sample-apps Dsmc countServerDetailedClient \
    --namespace $AB_NAMESPACE \
    --region 'gUzMjXJO' \
    > test.out 2>&1
eval_tap $? 74 'CountServerDetailedClient' test.out

#- 75 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "LHUJyas3"}' \
    > test.out 2>&1
eval_tap $? 75 'ServerHeartbeat' test.out

#- 76 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "6UlW6ms3"}' \
    > test.out 2>&1
eval_tap $? 76 'DeregisterLocalServer' test.out

#- 77 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "g1YNvsCr", "ip": "f86d7BIp", "name": "gZUMnGHT", "port": 99}' \
    > test.out 2>&1
eval_tap $? 77 'RegisterLocalServer' test.out

#- 78 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "p1ZTXAdK", "pod_name": "lvKyvtZY"}' \
    > test.out 2>&1
eval_tap $? 78 'RegisterServer' test.out

#- 79 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "6azUKmxw"}' \
    > test.out 2>&1
eval_tap $? 79 'ShutdownServer' test.out

#- 80 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'iTMrIJRl' \
    > test.out 2>&1
eval_tap $? 80 'GetServerSessionTimeout' test.out

#- 81 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName '7X7lgrIe' \
    > test.out 2>&1
eval_tap $? 81 'GetServerSession' test.out

#- 82 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "CEcdAVhl", "configuration": "59T0RpKw", "deployment": "pMKSKmKl", "game_mode": "YUwyTcc1", "matching_allies": [{"matching_parties": [{"party_attributes": {"A0bqodt5": {}, "hQif9mrw": {}, "6hr4Kzpr": {}}, "party_id": "0pbjZWAE", "party_members": [{"user_id": "uzXTwSjZ"}, {"user_id": "YwWp9Vp3"}, {"user_id": "pNbI7XWJ"}]}, {"party_attributes": {"w39jb6wk": {}, "TONQyxym": {}, "EKXh8mTv": {}}, "party_id": "bVjoclu2", "party_members": [{"user_id": "M2gpA7ce"}, {"user_id": "rG6dUHkk"}, {"user_id": "JqhXQTHY"}]}, {"party_attributes": {"41e68kZh": {}, "E5FW9aXI": {}, "dGL4ecFO": {}}, "party_id": "fvKTn77O", "party_members": [{"user_id": "wR9ojdbh"}, {"user_id": "lFFIYieo"}, {"user_id": "mDxLDHEj"}]}]}, {"matching_parties": [{"party_attributes": {"LxZDoNBN": {}, "t0X6yMOg": {}, "bUAP8oht": {}}, "party_id": "hJ3xykjB", "party_members": [{"user_id": "mOJRbEgl"}, {"user_id": "juxhBdnu"}, {"user_id": "FttziEbu"}]}, {"party_attributes": {"adH0Mul7": {}, "YEXUBE8r": {}, "T4h4yidO": {}}, "party_id": "8yf0RV7w", "party_members": [{"user_id": "wGwm53qJ"}, {"user_id": "hlO5QeO1"}, {"user_id": "jVAiGVJe"}]}, {"party_attributes": {"fPTSAYJE": {}, "yeTtJjKD": {}, "PfWRRTCO": {}}, "party_id": "QweTswPH", "party_members": [{"user_id": "kxI4veKc"}, {"user_id": "cl7a4l5J"}, {"user_id": "8dVlvgof"}]}]}, {"matching_parties": [{"party_attributes": {"J6XGMDZs": {}, "DyGKlywN": {}, "eOT7oD5T": {}}, "party_id": "KJndL8AP", "party_members": [{"user_id": "l4EglzJD"}, {"user_id": "VhvCCgfb"}, {"user_id": "FbuBh3Ki"}]}, {"party_attributes": {"5Is2Oldh": {}, "7jG8o6NE": {}, "eztJzGke": {}}, "party_id": "L4oDD9T6", "party_members": [{"user_id": "GJgmotgt"}, {"user_id": "11BNfvwR"}, {"user_id": "W7GTGuv5"}]}, {"party_attributes": {"BVQGSbkW": {}, "3Zu11m2W": {}, "UcwocXSk": {}}, "party_id": "CzHU6aAR", "party_members": [{"user_id": "if9Ssrm9"}, {"user_id": "MycRfiXO"}, {"user_id": "70hRrMwj"}]}]}], "namespace": "zrAwOxwS", "notification_payload": {}, "pod_name": "ggLma5u1", "region": "3jQyVMOX", "session_id": "of2ipYyG"}' \
    > test.out 2>&1
eval_tap $? 82 'CreateSession' test.out

#- 83 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"game_mode": "0UCxJDpG", "matching_allies": [{"matching_parties": [{"party_attributes": {"g4wiBq6c": {}, "PzDBoOmy": {}, "tulnJm0T": {}}, "party_id": "pbfws0Qi", "party_members": [{"user_id": "7Y7SeZxx"}, {"user_id": "PXjJ6Lk9"}, {"user_id": "xShlNiuM"}]}, {"party_attributes": {"FlnlhQjW": {}, "lchGymYO": {}, "lykDP6v0": {}}, "party_id": "OtQg4mYW", "party_members": [{"user_id": "4qRcN4Qz"}, {"user_id": "3kmUhGGd"}, {"user_id": "xxqfWm3i"}]}, {"party_attributes": {"fUSigoIk": {}, "bWnIZ325": {}, "GrEv5wAM": {}}, "party_id": "jBUZmSn8", "party_members": [{"user_id": "JxvUhcZH"}, {"user_id": "CCuM5xK4"}, {"user_id": "9SwnpiAL"}]}]}, {"matching_parties": [{"party_attributes": {"0bCI9JKY": {}, "Y3ZE1ZOO": {}, "05lXMe8g": {}}, "party_id": "UOo2mSKy", "party_members": [{"user_id": "YwTokf3R"}, {"user_id": "84hs8ZBu"}, {"user_id": "7G6OvLsX"}]}, {"party_attributes": {"xptCpvtB": {}, "2rgvJ3k5": {}, "qopoiRp0": {}}, "party_id": "s5s4rPJ6", "party_members": [{"user_id": "3qkYUVaW"}, {"user_id": "TW9FzP4Z"}, {"user_id": "YjsZ0MQm"}]}, {"party_attributes": {"JPw59wHw": {}, "TMHyjzCQ": {}, "CmUVY2Bk": {}}, "party_id": "WUcIz4o8", "party_members": [{"user_id": "CeLZXKlZ"}, {"user_id": "JkY2JSF9"}, {"user_id": "VCYLv6c6"}]}]}, {"matching_parties": [{"party_attributes": {"my2prUc8": {}, "tXlXqyr3": {}, "9D5a8vwx": {}}, "party_id": "z4SV5lFv", "party_members": [{"user_id": "gWLPiKTv"}, {"user_id": "Oc29khW8"}, {"user_id": "sGtmvriE"}]}, {"party_attributes": {"W82EOF3a": {}, "0v2z4dGf": {}, "kLvkg2WG": {}}, "party_id": "hols8xE2", "party_members": [{"user_id": "sre8muUc"}, {"user_id": "FlKv00fo"}, {"user_id": "86EcgruH"}]}, {"party_attributes": {"46O6bacZ": {}, "jmAhYdUH": {}, "emWneJ6o": {}}, "party_id": "f448WTuy", "party_members": [{"user_id": "6XOfieX9"}, {"user_id": "d6VOeFlz"}, {"user_id": "64k8j0bn"}]}]}], "namespace": "b3J25Yp8", "notification_payload": {}, "session_id": "ursWMH7Q"}' \
    > test.out 2>&1
eval_tap $? 83 'ClaimServer' test.out

#- 84 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'ELIOxCY8' \
    > test.out 2>&1
eval_tap $? 84 'GetSession' test.out

#- 85 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID '11FK8Yk9' \
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
    --region 'vdHAoN6K' \
    > test.out 2>&1
eval_tap $? 88 'ListProvidersByRegion' test.out

#- 89 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 89 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE