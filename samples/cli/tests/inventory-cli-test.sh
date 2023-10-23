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
    --body '{"message": "oORSWuhd", "operations": [{"consumeItems": [{"inventoryId": "BAmEhWM8", "qty": 84, "slotId": "1ZICmR1c", "sourceItemId": "Xy0gkLmz"}, {"inventoryId": "0YYI3rJn", "qty": 25, "slotId": "sdjs1ewn", "sourceItemId": "EGiO4xzj"}, {"inventoryId": "duvujtCz", "qty": 38, "slotId": "Tmsz8NQA", "sourceItemId": "BHLjY8rF"}], "createItems": [{"customAttributes": {"GYlzdkyO": {}, "xuLDmKen": {}, "8CGhSe9b": {}}, "inventoryConfigurationCode": "pff8uOVx", "inventoryId": "umOiwPdI", "qty": 43, "serverCustomAttributes": {"Aq0qbLmY": {}, "y03JsOGp": {}, "xcrIrjVz": {}}, "slotId": "YwW44r1C", "slotUsed": 11, "sourceItemId": "6h2MPD7j", "tags": ["DLAHUXaM", "4IbpXKgh", "Q5JlSBf9"], "toSpecificInventory": false, "type": "rqVLRJgc"}, {"customAttributes": {"7fIFwAcC": {}, "22StXcBg": {}, "IeDQLEhG": {}}, "inventoryConfigurationCode": "3dURvGcx", "inventoryId": "wUXCZKxM", "qty": 27, "serverCustomAttributes": {"narg32Al": {}, "aeuG0OVo": {}, "4EcedESf": {}}, "slotId": "LvFe5csD", "slotUsed": 33, "sourceItemId": "2HBg8O76", "tags": ["wwcO3vmc", "qfPNEZW0", "8togOb0G"], "toSpecificInventory": true, "type": "OvfV11ev"}, {"customAttributes": {"b1jhHu0G": {}, "lTAATZeN": {}, "13PYVOad": {}}, "inventoryConfigurationCode": "0tTLHKUJ", "inventoryId": "8aOhKGQh", "qty": 4, "serverCustomAttributes": {"cPVkZ0ng": {}, "sCdaP2xy": {}, "vyMJ6HvH": {}}, "slotId": "Cgnf1ITn", "slotUsed": 6, "sourceItemId": "gOn2lHVH", "tags": ["1T68TQCL", "hy1xGn3E", "OMvWXXuM"], "toSpecificInventory": false, "type": "eue0qOlY"}], "removeItems": [{"inventoryId": "1mi1uZrm", "slotId": "DRLam7S5", "sourceItemId": "XpSelR1y"}, {"inventoryId": "UNEtkXgq", "slotId": "3Uc4DH2U", "sourceItemId": "RNyodwSE"}, {"inventoryId": "QKbhvGDf", "slotId": "0DQglGr3", "sourceItemId": "sCwPa4iV"}], "targetUserId": "GMdJbL2n", "updateItems": [{"customAttributes": {"6mKCgPHD": {}, "4BjPFD0v": {}, "JYt8qXnv": {}}, "inventoryId": "sT3JzeoI", "serverCustomAttributes": {"mCYQwPGu": {}, "WfU91weC": {}, "dWfioBpi": {}}, "slotId": "jrLxE5HU", "sourceItemId": "lVwQyHES", "tags": ["265UOtRu", "2hj1yjwb", "JgyW3FVA"], "type": "1fajsEH8"}, {"customAttributes": {"Yf25fACD": {}, "9DjZBg6u": {}, "zaMU4Wk6": {}}, "inventoryId": "lNpfSuVK", "serverCustomAttributes": {"PSoFzlEs": {}, "NGaHAvji": {}, "5voWjius": {}}, "slotId": "nNcfNiuZ", "sourceItemId": "bsTfp1nP", "tags": ["HlswoUL2", "IpPy9ErU", "oEP65OBk"], "type": "ROQbZcOF"}, {"customAttributes": {"XbOsthXr": {}, "p3UpXxa9": {}, "xEwXeZKi": {}}, "inventoryId": "VsYlI2iY", "serverCustomAttributes": {"mEQ9XyXv": {}, "w5WSefkX": {}, "LK95nq7v": {}}, "slotId": "3xk2aKiQ", "sourceItemId": "fNLWl1XT", "tags": ["dTqOOc6R", "8wjE2EKU", "20sJ6nTB"], "type": "Md3GFnoM"}]}, {"consumeItems": [{"inventoryId": "92eEouVu", "qty": 39, "slotId": "PE45QC9W", "sourceItemId": "ehORmCjU"}, {"inventoryId": "imRL5Tr2", "qty": 60, "slotId": "Yhz8ZVNA", "sourceItemId": "gZU8TC4N"}, {"inventoryId": "2z6wBzTT", "qty": 76, "slotId": "KjHhcgiQ", "sourceItemId": "Luop8fz0"}], "createItems": [{"customAttributes": {"RoOXeGXF": {}, "NsnRTRaA": {}, "xWHzpzNe": {}}, "inventoryConfigurationCode": "bjmbGlJ3", "inventoryId": "IEgvUFWV", "qty": 3, "serverCustomAttributes": {"X51mRpi8": {}, "rpdUooN8": {}, "1ski7S5N": {}}, "slotId": "2WPCMVJT", "slotUsed": 74, "sourceItemId": "XQNviipy", "tags": ["w3lHMs4N", "928WrsFN", "OAul7yx1"], "toSpecificInventory": true, "type": "kALpRevA"}, {"customAttributes": {"Y9qGNBWB": {}, "Yf59gLCI": {}, "Jysu1Ege": {}}, "inventoryConfigurationCode": "yONPvUf8", "inventoryId": "jKKE4Eoi", "qty": 87, "serverCustomAttributes": {"vPwoKLu5": {}, "cVsoMNNJ": {}, "FojJ58do": {}}, "slotId": "lXx012U8", "slotUsed": 57, "sourceItemId": "KapDMGk5", "tags": ["4APhZG7W", "OOMuDwyA", "lLO65832"], "toSpecificInventory": false, "type": "ft4uBF64"}, {"customAttributes": {"rYGTPdsN": {}, "ymsimwlX": {}, "I9XGhrBE": {}}, "inventoryConfigurationCode": "UsJwldDN", "inventoryId": "eQRkwrJk", "qty": 86, "serverCustomAttributes": {"cweJ4WB0": {}, "fijd9Odz": {}, "fFNfkSUH": {}}, "slotId": "jDCkRG3r", "slotUsed": 43, "sourceItemId": "HXRAzDDs", "tags": ["oGX25k0i", "XkU7dKCA", "E3cPziK9"], "toSpecificInventory": false, "type": "rHjbctlb"}], "removeItems": [{"inventoryId": "DoP9tjqr", "slotId": "VOx5nb7I", "sourceItemId": "SFRqPn3Q"}, {"inventoryId": "ospWFSAg", "slotId": "ijPqb0MJ", "sourceItemId": "btA8zjDl"}, {"inventoryId": "hnBZpVEL", "slotId": "ANnoXgPW", "sourceItemId": "tdusdKzF"}], "targetUserId": "oZxHHNki", "updateItems": [{"customAttributes": {"M8FV8dtb": {}, "NM375d7K": {}, "TMnbqxeK": {}}, "inventoryId": "kPfwdNOl", "serverCustomAttributes": {"1GZWJLym": {}, "zdPux4T9": {}, "lzsqtYkX": {}}, "slotId": "fEE8hoLm", "sourceItemId": "peHhaceF", "tags": ["OumRn70J", "JIsYnb3O", "4Vd3vUef"], "type": "noilSQvH"}, {"customAttributes": {"fPYDkyqV": {}, "8BTqlAkZ": {}, "jTCEFyZQ": {}}, "inventoryId": "Wz4Om8wA", "serverCustomAttributes": {"Mrhcu8sM": {}, "oll7iPvt": {}, "Egw3sNf6": {}}, "slotId": "O4Vr8uIu", "sourceItemId": "vsgxrDwH", "tags": ["UnYKpSED", "cn6TFXZX", "qfKiosx1"], "type": "fyryY7Qs"}, {"customAttributes": {"V9oBIfxA": {}, "Jspwuu2N": {}, "D8tSH6dk": {}}, "inventoryId": "RwmSDyNb", "serverCustomAttributes": {"CYNHLwAJ": {}, "yEOCxA0g": {}, "ExbOLzHW": {}}, "slotId": "L1LAusZA", "sourceItemId": "XuRBh9Gr", "tags": ["tWuG2Yhp", "lDzL8tYu", "CLNz3hQb"], "type": "zwFMhzLp"}]}, {"consumeItems": [{"inventoryId": "uBEkD2o8", "qty": 45, "slotId": "Smk0Efr0", "sourceItemId": "SLFq8C2W"}, {"inventoryId": "KnKiF59S", "qty": 91, "slotId": "i9KiDlJT", "sourceItemId": "tmhv3oFT"}, {"inventoryId": "p0VVNBXo", "qty": 44, "slotId": "axPVTmAL", "sourceItemId": "BZVZelVT"}], "createItems": [{"customAttributes": {"B64BZpvJ": {}, "W1T7agNj": {}, "dFzsuuQK": {}}, "inventoryConfigurationCode": "d3bgZusW", "inventoryId": "Qs3erTSk", "qty": 32, "serverCustomAttributes": {"ekIRjcN8": {}, "ysZfxoVP": {}, "ICOY9P9o": {}}, "slotId": "b0jw52CI", "slotUsed": 90, "sourceItemId": "a2YHmySf", "tags": ["zocSdqfo", "vztbBIYB", "206wqGdW"], "toSpecificInventory": false, "type": "319knOli"}, {"customAttributes": {"us1RL1uF": {}, "DNGiQ2vZ": {}, "98WdQIeq": {}}, "inventoryConfigurationCode": "ZD2hzkEk", "inventoryId": "vQ3su5uN", "qty": 96, "serverCustomAttributes": {"U5KWLPzJ": {}, "zHlFP81V": {}, "xDCcbnse": {}}, "slotId": "DmVzP4Hy", "slotUsed": 45, "sourceItemId": "Pwzw6ziQ", "tags": ["DEJ7RtWZ", "06nOLb6w", "zk4mqqfN"], "toSpecificInventory": true, "type": "4ywWsjGP"}, {"customAttributes": {"sx9U8oEe": {}, "ejRf4qpV": {}, "I4rRryI4": {}}, "inventoryConfigurationCode": "wqyjLEcA", "inventoryId": "LntpyHPU", "qty": 24, "serverCustomAttributes": {"5h6DPiEu": {}, "waD52jXM": {}, "G5Gy7lHc": {}}, "slotId": "jrhFFXOz", "slotUsed": 37, "sourceItemId": "oGs1g3Be", "tags": ["7MtFvAxT", "iutj53us", "rznef7mU"], "toSpecificInventory": true, "type": "shVsSLXZ"}], "removeItems": [{"inventoryId": "zfqmIW4f", "slotId": "VkNvlDZR", "sourceItemId": "eN4qqAsa"}, {"inventoryId": "0WpZUKBU", "slotId": "loctdr7F", "sourceItemId": "jUsFmIab"}, {"inventoryId": "8AH9d6sZ", "slotId": "NIxcLvwF", "sourceItemId": "vLsy7nhQ"}], "targetUserId": "b5cUnx08", "updateItems": [{"customAttributes": {"guMI94An": {}, "4CPCzQ6B": {}, "7DnIjTu6": {}}, "inventoryId": "tM0hcBGW", "serverCustomAttributes": {"RbfSJv3X": {}, "e4THyQWr": {}, "QFYvxERN": {}}, "slotId": "ydsQU3i8", "sourceItemId": "AKLAFPwx", "tags": ["slzNLZM0", "81PtL2f8", "Q6PYq7CW"], "type": "1piFI0Zw"}, {"customAttributes": {"3Nvd4MKx": {}, "RHaUzl2L": {}, "KR02eTPx": {}}, "inventoryId": "vSiKu3fW", "serverCustomAttributes": {"FlIEhXDu": {}, "eUem1490": {}, "HA1iazCm": {}}, "slotId": "orfZR7iK", "sourceItemId": "RaJG9dLI", "tags": ["JfvBhflb", "IPr0x25s", "dkkN80ha"], "type": "I8H5GDfH"}, {"customAttributes": {"caRH0Pq7": {}, "qF02VoSb": {}, "Bs30gBNb": {}}, "inventoryId": "b2i1bGY3", "serverCustomAttributes": {"MTTVLQz4": {}, "ZrHEZkQj": {}, "jCRYsXvV": {}}, "slotId": "aNrLtYJg", "sourceItemId": "vUCA0JYe", "tags": ["vVnOnVrF", "vwQicYQA", "nKAmvNUJ"], "type": "nCfk4Fki"}]}], "requestId": "Vc50TbVx"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'C9N20iJm' \
    --limit '80' \
    --offset '95' \
    --sortBy 'createdAt:desc' \
    --userId 'QUChbBIL' \
    > test.out 2>&1
eval_tap $? 3 'AdminListInventories' test.out

#- 4 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "yrOD2SdS", "userId": "FkhdEFsh"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateInventory' test.out

#- 5 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'ewUlMUUr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetInventory' test.out

#- 6 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'xuPsDZcb' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 23}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateInventory' test.out

#- 7 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'Ofr9KzgF' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "0E8xHTXg"}' \
    > test.out 2>&1
eval_tap $? 7 'DeleteInventory' test.out

#- 8 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'tmUVDPSz' \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '2' \
    --qtyGte '95' \
    --sortBy 'createdAt:asc' \
    --sourceItemId 'IzHTkvuE' \
    --tags 'De53o7Xs' \
    > test.out 2>&1
eval_tap $? 8 'AdminListItems' test.out

#- 9 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'dbRiSOsb' \
    --namespace $AB_NAMESPACE \
    --slotId '1OkyxR6z' \
    --sourceItemId 'IzLbK0pV' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventoryItem' test.out

#- 10 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'sHwwXFa2' \
    --limit '26' \
    --offset '10' \
    --sortBy 'updatedAt' \
    > test.out 2>&1
eval_tap $? 10 'AdminListInventoryConfigurations' test.out

#- 11 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "zut5whxa", "description": "5G2cpQbJ", "initialMaxSlots": 59, "maxInstancesPerUser": 17, "maxUpgradeSlots": 17, "name": "o4RMCww4"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminCreateInventoryConfiguration' test.out

#- 12 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'zPIu11sP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminGetInventoryConfiguration' test.out

#- 13 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'zamleq5B' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Dh3pok1p", "description": "b59Qd8MH", "initialMaxSlots": 86, "maxInstancesPerUser": 48, "maxUpgradeSlots": 31, "name": "MjeuS9nU"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminUpdateInventoryConfiguration' test.out

#- 14 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'W9IKW32x' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteInventoryConfiguration' test.out

#- 15 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '19' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 15 'AdminListItemTypes' test.out

#- 16 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "aprxOyft"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateItemType' test.out

#- 17 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'UdpHEBby' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDeleteItemType' test.out

#- 18 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '93' \
    --owner 'qI0ILAL7' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 18 'AdminListTags' test.out

#- 19 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "QeDC5tKY", "owner": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminCreateTag' test.out

#- 20 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'U1GNs3AR' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteTag' test.out

#- 21 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId '566RwIvs' \
    --namespace $AB_NAMESPACE \
    --userId '72kY7epz' \
    --body '{"qty": 10, "slotId": "xj4LSCfh", "sourceItemId": "8jl415x0"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminConsumeUserItem' test.out

#- 22 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'Gs7j0Qsl' \
    --namespace $AB_NAMESPACE \
    --userId 's0QJ23WT' \
    --body '[{"customAttributes": {"KraA1kWp": {}, "1sEAZuLK": {}, "ZmWzUxYS": {}}, "serverCustomAttributes": {"1zLNKSNz": {}, "kX0sHcSW": {}, "rWSYaWl0": {}}, "slotId": "PhVO27AO", "sourceItemId": "2iz2enru", "tags": ["ZeqMVyB5", "jfBquSKN", "DAykv7jL"], "type": "bw0jUFTQ"}, {"customAttributes": {"Wdm9UUuG": {}, "zD3QRQIX": {}, "swErJnZs": {}}, "serverCustomAttributes": {"n7PKghVV": {}, "WbmfZELF": {}, "ET3QwNZc": {}}, "slotId": "9rOgQrAl", "sourceItemId": "Cz8oZE10", "tags": ["xDye65jr", "ytQb3qKQ", "ra8X1FDy"], "type": "OG1XrKQj"}, {"customAttributes": {"ANZWDcQm": {}, "ztSERHQI": {}, "rn5GO3Na": {}}, "serverCustomAttributes": {"llXwSucn": {}, "FyneTTcN": {}, "SKnqltg4": {}}, "slotId": "51H01D7L", "sourceItemId": "g70DzjNR", "tags": ["p5rTJAmD", "5XadrmYO", "likCnZZT"], "type": "xflMcsZu"}]' \
    > test.out 2>&1
eval_tap $? 22 'AdminBulkUpdateMyItems' test.out

#- 23 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'xk1mHg4u' \
    --namespace $AB_NAMESPACE \
    --userId 'IflpXj1u' \
    --body '{"customAttributes": {"0dmAELBH": {}, "RvHepaIZ": {}, "kw7sGz8X": {}}, "qty": 47, "serverCustomAttributes": {"EuxykDbt": {}, "qoeHRCuO": {}, "4qObpkbu": {}}, "slotId": "cg1Y9osY", "slotUsed": 17, "sourceItemId": "gduDp7Ri", "tags": ["hFnr4xxP", "epixq4RX", "MiRbiXpH"], "type": "P6iQHKJM"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminSaveItemToInventory' test.out

#- 24 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'wZuXySqm' \
    --namespace $AB_NAMESPACE \
    --userId 'iBGka0GT' \
    --body '[{"slotId": "qlzPk2OP", "sourceItemId": "L0absNzK"}, {"slotId": "t4EkJQiR", "sourceItemId": "o2lXYjLO"}, {"slotId": "dJ2w6gL2", "sourceItemId": "o5dceMvG"}]' \
    > test.out 2>&1
eval_tap $? 24 'AdminBulkRemoveItems' test.out

#- 25 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'B8WEH8qo' \
    --body '{"customAttributes": {"yXyrJOeI": {}, "nBrEQkuX": {}, "63A9LCyk": {}}, "inventoryConfigurationCode": "Wd6WTzbS", "qty": 88, "serverCustomAttributes": {"ldpFnIgF": {}, "w11dKqTj": {}, "k8MR97PR": {}}, "slotId": "1uR2ULFa", "slotUsed": 54, "sourceItemId": "ENmRZv16", "tags": ["39JKvhL4", "DDhCQ3Gk", "aLxJkhcm"], "type": "zxWaTnSs"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminSaveItem' test.out

#- 26 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'goxjLZVY' \
    --limit '12' \
    --offset '44' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 26 'PublicListInventoryConfigurations' test.out

#- 27 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '56' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 27 'PublicListItemTypes' test.out

#- 28 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '83' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 28 'PublicListTags' test.out

#- 29 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'eWCYno0W' \
    --limit '51' \
    --offset '11' \
    --sortBy 'updatedAt' \
    > test.out 2>&1
eval_tap $? 29 'PublicListInventories' test.out

#- 30 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'sy1ofkAy' \
    --namespace $AB_NAMESPACE \
    --body '{"qty": 64, "slotId": "uh6fGLaE", "sourceItemId": "7TbTGB0x"}' \
    > test.out 2>&1
eval_tap $? 30 'PublicConsumeMyItem' test.out

#- 31 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'eH0AIwSV' \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '38' \
    --qtyGte '26' \
    --sortBy 'updatedAt' \
    --sourceItemId 'wXSIutkt' \
    --tags 'MxAyuM7h' \
    > test.out 2>&1
eval_tap $? 31 'PublicListItems' test.out

#- 32 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'nPLppKzn' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"D8GNCeV5": {}, "M1Ew8oAu": {}, "sik8Ublj": {}}, "slotId": "XAISB2e6", "sourceItemId": "YJHAiFhl", "tags": ["sCewJxHC", "j32vfkW5", "AQX3Ciru"]}, {"customAttributes": {"UzZdTfXl": {}, "W7wdi5qq": {}, "pG52C8l3": {}}, "slotId": "FNDgNLis", "sourceItemId": "BnwRW3tn", "tags": ["COWb4eWk", "vFpHZ7MP", "dU23nDdQ"]}, {"customAttributes": {"C20BKmeA": {}, "6DFVuwXm": {}, "83nmti6d": {}}, "slotId": "NxH1wzuA", "sourceItemId": "gi3JR1y4", "tags": ["JWLMsaPt", "3mLKCNyb", "3EjnG9ZN"]}]' \
    > test.out 2>&1
eval_tap $? 32 'PublicBulkUpdateMyItems' test.out

#- 33 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId '7HGIquX5' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "Au0BqC53", "sourceItemId": "lrnGMsVt"}, {"slotId": "VfD3U6n3", "sourceItemId": "agBAbDmn"}, {"slotId": "xvTBk0dR", "sourceItemId": "9InmE1Ns"}]' \
    > test.out 2>&1
eval_tap $? 33 'PublicBulkRemoveMyItems' test.out

#- 34 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'Lsnk83Vz' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 68, "slotId": "suwMXd7e", "sourceItemId": "3M2FZKz1"}, {"qty": 2, "slotId": "fs2MZ7Q6", "sourceItemId": "80H5rq2a"}, {"qty": 44, "slotId": "LbuQ2OFt", "sourceItemId": "AjnVblX0"}], "srcInventoryId": "VFkGwtOH"}' \
    > test.out 2>&1
eval_tap $? 34 'PublicMoveMyItems' test.out

#- 35 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'qB5oilPR' \
    --namespace $AB_NAMESPACE \
    --slotId '5bwScun7' \
    --sourceItemId 'P6SbUsEN' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE