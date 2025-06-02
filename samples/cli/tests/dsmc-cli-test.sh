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
    --body '{"artifactPath": "nGwpK0yI", "coreDumpEnabled": false, "image": "rOfS75IQ", "imageReplicationsMap": {"4A708dTR": {"failure_code": "nVWTSB4r", "region": "6UXWhUyf", "status": "RK4gMK8q", "uri": "uGgzdcoR"}, "3zj0Rcc0": {"failure_code": "BTFNF3nF", "region": "qWe3cSuD", "status": "AnYqmEsB", "uri": "FuJjw8oI"}, "8sPtMqm4": {"failure_code": "mUhNekds", "region": "Kfm2Qfzo", "status": "Fyv35C4T", "uri": "6YCLQh07"}}, "namespace": "CTMooeH9", "patchVersion": "PnUxwRti", "persistent": true, "ulimitFileSize": 40, "version": "fJgPavz1"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "SKr8SVZd", "coreDumpEnabled": false, "dockerPath": "dBk5Xwao", "image": "C8k2KGMM", "imageSize": 18, "namespace": "HYfxKZc1", "persistent": true, "ulimitFileSize": 11, "version": "eqDR42ps"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "HVmniHkt", "coreDumpEnabled": false, "dockerPath": "evDVhh5L", "image": "a6p4NCHU", "imageSize": 13, "namespace": "QYIa8Fps", "patchVersion": "831JnOBc", "persistent": true, "ulimitFileSize": 39, "uploaderFlag": "9JbhCWWY", "version": "etu2Hp01"}' \
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
    --body '{"auto_deletion": true, "ghost_worker": true, "manual_buffer_override": false, "zombie_worker": false}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateWorkerConfig' test.out

#- 10 CreateWorkerConfig
samples/cli/sample-apps Dsmc createWorkerConfig \
    --namespace $AB_NAMESPACE \
    --body '{"auto_deletion": false, "ghost_worker": true, "manual_buffer_override": false, "zombie_worker": false}' \
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
    --body '{"claim_timeout": 35, "creation_timeout": 17, "default_version": "JEupcpl2", "port": 66, "ports": {"37Mm3ufo": 94, "BQSDHrlL": 68, "IYv5Sm4N": 67}, "protocol": "Entz2Owz", "providers": ["J8DJgsCY", "SoFGUvmr", "OUgkl60l"], "session_timeout": 96, "unreachable_timeout": 98}' \
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
    --body '{"claim_timeout": 60, "creation_timeout": 22, "default_version": "UbYr6ln7", "port": 28, "protocol": "eAudovyw", "providers": ["b187sM03", "dBsE97cG", "tBAJfrXr"], "session_timeout": 31, "unreachable_timeout": 62}' \
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
    --name '5tnzs69B' \
    --count '80' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 16 'GetAllDeployment' test.out

#- 17 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'OE1TfhTa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetDeployment' test.out

#- 18 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'sIszrQ6H' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 39, "buffer_percent": 4, "configuration": "uIx79fSs", "enable_region_overrides": true, "extendable_session": true, "game_version": "u24ipRpn", "max_count": 6, "min_count": 79, "overrides": {"V4utZgFg": {"buffer_count": 86, "buffer_percent": 75, "configuration": "t6viHs6N", "enable_region_overrides": true, "extendable_session": true, "game_version": "NIx4iNzo", "max_count": 92, "min_count": 74, "name": "MiRzhSuM", "region_overrides": {"hn5OG0Jm": {"buffer_count": 100, "buffer_percent": 70, "max_count": 24, "min_count": 96, "name": "B6dLTsJL", "unlimited": false, "use_buffer_percent": false}, "69FQygzL": {"buffer_count": 62, "buffer_percent": 3, "max_count": 64, "min_count": 27, "name": "hxFtKElG", "unlimited": false, "use_buffer_percent": false}, "tWcaWcWo": {"buffer_count": 24, "buffer_percent": 100, "max_count": 28, "min_count": 62, "name": "E3TNnr4Y", "unlimited": false, "use_buffer_percent": false}}, "regions": ["yEK8ZPnT", "a4P1d0aT", "N3SoSTEs"], "session_timeout": 0, "unlimited": true, "use_buffer_percent": true}, "P5ejRc5e": {"buffer_count": 91, "buffer_percent": 4, "configuration": "0iib5EYY", "enable_region_overrides": false, "extendable_session": false, "game_version": "f2ucmCvD", "max_count": 10, "min_count": 25, "name": "VFCfaLCB", "region_overrides": {"FwxPT5ii": {"buffer_count": 100, "buffer_percent": 68, "max_count": 88, "min_count": 88, "name": "y2odCbHQ", "unlimited": false, "use_buffer_percent": true}, "uBoMYsgI": {"buffer_count": 37, "buffer_percent": 75, "max_count": 7, "min_count": 5, "name": "xbIWPyTM", "unlimited": false, "use_buffer_percent": false}, "ncH3kOvY": {"buffer_count": 65, "buffer_percent": 48, "max_count": 33, "min_count": 95, "name": "lHafUnVw", "unlimited": false, "use_buffer_percent": true}}, "regions": ["HWhvBSSr", "uJzd6Kci", "ZfVqASLJ"], "session_timeout": 28, "unlimited": true, "use_buffer_percent": true}, "oorScQ2X": {"buffer_count": 88, "buffer_percent": 35, "configuration": "dj929678", "enable_region_overrides": false, "extendable_session": true, "game_version": "AIu5vKME", "max_count": 52, "min_count": 7, "name": "7iYrWIZC", "region_overrides": {"2g9hKLhz": {"buffer_count": 40, "buffer_percent": 39, "max_count": 50, "min_count": 98, "name": "7ogL9WTv", "unlimited": false, "use_buffer_percent": true}, "DEOqJRii": {"buffer_count": 81, "buffer_percent": 80, "max_count": 32, "min_count": 100, "name": "qpuY8C2B", "unlimited": true, "use_buffer_percent": true}, "28x4LnHW": {"buffer_count": 100, "buffer_percent": 42, "max_count": 65, "min_count": 72, "name": "dncrwXlD", "unlimited": true, "use_buffer_percent": true}}, "regions": ["MMLZMXhp", "jkxdYSJ8", "Xx9syXlL"], "session_timeout": 23, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"EjEaWZx7": {"buffer_count": 82, "buffer_percent": 57, "max_count": 34, "min_count": 45, "name": "o6DYyn5R", "unlimited": false, "use_buffer_percent": true}, "cOxCe1Y3": {"buffer_count": 95, "buffer_percent": 56, "max_count": 34, "min_count": 70, "name": "xBNFZz5K", "unlimited": false, "use_buffer_percent": false}, "ucmRFPYp": {"buffer_count": 97, "buffer_percent": 17, "max_count": 79, "min_count": 98, "name": "BIvhXQHx", "unlimited": true, "use_buffer_percent": false}}, "regions": ["xhm09AlD", "ZUFIGrey", "9fwLhzIH"], "session_timeout": 6, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 18 'CreateDeployment' test.out

#- 19 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment '8jSTqKEJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'DeleteDeployment' test.out

#- 20 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'g7QrTT8v' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 81, "buffer_percent": 88, "configuration": "z5Gbapof", "enable_region_overrides": true, "extendable_session": false, "game_version": "4GgNWDJv", "max_count": 60, "min_count": 92, "regions": ["J6w92tZt", "keUtxSxi", "6INeZeTK"], "session_timeout": 31, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateDeployment' test.out

#- 21 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'HaZ10rcc' \
    --namespace $AB_NAMESPACE \
    --region 'XeNpDPAO' \
    --body '{"buffer_count": 11, "buffer_percent": 79, "max_count": 57, "min_count": 53, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 21 'CreateRootRegionOverride' test.out

#- 22 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'mSuNbMta' \
    --namespace $AB_NAMESPACE \
    --region 'JBo9iwHB' \
    > test.out 2>&1
eval_tap $? 22 'DeleteRootRegionOverride' test.out

#- 23 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'ih4US4ag' \
    --namespace $AB_NAMESPACE \
    --region 'vasjH0Bp' \
    --body '{"buffer_count": 30, "buffer_percent": 41, "max_count": 18, "min_count": 5, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateRootRegionOverride' test.out

#- 24 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'ELPjzfSZ' \
    --namespace $AB_NAMESPACE \
    --version '7Cx4mpqd' \
    --body '{"buffer_count": 88, "buffer_percent": 35, "configuration": "Yt5XwW8F", "enable_region_overrides": true, "extendable_session": true, "game_version": "PxsNtFWY", "max_count": 49, "min_count": 74, "region_overrides": {"snNAses1": {"buffer_count": 37, "buffer_percent": 43, "max_count": 7, "min_count": 97, "name": "ED3gG5Ou", "unlimited": true, "use_buffer_percent": false}, "sMwskGVe": {"buffer_count": 48, "buffer_percent": 83, "max_count": 55, "min_count": 59, "name": "K4mlSH8Z", "unlimited": false, "use_buffer_percent": false}, "stR2CTjD": {"buffer_count": 83, "buffer_percent": 95, "max_count": 68, "min_count": 40, "name": "tluFJykj", "unlimited": true, "use_buffer_percent": true}}, "regions": ["dnnxgvWZ", "euxXUSfS", "9tS0xn4X"], "session_timeout": 33, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 24 'CreateDeploymentOverride' test.out

#- 25 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'd3gWAXbL' \
    --namespace $AB_NAMESPACE \
    --version 'zgqULfxA' \
    > test.out 2>&1
eval_tap $? 25 'DeleteDeploymentOverride' test.out

#- 26 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'VlACaFgz' \
    --namespace $AB_NAMESPACE \
    --version 'xNQM0Zf7' \
    --body '{"buffer_count": 57, "buffer_percent": 57, "configuration": "mX9w4GkV", "enable_region_overrides": false, "game_version": "EuHIjgsQ", "max_count": 74, "min_count": 57, "regions": ["rBht6LTz", "EAMf2ZWE", "zgBKbLwe"], "session_timeout": 91, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateDeploymentOverride' test.out

#- 27 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'yeEsWzUl' \
    --namespace $AB_NAMESPACE \
    --region 'LmJLxntu' \
    --version 'LAZTlokX' \
    --body '{"buffer_count": 64, "buffer_percent": 14, "max_count": 96, "min_count": 30, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 27 'CreateOverrideRegionOverride' test.out

#- 28 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'zGAkYfQC' \
    --namespace $AB_NAMESPACE \
    --region 'ticQ3vLH' \
    --version 'rrm8iZCQ' \
    > test.out 2>&1
eval_tap $? 28 'DeleteOverrideRegionOverride' test.out

#- 29 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'e60egu3K' \
    --namespace $AB_NAMESPACE \
    --region '2nafTF9I' \
    --version 'bv5X0QX0' \
    --body '{"buffer_count": 93, "buffer_percent": 74, "max_count": 17, "min_count": 8, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateOverrideRegionOverride' test.out

#- 30 DeleteCreatingServerCountQueue
samples/cli/sample-apps Dsmc deleteCreatingServerCountQueue \
    --deployment 'dYoNdZDR' \
    --namespace $AB_NAMESPACE \
    --version 'iJ8kIevd' \
    > test.out 2>&1
eval_tap $? 30 'DeleteCreatingServerCountQueue' test.out

#- 31 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '84' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 31 'GetAllPodConfig' test.out

#- 32 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'PMGX4eTH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'GetPodConfig' test.out

#- 33 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'nDcIFmvV' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 74, "mem_limit": 25, "params": "P5lS0fvL"}' \
    > test.out 2>&1
eval_tap $? 33 'CreatePodConfig' test.out

#- 34 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'yYMdnSeF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePodConfig' test.out

#- 35 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name '6QwgDiX1' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 38, "mem_limit": 97, "name": "mE6jxYvb", "params": "u3sQrRKh"}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePodConfig' test.out

#- 36 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'pbh0jHvj' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 67}' \
    > test.out 2>&1
eval_tap $? 36 'AddPort' test.out

#- 37 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'cZ4jTjuI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'DeletePort' test.out

#- 38 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'wPgQqYvs' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "dU3OmGBf", "port": 71}' \
    > test.out 2>&1
eval_tap $? 38 'UpdatePort' test.out

#- 39 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q '66cC7jHD' \
    --sortBy 'updatedAt' \
    --sortDirection 'asc' \
    --count '12' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 39 'ListImages' test.out

#- 40 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI '0KqkdE71' \
    --version 'YZwLjvvr' \
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
    --imageURI 'KP1D9ZeL' \
    --version 'mfvxtsha' \
    --versionPatch 'WA0TFwLB' \
    > test.out 2>&1
eval_tap $? 42 'DeleteImagePatch' test.out

#- 43 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'MizIYEB0' \
    > test.out 2>&1
eval_tap $? 43 'GetImageDetail' test.out

#- 44 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version '7S1eRenf' \
    > test.out 2>&1
eval_tap $? 44 'GetImagePatches' test.out

#- 45 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version '2vR751Aj' \
    --versionPatch 'KVo51TmB' \
    > test.out 2>&1
eval_tap $? 45 'GetImagePatchDetail' test.out

#- 46 AddBuffer
samples/cli/sample-apps Dsmc addBuffer \
    --namespace $AB_NAMESPACE \
    --body '{"AllocCount": 97, "DeploymentName": "8hqnyTue", "JobCount": 25, "JobPriority": 90, "OverrideVersion": "Xi2BLRsG", "Region": "vpiHodh1"}' \
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
    --region 'ISZswYia' \
    --count '16' \
    --offset '9' \
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
    --region 'Nnsn6mYZ' \
    > test.out 2>&1
eval_tap $? 50 'CountServerDetailed' test.out

#- 51 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'ListLocalServer' test.out

#- 52 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'YhOFQG3X' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteLocalServer' test.out

#- 53 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'qcA1wjCv' \
    > test.out 2>&1
eval_tap $? 53 'GetServer' test.out

#- 54 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'tmya2WT8' \
    > test.out 2>&1
eval_tap $? 54 'DeleteServer' test.out

#- 55 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'UlTzAFjh' \
    --withServer 'false' \
    --count '14' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 55 'ListSession' test.out

#- 56 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'HEGhlbuN' \
    > test.out 2>&1
eval_tap $? 56 'CountSession' test.out

#- 57 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'yCEyxXkz' \
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
    --body '{"JobCount": 60, "Region": "3DruZsQ0", "TimeoutSecond": 81, "ZombieCount": 92}' \
    > test.out 2>&1
eval_tap $? 59 'RunZombieCleanerRequestHandler' test.out

#- 60 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "zxXHjz50", "repository": "5DC4TeMt"}' \
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
    --name 'jBPhfyOd' \
    --count '21' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 63 'GetAllDeploymentClient' test.out

#- 64 GetDeploymentClient
samples/cli/sample-apps Dsmc getDeploymentClient \
    --deployment 'rwrEHify' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetDeploymentClient' test.out

#- 65 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment '9H8CV5yo' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 2, "buffer_percent": 87, "configuration": "VG9AtA5y", "enable_region_overrides": true, "extendable_session": false, "game_version": "sKyKEKG2", "max_count": 43, "min_count": 61, "overrides": {"REC54a90": {"buffer_count": 50, "buffer_percent": 68, "configuration": "sV7mg5Qf", "enable_region_overrides": true, "extendable_session": false, "game_version": "hdeLpXhj", "max_count": 59, "min_count": 5, "name": "glfeo0zY", "region_overrides": {"AoTVNeDr": {"buffer_count": 89, "buffer_percent": 79, "max_count": 55, "min_count": 83, "name": "hP5lMfF6", "unlimited": false, "use_buffer_percent": true}, "IRaZqp2C": {"buffer_count": 45, "buffer_percent": 59, "max_count": 26, "min_count": 62, "name": "vaLFVroc", "unlimited": false, "use_buffer_percent": true}, "XcyF9a4n": {"buffer_count": 80, "buffer_percent": 0, "max_count": 79, "min_count": 44, "name": "ydIgkeYc", "unlimited": true, "use_buffer_percent": false}}, "regions": ["8dgXwUml", "n2Ziyxsi", "rhm9oolE"], "session_timeout": 49, "unlimited": false, "use_buffer_percent": false}, "ABqg2IKZ": {"buffer_count": 11, "buffer_percent": 41, "configuration": "boVC6RYk", "enable_region_overrides": false, "extendable_session": true, "game_version": "rMfEDEtw", "max_count": 20, "min_count": 62, "name": "mvlIx0PL", "region_overrides": {"qFswNYkQ": {"buffer_count": 73, "buffer_percent": 44, "max_count": 48, "min_count": 84, "name": "RcC4Akgh", "unlimited": true, "use_buffer_percent": false}, "s2GIDHqe": {"buffer_count": 5, "buffer_percent": 89, "max_count": 22, "min_count": 25, "name": "ng3WoGRd", "unlimited": true, "use_buffer_percent": true}, "LDQAbTiY": {"buffer_count": 44, "buffer_percent": 52, "max_count": 12, "min_count": 57, "name": "EtPve0h7", "unlimited": true, "use_buffer_percent": false}}, "regions": ["NTwxr0Jn", "23JqSyqt", "tr4CpYFB"], "session_timeout": 85, "unlimited": true, "use_buffer_percent": false}, "tV650VQG": {"buffer_count": 42, "buffer_percent": 40, "configuration": "3t2ZJI9Q", "enable_region_overrides": false, "extendable_session": false, "game_version": "Zxy84Ho3", "max_count": 41, "min_count": 25, "name": "eRH4MSwI", "region_overrides": {"R1FdT1KH": {"buffer_count": 50, "buffer_percent": 20, "max_count": 84, "min_count": 41, "name": "rb9smoSr", "unlimited": false, "use_buffer_percent": true}, "Dx17csKi": {"buffer_count": 75, "buffer_percent": 32, "max_count": 88, "min_count": 60, "name": "thP1kEx4", "unlimited": true, "use_buffer_percent": true}, "Uq9UpH5C": {"buffer_count": 12, "buffer_percent": 77, "max_count": 37, "min_count": 71, "name": "byrxygXd", "unlimited": true, "use_buffer_percent": true}}, "regions": ["z9ROFfVM", "xhSKOiCS", "yuG1YscR"], "session_timeout": 99, "unlimited": true, "use_buffer_percent": false}}, "region_overrides": {"AfUUlMgm": {"buffer_count": 42, "buffer_percent": 39, "max_count": 38, "min_count": 82, "name": "D1NYth3l", "unlimited": true, "use_buffer_percent": false}, "eFgohU7T": {"buffer_count": 37, "buffer_percent": 33, "max_count": 70, "min_count": 97, "name": "HwCjnXOo", "unlimited": true, "use_buffer_percent": true}, "pNdAri5q": {"buffer_count": 13, "buffer_percent": 63, "max_count": 12, "min_count": 22, "name": "ut7sM7Nz", "unlimited": false, "use_buffer_percent": true}}, "regions": ["KeKLclLt", "cWC4Wb5o", "TtrtSwSn"], "session_timeout": 50, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 65 'CreateDeploymentClient' test.out

#- 66 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment '7sDM2jJ5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'DeleteDeploymentClient' test.out

#- 67 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '73' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 67 'GetAllPodConfigClient' test.out

#- 68 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'fohoiSxd' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 11, "mem_limit": 72, "params": "QfrQiD7d"}' \
    > test.out 2>&1
eval_tap $? 68 'CreatePodConfigClient' test.out

#- 69 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'qypzjzpm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'DeletePodConfigClient' test.out

#- 70 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '60' \
    --offset '47' \
    --q 'LyY3K1mT' \
    --sortBy 'version' \
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
    --version 'MfdVKzDG' \
    > test.out 2>&1
eval_tap $? 72 'ImageDetailClient' test.out

#- 73 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'ExXJJjbc' \
    --count '92' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 73 'ListServerClient' test.out

#- 74 CountServerDetailedClient
samples/cli/sample-apps Dsmc countServerDetailedClient \
    --namespace $AB_NAMESPACE \
    --region 'BqgciEM6' \
    > test.out 2>&1
eval_tap $? 74 'CountServerDetailedClient' test.out

#- 75 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "7IxmLyj0"}' \
    > test.out 2>&1
eval_tap $? 75 'ServerHeartbeat' test.out

#- 76 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "KBJh2hFr"}' \
    > test.out 2>&1
eval_tap $? 76 'DeregisterLocalServer' test.out

#- 77 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "tzLI523Q", "ip": "eRdjoYZm", "name": "ZzhscQ2I", "port": 10}' \
    > test.out 2>&1
eval_tap $? 77 'RegisterLocalServer' test.out

#- 78 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "1q3kqwUz", "pod_name": "6HH2dUVq"}' \
    > test.out 2>&1
eval_tap $? 78 'RegisterServer' test.out

#- 79 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "dWXlikDP"}' \
    > test.out 2>&1
eval_tap $? 79 'ShutdownServer' test.out

#- 80 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'TaRmEXHN' \
    > test.out 2>&1
eval_tap $? 80 'GetServerSessionTimeout' test.out

#- 81 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'oLFToeRp' \
    > test.out 2>&1
eval_tap $? 81 'GetServerSession' test.out

#- 82 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "fbk9AtNO", "configuration": "vFoo82cK", "deployment": "h04CcaLQ", "game_mode": "e6d31WF6", "matching_allies": [{"matching_parties": [{"party_attributes": {"2xLPTw7S": {}, "g33Q22Sz": {}, "WSIsxjcs": {}}, "party_id": "rjlOK8Yu", "party_members": [{"user_id": "nuxXCznG"}, {"user_id": "u03Bbytx"}, {"user_id": "HZ4l3WV6"}]}, {"party_attributes": {"LU0tQ4IL": {}, "ZbApq0jx": {}, "sIk2nGaX": {}}, "party_id": "5gwHs7tC", "party_members": [{"user_id": "86RhpWvZ"}, {"user_id": "jnswEbuA"}, {"user_id": "oLwu04fV"}]}, {"party_attributes": {"30NbKi9i": {}, "dqvmY5il": {}, "6rbpKS6R": {}}, "party_id": "tVD64zhg", "party_members": [{"user_id": "TBNl5CEY"}, {"user_id": "5E3IHlVp"}, {"user_id": "JDghpD6S"}]}]}, {"matching_parties": [{"party_attributes": {"7LvbINta": {}, "MCnw8ntp": {}, "8qSckzkR": {}}, "party_id": "l7PYwzLf", "party_members": [{"user_id": "FmLaA5Fg"}, {"user_id": "ECUaqwUi"}, {"user_id": "py0RVTJp"}]}, {"party_attributes": {"w8EmDM5q": {}, "FY6mH3y2": {}, "USqXDmHm": {}}, "party_id": "UnsqX54I", "party_members": [{"user_id": "LEilAvhp"}, {"user_id": "b5gwrY7V"}, {"user_id": "cxXAGYgE"}]}, {"party_attributes": {"6cxsvRC5": {}, "g1c6i7Rg": {}, "KBbid3HC": {}}, "party_id": "4nGgktrz", "party_members": [{"user_id": "3M2C3EBD"}, {"user_id": "CzCnVxbH"}, {"user_id": "y1lP4UrF"}]}]}, {"matching_parties": [{"party_attributes": {"EVqKhWNJ": {}, "5lcDUYG2": {}, "XYxXUdis": {}}, "party_id": "DSvJ8xKn", "party_members": [{"user_id": "djjXMGq1"}, {"user_id": "7zRilCA0"}, {"user_id": "WvXqGgkY"}]}, {"party_attributes": {"WSzcTOCm": {}, "yX9Ug1fK": {}, "QSOth5iI": {}}, "party_id": "vK6dibwM", "party_members": [{"user_id": "ngI2i7xr"}, {"user_id": "A5hMuROc"}, {"user_id": "CBqQYdZF"}]}, {"party_attributes": {"QHQ5yaA6": {}, "2JHWFmZy": {}, "8lwyZlC5": {}}, "party_id": "4dP2Sd3a", "party_members": [{"user_id": "AzcnhUJS"}, {"user_id": "lx57H80U"}, {"user_id": "sXjXSwtc"}]}]}], "namespace": "iufGxXQA", "notification_payload": {}, "pod_name": "NiBYylg5", "region": "KTktJdYx", "session_id": "WYO4kJYD"}' \
    > test.out 2>&1
eval_tap $? 82 'CreateSession' test.out

#- 83 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"game_mode": "G5SLkcD9", "matching_allies": [{"matching_parties": [{"party_attributes": {"Z2HtUpJa": {}, "7KnQZiCA": {}, "vDQhPCtG": {}}, "party_id": "U1UMGt0u", "party_members": [{"user_id": "WbfX8Gtg"}, {"user_id": "tOHFYLpw"}, {"user_id": "UiVzTbpY"}]}, {"party_attributes": {"a4QSuy0O": {}, "z4eKk3SO": {}, "tsQA34IU": {}}, "party_id": "FcdKZsF0", "party_members": [{"user_id": "lrurb7WO"}, {"user_id": "JwAh5Fkm"}, {"user_id": "M2zsHi84"}]}, {"party_attributes": {"X2bNG7xW": {}, "2azwHPZ4": {}, "B5mUhgxi": {}}, "party_id": "F2hIqahc", "party_members": [{"user_id": "iyJHQM8X"}, {"user_id": "CdOixQhl"}, {"user_id": "4yi6WWvg"}]}]}, {"matching_parties": [{"party_attributes": {"61NxISeN": {}, "Xm7Nyr3D": {}, "1aUMbpGC": {}}, "party_id": "HtsyVG25", "party_members": [{"user_id": "8nJiG6Sv"}, {"user_id": "R1AAhXpv"}, {"user_id": "JqmQ2nrw"}]}, {"party_attributes": {"DouhNSR6": {}, "pn7ubXLL": {}, "5tGciWcn": {}}, "party_id": "OuE7Kamz", "party_members": [{"user_id": "gmKZyY6t"}, {"user_id": "EXvvuZy7"}, {"user_id": "Ja4AjAE5"}]}, {"party_attributes": {"vJcuoyDn": {}, "eYltLPDn": {}, "aJ1s7eRO": {}}, "party_id": "t6kMLb2W", "party_members": [{"user_id": "qOc3UqAK"}, {"user_id": "QxhYdh37"}, {"user_id": "2sAW3Kke"}]}]}, {"matching_parties": [{"party_attributes": {"WdDwaT1o": {}, "U8TFL8Sl": {}, "HhtdVAav": {}}, "party_id": "t8z5TxMu", "party_members": [{"user_id": "omIgsckt"}, {"user_id": "m56zuvWa"}, {"user_id": "QW3R8llf"}]}, {"party_attributes": {"llQpeEFV": {}, "6NaGc5gu": {}, "I6qu7zaj": {}}, "party_id": "AxGy2jbc", "party_members": [{"user_id": "zqeKfKCn"}, {"user_id": "9D3lUBym"}, {"user_id": "AhenX76x"}]}, {"party_attributes": {"m1dZamG6": {}, "Rlaak8lw": {}, "adX8imVB": {}}, "party_id": "H1kHtVls", "party_members": [{"user_id": "m3rUiQOZ"}, {"user_id": "foeRS3Hv"}, {"user_id": "8DS8Y7M4"}]}]}], "namespace": "CgYjFWXd", "notification_payload": {}, "session_id": "QTu12yDX"}' \
    > test.out 2>&1
eval_tap $? 83 'ClaimServer' test.out

#- 84 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'HaUNgDg0' \
    > test.out 2>&1
eval_tap $? 84 'GetSession' test.out

#- 85 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID '9pxY8bdz' \
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
    --region 'JzBEGmik' \
    > test.out 2>&1
eval_tap $? 88 'ListProvidersByRegion' test.out

#- 89 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 89 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE