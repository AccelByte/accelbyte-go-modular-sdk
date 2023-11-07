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
    --body '{"artifactPath": "lQ5eIzkx", "coreDumpEnabled": true, "image": "miNW6yio", "imageReplicationsMap": {"PqTuy1dH": {"failure_code": "7WogCBPR", "region": "NnQ6iXbb", "status": "KbYanzmu", "uri": "Y47kTPBz"}, "ewlp5l46": {"failure_code": "F5Erkua9", "region": "xbcMJlE7", "status": "umbbchSd", "uri": "Gsdsq53p"}, "zUFlS2d6": {"failure_code": "Czl6ceAB", "region": "BWYNK4md", "status": "kTDskIPI", "uri": "GpqolSXJ"}}, "namespace": "Ldd1FfBl", "patchVersion": "qtYObJpT", "persistent": true, "version": "xSD5Qvl8"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "ijEaK3wK", "coreDumpEnabled": true, "dockerPath": "9Zozh6jx", "image": "zkbAY7ON", "imageSize": 91, "namespace": "RUsyt8HB", "persistent": true, "ulimitFileSize": 85, "version": "nAAZ7z2f"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "HiDBgKn9", "coreDumpEnabled": true, "dockerPath": "CmxEU0Wi", "image": "qHn09m73", "imageSize": 94, "namespace": "qwLehJdC", "patchVersion": "tQpq9fE8", "persistent": true, "ulimitFileSize": 24, "uploaderFlag": "NDrgGUzP", "version": "UMTfp5Qf"}' \
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
    --body '{"claim_timeout": 23, "creation_timeout": 2, "default_version": "UHsqBgm1", "port": 34, "ports": {"oom63HZW": 20, "hVIeejaa": 1, "F6vqM3Hv": 93}, "protocol": "TBmo0dAe", "providers": ["UTcxLeFN", "rOjiME2R", "w18K4dq5"], "session_timeout": 91, "unreachable_timeout": 0}' \
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
    --body '{"claim_timeout": 57, "creation_timeout": 83, "default_version": "ZNfMiiyS", "port": 66, "protocol": "RPG9PZU7", "providers": ["VWdRQqwH", "kmcc4i56", "baBEBEMt"], "session_timeout": 45, "unreachable_timeout": 22}' \
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
    --name 'nc8P32YE' \
    --count '78' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'fZ5hdtNM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'v9N4gIqF' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 55, "buffer_percent": 63, "configuration": "lu9xDFql", "enable_region_overrides": true, "extendable_session": false, "game_version": "bvkNG7lu", "max_count": 55, "min_count": 59, "overrides": {"86X9FqiF": {"buffer_count": 52, "buffer_percent": 86, "configuration": "eBcDmM00", "enable_region_overrides": true, "extendable_session": true, "game_version": "UXGtNMfr", "max_count": 47, "min_count": 94, "name": "JggBXtEZ", "region_overrides": {"PD3wcs3f": {"buffer_count": 81, "buffer_percent": 1, "max_count": 19, "min_count": 56, "name": "GLjc5A6h", "unlimited": false, "use_buffer_percent": false}, "SBwDUZ6L": {"buffer_count": 44, "buffer_percent": 11, "max_count": 38, "min_count": 9, "name": "09Yc46bq", "unlimited": true, "use_buffer_percent": true}, "10WJaeF4": {"buffer_count": 18, "buffer_percent": 67, "max_count": 5, "min_count": 94, "name": "bwvnSGfs", "unlimited": false, "use_buffer_percent": false}}, "regions": ["HTabo8b6", "TNXjvH9m", "qngLgQ2D"], "session_timeout": 76, "unlimited": false, "use_buffer_percent": true}, "TO2So7JH": {"buffer_count": 17, "buffer_percent": 59, "configuration": "JsL8Q58k", "enable_region_overrides": false, "extendable_session": false, "game_version": "I9HRAx9t", "max_count": 79, "min_count": 42, "name": "Bgi3MXHw", "region_overrides": {"37UW2oxF": {"buffer_count": 30, "buffer_percent": 90, "max_count": 58, "min_count": 53, "name": "88JlRsZV", "unlimited": true, "use_buffer_percent": false}, "7qUTIxaK": {"buffer_count": 44, "buffer_percent": 38, "max_count": 16, "min_count": 89, "name": "afhzvINj", "unlimited": false, "use_buffer_percent": false}, "PYRQOGAB": {"buffer_count": 44, "buffer_percent": 31, "max_count": 40, "min_count": 69, "name": "atlGwWGC", "unlimited": true, "use_buffer_percent": false}}, "regions": ["BI6E6zqE", "eGYIv19K", "kjY5Mx00"], "session_timeout": 67, "unlimited": true, "use_buffer_percent": false}, "cVyTyBfG": {"buffer_count": 50, "buffer_percent": 1, "configuration": "zKqEtAII", "enable_region_overrides": true, "extendable_session": false, "game_version": "sLKd42Er", "max_count": 95, "min_count": 81, "name": "WR7CrZO6", "region_overrides": {"gMvSN8fs": {"buffer_count": 51, "buffer_percent": 16, "max_count": 69, "min_count": 36, "name": "Sm9jKCsJ", "unlimited": true, "use_buffer_percent": true}, "yKVACGAz": {"buffer_count": 51, "buffer_percent": 15, "max_count": 18, "min_count": 98, "name": "2tmilKhq", "unlimited": true, "use_buffer_percent": false}, "HoGJQ2ns": {"buffer_count": 10, "buffer_percent": 34, "max_count": 20, "min_count": 13, "name": "DrlVw0zx", "unlimited": true, "use_buffer_percent": false}}, "regions": ["h2zO1WgK", "FdJky6Mx", "hkGG4hdd"], "session_timeout": 15, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"yoGsTPQB": {"buffer_count": 100, "buffer_percent": 57, "max_count": 4, "min_count": 37, "name": "VBaAvT41", "unlimited": true, "use_buffer_percent": true}, "Tx7esBmr": {"buffer_count": 42, "buffer_percent": 17, "max_count": 46, "min_count": 91, "name": "qWtPgNVt", "unlimited": false, "use_buffer_percent": true}, "92uoDvhb": {"buffer_count": 38, "buffer_percent": 35, "max_count": 65, "min_count": 13, "name": "g80c5Hm4", "unlimited": true, "use_buffer_percent": true}}, "regions": ["ikxGSHN4", "ewEnuWuI", "HpmR6s1P"], "session_timeout": 24, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'nGpkvVSf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'EXbs07kK' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 82, "buffer_percent": 27, "configuration": "8aAEtKGP", "enable_region_overrides": true, "extendable_session": false, "game_version": "lXsCbAjF", "max_count": 66, "min_count": 26, "regions": ["qrj8xKp1", "mkuJPlfp", "1UFFvG6R"], "session_timeout": 33, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'HbzvWYpN' \
    --namespace $AB_NAMESPACE \
    --region 'Q6bn27R2' \
    --body '{"buffer_count": 97, "buffer_percent": 5, "max_count": 26, "min_count": 98, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'svm4L36Z' \
    --namespace $AB_NAMESPACE \
    --region 'ZeyjY5Tr' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'wns3BFLR' \
    --namespace $AB_NAMESPACE \
    --region 'CEMz0C8L' \
    --body '{"buffer_count": 43, "buffer_percent": 82, "max_count": 49, "min_count": 66, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'unGXu0ps' \
    --namespace $AB_NAMESPACE \
    --version 'LczZ6EQz' \
    --body '{"buffer_count": 97, "buffer_percent": 36, "configuration": "OxavXh4C", "enable_region_overrides": true, "extendable_session": true, "game_version": "LmDlccoJ", "max_count": 95, "min_count": 53, "region_overrides": {"j2stPUhS": {"buffer_count": 17, "buffer_percent": 100, "max_count": 69, "min_count": 37, "name": "FR2pVV4j", "unlimited": true, "use_buffer_percent": true}, "gWvLTV4h": {"buffer_count": 60, "buffer_percent": 73, "max_count": 21, "min_count": 40, "name": "Ndaju9Bc", "unlimited": true, "use_buffer_percent": true}, "CoiIatk4": {"buffer_count": 19, "buffer_percent": 31, "max_count": 45, "min_count": 35, "name": "6FvDWXQ6", "unlimited": true, "use_buffer_percent": true}}, "regions": ["1hTanibc", "AO5GnKy6", "8edP3JPb"], "session_timeout": 30, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'mzQD5FM9' \
    --namespace $AB_NAMESPACE \
    --version 'ulzTpMch' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'N91OLe6K' \
    --namespace $AB_NAMESPACE \
    --version 'KBpN764g' \
    --body '{"buffer_count": 82, "buffer_percent": 97, "configuration": "6zmufFvQ", "enable_region_overrides": false, "game_version": "jtOVgI6M", "max_count": 54, "min_count": 54, "regions": ["4YIFy9Ys", "pNtOpiFs", "1BN8GyVI"], "session_timeout": 17, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'GdclabCt' \
    --namespace $AB_NAMESPACE \
    --region 'qotIYdES' \
    --version '5sbahTUV' \
    --body '{"buffer_count": 80, "buffer_percent": 98, "max_count": 56, "min_count": 16, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment '8aohvk06' \
    --namespace $AB_NAMESPACE \
    --region 'Vru5wUIx' \
    --version 'y4C3STB9' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'sfx843m1' \
    --namespace $AB_NAMESPACE \
    --region 'bICb4TJM' \
    --version 'qzMn488t' \
    --body '{"buffer_count": 8, "buffer_percent": 8, "max_count": 64, "min_count": 58, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '19' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'uA1WXNGc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'O7lAlCAN' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 57, "mem_limit": 26, "params": "dJ60sAop"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'euQRftGv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'l4GB0oaK' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 30, "mem_limit": 93, "name": "d3pj8PqJ", "params": "wC0it0V4"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'XqRw1r1t' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 86}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'PIsLzFOm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'VsHGYyJx' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "GFsJk7J7", "port": 9}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'O36UUlJD' \
    --sortBy 'version' \
    --sortDirection 'desc' \
    --count '30' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'uUzSA9KE' \
    --version 'KkSQLbxb' \
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
    --imageURI 'r6xqODY3' \
    --version '3KKLuIhz' \
    --versionPatch 'D27dYVgY' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'k8iPYIrB' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'LTHT3MIP' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version '5Yyfvckz' \
    --versionPatch 'HIQUqEEH' \
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
    --region 'o8UVPnFZ' \
    --count '0' \
    --offset '63' \
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
    --region '3cg9FBZv' \
    > test.out 2>&1
eval_tap $? 47 'CountServerDetailed' test.out

#- 48 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'ListLocalServer' test.out

#- 49 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'xgdYta3r' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'DeleteLocalServer' test.out

#- 50 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'c65N8WHs' \
    > test.out 2>&1
eval_tap $? 50 'GetServer' test.out

#- 51 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'AIyWtBTL' \
    > test.out 2>&1
eval_tap $? 51 'DeleteServer' test.out

#- 52 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'AfsIRu10' \
    --withServer 'false' \
    --count '86' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 52 'ListSession' test.out

#- 53 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'TgPabVvD' \
    > test.out 2>&1
eval_tap $? 53 'CountSession' test.out

#- 54 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'm9J8U9lY' \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "WFYtY8mO", "repository": "nmerfiBG"}' \
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
    --name 'l7l1SPRJ' \
    --count '1' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 58 'GetAllDeploymentClient' test.out

#- 59 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment '9jkcA1xf' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 26, "buffer_percent": 94, "configuration": "NIki3uY7", "enable_region_overrides": true, "extendable_session": false, "game_version": "uzgTuES1", "max_count": 68, "min_count": 66, "overrides": {"pR5GFazN": {"buffer_count": 81, "buffer_percent": 86, "configuration": "RMRgjCVG", "enable_region_overrides": false, "extendable_session": true, "game_version": "dE1x86DV", "max_count": 26, "min_count": 19, "name": "IcjIKiZz", "region_overrides": {"iKu8UyQP": {"buffer_count": 27, "buffer_percent": 87, "max_count": 52, "min_count": 91, "name": "9BmTnZZn", "unlimited": true, "use_buffer_percent": false}, "JbLticIX": {"buffer_count": 38, "buffer_percent": 69, "max_count": 38, "min_count": 93, "name": "cfNq4Mi3", "unlimited": false, "use_buffer_percent": false}, "nVH0N3mo": {"buffer_count": 85, "buffer_percent": 10, "max_count": 76, "min_count": 15, "name": "zBsrfMLp", "unlimited": true, "use_buffer_percent": false}}, "regions": ["bqxk6dJo", "PbWrtECf", "p5HSWL4P"], "session_timeout": 16, "unlimited": false, "use_buffer_percent": true}, "26uUFO5Q": {"buffer_count": 63, "buffer_percent": 90, "configuration": "ttJ6spyX", "enable_region_overrides": true, "extendable_session": false, "game_version": "7NUH890J", "max_count": 67, "min_count": 67, "name": "NfPhknse", "region_overrides": {"3TbwUL4T": {"buffer_count": 25, "buffer_percent": 8, "max_count": 80, "min_count": 68, "name": "2SIheGO6", "unlimited": true, "use_buffer_percent": false}, "qfCvSG9B": {"buffer_count": 93, "buffer_percent": 68, "max_count": 32, "min_count": 49, "name": "j9sSHZk4", "unlimited": false, "use_buffer_percent": false}, "ieyDNdmq": {"buffer_count": 35, "buffer_percent": 29, "max_count": 10, "min_count": 82, "name": "O4XfKQsI", "unlimited": false, "use_buffer_percent": false}}, "regions": ["hGdArvB3", "MQJ25bAi", "csqwVkpG"], "session_timeout": 29, "unlimited": true, "use_buffer_percent": true}, "WH8fEyfo": {"buffer_count": 23, "buffer_percent": 84, "configuration": "0F9fIian", "enable_region_overrides": true, "extendable_session": true, "game_version": "XRtmKX53", "max_count": 46, "min_count": 90, "name": "eYJT5Kym", "region_overrides": {"KV9HqYkC": {"buffer_count": 30, "buffer_percent": 19, "max_count": 18, "min_count": 88, "name": "JV2cDmUw", "unlimited": false, "use_buffer_percent": true}, "DNpzh6xj": {"buffer_count": 46, "buffer_percent": 83, "max_count": 69, "min_count": 71, "name": "fESyBmkQ", "unlimited": false, "use_buffer_percent": true}, "eg7SIzNP": {"buffer_count": 62, "buffer_percent": 88, "max_count": 68, "min_count": 20, "name": "o3QiJlC5", "unlimited": false, "use_buffer_percent": true}}, "regions": ["crqqBt9t", "hEe96sPf", "BubAcSuf"], "session_timeout": 33, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"0YeRJAa5": {"buffer_count": 68, "buffer_percent": 47, "max_count": 54, "min_count": 17, "name": "83ftpZaw", "unlimited": true, "use_buffer_percent": true}, "sO4bsjES": {"buffer_count": 87, "buffer_percent": 39, "max_count": 66, "min_count": 27, "name": "4PaYR9Dt", "unlimited": false, "use_buffer_percent": true}, "bcdH6LAF": {"buffer_count": 9, "buffer_percent": 38, "max_count": 18, "min_count": 54, "name": "hRbHQGxl", "unlimited": false, "use_buffer_percent": true}}, "regions": ["09DgBwra", "bF3yczYB", "YafHnhzV"], "session_timeout": 93, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 59 'CreateDeploymentClient' test.out

#- 60 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'HthO3IZo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteDeploymentClient' test.out

#- 61 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '11' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 61 'GetAllPodConfigClient' test.out

#- 62 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name '7Lyqrg2B' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 53, "mem_limit": 2, "params": "8PQcgJFe"}' \
    > test.out 2>&1
eval_tap $? 62 'CreatePodConfigClient' test.out

#- 63 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'InDVzUww' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeletePodConfigClient' test.out

#- 64 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '98' \
    --offset '77' \
    --q 'Z4OIKmdm' \
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
    --version 'rUcMJpNC' \
    > test.out 2>&1
eval_tap $? 66 'ImageDetailClient' test.out

#- 67 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'pXBk9Hxg' \
    --count '86' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 67 'ListServerClient' test.out

#- 68 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "97odEG9t"}' \
    > test.out 2>&1
eval_tap $? 68 'ServerHeartbeat' test.out

#- 69 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "FnAgZ7Uu"}' \
    > test.out 2>&1
eval_tap $? 69 'DeregisterLocalServer' test.out

#- 70 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "uvO1AMaH", "ip": "Yuclo61E", "name": "cGbFE1jd", "port": 47}' \
    > test.out 2>&1
eval_tap $? 70 'RegisterLocalServer' test.out

#- 71 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "zwAAg5Om", "pod_name": "d9ZE1pjF"}' \
    > test.out 2>&1
eval_tap $? 71 'RegisterServer' test.out

#- 72 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "m3N5JGTX"}' \
    > test.out 2>&1
eval_tap $? 72 'ShutdownServer' test.out

#- 73 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'gVzdgusb' \
    > test.out 2>&1
eval_tap $? 73 'GetServerSessionTimeout' test.out

#- 74 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'OxMA6gPM' \
    > test.out 2>&1
eval_tap $? 74 'GetServerSession' test.out

#- 75 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "Mlni5O2a", "configuration": "Y8SmMCrd", "deployment": "HXR6jQfl", "game_mode": "cSUlqiRX", "matching_allies": [{"matching_parties": [{"party_attributes": {"Dc1OYLkF": {}, "0e6gmGcU": {}, "T67Ib8j5": {}}, "party_id": "mIobCypF", "party_members": [{"user_id": "sl2znO7b"}, {"user_id": "qLbQgWzz"}, {"user_id": "wJY9cDOE"}]}, {"party_attributes": {"baHxhKRE": {}, "cDth6pQ1": {}, "KMTJ51by": {}}, "party_id": "YpbeVQUi", "party_members": [{"user_id": "QpAvOaC8"}, {"user_id": "o8Ntbybw"}, {"user_id": "1p1FrLLP"}]}, {"party_attributes": {"Q09Zj5wE": {}, "EZ6mmQXW": {}, "T7Tcwa5M": {}}, "party_id": "03IntcAZ", "party_members": [{"user_id": "qSUOInRu"}, {"user_id": "iiF5nc69"}, {"user_id": "3DJAgE6k"}]}]}, {"matching_parties": [{"party_attributes": {"iJYYQUTC": {}, "YXu2sEIU": {}, "Z65bmZF1": {}}, "party_id": "clM5q0hq", "party_members": [{"user_id": "76k8nCI2"}, {"user_id": "j6Ql3gc1"}, {"user_id": "gxdhsFmA"}]}, {"party_attributes": {"3klDJwrz": {}, "OAEjPrfS": {}, "LNtp1FI9": {}}, "party_id": "1m1vucJ3", "party_members": [{"user_id": "0Ky10p13"}, {"user_id": "EIs6cJ7P"}, {"user_id": "at5KxXAP"}]}, {"party_attributes": {"svvPwwKH": {}, "F8tQelKl": {}, "kWuN5JqS": {}}, "party_id": "5E7P1ySe", "party_members": [{"user_id": "U2239hSv"}, {"user_id": "PHGJhF3Z"}, {"user_id": "JzqDCexh"}]}]}, {"matching_parties": [{"party_attributes": {"5OXeTA7A": {}, "W62M710D": {}, "JgduJleR": {}}, "party_id": "4Y9AiPdV", "party_members": [{"user_id": "KtY9C14e"}, {"user_id": "VYuHnNb9"}, {"user_id": "l5e9XzHF"}]}, {"party_attributes": {"7JXSukyP": {}, "AQwAdY5K": {}, "CqvmiTvS": {}}, "party_id": "qziIyoCU", "party_members": [{"user_id": "Ue2uRc7z"}, {"user_id": "XlzadOx9"}, {"user_id": "oefUzN1I"}]}, {"party_attributes": {"04TZJkm5": {}, "OuITuYcN": {}, "nbiBbWDe": {}}, "party_id": "NidjuYRr", "party_members": [{"user_id": "iGUpmcYs"}, {"user_id": "D7BqiFpK"}, {"user_id": "0Aw8OSUX"}]}]}], "namespace": "ttPN4neG", "notification_payload": {}, "pod_name": "T5wSY7ff", "region": "oHbp6rV4", "session_id": "OxJ2PVAP"}' \
    > test.out 2>&1
eval_tap $? 75 'CreateSession' test.out

#- 76 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "2R1mxqZy"}' \
    > test.out 2>&1
eval_tap $? 76 'ClaimServer' test.out

#- 77 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'HlbWW6er' \
    > test.out 2>&1
eval_tap $? 77 'GetSession' test.out

#- 78 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'hOQdWJjb' \
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
    --region 'II5ISJLr' \
    > test.out 2>&1
eval_tap $? 81 'ListProvidersByRegion' test.out

#- 82 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 82 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE