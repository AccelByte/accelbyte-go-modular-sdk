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
    --body '{"artifactPath": "amA12A5C", "coreDumpEnabled": false, "image": "IKBKXDJq", "imageReplicationsMap": {"LYsaypJs": {"failure_code": "ReIIrXba", "region": "OjjekiuA", "status": "JvytYikg", "uri": "Fjw8lCn6"}, "mNhiesQs": {"failure_code": "lsqeAYMe", "region": "QDDjPy8g", "status": "YDSodu80", "uri": "WyLNvISB"}, "HNZV7l0X": {"failure_code": "aPZ7BKJ4", "region": "xHpWPqg7", "status": "o159G4jL", "uri": "hzQwU2O0"}}, "namespace": "PxNynfkT", "patchVersion": "dfhoa9oC", "persistent": true, "version": "doMyPzQM"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "yHuQ8wfk", "coreDumpEnabled": true, "dockerPath": "Q4bUBFFK", "image": "x0B02BbX", "imageSize": 39, "namespace": "jDwph6rF", "persistent": false, "ulimitFileSize": 2, "version": "2MIhrGWN"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "2kred3GV", "coreDumpEnabled": true, "dockerPath": "xGXvm8lT", "image": "FkXUDZ8u", "imageSize": 56, "namespace": "Uf7Ruq0i", "patchVersion": "QFBqJF8e", "persistent": true, "ulimitFileSize": 60, "uploaderFlag": "U38QJTLw", "version": "L2xu0DiO"}' \
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
    --body '{"claim_timeout": 34, "creation_timeout": 77, "default_version": "PhmooMaU", "port": 26, "ports": {"KFnidyIJ": 9, "x6NwNebs": 15, "FqfmJTt0": 39}, "protocol": "s9QXj7x2", "providers": ["G227MAfx", "S38f4tq5", "Iuk9drtq"], "session_timeout": 93, "unreachable_timeout": 6}' \
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
    --body '{"claim_timeout": 42, "creation_timeout": 28, "default_version": "uaanJGji", "port": 78, "protocol": "jr9s4bnK", "providers": ["nx9sVJkT", "sR1D02Sh", "jIUhYOWY"], "session_timeout": 92, "unreachable_timeout": 91}' \
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
    --name 'x3qeGWeq' \
    --count '48' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'QPoIthOR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'cOOJhFOj' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 86, "buffer_percent": 7, "configuration": "8syL1na4", "enable_region_overrides": true, "extendable_session": false, "game_version": "IbCXk1wN", "max_count": 79, "min_count": 36, "overrides": {"kru85yJ7": {"buffer_count": 43, "buffer_percent": 31, "configuration": "b6CEAt1p", "enable_region_overrides": true, "extendable_session": true, "game_version": "AicUbE7V", "max_count": 19, "min_count": 64, "name": "WI0SfFv3", "region_overrides": {"Fv0JUZbK": {"buffer_count": 55, "buffer_percent": 51, "max_count": 68, "min_count": 88, "name": "W7jXJAXS", "unlimited": false, "use_buffer_percent": true}, "wBCdrwBp": {"buffer_count": 7, "buffer_percent": 99, "max_count": 69, "min_count": 15, "name": "dRMPQ17s", "unlimited": false, "use_buffer_percent": true}, "DvKSmkyU": {"buffer_count": 16, "buffer_percent": 54, "max_count": 17, "min_count": 24, "name": "GOMexHRW", "unlimited": false, "use_buffer_percent": true}}, "regions": ["w45cYC9E", "4kOPCKu6", "Qk4Oyklc"], "session_timeout": 92, "unlimited": true, "use_buffer_percent": false}, "t5BqMad2": {"buffer_count": 99, "buffer_percent": 64, "configuration": "f9lTSCnU", "enable_region_overrides": true, "extendable_session": false, "game_version": "7dSCMPFb", "max_count": 56, "min_count": 59, "name": "YCgxTD3B", "region_overrides": {"wFLFk53n": {"buffer_count": 97, "buffer_percent": 54, "max_count": 0, "min_count": 65, "name": "TfiO6aQg", "unlimited": true, "use_buffer_percent": false}, "yTVFQPMP": {"buffer_count": 73, "buffer_percent": 69, "max_count": 68, "min_count": 94, "name": "np1DZ28V", "unlimited": true, "use_buffer_percent": false}, "1PYBjMm2": {"buffer_count": 97, "buffer_percent": 67, "max_count": 73, "min_count": 14, "name": "OgwVOGCk", "unlimited": true, "use_buffer_percent": false}}, "regions": ["Oqe6XFSd", "7SpbFSWJ", "OSrVESLb"], "session_timeout": 91, "unlimited": true, "use_buffer_percent": false}, "WnQszSaH": {"buffer_count": 64, "buffer_percent": 17, "configuration": "LV1MIChj", "enable_region_overrides": false, "extendable_session": true, "game_version": "FZljAGhg", "max_count": 10, "min_count": 60, "name": "nJAH7Xnr", "region_overrides": {"JAxN6961": {"buffer_count": 71, "buffer_percent": 90, "max_count": 2, "min_count": 64, "name": "7ptEwFwE", "unlimited": false, "use_buffer_percent": true}, "lLBa09P8": {"buffer_count": 35, "buffer_percent": 88, "max_count": 96, "min_count": 23, "name": "qsWy7kUU", "unlimited": false, "use_buffer_percent": false}, "C45uXgo5": {"buffer_count": 58, "buffer_percent": 42, "max_count": 63, "min_count": 16, "name": "32qBEJrD", "unlimited": true, "use_buffer_percent": true}}, "regions": ["m3y2fCoF", "MNdH5gmx", "E6W9bbwi"], "session_timeout": 82, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"PFjfdijo": {"buffer_count": 59, "buffer_percent": 96, "max_count": 64, "min_count": 16, "name": "Z0fImSLw", "unlimited": true, "use_buffer_percent": false}, "PiTkc5dP": {"buffer_count": 73, "buffer_percent": 25, "max_count": 40, "min_count": 69, "name": "8Sov5bOc", "unlimited": false, "use_buffer_percent": true}, "M6Qgh97E": {"buffer_count": 81, "buffer_percent": 54, "max_count": 2, "min_count": 14, "name": "ujRe3kUa", "unlimited": false, "use_buffer_percent": false}}, "regions": ["lCXFLyFo", "vTZPgxiW", "XaNstaqY"], "session_timeout": 48, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'OMIPMXuR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'xfvPOxNv' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 68, "buffer_percent": 55, "configuration": "NAkHc9Nk", "enable_region_overrides": false, "extendable_session": false, "game_version": "VhN2uN6f", "max_count": 15, "min_count": 7, "regions": ["uyoyBts4", "iLKZlEAg", "922MssCM"], "session_timeout": 3, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'hbAok3Xw' \
    --namespace $AB_NAMESPACE \
    --region '5bohnvbO' \
    --body '{"buffer_count": 19, "buffer_percent": 27, "max_count": 81, "min_count": 25, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'PhjLjQ1N' \
    --namespace $AB_NAMESPACE \
    --region 'xigdG35j' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'kkzdfWpI' \
    --namespace $AB_NAMESPACE \
    --region '1IwP6Tri' \
    --body '{"buffer_count": 15, "buffer_percent": 81, "max_count": 21, "min_count": 27, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'LYOmPyNh' \
    --namespace $AB_NAMESPACE \
    --version 'XV2M1yE7' \
    --body '{"buffer_count": 81, "buffer_percent": 83, "configuration": "B0ade2WF", "enable_region_overrides": false, "extendable_session": true, "game_version": "Noi3dyT3", "max_count": 54, "min_count": 65, "region_overrides": {"0ELELmK7": {"buffer_count": 53, "buffer_percent": 57, "max_count": 49, "min_count": 42, "name": "9gw7Fw5u", "unlimited": false, "use_buffer_percent": false}, "tjs1vzOk": {"buffer_count": 54, "buffer_percent": 94, "max_count": 8, "min_count": 92, "name": "ltt6zPJB", "unlimited": true, "use_buffer_percent": false}, "8PJEV5SA": {"buffer_count": 24, "buffer_percent": 77, "max_count": 94, "min_count": 78, "name": "okowOF1u", "unlimited": true, "use_buffer_percent": true}}, "regions": ["q6a8180A", "lgJYCmN7", "1hnk3Q3A"], "session_timeout": 18, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'Tq0aXED1' \
    --namespace $AB_NAMESPACE \
    --version '6h4FFVyo' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'fXAyXa4t' \
    --namespace $AB_NAMESPACE \
    --version 'iPSAFDEK' \
    --body '{"buffer_count": 29, "buffer_percent": 7, "configuration": "R2wlmiyQ", "enable_region_overrides": true, "game_version": "E1NgLTUD", "max_count": 80, "min_count": 51, "regions": ["hjl6yafO", "kbkEx84V", "RGC1GCSz"], "session_timeout": 95, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment '7hoOBEW4' \
    --namespace $AB_NAMESPACE \
    --region '91MYNSGe' \
    --version 'LQBJiVcs' \
    --body '{"buffer_count": 45, "buffer_percent": 78, "max_count": 20, "min_count": 61, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'cjZTfVDn' \
    --namespace $AB_NAMESPACE \
    --region 'Imx2VXTO' \
    --version 'PK5CZVzK' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'ZswRDB30' \
    --namespace $AB_NAMESPACE \
    --region '6zRgRu3U' \
    --version 'bGPSTkRs' \
    --body '{"buffer_count": 15, "buffer_percent": 31, "max_count": 72, "min_count": 15, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '2' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'W9wq2K8P' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'UfIHDpYr' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 78, "mem_limit": 91, "params": "SnzvONPI"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name '2JHE7xg4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'AYRlvH1Z' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 83, "mem_limit": 81, "name": "jHfECTJv", "params": "kx0xJcPM"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'LRZ3oxPK' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 7}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'Qk8Sww9R' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'xFeUlQvA' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "T4h6td9o", "port": 55}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 't3khIguQ' \
    --sortBy 'updatedAt' \
    --sortDirection 'asc' \
    --count '34' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'GX8RyNKZ' \
    --version 'iiJG6QDe' \
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
    --imageURI 'qObzzJbh' \
    --version 'uEuzXfgd' \
    --versionPatch 'UTLN5dIM' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'hcCxH7fd' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'Hi4XEGve' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'e6lgPxvD' \
    --versionPatch 'GwbeT4LE' \
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
    --region '7Erioupt' \
    --count '7' \
    --offset '54' \
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
    --region 'L5CHJFR6' \
    > test.out 2>&1
eval_tap $? 47 'CountServerDetailed' test.out

#- 48 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'ListLocalServer' test.out

#- 49 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'y8O5M8Xg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'DeleteLocalServer' test.out

#- 50 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName '67UEf6jp' \
    > test.out 2>&1
eval_tap $? 50 'GetServer' test.out

#- 51 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'HFgyk7lq' \
    > test.out 2>&1
eval_tap $? 51 'DeleteServer' test.out

#- 52 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'bSdJxda9' \
    --withServer 'false' \
    --count '19' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 52 'ListSession' test.out

#- 53 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'HXP4i8dJ' \
    > test.out 2>&1
eval_tap $? 53 'CountSession' test.out

#- 54 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'zMdwaG41' \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "9K6YeShV", "repository": "YGNnN483"}' \
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
    --name 'uBUfuoAe' \
    --count '8' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 58 'GetAllDeploymentClient' test.out

#- 59 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment '1wizic4M' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 77, "buffer_percent": 39, "configuration": "HQqQUKdv", "enable_region_overrides": false, "extendable_session": false, "game_version": "3UDyK6cL", "max_count": 44, "min_count": 58, "overrides": {"7X11acJv": {"buffer_count": 43, "buffer_percent": 91, "configuration": "DaC4o5wY", "enable_region_overrides": true, "extendable_session": false, "game_version": "AwSnNzRA", "max_count": 20, "min_count": 65, "name": "EVOdnCjx", "region_overrides": {"ja8TkMAB": {"buffer_count": 86, "buffer_percent": 85, "max_count": 15, "min_count": 29, "name": "h3TQ8nqR", "unlimited": false, "use_buffer_percent": true}, "hUFJw8a6": {"buffer_count": 78, "buffer_percent": 5, "max_count": 71, "min_count": 78, "name": "mGoSvmGZ", "unlimited": true, "use_buffer_percent": true}, "ljTXw1Mh": {"buffer_count": 82, "buffer_percent": 35, "max_count": 25, "min_count": 7, "name": "EMxAM1Yw", "unlimited": false, "use_buffer_percent": true}}, "regions": ["sqiuZSLK", "j92kEIWl", "zlz11swL"], "session_timeout": 53, "unlimited": true, "use_buffer_percent": true}, "kpg4XDlE": {"buffer_count": 69, "buffer_percent": 39, "configuration": "ppQZwbKe", "enable_region_overrides": false, "extendable_session": true, "game_version": "dyh5fcMm", "max_count": 37, "min_count": 80, "name": "f5svV10q", "region_overrides": {"G5pFthAc": {"buffer_count": 86, "buffer_percent": 56, "max_count": 42, "min_count": 71, "name": "JjuavvSt", "unlimited": false, "use_buffer_percent": false}, "B89sVDMW": {"buffer_count": 19, "buffer_percent": 52, "max_count": 94, "min_count": 10, "name": "G6DuSNFf", "unlimited": false, "use_buffer_percent": false}, "G96ZeMGa": {"buffer_count": 34, "buffer_percent": 48, "max_count": 55, "min_count": 53, "name": "Px6T1pZ6", "unlimited": true, "use_buffer_percent": false}}, "regions": ["ZJQevPRH", "bFnQqwWx", "ojxuW7FO"], "session_timeout": 94, "unlimited": false, "use_buffer_percent": false}, "wuUVLFM2": {"buffer_count": 98, "buffer_percent": 54, "configuration": "RBcar6nX", "enable_region_overrides": true, "extendable_session": true, "game_version": "eT26ixVl", "max_count": 69, "min_count": 85, "name": "KRMvtbQ6", "region_overrides": {"RUelh2vD": {"buffer_count": 93, "buffer_percent": 65, "max_count": 34, "min_count": 51, "name": "P2c4mTQk", "unlimited": true, "use_buffer_percent": false}, "pe4lT4yI": {"buffer_count": 56, "buffer_percent": 30, "max_count": 32, "min_count": 72, "name": "D5EO0y8Q", "unlimited": false, "use_buffer_percent": true}, "qkEueHod": {"buffer_count": 4, "buffer_percent": 52, "max_count": 66, "min_count": 82, "name": "fr29UYFg", "unlimited": false, "use_buffer_percent": false}}, "regions": ["tHajOELw", "n9InWhjB", "ydHyQ96R"], "session_timeout": 19, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"UTyWpLjO": {"buffer_count": 60, "buffer_percent": 71, "max_count": 33, "min_count": 36, "name": "nU6HChuB", "unlimited": true, "use_buffer_percent": true}, "4uxOafIm": {"buffer_count": 87, "buffer_percent": 79, "max_count": 39, "min_count": 34, "name": "tpycTrH2", "unlimited": false, "use_buffer_percent": false}, "Z97dMp6Y": {"buffer_count": 77, "buffer_percent": 30, "max_count": 77, "min_count": 74, "name": "zMkHC6iI", "unlimited": true, "use_buffer_percent": false}}, "regions": ["5y4ErYLV", "7WiuVYke", "t5wOjbqD"], "session_timeout": 71, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 59 'CreateDeploymentClient' test.out

#- 60 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'giu8dq6I' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteDeploymentClient' test.out

#- 61 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '92' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 61 'GetAllPodConfigClient' test.out

#- 62 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'StRFIk5V' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 39, "mem_limit": 30, "params": "bb6Bzf0d"}' \
    > test.out 2>&1
eval_tap $? 62 'CreatePodConfigClient' test.out

#- 63 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'XewoHvdw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeletePodConfigClient' test.out

#- 64 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '5' \
    --offset '90' \
    --q 'lIGbtG9W' \
    --sortBy 'version' \
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
    --version 'T2fYqgel' \
    > test.out 2>&1
eval_tap $? 66 'ImageDetailClient' test.out

#- 67 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'MrtR2kdy' \
    --count '18' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 67 'ListServerClient' test.out

#- 68 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "2VPFKCA6"}' \
    > test.out 2>&1
eval_tap $? 68 'ServerHeartbeat' test.out

#- 69 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "plxyo8ms"}' \
    > test.out 2>&1
eval_tap $? 69 'DeregisterLocalServer' test.out

#- 70 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "nW0vOEjY", "ip": "dTLLCcns", "name": "QlVh0GL5", "port": 39}' \
    > test.out 2>&1
eval_tap $? 70 'RegisterLocalServer' test.out

#- 71 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "l8cFjqBX", "pod_name": "2hOC5foz"}' \
    > test.out 2>&1
eval_tap $? 71 'RegisterServer' test.out

#- 72 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": false, "pod_name": "M5BArbPY"}' \
    > test.out 2>&1
eval_tap $? 72 'ShutdownServer' test.out

#- 73 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName '6bRVUb5l' \
    > test.out 2>&1
eval_tap $? 73 'GetServerSessionTimeout' test.out

#- 74 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'PPGEmqti' \
    > test.out 2>&1
eval_tap $? 74 'GetServerSession' test.out

#- 75 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "S93TGOw4", "configuration": "WyxId4J5", "deployment": "fhureJRw", "game_mode": "Yrpslhzb", "matching_allies": [{"matching_parties": [{"party_attributes": {"kGhUCn4K": {}, "2LXmFLY1": {}, "3BRjlIyz": {}}, "party_id": "xWii0Cy9", "party_members": [{"user_id": "5HkUhg5E"}, {"user_id": "LraL2Qxq"}, {"user_id": "awBHByvJ"}]}, {"party_attributes": {"1oZSs42T": {}, "pZyZ9psn": {}, "9Cgv1Q3Y": {}}, "party_id": "zv5UUJBo", "party_members": [{"user_id": "vrrkp6gK"}, {"user_id": "GP71VmDt"}, {"user_id": "f2N74vvK"}]}, {"party_attributes": {"vUZB41Q2": {}, "5o7CiVXU": {}, "w0Cb4o1p": {}}, "party_id": "RZjcuarn", "party_members": [{"user_id": "Ovp7k8gt"}, {"user_id": "z6W7nPRy"}, {"user_id": "Aq9l1ks8"}]}]}, {"matching_parties": [{"party_attributes": {"cnOvg74W": {}, "SYAkJogh": {}, "KU6jedOe": {}}, "party_id": "fzYkdYWW", "party_members": [{"user_id": "lGsXDno9"}, {"user_id": "YZWycH1U"}, {"user_id": "S3TaB7H5"}]}, {"party_attributes": {"EqhUTSZE": {}, "Tr6NshBG": {}, "qdlIi8tB": {}}, "party_id": "zfWE6GfM", "party_members": [{"user_id": "fkAmR3vI"}, {"user_id": "OouHuECp"}, {"user_id": "4AJVnuiJ"}]}, {"party_attributes": {"l3Rpt9Mt": {}, "HNAV5dXf": {}, "uZJOShSr": {}}, "party_id": "4YSgfUuO", "party_members": [{"user_id": "Z2B0SULp"}, {"user_id": "AEVTY58z"}, {"user_id": "GEjrL59w"}]}]}, {"matching_parties": [{"party_attributes": {"vIdcUw5y": {}, "Ypd8pCUG": {}, "L3bRnPvr": {}}, "party_id": "WfoiJjWe", "party_members": [{"user_id": "gn3Ju1Yu"}, {"user_id": "PD3TDYHh"}, {"user_id": "JrBnPh7H"}]}, {"party_attributes": {"GY2sHfEU": {}, "s1rmldBX": {}, "kJ7rhvHi": {}}, "party_id": "WMpimpOn", "party_members": [{"user_id": "liJNLlxt"}, {"user_id": "BAkvk3JX"}, {"user_id": "YThz0byy"}]}, {"party_attributes": {"9jhZLcH0": {}, "PuQo07Ll": {}, "ZwEN1FeW": {}}, "party_id": "KpGh0IBD", "party_members": [{"user_id": "3BgPHNHi"}, {"user_id": "HFhoOpNZ"}, {"user_id": "Wxr0qOLo"}]}]}], "namespace": "uRH9l7r3", "notification_payload": {}, "pod_name": "DUn0t4Sb", "region": "pLMWQ0Vw", "session_id": "4gosImeN"}' \
    > test.out 2>&1
eval_tap $? 75 'CreateSession' test.out

#- 76 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "hsUCw37b"}' \
    > test.out 2>&1
eval_tap $? 76 'ClaimServer' test.out

#- 77 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'mdlAGJWl' \
    > test.out 2>&1
eval_tap $? 77 'GetSession' test.out

#- 78 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID '3RGbqJ22' \
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
    --region 'ypBoRfsx' \
    > test.out 2>&1
eval_tap $? 81 'ListProvidersByRegion' test.out

#- 82 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 82 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE