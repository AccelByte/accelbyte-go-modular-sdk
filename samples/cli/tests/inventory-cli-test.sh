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
echo "1..41"

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
    --body '{"message": "X5kE4ZQu", "operations": [{"consumeItems": [{"inventoryId": "91KG5kJw", "qty": 75, "slotId": "8z4EtHpX", "sourceItemId": "i1pArMLG"}, {"inventoryId": "pkckBIU5", "qty": 21, "slotId": "43JjwKvu", "sourceItemId": "WGTn5DI3"}, {"inventoryId": "0JXzDJXN", "qty": 30, "slotId": "0ucoVG2v", "sourceItemId": "hc8j3eNT"}], "createItems": [{"customAttributes": {"C8XdsHgj": {}, "iVQZ23oz": {}, "nXqdDQG3": {}}, "inventoryConfigurationCode": "LPalCsj7", "inventoryId": "HAfRVjyM", "qty": 97, "serverCustomAttributes": {"QWlN7Xbb": {}, "SgG1HbKh": {}, "prurM3bw": {}}, "slotId": "6eVbl4Kh", "slotUsed": 18, "source": "O7ySOhRX", "sourceItemId": "ImAwR2r4", "tags": ["gdXCP5S1", "7wNCCagZ", "3aWkhGmL"], "toSpecificInventory": false, "type": "wqDdp02f"}, {"customAttributes": {"LkooJ2XZ": {}, "aRoFO6zs": {}, "aGJ8JvIl": {}}, "inventoryConfigurationCode": "g0ERoqum", "inventoryId": "1E8VTaSs", "qty": 22, "serverCustomAttributes": {"gIvOdE6Q": {}, "JtVXV8U3": {}, "hVheA0zG": {}}, "slotId": "qIbTyjAN", "slotUsed": 95, "source": "evYFu3vh", "sourceItemId": "DrMx8Bfb", "tags": ["RVGBCusR", "QxFnOCzz", "7ROX7iQX"], "toSpecificInventory": true, "type": "5ZuYOL1M"}, {"customAttributes": {"waaDiBgI": {}, "UGxHotza": {}, "jEiG4jTJ": {}}, "inventoryConfigurationCode": "H7Aywyxy", "inventoryId": "Mb7mI6Ho", "qty": 1, "serverCustomAttributes": {"pdTLyonm": {}, "VOkLmGdA": {}, "4GAGo5vO": {}}, "slotId": "1iNr9Eca", "slotUsed": 81, "source": "EOGTnm5d", "sourceItemId": "hUdkf9LH", "tags": ["ngY76PKQ", "dCMzyADy", "6CNbR1HD"], "toSpecificInventory": true, "type": "r1DtJeYR"}], "removeItems": [{"inventoryId": "8NCWZoFf", "slotId": "TiwAQaZW", "sourceItemId": "nxEr1Aze"}, {"inventoryId": "xkECd1an", "slotId": "WskpA1Pn", "sourceItemId": "SjCthPru"}, {"inventoryId": "bQhFD07k", "slotId": "RgeiaLU9", "sourceItemId": "mT5j9cyM"}], "targetUserId": "nrtLT9tI", "updateItems": [{"customAttributes": {"8eIbHJow": {}, "zpHytufm": {}, "dAApVK6x": {}}, "inventoryId": "38YTJq6H", "serverCustomAttributes": {"nWnzOxHb": {}, "QQD9Lzdb": {}, "LM54pwOf": {}}, "slotId": "f48h59jm", "sourceItemId": "n11M39Wn", "tags": ["IwjJoojw", "dvuoUB4a", "FFPAUOsD"], "type": "IRQaD1Lu"}, {"customAttributes": {"UMww2Thm": {}, "dGilS4Cg": {}, "ov0Eql4p": {}}, "inventoryId": "6qXItBlF", "serverCustomAttributes": {"bSd8S1mq": {}, "y2kD3YIN": {}, "eF0d0Neb": {}}, "slotId": "U66RXw3l", "sourceItemId": "HYG0INn7", "tags": ["4WcSmpCb", "mOLaJqG8", "V20AhtGi"], "type": "YKI6v2bK"}, {"customAttributes": {"qd6H2zsz": {}, "sT3bAEat": {}, "8BJVSibM": {}}, "inventoryId": "0A4ntxqQ", "serverCustomAttributes": {"JbuNISgQ": {}, "coqsFhAo": {}, "64sIe79o": {}}, "slotId": "78FzcFwF", "sourceItemId": "yksZIkWC", "tags": ["RhSxuiPR", "saTmMDVw", "rw0324xZ"], "type": "nvjKCQzN"}]}, {"consumeItems": [{"inventoryId": "CiadBWaz", "qty": 80, "slotId": "OfHKlnFw", "sourceItemId": "qIRpRbfq"}, {"inventoryId": "djqxBXWu", "qty": 97, "slotId": "71HTapjf", "sourceItemId": "7IBOdtcB"}, {"inventoryId": "UjC4pFSf", "qty": 35, "slotId": "UsV0HEma", "sourceItemId": "bfgM4h32"}], "createItems": [{"customAttributes": {"5LxWTDYs": {}, "14hfnAFU": {}, "94mmDJo4": {}}, "inventoryConfigurationCode": "7d8Nf9Sr", "inventoryId": "nzWlKNK6", "qty": 25, "serverCustomAttributes": {"BxqkaJu8": {}, "wZUhpJjc": {}, "zu0McMgp": {}}, "slotId": "9bu0k6eh", "slotUsed": 14, "source": "qEZ1tTOz", "sourceItemId": "4TgCTvuV", "tags": ["0PfMktTH", "vp5zAXlN", "uXB4jrbm"], "toSpecificInventory": false, "type": "nKhIgKct"}, {"customAttributes": {"tx7gDeUy": {}, "cYLLr0w5": {}, "NRZEfnfs": {}}, "inventoryConfigurationCode": "z1jyqwL6", "inventoryId": "d70jOYPE", "qty": 8, "serverCustomAttributes": {"zResVerC": {}, "6fTlLOFk": {}, "npYMOtIN": {}}, "slotId": "3JvplGtx", "slotUsed": 29, "source": "hvM5dM6J", "sourceItemId": "AeauGHCL", "tags": ["Y6eC7swX", "oG4QwYCD", "aEWN7h2e"], "toSpecificInventory": false, "type": "zuGc5hGu"}, {"customAttributes": {"EPDMvSd8": {}, "hsqI1Ak7": {}, "BgkSIpjd": {}}, "inventoryConfigurationCode": "wpMRQ41B", "inventoryId": "mDHeQnMx", "qty": 72, "serverCustomAttributes": {"O2CyUfbn": {}, "x1BubWxS": {}, "shv5VuFL": {}}, "slotId": "UIYF1SOn", "slotUsed": 33, "source": "vEtBPVX6", "sourceItemId": "1FXSe2LX", "tags": ["vcuPgFaE", "iAgp1kda", "8DoJ7PQ0"], "toSpecificInventory": true, "type": "wzKZdneM"}], "removeItems": [{"inventoryId": "20hR7uAd", "slotId": "yV2UYbyP", "sourceItemId": "23JnBG9F"}, {"inventoryId": "cBu9lCsO", "slotId": "sNHrdSfo", "sourceItemId": "DnLFARwI"}, {"inventoryId": "m6Pu9sUI", "slotId": "UvdxSLmr", "sourceItemId": "5HDJndvv"}], "targetUserId": "jNvBID9b", "updateItems": [{"customAttributes": {"k1rggqtD": {}, "Amd9RNC4": {}, "gomWKMM8": {}}, "inventoryId": "PFo7dThg", "serverCustomAttributes": {"lygdMR2s": {}, "JRQ8vizr": {}, "Q0UktbHa": {}}, "slotId": "wgh760ic", "sourceItemId": "cKcYez4X", "tags": ["rGrjIBYJ", "iycVK6dZ", "en0N5fbf"], "type": "d4COTX2F"}, {"customAttributes": {"lH8EYTas": {}, "KJVj7VBe": {}, "sWKxEjeB": {}}, "inventoryId": "Ee1shFDL", "serverCustomAttributes": {"6lMdJtIz": {}, "LPemc68i": {}, "dEWZIQJd": {}}, "slotId": "97dBjw35", "sourceItemId": "Sugrz1AY", "tags": ["UfVTPqGY", "8lIL2qbe", "xUmSIXrr"], "type": "JLZtC1wL"}, {"customAttributes": {"RdTnZ4Lq": {}, "5dUulxYF": {}, "0jpUEQNi": {}}, "inventoryId": "YBg9tNmp", "serverCustomAttributes": {"xkDUtS0h": {}, "DSKFFOMZ": {}, "4mjeAlR1": {}}, "slotId": "z5Q7q6Zo", "sourceItemId": "5dBryVWW", "tags": ["hXVEMrE0", "ZvFdZIbF", "DzuYuW6R"], "type": "vvzukike"}]}, {"consumeItems": [{"inventoryId": "vyUaZkTR", "qty": 26, "slotId": "BogD9gy7", "sourceItemId": "Xu2oOlMQ"}, {"inventoryId": "pASGMdhn", "qty": 36, "slotId": "6JZC4Rpp", "sourceItemId": "6aBkaSNq"}, {"inventoryId": "TBu2yFfQ", "qty": 41, "slotId": "p5Eg200x", "sourceItemId": "M6VojCeJ"}], "createItems": [{"customAttributes": {"N83ALnfo": {}, "ZM1Y8zwc": {}, "pkvtFJrC": {}}, "inventoryConfigurationCode": "7FjJVpOu", "inventoryId": "uci02fN3", "qty": 56, "serverCustomAttributes": {"KAp1TZTw": {}, "rgbsj7fV": {}, "pwNkOlUP": {}}, "slotId": "u5hsqR2d", "slotUsed": 85, "source": "ejOteVAj", "sourceItemId": "XNoDLgoH", "tags": ["gqOB1rWa", "ucfy6svh", "kxXTfRtg"], "toSpecificInventory": false, "type": "Nel6EYmi"}, {"customAttributes": {"LgHvUy0I": {}, "aglDznNS": {}, "0I6Osj7v": {}}, "inventoryConfigurationCode": "OmeOHzlt", "inventoryId": "FG6O7GGm", "qty": 93, "serverCustomAttributes": {"5qeLdRPn": {}, "VnEID7s7": {}, "usAVFaqg": {}}, "slotId": "Ji4zLCFG", "slotUsed": 65, "source": "b8KVri8S", "sourceItemId": "SCnUAqDE", "tags": ["0C5RevHi", "0cVxJrUb", "yLfEparX"], "toSpecificInventory": false, "type": "1sH5M5hX"}, {"customAttributes": {"FtnRroCC": {}, "PB4s7f70": {}, "rg5MO8U7": {}}, "inventoryConfigurationCode": "WBh2F4Yr", "inventoryId": "AE8Kqn9I", "qty": 62, "serverCustomAttributes": {"cnexTDJd": {}, "0ucSWdbP": {}, "SSKAmrZf": {}}, "slotId": "V4PttsKj", "slotUsed": 66, "source": "Q7t9uDVO", "sourceItemId": "kRV950KR", "tags": ["6c01MmY3", "TA0Ikvcu", "HgPwJzhC"], "toSpecificInventory": false, "type": "xfYnCIaM"}], "removeItems": [{"inventoryId": "wKCJTjMn", "slotId": "fa0wKMHo", "sourceItemId": "pYAKsZ8i"}, {"inventoryId": "IoVfnauN", "slotId": "2xlLXace", "sourceItemId": "BlLdxX2B"}, {"inventoryId": "y8ZkURsR", "slotId": "wi0JRVbI", "sourceItemId": "hW86SbUf"}], "targetUserId": "ITjgbbGq", "updateItems": [{"customAttributes": {"ivPsHj7I": {}, "tVxl2PiT": {}, "3UJ4gE9R": {}}, "inventoryId": "TrCNSx6M", "serverCustomAttributes": {"X0QqfIUa": {}, "xoYw6QAQ": {}, "oSL1hejz": {}}, "slotId": "5gEcSmRY", "sourceItemId": "R44IDQBi", "tags": ["QMp1jsv0", "8q5SbSMN", "sfiIzvNU"], "type": "LfU6hYnc"}, {"customAttributes": {"DsPMusnN": {}, "AV2XI0x7": {}, "vuw0pz3J": {}}, "inventoryId": "vmhM9x7S", "serverCustomAttributes": {"8qzwIpCR": {}, "T1tQiVWZ": {}, "gYDQO1i8": {}}, "slotId": "KxP4bisY", "sourceItemId": "qZfALns2", "tags": ["xIjFc38h", "8N2eWFon", "5EXq2kAI"], "type": "UFJJQafV"}, {"customAttributes": {"1CBSsKWi": {}, "Nw9lOau6": {}, "YeyR1DFR": {}}, "inventoryId": "i7iXaEIf", "serverCustomAttributes": {"sTNbjsQn": {}, "Ba28ZKkZ": {}, "9zuNMHt9": {}}, "slotId": "4gGnTeGB", "sourceItemId": "ONQ8NEvM", "tags": ["Vi2ad16W", "9lzGwYtG", "dXCAjQRT"], "type": "w5LFlSZZ"}]}], "requestId": "aDNKGJZd"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListIntegrationConfigurations
samples/cli/sample-apps Inventory adminListIntegrationConfigurations \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '27' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 3 'AdminListIntegrationConfigurations' test.out

#- 4 AdminCreateIntegrationConfiguration
samples/cli/sample-apps Inventory adminCreateIntegrationConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["34BSnSLG", "ND96XQCK", "YSlzV2k2"], "serviceName": "Cm4dHVuh", "targetInventoryCode": "pQMCWOUH"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateIntegrationConfiguration' test.out

#- 5 AdminUpdateIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateIntegrationConfiguration \
    --integrationConfigurationId 'k15GvGHT' \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["VjvhwQnN", "cHOE515w", "qwUKiWtV"], "serviceName": "824ogBXG", "targetInventoryCode": "hriF5oMT"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateIntegrationConfiguration' test.out

#- 6 AdminUpdateStatusIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateStatusIntegrationConfiguration \
    --integrationConfigurationId 'CMaap8FI' \
    --namespace $AB_NAMESPACE \
    --body '{"status": "TIED"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateStatusIntegrationConfiguration' test.out

#- 7 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'uxrW49qg' \
    --limit '93' \
    --offset '67' \
    --sortBy 'createdAt:asc' \
    --userId 'HI3tFqV8' \
    > test.out 2>&1
eval_tap $? 7 'AdminListInventories' test.out

#- 8 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "rlv4vd4T", "userId": "i2Mxq8Vy"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateInventory' test.out

#- 9 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'XzJCzGc7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventory' test.out

#- 10 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'tWfk6c3i' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 35}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateInventory' test.out

#- 11 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'gc3DtLni' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "HPd99zLk"}' \
    > test.out 2>&1
eval_tap $? 11 'DeleteInventory' test.out

#- 12 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'Y3yMU8id' \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '49' \
    --sortBy 'createdAt:asc' \
    --sourceItemId '2eqLYgNV' \
    --tags '5AuvOI2C' \
    > test.out 2>&1
eval_tap $? 12 'AdminListItems' test.out

#- 13 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'qyMhk64q' \
    --namespace $AB_NAMESPACE \
    --slotId 'StmZlemD' \
    --sourceItemId 'sA4lOnHt' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetInventoryItem' test.out

#- 14 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'ih6P6pZ2' \
    --limit '81' \
    --offset '76' \
    --sortBy 'updatedAt' \
    > test.out 2>&1
eval_tap $? 14 'AdminListInventoryConfigurations' test.out

#- 15 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "r5icLdun", "description": "AvNcwg5O", "initialMaxSlots": 88, "maxInstancesPerUser": 17, "maxUpgradeSlots": 10, "name": "FCTAKvJa"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateInventoryConfiguration' test.out

#- 16 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'xPWYaAMA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetInventoryConfiguration' test.out

#- 17 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'gLAGqUjH' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "XeJKFZWy", "description": "jZGKIipX", "initialMaxSlots": 13, "maxInstancesPerUser": 47, "maxUpgradeSlots": 22, "name": "IxFaaKsi"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateInventoryConfiguration' test.out

#- 18 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'HAtYJFaJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteInventoryConfiguration' test.out

#- 19 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '69' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 19 'AdminListItemTypes' test.out

#- 20 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "33bST2Z1"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateItemType' test.out

#- 21 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'LOOMaW5V' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminDeleteItemType' test.out

#- 22 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '27' \
    --owner 'HXXwBoBT' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 22 'AdminListTags' test.out

#- 23 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "gl30zs5B", "owner": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateTag' test.out

#- 24 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'aECTVHyY' \
    > test.out 2>&1
eval_tap $? 24 'AdminDeleteTag' test.out

#- 25 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'BpPeZBfy' \
    --namespace $AB_NAMESPACE \
    --userId 'b1eMA01h' \
    --body '{"qty": 87, "slotId": "9aOeZsUj", "sourceItemId": "H8cultf9"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminConsumeUserItem' test.out

#- 26 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'Yqh8My1X' \
    --namespace $AB_NAMESPACE \
    --userId 'scdKSPBX' \
    --body '[{"customAttributes": {"wFvTIr49": {}, "GJ7KV2mG": {}, "TVyXOCTk": {}}, "serverCustomAttributes": {"wKDeCqp3": {}, "CBRaxwXc": {}, "xDkFlXGU": {}}, "slotId": "oqQH1pDe", "sourceItemId": "JtuWStwo", "tags": ["eEedu3pK", "fVCZOlp1", "wLqcBj2G"], "type": "Dsx5Tpkr"}, {"customAttributes": {"eUx9MQp4": {}, "ZGB3su1R": {}, "Ug5FIx2a": {}}, "serverCustomAttributes": {"eoKdCnLi": {}, "2V7uvoyJ": {}, "P2dKtdoc": {}}, "slotId": "9X8rIfou", "sourceItemId": "IZ4FF0wt", "tags": ["v4giJvmC", "Yzpi95iK", "rOTWUMKm"], "type": "3v4pIfQw"}, {"customAttributes": {"GJKakm6C": {}, "1Spv7Pwn": {}, "z4RPyDtJ": {}}, "serverCustomAttributes": {"dqZo4y2j": {}, "utxEgWBO": {}, "SNZDLkD6": {}}, "slotId": "a7uu05sr", "sourceItemId": "3eu1zik6", "tags": ["DrQd9F5s", "qa0x5LdC", "6MjfwW5D"], "type": "FlaVHWet"}]' \
    > test.out 2>&1
eval_tap $? 26 'AdminBulkUpdateMyItems' test.out

#- 27 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'TWENDAyd' \
    --namespace $AB_NAMESPACE \
    --userId 'bQJACm3y' \
    --body '{"customAttributes": {"79aFgCBp": {}, "mI2iPIJy": {}, "Syjx4K0A": {}}, "qty": 61, "serverCustomAttributes": {"qqCKxy6R": {}, "EYLhkwza": {}, "dHCWCEpC": {}}, "slotId": "67uCNPs9", "slotUsed": 88, "source": "ECOMMERCE", "sourceItemId": "3SYzy17B", "tags": ["ErZWYtgC", "yJ3XTCl0", "ofLy3NRR"], "type": "BI2eLAtp"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminSaveItemToInventory' test.out

#- 28 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'KZWAGwMc' \
    --namespace $AB_NAMESPACE \
    --userId '3Y1lPbuP' \
    --body '[{"slotId": "bcDOYDMn", "sourceItemId": "up8YwRwA"}, {"slotId": "6LrFfWbG", "sourceItemId": "GoEmBHFe"}, {"slotId": "nzXsXnd6", "sourceItemId": "bTnYINjO"}]' \
    > test.out 2>&1
eval_tap $? 28 'AdminBulkRemoveItems' test.out

#- 29 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'VuUpdmad' \
    --body '{"customAttributes": {"2FBM2klF": {}, "pMoVflB9": {}, "9SfTr1I4": {}}, "inventoryConfigurationCode": "i8XjefoB", "qty": 55, "serverCustomAttributes": {"ys4J8pRO": {}, "trGXuSrP": {}, "d5tvngWY": {}}, "slotId": "BXN08tsy", "slotUsed": 80, "source": "OTHER", "sourceItemId": "oMCa96KF", "tags": ["yHFgZBGB", "3hTpU7zl", "tJFKjr6k"], "type": "Vvb4KZoo"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminSaveItem' test.out

#- 30 AdminSyncUserEntitlements
samples/cli/sample-apps Inventory adminSyncUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'dyVTgtHQ' \
    > test.out 2>&1
eval_tap $? 30 'AdminSyncUserEntitlements' test.out

#- 31 AdminPurchasable
samples/cli/sample-apps Inventory adminPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'u5waboZS' \
    --body '{"entitlementType": "06v0KZMU", "inventoryConfig": {"slotUsed": 60}, "itemId": "nBQ8j9uN", "itemType": "dvFznUqm", "items": [{"bundledQty": 27, "entitlementType": "Wqjq7yfQ", "inventoryConfig": {"slotUsed": 98}, "itemId": "lbjcREvV", "itemType": "aCCThHOh", "sku": "7zLo81ft", "stackable": true, "useCount": 40}, {"bundledQty": 25, "entitlementType": "96cXMxPD", "inventoryConfig": {"slotUsed": 31}, "itemId": "ROREZw8L", "itemType": "r2sk2wlM", "sku": "jxYXFEks", "stackable": false, "useCount": 31}, {"bundledQty": 31, "entitlementType": "CY7WYIp9", "inventoryConfig": {"slotUsed": 36}, "itemId": "tO8DKgkA", "itemType": "Mjh2agiO", "sku": "Upwinbo6", "stackable": true, "useCount": 14}], "quantity": 55, "sku": "9qnncJP3", "stackable": false, "useCount": 91}' \
    > test.out 2>&1
eval_tap $? 31 'AdminPurchasable' test.out

#- 32 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'tYRAyikf' \
    --limit '40' \
    --offset '13' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 32 'PublicListInventoryConfigurations' test.out

#- 33 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '3' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 33 'PublicListItemTypes' test.out

#- 34 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '54' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 34 'PublicListTags' test.out

#- 35 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'tii4hKCD' \
    --limit '68' \
    --offset '48' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 35 'PublicListInventories' test.out

#- 36 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId '0FQJhsuQ' \
    --namespace $AB_NAMESPACE \
    --body '{"qty": 91, "slotId": "hyfQfBU0", "sourceItemId": "9Jy8bCLP"}' \
    > test.out 2>&1
eval_tap $? 36 'PublicConsumeMyItem' test.out

#- 37 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'GlEYjAJJ' \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '88' \
    --sortBy 'createdAt:asc' \
    --sourceItemId 'n0GFqu6S' \
    --tags 'QRJhkYN1' \
    > test.out 2>&1
eval_tap $? 37 'PublicListItems' test.out

#- 38 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'YCQN2EQx' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"IeKzNco0": {}, "cF8FKPoP": {}, "nfPWWk9r": {}}, "slotId": "4CptXjqH", "sourceItemId": "JDozXsJO", "tags": ["WoITdvDY", "UBrk3oNi", "MnhqhrA3"]}, {"customAttributes": {"ljPHQpZs": {}, "qMxIRUKB": {}, "8gJxpBi1": {}}, "slotId": "NEU0EEBD", "sourceItemId": "OPybhK9i", "tags": ["RMFVR5Wm", "LyxJ0RH2", "lq9lnFhh"]}, {"customAttributes": {"lPMOqyHi": {}, "K8jkozME": {}, "CfoQ33Wd": {}}, "slotId": "5ljrmWx5", "sourceItemId": "WgNaqgtb", "tags": ["ZsfqZyTw", "kAbhAbWj", "FSDKGIf9"]}]' \
    > test.out 2>&1
eval_tap $? 38 'PublicBulkUpdateMyItems' test.out

#- 39 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'tFvh2Cnt' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "62jlbOlP", "sourceItemId": "3rrQmDIF"}, {"slotId": "NK3Hgs7A", "sourceItemId": "GkCaSUWD"}, {"slotId": "uxXLc4nj", "sourceItemId": "e9fG45xZ"}]' \
    > test.out 2>&1
eval_tap $? 39 'PublicBulkRemoveMyItems' test.out

#- 40 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'dJJzQaIr' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 5, "slotId": "5O7humYQ", "sourceItemId": "ux1qw9vJ"}, {"qty": 100, "slotId": "LOQtLT6i", "sourceItemId": "60hTeiGh"}, {"qty": 61, "slotId": "mbuufRjN", "sourceItemId": "7yvsnsvP"}], "srcInventoryId": "qZEcxFRx"}' \
    > test.out 2>&1
eval_tap $? 40 'PublicMoveMyItems' test.out

#- 41 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId '1LAD6fxK' \
    --namespace $AB_NAMESPACE \
    --slotId 'EtgNrVcP' \
    --sourceItemId 'K5j1lQG6' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE