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
    --body '{"artifactPath": "9SfsOLwM", "coreDumpEnabled": false, "image": "uVANiTt3", "imageReplicationsMap": {"FaEx74AF": {"failure_code": "Alrp6FDz", "region": "6NVUJdkr", "status": "F8s2r5Cq", "uri": "32NrORFU"}, "Oql8cRSJ": {"failure_code": "Q1YsQpEY", "region": "MVT5YA3p", "status": "LJBfmW8C", "uri": "PUwAciJ6"}, "tvUxsUq7": {"failure_code": "9s8s8ipE", "region": "DxCBIlr2", "status": "ng9HtVvO", "uri": "4INvfSs3"}}, "namespace": "mzeh5BpI", "patchVersion": "ixHbFvyO", "persistent": false, "version": "jXgxU4wk"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "JDcoijfT", "coreDumpEnabled": false, "dockerPath": "D5qJGliI", "image": "fu04mQVz", "imageSize": 5, "namespace": "05FNRBv0", "persistent": false, "ulimitFileSize": 91, "version": "F5PQoJpP"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "4MbTQJkO", "coreDumpEnabled": false, "dockerPath": "x69dhRGV", "image": "qZ5NpdpC", "imageSize": 9, "namespace": "84OFD0jC", "patchVersion": "yxfaWA7N", "persistent": true, "ulimitFileSize": 4, "uploaderFlag": "lhbT77DP", "version": "ZkJtwF1y"}' \
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
    --body '{"claim_timeout": 56, "creation_timeout": 13, "default_version": "SHbygwKP", "port": 53, "ports": {"R6Nm3zIf": 42, "6BKgEYpJ": 95, "kpwMKSL3": 50}, "protocol": "pSOaOeYo", "providers": ["fBK6uC0U", "vefLkbvC", "EPl5lUrx"], "session_timeout": 37, "unreachable_timeout": 27}' \
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
    --body '{"claim_timeout": 33, "creation_timeout": 51, "default_version": "Ob5D2MYx", "port": 95, "protocol": "FFoMT6ls", "providers": ["KeB3niTg", "ZUo4ASVl", "7Z058dEm"], "session_timeout": 100, "unreachable_timeout": 87}' \
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
    --name 'oqmKSQBm' \
    --count '2' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'MRffGruI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'U0hVbNM4' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 81, "buffer_percent": 2, "configuration": "SPHv3rlx", "enable_region_overrides": true, "extendable_session": false, "game_version": "0TEVYaeV", "max_count": 91, "min_count": 1, "overrides": {"COajsOyh": {"buffer_count": 54, "buffer_percent": 1, "configuration": "yL6xz9SL", "enable_region_overrides": true, "extendable_session": false, "game_version": "i3lJ4N7Y", "max_count": 0, "min_count": 79, "name": "FfL3BRIe", "region_overrides": {"pcHfUzLX": {"buffer_count": 34, "buffer_percent": 28, "max_count": 2, "min_count": 53, "name": "7CYfvX6f", "unlimited": false, "use_buffer_percent": true}, "KLW7XRdx": {"buffer_count": 93, "buffer_percent": 81, "max_count": 68, "min_count": 67, "name": "T3ZcJDth", "unlimited": false, "use_buffer_percent": false}, "yQdH9DQl": {"buffer_count": 31, "buffer_percent": 97, "max_count": 68, "min_count": 62, "name": "0OZWd08a", "unlimited": true, "use_buffer_percent": true}}, "regions": ["stf49GFm", "YuHwkxv3", "AjUWaXVg"], "session_timeout": 47, "unlimited": true, "use_buffer_percent": false}, "45YlTc4s": {"buffer_count": 68, "buffer_percent": 77, "configuration": "wIAX7gkN", "enable_region_overrides": false, "extendable_session": true, "game_version": "CmjGQj9C", "max_count": 80, "min_count": 31, "name": "ZMn9vm4G", "region_overrides": {"cVmyqfCp": {"buffer_count": 36, "buffer_percent": 4, "max_count": 87, "min_count": 29, "name": "gHGhZQAo", "unlimited": true, "use_buffer_percent": false}, "HNZa1PV3": {"buffer_count": 72, "buffer_percent": 0, "max_count": 82, "min_count": 98, "name": "hR6y79Dw", "unlimited": true, "use_buffer_percent": false}, "DBDwkZpP": {"buffer_count": 65, "buffer_percent": 37, "max_count": 16, "min_count": 16, "name": "CFB9IcKN", "unlimited": false, "use_buffer_percent": false}}, "regions": ["Em44cUPG", "lAA7Kofi", "8nAUON8f"], "session_timeout": 15, "unlimited": false, "use_buffer_percent": false}, "Yax4VNUq": {"buffer_count": 54, "buffer_percent": 58, "configuration": "9Y1IfzyR", "enable_region_overrides": false, "extendable_session": true, "game_version": "DzlNFz04", "max_count": 99, "min_count": 56, "name": "1GT7FC2H", "region_overrides": {"KH67DbAc": {"buffer_count": 56, "buffer_percent": 85, "max_count": 57, "min_count": 86, "name": "WvyXqB42", "unlimited": false, "use_buffer_percent": false}, "uVAXihWl": {"buffer_count": 64, "buffer_percent": 22, "max_count": 66, "min_count": 24, "name": "o8rjbOpg", "unlimited": false, "use_buffer_percent": true}, "QsaAEZGv": {"buffer_count": 36, "buffer_percent": 49, "max_count": 31, "min_count": 8, "name": "e6DtY0ac", "unlimited": true, "use_buffer_percent": true}}, "regions": ["snzbOUFD", "VOVTJMQP", "pft33l5w"], "session_timeout": 71, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"YhDBYVji": {"buffer_count": 59, "buffer_percent": 3, "max_count": 6, "min_count": 81, "name": "4GvvQlBC", "unlimited": false, "use_buffer_percent": true}, "iFoGMm4b": {"buffer_count": 24, "buffer_percent": 42, "max_count": 95, "min_count": 19, "name": "WnLymFFg", "unlimited": false, "use_buffer_percent": true}, "qqeZWME5": {"buffer_count": 8, "buffer_percent": 42, "max_count": 10, "min_count": 63, "name": "2Qoj67Ua", "unlimited": false, "use_buffer_percent": true}}, "regions": ["79jYVjo3", "f8mXVLea", "GlEYMKte"], "session_timeout": 85, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'TzHH6FRL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'A9kSWYqG' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 5, "buffer_percent": 65, "configuration": "XdBfegLO", "enable_region_overrides": false, "extendable_session": false, "game_version": "3NCT8u7D", "max_count": 46, "min_count": 30, "regions": ["W1t7QT7D", "GAMN53rN", "a0NQmMvf"], "session_timeout": 38, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'LITjT2DI' \
    --namespace $AB_NAMESPACE \
    --region 'v7XDiKWC' \
    --body '{"buffer_count": 25, "buffer_percent": 3, "max_count": 42, "min_count": 25, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'leiyXZX7' \
    --namespace $AB_NAMESPACE \
    --region 'nZxjz0Br' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'SgTue7Jd' \
    --namespace $AB_NAMESPACE \
    --region 'YOjU2mf4' \
    --body '{"buffer_count": 28, "buffer_percent": 29, "max_count": 4, "min_count": 89, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'fLtfQZSP' \
    --namespace $AB_NAMESPACE \
    --version 'bhoW7hgi' \
    --body '{"buffer_count": 70, "buffer_percent": 52, "configuration": "iXOOnodB", "enable_region_overrides": false, "extendable_session": false, "game_version": "8i4DKIrg", "max_count": 43, "min_count": 84, "region_overrides": {"KBxpwpgH": {"buffer_count": 71, "buffer_percent": 63, "max_count": 28, "min_count": 96, "name": "16p95ife", "unlimited": true, "use_buffer_percent": true}, "Q7FSyMWl": {"buffer_count": 83, "buffer_percent": 25, "max_count": 74, "min_count": 50, "name": "yZePbzoY", "unlimited": false, "use_buffer_percent": true}, "oNIWQ5nb": {"buffer_count": 9, "buffer_percent": 36, "max_count": 94, "min_count": 8, "name": "Q080l521", "unlimited": true, "use_buffer_percent": true}}, "regions": ["NW9Nz6am", "qjy3tDmL", "ORKnanlV"], "session_timeout": 61, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'GOR4mEOU' \
    --namespace $AB_NAMESPACE \
    --version 'gbJYeEQn' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'zhjq1SVJ' \
    --namespace $AB_NAMESPACE \
    --version 'k4kwLU4r' \
    --body '{"buffer_count": 65, "buffer_percent": 99, "configuration": "lEUTzu2L", "enable_region_overrides": true, "game_version": "7yG1pZLV", "max_count": 49, "min_count": 0, "regions": ["xqdGlce4", "oJYdrUlC", "rjL56gTR"], "session_timeout": 46, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'zLEi46N9' \
    --namespace $AB_NAMESPACE \
    --region 'u8DEnGaH' \
    --version 'fEhBt1bG' \
    --body '{"buffer_count": 60, "buffer_percent": 29, "max_count": 40, "min_count": 64, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'MuE2uOHs' \
    --namespace $AB_NAMESPACE \
    --region 'Ou1gjnaC' \
    --version 'WGyLRIIy' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment '8D7gJcip' \
    --namespace $AB_NAMESPACE \
    --region 'TiPJpUWY' \
    --version 'fvj20BQQ' \
    --body '{"buffer_count": 78, "buffer_percent": 29, "max_count": 64, "min_count": 85, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '19' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'eg7SfINm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'mMO1UlSC' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 43, "mem_limit": 35, "params": "6Wm8Gqds"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'io9vv5z7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 's6JzePJE' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 7, "mem_limit": 47, "name": "J7HAvYoR", "params": "JaF5xrmW"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'UyaB5roz' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 86}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'TxGYxgcO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'XpnAvWIQ' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "ap4T6fIF", "port": 95}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'ymupJq6o' \
    --sortBy 'createdAt' \
    --sortDirection 'desc' \
    --count '43' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI '1NBMogXE' \
    --version '1nDm3eIB' \
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
    --imageURI 'ilYG4lH0' \
    --version 'NNLFS9VA' \
    --versionPatch '3fsqePkI' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'K4yAePIu' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version '8Aqd2vXw' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'YcTSPf7b' \
    --versionPatch '6HaZKWqX' \
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
    --region 'PaHVvF37' \
    --count '24' \
    --offset '81' \
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
    --region '5ilCjHvj' \
    > test.out 2>&1
eval_tap $? 47 'CountServerDetailed' test.out

#- 48 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'ListLocalServer' test.out

#- 49 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name '8buuWqoE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'DeleteLocalServer' test.out

#- 50 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'ou1l7PKN' \
    > test.out 2>&1
eval_tap $? 50 'GetServer' test.out

#- 51 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'sxZ1fH79' \
    > test.out 2>&1
eval_tap $? 51 'DeleteServer' test.out

#- 52 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'kwoPDHbL' \
    --withServer 'true' \
    --count '83' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 52 'ListSession' test.out

#- 53 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'n7EoL0Ll' \
    > test.out 2>&1
eval_tap $? 53 'CountSession' test.out

#- 54 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'RxF9tdws' \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "K3ftBr3s", "repository": "pgTmMbkg"}' \
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
    --name 'bgWIpo1L' \
    --count '22' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 58 'GetAllDeploymentClient' test.out

#- 59 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment 'h2CEaDUl' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 69, "buffer_percent": 0, "configuration": "wT8TtHxU", "enable_region_overrides": false, "extendable_session": true, "game_version": "sgQEPbZA", "max_count": 25, "min_count": 67, "overrides": {"Tkr4X7cs": {"buffer_count": 49, "buffer_percent": 88, "configuration": "nly8bMBU", "enable_region_overrides": true, "extendable_session": false, "game_version": "SXGJ5lAI", "max_count": 43, "min_count": 43, "name": "7AAPaj4C", "region_overrides": {"MUGjr81r": {"buffer_count": 62, "buffer_percent": 20, "max_count": 65, "min_count": 26, "name": "vFIeNfAb", "unlimited": false, "use_buffer_percent": true}, "9IRY5gH1": {"buffer_count": 100, "buffer_percent": 45, "max_count": 37, "min_count": 6, "name": "9lotfxDt", "unlimited": true, "use_buffer_percent": false}, "qpY7sMnx": {"buffer_count": 1, "buffer_percent": 21, "max_count": 16, "min_count": 0, "name": "X7OVyPEz", "unlimited": false, "use_buffer_percent": true}}, "regions": ["XqGBSkDR", "MYRNiCxr", "4mzV5Yum"], "session_timeout": 59, "unlimited": true, "use_buffer_percent": false}, "SeLumX6e": {"buffer_count": 0, "buffer_percent": 58, "configuration": "m0gMoskB", "enable_region_overrides": false, "extendable_session": true, "game_version": "y2v3QrS0", "max_count": 47, "min_count": 56, "name": "4LBjfcwJ", "region_overrides": {"u4Ko68PX": {"buffer_count": 23, "buffer_percent": 23, "max_count": 20, "min_count": 18, "name": "DrwuRnUW", "unlimited": false, "use_buffer_percent": true}, "jJdAqpq4": {"buffer_count": 47, "buffer_percent": 30, "max_count": 95, "min_count": 12, "name": "CbxxVk7C", "unlimited": false, "use_buffer_percent": true}, "KHL0s5ud": {"buffer_count": 34, "buffer_percent": 50, "max_count": 55, "min_count": 12, "name": "8t4IoST5", "unlimited": false, "use_buffer_percent": true}}, "regions": ["2DlyFcOT", "SI9KiHyQ", "6mQtqUUJ"], "session_timeout": 5, "unlimited": false, "use_buffer_percent": false}, "Vvu3E7j1": {"buffer_count": 1, "buffer_percent": 72, "configuration": "P93j8gi8", "enable_region_overrides": true, "extendable_session": false, "game_version": "Oh1J40Qu", "max_count": 1, "min_count": 78, "name": "CbVC2Ef3", "region_overrides": {"uCwulKWT": {"buffer_count": 63, "buffer_percent": 61, "max_count": 100, "min_count": 95, "name": "GDOUp9UX", "unlimited": false, "use_buffer_percent": false}, "2ZlGDeCm": {"buffer_count": 41, "buffer_percent": 30, "max_count": 63, "min_count": 24, "name": "nAowufXc", "unlimited": true, "use_buffer_percent": true}, "RKCdRMPh": {"buffer_count": 53, "buffer_percent": 28, "max_count": 73, "min_count": 42, "name": "0ds1Fwrq", "unlimited": true, "use_buffer_percent": true}}, "regions": ["jWMnzJv4", "WwbHBK9U", "4oXHQIwt"], "session_timeout": 69, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"hqyckani": {"buffer_count": 30, "buffer_percent": 34, "max_count": 83, "min_count": 43, "name": "BZHHxhsk", "unlimited": false, "use_buffer_percent": true}, "U06640Qe": {"buffer_count": 41, "buffer_percent": 32, "max_count": 51, "min_count": 77, "name": "DvJ8xZgH", "unlimited": true, "use_buffer_percent": false}, "LDVqCCHa": {"buffer_count": 82, "buffer_percent": 21, "max_count": 6, "min_count": 95, "name": "UmoI1KyW", "unlimited": true, "use_buffer_percent": false}}, "regions": ["QOomjsJj", "GcvmHotD", "ntKhVngp"], "session_timeout": 65, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 59 'CreateDeploymentClient' test.out

#- 60 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'HHgAP9be' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteDeploymentClient' test.out

#- 61 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '5' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 61 'GetAllPodConfigClient' test.out

#- 62 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'Uk5wjOro' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 6, "mem_limit": 28, "params": "CLPkOsWy"}' \
    > test.out 2>&1
eval_tap $? 62 'CreatePodConfigClient' test.out

#- 63 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name '2huZSNFN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeletePodConfigClient' test.out

#- 64 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '3' \
    --offset '26' \
    --q 'ZKMAVs7O' \
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
    --version 'z59e0ZxI' \
    > test.out 2>&1
eval_tap $? 66 'ImageDetailClient' test.out

#- 67 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'lA7TFPNm' \
    --count '91' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 67 'ListServerClient' test.out

#- 68 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "R5hTNtSE"}' \
    > test.out 2>&1
eval_tap $? 68 'ServerHeartbeat' test.out

#- 69 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "Hl9FYpyy"}' \
    > test.out 2>&1
eval_tap $? 69 'DeregisterLocalServer' test.out

#- 70 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "4pLIS7Nq", "ip": "MTODzMwZ", "name": "VAfCyfNL", "port": 100}' \
    > test.out 2>&1
eval_tap $? 70 'RegisterLocalServer' test.out

#- 71 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "FACd1XRn", "pod_name": "R1t5kTLJ"}' \
    > test.out 2>&1
eval_tap $? 71 'RegisterServer' test.out

#- 72 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "3Fgbm1Se"}' \
    > test.out 2>&1
eval_tap $? 72 'ShutdownServer' test.out

#- 73 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'JNA74Hxe' \
    > test.out 2>&1
eval_tap $? 73 'GetServerSessionTimeout' test.out

#- 74 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'io8NBjLC' \
    > test.out 2>&1
eval_tap $? 74 'GetServerSession' test.out

#- 75 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "rAAP6f1E", "configuration": "hmGAYKdm", "deployment": "U7vdtHgP", "game_mode": "PjqleU6N", "matching_allies": [{"matching_parties": [{"party_attributes": {"AiamkiLE": {}, "w2dlDaRj": {}, "BA7LVInW": {}}, "party_id": "14g2ui5m", "party_members": [{"user_id": "UZ2hLJFD"}, {"user_id": "CXDpuC3x"}, {"user_id": "dqjyHCAx"}]}, {"party_attributes": {"OMRRoGUE": {}, "dBVQ6t0n": {}, "A7WoGdhG": {}}, "party_id": "MmrETE1A", "party_members": [{"user_id": "74cUC2BW"}, {"user_id": "FFHApb4k"}, {"user_id": "BKWbcmKc"}]}, {"party_attributes": {"rGc0hGgA": {}, "CEr1P1R9": {}, "zXmFm8Ns": {}}, "party_id": "dqTfvF91", "party_members": [{"user_id": "AjWj1TtA"}, {"user_id": "Z4i5rMmf"}, {"user_id": "vJnbkd9z"}]}]}, {"matching_parties": [{"party_attributes": {"gIHHDY1d": {}, "mbjuzm2C": {}, "zI9Wsysi": {}}, "party_id": "zErffdFb", "party_members": [{"user_id": "mk5OnTJ1"}, {"user_id": "r2h6doHR"}, {"user_id": "eaNuCl9M"}]}, {"party_attributes": {"yGeLdm2l": {}, "vxBLVXVs": {}, "ejDAobyp": {}}, "party_id": "iQzQQYml", "party_members": [{"user_id": "tqSeKEET"}, {"user_id": "tEiHHFhS"}, {"user_id": "W4Xc375r"}]}, {"party_attributes": {"zNY2GjDe": {}, "yO7EviE0": {}, "SokqswXk": {}}, "party_id": "IcR2toy1", "party_members": [{"user_id": "yQxCcZ2c"}, {"user_id": "4DHbkSVn"}, {"user_id": "cci1P10b"}]}]}, {"matching_parties": [{"party_attributes": {"UZ0oABun": {}, "AyRQeA1F": {}, "l1ZyqEKB": {}}, "party_id": "taj4kQub", "party_members": [{"user_id": "opnGjUz7"}, {"user_id": "oL5VMh1J"}, {"user_id": "uGyRArMN"}]}, {"party_attributes": {"1yaS7QC3": {}, "vhMf0MgT": {}, "bIJLqNhP": {}}, "party_id": "gVt9xJK4", "party_members": [{"user_id": "xKYZcaV2"}, {"user_id": "XKIi8KD8"}, {"user_id": "H69Z798S"}]}, {"party_attributes": {"Z36XAnHw": {}, "268CitXd": {}, "h6HFtnbU": {}}, "party_id": "IYjpaqZl", "party_members": [{"user_id": "2prSrqCl"}, {"user_id": "TRGWE3rv"}, {"user_id": "O48h0pcv"}]}]}], "namespace": "AdaZ9c4p", "notification_payload": {}, "pod_name": "Yh9GgDh3", "region": "lzfsAqEJ", "session_id": "HLopN56R"}' \
    > test.out 2>&1
eval_tap $? 75 'CreateSession' test.out

#- 76 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "3imPDJ8K"}' \
    > test.out 2>&1
eval_tap $? 76 'ClaimServer' test.out

#- 77 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID '6UVlmQkb' \
    > test.out 2>&1
eval_tap $? 77 'GetSession' test.out

#- 78 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'A6VCCM41' \
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
    --region 'DcdCa71J' \
    > test.out 2>&1
eval_tap $? 81 'ListProvidersByRegion' test.out

#- 82 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 82 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE