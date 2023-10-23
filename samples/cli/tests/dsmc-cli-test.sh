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
    --body '{"artifactPath": "ayfR6S2S", "coreDumpEnabled": true, "image": "LIDBY2jH", "imageReplicationsMap": {"CvVjfeYk": {"failure_code": "kbrebiR5", "region": "ECtierYU", "status": "o387x2ZN", "uri": "LaLi08pA"}, "zN8YqcFI": {"failure_code": "jaEtOJYP", "region": "ZkcN9Dh2", "status": "DyFTICo3", "uri": "4sqHcmoJ"}, "ax5CvdYJ": {"failure_code": "aCRgXX3K", "region": "44sRi1nk", "status": "MTF9oGi1", "uri": "Qy5IAsay"}}, "namespace": "RTOOJnqH", "patchVersion": "msKRndGe", "persistent": true, "version": "u3JXOIcK"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "qOy7sjt6", "coreDumpEnabled": false, "dockerPath": "UFj3vfBJ", "image": "Nh16eun9", "imageSize": 12, "namespace": "k6TDEQ2f", "persistent": true, "ulimitFileSize": 83, "version": "aQFYeKrL"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "HNtmsKJr", "coreDumpEnabled": true, "dockerPath": "uV0YbGMs", "image": "sFv8eESh", "imageSize": 92, "namespace": "9a7FLA1E", "patchVersion": "z51iuM5J", "persistent": true, "ulimitFileSize": 48, "uploaderFlag": "7jNGW1by", "version": "UkjvfKua"}' \
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
    --body '{"claim_timeout": 89, "creation_timeout": 51, "default_version": "m6SzPkGY", "port": 39, "ports": {"cohuZTsX": 95, "cfns4bST": 56, "Mfgb511N": 72}, "protocol": "s07g9U6V", "providers": ["dxLNdG0D", "NfAv58oU", "ShhcolNq"], "session_timeout": 29, "unreachable_timeout": 94}' \
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
    --body '{"claim_timeout": 90, "creation_timeout": 69, "default_version": "xtbzW0Se", "port": 22, "protocol": "eTpsprJp", "providers": ["nmDAlsTW", "V8rLvxw1", "0j20VSJM"], "session_timeout": 67, "unreachable_timeout": 59}' \
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
    --name 'RU29JJfJ' \
    --count '1' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'AA7ae0TZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment '8dBPxRhG' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 68, "buffer_percent": 10, "configuration": "yL349UYy", "enable_region_overrides": true, "extendable_session": true, "game_version": "KKyJsHYy", "max_count": 53, "min_count": 52, "overrides": {"lQvQjvow": {"buffer_count": 52, "buffer_percent": 30, "configuration": "HpLhebBY", "enable_region_overrides": false, "extendable_session": false, "game_version": "v70Z7QxC", "max_count": 7, "min_count": 60, "name": "5bjNFt6E", "region_overrides": {"T786P540": {"buffer_count": 4, "buffer_percent": 34, "max_count": 51, "min_count": 52, "name": "gHf4UH1Y", "unlimited": true, "use_buffer_percent": true}, "aDalrAFJ": {"buffer_count": 54, "buffer_percent": 76, "max_count": 8, "min_count": 80, "name": "srNY2j6f", "unlimited": false, "use_buffer_percent": false}, "LXKVrvRz": {"buffer_count": 87, "buffer_percent": 30, "max_count": 81, "min_count": 30, "name": "V9LIZXkb", "unlimited": true, "use_buffer_percent": true}}, "regions": ["WcMyG2Xg", "6tDlDSBE", "SnFvfUop"], "session_timeout": 11, "unlimited": true, "use_buffer_percent": true}, "vwMUGzEM": {"buffer_count": 34, "buffer_percent": 14, "configuration": "sHQ4cMv9", "enable_region_overrides": true, "extendable_session": false, "game_version": "5kQ8jrCy", "max_count": 99, "min_count": 37, "name": "Zy0lRy3O", "region_overrides": {"84PIl5OE": {"buffer_count": 19, "buffer_percent": 94, "max_count": 56, "min_count": 11, "name": "7MIAyNqk", "unlimited": false, "use_buffer_percent": true}, "gc1RH8Nd": {"buffer_count": 85, "buffer_percent": 5, "max_count": 9, "min_count": 72, "name": "djhjqaDc", "unlimited": false, "use_buffer_percent": true}, "286OYPxY": {"buffer_count": 18, "buffer_percent": 42, "max_count": 51, "min_count": 91, "name": "pVWdgKg9", "unlimited": false, "use_buffer_percent": true}}, "regions": ["yFzpfUAl", "oye0UDj9", "Jp3bXn11"], "session_timeout": 10, "unlimited": false, "use_buffer_percent": false}, "oBuvdPpZ": {"buffer_count": 7, "buffer_percent": 31, "configuration": "R3uq4wPP", "enable_region_overrides": false, "extendable_session": true, "game_version": "rowaeW4m", "max_count": 76, "min_count": 31, "name": "mnaWjaTi", "region_overrides": {"YaUX7p8d": {"buffer_count": 75, "buffer_percent": 24, "max_count": 41, "min_count": 0, "name": "iIVkIaGg", "unlimited": false, "use_buffer_percent": true}, "ie8HiuVX": {"buffer_count": 15, "buffer_percent": 68, "max_count": 10, "min_count": 15, "name": "cSNrAJe1", "unlimited": true, "use_buffer_percent": false}, "ZwdX36qQ": {"buffer_count": 42, "buffer_percent": 95, "max_count": 20, "min_count": 90, "name": "ywZbya7a", "unlimited": true, "use_buffer_percent": false}}, "regions": ["47JuEfrJ", "TmA6mhRK", "jofGnuyN"], "session_timeout": 70, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"kaeAO275": {"buffer_count": 58, "buffer_percent": 70, "max_count": 92, "min_count": 48, "name": "c1IU3tAg", "unlimited": false, "use_buffer_percent": true}, "04xwuTWl": {"buffer_count": 34, "buffer_percent": 29, "max_count": 53, "min_count": 33, "name": "T0fSL1q7", "unlimited": false, "use_buffer_percent": false}, "UXzi9zqX": {"buffer_count": 64, "buffer_percent": 10, "max_count": 9, "min_count": 92, "name": "6m3etUmj", "unlimited": true, "use_buffer_percent": false}}, "regions": ["Wv8AeU3j", "ok8I5C7d", "W0iKTd4u"], "session_timeout": 39, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'B8RrFQCx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment '5pUtKEam' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 66, "buffer_percent": 9, "configuration": "MiUzMbpG", "enable_region_overrides": false, "extendable_session": false, "game_version": "fibq8lfJ", "max_count": 29, "min_count": 3, "regions": ["QUcqzB96", "1DY7imaP", "hvDb0IZ0"], "session_timeout": 97, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'D9Rb0Zgc' \
    --namespace $AB_NAMESPACE \
    --region '6CDABH05' \
    --body '{"buffer_count": 73, "buffer_percent": 92, "max_count": 31, "min_count": 59, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment '4yF6T0CK' \
    --namespace $AB_NAMESPACE \
    --region 'oUGZqB8G' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment '6vx0fACx' \
    --namespace $AB_NAMESPACE \
    --region 'NPPwbUHq' \
    --body '{"buffer_count": 4, "buffer_percent": 46, "max_count": 95, "min_count": 47, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'wUjoQzeP' \
    --namespace $AB_NAMESPACE \
    --version 'nfYl4ICP' \
    --body '{"buffer_count": 55, "buffer_percent": 3, "configuration": "HQqXkfLY", "enable_region_overrides": true, "extendable_session": false, "game_version": "icxOFnul", "max_count": 87, "min_count": 27, "region_overrides": {"8Y99c5Q1": {"buffer_count": 80, "buffer_percent": 91, "max_count": 67, "min_count": 97, "name": "T1eHyJSW", "unlimited": true, "use_buffer_percent": true}, "iIiFvU6v": {"buffer_count": 3, "buffer_percent": 76, "max_count": 95, "min_count": 32, "name": "FL2J3HUo", "unlimited": true, "use_buffer_percent": false}, "ONAigNBt": {"buffer_count": 96, "buffer_percent": 5, "max_count": 82, "min_count": 74, "name": "EP4mNvpt", "unlimited": true, "use_buffer_percent": false}}, "regions": ["oEKWukKH", "No4Gc0Hh", "LuTsdVAC"], "session_timeout": 17, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'RV4Kju7u' \
    --namespace $AB_NAMESPACE \
    --version 'Vy7tndyG' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'tSyPzxwD' \
    --namespace $AB_NAMESPACE \
    --version 'csShbbXF' \
    --body '{"buffer_count": 30, "buffer_percent": 64, "configuration": "EeTherhF", "enable_region_overrides": false, "game_version": "lb6tCRei", "max_count": 62, "min_count": 46, "regions": ["qZaVeoyx", "gB4WzEDG", "HePBq3yZ"], "session_timeout": 35, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'VLSZe23B' \
    --namespace $AB_NAMESPACE \
    --region 'PgPHwy0Z' \
    --version 'HwqXSTBZ' \
    --body '{"buffer_count": 41, "buffer_percent": 13, "max_count": 68, "min_count": 50, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'sUnAuOJJ' \
    --namespace $AB_NAMESPACE \
    --region 'lfhSNPXa' \
    --version 'TUcrEg2C' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'cz2zVGAf' \
    --namespace $AB_NAMESPACE \
    --region 'pQsPBaMv' \
    --version 'rlSnjPxi' \
    --body '{"buffer_count": 10, "buffer_percent": 13, "max_count": 13, "min_count": 92, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '66' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'z5FgDIzz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'UCfClYam' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 63, "mem_limit": 74, "params": "R5fEYAw0"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'XOl4UQZ4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'VCSnhSMa' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 94, "mem_limit": 24, "name": "y0dPkZgF", "params": "TY6tYTuY"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'QhInKT4M' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 48}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'tz5af9uD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'gr8gaASO' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "EebL79b2", "port": 91}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'DBAwyk5o' \
    --sortBy 'version' \
    --sortDirection 'asc' \
    --count '85' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI '36y1wSvD' \
    --version 'wqeKjtvE' \
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
    --imageURI 'ylIXaepu' \
    --version 'wpPjAoLT' \
    --versionPatch 'lmkjpfCq' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'jsE6fdXK' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'zeRK6Za9' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'nN87lMeU' \
    --versionPatch 'gVhM8M5L' \
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
    --region 'nx0vkbec' \
    --count '86' \
    --offset '88' \
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
    --region 'lxH4OGVc' \
    > test.out 2>&1
eval_tap $? 47 'CountServerDetailed' test.out

#- 48 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'ListLocalServer' test.out

#- 49 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'q7ogzkfL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'DeleteLocalServer' test.out

#- 50 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'k8lKwY2s' \
    > test.out 2>&1
eval_tap $? 50 'GetServer' test.out

#- 51 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'dECXPdQ5' \
    > test.out 2>&1
eval_tap $? 51 'DeleteServer' test.out

#- 52 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region '7AX3gYTn' \
    --withServer 'false' \
    --count '18' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 52 'ListSession' test.out

#- 53 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'k3EPe3hk' \
    > test.out 2>&1
eval_tap $? 53 'CountSession' test.out

#- 54 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'eSYO6DtA' \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "UjtWsmAL", "repository": "LsPT8YJR"}' \
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
    --name 'GfoZujfq' \
    --count '63' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 58 'GetAllDeploymentClient' test.out

#- 59 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment 'oeSwkf4X' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 44, "buffer_percent": 43, "configuration": "nwCYIUJ0", "enable_region_overrides": false, "extendable_session": true, "game_version": "1clcQAwc", "max_count": 26, "min_count": 22, "overrides": {"O3QWRoi7": {"buffer_count": 83, "buffer_percent": 17, "configuration": "fMSS16Jt", "enable_region_overrides": true, "extendable_session": false, "game_version": "vvQNLUO3", "max_count": 72, "min_count": 70, "name": "ITz4mlaj", "region_overrides": {"SfgPc6lW": {"buffer_count": 89, "buffer_percent": 46, "max_count": 14, "min_count": 56, "name": "4zAsslvs", "unlimited": true, "use_buffer_percent": true}, "SZvlDEZ6": {"buffer_count": 48, "buffer_percent": 61, "max_count": 72, "min_count": 55, "name": "kVSjnhYJ", "unlimited": true, "use_buffer_percent": true}, "oLsLdQmu": {"buffer_count": 44, "buffer_percent": 94, "max_count": 42, "min_count": 74, "name": "k222f9lC", "unlimited": true, "use_buffer_percent": false}}, "regions": ["fhfPbbe5", "rYWSCsHd", "32MkEF0W"], "session_timeout": 34, "unlimited": false, "use_buffer_percent": true}, "9Br0tkrU": {"buffer_count": 79, "buffer_percent": 9, "configuration": "17kAx1TG", "enable_region_overrides": false, "extendable_session": false, "game_version": "o8Nm2igF", "max_count": 48, "min_count": 65, "name": "WgoY78Ew", "region_overrides": {"OuZcYo2n": {"buffer_count": 63, "buffer_percent": 9, "max_count": 11, "min_count": 53, "name": "23oABOho", "unlimited": false, "use_buffer_percent": false}, "MtvjznNj": {"buffer_count": 95, "buffer_percent": 0, "max_count": 65, "min_count": 14, "name": "E6cgqKBC", "unlimited": true, "use_buffer_percent": true}, "UkDnwJ5l": {"buffer_count": 8, "buffer_percent": 15, "max_count": 86, "min_count": 100, "name": "F7Mqb701", "unlimited": false, "use_buffer_percent": false}}, "regions": ["8uVlAiG2", "gVDsZPIJ", "RsJu4DCx"], "session_timeout": 9, "unlimited": false, "use_buffer_percent": true}, "qpCwmq1q": {"buffer_count": 98, "buffer_percent": 6, "configuration": "CFbwHStM", "enable_region_overrides": false, "extendable_session": true, "game_version": "kmOn0dqD", "max_count": 89, "min_count": 12, "name": "6gV1d2UM", "region_overrides": {"dNmhNp8C": {"buffer_count": 55, "buffer_percent": 82, "max_count": 79, "min_count": 21, "name": "9fLBgXbO", "unlimited": true, "use_buffer_percent": true}, "jZwPoG6d": {"buffer_count": 49, "buffer_percent": 95, "max_count": 84, "min_count": 13, "name": "HlxOUC59", "unlimited": false, "use_buffer_percent": true}, "a02gB9A2": {"buffer_count": 24, "buffer_percent": 87, "max_count": 25, "min_count": 82, "name": "aZOy6Qou", "unlimited": false, "use_buffer_percent": true}}, "regions": ["hgzOkZly", "BliWqcX8", "2EDrOV1e"], "session_timeout": 51, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"sHBjxBa0": {"buffer_count": 8, "buffer_percent": 69, "max_count": 58, "min_count": 80, "name": "ULfnprul", "unlimited": false, "use_buffer_percent": false}, "XEYhgiSz": {"buffer_count": 68, "buffer_percent": 50, "max_count": 30, "min_count": 97, "name": "utb4cHAx", "unlimited": false, "use_buffer_percent": false}, "OcIqrVUh": {"buffer_count": 17, "buffer_percent": 19, "max_count": 47, "min_count": 55, "name": "O8VM8GsP", "unlimited": false, "use_buffer_percent": true}}, "regions": ["MaZeUuBc", "dO0dY0ZF", "mgNEzSIe"], "session_timeout": 69, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 59 'CreateDeploymentClient' test.out

#- 60 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'kQ43Thas' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteDeploymentClient' test.out

#- 61 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '15' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 61 'GetAllPodConfigClient' test.out

#- 62 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'bCZLdmH9' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 44, "mem_limit": 29, "params": "o9JO1M5z"}' \
    > test.out 2>&1
eval_tap $? 62 'CreatePodConfigClient' test.out

#- 63 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'd5hQ4tPH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeletePodConfigClient' test.out

#- 64 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '31' \
    --offset '98' \
    --q '2n21oDJP' \
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
    --version 'JtSYrB4k' \
    > test.out 2>&1
eval_tap $? 66 'ImageDetailClient' test.out

#- 67 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'OleXfKIh' \
    --count '45' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 67 'ListServerClient' test.out

#- 68 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "AgNtWV8p"}' \
    > test.out 2>&1
eval_tap $? 68 'ServerHeartbeat' test.out

#- 69 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "rjB45HQH"}' \
    > test.out 2>&1
eval_tap $? 69 'DeregisterLocalServer' test.out

#- 70 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "H9prCN06", "ip": "eXA9tuEJ", "name": "vC88bpLt", "port": 17}' \
    > test.out 2>&1
eval_tap $? 70 'RegisterLocalServer' test.out

#- 71 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "HkMerR75", "pod_name": "MbPZ0vM5"}' \
    > test.out 2>&1
eval_tap $? 71 'RegisterServer' test.out

#- 72 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": false, "pod_name": "UF85VriP"}' \
    > test.out 2>&1
eval_tap $? 72 'ShutdownServer' test.out

#- 73 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'Tqlg32S7' \
    > test.out 2>&1
eval_tap $? 73 'GetServerSessionTimeout' test.out

#- 74 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'OmpMKE01' \
    > test.out 2>&1
eval_tap $? 74 'GetServerSession' test.out

#- 75 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "ldLTbnxx", "configuration": "p1ivPoHU", "deployment": "OOBeMxEX", "game_mode": "g3SFZjYc", "matching_allies": [{"matching_parties": [{"party_attributes": {"TadR9WS2": {}, "04qDvTO0": {}, "RHcdq5Dj": {}}, "party_id": "gVeGMvfP", "party_members": [{"user_id": "LibT0Syt"}, {"user_id": "ag8hWlPF"}, {"user_id": "cKBAXXWZ"}]}, {"party_attributes": {"KvyOzowp": {}, "THDmhD7r": {}, "0yj1GHFO": {}}, "party_id": "ue0e6zGe", "party_members": [{"user_id": "5H7g9k6G"}, {"user_id": "lHHgkMi6"}, {"user_id": "0EVsUlAj"}]}, {"party_attributes": {"yc44fBWP": {}, "DjEvo7bl": {}, "mQdLAxml": {}}, "party_id": "jPkHET9J", "party_members": [{"user_id": "xiYejpK5"}, {"user_id": "m73tQm1k"}, {"user_id": "WRsA1O6e"}]}]}, {"matching_parties": [{"party_attributes": {"IFowcnAG": {}, "YHOGs3RJ": {}, "1GJk89wT": {}}, "party_id": "DLz8YI8E", "party_members": [{"user_id": "OpOLW4dY"}, {"user_id": "XwbsNTa2"}, {"user_id": "AQNeFAdo"}]}, {"party_attributes": {"6bHsMo0P": {}, "beQvqEwe": {}, "9gTiMrRs": {}}, "party_id": "SjF9TYGw", "party_members": [{"user_id": "W9N6VX1K"}, {"user_id": "Mf8t51Eq"}, {"user_id": "dLGEUbar"}]}, {"party_attributes": {"ASCyFLQj": {}, "mUh9zM5j": {}, "PZqgxkNg": {}}, "party_id": "tN8nix8P", "party_members": [{"user_id": "ib6T9wzk"}, {"user_id": "0hHuVgWK"}, {"user_id": "N3EHPWFW"}]}]}, {"matching_parties": [{"party_attributes": {"9i4wEUp4": {}, "iOf9u87p": {}, "eZD3TwRP": {}}, "party_id": "PK900IQS", "party_members": [{"user_id": "c3RYbQzZ"}, {"user_id": "lYSlr3Gc"}, {"user_id": "KTGxbOtL"}]}, {"party_attributes": {"lAypxhYs": {}, "PS1thk3l": {}, "XEiv2HFo": {}}, "party_id": "e1d23ktN", "party_members": [{"user_id": "GyXEtfQ8"}, {"user_id": "SKG6AFkL"}, {"user_id": "8MeGpz0Q"}]}, {"party_attributes": {"x3YhH3kP": {}, "IOXWJ5Tb": {}, "HR3dM9VM": {}}, "party_id": "XjxfvJgI", "party_members": [{"user_id": "bjxOhyjt"}, {"user_id": "hPtqXm2N"}, {"user_id": "qLjUVhtS"}]}]}], "namespace": "aKi8Dkkw", "notification_payload": {}, "pod_name": "Junrteg3", "region": "OBVMElvW", "session_id": "Y2iQZnfL"}' \
    > test.out 2>&1
eval_tap $? 75 'CreateSession' test.out

#- 76 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "7IaZ01om"}' \
    > test.out 2>&1
eval_tap $? 76 'ClaimServer' test.out

#- 77 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'MKf0je9a' \
    > test.out 2>&1
eval_tap $? 77 'GetSession' test.out

#- 78 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'iZWizo4B' \
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
    --region 'ZYbtf1lF' \
    > test.out 2>&1
eval_tap $? 81 'ListProvidersByRegion' test.out

#- 82 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 82 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE