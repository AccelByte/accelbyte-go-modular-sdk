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
    --body '{"artifactPath": "DCDc6kbb0P3oVJI1", "image": "n47S6JEkOCtUnY5s", "namespace": "wVQv5WEpdjBcStxf", "persistent": false, "version": "gCarLvApexIQ4MFA"}' \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "uTqevcXPVJ4oes1O", "dockerPath": "vgGuyyLH7xzWOK7i", "image": "aoj8zcKiX6pFYkfZ", "imageSize": 53, "namespace": "j4hHASbZdus5zzvv", "persistent": true, "version": "Xbpnd2Jh4nc7KG6y"}' \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "Jfi7IHLcoZvPRorj", "dockerPath": "vP7ZoVY7Qjg63J4P", "image": "jQu7x5VXMMijp7u8", "imageSize": 80, "namespace": "naC9MRiUjNd5mDqU", "patchVersion": "PlrAbyY3AEgvgBPF", "persistent": true, "uploaderFlags": [{"name": "oZ77eGeDy9GO82Zu", "shorthand": "tO8zRU4krHaC6dZJ", "value": "CRaz6f9kRzk5GoDa"}, {"name": "YPQ1cN5rCKGxCfTY", "shorthand": "N9svo8LxlcS8es9I", "value": "5jmxA7AyWJZY6MPX"}, {"name": "okQwQrapNyhPTVXR", "shorthand": "7wutomk4ZPMyOm2y", "value": "OWcTuiRcc9tW0Vvl"}], "version": "IUJF9YIogtQ0zX8x"}' \
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
    --body '{"claim_timeout": 79, "creation_timeout": 27, "default_version": "r2HjwbMphubmBewY", "port": 31, "ports": {"PsYvPZrf3PRKDSIc": 41, "u4WZlMW4hwCe9UPF": 40, "o1M6ItWZjiybE0CJ": 23}, "protocol": "gbPAnEkSEz1xhc8h", "providers": ["hqHrkgIy3hYPiy1p", "f8LimavGJDnRT5pY", "6MgejXf8Zjs2x9le"], "session_timeout": 50, "unreachable_timeout": 37}' \
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
    --body '{"claim_timeout": 6, "creation_timeout": 46, "default_version": "GdLtcXl1SoqFC8UQ", "port": 77, "protocol": "nPcHBI2ksc3VfyQE", "providers": ["xH5YT8pQXk7fm2kz", "QVx6AkHetbQHcrKk", "7dEvQ1wjAOWBtGZd"], "session_timeout": 89, "unreachable_timeout": 45}' \
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
    --name 'xySLwbtsAxRcYbLr' \
    --count '24' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'hwYtfYxZHfsGfDBy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'UmUVrXzuhD7dhEo9' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 85, "buffer_percent": 69, "configuration": "JZdp3rDZ7a8lhbP6", "enable_region_overrides": true, "extendable_session": false, "game_version": "mQFRaQJHPXADDLwL", "max_count": 59, "min_count": 12, "overrides": {"usduwMCdytOqwO09": {"buffer_count": 62, "buffer_percent": 91, "configuration": "vIsJcAw6QPlAHVfX", "enable_region_overrides": false, "extendable_session": false, "game_version": "1GSpN9eeJigQI1BS", "max_count": 81, "min_count": 59, "name": "tZ6fOyhrAq8V5HvY", "region_overrides": {"jPvuwd2n8HOPV7YI": {"buffer_count": 29, "buffer_percent": 88, "max_count": 45, "min_count": 31, "name": "XQVnMGd0nOyPsVLP", "unlimited": false, "use_buffer_percent": false}, "UzjKKO5uvong1sxt": {"buffer_count": 0, "buffer_percent": 0, "max_count": 48, "min_count": 44, "name": "daiZf0yaMpb3GWpU", "unlimited": false, "use_buffer_percent": false}, "IQCClEvJyHQXWbE7": {"buffer_count": 0, "buffer_percent": 16, "max_count": 38, "min_count": 8, "name": "S8NA6N8Wq7K8CJNK", "unlimited": true, "use_buffer_percent": false}}, "regions": ["HridnoY9vOKWzuml", "VXnhxJu3Jz1rs6Az", "2AlSuDR9yNKiH8Id"], "session_timeout": 13, "unlimited": false, "use_buffer_percent": false}, "bvbIdMnjzyxMlAbH": {"buffer_count": 13, "buffer_percent": 56, "configuration": "NCEXYW0ZdwEDUrDx", "enable_region_overrides": true, "extendable_session": false, "game_version": "jcxG6qfeM2QauGj7", "max_count": 18, "min_count": 43, "name": "w6A1uaaBh1uSB76X", "region_overrides": {"dZK8gNHvGIQ96tQX": {"buffer_count": 24, "buffer_percent": 53, "max_count": 47, "min_count": 99, "name": "8skaqNGv8sstTYj1", "unlimited": true, "use_buffer_percent": false}, "G6mQjtH7xeotIcfx": {"buffer_count": 75, "buffer_percent": 97, "max_count": 80, "min_count": 18, "name": "AWUPwvBf8houQjo4", "unlimited": false, "use_buffer_percent": false}, "xKlibi2qMDttbiKo": {"buffer_count": 85, "buffer_percent": 68, "max_count": 41, "min_count": 64, "name": "6S7uXpm3DqTAIIJH", "unlimited": true, "use_buffer_percent": true}}, "regions": ["XsNsCYfCqLc8gbk4", "27y9u03iTCVXut9S", "bWYksO7PSOLeFlsM"], "session_timeout": 33, "unlimited": true, "use_buffer_percent": true}, "8f1Bejld9yqNex7Z": {"buffer_count": 88, "buffer_percent": 78, "configuration": "Z6L6k7W4tpMFlIZ3", "enable_region_overrides": false, "extendable_session": false, "game_version": "UK8BUhp3eg8BinJn", "max_count": 54, "min_count": 35, "name": "3v0F8ViQdEtIbDri", "region_overrides": {"5374Gf8lRREDkS9c": {"buffer_count": 60, "buffer_percent": 18, "max_count": 48, "min_count": 10, "name": "Xh7U2TSgQRIYh8h0", "unlimited": false, "use_buffer_percent": false}, "QBEzdePtjgks5rvD": {"buffer_count": 72, "buffer_percent": 65, "max_count": 52, "min_count": 83, "name": "HZ7E7DtpxRfK61FY", "unlimited": true, "use_buffer_percent": true}, "Z908dVepTWzINx6R": {"buffer_count": 55, "buffer_percent": 74, "max_count": 75, "min_count": 95, "name": "ts900BVbJ0gch1tG", "unlimited": false, "use_buffer_percent": false}}, "regions": ["Tu6UFcN8SNqVDktK", "KpU8yr5lsZjiu0bL", "slEtFKP5iar4XecX"], "session_timeout": 55, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"F3tvKskpPATMpCdf": {"buffer_count": 9, "buffer_percent": 21, "max_count": 13, "min_count": 8, "name": "iRYVAV2SGWCipOwY", "unlimited": false, "use_buffer_percent": false}, "TbjY3mKaWVM4bQfP": {"buffer_count": 55, "buffer_percent": 55, "max_count": 47, "min_count": 17, "name": "r3ZCXRlYBc16DUG4", "unlimited": true, "use_buffer_percent": true}, "IKkoJCzSQP40sEb8": {"buffer_count": 12, "buffer_percent": 31, "max_count": 63, "min_count": 61, "name": "Ns2G5vUuL5MTnVuJ", "unlimited": false, "use_buffer_percent": true}}, "regions": ["HBIwTVl58hXA01Mg", "TjM0nDwHSG43xNqK", "CR0NXUcJCz11Ut3c"], "session_timeout": 30, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'hJfpmhpKC5dIczLM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'KNezElZ4PB0RQj5d' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": true, "buffer_count": 39, "buffer_percent": 49, "configuration": "uSzFMFKwR0sB6NLT", "enable_region_overrides": false, "extendable_session": true, "game_version": "wOQLGEqe08ZySImU", "max_count": 94, "min_count": 6, "regions": ["J47RtaNMqn5zsOvU", "ncwT7jeGr1pH0szW", "Kvo3OZri6CjbZVQg"], "session_timeout": 98, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment '34rW8TzUQjYv2Hw9' \
    --namespace $AB_NAMESPACE \
    --region '0eqJzBhiUJXwWgAg' \
    --body '{"buffer_count": 33, "buffer_percent": 87, "max_count": 77, "min_count": 19, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'OwOzdyspbDNMglP9' \
    --namespace $AB_NAMESPACE \
    --region '9biPba62W443grLh' \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'pd0WmjVqJDppPjQx' \
    --namespace $AB_NAMESPACE \
    --region 'YZntyitLPEdNjiTn' \
    --body '{"buffer_count": 52, "buffer_percent": 16, "max_count": 37, "min_count": 72, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'hbQQ3j2qBQiEJlzV' \
    --namespace $AB_NAMESPACE \
    --version 'ba4jz2Qm4m341CzB' \
    --body '{"buffer_count": 6, "buffer_percent": 64, "configuration": "p7skQSo9W3PUMTKK", "enable_region_overrides": true, "extendable_session": false, "game_version": "wTCabK0OaEn3uTUU", "max_count": 73, "min_count": 46, "region_overrides": {"nwl4rdOWm2BXuP8o": {"buffer_count": 14, "buffer_percent": 67, "max_count": 20, "min_count": 30, "name": "fIsexvssewYqM59h", "unlimited": true, "use_buffer_percent": false}, "nf1cvM9cVWbfN9w5": {"buffer_count": 71, "buffer_percent": 25, "max_count": 91, "min_count": 81, "name": "Jge0nzQU5UHRZnvQ", "unlimited": false, "use_buffer_percent": true}, "AzH1LqvcuH4b6JI9": {"buffer_count": 63, "buffer_percent": 58, "max_count": 70, "min_count": 0, "name": "8jBXmkD5HKD8L3ab", "unlimited": false, "use_buffer_percent": false}}, "regions": ["devubi3sFutkYrmb", "IzLQ3i1tf6mMIw2z", "2i9Hm038reP9t0dC"], "session_timeout": 84, "unlimited": true, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'NMz5s1zz3hDa0BXB' \
    --namespace $AB_NAMESPACE \
    --version 'RgeqhaWROIYSEO6g' \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'wwC9JKAhjJ5lCrBu' \
    --namespace $AB_NAMESPACE \
    --version 'WVMYOLB2V8xY2qIh' \
    --body '{"buffer_count": 73, "buffer_percent": 82, "configuration": "oxv04GxIndW5PSPH", "enable_region_overrides": true, "game_version": "lOUNDZ1zegtmrqVa", "max_count": 32, "min_count": 19, "regions": ["PGJp68CXyAS4afuj", "Nl7YJ08ki1Q6hJtn", "un9pIVRAox0no9a9"], "session_timeout": 22, "unlimited": false, "use_buffer_percent": true}' \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'FEYEXkhhjgeTzeHL' \
    --namespace $AB_NAMESPACE \
    --region 'Tewk5SiFTXmKQH1a' \
    --version 'kwubGgXs2onm0joy' \
    --body '{"buffer_count": 27, "buffer_percent": 82, "max_count": 57, "min_count": 1, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'HreEiebbRpY3gSPT' \
    --namespace $AB_NAMESPACE \
    --region 'ewCby66yfXr1Fcir' \
    --version 'w1rbeGodvLX2VLnJ' \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'HHKC0FlJWVl1akdk' \
    --namespace $AB_NAMESPACE \
    --region 'y3HjBcqrBNFCbxf2' \
    --version 'A8bP6RuTxuVkrbRo' \
    --body '{"buffer_count": 21, "buffer_percent": 23, "max_count": 35, "min_count": 53, "unlimited": false, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace $AB_NAMESPACE \
    --count '80' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name '0NOCChw17kwOZhNt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --name 'GBMztzQvQOX3AGB5' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 55, "mem_limit": 44, "params": "Fl294McGGmhJe3da"}' \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'Ye6cJNSLofb8BaOq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'AmYycQ2hGSsAB2jL' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 14, "mem_limit": 70, "name": "McSRGymVLamEnKos", "params": "2VfXSAS8h7mCkEAi"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
samples/cli/sample-apps Dsmc addPort \
    --name 'EIlCmayZTtkXPsXO' \
    --namespace $AB_NAMESPACE \
    --body '{"port": 18}' \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'eG5KEtPCvD6L94XI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
samples/cli/sample-apps Dsmc updatePort \
    --name 'dfK6Fch6GNb448kU' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "xbWMmGK2Ywlu4N2h", "port": 3}' \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
samples/cli/sample-apps Dsmc listImages \
    --namespace $AB_NAMESPACE \
    --q 'PA7lc4usqwsJ19zL' \
    --sortBy 'createdAt' \
    --sortDirection 'asc' \
    --count '97' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace $AB_NAMESPACE \
    --imageURI 'jUik0s3kFlbYw93N' \
    --version 'ShTw6B17CHdX4v5y' \
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
    --imageURI '5iaSABcHKUQ4dLNh' \
    --version 'yCUkIciRSIBkzM7v' \
    --versionPatch 'kj92XktqXxaRg9nP' \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace $AB_NAMESPACE \
    --version 'nbMp3vPfF1tW8i1e' \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
samples/cli/sample-apps Dsmc getImagePatches \
    --namespace $AB_NAMESPACE \
    --version 'RFAoVKnpC0nQUPqB' \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace $AB_NAMESPACE \
    --version 'SB5OUQHnXNFv0tBb' \
    --versionPatch 'qxcNhmtTOgUrTMH3' \
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
    --region 'G0iIoyLqH9ndT4Ks' \
    --count '5' \
    --offset '23' \
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
    --region 'ceskk5AQsEGXQJQA' \
    > test.out 2>&1
eval_tap $? 47 'CountServerDetailed' test.out

#- 48 ListLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'ListLocalServer' test.out

#- 49 DeleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'EawOYXWnd7gNyQc1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'DeleteLocalServer' test.out

#- 50 GetServer
samples/cli/sample-apps Dsmc getServer \
    --namespace $AB_NAMESPACE \
    --podName 'jwEUgmrlYYtt05PW' \
    > test.out 2>&1
eval_tap $? 50 'GetServer' test.out

#- 51 DeleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace $AB_NAMESPACE \
    --podName 'nRwds9VgDR2GZ4Qm' \
    > test.out 2>&1
eval_tap $? 51 'DeleteServer' test.out

#- 52 ListSession
samples/cli/sample-apps Dsmc listSession \
    --namespace $AB_NAMESPACE \
    --region 'L9KeFfEtONPvXJAE' \
    --withServer 'true' \
    --count '91' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 52 'ListSession' test.out

#- 53 CountSession
samples/cli/sample-apps Dsmc countSession \
    --namespace $AB_NAMESPACE \
    --region 'dUpHLQSYYGIT7uVD' \
    > test.out 2>&1
eval_tap $? 53 'CountSession' test.out

#- 54 DeleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'CF4BO0mdZmIVIuzP' \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 CreateRepository
samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "UupiH0JEEuxfj6XG", "repository": "foKYK7AvqWMLif41"}' \
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
    --name 'AVveGkAieOrTSE9o' \
    --count '75' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 58 'GetAllDeploymentClient' test.out

#- 59 CreateDeploymentClient
samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment 'sD6bkuMo4YVh1mtT' \
    --namespace $AB_NAMESPACE \
    --body '{"allow_version_override": false, "buffer_count": 47, "buffer_percent": 32, "configuration": "q2XefWNWnQ0H0dhC", "enable_region_overrides": false, "extendable_session": false, "game_version": "vhSssJy14RdhIef4", "max_count": 11, "min_count": 12, "overrides": {"Y5bQyibHCfupIl1e": {"buffer_count": 27, "buffer_percent": 24, "configuration": "Nuta0zuLauTf9zp3", "enable_region_overrides": true, "extendable_session": false, "game_version": "h3sumo1Y2tNQcdot", "max_count": 29, "min_count": 59, "name": "nZSIENJgj9AhmDnO", "region_overrides": {"yk8hlrdaXykW5wZz": {"buffer_count": 23, "buffer_percent": 47, "max_count": 37, "min_count": 28, "name": "vL9J4vS1Jyhe11C4", "unlimited": false, "use_buffer_percent": false}, "K81F3dZK9LMbYcLY": {"buffer_count": 72, "buffer_percent": 32, "max_count": 76, "min_count": 8, "name": "FRdfeSDU3w7Qv0f4", "unlimited": true, "use_buffer_percent": true}, "DgQmSpCMPkJSHaRv": {"buffer_count": 0, "buffer_percent": 83, "max_count": 87, "min_count": 7, "name": "DzrRvelBw6JuL6vi", "unlimited": true, "use_buffer_percent": true}}, "regions": ["1oOZBykopZ5Un4VE", "uQlxYl1OhpoS2uC7", "zc8SGZmMZdEjXCfX"], "session_timeout": 83, "unlimited": false, "use_buffer_percent": true}, "G2LNTKfqBHnS6HxM": {"buffer_count": 3, "buffer_percent": 48, "configuration": "3gOlh4zayzUwy7MU", "enable_region_overrides": true, "extendable_session": false, "game_version": "P17e8EVgxIixOZnb", "max_count": 71, "min_count": 87, "name": "oexsNUkl7dB3lGAz", "region_overrides": {"HMqFqhp21vzMlLvV": {"buffer_count": 85, "buffer_percent": 47, "max_count": 94, "min_count": 98, "name": "bJfYJYBSeSshV3gu", "unlimited": false, "use_buffer_percent": true}, "Ip1r0NpkqkjkIw25": {"buffer_count": 64, "buffer_percent": 87, "max_count": 100, "min_count": 68, "name": "A9WT4Zm2ZcAo1cf1", "unlimited": true, "use_buffer_percent": true}, "Vacx4gS3cbcJFkjR": {"buffer_count": 46, "buffer_percent": 32, "max_count": 89, "min_count": 10, "name": "5S3T3x0nAFkWAGp1", "unlimited": true, "use_buffer_percent": true}}, "regions": ["tV4u4mPhDWBIR1iq", "9FTaGeXevy7F8iAW", "T5fbp8LBZVHTNMqJ"], "session_timeout": 99, "unlimited": false, "use_buffer_percent": true}, "VNk9yiwck8f7IGSf": {"buffer_count": 2, "buffer_percent": 52, "configuration": "dxOI1gp4XBeDEjmf", "enable_region_overrides": false, "extendable_session": true, "game_version": "EPa0Mm249ApyXBPz", "max_count": 83, "min_count": 46, "name": "BMR7DCRjghtfGerW", "region_overrides": {"a3gZNFYgqMkhhr25": {"buffer_count": 82, "buffer_percent": 6, "max_count": 23, "min_count": 74, "name": "Xbt4SWoDQPZJhaih", "unlimited": true, "use_buffer_percent": true}, "yfl9oXCLEIGfqNfp": {"buffer_count": 74, "buffer_percent": 31, "max_count": 75, "min_count": 95, "name": "JtzGGNG8ibFsueTE", "unlimited": false, "use_buffer_percent": false}, "yD7dbRh9U2DLs2ge": {"buffer_count": 12, "buffer_percent": 42, "max_count": 11, "min_count": 45, "name": "MunQeXbafQ4Vlq6z", "unlimited": false, "use_buffer_percent": false}}, "regions": ["Hbv4o7a5gvUAcU2o", "Kx7NhoJ1eIHu8zY4", "Zbfy456AGVvRbKhe"], "session_timeout": 99, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"xBLTQWYwNSrgxufc": {"buffer_count": 84, "buffer_percent": 29, "max_count": 94, "min_count": 31, "name": "OMXnQ2ylRN4I5IhS", "unlimited": true, "use_buffer_percent": false}, "Sn96wDIaGBiI4cfC": {"buffer_count": 57, "buffer_percent": 29, "max_count": 53, "min_count": 49, "name": "wZhiQxtAVdQOIYUP", "unlimited": false, "use_buffer_percent": true}, "A1eF89VuQf2SiMrr": {"buffer_count": 66, "buffer_percent": 70, "max_count": 49, "min_count": 56, "name": "As9LcUsTkiWvjt3v", "unlimited": false, "use_buffer_percent": false}}, "regions": ["M7RcF06a2ELgCiD2", "LGFcridLXgaBLplc", "dBy1S4zCWSYB270u"], "session_timeout": 31, "unlimited": true, "use_buffer_percent": false}' \
    > test.out 2>&1
eval_tap $? 59 'CreateDeploymentClient' test.out

#- 60 DeleteDeploymentClient
samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment '8RRlNiPygfUT05Oc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteDeploymentClient' test.out

#- 61 GetAllPodConfigClient
samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace $AB_NAMESPACE \
    --count '12' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 61 'GetAllPodConfigClient' test.out

#- 62 CreatePodConfigClient
samples/cli/sample-apps Dsmc createPodConfigClient \
    --name '4k3S3sL5RzQ7gt4r' \
    --namespace $AB_NAMESPACE \
    --body '{"cpu_limit": 95, "mem_limit": 65, "params": "sDH5da8r3Xj2093N"}' \
    > test.out 2>&1
eval_tap $? 62 'CreatePodConfigClient' test.out

#- 63 DeletePodConfigClient
samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'KGPDPXpuzk0Rc0LH' \
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
    --version 'Fed1gJj4uYtVjsdj' \
    > test.out 2>&1
eval_tap $? 65 'ImageDetailClient' test.out

#- 66 ListServerClient
samples/cli/sample-apps Dsmc listServerClient \
    --namespace $AB_NAMESPACE \
    --region 'DkH9ObX8JpOKhhPH' \
    --count '1' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 66 'ListServerClient' test.out

#- 67 ServerHeartbeat
samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace $AB_NAMESPACE \
    --body '{"podName": "XNihyTquTw0nRk9Y"}' \
    > test.out 2>&1
eval_tap $? 67 'ServerHeartbeat' test.out

#- 68 DeregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"name": "brHHrxGR2Lba3JmB"}' \
    > test.out 2>&1
eval_tap $? 68 'DeregisterLocalServer' test.out

#- 69 RegisterLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "XVru013g25Zaxhq9", "ip": "Wluv3EUZ0vEO9d8K", "name": "fXdurH8U8IefAPHu", "port": 76}' \
    > test.out 2>&1
eval_tap $? 69 'RegisterLocalServer' test.out

#- 70 RegisterServer
samples/cli/sample-apps Dsmc registerServer \
    --namespace $AB_NAMESPACE \
    --body '{"custom_attribute": "Fy1gMLzxANAzWjPk", "pod_name": "7Au75lo7A6DUqnUl"}' \
    > test.out 2>&1
eval_tap $? 70 'RegisterServer' test.out

#- 71 ShutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --namespace $AB_NAMESPACE \
    --body '{"kill_me": false, "pod_name": "wKEDkNkFHBOzCqPH"}' \
    > test.out 2>&1
eval_tap $? 71 'ShutdownServer' test.out

#- 72 GetServerSessionTimeout
samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace $AB_NAMESPACE \
    --podName '8qQsoh5cCzvgYjjq' \
    > test.out 2>&1
eval_tap $? 72 'GetServerSessionTimeout' test.out

#- 73 GetServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace $AB_NAMESPACE \
    --podName '5KOdohVySdqXsmE0' \
    > test.out 2>&1
eval_tap $? 73 'GetServerSession' test.out

#- 74 CreateSession
samples/cli/sample-apps Dsmc createSession \
    --namespace $AB_NAMESPACE \
    --body '{"client_version": "zrWZct0LkKHH5D9p", "configuration": "1JDJR1E2DcCQAkQV", "deployment": "x2B7ItxhDrNxpdX0", "game_mode": "FYCshB93IiDGDY5M", "matching_allies": [{"matching_parties": [{"party_attributes": {"CrwoYgXpfzy5keCM": {}, "y5b3vYjrFRHjVtmC": {}, "gr3JLiYGMeDp8mOZ": {}}, "party_id": "JnqTQ7WDwNTLOUGs", "party_members": [{"user_id": "MZ982lZzQ9excuLi"}, {"user_id": "UjNe1mpNojR6CfMn"}, {"user_id": "wzilipRLmPCR7BXl"}]}, {"party_attributes": {"nGU9WVUGBMgTTKeY": {}, "qyjKbbL2UCTf53t4": {}, "2dlWVXlZN2welb5U": {}}, "party_id": "HXdpLen0fNSBi2Me", "party_members": [{"user_id": "9UnhnbENTNSG81ZT"}, {"user_id": "pQj5FNHjRBWLoxce"}, {"user_id": "JtA6UaJS702hqkcB"}]}, {"party_attributes": {"mGMxPlMFmCnykTDM": {}, "3EvVcccT6apRdUTG": {}, "AovdxDgenKvpHpfr": {}}, "party_id": "agLnuhbKpxvPVcbG", "party_members": [{"user_id": "Wi17s2gYnb06UHUI"}, {"user_id": "ftDdXq3Y6SE27DEn"}, {"user_id": "ZQ5uTkGeFqhRFGQd"}]}]}, {"matching_parties": [{"party_attributes": {"aYmRkJACEjQKPWl0": {}, "WdBh8ppFORnmnqB3": {}, "x0lJiYYZziABLoZf": {}}, "party_id": "tJB1s9olzd3yKGXY", "party_members": [{"user_id": "HBWXiWgJO11Ktazy"}, {"user_id": "rAzgJUtKGjqOkYXt"}, {"user_id": "Hrlz9PnoEy4k9Wgd"}]}, {"party_attributes": {"rJWtdOsy6U8WKO8Z": {}, "y1A9D4FMnUGDgiw5": {}, "um6KCGgT4cAW7DgJ": {}}, "party_id": "joX7IWRWIVfZQ0AY", "party_members": [{"user_id": "lwLmbPe81K0ViX1q"}, {"user_id": "f5XpBXXHtsRlKCUX"}, {"user_id": "NJDQfsHb7yPETWuq"}]}, {"party_attributes": {"Zk5jjkOVnAPINsAp": {}, "DA3p7HDLhSNpYlhd": {}, "YkGoF9DbaHWD9psW": {}}, "party_id": "2tGkJqn3mJ4D1D2r", "party_members": [{"user_id": "iP8Z7UbBgym3Nnpp"}, {"user_id": "FlWs4B8SakxsbjCR"}, {"user_id": "sWxsL7atHKVtLBHL"}]}]}, {"matching_parties": [{"party_attributes": {"pArlYjY2aj8zwsxL": {}, "f84HYRz0NUlhZU3K": {}, "rEKXCebV1dgaxIcz": {}}, "party_id": "nKIPb01aGXyZGARk", "party_members": [{"user_id": "j8PFzoKDn2WfIziz"}, {"user_id": "g1PI36LRMpZ07Pg9"}, {"user_id": "DMt9j5zajTf2Ekjf"}]}, {"party_attributes": {"DXA8UPpbNKcCADrb": {}, "Mk5gTY7dfhm5CDfd": {}, "wZs319SXzxdFQeSq": {}}, "party_id": "P3QsArvGzJAcQvho", "party_members": [{"user_id": "XRTk5ECeB5IrVWzz"}, {"user_id": "TL5Z20YYlScx4TQt"}, {"user_id": "Vgj2BZDIraORUDat"}]}, {"party_attributes": {"VNo3NPavypp85jnj": {}, "06Ao6cMItUikU0XZ": {}, "j00kYm2Ql2OWw1uO": {}}, "party_id": "K3Nwrf2vs2Zn2ckE", "party_members": [{"user_id": "sOhs8eRDWrslxgDa"}, {"user_id": "h9zCFeyuHRhtT5YK"}, {"user_id": "ltRo7l78XO2TJRw7"}]}]}], "namespace": "acsidEPb2C4DWWjS", "notification_payload": {}, "pod_name": "h6rfNVNkWK0ma2vZ", "region": "O4YBmBncMEcZwY01", "session_id": "oU0WUGo7J3xJiFFK"}' \
    > test.out 2>&1
eval_tap $? 74 'CreateSession' test.out

#- 75 ClaimServer
samples/cli/sample-apps Dsmc claimServer \
    --namespace $AB_NAMESPACE \
    --body '{"session_id": "PHyfwipeQJFr4ABr"}' \
    > test.out 2>&1
eval_tap $? 75 'ClaimServer' test.out

#- 76 GetSession
samples/cli/sample-apps Dsmc getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'm1IhbCqkoRTaFVoX' \
    > test.out 2>&1
eval_tap $? 76 'GetSession' test.out

#- 77 CancelSession
samples/cli/sample-apps Dsmc cancelSession \
    --namespace $AB_NAMESPACE \
    --sessionID '13gXKenSFefdupeU' \
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
    --region 'o4U20B73go8piWBD' \
    > test.out 2>&1
eval_tap $? 80 'ListProvidersByRegion' test.out

#- 81 PublicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    > test.out 2>&1
eval_tap $? 81 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE