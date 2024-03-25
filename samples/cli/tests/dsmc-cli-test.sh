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
    --body '{"artifactPath": "sEXljdAj", "coreDumpEnabled": true, "image": "Ic1bwB6M", "imageReplicationsMap": {"YV1bL6n4": {"failure_code": "1TUo6evz", "region": "0eklCeXv", "status": "exasAJTZ", "uri": "JmV3oQhd"}, "PiQcfUCI": {"failure_code": "z7m7b7aC", "region": "7YrgERjc", "status": "mIYpyP8v", "uri": "Ics2Qyw4"}, "WqcQNDxe": {"failure_code": "ff95D1jA", "region": "TPR0wjOJ", "status": "oxjpyfc2", "uri": "j26AvZvj"}}, "namespace": "Sjliw7Gq", "patchVersion": "ecIOKHxA", "persistent": true, "version": "jTtXxrR3"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "n2joMNjy", "coreDumpEnabled": false, "dockerPath": "QHQ4Vj8G", "image": "17fsMqpm", "imageSize": 27, "namespace": "aG76CJ31", "persistent": false, "ulimitFileSize": 59, "version": "riF9FHLQ"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "1K82nb0y", "coreDumpEnabled": true, "dockerPath": "o4ciUYCU", "image": "jHzAAfiX", "imageSize": 79, "namespace": "zHDf9iqV", "patchVersion": "o1E2A0c3", "persistent": false, "ulimitFileSize": 64, "uploaderFlag": "SowAKLch", "version": "QBU1Iqry"}' \
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
    --body '{"claim_timeout": 83, "creation_timeout": 42, "default_version": "kkZqlZ6O", "port": 97, "ports": {"q34N32MP": 1, "3oWOJ6NI": 34, "qaWUD3QH": 34}, "protocol": "afkkpUo7", "providers": ["ZiF297ar", "IXzqKYM3", "CUsCeZO9"], "session_timeout": 46, "unreachable_timeout": 49}' \
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
    --body '{"claim_timeout": 68, "creation_timeout": 79, "default_version": "O97sqhxZ", "port": 36, "protocol": "7Jq285iz", "providers": ["mXsCAVtY", "knBIUnYo", "R700RF9z"], "session_timeout": 44, "unreachable_timeout": 47}' \
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
    --name 'GyerorXm' \
    --count '53' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'rAmhyzzW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'ZjEF8FTP' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 10, "buffer_percent": 5, "configuration": "oDGBCG9E", "enable_region_overrides": false, "extendable_session": false, "game_version": "V44eBzx4", "max_count": 4, "min_count": 58, "overrides": {"z7zSvu9P": {"buffer_count": 99, "buffer_percent": 33, "configuration": "p7dj0jA8", "enable_region_overrides": false, "extendable_session": false, "game_version": "f0Enns2A", "max_count": 0, "min_count": 4, "name": "JOYns9jT", "region_overrides": {"e6hD3In3": {"buffer_count": 50, "buffer_percent": 47, "max_count": 72, "min_count": 87, "name": "3zm2KDh6", "unlimited": true, "use_buffer_percent": true}, "BYL2zlGp": {"buffer_count": 98, "buffer_percent": 4, "max_count": 11, "min_count": 67, "name": "6RibgTJ2", "unlimited": true, "use_buffer_percent": false}, "lZMlxQo7": {"buffer_count": 41, "buffer_percent": 73, "max_count": 11, "min_count": 18, "name": "001KEOD9", "unlimited": false, "use_buffer_percent": false}}, "regions": ["VFojuGVk", "gOMBqqSY", "baqpNxJN"], "session_timeout": 3, "unlimited": true, "use_buffer_percent": true}, "4dO7AtGP": {"buffer_count": 99, "buffer_percent": 16, "configuration": "KZ6kAYHI", "enable_region_overrides": false, "extendable_session": false, "game_version": "rrxxW0CU", "max_count": 91, "min_count": 57, "name": "6tg7vJni", "region_overrides": {"G5i4uHpc": {"buffer_count": 4, "buffer_percent": 88, "max_count": 52, "min_count": 65, "name": "2rZ0LfIu", "unlimited": false, "use_buffer_percent": true}, "FYqW0ffu": {"buffer_count": 49, "buffer_percent": 20, "max_count": 22, "min_count": 22, "name": "mpVTukm2", "unlimited": false, "use_buffer_percent": true}, "JzpXQfJ2": {"buffer_count": 16, "buffer_percent": 87, "max_count": 89, "min_count": 62, "name": "HpA9lgsW", "unlimited": false, "use_buffer_percent": false}}, "regions": ["PraehSUm", "n95bwPne", "V0AbaCe9"], "session_timeout": 1, "unlimited": true, "use_buffer_percent": false}, "3VzOoAHZ": {"buffer_count": 47, "buffer_percent": 82, "configuration": "We7vHXDj", "enable_region_overrides": false, "extendable_session": false, "game_version": "y31Dsum1", "max_count": 12, "min_count": 97, "name": "IGVZmm7A", "region_overrides": {"WVJKtbFo": {"buffer_count": 36, "buffer_percent": 53, "max_count": 4, "min_count": 92, "name": "L4IJgzrD", "unlimited": true, "use_buffer_percent": false}, "PZi913o9": {"buffer_count": 14, "buffer_percent": 18, "max_count": 52, "min_count": 24, "name": "aGDlvecL", "unlimited": false, "use_buffer_percent": true}, "8iP9HGxk": {"buffer_count": 64, "buffer_percent": 41, "max_count": 96, "min_count": 52, "name": "u3Wk1azS", "unlimited": false, "use_buffer_percent": false}}, "regions": ["yuvJcAFC", "XrHuKKvu", "rXrFTDUN"], "session_timeout": 45, "unlimited": true, "use_buffer_percent": false}}, "region_overrides": {"T4UxHKe9": {"buffer_count": 57, "buffer_percent": 61, "max_count": 34, "min_count": 17, "name": "miUezsQs", "unlimited": true, "use_buffer_percent": true}, "lm1LOD72": {"buffer_count": 39, "buffer_percent": 5, "max_count": 47, "min_count": 65, "name": "jMRDZI1v", "unlimited": false, "use_buffer_percent": true}, "HcASVXc9": {"buffer_count": 10, "buffer_percent": 61, "max_count": 64, "min_count": 6, "name": "828wehsC", "unlimited": true, "use_buffer_percent": false}}, "regions": ["5nJoygbg", "DKR6aimk", "bKryysyo"], "session_timeout": 81, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'WS7X2vTZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'fpi7iggb' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 50, "buffer_percent": 77, "configuration": "vjQRycs8", "enable_region_overrides": false, "extendable_session": false, "game_version": "who24EEL", "max_count": 81, "min_count": 37, "regions": ["aXsBz7QN", "JQcPYVsI", "L3YrKQc6"], "session_timeout": 15, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'WUwm1Hhg' \
    --namespace $AB_NAMESPACE \
    --region 'E00BvbWx' \
    --body '{"buffer_count": 48, "buffer_percent": 86, "max_count": 10, "min_count": 73, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'rBO6PZbi' \
    --namespace $AB_NAMESPACE \
    --region '6cHwg1SS' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'bUfSBTJZ' \
    --namespace $AB_NAMESPACE \
    --region '2chnpvvC' \
    --body '{"buffer_count": 38, "buffer_percent": 13, "max_count": 60, "min_count": 24, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'v37o97LJ' \
    --namespace $AB_NAMESPACE \
    --version '7UA1fC6g' \
    --body '{"buffer_count": 60, "buffer_percent": 53, "configuration": "wTRjoY7i", "enable_region_overrides": false, "extendable_session": false, "game_version": "fue0PWmm", "max_count": 40, "min_count": 32, "region_overrides": {"IkfaNcQo": {"buffer_count": 21, "buffer_percent": 52, "max_count": 49, "min_count": 79, "name": "yZOWADCh", "unlimited": true, "use_buffer_percent": true}, "1QUVwHSO": {"buffer_count": 85, "buffer_percent": 37, "max_count": 7, "min_count": 8, "name": "SYDeLJuw", "unlimited": false, "use_buffer_percent": false}, "hlewwuFI": {"buffer_count": 29, "buffer_percent": 90, "max_count": 47, "min_count": 35, "name": "4i8soKl0", "unlimited": true, "use_buffer_percent": false}}, "regions": ["xdIvnNfx", "YUQxSJqc", "l6ePpsf4"], "session_timeout": 54, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'FT4CEIOJ' \
    --namespace $AB_NAMESPACE \
    --version '7bSQSF26' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'PHKhBWo6' \
    --namespace $AB_NAMESPACE \
    --version 'gpj2CG6s' \
    --body '{"buffer_count": 51, "buffer_percent": 71, "configuration": "wKRgKpoq", "enable_region_overrides": false, "game_version": "WlJyFAHo", "max_count": 61, "min_count": 38, "regions": ["1OcpTh8m", "UNlbB7Jq", "nlkmlnk7"], "session_timeout": 34, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'uSsIjlMQ' \
    --namespace $AB_NAMESPACE \
    --region 'eYm285st' \
    --version 'svR2CFcD' \
    --body '{"buffer_count": 6, "buffer_percent": 77, "max_count": 44, "min_count": 40, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'iixEyqiA' \
    --namespace $AB_NAMESPACE \
    --region 'DiJcrHsI' \
    --version 'DpmTWjz8' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment '9mXIxKdt' \
    --namespace $AB_NAMESPACE \
    --region 'AE0gLzUV' \
    --version 'gL5HsdMe' \
    --body '{"buffer_count": 59, "buffer_percent": 24, "max_count": 4, "min_count": 12, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '9' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'y5vuqMS9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'Sz2jhIT2' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 78, "mem_limit": 70, "params": "aTO8N1wA"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'b9f8cX5E' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'IdCuKHeE' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 61, "mem_limit": 83, "name": "4rVLO8V6", "params": "CicLPGXz"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'raXCXNWZ' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 98}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'Gbrpxym8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name '57n1vuIv' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "9ygHGKdc", "port": 33}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'a3LJlUK6' \
    --sortBy 'updatedAt' \
    --sortDirection 'asc' \
    --count '59' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'jj3bVvzt' \
    --version '89uEZUph' \
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
    --imageURI '2bVHUdlB' \
    --version '84Hp6RmW' \
    --versionPatch 'k6D1kCog' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'JLe2Vit2' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'UHGHuiNH' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'dqX4grWI' \
    --versionPatch 'wQHpadRq' \
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
    --region 'jEDthKBr' \
    --count '39' \
    --offset '18' \
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
    --region '5cgpmIx8' \
    > test.out 2>&1
eval_tap $? 47 'CountServerDetailed' test.out

#- 48 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'ListLocalServer' test.out

#- 49 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'qL1i5gm5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'DeleteLocalServer' test.out

#- 50 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'kcnYxKj0' \
    > test.out 2>&1
eval_tap $? 50 'GetServer' test.out

#- 51 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'uyxSAzsS' \
    > test.out 2>&1
eval_tap $? 51 'DeleteServer' test.out

#- 52 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'ECRTY6BG' \
    --withServer 'false' \
    --count '6' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 52 'ListSession' test.out

#- 53 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'OjE4FKcw' \
    > test.out 2>&1
eval_tap $? 53 'CountSession' test.out

#- 54 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'ltVPdAFD' \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "1IJfejrM", "repository": "Lo8rbvDN"}' \
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
    --name '8t9mGNMl' \
    --count '92' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 58 'GetAllDeploymentClient' test.out

#- 59 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment 'ef5Jzh2p' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 42, "buffer_percent": 67, "configuration": "ZWZ25t0R", "enable_region_overrides": true, "extendable_session": true, "game_version": "BuSmKJmq", "max_count": 97, "min_count": 4, "overrides": {"XyR2XfOx": {"buffer_count": 98, "buffer_percent": 54, "configuration": "SobO2f2B", "enable_region_overrides": false, "extendable_session": true, "game_version": "Qnt9KYlr", "max_count": 51, "min_count": 67, "name": "Bl96Erdo", "region_overrides": {"mXQt1KEb": {"buffer_count": 34, "buffer_percent": 66, "max_count": 100, "min_count": 26, "name": "7HjYD32w", "unlimited": true, "use_buffer_percent": false}, "9vV3bawx": {"buffer_count": 13, "buffer_percent": 15, "max_count": 8, "min_count": 4, "name": "Xb1DDWia", "unlimited": true, "use_buffer_percent": true}, "x2ZkoTJk": {"buffer_count": 81, "buffer_percent": 26, "max_count": 83, "min_count": 8, "name": "AI7UPyQ3", "unlimited": false, "use_buffer_percent": false}}, "regions": ["jCr7mVfr", "Jmq0mkRx", "ISMVkK4f"], "session_timeout": 100, "unlimited": true, "use_buffer_percent": false}, "1VjX4L4z": {"buffer_count": 97, "buffer_percent": 94, "configuration": "t6HY3ed6", "enable_region_overrides": false, "extendable_session": false, "game_version": "KLd4vQfw", "max_count": 6, "min_count": 67, "name": "YJ8feexm", "region_overrides": {"35FuO4nV": {"buffer_count": 46, "buffer_percent": 38, "max_count": 61, "min_count": 17, "name": "jSO7VZuv", "unlimited": false, "use_buffer_percent": false}, "Mkdww641": {"buffer_count": 2, "buffer_percent": 84, "max_count": 55, "min_count": 18, "name": "8W5EbvEP", "unlimited": false, "use_buffer_percent": false}, "eVhMvhhS": {"buffer_count": 16, "buffer_percent": 29, "max_count": 25, "min_count": 45, "name": "rEg4HinP", "unlimited": true, "use_buffer_percent": false}}, "regions": ["rOIN6dna", "HOOZmdG8", "VhuqS29z"], "session_timeout": 41, "unlimited": false, "use_buffer_percent": false}, "rXNVCpIJ": {"buffer_count": 58, "buffer_percent": 96, "configuration": "VLXFsIj4", "enable_region_overrides": false, "extendable_session": false, "game_version": "yPDxybNn", "max_count": 11, "min_count": 24, "name": "i59pNCy0", "region_overrides": {"Z3hAVSHZ": {"buffer_count": 91, "buffer_percent": 22, "max_count": 54, "min_count": 33, "name": "NDCbQ7c8", "unlimited": false, "use_buffer_percent": true}, "TnbUsl6A": {"buffer_count": 91, "buffer_percent": 88, "max_count": 8, "min_count": 32, "name": "o7g8hqGX", "unlimited": false, "use_buffer_percent": false}, "TTA0EGWJ": {"buffer_count": 64, "buffer_percent": 8, "max_count": 75, "min_count": 57, "name": "D4So3hxI", "unlimited": false, "use_buffer_percent": true}}, "regions": ["VrvyEtfU", "zddgl6dP", "WJrSTri0"], "session_timeout": 5, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"NQJ3lLbB": {"buffer_count": 57, "buffer_percent": 60, "max_count": 78, "min_count": 76, "name": "PwYnvr7e", "unlimited": false, "use_buffer_percent": true}, "Lj8zXRKH": {"buffer_count": 61, "buffer_percent": 53, "max_count": 81, "min_count": 61, "name": "7qF4hy2K", "unlimited": false, "use_buffer_percent": true}, "zn0BRAzO": {"buffer_count": 12, "buffer_percent": 66, "max_count": 97, "min_count": 13, "name": "Ff2khpSd", "unlimited": false, "use_buffer_percent": true}}, "regions": ["hweFrTXa", "gwKyTkFI", "wPtgt3Ig"], "session_timeout": 14, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 59 'CreateDeploymentClient' test.out

#- 60 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'GVlpphXe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteDeploymentClient' test.out

#- 61 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '91' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 61 'GetAllPodConfigClient' test.out

#- 62 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'XQcZgzIL' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 59, "mem_limit": 24, "params": "RXFnBEsO"}' \
    > test.out 2>&1
eval_tap $? 62 'CreatePodConfigClient' test.out

#- 63 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name '66O8n1qC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeletePodConfigClient' test.out

#- 64 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '28' \
    --offset '59' \
    --q 'x9IDyKCz' \
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
    --version 'q9NB5X6Q' \
    > test.out 2>&1
eval_tap $? 66 'ImageDetailClient' test.out

#- 67 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'CrJg8Ykd' \
    --count '0' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 67 'ListServerClient' test.out

#- 68 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "f3ChMc1M"}' \
    > test.out 2>&1
eval_tap $? 68 'ServerHeartbeat' test.out

#- 69 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "hDkjXFpn"}' \
    > test.out 2>&1
eval_tap $? 69 'DeregisterLocalServer' test.out

#- 70 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "2ZuGyoyV", "ip": "xe7h4RZz", "name": "k7i7zNb7", "port": 44}' \
    > test.out 2>&1
eval_tap $? 70 'RegisterLocalServer' test.out

#- 71 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "hd0zBD7x", "pod_name": "rMozBxbE"}' \
    > test.out 2>&1
eval_tap $? 71 'RegisterServer' test.out

#- 72 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": false, "pod_name": "iUOMinYe"}' \
    > test.out 2>&1
eval_tap $? 72 'ShutdownServer' test.out

#- 73 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'AwdqMI16' \
    > test.out 2>&1
eval_tap $? 73 'GetServerSessionTimeout' test.out

#- 74 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName '2a0urzv1' \
    > test.out 2>&1
eval_tap $? 74 'GetServerSession' test.out

#- 75 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "gjnLpgug", "configuration": "g8cP9Hxe", "deployment": "ZIl4omCX", "game_mode": "HecGyveA", "matching_allies": [{"matching_parties": [{"party_attributes": {"IElsG9kA": {}, "HynTjjfO": {}, "AvWQB1if": {}}, "party_id": "bzeliD5o", "party_members": [{"user_id": "4PZQ2jD3"}, {"user_id": "sh2Kaexq"}, {"user_id": "mI3k7yLD"}]}, {"party_attributes": {"0ZuSiRyC": {}, "IEliscFt": {}, "auy9ZbsM": {}}, "party_id": "CuIFUAxk", "party_members": [{"user_id": "HO4lmBT2"}, {"user_id": "t1IR8KvZ"}, {"user_id": "iRzE1nVK"}]}, {"party_attributes": {"5FiRpKPy": {}, "6rijLs2o": {}, "UPkSdQF4": {}}, "party_id": "26lw5BNo", "party_members": [{"user_id": "yNqk5q6I"}, {"user_id": "frfcRUGZ"}, {"user_id": "V45T1Gl1"}]}]}, {"matching_parties": [{"party_attributes": {"CCMcS7AO": {}, "UkT91uFC": {}, "WEO89fCZ": {}}, "party_id": "OqRKWIyh", "party_members": [{"user_id": "PotSMakL"}, {"user_id": "nGoUZezA"}, {"user_id": "wSCQVgwd"}]}, {"party_attributes": {"SBf2qgW0": {}, "eOMEJUYk": {}, "1CQnK7SQ": {}}, "party_id": "ODxLRCng", "party_members": [{"user_id": "FKiBlehV"}, {"user_id": "Msa5aJ4N"}, {"user_id": "YZQM88mG"}]}, {"party_attributes": {"5uAgw4oh": {}, "ZSmEMBLw": {}, "RIEgmxI8": {}}, "party_id": "lPOiIVFD", "party_members": [{"user_id": "Docc5TF8"}, {"user_id": "DxB0IY05"}, {"user_id": "nGz5Bgvr"}]}]}, {"matching_parties": [{"party_attributes": {"DLtPJYAc": {}, "c3dGLvJl": {}, "40ze9eUf": {}}, "party_id": "4v7a7ZGJ", "party_members": [{"user_id": "D340BL1z"}, {"user_id": "K3p1uZL5"}, {"user_id": "gA3c37OX"}]}, {"party_attributes": {"hzRspfKS": {}, "XxwLMkuB": {}, "T3rIgjN8": {}}, "party_id": "Rm9L485J", "party_members": [{"user_id": "DPPhV9pJ"}, {"user_id": "FRkwdpBy"}, {"user_id": "LLF2yGN4"}]}, {"party_attributes": {"2pyZMkfA": {}, "hnuMioM0": {}, "ey9qOARd": {}}, "party_id": "RN7QlBfe", "party_members": [{"user_id": "CbccOm1r"}, {"user_id": "0NgpnqK4"}, {"user_id": "XnIs3q4M"}]}]}], "namespace": "b4my700L", "notification_payload": {}, "pod_name": "5RsubZW0", "region": "ew3Fj6ZI", "session_id": "J2p5TPfm"}' \
    > test.out 2>&1
eval_tap $? 75 'CreateSession' test.out

#- 76 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "sM3nqP59"}' \
    > test.out 2>&1
eval_tap $? 76 'ClaimServer' test.out

#- 77 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'AJSeMKr4' \
    > test.out 2>&1
eval_tap $? 77 'GetSession' test.out

#- 78 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'DmvarW43' \
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
    --region '8H2vKPrB' \
    > test.out 2>&1
eval_tap $? 81 'ListProvidersByRegion' test.out

#- 82 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 82 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE