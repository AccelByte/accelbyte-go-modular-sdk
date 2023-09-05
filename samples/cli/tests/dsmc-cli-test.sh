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
    --body '{"artifactPath": "ImhM0xOS", "image": "JL4YPgIz", "imageReplicationsMap": {"zojofHiE": {"failure_code": "Rvu8AfYC", "region": "1p4QhTl5", "status": "P6MfoFEO", "uri": "cUIGQwZk"}, "d1pFY8fG": {"failure_code": "MiPUj4qm", "region": "AzTw15OK", "status": "mf7Fwl9f", "uri": "cwhAsbyF"}, "rGpb55Jr": {"failure_code": "0tLBPotY", "region": "Pf8jZocA", "status": "w7VfA9pQ", "uri": "9l0HVjB7"}}, "namespace": "gU2xJFSR", "patchVersion": "nPM3pNAi", "persistent": false, "version": "8qlTSjIr"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "VDaJJTG1", "coreDumpEnabled": true, "dockerPath": "I5tizyRa", "image": "77G6LYYE", "imageSize": 82, "namespace": "d3lhhVXN", "persistent": false, "version": "Tnd0EpAi"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "SlLkt6r8", "coreDumpEnabled": true, "dockerPath": "GC9Tupbo", "image": "YUXGXn3w", "imageSize": 78, "namespace": "TF8uKYVq", "patchVersion": "2S7PI0ao", "persistent": false, "uploaderFlag": "MlOVFxyx", "version": "RVbW8KGL"}' \
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
    --body '{"claim_timeout": 53, "creation_timeout": 65, "default_version": "Ld9s7Elw", "port": 45, "ports": {"KwmkGNNy": 11, "DkyiCtUB": 40, "DecDHG7X": 5}, "protocol": "V3QkgVcP", "providers": ["BuPcGsx6", "k6yEJlr6", "Wwd5ZhMa"], "session_timeout": 58, "unreachable_timeout": 99}' \
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
    --body '{"claim_timeout": 84, "creation_timeout": 48, "default_version": "d9VAMBnW", "port": 89, "protocol": "lCuWNdGX", "providers": ["JAOdYnLN", "UePYYZ0z", "uFu5Zk2B"], "session_timeout": 56, "unreachable_timeout": 59}' \
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
    --name 'yfW6BB0l' \
    --count '4' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'WQMx9yCK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'USETQhsL' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 36, "buffer_percent": 74, "configuration": "LfLdZTdl", "enable_region_overrides": false, "extendable_session": false, "game_version": "kTwk2PkK", "max_count": 83, "min_count": 35, "overrides": {"gbaZoxY8": {"buffer_count": 35, "buffer_percent": 34, "configuration": "nSyyqpnn", "enable_region_overrides": false, "extendable_session": false, "game_version": "uFLZpzh0", "max_count": 59, "min_count": 13, "name": "nwSUnJ7y", "region_overrides": {"I3PI4con": {"buffer_count": 66, "buffer_percent": 5, "max_count": 77, "min_count": 19, "name": "sW48ddRe", "unlimited": true, "use_buffer_percent": false}, "NFL7aAx5": {"buffer_count": 0, "buffer_percent": 38, "max_count": 8, "min_count": 93, "name": "39NBSiqt", "unlimited": true, "use_buffer_percent": false}, "5Q0oZ5NH": {"buffer_count": 71, "buffer_percent": 4, "max_count": 64, "min_count": 18, "name": "ksJ92TuN", "unlimited": false, "use_buffer_percent": false}}, "regions": ["4FnoYSIG", "lVvIFHFc", "u322s8ss"], "session_timeout": 77, "unlimited": false, "use_buffer_percent": true}, "FiDbZQJO": {"buffer_count": 42, "buffer_percent": 86, "configuration": "vHrK1jCt", "enable_region_overrides": false, "extendable_session": false, "game_version": "a5i1O9s3", "max_count": 97, "min_count": 19, "name": "6jhuBLkF", "region_overrides": {"B3lUBlJ2": {"buffer_count": 0, "buffer_percent": 87, "max_count": 97, "min_count": 24, "name": "i3nPRMMY", "unlimited": false, "use_buffer_percent": false}, "O5ErQqoU": {"buffer_count": 1, "buffer_percent": 71, "max_count": 26, "min_count": 59, "name": "JvZAbFPR", "unlimited": true, "use_buffer_percent": false}, "6fU1g2Tb": {"buffer_count": 39, "buffer_percent": 53, "max_count": 54, "min_count": 23, "name": "knWna27c", "unlimited": false, "use_buffer_percent": true}}, "regions": ["HixYd6B5", "hoJGXnZK", "2yjwTvPL"], "session_timeout": 91, "unlimited": false, "use_buffer_percent": false}, "cj645Y3D": {"buffer_count": 53, "buffer_percent": 29, "configuration": "hvwceiQt", "enable_region_overrides": true, "extendable_session": false, "game_version": "ywV5JlTK", "max_count": 87, "min_count": 58, "name": "mEifGD23", "region_overrides": {"mi61YBeO": {"buffer_count": 89, "buffer_percent": 52, "max_count": 60, "min_count": 96, "name": "j4R5jbry", "unlimited": true, "use_buffer_percent": true}, "MjzhH7oo": {"buffer_count": 77, "buffer_percent": 23, "max_count": 54, "min_count": 64, "name": "lu966Zgd", "unlimited": false, "use_buffer_percent": false}, "HmTeDTFj": {"buffer_count": 29, "buffer_percent": 90, "max_count": 34, "min_count": 87, "name": "vxAiNk9U", "unlimited": true, "use_buffer_percent": true}}, "regions": ["Kf608Y32", "vTMXRoY0", "wc2AgIap"], "session_timeout": 98, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"uJ4mU9n6": {"buffer_count": 58, "buffer_percent": 20, "max_count": 9, "min_count": 61, "name": "K6ibku9L", "unlimited": true, "use_buffer_percent": false}, "RnjiAoB6": {"buffer_count": 52, "buffer_percent": 20, "max_count": 32, "min_count": 57, "name": "ypxspODS", "unlimited": false, "use_buffer_percent": true}, "VO17Rpcc": {"buffer_count": 43, "buffer_percent": 4, "max_count": 53, "min_count": 99, "name": "2FbUqWH0", "unlimited": false, "use_buffer_percent": false}}, "regions": ["66ICKFjy", "9XO3hnew", "dBIFYLSv"], "session_timeout": 90, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment '0iGmgoie' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment '7PLlZO2F' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 26, "buffer_percent": 45, "configuration": "LyunF3uO", "enable_region_overrides": true, "extendable_session": true, "game_version": "W4C0Utx1", "max_count": 36, "min_count": 84, "regions": ["wJeRFE4I", "TJvZYWZu", "buI7FvH8"], "session_timeout": 95, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'hI99hL1G' \
    --namespace $AB_NAMESPACE \
    --region '1WukFozf' \
    --body '{"buffer_count": 94, "buffer_percent": 90, "max_count": 44, "min_count": 21, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'ekMxIlr9' \
    --namespace $AB_NAMESPACE \
    --region 'IETMlxxc' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'YyhrLzUJ' \
    --namespace $AB_NAMESPACE \
    --region 'xI8Gp1Nx' \
    --body '{"buffer_count": 95, "buffer_percent": 64, "max_count": 3, "min_count": 41, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'Yc4eJh7P' \
    --namespace $AB_NAMESPACE \
    --version 'XmXs2AcD' \
    --body '{"buffer_count": 37, "buffer_percent": 13, "configuration": "EAAEtI1L", "enable_region_overrides": true, "extendable_session": true, "game_version": "APgwBEmf", "max_count": 52, "min_count": 92, "region_overrides": {"CfRmCyXj": {"buffer_count": 9, "buffer_percent": 82, "max_count": 22, "min_count": 67, "name": "aaKe5y6Y", "unlimited": true, "use_buffer_percent": false}, "2SGHkd2x": {"buffer_count": 88, "buffer_percent": 29, "max_count": 32, "min_count": 16, "name": "WJzwqYuu", "unlimited": true, "use_buffer_percent": true}, "Rbym6Bjc": {"buffer_count": 85, "buffer_percent": 46, "max_count": 0, "min_count": 32, "name": "rAcyyYdW", "unlimited": true, "use_buffer_percent": false}}, "regions": ["BknuGWqQ", "hOImKz4Y", "Ll0aln9C"], "session_timeout": 89, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'Kq13Jziw' \
    --namespace $AB_NAMESPACE \
    --version 'BhXK2rVV' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'fFzkptaC' \
    --namespace $AB_NAMESPACE \
    --version 'Yo2gBG7Q' \
    --body '{"buffer_count": 83, "buffer_percent": 95, "configuration": "XgxtoZtZ", "enable_region_overrides": true, "game_version": "rPkfmsZs", "max_count": 5, "min_count": 28, "regions": ["JT37aiJ9", "G7fkKi8P", "5TrhyaHt"], "session_timeout": 53, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'OSTW3TcT' \
    --namespace $AB_NAMESPACE \
    --region 'POZAj4Ab' \
    --version 'jzk6poOA' \
    --body '{"buffer_count": 80, "buffer_percent": 60, "max_count": 28, "min_count": 76, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'P8SK07Y6' \
    --namespace $AB_NAMESPACE \
    --region '9jintHjn' \
    --version 'volCKPTz' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'h8ibZ9YV' \
    --namespace $AB_NAMESPACE \
    --region 'tXvheH5U' \
    --version 'TxrMDeSB' \
    --body '{"buffer_count": 63, "buffer_percent": 77, "max_count": 9, "min_count": 15, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '94' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'SJQmpx4R' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'wMKKosZJ' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 94, "mem_limit": 0, "params": "6dmGgVFh"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'VTUOzbLM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name '1XeFop0R' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 21, "mem_limit": 26, "name": "pPtGxryQ", "params": "y0kOuHXk"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'MAscGB9x' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 78}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'xSI2p2sM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name '8a1kuJTx' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "Sr6zBSkB", "port": 20}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'jXhKChzh' \
    --sortBy 'updatedAt' \
    --sortDirection 'asc' \
    --count '41' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'jSGylMKw' \
    --version 'DLbXRRLQ' \
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
    --imageURI 'zkzA4aBt' \
    --version 'IU8TZ9SV' \
    --versionPatch '9qBYYCRU' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version '3xxnwmFJ' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'vbqjRNIT' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'UVevoeXe' \
    --versionPatch '0wY945HB' \
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
    --region 'PmRKRKQK' \
    --count '50' \
    --offset '80' \
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
    --region 'fIu8X9fG' \
    > test.out 2>&1
eval_tap $? 47 'CountServerDetailed' test.out

#- 48 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'ListLocalServer' test.out

#- 49 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'K26r9Dz3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'DeleteLocalServer' test.out

#- 50 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'y6mjV3g9' \
    > test.out 2>&1
eval_tap $? 50 'GetServer' test.out

#- 51 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'x3ZrbcZt' \
    > test.out 2>&1
eval_tap $? 51 'DeleteServer' test.out

#- 52 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'e7Q1bWK7' \
    --withServer 'false' \
    --count '20' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 52 'ListSession' test.out

#- 53 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'Fec4YsXR' \
    > test.out 2>&1
eval_tap $? 53 'CountSession' test.out

#- 54 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'BCnxJ3Nc' \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "smAgnmDN", "repository": "FFbQq5KM"}' \
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
    --name 'ZVYzcfOn' \
    --count '14' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 58 'GetAllDeploymentClient' test.out

#- 59 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment 'Mmc0uWaF' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 35, "buffer_percent": 37, "configuration": "8kyQzv7q", "enable_region_overrides": true, "extendable_session": true, "game_version": "YUYzJVFc", "max_count": 90, "min_count": 71, "overrides": {"OvmNGq5c": {"buffer_count": 2, "buffer_percent": 13, "configuration": "yhg6lo6E", "enable_region_overrides": true, "extendable_session": true, "game_version": "ZSrYrTal", "max_count": 81, "min_count": 76, "name": "87j90Efq", "region_overrides": {"x6SlOqW5": {"buffer_count": 67, "buffer_percent": 46, "max_count": 31, "min_count": 95, "name": "a0FYfSn4", "unlimited": false, "use_buffer_percent": true}, "a0Gs6TcG": {"buffer_count": 52, "buffer_percent": 7, "max_count": 83, "min_count": 95, "name": "7iAD0gtk", "unlimited": false, "use_buffer_percent": false}, "IE2Ebvjt": {"buffer_count": 77, "buffer_percent": 17, "max_count": 85, "min_count": 68, "name": "lxxVmTOH", "unlimited": true, "use_buffer_percent": false}}, "regions": ["AStgy2e1", "5mige7dl", "sqr19ayz"], "session_timeout": 40, "unlimited": false, "use_buffer_percent": true}, "C7s586MY": {"buffer_count": 100, "buffer_percent": 13, "configuration": "VBfXBkVp", "enable_region_overrides": false, "extendable_session": false, "game_version": "IIw6POrW", "max_count": 90, "min_count": 50, "name": "3RLf4gLV", "region_overrides": {"24th3bG2": {"buffer_count": 1, "buffer_percent": 51, "max_count": 56, "min_count": 27, "name": "gogMZnaQ", "unlimited": true, "use_buffer_percent": true}, "xJMGImnR": {"buffer_count": 94, "buffer_percent": 55, "max_count": 0, "min_count": 76, "name": "MqpZLjWs", "unlimited": false, "use_buffer_percent": true}, "FLqewjuL": {"buffer_count": 3, "buffer_percent": 100, "max_count": 96, "min_count": 66, "name": "jEOtPpcd", "unlimited": true, "use_buffer_percent": true}}, "regions": ["zd0SPgRB", "9pMwPi0r", "O3Uot1XC"], "session_timeout": 69, "unlimited": false, "use_buffer_percent": true}, "A7YNQTrN": {"buffer_count": 54, "buffer_percent": 90, "configuration": "9FRQiEJy", "enable_region_overrides": false, "extendable_session": true, "game_version": "IGpW4eW8", "max_count": 81, "min_count": 92, "name": "UlrNHFZI", "region_overrides": {"kFPEy1ou": {"buffer_count": 74, "buffer_percent": 57, "max_count": 15, "min_count": 89, "name": "kPs4ZtN7", "unlimited": true, "use_buffer_percent": false}, "SrqCdxGt": {"buffer_count": 63, "buffer_percent": 88, "max_count": 38, "min_count": 27, "name": "VGJclB9P", "unlimited": true, "use_buffer_percent": true}, "TrOsVK5f": {"buffer_count": 63, "buffer_percent": 12, "max_count": 6, "min_count": 62, "name": "DZ4zC9o0", "unlimited": true, "use_buffer_percent": true}}, "regions": ["gRY435ip", "BvqvGYM1", "zbyxzfa7"], "session_timeout": 75, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"8yBIA1Nf": {"buffer_count": 32, "buffer_percent": 17, "max_count": 38, "min_count": 59, "name": "biTeZ9Ob", "unlimited": true, "use_buffer_percent": false}, "VmEdr98N": {"buffer_count": 55, "buffer_percent": 69, "max_count": 18, "min_count": 39, "name": "llNC4RXX", "unlimited": false, "use_buffer_percent": true}, "nsPkGOjZ": {"buffer_count": 66, "buffer_percent": 34, "max_count": 3, "min_count": 35, "name": "easGC5kX", "unlimited": false, "use_buffer_percent": true}}, "regions": ["7nXREGuK", "GMBDvCjI", "3CEkG6bb"], "session_timeout": 30, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 59 'CreateDeploymentClient' test.out

#- 60 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'TtzxVqfc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteDeploymentClient' test.out

#- 61 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '40' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 61 'GetAllPodConfigClient' test.out

#- 62 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'ZkHoT9Un' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 78, "mem_limit": 45, "params": "8cNxkmbj"}' \
    > test.out 2>&1
eval_tap $? 62 'CreatePodConfigClient' test.out

#- 63 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'OtZe1Wss' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeletePodConfigClient' test.out

#- 64 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '80' \
    --offset '55' \
    --q 'oDUnvrS0' \
    --sortBy 'updatedAt' \
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
    --version 'A9bzMH2n' \
    > test.out 2>&1
eval_tap $? 66 'ImageDetailClient' test.out

#- 67 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region '6ZPYw4Sa' \
    --count '40' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 67 'ListServerClient' test.out

#- 68 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "UxxYy0it"}' \
    > test.out 2>&1
eval_tap $? 68 'ServerHeartbeat' test.out

#- 69 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "PnXYN7XW"}' \
    > test.out 2>&1
eval_tap $? 69 'DeregisterLocalServer' test.out

#- 70 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "edSzapLG", "ip": "d5HkNYXd", "name": "eHa3Hztp", "port": 1}' \
    > test.out 2>&1
eval_tap $? 70 'RegisterLocalServer' test.out

#- 71 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "h3fWbrRu", "pod_name": "xuq5IT60"}' \
    > test.out 2>&1
eval_tap $? 71 'RegisterServer' test.out

#- 72 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": false, "pod_name": "GtvpqvxV"}' \
    > test.out 2>&1
eval_tap $? 72 'ShutdownServer' test.out

#- 73 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'mSXANknf' \
    > test.out 2>&1
eval_tap $? 73 'GetServerSessionTimeout' test.out

#- 74 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'FBdTLrbX' \
    > test.out 2>&1
eval_tap $? 74 'GetServerSession' test.out

#- 75 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "rD2WDr7K", "configuration": "wXWBlM3g", "deployment": "OpV8kTm1", "game_mode": "LyFIxvqZ", "matching_allies": [{"matching_parties": [{"party_attributes": {"WMtzRgT6": {}, "Kg0hwVKQ": {}, "kB9bD6Eb": {}}, "party_id": "4EL9Wzzr", "party_members": [{"user_id": "Bs8Wxin9"}, {"user_id": "NBBRqjHY"}, {"user_id": "iQ7O86gB"}]}, {"party_attributes": {"NcLVBtyu": {}, "y7cSF15U": {}, "nOvdahWz": {}}, "party_id": "4BAot3bi", "party_members": [{"user_id": "O0aIzkaQ"}, {"user_id": "L20DtJJC"}, {"user_id": "d7m4mJDS"}]}, {"party_attributes": {"E2PTE7wT": {}, "5Trse4iQ": {}, "RZtSzVhF": {}}, "party_id": "nOo6IMa4", "party_members": [{"user_id": "h2TrtwH1"}, {"user_id": "UoGxzZSy"}, {"user_id": "6ibe8bSS"}]}]}, {"matching_parties": [{"party_attributes": {"5OrVnbHC": {}, "5Xn2wi7F": {}, "X9OIM7TO": {}}, "party_id": "JNtdrnZo", "party_members": [{"user_id": "MXy9NngF"}, {"user_id": "aewJMjuz"}, {"user_id": "rOyJVHWn"}]}, {"party_attributes": {"ndl8BeEm": {}, "2cwMLb1X": {}, "ZuEz9yeb": {}}, "party_id": "wPSSQ0vv", "party_members": [{"user_id": "l3ktUAOU"}, {"user_id": "NQQ63maS"}, {"user_id": "e02lFooC"}]}, {"party_attributes": {"jxoqNzXm": {}, "FpIcuGGz": {}, "JOQe1syi": {}}, "party_id": "TAVCuUzp", "party_members": [{"user_id": "o79DChID"}, {"user_id": "AoxuxFUH"}, {"user_id": "QjOFjEuu"}]}]}, {"matching_parties": [{"party_attributes": {"mgyyo75i": {}, "UXVjaGHZ": {}, "Ll2SwMFy": {}}, "party_id": "o1t177S2", "party_members": [{"user_id": "tNn3zKjJ"}, {"user_id": "oUzhLBl5"}, {"user_id": "UrUmczE0"}]}, {"party_attributes": {"x5RhouHK": {}, "mqGfAkjh": {}, "A70jNsYB": {}}, "party_id": "ptODaxWu", "party_members": [{"user_id": "5xiWa7qA"}, {"user_id": "JwDqIEA0"}, {"user_id": "irvKhJ8d"}]}, {"party_attributes": {"ygDRAFJN": {}, "MNkkK8Go": {}, "UK26SK4Y": {}}, "party_id": "sPRXfbCK", "party_members": [{"user_id": "vuLwqRSE"}, {"user_id": "xg5iMfSk"}, {"user_id": "KWahC0ol"}]}]}], "namespace": "kJOZLuwf", "notification_payload": {}, "pod_name": "mAdXjjO5", "region": "8UKYDQQX", "session_id": "1ZnRGJ2Q"}' \
    > test.out 2>&1
eval_tap $? 75 'CreateSession' test.out

#- 76 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "bwYHuNyh"}' \
    > test.out 2>&1
eval_tap $? 76 'ClaimServer' test.out

#- 77 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID '84kjYpBU' \
    > test.out 2>&1
eval_tap $? 77 'GetSession' test.out

#- 78 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'WgL08hJS' \
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
    --region 'eYJWD7Nv' \
    > test.out 2>&1
eval_tap $? 81 'ListProvidersByRegion' test.out

#- 82 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 82 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE