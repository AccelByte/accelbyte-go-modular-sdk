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
    --body '{"artifactPath": "bkBafwOl", "coreDumpEnabled": true, "image": "FEKezSOP", "imageReplicationsMap": {"vRvM4fux": {"failure_code": "oNizPZqe", "region": "aMkxcj0V", "status": "gIAjN5JG", "uri": "5znTMR3y"}, "TNghRzMP": {"failure_code": "uIHRmvuG", "region": "4gagH3SL", "status": "RhCUz65O", "uri": "JtHQ0wqd"}, "PX4FGlbz": {"failure_code": "EPnyNFY0", "region": "3oaOVREn", "status": "Amdy71Sk", "uri": "8R3WzqKa"}}, "namespace": "3F0OyHJ9", "patchVersion": "uZSFY3VO", "persistent": false, "ulimitFileSize": 97, "version": "9L5WQLW5"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "xyPnUqti", "coreDumpEnabled": false, "dockerPath": "Od1h6RVU", "image": "8oV1Mj3x", "imageSize": 47, "namespace": "MKsqhqYL", "persistent": false, "ulimitFileSize": 20, "version": "q7ij5keA"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "vJ6ubSod", "coreDumpEnabled": true, "dockerPath": "VfKPYrr1", "image": "Mxwm3sUv", "imageSize": 95, "namespace": "cPHKpq3u", "patchVersion": "PbG0q6Jm", "persistent": false, "ulimitFileSize": 22, "uploaderFlag": "cz3uJSZA", "version": "C666bjzq"}' \
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
    --body '{"auto_deletion": true, "ghost_worker": false, "manual_buffer_override": false, "zombie_worker": false}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateWorkerConfig' test.out

#- 10 CreateWorkerConfig
samples/cli/sample-apps Dsmc createWorkerConfig \
    --namespace $AB_NAMESPACE \
    --body '{"auto_deletion": true, "ghost_worker": false, "manual_buffer_override": false, "zombie_worker": true}' \
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
    --body '{"claim_timeout": 65, "creation_timeout": 30, "default_version": "xrl4vyaV", "port": 70, "ports": {"zS9C9Nbv": 20, "g4uOzlgk": 95, "FbTMhbLg": 27}, "protocol": "fTOLZ0gS", "providers": ["viEhvcWT", "RVrvOyK4", "wx5aVpZO"], "session_timeout": 30, "unreachable_timeout": 99}' \
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
    --body '{"claim_timeout": 89, "creation_timeout": 36, "default_version": "1bGjgyhV", "port": 55, "protocol": "xqB7RxSC", "providers": ["14jQdYax", "2TzDl1xD", "IPYnzwA8"], "session_timeout": 4, "unreachable_timeout": 61}' \
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
    --name 'EJnP55XW' \
    --count '74' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 16 'GetAllDeployment' test.out

#- 17 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'KJ2iEHWC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetDeployment' test.out

#- 18 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'XU9pRykJ' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 55, "buffer_percent": 64, "configuration": "5CWRhGMu", "enable_region_overrides": true, "extendable_session": true, "game_version": "iawwAt9t", "max_count": 57, "min_count": 52, "overrides": {"Z6rJPfI7": {"buffer_count": 68, "buffer_percent": 33, "configuration": "9G4yY8pa", "enable_region_overrides": true, "extendable_session": false, "game_version": "caW3Q5ru", "max_count": 22, "min_count": 79, "name": "oTL0M5XM", "region_overrides": {"f4zioqcB": {"buffer_count": 5, "buffer_percent": 2, "max_count": 86, "min_count": 28, "name": "AjacUhHk", "unlimited": true, "use_buffer_percent": false}, "emXzGtfm": {"buffer_count": 74, "buffer_percent": 64, "max_count": 38, "min_count": 87, "name": "oG5CNzvs", "unlimited": true, "use_buffer_percent": true}, "LKNOKC7K": {"buffer_count": 61, "buffer_percent": 57, "max_count": 41, "min_count": 90, "name": "kLTAlS3p", "unlimited": true, "use_buffer_percent": true}}, "regions": ["p4OtNpk5", "ioTKJuDH", "ZhzQCNAr"], "session_timeout": 25, "unlimited": false, "use_buffer_percent": true}, "UUcLMOYt": {"buffer_count": 4, "buffer_percent": 70, "configuration": "LtKPA6Ph", "enable_region_overrides": true, "extendable_session": false, "game_version": "rlgIFn8g", "max_count": 73, "min_count": 28, "name": "hxbr4c7v", "region_overrides": {"ttBPAk5S": {"buffer_count": 9, "buffer_percent": 71, "max_count": 68, "min_count": 15, "name": "cF4iwVQo", "unlimited": true, "use_buffer_percent": false}, "3N0Zy1N7": {"buffer_count": 85, "buffer_percent": 33, "max_count": 60, "min_count": 15, "name": "HoeaPdXI", "unlimited": true, "use_buffer_percent": true}, "rpC5RYbp": {"buffer_count": 40, "buffer_percent": 71, "max_count": 2, "min_count": 5, "name": "dgiClHYB", "unlimited": false, "use_buffer_percent": false}}, "regions": ["4MRhbZuG", "MNCNm5Lu", "l6P5t0uS"], "session_timeout": 94, "unlimited": false, "use_buffer_percent": false}, "q4f8aodL": {"buffer_count": 13, "buffer_percent": 40, "configuration": "vpyoBT7G", "enable_region_overrides": true, "extendable_session": true, "game_version": "K6yQ6Kxy", "max_count": 52, "min_count": 87, "name": "PQkBzrmt", "region_overrides": {"lTtEg1qc": {"buffer_count": 71, "buffer_percent": 24, "max_count": 81, "min_count": 60, "name": "RGrk50kN", "unlimited": false, "use_buffer_percent": true}, "3dnZ5WxF": {"buffer_count": 33, "buffer_percent": 44, "max_count": 30, "min_count": 63, "name": "N8TVIvTW", "unlimited": false, "use_buffer_percent": true}, "QFRgITQX": {"buffer_count": 53, "buffer_percent": 93, "max_count": 42, "min_count": 68, "name": "GX0tMkjC", "unlimited": false, "use_buffer_percent": true}}, "regions": ["SJN3j1DH", "I5g56cG6", "6yyMx1WL"], "session_timeout": 35, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"fOkfPPxK": {"buffer_count": 22, "buffer_percent": 87, "max_count": 68, "min_count": 48, "name": "hQLqiwAn", "unlimited": true, "use_buffer_percent": true}, "CPPF0MVB": {"buffer_count": 21, "buffer_percent": 14, "max_count": 50, "min_count": 40, "name": "adhDfWEq", "unlimited": false, "use_buffer_percent": false}, "U86NnU8j": {"buffer_count": 84, "buffer_percent": 69, "max_count": 79, "min_count": 30, "name": "jhGtBX4d", "unlimited": false, "use_buffer_percent": true}}, "regions": ["RPcMalQq", "rFVSM58c", "Zs9G0XxH"], "session_timeout": 67, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 18 'CreateDeployment' test.out

#- 19 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'q7cRxb02' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'DeleteDeployment' test.out

#- 20 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'WecA5J3d' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 66, "buffer_percent": 33, "configuration": "kX2Y1dCU", "enable_region_overrides": false, "extendable_session": false, "game_version": "ga22yF84", "max_count": 85, "min_count": 16, "regions": ["UjZh64dr", "0N0eE6y0", "dvBeykWJ"], "session_timeout": 99, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateDeployment' test.out

#- 21 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'IyDkjoNB' \
    --namespace $AB_NAMESPACE \
    --region 'S6fHNrrj' \
    --body '{"buffer_count": 57, "buffer_percent": 88, "max_count": 27, "min_count": 17, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'CreateRootRegionOverride' test.out

#- 22 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'evIV3PZ3' \
    --namespace $AB_NAMESPACE \
    --region 'Px5g8uz2' \
    > test.out 2>&1
eval_tap $? 22 'DeleteRootRegionOverride' test.out

#- 23 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'UrpnI4ZC' \
    --namespace $AB_NAMESPACE \
    --region 'rSXPFHyJ' \
    --body '{"buffer_count": 45, "buffer_percent": 82, "max_count": 38, "min_count": 76, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateRootRegionOverride' test.out

#- 24 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'MbDe52pv' \
    --namespace $AB_NAMESPACE \
    --version 'nsV9zLJm' \
    --body '{"buffer_count": 15, "buffer_percent": 72, "configuration": "vovuNiCA", "enable_region_overrides": true, "extendable_session": true, "game_version": "PCyCA77H", "max_count": 29, "min_count": 6, "region_overrides": {"2RZhWviK": {"buffer_count": 45, "buffer_percent": 59, "max_count": 67, "min_count": 40, "name": "dxCGYZwS", "unlimited": true, "use_buffer_percent": true}, "VanUwcLK": {"buffer_count": 17, "buffer_percent": 49, "max_count": 43, "min_count": 55, "name": "8rQg0pME", "unlimited": false, "use_buffer_percent": false}, "GVK8WcxG": {"buffer_count": 93, "buffer_percent": 79, "max_count": 18, "min_count": 77, "name": "iXadYcAD", "unlimited": false, "use_buffer_percent": false}}, "regions": ["Abn1YkqL", "fy1AqqEH", "N46EobZ6"], "session_timeout": 57, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 24 'CreateDeploymentOverride' test.out

#- 25 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'BsSgVT4b' \
    --namespace $AB_NAMESPACE \
    --version 'c54PnSgL' \
    > test.out 2>&1
eval_tap $? 25 'DeleteDeploymentOverride' test.out

#- 26 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'QDa2OD8p' \
    --namespace $AB_NAMESPACE \
    --version 'zuquYSdn' \
    --body '{"buffer_count": 54, "buffer_percent": 54, "configuration": "rDfoG908", "enable_region_overrides": true, "game_version": "udn9IJRx", "max_count": 21, "min_count": 94, "regions": ["tDGuyulh", "BneRegKz", "FH5MVB28"], "session_timeout": 76, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateDeploymentOverride' test.out

#- 27 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'hjTzC5r5' \
    --namespace $AB_NAMESPACE \
    --region '3YZ67vsB' \
    --version 'qW3tC2PK' \
    --body '{"buffer_count": 33, "buffer_percent": 100, "max_count": 26, "min_count": 66, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 27 'CreateOverrideRegionOverride' test.out

#- 28 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'JPGy4dll' \
    --namespace $AB_NAMESPACE \
    --region 'HHjbkGPi' \
    --version 'GOkO2pR4' \
    > test.out 2>&1
eval_tap $? 28 'DeleteOverrideRegionOverride' test.out

#- 29 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'XQhzbEUq' \
    --namespace $AB_NAMESPACE \
    --region 'nRcoMe6K' \
    --version 'ToRhDXe4' \
    --body '{"buffer_count": 71, "buffer_percent": 82, "max_count": 67, "min_count": 82, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateOverrideRegionOverride' test.out

#- 30 DeleteCreatingServerCountQueue
samples/cli/sample-apps Dsmc deleteCreatingServerCountQueue \
    --deployment 'QVvTWUB4' \
    --namespace $AB_NAMESPACE \
    --version 'VWxkfRk1' \
    > test.out 2>&1
eval_tap $? 30 'DeleteCreatingServerCountQueue' test.out

#- 31 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '7' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 31 'GetAllPodConfig' test.out

#- 32 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'cktiSFUF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'GetPodConfig' test.out

#- 33 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'Wm0hKEnF' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 89, "mem_limit": 44, "params": "F0eaExTL"}' \
    > test.out 2>&1
eval_tap $? 33 'CreatePodConfig' test.out

#- 34 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'DZLpJGzj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePodConfig' test.out

#- 35 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'nJzlkDiN' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 38, "mem_limit": 100, "name": "JYwfnUk9", "params": "IVKXtxPT"}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePodConfig' test.out

#- 36 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'h1afZOEs' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 38}' \
    > test.out 2>&1
eval_tap $? 36 'AddPort' test.out

#- 37 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'XHL9ZnCr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'DeletePort' test.out

#- 38 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name '1IeUuAbL' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "0DUKeM4g", "port": 28}' \
    > test.out 2>&1
eval_tap $? 38 'UpdatePort' test.out

#- 39 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q '3OiXUEpi' \
    --sortBy 'createdAt' \
    --sortDirection 'asc' \
    --count '89' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 39 'ListImages' test.out

#- 40 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'wN74zhal' \
    --version 'sh1G0MZx' \
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
    --imageURI 'w4clQZPm' \
    --version 'uN9L1WZQ' \
    --versionPatch 'uE8hHeDr' \
    > test.out 2>&1
eval_tap $? 42 'DeleteImagePatch' test.out

#- 43 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'XgApyVBA' \
    > test.out 2>&1
eval_tap $? 43 'GetImageDetail' test.out

#- 44 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'rCugxD2D' \
    > test.out 2>&1
eval_tap $? 44 'GetImagePatches' test.out

#- 45 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'Vn7pFx1Q' \
    --versionPatch 'jm24fLE3' \
    > test.out 2>&1
eval_tap $? 45 'GetImagePatchDetail' test.out

#- 46 AddBuffer
samples/cli/sample-apps Dsmc addBuffer \
    --namespace $AB_NAMESPACE \
    --body '{"AllocCount": 97, "DeploymentName": "3RjJlGgF", "JobCount": 13, "JobPriority": 79, "OverrideVersion": "hqC6s08j", "Region": "KWhWh6nI"}' \
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
    --region '2f6K9p0w' \
    --count '40' \
    --offset '25' \
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
    --region 'f5kBlOl7' \
    > test.out 2>&1
eval_tap $? 50 'CountServerDetailed' test.out

#- 51 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'ListLocalServer' test.out

#- 52 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'QzcAqN32' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteLocalServer' test.out

#- 53 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'AVx15kp8' \
    > test.out 2>&1
eval_tap $? 53 'GetServer' test.out

#- 54 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'bJ52vhhT' \
    > test.out 2>&1
eval_tap $? 54 'DeleteServer' test.out

#- 55 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'seVJHFzA' \
    --withServer 'false' \
    --count '47' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 55 'ListSession' test.out

#- 56 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'VGI8wwol' \
    > test.out 2>&1
eval_tap $? 56 'CountSession' test.out

#- 57 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'MLmxyCvT' \
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
    --body '{"JobCount": 54, "Region": "iWNQL4KF", "TimeoutSecond": 94, "ZombieCount": 73}' \
    > test.out 2>&1
eval_tap $? 59 'RunZombieCleanerRequestHandler' test.out

#- 60 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "JiA4RMMg", "repository": "kSWPRq7Z"}' \
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
    --name 'kNcLNt9z' \
    --count '88' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 63 'GetAllDeploymentClient' test.out

#- 64 GetDeploymentClient
samples/cli/sample-apps Dsmc getDeploymentClient \
    --deployment 'a34qoEbW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetDeploymentClient' test.out

#- 65 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment 'Q3tnETp7' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 81, "buffer_percent": 20, "configuration": "NrIMsX0R", "enable_region_overrides": false, "extendable_session": true, "game_version": "3CplcLd6", "max_count": 51, "min_count": 17, "overrides": {"oVMhyOj8": {"buffer_count": 46, "buffer_percent": 72, "configuration": "PG1JzBUS", "enable_region_overrides": true, "extendable_session": true, "game_version": "eDYhrqfy", "max_count": 94, "min_count": 34, "name": "QOEVoda2", "region_overrides": {"MZqsSFh4": {"buffer_count": 46, "buffer_percent": 71, "max_count": 27, "min_count": 98, "name": "TVNyW7Ft", "unlimited": false, "use_buffer_percent": true}, "sEd1num3": {"buffer_count": 85, "buffer_percent": 97, "max_count": 67, "min_count": 61, "name": "jLJqymYb", "unlimited": true, "use_buffer_percent": false}, "jBZrr4Qa": {"buffer_count": 11, "buffer_percent": 17, "max_count": 31, "min_count": 7, "name": "JyJ8SEwE", "unlimited": false, "use_buffer_percent": false}}, "regions": ["qLKv3ycH", "g8XzteuG", "GORXmCtS"], "session_timeout": 28, "unlimited": true, "use_buffer_percent": true}, "PQWcAwPO": {"buffer_count": 3, "buffer_percent": 77, "configuration": "p9Q3U8xs", "enable_region_overrides": true, "extendable_session": false, "game_version": "plUdprXR", "max_count": 9, "min_count": 46, "name": "zF4sK2Dg", "region_overrides": {"bioFdyQQ": {"buffer_count": 50, "buffer_percent": 41, "max_count": 100, "min_count": 39, "name": "Wnd3opWl", "unlimited": false, "use_buffer_percent": false}, "FdlbGnj7": {"buffer_count": 87, "buffer_percent": 26, "max_count": 63, "min_count": 36, "name": "lWWq1Lde", "unlimited": true, "use_buffer_percent": false}, "Sttr2KZ0": {"buffer_count": 100, "buffer_percent": 55, "max_count": 43, "min_count": 32, "name": "Y4rZEiav", "unlimited": true, "use_buffer_percent": false}}, "regions": ["SGUIb6dr", "aBosrPm2", "UeLr6joO"], "session_timeout": 76, "unlimited": false, "use_buffer_percent": true}, "skUnvjid": {"buffer_count": 72, "buffer_percent": 15, "configuration": "NZWIZ29R", "enable_region_overrides": true, "extendable_session": true, "game_version": "ALOUO98w", "max_count": 84, "min_count": 84, "name": "GTm6C2Xu", "region_overrides": {"LjRrFwSn": {"buffer_count": 43, "buffer_percent": 46, "max_count": 100, "min_count": 53, "name": "LUb3NYo7", "unlimited": true, "use_buffer_percent": false}, "TNlsO48S": {"buffer_count": 95, "buffer_percent": 16, "max_count": 58, "min_count": 4, "name": "Vihk6X5U", "unlimited": false, "use_buffer_percent": true}, "0Jvznypm": {"buffer_count": 14, "buffer_percent": 10, "max_count": 68, "min_count": 40, "name": "gISCe5te", "unlimited": true, "use_buffer_percent": false}}, "regions": ["ckazfQsM", "X4ClMx4n", "XUABNhIv"], "session_timeout": 94, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"O9ZS2wwO": {"buffer_count": 6, "buffer_percent": 59, "max_count": 73, "min_count": 13, "name": "ziMbj6U0", "unlimited": true, "use_buffer_percent": true}, "VSAhrco6": {"buffer_count": 69, "buffer_percent": 78, "max_count": 82, "min_count": 86, "name": "JFuM5tXQ", "unlimited": false, "use_buffer_percent": true}, "In0QXiSL": {"buffer_count": 28, "buffer_percent": 55, "max_count": 56, "min_count": 40, "name": "ZrlcuOe2", "unlimited": true, "use_buffer_percent": false}}, "regions": ["EpFWSVHz", "SvkrKMPx", "OQczEVWR"], "session_timeout": 2, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 65 'CreateDeploymentClient' test.out

#- 66 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'FrqN9nCu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'DeleteDeploymentClient' test.out

#- 67 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '68' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 67 'GetAllPodConfigClient' test.out

#- 68 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'gBOEbMMo' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 28, "mem_limit": 23, "params": "BmVINauy"}' \
    > test.out 2>&1
eval_tap $? 68 'CreatePodConfigClient' test.out

#- 69 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'l2HUiw09' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'DeletePodConfigClient' test.out

#- 70 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '84' \
    --offset '45' \
    --q 'UXSUYXAB' \
    --sortBy 'createdAt' \
    --sortDirection 'desc' \
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
    --version 'AimPqOq1' \
    > test.out 2>&1
eval_tap $? 72 'ImageDetailClient' test.out

#- 73 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'QvDWjn4v' \
    --count '29' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 73 'ListServerClient' test.out

#- 74 CountServerDetailedClient
samples/cli/sample-apps Dsmc countServerDetailedClient \
    --namespace $AB_NAMESPACE \
    --region 'T7AJtSLV' \
    > test.out 2>&1
eval_tap $? 74 'CountServerDetailedClient' test.out

#- 75 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "UvFnaRPR"}' \
    > test.out 2>&1
eval_tap $? 75 'ServerHeartbeat' test.out

#- 76 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "cnANmtbo"}' \
    > test.out 2>&1
eval_tap $? 76 'DeregisterLocalServer' test.out

#- 77 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "KkO2O8DI", "ip": "spM43aEq", "name": "nYowyrkz", "port": 64}' \
    > test.out 2>&1
eval_tap $? 77 'RegisterLocalServer' test.out

#- 78 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "g55hqbs9", "pod_name": "M5HasoQt"}' \
    > test.out 2>&1
eval_tap $? 78 'RegisterServer' test.out

#- 79 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "FY8SfFCE"}' \
    > test.out 2>&1
eval_tap $? 79 'ShutdownServer' test.out

#- 80 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'vkmlry6J' \
    > test.out 2>&1
eval_tap $? 80 'GetServerSessionTimeout' test.out

#- 81 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'iinUbgh2' \
    > test.out 2>&1
eval_tap $? 81 'GetServerSession' test.out

#- 82 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "gcKXI1nD", "configuration": "YwvikvDf", "deployment": "DvH6pepX", "game_mode": "HDvVzmsI", "matching_allies": [{"matching_parties": [{"party_attributes": {"VHtFpBbx": {}, "wYRpj18b": {}, "QNCUZukd": {}}, "party_id": "5FD1TKOP", "party_members": [{"user_id": "nf2ljI5I"}, {"user_id": "2LIX9vC7"}, {"user_id": "GrwSurtK"}]}, {"party_attributes": {"JczlIWcf": {}, "gvXnEcKU": {}, "HnFDXAai": {}}, "party_id": "N79kUZPM", "party_members": [{"user_id": "Arrl886q"}, {"user_id": "ZqiJJuSq"}, {"user_id": "bAcXOzVo"}]}, {"party_attributes": {"KBK1isR0": {}, "fq6nHw7r": {}, "O8pjQJXt": {}}, "party_id": "3RPqdv20", "party_members": [{"user_id": "KhkBcd85"}, {"user_id": "tQ36IxuL"}, {"user_id": "qIzzs9ge"}]}]}, {"matching_parties": [{"party_attributes": {"pjKVyoY7": {}, "fFHhae4P": {}, "uEqc6oQG": {}}, "party_id": "cR7AGtpD", "party_members": [{"user_id": "HjLO7qA0"}, {"user_id": "7pNCGNo7"}, {"user_id": "Izs14PON"}]}, {"party_attributes": {"uutGE8Sg": {}, "4uIIbgRO": {}, "M1wtZd36": {}}, "party_id": "iBgu5tAg", "party_members": [{"user_id": "kNfAloZq"}, {"user_id": "SPkJmykI"}, {"user_id": "gPYrG9jF"}]}, {"party_attributes": {"ErIfMGhz": {}, "zDOxVUo3": {}, "BpXJponr": {}}, "party_id": "tI49lyVq", "party_members": [{"user_id": "OOVVbxMI"}, {"user_id": "Mn2zTjDy"}, {"user_id": "AoNzwl6e"}]}]}, {"matching_parties": [{"party_attributes": {"zCuLxLiX": {}, "Bzquh03Y": {}, "ktT2xJhn": {}}, "party_id": "ofzWXgXD", "party_members": [{"user_id": "qBg0Epdz"}, {"user_id": "LgVgazjU"}, {"user_id": "KmL4y3kz"}]}, {"party_attributes": {"aYOmIuwq": {}, "dzHAlYwV": {}, "D9Q4Flwt": {}}, "party_id": "xrJnelyP", "party_members": [{"user_id": "W3rQH8iJ"}, {"user_id": "lJswxzpm"}, {"user_id": "nuBE4vpo"}]}, {"party_attributes": {"vRFgIB2S": {}, "jxQyjjyd": {}, "GDpe0iPS": {}}, "party_id": "QNcPmC3w", "party_members": [{"user_id": "a3TovUG0"}, {"user_id": "t80UOiwB"}, {"user_id": "Zrai9vk3"}]}]}], "namespace": "zgJblaVK", "notification_payload": {}, "pod_name": "beTm35nY", "region": "zaYIis6E", "session_id": "Bowbd3X0"}' \
    > test.out 2>&1
eval_tap $? 82 'CreateSession' test.out

#- 83 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"game_mode": "4vyotJ9h", "matching_allies": [{"matching_parties": [{"party_attributes": {"wiswyE5Z": {}, "kEwJeGpT": {}, "Wy91WoY1": {}}, "party_id": "SVFbHK54", "party_members": [{"user_id": "CKTqySaj"}, {"user_id": "QDDapxSQ"}, {"user_id": "XXwXYcTp"}]}, {"party_attributes": {"oKjBfNzO": {}, "tTIpiONB": {}, "0RO0EXfk": {}}, "party_id": "OeJfQkJJ", "party_members": [{"user_id": "8a1vwn3M"}, {"user_id": "4cjAy9St"}, {"user_id": "ayXFZJpc"}]}, {"party_attributes": {"z3biPt1C": {}, "mWrqy7VA": {}, "nsQqCqRw": {}}, "party_id": "GlGoXBwg", "party_members": [{"user_id": "PKI5fF28"}, {"user_id": "gz6trHcq"}, {"user_id": "20QEazgs"}]}]}, {"matching_parties": [{"party_attributes": {"Sdksuf5r": {}, "ybTljrtS": {}, "T5X3ikUm": {}}, "party_id": "jQpqMsSC", "party_members": [{"user_id": "edWcgJea"}, {"user_id": "OvwsVvsz"}, {"user_id": "qVaTuyXK"}]}, {"party_attributes": {"dhPstuUb": {}, "DvJB7BIP": {}, "EBcebn4z": {}}, "party_id": "ETHKQglZ", "party_members": [{"user_id": "E3oGOPf1"}, {"user_id": "LnhEQtAY"}, {"user_id": "QrbYuFdZ"}]}, {"party_attributes": {"s4oI9HYm": {}, "CgzlCDzb": {}, "nsWA1VDc": {}}, "party_id": "H7qF5MSJ", "party_members": [{"user_id": "egiT2r7O"}, {"user_id": "kLyGnEMl"}, {"user_id": "WKbIhtoC"}]}]}, {"matching_parties": [{"party_attributes": {"VXAwVn3p": {}, "Q7ttWvAw": {}, "ofMVz9TZ": {}}, "party_id": "Q2fevFM1", "party_members": [{"user_id": "2slxsBdp"}, {"user_id": "SJy326gm"}, {"user_id": "cl9E6gN2"}]}, {"party_attributes": {"klYnpMda": {}, "mSLKmer6": {}, "A3w6eHaH": {}}, "party_id": "3RDvBHWO", "party_members": [{"user_id": "vevWPnlP"}, {"user_id": "waHbwoAB"}, {"user_id": "6eEv7Fy7"}]}, {"party_attributes": {"xJx739Ui": {}, "apehsOrs": {}, "LMsH0SMl": {}}, "party_id": "aZNkItyK", "party_members": [{"user_id": "w2BtJSm1"}, {"user_id": "vqvCACt7"}, {"user_id": "aOmWgCWz"}]}]}], "namespace": "4QOktzLd", "notification_payload": {}, "session_id": "x3jd45DW"}' \
    > test.out 2>&1
eval_tap $? 83 'ClaimServer' test.out

#- 84 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'YJ2s22mN' \
    > test.out 2>&1
eval_tap $? 84 'GetSession' test.out

#- 85 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'ncDN1I5m' \
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
    --region 'Ge6ZuEaK' \
    > test.out 2>&1
eval_tap $? 88 'ListProvidersByRegion' test.out

#- 89 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 89 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE