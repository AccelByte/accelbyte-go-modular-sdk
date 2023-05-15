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
    --body '{"artifactPath": "OgJzueba3M3MACGB", "image": "l912dW9pn9AQsHFM", "namespace": "jbJl3xQFK8jikhp0", "persistent": false, "version": "mH3EcbAncNrdvz3F"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "Pogx6ZcDHX9G8JIf", "dockerPath": "NmJOVQ5NXe5tJU6N", "image": "9MsDxd2SFGiO8zdi", "imageSize": 69, "namespace": "D8ax4toJ5yMufLC0", "persistent": false, "version": "S5eb29enk3N316g7"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "m8daxwvhA0ZkWBuY", "dockerPath": "WldJK1E6gSp7TfvZ", "image": "0J3NIsrj41j7Hwj0", "imageSize": 31, "namespace": "FmWUXLgSECf1SNrq", "patchVersion": "S9XwI1fOpcA3OhSL", "persistent": false, "version": "fAbNZBpscr8bdLIs"}' \
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
    --body '{"claim_timeout": 77, "creation_timeout": 26, "default_version": "Ta8Iyh2p96kTRIoO", "port": 70, "ports": {"W9XeCzWMlQcytPz2": 19, "cYuR6CHEbuepF8Xs": 63, "hJZayrMnjvcyFArb": 57}, "protocol": "RvnOj1MDlylateIW", "providers": ["jeWqEaCyPACSyZuG", "CVceS5rW459uYgTj", "MvVM6IHTVp5af2Xn"], "session_timeout": 62, "unreachable_timeout": 5}' \
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
    --body '{"claim_timeout": 74, "creation_timeout": 31, "default_version": "Jyf8mcMDZVGXKsZw", "port": 70, "protocol": "Uz6HkpEVyoUPcVBj", "providers": ["fzeWdVYH2Wx08iiA", "dRjnMC8yTgWIONBR", "9lRCe80GDFvKcW8Y"], "session_timeout": 41, "unreachable_timeout": 56}' \
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
    --name '3ySegWCfVqrQH8R4' \
    --count '4' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'WMu3TqifCCBH81lh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment '7sIFmOSywNfisG8Z' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 73, "buffer_percent": 58, "configuration": "KVEBHYTOuPDc0kuJ", "enable_region_overrides": true, "game_version": "Qh6ucAmwURq3Tbxe", "max_count": 91, "min_count": 6, "overrides": {"fKUGrg0K0nyqDtQs": {"buffer_count": 68, "buffer_percent": 58, "configuration": "R9UFQmGYiArjHuot", "enable_region_overrides": false, "game_version": "KTVnkK3SSz0vdlTZ", "max_count": 23, "min_count": 78, "name": "QE6UQ4VS3UmtLi7G", "region_overrides": {"K79k0Bs6P5rcVMXU": {"buffer_count": 5, "buffer_percent": 68, "max_count": 83, "min_count": 43, "name": "JQnVcPNM3bg6i1T5", "unlimited": true, "use_buffer_percent": true}, "Z8SKAzltSTa1J2rA": {"buffer_count": 18, "buffer_percent": 23, "max_count": 62, "min_count": 3, "name": "rKrjlQxdOwN4IHjG", "unlimited": false, "use_buffer_percent": true}, "n4N3e43DILFjnzuV": {"buffer_count": 5, "buffer_percent": 79, "max_count": 36, "min_count": 58, "name": "OJTXRKu1R2h0OZ7B", "unlimited": false, "use_buffer_percent": true}}, "regions": ["S1EaOXgpDfikw21A", "IDjC4FJhprc3L996", "rPnM8IFMR7812B5r"], "session_timeout": 24, "unlimited": false, "use_buffer_percent": true}, "z0wHMuFHucKsFLTf": {"buffer_count": 95, "buffer_percent": 49, "configuration": "oIe2U2BlIbGhHvSL", "enable_region_overrides": false, "game_version": "vV5WoM3Ivc8Bg61y", "max_count": 38, "min_count": 31, "name": "YAIc8HEyHCf4K3m2", "region_overrides": {"yy5SkpBfBGHS2gI5": {"buffer_count": 56, "buffer_percent": 97, "max_count": 24, "min_count": 26, "name": "QBzv1C8S3fXlfNHH", "unlimited": false, "use_buffer_percent": false}, "gd3Yb4BxYegidLhU": {"buffer_count": 61, "buffer_percent": 14, "max_count": 43, "min_count": 7, "name": "c2OVF3ELP945PDu8", "unlimited": true, "use_buffer_percent": true}, "EoIJwf3kl8pffXPV": {"buffer_count": 2, "buffer_percent": 42, "max_count": 2, "min_count": 96, "name": "KFyt1RLCGvHNOJFy", "unlimited": false, "use_buffer_percent": true}}, "regions": ["eOBKFv080WClGP5h", "fYGpdKTFmFSUKfdA", "zxxnxl2uq9TD7P2J"], "session_timeout": 85, "unlimited": false, "use_buffer_percent": false}, "lfoJXnDDMnaLE5PY": {"buffer_count": 35, "buffer_percent": 40, "configuration": "dmeOQbclDP2M9z5d", "enable_region_overrides": false, "game_version": "FgvywEw5HDLwHoHz", "max_count": 75, "min_count": 63, "name": "7AYF1pBDd0p3wOE9", "region_overrides": {"50egH8XPx1FwY1WN": {"buffer_count": 42, "buffer_percent": 36, "max_count": 52, "min_count": 16, "name": "GUZstFFvFW6mx4Wp", "unlimited": true, "use_buffer_percent": true}, "mKoSzQncz1FNRjNv": {"buffer_count": 30, "buffer_percent": 25, "max_count": 22, "min_count": 76, "name": "3Vkymenb59GkV3h6", "unlimited": true, "use_buffer_percent": true}, "EGeqAdJyUaucHXY9": {"buffer_count": 77, "buffer_percent": 48, "max_count": 70, "min_count": 55, "name": "XrwXu2hhQPLRFCtc", "unlimited": false, "use_buffer_percent": true}}, "regions": ["T5Ls64n0VcGNG5WO", "rAKEt7sVliLOElrW", "4aJ6dbpovhszcWcY"], "session_timeout": 66, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"WlSNHD8wtuYxiyxN": {"buffer_count": 73, "buffer_percent": 62, "max_count": 52, "min_count": 38, "name": "D3eudAEwNO05CVP8", "unlimited": false, "use_buffer_percent": false}, "QrCR3E0nNfknmgTn": {"buffer_count": 82, "buffer_percent": 99, "max_count": 92, "min_count": 25, "name": "PxMGH1aLD33nnAUh", "unlimited": false, "use_buffer_percent": true}, "9Wqu35UgXvMwlfiJ": {"buffer_count": 61, "buffer_percent": 32, "max_count": 72, "min_count": 83, "name": "IYjqE2s75KgdGDxa", "unlimited": false, "use_buffer_percent": false}}, "regions": ["QRs3mzyDwMlvImWj", "L4Tf1lYbOY9CvGsG", "aOKxe22CP7IOygYo"], "session_timeout": 39, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'S388I31rAoVroIZJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'PYWpb6GeqoLb3vzi' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 13, "buffer_percent": 74, "configuration": "DyBuDHrdhiBtNVUv", "enable_region_overrides": false, "game_version": "0sRIAPe8sIHXvqwb", "max_count": 95, "min_count": 14, "regions": ["xnPsk7OTGKVt0WR1", "lFXfJlHxUsDbpI2d", "ykrHL3COSCo04ZMi"], "session_timeout": 20, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'nI4lpankkwvqpnX8' \
    --namespace $AB_NAMESPACE \
    --region 'YpZ8yTS0QBGUMHcW' \
    --body '{"buffer_count": 76, "buffer_percent": 97, "max_count": 35, "min_count": 87, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'RFi0hyRnUFiyyTEC' \
    --namespace $AB_NAMESPACE \
    --region 'QEBRfw5WQVy3n4YJ' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'cbNLIb9sNqZpZqZ3' \
    --namespace $AB_NAMESPACE \
    --region 'ZPb45ACORrUG6yAH' \
    --body '{"buffer_count": 60, "buffer_percent": 51, "max_count": 29, "min_count": 6, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'c5zha0XfkKWQaQFU' \
    --namespace $AB_NAMESPACE \
    --version 'WwSaClASnd89ol8Y' \
    --body '{"buffer_count": 6, "buffer_percent": 49, "configuration": "GsJkMebPY2BZl7MX", "enable_region_overrides": true, "game_version": "aPZooSnlb5Mg8hjI", "max_count": 75, "min_count": 19, "region_overrides": {"SvXtp2jntxNvdLEf": {"buffer_count": 56, "buffer_percent": 7, "max_count": 68, "min_count": 75, "name": "B8ZtPnBnfB0xLkUi", "unlimited": false, "use_buffer_percent": true}, "chCFa9PgzGKKgd4K": {"buffer_count": 34, "buffer_percent": 72, "max_count": 75, "min_count": 21, "name": "QBcuHwU7ENCO1sbv", "unlimited": false, "use_buffer_percent": true}, "r1FiK8n1eTZVJY9z": {"buffer_count": 28, "buffer_percent": 71, "max_count": 49, "min_count": 3, "name": "mQj7GQTmTnIxWe20", "unlimited": true, "use_buffer_percent": true}}, "regions": ["ydLgyyATnXY3QL71", "560rILbJqYK43BOK", "bqkb3vV628FKD9Z2"], "session_timeout": 52, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'riTqVyiYNSUBxeec' \
    --namespace $AB_NAMESPACE \
    --version 'SUhXbSXZcZmu8ufm' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 's31hPdBaZJpS2U6K' \
    --namespace $AB_NAMESPACE \
    --version '6b6qll4XoY7iypwy' \
    --body '{"buffer_count": 4, "buffer_percent": 51, "configuration": "rtt3SK3GAVx1UB18", "enable_region_overrides": false, "game_version": "KkXDXJwdZ8kSW1kV", "max_count": 59, "min_count": 84, "regions": ["UhFOBwruJ4HHiykB", "WhwkerjeGfQNjQIi", "UBRXmPmgLG3UxPJf"], "session_timeout": 42, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'DeVcrO8m9ukT4WCA' \
    --namespace $AB_NAMESPACE \
    --region '3UfPbpviFxAx1vKX' \
    --version 'KnSqavLRqq2Eku6i' \
    --body '{"buffer_count": 88, "buffer_percent": 13, "max_count": 69, "min_count": 67, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'RIKrI3k9suULCnfX' \
    --namespace $AB_NAMESPACE \
    --region 'OQN4pKr9rj0oMElD' \
    --version 'WIc6EJMfwOxwSGtd' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment '6KGWHjSwjePTvRwK' \
    --namespace $AB_NAMESPACE \
    --region '5yFbh0s451XreXiG' \
    --version 'r8PJvIQkpkwvbeh5' \
    --body '{"buffer_count": 40, "buffer_percent": 35, "max_count": 37, "min_count": 81, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '16' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name '2p6yDCdSh0WcRhGG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'E2dL1Orbfo28WqkN' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 48, "mem_limit": 78, "params": "fGktJbBaEKuz3hLe"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name '6NQaJYU0z8luSKn8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'IYCRKmgIJspc9Do3' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 85, "mem_limit": 51, "name": "kNonv89CiCGK9PzR", "params": "YKRv3FVhhAwie2Bl"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name '1tt6P1V1NsjZ4zwZ' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 19}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'K9499GQWB416ZnSe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'FBArBcXAAYfogu1g' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "nPTx6Mhsza5QhVmS", "port": 91}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'FKqD5wCIVIKLZig8' \
    --sortBy 'createdAt' \
    --sortDirection 'asc' \
    --count '70' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'ptdWGibGsuc7hqQ7' \
    --version 'T4jskueG8jYXxEm6' \
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
    --imageURI 'ev8qFMG8uOiAxSox' \
    --version 'SZSiVimfneSsR2Ii' \
    --versionPatch 'hBb5xY8LejuVJM5m' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'nJYrjJoNuPqnG46l' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'pG3oISBW5qj4jIvR' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version '4YQjTNP7I5BZs7FT' \
    --versionPatch 'fcD2Vae1xTz2QWHK' \
    > test.out 2>&1
eval_tap $? 43 'GetImagePatchDetail' test.out

#- 44 ListServer
samples/cli/sample-apps Dsmc listServer \
    --namespace $AB_NAMESPACE \
    --region 'f3n9qEqMtzQuijeg' \
    --count '92' \
    --offset '35' \
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
    --region '6bNS5i6O1VdTpCoV' \
    > test.out 2>&1
eval_tap $? 46 'CountServerDetailed' test.out

#- 47 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'ListLocalServer' test.out

#- 48 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'p9tyw7tSdttwztkC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'DeleteLocalServer' test.out

#- 49 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'MXjF9AvVJFNLSqHg' \
    > test.out 2>&1
eval_tap $? 49 'GetServer' test.out

#- 50 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'iIBmiKULYuDlFeT5' \
    > test.out 2>&1
eval_tap $? 50 'DeleteServer' test.out

#- 51 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'TRkWwGH0VPtH8r1d' \
    --withServer 'false' \
    --count '74' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 51 'ListSession' test.out

#- 52 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region '3QL6BjTzzsoviwUt' \
    > test.out 2>&1
eval_tap $? 52 'CountSession' test.out

#- 53 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'oeSZ4Tc7wCDdMhtx' \
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
    --version 'bOXd21hKHqCUtZ60' \
    > test.out 2>&1
eval_tap $? 57 'ImageDetailClient' test.out

#- 58 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "RkxbR5TGlyM5nzEK"}' \
    > test.out 2>&1
eval_tap $? 58 'DeregisterLocalServer' test.out

#- 59 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "5ModCT91E7yhM3x1", "ip": "rjQ3QtMKyvurVHVV", "name": "lrWrQAt5e7rLtuPZ", "port": 40}' \
    > test.out 2>&1
eval_tap $? 59 'RegisterLocalServer' test.out

#- 60 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "3B8g6Mp3Ab9fA4b3", "pod_name": "pU7v2s1yEtNWMBOk"}' \
    > test.out 2>&1
eval_tap $? 60 'RegisterServer' test.out

#- 61 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": false, "pod_name": "Hm9lIcuEJEqjv4N7"}' \
    > test.out 2>&1
eval_tap $? 61 'ShutdownServer' test.out

#- 62 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName '5lf6nDiFARq2xp1p' \
    > test.out 2>&1
eval_tap $? 62 'GetServerSession' test.out

#- 63 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "EeEUHi4HEXCfrESx", "configuration": "38LBORK2qCFihq5E", "deployment": "2SoPHeFfehVvq7g7", "game_mode": "8o4zmKM69Mc6brOx", "matching_allies": [{"matching_parties": [{"party_attributes": {"mAJjO9YxixPM2gWB": {}, "gqS3SFVky9BZmxHh": {}, "DduHOERJ2GEKqfoE": {}}, "party_id": "kB4LuWwbDcabMap5", "party_members": [{"user_id": "eLWMt24hif7HE14L"}, {"user_id": "2VjX3hjOjYThq8SH"}, {"user_id": "P7o1Sza8OBrIj24B"}]}, {"party_attributes": {"GjqagaSsYlGPAXxE": {}, "nMKnnPne4h5wdSZd": {}, "Fm05eG1uHoftBvud": {}}, "party_id": "SdPRRbApWLUhuNku", "party_members": [{"user_id": "OiMuO3FjiBW8oMB4"}, {"user_id": "FB9IK04ftTh1ymxy"}, {"user_id": "tIF70YXlJRKBw7K4"}]}, {"party_attributes": {"QyFcSh6aT0CBKkLv": {}, "CbsW3sepLEp6r6wS": {}, "P8XMqNCsZCwzHEgX": {}}, "party_id": "2ZnMKWXRmUcc2QSk", "party_members": [{"user_id": "6fVSQjWjqJMRjpIZ"}, {"user_id": "hSIPhFEG2r5Mmphu"}, {"user_id": "EmsYAF0KsPrkXVUU"}]}]}, {"matching_parties": [{"party_attributes": {"kXJ0bfsD2LOUp4Z5": {}, "CLOt7QpwR9QAzMYq": {}, "tUU7iiWve1502rz0": {}}, "party_id": "S5cmG6yEll1m2aXX", "party_members": [{"user_id": "2w9dhnBLFAzk57U1"}, {"user_id": "fGv5HXEQee3dq5F3"}, {"user_id": "GxJcdRnAEctvJjg7"}]}, {"party_attributes": {"OjZK75IQiu9y13PV": {}, "ttBNJxj8g7SliTvR": {}, "7FbEm7Oomzd7w8yQ": {}}, "party_id": "DKPdRVcGPcxvULCL", "party_members": [{"user_id": "asOfaASD08MGFgi5"}, {"user_id": "1uUcx6pTBzGjZNI6"}, {"user_id": "tJAlTQrqB9X3pdOW"}]}, {"party_attributes": {"3gsfvBBfCwkGNqrb": {}, "H1a8BddQ7mF1oaRD": {}, "vlpEHLlYOAhvlCuY": {}}, "party_id": "QHjHiwSi34KmdlOQ", "party_members": [{"user_id": "RKCwfhZYR3ccMnb2"}, {"user_id": "QIXZizTJMbvReDCw"}, {"user_id": "ZhvjeO4Xiy1HVuxX"}]}]}, {"matching_parties": [{"party_attributes": {"j5sS18dx56M3qb0v": {}, "Ql3xP5ex8JLNgHRo": {}, "thVR5VSLYra88xkD": {}}, "party_id": "w5YA9Go0IjfcxT5j", "party_members": [{"user_id": "LxEXMTOs1IAoYxKv"}, {"user_id": "KHxaky36WWvxD3Nz"}, {"user_id": "E14YLAHBU46j4XJ1"}]}, {"party_attributes": {"ycOkTTKmPuFYkA7D": {}, "2Z1p2MsJvfGFsYQK": {}, "HXRenHTTYweiJrli": {}}, "party_id": "QrJdh4KcBoXy3XC0", "party_members": [{"user_id": "ZDL2KWNUknpealGI"}, {"user_id": "TO7EBAbfWUXJiqQ9"}, {"user_id": "HxaysE2MJVoHUaud"}]}, {"party_attributes": {"x6UtYcYPF3tsdvf3": {}, "0T3rNTTaqdqjLwoX": {}, "AZ8Cdx5pnwLIPSkK": {}}, "party_id": "qLJFKdqA6NrdsT7G", "party_members": [{"user_id": "zQ4akWcw1LwZpGDp"}, {"user_id": "nIgPrO0k7sdZIo2k"}, {"user_id": "7ZWMal7I1fkQtBv0"}]}]}], "namespace": "lzokvXEJnZ5mRGC4", "notification_payload": {}, "pod_name": "LjUKD3ka1rTCcJSr", "region": "cuWXT1zL0Vx9X1ht", "session_id": "fNLYT1rdJZldNn6O"}' \
    > test.out 2>&1
eval_tap $? 63 'CreateSession' test.out

#- 64 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "pdrmT6mQOOqQCkjU"}' \
    > test.out 2>&1
eval_tap $? 64 'ClaimServer' test.out

#- 65 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'AnwuAHNddei4s3oU' \
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
    --region 'Fukno8uhZyPPh1Vv' \
    > test.out 2>&1
eval_tap $? 68 'ListProvidersByRegion' test.out

#- 69 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 69 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE