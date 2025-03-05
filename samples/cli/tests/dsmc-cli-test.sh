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
    --body '{"artifactPath": "a7dczqeH", "coreDumpEnabled": true, "image": "Mymh6yAA", "imageReplicationsMap": {"Rl6wL98I": {"failure_code": "408gIbpO", "region": "LyMyh2ss", "status": "nwkjgxN3", "uri": "yDS0cLKi"}, "oWfwruzL": {"failure_code": "1lEPw5Bk", "region": "00BtYFqs", "status": "MoCtnULM", "uri": "BKdzDHba"}, "OzSFTsu7": {"failure_code": "0P7P9BlN", "region": "ojIakiwK", "status": "fWYKhk2P", "uri": "VdlFA3LK"}}, "namespace": "8MkfF74P", "patchVersion": "ADUd1EEZ", "persistent": true, "ulimitFileSize": 9, "version": "5Y32HwgB"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "0BqUJ3n3", "coreDumpEnabled": false, "dockerPath": "cTbVNbeE", "image": "gOdGDtBI", "imageSize": 50, "namespace": "ngHcqxFx", "persistent": false, "ulimitFileSize": 74, "version": "RjiqLrto"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "Pw8Atbzh", "coreDumpEnabled": false, "dockerPath": "1Fq1Yy1Q", "image": "OncIzvKu", "imageSize": 94, "namespace": "yLpuAqpx", "patchVersion": "OyQdLYnF", "persistent": false, "ulimitFileSize": 68, "uploaderFlag": "4PDRzJDB", "version": "c2UsdFc4"}' \
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
    --body '{"auto_deletion": false, "ghost_worker": true, "manual_buffer_override": true, "zombie_worker": true}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateWorkerConfig' test.out

#- 10 CreateWorkerConfig
samples/cli/sample-apps Dsmc createWorkerConfig \
    --namespace $AB_NAMESPACE \
    --body '{"auto_deletion": false, "ghost_worker": true, "manual_buffer_override": true, "zombie_worker": false}' \
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
    --body '{"claim_timeout": 38, "creation_timeout": 21, "default_version": "AxVsUeMg", "port": 31, "ports": {"FadixTwR": 91, "gmxezIjI": 94, "SM5HHQY2": 84}, "protocol": "a3kALZPU", "providers": ["UQ7pyIKz", "gB7KoOZ7", "aFO6PrRG"], "session_timeout": 67, "unreachable_timeout": 44}' \
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
    --body '{"claim_timeout": 7, "creation_timeout": 64, "default_version": "ekPg0t7Y", "port": 18, "protocol": "a8y5p5RU", "providers": ["EOTORA6O", "GLIjKpC3", "ahzCZqzN"], "session_timeout": 67, "unreachable_timeout": 96}' \
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
    --name 'Bn0FrYBe' \
    --count '69' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 16 'GetAllDeployment' test.out

#- 17 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'aX6t4QUc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetDeployment' test.out

#- 18 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'RrslRwCs' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 80, "buffer_percent": 15, "configuration": "6UHmgZ1Q", "enable_region_overrides": false, "extendable_session": false, "game_version": "GXqbG2Ec", "max_count": 62, "min_count": 67, "overrides": {"xFq1RZd4": {"buffer_count": 90, "buffer_percent": 83, "configuration": "aIhpmgZO", "enable_region_overrides": false, "extendable_session": true, "game_version": "68F82jxw", "max_count": 0, "min_count": 16, "name": "kVPzqrNu", "region_overrides": {"YZfN68ha": {"buffer_count": 83, "buffer_percent": 98, "max_count": 83, "min_count": 53, "name": "ABZzkdmY", "unlimited": true, "use_buffer_percent": false}, "6dxp1EAs": {"buffer_count": 92, "buffer_percent": 23, "max_count": 75, "min_count": 35, "name": "l0RloUN5", "unlimited": false, "use_buffer_percent": true}, "4VkQmQkr": {"buffer_count": 15, "buffer_percent": 17, "max_count": 42, "min_count": 73, "name": "rHennD4k", "unlimited": true, "use_buffer_percent": false}}, "regions": ["3rMzEojS", "dcg7YWuF", "mgD4yWyn"], "session_timeout": 85, "unlimited": true, "use_buffer_percent": false}, "h94fIfeA": {"buffer_count": 75, "buffer_percent": 57, "configuration": "wnFTgudb", "enable_region_overrides": true, "extendable_session": true, "game_version": "bJXn1pwP", "max_count": 45, "min_count": 97, "name": "H7RMmYDs", "region_overrides": {"oLo71zqY": {"buffer_count": 45, "buffer_percent": 92, "max_count": 47, "min_count": 83, "name": "2BXEGwe9", "unlimited": false, "use_buffer_percent": false}, "S5rd0VcG": {"buffer_count": 2, "buffer_percent": 98, "max_count": 40, "min_count": 18, "name": "iXdJijHl", "unlimited": true, "use_buffer_percent": true}, "9MyRmHcg": {"buffer_count": 76, "buffer_percent": 34, "max_count": 88, "min_count": 25, "name": "tos9aCaz", "unlimited": false, "use_buffer_percent": false}}, "regions": ["yV1X2lEH", "qVIdM3Vb", "2KDUjNse"], "session_timeout": 76, "unlimited": true, "use_buffer_percent": true}, "54PP2Uoy": {"buffer_count": 56, "buffer_percent": 21, "configuration": "BwRFsFyg", "enable_region_overrides": true, "extendable_session": true, "game_version": "qLq1DXod", "max_count": 80, "min_count": 32, "name": "dz5Mx40u", "region_overrides": {"YhusoF1r": {"buffer_count": 19, "buffer_percent": 12, "max_count": 4, "min_count": 76, "name": "6B3VZ4OP", "unlimited": true, "use_buffer_percent": false}, "n38qLdXU": {"buffer_count": 78, "buffer_percent": 26, "max_count": 87, "min_count": 27, "name": "dkDCBAWm", "unlimited": false, "use_buffer_percent": true}, "WJMiq7pc": {"buffer_count": 23, "buffer_percent": 11, "max_count": 6, "min_count": 4, "name": "PxJ6TiHh", "unlimited": true, "use_buffer_percent": false}}, "regions": ["16nUkEtG", "TSZSoNT4", "I6ppdvTp"], "session_timeout": 41, "unlimited": true, "use_buffer_percent": false}}, "region_overrides": {"2QaCbU5d": {"buffer_count": 2, "buffer_percent": 90, "max_count": 88, "min_count": 10, "name": "lJpziwBt", "unlimited": true, "use_buffer_percent": true}, "szlaS6z8": {"buffer_count": 64, "buffer_percent": 36, "max_count": 70, "min_count": 51, "name": "LgehLgvC", "unlimited": false, "use_buffer_percent": true}, "qkZvHibh": {"buffer_count": 98, "buffer_percent": 7, "max_count": 48, "min_count": 71, "name": "86JIMUrT", "unlimited": false, "use_buffer_percent": false}}, "regions": ["qDP2SlK0", "eaFcnRQ0", "dcwAqwIR"], "session_timeout": 18, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 18 'CreateDeployment' test.out

#- 19 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment '0jnkLhlv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'DeleteDeployment' test.out

#- 20 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'DQVdBuPn' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 96, "buffer_percent": 16, "configuration": "7O2tknfI", "enable_region_overrides": true, "extendable_session": true, "game_version": "PlD7wuNQ", "max_count": 90, "min_count": 11, "regions": ["kjZVoUrk", "ZJeuFyCB", "4jJ5RHyj"], "session_timeout": 2, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateDeployment' test.out

#- 21 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'ACDADWDh' \
    --namespace $AB_NAMESPACE \
    --region 'Qdv6BOhZ' \
    --body '{"buffer_count": 90, "buffer_percent": 57, "max_count": 28, "min_count": 83, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'CreateRootRegionOverride' test.out

#- 22 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'alTew1wj' \
    --namespace $AB_NAMESPACE \
    --region 'AyP4yxuD' \
    > test.out 2>&1
eval_tap $? 22 'DeleteRootRegionOverride' test.out

#- 23 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'wsxYIDtV' \
    --namespace $AB_NAMESPACE \
    --region '5PtwHLoQ' \
    --body '{"buffer_count": 52, "buffer_percent": 44, "max_count": 43, "min_count": 73, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateRootRegionOverride' test.out

#- 24 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'H3JxDSJ0' \
    --namespace $AB_NAMESPACE \
    --version 'xfDvqlAw' \
    --body '{"buffer_count": 9, "buffer_percent": 55, "configuration": "5PuOD130", "enable_region_overrides": false, "extendable_session": false, "game_version": "cckmErcl", "max_count": 15, "min_count": 64, "region_overrides": {"333BT8m4": {"buffer_count": 84, "buffer_percent": 8, "max_count": 91, "min_count": 19, "name": "HknVM9rt", "unlimited": true, "use_buffer_percent": true}, "oEkBja8h": {"buffer_count": 73, "buffer_percent": 78, "max_count": 78, "min_count": 53, "name": "DCc2xGr1", "unlimited": false, "use_buffer_percent": false}, "FhFuzeUI": {"buffer_count": 25, "buffer_percent": 42, "max_count": 91, "min_count": 71, "name": "ogcPqc1N", "unlimited": true, "use_buffer_percent": true}}, "regions": ["SgOpovPk", "omaJvlbK", "D81XTYW6"], "session_timeout": 50, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 24 'CreateDeploymentOverride' test.out

#- 25 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'psakh5if' \
    --namespace $AB_NAMESPACE \
    --version 'DogRGPlM' \
    > test.out 2>&1
eval_tap $? 25 'DeleteDeploymentOverride' test.out

#- 26 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'Fkvbs4wQ' \
    --namespace $AB_NAMESPACE \
    --version '425ZAbQM' \
    --body '{"buffer_count": 39, "buffer_percent": 75, "configuration": "KnUjWw2r", "enable_region_overrides": true, "game_version": "0EAxJsCt", "max_count": 79, "min_count": 58, "regions": ["d2X2Qjsp", "wmSIRbCy", "PVVMrVPG"], "session_timeout": 36, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateDeploymentOverride' test.out

#- 27 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'llQQYH6t' \
    --namespace $AB_NAMESPACE \
    --region 'TwoxZUpG' \
    --version 'DSPlOrz0' \
    --body '{"buffer_count": 90, "buffer_percent": 48, "max_count": 85, "min_count": 54, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 27 'CreateOverrideRegionOverride' test.out

#- 28 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'yyf9CiqJ' \
    --namespace $AB_NAMESPACE \
    --region 'IU243uDV' \
    --version 'ust6wkW6' \
    > test.out 2>&1
eval_tap $? 28 'DeleteOverrideRegionOverride' test.out

#- 29 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'TfGhKzCB' \
    --namespace $AB_NAMESPACE \
    --region 'wNKz3MvO' \
    --version 'ZVVSOev3' \
    --body '{"buffer_count": 5, "buffer_percent": 15, "max_count": 6, "min_count": 20, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateOverrideRegionOverride' test.out

#- 30 DeleteCreatingServerCountQueue
samples/cli/sample-apps Dsmc deleteCreatingServerCountQueue \
    --deployment '5pHAbFwx' \
    --namespace $AB_NAMESPACE \
    --version 'FhyGdKsN' \
    > test.out 2>&1
eval_tap $? 30 'DeleteCreatingServerCountQueue' test.out

#- 31 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '36' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 31 'GetAllPodConfig' test.out

#- 32 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'OSCK1Abc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'GetPodConfig' test.out

#- 33 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'jIWxIdvj' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 79, "mem_limit": 45, "params": "hxYWqdoR"}' \
    > test.out 2>&1
eval_tap $? 33 'CreatePodConfig' test.out

#- 34 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'PvcBQtNM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePodConfig' test.out

#- 35 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'qbqBAv6A' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 44, "mem_limit": 52, "name": "PL6Affu8", "params": "eFNJFld6"}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePodConfig' test.out

#- 36 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'ITE4RxU3' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 99}' \
    > test.out 2>&1
eval_tap $? 36 'AddPort' test.out

#- 37 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'gJCSJLCK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'DeletePort' test.out

#- 38 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'sgWLCfRY' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "xpL9ft6q", "port": 11}' \
    > test.out 2>&1
eval_tap $? 38 'UpdatePort' test.out

#- 39 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'wrfCyv78' \
    --sortBy 'createdAt' \
    --sortDirection 'asc' \
    --count '17' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 39 'ListImages' test.out

#- 40 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'PzqX2Mgh' \
    --version '9OxmHMyb' \
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
    --imageURI 'vJBHeD8t' \
    --version 'UvzpBO6p' \
    --versionPatch 'Fc6xnJow' \
    > test.out 2>&1
eval_tap $? 42 'DeleteImagePatch' test.out

#- 43 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'S61RrWnT' \
    > test.out 2>&1
eval_tap $? 43 'GetImageDetail' test.out

#- 44 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'eJnGlXUo' \
    > test.out 2>&1
eval_tap $? 44 'GetImagePatches' test.out

#- 45 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'dS2W25XV' \
    --versionPatch '7umgOKKY' \
    > test.out 2>&1
eval_tap $? 45 'GetImagePatchDetail' test.out

#- 46 AddBuffer
samples/cli/sample-apps Dsmc addBuffer \
    --namespace $AB_NAMESPACE \
    --body '{"AllocCount": 22, "DeploymentName": "BsbfqQvP", "JobCount": 79, "JobPriority": 51, "OverrideVersion": "FkDzDeLE", "Region": "miRrjhoA"}' \
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
    --region '7vqHXlo4' \
    --count '89' \
    --offset '98' \
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
    --region 'RkLDiNu0' \
    > test.out 2>&1
eval_tap $? 50 'CountServerDetailed' test.out

#- 51 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'ListLocalServer' test.out

#- 52 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name '4uWANvvL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteLocalServer' test.out

#- 53 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 't8sCSx85' \
    > test.out 2>&1
eval_tap $? 53 'GetServer' test.out

#- 54 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'qgHZm6do' \
    > test.out 2>&1
eval_tap $? 54 'DeleteServer' test.out

#- 55 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'SolRUIJd' \
    --withServer 'false' \
    --count '59' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 55 'ListSession' test.out

#- 56 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'QQ9TOGEG' \
    > test.out 2>&1
eval_tap $? 56 'CountSession' test.out

#- 57 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'CgiGbNQe' \
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
    --body '{"JobCount": 19, "Region": "403fW4XS", "TimeoutSecond": 92, "ZombieCount": 76}' \
    > test.out 2>&1
eval_tap $? 59 'RunZombieCleanerRequestHandler' test.out

#- 60 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "IxGnk8kV", "repository": "fuyuO0bv"}' \
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
    --name 'taJ2jpAV' \
    --count '17' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 63 'GetAllDeploymentClient' test.out

#- 64 GetDeploymentClient
samples/cli/sample-apps Dsmc getDeploymentClient \
    --deployment 'iPOQZmMp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetDeploymentClient' test.out

#- 65 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment 'XqBjkkWd' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 82, "buffer_percent": 72, "configuration": "BGIjBEmW", "enable_region_overrides": false, "extendable_session": false, "game_version": "yWOGpXDh", "max_count": 86, "min_count": 76, "overrides": {"q2nRYjCN": {"buffer_count": 100, "buffer_percent": 13, "configuration": "rXkB8vws", "enable_region_overrides": false, "extendable_session": true, "game_version": "AZcyXf6Z", "max_count": 57, "min_count": 7, "name": "PDaMQ2p1", "region_overrides": {"ubnwOPou": {"buffer_count": 69, "buffer_percent": 97, "max_count": 10, "min_count": 19, "name": "nxIqjVX9", "unlimited": false, "use_buffer_percent": false}, "lpvFqUQt": {"buffer_count": 11, "buffer_percent": 93, "max_count": 51, "min_count": 46, "name": "YbYXFjW1", "unlimited": false, "use_buffer_percent": true}, "8FcfUEnm": {"buffer_count": 85, "buffer_percent": 40, "max_count": 85, "min_count": 18, "name": "f4eioQrb", "unlimited": true, "use_buffer_percent": false}}, "regions": ["TQggfw7u", "5jIU6Dkg", "lttdQ2U4"], "session_timeout": 100, "unlimited": true, "use_buffer_percent": true}, "bL2dn64a": {"buffer_count": 68, "buffer_percent": 30, "configuration": "PKv2FqaC", "enable_region_overrides": false, "extendable_session": false, "game_version": "trNdfgPP", "max_count": 7, "min_count": 70, "name": "MF4F3By8", "region_overrides": {"L6AGfHeF": {"buffer_count": 22, "buffer_percent": 8, "max_count": 39, "min_count": 73, "name": "CdciBAcu", "unlimited": true, "use_buffer_percent": false}, "WDut1IYJ": {"buffer_count": 25, "buffer_percent": 90, "max_count": 75, "min_count": 2, "name": "wXhmkHLy", "unlimited": true, "use_buffer_percent": true}, "RPxa8OLU": {"buffer_count": 58, "buffer_percent": 71, "max_count": 67, "min_count": 52, "name": "A44fb9Je", "unlimited": true, "use_buffer_percent": false}}, "regions": ["vHKc6Qr2", "enTRTXFV", "W16GqNgB"], "session_timeout": 7, "unlimited": true, "use_buffer_percent": true}, "by04nXyo": {"buffer_count": 5, "buffer_percent": 97, "configuration": "b1VOruOW", "enable_region_overrides": false, "extendable_session": true, "game_version": "xAJgG2vU", "max_count": 86, "min_count": 47, "name": "wS7BbmTC", "region_overrides": {"p60udCaq": {"buffer_count": 18, "buffer_percent": 85, "max_count": 58, "min_count": 59, "name": "oVgIANtU", "unlimited": true, "use_buffer_percent": false}, "ECXHk3Ks": {"buffer_count": 42, "buffer_percent": 91, "max_count": 80, "min_count": 9, "name": "IUH977FX", "unlimited": false, "use_buffer_percent": false}, "Jg2kVRn7": {"buffer_count": 52, "buffer_percent": 69, "max_count": 42, "min_count": 20, "name": "TTaUvpYR", "unlimited": false, "use_buffer_percent": true}}, "regions": ["BdJRceVQ", "DgrYxp3B", "J3AYFBYi"], "session_timeout": 7, "unlimited": true, "use_buffer_percent": false}}, "region_overrides": {"QjEV4Tu1": {"buffer_count": 92, "buffer_percent": 11, "max_count": 98, "min_count": 99, "name": "4L7vvTIU", "unlimited": false, "use_buffer_percent": false}, "2QH8utoA": {"buffer_count": 45, "buffer_percent": 48, "max_count": 22, "min_count": 96, "name": "EfliAnA4", "unlimited": true, "use_buffer_percent": true}, "YiwJGoVL": {"buffer_count": 55, "buffer_percent": 42, "max_count": 91, "min_count": 54, "name": "YrwOQdU7", "unlimited": false, "use_buffer_percent": true}}, "regions": ["MqwWVODJ", "G81cUmSM", "dTG56ROO"], "session_timeout": 7, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 65 'CreateDeploymentClient' test.out

#- 66 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'N0j4anFQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'DeleteDeploymentClient' test.out

#- 67 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '8' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 67 'GetAllPodConfigClient' test.out

#- 68 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'KC8HsmhU' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 67, "mem_limit": 85, "params": "rdEmemlK"}' \
    > test.out 2>&1
eval_tap $? 68 'CreatePodConfigClient' test.out

#- 69 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name '78yR9gy7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'DeletePodConfigClient' test.out

#- 70 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '55' \
    --offset '14' \
    --q 'A0Ks4kLf' \
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
    --version 'KFVlUJLR' \
    > test.out 2>&1
eval_tap $? 72 'ImageDetailClient' test.out

#- 73 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'ZKjy20mJ' \
    --count '68' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 73 'ListServerClient' test.out

#- 74 CountServerDetailedClient
samples/cli/sample-apps Dsmc countServerDetailedClient \
    --namespace $AB_NAMESPACE \
    --region 'FVM3MXRW' \
    > test.out 2>&1
eval_tap $? 74 'CountServerDetailedClient' test.out

#- 75 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "sezfBNuP"}' \
    > test.out 2>&1
eval_tap $? 75 'ServerHeartbeat' test.out

#- 76 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "HflhSsWE"}' \
    > test.out 2>&1
eval_tap $? 76 'DeregisterLocalServer' test.out

#- 77 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "i8b3XrVT", "ip": "rnGrmD6W", "name": "iBdkzhxp", "port": 54}' \
    > test.out 2>&1
eval_tap $? 77 'RegisterLocalServer' test.out

#- 78 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "IJXpbew6", "pod_name": "qUfldGut"}' \
    > test.out 2>&1
eval_tap $? 78 'RegisterServer' test.out

#- 79 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "rRHgnYzG"}' \
    > test.out 2>&1
eval_tap $? 79 'ShutdownServer' test.out

#- 80 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'tbz5Ppsl' \
    > test.out 2>&1
eval_tap $? 80 'GetServerSessionTimeout' test.out

#- 81 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'fwtnMSUZ' \
    > test.out 2>&1
eval_tap $? 81 'GetServerSession' test.out

#- 82 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "5wYx6Ea9", "configuration": "LLOdBg1N", "deployment": "KXHiqDQq", "game_mode": "CyHyUOtE", "matching_allies": [{"matching_parties": [{"party_attributes": {"BPCkCWOJ": {}, "E1jpyARz": {}, "VihRiB1c": {}}, "party_id": "L1tHmUZR", "party_members": [{"user_id": "CYrpdEaY"}, {"user_id": "YWIwIEii"}, {"user_id": "1rBEHqw0"}]}, {"party_attributes": {"duGcL5AM": {}, "uifofawD": {}, "Iiw1q6vm": {}}, "party_id": "xgCKY0G6", "party_members": [{"user_id": "MCdxJqMk"}, {"user_id": "1L4psjd5"}, {"user_id": "rFfqlWZL"}]}, {"party_attributes": {"JNYTq1Mz": {}, "4nSZNziL": {}, "Bvjw0pp2": {}}, "party_id": "s8Ai7tfU", "party_members": [{"user_id": "gwtKGOkf"}, {"user_id": "l9BMbJYS"}, {"user_id": "tR31CHES"}]}]}, {"matching_parties": [{"party_attributes": {"JuNi345k": {}, "PHBwX63K": {}, "NjJXBy55": {}}, "party_id": "nGbiPOBj", "party_members": [{"user_id": "ejmvhSaH"}, {"user_id": "oNorm8S2"}, {"user_id": "4CXONEof"}]}, {"party_attributes": {"LiJogv37": {}, "lZyMaqRC": {}, "m5JZSuqr": {}}, "party_id": "RooATKvh", "party_members": [{"user_id": "nSdewIMR"}, {"user_id": "lLnf8S2S"}, {"user_id": "X5I3F6Gf"}]}, {"party_attributes": {"al5A69Pn": {}, "l6mKGQTl": {}, "NxatxmQz": {}}, "party_id": "cIYltROu", "party_members": [{"user_id": "11aHpXdi"}, {"user_id": "lYG8aiEg"}, {"user_id": "NlgoQsfQ"}]}]}, {"matching_parties": [{"party_attributes": {"wAi1D7DY": {}, "PME4l3Ta": {}, "pq21XO93": {}}, "party_id": "H6kAv9yO", "party_members": [{"user_id": "oDq46wW3"}, {"user_id": "GmrQezw3"}, {"user_id": "tbNW9UIM"}]}, {"party_attributes": {"YJOJNP4B": {}, "m0qH52Rl": {}, "LAuexD7r": {}}, "party_id": "ULyRZPhj", "party_members": [{"user_id": "s7SKlOOn"}, {"user_id": "LNBRomlW"}, {"user_id": "9h5Agh3h"}]}, {"party_attributes": {"YgnSDjJQ": {}, "A8d6xpAF": {}, "SJ0aCBKM": {}}, "party_id": "7LtkjcqC", "party_members": [{"user_id": "0qyAQB8S"}, {"user_id": "tzjPiJVm"}, {"user_id": "unWYvmLO"}]}]}], "namespace": "IbxddvNI", "notification_payload": {}, "pod_name": "DW519Dne", "region": "BusHPynW", "session_id": "XWS5mrOF"}' \
    > test.out 2>&1
eval_tap $? 82 'CreateSession' test.out

#- 83 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"game_mode": "nEI2jZyi", "matching_allies": [{"matching_parties": [{"party_attributes": {"4IL3ig2p": {}, "9rIKOSMC": {}, "QmwE6UA4": {}}, "party_id": "v5SqIQoT", "party_members": [{"user_id": "W9WcmPmG"}, {"user_id": "2jFFvWdd"}, {"user_id": "n1ttW49c"}]}, {"party_attributes": {"LJdLPlZC": {}, "d5yDxYXu": {}, "raUGlN6E": {}}, "party_id": "24Em3pS5", "party_members": [{"user_id": "LiOwcfYN"}, {"user_id": "JikvBXTL"}, {"user_id": "1hndB6M2"}]}, {"party_attributes": {"tobhBbPC": {}, "tP7OhRiS": {}, "rKnbeQPX": {}}, "party_id": "KV13bovl", "party_members": [{"user_id": "lWAMVyFU"}, {"user_id": "3j9WVQ5i"}, {"user_id": "JVmq9goe"}]}]}, {"matching_parties": [{"party_attributes": {"3ItzDuk2": {}, "GMUfTfGv": {}, "dMbH8Inh": {}}, "party_id": "UuOVofEJ", "party_members": [{"user_id": "aUBc09bv"}, {"user_id": "uYMIczHk"}, {"user_id": "SEmxyLEt"}]}, {"party_attributes": {"8J0uwMRF": {}, "1GDl1OxG": {}, "tkEFS3iK": {}}, "party_id": "a4mmmQ3T", "party_members": [{"user_id": "BU8gTd7j"}, {"user_id": "QFhrcEKd"}, {"user_id": "0hU8xwSb"}]}, {"party_attributes": {"Oq8ooggD": {}, "x73OyxSZ": {}, "hlct5wKk": {}}, "party_id": "hamGtu2m", "party_members": [{"user_id": "qOIr4JbZ"}, {"user_id": "0VIafnHI"}, {"user_id": "xX5NlHhb"}]}]}, {"matching_parties": [{"party_attributes": {"l8OuoI5Q": {}, "NygmPeAC": {}, "iEUJ7aWO": {}}, "party_id": "zxbcnq8o", "party_members": [{"user_id": "M1BLDVMY"}, {"user_id": "RgPjcJZZ"}, {"user_id": "BjJzxWrz"}]}, {"party_attributes": {"uT1iiuFj": {}, "T9rQ6Wzu": {}, "H2ZIlvxl": {}}, "party_id": "iV3JW54l", "party_members": [{"user_id": "3Js1tRo6"}, {"user_id": "nHtfvX2x"}, {"user_id": "huGuUmGL"}]}, {"party_attributes": {"39yDsSRg": {}, "693Kxd2n": {}, "kDBUcMym": {}}, "party_id": "LimLUf9Y", "party_members": [{"user_id": "6lwKxo3Q"}, {"user_id": "NDOOT1pt"}, {"user_id": "mEhpOL7j"}]}]}], "namespace": "xhjuDOWm", "notification_payload": {}, "session_id": "ruyGStfV"}' \
    > test.out 2>&1
eval_tap $? 83 'ClaimServer' test.out

#- 84 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID '8aCT6urf' \
    > test.out 2>&1
eval_tap $? 84 'GetSession' test.out

#- 85 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'EoRRvsbr' \
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
    --region '5gfZ1DQS' \
    > test.out 2>&1
eval_tap $? 88 'ListProvidersByRegion' test.out

#- 89 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 89 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE