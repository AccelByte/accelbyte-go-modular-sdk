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
    --body '{"artifactPath": "0xBzp8nm", "coreDumpEnabled": false, "image": "uqt68dlP", "imageReplicationsMap": {"JGHpsbYI": {"failure_code": "8Wv2gdpR", "region": "NnUev6OH", "status": "HDyKYezX", "uri": "aW9JCYcg"}, "GJ0qZclO": {"failure_code": "XVjN239q", "region": "zXznaJPh", "status": "Vrg69gZM", "uri": "jxzUPNE4"}, "VdWy08Wl": {"failure_code": "RCYIZWoA", "region": "m7SVx1oZ", "status": "jht7qkPU", "uri": "5glDdVQi"}}, "namespace": "WWKonS0i", "patchVersion": "e1okgXfO", "persistent": false, "version": "RLUrxhGv"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "VEBCcan4", "coreDumpEnabled": false, "dockerPath": "0R9Pe6Di", "image": "CqxzqF1i", "imageSize": 54, "namespace": "1Y5mlr1T", "persistent": true, "ulimitFileSize": 79, "version": "wkxIVFMC"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "F77Yz7FL", "coreDumpEnabled": false, "dockerPath": "mUaziUbp", "image": "JH9o51rW", "imageSize": 84, "namespace": "TdzkWVzB", "patchVersion": "b8roQLcF", "persistent": false, "ulimitFileSize": 74, "uploaderFlag": "TyHp3lfk", "version": "WNhXrUhe"}' \
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
    --body '{"claim_timeout": 14, "creation_timeout": 49, "default_version": "40rMaY1P", "port": 86, "ports": {"V4NMSwsh": 27, "FzFljr5E": 74, "9Bba0bsL": 6}, "protocol": "oYoZoa5I", "providers": ["0PEvTGwy", "jgxbYbe5", "CDWnDC1m"], "session_timeout": 95, "unreachable_timeout": 59}' \
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
    --body '{"claim_timeout": 96, "creation_timeout": 84, "default_version": "SG3wQQCK", "port": 16, "protocol": "ZnWRFhq0", "providers": ["xLDcbQ4W", "Lax4g0Hq", "dCnNMtFf"], "session_timeout": 19, "unreachable_timeout": 20}' \
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
    --name 'jmKSNMhW' \
    --count '33' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'lgJbOFGJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'SkQU2AnO' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 52, "buffer_percent": 78, "configuration": "n7PJDWNG", "enable_region_overrides": false, "extendable_session": true, "game_version": "J8Z4aPfd", "max_count": 11, "min_count": 74, "overrides": {"bsIRUT4x": {"buffer_count": 35, "buffer_percent": 36, "configuration": "HNjVZWLn", "enable_region_overrides": true, "extendable_session": false, "game_version": "uxInImfw", "max_count": 33, "min_count": 36, "name": "0coLo7Wo", "region_overrides": {"60Ptkeo9": {"buffer_count": 82, "buffer_percent": 45, "max_count": 18, "min_count": 44, "name": "gMycumf6", "unlimited": false, "use_buffer_percent": true}, "1dHebHOV": {"buffer_count": 40, "buffer_percent": 17, "max_count": 72, "min_count": 88, "name": "JrQTVkme", "unlimited": true, "use_buffer_percent": true}, "FBERvVDw": {"buffer_count": 90, "buffer_percent": 84, "max_count": 27, "min_count": 27, "name": "kclclaSE", "unlimited": false, "use_buffer_percent": false}}, "regions": ["igne8Wwl", "hYz0kvem", "phlqIRr0"], "session_timeout": 10, "unlimited": true, "use_buffer_percent": false}, "JuyewPdY": {"buffer_count": 89, "buffer_percent": 68, "configuration": "LZUxpJBL", "enable_region_overrides": false, "extendable_session": true, "game_version": "OpWKptBI", "max_count": 7, "min_count": 70, "name": "a3hiL55e", "region_overrides": {"fUweOAIv": {"buffer_count": 98, "buffer_percent": 90, "max_count": 20, "min_count": 66, "name": "D89iIZF4", "unlimited": false, "use_buffer_percent": false}, "EpwRAtut": {"buffer_count": 58, "buffer_percent": 14, "max_count": 46, "min_count": 9, "name": "8QcYRkAT", "unlimited": true, "use_buffer_percent": true}, "OgCWs6nC": {"buffer_count": 4, "buffer_percent": 15, "max_count": 52, "min_count": 92, "name": "aKbbOvyd", "unlimited": true, "use_buffer_percent": false}}, "regions": ["0MRvDu9v", "wQtxN1Ij", "5MlsVlKf"], "session_timeout": 12, "unlimited": false, "use_buffer_percent": true}, "BynTkVsg": {"buffer_count": 25, "buffer_percent": 77, "configuration": "yhR1OZWz", "enable_region_overrides": true, "extendable_session": false, "game_version": "mhyEsaI2", "max_count": 45, "min_count": 57, "name": "9ofHqCwX", "region_overrides": {"OtogGRx7": {"buffer_count": 31, "buffer_percent": 28, "max_count": 53, "min_count": 54, "name": "JPauvJZj", "unlimited": false, "use_buffer_percent": true}, "QkcdmhPT": {"buffer_count": 48, "buffer_percent": 95, "max_count": 98, "min_count": 63, "name": "CXRAxR0H", "unlimited": true, "use_buffer_percent": true}, "92DxB386": {"buffer_count": 65, "buffer_percent": 69, "max_count": 74, "min_count": 83, "name": "6VYePR6l", "unlimited": true, "use_buffer_percent": false}}, "regions": ["6bievoEJ", "X1bDDZtJ", "5lapmdBI"], "session_timeout": 63, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"R9SluOFr": {"buffer_count": 98, "buffer_percent": 34, "max_count": 89, "min_count": 38, "name": "RZppYuOo", "unlimited": true, "use_buffer_percent": false}, "uDwsB9VV": {"buffer_count": 47, "buffer_percent": 9, "max_count": 71, "min_count": 88, "name": "AqZNWV0R", "unlimited": false, "use_buffer_percent": false}, "p5JAEMv2": {"buffer_count": 21, "buffer_percent": 64, "max_count": 93, "min_count": 9, "name": "dcGJU0xZ", "unlimited": true, "use_buffer_percent": false}}, "regions": ["TRmKBPfp", "fPQmowhM", "k9odicbX"], "session_timeout": 72, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'JynMM6b5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'QplIcmj6' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 46, "buffer_percent": 20, "configuration": "9x1MelH1", "enable_region_overrides": false, "extendable_session": false, "game_version": "Qm1uykQ4", "max_count": 91, "min_count": 51, "regions": ["IuzeOqsP", "3hJyilUU", "VAXCaUjD"], "session_timeout": 36, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment '87dMmSiC' \
    --namespace $AB_NAMESPACE \
    --region 'wGpt23U6' \
    --body '{"buffer_count": 20, "buffer_percent": 67, "max_count": 16, "min_count": 44, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'AjV22mFd' \
    --namespace $AB_NAMESPACE \
    --region 'MEvjElD7' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'pqaFX0cf' \
    --namespace $AB_NAMESPACE \
    --region 'zzbtRiGo' \
    --body '{"buffer_count": 56, "buffer_percent": 10, "max_count": 59, "min_count": 36, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'IW51pWxc' \
    --namespace $AB_NAMESPACE \
    --version '1iCXQa32' \
    --body '{"buffer_count": 61, "buffer_percent": 45, "configuration": "aScRuDAk", "enable_region_overrides": true, "extendable_session": false, "game_version": "YQbUvdxW", "max_count": 20, "min_count": 98, "region_overrides": {"UJ4S997O": {"buffer_count": 80, "buffer_percent": 98, "max_count": 53, "min_count": 26, "name": "tp8p1IEB", "unlimited": true, "use_buffer_percent": false}, "mMMH4h48": {"buffer_count": 47, "buffer_percent": 94, "max_count": 74, "min_count": 84, "name": "n2EhUcuq", "unlimited": true, "use_buffer_percent": false}, "T9edvMux": {"buffer_count": 9, "buffer_percent": 82, "max_count": 14, "min_count": 4, "name": "4lYmrfJm", "unlimited": false, "use_buffer_percent": true}}, "regions": ["00zpQZG7", "yZw2WAIq", "QtlAZH4n"], "session_timeout": 72, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment '6TPI9gsK' \
    --namespace $AB_NAMESPACE \
    --version 'uxmJUWAT' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'aglTFyQd' \
    --namespace $AB_NAMESPACE \
    --version '83ShxI4v' \
    --body '{"buffer_count": 84, "buffer_percent": 62, "configuration": "TbVq0dcf", "enable_region_overrides": false, "game_version": "dqIWxopw", "max_count": 15, "min_count": 59, "regions": ["UFb7QXkb", "TDPu03OY", "A7Qr2jZC"], "session_timeout": 62, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'ry3AGWhl' \
    --namespace $AB_NAMESPACE \
    --region 'IdOC7rKI' \
    --version 'CCRXHcDU' \
    --body '{"buffer_count": 70, "buffer_percent": 10, "max_count": 33, "min_count": 3, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment '1Afrv4YR' \
    --namespace $AB_NAMESPACE \
    --region 'na2AEMHs' \
    --version 'mgzSKXrq' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'ZETRWpZi' \
    --namespace $AB_NAMESPACE \
    --region '0vnf7HYI' \
    --version 'k683cDaR' \
    --body '{"buffer_count": 75, "buffer_percent": 53, "max_count": 21, "min_count": 30, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '87' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name 'QOuq17ie' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'Dgc7dqGD' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 31, "mem_limit": 62, "params": "6oPij863"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'yUbKH76D' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'XSetmrzO' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 93, "mem_limit": 90, "name": "f5pGBISE", "params": "h9YqhI08"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'Kcg7uzwb' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 37}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'tovDYqKl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'opgEUN99' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "EgG7YRdN", "port": 61}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'xdiHZHAj' \
    --sortBy 'version' \
    --sortDirection 'desc' \
    --count '99' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI '9ic7AVGu' \
    --version 'WeHKOCte' \
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
    --imageURI 'byfNqQWQ' \
    --version 'RPjcLCNG' \
    --versionPatch 'U4Ng8des' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'TxczTLBY' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version '3AVGhJxK' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'ZCR5ZM4c' \
    --versionPatch 'L0zTDNzt' \
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
    --region 'lOIXwZ1l' \
    --count '95' \
    --offset '27' \
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
    --region 'OsJIznPC' \
    > test.out 2>&1
eval_tap $? 47 'CountServerDetailed' test.out

#- 48 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'ListLocalServer' test.out

#- 49 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'YmaxLio6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'DeleteLocalServer' test.out

#- 50 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'wAdk1Zqd' \
    > test.out 2>&1
eval_tap $? 50 'GetServer' test.out

#- 51 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'b12M2CcM' \
    > test.out 2>&1
eval_tap $? 51 'DeleteServer' test.out

#- 52 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'fZ4nmcQU' \
    --withServer 'true' \
    --count '15' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 52 'ListSession' test.out

#- 53 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'q4bJ4kdF' \
    > test.out 2>&1
eval_tap $? 53 'CountSession' test.out

#- 54 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'Rel66lVF' \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "I9Emy5yp", "repository": "nQwDWAfq"}' \
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
    --name 'Hz7eMqUi' \
    --count '72' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 58 'GetAllDeploymentClient' test.out

#- 59 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment '7ZwkTeWT' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 6, "buffer_percent": 54, "configuration": "Mh5DnMNn", "enable_region_overrides": true, "extendable_session": true, "game_version": "kz80Dbnz", "max_count": 1, "min_count": 71, "overrides": {"MNKpBIyC": {"buffer_count": 83, "buffer_percent": 8, "configuration": "IYbSCEmk", "enable_region_overrides": true, "extendable_session": true, "game_version": "INF3YjWz", "max_count": 74, "min_count": 93, "name": "xfqk6ddr", "region_overrides": {"8stcZeSF": {"buffer_count": 11, "buffer_percent": 80, "max_count": 28, "min_count": 84, "name": "VXEQfwP8", "unlimited": true, "use_buffer_percent": false}, "LBdbiOEm": {"buffer_count": 92, "buffer_percent": 47, "max_count": 47, "min_count": 44, "name": "j0MxkBTy", "unlimited": false, "use_buffer_percent": true}, "8WoFxprb": {"buffer_count": 53, "buffer_percent": 76, "max_count": 94, "min_count": 22, "name": "GHnGYIsz", "unlimited": true, "use_buffer_percent": true}}, "regions": ["OH4A7EeV", "vgElDGDL", "E6g8ZeKg"], "session_timeout": 85, "unlimited": false, "use_buffer_percent": true}, "hNirRkUz": {"buffer_count": 49, "buffer_percent": 3, "configuration": "ecRyriYv", "enable_region_overrides": false, "extendable_session": true, "game_version": "xb1pMT73", "max_count": 38, "min_count": 71, "name": "zi51mcLm", "region_overrides": {"NxZuSP8a": {"buffer_count": 41, "buffer_percent": 44, "max_count": 29, "min_count": 17, "name": "lddEH0R1", "unlimited": false, "use_buffer_percent": true}, "Zr8okCjb": {"buffer_count": 90, "buffer_percent": 33, "max_count": 71, "min_count": 5, "name": "T9OSA3up", "unlimited": false, "use_buffer_percent": false}, "aBePK1Tj": {"buffer_count": 15, "buffer_percent": 36, "max_count": 37, "min_count": 28, "name": "bXqEFAtI", "unlimited": true, "use_buffer_percent": true}}, "regions": ["9wavSBqX", "ZlJADVW3", "zKu2N1gc"], "session_timeout": 43, "unlimited": false, "use_buffer_percent": true}, "Jyd9t8CF": {"buffer_count": 49, "buffer_percent": 86, "configuration": "NPAEriGh", "enable_region_overrides": false, "extendable_session": false, "game_version": "VSypvs5f", "max_count": 21, "min_count": 75, "name": "Ey1AGyzi", "region_overrides": {"OXkcJEar": {"buffer_count": 1, "buffer_percent": 17, "max_count": 27, "min_count": 85, "name": "jaJVptfi", "unlimited": true, "use_buffer_percent": true}, "38aMmKDV": {"buffer_count": 89, "buffer_percent": 36, "max_count": 52, "min_count": 11, "name": "8XNXw5DA", "unlimited": false, "use_buffer_percent": false}, "q9So78rk": {"buffer_count": 84, "buffer_percent": 79, "max_count": 9, "min_count": 24, "name": "G0i4uIoM", "unlimited": true, "use_buffer_percent": true}}, "regions": ["ewPDF7bU", "B6u9VSgX", "mC1veuVu"], "session_timeout": 88, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"aYfneiwY": {"buffer_count": 8, "buffer_percent": 38, "max_count": 86, "min_count": 3, "name": "8cbyQBwz", "unlimited": true, "use_buffer_percent": false}, "FmKZxgDM": {"buffer_count": 92, "buffer_percent": 84, "max_count": 53, "min_count": 31, "name": "RFnNb6SU", "unlimited": true, "use_buffer_percent": false}, "nucmJcB9": {"buffer_count": 42, "buffer_percent": 92, "max_count": 5, "min_count": 39, "name": "biNg7f5z", "unlimited": true, "use_buffer_percent": false}}, "regions": ["sx4tIF8X", "AF2hIe7B", "PMlngH7R"], "session_timeout": 42, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 59 'CreateDeploymentClient' test.out

#- 60 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'x91qP7Mq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteDeploymentClient' test.out

#- 61 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '63' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 61 'GetAllPodConfigClient' test.out

#- 62 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'pFkF6Hz2' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 63, "mem_limit": 61, "params": "v11yFmRE"}' \
    > test.out 2>&1
eval_tap $? 62 'CreatePodConfigClient' test.out

#- 63 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'Z8OTIppH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'DeletePodConfigClient' test.out

#- 64 ListImagesClient
samples/cli/sample-apps Dsmc listImagesClient \
    --namespace $AB_NAMESPACE \
    --count '85' \
    --offset '4' \
    --q 'yGdX71WL' \
    --sortBy 'updatedAt' \
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
    --version 'c5FKg6hn' \
    > test.out 2>&1
eval_tap $? 66 'ImageDetailClient' test.out

#- 67 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'Q8Yuvh12' \
    --count '14' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 67 'ListServerClient' test.out

#- 68 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "O1c1hxoy"}' \
    > test.out 2>&1
eval_tap $? 68 'ServerHeartbeat' test.out

#- 69 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "Uqv4m4D9"}' \
    > test.out 2>&1
eval_tap $? 69 'DeregisterLocalServer' test.out

#- 70 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "SBeQ5MFj", "ip": "et3nHXG8", "name": "WBW3k7Su", "port": 92}' \
    > test.out 2>&1
eval_tap $? 70 'RegisterLocalServer' test.out

#- 71 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "jW1c1g81", "pod_name": "YKgqtGxO"}' \
    > test.out 2>&1
eval_tap $? 71 'RegisterServer' test.out

#- 72 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": true, "pod_name": "spXGwTO0"}' \
    > test.out 2>&1
eval_tap $? 72 'ShutdownServer' test.out

#- 73 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName 'p75PuCEN' \
    > test.out 2>&1
eval_tap $? 73 'GetServerSessionTimeout' test.out

#- 74 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName '0QlgVp6R' \
    > test.out 2>&1
eval_tap $? 74 'GetServerSession' test.out

#- 75 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "yNsK9WvS", "configuration": "YqL9Dtby", "deployment": "KhZuRwrt", "game_mode": "vWAswiQ4", "matching_allies": [{"matching_parties": [{"party_attributes": {"0uOhB3sF": {}, "Yt4GobQo": {}, "x0MzCbZa": {}}, "party_id": "Do6Ejmtz", "party_members": [{"user_id": "gkLhk5hF"}, {"user_id": "ImvOSRIj"}, {"user_id": "R1eM66Jk"}]}, {"party_attributes": {"571SVTmq": {}, "yG8LWx3m": {}, "yG9dLYXe": {}}, "party_id": "gSfJdZpj", "party_members": [{"user_id": "z4mG0edq"}, {"user_id": "mRptGNwx"}, {"user_id": "4MuGufb4"}]}, {"party_attributes": {"6w2IB7NU": {}, "87DWemiR": {}, "neJips10": {}}, "party_id": "2mhuopiP", "party_members": [{"user_id": "QwSApjTb"}, {"user_id": "UALZQgxt"}, {"user_id": "qsp6ufNX"}]}]}, {"matching_parties": [{"party_attributes": {"VrpydLew": {}, "0CceHmkp": {}, "Z6jDc4Lr": {}}, "party_id": "TpYnb6HA", "party_members": [{"user_id": "RuHhtTlE"}, {"user_id": "hCMtsnYk"}, {"user_id": "QA5rl2hx"}]}, {"party_attributes": {"dcvgqFam": {}, "dc7xkN9R": {}, "sEFvPaXE": {}}, "party_id": "wXSC1AdJ", "party_members": [{"user_id": "ONJwjUF8"}, {"user_id": "Ib4os9mZ"}, {"user_id": "GvjNE8JK"}]}, {"party_attributes": {"CAfw9iT6": {}, "oAb1h6XI": {}, "XfXuzXD0": {}}, "party_id": "gy4nJKHQ", "party_members": [{"user_id": "gvYrBuy7"}, {"user_id": "oCTRUwn5"}, {"user_id": "Sc4Ch9VW"}]}]}, {"matching_parties": [{"party_attributes": {"j8VZrB5W": {}, "nHO3l4Sr": {}, "XhrNeG7Z": {}}, "party_id": "NBeI53Vr", "party_members": [{"user_id": "cNggXE0S"}, {"user_id": "gwXx3Rwf"}, {"user_id": "BIGZFxzf"}]}, {"party_attributes": {"P7P5tnoD": {}, "IENcu10V": {}, "ZgqHp9OH": {}}, "party_id": "rjo2N6nw", "party_members": [{"user_id": "7pbeSxIv"}, {"user_id": "NHMqqDgx"}, {"user_id": "1v05kxsg"}]}, {"party_attributes": {"UiDbMlU6": {}, "OmiyJSx8": {}, "Zgvistcf": {}}, "party_id": "Jx4Tufja", "party_members": [{"user_id": "1TGdz8rr"}, {"user_id": "uqgNZDou"}, {"user_id": "wXztlTX9"}]}]}], "namespace": "WIlshOSI", "notification_payload": {}, "pod_name": "R3H3H1OZ", "region": "DWSWEnmg", "session_id": "7xbx3Jpk"}' \
    > test.out 2>&1
eval_tap $? 75 'CreateSession' test.out

#- 76 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "enr7Nk3n"}' \
    > test.out 2>&1
eval_tap $? 76 'ClaimServer' test.out

#- 77 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID '25KkHFTJ' \
    > test.out 2>&1
eval_tap $? 77 'GetSession' test.out

#- 78 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID '5dgyTSVw' \
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
    --region 'I5vcMoHA' \
    > test.out 2>&1
eval_tap $? 81 'ListProvidersByRegion' test.out

#- 82 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 82 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE