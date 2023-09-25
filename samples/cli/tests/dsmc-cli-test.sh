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
    --body '{"artifactPath": "ikW1wbNP", "coreDumpEnabled": false, "image": "Bx8Bcke8", "imageReplicationsMap": {"F9ys38F2": {"failure_code": "DfMx1vbW", "region": "obTqG0kl", "status": "Ym0aezH1", "uri": "VOVVE1sW"}, "KviAXa7o": {"failure_code": "u5lBVleY", "region": "47zE9FZU", "status": "nc6kKjio", "uri": "XQNIR78N"}, "jqWqQhBq": {"failure_code": "IvAnt1L6", "region": "gkaEvIId", "status": "sfDIzTkC", "uri": "auRzPkeA"}}, "namespace": "SmwAcE3q", "patchVersion": "rq6t9I2s", "persistent": true, "version": "34yH7Fnb"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "WJKdvGeU", "coreDumpEnabled": false, "dockerPath": "VvwpvWmT", "image": "gZ1qjdUt", "imageSize": 52, "namespace": "PDPRvROZ", "persistent": false, "ulimitFileSize": 92, "version": "p35EACj2"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "ajrV67cb", "coreDumpEnabled": false, "dockerPath": "VtiVYS8J", "image": "hGfVh8oI", "imageSize": 86, "namespace": "t9cZ0t5d", "patchVersion": "0pMUVU5H", "persistent": false, "ulimitFileSize": 55, "uploaderFlag": "syzYgYGS", "version": "xkebjp2D"}' \
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
    --body '{"claim_timeout": 37, "creation_timeout": 14, "default_version": "vdMKXDq1", "port": 95, "ports": {"pvuzpdLu": 37, "SIoPuvR6": 37, "5GJVmlcf": 58}, "protocol": "O0PHgrJM", "providers": ["770aHnpd", "C5SkGA1U", "JFv6K0am"], "session_timeout": 42, "unreachable_timeout": 12}' \
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
    --body '{"claim_timeout": 81, "creation_timeout": 97, "default_version": "cP6gfiRl", "port": 36, "protocol": "J7PaF3l9", "providers": ["grMDMsDN", "EgS9HFJD", "wYzSkRF2"], "session_timeout": 77, "unreachable_timeout": 84}' \
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
    --name 'dyXS52Xv' \
    --count '24' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'hEaAqBdt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'Bnw65sMY' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 21, "buffer_percent": 29, "configuration": "eevWi6QU", "enable_region_overrides": false, "extendable_session": true, "game_version": "EaDDvHt2", "max_count": 20, "min_count": 65, "overrides": {"tpfpTTQX": {"buffer_count": 63, "buffer_percent": 45, "configuration": "P8FQv92q", "enable_region_overrides": true, "extendable_session": true, "game_version": "02qPsLIl", "max_count": 38, "min_count": 14, "name": "aoScFw8m", "region_overrides": {"QyBLm8DD": {"buffer_count": 8, "buffer_percent": 16, "max_count": 75, "min_count": 87, "name": "jhGkuUzk", "unlimited": true, "use_buffer_percent": false}, "eISMNOne": {"buffer_count": 89, "buffer_percent": 80, "max_count": 15, "min_count": 29, "name": "NTFlCZPP", "unlimited": false, "use_buffer_percent": true}, "IFNPTiry": {"buffer_count": 71, "buffer_percent": 57, "max_count": 11, "min_count": 74, "name": "IR1TPeue", "unlimited": true, "use_buffer_percent": false}}, "regions": ["cSgtvAlT", "rDg4dyBp", "GWLMKpmw"], "session_timeout": 64, "unlimited": true, "use_buffer_percent": true}, "hGJ2UwH3": {"buffer_count": 65, "buffer_percent": 87, "configuration": "rM0GRork", "enable_region_overrides": false, "extendable_session": false, "game_version": "zAe7jqta", "max_count": 47, "min_count": 23, "name": "CW1IU9BR", "region_overrides": {"S4rkGKsg": {"buffer_count": 18, "buffer_percent": 84, "max_count": 51, "min_count": 81, "name": "Vc0DyDnr", "unlimited": true, "use_buffer_percent": false}, "IGeHMBD1": {"buffer_count": 71, "buffer_percent": 52, "max_count": 89, "min_count": 14, "name": "ThWC6a4L", "unlimited": true, "use_buffer_percent": true}, "sMf8TKBe": {"buffer_count": 31, "buffer_percent": 74, "max_count": 8, "min_count": 82, "name": "jTiSmhNY", "unlimited": true, "use_buffer_percent": false}}, "regions": ["o1E4FzWV", "D8Y2hGDC", "L9KbTPhK"], "session_timeout": 100, "unlimited": true, "use_buffer_percent": true}, "GLXRwnol": {"buffer_count": 72, "buffer_percent": 73, "configuration": "apWa7Doz", "enable_region_overrides": false, "extendable_session": true, "game_version": "saVVzjrm", "max_count": 56, "min_count": 99, "name": "4hMY6Egv", "region_overrides": {"5GjVFoj0": {"buffer_count": 51, "buffer_percent": 46, "max_count": 22, "min_count": 67, "name": "wDJ44KuN", "unlimited": false, "use_buffer_percent": true}, "r6tC41qL": {"buffer_count": 71, "buffer_percent": 16, "max_count": 72, "min_count": 100, "name": "7vRRCmcM", "unlimited": true, "use_buffer_percent": true}, "VX11A3Wl": {"buffer_count": 45, "buffer_percent": 30, "max_count": 37, "min_count": 90, "name": "nDYLyMxm", "unlimited": false, "use_buffer_percent": false}}, "regions": ["9LXFHd7L", "SzBjEVrM", "VxDFglZN"], "session_timeout": 88, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"i41CKcY1": {"buffer_count": 99, "buffer_percent": 55, "max_count": 0, "min_count": 69, "name": "uqV7xSpA", "unlimited": true, "use_buffer_percent": true}, "nlUvpWwG": {"buffer_count": 87, "buffer_percent": 11, "max_count": 3, "min_count": 3, "name": "CVbMccmI", "unlimited": false, "use_buffer_percent": true}, "6BZ5TTBg": {"buffer_count": 66, "buffer_percent": 71, "max_count": 31, "min_count": 79, "name": "ZV42RGIi", "unlimited": false, "use_buffer_percent": false}}, "regions": ["VZTofY1H", "ujB0slJZ", "uFwdz1g9"], "session_timeout": 54, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'EFbSZFTK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment '3Vmgx1Uq' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 87, "buffer_percent": 58, "configuration": "e8H0W7Q4", "enable_region_overrides": true, "extendable_session": true, "game_version": "iWb7zsw1", "max_count": 98, "min_count": 94, "regions": ["RgpXIrYS", "b50Pj5MU", "puEQsumJ"], "session_timeout": 12, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'ncWg3Ng0' \
    --namespace $AB_NAMESPACE \
    --region 'Tzor5j8h' \
    --body '{"buffer_count": 5, "buffer_percent": 16, "max_count": 11, "min_count": 96, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'kJupng69' \
    --namespace $AB_NAMESPACE \
    --region 'REYkxknH' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'JwbhWCC0' \
    --namespace $AB_NAMESPACE \
    --region 'ZmwcrF09' \
    --body '{"buffer_count": 48, "buffer_percent": 19, "max_count": 85, "min_count": 79, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'jizLZthQ' \
    --namespace $AB_NAMESPACE \
    --version 'bxcj1Tcq' \
    --body '{"buffer_count": 32, "buffer_percent": 79, "configuration": "T1UKUPwb", "enable_region_overrides": true, "extendable_session": false, "game_version": "I1jGmKjR", "max_count": 28, "min_count": 32, "region_overrides": {"uKUQKK0I": {"buffer_count": 76, "buffer_percent": 47, "max_count": 84, "min_count": 81, "name": "zqZiRaLe", "unlimited": true, "use_buffer_percent": false}, "p4F0GSbK": {"buffer_count": 16, "buffer_percent": 55, "max_count": 95, "min_count": 65, "name": "P5Q9mLZp", "unlimited": true, "use_buffer_percent": false}, "UfcUkaQJ": {"buffer_count": 17, "buffer_percent": 72, "max_count": 91, "min_count": 96, "name": "1hb0bgLz", "unlimited": false, "use_buffer_percent": true}}, "regions": ["JHHKvBrN", "p1tbdyab", "kaM7IKEn"], "session_timeout": 70, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'WIhLVePQ' \
    --namespace $AB_NAMESPACE \
    --version 'W2d3MdrX' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment '2YhEwwHX' \
    --namespace $AB_NAMESPACE \
    --version 'S4c3cmKH' \
    --body '{"buffer_count": 13, "buffer_percent": 66, "configuration": "TH5mWnbp", "enable_region_overrides": false, "game_version": "UjCrIC3y", "max_count": 77, "min_count": 9, "regions": ["zDhEHvaX", "LrmiKSAA", "G57AkveT"], "session_timeout": 92, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'fWcyH65o' \
    --namespace $AB_NAMESPACE \
    --region 'zrt7dauT' \
    --version 'tTGPI0MP' \
    --body '{"buffer_count": 64, "buffer_percent": 18, "max_count": 23, "min_count": 75, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'l45MsQLL' \
    --namespace $AB_NAMESPACE \
    --region 'EhmSnpgv' \
    --version 'KpD3FEtU' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'XAhQMDwe' \
    --namespace $AB_NAMESPACE \
    --region 'FS3hR8BU' \
    --version '7ozwB1sm' \
    --body '{"buffer_count": 34, "buffer_percent": 21, "max_count": 62, "min_count": 20, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '15' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'MEyk8XjS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name '8Pgtlq8y' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 44, "mem_limit": 40, "params": "TMa6ltzj"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name '679rNDuM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name '5gkPRoIp' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 65, "mem_limit": 20, "name": "12XynXFk", "params": "Q8Z2iw5D"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'LUp2rqxJ' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 100}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'ghQN1Hrh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name '2HjeekJi' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "9qQBX2Ha", "port": 27}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'zyRaJOwW' \
    --sortBy 'version' \
    --sortDirection 'asc' \
    --count '93' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'JHXraloU' \
    --version 'ioNZiZEB' \
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
    --imageURI '7b7aW0uT' \
    --version 'wTT0qYNm' \
    --versionPatch '2XtCV5By' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'mak6auV8' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'vKkWk2sA' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'kyrlZXKS' \
    --versionPatch 'xPEZrxkY' \
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
    --region 'VRm3u7aZ' \
    --count '21' \
    --offset '65' \
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
    --region '7uTzHjUi' \
    > test.out 2>&1
eval_tap $? 47 'CountServerDetailed' test.out

#- 48 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'ListLocalServer' test.out

#- 49 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'gBXgzhZI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'DeleteLocalServer' test.out

#- 50 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'YkAmpcOJ' \
    > test.out 2>&1
eval_tap $? 50 'GetServer' test.out

#- 51 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName '0Gr6DfzC' \
    > test.out 2>&1
eval_tap $? 51 'DeleteServer' test.out

#- 52 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'DjO51o22' \
    --withServer 'false' \
    --count '42' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 52 'ListSession' test.out

#- 53 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region '5ED55KDX' \
    > test.out 2>&1
eval_tap $? 53 'CountSession' test.out

#- 54 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'YSHeCE3s' \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "2gnS8iaX", "repository": "qSewzlNp"}' \
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
    --name 'cAsQewSu' \
    --count '34' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 58 'GetAllDeploymentClient' test.out

#- 59 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment 'WPhoBMCN' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 84, "buffer_percent": 3, "configuration": "IVjLy7pi", "enable_region_overrides": true, "extendable_session": true, "game_version": "Xnkr16TI", "max_count": 93, "min_count": 63, "overrides": {"GtH9VSRn": {"buffer_count": 56, "buffer_percent": 93, "configuration": "s9DafCR0", "enable_region_overrides": false, "extendable_session": false, "game_version": "l7qQIGir", "max_count": 10, "min_count": 93, "name": "I5H7VFwC", "region_overrides": {"K0IjjcM5": {"buffer_count": 9, "buffer_percent": 58, "max_count": 20, "min_count": 41, "name": "vcDtLXWf", "unlimited": true, "use_buffer_percent": false}, "gJfGsgQX": {"buffer_count": 70, "buffer_percent": 69, "max_count": 77, "min_count": 95, "name": "HmpKprR2", "unlimited": true, "use_buffer_percent": true}, "3jljpxdW": {"buffer_count": 45, "buffer_percent": 49, "max_count": 14, "min_count": 62, "name": "B7mb4vvy", "unlimited": false, "use_buffer_percent": false}}, "regions": ["86qBaeoz", "bR72sX9S", "ucL7JEpC"], "session_timeout": 18, "unlimited": false, "use_buffer_percent": true}, "xsZIZpva": {"buffer_count": 79, "buffer_percent": 53, "configuration": "X5OYWzMQ", "enable_region_overrides": true, "extendable_session": true, "game_version": "gF3l9xpy", "max_count": 39, "min_count": 33, "name": "4XlTjn5H", "region_overrides": {"yPxCgB31": {"buffer_count": 0, "buffer_percent": 71, "max_count": 25, "min_count": 73, "name": "UGymVIOg", "unlimited": false, "use_buffer_percent": false}, "TrwtblD3": {"buffer_count": 9, "buffer_percent": 89, "max_count": 5, "min_count": 54, "name": "eIi9lvCJ", "unlimited": true, "use_buffer_percent": true}, "oyZwGK70": {"buffer_count": 4, "buffer_percent": 29, "max_count": 30, "min_count": 14, "name": "KHyxv73c", "unlimited": false, "use_buffer_percent": true}}, "regions": ["IkFSdrIt", "TBZC2OPD", "LI2cVtuU"], "session_timeout": 44, "unlimited": true, "use_buffer_percent": false}, "fJOBfndu": {"buffer_count": 35, "buffer_percent": 57, "configuration": "BSJPGKf2", "enable_region_overrides": false, "extendable_session": true, "game_version": "VhfvI0rC", "max_count": 38, "min_count": 54, "name": "oO4cDzrc", "region_overrides": {"YL4OKWt4": {"buffer_count": 72, "buffer_percent": 91, "max_count": 56, "min_count": 63, "name": "A0nMrclN", "unlimited": true, "use_buffer_percent": false}, "mXmtkOsX": {"buffer_count": 7, "buffer_percent": 50, "max_count": 43, "min_count": 3, "name": "aQMOvugh", "unlimited": true, "use_buffer_percent": true}, "aJRxcuxL": {"buffer_count": 23, "buffer_percent": 63, "max_count": 1, "min_count": 82, "name": "Bo0fZp3a", "unlimited": false, "use_buffer_percent": true}}, "regions": ["UG8ixNXe", "1Khqp4Hs", "sYIh9dbN"], "session_timeout": 36, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"7f6w1IuL": {"buffer_count": 95, "buffer_percent": 20, "max_count": 26, "min_count": 66, "name": "IeQ8nhB1", "unlimited": true, "use_buffer_percent": false}, "j6Z4pvAY": {"buffer_count": 0, "buffer_percent": 28, "max_count": 18, "min_count": 13, "name": "sVm0KMID", "unlimited": false, "use_buffer_percent": false}, "5SGdE5O7": {"buffer_count": 57, "buffer_percent": 95, "max_count": 41, "min_count": 26, "name": "kr6OzVka", "unlimited": false, "use_buffer_percent": true}}, "regions": ["hKpFdVqm", "nIgAZVjF", "grWIW8qg"], "session_timeout": 45, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 59 'CreateDeploymentClient' test.out

#- 60 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'pEYDqlO4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteDeploymentClient' test.out

#- 61 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '4' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 61 'GetAllPodConfigClient' test.out

#- 62 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'pUzffhL1' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 25, "mem_limit": 27, "params": "hdn0kSgC"}' \
    > test.out 2>&1
eval_tap $? 62 'CreatePodConfigClient' test.out

#- 63 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'rSnRG3TC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeletePodConfigClient' test.out

#- 64 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '63' \
    --offset '6' \
    --q '6QhaNaof' \
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
    --version '2svNZmQ0' \
    > test.out 2>&1
eval_tap $? 66 'ImageDetailClient' test.out

#- 67 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region '48OTOW6K' \
    --count '11' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 67 'ListServerClient' test.out

#- 68 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "g1zgKTkd"}' \
    > test.out 2>&1
eval_tap $? 68 'ServerHeartbeat' test.out

#- 69 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "TxUFTNHY"}' \
    > test.out 2>&1
eval_tap $? 69 'DeregisterLocalServer' test.out

#- 70 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "BwCSwMJP", "ip": "hi92A1q6", "name": "D0eBMRYU", "port": 67}' \
    > test.out 2>&1
eval_tap $? 70 'RegisterLocalServer' test.out

#- 71 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "bg6HQcKt", "pod_name": "W22Anmhp"}' \
    > test.out 2>&1
eval_tap $? 71 'RegisterServer' test.out

#- 72 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "3c1sZM7t"}' \
    > test.out 2>&1
eval_tap $? 72 'ShutdownServer' test.out

#- 73 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'RxwJsj4m' \
    > test.out 2>&1
eval_tap $? 73 'GetServerSessionTimeout' test.out

#- 74 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName '2c49kz09' \
    > test.out 2>&1
eval_tap $? 74 'GetServerSession' test.out

#- 75 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "Qgja7Xfh", "configuration": "ymlGHn7H", "deployment": "cSrO6pgp", "game_mode": "ufqlDdrk", "matching_allies": [{"matching_parties": [{"party_attributes": {"6tYhyP8r": {}, "3iSHCshc": {}, "SiKY0CCK": {}}, "party_id": "el8MUmzo", "party_members": [{"user_id": "hIk5iOHo"}, {"user_id": "brqQYa4I"}, {"user_id": "IbLlaeRd"}]}, {"party_attributes": {"cCpILOL4": {}, "5aYs0vDF": {}, "r3eYZsys": {}}, "party_id": "GaIe4VmA", "party_members": [{"user_id": "2KuqPmWZ"}, {"user_id": "hTnliJND"}, {"user_id": "zWeadtLI"}]}, {"party_attributes": {"VaiB7esh": {}, "y28sJOXf": {}, "UTIrSj9q": {}}, "party_id": "cpu0T5yJ", "party_members": [{"user_id": "vRHKYnrQ"}, {"user_id": "EBbRinZa"}, {"user_id": "JFF3f4uA"}]}]}, {"matching_parties": [{"party_attributes": {"ltDdK9P7": {}, "uqFTshw8": {}, "UMO5zJ1g": {}}, "party_id": "iqiaMnr1", "party_members": [{"user_id": "qWjgc16L"}, {"user_id": "TeVOXQwc"}, {"user_id": "GJHIgACP"}]}, {"party_attributes": {"6KAWt0u1": {}, "UJaiXVPn": {}, "CVEgfnpd": {}}, "party_id": "wsSfrr1A", "party_members": [{"user_id": "WSwsVzem"}, {"user_id": "hfZDwiyh"}, {"user_id": "TdN2BT1h"}]}, {"party_attributes": {"v38xX9PC": {}, "Um3xUm1q": {}, "3PiWmYkE": {}}, "party_id": "Uq9S2ibE", "party_members": [{"user_id": "FTRCbNOk"}, {"user_id": "bH4x2fug"}, {"user_id": "tp79Nfa7"}]}]}, {"matching_parties": [{"party_attributes": {"JqC6XmKX": {}, "8uhtbaie": {}, "sbUBUU0l": {}}, "party_id": "XTPenAmi", "party_members": [{"user_id": "2L9b4eRa"}, {"user_id": "b4IAd8W7"}, {"user_id": "y0ixDrCc"}]}, {"party_attributes": {"GLbmkCFu": {}, "WZ5Sk1tI": {}, "AmdeQkuT": {}}, "party_id": "QPNh0dqU", "party_members": [{"user_id": "fM9W0plm"}, {"user_id": "s6Gyazed"}, {"user_id": "GZjFEIAZ"}]}, {"party_attributes": {"0e9MLEa6": {}, "rdrRzbTD": {}, "Ca82JS58": {}}, "party_id": "Q6JzPMZu", "party_members": [{"user_id": "TyqhmZf4"}, {"user_id": "AFUNgBWS"}, {"user_id": "pTKBr6PI"}]}]}], "namespace": "zG2Z0CFs", "notification_payload": {}, "pod_name": "5IbzXdVM", "region": "XRZ6qrRM", "session_id": "Q1G3EG37"}' \
    > test.out 2>&1
eval_tap $? 75 'CreateSession' test.out

#- 76 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "faXLmUly"}' \
    > test.out 2>&1
eval_tap $? 76 'ClaimServer' test.out

#- 77 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'b7MiYI3V' \
    > test.out 2>&1
eval_tap $? 77 'GetSession' test.out

#- 78 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'UndpkNcf' \
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
    --region 'mU3OIiHN' \
    > test.out 2>&1
eval_tap $? 81 'ListProvidersByRegion' test.out

#- 82 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 82 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE