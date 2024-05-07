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
    --body '{"message": "7MSolwJx", "operations": [{"consumeItems": [{"inventoryId": "59HE69p6", "qty": 61, "slotId": "yLg71fwa", "sourceItemId": "me2fJO2o"}, {"inventoryId": "cglCnATg", "qty": 2, "slotId": "qd1nB5nJ", "sourceItemId": "VyINa7Fb"}, {"inventoryId": "RZOnNq6v", "qty": 54, "slotId": "udrpalVr", "sourceItemId": "YNsEVbVS"}], "createItems": [{"customAttributes": {"FfATWXvb": {}, "znfVKh3V": {}, "MFh7uHUC": {}}, "inventoryConfigurationCode": "ULZlZ4rq", "inventoryId": "LynfC9te", "qty": 32, "serverCustomAttributes": {"LQmA49XQ": {}, "7w26TLQs": {}, "j03hUSPp": {}}, "slotId": "jwlCLDa9", "slotUsed": 35, "sourceItemId": "VdD1K5fS", "tags": ["5FgEKSjD", "WV5x0zRj", "sbpJ5YwF"], "toSpecificInventory": false, "type": "Q2H6PCuF"}, {"customAttributes": {"u5wbjsuc": {}, "BLkr8PLn": {}, "RVX01dZ4": {}}, "inventoryConfigurationCode": "RyFPeKf9", "inventoryId": "K7MrQQYp", "qty": 95, "serverCustomAttributes": {"ghIrvjx2": {}, "y31ot4RV": {}, "Cvkq18nS": {}}, "slotId": "kUYNOzir", "slotUsed": 52, "sourceItemId": "tBybqLwr", "tags": ["WMsbK5Up", "btwnf0v8", "qDo207DG"], "toSpecificInventory": false, "type": "AnoPLU91"}, {"customAttributes": {"ahSdNvDz": {}, "Bl7o5t2M": {}, "QxyaQ6km": {}}, "inventoryConfigurationCode": "ghaf9DHb", "inventoryId": "nZkb6k5Q", "qty": 21, "serverCustomAttributes": {"cwJf2z8t": {}, "n64UhdId": {}, "FpPiqenU": {}}, "slotId": "Qxe4hlTq", "slotUsed": 99, "sourceItemId": "vlzvZmZj", "tags": ["ru6HTSJG", "qTZ5hmIS", "L1SJL0v5"], "toSpecificInventory": false, "type": "OOd83MVt"}], "removeItems": [{"inventoryId": "vdgsT0MU", "slotId": "G2omskFx", "sourceItemId": "Cm86KiUq"}, {"inventoryId": "t8yaVRGb", "slotId": "uwEU2hBK", "sourceItemId": "Pzear1Gr"}, {"inventoryId": "TyVDoVTK", "slotId": "gaAK7Fbe", "sourceItemId": "S8yV7UYq"}], "targetUserId": "iA1yabgI", "updateItems": [{"customAttributes": {"MBvoe7dv": {}, "5Ubp4Hu2": {}, "07FUlsBs": {}}, "inventoryId": "AlgiwMpU", "serverCustomAttributes": {"QIeGgzrk": {}, "UxxfRTiv": {}, "gawAJAzH": {}}, "slotId": "rQpxCAtf", "sourceItemId": "4L9RgiDO", "tags": ["6LJWAM0g", "JtTsAdgT", "ZT3zkeaw"], "type": "b8rZrMSo"}, {"customAttributes": {"J7BK05Wm": {}, "CnO6EhoQ": {}, "8F9Sx5FL": {}}, "inventoryId": "qjekL7wQ", "serverCustomAttributes": {"ox6L3wXK": {}, "flr6I5os": {}, "cv0h023l": {}}, "slotId": "E923m401", "sourceItemId": "6bQIU3tz", "tags": ["dwJLIBpP", "yAEJ0M2k", "Z1tZAQoQ"], "type": "yrcGOJZ5"}, {"customAttributes": {"NHjncw6c": {}, "BgBHrbEc": {}, "FgVjHXPw": {}}, "inventoryId": "UErCO8of", "serverCustomAttributes": {"bHevzpwI": {}, "5Eej0ZQU": {}, "SWbFhOCb": {}}, "slotId": "2thdJqAq", "sourceItemId": "GMUqav93", "tags": ["W3zPhqgG", "jduX1vbR", "zauBGRk3"], "type": "KahEUgv3"}]}, {"consumeItems": [{"inventoryId": "uk17MfOD", "qty": 51, "slotId": "xx66OQyl", "sourceItemId": "SAiCwXBP"}, {"inventoryId": "2eb6FTs3", "qty": 30, "slotId": "b68qFm5m", "sourceItemId": "HsZXdSJy"}, {"inventoryId": "bwxatHyK", "qty": 31, "slotId": "9SJKe7wL", "sourceItemId": "jWamDxSe"}], "createItems": [{"customAttributes": {"cAF72YMI": {}, "3s9PTcVX": {}, "lK3cKnCn": {}}, "inventoryConfigurationCode": "jGLyW402", "inventoryId": "onB8FHWm", "qty": 21, "serverCustomAttributes": {"B1O3InVC": {}, "ClN3c5Vi": {}, "mIevpyRx": {}}, "slotId": "p4v6ZVlT", "slotUsed": 37, "sourceItemId": "zAldLQyE", "tags": ["QZNdUmPC", "ut2cUqIq", "jnQdz2BY"], "toSpecificInventory": false, "type": "L9QLsgUg"}, {"customAttributes": {"f1w0lfjr": {}, "2CdOp0To": {}, "lMO8pmpQ": {}}, "inventoryConfigurationCode": "eSZNCqUn", "inventoryId": "CM2A4LSe", "qty": 78, "serverCustomAttributes": {"8QD2mYWt": {}, "1zVI8Cnd": {}, "r4pE0TjH": {}}, "slotId": "hlxnRk7C", "slotUsed": 40, "sourceItemId": "QeuCE940", "tags": ["fky7nvMb", "wn9VSh17", "JRxyzZZ3"], "toSpecificInventory": false, "type": "okMvYg3P"}, {"customAttributes": {"Kl0efJs8": {}, "6WgBmMFM": {}, "XDDeh66c": {}}, "inventoryConfigurationCode": "SGgVW9sq", "inventoryId": "ZdxM2cvj", "qty": 14, "serverCustomAttributes": {"UDTzi0YJ": {}, "iusCKehv": {}, "X7p5nSOb": {}}, "slotId": "IiqDf2zA", "slotUsed": 83, "sourceItemId": "ECY49fLg", "tags": ["XgYXSn9v", "oRcZdyx7", "ZxLfcZTH"], "toSpecificInventory": true, "type": "lOdoUlvD"}], "removeItems": [{"inventoryId": "01rR1oqD", "slotId": "Fu3AiXxp", "sourceItemId": "yzEv1sHK"}, {"inventoryId": "VdX44F85", "slotId": "KQhxEV69", "sourceItemId": "QRUCkX9o"}, {"inventoryId": "leiDd1iI", "slotId": "5PmXiZ1n", "sourceItemId": "Az7Fed3A"}], "targetUserId": "Xvf76mf2", "updateItems": [{"customAttributes": {"CUFohZeo": {}, "y0gKDDvO": {}, "GwEH8p2A": {}}, "inventoryId": "Ld5wVLWO", "serverCustomAttributes": {"TerYBWE7": {}, "nTkxbjxw": {}, "g6A7uojK": {}}, "slotId": "XjZisggj", "sourceItemId": "h1Kyourl", "tags": ["zMyxXisx", "8HuSyipo", "6rv3haP3"], "type": "TRKSDmic"}, {"customAttributes": {"XJEjfmRm": {}, "nwhnog7p": {}, "EWs2Dbs1": {}}, "inventoryId": "0cyYeOjp", "serverCustomAttributes": {"8pVcCQ5f": {}, "ySKtcj6q": {}, "oA9LYERf": {}}, "slotId": "vXyNlQad", "sourceItemId": "AQev5jXG", "tags": ["7NfqAmlD", "A5FgT9wr", "dU3C1kum"], "type": "pg6uoukp"}, {"customAttributes": {"420P69Cx": {}, "QOhJNnfe": {}, "gNcBpZus": {}}, "inventoryId": "mY7FuEch", "serverCustomAttributes": {"MUMzKuIy": {}, "lnNiBtg5": {}, "zULIB4aG": {}}, "slotId": "B1X6tWCO", "sourceItemId": "TZJTmXoT", "tags": ["q8UBJDDh", "ggpDqExA", "bYLsyeRN"], "type": "qfDgW9Bn"}]}, {"consumeItems": [{"inventoryId": "m3dlCaA1", "qty": 6, "slotId": "ZBTlAeFl", "sourceItemId": "TpPZsRPZ"}, {"inventoryId": "D4ydvRCl", "qty": 24, "slotId": "GuJFneCZ", "sourceItemId": "3abqh9iS"}, {"inventoryId": "eW1075mY", "qty": 89, "slotId": "S38hlgmC", "sourceItemId": "3H2R9Urk"}], "createItems": [{"customAttributes": {"GymoB4fU": {}, "Hq5CxELw": {}, "YApe8bZD": {}}, "inventoryConfigurationCode": "hd29276P", "inventoryId": "3Qd5QqTs", "qty": 98, "serverCustomAttributes": {"BcomJdAN": {}, "9eMnuM0S": {}, "Se9RjDkq": {}}, "slotId": "US0SyU4J", "slotUsed": 72, "sourceItemId": "BWaXGRJV", "tags": ["vsDY9Gac", "x4AZ75pz", "c2rBLwIg"], "toSpecificInventory": false, "type": "IJ33NYO8"}, {"customAttributes": {"tEFkjnlm": {}, "QXirzDbe": {}, "gQ7aXo46": {}}, "inventoryConfigurationCode": "7g5UyidZ", "inventoryId": "MU8lMcix", "qty": 8, "serverCustomAttributes": {"rac03xDe": {}, "I1FWVpO9": {}, "QuyYug1y": {}}, "slotId": "AM8bU2PK", "slotUsed": 83, "sourceItemId": "c2lszAVL", "tags": ["4fgPot0v", "tAwnCoPE", "JPLi6cKw"], "toSpecificInventory": true, "type": "m5f3X6V7"}, {"customAttributes": {"GfGXtqVx": {}, "D7LjT7Un": {}, "fjFURAWv": {}}, "inventoryConfigurationCode": "j1XILE0x", "inventoryId": "FfuNM5qs", "qty": 68, "serverCustomAttributes": {"OeFS4PvY": {}, "dcYyMF3V": {}, "YSiHiehS": {}}, "slotId": "CjFZEImp", "slotUsed": 99, "sourceItemId": "mM9Xaxko", "tags": ["XIKK3lga", "IH739rAQ", "pWpnNjwR"], "toSpecificInventory": false, "type": "Cd39ekBJ"}], "removeItems": [{"inventoryId": "6LE9ayHT", "slotId": "DpOJbeq8", "sourceItemId": "elTc9i11"}, {"inventoryId": "7Zv5gQ1f", "slotId": "4pUH3W1P", "sourceItemId": "kcGIXH7r"}, {"inventoryId": "mmzraRmi", "slotId": "5llpWhMK", "sourceItemId": "Eo3ymkJl"}], "targetUserId": "95xUTniN", "updateItems": [{"customAttributes": {"C3t3uJS7": {}, "zwn6UHld": {}, "dBHHBa5z": {}}, "inventoryId": "cNSi4rX4", "serverCustomAttributes": {"gyfUjeeo": {}, "Sq23Grrx": {}, "fzCrwaLk": {}}, "slotId": "XFk34KIv", "sourceItemId": "b5DzyNW5", "tags": ["ufNXiIVT", "8oqXeoPw", "q7Cf60Cq"], "type": "UYHOgHfS"}, {"customAttributes": {"WM2lAm1A": {}, "OdQu64v7": {}, "nS9sknDY": {}}, "inventoryId": "sPov43tk", "serverCustomAttributes": {"ihPuvbCa": {}, "bDlTgWio": {}, "qfgklIhN": {}}, "slotId": "d8me08JC", "sourceItemId": "MEhkAbqb", "tags": ["fwF2J3KR", "5XnugyVV", "lpPSlSlL"], "type": "LTPGm7Mr"}, {"customAttributes": {"266RC3zS": {}, "56ofL0rq": {}, "HWKxbGU1": {}}, "inventoryId": "fuha3vX7", "serverCustomAttributes": {"gA2GcPdE": {}, "0ATioTdb": {}, "u15P5Byq": {}}, "slotId": "6aItPEva", "sourceItemId": "L1zlkrNV", "tags": ["9DDRsxcr", "EcbPihre", "VxuYf2nw"], "type": "9jk1M6JB"}]}], "requestId": "3kgbgU1h"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListIntegrationConfigurations
samples/cli/sample-apps Inventory adminListIntegrationConfigurations \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '99' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 3 'AdminListIntegrationConfigurations' test.out

#- 4 AdminCreateIntegrationConfiguration
samples/cli/sample-apps Inventory adminCreateIntegrationConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["vWPFmQRJ", "2J4SSQ0n", "Zwzwj6wA"], "serviceName": "PQ4BX3tc", "targetInventoryCode": "91atHxXx"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateIntegrationConfiguration' test.out

#- 5 AdminUpdateIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateIntegrationConfiguration \
    --integrationConfigurationId 'WrPQ6cSc' \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["QBKTRMMB", "EyW4i0lv", "rd82BeF9"], "serviceName": "iV5VkBXv", "targetInventoryCode": "enMeOjZj"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateIntegrationConfiguration' test.out

#- 6 AdminUpdateStatusIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateStatusIntegrationConfiguration \
    --integrationConfigurationId 'ZrL4PG8w' \
    --namespace $AB_NAMESPACE \
    --body '{"status": "INIT"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateStatusIntegrationConfiguration' test.out

#- 7 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'hDdcqXYT' \
    --limit '58' \
    --offset '90' \
    --sortBy 'inventoryConfigurationCode' \
    --userId 'wnbYRgFO' \
    > test.out 2>&1
eval_tap $? 7 'AdminListInventories' test.out

#- 8 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "qTdlJJuX", "userId": "07jTgEr5"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateInventory' test.out

#- 9 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'vmMHVIgH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventory' test.out

#- 10 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'ZNI0BBvH' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 90}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateInventory' test.out

#- 11 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'oEHUcm9l' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "c826YWqW"}' \
    > test.out 2>&1
eval_tap $? 11 'DeleteInventory' test.out

#- 12 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId '13MV9sR4' \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '55' \
    --qtyGte '49' \
    --sortBy 'createdAt:asc' \
    --sourceItemId 'pmbipwYe' \
    --tags 'eztHrYMD' \
    > test.out 2>&1
eval_tap $? 12 'AdminListItems' test.out

#- 13 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'kn3lLILp' \
    --namespace $AB_NAMESPACE \
    --slotId 'ff1r8ZUW' \
    --sourceItemId '4JT2IAiZ' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetInventoryItem' test.out

#- 14 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'aNjUbPAv' \
    --limit '58' \
    --offset '4' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListInventoryConfigurations' test.out

#- 15 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Sc0D7hIu", "description": "xwqMsSBQ", "initialMaxSlots": 6, "maxInstancesPerUser": 52, "maxUpgradeSlots": 26, "name": "gtcGDVBg"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateInventoryConfiguration' test.out

#- 16 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'IQv7z6qb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetInventoryConfiguration' test.out

#- 17 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'NjPdGyB6' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "g3BfAwjS", "description": "aw0MrIcB", "initialMaxSlots": 30, "maxInstancesPerUser": 62, "maxUpgradeSlots": 95, "name": "BSG7djO6"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateInventoryConfiguration' test.out

#- 18 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'TFxADS48' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteInventoryConfiguration' test.out

#- 19 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '67' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 19 'AdminListItemTypes' test.out

#- 20 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "8KE30r4h"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateItemType' test.out

#- 21 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'zArHj0gy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminDeleteItemType' test.out

#- 22 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '64' \
    --owner '71ySzZKm' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 22 'AdminListTags' test.out

#- 23 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "7RGHyNgG", "owner": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateTag' test.out

#- 24 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'P58NioUk' \
    > test.out 2>&1
eval_tap $? 24 'AdminDeleteTag' test.out

#- 25 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'VCfGdKXc' \
    --namespace $AB_NAMESPACE \
    --userId 'pP0SML8X' \
    --body '{"qty": 27, "slotId": "DMwm9QF6", "sourceItemId": "lHUn469t"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminConsumeUserItem' test.out

#- 26 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'IcQ0BXJc' \
    --namespace $AB_NAMESPACE \
    --userId 'I7BXXbMh' \
    --body '[{"customAttributes": {"HKW4KN9X": {}, "eL3nqgFn": {}, "koANiveg": {}}, "serverCustomAttributes": {"27HxNviS": {}, "64E206rE": {}, "BGsp0h3i": {}}, "slotId": "kRxXatvT", "sourceItemId": "0cPFHGOC", "tags": ["ME7i9oVn", "SaTN2spn", "vJBBK2Jl"], "type": "VMD6rKfA"}, {"customAttributes": {"cXsTfHg2": {}, "rfC3sxAK": {}, "CyeY7Qmx": {}}, "serverCustomAttributes": {"i6TiZD6A": {}, "EyKIcRnh": {}, "1KdFLxhJ": {}}, "slotId": "PpbMAV1R", "sourceItemId": "cLzpGJXS", "tags": ["ED9bEZaK", "2l1hddHF", "pTyYNRmg"], "type": "kU2YLEHs"}, {"customAttributes": {"mhAI6QRw": {}, "3O3uifNn": {}, "Dv6zktyX": {}}, "serverCustomAttributes": {"SAUtefQ4": {}, "3lVGBlth": {}, "kpwOgOWe": {}}, "slotId": "viWuuleD", "sourceItemId": "Zw3Kso0x", "tags": ["GyCEtQzv", "OWgMsszL", "cLDYqsFl"], "type": "eWeeMakj"}]' \
    > test.out 2>&1
eval_tap $? 26 'AdminBulkUpdateMyItems' test.out

#- 27 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'hZlZK9UI' \
    --namespace $AB_NAMESPACE \
    --userId 'Pvmqsomv' \
    --body '{"customAttributes": {"Wv6u62XT": {}, "py3rbTKP": {}, "S4tK6bD3": {}}, "qty": 75, "serverCustomAttributes": {"TZzAGYUb": {}, "uWAtN5Ug": {}, "A0aDPj4Z": {}}, "slotId": "MpJaRweW", "slotUsed": 98, "source": "ECOMMERCE", "sourceItemId": "sb602hrw", "tags": ["qRKcYjCz", "vT9vukVS", "LaD7OlDz"], "type": "qJRVNoT0"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminSaveItemToInventory' test.out

#- 28 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'tGF5tzaA' \
    --namespace $AB_NAMESPACE \
    --userId 'C0WJOIkh' \
    --body '[{"slotId": "MQMsEgD3", "sourceItemId": "zUtp5SQW"}, {"slotId": "VDuyF6Ns", "sourceItemId": "RE5pHIHl"}, {"slotId": "rmkeaXKo", "sourceItemId": "AqGSiR41"}]' \
    > test.out 2>&1
eval_tap $? 28 'AdminBulkRemoveItems' test.out

#- 29 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId '4ZGCrY5L' \
    --body '{"customAttributes": {"KGM8Qk47": {}, "yF1mx45N": {}, "q6rZNmLs": {}}, "inventoryConfigurationCode": "zxdFZKRv", "qty": 27, "serverCustomAttributes": {"lbvCbhye": {}, "lCdGs9we": {}, "FqxTnZvZ": {}}, "slotId": "GXqmTfTY", "slotUsed": 60, "source": "OTHER", "sourceItemId": "OA2RJF8R", "tags": ["Owbndj6G", "7dbddXS3", "Hdpg29ep"], "type": "iSvYqvRi"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminSaveItem' test.out

#- 30 AdminSyncUserEntitlements
samples/cli/sample-apps Inventory adminSyncUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'dHFxMaWN' \
    > test.out 2>&1
eval_tap $? 30 'AdminSyncUserEntitlements' test.out

#- 31 AdminPurchasable
samples/cli/sample-apps Inventory adminPurchasable \
    --namespace $AB_NAMESPACE \
    --userId '9jNRnyfW' \
    --body '{"entitlementType": "3hP7nuAz", "inventoryConfig": {"slotUsed": 23}, "itemId": "evg4y3bL", "itemType": "hBaYGhBP", "items": [{"bundledQty": 49, "entitlementType": "6G0Z3lkN", "inventoryConfig": {"slotUsed": 65}, "itemId": "BkgmFVmj", "itemType": "5JLgVNJ2", "sku": "OcOqQJmA", "useCount": 15}, {"bundledQty": 73, "entitlementType": "eaRRh3RY", "inventoryConfig": {"slotUsed": 95}, "itemId": "by1UHOmE", "itemType": "rJDT8CAW", "sku": "MH6cPhjq", "useCount": 59}, {"bundledQty": 37, "entitlementType": "x5TJmafK", "inventoryConfig": {"slotUsed": 28}, "itemId": "KjVgEt2r", "itemType": "CD0ZLiKy", "sku": "Va9iaDpK", "useCount": 40}], "quantity": 56, "sku": "0AsUC635", "useCount": 26}' \
    > test.out 2>&1
eval_tap $? 31 'AdminPurchasable' test.out

#- 32 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'TxHZtwVI' \
    --limit '72' \
    --offset '95' \
    --sortBy 'code:asc' \
    > test.out 2>&1
eval_tap $? 32 'PublicListInventoryConfigurations' test.out

#- 33 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '2' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 33 'PublicListItemTypes' test.out

#- 34 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '33' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 34 'PublicListTags' test.out

#- 35 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'UnBpKgge' \
    --limit '78' \
    --offset '54' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 35 'PublicListInventories' test.out

#- 36 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'aoLJoap1' \
    --namespace $AB_NAMESPACE \
    --body '{"qty": 46, "slotId": "Kfwc1nsN", "sourceItemId": "1BbFetGG"}' \
    > test.out 2>&1
eval_tap $? 36 'PublicConsumeMyItem' test.out

#- 37 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'lvc8IvTD' \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '16' \
    --qtyGte '24' \
    --sortBy 'createdAt' \
    --sourceItemId 'JCEizUTh' \
    --tags 'eNZjJ0O3' \
    > test.out 2>&1
eval_tap $? 37 'PublicListItems' test.out

#- 38 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'H135WAYx' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"jlH64gDT": {}, "Wt7jGsEU": {}, "gOfDes6T": {}}, "slotId": "6hI1ubSt", "sourceItemId": "ms1amlCD", "tags": ["12SbKUWJ", "VEJhQsyB", "SuUoDDh1"]}, {"customAttributes": {"Uij10pGl": {}, "m5Ovi3TT": {}, "F6qIMAmR": {}}, "slotId": "5Qz4XWvw", "sourceItemId": "lKzRbU8J", "tags": ["mE9zNBB2", "IgDtr4F3", "zXcBZ88e"]}, {"customAttributes": {"HdXDPj0A": {}, "MYijQK8M": {}, "KKpMe4NK": {}}, "slotId": "rUhrpAu4", "sourceItemId": "ezIwjx26", "tags": ["AgH2mK2G", "LUHFLee1", "HwgJczSL"]}]' \
    > test.out 2>&1
eval_tap $? 38 'PublicBulkUpdateMyItems' test.out

#- 39 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'gVykdzT8' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "uTIXgpe8", "sourceItemId": "AuDqPxYv"}, {"slotId": "6NfLV6AE", "sourceItemId": "cpJowH7f"}, {"slotId": "wkLTKDrM", "sourceItemId": "LZeugprp"}]' \
    > test.out 2>&1
eval_tap $? 39 'PublicBulkRemoveMyItems' test.out

#- 40 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'sL4BPiPN' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 25, "slotId": "PWdcgohY", "sourceItemId": "kKELExun"}, {"qty": 70, "slotId": "E5oD8chV", "sourceItemId": "4RnF4I1o"}, {"qty": 63, "slotId": "X5UqCI7I", "sourceItemId": "vfDLtymX"}], "srcInventoryId": "x5xsgxIj"}' \
    > test.out 2>&1
eval_tap $? 40 'PublicMoveMyItems' test.out

#- 41 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'r5bs6vkS' \
    --namespace $AB_NAMESPACE \
    --slotId 'ulX4vAEO' \
    --sourceItemId '0hk2he7v' \
    > test.out 2>&1
eval_tap $? 41 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE