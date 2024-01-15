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
    --body '{"artifactPath": "XQqyOPiB", "coreDumpEnabled": true, "image": "kYW6yA6o", "imageReplicationsMap": {"PImhFjwp": {"failure_code": "fk2RndHI", "region": "ICgK3YHL", "status": "fd8Or9X5", "uri": "sxBSxHZx"}, "iLISMCzs": {"failure_code": "pQ8gBAkX", "region": "H2XJ8IT9", "status": "I6gac2nl", "uri": "jutDq3ha"}, "MbH55R5G": {"failure_code": "RcHUgEOS", "region": "OaWWghG4", "status": "adfAeKMT", "uri": "YiUmjXPK"}}, "namespace": "STJP2mAX", "patchVersion": "2BFIpMtJ", "persistent": true, "version": "hY2hJvdi"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "ADxSf02A", "coreDumpEnabled": true, "dockerPath": "dCR9Lq9D", "image": "TEIUbh0T", "imageSize": 36, "namespace": "6SIboLJa", "persistent": false, "ulimitFileSize": 79, "version": "51hBqgoz"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "MMDxK8oy", "coreDumpEnabled": true, "dockerPath": "hGqHYVns", "image": "Ne5qJYi1", "imageSize": 47, "namespace": "4OirAk4e", "patchVersion": "J7orTRX5", "persistent": false, "ulimitFileSize": 44, "uploaderFlag": "abHAFoMX", "version": "sW1w2PdS"}' \
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
    --body '{"claim_timeout": 66, "creation_timeout": 4, "default_version": "Vpmii64i", "port": 82, "ports": {"X1DooeNF": 57, "KTCaTUYf": 63, "veauyJXt": 41}, "protocol": "0caEDmvt", "providers": ["Qc3aVVx3", "bKC2Ajxz", "OACL0vqO"], "session_timeout": 68, "unreachable_timeout": 61}' \
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
    --body '{"claim_timeout": 83, "creation_timeout": 89, "default_version": "EZRmrHN4", "port": 28, "protocol": "frg4IGYD", "providers": ["MbniFP8v", "naLUMgei", "zgToRFq6"], "session_timeout": 25, "unreachable_timeout": 4}' \
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
    --name '2OiNOMtc' \
    --count '39' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'NEw1E2LM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'X4Aml0Ca' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 66, "buffer_percent": 47, "configuration": "xtlA6LpH", "enable_region_overrides": true, "extendable_session": true, "game_version": "3XRinqU7", "max_count": 26, "min_count": 19, "overrides": {"RyDPaoHu": {"buffer_count": 24, "buffer_percent": 18, "configuration": "lOhDbnRD", "enable_region_overrides": true, "extendable_session": true, "game_version": "21315IMd", "max_count": 76, "min_count": 64, "name": "vYfLn8tt", "region_overrides": {"Mur0hfcV": {"buffer_count": 76, "buffer_percent": 33, "max_count": 47, "min_count": 50, "name": "tINaKdVj", "unlimited": true, "use_buffer_percent": false}, "VRpR9O0d": {"buffer_count": 78, "buffer_percent": 94, "max_count": 12, "min_count": 32, "name": "UoVVkKak", "unlimited": false, "use_buffer_percent": true}, "ZOcxi1cP": {"buffer_count": 73, "buffer_percent": 2, "max_count": 14, "min_count": 75, "name": "0Fllnzvi", "unlimited": false, "use_buffer_percent": false}}, "regions": ["jTAHJGeL", "bjRBzDs5", "akkRzJm2"], "session_timeout": 23, "unlimited": false, "use_buffer_percent": true}, "v1Jj8XTw": {"buffer_count": 45, "buffer_percent": 59, "configuration": "uDCMd6Yf", "enable_region_overrides": true, "extendable_session": false, "game_version": "1WWjxbmn", "max_count": 9, "min_count": 39, "name": "OlsIH309", "region_overrides": {"nWAUHkst": {"buffer_count": 43, "buffer_percent": 3, "max_count": 98, "min_count": 16, "name": "o9J1V6rk", "unlimited": true, "use_buffer_percent": true}, "s3llqQnj": {"buffer_count": 61, "buffer_percent": 10, "max_count": 39, "min_count": 62, "name": "aWzdcg9R", "unlimited": false, "use_buffer_percent": true}, "KUGG9vwE": {"buffer_count": 95, "buffer_percent": 54, "max_count": 49, "min_count": 30, "name": "nlF2ALrs", "unlimited": false, "use_buffer_percent": false}}, "regions": ["o0xFmGA9", "Nme4fiUN", "zXyiIIRg"], "session_timeout": 47, "unlimited": false, "use_buffer_percent": true}, "Wy2gsFqp": {"buffer_count": 86, "buffer_percent": 97, "configuration": "x4EuCeM4", "enable_region_overrides": false, "extendable_session": true, "game_version": "LATgNde9", "max_count": 76, "min_count": 62, "name": "Lm7c0nYH", "region_overrides": {"bqVJ84Ei": {"buffer_count": 7, "buffer_percent": 22, "max_count": 83, "min_count": 45, "name": "qKyqdLr6", "unlimited": true, "use_buffer_percent": true}, "RavHT63B": {"buffer_count": 62, "buffer_percent": 77, "max_count": 35, "min_count": 37, "name": "POycD2CY", "unlimited": true, "use_buffer_percent": true}, "WpuC1fRS": {"buffer_count": 38, "buffer_percent": 10, "max_count": 14, "min_count": 9, "name": "AJ2OXH6J", "unlimited": false, "use_buffer_percent": true}}, "regions": ["kJ1iTAFA", "m0H5rQpJ", "OF5KSwym"], "session_timeout": 25, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"R718a1W5": {"buffer_count": 47, "buffer_percent": 7, "max_count": 80, "min_count": 31, "name": "N0dRULli", "unlimited": true, "use_buffer_percent": false}, "WL8WzEmH": {"buffer_count": 14, "buffer_percent": 50, "max_count": 20, "min_count": 85, "name": "PQiQMIxE", "unlimited": false, "use_buffer_percent": false}, "hXAUvYvI": {"buffer_count": 26, "buffer_percent": 36, "max_count": 7, "min_count": 10, "name": "o36tvNkA", "unlimited": true, "use_buffer_percent": false}}, "regions": ["eXi1bNmA", "vSfUyDlC", "rCZswbSC"], "session_timeout": 5, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'og3ajcZR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'wTYOfkFc' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 19, "buffer_percent": 48, "configuration": "VWX3nWl2", "enable_region_overrides": false, "extendable_session": false, "game_version": "nMA9h2Bv", "max_count": 74, "min_count": 5, "regions": ["zT5RV7x9", "6buHvD0G", "I56bLZJ4"], "session_timeout": 34, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'UQ2mthAn' \
    --namespace $AB_NAMESPACE \
    --region 'l411PxCj' \
    --body '{"buffer_count": 97, "buffer_percent": 58, "max_count": 83, "min_count": 75, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'rGtRx85e' \
    --namespace $AB_NAMESPACE \
    --region 'ksYbQcWx' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'R2PBdXyK' \
    --namespace $AB_NAMESPACE \
    --region 'hG0Tw8rM' \
    --body '{"buffer_count": 39, "buffer_percent": 0, "max_count": 43, "min_count": 93, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'sU2y8ZFp' \
    --namespace $AB_NAMESPACE \
    --version 'SOFcn4GQ' \
    --body '{"buffer_count": 96, "buffer_percent": 85, "configuration": "9o21aFsD", "enable_region_overrides": true, "extendable_session": false, "game_version": "21aAsbQl", "max_count": 45, "min_count": 79, "region_overrides": {"wiRpzZrb": {"buffer_count": 50, "buffer_percent": 27, "max_count": 87, "min_count": 7, "name": "G6A2YzHm", "unlimited": true, "use_buffer_percent": true}, "kRFxSVr3": {"buffer_count": 49, "buffer_percent": 40, "max_count": 20, "min_count": 63, "name": "0Mq8y93w", "unlimited": true, "use_buffer_percent": true}, "SJJrUdxu": {"buffer_count": 9, "buffer_percent": 90, "max_count": 84, "min_count": 86, "name": "X7ziNbMy", "unlimited": false, "use_buffer_percent": true}}, "regions": ["Lgtz8CvK", "oKIge0TS", "R5PY99ch"], "session_timeout": 100, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment '1569xvi2' \
    --namespace $AB_NAMESPACE \
    --version '6ia9cblh' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'nJsWdCxU' \
    --namespace $AB_NAMESPACE \
    --version 'BkeY75bk' \
    --body '{"buffer_count": 2, "buffer_percent": 69, "configuration": "LDfHillc", "enable_region_overrides": true, "game_version": "b8oxsCil", "max_count": 67, "min_count": 17, "regions": ["qSS2X0zA", "4YuWsnRG", "uRCgfkui"], "session_timeout": 49, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment '9laQYo7h' \
    --namespace $AB_NAMESPACE \
    --region 'mrFM2qXy' \
    --version 'fDCJHiLL' \
    --body '{"buffer_count": 29, "buffer_percent": 42, "max_count": 20, "min_count": 86, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'u3ShFJjN' \
    --namespace $AB_NAMESPACE \
    --region 'dRCwO0HY' \
    --version 'enq35isv' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'AKgDYuWO' \
    --namespace $AB_NAMESPACE \
    --region 'c9eCoFXv' \
    --version 'Y82ieRTp' \
    --body '{"buffer_count": 58, "buffer_percent": 9, "max_count": 62, "min_count": 89, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '95' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'GmrlP9mB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'pJaoQ2xe' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 9, "mem_limit": 48, "params": "oPFDk2hY"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'bqAj8pyG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'dU0HeqTw' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 23, "mem_limit": 48, "name": "GNj6iVWP", "params": "ZYWAeShV"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'MlOBXatV' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 9}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'b6Zbxt05' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'bVqe7pNM' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "SPXtMga0", "port": 82}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'NKC9gAdi' \
    --sortBy 'updatedAt' \
    --sortDirection 'desc' \
    --count '97' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'fo3N7LOs' \
    --version 'tuUkoJN8' \
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
    --imageURI 'izxukg5p' \
    --version 'Df5MWVDC' \
    --versionPatch 'ctOfIj8s' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'J9I38mK2' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'xdlBpMoq' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'TVvj17d8' \
    --versionPatch 'MKNULGm2' \
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
    --region 'ShxO4val' \
    --count '56' \
    --offset '66' \
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
    --region 'w8CGUDrG' \
    > test.out 2>&1
eval_tap $? 47 'CountServerDetailed' test.out

#- 48 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'ListLocalServer' test.out

#- 49 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name '8F55vjk9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'DeleteLocalServer' test.out

#- 50 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'KUDXKG9K' \
    > test.out 2>&1
eval_tap $? 50 'GetServer' test.out

#- 51 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'Spc2wuIM' \
    > test.out 2>&1
eval_tap $? 51 'DeleteServer' test.out

#- 52 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'hE73pH3Y' \
    --withServer 'false' \
    --count '84' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 52 'ListSession' test.out

#- 53 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'Jc70gdfl' \
    > test.out 2>&1
eval_tap $? 53 'CountSession' test.out

#- 54 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'BxbrAIDL' \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "uLzwDp5a", "repository": "6G55wBwx"}' \
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
    --name 'XiNrDzcv' \
    --count '3' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 58 'GetAllDeploymentClient' test.out

#- 59 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment 'OhXdrIWD' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 63, "buffer_percent": 95, "configuration": "Zo8E7vU5", "enable_region_overrides": false, "extendable_session": false, "game_version": "2pFXQR94", "max_count": 95, "min_count": 81, "overrides": {"EEq0JKNO": {"buffer_count": 71, "buffer_percent": 58, "configuration": "QMhviTrt", "enable_region_overrides": false, "extendable_session": true, "game_version": "EH5UoxVH", "max_count": 92, "min_count": 73, "name": "KxoY8Vbb", "region_overrides": {"JdoLQlpb": {"buffer_count": 43, "buffer_percent": 59, "max_count": 19, "min_count": 98, "name": "0bCnkkUw", "unlimited": false, "use_buffer_percent": true}, "STUYTgHV": {"buffer_count": 11, "buffer_percent": 42, "max_count": 88, "min_count": 68, "name": "3JklKw8Q", "unlimited": false, "use_buffer_percent": false}, "IdarnF54": {"buffer_count": 95, "buffer_percent": 34, "max_count": 96, "min_count": 27, "name": "DrhxQ1Ty", "unlimited": false, "use_buffer_percent": true}}, "regions": ["w02rhpIc", "vrAKlKTt", "WYzFpa0N"], "session_timeout": 18, "unlimited": true, "use_buffer_percent": true}, "Eh2A30Ey": {"buffer_count": 2, "buffer_percent": 37, "configuration": "btfJogW4", "enable_region_overrides": false, "extendable_session": false, "game_version": "gKBTk5qo", "max_count": 24, "min_count": 9, "name": "GDO2u4Hj", "region_overrides": {"tg322GlU": {"buffer_count": 56, "buffer_percent": 39, "max_count": 46, "min_count": 60, "name": "3V7N8jW8", "unlimited": false, "use_buffer_percent": true}, "cGgDSOHP": {"buffer_count": 56, "buffer_percent": 33, "max_count": 56, "min_count": 30, "name": "XDH77Wp7", "unlimited": true, "use_buffer_percent": false}, "AbrN07mi": {"buffer_count": 48, "buffer_percent": 15, "max_count": 92, "min_count": 91, "name": "3OHTFwkA", "unlimited": true, "use_buffer_percent": true}}, "regions": ["EiKiJzls", "Yos0b6eE", "qIVntng8"], "session_timeout": 20, "unlimited": false, "use_buffer_percent": false}, "yBVg7YYO": {"buffer_count": 18, "buffer_percent": 27, "configuration": "bXjxv6mo", "enable_region_overrides": true, "extendable_session": false, "game_version": "SptfAIcZ", "max_count": 83, "min_count": 92, "name": "kEt03Uef", "region_overrides": {"lFXcTq1s": {"buffer_count": 77, "buffer_percent": 97, "max_count": 92, "min_count": 63, "name": "PbIA0r2i", "unlimited": true, "use_buffer_percent": false}, "u099Cerg": {"buffer_count": 100, "buffer_percent": 76, "max_count": 82, "min_count": 86, "name": "HHswy7o5", "unlimited": false, "use_buffer_percent": false}, "aKQ9KJjR": {"buffer_count": 30, "buffer_percent": 95, "max_count": 45, "min_count": 42, "name": "HCeJNBzP", "unlimited": true, "use_buffer_percent": true}}, "regions": ["bRHzlccA", "FB2FdrNa", "miaweqVy"], "session_timeout": 74, "unlimited": true, "use_buffer_percent": false}}, "region_overrides": {"a0Cs4Jkh": {"buffer_count": 87, "buffer_percent": 63, "max_count": 18, "min_count": 19, "name": "artcaQwJ", "unlimited": true, "use_buffer_percent": false}, "7phoYDTG": {"buffer_count": 18, "buffer_percent": 32, "max_count": 65, "min_count": 22, "name": "IUot8gmX", "unlimited": false, "use_buffer_percent": false}, "2T61lPXZ": {"buffer_count": 13, "buffer_percent": 39, "max_count": 85, "min_count": 48, "name": "6n2EmRex", "unlimited": true, "use_buffer_percent": false}}, "regions": ["uH9SM1GT", "BcD1FtRy", "uvVUWYGK"], "session_timeout": 32, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 59 'CreateDeploymentClient' test.out

#- 60 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'zPqwdtAc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteDeploymentClient' test.out

#- 61 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '55' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 61 'GetAllPodConfigClient' test.out

#- 62 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'yYrgag5x' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 87, "mem_limit": 85, "params": "va1JB9lG"}' \
    > test.out 2>&1
eval_tap $? 62 'CreatePodConfigClient' test.out

#- 63 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'wKA0m7ja' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeletePodConfigClient' test.out

#- 64 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '9' \
    --offset '30' \
    --q '8vQb3DNe' \
    --sortBy 'updatedAt' \
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
    --version 'Q5A7XHRg' \
    > test.out 2>&1
eval_tap $? 66 'ImageDetailClient' test.out

#- 67 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'Kd8KqBCk' \
    --count '29' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 67 'ListServerClient' test.out

#- 68 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "4fb9BGAW"}' \
    > test.out 2>&1
eval_tap $? 68 'ServerHeartbeat' test.out

#- 69 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "MqfVYFIT"}' \
    > test.out 2>&1
eval_tap $? 69 'DeregisterLocalServer' test.out

#- 70 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "S6k0YloJ", "ip": "5biuhaxj", "name": "rr0gp06J", "port": 85}' \
    > test.out 2>&1
eval_tap $? 70 'RegisterLocalServer' test.out

#- 71 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "VwL8CzSx", "pod_name": "bZFe3Xsc"}' \
    > test.out 2>&1
eval_tap $? 71 'RegisterServer' test.out

#- 72 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": false, "pod_name": "jy2DUynI"}' \
    > test.out 2>&1
eval_tap $? 72 'ShutdownServer' test.out

#- 73 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'CHt1dXvg' \
    > test.out 2>&1
eval_tap $? 73 'GetServerSessionTimeout' test.out

#- 74 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'v0JX3SwR' \
    > test.out 2>&1
eval_tap $? 74 'GetServerSession' test.out

#- 75 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "ZLrvZRBT", "configuration": "qqGVazM0", "deployment": "lpxjiiS2", "game_mode": "eTyLtL6C", "matching_allies": [{"matching_parties": [{"party_attributes": {"FDmozoXN": {}, "EWGoiwzv": {}, "gkYETaIW": {}}, "party_id": "yxpL2QOD", "party_members": [{"user_id": "uPvZfc4w"}, {"user_id": "HGafKO9O"}, {"user_id": "uvd1SEWs"}]}, {"party_attributes": {"Sp8WPhHR": {}, "B0DcvtxW": {}, "DZZnsgmY": {}}, "party_id": "9lGHfT46", "party_members": [{"user_id": "CpRhP1Yf"}, {"user_id": "boZYcasg"}, {"user_id": "DlcFztBy"}]}, {"party_attributes": {"LvMP3Xdx": {}, "iY0J3k8E": {}, "GcDhLaZG": {}}, "party_id": "SlU1xTVm", "party_members": [{"user_id": "wX4FJ6qO"}, {"user_id": "Obc2uhwq"}, {"user_id": "oo1xwG9o"}]}]}, {"matching_parties": [{"party_attributes": {"ASWSe4AQ": {}, "vpPAZPUU": {}, "1EnHd4YX": {}}, "party_id": "wwlgf3Ne", "party_members": [{"user_id": "Bp8Auobj"}, {"user_id": "UBQOqPnO"}, {"user_id": "AeQG2uRO"}]}, {"party_attributes": {"f8RLeevl": {}, "KJvEkGF2": {}, "voHiW6w7": {}}, "party_id": "Zj2qdoNF", "party_members": [{"user_id": "GEg7lf79"}, {"user_id": "EyqRzd8N"}, {"user_id": "vBc5ZpJ0"}]}, {"party_attributes": {"M8Od8760": {}, "GxUH7Kir": {}, "HdEZVcmR": {}}, "party_id": "NVLWEbC2", "party_members": [{"user_id": "lKUqRvbB"}, {"user_id": "kpwPB5ZA"}, {"user_id": "dNa4LzdB"}]}]}, {"matching_parties": [{"party_attributes": {"Bc2arjWj": {}, "bXB1IEHU": {}, "RViian0B": {}}, "party_id": "FcTqjeCh", "party_members": [{"user_id": "oNf8uRC8"}, {"user_id": "eqk2Vedm"}, {"user_id": "HtzNe55v"}]}, {"party_attributes": {"KutWmYD8": {}, "9ePRtPTY": {}, "SX4V7OH7": {}}, "party_id": "iQehbydp", "party_members": [{"user_id": "lvNAbjo0"}, {"user_id": "mADuGxLQ"}, {"user_id": "1sZoFN9A"}]}, {"party_attributes": {"xO5t5ZIh": {}, "juDQStyA": {}, "kaEU3MCr": {}}, "party_id": "Vk9t48xg", "party_members": [{"user_id": "ZQJfoTT7"}, {"user_id": "jiWbOPmu"}, {"user_id": "qLmSO3OU"}]}]}], "namespace": "BlaORbPc", "notification_payload": {}, "pod_name": "H5z4L3Sw", "region": "HkFTJ0Ad", "session_id": "3GL6YNEu"}' \
    > test.out 2>&1
eval_tap $? 75 'CreateSession' test.out

#- 76 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "I3bOqHbR"}' \
    > test.out 2>&1
eval_tap $? 76 'ClaimServer' test.out

#- 77 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'xui5UQoG' \
    > test.out 2>&1
eval_tap $? 77 'GetSession' test.out

#- 78 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'KCwRQ0f9' \
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
    --region 'QbmtrspG' \
    > test.out 2>&1
eval_tap $? 81 'ListProvidersByRegion' test.out

#- 82 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 82 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE