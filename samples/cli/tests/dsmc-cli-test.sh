#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Code generated. DO NOT EDIT.

# Meta:
# - random seed: 256
# - template file: cli_test.j2

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
echo "1..81"

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
    --body '{"artifactPath": "babMQlp6h0gWmArh", "image": "Rr31zbFL2lmm9r7L", "namespace": "BghMbfxYagljWpec", "persistent": false, "version": "FAyvz7tu8EcDYxAB"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "A1a61irkOEBGwGRt", "dockerPath": "WNy9FSGMj0QGFJ2B", "image": "MtNMmAugtGKXuD3q", "imageSize": 1, "namespace": "7yzrQvVSorsEUMPk", "persistent": false, "version": "vJSYjFV1rp0l0b8K"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "PMIlzVsGijbJU9nB", "dockerPath": "Yzl8a16JsEQsp9re", "image": "qnlZvy2mmhgQSBNW", "imageSize": 63, "namespace": "tk8eFJJo7cN9MuzC", "patchVersion": "yIMLjT60wJMKwSwT", "persistent": false, "uploaderFlags": [{"name": "gWQQaT9OA2FL47JD", "shorthand": "0gPY2vFvWad22qwz", "value": "wCWpxXqedB6VIlIo"}, {"name": "cTc2psGwWMnAoDBL", "shorthand": "tKzDWBc8CsIRCnma", "value": "jjXzZWezMNstex3F"}, {"name": "mPeamwkgFRQD8v90", "shorthand": "GPRfaX1akXkfdPws", "value": "dfxTCNgI5k9iRocQ"}], "version": "NOwlSemchrrKKpH9"}' \
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
    --body '{"claim_timeout": 94, "creation_timeout": 2, "default_version": "Rs8JSZ1GdEu5pD1e", "port": 97, "ports": {"hyLVbwPxVgTc1ma1": 62, "DwS70UtNXQU8Wwc6": 44, "PKlCk7awryCy74d4": 83}, "protocol": "j5eWTALDatfduz4b", "providers": ["7X2IOGjfdrDDbbX9", "fn1OhDi9t2RUr7sd", "5uTJ9J4RubVi4zfE"], "session_timeout": 73, "unreachable_timeout": 64}' \
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
    --body '{"claim_timeout": 99, "creation_timeout": 55, "default_version": "VH12C8BmdcuTgM52", "port": 27, "protocol": "yrwN7yRSeZGw4ULa", "providers": ["fW2zTieHRFB6Y1p9", "ATOQvGo9E7cnBZmc", "zHfpX81GuShrWiKs"], "session_timeout": 47, "unreachable_timeout": 89}' \
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
    --name '31IlrhAA0FS7agVO' \
    --count '27' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'BnyKmchHiC0IpM0s' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment '5B0IPVV5QIhjDmlY' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 83, "buffer_percent": 39, "configuration": "Ox3UrTRoupw2Gt6t", "enable_region_overrides": false, "extendable_session": true, "game_version": "Cybb1YzAAKw3V64e", "max_count": 26, "min_count": 56, "overrides": {"ZQIA0B1SsgbDnnlz": {"buffer_count": 18, "buffer_percent": 91, "configuration": "FAepmVmQiv580OY2", "enable_region_overrides": false, "extendable_session": false, "game_version": "lDcGzizdOiaIwXvt", "max_count": 23, "min_count": 48, "name": "GUrZQRSvsoEfHccB", "region_overrides": {"P2w7OKkJGpwIG7r2": {"buffer_count": 16, "buffer_percent": 16, "max_count": 26, "min_count": 89, "name": "ti5ROzPvqDPB9Jt9", "unlimited": true, "use_buffer_percent": true}, "L3hBkzS7sIEMYxGW": {"buffer_count": 49, "buffer_percent": 71, "max_count": 79, "min_count": 1, "name": "a3L5rfmwG5btZSiH", "unlimited": true, "use_buffer_percent": false}, "Le9BlZQ7aYaoYkd1": {"buffer_count": 89, "buffer_percent": 61, "max_count": 9, "min_count": 97, "name": "luYdy8tfOHO3VfPh", "unlimited": true, "use_buffer_percent": false}}, "regions": ["0itwswavwefHHMzN", "LjVVO6G965wN4EZy", "g5NqMSt6fXWsiEjW"], "session_timeout": 29, "unlimited": true, "use_buffer_percent": true}, "z0rWaNb33UeROgaS": {"buffer_count": 52, "buffer_percent": 31, "configuration": "3DDTPLa5Cw37fCyr", "enable_region_overrides": true, "extendable_session": false, "game_version": "LPCV0PjpXi32Nnds", "max_count": 27, "min_count": 87, "name": "UwDGmRUJNjMbZ3Pu", "region_overrides": {"cnuOGfIuee5z2c1F": {"buffer_count": 75, "buffer_percent": 71, "max_count": 23, "min_count": 23, "name": "cRcacwHolC0V2Atx", "unlimited": true, "use_buffer_percent": true}, "b0Qg9LmvdM4H6IwI": {"buffer_count": 1, "buffer_percent": 61, "max_count": 80, "min_count": 79, "name": "VGFmBM0RpRwbjfeH", "unlimited": true, "use_buffer_percent": true}, "mPyOOVo6m8W9jAXZ": {"buffer_count": 15, "buffer_percent": 51, "max_count": 31, "min_count": 17, "name": "0UZBcOuMlkWZMpuV", "unlimited": false, "use_buffer_percent": false}}, "regions": ["DmHvJtPWVRh5BEO9", "ZccMUcEEwI9ulcfK", "UaGFuggHRG8FH6eO"], "session_timeout": 74, "unlimited": false, "use_buffer_percent": true}, "aXztPjAbKJ5U81lX": {"buffer_count": 59, "buffer_percent": 4, "configuration": "2vbXhlghHN7fsvfC", "enable_region_overrides": true, "extendable_session": true, "game_version": "vgKz39dbXDvoHS1r", "max_count": 47, "min_count": 21, "name": "QVF74xkMehj3XBAY", "region_overrides": {"YELC8wEBp3lGJEWJ": {"buffer_count": 68, "buffer_percent": 90, "max_count": 1, "min_count": 5, "name": "OwBsZGOo5yhytQXB", "unlimited": false, "use_buffer_percent": true}, "1XxKOCt1Dyt7dVdw": {"buffer_count": 31, "buffer_percent": 20, "max_count": 46, "min_count": 53, "name": "M9jYNr7ilgJMIt5d", "unlimited": false, "use_buffer_percent": false}, "udo8ReSQkaMcNUu9": {"buffer_count": 1, "buffer_percent": 30, "max_count": 15, "min_count": 69, "name": "DJNIbZTQuOpxGXi0", "unlimited": false, "use_buffer_percent": true}}, "regions": ["aIpXm76sPAjdLNea", "PXw3srNI6eIV7ph4", "mdGYYjaksYQKB3w4"], "session_timeout": 49, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"w1i3KA502C8BorCI": {"buffer_count": 91, "buffer_percent": 47, "max_count": 62, "min_count": 31, "name": "Q1VMkFzESH2gYbyp", "unlimited": false, "use_buffer_percent": false}, "zW98itvGkcfOxfkE": {"buffer_count": 9, "buffer_percent": 60, "max_count": 67, "min_count": 15, "name": "ZxZcQAw2CcfUOUSG", "unlimited": false, "use_buffer_percent": false}, "OTUQtkIFAhUHffQ0": {"buffer_count": 89, "buffer_percent": 77, "max_count": 27, "min_count": 82, "name": "XW3cjBinl9k9LIYT", "unlimited": false, "use_buffer_percent": true}}, "regions": ["WfsY1wujuaGz0vv1", "jvkiGZY6zUbH6p8g", "aS8z0gYHJzrKp6qv"], "session_timeout": 24, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'kWU9uExpD5H4UNZN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment '1vhDQAP3a8YJJV41' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 10, "buffer_percent": 71, "configuration": "z5VRTz5DX7PwkqLY", "enable_region_overrides": false, "extendable_session": false, "game_version": "Ch74IT1ydR5TcuCA", "max_count": 17, "min_count": 68, "regions": ["S0GFtowMjPWhjyRM", "PN3BQWjJ8LigvJdB", "izuvlnpQZbxtD0bD"], "session_timeout": 5, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'BgDyPUS5lxVUmSfZ' \
    --namespace $AB_NAMESPACE \
    --region 'ko4LxcGAeYdalK7G' \
    --body '{"buffer_count": 81, "buffer_percent": 2, "max_count": 85, "min_count": 72, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment '1jxijGWOE8PRadb3' \
    --namespace $AB_NAMESPACE \
    --region 'Tws83HR96kfEAzNl' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'BDTwmji5Xtmw7mRH' \
    --namespace $AB_NAMESPACE \
    --region 'ouNJvrks3xr42iai' \
    --body '{"buffer_count": 89, "buffer_percent": 90, "max_count": 72, "min_count": 96, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'u5iRUQQjy6XJw0EX' \
    --namespace $AB_NAMESPACE \
    --version 'U5uCdMIKtm90yoqi' \
    --body '{"buffer_count": 31, "buffer_percent": 48, "configuration": "XOluZodr97du0Ogo", "enable_region_overrides": true, "extendable_session": false, "game_version": "sBQdIRTpYq6G54Ok", "max_count": 98, "min_count": 61, "region_overrides": {"W51Ra5wRee2X73Dq": {"buffer_count": 65, "buffer_percent": 71, "max_count": 32, "min_count": 11, "name": "AFCFpnBrtVmPOMDO", "unlimited": true, "use_buffer_percent": true}, "GFuC2JMSUdJxbbyp": {"buffer_count": 99, "buffer_percent": 88, "max_count": 95, "min_count": 72, "name": "8O5zjh7iFLmqdEeC", "unlimited": false, "use_buffer_percent": false}, "aXduS03YxVHDnt8m": {"buffer_count": 66, "buffer_percent": 0, "max_count": 59, "min_count": 2, "name": "y2XHFJ96tNJAremK", "unlimited": false, "use_buffer_percent": false}}, "regions": ["UfTPM7RxIdf2TIBV", "V4Zf2LTGZ0d98v4J", "ZxdpFB6fXf2wnpTb"], "session_timeout": 64, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'zsP1h2ggmHD0Iiph' \
    --namespace $AB_NAMESPACE \
    --version 'Td7nwIO458oW9zQv' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'jb9zUG3EhFib0bw4' \
    --namespace $AB_NAMESPACE \
    --version '58MSTQR6s05XQDKm' \
    --body '{"buffer_count": 64, "buffer_percent": 90, "configuration": "UCLoQp94s4MtWh8A", "enable_region_overrides": true, "game_version": "pOCypKDpQH6lZxEx", "max_count": 56, "min_count": 26, "regions": ["r98NVik431M66rwZ", "zv23Cs9rADH1JPg5", "vtE1uvtxa0oJe6Lo"], "session_timeout": 73, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment '0V2cWp3KAVWWkl4X' \
    --namespace $AB_NAMESPACE \
    --region 'Yf2Zuyt9siTOTnb5' \
    --version '052STc5X2Tjz4Zec' \
    --body '{"buffer_count": 16, "buffer_percent": 70, "max_count": 96, "min_count": 9, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment '3i7nqxkkOYrhRyMv' \
    --namespace $AB_NAMESPACE \
    --region 'WVh0IE6jwyNWqZwT' \
    --version 'eeujYNdrCIpKaa3G' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'FmqmBkhOady6kzsQ' \
    --namespace $AB_NAMESPACE \
    --region 'TPANGvhAR6OoEu03' \
    --version 'e835HRRd2gWZStp7' \
    --body '{"buffer_count": 17, "buffer_percent": 1, "max_count": 0, "min_count": 43, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '0' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'WiU3ZfqGhC95FRzW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'ccUuqDBXcgeSeijo' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 57, "mem_limit": 57, "params": "B3BN64qte8ANjZTE"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'Uj5eMchHj28qzjdf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'e7kMqOB8XfJwg7Ac' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 91, "mem_limit": 27, "name": "HguuIwcQDk4rr1g4", "params": "BTDinuiIU57zOKmu"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name '0DAsqdlnDK6AUDpo' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 42}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name '07zG8iMxpncuK6QN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'ngIZfgiDjb671PmW' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "CcefQjueQ6EuTmM5", "port": 78}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q '083dTapBbL60HbmT' \
    --sortBy 'createdAt' \
    --sortDirection 'desc' \
    --count '38' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'syoYW0PMSNxuqLi1' \
    --version 'PDE2WddLtoKaZZG4' \
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
    --imageURI 'cpOozOhxJS4TjCwV' \
    --version 'Et6BJHtupjQR6nMN' \
    --versionPatch 'wLyHIfL9o6Wwz7tT' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'oI25O3OBDUcKTzhS' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'Qr6fkSXcE3JOYUcn' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'ipfAVMXwgnqrFiw3' \
    --versionPatch 'FC7s2XhzeO9U9Vif' \
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
    --region 'NZ1JdWxzJRO86Ln4' \
    --count '24' \
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
    --region 'Sr7klVeXVEEigz8F' \
    > test.out 2>&1
eval_tap $? 47 'CountServerDetailed' test.out

#- 48 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'ListLocalServer' test.out

#- 49 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'ZtN7iS57rbE8GYQy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'DeleteLocalServer' test.out

#- 50 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'QzJRE3G4mHLowJ2u' \
    > test.out 2>&1
eval_tap $? 50 'GetServer' test.out

#- 51 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'U63cQGw054wEAw0G' \
    > test.out 2>&1
eval_tap $? 51 'DeleteServer' test.out

#- 52 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'K4lvHjxM9pc1p0At' \
    --withServer 'false' \
    --count '55' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 52 'ListSession' test.out

#- 53 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'j0zcKfR41CF8DTWo' \
    > test.out 2>&1
eval_tap $? 53 'CountSession' test.out

#- 54 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID '2NR0rGRMmany5O6T' \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "YmlDBm7kqbucs9Fp", "repository": "RlkYAoSUEPupz6HV"}' \
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
    --name 'BJlrGFjYtH3HyEAc' \
    --count '9' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 58 'GetAllDeploymentClient' test.out

#- 59 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment 'H5FTyvYMLeDBkr0L' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 42, "buffer_percent": 29, "configuration": "N3BR8U4PD64Lnf3a", "enable_region_overrides": true, "extendable_session": false, "game_version": "gjdblqq9KNd1Lp0Q", "max_count": 66, "min_count": 12, "overrides": {"bM8FPRrG73oWe9b5": {"buffer_count": 98, "buffer_percent": 7, "configuration": "DqnVR40rbNKH2tv0", "enable_region_overrides": false, "extendable_session": true, "game_version": "EVWyM4lXRDwdDI75", "max_count": 51, "min_count": 12, "name": "UIj90WkUcEmYlLrJ", "region_overrides": {"AmJHaCPw2gUaifkg": {"buffer_count": 43, "buffer_percent": 11, "max_count": 0, "min_count": 85, "name": "cA1YMWnMTdBdFKzi", "unlimited": true, "use_buffer_percent": true}, "i8SgZbQfUgmfV9NK": {"buffer_count": 11, "buffer_percent": 60, "max_count": 4, "min_count": 2, "name": "WyjjLZLMh9YwYGMi", "unlimited": false, "use_buffer_percent": true}, "LcjX5FIYo4rtoHEg": {"buffer_count": 21, "buffer_percent": 91, "max_count": 13, "min_count": 80, "name": "pZGaProgRCSgIvZy", "unlimited": true, "use_buffer_percent": false}}, "regions": ["uDBvWcwfVXn46pgd", "KJP89iNFCIy4tXK3", "hJ1eG2AQUDZkSjoE"], "session_timeout": 63, "unlimited": false, "use_buffer_percent": true}, "0pl1f9SM9AhWJ7GW": {"buffer_count": 53, "buffer_percent": 76, "configuration": "j1dHj8Sp4fsoRTfv", "enable_region_overrides": true, "extendable_session": true, "game_version": "iBMhTrYEhoSRbzga", "max_count": 12, "min_count": 76, "name": "B6ggAQsxeff8Odez", "region_overrides": {"YIHubsfyOD5CuIaA": {"buffer_count": 7, "buffer_percent": 75, "max_count": 30, "min_count": 56, "name": "Wn9G8xt5PNUYlrWG", "unlimited": true, "use_buffer_percent": true}, "JKrYnmUVExZHOw11": {"buffer_count": 28, "buffer_percent": 56, "max_count": 84, "min_count": 33, "name": "QVMLKrLmzElNJmuC", "unlimited": true, "use_buffer_percent": true}, "yoZdWfLKUUJKGMEC": {"buffer_count": 7, "buffer_percent": 52, "max_count": 11, "min_count": 54, "name": "zRmlR4FyuCd6Apxe", "unlimited": true, "use_buffer_percent": true}}, "regions": ["Llx2hfHpNbeMNHmb", "uh3Xvp0jYozfdMbx", "ZztCHjhHBm5761m4"], "session_timeout": 62, "unlimited": true, "use_buffer_percent": true}, "Fo6mDz2ymkKCsBMS": {"buffer_count": 10, "buffer_percent": 36, "configuration": "FHdGWbHcE9sumHia", "enable_region_overrides": true, "extendable_session": true, "game_version": "xnEV0fLvWjGAKMb9", "max_count": 64, "min_count": 100, "name": "OT9IElmpTG25OG1p", "region_overrides": {"af9HAqDbEnELBcKC": {"buffer_count": 23, "buffer_percent": 21, "max_count": 79, "min_count": 79, "name": "Sw7hydsZ9EyxDnA3", "unlimited": false, "use_buffer_percent": false}, "cnwWxZBnYxuDtqdH": {"buffer_count": 16, "buffer_percent": 45, "max_count": 13, "min_count": 25, "name": "Hx3lAFJJhTDb5cWR", "unlimited": true, "use_buffer_percent": false}, "AWfZBnkNYjMOF1k0": {"buffer_count": 88, "buffer_percent": 1, "max_count": 62, "min_count": 84, "name": "Tzx3kaVe3ccwmuyJ", "unlimited": false, "use_buffer_percent": false}}, "regions": ["KcG7jaoetkXgpNNK", "irB2h5LCGRGKYywY", "t7pNUeC5igoBx9zg"], "session_timeout": 71, "unlimited": true, "use_buffer_percent": false}}, "region_overrides": {"nXiLEG2jnj0T0SUl": {"buffer_count": 28, "buffer_percent": 49, "max_count": 0, "min_count": 8, "name": "iNQaUsXLQIA5LAw3", "unlimited": true, "use_buffer_percent": true}, "yWE21WOdeCbLKneZ": {"buffer_count": 18, "buffer_percent": 99, "max_count": 85, "min_count": 90, "name": "jryIyPdcqZIscBsE", "unlimited": false, "use_buffer_percent": false}, "u3iv8OIJlXZu2f9A": {"buffer_count": 88, "buffer_percent": 71, "max_count": 31, "min_count": 95, "name": "MXECJDnmWBoEHLD4", "unlimited": true, "use_buffer_percent": true}}, "regions": ["KJ0UIUD7ti1t18nR", "ka92W50UoO7biqlU", "Idh25W1umGWI7zcq"], "session_timeout": 46, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 59 'CreateDeploymentClient' test.out

#- 60 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'QE20nJ0ofpybaTrd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteDeploymentClient' test.out

#- 61 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '74' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 61 'GetAllPodConfigClient' test.out

#- 62 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'glAz43X2NvQer8WL' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 70, "mem_limit": 71, "params": "5icHoQ5CApFbrr4o"}' \
    > test.out 2>&1
eval_tap $? 62 'CreatePodConfigClient' test.out

#- 63 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'ynOFhUQFyiBAwdzU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeletePodConfigClient' test.out

#- 64 ImageLimitClient
samples/cli/sample-apps Dsmc imageLimitClient \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'ImageLimitClient' test.out

#- 65 ImageDetailClient
samples/cli/sample-apps Dsmc imageDetailClient \
    --namespace $AB_NAMESPACE \
    --version '0PSBptsdhJB4lHf6' \
    > test.out 2>&1
eval_tap $? 65 'ImageDetailClient' test.out

#- 66 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'dVF2Je17hj2n7OBy' \
    --count '100' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 66 'ListServerClient' test.out

#- 67 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "XDSbwJqjPnUW10RL"}' \
    > test.out 2>&1
eval_tap $? 67 'ServerHeartbeat' test.out

#- 68 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "XvrkWgcyNqv6rS6A"}' \
    > test.out 2>&1
eval_tap $? 68 'DeregisterLocalServer' test.out

#- 69 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "EVRneG6ASBujN4sr", "ip": "vy6a2vU23OtvK7qX", "name": "xAxPrV8oGDfkKQgY", "port": 51}' \
    > test.out 2>&1
eval_tap $? 69 'RegisterLocalServer' test.out

#- 70 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "K65Nsz8SeQeRRAII", "pod_name": "i9N7oEC0t5U53fe0"}' \
    > test.out 2>&1
eval_tap $? 70 'RegisterServer' test.out

#- 71 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "C6y9w6e5nqPUAIqM"}' \
    > test.out 2>&1
eval_tap $? 71 'ShutdownServer' test.out

#- 72 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'SoKAe3CGTrZ8YnDc' \
    > test.out 2>&1
eval_tap $? 72 'GetServerSessionTimeout' test.out

#- 73 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'LNig1mH1b7uy6Z4z' \
    > test.out 2>&1
eval_tap $? 73 'GetServerSession' test.out

#- 74 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "k3oQEMVWCJYaoOie", "configuration": "Zu4muUjXTiKcqe79", "deployment": "YdqojLQ82w91MVKS", "game_mode": "0mVzv4WvHXona8WN", "matching_allies": [{"matching_parties": [{"party_attributes": {"HTffCFWN3HSr3YgH": {}, "iKD4ju6jUNehPLvm": {}, "hcokAb1Ech8gnetE": {}}, "party_id": "jd0JdJfGEx6KnnuC", "party_members": [{"user_id": "2lfOzxAEL8SOxa0z"}, {"user_id": "UWheJ0FidvYDgAhq"}, {"user_id": "IMaLM49h00qIPjv8"}]}, {"party_attributes": {"uHqP4bSSj4A9lbph": {}, "xOzTze7Qzeocneud": {}, "kwkaWyUm0K0nfc0f": {}}, "party_id": "vGa1sVgMw9xufBxX", "party_members": [{"user_id": "aXBf8DN0xrgcvGw5"}, {"user_id": "vI5ul96YlTYAjtSI"}, {"user_id": "8aGguWOEzEUntMhQ"}]}, {"party_attributes": {"bBwti3ZMQu7Laj8g": {}, "DfEXd8bz5asvRn8V": {}, "FOiyahTEH8uC3Mmb": {}}, "party_id": "1sMTGmtKaWzRL2po", "party_members": [{"user_id": "CDhOSM5dOOvQpTyF"}, {"user_id": "Hip53noHUVtfOByi"}, {"user_id": "3gTuhWWoSajxhshI"}]}]}, {"matching_parties": [{"party_attributes": {"9ppDfB1rQ2uzutep": {}, "jbru0BvTi3k8Jxjr": {}, "C0bTOWz9pBAvl886": {}}, "party_id": "KDhDGVi8kwgIlHPQ", "party_members": [{"user_id": "F9L3mHPzKS8Gu66F"}, {"user_id": "OqfoPnbdWSl9fhJa"}, {"user_id": "NHOEF6bRjMink9OD"}]}, {"party_attributes": {"aMPRiK7rHBBR1NOY": {}, "YQV8scPQwqXj2ZpO": {}, "amyRBvdCHAsU49bx": {}}, "party_id": "OPyjXvZtJi75zFzD", "party_members": [{"user_id": "KGgpgygErw3XmliS"}, {"user_id": "GyX1oDNLouHyxprI"}, {"user_id": "3IK3Ytqwwa5RGiwt"}]}, {"party_attributes": {"YfbSBtE1FVf42Dib": {}, "SlUIfgiOtus5vewO": {}, "Lv0hdiCYClngRAts": {}}, "party_id": "oV6M1TDeuJLPipYp", "party_members": [{"user_id": "uBc19vCiKoNVKXkU"}, {"user_id": "qUFBI3T1meW9RpPZ"}, {"user_id": "pzKzDEcFxgoblw4g"}]}]}, {"matching_parties": [{"party_attributes": {"wouu3rCIzHZlVgql": {}, "ppW5j33nYnQhaTEw": {}, "t8qmkDGBiZEkjTki": {}}, "party_id": "TsFeIhhnwax8ltS7", "party_members": [{"user_id": "POF93oeZVfeaYpqh"}, {"user_id": "bAi1eQMNlxO0OEqA"}, {"user_id": "spfn4PJd72DEZ420"}]}, {"party_attributes": {"zquHLG1RbDphDxjB": {}, "3uEO8rZAyIAnrzsb": {}, "Wyfwa902FB1m2WMu": {}}, "party_id": "qSvtXpRNuDz3dK6G", "party_members": [{"user_id": "HDmff8afX69Ml3ZT"}, {"user_id": "SoYJ5Ee1RiLF6qkv"}, {"user_id": "JpMHee6VHnPuUAls"}]}, {"party_attributes": {"53Am5fbKTxFpo9Hp": {}, "9BhM9Jn4VGqsbcPH": {}, "RMvOHUmOz3Cozk9P": {}}, "party_id": "WpfdzCCEA2f2XSTs", "party_members": [{"user_id": "5TW4UzEvuCzxiK09"}, {"user_id": "heiqSLCndrSPwxfS"}, {"user_id": "3RYh005X64bM1RJo"}]}]}], "namespace": "CWUXdrlFtyTQ2LEZ", "notification_payload": {}, "pod_name": "llB5bdm0dlJyrMBG", "region": "17S6Fr18rIjQzSFO", "session_id": "OHunPKRQbQ5GdWWl"}' \
    > test.out 2>&1
eval_tap $? 74 'CreateSession' test.out

#- 75 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "g3bSXvUL5xxaY2YR"}' \
    > test.out 2>&1
eval_tap $? 75 'ClaimServer' test.out

#- 76 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'wqSKj8NZzTaTNQuW' \
    > test.out 2>&1
eval_tap $? 76 'GetSession' test.out

#- 77 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'aarrd9onXjDZsuol' \
    > test.out 2>&1
eval_tap $? 77 'CancelSession' test.out

#- 78 GetDefaultProvider
samples/cli/sample-apps Dsmc getDefaultProvider \
    > test.out 2>&1
eval_tap $? 78 'GetDefaultProvider' test.out

#- 79 ListProviders
samples/cli/sample-apps Dsmc listProviders \
    > test.out 2>&1
eval_tap $? 79 'ListProviders' test.out

#- 80 ListProvidersByRegion
samples/cli/sample-apps Dsmc listProvidersByRegion \
    --region 'Y4IIrkUaekva244o' \
    > test.out 2>&1
eval_tap $? 80 'ListProvidersByRegion' test.out

#- 81 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 81 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE