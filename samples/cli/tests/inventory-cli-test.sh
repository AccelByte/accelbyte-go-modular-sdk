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
    --body '{"message": "vo0obECb", "operations": [{"consumeItems": [{"inventoryId": "FhU2beNW", "qty": 24, "slotId": "2moRwmck", "sourceItemId": "zrKbzXNd"}, {"inventoryId": "gu0NKlk9", "qty": 73, "slotId": "j8wxpnWf", "sourceItemId": "ehXbIRmU"}, {"inventoryId": "MyYJyi2p", "qty": 53, "slotId": "6iaAcpbf", "sourceItemId": "FhikjcMr"}], "createItems": [{"customAttributes": {"PhEX4lCu": {}, "UuIrpDvV": {}, "CrqcPi6z": {}}, "inventoryConfigurationCode": "W0dgiuKD", "inventoryId": "ztE115wS", "qty": 32, "serverCustomAttributes": {"o1Hs9Q2b": {}, "gIPVogc5": {}, "yMC9RB07": {}}, "slotId": "DrWrwdYp", "slotUsed": 44, "sourceItemId": "5wAJCzes", "tags": ["GpOJgpd8", "8MhpGOq1", "2avrf2Il"], "toSpecificInventory": true, "type": "JduQfauf"}, {"customAttributes": {"NMtLq3Pc": {}, "TmuCGlPS": {}, "NE4SGBPw": {}}, "inventoryConfigurationCode": "jUSjB8sN", "inventoryId": "0i8AM26f", "qty": 43, "serverCustomAttributes": {"bAqQXewW": {}, "WHGKo7jP": {}, "1jVQDhKS": {}}, "slotId": "WgXif3wX", "slotUsed": 57, "sourceItemId": "aOZyIeJm", "tags": ["KQyoMzjt", "QOr40VOV", "bYuawsNi"], "toSpecificInventory": false, "type": "5anXb2aO"}, {"customAttributes": {"uwTnuKTf": {}, "aw8qUwWY": {}, "OC0FbxwK": {}}, "inventoryConfigurationCode": "poSBsy2m", "inventoryId": "xlUSsggp", "qty": 95, "serverCustomAttributes": {"EVC0TbnB": {}, "4Kifcjnp": {}, "x60FtRps": {}}, "slotId": "V66r2Nmd", "slotUsed": 78, "sourceItemId": "q0HUoC8H", "tags": ["MH3NvFOg", "0yKZCb6X", "P2R7U7N9"], "toSpecificInventory": true, "type": "bKOg9qP6"}], "removeItems": [{"inventoryId": "iFkNXYG7", "slotId": "mxwk9qrb", "sourceItemId": "RlKs9Cnc"}, {"inventoryId": "hFbXiSkg", "slotId": "5DZXEtqk", "sourceItemId": "K8B3Kdvu"}, {"inventoryId": "KftJeCIF", "slotId": "Qi2Mn8jP", "sourceItemId": "xGtM927Z"}], "targetUserId": "tUQaO1G6", "updateItems": [{"customAttributes": {"1pJo4RUo": {}, "Z9S2Nw0U": {}, "qHNZr38k": {}}, "inventoryId": "cPQZCluo", "serverCustomAttributes": {"pHe3FmDM": {}, "NxZmm05a": {}, "X7K1vHYJ": {}}, "slotId": "Vppdh8vR", "sourceItemId": "WKEjy9YX", "tags": ["N3WX3vfb", "xl8t43b4", "yZxxk76p"], "type": "4xgbPYfv"}, {"customAttributes": {"NiOYAbsi": {}, "x5osAPoU": {}, "2LY6haRC": {}}, "inventoryId": "FFY9z0v7", "serverCustomAttributes": {"LXjjxCsl": {}, "zgt0exyL": {}, "GlAGBpiA": {}}, "slotId": "izAZYtI1", "sourceItemId": "xSffla1U", "tags": ["zjvV1UQd", "2JQ5AQsQ", "pOqxxswE"], "type": "MnUxe888"}, {"customAttributes": {"4Sw3W8VX": {}, "n7TafM8h": {}, "FfNsi4ux": {}}, "inventoryId": "K3wdgFjP", "serverCustomAttributes": {"VOI6W8jQ": {}, "webYnVjM": {}, "CDPUWFxr": {}}, "slotId": "hsj0pbUN", "sourceItemId": "Emgng6jF", "tags": ["E1Rf3XRa", "vnFxRyWz", "cohBFNhi"], "type": "F73hpfNw"}]}, {"consumeItems": [{"inventoryId": "OXYDWUho", "qty": 23, "slotId": "Vkh1S7LD", "sourceItemId": "Pis8FrX3"}, {"inventoryId": "jaeGxi5B", "qty": 82, "slotId": "oH0Fmhzz", "sourceItemId": "VDQzSaZJ"}, {"inventoryId": "sT1z1xOC", "qty": 29, "slotId": "wmXVoTQY", "sourceItemId": "PVZVz0Ct"}], "createItems": [{"customAttributes": {"LPKsAAT7": {}, "tYKEZZCQ": {}, "z1ofgnGw": {}}, "inventoryConfigurationCode": "xDLtu9eb", "inventoryId": "ZIMeXGj8", "qty": 5, "serverCustomAttributes": {"UG406ZJA": {}, "E1Ik0VO2": {}, "JZfFbpvZ": {}}, "slotId": "et2Iimso", "slotUsed": 98, "sourceItemId": "dfRqi1K2", "tags": ["FP8B6NdA", "JfHA87jY", "fXG1fTfQ"], "toSpecificInventory": true, "type": "PeS9Le3h"}, {"customAttributes": {"z1xxNP7y": {}, "b5dxlDrH": {}, "Y8Np7Uq4": {}}, "inventoryConfigurationCode": "F9s6zOqj", "inventoryId": "GGMxhgGf", "qty": 18, "serverCustomAttributes": {"CkyocG8X": {}, "oMWYjfDA": {}, "gPBO1c4h": {}}, "slotId": "BMpelHdx", "slotUsed": 37, "sourceItemId": "hbhjgCFm", "tags": ["0DQCNs1c", "AKsDuMbS", "ZmXjUdfT"], "toSpecificInventory": true, "type": "B6IkfAOI"}, {"customAttributes": {"ZuBC08sn": {}, "r1TvUFzw": {}, "Dce1Qv6b": {}}, "inventoryConfigurationCode": "nCw8tGns", "inventoryId": "zFJj1LVS", "qty": 37, "serverCustomAttributes": {"eijE96uo": {}, "CMZy4uSs": {}, "2EXww00U": {}}, "slotId": "GxCrkXXv", "slotUsed": 75, "sourceItemId": "L1BCVFzj", "tags": ["0EZWAHJc", "tfvtqwzp", "OhbUSZIG"], "toSpecificInventory": true, "type": "aFuzKFwl"}], "removeItems": [{"inventoryId": "V9AWQoDh", "slotId": "EHRacs9R", "sourceItemId": "nzkzygTw"}, {"inventoryId": "l8Jny85k", "slotId": "RxXq5UI2", "sourceItemId": "ccurFvin"}, {"inventoryId": "FQLGNlX3", "slotId": "EmNGRgdl", "sourceItemId": "fW0ONZoa"}], "targetUserId": "WT3iElIr", "updateItems": [{"customAttributes": {"Fkst1RHT": {}, "XLdBFWgT": {}, "DCnHAoeC": {}}, "inventoryId": "c7zbjua3", "serverCustomAttributes": {"uCXX4y75": {}, "oqkWirc4": {}, "5YUoBDDN": {}}, "slotId": "qpXtSZ82", "sourceItemId": "PQmhP43W", "tags": ["vQAi6NvG", "u2vCqfnn", "8CRMf9P9"], "type": "UYViJDHL"}, {"customAttributes": {"8ipTRU41": {}, "6tY0pJJE": {}, "qMb9U567": {}}, "inventoryId": "EDCSN9dq", "serverCustomAttributes": {"4sixa9Mg": {}, "EL7M53q1": {}, "tzJJqELD": {}}, "slotId": "0k7qtPDl", "sourceItemId": "SiYEC6c8", "tags": ["E7FPtwj8", "XcwWAvI7", "9i9AgkGK"], "type": "0w4P6LZk"}, {"customAttributes": {"uAXZiap0": {}, "GgEA6Wgy": {}, "auY3No3b": {}}, "inventoryId": "apQhVdH7", "serverCustomAttributes": {"ynaNOsfG": {}, "YhyRqbIb": {}, "GPFzZ7cB": {}}, "slotId": "GSKlv1Kz", "sourceItemId": "lc6pHHvF", "tags": ["mxP8gSLr", "uASzNlqk", "el61cb5T"], "type": "aTWJYhzI"}]}, {"consumeItems": [{"inventoryId": "RBrtslxF", "qty": 100, "slotId": "IOtQREpm", "sourceItemId": "CPEbPvUp"}, {"inventoryId": "9zYPUobT", "qty": 25, "slotId": "g69OvcIR", "sourceItemId": "iacUHX8W"}, {"inventoryId": "JP24PM7e", "qty": 80, "slotId": "Q91RJGMX", "sourceItemId": "j69TLXDN"}], "createItems": [{"customAttributes": {"y1uskLcg": {}, "eyeBi2M8": {}, "ANrSx12h": {}}, "inventoryConfigurationCode": "sDYFw6WL", "inventoryId": "AY9axC5g", "qty": 94, "serverCustomAttributes": {"RLbvp7rQ": {}, "h54QPpAP": {}, "SGOwRD0C": {}}, "slotId": "Ufms1I0T", "slotUsed": 49, "sourceItemId": "uFq12UuV", "tags": ["BjcIdem8", "s5vjkpNw", "IkDySHgk"], "toSpecificInventory": true, "type": "XGQiSdbq"}, {"customAttributes": {"fUWmZH78": {}, "7OZieWVH": {}, "GgAwzrEK": {}}, "inventoryConfigurationCode": "BJu8ChzJ", "inventoryId": "PKvhqV5c", "qty": 48, "serverCustomAttributes": {"MyeQ2ejz": {}, "txYroyv5": {}, "0EO66wEl": {}}, "slotId": "3nPqqG9t", "slotUsed": 4, "sourceItemId": "u5VruKlr", "tags": ["pWYlEnc6", "yNy7tumf", "wtwOKg5c"], "toSpecificInventory": false, "type": "bTWjEOON"}, {"customAttributes": {"FsJi23Lv": {}, "E1wQr50e": {}, "NfSFdkqr": {}}, "inventoryConfigurationCode": "VlxDEZVB", "inventoryId": "GjbuC8Kb", "qty": 28, "serverCustomAttributes": {"L7LfI0qd": {}, "ImJZy1j0": {}, "wjsUfNGB": {}}, "slotId": "z49yUSrQ", "slotUsed": 86, "sourceItemId": "TYLMwtuG", "tags": ["51hONWgC", "vy4LXAAT", "qRsvgypg"], "toSpecificInventory": true, "type": "5s1F0Jh4"}], "removeItems": [{"inventoryId": "Fghjf7l4", "slotId": "jHAHyy8U", "sourceItemId": "5Kco5eeZ"}, {"inventoryId": "aVVDXYnD", "slotId": "DzjlOs2U", "sourceItemId": "ztWw3RKl"}, {"inventoryId": "H2EsdlZH", "slotId": "NetnJFJ7", "sourceItemId": "6JquA1NT"}], "targetUserId": "4ZoqQdM6", "updateItems": [{"customAttributes": {"YoZ0vl7A": {}, "d7ybG19n": {}, "7vqCkDYR": {}}, "inventoryId": "YIM4S9X8", "serverCustomAttributes": {"zqxZKni9": {}, "YBeeuaQt": {}, "oANzlj9X": {}}, "slotId": "MOdpRmha", "sourceItemId": "CIDpJofI", "tags": ["TLWWWw9Y", "pfRIl2QX", "DqDq09Rk"], "type": "5vvsXZUv"}, {"customAttributes": {"ammbXj7g": {}, "f6OtMRI6": {}, "tiFJv2JI": {}}, "inventoryId": "GpkuFSR9", "serverCustomAttributes": {"7KEXLDZz": {}, "KrgLvGdF": {}, "TGNoXDax": {}}, "slotId": "dFEjHY8K", "sourceItemId": "OjtA7vAD", "tags": ["fJl6r4RF", "W5FwF8Rz", "0Zk8eotE"], "type": "ioQwzKMX"}, {"customAttributes": {"U6L5sIyF": {}, "23rPNs4N": {}, "f0vC6kfE": {}}, "inventoryId": "XpIFWNw8", "serverCustomAttributes": {"vFgV7rrV": {}, "Q7yvca9H": {}, "D4x5S81J": {}}, "slotId": "xxf1oVGk", "sourceItemId": "OLCMLT0t", "tags": ["NpfXuiFA", "rWXvioF0", "21MgtyKs"], "type": "kFC4KG5X"}]}], "requestId": "0yjxigyo"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode '6ptqO6zW' \
    --limit '18' \
    --offset '0' \
    --sortBy 'createdAt:desc' \
    --userId 'Pfu9v79b' \
    > test.out 2>&1
eval_tap $? 3 'AdminListInventories' test.out

#- 4 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "ltgYhh3a", "userId": "1FjaU48o"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateInventory' test.out

#- 5 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'zD8I9i8m' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetInventory' test.out

#- 6 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'BRVfLDw3' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 23}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateInventory' test.out

#- 7 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'gmOAPBlc' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "Qxkglh7z"}' \
    > test.out 2>&1
eval_tap $? 7 'DeleteInventory' test.out

#- 8 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'hojIEXFi' \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '89' \
    --qtyGte '27' \
    --sortBy 'qty:asc' \
    --sourceItemId 'nMuqfSFO' \
    --tags '26jkKw1x' \
    > test.out 2>&1
eval_tap $? 8 'AdminListItems' test.out

#- 9 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'iWxiR52O' \
    --namespace $AB_NAMESPACE \
    --slotId 'WmDY2iiO' \
    --sourceItemId 'rhZ9huRe' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventoryItem' test.out

#- 10 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'xIgM2C6Y' \
    --limit '38' \
    --offset '37' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 10 'AdminListInventoryConfigurations' test.out

#- 11 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "rs5ilHu5", "description": "mtaYaDLJ", "initialMaxSlots": 62, "maxInstancesPerUser": 66, "maxUpgradeSlots": 11, "name": "raOpXLuj"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminCreateInventoryConfiguration' test.out

#- 12 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'W2wE3dle' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminGetInventoryConfiguration' test.out

#- 13 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId '12xpyPV4' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "gszXG67b", "description": "Cj1K7IsQ", "initialMaxSlots": 18, "maxInstancesPerUser": 29, "maxUpgradeSlots": 77, "name": "J3wZzIoR"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminUpdateInventoryConfiguration' test.out

#- 14 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'iFvWwamz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteInventoryConfiguration' test.out

#- 15 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '43' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 15 'AdminListItemTypes' test.out

#- 16 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "GqpcF1je"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateItemType' test.out

#- 17 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'HqCUSCQV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDeleteItemType' test.out

#- 18 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '8' \
    --owner 'QRwmOyss' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 18 'AdminListTags' test.out

#- 19 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "0X8LcD9V", "owner": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminCreateTag' test.out

#- 20 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'aNpG6UtI' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteTag' test.out

#- 21 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'YucFa5Fk' \
    --namespace $AB_NAMESPACE \
    --userId 'J5WcXN2o' \
    --body '{"qty": 9, "slotId": "192jCTKi", "sourceItemId": "19gfdL1O"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminConsumeUserItem' test.out

#- 22 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'QZrmeL60' \
    --namespace $AB_NAMESPACE \
    --userId 'nQKzw7NY' \
    --body '[{"customAttributes": {"N5rx9wJn": {}, "l9fgTDMx": {}, "XUiChqBv": {}}, "serverCustomAttributes": {"xOya1bZ3": {}, "uXxh3q3Q": {}, "HDZqZgpc": {}}, "slotId": "NR6NQIBs", "sourceItemId": "2Ln1W5C1", "tags": ["wwka98bP", "V73Gcnws", "4Zf9dUhv"], "type": "V9uhA03E"}, {"customAttributes": {"MPD6ADxN": {}, "K30s2y8e": {}, "Ki1nKnkP": {}}, "serverCustomAttributes": {"qx9cpFuh": {}, "mj2C4ztU": {}, "BePtAEJ0": {}}, "slotId": "PMd33ApN", "sourceItemId": "F8IHfeO2", "tags": ["DSHMCqdE", "W9v78B0z", "zIP5Ryro"], "type": "vLDKDuKD"}, {"customAttributes": {"BUtBf7uY": {}, "3wNNQoSr": {}, "fKadbFKw": {}}, "serverCustomAttributes": {"e57Q6hux": {}, "9n6Mfk4b": {}, "bANSTVSc": {}}, "slotId": "H7hpk0W8", "sourceItemId": "5Ogp0M7L", "tags": ["bH5bgbSf", "er6iXniH", "EFdb3GuD"], "type": "z72X3cO3"}]' \
    > test.out 2>&1
eval_tap $? 22 'AdminBulkUpdateMyItems' test.out

#- 23 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'wOqmQ35p' \
    --namespace $AB_NAMESPACE \
    --userId 'eApjonk2' \
    --body '{"customAttributes": {"fDgFrlsv": {}, "SXjmEuWy": {}, "nGatwawL": {}}, "qty": 69, "serverCustomAttributes": {"2do5uqA7": {}, "JvFgWefS": {}, "vAEmm0py": {}}, "slotId": "2DY6LJWq", "slotUsed": 73, "sourceItemId": "VvEHSm4Y", "tags": ["A44jXxaj", "B2Nh5aF6", "7sH2fCyh"], "type": "uPeGvceS"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminSaveItemToInventory' test.out

#- 24 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'oOU7rua3' \
    --namespace $AB_NAMESPACE \
    --userId 'mPkjwWU0' \
    --body '[{"slotId": "qNQBaygS", "sourceItemId": "Jd0BXaHA"}, {"slotId": "HQk7phAm", "sourceItemId": "WLFwCzYU"}, {"slotId": "uCXSOZV9", "sourceItemId": "Or5t38rX"}]' \
    > test.out 2>&1
eval_tap $? 24 'AdminBulkRemoveItems' test.out

#- 25 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'PIjQddvq' \
    --body '{"customAttributes": {"7NnLRFfq": {}, "6RPqfvFV": {}, "tVnq7EH8": {}}, "inventoryConfigurationCode": "lDsRDp9d", "qty": 70, "serverCustomAttributes": {"IpWjHDkD": {}, "nk4mhOoI": {}, "2LxYbtAH": {}}, "slotId": "NOvtHf0k", "slotUsed": 5, "sourceItemId": "06GFKnSa", "tags": ["jE6KcMoT", "UCRilCij", "mX8tyN7F"], "type": "sb4h8cof"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminSaveItem' test.out

#- 26 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'F1sGJtYZ' \
    --limit '100' \
    --offset '68' \
    --sortBy 'code:asc' \
    > test.out 2>&1
eval_tap $? 26 'PublicListInventoryConfigurations' test.out

#- 27 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '31' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 27 'PublicListItemTypes' test.out

#- 28 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '67' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 28 'PublicListTags' test.out

#- 29 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'Ah96ImfZ' \
    --limit '90' \
    --offset '25' \
    --sortBy 'updatedAt:desc' \
    > test.out 2>&1
eval_tap $? 29 'PublicListInventories' test.out

#- 30 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'v2x3j8Z3' \
    --namespace $AB_NAMESPACE \
    --body '{"qty": 48, "slotId": "6AjmNxIJ", "sourceItemId": "e3rVYSUw"}' \
    > test.out 2>&1
eval_tap $? 30 'PublicConsumeMyItem' test.out

#- 31 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'AiqTg4EU' \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '50' \
    --qtyGte '31' \
    --sortBy 'updatedAt:asc' \
    --sourceItemId 'iQ55YiuP' \
    --tags 'TdqaWUk4' \
    > test.out 2>&1
eval_tap $? 31 'PublicListItems' test.out

#- 32 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'IFgKr984' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"BMFwaSg6": {}, "3NosF4OP": {}, "NQwqwApX": {}}, "slotId": "RFeYqkjV", "sourceItemId": "IMkyxEev", "tags": ["xFSfOsvh", "8geawzwJ", "DJUb0mfn"]}, {"customAttributes": {"9RtwWSyG": {}, "xuiyysxE": {}, "TrMclBnI": {}}, "slotId": "5EO4BLXj", "sourceItemId": "YJcGKmRJ", "tags": ["KJw3LOTh", "mA9JbZYB", "Zff7jIA1"]}, {"customAttributes": {"ptAQ1b4z": {}, "q10lRX3L": {}, "uV0FoyXu": {}}, "slotId": "HumIntL5", "sourceItemId": "JJ9cdSbL", "tags": ["GpE8TqWW", "bFJJYdHj", "BTquPiOF"]}]' \
    > test.out 2>&1
eval_tap $? 32 'PublicBulkUpdateMyItems' test.out

#- 33 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'xs0RlsiH' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "bcRlrODV", "sourceItemId": "E9mckMse"}, {"slotId": "wcCWunFB", "sourceItemId": "o6kfyxeO"}, {"slotId": "coUkSw3O", "sourceItemId": "yrzYe1HL"}]' \
    > test.out 2>&1
eval_tap $? 33 'PublicBulkRemoveMyItems' test.out

#- 34 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'QjogS7mn' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 27, "slotId": "PG8nA7WM", "sourceItemId": "ivIizkpl"}, {"qty": 59, "slotId": "FdPSuHg9", "sourceItemId": "Xcv8IyvW"}, {"qty": 3, "slotId": "vtlNRwuk", "sourceItemId": "ueCH5fQh"}], "srcInventoryId": "DE5EpzB3"}' \
    > test.out 2>&1
eval_tap $? 34 'PublicMoveMyItems' test.out

#- 35 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId '9XpuimQ5' \
    --namespace $AB_NAMESPACE \
    --slotId 'oJ8ZlLjQ' \
    --sourceItemId 'Lb1WgnEB' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE