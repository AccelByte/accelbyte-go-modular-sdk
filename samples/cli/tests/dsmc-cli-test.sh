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
echo "1..69"

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
    --body '{"artifactPath": "nMMpwA4Y", "image": "Y6OoJegs", "namespace": "CfgcvdBD", "persistent": true, "version": "26yYL4dV"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "OUOPBEfz", "dockerPath": "Jwpt7DnW", "image": "2MWYoc2G", "imageSize": 87, "namespace": "ejtfToiB", "persistent": false, "version": "O18oq7h4"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "0cnaseAz", "dockerPath": "vNZInDGr", "image": "h6ybEdZ6", "imageSize": 15, "namespace": "cswZgfFz", "patchVersion": "2uGq5sVn", "persistent": true, "version": "QrSrCjG0"}' \
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
    --body '{"claim_timeout": 32, "creation_timeout": 93, "default_version": "hNmN3Btg", "port": 75, "ports": {"pSsF9LXp": 83, "18gxfTL3": 98, "NJ4xu9sm": 33}, "protocol": "jFZh0sfp", "providers": ["GQfQuao8", "L2vf24by", "LqqFNRKv"], "session_timeout": 20, "unreachable_timeout": 66}' \
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
    --body '{"claim_timeout": 77, "creation_timeout": 45, "default_version": "wiIgyUYL", "port": 63, "protocol": "4nFN7qE7", "providers": ["NpBOvtt1", "ZKECP3zk", "tu3yJz37"], "session_timeout": 86, "unreachable_timeout": 47}' \
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
    --name '8Dmxdapm' \
    --count '24' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'nl5g1IRB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'ZXbEsbOL' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 86, "buffer_percent": 12, "configuration": "5DTX9GhZ", "enable_region_overrides": true, "game_version": "7br8CUY2", "max_count": 47, "min_count": 43, "overrides": {"MMeJezL2": {"buffer_count": 44, "buffer_percent": 16, "configuration": "hSTFqVYR", "enable_region_overrides": false, "game_version": "eNuQ4e58", "max_count": 47, "min_count": 25, "name": "0c5gmqNM", "region_overrides": {"U11RntXl": {"buffer_count": 20, "buffer_percent": 12, "max_count": 98, "min_count": 63, "name": "WxFQfm2h", "unlimited": true, "use_buffer_percent": true}, "ES8CvHag": {"buffer_count": 81, "buffer_percent": 42, "max_count": 75, "min_count": 52, "name": "bQQnXc0F", "unlimited": true, "use_buffer_percent": true}, "VM7Csbx1": {"buffer_count": 82, "buffer_percent": 33, "max_count": 62, "min_count": 95, "name": "Q0YztgKt", "unlimited": false, "use_buffer_percent": false}}, "regions": ["cpeYU2AQ", "U2GzslSI", "hUdd2apX"], "session_timeout": 89, "unlimited": false, "use_buffer_percent": true}, "3jsBWFcw": {"buffer_count": 4, "buffer_percent": 81, "configuration": "BtKUrKtE", "enable_region_overrides": false, "game_version": "Pw0eF0uc", "max_count": 24, "min_count": 20, "name": "1ZUmaHtH", "region_overrides": {"avf4McsZ": {"buffer_count": 15, "buffer_percent": 52, "max_count": 88, "min_count": 50, "name": "2LQ4ZPiO", "unlimited": false, "use_buffer_percent": false}, "9lL3g0Kq": {"buffer_count": 38, "buffer_percent": 94, "max_count": 81, "min_count": 24, "name": "J5DtxpZC", "unlimited": false, "use_buffer_percent": false}, "LMooKpy2": {"buffer_count": 53, "buffer_percent": 90, "max_count": 39, "min_count": 16, "name": "a6DC3txQ", "unlimited": true, "use_buffer_percent": false}}, "regions": ["3IQdz9Ra", "4d5hr4f8", "bCaVDnLD"], "session_timeout": 64, "unlimited": false, "use_buffer_percent": false}, "LpbMwYPz": {"buffer_count": 30, "buffer_percent": 6, "configuration": "ILNwImQL", "enable_region_overrides": false, "game_version": "VdWLSO6I", "max_count": 62, "min_count": 100, "name": "bXokvT95", "region_overrides": {"pbHnEX0d": {"buffer_count": 77, "buffer_percent": 40, "max_count": 22, "min_count": 16, "name": "UhA4fnd1", "unlimited": true, "use_buffer_percent": true}, "nQMkrIev": {"buffer_count": 62, "buffer_percent": 45, "max_count": 11, "min_count": 15, "name": "P6QtzWFU", "unlimited": false, "use_buffer_percent": false}, "ywTotbKu": {"buffer_count": 70, "buffer_percent": 33, "max_count": 80, "min_count": 72, "name": "VVtb0wll", "unlimited": false, "use_buffer_percent": false}}, "regions": ["nh3eqMzL", "TIreaF97", "27PmkHUI"], "session_timeout": 16, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"yPBdwZwI": {"buffer_count": 64, "buffer_percent": 68, "max_count": 80, "min_count": 52, "name": "vy9wyE1c", "unlimited": true, "use_buffer_percent": false}, "A6uaYGVt": {"buffer_count": 11, "buffer_percent": 69, "max_count": 99, "min_count": 61, "name": "pujcJoG6", "unlimited": false, "use_buffer_percent": true}, "HPbbdqID": {"buffer_count": 35, "buffer_percent": 97, "max_count": 29, "min_count": 97, "name": "q0hAkkzU", "unlimited": true, "use_buffer_percent": true}}, "regions": ["xMKch6i2", "jOr4Fu68", "WIBQfHut"], "session_timeout": 81, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment '6FUxwvib' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'WrSyCnS7' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 25, "buffer_percent": 36, "configuration": "KDERanJU", "enable_region_overrides": false, "game_version": "US4zDTXJ", "max_count": 12, "min_count": 63, "regions": ["Tha8muMO", "GA5964pA", "OepaEt3i"], "session_timeout": 33, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment '9nNgwueo' \
    --namespace $AB_NAMESPACE \
    --region 'SMfJDafK' \
    --body '{"buffer_count": 8, "buffer_percent": 32, "max_count": 81, "min_count": 69, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'bKLrYW8t' \
    --namespace $AB_NAMESPACE \
    --region '4RkGMk2w' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'j8wFYEsL' \
    --namespace $AB_NAMESPACE \
    --region 'qgn7pwS5' \
    --body '{"buffer_count": 81, "buffer_percent": 75, "max_count": 93, "min_count": 6, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'HbtNGlj2' \
    --namespace $AB_NAMESPACE \
    --version 'QO3kS7gd' \
    --body '{"buffer_count": 54, "buffer_percent": 46, "configuration": "l6S7g3aq", "enable_region_overrides": false, "game_version": "ppyh1vBE", "max_count": 26, "min_count": 87, "region_overrides": {"055LnB8Z": {"buffer_count": 67, "buffer_percent": 100, "max_count": 19, "min_count": 18, "name": "kGyv9cf2", "unlimited": true, "use_buffer_percent": true}, "SpCgnVz4": {"buffer_count": 58, "buffer_percent": 73, "max_count": 36, "min_count": 39, "name": "eF1m1K2o", "unlimited": true, "use_buffer_percent": false}, "nU5AjRfL": {"buffer_count": 99, "buffer_percent": 68, "max_count": 72, "min_count": 42, "name": "roZtus2G", "unlimited": true, "use_buffer_percent": false}}, "regions": ["2owaRWOX", "4NSWqVoG", "XkmxlZay"], "session_timeout": 38, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'WXeHU5aO' \
    --namespace $AB_NAMESPACE \
    --version 'yKrBE9vn' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment '8P2cHT0O' \
    --namespace $AB_NAMESPACE \
    --version 'syhco7F0' \
    --body '{"buffer_count": 78, "buffer_percent": 100, "configuration": "dlRH8VhP", "enable_region_overrides": false, "game_version": "8v3AeO4b", "max_count": 62, "min_count": 41, "regions": ["Mk4lsDkc", "fDUwsCnE", "jttFJFEH"], "session_timeout": 22, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'lfdetrod' \
    --namespace $AB_NAMESPACE \
    --region '8HA1wI8q' \
    --version 'huexytd2' \
    --body '{"buffer_count": 15, "buffer_percent": 9, "max_count": 40, "min_count": 29, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'jD2gtMWT' \
    --namespace $AB_NAMESPACE \
    --region 'CwFE8D3I' \
    --version '9v0qJpej' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'pZI7ulby' \
    --namespace $AB_NAMESPACE \
    --region 'ZlP1eWjA' \
    --version 'CxVlSYPs' \
    --body '{"buffer_count": 82, "buffer_percent": 88, "max_count": 23, "min_count": 53, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '11' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'H4p7DNXh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'WOiODaWm' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 49, "mem_limit": 28, "params": "hV8QQfOU"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'VEuS2Owd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'WVwEkL5r' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 82, "mem_limit": 17, "name": "YTaGyXXJ", "params": "wUWBEUeI"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'NGKXn3rQ' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 92}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'TcxxCRpO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'Nwygbmdf' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "aCu6W0uw", "port": 79}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'z9BuUbin' \
    --sortBy 'version' \
    --sortDirection 'desc' \
    --count '30' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'Coa2GOuo' \
    --version 'ivXZgKry' \
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
    --imageURI 'oPOdKH1u' \
    --version 'kt40Xjcq' \
    --versionPatch 'bFNu2csO' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'aPiHxRch' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'h9WPkJlF' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'nej2zVp9' \
    --versionPatch 'm7f8Ws8J' \
    > test.out 2>&1
eval_tap $? 43 'GetImagePatchDetail' test.out

#- 44 ListServer
samples/cli/sample-apps Dsmc listServer \
    --namespace $AB_NAMESPACE \
    --region 'WOrohEU3' \
    --count '74' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 44 'ListServer' test.out

#- 45 CountServer
samples/cli/sample-apps Dsmc countServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 45 'CountServer' test.out

#- 46 CountServerDetailed
samples/cli/sample-apps Dsmc countServerDetailed \
    --namespace $AB_NAMESPACE \
    --region 'GkByrXWL' \
    > test.out 2>&1
eval_tap $? 46 'CountServerDetailed' test.out

#- 47 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'ListLocalServer' test.out

#- 48 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'cV77u2pc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'DeleteLocalServer' test.out

#- 49 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'Fnvadvz4' \
    > test.out 2>&1
eval_tap $? 49 'GetServer' test.out

#- 50 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'YIVBS4NR' \
    > test.out 2>&1
eval_tap $? 50 'DeleteServer' test.out

#- 51 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region '317gXnu1' \
    --withServer 'true' \
    --count '72' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 51 'ListSession' test.out

#- 52 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'qIV0Uwtp' \
    > test.out 2>&1
eval_tap $? 52 'CountSession' test.out

#- 53 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'WNyiKam0' \
    > test.out 2>&1
eval_tap $? 53 'DeleteSession' test.out

#- 54 ExportConfigV1
samples/cli/sample-apps Dsmc exportConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'ExportConfigV1' test.out

#- 55 ImportConfigV1
samples/cli/sample-apps Dsmc importConfigV1 \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 55 'ImportConfigV1' test.out

#- 56 ImageLimitClient
samples/cli/sample-apps Dsmc imageLimitClient \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'ImageLimitClient' test.out

#- 57 ImageDetailClient
samples/cli/sample-apps Dsmc imageDetailClient \
    --namespace $AB_NAMESPACE \
    --version '98DObEcp' \
    > test.out 2>&1
eval_tap $? 57 'ImageDetailClient' test.out

#- 58 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "KlsfDvPs"}' \
    > test.out 2>&1
eval_tap $? 58 'DeregisterLocalServer' test.out

#- 59 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "03ROCIMw", "ip": "0TWV50Ph", "name": "bF7l21EQ", "port": 56}' \
    > test.out 2>&1
eval_tap $? 59 'RegisterLocalServer' test.out

#- 60 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "8jNCUKXg", "pod_name": "SRkC09bu"}' \
    > test.out 2>&1
eval_tap $? 60 'RegisterServer' test.out

#- 61 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": false, "pod_name": "tVRVq2t9"}' \
    > test.out 2>&1
eval_tap $? 61 'ShutdownServer' test.out

#- 62 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'IqFvJlS3' \
    > test.out 2>&1
eval_tap $? 62 'GetServerSession' test.out

#- 63 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "ppK9Sdtn", "configuration": "AQHEKaKy", "deployment": "iyDDAIX3", "game_mode": "g0hLoo3z", "matching_allies": [{"matching_parties": [{"party_attributes": {"0pisXyAG": {}, "N6coZ7ha": {}, "Ho2R2yuG": {}}, "party_id": "MuSS2IHp", "party_members": [{"user_id": "7SOflRtx"}, {"user_id": "byOeQewd"}, {"user_id": "lcaDS8Lo"}]}, {"party_attributes": {"PH8c32aW": {}, "awLz0OZx": {}, "yv1W8VR1": {}}, "party_id": "feNGbmkR", "party_members": [{"user_id": "cXMhr9pv"}, {"user_id": "oe3JNitO"}, {"user_id": "RAnCQFYB"}]}, {"party_attributes": {"uom04o36": {}, "aH7LDWgb": {}, "CTeTgEcj": {}}, "party_id": "S46HsrAI", "party_members": [{"user_id": "8LEesPPp"}, {"user_id": "Hbuu4j7m"}, {"user_id": "a3spViXw"}]}]}, {"matching_parties": [{"party_attributes": {"J6LT3QK7": {}, "gHMqY8tV": {}, "CsFhnera": {}}, "party_id": "gj26B00h", "party_members": [{"user_id": "CviprfwG"}, {"user_id": "PhJqmVfr"}, {"user_id": "qqLtX6bY"}]}, {"party_attributes": {"eoS5S7tt": {}, "wzAvlnQk": {}, "Aenbibq1": {}}, "party_id": "kZNnZ1C7", "party_members": [{"user_id": "L5opXBv3"}, {"user_id": "gWVqbGRz"}, {"user_id": "RwzG0YIX"}]}, {"party_attributes": {"YL11zj0f": {}, "4gcVet7e": {}, "260yxTre": {}}, "party_id": "2L5f0b7U", "party_members": [{"user_id": "JDFxTAUQ"}, {"user_id": "cXslj3E4"}, {"user_id": "Rl2O8dNC"}]}]}, {"matching_parties": [{"party_attributes": {"TBbqjGu7": {}, "faQBD8jz": {}, "Yx9dfh2F": {}}, "party_id": "s0ehHM5w", "party_members": [{"user_id": "7DcNSSRN"}, {"user_id": "vek9amkj"}, {"user_id": "GhEJ6LT3"}]}, {"party_attributes": {"eoWrBHQp": {}, "2uRj4Xlv": {}, "QuMyJwwN": {}}, "party_id": "fGyaIyrS", "party_members": [{"user_id": "ssgUDBvE"}, {"user_id": "na2wbFYP"}, {"user_id": "IPMxb4Oz"}]}, {"party_attributes": {"iZ7ToiPU": {}, "y3O5F4gh": {}, "NOFsHUi6": {}}, "party_id": "K8cWyAmC", "party_members": [{"user_id": "vAm4aRF4"}, {"user_id": "GjJuQdsD"}, {"user_id": "CazRiYS1"}]}]}], "namespace": "QBz9UUfi", "notification_payload": {}, "pod_name": "XxffAAe2", "region": "OeHtnA1x", "session_id": "pIErNFiL"}' \
    > test.out 2>&1
eval_tap $? 63 'CreateSession' test.out

#- 64 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "kAk6yNZF"}' \
    > test.out 2>&1
eval_tap $? 64 'ClaimServer' test.out

#- 65 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'B9LH0KzY' \
    > test.out 2>&1
eval_tap $? 65 'GetSession' test.out

#- 66 GetDefaultProvider
samples/cli/sample-apps Dsmc getDefaultProvider \
    > test.out 2>&1
eval_tap $? 66 'GetDefaultProvider' test.out

#- 67 ListProviders
samples/cli/sample-apps Dsmc listProviders \
    > test.out 2>&1
eval_tap $? 67 'ListProviders' test.out

#- 68 ListProvidersByRegion
samples/cli/sample-apps Dsmc listProvidersByRegion \
    --region 'CCQjAoCX' \
    > test.out 2>&1
eval_tap $? 68 'ListProvidersByRegion' test.out

#- 69 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 69 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE