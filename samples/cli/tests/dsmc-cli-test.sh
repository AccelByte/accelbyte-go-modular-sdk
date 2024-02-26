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
    --body '{"artifactPath": "tTa8Xeml", "coreDumpEnabled": false, "image": "aiCm07fQ", "imageReplicationsMap": {"cBpRd8QT": {"failure_code": "24RW8z3t", "region": "kft47JiT", "status": "knVXphwy", "uri": "KTjQn4eA"}, "xAubeFsF": {"failure_code": "cUUj3dn2", "region": "0Qcda6lE", "status": "SDnA3YU0", "uri": "30B8kLkz"}, "zRJXpSpw": {"failure_code": "YYndFKjs", "region": "OWPD9vfD", "status": "D3eXtl0D", "uri": "7PuRFUqM"}}, "namespace": "ki2xwwaB", "patchVersion": "xl9U6LX5", "persistent": true, "version": "tGBB46om"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "WHLngJfE", "coreDumpEnabled": false, "dockerPath": "gZ0k1p7Y", "image": "TzYui1K5", "imageSize": 68, "namespace": "T3WNseU1", "persistent": false, "ulimitFileSize": 1, "version": "ceUmAyoW"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "12EqIbeY", "coreDumpEnabled": true, "dockerPath": "RXHrWxnY", "image": "dZeQFZCS", "imageSize": 32, "namespace": "ogSTdymp", "patchVersion": "O0iWmpFW", "persistent": false, "ulimitFileSize": 17, "uploaderFlag": "liKe5aJj", "version": "bZPFQ5Or"}' \
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
    --body '{"claim_timeout": 21, "creation_timeout": 88, "default_version": "O2QUrfqq", "port": 82, "ports": {"T5exGPCf": 58, "3u8FkpxG": 58, "G6z5Fwx5": 60}, "protocol": "9fNFuf9C", "providers": ["lt0pWB7w", "Jl4kodpf", "QTjyYXXB"], "session_timeout": 66, "unreachable_timeout": 57}' \
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
    --body '{"claim_timeout": 88, "creation_timeout": 71, "default_version": "fmZK2Gnc", "port": 27, "protocol": "W3pO6MX5", "providers": ["snL4UseT", "mzAjOZ4d", "ppa1dMXp"], "session_timeout": 43, "unreachable_timeout": 50}' \
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
    --name 'AoCMfbgr' \
    --count '35' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'tl870Ebe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'UydzQPp9' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 88, "buffer_percent": 35, "configuration": "ghj9ni5p", "enable_region_overrides": true, "extendable_session": true, "game_version": "XXHcuA1j", "max_count": 100, "min_count": 9, "overrides": {"05DnxRW2": {"buffer_count": 41, "buffer_percent": 88, "configuration": "qjVJT9N9", "enable_region_overrides": true, "extendable_session": true, "game_version": "96diWbIH", "max_count": 24, "min_count": 9, "name": "qKqsZQHd", "region_overrides": {"2gu4CHjX": {"buffer_count": 63, "buffer_percent": 41, "max_count": 92, "min_count": 86, "name": "DBOu02UT", "unlimited": true, "use_buffer_percent": false}, "gFnmnGHQ": {"buffer_count": 46, "buffer_percent": 79, "max_count": 79, "min_count": 41, "name": "wnZyzAgb", "unlimited": false, "use_buffer_percent": false}, "iSRxTlGf": {"buffer_count": 37, "buffer_percent": 49, "max_count": 7, "min_count": 78, "name": "JTIz2Nb7", "unlimited": true, "use_buffer_percent": true}}, "regions": ["0ED4WC9Z", "F3NAZsh1", "uzB80DAT"], "session_timeout": 78, "unlimited": false, "use_buffer_percent": true}, "aDvZw3NV": {"buffer_count": 86, "buffer_percent": 32, "configuration": "4ugGzYHM", "enable_region_overrides": true, "extendable_session": false, "game_version": "5EnEZ9kC", "max_count": 83, "min_count": 91, "name": "GiKf8zL0", "region_overrides": {"3JJC91kd": {"buffer_count": 2, "buffer_percent": 72, "max_count": 18, "min_count": 3, "name": "RfRNEnYe", "unlimited": true, "use_buffer_percent": false}, "C2GwRe0s": {"buffer_count": 34, "buffer_percent": 43, "max_count": 86, "min_count": 21, "name": "WZx0VkLe", "unlimited": true, "use_buffer_percent": false}, "RdPuwE6b": {"buffer_count": 29, "buffer_percent": 9, "max_count": 1, "min_count": 72, "name": "YSPIySUc", "unlimited": false, "use_buffer_percent": true}}, "regions": ["ACJSBECH", "PlGDiGwu", "mh5dMsEe"], "session_timeout": 99, "unlimited": true, "use_buffer_percent": false}, "0TUrgLvl": {"buffer_count": 72, "buffer_percent": 66, "configuration": "Tro3RheR", "enable_region_overrides": false, "extendable_session": false, "game_version": "9Vx2z3E2", "max_count": 16, "min_count": 86, "name": "PcJYTX4W", "region_overrides": {"76QooEWi": {"buffer_count": 35, "buffer_percent": 20, "max_count": 97, "min_count": 37, "name": "lUTC7AsL", "unlimited": true, "use_buffer_percent": false}, "FPeJeePb": {"buffer_count": 33, "buffer_percent": 97, "max_count": 75, "min_count": 5, "name": "1sqa2Y4q", "unlimited": true, "use_buffer_percent": false}, "rgeUTna9": {"buffer_count": 54, "buffer_percent": 44, "max_count": 32, "min_count": 63, "name": "2ccXXbuo", "unlimited": true, "use_buffer_percent": true}}, "regions": ["WvqfKpyk", "erEJ8T0z", "aeT6o0cY"], "session_timeout": 36, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"TePh9NQb": {"buffer_count": 32, "buffer_percent": 21, "max_count": 93, "min_count": 81, "name": "wb3NDK2v", "unlimited": false, "use_buffer_percent": false}, "rVxxvfG3": {"buffer_count": 42, "buffer_percent": 51, "max_count": 36, "min_count": 5, "name": "Nm6VZ5HE", "unlimited": false, "use_buffer_percent": true}, "BDbt4Ngd": {"buffer_count": 47, "buffer_percent": 42, "max_count": 96, "min_count": 22, "name": "RvLcq4un", "unlimited": true, "use_buffer_percent": false}}, "regions": ["MQ26zXFR", "YhljYxfE", "VaKpRWoX"], "session_timeout": 79, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'I7ZAJwBx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'fYQCNU1K' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 6, "buffer_percent": 62, "configuration": "O9hyjOqM", "enable_region_overrides": true, "extendable_session": true, "game_version": "6YppmvvE", "max_count": 54, "min_count": 77, "regions": ["lWuOhKa3", "OCYOpsk9", "ayGvCj5h"], "session_timeout": 65, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'K4CCJjYW' \
    --namespace $AB_NAMESPACE \
    --region 'wZD3srDG' \
    --body '{"buffer_count": 36, "buffer_percent": 31, "max_count": 97, "min_count": 1, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'gb4kCCgF' \
    --namespace $AB_NAMESPACE \
    --region 'lh2Qua9n' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'kTRMWvov' \
    --namespace $AB_NAMESPACE \
    --region '8VIGrZQr' \
    --body '{"buffer_count": 63, "buffer_percent": 91, "max_count": 23, "min_count": 92, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'cXy1YhY5' \
    --namespace $AB_NAMESPACE \
    --version 'iU18xEVG' \
    --body '{"buffer_count": 45, "buffer_percent": 8, "configuration": "ECvf5ECU", "enable_region_overrides": false, "extendable_session": true, "game_version": "iTcdvxDT", "max_count": 35, "min_count": 7, "region_overrides": {"RbfDlMcm": {"buffer_count": 15, "buffer_percent": 74, "max_count": 16, "min_count": 51, "name": "2ZoqCXdV", "unlimited": true, "use_buffer_percent": false}, "iVcqOldK": {"buffer_count": 12, "buffer_percent": 32, "max_count": 4, "min_count": 51, "name": "UXM39nrL", "unlimited": true, "use_buffer_percent": true}, "Jy3ePdH0": {"buffer_count": 28, "buffer_percent": 80, "max_count": 0, "min_count": 11, "name": "gIGb1d9r", "unlimited": true, "use_buffer_percent": true}}, "regions": ["Sc6tzKOs", "DWRXs6dl", "9oJFRIG8"], "session_timeout": 45, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'MecRZSba' \
    --namespace $AB_NAMESPACE \
    --version 'hZEXHb5c' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'kglwBvxD' \
    --namespace $AB_NAMESPACE \
    --version 'XzqTEWCk' \
    --body '{"buffer_count": 37, "buffer_percent": 4, "configuration": "3khwWGfn", "enable_region_overrides": true, "game_version": "AJf4SBsT", "max_count": 97, "min_count": 4, "regions": ["KZhtls4l", "PEdrHq9d", "Eha0RHoL"], "session_timeout": 57, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment '6cQNor2g' \
    --namespace $AB_NAMESPACE \
    --region '8PqJaRiJ' \
    --version '1eyDH44m' \
    --body '{"buffer_count": 48, "buffer_percent": 4, "max_count": 78, "min_count": 37, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'qMVwsw1R' \
    --namespace $AB_NAMESPACE \
    --region 'O3GpzqfJ' \
    --version 'tp1xjdgJ' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'MHhZB1KM' \
    --namespace $AB_NAMESPACE \
    --region 'dgmKF3HV' \
    --version 'JDbFYzL2' \
    --body '{"buffer_count": 12, "buffer_percent": 77, "max_count": 87, "min_count": 54, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '66' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'VFMFNBD7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'Y1ns8BYA' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 88, "mem_limit": 39, "params": "aHxUOpuV"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'gtgKUvWI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'Y6LjoQPF' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 91, "mem_limit": 65, "name": "5ZmSNSNZ", "params": "CzrZidYz"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'B13Hq1v0' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 36}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'pnOgg4vc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'elNmnPxp' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "tQ9Rbcw2", "port": 75}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'SArRTPi2' \
    --sortBy 'createdAt' \
    --sortDirection 'desc' \
    --count '60' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'QxR8Mb2p' \
    --version 'dQMkbN4M' \
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
    --imageURI 'vsC5qdmh' \
    --version 'tfvkpNSO' \
    --versionPatch 'YmLhsa8M' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'h2QVhO1G' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'guwcRhsg' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'AiYjf7a1' \
    --versionPatch 's0LZxQVQ' \
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
    --region 'sURTnciU' \
    --count '53' \
    --offset '77' \
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
    --region 'eyKNt9IK' \
    > test.out 2>&1
eval_tap $? 47 'CountServerDetailed' test.out

#- 48 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'ListLocalServer' test.out

#- 49 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'HUZMks6X' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'DeleteLocalServer' test.out

#- 50 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName '1TyHr1uw' \
    > test.out 2>&1
eval_tap $? 50 'GetServer' test.out

#- 51 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'qajN1pJW' \
    > test.out 2>&1
eval_tap $? 51 'DeleteServer' test.out

#- 52 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'eVsqTem2' \
    --withServer 'true' \
    --count '93' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 52 'ListSession' test.out

#- 53 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'BlcjXBMv' \
    > test.out 2>&1
eval_tap $? 53 'CountSession' test.out

#- 54 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'RKqEDCcf' \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "O35oHNyP", "repository": "G2Q4Lwu3"}' \
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
    --name 'FTEiDJAK' \
    --count '86' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 58 'GetAllDeploymentClient' test.out

#- 59 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment 'Q83D5i2t' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 91, "buffer_percent": 67, "configuration": "SwbBmGNz", "enable_region_overrides": true, "extendable_session": true, "game_version": "aamxPnDX", "max_count": 44, "min_count": 91, "overrides": {"uc247VfO": {"buffer_count": 52, "buffer_percent": 96, "configuration": "b5atLWBY", "enable_region_overrides": false, "extendable_session": true, "game_version": "0pgqtAEQ", "max_count": 1, "min_count": 25, "name": "4VoQOmd7", "region_overrides": {"vSi44Iaz": {"buffer_count": 2, "buffer_percent": 34, "max_count": 20, "min_count": 54, "name": "XAkoNU1o", "unlimited": false, "use_buffer_percent": true}, "myYNgAoW": {"buffer_count": 78, "buffer_percent": 4, "max_count": 39, "min_count": 89, "name": "8Mw5XyYH", "unlimited": true, "use_buffer_percent": false}, "rC0iugfz": {"buffer_count": 21, "buffer_percent": 75, "max_count": 59, "min_count": 83, "name": "7izL8d2d", "unlimited": true, "use_buffer_percent": true}}, "regions": ["7DfXV1xi", "bAdNZa2H", "ulJame0n"], "session_timeout": 0, "unlimited": true, "use_buffer_percent": false}, "Io3xL3qH": {"buffer_count": 26, "buffer_percent": 88, "configuration": "1iepM4bN", "enable_region_overrides": true, "extendable_session": true, "game_version": "lLYA3Rwm", "max_count": 22, "min_count": 37, "name": "5JkcTu38", "region_overrides": {"ZKDJKL6I": {"buffer_count": 33, "buffer_percent": 8, "max_count": 21, "min_count": 55, "name": "llqKSvtG", "unlimited": false, "use_buffer_percent": false}, "pSmk6hrv": {"buffer_count": 62, "buffer_percent": 29, "max_count": 44, "min_count": 74, "name": "Fp3THLML", "unlimited": false, "use_buffer_percent": true}, "VM05e52B": {"buffer_count": 5, "buffer_percent": 97, "max_count": 52, "min_count": 79, "name": "uVa03iws", "unlimited": false, "use_buffer_percent": true}}, "regions": ["PbtsPIHE", "Uq0CanM3", "uoIZgxZq"], "session_timeout": 92, "unlimited": true, "use_buffer_percent": true}, "BE0jnfvv": {"buffer_count": 36, "buffer_percent": 56, "configuration": "MjI8I4qd", "enable_region_overrides": true, "extendable_session": false, "game_version": "LcfXfVFd", "max_count": 84, "min_count": 57, "name": "DD71anCQ", "region_overrides": {"N28iWbvQ": {"buffer_count": 38, "buffer_percent": 50, "max_count": 25, "min_count": 60, "name": "0mfJrfC4", "unlimited": false, "use_buffer_percent": true}, "Bn5a3fLe": {"buffer_count": 25, "buffer_percent": 75, "max_count": 97, "min_count": 82, "name": "udwCZWYI", "unlimited": true, "use_buffer_percent": false}, "srWTedTI": {"buffer_count": 78, "buffer_percent": 62, "max_count": 27, "min_count": 2, "name": "C8lqFspZ", "unlimited": true, "use_buffer_percent": false}}, "regions": ["v4LaM0mD", "hD56PTKB", "dbrHYJJc"], "session_timeout": 68, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"MN1QKueO": {"buffer_count": 22, "buffer_percent": 92, "max_count": 51, "min_count": 93, "name": "CLqyhAdZ", "unlimited": true, "use_buffer_percent": true}, "fH6w3APd": {"buffer_count": 69, "buffer_percent": 25, "max_count": 21, "min_count": 65, "name": "PJjw3Z6g", "unlimited": false, "use_buffer_percent": false}, "YxVRImE0": {"buffer_count": 66, "buffer_percent": 14, "max_count": 79, "min_count": 90, "name": "CB2iEpvc", "unlimited": true, "use_buffer_percent": true}}, "regions": ["SrbsJpXu", "EInryEXV", "KqOE1Uue"], "session_timeout": 12, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 59 'CreateDeploymentClient' test.out

#- 60 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'BnIIJ301' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteDeploymentClient' test.out

#- 61 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '99' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 61 'GetAllPodConfigClient' test.out

#- 62 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'P6Jk7ffq' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 48, "mem_limit": 61, "params": "Jex0kGLv"}' \
    > test.out 2>&1
eval_tap $? 62 'CreatePodConfigClient' test.out

#- 63 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'R8vNVonc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeletePodConfigClient' test.out

#- 64 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '75' \
    --offset '37' \
    --q 'EqtO1LtB' \
    --sortBy 'createdAt' \
    --sortDirection 'desc' \
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
    --version 'X7UuEOWd' \
    > test.out 2>&1
eval_tap $? 66 'ImageDetailClient' test.out

#- 67 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'WbG4SYJo' \
    --count '25' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 67 'ListServerClient' test.out

#- 68 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "ZfHPjM8V"}' \
    > test.out 2>&1
eval_tap $? 68 'ServerHeartbeat' test.out

#- 69 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "iLXjVUVe"}' \
    > test.out 2>&1
eval_tap $? 69 'DeregisterLocalServer' test.out

#- 70 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "6pCpYObA", "ip": "V4zArs6h", "name": "uvO9uTlM", "port": 4}' \
    > test.out 2>&1
eval_tap $? 70 'RegisterLocalServer' test.out

#- 71 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "wM8Vz207", "pod_name": "3bZqgdor"}' \
    > test.out 2>&1
eval_tap $? 71 'RegisterServer' test.out

#- 72 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "6t2Ra4Kw"}' \
    > test.out 2>&1
eval_tap $? 72 'ShutdownServer' test.out

#- 73 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'xNciKiqL' \
    > test.out 2>&1
eval_tap $? 73 'GetServerSessionTimeout' test.out

#- 74 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'v6MClcbF' \
    > test.out 2>&1
eval_tap $? 74 'GetServerSession' test.out

#- 75 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "8saXFzyn", "configuration": "fiQPdAbf", "deployment": "45aW4OWf", "game_mode": "2ng3ryJ3", "matching_allies": [{"matching_parties": [{"party_attributes": {"SoTrAOkC": {}, "3lCANSHU": {}, "ye2jWPjg": {}}, "party_id": "sOZZIzVT", "party_members": [{"user_id": "6bsSt6ZX"}, {"user_id": "hx1KGoFX"}, {"user_id": "rP3PFkYX"}]}, {"party_attributes": {"0e3v5EWH": {}, "h1yVcIV4": {}, "y5O8PfyX": {}}, "party_id": "Y2YCn5RK", "party_members": [{"user_id": "DFXoQoze"}, {"user_id": "nGH3uCEX"}, {"user_id": "I9SPtkiR"}]}, {"party_attributes": {"vkpfOPn1": {}, "LLwUqvPN": {}, "fOjwcR7j": {}}, "party_id": "hoRkiblM", "party_members": [{"user_id": "JNtpxJJr"}, {"user_id": "1iudbLqI"}, {"user_id": "UZIXIq5y"}]}]}, {"matching_parties": [{"party_attributes": {"FoZQN9OO": {}, "XIRj8GcW": {}, "cV4Ijf8n": {}}, "party_id": "R72MDKVk", "party_members": [{"user_id": "rCDGJsBX"}, {"user_id": "9xtWKBgF"}, {"user_id": "CTy2PhtZ"}]}, {"party_attributes": {"pB8Aoy5V": {}, "bMWWkYX9": {}, "VwEexeHA": {}}, "party_id": "oGtgIkIE", "party_members": [{"user_id": "ORGVGpIQ"}, {"user_id": "Zd5ZAC6R"}, {"user_id": "LPV4wAP9"}]}, {"party_attributes": {"jEKyfNSx": {}, "nMXOBhEl": {}, "ZEvqGHCY": {}}, "party_id": "MJ63NVHS", "party_members": [{"user_id": "BoatVqXK"}, {"user_id": "63moJPar"}, {"user_id": "mvw7465E"}]}]}, {"matching_parties": [{"party_attributes": {"CrDEeJNu": {}, "Sx9sdmJG": {}, "Vz51kLxS": {}}, "party_id": "sORhdjjv", "party_members": [{"user_id": "nXvHqVWb"}, {"user_id": "SAEQsW9J"}, {"user_id": "fUpb1b8l"}]}, {"party_attributes": {"BU2NJiQj": {}, "1snhsZCh": {}, "Z1CDk3vR": {}}, "party_id": "xSd50j0W", "party_members": [{"user_id": "tF5rxtYk"}, {"user_id": "Z0TeJbjO"}, {"user_id": "SLCZveMJ"}]}, {"party_attributes": {"7Xa6S7C5": {}, "6JRUK0YI": {}, "AhUFRDbs": {}}, "party_id": "4doa9t6s", "party_members": [{"user_id": "YL9mTu3r"}, {"user_id": "Qb2TZohK"}, {"user_id": "eBrHkX4S"}]}]}], "namespace": "iHAX7bFn", "notification_payload": {}, "pod_name": "Za62gX5G", "region": "xg5iECjZ", "session_id": "5bhruWMs"}' \
    > test.out 2>&1
eval_tap $? 75 'CreateSession' test.out

#- 76 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "aGvp8uYU"}' \
    > test.out 2>&1
eval_tap $? 76 'ClaimServer' test.out

#- 77 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'yCuuEP9i' \
    > test.out 2>&1
eval_tap $? 77 'GetSession' test.out

#- 78 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'bSjeeMla' \
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
    --region 'sJyOZBYe' \
    > test.out 2>&1
eval_tap $? 81 'ListProvidersByRegion' test.out

#- 82 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 82 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE