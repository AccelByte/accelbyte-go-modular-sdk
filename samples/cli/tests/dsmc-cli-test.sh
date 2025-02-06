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
    --body '{"artifactPath": "GQ9hVcut", "coreDumpEnabled": false, "image": "1LeI5ON9", "imageReplicationsMap": {"9cTiIgxq": {"failure_code": "rG4g9aT3", "region": "ONIYf8TF", "status": "coS6Denl", "uri": "GFzCv73M"}, "xcaqAPzx": {"failure_code": "eizRghxQ", "region": "exdlXCiR", "status": "imvsP23j", "uri": "9rHyh6eK"}, "hiBZpyLD": {"failure_code": "HrrHPItZ", "region": "4vmyEKYP", "status": "Pgf8rnda", "uri": "LWlKEWjh"}}, "namespace": "GZG2V1a8", "patchVersion": "etntPZQt", "persistent": true, "ulimitFileSize": 16, "version": "TP1SYsIv"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "2Y9igYCk", "coreDumpEnabled": false, "dockerPath": "uoeDyTaU", "image": "Lz4tqJpi", "imageSize": 43, "namespace": "aiIQgmnT", "persistent": false, "ulimitFileSize": 51, "version": "gxS4zclO"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "58Ro2AnC", "coreDumpEnabled": false, "dockerPath": "I6kKhr6J", "image": "myae7Xjx", "imageSize": 1, "namespace": "8yKIsIvR", "patchVersion": "ZFljDn1s", "persistent": true, "ulimitFileSize": 61, "uploaderFlag": "90QC1rdD", "version": "bzFFdfel"}' \
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
    --body '{"auto_deletion": true, "ghost_worker": true, "manual_buffer_override": true, "zombie_worker": true}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateWorkerConfig' test.out

#- 10 CreateWorkerConfig
samples/cli/sample-apps Dsmc createWorkerConfig \
    --namespace $AB_NAMESPACE \
    --body '{"auto_deletion": false, "ghost_worker": true, "manual_buffer_override": true, "zombie_worker": false}' \
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
    --body '{"claim_timeout": 36, "creation_timeout": 19, "default_version": "d2YvLaSu", "port": 92, "ports": {"2bqvT1Je": 55, "iXtVJhkB": 11, "vN0c6jG7": 85}, "protocol": "0NHTCgNs", "providers": ["CzbfFgHk", "uSRyF0wO", "oYuH2T10"], "session_timeout": 96, "unreachable_timeout": 8}' \
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
    --body '{"claim_timeout": 53, "creation_timeout": 25, "default_version": "Qyc7mkdc", "port": 10, "protocol": "QRzwKbaI", "providers": ["gpB4Um8s", "aIKgVJmc", "lMmH9RtH"], "session_timeout": 66, "unreachable_timeout": 7}' \
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
    --name 'cUiFcwm3' \
    --count '31' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 16 'GetAllDeployment' test.out

#- 17 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'yPjtoKZX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetDeployment' test.out

#- 18 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'vCwKdjc2' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 43, "buffer_percent": 67, "configuration": "UQ7RmvQy", "enable_region_overrides": false, "extendable_session": false, "game_version": "sMqS7QLV", "max_count": 89, "min_count": 9, "overrides": {"SwdXGBoO": {"buffer_count": 41, "buffer_percent": 89, "configuration": "gkcgrLCt", "enable_region_overrides": false, "extendable_session": true, "game_version": "EX9AeAcn", "max_count": 54, "min_count": 76, "name": "L3uCz7Bf", "region_overrides": {"wZwg9zo6": {"buffer_count": 31, "buffer_percent": 34, "max_count": 55, "min_count": 24, "name": "PvzPxHOb", "unlimited": true, "use_buffer_percent": true}, "YHWxAxzd": {"buffer_count": 15, "buffer_percent": 40, "max_count": 76, "min_count": 92, "name": "Ehbb6V2Q", "unlimited": true, "use_buffer_percent": false}, "RyopNjtY": {"buffer_count": 28, "buffer_percent": 61, "max_count": 19, "min_count": 60, "name": "7ZjcKd51", "unlimited": false, "use_buffer_percent": true}}, "regions": ["ARvAksjF", "jIstXCGn", "Ye1QPfhI"], "session_timeout": 37, "unlimited": true, "use_buffer_percent": false}, "4V0XBxmn": {"buffer_count": 27, "buffer_percent": 18, "configuration": "UYKtnUQT", "enable_region_overrides": false, "extendable_session": false, "game_version": "TeGOq203", "max_count": 5, "min_count": 79, "name": "sgJtHdxS", "region_overrides": {"VD88jVz6": {"buffer_count": 40, "buffer_percent": 55, "max_count": 18, "min_count": 93, "name": "QL1LYvln", "unlimited": false, "use_buffer_percent": false}, "69kTb4Y7": {"buffer_count": 75, "buffer_percent": 12, "max_count": 72, "min_count": 75, "name": "1wtkgHeW", "unlimited": true, "use_buffer_percent": false}, "3Ts6Sxlc": {"buffer_count": 60, "buffer_percent": 41, "max_count": 57, "min_count": 58, "name": "TLIAaOlJ", "unlimited": true, "use_buffer_percent": true}}, "regions": ["GVWWnUW1", "Q2Kb0mCU", "h2tQRmv8"], "session_timeout": 31, "unlimited": true, "use_buffer_percent": false}, "NA1lZreP": {"buffer_count": 74, "buffer_percent": 88, "configuration": "shgG6qll", "enable_region_overrides": false, "extendable_session": false, "game_version": "otRgUAzK", "max_count": 31, "min_count": 37, "name": "F6oox7Cl", "region_overrides": {"otBkI08P": {"buffer_count": 92, "buffer_percent": 59, "max_count": 28, "min_count": 19, "name": "wkZkTHth", "unlimited": true, "use_buffer_percent": false}, "9G2NmySz": {"buffer_count": 78, "buffer_percent": 92, "max_count": 97, "min_count": 17, "name": "Pi0aE2j2", "unlimited": false, "use_buffer_percent": false}, "6IfyW5Vi": {"buffer_count": 65, "buffer_percent": 38, "max_count": 42, "min_count": 51, "name": "TzVJttyl", "unlimited": true, "use_buffer_percent": true}}, "regions": ["nziX8bne", "DTkFZWgu", "7Ta7QF4D"], "session_timeout": 80, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"uyMsrhN2": {"buffer_count": 80, "buffer_percent": 15, "max_count": 92, "min_count": 10, "name": "z4l63I8X", "unlimited": false, "use_buffer_percent": true}, "2uZaL5xV": {"buffer_count": 83, "buffer_percent": 18, "max_count": 7, "min_count": 52, "name": "EZyjHVv0", "unlimited": true, "use_buffer_percent": false}, "MV5eM25k": {"buffer_count": 81, "buffer_percent": 5, "max_count": 40, "min_count": 100, "name": "rbZRZQDG", "unlimited": true, "use_buffer_percent": true}}, "regions": ["pBzN5pUJ", "6UNyN9Zx", "WYDPgq0N"], "session_timeout": 53, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 18 'CreateDeployment' test.out

#- 19 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'ozNiIEzL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'DeleteDeployment' test.out

#- 20 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'L2SFjpIb' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 6, "buffer_percent": 52, "configuration": "UYZ3QGnk", "enable_region_overrides": false, "extendable_session": false, "game_version": "MpxQK3t6", "max_count": 72, "min_count": 69, "regions": ["SOtG3Eh2", "FDSVzDBO", "mmQTcF05"], "session_timeout": 71, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateDeployment' test.out

#- 21 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'u7NcIY45' \
    --namespace $AB_NAMESPACE \
    --region 'mhd6S6dl' \
    --body '{"buffer_count": 42, "buffer_percent": 68, "max_count": 24, "min_count": 28, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'CreateRootRegionOverride' test.out

#- 22 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'exMMx4f8' \
    --namespace $AB_NAMESPACE \
    --region 'VHUZwwim' \
    > test.out 2>&1
eval_tap $? 22 'DeleteRootRegionOverride' test.out

#- 23 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment '8u4rveWb' \
    --namespace $AB_NAMESPACE \
    --region 'oLXEEAQ3' \
    --body '{"buffer_count": 10, "buffer_percent": 4, "max_count": 41, "min_count": 56, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateRootRegionOverride' test.out

#- 24 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'TmiyCWM5' \
    --namespace $AB_NAMESPACE \
    --version '98IyYNAa' \
    --body '{"buffer_count": 46, "buffer_percent": 37, "configuration": "dnHj9Kgr", "enable_region_overrides": true, "extendable_session": true, "game_version": "kVVnhruy", "max_count": 73, "min_count": 43, "region_overrides": {"fWujFAqH": {"buffer_count": 92, "buffer_percent": 36, "max_count": 50, "min_count": 12, "name": "RfVsAkCy", "unlimited": true, "use_buffer_percent": true}, "vYvW1uPz": {"buffer_count": 95, "buffer_percent": 37, "max_count": 86, "min_count": 19, "name": "1MuPOuvw", "unlimited": false, "use_buffer_percent": true}, "osEiFpWf": {"buffer_count": 57, "buffer_percent": 8, "max_count": 95, "min_count": 61, "name": "zIV78VqZ", "unlimited": false, "use_buffer_percent": true}}, "regions": ["C5twTqfx", "9Iuq8kVk", "N2d9J2i6"], "session_timeout": 25, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 24 'CreateDeploymentOverride' test.out

#- 25 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'M9yv7tVO' \
    --namespace $AB_NAMESPACE \
    --version 'tlEDH99d' \
    > test.out 2>&1
eval_tap $? 25 'DeleteDeploymentOverride' test.out

#- 26 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'oRRyhTKl' \
    --namespace $AB_NAMESPACE \
    --version '8nVdwPTm' \
    --body '{"buffer_count": 94, "buffer_percent": 46, "configuration": "AT0v88IX", "enable_region_overrides": true, "game_version": "xbbLQKdr", "max_count": 46, "min_count": 73, "regions": ["yTveLrKB", "KwqEyVDz", "IH0bTEpz"], "session_timeout": 22, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateDeploymentOverride' test.out

#- 27 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'zdW3kQhJ' \
    --namespace $AB_NAMESPACE \
    --region 'CCeKCXsh' \
    --version 'lpG25Y2K' \
    --body '{"buffer_count": 23, "buffer_percent": 71, "max_count": 94, "min_count": 64, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 27 'CreateOverrideRegionOverride' test.out

#- 28 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'dpjWyftL' \
    --namespace $AB_NAMESPACE \
    --region 'gDqntMHV' \
    --version 'zACocQVV' \
    > test.out 2>&1
eval_tap $? 28 'DeleteOverrideRegionOverride' test.out

#- 29 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment '74L4aYa0' \
    --namespace $AB_NAMESPACE \
    --region 'odIICbNe' \
    --version 'HdtRpK2x' \
    --body '{"buffer_count": 50, "buffer_percent": 71, "max_count": 7, "min_count": 43, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateOverrideRegionOverride' test.out

#- 30 DeleteCreatingServerCountQueue
samples/cli/sample-apps Dsmc deleteCreatingServerCountQueue \
    --deployment 'i2wnhlFk' \
    --namespace $AB_NAMESPACE \
    --version 'cXyH9Voo' \
    > test.out 2>&1
eval_tap $? 30 'DeleteCreatingServerCountQueue' test.out

#- 31 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '27' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 31 'GetAllPodConfig' test.out

#- 32 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'XTDFQ6wK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'GetPodConfig' test.out

#- 33 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'wFHNrIFo' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 93, "mem_limit": 97, "params": "hI1r9Upz"}' \
    > test.out 2>&1
eval_tap $? 33 'CreatePodConfig' test.out

#- 34 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'j3MBb8uB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePodConfig' test.out

#- 35 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name '1s9FUOhS' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 3, "mem_limit": 100, "name": "puyjViZX", "params": "VcB1ZKAH"}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePodConfig' test.out

#- 36 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'qZOKqaDF' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 86}' \
    > test.out 2>&1
eval_tap $? 36 'AddPort' test.out

#- 37 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'fqNBX02P' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'DeletePort' test.out

#- 38 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name '75i1oGBG' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "AfW7oKeu", "port": 18}' \
    > test.out 2>&1
eval_tap $? 38 'UpdatePort' test.out

#- 39 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'ust8M50a' \
    --sortBy 'createdAt' \
    --sortDirection 'asc' \
    --count '96' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 39 'ListImages' test.out

#- 40 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'D7SFKcH0' \
    --version 'iDFCIqxa' \
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
    --imageURI 'qmxpJGNp' \
    --version 'LBKMjWpn' \
    --versionPatch 'zKs5THdZ' \
    > test.out 2>&1
eval_tap $? 42 'DeleteImagePatch' test.out

#- 43 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'RvxAWr9W' \
    > test.out 2>&1
eval_tap $? 43 'GetImageDetail' test.out

#- 44 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'mIVgg9Zv' \
    > test.out 2>&1
eval_tap $? 44 'GetImagePatches' test.out

#- 45 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'wLF6QXev' \
    --versionPatch 'OAOvEURz' \
    > test.out 2>&1
eval_tap $? 45 'GetImagePatchDetail' test.out

#- 46 AddBuffer
samples/cli/sample-apps Dsmc addBuffer \
    --namespace $AB_NAMESPACE \
    --body '{"AllocCount": 13, "DeploymentName": "3Ihou167", "JobCount": 38, "JobPriority": 49, "OverrideVersion": "CCLd1MxP", "Region": "ZXllbDlI"}' \
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
    --region 'z61h5j93' \
    --count '11' \
    --offset '33' \
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
    --region 'hxs9HP2p' \
    > test.out 2>&1
eval_tap $? 50 'CountServerDetailed' test.out

#- 51 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'ListLocalServer' test.out

#- 52 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'go5F4sCm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteLocalServer' test.out

#- 53 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'FANHS5av' \
    > test.out 2>&1
eval_tap $? 53 'GetServer' test.out

#- 54 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'Mfer9nB9' \
    > test.out 2>&1
eval_tap $? 54 'DeleteServer' test.out

#- 55 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'cqhtXMPI' \
    --withServer 'true' \
    --count '6' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 55 'ListSession' test.out

#- 56 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'U9bQCXbT' \
    > test.out 2>&1
eval_tap $? 56 'CountSession' test.out

#- 57 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'jqgXwzSG' \
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
    --body '{"JobCount": 82, "Region": "YFCYJuum", "TimeoutSecond": 11, "ZombieCount": 88}' \
    > test.out 2>&1
eval_tap $? 59 'RunZombieCleanerRequestHandler' test.out

#- 60 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "9qS0OAtA", "repository": "PtSnW5dy"}' \
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
    --name 'ZtOl0v0U' \
    --count '31' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 63 'GetAllDeploymentClient' test.out

#- 64 GetDeploymentClient
samples/cli/sample-apps Dsmc getDeploymentClient \
    --deployment 'oKDVynUU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetDeploymentClient' test.out

#- 65 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment 'olreYtz7' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 74, "buffer_percent": 18, "configuration": "QyP4Lref", "enable_region_overrides": true, "extendable_session": true, "game_version": "hS6HsB7q", "max_count": 11, "min_count": 64, "overrides": {"2V36WiAN": {"buffer_count": 92, "buffer_percent": 99, "configuration": "rYqZKpxo", "enable_region_overrides": true, "extendable_session": true, "game_version": "Fd2FlXvb", "max_count": 83, "min_count": 92, "name": "dND2RIOd", "region_overrides": {"ZInYEkaO": {"buffer_count": 14, "buffer_percent": 47, "max_count": 45, "min_count": 11, "name": "Z1dNCiSu", "unlimited": true, "use_buffer_percent": false}, "KM9MhZV2": {"buffer_count": 55, "buffer_percent": 12, "max_count": 96, "min_count": 6, "name": "ikmXKIwA", "unlimited": true, "use_buffer_percent": false}, "xHBmdo2J": {"buffer_count": 68, "buffer_percent": 99, "max_count": 94, "min_count": 62, "name": "tSpsQXxP", "unlimited": true, "use_buffer_percent": true}}, "regions": ["hPs4xLAD", "DkIEUU94", "NJqRz4kj"], "session_timeout": 10, "unlimited": false, "use_buffer_percent": false}, "2oRuNhsv": {"buffer_count": 74, "buffer_percent": 70, "configuration": "QAAhgD19", "enable_region_overrides": false, "extendable_session": true, "game_version": "kEbpFAFU", "max_count": 38, "min_count": 94, "name": "BPz1Udik", "region_overrides": {"QVhcgDpT": {"buffer_count": 49, "buffer_percent": 72, "max_count": 26, "min_count": 11, "name": "NcXFSA62", "unlimited": false, "use_buffer_percent": false}, "4pvMpZ6l": {"buffer_count": 12, "buffer_percent": 79, "max_count": 28, "min_count": 43, "name": "baXNwBuF", "unlimited": true, "use_buffer_percent": false}, "lChKjKXv": {"buffer_count": 74, "buffer_percent": 23, "max_count": 18, "min_count": 22, "name": "IPibvAPh", "unlimited": true, "use_buffer_percent": true}}, "regions": ["tYHey45R", "1NMQfUp2", "luHhJOWb"], "session_timeout": 93, "unlimited": true, "use_buffer_percent": false}, "DBWtupWy": {"buffer_count": 46, "buffer_percent": 71, "configuration": "khjWJqN4", "enable_region_overrides": true, "extendable_session": false, "game_version": "8T7BuFDv", "max_count": 48, "min_count": 76, "name": "wzX15XZX", "region_overrides": {"YHVKskMN": {"buffer_count": 48, "buffer_percent": 4, "max_count": 82, "min_count": 1, "name": "zB5dwyYh", "unlimited": true, "use_buffer_percent": true}, "rF6Aqvn5": {"buffer_count": 7, "buffer_percent": 63, "max_count": 26, "min_count": 96, "name": "l6VY0YXd", "unlimited": true, "use_buffer_percent": true}, "iyI2J3Vt": {"buffer_count": 11, "buffer_percent": 11, "max_count": 94, "min_count": 10, "name": "PqF1WvqB", "unlimited": false, "use_buffer_percent": false}}, "regions": ["kixJahVi", "dngv1yZN", "EVdRKtXS"], "session_timeout": 5, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"5PpZWC6f": {"buffer_count": 65, "buffer_percent": 35, "max_count": 18, "min_count": 92, "name": "hL8CIwWh", "unlimited": true, "use_buffer_percent": true}, "9ZqyN4nU": {"buffer_count": 63, "buffer_percent": 56, "max_count": 4, "min_count": 65, "name": "XNmtVDNe", "unlimited": false, "use_buffer_percent": false}, "PtuIBHi7": {"buffer_count": 77, "buffer_percent": 25, "max_count": 29, "min_count": 23, "name": "7hrFjroc", "unlimited": true, "use_buffer_percent": true}}, "regions": ["263u8sno", "qIklDEGa", "3DUtfO09"], "session_timeout": 18, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 65 'CreateDeploymentClient' test.out

#- 66 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'uHxi7M1p' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'DeleteDeploymentClient' test.out

#- 67 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '39' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 67 'GetAllPodConfigClient' test.out

#- 68 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name '2IdlQZHf' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 34, "mem_limit": 1, "params": "kIFze7PW"}' \
    > test.out 2>&1
eval_tap $? 68 'CreatePodConfigClient' test.out

#- 69 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'W4HCWRsn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'DeletePodConfigClient' test.out

#- 70 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '55' \
    --offset '57' \
    --q 'FkzeBpgT' \
    --sortBy 'updatedAt' \
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
    --version 'LyUpiget' \
    > test.out 2>&1
eval_tap $? 72 'ImageDetailClient' test.out

#- 73 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'McYDSRUI' \
    --count '22' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 73 'ListServerClient' test.out

#- 74 CountServerDetailedClient
samples/cli/sample-apps Dsmc countServerDetailedClient \
    --namespace $AB_NAMESPACE \
    --region 'LoYWS2iC' \
    > test.out 2>&1
eval_tap $? 74 'CountServerDetailedClient' test.out

#- 75 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "854Yi98n"}' \
    > test.out 2>&1
eval_tap $? 75 'ServerHeartbeat' test.out

#- 76 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "8vJPrbAt"}' \
    > test.out 2>&1
eval_tap $? 76 'DeregisterLocalServer' test.out

#- 77 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "zm6mMjqe", "ip": "n2py7lUr", "name": "XFltUyZN", "port": 12}' \
    > test.out 2>&1
eval_tap $? 77 'RegisterLocalServer' test.out

#- 78 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "O37YCmuT", "pod_name": "FXdc5D68"}' \
    > test.out 2>&1
eval_tap $? 78 'RegisterServer' test.out

#- 79 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "BV1hxrNx"}' \
    > test.out 2>&1
eval_tap $? 79 'ShutdownServer' test.out

#- 80 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName '3kh7N6ZS' \
    > test.out 2>&1
eval_tap $? 80 'GetServerSessionTimeout' test.out

#- 81 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'CBeDHAgA' \
    > test.out 2>&1
eval_tap $? 81 'GetServerSession' test.out

#- 82 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "7gny0Pbv", "configuration": "kKMjQJkq", "deployment": "ELoKtpSh", "game_mode": "5fkC3uVc", "matching_allies": [{"matching_parties": [{"party_attributes": {"2CmSuSKg": {}, "OviPZgSY": {}, "1tTuoB9S": {}}, "party_id": "60b7SYed", "party_members": [{"user_id": "WXOltZSh"}, {"user_id": "0Zb8WCw7"}, {"user_id": "i4jxd2Gm"}]}, {"party_attributes": {"JIYeiBpS": {}, "vrdsZSJA": {}, "ElOv2E6p": {}}, "party_id": "dvFeIDm4", "party_members": [{"user_id": "ptPGTlfH"}, {"user_id": "eEpPQR8W"}, {"user_id": "2o6mb5X8"}]}, {"party_attributes": {"jyNqUtia": {}, "jKcxWnP4": {}, "U0UIVKr5": {}}, "party_id": "VXuvecnd", "party_members": [{"user_id": "TYjwnuDi"}, {"user_id": "BN2FvTyx"}, {"user_id": "fsmHwQSc"}]}]}, {"matching_parties": [{"party_attributes": {"YV0pOvlv": {}, "CJeGsyaD": {}, "pKzuhXKE": {}}, "party_id": "5Kb7wU82", "party_members": [{"user_id": "Yro2z8qF"}, {"user_id": "ASDlbcyE"}, {"user_id": "abjJ4yiU"}]}, {"party_attributes": {"trMsbnh9": {}, "xqu9cLGe": {}, "rirqs8mQ": {}}, "party_id": "v3OLojfq", "party_members": [{"user_id": "lLcujppv"}, {"user_id": "HWMBCbqL"}, {"user_id": "i2Zfl7FC"}]}, {"party_attributes": {"mQHhSy7H": {}, "fJnnQDsE": {}, "eX06RIaT": {}}, "party_id": "izcqjL3d", "party_members": [{"user_id": "udWPe9ew"}, {"user_id": "aP9x9wyr"}, {"user_id": "NkawsHAd"}]}]}, {"matching_parties": [{"party_attributes": {"Xohj3IXS": {}, "7aNgz6Wu": {}, "6VQKayjm": {}}, "party_id": "d6nh1LtU", "party_members": [{"user_id": "cwe7RS0j"}, {"user_id": "NOU41sKQ"}, {"user_id": "GRHLtGXp"}]}, {"party_attributes": {"djfjHOBV": {}, "qy9vTmKl": {}, "1QWvyn48": {}}, "party_id": "Q7yqYXRu", "party_members": [{"user_id": "zKDjzidb"}, {"user_id": "uRGa9A73"}, {"user_id": "wOW5Euux"}]}, {"party_attributes": {"bE5HUyUT": {}, "mJn5Fdxg": {}, "wIq4V4K8": {}}, "party_id": "lk4EgcPE", "party_members": [{"user_id": "i5kbJeri"}, {"user_id": "iujviXHz"}, {"user_id": "LC0SAd2Q"}]}]}], "namespace": "h87Ea8NW", "notification_payload": {}, "pod_name": "LcHcZTD6", "region": "VopkrBMH", "session_id": "nD9JmgN8"}' \
    > test.out 2>&1
eval_tap $? 82 'CreateSession' test.out

#- 83 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"game_mode": "kJ66JqF5", "matching_allies": [{"matching_parties": [{"party_attributes": {"rqqYpT5J": {}, "a4uojDCC": {}, "vs68T1Qx": {}}, "party_id": "30KF9KMN", "party_members": [{"user_id": "XNK9o1xv"}, {"user_id": "cW6vMEDJ"}, {"user_id": "bO9RhYSz"}]}, {"party_attributes": {"vZFBlis3": {}, "gEAK6XRc": {}, "b6UWn3n1": {}}, "party_id": "z2NwHU3v", "party_members": [{"user_id": "P182Gku5"}, {"user_id": "lG564366"}, {"user_id": "53uL18XW"}]}, {"party_attributes": {"n7VWqmLz": {}, "UgeclOBx": {}, "9j0kKPOZ": {}}, "party_id": "xQ9mWPAK", "party_members": [{"user_id": "CY5DEHW6"}, {"user_id": "GRPEN6nx"}, {"user_id": "RrqxC5M4"}]}]}, {"matching_parties": [{"party_attributes": {"IGOPQ4v9": {}, "T8s07BYr": {}, "HM31a4Xx": {}}, "party_id": "oW5r1zTI", "party_members": [{"user_id": "vKGb5AEA"}, {"user_id": "Yqnexvyy"}, {"user_id": "wLmhuhVX"}]}, {"party_attributes": {"tUYLupit": {}, "FLnexfqu": {}, "GlBBi6gZ": {}}, "party_id": "6yRH7KQx", "party_members": [{"user_id": "yhfXatbv"}, {"user_id": "byxnVBwK"}, {"user_id": "wCkqvniT"}]}, {"party_attributes": {"XRoyyVKQ": {}, "sOEMXYNu": {}, "tCdo9uie": {}}, "party_id": "ULw0E40d", "party_members": [{"user_id": "BowqHh8b"}, {"user_id": "w4JsQ2Io"}, {"user_id": "leaFie4T"}]}]}, {"matching_parties": [{"party_attributes": {"rHv5FN7P": {}, "LrkQA0MB": {}, "gc8DOl4X": {}}, "party_id": "PezTmRPD", "party_members": [{"user_id": "FVEdkewT"}, {"user_id": "gELx1ESA"}, {"user_id": "mzADcfZG"}]}, {"party_attributes": {"iiq7HNny": {}, "q11A35qv": {}, "XHAYHs6N": {}}, "party_id": "MvFa05Vz", "party_members": [{"user_id": "BdhyiaT4"}, {"user_id": "39d8Le9D"}, {"user_id": "WJmUSW02"}]}, {"party_attributes": {"oo8b5TRC": {}, "asrrdlfT": {}, "LOgWTAUm": {}}, "party_id": "f369kc4w", "party_members": [{"user_id": "I6UHYykM"}, {"user_id": "o3RRokbq"}, {"user_id": "BpPuLadG"}]}]}], "namespace": "dVvv1Str", "notification_payload": {}, "session_id": "jnQILmTg"}' \
    > test.out 2>&1
eval_tap $? 83 'ClaimServer' test.out

#- 84 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'xwmgS8s0' \
    > test.out 2>&1
eval_tap $? 84 'GetSession' test.out

#- 85 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'rw8ZXN40' \
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
    --region 'ssR22P6t' \
    > test.out 2>&1
eval_tap $? 88 'ListProvidersByRegion' test.out

#- 89 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 89 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE