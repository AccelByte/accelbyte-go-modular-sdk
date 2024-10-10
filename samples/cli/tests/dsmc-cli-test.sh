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
    --body '{"artifactPath": "uTZvOvjm", "coreDumpEnabled": false, "image": "No7im4uC", "imageReplicationsMap": {"4T1PnezR": {"failure_code": "qbGb7uBG", "region": "ueq0yQwn", "status": "MJKXHoWU", "uri": "isAq1TgX"}, "nSLqUyLV": {"failure_code": "58tUphM6", "region": "397l8vvf", "status": "S7Tj27hJ", "uri": "rYZ4GHlE"}, "Dm27AQx7": {"failure_code": "MCG9gPL5", "region": "xnEROtii", "status": "YwHvEBu2", "uri": "a42RlBn0"}}, "namespace": "zOV8tldL", "patchVersion": "SeREQt7W", "persistent": true, "ulimitFileSize": 93, "version": "RXGEcyVr"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "z337phrb", "coreDumpEnabled": true, "dockerPath": "ANFy5XTO", "image": "Cy14NVqb", "imageSize": 34, "namespace": "9mMm2dcF", "persistent": false, "ulimitFileSize": 56, "version": "CNSvolmK"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "h3OrwaQr", "coreDumpEnabled": false, "dockerPath": "lxZLqrdg", "image": "GwI63epW", "imageSize": 3, "namespace": "bP8lbLVg", "patchVersion": "uf3e4UhC", "persistent": true, "ulimitFileSize": 94, "uploaderFlag": "UKdEHPFC", "version": "UmYuqY3E"}' \
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
    --body '{"auto_deletion": false, "ghost_worker": false, "manual_buffer_override": false, "zombie_worker": true}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateWorkerConfig' test.out

#- 10 CreateWorkerConfig
samples/cli/sample-apps Dsmc createWorkerConfig \
    --namespace $AB_NAMESPACE \
    --body '{"auto_deletion": false, "ghost_worker": true, "manual_buffer_override": false, "zombie_worker": true}' \
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
    --body '{"claim_timeout": 9, "creation_timeout": 55, "default_version": "QzuIQpkh", "port": 64, "ports": {"dpjbqXjo": 70, "qEqd617U": 31, "PxgiH4ib": 53}, "protocol": "psPnPCVD", "providers": ["06Q2aDA5", "7tioWxHs", "VuYp25jW"], "session_timeout": 26, "unreachable_timeout": 66}' \
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
    --body '{"claim_timeout": 48, "creation_timeout": 37, "default_version": "OIM1KFF4", "port": 97, "protocol": "UufxRW2o", "providers": ["T2609oJD", "bnBSxzPu", "dRD2AzP1"], "session_timeout": 100, "unreachable_timeout": 81}' \
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
    --name 'xQtNM23A' \
    --count '37' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 16 'GetAllDeployment' test.out

#- 17 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'jn0SyNah' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetDeployment' test.out

#- 18 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'SWJ266AF' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 57, "buffer_percent": 93, "configuration": "5gVGTmTZ", "enable_region_overrides": false, "extendable_session": true, "game_version": "P8T2Fa4Z", "max_count": 56, "min_count": 20, "overrides": {"Ds42BaTH": {"buffer_count": 90, "buffer_percent": 66, "configuration": "YNm1KeHK", "enable_region_overrides": false, "extendable_session": true, "game_version": "HTLOJ1Z1", "max_count": 5, "min_count": 40, "name": "CuwPbN4m", "region_overrides": {"8AMV98m5": {"buffer_count": 22, "buffer_percent": 72, "max_count": 74, "min_count": 34, "name": "csL5Zv5G", "unlimited": false, "use_buffer_percent": false}, "NBXcQCjJ": {"buffer_count": 41, "buffer_percent": 34, "max_count": 93, "min_count": 49, "name": "P1VXZrF0", "unlimited": true, "use_buffer_percent": true}, "jaxiCsJu": {"buffer_count": 68, "buffer_percent": 3, "max_count": 87, "min_count": 16, "name": "9p6eyBXf", "unlimited": false, "use_buffer_percent": true}}, "regions": ["ynTwJFz9", "LhrhsCYg", "QWqX2s2R"], "session_timeout": 97, "unlimited": false, "use_buffer_percent": true}, "ZNGteQ7e": {"buffer_count": 38, "buffer_percent": 4, "configuration": "TWWyHXYp", "enable_region_overrides": false, "extendable_session": false, "game_version": "nA5AUXdF", "max_count": 86, "min_count": 67, "name": "nRgo3DmZ", "region_overrides": {"tGnD5uH8": {"buffer_count": 52, "buffer_percent": 16, "max_count": 39, "min_count": 98, "name": "jQjvXji8", "unlimited": true, "use_buffer_percent": false}, "GrFofq5G": {"buffer_count": 2, "buffer_percent": 56, "max_count": 99, "min_count": 91, "name": "XouGl0FM", "unlimited": true, "use_buffer_percent": true}, "WRO7gQBM": {"buffer_count": 64, "buffer_percent": 7, "max_count": 44, "min_count": 78, "name": "Agh01Iwz", "unlimited": true, "use_buffer_percent": false}}, "regions": ["R1M5Fvcy", "IhNHKlzy", "uhs2EncY"], "session_timeout": 67, "unlimited": true, "use_buffer_percent": false}, "Srp7u2Dl": {"buffer_count": 14, "buffer_percent": 13, "configuration": "veLxaRiv", "enable_region_overrides": true, "extendable_session": true, "game_version": "yiaIiDHr", "max_count": 57, "min_count": 33, "name": "2tmDWJ8k", "region_overrides": {"jbBt3GdJ": {"buffer_count": 20, "buffer_percent": 61, "max_count": 93, "min_count": 19, "name": "Mqos3RVr", "unlimited": true, "use_buffer_percent": false}, "GYxnEHME": {"buffer_count": 8, "buffer_percent": 94, "max_count": 56, "min_count": 79, "name": "FKDbn5bb", "unlimited": false, "use_buffer_percent": false}, "452GUjr3": {"buffer_count": 87, "buffer_percent": 13, "max_count": 12, "min_count": 61, "name": "HfZflzwe", "unlimited": false, "use_buffer_percent": true}}, "regions": ["KltLlAvj", "v4N8pnJg", "L8iHIy5A"], "session_timeout": 65, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"NaHL5KIM": {"buffer_count": 56, "buffer_percent": 84, "max_count": 54, "min_count": 85, "name": "G3MzR2gB", "unlimited": false, "use_buffer_percent": false}, "E35FN9Cr": {"buffer_count": 46, "buffer_percent": 49, "max_count": 81, "min_count": 23, "name": "2Y4PkrJ3", "unlimited": false, "use_buffer_percent": false}, "Oylu0jgX": {"buffer_count": 45, "buffer_percent": 28, "max_count": 13, "min_count": 64, "name": "Zn7yPGy3", "unlimited": true, "use_buffer_percent": true}}, "regions": ["gGO8anwS", "PLYJkDYb", "Kb6Fc4n1"], "session_timeout": 21, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 18 'CreateDeployment' test.out

#- 19 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment '4EVsXDXa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'DeleteDeployment' test.out

#- 20 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'ipoA0FHP' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 60, "buffer_percent": 33, "configuration": "YW54wyjI", "enable_region_overrides": true, "extendable_session": false, "game_version": "wAEEo1Ek", "max_count": 82, "min_count": 69, "regions": ["gAW9HfYq", "k1OM15Yp", "usim2Yay"], "session_timeout": 34, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateDeployment' test.out

#- 21 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'AXSJ3Ocw' \
    --namespace $AB_NAMESPACE \
    --region '0S7SWfEl' \
    --body '{"buffer_count": 31, "buffer_percent": 6, "max_count": 53, "min_count": 77, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'CreateRootRegionOverride' test.out

#- 22 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'FhAWNlHb' \
    --namespace $AB_NAMESPACE \
    --region 'GMW4MXBn' \
    > test.out 2>&1
eval_tap $? 22 'DeleteRootRegionOverride' test.out

#- 23 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'bf8Gv03n' \
    --namespace $AB_NAMESPACE \
    --region '9Qb98mcR' \
    --body '{"buffer_count": 62, "buffer_percent": 80, "max_count": 5, "min_count": 18, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateRootRegionOverride' test.out

#- 24 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'FtIF7eoP' \
    --namespace $AB_NAMESPACE \
    --version 'ByEsSTeF' \
    --body '{"buffer_count": 26, "buffer_percent": 11, "configuration": "qtXMgbJg", "enable_region_overrides": false, "extendable_session": false, "game_version": "QwmThyq7", "max_count": 86, "min_count": 16, "region_overrides": {"49PdcjO3": {"buffer_count": 24, "buffer_percent": 86, "max_count": 94, "min_count": 18, "name": "YnLEVoUG", "unlimited": true, "use_buffer_percent": true}, "T1FNFTx6": {"buffer_count": 5, "buffer_percent": 35, "max_count": 39, "min_count": 13, "name": "eKvthpjx", "unlimited": false, "use_buffer_percent": false}, "acW29G7m": {"buffer_count": 85, "buffer_percent": 56, "max_count": 33, "min_count": 26, "name": "psvFZYB6", "unlimited": false, "use_buffer_percent": false}}, "regions": ["RHqHimaL", "YPMlKbK2", "CqQP4S8J"], "session_timeout": 96, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 24 'CreateDeploymentOverride' test.out

#- 25 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'tR9ZaMmz' \
    --namespace $AB_NAMESPACE \
    --version 'PxvukJQw' \
    > test.out 2>&1
eval_tap $? 25 'DeleteDeploymentOverride' test.out

#- 26 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'OcdtcdpF' \
    --namespace $AB_NAMESPACE \
    --version 'migS4cR5' \
    --body '{"buffer_count": 45, "buffer_percent": 76, "configuration": "AgVeMURs", "enable_region_overrides": true, "game_version": "UO7xwKLh", "max_count": 18, "min_count": 22, "regions": ["aP6KBTr7", "Fh0GpgJZ", "zpMCBYNM"], "session_timeout": 71, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateDeploymentOverride' test.out

#- 27 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'L1i2W0SO' \
    --namespace $AB_NAMESPACE \
    --region 'WCtZbK9R' \
    --version '4Byhwio6' \
    --body '{"buffer_count": 86, "buffer_percent": 8, "max_count": 54, "min_count": 30, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 27 'CreateOverrideRegionOverride' test.out

#- 28 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'KBZJAHaJ' \
    --namespace $AB_NAMESPACE \
    --region 'NUxsJlyt' \
    --version 'izH2KUjZ' \
    > test.out 2>&1
eval_tap $? 28 'DeleteOverrideRegionOverride' test.out

#- 29 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment '4V44diO7' \
    --namespace $AB_NAMESPACE \
    --region 'chNrg63T' \
    --version 'M330Zf8y' \
    --body '{"buffer_count": 79, "buffer_percent": 97, "max_count": 62, "min_count": 96, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateOverrideRegionOverride' test.out

#- 30 DeleteCreatingServerCountQueue
samples/cli/sample-apps Dsmc deleteCreatingServerCountQueue \
    --deployment 'Rg5kQLnG' \
    --namespace $AB_NAMESPACE \
    --version 'vZEyoU9U' \
    > test.out 2>&1
eval_tap $? 30 'DeleteCreatingServerCountQueue' test.out

#- 31 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '46' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 31 'GetAllPodConfig' test.out

#- 32 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'zemoJIR3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'GetPodConfig' test.out

#- 33 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'hDNvlSw7' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 70, "mem_limit": 30, "params": "vYR15yYI"}' \
    > test.out 2>&1
eval_tap $? 33 'CreatePodConfig' test.out

#- 34 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'fHWD5GxE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePodConfig' test.out

#- 35 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'IujGU7yi' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 72, "mem_limit": 77, "name": "p9rG2ADN", "params": "tbTtw3G2"}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePodConfig' test.out

#- 36 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'xWl9NK1S' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 40}' \
    > test.out 2>&1
eval_tap $? 36 'AddPort' test.out

#- 37 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'JR1G3zu4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'DeletePort' test.out

#- 38 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'XkGQxTiF' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "JMwpmJQs", "port": 5}' \
    > test.out 2>&1
eval_tap $? 38 'UpdatePort' test.out

#- 39 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'lrUQdZxE' \
    --sortBy 'createdAt' \
    --sortDirection 'desc' \
    --count '15' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 39 'ListImages' test.out

#- 40 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'N3GrbPfj' \
    --version 'TeTpmBnj' \
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
    --imageURI 'cahtxVq8' \
    --version 'm9Lwuk84' \
    --versionPatch 'rBRcKl2Y' \
    > test.out 2>&1
eval_tap $? 42 'DeleteImagePatch' test.out

#- 43 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version '3daavFET' \
    > test.out 2>&1
eval_tap $? 43 'GetImageDetail' test.out

#- 44 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'icOXNeKh' \
    > test.out 2>&1
eval_tap $? 44 'GetImagePatches' test.out

#- 45 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'B7p4zTNS' \
    --versionPatch 'wKauLCII' \
    > test.out 2>&1
eval_tap $? 45 'GetImagePatchDetail' test.out

#- 46 AddBuffer
samples/cli/sample-apps Dsmc addBuffer \
    --namespace $AB_NAMESPACE \
    --body '{"AllocCount": 69, "DeploymentName": "bd6eSofi", "JobCount": 3, "JobPriority": 26, "OverrideVersion": "rOHRcG2g", "Region": "Fs7ZpsyD"}' \
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
    --region 'ufQ6bdFD' \
    --count '43' \
    --offset '67' \
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
    --region 'FHw5S8XC' \
    > test.out 2>&1
eval_tap $? 50 'CountServerDetailed' test.out

#- 51 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'ListLocalServer' test.out

#- 52 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'WWJXEwic' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteLocalServer' test.out

#- 53 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'qNeIZmE1' \
    > test.out 2>&1
eval_tap $? 53 'GetServer' test.out

#- 54 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'o69s4zaD' \
    > test.out 2>&1
eval_tap $? 54 'DeleteServer' test.out

#- 55 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region '1hqOnhZo' \
    --withServer 'false' \
    --count '29' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 55 'ListSession' test.out

#- 56 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'KEareR9I' \
    > test.out 2>&1
eval_tap $? 56 'CountSession' test.out

#- 57 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'PrQ2gvvC' \
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
    --body '{"JobCount": 92, "Region": "A3b9s1t3", "TimeoutSecond": 53, "ZombieCount": 23}' \
    > test.out 2>&1
eval_tap $? 59 'RunZombieCleanerRequestHandler' test.out

#- 60 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "kCZVxrwB", "repository": "MvgwAKRD"}' \
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
    --name 'DPOEl7TB' \
    --count '58' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 63 'GetAllDeploymentClient' test.out

#- 64 GetDeploymentClient
samples/cli/sample-apps Dsmc getDeploymentClient \
    --deployment '99AN6Zen' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetDeploymentClient' test.out

#- 65 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment 'iwX7y50n' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 81, "buffer_percent": 28, "configuration": "FoOtXIto", "enable_region_overrides": false, "extendable_session": false, "game_version": "ME6otbau", "max_count": 16, "min_count": 30, "overrides": {"FttaG2kx": {"buffer_count": 83, "buffer_percent": 88, "configuration": "3uzIbjc9", "enable_region_overrides": false, "extendable_session": true, "game_version": "xhzn5DyK", "max_count": 73, "min_count": 3, "name": "3W3pMufp", "region_overrides": {"jBVhAyC3": {"buffer_count": 76, "buffer_percent": 61, "max_count": 69, "min_count": 71, "name": "zp75FZKs", "unlimited": false, "use_buffer_percent": false}, "KM365gDF": {"buffer_count": 47, "buffer_percent": 16, "max_count": 69, "min_count": 72, "name": "mDXKwNZZ", "unlimited": true, "use_buffer_percent": true}, "eK9NiYCZ": {"buffer_count": 14, "buffer_percent": 27, "max_count": 82, "min_count": 8, "name": "NfnEqDq9", "unlimited": false, "use_buffer_percent": true}}, "regions": ["7D5zJebq", "bhKMCikg", "mx2Ln89N"], "session_timeout": 47, "unlimited": false, "use_buffer_percent": true}, "GYbO4LkZ": {"buffer_count": 46, "buffer_percent": 42, "configuration": "LuxfK8Cj", "enable_region_overrides": false, "extendable_session": false, "game_version": "vmKYD5NJ", "max_count": 96, "min_count": 49, "name": "SEaFEwZj", "region_overrides": {"guvJcGxX": {"buffer_count": 1, "buffer_percent": 45, "max_count": 44, "min_count": 61, "name": "EviRWece", "unlimited": false, "use_buffer_percent": true}, "75dFoHxy": {"buffer_count": 83, "buffer_percent": 52, "max_count": 1, "min_count": 46, "name": "zwPIG2M6", "unlimited": true, "use_buffer_percent": true}, "sVhQAtkS": {"buffer_count": 72, "buffer_percent": 29, "max_count": 72, "min_count": 52, "name": "OQwa2l6h", "unlimited": true, "use_buffer_percent": false}}, "regions": ["a7amVYKM", "uKTl9gPV", "8sk9eVGP"], "session_timeout": 18, "unlimited": true, "use_buffer_percent": false}, "AGT3tvhu": {"buffer_count": 25, "buffer_percent": 95, "configuration": "WeZxWSr1", "enable_region_overrides": true, "extendable_session": false, "game_version": "7rAerUj6", "max_count": 34, "min_count": 74, "name": "TNtD7pm4", "region_overrides": {"j9RkYa2h": {"buffer_count": 47, "buffer_percent": 42, "max_count": 76, "min_count": 6, "name": "viEeHVig", "unlimited": false, "use_buffer_percent": false}, "ExtHT5pY": {"buffer_count": 97, "buffer_percent": 73, "max_count": 3, "min_count": 61, "name": "TW6u0nBB", "unlimited": false, "use_buffer_percent": false}, "s8INhdI8": {"buffer_count": 99, "buffer_percent": 20, "max_count": 43, "min_count": 75, "name": "or12smrP", "unlimited": true, "use_buffer_percent": false}}, "regions": ["NMpXW1We", "VZNtuo66", "OO3iHobq"], "session_timeout": 17, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"4NYml0rN": {"buffer_count": 61, "buffer_percent": 33, "max_count": 50, "min_count": 83, "name": "OBpnBWGJ", "unlimited": true, "use_buffer_percent": true}, "eD2Ix3kZ": {"buffer_count": 70, "buffer_percent": 64, "max_count": 84, "min_count": 93, "name": "vlIsHEo0", "unlimited": true, "use_buffer_percent": false}, "9vqWWKCp": {"buffer_count": 57, "buffer_percent": 12, "max_count": 51, "min_count": 45, "name": "RK43xeIw", "unlimited": true, "use_buffer_percent": false}}, "regions": ["8FxUlIXA", "jC6gQPuN", "H0dVnHJA"], "session_timeout": 11, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 65 'CreateDeploymentClient' test.out

#- 66 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'IfTktE7O' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'DeleteDeploymentClient' test.out

#- 67 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '17' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 67 'GetAllPodConfigClient' test.out

#- 68 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'fHp3e8Xq' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 21, "mem_limit": 0, "params": "3rSYz7Vn"}' \
    > test.out 2>&1
eval_tap $? 68 'CreatePodConfigClient' test.out

#- 69 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'sOhBLLvs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'DeletePodConfigClient' test.out

#- 70 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '76' \
    --offset '89' \
    --q 'uKwelme2' \
    --sortBy 'version' \
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
    --version 'm1ed5hYk' \
    > test.out 2>&1
eval_tap $? 72 'ImageDetailClient' test.out

#- 73 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'NUAL6zoV' \
    --count '84' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 73 'ListServerClient' test.out

#- 74 CountServerDetailedClient
samples/cli/sample-apps Dsmc countServerDetailedClient \
    --namespace $AB_NAMESPACE \
    --region 'kXbMVwGS' \
    > test.out 2>&1
eval_tap $? 74 'CountServerDetailedClient' test.out

#- 75 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "AzvsqJf1"}' \
    > test.out 2>&1
eval_tap $? 75 'ServerHeartbeat' test.out

#- 76 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "gffOvfGP"}' \
    > test.out 2>&1
eval_tap $? 76 'DeregisterLocalServer' test.out

#- 77 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "5NjNlYb8", "ip": "btUkdIWi", "name": "I5zXquFh", "port": 5}' \
    > test.out 2>&1
eval_tap $? 77 'RegisterLocalServer' test.out

#- 78 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "CyRtAQwU", "pod_name": "uwoKiOJd"}' \
    > test.out 2>&1
eval_tap $? 78 'RegisterServer' test.out

#- 79 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": false, "pod_name": "bKEsRUEk"}' \
    > test.out 2>&1
eval_tap $? 79 'ShutdownServer' test.out

#- 80 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'cS7m94s9' \
    > test.out 2>&1
eval_tap $? 80 'GetServerSessionTimeout' test.out

#- 81 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'YHzVdWJ2' \
    > test.out 2>&1
eval_tap $? 81 'GetServerSession' test.out

#- 82 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "c80CK525", "configuration": "qG62FRDq", "deployment": "Jn392H39", "game_mode": "pqM3e1yy", "matching_allies": [{"matching_parties": [{"party_attributes": {"FHLE6ZpJ": {}, "TJoZP1vT": {}, "1MWbPnMG": {}}, "party_id": "jXgC2Lmu", "party_members": [{"user_id": "5zUoslqo"}, {"user_id": "ktV47fBl"}, {"user_id": "ofYNGM9Z"}]}, {"party_attributes": {"eOMy7wco": {}, "Xk3P76UA": {}, "HrcHktgm": {}}, "party_id": "2NfN2yCT", "party_members": [{"user_id": "N9utppEI"}, {"user_id": "VkQ3myMU"}, {"user_id": "zphA9PjT"}]}, {"party_attributes": {"jHwxqO6Z": {}, "gmqOVtCO": {}, "UaypIW3i": {}}, "party_id": "aOJGXwgO", "party_members": [{"user_id": "zdDoBZSS"}, {"user_id": "tIcbkctG"}, {"user_id": "4rCh9Nx2"}]}]}, {"matching_parties": [{"party_attributes": {"f9X0QavH": {}, "pEfe1A5R": {}, "rSmaSffl": {}}, "party_id": "sI0TPtn4", "party_members": [{"user_id": "Nk3LnsZD"}, {"user_id": "Y5keCd6E"}, {"user_id": "kxIYARP5"}]}, {"party_attributes": {"npYMJ4uu": {}, "q0iPOyDR": {}, "mOJdrBpw": {}}, "party_id": "v74wVCxF", "party_members": [{"user_id": "xT8KCgW9"}, {"user_id": "TXyyi3V8"}, {"user_id": "buDdqVfi"}]}, {"party_attributes": {"3eiw88M9": {}, "D1tyhRgQ": {}, "Pyqqj1WM": {}}, "party_id": "V21bWz93", "party_members": [{"user_id": "PZn9uwbQ"}, {"user_id": "DF3JmFGL"}, {"user_id": "sNv1FTHm"}]}]}, {"matching_parties": [{"party_attributes": {"feYFALzK": {}, "sZTWOlpC": {}, "FNlNgbss": {}}, "party_id": "xHpU9TQg", "party_members": [{"user_id": "VYk90pdj"}, {"user_id": "YOlWuFup"}, {"user_id": "BwLWChUZ"}]}, {"party_attributes": {"AWMFMczK": {}, "cf1BPig6": {}, "JKhzXIzD": {}}, "party_id": "SErJST0o", "party_members": [{"user_id": "OdhfUgmL"}, {"user_id": "lIhYFPjA"}, {"user_id": "ftoFnO09"}]}, {"party_attributes": {"xwehN3sT": {}, "tXYBjPox": {}, "WZZ5feRX": {}}, "party_id": "ZV2zyO9U", "party_members": [{"user_id": "oskygqK9"}, {"user_id": "opxVLzd0"}, {"user_id": "J7boxb8n"}]}]}], "namespace": "ffUDrlZr", "notification_payload": {}, "pod_name": "w1MaYEor", "region": "R0kiXq6U", "session_id": "HEKHxnpW"}' \
    > test.out 2>&1
eval_tap $? 82 'CreateSession' test.out

#- 83 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"game_mode": "hAk4SF7b", "matching_allies": [{"matching_parties": [{"party_attributes": {"UufuP9ji": {}, "wsgvaA9g": {}, "cRXOP3GZ": {}}, "party_id": "AZXoVCEB", "party_members": [{"user_id": "oDDYC4xR"}, {"user_id": "UOzlIGls"}, {"user_id": "3EQXPfau"}]}, {"party_attributes": {"0nzIs2P9": {}, "LGySoRLX": {}, "RdC0Tvtq": {}}, "party_id": "hXW0NYVi", "party_members": [{"user_id": "SP8XskMW"}, {"user_id": "ZmuFyJlv"}, {"user_id": "ZMTwSp7b"}]}, {"party_attributes": {"k9quMoqG": {}, "n0yRBCsS": {}, "TuIsLvPW": {}}, "party_id": "6JNH3pzh", "party_members": [{"user_id": "oHnANHv3"}, {"user_id": "HbHMUmzC"}, {"user_id": "3I6Ttof4"}]}]}, {"matching_parties": [{"party_attributes": {"tQpNE4GS": {}, "0EpgLQMC": {}, "J1NxRRxz": {}}, "party_id": "Kfbe30bm", "party_members": [{"user_id": "J14zKRhJ"}, {"user_id": "8WFPA2Xy"}, {"user_id": "0AzD1JDd"}]}, {"party_attributes": {"MqacWXVI": {}, "zHLjqsct": {}, "TckclioI": {}}, "party_id": "O7Eb9ZN4", "party_members": [{"user_id": "PzLvTiPI"}, {"user_id": "AHDfk898"}, {"user_id": "iWjrJIdi"}]}, {"party_attributes": {"uCwLDeiz": {}, "JzPoRmqK": {}, "zrNo1LSi": {}}, "party_id": "wJeJLLdv", "party_members": [{"user_id": "KanlbOHb"}, {"user_id": "jEPW5zMX"}, {"user_id": "t8EC2qH3"}]}]}, {"matching_parties": [{"party_attributes": {"u4RpWiTr": {}, "BylRSDrw": {}, "s9OYm2js": {}}, "party_id": "KQN6ZbkX", "party_members": [{"user_id": "izFRXuwm"}, {"user_id": "J9GnMTyM"}, {"user_id": "NPCMhgBF"}]}, {"party_attributes": {"ifSoKtu1": {}, "M8CcQFyq": {}, "QZI7lVEQ": {}}, "party_id": "W8F7ltL7", "party_members": [{"user_id": "dCYCvQwy"}, {"user_id": "kSKgmHrO"}, {"user_id": "TIUKutRs"}]}, {"party_attributes": {"X6NTr6Gy": {}, "izF7MTdN": {}, "Ay6dPcxX": {}}, "party_id": "gCLKeZMw", "party_members": [{"user_id": "YdBfGNlK"}, {"user_id": "SMdEo0o2"}, {"user_id": "AKkxct1w"}]}]}], "namespace": "Rm5SgP4g", "notification_payload": {}, "session_id": "YM0UDDaH"}' \
    > test.out 2>&1
eval_tap $? 83 'ClaimServer' test.out

#- 84 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'QO21Czkz' \
    > test.out 2>&1
eval_tap $? 84 'GetSession' test.out

#- 85 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'NJBwZ3bI' \
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
    --region '8sUUAxsP' \
    > test.out 2>&1
eval_tap $? 88 'ListProvidersByRegion' test.out

#- 89 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 89 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE