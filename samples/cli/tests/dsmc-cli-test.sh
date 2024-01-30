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
    --body '{"artifactPath": "7A7FIgTN", "coreDumpEnabled": true, "image": "Nl5aTXwj", "imageReplicationsMap": {"kXVHJqpr": {"failure_code": "Wct2Qznk", "region": "MkkVEExB", "status": "tbv9kI5X", "uri": "ShqYiaDH"}, "6e0CjqB1": {"failure_code": "PDkyjqgL", "region": "8HTWbVbc", "status": "EK8BAl6x", "uri": "R0y4w1Cv"}, "RTTiyOI9": {"failure_code": "LUze0aM1", "region": "FvIF4Pmx", "status": "YMPjnceY", "uri": "NarJrLFG"}}, "namespace": "E0u5jAhB", "patchVersion": "PBYK3w1z", "persistent": false, "version": "c0OQWaDJ"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "tFJNVnTm", "coreDumpEnabled": true, "dockerPath": "QoSfECQe", "image": "Q1DDlpZU", "imageSize": 74, "namespace": "fI9lJ63j", "persistent": false, "ulimitFileSize": 34, "version": "UAxYmEVp"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "Nxo3HvPx", "coreDumpEnabled": true, "dockerPath": "AIHPnfjw", "image": "g5kfYp7T", "imageSize": 92, "namespace": "tshgT8Sn", "patchVersion": "XKPoOsiy", "persistent": true, "ulimitFileSize": 61, "uploaderFlag": "HPdNDooZ", "version": "plSUZxLX"}' \
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
    --body '{"claim_timeout": 52, "creation_timeout": 56, "default_version": "2zwWVSIv", "port": 36, "ports": {"dp67KwHI": 2, "P3n3c9Gn": 94, "iPfiaFKP": 75}, "protocol": "SPlLPjFt", "providers": ["GpYIE6tc", "KCculIAv", "pfUrlXRd"], "session_timeout": 45, "unreachable_timeout": 47}' \
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
    --body '{"claim_timeout": 93, "creation_timeout": 36, "default_version": "k5rI4f4U", "port": 71, "protocol": "FND8WE46", "providers": ["zzNKu1BV", "DuaPoPS4", "iwHbDTx2"], "session_timeout": 13, "unreachable_timeout": 58}' \
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
    --name 'IrRFFz0E' \
    --count '42' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'wIB2xVjt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'ik6YpAJt' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 30, "buffer_percent": 9, "configuration": "03LV6pmJ", "enable_region_overrides": false, "extendable_session": false, "game_version": "748RdYYT", "max_count": 43, "min_count": 23, "overrides": {"5NyoGuvi": {"buffer_count": 98, "buffer_percent": 100, "configuration": "tWAxUrIZ", "enable_region_overrides": false, "extendable_session": true, "game_version": "T4NPl2Vx", "max_count": 93, "min_count": 49, "name": "te3g20g4", "region_overrides": {"p74vDjBy": {"buffer_count": 36, "buffer_percent": 36, "max_count": 43, "min_count": 65, "name": "N6l3vDKg", "unlimited": false, "use_buffer_percent": true}, "kgGt8Ynu": {"buffer_count": 77, "buffer_percent": 79, "max_count": 100, "min_count": 70, "name": "xW1SF8Qt", "unlimited": true, "use_buffer_percent": false}, "ljmQBT9g": {"buffer_count": 7, "buffer_percent": 33, "max_count": 40, "min_count": 93, "name": "mPZ7gDMe", "unlimited": true, "use_buffer_percent": true}}, "regions": ["MzIDuL1M", "ZByCCYWg", "WHy8nGg4"], "session_timeout": 74, "unlimited": true, "use_buffer_percent": false}, "nd8mkcjO": {"buffer_count": 29, "buffer_percent": 70, "configuration": "92S7EwW1", "enable_region_overrides": true, "extendable_session": true, "game_version": "dsOikUi8", "max_count": 28, "min_count": 20, "name": "n4neZAGy", "region_overrides": {"VgR8C4rs": {"buffer_count": 78, "buffer_percent": 65, "max_count": 71, "min_count": 1, "name": "f7KHxP35", "unlimited": true, "use_buffer_percent": false}, "nHaHacK5": {"buffer_count": 20, "buffer_percent": 54, "max_count": 65, "min_count": 59, "name": "ELIFiLUC", "unlimited": true, "use_buffer_percent": true}, "pbq4Kyr1": {"buffer_count": 9, "buffer_percent": 38, "max_count": 60, "min_count": 33, "name": "iKKz6jrp", "unlimited": true, "use_buffer_percent": true}}, "regions": ["NYK4hdQt", "CsiyKtdR", "bVHe9FMa"], "session_timeout": 97, "unlimited": false, "use_buffer_percent": true}, "Ld58Vtr5": {"buffer_count": 41, "buffer_percent": 0, "configuration": "qCaNh43h", "enable_region_overrides": true, "extendable_session": false, "game_version": "cdSUG3rJ", "max_count": 27, "min_count": 4, "name": "CxVE5i7R", "region_overrides": {"Au6zExPM": {"buffer_count": 90, "buffer_percent": 66, "max_count": 6, "min_count": 33, "name": "CbWC8IRu", "unlimited": false, "use_buffer_percent": true}, "mr3KNBIc": {"buffer_count": 95, "buffer_percent": 72, "max_count": 26, "min_count": 4, "name": "p5UND7xf", "unlimited": true, "use_buffer_percent": true}, "EPv25gzP": {"buffer_count": 22, "buffer_percent": 4, "max_count": 22, "min_count": 19, "name": "OEP2KvuM", "unlimited": true, "use_buffer_percent": false}}, "regions": ["oT0KkjQo", "yZRXqyUz", "rcc8y3B4"], "session_timeout": 72, "unlimited": true, "use_buffer_percent": false}}, "region_overrides": {"msRI6NCV": {"buffer_count": 53, "buffer_percent": 25, "max_count": 66, "min_count": 52, "name": "i5amUHk1", "unlimited": true, "use_buffer_percent": true}, "CBZrwUWe": {"buffer_count": 11, "buffer_percent": 76, "max_count": 12, "min_count": 16, "name": "Z6vS5l6V", "unlimited": false, "use_buffer_percent": false}, "fJGah97S": {"buffer_count": 71, "buffer_percent": 66, "max_count": 61, "min_count": 37, "name": "2mesa2O1", "unlimited": false, "use_buffer_percent": true}}, "regions": ["G1Uioo9h", "rllTzvim", "OgGYVVvs"], "session_timeout": 47, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment '21XJf7OT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'X3uoIeIv' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 96, "buffer_percent": 26, "configuration": "Pms1OFxA", "enable_region_overrides": true, "extendable_session": true, "game_version": "ginDs8up", "max_count": 57, "min_count": 23, "regions": ["JftBDOaB", "HZLVXkh5", "Pk207DXu"], "session_timeout": 80, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'dxxFurfQ' \
    --namespace $AB_NAMESPACE \
    --region '4d7Q4k9S' \
    --body '{"buffer_count": 13, "buffer_percent": 53, "max_count": 14, "min_count": 57, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'CDo3XI0i' \
    --namespace $AB_NAMESPACE \
    --region 'CHZigPjC' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'yM0aFWhd' \
    --namespace $AB_NAMESPACE \
    --region 'AtPjoxWB' \
    --body '{"buffer_count": 39, "buffer_percent": 56, "max_count": 9, "min_count": 71, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment '4RxZOxIN' \
    --namespace $AB_NAMESPACE \
    --version '5rcTxBvK' \
    --body '{"buffer_count": 39, "buffer_percent": 0, "configuration": "53vRFVMe", "enable_region_overrides": true, "extendable_session": false, "game_version": "60tLlTLZ", "max_count": 29, "min_count": 7, "region_overrides": {"ynYvWlxQ": {"buffer_count": 33, "buffer_percent": 19, "max_count": 46, "min_count": 12, "name": "qwHpxuMV", "unlimited": false, "use_buffer_percent": true}, "eUf9Vsvk": {"buffer_count": 83, "buffer_percent": 72, "max_count": 11, "min_count": 63, "name": "peVMXgyE", "unlimited": true, "use_buffer_percent": true}, "4rOVRm5d": {"buffer_count": 71, "buffer_percent": 90, "max_count": 24, "min_count": 52, "name": "1Ccd0Pqt", "unlimited": true, "use_buffer_percent": false}}, "regions": ["zyq5Y66r", "aZvrZQZv", "FZHsi8Fx"], "session_timeout": 74, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'cQwmhudx' \
    --namespace $AB_NAMESPACE \
    --version '7P1jVMka' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment '8PCDPHOC' \
    --namespace $AB_NAMESPACE \
    --version 'gu8cRyTF' \
    --body '{"buffer_count": 68, "buffer_percent": 89, "configuration": "8z15KH4O", "enable_region_overrides": true, "game_version": "Hf2KC545", "max_count": 55, "min_count": 63, "regions": ["vMrEoJAC", "LZ3tEVGy", "f3yGExCj"], "session_timeout": 39, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'oc8ZBg2X' \
    --namespace $AB_NAMESPACE \
    --region 'nyemarSe' \
    --version 'KogWbNuG' \
    --body '{"buffer_count": 92, "buffer_percent": 9, "max_count": 95, "min_count": 43, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'Sgohwnrh' \
    --namespace $AB_NAMESPACE \
    --region 'BjthcWXe' \
    --version 'SRFYjueh' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment '9zv64Mln' \
    --namespace $AB_NAMESPACE \
    --region 'jPvERCtG' \
    --version 'fN9pPTeM' \
    --body '{"buffer_count": 78, "buffer_percent": 91, "max_count": 47, "min_count": 71, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '14' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'zt3mDW9g' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'bChc2BdT' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 91, "mem_limit": 10, "params": "cwK3ehc4"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'UhZqRcf1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'r0eeHHwE' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 55, "mem_limit": 75, "name": "f1q5bHAx", "params": "4dgQLvnV"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name '4vkaQ4w4' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 20}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'rPCQl6y4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'GKcuzcTt' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "Oa3OlYJi", "port": 23}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'McURzdLg' \
    --sortBy 'version' \
    --sortDirection 'asc' \
    --count '26' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'DqIN0Enu' \
    --version '9gJwfDVU' \
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
    --imageURI 'EuLiXSri' \
    --version 'Hv15N0r5' \
    --versionPatch 'pX1kP2wF' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'Xpv39rRr' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version '4vcxFMSe' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'reTEu7mn' \
    --versionPatch 'IrymP21n' \
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
    --region 'ouRC2EUA' \
    --count '91' \
    --offset '71' \
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
    --region 'Re0aYoQ0' \
    > test.out 2>&1
eval_tap $? 47 'CountServerDetailed' test.out

#- 48 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'ListLocalServer' test.out

#- 49 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'U2XozIVI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'DeleteLocalServer' test.out

#- 50 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'vYbFigEH' \
    > test.out 2>&1
eval_tap $? 50 'GetServer' test.out

#- 51 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'SyS9EBKj' \
    > test.out 2>&1
eval_tap $? 51 'DeleteServer' test.out

#- 52 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'FBcb8wM1' \
    --withServer 'false' \
    --count '85' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 52 'ListSession' test.out

#- 53 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'NtqtTJw3' \
    > test.out 2>&1
eval_tap $? 53 'CountSession' test.out

#- 54 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'hI1vbXZa' \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "39qHG9GB", "repository": "6eV9PO3c"}' \
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
    --name 'pGae0Vd4' \
    --count '36' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 58 'GetAllDeploymentClient' test.out

#- 59 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment 'Pex98MVh' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 60, "buffer_percent": 30, "configuration": "GRwECbaB", "enable_region_overrides": false, "extendable_session": true, "game_version": "V8bJVNEb", "max_count": 68, "min_count": 48, "overrides": {"zwuxe8tT": {"buffer_count": 1, "buffer_percent": 26, "configuration": "rZkvz64P", "enable_region_overrides": false, "extendable_session": false, "game_version": "zJ2UQMKm", "max_count": 59, "min_count": 27, "name": "k9ly5kXC", "region_overrides": {"YlzFtJKO": {"buffer_count": 3, "buffer_percent": 3, "max_count": 64, "min_count": 93, "name": "HFlkOdhF", "unlimited": true, "use_buffer_percent": true}, "vnUv763J": {"buffer_count": 95, "buffer_percent": 50, "max_count": 85, "min_count": 68, "name": "2VYW853v", "unlimited": false, "use_buffer_percent": false}, "x9VrvRPq": {"buffer_count": 92, "buffer_percent": 28, "max_count": 79, "min_count": 61, "name": "LEMAAs6y", "unlimited": true, "use_buffer_percent": false}}, "regions": ["IgvgikEL", "O2NjwYFf", "jCkTvuwO"], "session_timeout": 44, "unlimited": true, "use_buffer_percent": false}, "xxTgX6rn": {"buffer_count": 84, "buffer_percent": 100, "configuration": "FXMWQVnu", "enable_region_overrides": true, "extendable_session": false, "game_version": "uwDBg2gb", "max_count": 36, "min_count": 75, "name": "XjI0xttI", "region_overrides": {"a2dTKmV5": {"buffer_count": 17, "buffer_percent": 4, "max_count": 26, "min_count": 15, "name": "aFto3lko", "unlimited": true, "use_buffer_percent": true}, "qfc2Jyn2": {"buffer_count": 30, "buffer_percent": 10, "max_count": 20, "min_count": 80, "name": "HNbJIf3N", "unlimited": false, "use_buffer_percent": true}, "KT3pa72y": {"buffer_count": 14, "buffer_percent": 66, "max_count": 44, "min_count": 64, "name": "lred1gJs", "unlimited": true, "use_buffer_percent": true}}, "regions": ["5Ack72Jn", "O0tqie0A", "N8nNcqZ7"], "session_timeout": 20, "unlimited": false, "use_buffer_percent": false}, "X0j7mcbN": {"buffer_count": 12, "buffer_percent": 99, "configuration": "YH5yfQBA", "enable_region_overrides": true, "extendable_session": false, "game_version": "2HSVmi0a", "max_count": 87, "min_count": 66, "name": "qbudVCuQ", "region_overrides": {"9hp8j0Fv": {"buffer_count": 37, "buffer_percent": 26, "max_count": 54, "min_count": 100, "name": "lyTYPXej", "unlimited": true, "use_buffer_percent": true}, "dwLxsysO": {"buffer_count": 22, "buffer_percent": 47, "max_count": 64, "min_count": 24, "name": "6k7GHnaZ", "unlimited": true, "use_buffer_percent": false}, "Hp96o925": {"buffer_count": 26, "buffer_percent": 11, "max_count": 47, "min_count": 68, "name": "XC0wFUQd", "unlimited": false, "use_buffer_percent": true}}, "regions": ["Rvqjmgy3", "OU4Mi3sQ", "ie09aMxP"], "session_timeout": 68, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"zJ08HVVF": {"buffer_count": 23, "buffer_percent": 22, "max_count": 73, "min_count": 87, "name": "LwgE2H0i", "unlimited": false, "use_buffer_percent": false}, "edctL2nY": {"buffer_count": 22, "buffer_percent": 59, "max_count": 1, "min_count": 20, "name": "vtzHaxYU", "unlimited": true, "use_buffer_percent": true}, "tjJZLNH7": {"buffer_count": 45, "buffer_percent": 54, "max_count": 11, "min_count": 78, "name": "tcaQ4loY", "unlimited": false, "use_buffer_percent": true}}, "regions": ["WbHXrQi2", "uzvsLmwz", "wb1VWf1e"], "session_timeout": 33, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 59 'CreateDeploymentClient' test.out

#- 60 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'LJJxTPXD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteDeploymentClient' test.out

#- 61 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '100' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 61 'GetAllPodConfigClient' test.out

#- 62 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name '3Yqx3JDF' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 44, "mem_limit": 2, "params": "fSBOr4MH"}' \
    > test.out 2>&1
eval_tap $? 62 'CreatePodConfigClient' test.out

#- 63 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'ltjdzHHe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeletePodConfigClient' test.out

#- 64 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '18' \
    --offset '27' \
    --q 'pgj16ELj' \
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
    --version 'rlGVqSW2' \
    > test.out 2>&1
eval_tap $? 66 'ImageDetailClient' test.out

#- 67 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'X6Zzzpzg' \
    --count '77' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 67 'ListServerClient' test.out

#- 68 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "xNWB84FE"}' \
    > test.out 2>&1
eval_tap $? 68 'ServerHeartbeat' test.out

#- 69 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "IQOnrSvC"}' \
    > test.out 2>&1
eval_tap $? 69 'DeregisterLocalServer' test.out

#- 70 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "Jgf2mmxk", "ip": "n16Gomzo", "name": "NkNu8X8q", "port": 16}' \
    > test.out 2>&1
eval_tap $? 70 'RegisterLocalServer' test.out

#- 71 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "7EADr1FX", "pod_name": "fTUYnukO"}' \
    > test.out 2>&1
eval_tap $? 71 'RegisterServer' test.out

#- 72 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "m4Ea3Jt6"}' \
    > test.out 2>&1
eval_tap $? 72 'ShutdownServer' test.out

#- 73 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'kiJ4NG6v' \
    > test.out 2>&1
eval_tap $? 73 'GetServerSessionTimeout' test.out

#- 74 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName 'CXsaIGzW' \
    > test.out 2>&1
eval_tap $? 74 'GetServerSession' test.out

#- 75 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "pbFD09pW", "configuration": "Fruql0et", "deployment": "TCLVDauj", "game_mode": "IdaD3ci7", "matching_allies": [{"matching_parties": [{"party_attributes": {"TC9k6xgi": {}, "JBHLY7Zj": {}, "AjuB34To": {}}, "party_id": "4j129vQv", "party_members": [{"user_id": "e1Ch5CLP"}, {"user_id": "I3umO9ex"}, {"user_id": "kgfvwUrM"}]}, {"party_attributes": {"6uoZaYI2": {}, "UwPbLy9w": {}, "Yt7uUqL8": {}}, "party_id": "4j7k7SCz", "party_members": [{"user_id": "uj4YY1WV"}, {"user_id": "QM1GK4P2"}, {"user_id": "NuSiNy2X"}]}, {"party_attributes": {"Ry8CSZyt": {}, "LIcWRgta": {}, "t3OgtPlm": {}}, "party_id": "25nHsOSf", "party_members": [{"user_id": "ljiug7NG"}, {"user_id": "2SJNleUb"}, {"user_id": "SBkL4xsj"}]}]}, {"matching_parties": [{"party_attributes": {"V43OTQgk": {}, "8m8DUxvP": {}, "I95wlZ1x": {}}, "party_id": "couuwuIm", "party_members": [{"user_id": "OddHqm6I"}, {"user_id": "L0AtvUye"}, {"user_id": "jtWXUgiH"}]}, {"party_attributes": {"TAOQaYkd": {}, "uVTQwa2p": {}, "Ri1r1vUF": {}}, "party_id": "qrSXaLqB", "party_members": [{"user_id": "bWu84ADs"}, {"user_id": "u56fgtQl"}, {"user_id": "F9Wi5GYa"}]}, {"party_attributes": {"WBbJjvkv": {}, "uUHYxe7I": {}, "jyIqpUAe": {}}, "party_id": "TPqIIXYY", "party_members": [{"user_id": "rNq8MuEr"}, {"user_id": "BtaJHVAY"}, {"user_id": "l1AliqTO"}]}]}, {"matching_parties": [{"party_attributes": {"2bVagi6o": {}, "WOac7o70": {}, "Q8Z0v4CJ": {}}, "party_id": "IM4WwrKm", "party_members": [{"user_id": "qV9pDeq2"}, {"user_id": "n79VQOhY"}, {"user_id": "ryklUEBZ"}]}, {"party_attributes": {"UU3SREZY": {}, "np4n8Bvx": {}, "xKtwPC33": {}}, "party_id": "kG2OlEdP", "party_members": [{"user_id": "FNEKWn2L"}, {"user_id": "palZsOfc"}, {"user_id": "Qes854Id"}]}, {"party_attributes": {"RwIg7R8U": {}, "bQOyLK33": {}, "3KhEb5d5": {}}, "party_id": "fYUDL7YK", "party_members": [{"user_id": "zZhIh520"}, {"user_id": "juX1cCai"}, {"user_id": "nXS1UrDb"}]}]}], "namespace": "zKyC3jzf", "notification_payload": {}, "pod_name": "ltyD5lva", "region": "0D7WIA6Z", "session_id": "6C5g9RVg"}' \
    > test.out 2>&1
eval_tap $? 75 'CreateSession' test.out

#- 76 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "wUaLUdF9"}' \
    > test.out 2>&1
eval_tap $? 76 'ClaimServer' test.out

#- 77 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'jH4iUnRu' \
    > test.out 2>&1
eval_tap $? 77 'GetSession' test.out

#- 78 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'smAWduI1' \
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
    --region 't7j0onAR' \
    > test.out 2>&1
eval_tap $? 81 'ListProvidersByRegion' test.out

#- 82 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 82 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE