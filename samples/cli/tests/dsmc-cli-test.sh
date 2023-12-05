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
    --body '{"artifactPath": "DvW9XewV", "coreDumpEnabled": true, "image": "sopxHXOf", "imageReplicationsMap": {"lNIkDvb1": {"failure_code": "UokRHkSN", "region": "TNWCp2f0", "status": "F6QoPp4s", "uri": "YsZRg0f7"}, "vKSbPMzT": {"failure_code": "PCScFOPH", "region": "i2Ru5ppq", "status": "CAQoK1Dj", "uri": "E67cg6Gv"}, "QfiEurSc": {"failure_code": "oXDLfBJJ", "region": "DU0PCaqf", "status": "0F8VIuci", "uri": "sH3oPIWd"}}, "namespace": "Bl03NLCi", "patchVersion": "w3ueZFqK", "persistent": false, "version": "KHah5Ysl"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "Y4g0g4tt", "coreDumpEnabled": true, "dockerPath": "71u3e7hJ", "image": "0erQVRRS", "imageSize": 79, "namespace": "PeJ4lpH0", "persistent": true, "ulimitFileSize": 5, "version": "29ElneJS"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "26EtolrI", "coreDumpEnabled": false, "dockerPath": "vjWrHBJk", "image": "ilJB8kbW", "imageSize": 99, "namespace": "hsay5qdU", "patchVersion": "ToyEZGty", "persistent": false, "ulimitFileSize": 50, "uploaderFlag": "WWf52w5R", "version": "6zbO9AgV"}' \
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
    --body '{"claim_timeout": 7, "creation_timeout": 79, "default_version": "ShvyPJ7s", "port": 91, "ports": {"Bgf4CCda": 39, "D4CNP5Qg": 5, "1z1p8wxM": 87}, "protocol": "qazDjSek", "providers": ["pbiWbVIk", "oGsh86iL", "tS55wkYY"], "session_timeout": 78, "unreachable_timeout": 95}' \
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
    --body '{"claim_timeout": 63, "creation_timeout": 73, "default_version": "bfqwZCeW", "port": 32, "protocol": "zNPy282o", "providers": ["ndSCL6JQ", "1VNClmHp", "CjuvzvIS"], "session_timeout": 54, "unreachable_timeout": 18}' \
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
    --name 'h6vxOu5O' \
    --count '56' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'jdpIZ5jY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'DzyAwry4' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 1, "buffer_percent": 65, "configuration": "xoszgrOP", "enable_region_overrides": true, "extendable_session": false, "game_version": "9PmBHWm2", "max_count": 63, "min_count": 37, "overrides": {"KjqJoLeO": {"buffer_count": 54, "buffer_percent": 11, "configuration": "zfhy4oaa", "enable_region_overrides": false, "extendable_session": true, "game_version": "2KyP7MKr", "max_count": 59, "min_count": 64, "name": "7v0hC4Oj", "region_overrides": {"4JuXW5AZ": {"buffer_count": 91, "buffer_percent": 39, "max_count": 67, "min_count": 70, "name": "4r64nDuj", "unlimited": true, "use_buffer_percent": false}, "lm2U6t7b": {"buffer_count": 54, "buffer_percent": 87, "max_count": 64, "min_count": 19, "name": "wz80qkzS", "unlimited": false, "use_buffer_percent": true}, "Ef5Pu2f8": {"buffer_count": 8, "buffer_percent": 89, "max_count": 24, "min_count": 30, "name": "Hvw0Z0Cj", "unlimited": false, "use_buffer_percent": false}}, "regions": ["jzk0NwyJ", "zX6pi7AY", "sq8LKleL"], "session_timeout": 48, "unlimited": true, "use_buffer_percent": true}, "o6LEKFuI": {"buffer_count": 4, "buffer_percent": 34, "configuration": "h3Kehy4a", "enable_region_overrides": true, "extendable_session": false, "game_version": "uFf5vu9j", "max_count": 19, "min_count": 98, "name": "kfUBT3xt", "region_overrides": {"NWZDbzLq": {"buffer_count": 91, "buffer_percent": 40, "max_count": 32, "min_count": 60, "name": "HHMI8hn8", "unlimited": true, "use_buffer_percent": false}, "dlhYNPkz": {"buffer_count": 48, "buffer_percent": 90, "max_count": 29, "min_count": 89, "name": "yYc87R34", "unlimited": false, "use_buffer_percent": true}, "G3446Syq": {"buffer_count": 61, "buffer_percent": 37, "max_count": 35, "min_count": 17, "name": "VROfJgUK", "unlimited": false, "use_buffer_percent": true}}, "regions": ["Yb0lQIfN", "uGRdMHXf", "fggmdAg7"], "session_timeout": 13, "unlimited": true, "use_buffer_percent": true}, "e99gcut2": {"buffer_count": 0, "buffer_percent": 49, "configuration": "gPy78gfC", "enable_region_overrides": true, "extendable_session": false, "game_version": "sF9oS8AV", "max_count": 59, "min_count": 9, "name": "ZNzeTSpb", "region_overrides": {"zEnCWHkf": {"buffer_count": 55, "buffer_percent": 54, "max_count": 83, "min_count": 32, "name": "LvgTTdwf", "unlimited": false, "use_buffer_percent": false}, "73qMeAsL": {"buffer_count": 60, "buffer_percent": 60, "max_count": 33, "min_count": 9, "name": "kCQc6lvq", "unlimited": false, "use_buffer_percent": true}, "DJfjWU1Y": {"buffer_count": 11, "buffer_percent": 44, "max_count": 17, "min_count": 82, "name": "8zR6NoZN", "unlimited": true, "use_buffer_percent": true}}, "regions": ["st5u9dan", "rEbnWZI1", "oGEfdQ9X"], "session_timeout": 40, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"Tf0ewuBL": {"buffer_count": 83, "buffer_percent": 46, "max_count": 2, "min_count": 27, "name": "81crhw7d", "unlimited": true, "use_buffer_percent": true}, "B13hpmDO": {"buffer_count": 31, "buffer_percent": 94, "max_count": 79, "min_count": 33, "name": "GQb5GzFT", "unlimited": true, "use_buffer_percent": true}, "3D3F9PGP": {"buffer_count": 15, "buffer_percent": 60, "max_count": 90, "min_count": 70, "name": "YFX93OaM", "unlimited": false, "use_buffer_percent": true}}, "regions": ["i1UQnlAi", "bwqb5fKJ", "zXPPyiy3"], "session_timeout": 61, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'tsuNK5G6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'WhvSizuJ' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 89, "buffer_percent": 82, "configuration": "eq9YHmqr", "enable_region_overrides": false, "extendable_session": true, "game_version": "zRTft1Ol", "max_count": 92, "min_count": 67, "regions": ["ZQ0Ft2MX", "EgLide9Z", "AUxMR7Th"], "session_timeout": 79, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'poRkdLvb' \
    --namespace $AB_NAMESPACE \
    --region 'j5JAYMAW' \
    --body '{"buffer_count": 80, "buffer_percent": 62, "max_count": 34, "min_count": 5, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'N9zLgqT7' \
    --namespace $AB_NAMESPACE \
    --region 'AEqsMibC' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'XV4YxvP1' \
    --namespace $AB_NAMESPACE \
    --region '9LasUnnJ' \
    --body '{"buffer_count": 6, "buffer_percent": 18, "max_count": 19, "min_count": 25, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'tqB5zS8B' \
    --namespace $AB_NAMESPACE \
    --version 'odbDKS5l' \
    --body '{"buffer_count": 99, "buffer_percent": 14, "configuration": "eEJZqczY", "enable_region_overrides": true, "extendable_session": false, "game_version": "b8hAoHub", "max_count": 76, "min_count": 64, "region_overrides": {"ZZsRdhME": {"buffer_count": 6, "buffer_percent": 42, "max_count": 5, "min_count": 87, "name": "r7zs762N", "unlimited": false, "use_buffer_percent": false}, "7htlftGK": {"buffer_count": 19, "buffer_percent": 61, "max_count": 93, "min_count": 41, "name": "26dXDRjs", "unlimited": true, "use_buffer_percent": true}, "4NFT3fT0": {"buffer_count": 23, "buffer_percent": 36, "max_count": 0, "min_count": 24, "name": "NKF4bVxZ", "unlimited": true, "use_buffer_percent": false}}, "regions": ["Gw3ThBRO", "vrrO21RG", "iPkIBE5E"], "session_timeout": 46, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment '5O5Ls0g6' \
    --namespace $AB_NAMESPACE \
    --version '4UZLJirq' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'tLuP3BZf' \
    --namespace $AB_NAMESPACE \
    --version 'FDHdgq95' \
    --body '{"buffer_count": 7, "buffer_percent": 28, "configuration": "OXTtnJtZ", "enable_region_overrides": true, "game_version": "jLbRgSUf", "max_count": 15, "min_count": 89, "regions": ["stPZMtJT", "2v4PAeZK", "MUbSvfb3"], "session_timeout": 32, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'Foa7MNJR' \
    --namespace $AB_NAMESPACE \
    --region '2djCJrBC' \
    --version 'cktEFuxN' \
    --body '{"buffer_count": 75, "buffer_percent": 50, "max_count": 88, "min_count": 63, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'SoZKDwNo' \
    --namespace $AB_NAMESPACE \
    --region 'aw6ZJC46' \
    --version 'y1JMrTrV' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'vtzTf3L3' \
    --namespace $AB_NAMESPACE \
    --region 'mdXF78Np' \
    --version 'qRcl2ZLG' \
    --body '{"buffer_count": 72, "buffer_percent": 62, "max_count": 52, "min_count": 38, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '83' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name '1eK0ODDv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'MGqeY4rL' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 60, "mem_limit": 35, "params": "B6VppqNI"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'p1wsEjKW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'pFFoox6H' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 55, "mem_limit": 89, "name": "eLQeywzn", "params": "MhN3LNOB"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'EbZwgAaB' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 59}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'oiooca2N' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'yoxBLKTZ' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "RSYYzojJ", "port": 19}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'kGl4r0hl' \
    --sortBy 'createdAt' \
    --sortDirection 'desc' \
    --count '68' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'eSz8xF2S' \
    --version 'DRdbpR6d' \
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
    --imageURI 'X8eX96bj' \
    --version 'xTimsjzt' \
    --versionPatch 'rbMsT1NR' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'RYrtWnMk' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'BRUmscAy' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'mKwe3Lv0' \
    --versionPatch '7T4g0RZh' \
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
    --region 'uRj83tXb' \
    --count '11' \
    --offset '48' \
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
    --region 'HSeVufGL' \
    > test.out 2>&1
eval_tap $? 47 'CountServerDetailed' test.out

#- 48 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'ListLocalServer' test.out

#- 49 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'z6l3jQQk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'DeleteLocalServer' test.out

#- 50 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'c5hfJImW' \
    > test.out 2>&1
eval_tap $? 50 'GetServer' test.out

#- 51 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'yPcDkNjv' \
    > test.out 2>&1
eval_tap $? 51 'DeleteServer' test.out

#- 52 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'JpU7Evmd' \
    --withServer 'false' \
    --count '58' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 52 'ListSession' test.out

#- 53 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'mvX08FtX' \
    > test.out 2>&1
eval_tap $? 53 'CountSession' test.out

#- 54 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'TWJVryeJ' \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "wWkk8zkx", "repository": "bpNxsYqM"}' \
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
    --name 'XwkRE0af' \
    --count '82' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 58 'GetAllDeploymentClient' test.out

#- 59 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment 'L7qVScKx' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 97, "buffer_percent": 89, "configuration": "6pbfuzRA", "enable_region_overrides": true, "extendable_session": false, "game_version": "B0TPIkgA", "max_count": 68, "min_count": 60, "overrides": {"knP7P4iU": {"buffer_count": 10, "buffer_percent": 50, "configuration": "t3Cehm98", "enable_region_overrides": true, "extendable_session": true, "game_version": "PC8GQSyk", "max_count": 22, "min_count": 31, "name": "tJ3mAeSl", "region_overrides": {"DNKISOES": {"buffer_count": 55, "buffer_percent": 5, "max_count": 81, "min_count": 19, "name": "ZcFfrVoO", "unlimited": false, "use_buffer_percent": false}, "sjdJmZCZ": {"buffer_count": 85, "buffer_percent": 64, "max_count": 26, "min_count": 66, "name": "ECwrncHy", "unlimited": false, "use_buffer_percent": true}, "RzQ517Af": {"buffer_count": 82, "buffer_percent": 4, "max_count": 71, "min_count": 89, "name": "GW3jTeWz", "unlimited": true, "use_buffer_percent": true}}, "regions": ["NmMNz0Fc", "MJn68BHw", "RccORDdS"], "session_timeout": 18, "unlimited": false, "use_buffer_percent": false}, "AJKDMaMI": {"buffer_count": 92, "buffer_percent": 1, "configuration": "dADLMjXv", "enable_region_overrides": true, "extendable_session": true, "game_version": "2v7vlJ8p", "max_count": 39, "min_count": 34, "name": "Qc6Y4OJe", "region_overrides": {"SN7Cj8To": {"buffer_count": 59, "buffer_percent": 26, "max_count": 13, "min_count": 47, "name": "ooL41iIe", "unlimited": false, "use_buffer_percent": true}, "3SKunX4S": {"buffer_count": 58, "buffer_percent": 71, "max_count": 92, "min_count": 39, "name": "IBdxaLeA", "unlimited": true, "use_buffer_percent": true}, "rQQeBIUI": {"buffer_count": 29, "buffer_percent": 85, "max_count": 13, "min_count": 79, "name": "AVDs7FpH", "unlimited": false, "use_buffer_percent": false}}, "regions": ["HTQucagA", "1HTFGcQS", "AOLzEDJo"], "session_timeout": 76, "unlimited": false, "use_buffer_percent": true}, "vhtrXqem": {"buffer_count": 62, "buffer_percent": 44, "configuration": "i7hpZKbA", "enable_region_overrides": false, "extendable_session": true, "game_version": "OgHho7M5", "max_count": 3, "min_count": 80, "name": "4GScJDBX", "region_overrides": {"vxnXIwtk": {"buffer_count": 13, "buffer_percent": 48, "max_count": 29, "min_count": 93, "name": "7wPxjutJ", "unlimited": true, "use_buffer_percent": true}, "F9JIMUsI": {"buffer_count": 5, "buffer_percent": 34, "max_count": 51, "min_count": 23, "name": "M4h10PJf", "unlimited": false, "use_buffer_percent": true}, "6xYwGNFr": {"buffer_count": 99, "buffer_percent": 98, "max_count": 21, "min_count": 9, "name": "ltzPwqAp", "unlimited": true, "use_buffer_percent": true}}, "regions": ["pKRJZtoY", "iu9wdfbi", "hYEJbiYu"], "session_timeout": 8, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"lG8AJELt": {"buffer_count": 40, "buffer_percent": 78, "max_count": 29, "min_count": 86, "name": "ZzN01OQ0", "unlimited": false, "use_buffer_percent": true}, "hFYJp6bc": {"buffer_count": 63, "buffer_percent": 6, "max_count": 17, "min_count": 65, "name": "c9Ru0D2b", "unlimited": false, "use_buffer_percent": true}, "8aBX3yt8": {"buffer_count": 11, "buffer_percent": 16, "max_count": 2, "min_count": 1, "name": "cW7kMuqA", "unlimited": true, "use_buffer_percent": true}}, "regions": ["3eY7YE92", "OB7AlQdH", "u0XlBkZg"], "session_timeout": 67, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 59 'CreateDeploymentClient' test.out

#- 60 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'qh2YJ5GB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteDeploymentClient' test.out

#- 61 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '68' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 61 'GetAllPodConfigClient' test.out

#- 62 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'sMcb0Rcm' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 18, "mem_limit": 72, "params": "3PXwgxGI"}' \
    > test.out 2>&1
eval_tap $? 62 'CreatePodConfigClient' test.out

#- 63 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name '2K8NgNxG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeletePodConfigClient' test.out

#- 64 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '75' \
    --offset '44' \
    --q 'qSPlX19q' \
    --sortBy 'createdAt' \
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
    --version 'WZfqvz1t' \
    > test.out 2>&1
eval_tap $? 66 'ImageDetailClient' test.out

#- 67 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'cvOLPcx9' \
    --count '31' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 67 'ListServerClient' test.out

#- 68 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "hxrS6WaO"}' \
    > test.out 2>&1
eval_tap $? 68 'ServerHeartbeat' test.out

#- 69 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "qL168OGd"}' \
    > test.out 2>&1
eval_tap $? 69 'DeregisterLocalServer' test.out

#- 70 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "jW2rGPsd", "ip": "qfX6T9B5", "name": "0lUhsgOj", "port": 20}' \
    > test.out 2>&1
eval_tap $? 70 'RegisterLocalServer' test.out

#- 71 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "armZe0RO", "pod_name": "YUvFAXh2"}' \
    > test.out 2>&1
eval_tap $? 71 'RegisterServer' test.out

#- 72 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "IzeneWWA"}' \
    > test.out 2>&1
eval_tap $? 72 'ShutdownServer' test.out

#- 73 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName '2UUMl3RD' \
    > test.out 2>&1
eval_tap $? 73 'GetServerSessionTimeout' test.out

#- 74 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'g4LCLAd6' \
    > test.out 2>&1
eval_tap $? 74 'GetServerSession' test.out

#- 75 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "B0FzNEoL", "configuration": "TzyWBcUA", "deployment": "ula5wq0y", "game_mode": "4zjcKm28", "matching_allies": [{"matching_parties": [{"party_attributes": {"f3KJdRCy": {}, "lXuaJ2Ww": {}, "KK5Z1mJ6": {}}, "party_id": "CJXjKFMJ", "party_members": [{"user_id": "PUy3TgYG"}, {"user_id": "QFbth12A"}, {"user_id": "5umSKAjh"}]}, {"party_attributes": {"eCjjidRy": {}, "HmcNZWti": {}, "iBz38bnt": {}}, "party_id": "yBXTgbtx", "party_members": [{"user_id": "rIVHtY7a"}, {"user_id": "aOkkcfcR"}, {"user_id": "tEclWHuG"}]}, {"party_attributes": {"7wRXUOgx": {}, "2zywb1VJ": {}, "xpEn2jVP": {}}, "party_id": "d8K4phZL", "party_members": [{"user_id": "MpUrlQLp"}, {"user_id": "JkqwAscV"}, {"user_id": "Wt9GgWDp"}]}]}, {"matching_parties": [{"party_attributes": {"CXGPY79s": {}, "P6GqXvlq": {}, "0osI0LYr": {}}, "party_id": "Z9Jznld3", "party_members": [{"user_id": "zKM0P35Z"}, {"user_id": "J9mwd345"}, {"user_id": "tiwwIHeg"}]}, {"party_attributes": {"g8ONauCG": {}, "e2Z0ltSd": {}, "AkvIzapJ": {}}, "party_id": "S0WoGZfO", "party_members": [{"user_id": "4KQEIl3R"}, {"user_id": "TIRoZBZp"}, {"user_id": "hxbxAdRD"}]}, {"party_attributes": {"5GR1sqBe": {}, "HbYLXoU7": {}, "eCX8bBBc": {}}, "party_id": "ZGpp55VT", "party_members": [{"user_id": "pp5eU5ez"}, {"user_id": "2AumOuqr"}, {"user_id": "Jdd57Opr"}]}]}, {"matching_parties": [{"party_attributes": {"6d3EVpuD": {}, "cY6fWZtJ": {}, "w7IXJdMx": {}}, "party_id": "z8iZVQV3", "party_members": [{"user_id": "U1n4PKOd"}, {"user_id": "XPAMAtRv"}, {"user_id": "RKuBDrL9"}]}, {"party_attributes": {"iuPt0UnP": {}, "YfRRryIp": {}, "7FPZJ06z": {}}, "party_id": "hTSIWbrl", "party_members": [{"user_id": "HrdvqWpr"}, {"user_id": "5Z7gWgx5"}, {"user_id": "sgQsgbRN"}]}, {"party_attributes": {"lktSIRVP": {}, "mN62Bbu1": {}, "eflcImvM": {}}, "party_id": "FfGChDzn", "party_members": [{"user_id": "Q2EdjwU2"}, {"user_id": "Shqu4eLE"}, {"user_id": "9NXg47RH"}]}]}], "namespace": "cMIhmKqa", "notification_payload": {}, "pod_name": "jKJGlGEW", "region": "nhkhX2Ce", "session_id": "M7roDsf7"}' \
    > test.out 2>&1
eval_tap $? 75 'CreateSession' test.out

#- 76 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "mIZ2UaIf"}' \
    > test.out 2>&1
eval_tap $? 76 'ClaimServer' test.out

#- 77 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'FLBPaSCI' \
    > test.out 2>&1
eval_tap $? 77 'GetSession' test.out

#- 78 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'AemUt6D9' \
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
    --region '3SvjjBfs' \
    > test.out 2>&1
eval_tap $? 81 'ListProvidersByRegion' test.out

#- 82 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 82 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE