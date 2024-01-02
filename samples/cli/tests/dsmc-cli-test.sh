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
echo "1..82"

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
    --body '{"artifactPath": "224G1hFV", "coreDumpEnabled": true, "image": "Pi3w6Ic5", "imageReplicationsMap": {"NcWIeR0h": {"failure_code": "hQh9Iuls", "region": "Cv3PJdtd", "status": "SzA9HmVa", "uri": "J6Q2Ejjc"}, "afxRhp6M": {"failure_code": "MZnVbi0G", "region": "z9xMxMAx", "status": "FNlVIrs5", "uri": "FReEM4q8"}, "l2dV4ZoF": {"failure_code": "HBnQwmIR", "region": "rEZRfgKv", "status": "BpmqXmf1", "uri": "Sm0FG2hH"}}, "namespace": "n8sjjWd9", "patchVersion": "5OA08sqd", "persistent": false, "version": "j1EAIM8r"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "GBkd4O78", "coreDumpEnabled": true, "dockerPath": "93MdKqvA", "image": "77cXKF2y", "imageSize": 0, "namespace": "N8wpPU8k", "persistent": false, "ulimitFileSize": 99, "version": "zwoz1Ltl"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "b2HB0pxf", "coreDumpEnabled": true, "dockerPath": "HMCBuGqX", "image": "POrJOq19", "imageSize": 95, "namespace": "zj6IjFI2", "patchVersion": "7JXwEDI1", "persistent": true, "ulimitFileSize": 32, "uploaderFlag": "cv9XzAqr", "version": "iBn5RjS9"}' \
    > test.out 2>&1
eval_tap $? 7 'CreateImagePatch' test.out

#- 8 GetLowestInstanceSpec
samples/cli/sample-apps Dsmc getLowestInstanceSpec \
    > test.out 2>&1
eval_tap $? 8 'GetLowestInstanceSpec' test.out

#- 9 GetConfig
samples/cli/sample-apps Dsmc getConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetConfig' test.out

#- 10 CreateConfig
samples/cli/sample-apps Dsmc createConfig \
    --namespace $AB_NAMESPACE \
    --body '{"claim_timeout": 13, "creation_timeout": 7, "default_version": "2elYEIq1", "port": 43, "ports": {"3UV9Azk8": 58, "adMpdaq4": 11, "YNKitfQ8": 87}, "protocol": "2Y7uJdR1", "providers": ["LRcDBuQT", "btwcRLUC", "nQyw64pR"], "session_timeout": 91, "unreachable_timeout": 68}' \
    > test.out 2>&1
eval_tap $? 10 'CreateConfig' test.out

#- 11 DeleteConfig
samples/cli/sample-apps Dsmc deleteConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'DeleteConfig' test.out

#- 12 UpdateConfig
samples/cli/sample-apps Dsmc updateConfig \
    --namespace $AB_NAMESPACE \
    --body '{"claim_timeout": 42, "creation_timeout": 58, "default_version": "1btsJuAs", "port": 70, "protocol": "jaC4C6lq", "providers": ["xTU8Qzk9", "zxOuzuSe", "h9jeETTB"], "session_timeout": 33, "unreachable_timeout": 85}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateConfig' test.out

#- 13 ClearCache
samples/cli/sample-apps Dsmc clearCache \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'ClearCache' test.out

#- 14 GetAllDeployment
samples/cli/sample-apps Dsmc getAllDeployment \
    --namespace $AB_NAMESPACE \
    --name 'DRLHFI6d' \
    --count '87' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'XIsIjPx1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'AXsrhYAp' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 99, "buffer_percent": 42, "configuration": "9BUHcYVX", "enable_region_overrides": true, "extendable_session": false, "game_version": "Trnhe8LF", "max_count": 72, "min_count": 93, "overrides": {"wb8rtt1q": {"buffer_count": 20, "buffer_percent": 6, "configuration": "dquuPHE1", "enable_region_overrides": false, "extendable_session": true, "game_version": "A7mZzXd4", "max_count": 91, "min_count": 9, "name": "d0rTrtZA", "region_overrides": {"fMOheUX6": {"buffer_count": 8, "buffer_percent": 93, "max_count": 44, "min_count": 32, "name": "cqql4sHt", "unlimited": false, "use_buffer_percent": true}, "d0h4pwkQ": {"buffer_count": 75, "buffer_percent": 0, "max_count": 18, "min_count": 96, "name": "D9xENWCt", "unlimited": false, "use_buffer_percent": false}, "Hi5jeOsV": {"buffer_count": 84, "buffer_percent": 97, "max_count": 3, "min_count": 83, "name": "AbDMypCM", "unlimited": false, "use_buffer_percent": true}}, "regions": ["cQq140Cn", "OZABfdW8", "jFdRABlC"], "session_timeout": 44, "unlimited": false, "use_buffer_percent": true}, "A62quriX": {"buffer_count": 13, "buffer_percent": 21, "configuration": "N9Zuxntv", "enable_region_overrides": true, "extendable_session": true, "game_version": "aewkSeVY", "max_count": 86, "min_count": 38, "name": "73fu2mcg", "region_overrides": {"XSsqKcFQ": {"buffer_count": 86, "buffer_percent": 96, "max_count": 12, "min_count": 67, "name": "wBOIRKSU", "unlimited": true, "use_buffer_percent": false}, "R7aAUk0L": {"buffer_count": 33, "buffer_percent": 70, "max_count": 75, "min_count": 80, "name": "E0to6H4l", "unlimited": true, "use_buffer_percent": false}, "K2yy47Ks": {"buffer_count": 66, "buffer_percent": 76, "max_count": 58, "min_count": 19, "name": "rPZAkxaQ", "unlimited": true, "use_buffer_percent": true}}, "regions": ["pSdQTwxZ", "wJOjTS1v", "U9eJuj5k"], "session_timeout": 82, "unlimited": false, "use_buffer_percent": false}, "bQSFLY8k": {"buffer_count": 92, "buffer_percent": 30, "configuration": "l73MVqjY", "enable_region_overrides": true, "extendable_session": false, "game_version": "uSVaCRtc", "max_count": 71, "min_count": 41, "name": "TfqUUFuK", "region_overrides": {"dHJ15YY6": {"buffer_count": 35, "buffer_percent": 40, "max_count": 96, "min_count": 43, "name": "mTDQg3NV", "unlimited": false, "use_buffer_percent": false}, "0hLsrxBZ": {"buffer_count": 99, "buffer_percent": 44, "max_count": 13, "min_count": 7, "name": "uA6gGGg8", "unlimited": true, "use_buffer_percent": true}, "3ikdN6V0": {"buffer_count": 3, "buffer_percent": 71, "max_count": 24, "min_count": 59, "name": "3tXhuXx0", "unlimited": false, "use_buffer_percent": false}}, "regions": ["arXkebHZ", "CgAcZHaK", "j9zLsYOt"], "session_timeout": 10, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"2GHUpyeZ": {"buffer_count": 52, "buffer_percent": 90, "max_count": 99, "min_count": 24, "name": "EoeskfWz", "unlimited": false, "use_buffer_percent": false}, "6xsmzmQT": {"buffer_count": 32, "buffer_percent": 83, "max_count": 89, "min_count": 72, "name": "l1CBMclL", "unlimited": false, "use_buffer_percent": true}, "X3vrCduv": {"buffer_count": 77, "buffer_percent": 43, "max_count": 67, "min_count": 7, "name": "0ChWk84D", "unlimited": false, "use_buffer_percent": true}}, "regions": ["1uOyCJ2t", "thps4FKq", "NotvnMaW"], "session_timeout": 88, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'Z2rs8hXD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'bvJhyc47' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 86, "buffer_percent": 35, "configuration": "yMrZw0DP", "enable_region_overrides": false, "extendable_session": true, "game_version": "3JUTPTSM", "max_count": 69, "min_count": 10, "regions": ["E5WOh0sx", "2wbdPoOl", "gN6y5b73"], "session_timeout": 14, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment '6OrzSIP3' \
    --namespace $AB_NAMESPACE \
    --region 'wJyCG1OL' \
    --body '{"buffer_count": 65, "buffer_percent": 39, "max_count": 53, "min_count": 70, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment '1BIdx4Kb' \
    --namespace $AB_NAMESPACE \
    --region '370yOuCr' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'ub5SAi6y' \
    --namespace $AB_NAMESPACE \
    --region 'jsvhmr5Q' \
    --body '{"buffer_count": 4, "buffer_percent": 53, "max_count": 77, "min_count": 81, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'mDhNIlHO' \
    --namespace $AB_NAMESPACE \
    --version 'TdsMaOEC' \
    --body '{"buffer_count": 83, "buffer_percent": 91, "configuration": "JCzaoxIo", "enable_region_overrides": false, "extendable_session": false, "game_version": "b2vS70Ue", "max_count": 36, "min_count": 24, "region_overrides": {"7ZFScdSE": {"buffer_count": 80, "buffer_percent": 77, "max_count": 34, "min_count": 45, "name": "WCwHacTV", "unlimited": true, "use_buffer_percent": false}, "JZoQvZO8": {"buffer_count": 67, "buffer_percent": 49, "max_count": 42, "min_count": 89, "name": "RNIEWUn9", "unlimited": true, "use_buffer_percent": true}, "PZegQs8j": {"buffer_count": 27, "buffer_percent": 58, "max_count": 82, "min_count": 23, "name": "zrcwXZ6B", "unlimited": false, "use_buffer_percent": false}}, "regions": ["Kh10kFgp", "DCZTDIop", "tw4Ofavw"], "session_timeout": 10, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'ytxIkitN' \
    --namespace $AB_NAMESPACE \
    --version 'wBQsyadq' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'Aj7mpn16' \
    --namespace $AB_NAMESPACE \
    --version '8IF6cx2I' \
    --body '{"buffer_count": 10, "buffer_percent": 88, "configuration": "3sQRfE5m", "enable_region_overrides": true, "game_version": "eARQZZtL", "max_count": 83, "min_count": 58, "regions": ["PwQn944C", "jNnsgW2k", "QsM8DS2q"], "session_timeout": 19, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'mfpMOdDC' \
    --namespace $AB_NAMESPACE \
    --region 'jXfTktjJ' \
    --version 'Qwohl1LF' \
    --body '{"buffer_count": 9, "buffer_percent": 87, "max_count": 75, "min_count": 45, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment '70NZ5zfL' \
    --namespace $AB_NAMESPACE \
    --region 'ZcdJ1ktb' \
    --version 'fdeeMTvE' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment '40HEuE1M' \
    --namespace $AB_NAMESPACE \
    --region '3Tp5wCww' \
    --version 'FHjBnHD5' \
    --body '{"buffer_count": 78, "buffer_percent": 46, "max_count": 72, "min_count": 40, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '78' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'MF0ULUFE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name '3gdShs6Y' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 92, "mem_limit": 40, "params": "1QQXaeLO"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'rKfKXUu5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'a1iUP9jj' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 41, "mem_limit": 8, "name": "x7crcS8s", "params": "ZLcmzaTU"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name '7mWIXpdB' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 3}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name '5fQ2jo9m' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'qfXfgyVI' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "DK1n9ubk", "port": 45}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'eqRfStzB' \
    --sortBy 'version' \
    --sortDirection 'desc' \
    --count '24' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'e0O8T43n' \
    --version 'pn40JhO4' \
    > test.out 2>&1
eval_tap $? 37 'DeleteImage' test.out

#- 38 ExportImages
samples/cli/sample-apps Dsmc exportImages \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'ExportImages' test.out

#- 39 GetImageLimit
samples/cli/sample-apps Dsmc getImageLimit \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 39 'GetImageLimit' test.out

#- 40 DeleteImagePatch
samples/cli/sample-apps Dsmc deleteImagePatch \
    --namespace $AB_NAMESPACE \
    --imageURI 'SqRsX3op' \
    --version 'SY5IuhUL' \
    --versionPatch 'jdu3POIe' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'QACCgDOk' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'vEiejPMS' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'asc7tH6K' \
    --versionPatch 'djSVs5jE' \
    > test.out 2>&1
eval_tap $? 43 'GetImagePatchDetail' test.out

#- 44 GetRepository
samples/cli/sample-apps Dsmc getRepository \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'GetRepository' test.out

#- 45 ListServer
samples/cli/sample-apps Dsmc listServer \
    --namespace $AB_NAMESPACE \
    --region 'n01IICS6' \
    --count '40' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 45 'ListServer' test.out

#- 46 CountServer
samples/cli/sample-apps Dsmc countServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'CountServer' test.out

#- 47 CountServerDetailed
samples/cli/sample-apps Dsmc countServerDetailed \
    --namespace $AB_NAMESPACE \
    --region 'EoJyJjdi' \
    > test.out 2>&1
eval_tap $? 47 'CountServerDetailed' test.out

#- 48 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'ListLocalServer' test.out

#- 49 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'ZVcAXi71' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'DeleteLocalServer' test.out

#- 50 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'NqTwImyr' \
    > test.out 2>&1
eval_tap $? 50 'GetServer' test.out

#- 51 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'hsg32SZw' \
    > test.out 2>&1
eval_tap $? 51 'DeleteServer' test.out

#- 52 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'a068zPT6' \
    --withServer 'true' \
    --count '75' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 52 'ListSession' test.out

#- 53 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'SDqEMtKZ' \
    > test.out 2>&1
eval_tap $? 53 'CountSession' test.out

#- 54 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'sRhAoeDV' \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "AsGQ0tH1", "repository": "lXxZrHW2"}' \
    > test.out 2>&1
eval_tap $? 55 'CreateRepository' test.out

#- 56 ExportConfigV1
samples/cli/sample-apps Dsmc exportConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'ExportConfigV1' test.out

#- 57 ImportConfigV1
samples/cli/sample-apps Dsmc importConfigV1 \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 57 'ImportConfigV1' test.out

#- 58 GetAllDeploymentClient
samples/cli/sample-apps Dsmc getAllDeploymentClient \
    --namespace $AB_NAMESPACE \
    --name 'o9Iag92v' \
    --count '62' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 58 'GetAllDeploymentClient' test.out

#- 59 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment 'CJazBnMw' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 89, "buffer_percent": 80, "configuration": "BoKWIpJT", "enable_region_overrides": true, "extendable_session": true, "game_version": "YutDFvB6", "max_count": 87, "min_count": 61, "overrides": {"IoBzxaLI": {"buffer_count": 48, "buffer_percent": 5, "configuration": "HKhzEwzf", "enable_region_overrides": false, "extendable_session": true, "game_version": "RjLRNzXb", "max_count": 82, "min_count": 77, "name": "YTHyaLoT", "region_overrides": {"KA9gKMvL": {"buffer_count": 97, "buffer_percent": 57, "max_count": 21, "min_count": 63, "name": "OSDf8ln9", "unlimited": true, "use_buffer_percent": false}, "PXHYxKNi": {"buffer_count": 87, "buffer_percent": 29, "max_count": 43, "min_count": 84, "name": "E9b1sACz", "unlimited": false, "use_buffer_percent": false}, "VTqs3XXO": {"buffer_count": 64, "buffer_percent": 18, "max_count": 8, "min_count": 53, "name": "EcY3Dlcx", "unlimited": false, "use_buffer_percent": true}}, "regions": ["XY6GEYpk", "L6HyeSOz", "eXkkD0po"], "session_timeout": 81, "unlimited": true, "use_buffer_percent": false}, "lhpdkuzS": {"buffer_count": 34, "buffer_percent": 91, "configuration": "oobJM6SN", "enable_region_overrides": false, "extendable_session": true, "game_version": "lZpIMKIL", "max_count": 65, "min_count": 37, "name": "HrtUFs8w", "region_overrides": {"Rtscaix5": {"buffer_count": 51, "buffer_percent": 65, "max_count": 94, "min_count": 15, "name": "3f77tF0d", "unlimited": true, "use_buffer_percent": true}, "xWvtDuMg": {"buffer_count": 27, "buffer_percent": 5, "max_count": 15, "min_count": 29, "name": "n3Sunuwh", "unlimited": true, "use_buffer_percent": false}, "mSwphBjR": {"buffer_count": 43, "buffer_percent": 30, "max_count": 16, "min_count": 66, "name": "XbreZ8zy", "unlimited": true, "use_buffer_percent": true}}, "regions": ["K2kuaQxl", "M5KpiPWB", "qUkXfoJA"], "session_timeout": 34, "unlimited": false, "use_buffer_percent": false}, "RxA7SnUg": {"buffer_count": 30, "buffer_percent": 96, "configuration": "ysoVAPel", "enable_region_overrides": false, "extendable_session": false, "game_version": "eo6NUW5z", "max_count": 22, "min_count": 49, "name": "RZrBPoXa", "region_overrides": {"h0nleMey": {"buffer_count": 36, "buffer_percent": 69, "max_count": 19, "min_count": 2, "name": "67hIih7F", "unlimited": true, "use_buffer_percent": true}, "xp3EFntx": {"buffer_count": 28, "buffer_percent": 14, "max_count": 75, "min_count": 98, "name": "46WZyRFS", "unlimited": true, "use_buffer_percent": true}, "qXwdNRQw": {"buffer_count": 42, "buffer_percent": 23, "max_count": 19, "min_count": 43, "name": "DnjcRE1w", "unlimited": false, "use_buffer_percent": true}}, "regions": ["BRzH5VWj", "IQnMti5E", "DNYVkj6f"], "session_timeout": 22, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"1uzgzEPC": {"buffer_count": 99, "buffer_percent": 26, "max_count": 55, "min_count": 23, "name": "Qj3cYq8T", "unlimited": false, "use_buffer_percent": false}, "pr8va96d": {"buffer_count": 13, "buffer_percent": 43, "max_count": 2, "min_count": 31, "name": "GOvhy73i", "unlimited": true, "use_buffer_percent": true}, "9ly6ooJi": {"buffer_count": 17, "buffer_percent": 72, "max_count": 50, "min_count": 58, "name": "57ZpCVnz", "unlimited": true, "use_buffer_percent": false}}, "regions": ["ZlAMx3Bu", "XU3XZp52", "zUFsU2QZ"], "session_timeout": 43, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 59 'CreateDeploymentClient' test.out

#- 60 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'hrCOaqkb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteDeploymentClient' test.out

#- 61 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '64' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 61 'GetAllPodConfigClient' test.out

#- 62 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'VEabBbvL' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 43, "mem_limit": 29, "params": "x2uzbNPc"}' \
    > test.out 2>&1
eval_tap $? 62 'CreatePodConfigClient' test.out

#- 63 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'mtJQTuPO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeletePodConfigClient' test.out

#- 64 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '49' \
    --offset '84' \
    --q '4bzkK6Py' \
    --sortBy 'version' \
    --sortDirection 'asc' \
    > test.out 2>&1
eval_tap $? 64 'ListImagesClient' test.out

#- 65 ImageLimitClient
samples/cli/sample-apps Dsmc imageLimitClient \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'ImageLimitClient' test.out

#- 66 ImageDetailClient
samples/cli/sample-apps Dsmc imageDetailClient \
    --namespace $AB_NAMESPACE \
    --version 'FH7FqvSq' \
    > test.out 2>&1
eval_tap $? 66 'ImageDetailClient' test.out

#- 67 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'mK5WJfMa' \
    --count '59' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 67 'ListServerClient' test.out

#- 68 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "Rr4Zu4zI"}' \
    > test.out 2>&1
eval_tap $? 68 'ServerHeartbeat' test.out

#- 69 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "1SuK6GDe"}' \
    > test.out 2>&1
eval_tap $? 69 'DeregisterLocalServer' test.out

#- 70 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "mauBlnZr", "ip": "I0JqbKwX", "name": "ScHvniwJ", "port": 87}' \
    > test.out 2>&1
eval_tap $? 70 'RegisterLocalServer' test.out

#- 71 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "2vT8JXlZ", "pod_name": "QPwpkimy"}' \
    > test.out 2>&1
eval_tap $? 71 'RegisterServer' test.out

#- 72 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": false, "pod_name": "e2dzALeH"}' \
    > test.out 2>&1
eval_tap $? 72 'ShutdownServer' test.out

#- 73 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName '10CCbZLj' \
    > test.out 2>&1
eval_tap $? 73 'GetServerSessionTimeout' test.out

#- 74 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'nnB48sMx' \
    > test.out 2>&1
eval_tap $? 74 'GetServerSession' test.out

#- 75 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "uGeTy5hZ", "configuration": "AkjUoN5L", "deployment": "czcgl7ZS", "game_mode": "XpmZFCT2", "matching_allies": [{"matching_parties": [{"party_attributes": {"LYo1SXbe": {}, "gGDT8iIy": {}, "09iVU6yy": {}}, "party_id": "dr9dUSeJ", "party_members": [{"user_id": "NtRgPDTR"}, {"user_id": "Mg4BIjIN"}, {"user_id": "3bsuGpaF"}]}, {"party_attributes": {"qrsK2qJC": {}, "2NkNv4Pp": {}, "e0QNWbnq": {}}, "party_id": "ZpHzRsSK", "party_members": [{"user_id": "k7C3rhAp"}, {"user_id": "o9wXT6D9"}, {"user_id": "XNxaPop9"}]}, {"party_attributes": {"oNqQit5T": {}, "wr7pAM75": {}, "SM4XBxDy": {}}, "party_id": "zND5Tb8l", "party_members": [{"user_id": "Ov9nD50r"}, {"user_id": "sBHeyDUL"}, {"user_id": "KGsM8EQf"}]}]}, {"matching_parties": [{"party_attributes": {"qae812UI": {}, "Anp8dRzz": {}, "N8eYlOhl": {}}, "party_id": "zXLuHtVM", "party_members": [{"user_id": "MMEfCH07"}, {"user_id": "VAElrhAt"}, {"user_id": "eNLjgZIh"}]}, {"party_attributes": {"041PhHVJ": {}, "rfoJR5bU": {}, "S2ETedqW": {}}, "party_id": "wsB9LNzt", "party_members": [{"user_id": "MSpRTfp0"}, {"user_id": "zrqgaaX7"}, {"user_id": "XpOAz2rR"}]}, {"party_attributes": {"VfU18r3c": {}, "TqIP0Gb0": {}, "KHcWONla": {}}, "party_id": "a1zhGoKl", "party_members": [{"user_id": "rpknakvY"}, {"user_id": "V2vk35W7"}, {"user_id": "i89uB1ia"}]}]}, {"matching_parties": [{"party_attributes": {"kg7WB1Nn": {}, "g4lfNzR4": {}, "NNKgCRTC": {}}, "party_id": "n1NMgBlF", "party_members": [{"user_id": "KwqPcMrG"}, {"user_id": "eRPY3Rb5"}, {"user_id": "PqgQX6h2"}]}, {"party_attributes": {"J7udlqrC": {}, "XDdmriv7": {}, "xoAz6Ou3": {}}, "party_id": "zRHnWlqP", "party_members": [{"user_id": "K1LyWqCc"}, {"user_id": "ZsvQtwTU"}, {"user_id": "SVbfnYi3"}]}, {"party_attributes": {"1595wPZX": {}, "A33FjWeB": {}, "FmkxO7BP": {}}, "party_id": "fxHF036n", "party_members": [{"user_id": "go8Vg6Hu"}, {"user_id": "luBvRzs5"}, {"user_id": "fdVC1K22"}]}]}], "namespace": "NWKtipVY", "notification_payload": {}, "pod_name": "lxbih4mA", "region": "aH0AEocB", "session_id": "IgnFwZpg"}' \
    > test.out 2>&1
eval_tap $? 75 'CreateSession' test.out

#- 76 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "yofsJNQc"}' \
    > test.out 2>&1
eval_tap $? 76 'ClaimServer' test.out

#- 77 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'I77iIYQt' \
    > test.out 2>&1
eval_tap $? 77 'GetSession' test.out

#- 78 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'LCMcyWNu' \
    > test.out 2>&1
eval_tap $? 78 'CancelSession' test.out

#- 79 GetDefaultProvider
samples/cli/sample-apps Dsmc getDefaultProvider \
    > test.out 2>&1
eval_tap $? 79 'GetDefaultProvider' test.out

#- 80 ListProviders
samples/cli/sample-apps Dsmc listProviders \
    > test.out 2>&1
eval_tap $? 80 'ListProviders' test.out

#- 81 ListProvidersByRegion
samples/cli/sample-apps Dsmc listProvidersByRegion \
    --region 'SxncjHeh' \
    > test.out 2>&1
eval_tap $? 81 'ListProvidersByRegion' test.out

#- 82 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 82 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE