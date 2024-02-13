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
echo "1..35"

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

#- 2 AdminCreateChainingOperations
samples/cli/sample-apps Inventory adminCreateChainingOperations \
    --namespace $AB_NAMESPACE \
    --body '{"message": "nZXj9DJQ", "operations": [{"consumeItems": [{"inventoryId": "FThTkVc0", "qty": 79, "slotId": "whmL3MHu", "sourceItemId": "SZH9geIT"}, {"inventoryId": "yckP5U6f", "qty": 25, "slotId": "cPlDMCKT", "sourceItemId": "ODHBfKms"}, {"inventoryId": "FCku659W", "qty": 18, "slotId": "NDlwRmZz", "sourceItemId": "swa90NMO"}], "createItems": [{"customAttributes": {"rw7nu95W": {}, "VS8kN6e5": {}, "Nrz4fTqz": {}}, "inventoryConfigurationCode": "5lB4Lhfq", "inventoryId": "yMoDC74h", "qty": 51, "serverCustomAttributes": {"V2fhwzEY": {}, "acfCa1ZY": {}, "bRI6Y8vE": {}}, "slotId": "ZKhrnNbx", "slotUsed": 45, "sourceItemId": "rBwmBRNT", "tags": ["g13HLBsf", "ihBKyAOs", "Q98N1Dc4"], "toSpecificInventory": false, "type": "7JX5HF9P"}, {"customAttributes": {"awyXAsGX": {}, "ZsbQ4vS3": {}, "AWOqIL8q": {}}, "inventoryConfigurationCode": "TaRwjpc7", "inventoryId": "TsNaXC3O", "qty": 97, "serverCustomAttributes": {"Cxy8EMib": {}, "onZpHDFt": {}, "Ykz5vkDy": {}}, "slotId": "T68aefqs", "slotUsed": 76, "sourceItemId": "gruBhEUo", "tags": ["NUlTEsUD", "oO0bdKGU", "5ra83v6h"], "toSpecificInventory": false, "type": "J0OYWmGm"}, {"customAttributes": {"ciTDqrN9": {}, "pr99slZK": {}, "bYo6bJcp": {}}, "inventoryConfigurationCode": "Znfy0llf", "inventoryId": "TR9ZlMzy", "qty": 40, "serverCustomAttributes": {"LaNnn1yJ": {}, "4c5Dtpmb": {}, "EQhTeX2z": {}}, "slotId": "MFSOHrVU", "slotUsed": 59, "sourceItemId": "pWr9P7Yi", "tags": ["QqfoXrFx", "N2P7Vbev", "Arzguiji"], "toSpecificInventory": true, "type": "fhKVR59S"}], "removeItems": [{"inventoryId": "JDmWAp07", "slotId": "KTKoYtLF", "sourceItemId": "RH09IZXF"}, {"inventoryId": "uUL4zxjt", "slotId": "pl8JI9Ah", "sourceItemId": "3IOfVzNN"}, {"inventoryId": "bHcVgqIb", "slotId": "WAucIumT", "sourceItemId": "9EU8KsDE"}], "targetUserId": "h3AQijGu", "updateItems": [{"customAttributes": {"GtNhiB1E": {}, "821mGWVf": {}, "gsOIuSeN": {}}, "inventoryId": "NlKnzAlv", "serverCustomAttributes": {"LiEwLew8": {}, "0buNMqxA": {}, "mcD9H94a": {}}, "slotId": "TuigtBhG", "sourceItemId": "WEz6NYbA", "tags": ["9zTNeT00", "87KcjQgS", "mBgK59O3"], "type": "k560Ld7W"}, {"customAttributes": {"3rZclOe3": {}, "lGk6eUsK": {}, "oGEHGGpN": {}}, "inventoryId": "D4GqzJbP", "serverCustomAttributes": {"tnvitfXZ": {}, "hMMFZKmW": {}, "qBaXj4hz": {}}, "slotId": "mJ9X2S0r", "sourceItemId": "pHrpTL6x", "tags": ["m6Jp3obV", "jJFMdCga", "NzxPlheh"], "type": "Pgna80iX"}, {"customAttributes": {"aSYSPjzZ": {}, "qWavnuQE": {}, "RweChFmn": {}}, "inventoryId": "A6nmi89Y", "serverCustomAttributes": {"N564fMD3": {}, "P7sfIXUo": {}, "FvjxqXzK": {}}, "slotId": "ngMv6x08", "sourceItemId": "oFRm2xyC", "tags": ["rZ0kgzPw", "8FqqnQP5", "I9U1DoSp"], "type": "lpHlTf5e"}]}, {"consumeItems": [{"inventoryId": "gv8mDVqc", "qty": 91, "slotId": "VYXbIIVc", "sourceItemId": "CdVguvJq"}, {"inventoryId": "krofvKnL", "qty": 52, "slotId": "ASKzPuLR", "sourceItemId": "iwmlKixZ"}, {"inventoryId": "RUk2xjcY", "qty": 52, "slotId": "G5ipHcC3", "sourceItemId": "D7ErCc4q"}], "createItems": [{"customAttributes": {"ZeljZ5RC": {}, "vtyFpwDn": {}, "8IgowyIQ": {}}, "inventoryConfigurationCode": "GIXo0kPj", "inventoryId": "t7NTg2Mt", "qty": 75, "serverCustomAttributes": {"3nUBG0CH": {}, "rUKplIMw": {}, "V1HC62Rs": {}}, "slotId": "Ox8AHwiC", "slotUsed": 43, "sourceItemId": "cVwxTKmE", "tags": ["fgDqb57Y", "YBxYx2E7", "zo3UA3uy"], "toSpecificInventory": true, "type": "VkYrvrUw"}, {"customAttributes": {"ZQGOPTRF": {}, "UqprVHKd": {}, "zA7IS4ux": {}}, "inventoryConfigurationCode": "19ztOVzJ", "inventoryId": "uuRAD77f", "qty": 88, "serverCustomAttributes": {"HuujwmNA": {}, "gxJsUf3w": {}, "murRKnq6": {}}, "slotId": "MvqqvJnN", "slotUsed": 6, "sourceItemId": "jhMvdmvF", "tags": ["JqBLRGah", "odE9tYbQ", "x5qZu17d"], "toSpecificInventory": false, "type": "JT2iCA3a"}, {"customAttributes": {"DFi1yW1P": {}, "0yYO7CKp": {}, "e0mkdzTJ": {}}, "inventoryConfigurationCode": "qRXeWd3T", "inventoryId": "tRDHK36F", "qty": 76, "serverCustomAttributes": {"hsJib9WA": {}, "U8J2Z2QY": {}, "3NO3mWrW": {}}, "slotId": "suD1YCU3", "slotUsed": 100, "sourceItemId": "0pyMRHhN", "tags": ["3v9Q1eQe", "jIGMkFim", "UrR4yRwT"], "toSpecificInventory": false, "type": "k9EAYVIw"}], "removeItems": [{"inventoryId": "amSehr6U", "slotId": "XHcIAmkl", "sourceItemId": "pleSRIkx"}, {"inventoryId": "SSrHDLNd", "slotId": "mdwJFDjo", "sourceItemId": "qZq366uy"}, {"inventoryId": "70KWwhZM", "slotId": "nB4dUpSQ", "sourceItemId": "WHrm3T21"}], "targetUserId": "Y9sCT2U7", "updateItems": [{"customAttributes": {"jHPkwmp8": {}, "inTcSOzX": {}, "cdlMFPVI": {}}, "inventoryId": "VoouTGlT", "serverCustomAttributes": {"aLJgrtL7": {}, "5VtvVPdu": {}, "7Iq2o9OE": {}}, "slotId": "HSM3Q8Jt", "sourceItemId": "bUNJ286S", "tags": ["0JQCN5fn", "GHLkJWmv", "Nya4KqWu"], "type": "9pXsyrb3"}, {"customAttributes": {"uR843KLu": {}, "twp2Bmhn": {}, "Sm3KCfUR": {}}, "inventoryId": "sBdWiJtl", "serverCustomAttributes": {"8BUb2Cfx": {}, "HshUDE5z": {}, "jSmPV15K": {}}, "slotId": "aCpFG6vd", "sourceItemId": "NYEsydnh", "tags": ["5aMYu6G0", "1ja4esr3", "PVOX27il"], "type": "rRhmLfNy"}, {"customAttributes": {"KyLnUQB0": {}, "AJ1QdWQw": {}, "RyVK5NGn": {}}, "inventoryId": "Ukcoanv2", "serverCustomAttributes": {"r4pV5e08": {}, "zBTDXr2U": {}, "ancXoYXF": {}}, "slotId": "FMOA2hAv", "sourceItemId": "YhNjn8La", "tags": ["2gqA1nYt", "aB7hW5Rd", "JuZPsmdp"], "type": "VYjlMihw"}]}, {"consumeItems": [{"inventoryId": "lH33iR4L", "qty": 52, "slotId": "WPkCtE8k", "sourceItemId": "zoGBtQ0z"}, {"inventoryId": "8JQfowPU", "qty": 24, "slotId": "2GDXcmQa", "sourceItemId": "5LkBNVxW"}, {"inventoryId": "VQX4zRBR", "qty": 83, "slotId": "tY7Mi4RN", "sourceItemId": "QBSpP0Wv"}], "createItems": [{"customAttributes": {"ZSeS2BdU": {}, "4lXvYx5T": {}, "uEf1B2Rf": {}}, "inventoryConfigurationCode": "iyRaCv1X", "inventoryId": "dhQr88eI", "qty": 82, "serverCustomAttributes": {"xxD9wzZR": {}, "VisxdiW0": {}, "M4fIuvF4": {}}, "slotId": "NMHqVre0", "slotUsed": 52, "sourceItemId": "y2msIHwm", "tags": ["bFy11tR2", "KclwsQ7n", "JK4Nl2be"], "toSpecificInventory": true, "type": "Pd4JTJWj"}, {"customAttributes": {"AKqZSHel": {}, "qxJKpWlp": {}, "CKabp8cX": {}}, "inventoryConfigurationCode": "2ZpoHkg8", "inventoryId": "cUiAd3w6", "qty": 74, "serverCustomAttributes": {"zYUzL8gV": {}, "c5Qmz4E1": {}, "zHlkpGaI": {}}, "slotId": "G2YneHnT", "slotUsed": 77, "sourceItemId": "AlySYHR4", "tags": ["YgQfGSWZ", "E6GmuvEI", "2v54LjbY"], "toSpecificInventory": true, "type": "ooQ4Ezx8"}, {"customAttributes": {"k4PAHwyU": {}, "xl1NEn8I": {}, "7SSVshlD": {}}, "inventoryConfigurationCode": "9GEwk3py", "inventoryId": "cfZe1QBy", "qty": 38, "serverCustomAttributes": {"tCbffV8t": {}, "Gdf93SgZ": {}, "r6aiGiak": {}}, "slotId": "qXZJXlbq", "slotUsed": 89, "sourceItemId": "oB4B7JBW", "tags": ["kTmEl5j5", "jUcTSXk1", "knY32bYB"], "toSpecificInventory": false, "type": "DKNLW3Uj"}], "removeItems": [{"inventoryId": "zR4yatu9", "slotId": "y5VXYQVS", "sourceItemId": "l6AlBFFh"}, {"inventoryId": "amnY7kuN", "slotId": "tduFhACG", "sourceItemId": "FkEkZO9L"}, {"inventoryId": "cxaBvusC", "slotId": "NZ5JhpeT", "sourceItemId": "Brr5vd7J"}], "targetUserId": "rOX1DPEp", "updateItems": [{"customAttributes": {"h4AaXs3K": {}, "aq2Qs4f0": {}, "FFIKqYgf": {}}, "inventoryId": "QKRwqDmb", "serverCustomAttributes": {"USWCPtAt": {}, "wv3j6LGw": {}, "qPvRZDBf": {}}, "slotId": "zxkLrRt6", "sourceItemId": "NbWNedsy", "tags": ["9qjuoyW9", "BkuaFbln", "LYnvs87k"], "type": "gkHV4FGn"}, {"customAttributes": {"Ee0BdREO": {}, "0tzQiPaf": {}, "UK5vwhUG": {}}, "inventoryId": "fiqgt4uP", "serverCustomAttributes": {"2oshuXka": {}, "YgVjT4Vk": {}, "67n1UgJe": {}}, "slotId": "uF6lXYai", "sourceItemId": "051DFNUZ", "tags": ["2nABXgn1", "HI9KCsqj", "WznKX5yC"], "type": "HSmPtM2Y"}, {"customAttributes": {"RV15eBYo": {}, "Ra0388s8": {}, "ksaEoKmX": {}}, "inventoryId": "tJjZMtq5", "serverCustomAttributes": {"ipglUhaR": {}, "rWYLjkqB": {}, "ciVNd9Hj": {}}, "slotId": "ASNDhhtU", "sourceItemId": "kMdtFugz", "tags": ["Kklr1HoI", "y8ywO9tm", "D3rjFxhW"], "type": "fJVPmzkN"}]}], "requestId": "Tk5fsH9u"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'UuNgUUHk' \
    --limit '3' \
    --offset '12' \
    --sortBy 'inventoryConfigurationCode:desc' \
    --userId 'cyBwqVyD' \
    > test.out 2>&1
eval_tap $? 3 'AdminListInventories' test.out

#- 4 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "gBsb9YOx", "userId": "ANSIU1Ir"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateInventory' test.out

#- 5 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'NghJOpNd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetInventory' test.out

#- 6 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId '5ByKsih8' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 92}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateInventory' test.out

#- 7 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'Xa4GsMOa' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "9VwODbew"}' \
    > test.out 2>&1
eval_tap $? 7 'DeleteInventory' test.out

#- 8 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'MUyLcu2e' \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '70' \
    --qtyGte '74' \
    --sortBy 'qty:desc' \
    --sourceItemId 'CoYtymTi' \
    --tags 'uyz1AA97' \
    > test.out 2>&1
eval_tap $? 8 'AdminListItems' test.out

#- 9 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'Ox3VU3pH' \
    --namespace $AB_NAMESPACE \
    --slotId 'gr6iwzbh' \
    --sourceItemId 'ZmOFOH6P' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventoryItem' test.out

#- 10 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'u7jRZNqx' \
    --limit '97' \
    --offset '8' \
    --sortBy 'updatedAt:desc' \
    > test.out 2>&1
eval_tap $? 10 'AdminListInventoryConfigurations' test.out

#- 11 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "olac6jt0", "description": "O1UpTX5T", "initialMaxSlots": 63, "maxInstancesPerUser": 49, "maxUpgradeSlots": 32, "name": "8FK0SFzi"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminCreateInventoryConfiguration' test.out

#- 12 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'doAtwIvh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminGetInventoryConfiguration' test.out

#- 13 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId '3iRZ05jw' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "ac7MCuNY", "description": "zNVCfOVD", "initialMaxSlots": 61, "maxInstancesPerUser": 57, "maxUpgradeSlots": 78, "name": "AuyVlfb0"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminUpdateInventoryConfiguration' test.out

#- 14 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'OSRMKAG0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteInventoryConfiguration' test.out

#- 15 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '55' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 15 'AdminListItemTypes' test.out

#- 16 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "xRhwfahA"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateItemType' test.out

#- 17 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'ymc3CKuU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDeleteItemType' test.out

#- 18 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '54' \
    --owner 'gu2AnFb5' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 18 'AdminListTags' test.out

#- 19 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "Ivwhaqd9", "owner": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminCreateTag' test.out

#- 20 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 't5AEnTxG' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteTag' test.out

#- 21 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId '03uFVlwq' \
    --namespace $AB_NAMESPACE \
    --userId 'jQMS77Qs' \
    --body '{"qty": 20, "slotId": "xsQjpjc2", "sourceItemId": "QnTPQNmL"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminConsumeUserItem' test.out

#- 22 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'Wzp3TUUH' \
    --namespace $AB_NAMESPACE \
    --userId 'gec68GAL' \
    --body '[{"customAttributes": {"4OCKJ0Ap": {}, "3v57Ye29": {}, "FDMTWOyj": {}}, "serverCustomAttributes": {"waaunEpn": {}, "8Wp5XrWx": {}, "Or24lmq1": {}}, "slotId": "QISJSSoC", "sourceItemId": "poIUEO9T", "tags": ["e6F1vpbw", "r6fmM7KE", "M8WrNjUn"], "type": "tfgvQrDN"}, {"customAttributes": {"9oAVZEK6": {}, "m6MPzl0t": {}, "s9PpeHJM": {}}, "serverCustomAttributes": {"Qurpcf83": {}, "cMLK42Mm": {}, "SUFxBcDq": {}}, "slotId": "0kf7TUHF", "sourceItemId": "ELzQp7rn", "tags": ["pWKBVoKU", "aqLpRAdy", "50VlnOTj"], "type": "5jf2V0wl"}, {"customAttributes": {"1jtLUhXu": {}, "TGCVtrLq": {}, "M3dGVBPJ": {}}, "serverCustomAttributes": {"oWWb5GAj": {}, "9nybXm2G": {}, "SsTJV64V": {}}, "slotId": "5yewQnLf", "sourceItemId": "aY86vNHQ", "tags": ["Iy3yb45M", "iQP6BsUz", "F7Laee7U"], "type": "g1E1DX6D"}]' \
    > test.out 2>&1
eval_tap $? 22 'AdminBulkUpdateMyItems' test.out

#- 23 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'zsMTutPt' \
    --namespace $AB_NAMESPACE \
    --userId 'OaoGqEDT' \
    --body '{"customAttributes": {"UgkarvXS": {}, "MAL76ayd": {}, "HHP6jdkx": {}}, "qty": 44, "serverCustomAttributes": {"fAPyBdgB": {}, "a543u20D": {}, "KOfrzgUT": {}}, "slotId": "6pxESEI8", "slotUsed": 76, "sourceItemId": "zcxVzMlK", "tags": ["qk3ZjlpJ", "m18rQyTc", "5LUbSr8d"], "type": "onu2gP7n"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminSaveItemToInventory' test.out

#- 24 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'lXHCPQoj' \
    --namespace $AB_NAMESPACE \
    --userId '2czYETHJ' \
    --body '[{"slotId": "hUDeXnZp", "sourceItemId": "MaVzKtdl"}, {"slotId": "b3X7JivM", "sourceItemId": "vc2sjTri"}, {"slotId": "4BpNjMBN", "sourceItemId": "7goCW74x"}]' \
    > test.out 2>&1
eval_tap $? 24 'AdminBulkRemoveItems' test.out

#- 25 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'utz7I33k' \
    --body '{"customAttributes": {"SgcnT0Zs": {}, "Xx3x9Ood": {}, "JwDDVlTN": {}}, "inventoryConfigurationCode": "Gj3gvywH", "qty": 91, "serverCustomAttributes": {"BOPEjV53": {}, "Cgx7F9yN": {}, "5D6Fyvr4": {}}, "slotId": "xyM9faRO", "slotUsed": 100, "sourceItemId": "n8k2PwEY", "tags": ["LvDAUDqg", "3CVFxmf9", "zFuOEqFg"], "type": "WW5zHMFq"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminSaveItem' test.out

#- 26 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'RLYvXtYB' \
    --limit '81' \
    --offset '86' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 26 'PublicListInventoryConfigurations' test.out

#- 27 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '24' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 27 'PublicListItemTypes' test.out

#- 28 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '65' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 28 'PublicListTags' test.out

#- 29 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'IHEVFT9j' \
    --limit '33' \
    --offset '75' \
    --sortBy 'updatedAt:desc' \
    > test.out 2>&1
eval_tap $? 29 'PublicListInventories' test.out

#- 30 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'eTXakiPz' \
    --namespace $AB_NAMESPACE \
    --body '{"qty": 45, "slotId": "cJszjyjy", "sourceItemId": "BNOt2iL6"}' \
    > test.out 2>&1
eval_tap $? 30 'PublicConsumeMyItem' test.out

#- 31 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'bkqauwMh' \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '93' \
    --qtyGte '37' \
    --sortBy 'qty' \
    --sourceItemId 'wI1TyjR0' \
    --tags 'q7RHGoQn' \
    > test.out 2>&1
eval_tap $? 31 'PublicListItems' test.out

#- 32 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'Gr0yJcbv' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"ynXm3eMf": {}, "6nGTEOQW": {}, "dmyDOPd7": {}}, "slotId": "PRCetCSu", "sourceItemId": "JWF7qjTQ", "tags": ["OM2sm6fh", "oNy26ELN", "ZgWlclMI"]}, {"customAttributes": {"ibiYPT2g": {}, "CjRyxDlJ": {}, "Y4EI74GM": {}}, "slotId": "ryntLMR5", "sourceItemId": "mO4AyKHd", "tags": ["30MVrJcg", "bXTpWV8X", "3C1w2spr"]}, {"customAttributes": {"C7iLu6rL": {}, "mUrbeMjH": {}, "GT1zLSn4": {}}, "slotId": "6qN4JDOm", "sourceItemId": "0Uds2XmZ", "tags": ["tTrD3iut", "mWY7CgSF", "4LRhXydV"]}]' \
    > test.out 2>&1
eval_tap $? 32 'PublicBulkUpdateMyItems' test.out

#- 33 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'AuZITED9' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "ggEvSADj", "sourceItemId": "fGKEjt3a"}, {"slotId": "uWT8VEC1", "sourceItemId": "JgMkKdwV"}, {"slotId": "rETlvLXl", "sourceItemId": "jXg2vCTd"}]' \
    > test.out 2>&1
eval_tap $? 33 'PublicBulkRemoveMyItems' test.out

#- 34 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'kGsSNHDJ' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 43, "slotId": "mKJRQwd9", "sourceItemId": "KSEDtCJD"}, {"qty": 96, "slotId": "WwFHCIl0", "sourceItemId": "JPcWwfqx"}, {"qty": 95, "slotId": "97mBUClO", "sourceItemId": "EJfzCy4m"}], "srcInventoryId": "J8KPVtwa"}' \
    > test.out 2>&1
eval_tap $? 34 'PublicMoveMyItems' test.out

#- 35 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'LlN3GVAn' \
    --namespace $AB_NAMESPACE \
    --slotId 'E9sgJnTz' \
    --sourceItemId 'DnGlobO4' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE