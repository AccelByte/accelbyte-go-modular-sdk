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
    --body '{"artifactPath": "aPGRtrg0", "coreDumpEnabled": false, "image": "SFuqkc7u", "imageReplicationsMap": {"9RT93GS3": {"failure_code": "LtSe0Ykg", "region": "KORFZIre", "status": "0SwXM9F6", "uri": "baSotVn5"}, "vwCZDSwz": {"failure_code": "XZZjci4V", "region": "asOZ5cOK", "status": "LNrp410p", "uri": "ka8nS8Sc"}, "3LH5detD": {"failure_code": "iAdVegWK", "region": "OWn93H4b", "status": "PkFf6rKr", "uri": "8VbUmtF8"}}, "namespace": "6A8sHPE2", "patchVersion": "AsqU8No2", "persistent": true, "version": "dwVWEOOy"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "hBNZC4iX", "coreDumpEnabled": false, "dockerPath": "7yRtXXhY", "image": "9jC17FbD", "imageSize": 31, "namespace": "c0xIeDp5", "persistent": true, "ulimitFileSize": 31, "version": "hRJWDI8p"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "5zIT9cKv", "coreDumpEnabled": true, "dockerPath": "no0pvLNx", "image": "DdTYklsT", "imageSize": 26, "namespace": "OtzRWBrf", "patchVersion": "Wil4mBwu", "persistent": false, "ulimitFileSize": 51, "uploaderFlag": "ZYTKozYB", "version": "PxUJSHGY"}' \
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
    --body '{"claim_timeout": 38, "creation_timeout": 0, "default_version": "45NYnhFl", "port": 83, "ports": {"pjGCehVc": 70, "ENozJo8r": 31, "xbs38a21": 38}, "protocol": "NfGd1oz0", "providers": ["oinNiqAc", "zIn8RV2t", "Cc5m2lP0"], "session_timeout": 38, "unreachable_timeout": 31}' \
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
    --body '{"claim_timeout": 44, "creation_timeout": 75, "default_version": "H5829x53", "port": 21, "protocol": "qbnvASUt", "providers": ["Zu4qIKtk", "yBn3Zg1M", "b3NWnkwI"], "session_timeout": 74, "unreachable_timeout": 30}' \
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
    --name 'W75wynhc' \
    --count '32' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'MJZvPEOk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'nhTjfGwp' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 5, "buffer_percent": 42, "configuration": "Paqq4SmD", "enable_region_overrides": false, "extendable_session": false, "game_version": "V2EeW4nj", "max_count": 57, "min_count": 30, "overrides": {"vrRAaSqo": {"buffer_count": 38, "buffer_percent": 33, "configuration": "fLL57q3U", "enable_region_overrides": true, "extendable_session": true, "game_version": "hdtajQYh", "max_count": 68, "min_count": 15, "name": "rRvfTbRr", "region_overrides": {"DEY9G3Zc": {"buffer_count": 59, "buffer_percent": 15, "max_count": 45, "min_count": 50, "name": "dcJYWu7Q", "unlimited": false, "use_buffer_percent": false}, "ViLxePlV": {"buffer_count": 90, "buffer_percent": 28, "max_count": 75, "min_count": 98, "name": "uyPPkhzX", "unlimited": true, "use_buffer_percent": true}, "E8hRWcIB": {"buffer_count": 11, "buffer_percent": 27, "max_count": 51, "min_count": 89, "name": "LREa2C4h", "unlimited": false, "use_buffer_percent": false}}, "regions": ["Lt6opDec", "dhvcm2qY", "do1uvwD2"], "session_timeout": 76, "unlimited": true, "use_buffer_percent": false}, "DEvXvyHN": {"buffer_count": 12, "buffer_percent": 8, "configuration": "uOSQuQsW", "enable_region_overrides": true, "extendable_session": false, "game_version": "zGbEBkcm", "max_count": 87, "min_count": 23, "name": "ESdjvtrE", "region_overrides": {"NG8uK5K4": {"buffer_count": 37, "buffer_percent": 81, "max_count": 9, "min_count": 92, "name": "XxXOmlKZ", "unlimited": false, "use_buffer_percent": false}, "jwa7oEZG": {"buffer_count": 9, "buffer_percent": 19, "max_count": 52, "min_count": 50, "name": "qhLqIwho", "unlimited": true, "use_buffer_percent": true}, "i3vOBsLN": {"buffer_count": 14, "buffer_percent": 47, "max_count": 34, "min_count": 31, "name": "cZHpRg3x", "unlimited": true, "use_buffer_percent": false}}, "regions": ["YCuJaK2n", "57smYKS1", "XJOk2Bf7"], "session_timeout": 26, "unlimited": true, "use_buffer_percent": true}, "bXseug2E": {"buffer_count": 34, "buffer_percent": 65, "configuration": "foEU4lZs", "enable_region_overrides": true, "extendable_session": true, "game_version": "Di4yGQZl", "max_count": 22, "min_count": 53, "name": "gNxyrbRC", "region_overrides": {"z4iT9Mbo": {"buffer_count": 26, "buffer_percent": 100, "max_count": 100, "min_count": 79, "name": "qlwuJcSD", "unlimited": true, "use_buffer_percent": false}, "H2doZfgc": {"buffer_count": 20, "buffer_percent": 28, "max_count": 96, "min_count": 16, "name": "Y4oXJTgF", "unlimited": true, "use_buffer_percent": false}, "o9zWD5i4": {"buffer_count": 76, "buffer_percent": 40, "max_count": 27, "min_count": 76, "name": "jRMOvtm0", "unlimited": false, "use_buffer_percent": true}}, "regions": ["asYPqN3s", "PpxgUvfc", "GFRuvCSa"], "session_timeout": 68, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"7cLmPb0R": {"buffer_count": 70, "buffer_percent": 81, "max_count": 6, "min_count": 17, "name": "oPrCx7Jm", "unlimited": true, "use_buffer_percent": false}, "gGYIdMwd": {"buffer_count": 44, "buffer_percent": 15, "max_count": 86, "min_count": 1, "name": "GTJiDns1", "unlimited": true, "use_buffer_percent": false}, "Cu5rUys1": {"buffer_count": 17, "buffer_percent": 23, "max_count": 60, "min_count": 83, "name": "zWoiejj2", "unlimited": true, "use_buffer_percent": true}}, "regions": ["AMfdByki", "8Ue0T4b4", "JKYR6wBi"], "session_timeout": 54, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'eWm1zUgQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'Dv64ATiR' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 30, "buffer_percent": 46, "configuration": "iYdxMnMn", "enable_region_overrides": false, "extendable_session": true, "game_version": "lWeOosPU", "max_count": 33, "min_count": 78, "regions": ["cmCq5Kel", "45MfLGTJ", "KrixiUbi"], "session_timeout": 32, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'ejhKPYy6' \
    --namespace $AB_NAMESPACE \
    --region 'FEqwYJEf' \
    --body '{"buffer_count": 69, "buffer_percent": 21, "max_count": 58, "min_count": 62, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'j36wIX6m' \
    --namespace $AB_NAMESPACE \
    --region 'uMw4Wuv3' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'PeApAqvu' \
    --namespace $AB_NAMESPACE \
    --region 'OEm1d1tg' \
    --body '{"buffer_count": 90, "buffer_percent": 35, "max_count": 69, "min_count": 85, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'CkbtuHBI' \
    --namespace $AB_NAMESPACE \
    --version 'Iu8Erv0N' \
    --body '{"buffer_count": 99, "buffer_percent": 10, "configuration": "wBOzl0zc", "enable_region_overrides": false, "extendable_session": true, "game_version": "BFsmvu9X", "max_count": 33, "min_count": 91, "region_overrides": {"lPNbB0um": {"buffer_count": 81, "buffer_percent": 22, "max_count": 50, "min_count": 88, "name": "UuNosA6G", "unlimited": false, "use_buffer_percent": false}, "VSfEta2b": {"buffer_count": 72, "buffer_percent": 27, "max_count": 78, "min_count": 72, "name": "Hn0fD3Bo", "unlimited": true, "use_buffer_percent": true}, "q70St7sP": {"buffer_count": 95, "buffer_percent": 23, "max_count": 8, "min_count": 72, "name": "wEuysVQT", "unlimited": true, "use_buffer_percent": true}}, "regions": ["ld4FHAyo", "MEhql35w", "zGDBDepY"], "session_timeout": 75, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'yRO7kJkp' \
    --namespace $AB_NAMESPACE \
    --version '28epuRQn' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'DKR3wvwX' \
    --namespace $AB_NAMESPACE \
    --version 'HYAfJEow' \
    --body '{"buffer_count": 78, "buffer_percent": 74, "configuration": "qzSczABN", "enable_region_overrides": true, "game_version": "cjvwKxed", "max_count": 79, "min_count": 16, "regions": ["3IL6Zjlq", "KNnBJhpj", "1pY8dIXb"], "session_timeout": 9, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'D3vGz4rD' \
    --namespace $AB_NAMESPACE \
    --region 'xsCQFwaC' \
    --version 'XUSbUVSm' \
    --body '{"buffer_count": 76, "buffer_percent": 9, "max_count": 64, "min_count": 52, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment '3smXGwTP' \
    --namespace $AB_NAMESPACE \
    --region 'v8rysqo8' \
    --version '1rSbwXlm' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment '393sr5yF' \
    --namespace $AB_NAMESPACE \
    --region 'qcIsB0cV' \
    --version 'KiTOiLZh' \
    --body '{"buffer_count": 18, "buffer_percent": 72, "max_count": 56, "min_count": 4, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '24' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'NUFy8qr1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'ib1sicw9' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 3, "mem_limit": 98, "params": "LdFdaGPg"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'r9o1xZZF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'TFSYxvTm' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 20, "mem_limit": 24, "name": "EmMXFfRW", "params": "ffkC7Zaf"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'ScJZYwhi' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 92}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'YNyUTVZc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'gZBNfa73' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "2ITkPHHf", "port": 12}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'QuCZHROd' \
    --sortBy 'updatedAt' \
    --sortDirection 'desc' \
    --count '44' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI '7F9YxfIq' \
    --version 'JkoT6yd8' \
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
    --imageURI 'ezuiDLdo' \
    --version '5kdnGEvo' \
    --versionPatch 'lHoSiywz' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'SyxRHJMx' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'XSA0nIfA' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'weJ0zuCM' \
    --versionPatch 'oxTiPRqE' \
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
    --region 'hI3H55ML' \
    --count '44' \
    --offset '39' \
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
    --region 'fhEEWisU' \
    > test.out 2>&1
eval_tap $? 47 'CountServerDetailed' test.out

#- 48 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'ListLocalServer' test.out

#- 49 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'kBiqsSEp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'DeleteLocalServer' test.out

#- 50 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName '2xvK3VvT' \
    > test.out 2>&1
eval_tap $? 50 'GetServer' test.out

#- 51 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'ttngjKxF' \
    > test.out 2>&1
eval_tap $? 51 'DeleteServer' test.out

#- 52 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'TcT1zgOG' \
    --withServer 'true' \
    --count '75' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 52 'ListSession' test.out

#- 53 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'WNYWjqZB' \
    > test.out 2>&1
eval_tap $? 53 'CountSession' test.out

#- 54 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'IMD1jHLz' \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "E4a8mBEu", "repository": "e4vO0rDm"}' \
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
    --name 'kfp64FQj' \
    --count '54' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 58 'GetAllDeploymentClient' test.out

#- 59 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment 'UHV2e6aW' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 45, "buffer_percent": 91, "configuration": "7g7qkLyZ", "enable_region_overrides": true, "extendable_session": true, "game_version": "OtVF4rzd", "max_count": 74, "min_count": 51, "overrides": {"K3Vwn1HJ": {"buffer_count": 17, "buffer_percent": 57, "configuration": "rFdgKeqL", "enable_region_overrides": true, "extendable_session": true, "game_version": "cRhAl8x6", "max_count": 38, "min_count": 61, "name": "qJh3ZadE", "region_overrides": {"VWNNttLY": {"buffer_count": 36, "buffer_percent": 29, "max_count": 54, "min_count": 83, "name": "PuK06o7l", "unlimited": true, "use_buffer_percent": false}, "2bVZbVPh": {"buffer_count": 7, "buffer_percent": 51, "max_count": 54, "min_count": 2, "name": "TlJbndQx", "unlimited": true, "use_buffer_percent": false}, "1xtRZB7y": {"buffer_count": 19, "buffer_percent": 87, "max_count": 73, "min_count": 18, "name": "bQSzjxGW", "unlimited": false, "use_buffer_percent": true}}, "regions": ["yhy0tdws", "moNklj7d", "4afoaEi9"], "session_timeout": 75, "unlimited": false, "use_buffer_percent": true}, "y5m7UPg6": {"buffer_count": 17, "buffer_percent": 63, "configuration": "YpvLlDfY", "enable_region_overrides": true, "extendable_session": true, "game_version": "3YRPZ2aW", "max_count": 30, "min_count": 30, "name": "laLJV3jz", "region_overrides": {"R4TsrGyQ": {"buffer_count": 78, "buffer_percent": 29, "max_count": 62, "min_count": 95, "name": "czaU5ySY", "unlimited": true, "use_buffer_percent": true}, "lUlXnq56": {"buffer_count": 19, "buffer_percent": 15, "max_count": 63, "min_count": 0, "name": "gjYGxNOn", "unlimited": true, "use_buffer_percent": false}, "K2OlQuFn": {"buffer_count": 53, "buffer_percent": 28, "max_count": 80, "min_count": 56, "name": "5ycM2iKG", "unlimited": false, "use_buffer_percent": false}}, "regions": ["5bMW2ziY", "eYtNEYDQ", "Mb5rbAhl"], "session_timeout": 37, "unlimited": true, "use_buffer_percent": true}, "53kL6yFW": {"buffer_count": 98, "buffer_percent": 9, "configuration": "HXTqGkUF", "enable_region_overrides": true, "extendable_session": true, "game_version": "NJUROxLt", "max_count": 11, "min_count": 50, "name": "PCPyVFrF", "region_overrides": {"Waeg4Cwz": {"buffer_count": 34, "buffer_percent": 3, "max_count": 19, "min_count": 34, "name": "JV3o7hZ3", "unlimited": true, "use_buffer_percent": true}, "iSA0Hopw": {"buffer_count": 3, "buffer_percent": 68, "max_count": 1, "min_count": 85, "name": "4Ho0tLNL", "unlimited": false, "use_buffer_percent": false}, "fXrgf5sg": {"buffer_count": 31, "buffer_percent": 92, "max_count": 55, "min_count": 9, "name": "BmCTWWYN", "unlimited": true, "use_buffer_percent": false}}, "regions": ["LQC6F7Dk", "dCUR9j84", "cpjUInkd"], "session_timeout": 40, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"i6tDzwMd": {"buffer_count": 76, "buffer_percent": 62, "max_count": 68, "min_count": 19, "name": "D9n1Be7z", "unlimited": false, "use_buffer_percent": true}, "tBsi8E8L": {"buffer_count": 43, "buffer_percent": 99, "max_count": 27, "min_count": 90, "name": "GgLjZc7V", "unlimited": false, "use_buffer_percent": true}, "riuJUVfX": {"buffer_count": 3, "buffer_percent": 21, "max_count": 34, "min_count": 13, "name": "7XE0ljKK", "unlimited": false, "use_buffer_percent": false}}, "regions": ["kNjuLuyz", "3KglCh2l", "ijaFwSBh"], "session_timeout": 68, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 59 'CreateDeploymentClient' test.out

#- 60 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment '3Zcsmd7A' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteDeploymentClient' test.out

#- 61 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '28' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 61 'GetAllPodConfigClient' test.out

#- 62 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name '3Xy1U75e' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 74, "mem_limit": 95, "params": "pj16MI2y"}' \
    > test.out 2>&1
eval_tap $? 62 'CreatePodConfigClient' test.out

#- 63 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'voMsndal' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeletePodConfigClient' test.out

#- 64 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '32' \
    --offset '72' \
    --q '38LAHSIc' \
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
    --version '8SR0OUAE' \
    > test.out 2>&1
eval_tap $? 66 'ImageDetailClient' test.out

#- 67 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'ZPaYzD4U' \
    --count '17' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 67 'ListServerClient' test.out

#- 68 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "VJHwPiBp"}' \
    > test.out 2>&1
eval_tap $? 68 'ServerHeartbeat' test.out

#- 69 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "3xuPWHL2"}' \
    > test.out 2>&1
eval_tap $? 69 'DeregisterLocalServer' test.out

#- 70 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "TaCvyVIw", "ip": "zxelPd9Z", "name": "QmCoMHUr", "port": 75}' \
    > test.out 2>&1
eval_tap $? 70 'RegisterLocalServer' test.out

#- 71 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "fdtufGqt", "pod_name": "5v7APc3X"}' \
    > test.out 2>&1
eval_tap $? 71 'RegisterServer' test.out

#- 72 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "beGBrVbS"}' \
    > test.out 2>&1
eval_tap $? 72 'ShutdownServer' test.out

#- 73 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'jptIRVwA' \
    > test.out 2>&1
eval_tap $? 73 'GetServerSessionTimeout' test.out

#- 74 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName '2S6E0Ult' \
    > test.out 2>&1
eval_tap $? 74 'GetServerSession' test.out

#- 75 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "5FNSNtMK", "configuration": "GEJs98xh", "deployment": "maH7NRjl", "game_mode": "grtSWJHN", "matching_allies": [{"matching_parties": [{"party_attributes": {"XntwsOt4": {}, "U1ljOxaD": {}, "2uLUMb2o": {}}, "party_id": "gDcuOid9", "party_members": [{"user_id": "D9yttQFB"}, {"user_id": "JaGB2uve"}, {"user_id": "l5KhICm8"}]}, {"party_attributes": {"yW2tGFO1": {}, "CsdEIU4F": {}, "zwRM1kG6": {}}, "party_id": "RsZespii", "party_members": [{"user_id": "6OIw7bOz"}, {"user_id": "OoBHBa4Q"}, {"user_id": "SM3rFT6u"}]}, {"party_attributes": {"rYLyaIKp": {}, "XY96D797": {}, "6cO0yLzS": {}}, "party_id": "6JnEANBL", "party_members": [{"user_id": "BjUFsxSq"}, {"user_id": "KsxcIJrD"}, {"user_id": "wyAMUAQM"}]}]}, {"matching_parties": [{"party_attributes": {"nVPjbQdx": {}, "xEc6Kop9": {}, "ViEo643d": {}}, "party_id": "qL7FoVf0", "party_members": [{"user_id": "VJqMXKfv"}, {"user_id": "FcU8QfWM"}, {"user_id": "Sg2gazR5"}]}, {"party_attributes": {"xtpjzhM2": {}, "cpCB1wtx": {}, "BRDb8oZg": {}}, "party_id": "W0NIXdk0", "party_members": [{"user_id": "EBAOVbgp"}, {"user_id": "hpAtifYU"}, {"user_id": "x1dwl9ev"}]}, {"party_attributes": {"EoOL8rLe": {}, "fH0DPM0U": {}, "1UbsNG8v": {}}, "party_id": "SiIobnva", "party_members": [{"user_id": "w8NuELFk"}, {"user_id": "s2LF2ozx"}, {"user_id": "N0anJIzr"}]}]}, {"matching_parties": [{"party_attributes": {"zgJShnRV": {}, "8cO3FUQv": {}, "TVTWYDF8": {}}, "party_id": "I13uAVVS", "party_members": [{"user_id": "VqzuWM1H"}, {"user_id": "UV0osLex"}, {"user_id": "nVIuxkY3"}]}, {"party_attributes": {"hrui6BEb": {}, "XY1ULLZS": {}, "WiXoG2PW": {}}, "party_id": "H8n41aat", "party_members": [{"user_id": "4J40Ktrn"}, {"user_id": "ZIXVDL0B"}, {"user_id": "6eloF5f5"}]}, {"party_attributes": {"hbv6SAHp": {}, "cfs3qLYv": {}, "O4ge2UA2": {}}, "party_id": "nh1YsudN", "party_members": [{"user_id": "OlzpzsP9"}, {"user_id": "y8jFjv4a"}, {"user_id": "tLU2xRdN"}]}]}], "namespace": "wWMrLgRD", "notification_payload": {}, "pod_name": "BTB0lorB", "region": "PP1GvA6R", "session_id": "5j7rmM9j"}' \
    > test.out 2>&1
eval_tap $? 75 'CreateSession' test.out

#- 76 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "iNwx1jKc"}' \
    > test.out 2>&1
eval_tap $? 76 'ClaimServer' test.out

#- 77 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID '1EQEIBW2' \
    > test.out 2>&1
eval_tap $? 77 'GetSession' test.out

#- 78 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'KIxm88GQ' \
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
    --region 'zndl9C2Q' \
    > test.out 2>&1
eval_tap $? 81 'ListProvidersByRegion' test.out

#- 82 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 82 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE