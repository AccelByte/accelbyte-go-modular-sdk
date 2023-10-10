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
    --body '{"artifactPath": "jkrgOalp", "coreDumpEnabled": true, "image": "TK7yT974", "imageReplicationsMap": {"cqHoZ2c7": {"failure_code": "CNmhLAls", "region": "8NhsP1Ky", "status": "OFS7i537", "uri": "jdbjtpUy"}, "P1zt3d4F": {"failure_code": "GbWhsmom", "region": "8TkaiAkO", "status": "Rr326p4m", "uri": "PZpnFrEr"}, "kZVOIk9K": {"failure_code": "liUPP2PV", "region": "yRHcJACE", "status": "ERXGvMAR", "uri": "QRl9RoMD"}}, "namespace": "BYMAvTlM", "patchVersion": "zA6zcBVk", "persistent": false, "version": "DgJDFr7Y"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "4kAMbd5p", "coreDumpEnabled": true, "dockerPath": "EKiuZvRC", "image": "cpt4160d", "imageSize": 45, "namespace": "2TM10qaD", "persistent": false, "ulimitFileSize": 44, "version": "ajmCH1tE"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "ZfGdYgIX", "coreDumpEnabled": false, "dockerPath": "JHIS0wmT", "image": "OnX2KcL4", "imageSize": 48, "namespace": "qyxliABf", "patchVersion": "JsTPT4Td", "persistent": true, "ulimitFileSize": 98, "uploaderFlag": "LrWZWDxM", "version": "Dkb19TwH"}' \
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
    --body '{"claim_timeout": 8, "creation_timeout": 49, "default_version": "nJCkPAyv", "port": 28, "ports": {"vjEakn6m": 49, "XoYymSxW": 4, "uRoiKIdQ": 75}, "protocol": "8MIpf4OD", "providers": ["IxNx63qB", "qpop77vV", "XrqCzsbp"], "session_timeout": 59, "unreachable_timeout": 13}' \
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
    --body '{"claim_timeout": 62, "creation_timeout": 61, "default_version": "FonClMWm", "port": 54, "protocol": "gEVR9KDz", "providers": ["mlWUYvZX", "2itvJJkA", "OPToPG8h"], "session_timeout": 42, "unreachable_timeout": 95}' \
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
    --name 'RMpUe9gz' \
    --count '24' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'I52Xk40W' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'gLE5A4uX' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 77, "buffer_percent": 12, "configuration": "8PaP8Cem", "enable_region_overrides": true, "extendable_session": true, "game_version": "GVv5Qpbu", "max_count": 87, "min_count": 53, "overrides": {"5dYB8jaV": {"buffer_count": 72, "buffer_percent": 5, "configuration": "r4jukWp6", "enable_region_overrides": true, "extendable_session": false, "game_version": "ie1VCU0B", "max_count": 86, "min_count": 65, "name": "Cr9CoIfy", "region_overrides": {"Gfmfjg7N": {"buffer_count": 49, "buffer_percent": 34, "max_count": 21, "min_count": 90, "name": "piYGZRzQ", "unlimited": false, "use_buffer_percent": false}, "rvmURkRv": {"buffer_count": 85, "buffer_percent": 100, "max_count": 58, "min_count": 76, "name": "5sJxHIzF", "unlimited": true, "use_buffer_percent": true}, "8EAgVQtv": {"buffer_count": 82, "buffer_percent": 22, "max_count": 34, "min_count": 32, "name": "jhaE3zWk", "unlimited": false, "use_buffer_percent": true}}, "regions": ["OjQqqnP6", "ktOgA02t", "yMup6uzx"], "session_timeout": 22, "unlimited": false, "use_buffer_percent": true}, "BXQy6QbC": {"buffer_count": 78, "buffer_percent": 73, "configuration": "yaYqmt2T", "enable_region_overrides": false, "extendable_session": false, "game_version": "2BttL5hH", "max_count": 23, "min_count": 63, "name": "BXKKYoxw", "region_overrides": {"S076XTC1": {"buffer_count": 96, "buffer_percent": 40, "max_count": 14, "min_count": 42, "name": "ZnRaz2Kj", "unlimited": true, "use_buffer_percent": true}, "yZT5buv0": {"buffer_count": 29, "buffer_percent": 77, "max_count": 8, "min_count": 10, "name": "hr8xBhvd", "unlimited": false, "use_buffer_percent": true}, "2dq2JNPa": {"buffer_count": 97, "buffer_percent": 94, "max_count": 80, "min_count": 81, "name": "Aik307WL", "unlimited": true, "use_buffer_percent": false}}, "regions": ["x0Ptn3i2", "DNHch0nz", "HvkNsNd6"], "session_timeout": 50, "unlimited": true, "use_buffer_percent": false}, "VmHGAOHa": {"buffer_count": 44, "buffer_percent": 59, "configuration": "gNSzQOaZ", "enable_region_overrides": true, "extendable_session": false, "game_version": "t5qyY4xk", "max_count": 22, "min_count": 2, "name": "eSt7dG67", "region_overrides": {"XbMlcyo6": {"buffer_count": 80, "buffer_percent": 18, "max_count": 20, "min_count": 85, "name": "srmWDtng", "unlimited": false, "use_buffer_percent": true}, "CYxkwDxP": {"buffer_count": 2, "buffer_percent": 62, "max_count": 71, "min_count": 24, "name": "DLuALiDH", "unlimited": false, "use_buffer_percent": true}, "RmQgPymP": {"buffer_count": 46, "buffer_percent": 95, "max_count": 64, "min_count": 76, "name": "VBMn6pHJ", "unlimited": false, "use_buffer_percent": false}}, "regions": ["ju643Gns", "lvkFtzIL", "bDFQCCjD"], "session_timeout": 22, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"UJ1Ma4lT": {"buffer_count": 93, "buffer_percent": 67, "max_count": 20, "min_count": 35, "name": "bKklZn1w", "unlimited": true, "use_buffer_percent": false}, "pr2WJofm": {"buffer_count": 70, "buffer_percent": 96, "max_count": 7, "min_count": 75, "name": "9u9IYRsh", "unlimited": true, "use_buffer_percent": false}, "mQoWIHDH": {"buffer_count": 64, "buffer_percent": 89, "max_count": 38, "min_count": 35, "name": "fcTAOdMd", "unlimited": false, "use_buffer_percent": false}}, "regions": ["EvaLYZCQ", "kxpOoiwP", "K52WYrxR"], "session_timeout": 25, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'qTtybDmm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'wMTQ1g2h' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 35, "buffer_percent": 16, "configuration": "MEnAHsjh", "enable_region_overrides": true, "extendable_session": true, "game_version": "0uWtqMua", "max_count": 29, "min_count": 78, "regions": ["nv8UXO10", "dO9JFRZU", "PoqCgBoD"], "session_timeout": 67, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'S2CVVunO' \
    --namespace $AB_NAMESPACE \
    --region 'ITYCHoMW' \
    --body '{"buffer_count": 96, "buffer_percent": 100, "max_count": 54, "min_count": 32, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'kbycFZMx' \
    --namespace $AB_NAMESPACE \
    --region 'wMKL9DAi' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'D26UBTup' \
    --namespace $AB_NAMESPACE \
    --region 'bsHmbEoi' \
    --body '{"buffer_count": 10, "buffer_percent": 18, "max_count": 98, "min_count": 51, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'Y1NUa6mm' \
    --namespace $AB_NAMESPACE \
    --version 'YsCWVf2p' \
    --body '{"buffer_count": 34, "buffer_percent": 20, "configuration": "CVVN773L", "enable_region_overrides": true, "extendable_session": false, "game_version": "bYC4FPYK", "max_count": 22, "min_count": 94, "region_overrides": {"0u4fwgRz": {"buffer_count": 19, "buffer_percent": 39, "max_count": 88, "min_count": 63, "name": "DPHZOUKo", "unlimited": true, "use_buffer_percent": true}, "TtDr8kZV": {"buffer_count": 11, "buffer_percent": 85, "max_count": 0, "min_count": 26, "name": "4BnQ0wGL", "unlimited": false, "use_buffer_percent": false}, "cY85rkYh": {"buffer_count": 76, "buffer_percent": 17, "max_count": 63, "min_count": 71, "name": "zwjFvuxT", "unlimited": true, "use_buffer_percent": false}}, "regions": ["fxy1kZ0u", "77Lnd72V", "mjLCvlcd"], "session_timeout": 5, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'RRh2NoFY' \
    --namespace $AB_NAMESPACE \
    --version 'EZLUGkfh' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'w897q3PE' \
    --namespace $AB_NAMESPACE \
    --version 'kkZdtyEE' \
    --body '{"buffer_count": 80, "buffer_percent": 44, "configuration": "faSPojx9", "enable_region_overrides": false, "game_version": "uYY8wwzG", "max_count": 14, "min_count": 94, "regions": ["W1IUBsJf", "w0W7UxCi", "S16x64Si"], "session_timeout": 67, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'tJLxtGWt' \
    --namespace $AB_NAMESPACE \
    --region 'A0V91qE4' \
    --version 'XCjnzdcW' \
    --body '{"buffer_count": 21, "buffer_percent": 81, "max_count": 66, "min_count": 15, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'uolMhUKC' \
    --namespace $AB_NAMESPACE \
    --region 'EK7elLp9' \
    --version 'iu2Sh0cK' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'ecyNPQWC' \
    --namespace $AB_NAMESPACE \
    --region 'OiCm79Hi' \
    --version 'AenSAdcN' \
    --body '{"buffer_count": 21, "buffer_percent": 17, "max_count": 84, "min_count": 59, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '87' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'IASuISYg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'KbDErjfl' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 8, "mem_limit": 59, "params": "M21Dl4v5"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'lFjL70EA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'lbOiNW2L' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 41, "mem_limit": 42, "name": "YnKY05Bg", "params": "zR1vojzG"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'kosk2o5Y' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 60}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name '6RUF605l' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name '98nzM5wI' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "F4a7kbo4", "port": 58}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'zaCeDAOT' \
    --sortBy 'version' \
    --sortDirection 'asc' \
    --count '49' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'f8XSozfW' \
    --version 'orkwB5Rt' \
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
    --imageURI '3DAJjIXN' \
    --version '8epz5ILw' \
    --versionPatch 'aC3xhQj9' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'WWZhADkw' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 's1M8RqcA' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'GGMR0YGM' \
    --versionPatch 'UjWnGXVT' \
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
    --region 'gs0hTcZx' \
    --count '55' \
    --offset '96' \
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
    --region 'Bf7m7vNU' \
    > test.out 2>&1
eval_tap $? 47 'CountServerDetailed' test.out

#- 48 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'ListLocalServer' test.out

#- 49 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'Lm5oxbaD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'DeleteLocalServer' test.out

#- 50 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'F4voeUFi' \
    > test.out 2>&1
eval_tap $? 50 'GetServer' test.out

#- 51 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'S65XqUkm' \
    > test.out 2>&1
eval_tap $? 51 'DeleteServer' test.out

#- 52 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'udAimj7h' \
    --withServer 'false' \
    --count '61' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 52 'ListSession' test.out

#- 53 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'TA976Jry' \
    > test.out 2>&1
eval_tap $? 53 'CountSession' test.out

#- 54 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'oYYzgDmq' \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "IicsoUKr", "repository": "DHggzKzd"}' \
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
    --name 'Smk1Ndzm' \
    --count '27' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 58 'GetAllDeploymentClient' test.out

#- 59 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment 'f3o75y7B' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 83, "buffer_percent": 43, "configuration": "ubIRw9m5", "enable_region_overrides": true, "extendable_session": false, "game_version": "QpJTFnlb", "max_count": 28, "min_count": 8, "overrides": {"9BiQlekJ": {"buffer_count": 26, "buffer_percent": 60, "configuration": "Fir57vCO", "enable_region_overrides": false, "extendable_session": true, "game_version": "gX8ydat8", "max_count": 26, "min_count": 15, "name": "FRvI7Eth", "region_overrides": {"s9AMy1Yd": {"buffer_count": 57, "buffer_percent": 8, "max_count": 49, "min_count": 77, "name": "RCfi2czw", "unlimited": false, "use_buffer_percent": true}, "7hPJ1ZAz": {"buffer_count": 64, "buffer_percent": 82, "max_count": 75, "min_count": 10, "name": "pehShbZj", "unlimited": false, "use_buffer_percent": false}, "6PKAyreo": {"buffer_count": 3, "buffer_percent": 60, "max_count": 98, "min_count": 7, "name": "b9yMD99q", "unlimited": true, "use_buffer_percent": true}}, "regions": ["buoKDm8h", "VQpRAQZt", "HKIHWOvt"], "session_timeout": 93, "unlimited": true, "use_buffer_percent": false}, "OUFL4EzX": {"buffer_count": 37, "buffer_percent": 16, "configuration": "NY6iOSpz", "enable_region_overrides": false, "extendable_session": true, "game_version": "m7QLrPJO", "max_count": 41, "min_count": 70, "name": "Y8nDzP3B", "region_overrides": {"HmmQ1VVP": {"buffer_count": 28, "buffer_percent": 83, "max_count": 19, "min_count": 81, "name": "n7F9nMR1", "unlimited": true, "use_buffer_percent": true}, "uhJeTA7y": {"buffer_count": 97, "buffer_percent": 36, "max_count": 28, "min_count": 36, "name": "iOQ1lqpw", "unlimited": true, "use_buffer_percent": false}, "ueTTZizC": {"buffer_count": 50, "buffer_percent": 42, "max_count": 35, "min_count": 82, "name": "TwMi9LjW", "unlimited": false, "use_buffer_percent": true}}, "regions": ["LoHexorw", "lCtlVpLf", "Y6H6HkmK"], "session_timeout": 71, "unlimited": false, "use_buffer_percent": false}, "3F0ygEAW": {"buffer_count": 66, "buffer_percent": 65, "configuration": "D9euzkcO", "enable_region_overrides": true, "extendable_session": false, "game_version": "G9Vp0sxV", "max_count": 68, "min_count": 55, "name": "Pk5tex2y", "region_overrides": {"ZnGfxjbQ": {"buffer_count": 1, "buffer_percent": 48, "max_count": 3, "min_count": 39, "name": "tfWMwY6m", "unlimited": true, "use_buffer_percent": true}, "y7PiRknu": {"buffer_count": 63, "buffer_percent": 62, "max_count": 93, "min_count": 37, "name": "hYXzh7in", "unlimited": false, "use_buffer_percent": false}, "urzA8gdA": {"buffer_count": 23, "buffer_percent": 11, "max_count": 27, "min_count": 96, "name": "OHt1Quv0", "unlimited": false, "use_buffer_percent": true}}, "regions": ["wiJyW0hg", "HY0CtYAU", "LrNPG7ZT"], "session_timeout": 84, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"fAB5Zecw": {"buffer_count": 68, "buffer_percent": 51, "max_count": 76, "min_count": 82, "name": "VE3Iw8tK", "unlimited": false, "use_buffer_percent": false}, "oQt6WnlS": {"buffer_count": 22, "buffer_percent": 16, "max_count": 92, "min_count": 77, "name": "KsszMpfq", "unlimited": true, "use_buffer_percent": true}, "0vlX3i4A": {"buffer_count": 48, "buffer_percent": 94, "max_count": 61, "min_count": 73, "name": "nRUwvdnY", "unlimited": true, "use_buffer_percent": false}}, "regions": ["t5Zu1CMD", "UYbOETSY", "sNp1ea2x"], "session_timeout": 45, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 59 'CreateDeploymentClient' test.out

#- 60 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'rZNIDpWi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteDeploymentClient' test.out

#- 61 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '51' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 61 'GetAllPodConfigClient' test.out

#- 62 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name '5nBNQwvp' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 67, "mem_limit": 82, "params": "UWpqXJyM"}' \
    > test.out 2>&1
eval_tap $? 62 'CreatePodConfigClient' test.out

#- 63 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name '9wfbUiID' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeletePodConfigClient' test.out

#- 64 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '53' \
    --offset '97' \
    --q 'R8DVKlk1' \
    --sortBy 'updatedAt' \
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
    --version 'XmAkiPC1' \
    > test.out 2>&1
eval_tap $? 66 'ImageDetailClient' test.out

#- 67 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'RkDQeXxq' \
    --count '81' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 67 'ListServerClient' test.out

#- 68 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "lfPwuC1u"}' \
    > test.out 2>&1
eval_tap $? 68 'ServerHeartbeat' test.out

#- 69 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "JKmUh2g8"}' \
    > test.out 2>&1
eval_tap $? 69 'DeregisterLocalServer' test.out

#- 70 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "DrhKhd7e", "ip": "usiZSKI4", "name": "DbfWy6Xq", "port": 62}' \
    > test.out 2>&1
eval_tap $? 70 'RegisterLocalServer' test.out

#- 71 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "x5fT5wsE", "pod_name": "VdYhyxBN"}' \
    > test.out 2>&1
eval_tap $? 71 'RegisterServer' test.out

#- 72 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "GYA3A4yl"}' \
    > test.out 2>&1
eval_tap $? 72 'ShutdownServer' test.out

#- 73 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'SwI0CS59' \
    > test.out 2>&1
eval_tap $? 73 'GetServerSessionTimeout' test.out

#- 74 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'CfKTkCkx' \
    > test.out 2>&1
eval_tap $? 74 'GetServerSession' test.out

#- 75 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "ZzBCvxst", "configuration": "p5jHbDKn", "deployment": "x9LFuy51", "game_mode": "olsmmgAe", "matching_allies": [{"matching_parties": [{"party_attributes": {"drQOu0O3": {}, "61dzajPN": {}, "OPY84ZTC": {}}, "party_id": "avWtJidf", "party_members": [{"user_id": "lhMp8W8k"}, {"user_id": "6zSveNi4"}, {"user_id": "gl1stzgf"}]}, {"party_attributes": {"FzbGedfn": {}, "CiuZmNhy": {}, "XpypC32d": {}}, "party_id": "WneVtokN", "party_members": [{"user_id": "9kvMVIFm"}, {"user_id": "TF2eXhd3"}, {"user_id": "jUt4J0ym"}]}, {"party_attributes": {"MLTOCmrg": {}, "ql6HGRar": {}, "msSRVqwX": {}}, "party_id": "0WMPL4eP", "party_members": [{"user_id": "cwomtZOe"}, {"user_id": "MosmFo8v"}, {"user_id": "k6uoP21y"}]}]}, {"matching_parties": [{"party_attributes": {"WTKtl934": {}, "LzFTQHzd": {}, "qxLCL6M8": {}}, "party_id": "8PgdqIe9", "party_members": [{"user_id": "YrlVLrTd"}, {"user_id": "JUPrln5D"}, {"user_id": "xBFEw7wY"}]}, {"party_attributes": {"n7QEx8mS": {}, "uJfyAC0j": {}, "NFw8vgNm": {}}, "party_id": "v7HkBnpl", "party_members": [{"user_id": "gzEJg82b"}, {"user_id": "Mndj4tgL"}, {"user_id": "BCTgYs17"}]}, {"party_attributes": {"x3lVB7mW": {}, "AZy0nRTo": {}, "haV4715N": {}}, "party_id": "mD3AfeyR", "party_members": [{"user_id": "ZR7BtTdg"}, {"user_id": "nrtCIu7s"}, {"user_id": "8LjrrJaU"}]}]}, {"matching_parties": [{"party_attributes": {"pU5N39gn": {}, "yJ8JWldy": {}, "MSGk35it": {}}, "party_id": "pozLAlK7", "party_members": [{"user_id": "DBQ4cH4m"}, {"user_id": "mmRxWbIo"}, {"user_id": "3MABBwEv"}]}, {"party_attributes": {"CoDDXGpB": {}, "ioezLXgp": {}, "1sGEgpkr": {}}, "party_id": "9XzO8kwA", "party_members": [{"user_id": "a68F2P2u"}, {"user_id": "M0aAsSTE"}, {"user_id": "bnS46fIs"}]}, {"party_attributes": {"0IMyzOUv": {}, "PmITShr3": {}, "eoFN3f2k": {}}, "party_id": "yMgtyB9F", "party_members": [{"user_id": "PCNhnGjL"}, {"user_id": "nXarsLk4"}, {"user_id": "ufgTp5d1"}]}]}], "namespace": "6Wc6Sp9J", "notification_payload": {}, "pod_name": "J6UNVaTx", "region": "RQjxbkYG", "session_id": "A1Ia5JTY"}' \
    > test.out 2>&1
eval_tap $? 75 'CreateSession' test.out

#- 76 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "yQxaJaeq"}' \
    > test.out 2>&1
eval_tap $? 76 'ClaimServer' test.out

#- 77 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'f8XxCFyp' \
    > test.out 2>&1
eval_tap $? 77 'GetSession' test.out

#- 78 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'vyJmGMSh' \
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
    --region 'ArZFeSrx' \
    > test.out 2>&1
eval_tap $? 81 'ListProvidersByRegion' test.out

#- 82 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 82 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE