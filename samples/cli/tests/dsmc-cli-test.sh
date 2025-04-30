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
    --body '{"artifactPath": "jljs63UT", "coreDumpEnabled": true, "image": "GGgtzjjg", "imageReplicationsMap": {"eRIxWVrD": {"failure_code": "fhbten4N", "region": "WoYmC2Tc", "status": "GJRX6tSv", "uri": "gooYYjTg"}, "rSPVmU3O": {"failure_code": "ISeHZx5y", "region": "QU6vpXi2", "status": "AQv0N3SN", "uri": "3NOYjt7u"}, "iY0nqzYb": {"failure_code": "eEeKtaDY", "region": "auEneNqk", "status": "onkavCUD", "uri": "nazjZgzD"}}, "namespace": "R6fDiObN", "patchVersion": "ci0sQ5pQ", "persistent": true, "ulimitFileSize": 54, "version": "gSj4lEqe"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "vgQAHm2l", "coreDumpEnabled": true, "dockerPath": "fe05qi2T", "image": "YOJQDQJT", "imageSize": 68, "namespace": "0sQPW6r5", "persistent": true, "ulimitFileSize": 20, "version": "IVHz0fll"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "oO8UFLMo", "coreDumpEnabled": true, "dockerPath": "sFhJRTCI", "image": "vt8KzTsp", "imageSize": 83, "namespace": "UzHmblzv", "patchVersion": "BKi6k1MT", "persistent": true, "ulimitFileSize": 98, "uploaderFlag": "KalRnNaC", "version": "mDNsrXRi"}' \
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
    --body '{"auto_deletion": true, "ghost_worker": true, "manual_buffer_override": true, "zombie_worker": true}' \
    > test.out 2>&1
eval_tap $? 9 'UpdateWorkerConfig' test.out

#- 10 CreateWorkerConfig
samples/cli/sample-apps Dsmc createWorkerConfig \
    --namespace $AB_NAMESPACE \
    --body '{"auto_deletion": true, "ghost_worker": true, "manual_buffer_override": true, "zombie_worker": true}' \
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
    --body '{"claim_timeout": 8, "creation_timeout": 86, "default_version": "TK8JUCxC", "port": 44, "ports": {"OeD55Evg": 33, "3fiUtAlq": 27, "A5F365WA": 31}, "protocol": "hY9PX9LL", "providers": ["nO00jRkr", "Bnaoejwu", "iebJusgh"], "session_timeout": 16, "unreachable_timeout": 8}' \
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
    --body '{"claim_timeout": 9, "creation_timeout": 41, "default_version": "3JVJj8RM", "port": 99, "protocol": "m99VHQ7U", "providers": ["kyOAoV4k", "MOjshvnL", "4zxBwexk"], "session_timeout": 74, "unreachable_timeout": 42}' \
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
    --name 'n7o1N4B1' \
    --count '28' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 16 'GetAllDeployment' test.out

#- 17 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment '8jJFpRgu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetDeployment' test.out

#- 18 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'Hmeox55r' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 75, "buffer_percent": 70, "configuration": "2qkaDGjd", "enable_region_overrides": true, "extendable_session": true, "game_version": "VMOG87MR", "max_count": 68, "min_count": 78, "overrides": {"NKzVU1mE": {"buffer_count": 89, "buffer_percent": 54, "configuration": "x43CFdrb", "enable_region_overrides": true, "extendable_session": false, "game_version": "G8m7tgwZ", "max_count": 11, "min_count": 63, "name": "6o3YBzup", "region_overrides": {"xt1Wi5yA": {"buffer_count": 61, "buffer_percent": 23, "max_count": 71, "min_count": 30, "name": "3CS6Pbb8", "unlimited": false, "use_buffer_percent": true}, "nP8Dka2r": {"buffer_count": 23, "buffer_percent": 57, "max_count": 77, "min_count": 60, "name": "nlBpSOyB", "unlimited": false, "use_buffer_percent": true}, "VbficG1a": {"buffer_count": 2, "buffer_percent": 43, "max_count": 95, "min_count": 19, "name": "CRvyM7Fv", "unlimited": false, "use_buffer_percent": false}}, "regions": ["aimnIVnx", "iexbbMZj", "fRz9wKnT"], "session_timeout": 9, "unlimited": false, "use_buffer_percent": false}, "4AcxA7AL": {"buffer_count": 11, "buffer_percent": 48, "configuration": "a7nKNjEW", "enable_region_overrides": false, "extendable_session": false, "game_version": "8ac8BbJt", "max_count": 23, "min_count": 37, "name": "mflMjJnU", "region_overrides": {"JEL9ov6i": {"buffer_count": 76, "buffer_percent": 86, "max_count": 34, "min_count": 39, "name": "7XMp1Y8w", "unlimited": true, "use_buffer_percent": true}, "dY4EzR3r": {"buffer_count": 87, "buffer_percent": 16, "max_count": 71, "min_count": 57, "name": "WVS4rF1h", "unlimited": false, "use_buffer_percent": false}, "EU7wpM30": {"buffer_count": 50, "buffer_percent": 63, "max_count": 88, "min_count": 95, "name": "nl3iBJSg", "unlimited": true, "use_buffer_percent": false}}, "regions": ["adttefeM", "w94kiame", "YAgg1wKX"], "session_timeout": 100, "unlimited": false, "use_buffer_percent": true}, "fGTVbma3": {"buffer_count": 37, "buffer_percent": 66, "configuration": "yXjpr1qa", "enable_region_overrides": false, "extendable_session": true, "game_version": "D7zbf7LO", "max_count": 49, "min_count": 19, "name": "kjgmS9iD", "region_overrides": {"yqakDUOH": {"buffer_count": 7, "buffer_percent": 24, "max_count": 68, "min_count": 56, "name": "NVaXYG2m", "unlimited": false, "use_buffer_percent": true}, "DMAx2WGm": {"buffer_count": 33, "buffer_percent": 72, "max_count": 37, "min_count": 84, "name": "XdR50qpW", "unlimited": false, "use_buffer_percent": false}, "p9uf2Xc0": {"buffer_count": 31, "buffer_percent": 76, "max_count": 43, "min_count": 16, "name": "xvCB2W12", "unlimited": false, "use_buffer_percent": false}}, "regions": ["30iHrcVe", "k7fHj7AR", "w2VuWjZv"], "session_timeout": 61, "unlimited": true, "use_buffer_percent": false}}, "region_overrides": {"v5O0W0Ky": {"buffer_count": 71, "buffer_percent": 11, "max_count": 83, "min_count": 13, "name": "HEDVVgkx", "unlimited": false, "use_buffer_percent": false}, "oseZpgtN": {"buffer_count": 20, "buffer_percent": 40, "max_count": 1, "min_count": 67, "name": "f7i9k3co", "unlimited": true, "use_buffer_percent": true}, "LIPTV54V": {"buffer_count": 91, "buffer_percent": 99, "max_count": 57, "min_count": 20, "name": "MjQZr3jY", "unlimited": true, "use_buffer_percent": true}}, "regions": ["mcfjqXU9", "QsR7pswC", "yTKsve2k"], "session_timeout": 86, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 18 'CreateDeployment' test.out

#- 19 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'kUCT70VL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'DeleteDeployment' test.out

#- 20 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'sp12xBIu' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 35, "buffer_percent": 85, "configuration": "LVoOCzow", "enable_region_overrides": false, "extendable_session": true, "game_version": "0n1YZaHF", "max_count": 26, "min_count": 53, "regions": ["jXA9Ps4k", "t4iaGAOm", "QAnoHWMm"], "session_timeout": 32, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateDeployment' test.out

#- 21 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'uALO2OCX' \
    --namespace $AB_NAMESPACE \
    --region 'vttzoZwj' \
    --body '{"buffer_count": 65, "buffer_percent": 80, "max_count": 26, "min_count": 25, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'CreateRootRegionOverride' test.out

#- 22 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'RfNfSZD7' \
    --namespace $AB_NAMESPACE \
    --region 'j2EZPTcF' \
    > test.out 2>&1
eval_tap $? 22 'DeleteRootRegionOverride' test.out

#- 23 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'ICdMOsBi' \
    --namespace $AB_NAMESPACE \
    --region 'IM0kJ1ef' \
    --body '{"buffer_count": 59, "buffer_percent": 76, "max_count": 94, "min_count": 64, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 23 'UpdateRootRegionOverride' test.out

#- 24 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'nFX64KIw' \
    --namespace $AB_NAMESPACE \
    --version '0IgF9l4J' \
    --body '{"buffer_count": 97, "buffer_percent": 43, "configuration": "UFdyhIEW", "enable_region_overrides": false, "extendable_session": false, "game_version": "rga20xTq", "max_count": 80, "min_count": 34, "region_overrides": {"keFZttm6": {"buffer_count": 73, "buffer_percent": 21, "max_count": 98, "min_count": 4, "name": "7nlwNowm", "unlimited": false, "use_buffer_percent": false}, "IV5Hwvfw": {"buffer_count": 8, "buffer_percent": 2, "max_count": 2, "min_count": 15, "name": "MXYlLciW", "unlimited": true, "use_buffer_percent": true}, "0yoomy94": {"buffer_count": 17, "buffer_percent": 47, "max_count": 65, "min_count": 45, "name": "FfYdTZpq", "unlimited": true, "use_buffer_percent": false}}, "regions": ["z9QgOvNi", "eB6J8B9Y", "fvMvn3Jm"], "session_timeout": 23, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 24 'CreateDeploymentOverride' test.out

#- 25 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'htytOsMF' \
    --namespace $AB_NAMESPACE \
    --version 'JbM2vSnQ' \
    > test.out 2>&1
eval_tap $? 25 'DeleteDeploymentOverride' test.out

#- 26 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'cjTiJb3o' \
    --namespace $AB_NAMESPACE \
    --version 'Sm3neuMN' \
    --body '{"buffer_count": 1, "buffer_percent": 29, "configuration": "xgllAlP4", "enable_region_overrides": false, "game_version": "DorcxGg4", "max_count": 39, "min_count": 6, "regions": ["fWdzVT0H", "6IteVSuD", "kZnWpdS0"], "session_timeout": 87, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 26 'UpdateDeploymentOverride' test.out

#- 27 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'YIRmgRCH' \
    --namespace $AB_NAMESPACE \
    --region 'rLPqO3bG' \
    --version 'w4pdw1Di' \
    --body '{"buffer_count": 48, "buffer_percent": 61, "max_count": 91, "min_count": 60, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 27 'CreateOverrideRegionOverride' test.out

#- 28 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'iDfMNGwL' \
    --namespace $AB_NAMESPACE \
    --region 'VMiaJ0AX' \
    --version 'HBeqTBYC' \
    > test.out 2>&1
eval_tap $? 28 'DeleteOverrideRegionOverride' test.out

#- 29 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'rBv7lZ5c' \
    --namespace $AB_NAMESPACE \
    --region 'O5bjPjwX' \
    --version 'acQHwY1n' \
    --body '{"buffer_count": 59, "buffer_percent": 85, "max_count": 42, "min_count": 4, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 29 'UpdateOverrideRegionOverride' test.out

#- 30 DeleteCreatingServerCountQueue
samples/cli/sample-apps Dsmc deleteCreatingServerCountQueue \
    --deployment 'Q8odaGIW' \
    --namespace $AB_NAMESPACE \
    --version '10aCbitP' \
    > test.out 2>&1
eval_tap $? 30 'DeleteCreatingServerCountQueue' test.out

#- 31 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '7' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 31 'GetAllPodConfig' test.out

#- 32 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'tNucgORI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'GetPodConfig' test.out

#- 33 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'AVAc9L3x' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 100, "mem_limit": 53, "params": "aZRos6YF"}' \
    > test.out 2>&1
eval_tap $? 33 'CreatePodConfig' test.out

#- 34 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'NBTs1V6C' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePodConfig' test.out

#- 35 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name '1tYtbyTQ' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 1, "mem_limit": 29, "name": "sZBVXqbS", "params": "8Cd64qr3"}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePodConfig' test.out

#- 36 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'mwJY4Lta' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 56}' \
    > test.out 2>&1
eval_tap $? 36 'AddPort' test.out

#- 37 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'NOFV4iR6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'DeletePort' test.out

#- 38 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'a3R4IX28' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "FZjQk8fk", "port": 94}' \
    > test.out 2>&1
eval_tap $? 38 'UpdatePort' test.out

#- 39 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'j6EuqxMF' \
    --sortBy 'createdAt' \
    --sortDirection 'asc' \
    --count '47' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 39 'ListImages' test.out

#- 40 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI '1f4ZhmGU' \
    --version 'LMzpBvGd' \
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
    --imageURI 'cOivumvM' \
    --version 'FI8P4S35' \
    --versionPatch 'yxsptpyu' \
    > test.out 2>&1
eval_tap $? 42 'DeleteImagePatch' test.out

#- 43 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'ExF37z9i' \
    > test.out 2>&1
eval_tap $? 43 'GetImageDetail' test.out

#- 44 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'apRNLXfu' \
    > test.out 2>&1
eval_tap $? 44 'GetImagePatches' test.out

#- 45 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'aUFTFWA7' \
    --versionPatch 'BA18bRIN' \
    > test.out 2>&1
eval_tap $? 45 'GetImagePatchDetail' test.out

#- 46 AddBuffer
samples/cli/sample-apps Dsmc addBuffer \
    --namespace $AB_NAMESPACE \
    --body '{"AllocCount": 4, "DeploymentName": "sgwrGfyX", "JobCount": 11, "JobPriority": 9, "OverrideVersion": "DFKMatfK", "Region": "ZwYB14bF"}' \
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
    --region 'gVgmf9uH' \
    --count '11' \
    --offset '89' \
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
    --region '2O9uZu7N' \
    > test.out 2>&1
eval_tap $? 50 'CountServerDetailed' test.out

#- 51 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'ListLocalServer' test.out

#- 52 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'dNQxKoxz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'DeleteLocalServer' test.out

#- 53 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'zBfOWkbx' \
    > test.out 2>&1
eval_tap $? 53 'GetServer' test.out

#- 54 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'fZcuRVqt' \
    > test.out 2>&1
eval_tap $? 54 'DeleteServer' test.out

#- 55 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'B9hmKMsf' \
    --withServer 'true' \
    --count '79' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 55 'ListSession' test.out

#- 56 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region '4aI4hne1' \
    > test.out 2>&1
eval_tap $? 56 'CountSession' test.out

#- 57 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'RuVa3Agj' \
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
    --body '{"JobCount": 73, "Region": "n8njK3ff", "TimeoutSecond": 60, "ZombieCount": 12}' \
    > test.out 2>&1
eval_tap $? 59 'RunZombieCleanerRequestHandler' test.out

#- 60 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "CgG1SJUB", "repository": "FiOCvKe9"}' \
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
    --name 'AIpbIDiN' \
    --count '43' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 63 'GetAllDeploymentClient' test.out

#- 64 GetDeploymentClient
samples/cli/sample-apps Dsmc getDeploymentClient \
    --deployment '5I8fKtC3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetDeploymentClient' test.out

#- 65 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment 'ijUWioKF' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 38, "buffer_percent": 74, "configuration": "PUoIAGc1", "enable_region_overrides": true, "extendable_session": false, "game_version": "krtIMDx2", "max_count": 73, "min_count": 98, "overrides": {"DwKxpkRv": {"buffer_count": 8, "buffer_percent": 71, "configuration": "c0s2GRbO", "enable_region_overrides": false, "extendable_session": false, "game_version": "TDmJk295", "max_count": 43, "min_count": 33, "name": "NraJCc4h", "region_overrides": {"zzsOnOqf": {"buffer_count": 39, "buffer_percent": 90, "max_count": 41, "min_count": 46, "name": "T2914rlW", "unlimited": true, "use_buffer_percent": false}, "Q0CTqBIh": {"buffer_count": 31, "buffer_percent": 65, "max_count": 89, "min_count": 44, "name": "6NFoBCxk", "unlimited": false, "use_buffer_percent": true}, "5QsAqF8G": {"buffer_count": 63, "buffer_percent": 53, "max_count": 18, "min_count": 64, "name": "BbKDTHek", "unlimited": true, "use_buffer_percent": true}}, "regions": ["QtMFdrmg", "Uq5I0RJW", "nRWO3lfh"], "session_timeout": 88, "unlimited": false, "use_buffer_percent": true}, "zuCqqSaD": {"buffer_count": 87, "buffer_percent": 50, "configuration": "G7xbLdDO", "enable_region_overrides": false, "extendable_session": true, "game_version": "fnN63H7m", "max_count": 28, "min_count": 4, "name": "2h8N57Lr", "region_overrides": {"B53QSV8g": {"buffer_count": 27, "buffer_percent": 88, "max_count": 64, "min_count": 49, "name": "L7vgyx3a", "unlimited": true, "use_buffer_percent": true}, "M9VoXBwR": {"buffer_count": 44, "buffer_percent": 22, "max_count": 98, "min_count": 33, "name": "LKGDcRL4", "unlimited": true, "use_buffer_percent": true}, "mMSDqOzC": {"buffer_count": 16, "buffer_percent": 86, "max_count": 97, "min_count": 48, "name": "arvVu3ew", "unlimited": false, "use_buffer_percent": true}}, "regions": ["r66Lxqa2", "QbUDuwyD", "buZ3S6mA"], "session_timeout": 92, "unlimited": false, "use_buffer_percent": true}, "nDK495Gc": {"buffer_count": 8, "buffer_percent": 9, "configuration": "2plGOQDK", "enable_region_overrides": true, "extendable_session": false, "game_version": "33MVnkyF", "max_count": 47, "min_count": 82, "name": "iygMrp1f", "region_overrides": {"fLKAIjpd": {"buffer_count": 1, "buffer_percent": 32, "max_count": 55, "min_count": 67, "name": "EsMGf4vr", "unlimited": true, "use_buffer_percent": false}, "7gygiUaV": {"buffer_count": 5, "buffer_percent": 91, "max_count": 62, "min_count": 11, "name": "umQqRzSH", "unlimited": true, "use_buffer_percent": false}, "RTWiI7EN": {"buffer_count": 32, "buffer_percent": 11, "max_count": 4, "min_count": 33, "name": "W2MG6XmZ", "unlimited": false, "use_buffer_percent": true}}, "regions": ["Uyz3ypGd", "1w3YvwR7", "jqhh23B7"], "session_timeout": 90, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"RaOrxNQK": {"buffer_count": 26, "buffer_percent": 96, "max_count": 90, "min_count": 90, "name": "zSa93F54", "unlimited": true, "use_buffer_percent": false}, "zIzEByZe": {"buffer_count": 2, "buffer_percent": 15, "max_count": 55, "min_count": 24, "name": "rdKsutVb", "unlimited": true, "use_buffer_percent": true}, "Vsmul5e7": {"buffer_count": 64, "buffer_percent": 82, "max_count": 22, "min_count": 98, "name": "dKX4vi9K", "unlimited": true, "use_buffer_percent": true}}, "regions": ["2iYfWVp9", "CH8UCnxA", "IHWoSQ8E"], "session_timeout": 28, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 65 'CreateDeploymentClient' test.out

#- 66 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment '3Km7b2bL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'DeleteDeploymentClient' test.out

#- 67 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '22' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 67 'GetAllPodConfigClient' test.out

#- 68 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'rRvFiIgL' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 20, "mem_limit": 26, "params": "h2ree1qC"}' \
    > test.out 2>&1
eval_tap $? 68 'CreatePodConfigClient' test.out

#- 69 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name '4FoWv7zj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'DeletePodConfigClient' test.out

#- 70 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '99' \
    --offset '40' \
    --q 'NFJa12sR' \
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
    --version '5v3J5xRe' \
    > test.out 2>&1
eval_tap $? 72 'ImageDetailClient' test.out

#- 73 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'oY4R0aUf' \
    --count '73' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 73 'ListServerClient' test.out

#- 74 CountServerDetailedClient
samples/cli/sample-apps Dsmc countServerDetailedClient \
    --namespace $AB_NAMESPACE \
    --region 'y7ZDBqFo' \
    > test.out 2>&1
eval_tap $? 74 'CountServerDetailedClient' test.out

#- 75 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "ZMO1iz0c"}' \
    > test.out 2>&1
eval_tap $? 75 'ServerHeartbeat' test.out

#- 76 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "wKCNB3mR"}' \
    > test.out 2>&1
eval_tap $? 76 'DeregisterLocalServer' test.out

#- 77 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "dNUc7eQJ", "ip": "qqzcAIxE", "name": "LNCJdyho", "port": 57}' \
    > test.out 2>&1
eval_tap $? 77 'RegisterLocalServer' test.out

#- 78 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "ybwA8oBe", "pod_name": "WSenEIPb"}' \
    > test.out 2>&1
eval_tap $? 78 'RegisterServer' test.out

#- 79 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "zbAiVX08"}' \
    > test.out 2>&1
eval_tap $? 79 'ShutdownServer' test.out

#- 80 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'eem6fLrm' \
    > test.out 2>&1
eval_tap $? 80 'GetServerSessionTimeout' test.out

#- 81 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'lXTH5O5E' \
    > test.out 2>&1
eval_tap $? 81 'GetServerSession' test.out

#- 82 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "UDpLlPEx", "configuration": "JBmMyYdC", "deployment": "TcDEfBnj", "game_mode": "vBJo8a4w", "matching_allies": [{"matching_parties": [{"party_attributes": {"IUjjA6UH": {}, "AGVSJ8yb": {}, "4Kk2uNeN": {}}, "party_id": "OhrdXFy3", "party_members": [{"user_id": "XerrIFHI"}, {"user_id": "r5wjkOeT"}, {"user_id": "aog3tsx2"}]}, {"party_attributes": {"sw7vXGo2": {}, "2QjgGEsu": {}, "8OnfBu9D": {}}, "party_id": "d4BsPMaz", "party_members": [{"user_id": "Qtxa6cYS"}, {"user_id": "XYWXGjsQ"}, {"user_id": "a3oeEKde"}]}, {"party_attributes": {"TSfIZ1Sv": {}, "Omcr51Xl": {}, "eWt6lB6l": {}}, "party_id": "kPW3XfXp", "party_members": [{"user_id": "NQfsaHU7"}, {"user_id": "7B70x6Zy"}, {"user_id": "mvLeq6Vd"}]}]}, {"matching_parties": [{"party_attributes": {"ghqihRNV": {}, "LycSAm2D": {}, "sGuqhvrS": {}}, "party_id": "lIfhyzdl", "party_members": [{"user_id": "he4KlLj0"}, {"user_id": "rbR0pGHo"}, {"user_id": "cYR8SDNu"}]}, {"party_attributes": {"JKhfQQAr": {}, "WJ4fuiGA": {}, "xA60o7dw": {}}, "party_id": "uvsWWrFL", "party_members": [{"user_id": "0L2XdkAI"}, {"user_id": "e9WyS9nA"}, {"user_id": "Z5xJ52Wt"}]}, {"party_attributes": {"SeHuNdWN": {}, "pKegqk3j": {}, "eSGmXbnX": {}}, "party_id": "CqjixjGu", "party_members": [{"user_id": "vitU6BgC"}, {"user_id": "VvfBGIPE"}, {"user_id": "xEVDRSyN"}]}]}, {"matching_parties": [{"party_attributes": {"Dd86YORj": {}, "SuH96NAa": {}, "ylJD4wRd": {}}, "party_id": "Px2jMKfc", "party_members": [{"user_id": "6Nff74LG"}, {"user_id": "vyJzways"}, {"user_id": "ddU4SOuP"}]}, {"party_attributes": {"Df5QhPEl": {}, "8GXVeKIF": {}, "gtfzKlDJ": {}}, "party_id": "hlKgFDOq", "party_members": [{"user_id": "xakoKzF9"}, {"user_id": "GrMPGLzt"}, {"user_id": "s07RQbgd"}]}, {"party_attributes": {"hFP4oNOk": {}, "um4yuN7f": {}, "srYU7Gj8": {}}, "party_id": "NHJhQWuh", "party_members": [{"user_id": "4EXBelJb"}, {"user_id": "zWY39fmC"}, {"user_id": "5CEVVCRO"}]}]}], "namespace": "mctE1Gyl", "notification_payload": {}, "pod_name": "UBUdWFPp", "region": "iVqp2JFL", "session_id": "Mq93AVX4"}' \
    > test.out 2>&1
eval_tap $? 82 'CreateSession' test.out

#- 83 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"game_mode": "yqqoRdSp", "matching_allies": [{"matching_parties": [{"party_attributes": {"wz0QcMlK": {}, "HwUOal1a": {}, "eF9PQYCt": {}}, "party_id": "O6icTIkA", "party_members": [{"user_id": "PYqQ2Rs9"}, {"user_id": "9AndIwOC"}, {"user_id": "ZhYTNOEG"}]}, {"party_attributes": {"3gWhb9IS": {}, "di3MVIzK": {}, "6TWNB9yu": {}}, "party_id": "ZcxUJHJy", "party_members": [{"user_id": "3PHMXjkT"}, {"user_id": "VEFuXMZG"}, {"user_id": "Lu6aorg1"}]}, {"party_attributes": {"WMcVGxAC": {}, "SzGjwLvR": {}, "jjZ0vjes": {}}, "party_id": "x1JDI848", "party_members": [{"user_id": "kKIKE2e0"}, {"user_id": "Pfmy0LHk"}, {"user_id": "CrdzDZPW"}]}]}, {"matching_parties": [{"party_attributes": {"3Lo3lhV3": {}, "tw6fHvxQ": {}, "zoGLjwfR": {}}, "party_id": "SiKkB4Ri", "party_members": [{"user_id": "epFP5H9e"}, {"user_id": "GbVFhEa6"}, {"user_id": "tL37EZyg"}]}, {"party_attributes": {"xD7LKWZA": {}, "SDURKFTB": {}, "HIfbxp4W": {}}, "party_id": "wzu9SIz1", "party_members": [{"user_id": "DfuMwLe1"}, {"user_id": "wcTdRMSX"}, {"user_id": "SZRavctj"}]}, {"party_attributes": {"xa6TeTt6": {}, "I6tB8zZc": {}, "dY3wC5hc": {}}, "party_id": "xLL3A8mx", "party_members": [{"user_id": "TagRpCMX"}, {"user_id": "ArqHaeNb"}, {"user_id": "6ZbXefQo"}]}]}, {"matching_parties": [{"party_attributes": {"sDkF6DWi": {}, "Dl1M04dj": {}, "tVVgGNa6": {}}, "party_id": "iKpkbuJw", "party_members": [{"user_id": "x07TiXfO"}, {"user_id": "APaS4n2Y"}, {"user_id": "Cqa1ZV7w"}]}, {"party_attributes": {"OHrmJjM8": {}, "Bb10RjGj": {}, "IFcfpDbU": {}}, "party_id": "xkXw8GWX", "party_members": [{"user_id": "FHAkUJRd"}, {"user_id": "PupguQDW"}, {"user_id": "vGQkVBPD"}]}, {"party_attributes": {"6PbUxKAc": {}, "sRLXeiNB": {}, "VS5yOIjn": {}}, "party_id": "7JA2bCxo", "party_members": [{"user_id": "BU9kV9b8"}, {"user_id": "HTMSOwhP"}, {"user_id": "eUaKwmY0"}]}]}], "namespace": "0LhRN7wn", "notification_payload": {}, "session_id": "Hi8tNsuc"}' \
    > test.out 2>&1
eval_tap $? 83 'ClaimServer' test.out

#- 84 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'nihDlA3h' \
    > test.out 2>&1
eval_tap $? 84 'GetSession' test.out

#- 85 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'AUWveOFb' \
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
    --region 'T9WAt0SR' \
    > test.out 2>&1
eval_tap $? 88 'ListProvidersByRegion' test.out

#- 89 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 89 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE