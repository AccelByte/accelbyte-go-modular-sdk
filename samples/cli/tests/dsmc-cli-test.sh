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
    --body '{"artifactPath": "SUreYxB6", "coreDumpEnabled": false, "image": "8C0PlsS7", "imageReplicationsMap": {"E2SeQxRx": {"failure_code": "SmWNQ7Of", "region": "JZTYR1qP", "status": "Fih6QTUe", "uri": "9QxDTfRy"}, "X109GQmp": {"failure_code": "bq2CmZdU", "region": "QXcjYxd6", "status": "8LbFdGZJ", "uri": "sJgFx6wi"}, "a4yU1z0a": {"failure_code": "ss7yeVX8", "region": "NcoTSvdn", "status": "nxBuHKB0", "uri": "nUp3iiRj"}}, "namespace": "ZR56f6fn", "patchVersion": "nNgrapIK", "persistent": true, "version": "d3UxGKZ2"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "95agT4NM", "coreDumpEnabled": true, "dockerPath": "fxUDjjKk", "image": "evNFt2yF", "imageSize": 88, "namespace": "HLFE4aKj", "persistent": true, "ulimitFileSize": 60, "version": "3wQrvl8I"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "NvLkUfwq", "coreDumpEnabled": false, "dockerPath": "o5ULcv4r", "image": "5vRXDMms", "imageSize": 3, "namespace": "2jRJf7qC", "patchVersion": "LmmqXxDH", "persistent": false, "ulimitFileSize": 61, "uploaderFlag": "tgU4xgaU", "version": "daSwLxEs"}' \
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
    --body '{"claim_timeout": 62, "creation_timeout": 25, "default_version": "sIJ1HWKi", "port": 12, "ports": {"5WwpsFSo": 9, "DiIkALRl": 70, "kJiOqM12": 97}, "protocol": "GkZMyX2x", "providers": ["005XM6xR", "R99v6vM3", "Lna0DFrg"], "session_timeout": 65, "unreachable_timeout": 68}' \
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
    --body '{"claim_timeout": 35, "creation_timeout": 46, "default_version": "NvTJBDBg", "port": 56, "protocol": "b3TUmo2h", "providers": ["erxafrn5", "k6NKSdNX", "4PruhpsV"], "session_timeout": 58, "unreachable_timeout": 82}' \
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
    --name 'LPeeBQfD' \
    --count '84' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'DJSf2SLB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'bbZYFhyl' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 74, "buffer_percent": 2, "configuration": "Cn9740rk", "enable_region_overrides": false, "extendable_session": false, "game_version": "5ZUea0un", "max_count": 81, "min_count": 26, "overrides": {"r9GNFMgJ": {"buffer_count": 68, "buffer_percent": 70, "configuration": "Aex3VTjD", "enable_region_overrides": false, "extendable_session": true, "game_version": "S17cQRTA", "max_count": 0, "min_count": 96, "name": "JYE4MgHL", "region_overrides": {"0aE9YXoq": {"buffer_count": 70, "buffer_percent": 43, "max_count": 21, "min_count": 36, "name": "W59Wa96S", "unlimited": false, "use_buffer_percent": true}, "D29ayvmc": {"buffer_count": 94, "buffer_percent": 89, "max_count": 28, "min_count": 59, "name": "gxUpiKwe", "unlimited": true, "use_buffer_percent": true}, "ncrPNcue": {"buffer_count": 53, "buffer_percent": 91, "max_count": 39, "min_count": 9, "name": "yNTDgche", "unlimited": false, "use_buffer_percent": false}}, "regions": ["hJLvNkFH", "ZMZWet43", "ETbjJnmw"], "session_timeout": 54, "unlimited": false, "use_buffer_percent": true}, "KE8xIV9T": {"buffer_count": 32, "buffer_percent": 16, "configuration": "WhImPrJ8", "enable_region_overrides": true, "extendable_session": false, "game_version": "PXckEsw7", "max_count": 39, "min_count": 85, "name": "UAfROimm", "region_overrides": {"YRgZiTM2": {"buffer_count": 61, "buffer_percent": 66, "max_count": 61, "min_count": 58, "name": "oT702IWH", "unlimited": true, "use_buffer_percent": true}, "1PuRLVEL": {"buffer_count": 57, "buffer_percent": 56, "max_count": 58, "min_count": 17, "name": "eupJwlUk", "unlimited": false, "use_buffer_percent": false}, "Bm9A904c": {"buffer_count": 29, "buffer_percent": 55, "max_count": 72, "min_count": 32, "name": "xLNSjiK5", "unlimited": false, "use_buffer_percent": true}}, "regions": ["1vXOMCSA", "SrbyaLKg", "Qv9lZOvx"], "session_timeout": 41, "unlimited": true, "use_buffer_percent": true}, "UhbWsh8Q": {"buffer_count": 67, "buffer_percent": 37, "configuration": "A1l0EjjJ", "enable_region_overrides": false, "extendable_session": true, "game_version": "6XeACtI8", "max_count": 0, "min_count": 45, "name": "dp2HvDLC", "region_overrides": {"yUBcrjPy": {"buffer_count": 84, "buffer_percent": 52, "max_count": 92, "min_count": 87, "name": "LMaZZbtM", "unlimited": true, "use_buffer_percent": false}, "ImiHxse2": {"buffer_count": 83, "buffer_percent": 28, "max_count": 10, "min_count": 4, "name": "GlsoQRCr", "unlimited": false, "use_buffer_percent": true}, "vzBBfqGm": {"buffer_count": 0, "buffer_percent": 10, "max_count": 80, "min_count": 80, "name": "OWe5XIoe", "unlimited": true, "use_buffer_percent": false}}, "regions": ["jWOMcnuy", "6KuwmCot", "ZtJHaW2X"], "session_timeout": 77, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"htVQ1UAD": {"buffer_count": 63, "buffer_percent": 0, "max_count": 2, "min_count": 70, "name": "L4FeMtu4", "unlimited": true, "use_buffer_percent": false}, "U3nzVt2Q": {"buffer_count": 49, "buffer_percent": 65, "max_count": 90, "min_count": 75, "name": "hlYdrYqz", "unlimited": true, "use_buffer_percent": true}, "UGVuQdAR": {"buffer_count": 91, "buffer_percent": 56, "max_count": 96, "min_count": 43, "name": "SjmfgDBM", "unlimited": true, "use_buffer_percent": false}}, "regions": ["R6KczW82", "BHJr7F6b", "7MucQR78"], "session_timeout": 32, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'DhkiHG1G' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'rL8L8kyv' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 59, "buffer_percent": 68, "configuration": "nRJbJ44y", "enable_region_overrides": false, "extendable_session": false, "game_version": "ALSuqEJ2", "max_count": 54, "min_count": 68, "regions": ["ZhvB8qTI", "PsIhBMn7", "sRMeQenq"], "session_timeout": 99, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment '6Wqmemf4' \
    --namespace $AB_NAMESPACE \
    --region 'Yu24dqjn' \
    --body '{"buffer_count": 66, "buffer_percent": 61, "max_count": 27, "min_count": 42, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'AjhWWxJA' \
    --namespace $AB_NAMESPACE \
    --region 'iBXlu1iE' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'PZOz7YBm' \
    --namespace $AB_NAMESPACE \
    --region 'uhAskPFU' \
    --body '{"buffer_count": 64, "buffer_percent": 94, "max_count": 29, "min_count": 89, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment '0GCJTuik' \
    --namespace $AB_NAMESPACE \
    --version '2RGiPOBN' \
    --body '{"buffer_count": 0, "buffer_percent": 33, "configuration": "lKwCTwBO", "enable_region_overrides": false, "extendable_session": true, "game_version": "lPxhS7qs", "max_count": 48, "min_count": 14, "region_overrides": {"VcwyLFVm": {"buffer_count": 14, "buffer_percent": 78, "max_count": 1, "min_count": 84, "name": "MxZuFuyx", "unlimited": false, "use_buffer_percent": false}, "GyLbZhiI": {"buffer_count": 41, "buffer_percent": 97, "max_count": 25, "min_count": 51, "name": "I7qCkaBp", "unlimited": true, "use_buffer_percent": true}, "D78QCDXb": {"buffer_count": 76, "buffer_percent": 62, "max_count": 99, "min_count": 88, "name": "xSppno1J", "unlimited": true, "use_buffer_percent": false}}, "regions": ["bRSodyoA", "9P7PBUK8", "PB6aGhlV"], "session_timeout": 50, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'dXSsiu1W' \
    --namespace $AB_NAMESPACE \
    --version 'UoTES4VH' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'GClBXG5T' \
    --namespace $AB_NAMESPACE \
    --version 'VQO0hhS0' \
    --body '{"buffer_count": 36, "buffer_percent": 34, "configuration": "qN8XpPPB", "enable_region_overrides": true, "game_version": "8k82sDct", "max_count": 7, "min_count": 47, "regions": ["z4HzMEqs", "L8EfqlAA", "NVVxaHQr"], "session_timeout": 67, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'vbWog903' \
    --namespace $AB_NAMESPACE \
    --region 'zlYJPZn7' \
    --version 'E0ZItGK6' \
    --body '{"buffer_count": 48, "buffer_percent": 20, "max_count": 56, "min_count": 98, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'wnHfUGJu' \
    --namespace $AB_NAMESPACE \
    --region 'IwSzXgAa' \
    --version 'lGIXDniJ' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'ccolyLIC' \
    --namespace $AB_NAMESPACE \
    --region 'VKPsdVle' \
    --version 'T3q6Puvl' \
    --body '{"buffer_count": 89, "buffer_percent": 45, "max_count": 32, "min_count": 73, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '32' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'HUsoJbmE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'o41WjXI5' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 9, "mem_limit": 61, "params": "nfD43EGH"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'UAny0kS9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'BVSK5vWu' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 12, "mem_limit": 86, "name": "g4KraRvP", "params": "aDId5lDS"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name '9iNUgVoJ' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 59}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name '3hw6aTQi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'Zf8oWPhT' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "LQSVJktb", "port": 27}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q '5PFvskox' \
    --sortBy 'updatedAt' \
    --sortDirection 'asc' \
    --count '82' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'kRRITEep' \
    --version 'WJBaYxxr' \
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
    --imageURI 'clDWcCcb' \
    --version 'tkeekGHN' \
    --versionPatch '5citinEY' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'xqyFmxmX' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'NfjR2pWo' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'ZmNO3gyA' \
    --versionPatch 'jr4dYPOu' \
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
    --region 'BKpvVmq5' \
    --count '5' \
    --offset '34' \
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
    --region 'Lo0BQ8i7' \
    > test.out 2>&1
eval_tap $? 47 'CountServerDetailed' test.out

#- 48 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'ListLocalServer' test.out

#- 49 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'ATeR0MKR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'DeleteLocalServer' test.out

#- 50 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'SaAmCSKA' \
    > test.out 2>&1
eval_tap $? 50 'GetServer' test.out

#- 51 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'OQ8QBben' \
    > test.out 2>&1
eval_tap $? 51 'DeleteServer' test.out

#- 52 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'Hyo1NzTK' \
    --withServer 'false' \
    --count '73' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 52 'ListSession' test.out

#- 53 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'xU4AF0vk' \
    > test.out 2>&1
eval_tap $? 53 'CountSession' test.out

#- 54 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'CD0ZxKz1' \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "w2DfXm7x", "repository": "PQlmrwIu"}' \
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
    --name 'qwJDKiOv' \
    --count '91' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 58 'GetAllDeploymentClient' test.out

#- 59 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment 'DaGyhK49' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 50, "buffer_percent": 81, "configuration": "Hm2XTrMq", "enable_region_overrides": false, "extendable_session": false, "game_version": "uVAtFcCZ", "max_count": 58, "min_count": 13, "overrides": {"5DdbGNxB": {"buffer_count": 51, "buffer_percent": 35, "configuration": "0x93tbV5", "enable_region_overrides": true, "extendable_session": false, "game_version": "CmMjYqcH", "max_count": 26, "min_count": 89, "name": "gAXRIdZr", "region_overrides": {"8f85Zg8X": {"buffer_count": 76, "buffer_percent": 37, "max_count": 75, "min_count": 100, "name": "6PnJ7EgZ", "unlimited": false, "use_buffer_percent": false}, "BxqAxNVq": {"buffer_count": 30, "buffer_percent": 46, "max_count": 100, "min_count": 30, "name": "jC3LvUH8", "unlimited": false, "use_buffer_percent": false}, "XuTZt5kf": {"buffer_count": 56, "buffer_percent": 33, "max_count": 41, "min_count": 33, "name": "WcIoP1Gf", "unlimited": false, "use_buffer_percent": true}}, "regions": ["LXg4xXRK", "TXc4mf1o", "VRNjP6Wl"], "session_timeout": 92, "unlimited": true, "use_buffer_percent": false}, "j81Te9SK": {"buffer_count": 49, "buffer_percent": 3, "configuration": "TtWJayTa", "enable_region_overrides": true, "extendable_session": false, "game_version": "OFzJijkh", "max_count": 11, "min_count": 95, "name": "OCLYdWz9", "region_overrides": {"cZKRvrA7": {"buffer_count": 21, "buffer_percent": 29, "max_count": 71, "min_count": 93, "name": "pv1LwB7k", "unlimited": true, "use_buffer_percent": true}, "UWlpEMUu": {"buffer_count": 85, "buffer_percent": 93, "max_count": 1, "min_count": 70, "name": "FfmyaQdX", "unlimited": true, "use_buffer_percent": true}, "WVyYYkKC": {"buffer_count": 84, "buffer_percent": 99, "max_count": 94, "min_count": 90, "name": "ZmjXjnGk", "unlimited": true, "use_buffer_percent": false}}, "regions": ["neOb1Eh6", "Qq26fVZf", "r8f1r7Nj"], "session_timeout": 93, "unlimited": true, "use_buffer_percent": false}, "FZ8JNK0A": {"buffer_count": 19, "buffer_percent": 10, "configuration": "6oHjsWWx", "enable_region_overrides": false, "extendable_session": true, "game_version": "DcCbUBjF", "max_count": 58, "min_count": 72, "name": "WaNv5DqF", "region_overrides": {"cUHHaVdr": {"buffer_count": 78, "buffer_percent": 34, "max_count": 56, "min_count": 53, "name": "FHAdkSX4", "unlimited": false, "use_buffer_percent": true}, "05WByiSp": {"buffer_count": 16, "buffer_percent": 18, "max_count": 50, "min_count": 71, "name": "gnxz9OPG", "unlimited": true, "use_buffer_percent": false}, "hI7LBrX7": {"buffer_count": 92, "buffer_percent": 94, "max_count": 21, "min_count": 44, "name": "VT0TBCfq", "unlimited": false, "use_buffer_percent": false}}, "regions": ["aucNEPwN", "RZVcertL", "HZslXOWm"], "session_timeout": 33, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"hk8a6M3b": {"buffer_count": 96, "buffer_percent": 14, "max_count": 93, "min_count": 29, "name": "lcyTy6XR", "unlimited": false, "use_buffer_percent": true}, "Zprm5WZ7": {"buffer_count": 82, "buffer_percent": 31, "max_count": 57, "min_count": 44, "name": "TDcvHl29", "unlimited": true, "use_buffer_percent": true}, "kE20KKVo": {"buffer_count": 56, "buffer_percent": 65, "max_count": 32, "min_count": 55, "name": "OzywKedg", "unlimited": false, "use_buffer_percent": true}}, "regions": ["GB1tgGNN", "k36koQ4q", "gvEgioBa"], "session_timeout": 71, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 59 'CreateDeploymentClient' test.out

#- 60 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'FjG3WVS2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteDeploymentClient' test.out

#- 61 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '69' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 61 'GetAllPodConfigClient' test.out

#- 62 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'HeEJNN9f' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 34, "mem_limit": 78, "params": "JTriHDsa"}' \
    > test.out 2>&1
eval_tap $? 62 'CreatePodConfigClient' test.out

#- 63 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name '2Jtw9Lmo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeletePodConfigClient' test.out

#- 64 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '98' \
    --offset '63' \
    --q 'ZPIiMgLB' \
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
    --version 'yxkAq0Ru' \
    > test.out 2>&1
eval_tap $? 66 'ImageDetailClient' test.out

#- 67 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'Mk8rDtMs' \
    --count '94' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 67 'ListServerClient' test.out

#- 68 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "Y4KLiQwY"}' \
    > test.out 2>&1
eval_tap $? 68 'ServerHeartbeat' test.out

#- 69 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "0mJojT7O"}' \
    > test.out 2>&1
eval_tap $? 69 'DeregisterLocalServer' test.out

#- 70 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "3H1WaVnt", "ip": "mV7FJ3tj", "name": "fzTA0TJt", "port": 17}' \
    > test.out 2>&1
eval_tap $? 70 'RegisterLocalServer' test.out

#- 71 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "Un6dfxP0", "pod_name": "3tBD4ZWu"}' \
    > test.out 2>&1
eval_tap $? 71 'RegisterServer' test.out

#- 72 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "eun5kf58"}' \
    > test.out 2>&1
eval_tap $? 72 'ShutdownServer' test.out

#- 73 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'NDNttZh5' \
    > test.out 2>&1
eval_tap $? 73 'GetServerSessionTimeout' test.out

#- 74 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'A2yjkSTw' \
    > test.out 2>&1
eval_tap $? 74 'GetServerSession' test.out

#- 75 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "KKuAnsgM", "configuration": "3D2Ba3sM", "deployment": "kBZCCIBR", "game_mode": "QVjZH1Nb", "matching_allies": [{"matching_parties": [{"party_attributes": {"25b4CHuj": {}, "ASvQcynl": {}, "iSGoiYn6": {}}, "party_id": "mOaDC0sw", "party_members": [{"user_id": "Ki35MmbH"}, {"user_id": "B0lt1JKu"}, {"user_id": "FzGfQHHU"}]}, {"party_attributes": {"gPhYoJTw": {}, "KCJ6OfxE": {}, "68mhkrvj": {}}, "party_id": "0NxWmyQT", "party_members": [{"user_id": "xaw0Fg40"}, {"user_id": "edt50FPE"}, {"user_id": "zeeWEeV7"}]}, {"party_attributes": {"VR5g8jm0": {}, "g4lV9vgk": {}, "xh22X6Gl": {}}, "party_id": "SuG6VDqG", "party_members": [{"user_id": "XFwNE0Pf"}, {"user_id": "tB1OAmiz"}, {"user_id": "kvAB5kOC"}]}]}, {"matching_parties": [{"party_attributes": {"zdGVRk2t": {}, "I0QpIbCH": {}, "2tW9Uu78": {}}, "party_id": "1gv0Kavf", "party_members": [{"user_id": "YpJobgcu"}, {"user_id": "pAowKUeT"}, {"user_id": "vaeHiSyS"}]}, {"party_attributes": {"IlERFpob": {}, "b8vRSl7K": {}, "duEyjCUi": {}}, "party_id": "JYgt7dT5", "party_members": [{"user_id": "yidjxrF4"}, {"user_id": "kzhpCtNt"}, {"user_id": "1TTQwuPf"}]}, {"party_attributes": {"xXeJVkFP": {}, "SWVhRnuy": {}, "W51cE6lU": {}}, "party_id": "SwlpMU1p", "party_members": [{"user_id": "FSqIJs0Y"}, {"user_id": "S4B2328m"}, {"user_id": "hVTK7E5x"}]}]}, {"matching_parties": [{"party_attributes": {"F6uPOvzV": {}, "h64SoHIO": {}, "f9Mh4Z0s": {}}, "party_id": "GDRtAJrm", "party_members": [{"user_id": "UPTjsykJ"}, {"user_id": "sLvmLxQg"}, {"user_id": "aw8EQSia"}]}, {"party_attributes": {"bJITZ1AL": {}, "DfQJ3YHl": {}, "Mt1dN49F": {}}, "party_id": "lyRr7Igf", "party_members": [{"user_id": "AtXuP9mM"}, {"user_id": "2BwtAlFM"}, {"user_id": "NvJdtg1j"}]}, {"party_attributes": {"2SHlijbq": {}, "dWRJalrO": {}, "o4xfZfbR": {}}, "party_id": "3731pJi0", "party_members": [{"user_id": "WFbxiC2C"}, {"user_id": "scjBGyRJ"}, {"user_id": "qovfUfsz"}]}]}], "namespace": "iyAYDTQu", "notification_payload": {}, "pod_name": "rkpiGbtT", "region": "9c50YceW", "session_id": "9qC7Zn6u"}' \
    > test.out 2>&1
eval_tap $? 75 'CreateSession' test.out

#- 76 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "20wJQm0S"}' \
    > test.out 2>&1
eval_tap $? 76 'ClaimServer' test.out

#- 77 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'tmVX5Rlp' \
    > test.out 2>&1
eval_tap $? 77 'GetSession' test.out

#- 78 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'Sn93YRaZ' \
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
    --region 'GdsSWDgx' \
    > test.out 2>&1
eval_tap $? 81 'ListProvidersByRegion' test.out

#- 82 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 82 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE