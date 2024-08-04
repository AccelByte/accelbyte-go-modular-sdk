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
echo "1..89"

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
    --body '{"artifactPath": "uUkE1rZO", "coreDumpEnabled": false, "image": "mydwcTBS", "imageReplicationsMap": {"pJSnUJpG": {"failure_code": "P5Js7VU4", "region": "a5joHlqw", "status": "9wVjEf0J", "uri": "yoR7iTBf"}, "CR7WPzME": {"failure_code": "YUSsbtqn", "region": "hUXhmBTI", "status": "Q8wqAhr6", "uri": "9RShK7xi"}, "NpVFIrPr": {"failure_code": "1zF7rIZW", "region": "LhbC4RpU", "status": "0kgyFvkx", "uri": "WYwL3mC7"}}, "namespace": "gnNwIeEU", "patchVersion": "eBXFgstY", "persistent": true, "ulimitFileSize": 78, "version": "f0qTs9Kv"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "5nl99HZd", "coreDumpEnabled": true, "dockerPath": "5MSQPd0L", "image": "T57h00hs", "imageSize": 53, "namespace": "w5xOAkoW", "persistent": false, "ulimitFileSize": 18, "version": "EQMFtshA"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "ZHkws9uh", "coreDumpEnabled": true, "dockerPath": "M4hVBrD6", "image": "c4FW23CG", "imageSize": 66, "namespace": "w49impkS", "patchVersion": "gKPk3O9v", "persistent": true, "ulimitFileSize": 87, "uploaderFlag": "xh4Sg6xj", "version": "QVVOa1uN"}' \
    > test.out 2>&1
eval_tap $? 6 'CreateImagePatch' test.out

#- 7 GetLowestInstanceSpec
samples/cli/sample-apps Dsmc getLowestInstanceSpec \
    > test.out 2>&1
eval_tap $? 7 'GetLowestInstanceSpec' test.out

#- 8 GetWorkerConfig
samples/cli/sample-apps Dsmc getWorkerConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'GetWorkerConfig' test.out

#- 9 UpdateWorkerConfig
samples/cli/sample-apps Dsmc updateWorkerConfig \
    --namespace $AB_NAMESPACE \
    --body '{"auto_deletion": true, "ghost_worker": false, "manual_buffer_override": true, "zombie_worker": true}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateWorkerConfig' test.out

#- 10 CreateWorkerConfig
samples/cli/sample-apps Dsmc createWorkerConfig \
    --namespace $AB_NAMESPACE \
    --body '{"auto_deletion": false, "ghost_worker": false, "manual_buffer_override": false, "zombie_worker": false}' \
    > test.out 2>&1
eval_tap $? 10 'CreateWorkerConfig' test.out

#- 11 GetConfig
samples/cli/sample-apps Dsmc getConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'GetConfig' test.out

#- 12 CreateConfig
samples/cli/sample-apps Dsmc createConfig \
    --namespace $AB_NAMESPACE \
    --body '{"claim_timeout": 100, "creation_timeout": 24, "default_version": "2n3JkYAt", "port": 35, "ports": {"pbfSfnMG": 36, "AKiQrFzx": 6, "fBScsSk9": 76}, "protocol": "OVEdi0ac", "providers": ["W4n50JUw", "TovWTuiO", "cZ1iYiIu"], "session_timeout": 31, "unreachable_timeout": 70}' \
    > test.out 2>&1
eval_tap $? 12 'CreateConfig' test.out

#- 13 DeleteConfig
samples/cli/sample-apps Dsmc deleteConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'DeleteConfig' test.out

#- 14 UpdateConfig
samples/cli/sample-apps Dsmc updateConfig \
    --namespace $AB_NAMESPACE \
    --body '{"claim_timeout": 70, "creation_timeout": 66, "default_version": "9QjeC4ho", "port": 46, "protocol": "SSITpgeY", "providers": ["4yLhPcS2", "sDTCiSX0", "OJsBhEg6"], "session_timeout": 99, "unreachable_timeout": 68}' \
    > test.out 2>&1
eval_tap $? 14 'UpdateConfig' test.out

#- 15 ClearCache
samples/cli/sample-apps Dsmc clearCache \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'ClearCache' test.out

#- 16 GetAllDeployment
samples/cli/sample-apps Dsmc getAllDeployment \
    --namespace $AB_NAMESPACE \
    --name 'DZq81KmA' \
    --count '43' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 16 'GetAllDeployment' test.out

#- 17 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'GgeLqz2u' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetDeployment' test.out

#- 18 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment '8y841kZN' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 57, "buffer_percent": 31, "configuration": "BXzE3HEO", "enable_region_overrides": false, "extendable_session": false, "game_version": "aOAnJRnP", "max_count": 83, "min_count": 64, "overrides": {"GREbjcRu": {"buffer_count": 51, "buffer_percent": 3, "configuration": "25zGD9fv", "enable_region_overrides": true, "extendable_session": false, "game_version": "pjZoSMDs", "max_count": 14, "min_count": 25, "name": "cumhX05J", "region_overrides": {"AE0r4rnH": {"buffer_count": 40, "buffer_percent": 90, "max_count": 54, "min_count": 84, "name": "AXMgVpMe", "unlimited": true, "use_buffer_percent": true}, "fbUpbBuY": {"buffer_count": 28, "buffer_percent": 2, "max_count": 51, "min_count": 14, "name": "1c9qCI5i", "unlimited": false, "use_buffer_percent": false}, "4oNdoz26": {"buffer_count": 22, "buffer_percent": 56, "max_count": 20, "min_count": 11, "name": "pfBrcGK9", "unlimited": true, "use_buffer_percent": false}}, "regions": ["yS5sjzIL", "CDP19Bgt", "UxeMcZdF"], "session_timeout": 21, "unlimited": true, "use_buffer_percent": false}, "rZvKNNja": {"buffer_count": 86, "buffer_percent": 94, "configuration": "yRye9qhd", "enable_region_overrides": true, "extendable_session": false, "game_version": "UanDIgoW", "max_count": 28, "min_count": 11, "name": "BIS7qxdb", "region_overrides": {"xzsc21FT": {"buffer_count": 47, "buffer_percent": 21, "max_count": 41, "min_count": 15, "name": "R7qx6e22", "unlimited": false, "use_buffer_percent": false}, "mF3PlJcG": {"buffer_count": 39, "buffer_percent": 96, "max_count": 74, "min_count": 40, "name": "siyS7NnQ", "unlimited": false, "use_buffer_percent": false}, "YSRUoScN": {"buffer_count": 54, "buffer_percent": 58, "max_count": 78, "min_count": 51, "name": "hCOo1hyf", "unlimited": false, "use_buffer_percent": false}}, "regions": ["CUym3kiy", "IVlYAHCd", "8hdGdkBc"], "session_timeout": 78, "unlimited": false, "use_buffer_percent": false}, "G2wU8vmb": {"buffer_count": 12, "buffer_percent": 50, "configuration": "JX30UKyD", "enable_region_overrides": true, "extendable_session": false, "game_version": "boAmnXFy", "max_count": 40, "min_count": 29, "name": "QdavLpxH", "region_overrides": {"vIjzj9qa": {"buffer_count": 44, "buffer_percent": 93, "max_count": 22, "min_count": 73, "name": "UCSvkO0j", "unlimited": true, "use_buffer_percent": false}, "3tDqZOl0": {"buffer_count": 97, "buffer_percent": 79, "max_count": 81, "min_count": 54, "name": "wepNUSZl", "unlimited": false, "use_buffer_percent": false}, "LWpZCETI": {"buffer_count": 66, "buffer_percent": 73, "max_count": 96, "min_count": 92, "name": "S3XoOrO8", "unlimited": true, "use_buffer_percent": true}}, "regions": ["G2vXN4iZ", "JZi5Fjrz", "52U4n13n"], "session_timeout": 33, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"1INRA2Iz": {"buffer_count": 2, "buffer_percent": 0, "max_count": 3, "min_count": 35, "name": "LBUoGDu5", "unlimited": false, "use_buffer_percent": true}, "JxZaQg0p": {"buffer_count": 1, "buffer_percent": 78, "max_count": 69, "min_count": 33, "name": "InNFxBJo", "unlimited": false, "use_buffer_percent": true}, "ndfvcNKl": {"buffer_count": 60, "buffer_percent": 5, "max_count": 86, "min_count": 90, "name": "psBi4EzX", "unlimited": true, "use_buffer_percent": false}}, "regions": ["D0R03HXG", "kWvLc54M", "tkJJakrC"], "session_timeout": 54, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 18 'CreateDeployment' test.out

#- 19 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'Iq5zVYJZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'DeleteDeployment' test.out

#- 20 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment '45M1fe0k' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 52, "buffer_percent": 78, "configuration": "cdMvNozs", "enable_region_overrides": false, "extendable_session": false, "game_version": "MWy2wQlJ", "max_count": 83, "min_count": 42, "regions": ["4yfWF0yN", "n6yqPEG3", "UIBLTv1z"], "session_timeout": 30, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateDeployment' test.out

#- 21 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'IQG1rFhO' \
    --namespace $AB_NAMESPACE \
    --region 'anZKiS0o' \
    --body '{"buffer_count": 51, "buffer_percent": 29, "max_count": 3, "min_count": 95, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 21 'CreateRootRegionOverride' test.out

#- 22 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'Gn8Wa5h1' \
    --namespace $AB_NAMESPACE \
    --region 'PAUCkpqO' \
    > test.out 2>&1
eval_tap $? 22 'DeleteRootRegionOverride' test.out

#- 23 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'm153ouOQ' \
    --namespace $AB_NAMESPACE \
    --region 'nr0i5xq5' \
    --body '{"buffer_count": 17, "buffer_percent": 38, "max_count": 37, "min_count": 38, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateRootRegionOverride' test.out

#- 24 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'zeA5rxiQ' \
    --namespace $AB_NAMESPACE \
    --version 'KEEeWuU4' \
    --body '{"buffer_count": 95, "buffer_percent": 9, "configuration": "5htmvOIH", "enable_region_overrides": true, "extendable_session": true, "game_version": "gHq5Fhur", "max_count": 44, "min_count": 99, "region_overrides": {"e6iWUhdf": {"buffer_count": 7, "buffer_percent": 2, "max_count": 98, "min_count": 19, "name": "nlj7JXpy", "unlimited": false, "use_buffer_percent": false}, "BC1Tc4wz": {"buffer_count": 29, "buffer_percent": 49, "max_count": 75, "min_count": 91, "name": "6RxrZZxa", "unlimited": false, "use_buffer_percent": false}, "tZ8cUyw9": {"buffer_count": 46, "buffer_percent": 25, "max_count": 66, "min_count": 45, "name": "lD3RXnEU", "unlimited": false, "use_buffer_percent": false}}, "regions": ["hI5jyzvB", "9bVpyAyJ", "fHmxKGFD"], "session_timeout": 7, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 24 'CreateDeploymentOverride' test.out

#- 25 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'TBwFOY7c' \
    --namespace $AB_NAMESPACE \
    --version '6nHivSev' \
    > test.out 2>&1
eval_tap $? 25 'DeleteDeploymentOverride' test.out

#- 26 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'NUgXdgq3' \
    --namespace $AB_NAMESPACE \
    --version '6hKm6nST' \
    --body '{"buffer_count": 95, "buffer_percent": 29, "configuration": "xVQBO5CE", "enable_region_overrides": true, "game_version": "BJhhkacS", "max_count": 98, "min_count": 9, "regions": ["sZDZ13xC", "gVUahjeu", "yk5Gdpd7"], "session_timeout": 96, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateDeploymentOverride' test.out

#- 27 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'zb5bcZfo' \
    --namespace $AB_NAMESPACE \
    --region 'SeVZe1BX' \
    --version 'hnr8PMj5' \
    --body '{"buffer_count": 10, "buffer_percent": 74, "max_count": 39, "min_count": 20, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 27 'CreateOverrideRegionOverride' test.out

#- 28 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'uTZK4kBx' \
    --namespace $AB_NAMESPACE \
    --region 'ZxpCw0YM' \
    --version 'bskMftAa' \
    > test.out 2>&1
eval_tap $? 28 'DeleteOverrideRegionOverride' test.out

#- 29 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'VGNC9fRm' \
    --namespace $AB_NAMESPACE \
    --region 'zDvo8OaU' \
    --version 'XmgdsirW' \
    --body '{"buffer_count": 24, "buffer_percent": 44, "max_count": 81, "min_count": 54, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateOverrideRegionOverride' test.out

#- 30 DeleteCreatingServerCountQueue
samples/cli/sample-apps Dsmc deleteCreatingServerCountQueue \
    --deployment 'zwIYt3bW' \
    --namespace $AB_NAMESPACE \
    --version 'HSIZW84J' \
    > test.out 2>&1
eval_tap $? 30 'DeleteCreatingServerCountQueue' test.out

#- 31 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '11' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 31 'GetAllPodConfig' test.out

#- 32 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'SBZut0Ky' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'GetPodConfig' test.out

#- 33 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name '8V6FkX1O' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 85, "mem_limit": 89, "params": "nzo91dwE"}' \
    > test.out 2>&1
eval_tap $? 33 'CreatePodConfig' test.out

#- 34 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name '1jwyo2P1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePodConfig' test.out

#- 35 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'XsBb7vFc' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 23, "mem_limit": 37, "name": "q6jiEYwZ", "params": "64laNMhl"}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePodConfig' test.out

#- 36 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'U3k1h0XN' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 74}' \
    > test.out 2>&1
eval_tap $? 36 'AddPort' test.out

#- 37 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name '08YZDJ1Y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'DeletePort' test.out

#- 38 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'FBsbBLz0' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "qvojTDoz", "port": 85}' \
    > test.out 2>&1
eval_tap $? 38 'UpdatePort' test.out

#- 39 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'OoZQ7kRC' \
    --sortBy 'updatedAt' \
    --sortDirection 'asc' \
    --count '64' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 39 'ListImages' test.out

#- 40 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'WEYY3QIR' \
    --version 'oOkgTDsS' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImage' test.out

#- 41 GetImageLimit
samples/cli/sample-apps Dsmc getImageLimit \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'GetImageLimit' test.out

#- 42 DeleteImagePatch
samples/cli/sample-apps Dsmc deleteImagePatch \
    --namespace $AB_NAMESPACE \
    --imageURI '42XMqBkB' \
    --version 'UH90TVXK' \
    --versionPatch 'p3SXOH7z' \
    > test.out 2>&1
eval_tap $? 42 'DeleteImagePatch' test.out

#- 43 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'LIjk1hIw' \
    > test.out 2>&1
eval_tap $? 43 'GetImageDetail' test.out

#- 44 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'x0g7hHCI' \
    > test.out 2>&1
eval_tap $? 44 'GetImagePatches' test.out

#- 45 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'CVsH5Mrl' \
    --versionPatch '7NjjcUJu' \
    > test.out 2>&1
eval_tap $? 45 'GetImagePatchDetail' test.out

#- 46 AddBuffer
samples/cli/sample-apps Dsmc addBuffer \
    --namespace $AB_NAMESPACE \
    --body '{"AllocCount": 54, "DeploymentName": "b1O42NC8", "JobCount": 41, "JobPriority": 50, "OverrideVersion": "Xycvsw5E", "Region": "mnpnWchn"}' \
    > test.out 2>&1
eval_tap $? 46 'AddBuffer' test.out

#- 47 GetRepository
samples/cli/sample-apps Dsmc getRepository \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'GetRepository' test.out

#- 48 ListServer
samples/cli/sample-apps Dsmc listServer \
    --namespace $AB_NAMESPACE \
    --region 'bN6RuFlJ' \
    --count '99' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 48 'ListServer' test.out

#- 49 CountServer
samples/cli/sample-apps Dsmc countServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'CountServer' test.out

#- 50 CountServerDetailed
samples/cli/sample-apps Dsmc countServerDetailed \
    --namespace $AB_NAMESPACE \
    --region 'aCsaKweb' \
    > test.out 2>&1
eval_tap $? 50 'CountServerDetailed' test.out

#- 51 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'ListLocalServer' test.out

#- 52 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'KBHtLvzF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteLocalServer' test.out

#- 53 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'rAk3B3N9' \
    > test.out 2>&1
eval_tap $? 53 'GetServer' test.out

#- 54 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'usCmAZtA' \
    > test.out 2>&1
eval_tap $? 54 'DeleteServer' test.out

#- 55 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'T8UEcBeW' \
    --withServer 'true' \
    --count '70' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 55 'ListSession' test.out

#- 56 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'FjEJjjf7' \
    > test.out 2>&1
eval_tap $? 56 'CountSession' test.out

#- 57 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'Y7qBFMi5' \
    > test.out 2>&1
eval_tap $? 57 'DeleteSession' test.out

#- 58 RunGhostCleanerRequestHandler
samples/cli/sample-apps Dsmc runGhostCleanerRequestHandler \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'RunGhostCleanerRequestHandler' test.out

#- 59 RunZombieCleanerRequestHandler
samples/cli/sample-apps Dsmc runZombieCleanerRequestHandler \
    --namespace $AB_NAMESPACE \
    --body '{"JobCount": 81, "Region": "JlW1wE5i", "TimeoutSecond": 99, "ZombieCount": 24}' \
    > test.out 2>&1
eval_tap $? 59 'RunZombieCleanerRequestHandler' test.out

#- 60 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "KXXYaN3J", "repository": "6OiNfmii"}' \
    > test.out 2>&1
eval_tap $? 60 'CreateRepository' test.out

#- 61 ExportConfigV1
samples/cli/sample-apps Dsmc exportConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'ExportConfigV1' test.out

#- 62 ImportConfigV1
samples/cli/sample-apps Dsmc importConfigV1 \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 62 'ImportConfigV1' test.out

#- 63 GetAllDeploymentClient
samples/cli/sample-apps Dsmc getAllDeploymentClient \
    --namespace $AB_NAMESPACE \
    --name '1v8opASi' \
    --count '49' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 63 'GetAllDeploymentClient' test.out

#- 64 GetDeploymentClient
samples/cli/sample-apps Dsmc getDeploymentClient \
    --deployment 'Ex92JDtZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetDeploymentClient' test.out

#- 65 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment 'csj4SzMi' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 41, "buffer_percent": 21, "configuration": "huxhnifI", "enable_region_overrides": false, "extendable_session": true, "game_version": "DdiKjt1O", "max_count": 54, "min_count": 14, "overrides": {"3zlyaIef": {"buffer_count": 67, "buffer_percent": 96, "configuration": "Mxx2N9qt", "enable_region_overrides": true, "extendable_session": true, "game_version": "uE4y4IRZ", "max_count": 39, "min_count": 82, "name": "wiabXlaw", "region_overrides": {"NP1LPtAh": {"buffer_count": 5, "buffer_percent": 47, "max_count": 12, "min_count": 55, "name": "ucBIBHSW", "unlimited": true, "use_buffer_percent": false}, "ezg5ilwB": {"buffer_count": 15, "buffer_percent": 98, "max_count": 42, "min_count": 77, "name": "nj1dzPZs", "unlimited": true, "use_buffer_percent": true}, "7zbygLLR": {"buffer_count": 64, "buffer_percent": 59, "max_count": 6, "min_count": 98, "name": "ruv3Kks8", "unlimited": false, "use_buffer_percent": false}}, "regions": ["pBV8jArQ", "NPAri6ag", "5bPq8mUq"], "session_timeout": 70, "unlimited": true, "use_buffer_percent": true}, "dG6QHyqv": {"buffer_count": 31, "buffer_percent": 32, "configuration": "RlEqigA5", "enable_region_overrides": false, "extendable_session": false, "game_version": "HgszN04o", "max_count": 80, "min_count": 27, "name": "U670jKjO", "region_overrides": {"ouyUFOA4": {"buffer_count": 21, "buffer_percent": 14, "max_count": 22, "min_count": 86, "name": "qWIEAdQ9", "unlimited": false, "use_buffer_percent": false}, "7LqgNi5H": {"buffer_count": 41, "buffer_percent": 8, "max_count": 65, "min_count": 27, "name": "MN6kISbW", "unlimited": false, "use_buffer_percent": false}, "iZXylawP": {"buffer_count": 50, "buffer_percent": 61, "max_count": 88, "min_count": 41, "name": "cFGXuNhD", "unlimited": true, "use_buffer_percent": true}}, "regions": ["EYRraKOd", "WcHGgc33", "T8xbJ2ps"], "session_timeout": 5, "unlimited": false, "use_buffer_percent": false}, "giWsv02K": {"buffer_count": 15, "buffer_percent": 2, "configuration": "CVSOEiYA", "enable_region_overrides": false, "extendable_session": false, "game_version": "wk7c5Ab5", "max_count": 49, "min_count": 57, "name": "MSADSSQR", "region_overrides": {"VCYU9ivC": {"buffer_count": 43, "buffer_percent": 15, "max_count": 21, "min_count": 12, "name": "sMiBBejR", "unlimited": true, "use_buffer_percent": true}, "1IolV8gG": {"buffer_count": 1, "buffer_percent": 64, "max_count": 4, "min_count": 84, "name": "UFPpQfGn", "unlimited": false, "use_buffer_percent": true}, "EpnLuf4k": {"buffer_count": 5, "buffer_percent": 88, "max_count": 5, "min_count": 12, "name": "JpccoaFT", "unlimited": false, "use_buffer_percent": true}}, "regions": ["xm7yx15O", "Dr1bCT4O", "sZBtIKKC"], "session_timeout": 30, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"hFrLHZLG": {"buffer_count": 82, "buffer_percent": 51, "max_count": 90, "min_count": 98, "name": "cP37aiia", "unlimited": true, "use_buffer_percent": false}, "WDH7mqxU": {"buffer_count": 73, "buffer_percent": 36, "max_count": 23, "min_count": 37, "name": "CUhVUJ1X", "unlimited": false, "use_buffer_percent": false}, "JbLyFe5S": {"buffer_count": 27, "buffer_percent": 80, "max_count": 84, "min_count": 98, "name": "Ekemrb4I", "unlimited": false, "use_buffer_percent": true}}, "regions": ["0GLXRWhR", "fMQuwc6x", "sb5l4QdF"], "session_timeout": 65, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 65 'CreateDeploymentClient' test.out

#- 66 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment '1jJU64D8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'DeleteDeploymentClient' test.out

#- 67 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '94' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 67 'GetAllPodConfigClient' test.out

#- 68 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name '1iiDnDAn' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 50, "mem_limit": 78, "params": "m4wJJDRr"}' \
    > test.out 2>&1
eval_tap $? 68 'CreatePodConfigClient' test.out

#- 69 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'QBeeE8k9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'DeletePodConfigClient' test.out

#- 70 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '10' \
    --offset '20' \
    --q 'pQv6twtv' \
    --sortBy 'createdAt' \
    --sortDirection 'desc' \
    > test.out 2>&1
eval_tap $? 70 'ListImagesClient' test.out

#- 71 ImageLimitClient
samples/cli/sample-apps Dsmc imageLimitClient \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'ImageLimitClient' test.out

#- 72 ImageDetailClient
samples/cli/sample-apps Dsmc imageDetailClient \
    --namespace $AB_NAMESPACE \
    --version 'qmReE733' \
    > test.out 2>&1
eval_tap $? 72 'ImageDetailClient' test.out

#- 73 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region '1ItoW64w' \
    --count '11' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 73 'ListServerClient' test.out

#- 74 CountServerDetailedClient
samples/cli/sample-apps Dsmc countServerDetailedClient \
    --namespace $AB_NAMESPACE \
    --region 'sIECibsL' \
    > test.out 2>&1
eval_tap $? 74 'CountServerDetailedClient' test.out

#- 75 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "UdqQQ9n3"}' \
    > test.out 2>&1
eval_tap $? 75 'ServerHeartbeat' test.out

#- 76 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "5bf9yFzh"}' \
    > test.out 2>&1
eval_tap $? 76 'DeregisterLocalServer' test.out

#- 77 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "r0y3bMur", "ip": "QXEVPD6E", "name": "xwIm14Nq", "port": 23}' \
    > test.out 2>&1
eval_tap $? 77 'RegisterLocalServer' test.out

#- 78 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "XMJpSFLz", "pod_name": "J6hoV1pw"}' \
    > test.out 2>&1
eval_tap $? 78 'RegisterServer' test.out

#- 79 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "3r2yoPqL"}' \
    > test.out 2>&1
eval_tap $? 79 'ShutdownServer' test.out

#- 80 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'cLG75XML' \
    > test.out 2>&1
eval_tap $? 80 'GetServerSessionTimeout' test.out

#- 81 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'a4uIqgQM' \
    > test.out 2>&1
eval_tap $? 81 'GetServerSession' test.out

#- 82 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "qPrvB7lY", "configuration": "Y3fQQsyk", "deployment": "5OCChsWy", "game_mode": "YJrqliR4", "matching_allies": [{"matching_parties": [{"party_attributes": {"zLRARNTK": {}, "n4skvLCy": {}, "EAY2Obki": {}}, "party_id": "xwacr2pp", "party_members": [{"user_id": "Q3YKjVXX"}, {"user_id": "qmQWoOwE"}, {"user_id": "ZZ5YdV9o"}]}, {"party_attributes": {"ckAzCuNL": {}, "3ftW4UwD": {}, "TLHKUhg9": {}}, "party_id": "oNyLhwsO", "party_members": [{"user_id": "BMlnAFiD"}, {"user_id": "yuNRTOqT"}, {"user_id": "oXzh7xhU"}]}, {"party_attributes": {"PhBYeggE": {}, "rRNcpHbW": {}, "ChZCsx2s": {}}, "party_id": "ONMmrVvd", "party_members": [{"user_id": "obewhvVU"}, {"user_id": "cxJn5PDU"}, {"user_id": "y8B2ooMw"}]}]}, {"matching_parties": [{"party_attributes": {"6WNL2QjA": {}, "Oi1PCGNM": {}, "fDo73xda": {}}, "party_id": "Jxq7V71B", "party_members": [{"user_id": "DPFVENWy"}, {"user_id": "KcXKNfGj"}, {"user_id": "CYaESnuN"}]}, {"party_attributes": {"kDzPlsfP": {}, "Rfo3IR2c": {}, "NYP0TECz": {}}, "party_id": "ZhAQNQgO", "party_members": [{"user_id": "6i1YeYl1"}, {"user_id": "ejZcIGLn"}, {"user_id": "RPS6vzwU"}]}, {"party_attributes": {"bn8lRzoC": {}, "sMgJZn00": {}, "BslxvLMW": {}}, "party_id": "qA0oUstq", "party_members": [{"user_id": "YNBPLS0R"}, {"user_id": "S3ezUWSY"}, {"user_id": "NmgDfLAC"}]}]}, {"matching_parties": [{"party_attributes": {"yqPJaiPv": {}, "eDrBoapw": {}, "HknNTelo": {}}, "party_id": "XrxZ3Znr", "party_members": [{"user_id": "QwmocmE4"}, {"user_id": "QzwTnFr3"}, {"user_id": "pJssK0IJ"}]}, {"party_attributes": {"C7hNLacx": {}, "PEUT192w": {}, "tuzvq9Wh": {}}, "party_id": "BkYxFy3w", "party_members": [{"user_id": "V6h7Frgt"}, {"user_id": "0JKQNsb3"}, {"user_id": "hfetDlka"}]}, {"party_attributes": {"uf3xHOLk": {}, "XbDlwMNi": {}, "C8YCe8um": {}}, "party_id": "fXdUNOis", "party_members": [{"user_id": "YJaAAXgN"}, {"user_id": "ggAFqzJm"}, {"user_id": "j2WiuDfu"}]}]}], "namespace": "6VDh8smr", "notification_payload": {}, "pod_name": "lfaiSn6O", "region": "uStw5J7v", "session_id": "eEcPzr3U"}' \
    > test.out 2>&1
eval_tap $? 82 'CreateSession' test.out

#- 83 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"game_mode": "jpZRYNyF", "matching_allies": [{"matching_parties": [{"party_attributes": {"bwl2CYqL": {}, "czVNQYdc": {}, "h1n3HGtN": {}}, "party_id": "BE4qj3VO", "party_members": [{"user_id": "idNGWT6B"}, {"user_id": "VEUqwvFc"}, {"user_id": "yXy7hll4"}]}, {"party_attributes": {"Dp9T7Vs4": {}, "TH8Q1xGv": {}, "hoTRFaWk": {}}, "party_id": "5I78fE6k", "party_members": [{"user_id": "OPyzfUxz"}, {"user_id": "6dTm4tUy"}, {"user_id": "opaZBbD4"}]}, {"party_attributes": {"9fwFZY77": {}, "BhwIk9qP": {}, "HaDLZhyo": {}}, "party_id": "BKAZrbXo", "party_members": [{"user_id": "1g2gFieG"}, {"user_id": "3imynHkp"}, {"user_id": "vw108ebn"}]}]}, {"matching_parties": [{"party_attributes": {"fcEhw8Xo": {}, "g5Jdi9Dv": {}, "7SlUx6Mv": {}}, "party_id": "Y3WV2diY", "party_members": [{"user_id": "xWO06RIz"}, {"user_id": "KdWNVlXy"}, {"user_id": "H5OZOLTk"}]}, {"party_attributes": {"PGdrBILf": {}, "elnLdEcz": {}, "aO3KzjXI": {}}, "party_id": "esdt86k4", "party_members": [{"user_id": "IEZNYkY9"}, {"user_id": "8Gmj3WQ4"}, {"user_id": "sy4o35jj"}]}, {"party_attributes": {"MM8Irknq": {}, "MHJZmJXQ": {}, "Tk4fSDLk": {}}, "party_id": "matO3sZP", "party_members": [{"user_id": "cjGC8kfE"}, {"user_id": "uw1zawG7"}, {"user_id": "htQnumah"}]}]}, {"matching_parties": [{"party_attributes": {"4kJeZ2CF": {}, "Xx7c6qzc": {}, "NTBOyAku": {}}, "party_id": "gEGwbB1l", "party_members": [{"user_id": "JqqmXHR1"}, {"user_id": "VIVwA2rc"}, {"user_id": "cYw9iKFH"}]}, {"party_attributes": {"947AKs0m": {}, "xEYnfG3F": {}, "Ird4MR6z": {}}, "party_id": "Msg0D8fI", "party_members": [{"user_id": "vPTO4Cib"}, {"user_id": "Gh2p046E"}, {"user_id": "zLcn9sMq"}]}, {"party_attributes": {"sBISwWh9": {}, "jyOcwQHS": {}, "tSpU4bIK": {}}, "party_id": "tp2PrPFu", "party_members": [{"user_id": "IPy0JhKS"}, {"user_id": "mIwfkAti"}, {"user_id": "OV2SOHNG"}]}]}], "namespace": "m706fWKT", "notification_payload": {}, "session_id": "MbE1Hpix"}' \
    > test.out 2>&1
eval_tap $? 83 'ClaimServer' test.out

#- 84 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'Mh0hM0e8' \
    > test.out 2>&1
eval_tap $? 84 'GetSession' test.out

#- 85 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'UC3tQhn7' \
    > test.out 2>&1
eval_tap $? 85 'CancelSession' test.out

#- 86 GetDefaultProvider
samples/cli/sample-apps Dsmc getDefaultProvider \
    > test.out 2>&1
eval_tap $? 86 'GetDefaultProvider' test.out

#- 87 ListProviders
samples/cli/sample-apps Dsmc listProviders \
    > test.out 2>&1
eval_tap $? 87 'ListProviders' test.out

#- 88 ListProvidersByRegion
samples/cli/sample-apps Dsmc listProvidersByRegion \
    --region 'hzRWXWax' \
    > test.out 2>&1
eval_tap $? 88 'ListProvidersByRegion' test.out

#- 89 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 89 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE