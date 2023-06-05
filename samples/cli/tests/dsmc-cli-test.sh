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
    --body '{"artifactPath": "2XNA5Kb4Po6SOdzK", "image": "hpTWsohJJJ7MIW0M", "namespace": "Nx4TzibsbGlSdVCK", "persistent": false, "version": "piWrnojqTZIfCORT"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "gtlMpPb8panl4a5l", "dockerPath": "8lZ6709NzC4czq7A", "image": "djYFFaAyoFjG0o7y", "imageSize": 75, "namespace": "hIi5rPP4tNg0dh1k", "persistent": false, "version": "01IWamg7eSoFxjMd"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "98HUrn7Kcs0OPqPg", "dockerPath": "zpnogTpusjNlbVmM", "image": "AD0WZHvAihLdrYFG", "imageSize": 63, "namespace": "M6Stx3XNNEliA8G4", "patchVersion": "K6WsKDHWXDa2L8y9", "persistent": false, "uploaderFlags": [{"name": "EPZUquhXKx4vmMj3", "shorthand": "Ztjka4CrU0xDgY1h", "value": "SaKJ7vmEzkNel5NU"}, {"name": "syCcpWM6cmFu4aV4", "shorthand": "sFJD1flDKMLFlHDU", "value": "Owt6alW2l492TtEW"}, {"name": "1m11N5oS8JAHnn1Z", "shorthand": "AN1vIBAM6o5uGECX", "value": "DU0fv8PlMvtHG0x6"}], "version": "iEho4LeIAWCkylZB"}' \
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
    --body '{"claim_timeout": 58, "creation_timeout": 91, "default_version": "vCMpr8heROeDRCOB", "port": 74, "ports": {"m3N1eovnqNHqRf6C": 34, "Hvfu0e55Tt7ElpTo": 91, "1fyMU0m8vaoCuJNC": 53}, "protocol": "Eea3I3lxAHRVU4v1", "providers": ["fPP2hvdtwrHgDp8B", "atCauGkSLNHL85WT", "1S7mMLrHdjOt0Csc"], "session_timeout": 40, "unreachable_timeout": 41}' \
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
    --body '{"claim_timeout": 79, "creation_timeout": 32, "default_version": "nXugnUSubqUr7irP", "port": 99, "protocol": "Hve0P3s8PHqJVsCA", "providers": ["KVu90NShAo9y8Nkv", "GpV9YMFZfqpLrj72", "D0aFjxHEsfIPmSGF"], "session_timeout": 73, "unreachable_timeout": 98}' \
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
    --name 'ozAgrGRK1xKGMI5a' \
    --count '2' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'uhXKatXvXt9C0TIq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'VghbiHL9FW3DquhB' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 37, "buffer_percent": 78, "configuration": "SnIysxK6fQs3REkb", "enable_region_overrides": false, "extendable_session": false, "game_version": "5GRHznHvkQjq1YHV", "max_count": 21, "min_count": 9, "overrides": {"WL43IEZEwZZz8EPd": {"buffer_count": 95, "buffer_percent": 94, "configuration": "gHzEn7ug5vxspMTV", "enable_region_overrides": false, "extendable_session": true, "game_version": "S6mgsM4MvCKhA2gX", "max_count": 74, "min_count": 96, "name": "fi3qTuUczwZOtLMv", "region_overrides": {"JbkRoT4At0QyRCyT": {"buffer_count": 98, "buffer_percent": 49, "max_count": 68, "min_count": 13, "name": "Kgyk5YeZZQ1cuTQj", "unlimited": true, "use_buffer_percent": false}, "wPeDZPV42pUhL6j9": {"buffer_count": 42, "buffer_percent": 15, "max_count": 20, "min_count": 3, "name": "V5bdqojndIqMi41s", "unlimited": true, "use_buffer_percent": false}, "sFenTTszLf9beZfe": {"buffer_count": 75, "buffer_percent": 85, "max_count": 79, "min_count": 84, "name": "17VTEivnddmyp694", "unlimited": false, "use_buffer_percent": false}}, "regions": ["q2xrjaWcdhoNSYYr", "jxCiWHsLtpzCtohr", "AzY3yk0F133Rdb0O"], "session_timeout": 27, "unlimited": true, "use_buffer_percent": true}, "h3mPiQmmuuv1WRRO": {"buffer_count": 82, "buffer_percent": 51, "configuration": "uNx2hZta6rxqNyGN", "enable_region_overrides": false, "extendable_session": false, "game_version": "413BZDqC1XBcC3d2", "max_count": 80, "min_count": 8, "name": "On3FqEfh9pZDul4l", "region_overrides": {"Y5EntChCW3WcZA8d": {"buffer_count": 33, "buffer_percent": 15, "max_count": 4, "min_count": 53, "name": "7XZNqFIfE0qWXwa3", "unlimited": true, "use_buffer_percent": true}, "OiOrAbRtsA97j7gK": {"buffer_count": 61, "buffer_percent": 70, "max_count": 91, "min_count": 85, "name": "xKL5jmNqwcwxSBCb", "unlimited": false, "use_buffer_percent": false}, "5VLWq1XjqE5LM8FD": {"buffer_count": 20, "buffer_percent": 99, "max_count": 65, "min_count": 14, "name": "LGaBwwqfmqMNITGt", "unlimited": true, "use_buffer_percent": true}}, "regions": ["Grr0TyKOfpxBwGFH", "t1BubJwAHDZ0vaCp", "907EV3CiipfP6V9t"], "session_timeout": 62, "unlimited": true, "use_buffer_percent": false}, "opsDqAYtArCs8TFq": {"buffer_count": 65, "buffer_percent": 84, "configuration": "9lwu12xhlyGs04dF", "enable_region_overrides": false, "extendable_session": true, "game_version": "2aLUYuq8QDgQT1yQ", "max_count": 90, "min_count": 56, "name": "NyYvF67Zy0Ieweqn", "region_overrides": {"40OOJ65s6dfmyW8e": {"buffer_count": 96, "buffer_percent": 84, "max_count": 38, "min_count": 33, "name": "ykivfngrwoHlem2y", "unlimited": true, "use_buffer_percent": false}, "TNjzMeUowUbrcxgr": {"buffer_count": 5, "buffer_percent": 65, "max_count": 13, "min_count": 70, "name": "eftjIOdgLCLbLqWi", "unlimited": false, "use_buffer_percent": true}, "AlpvauNbaMsKAZ9g": {"buffer_count": 81, "buffer_percent": 48, "max_count": 55, "min_count": 48, "name": "gQEVGrEQQ2sYwnXk", "unlimited": true, "use_buffer_percent": true}}, "regions": ["jwzheq0C7YEMGhT2", "JB0XWNgOipGAnphW", "SrBtDeLZLk5PIKBP"], "session_timeout": 40, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"JgXVKR1uRPv8AJNv": {"buffer_count": 89, "buffer_percent": 65, "max_count": 39, "min_count": 83, "name": "9F3KhwxHcgVkctnE", "unlimited": false, "use_buffer_percent": false}, "RBGSWDkfUb2wldGs": {"buffer_count": 39, "buffer_percent": 97, "max_count": 41, "min_count": 14, "name": "jNuauSe4wXzP3xzM", "unlimited": false, "use_buffer_percent": true}, "awxms1f0Wh0etWCt": {"buffer_count": 90, "buffer_percent": 70, "max_count": 81, "min_count": 86, "name": "USdm1vhaSIdb9nu3", "unlimited": false, "use_buffer_percent": false}}, "regions": ["2lwYINwMpTG2aYKe", "QzsGhmfC141XAgjr", "dizTMmvTIgXWiAM1"], "session_timeout": 40, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'V32Ae752mpFxgc3d' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'qtB177rQQPty89lG' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 27, "buffer_percent": 12, "configuration": "JPhbSjrvAHAS9l9l", "enable_region_overrides": true, "extendable_session": false, "game_version": "bZ6TryBHe0pLciiU", "max_count": 48, "min_count": 25, "regions": ["cFa37Rwl7EisFdBH", "x4wFTeop9Ze391Ol", "kuUe3YkubgOx6hw1"], "session_timeout": 74, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment '9iqePlC6GHPOaxPr' \
    --namespace $AB_NAMESPACE \
    --region 'gyini3kn7xFBCPih' \
    --body '{"buffer_count": 85, "buffer_percent": 79, "max_count": 52, "min_count": 17, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'ld1ZV2OGJgTODU6s' \
    --namespace $AB_NAMESPACE \
    --region 'pYfhn5eotjiw29qa' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'JlZXtS8jexF470xH' \
    --namespace $AB_NAMESPACE \
    --region 'B9rZkVYNlO5uH27R' \
    --body '{"buffer_count": 4, "buffer_percent": 18, "max_count": 15, "min_count": 39, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'EfLb1FqZSrYNXSEf' \
    --namespace $AB_NAMESPACE \
    --version 'vz6YlGCAiS6Vz6rw' \
    --body '{"buffer_count": 33, "buffer_percent": 86, "configuration": "JJSbiP5zAmZhZJV1", "enable_region_overrides": false, "extendable_session": true, "game_version": "PdhRhQIgVk7Oq8PE", "max_count": 96, "min_count": 40, "region_overrides": {"kQGtcTdbzISkqj2J": {"buffer_count": 76, "buffer_percent": 86, "max_count": 18, "min_count": 25, "name": "sN9cKZn2sg9j5uwN", "unlimited": false, "use_buffer_percent": true}, "osnOZfv3REFPyCXr": {"buffer_count": 33, "buffer_percent": 79, "max_count": 36, "min_count": 10, "name": "fkbHf3enaYXVCuTr", "unlimited": false, "use_buffer_percent": true}, "AJhuOvmwyYeXQQIU": {"buffer_count": 20, "buffer_percent": 9, "max_count": 73, "min_count": 25, "name": "Cp9yhMlmnTa3YlwU", "unlimited": true, "use_buffer_percent": true}}, "regions": ["3C6BvGwyGStUcmTQ", "BXAPD13hzU3c1HOq", "4oKTB2mEGVtiBahY"], "session_timeout": 61, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'hl1yqtxk4L7CED1U' \
    --namespace $AB_NAMESPACE \
    --version 'aDS0P5eCvzTWNi39' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment '8QoSmZQXYACeMtHx' \
    --namespace $AB_NAMESPACE \
    --version 'K7rcbXFz5mB2gkpE' \
    --body '{"buffer_count": 75, "buffer_percent": 38, "configuration": "v8TXusmJKYUjigWp", "enable_region_overrides": false, "game_version": "JbMwIusrxO9zP8d2", "max_count": 34, "min_count": 60, "regions": ["RU1OTYQw1xWRp3Zv", "t9kUOgxSgT2VlYMi", "kZWxwgkCJj52VEx5"], "session_timeout": 17, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment '2PPKeWvIxe3f9Uh1' \
    --namespace $AB_NAMESPACE \
    --region 'JqEKpmXeJRTrOxhE' \
    --version 'AcgaKLM2GNtR0l3r' \
    --body '{"buffer_count": 11, "buffer_percent": 68, "max_count": 9, "min_count": 49, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'YFBScJRh0BYf5Flu' \
    --namespace $AB_NAMESPACE \
    --region 'hN0KJB4bGzigYCEb' \
    --version 'MNH820TiC2AhjOih' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'sXP9ik84wPPmH5t7' \
    --namespace $AB_NAMESPACE \
    --region 'LVbNlx0vcOAifQCB' \
    --version '5o1p2fbsEAyCxLBs' \
    --body '{"buffer_count": 52, "buffer_percent": 33, "max_count": 10, "min_count": 87, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '6' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'jYujwGF0BPMq4QnJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name '6JP689sH4lcvDal6' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 93, "mem_limit": 71, "params": "Af0r6mAmDjsuNgj2"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'plu0DM560A6FdPpD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name '5S3XgOVnGX5cOya9' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 60, "mem_limit": 10, "name": "1VYC6wetL2JqlxtZ", "params": "kytSQEeyRsUPBQTa"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name '6J9VZMy2mn9QarZm' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 50}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name '795KiqfB25fBhiMp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'Cq8wDWM0Kq5r2KeS' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "BQuCMYuYOuNtUBa4", "port": 27}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q '3voRh6Qy7txOQcvB' \
    --sortBy 'updatedAt' \
    --sortDirection 'asc' \
    --count '100' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'cM4uh5XOJzVtmwaT' \
    --version 'y3Aucr52sK0AavXb' \
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
    --imageURI 'k6vMzw8J4DZP6dql' \
    --version 'vkXMuyeX3PzWbbGd' \
    --versionPatch 'Pk4RdQoLu85N8ECw' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'Kpdkz5ACqDXIteZT' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'y2WlEHSzGxfjeNNK' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'QHjoBiN70hymWUB6' \
    --versionPatch 'HajaAcgR3ZlUW8nN' \
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
    --region '2eUdCky6Cu4HWSIX' \
    --count '17' \
    --offset '55' \
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
    --region 'kvPqii01XnKmN4Ev' \
    > test.out 2>&1
eval_tap $? 47 'CountServerDetailed' test.out

#- 48 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'ListLocalServer' test.out

#- 49 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'qXdjdTQii6tQpWUo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'DeleteLocalServer' test.out

#- 50 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'AQeAj68cikp67ffy' \
    > test.out 2>&1
eval_tap $? 50 'GetServer' test.out

#- 51 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'HfyINalvC9qubK0F' \
    > test.out 2>&1
eval_tap $? 51 'DeleteServer' test.out

#- 52 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'lKTJMx0GGKJjEoVB' \
    --withServer 'true' \
    --count '41' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 52 'ListSession' test.out

#- 53 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'iB3YxGfztZ9huaig' \
    > test.out 2>&1
eval_tap $? 53 'CountSession' test.out

#- 54 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'mt85zEaL8MwoC4VE' \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "a3vID6vBSZaxSe2s", "repository": "9x304fYzeM6w5uPI"}' \
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
    --name 'PR68JoqGMDeV38PX' \
    --count '2' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 58 'GetAllDeploymentClient' test.out

#- 59 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment 'vOM7pgl4g0OnoLEr' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 82, "buffer_percent": 51, "configuration": "vjXNosB3wIVuCfpj", "enable_region_overrides": false, "extendable_session": true, "game_version": "sgDoPejwDhltfvBR", "max_count": 99, "min_count": 49, "overrides": {"KbErekZWFpHjVehE": {"buffer_count": 53, "buffer_percent": 43, "configuration": "4NRhFowJOp94vwz1", "enable_region_overrides": true, "extendable_session": true, "game_version": "R2WlwwuL0PB9AXRF", "max_count": 60, "min_count": 22, "name": "gARWqBeFrTqg4dcB", "region_overrides": {"gQjuffmPXi8CflXk": {"buffer_count": 50, "buffer_percent": 63, "max_count": 3, "min_count": 9, "name": "OjDDLqQuxFbsAqu3", "unlimited": true, "use_buffer_percent": false}, "AmGjKrmy91LGBPVQ": {"buffer_count": 42, "buffer_percent": 86, "max_count": 73, "min_count": 70, "name": "5jLbW8p07bjo6wdj", "unlimited": false, "use_buffer_percent": false}, "LF9oo1t7QlJT3JXh": {"buffer_count": 53, "buffer_percent": 0, "max_count": 76, "min_count": 38, "name": "Gj2oCAKVPmyIjqjn", "unlimited": false, "use_buffer_percent": true}}, "regions": ["VaIlNaTAguodNKVY", "VfEVeDzQTDVmayvt", "lrIEHv4dOantCH0R"], "session_timeout": 18, "unlimited": false, "use_buffer_percent": false}, "oJeNY5yUIDb7xkJP": {"buffer_count": 58, "buffer_percent": 25, "configuration": "4K7VAqqAZBvKjaNG", "enable_region_overrides": true, "extendable_session": true, "game_version": "dcyewwi5vec9vqFT", "max_count": 88, "min_count": 51, "name": "NxDVg128Uu9UdANB", "region_overrides": {"i29DNmatpFDfRA3l": {"buffer_count": 87, "buffer_percent": 99, "max_count": 86, "min_count": 16, "name": "ezuoejXVLiwOCssz", "unlimited": true, "use_buffer_percent": true}, "mbbUOGqCKuSXN3Ep": {"buffer_count": 67, "buffer_percent": 38, "max_count": 14, "min_count": 67, "name": "vT4z6phXxBxRil9D", "unlimited": false, "use_buffer_percent": true}, "IqgQRDcyinsMYjGZ": {"buffer_count": 0, "buffer_percent": 65, "max_count": 65, "min_count": 87, "name": "xC8A5gZKfXTkofop", "unlimited": true, "use_buffer_percent": true}}, "regions": ["uD19GFVWYzbWSkDu", "lvWBP9Gv2zOF6hGn", "ATYywfESkhlYzgHs"], "session_timeout": 62, "unlimited": true, "use_buffer_percent": true}, "drOFf4xEL0L7QnFv": {"buffer_count": 6, "buffer_percent": 72, "configuration": "pebB3xx8y6sbwTKx", "enable_region_overrides": false, "extendable_session": true, "game_version": "eeCqCXt1iiZ5UG4Z", "max_count": 18, "min_count": 61, "name": "zD81Y8Ktjce4Zj1H", "region_overrides": {"ftyLvD2nLshe4ATO": {"buffer_count": 66, "buffer_percent": 48, "max_count": 86, "min_count": 48, "name": "nHI8D3Bpmn3DY9jr", "unlimited": true, "use_buffer_percent": false}, "DYfVF43vSimf15lL": {"buffer_count": 96, "buffer_percent": 74, "max_count": 3, "min_count": 4, "name": "JAez5KJ28OKSwQYu", "unlimited": false, "use_buffer_percent": true}, "tsXCPj7mHfixa7Y1": {"buffer_count": 47, "buffer_percent": 13, "max_count": 72, "min_count": 49, "name": "3y0MjF92SPKMBGTj", "unlimited": false, "use_buffer_percent": false}}, "regions": ["GrI7R2HX9vZLOXQv", "DyLcjdRt25iWgZ76", "xSrvmVhpRjy7YnlH"], "session_timeout": 96, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"GGYDzjGu0Gn7smLz": {"buffer_count": 57, "buffer_percent": 42, "max_count": 65, "min_count": 10, "name": "9PoigrfKLqd4wP1m", "unlimited": true, "use_buffer_percent": false}, "Ub7Lg5zX9AcR9pEW": {"buffer_count": 82, "buffer_percent": 21, "max_count": 99, "min_count": 18, "name": "fri8qtkxomiJBZ5U", "unlimited": false, "use_buffer_percent": false}, "ZyLgyyeHV2Wi4z9x": {"buffer_count": 88, "buffer_percent": 1, "max_count": 7, "min_count": 73, "name": "gt89sMsIGdxx0NXG", "unlimited": true, "use_buffer_percent": true}}, "regions": ["8a7PCLTFG8rmyBo4", "FAgIZIkOXYfWCVZy", "nYWf8P08Cl6OeTTo"], "session_timeout": 76, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 59 'CreateDeploymentClient' test.out

#- 60 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'lYfFKYl4VcicUdo0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteDeploymentClient' test.out

#- 61 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '26' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 61 'GetAllPodConfigClient' test.out

#- 62 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name '6OOHerQi2Ay0x3Dg' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 86, "mem_limit": 78, "params": "qw1FKmDQlW2POL8i"}' \
    > test.out 2>&1
eval_tap $? 62 'CreatePodConfigClient' test.out

#- 63 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'KT2TfVFWakl5LVFA' \
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
    --version 'chPx5KWczsA4JLXA' \
    > test.out 2>&1
eval_tap $? 65 'ImageDetailClient' test.out

#- 66 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'V4k9eg8Ares2GSMM' \
    --count '49' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 66 'ListServerClient' test.out

#- 67 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "SwoYrh8s0TJCVXe5"}' \
    > test.out 2>&1
eval_tap $? 67 'ServerHeartbeat' test.out

#- 68 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "xAFNeZK5jwxzUZBI"}' \
    > test.out 2>&1
eval_tap $? 68 'DeregisterLocalServer' test.out

#- 69 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "49JweyhNV2KyEtfB", "ip": "xbU5jfJlXRGmkGOe", "name": "XvE4snuFGQGtFryL", "port": 25}' \
    > test.out 2>&1
eval_tap $? 69 'RegisterLocalServer' test.out

#- 70 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "fzKnUvsRfE1ohh7N", "pod_name": "rL27A8wrJcPaCWQI"}' \
    > test.out 2>&1
eval_tap $? 70 'RegisterServer' test.out

#- 71 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "PkoZgTxMmOCQdC2w"}' \
    > test.out 2>&1
eval_tap $? 71 'ShutdownServer' test.out

#- 72 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName '7HDjxBH25tIp4xgc' \
    > test.out 2>&1
eval_tap $? 72 'GetServerSessionTimeout' test.out

#- 73 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'txVqx5gYhL8vl0BH' \
    > test.out 2>&1
eval_tap $? 73 'GetServerSession' test.out

#- 74 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "lSnDx344jqPZLJjY", "configuration": "8QtXIjrgd8LT3lKn", "deployment": "pVuZyduG1ap8tMy5", "game_mode": "jtUGaqjYRZB3oarh", "matching_allies": [{"matching_parties": [{"party_attributes": {"NYg8OyvqwTwxd3iD": {}, "V8X5mFmNM2r9JXjk": {}, "AtoxpJhsXsLUMimX": {}}, "party_id": "el7taFPQoVSCwsMH", "party_members": [{"user_id": "aycsRhfpj6Ozayeg"}, {"user_id": "VggFZU0p0JrxGVY7"}, {"user_id": "3XttJuNt8KbDzD9L"}]}, {"party_attributes": {"U8mXaUibcj6X79Rm": {}, "waixeoSEO9Rvu4Gl": {}, "9SiosmHUtVf2il7j": {}}, "party_id": "EclJcEPylluyxUge", "party_members": [{"user_id": "fMVtWiMZJSOdSjPi"}, {"user_id": "073bMCq257G7I2HY"}, {"user_id": "qigd4WeBvxnMpOxn"}]}, {"party_attributes": {"JE7smy0sOqXB1CFa": {}, "3g7JtdFsLbvswo0b": {}, "7htpbEUoKsqAy0bP": {}}, "party_id": "FcUKgUv2acqIXZlN", "party_members": [{"user_id": "0jDqrRfM7VuL6N7J"}, {"user_id": "bYarCZLHiQfPvAWd"}, {"user_id": "Zup2qBjunGWAEa9n"}]}]}, {"matching_parties": [{"party_attributes": {"MOjL7JMfyVQXSd3t": {}, "EMOnbVTs3CVOQp6v": {}, "rnnJFRkbjcKWRRrN": {}}, "party_id": "dEUDDWcKOa9psmDx", "party_members": [{"user_id": "NOSF2Fa6jLm3I5S7"}, {"user_id": "gkTkXJgGjSe3SIFv"}, {"user_id": "iS1kg84KbnPkpIAy"}]}, {"party_attributes": {"bc7lbgycUDcmcX1h": {}, "wrWif4frSuq8FB35": {}, "KS51yNPLiqHcyeIr": {}}, "party_id": "IiogtZQTnrkA3t6l", "party_members": [{"user_id": "2cBdvu8nR6wNATA6"}, {"user_id": "3kijvzqRQl4sZji1"}, {"user_id": "qwcSRkptlNPtF8t3"}]}, {"party_attributes": {"s7HnAQiPg0ujLgkB": {}, "IQa4rGMDZgwWn7lC": {}, "OQso9SAra365nMFt": {}}, "party_id": "VNlTXdiIlFywucim", "party_members": [{"user_id": "LFamXkjYSHqOCsZl"}, {"user_id": "gYPd9YlFzJnJx1DM"}, {"user_id": "8PU6KLSfXC5RA8y7"}]}]}, {"matching_parties": [{"party_attributes": {"Ty5mvjpCzGpNguhD": {}, "mPB4Cm6uEwpGl1sA": {}, "73Dup7k5ublvJ1po": {}}, "party_id": "4UE62ZS0smemMRgc", "party_members": [{"user_id": "YVbajvwLNRkQ3JPb"}, {"user_id": "X3G7O6p3FY8BJ52n"}, {"user_id": "L2lKQygeanyucMja"}]}, {"party_attributes": {"wLVrDsVm2jLePPtB": {}, "VDAKDw3gXFkWJxvw": {}, "26BPtDlHUzVzbyBG": {}}, "party_id": "4M5S8UEpRZmaHPgf", "party_members": [{"user_id": "844mmcp5QFUS3rhM"}, {"user_id": "7nmljVWVEXwHe2lP"}, {"user_id": "uKK0tyoxdTShtqo2"}]}, {"party_attributes": {"9Ybd1idQVpU1znaP": {}, "8h45Ya2RZa3GA1ok": {}, "T61DsynZS8UTxrjI": {}}, "party_id": "M8xiKONdUg22CdGm", "party_members": [{"user_id": "7i29VEhDxRfQKqdM"}, {"user_id": "srkJ6bGcFav9NWrE"}, {"user_id": "1Z9WSRl9dsCbJvL3"}]}]}], "namespace": "V3tFMEwIY3qSMm9r", "notification_payload": {}, "pod_name": "QY1xbopJEuiYJ7ER", "region": "j9diF02LZpgzSYXX", "session_id": "8N2Y2hGHoiOopp62"}' \
    > test.out 2>&1
eval_tap $? 74 'CreateSession' test.out

#- 75 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "IROeAoTQ3mdZVZ1f"}' \
    > test.out 2>&1
eval_tap $? 75 'ClaimServer' test.out

#- 76 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'tUJFcMhcXccT5DBh' \
    > test.out 2>&1
eval_tap $? 76 'GetSession' test.out

#- 77 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'NutMDWiI97Xjv2zI' \
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
    --region 'JEPBILOjdD6b1dE8' \
    > test.out 2>&1
eval_tap $? 80 'ListProvidersByRegion' test.out

#- 81 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 81 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE