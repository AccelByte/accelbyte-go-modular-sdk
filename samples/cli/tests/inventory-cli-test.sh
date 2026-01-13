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
echo "1..44"

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
    --body '{"message": "yNsyCaS0", "operations": [{"consumeItems": [{"dateRangeValidation": false, "inventoryId": "pGRzFhdC", "options": ["CBsntfVv", "nK8z458g", "ClyrcNBE"], "qty": 81, "slotId": "5pNDrDTJ", "sourceItemId": "dA1E453a"}, {"dateRangeValidation": false, "inventoryId": "wEzt7Mxy", "options": ["wgcVXRTJ", "Nhejwapl", "gzBUGwNI"], "qty": 99, "slotId": "06ljZ46P", "sourceItemId": "ipUyxjSA"}, {"dateRangeValidation": true, "inventoryId": "t5sNWed0", "options": ["jPE9wWLs", "NJjEizBv", "2dtWxnIS"], "qty": 99, "slotId": "O8sHwR6p", "sourceItemId": "9LiSTuBa"}], "createItems": [{"customAttributes": {"i5YK09v5": {}, "fAvsQA65": {}, "cr4vW8Bz": {}}, "inventoryConfigurationCode": "1pILYYuO", "inventoryId": "a9ZJkOLv", "qty": 76, "serverCustomAttributes": {"f7T8PeCr": {}, "rG80vqbQ": {}, "ysj4V2Hh": {}}, "slotId": "JSAAsv27", "slotUsed": 64, "source": "ECOMMERCE", "sourceItemId": "FdFbd6G9", "tags": ["o1jQ6L6S", "RXGVBg57", "YnfGUFpf"], "toSpecificInventory": true, "type": "3J8kjfjK"}, {"customAttributes": {"2mXSgAYq": {}, "o7RPTohJ": {}, "YY9N7xGE": {}}, "inventoryConfigurationCode": "GmDDnVdL", "inventoryId": "vtPjHCPe", "qty": 30, "serverCustomAttributes": {"w0WYrkkT": {}, "6CJUU5mU": {}, "w3RKeYNC": {}}, "slotId": "DGJQU0zd", "slotUsed": 62, "source": "ECOMMERCE", "sourceItemId": "toCRam3c", "tags": ["JjTLThvs", "clk5gpNc", "yJenfuQ1"], "toSpecificInventory": true, "type": "2XG0r9M6"}, {"customAttributes": {"7KL9D5Fb": {}, "rNWjfSJ3": {}, "Uxxqtwu1": {}}, "inventoryConfigurationCode": "yVq7JT17", "inventoryId": "w4nviAck", "qty": 31, "serverCustomAttributes": {"okE3Kbhv": {}, "hOvBI9Tk": {}, "SpMHByer": {}}, "slotId": "T5pNNfN6", "slotUsed": 86, "source": "OTHER", "sourceItemId": "QVvmWMuu", "tags": ["KiJHn09e", "3LpMIeTm", "VjFSrXm2"], "toSpecificInventory": true, "type": "zqDNiB5K"}], "removeItems": [{"inventoryId": "YA7WgRRR", "slotId": "oCbnZiho", "sourceItemId": "FU8qJwCU"}, {"inventoryId": "ll6d5mMz", "slotId": "SgoiQj4X", "sourceItemId": "mpySzGeK"}, {"inventoryId": "KjQtCing", "slotId": "m3fMLcMY", "sourceItemId": "iX82Admf"}], "targetUserId": "R4IA6uxU", "updateItems": [{"customAttributes": {"1VWKttUU": {}, "s9XHslZF": {}, "mK15VtRE": {}}, "inventoryId": "60Tyg34Z", "serverCustomAttributes": {"zZsw8zyj": {}, "qqH5BSgy": {}, "lK0dhloC": {}}, "slotId": "Ud4s63bO", "sourceItemId": "94K8tDRK", "tags": ["uC4pXx9U", "pndBtK1T", "eXSoKL5T"], "type": "qfTeLbLQ"}, {"customAttributes": {"FeMD9nuq": {}, "P239YuYU": {}, "I9voUbks": {}}, "inventoryId": "W5U84uCw", "serverCustomAttributes": {"ETlEQkex": {}, "e3iWWAf9": {}, "0aAZd9xC": {}}, "slotId": "aOi7tJTW", "sourceItemId": "UShOWxoE", "tags": ["5QrKSpvQ", "gkzArmsi", "dgOZXrLy"], "type": "ELCcTDcb"}, {"customAttributes": {"h7MMQqbc": {}, "8mlzAIZe": {}, "DZrx57xZ": {}}, "inventoryId": "DsHHFOOZ", "serverCustomAttributes": {"nS8hPNUK": {}, "9TQtSe2Z": {}, "AuesrN1g": {}}, "slotId": "D8lT60YY", "sourceItemId": "zqkMeOEa", "tags": ["hq9DkjB3", "m6jfsejW", "085MtC0C"], "type": "2FFMpa4r"}]}, {"consumeItems": [{"dateRangeValidation": true, "inventoryId": "YmO8Tpzq", "options": ["jQDgKyDK", "GxRgcBxu", "qyP6Eh1u"], "qty": 72, "slotId": "5Cq29tnB", "sourceItemId": "RZSjTFJ8"}, {"dateRangeValidation": true, "inventoryId": "xQtKxuAK", "options": ["awVki6uO", "WBNKhrb1", "d43Nv1fy"], "qty": 28, "slotId": "ApWT2sYd", "sourceItemId": "ewOriT7k"}, {"dateRangeValidation": true, "inventoryId": "iF9eBrTZ", "options": ["becm6dsG", "3z261dMx", "zvgFTGkV"], "qty": 83, "slotId": "kZ836FXi", "sourceItemId": "rIe6WN8g"}], "createItems": [{"customAttributes": {"WzVphcYA": {}, "djJghTNu": {}, "O1dnOOIh": {}}, "inventoryConfigurationCode": "amCRzgNz", "inventoryId": "DaRb9I1B", "qty": 69, "serverCustomAttributes": {"ffIUjsrE": {}, "dWtbo9LG": {}, "4IrBJvbX": {}}, "slotId": "abrQzFyx", "slotUsed": 73, "source": "ECOMMERCE", "sourceItemId": "2FtsjwMG", "tags": ["YCpUZtnL", "nrz1hRjC", "Eu5VaOWK"], "toSpecificInventory": true, "type": "sWt8ak97"}, {"customAttributes": {"x3nPJqKF": {}, "5FfaA7jh": {}, "NVOleJUi": {}}, "inventoryConfigurationCode": "vPLhv7x8", "inventoryId": "ZDcLYYbK", "qty": 12, "serverCustomAttributes": {"7UKP5NA4": {}, "V5HY9yPw": {}, "vUjplnah": {}}, "slotId": "0LEVjasw", "slotUsed": 53, "source": "OTHER", "sourceItemId": "EerKNj36", "tags": ["07HJYs4Y", "cAqWTCON", "WEqWshBH"], "toSpecificInventory": true, "type": "rM6GI5xh"}, {"customAttributes": {"xygfy3pk": {}, "9U5yRpO8": {}, "8miL7vYd": {}}, "inventoryConfigurationCode": "SWcLvuKR", "inventoryId": "Yc5kep18", "qty": 89, "serverCustomAttributes": {"d1so86IL": {}, "l6doNQuY": {}, "9uF5y2kV": {}}, "slotId": "jCetkduO", "slotUsed": 49, "source": "OTHER", "sourceItemId": "WBBey30M", "tags": ["WAdUcIGm", "MeLBS5Al", "x5SXmQNX"], "toSpecificInventory": true, "type": "6LvJfEOL"}], "removeItems": [{"inventoryId": "Q6lzV1t9", "slotId": "cefkRl9o", "sourceItemId": "sfbNm3Oz"}, {"inventoryId": "zrupK0wz", "slotId": "VTYRWbrd", "sourceItemId": "BeG0nO3M"}, {"inventoryId": "8pFnwD1J", "slotId": "tMmeg0e9", "sourceItemId": "Ie57Qqdc"}], "targetUserId": "Jv3DXJOd", "updateItems": [{"customAttributes": {"H3khtpGF": {}, "la5njl1M": {}, "rRtRKu68": {}}, "inventoryId": "yqTRicjR", "serverCustomAttributes": {"x1aFxkWt": {}, "8tOfGLT4": {}, "gI3tzzqq": {}}, "slotId": "YUdo4Aku", "sourceItemId": "fcomlOmH", "tags": ["RPvCoVMV", "W9KnvVtL", "a4K3lnaD"], "type": "KLAHcpFd"}, {"customAttributes": {"x40X1K3Q": {}, "ng6OBjjb": {}, "sbLMh3Cu": {}}, "inventoryId": "Okiqd0Iv", "serverCustomAttributes": {"BiMp65Ry": {}, "ijRUeJdP": {}, "5vWxKz7g": {}}, "slotId": "CDOhEX4n", "sourceItemId": "KG7c4MzY", "tags": ["xSlyDVOj", "QSNeF8Hy", "3UiH5rNP"], "type": "B86Js2N9"}, {"customAttributes": {"JEUMPuoY": {}, "tWGugWQB": {}, "Z5eZ1JOn": {}}, "inventoryId": "RwFkc5Zs", "serverCustomAttributes": {"SUPubA3x": {}, "cNOItPL0": {}, "iNRjpAqa": {}}, "slotId": "hOQQyJAe", "sourceItemId": "eUK2Ezhr", "tags": ["c2tM8Qs9", "mefyPNa8", "TCS9gdUD"], "type": "DrtouD9m"}]}, {"consumeItems": [{"dateRangeValidation": true, "inventoryId": "Ew9nRpUB", "options": ["VJSSO7x1", "xMt5k9v5", "KvU9nBvo"], "qty": 87, "slotId": "LgpEL9Xw", "sourceItemId": "74dyNTog"}, {"dateRangeValidation": true, "inventoryId": "zDG8omka", "options": ["V9FJ8Qjg", "sbIOJAoH", "xuP6OPJx"], "qty": 78, "slotId": "JWfhSl7X", "sourceItemId": "ct7pnRZB"}, {"dateRangeValidation": false, "inventoryId": "sfkIrCz3", "options": ["pkwLrFGH", "RtEWT4gf", "Faf5whO2"], "qty": 18, "slotId": "lFWLKzJW", "sourceItemId": "sSyJ8R1g"}], "createItems": [{"customAttributes": {"BTXsQJo4": {}, "CZnGfHGu": {}, "cynw3IyW": {}}, "inventoryConfigurationCode": "vFTeoqqX", "inventoryId": "3Ayw2RHd", "qty": 54, "serverCustomAttributes": {"HTIfILa5": {}, "yDkoPgjJ": {}, "9GZZ8Xtz": {}}, "slotId": "JM3FXxSk", "slotUsed": 28, "source": "ECOMMERCE", "sourceItemId": "ZEFJajpu", "tags": ["CZdjK7NI", "gcEYN4EC", "6KLNDceO"], "toSpecificInventory": false, "type": "oi9A4brJ"}, {"customAttributes": {"gE2u358L": {}, "FEVanvw3": {}, "ONDGuGXy": {}}, "inventoryConfigurationCode": "tr4ftXIo", "inventoryId": "ppK9HatJ", "qty": 56, "serverCustomAttributes": {"TPHEq4K1": {}, "fdBqYGmA": {}, "fG5swGHZ": {}}, "slotId": "Tc8DflNc", "slotUsed": 66, "source": "ECOMMERCE", "sourceItemId": "VJywDxRM", "tags": ["PuwwSIOL", "3j9y15QS", "iGOFc8t6"], "toSpecificInventory": true, "type": "X9ay5OB8"}, {"customAttributes": {"G8F4FL9X": {}, "Py8o5fTc": {}, "VrPSqEi3": {}}, "inventoryConfigurationCode": "jPRVmJ6u", "inventoryId": "XfT6nCdH", "qty": 3, "serverCustomAttributes": {"FfOmn7UL": {}, "uvXB4LRX": {}, "aqD9JPiY": {}}, "slotId": "FKNhnncH", "slotUsed": 12, "source": "OTHER", "sourceItemId": "SalHeKVG", "tags": ["PPbkOZMh", "kI8VIv48", "zu4U22Sw"], "toSpecificInventory": false, "type": "NmbkQqXI"}], "removeItems": [{"inventoryId": "BTj1YNs4", "slotId": "yOXVt7WD", "sourceItemId": "hmId2LzN"}, {"inventoryId": "dzpzCkUz", "slotId": "ZrZrC3BS", "sourceItemId": "KDlYQqEh"}, {"inventoryId": "XqwT9V9a", "slotId": "Vqo7eCEa", "sourceItemId": "9nzJRimi"}], "targetUserId": "WsHKSiSV", "updateItems": [{"customAttributes": {"5HeJa2BO": {}, "UxlOEuMO": {}, "lD1AbuhM": {}}, "inventoryId": "DLFQs0Lx", "serverCustomAttributes": {"2WKMebNE": {}, "QkPmbpF4": {}, "1vW21ZAs": {}}, "slotId": "TM5Ce9Pa", "sourceItemId": "eGZWsduQ", "tags": ["W0rpHlO7", "S7bNp7Nv", "XUMcEZPo"], "type": "eGW1KUC8"}, {"customAttributes": {"ni2NIXyt": {}, "BrjhOhTE": {}, "neeHCMOP": {}}, "inventoryId": "f1uzqPEE", "serverCustomAttributes": {"i3ugaLhQ": {}, "ZXLbv2nr": {}, "373Y00jS": {}}, "slotId": "jPMMCZ6n", "sourceItemId": "HNhBnfN8", "tags": ["LkA7xHFK", "nOodfftP", "Bfest73T"], "type": "5kl2r91D"}, {"customAttributes": {"NhYxGgWo": {}, "3dhRkFlS": {}, "JSoX4zo2": {}}, "inventoryId": "M2UQ3OpH", "serverCustomAttributes": {"QU15qsuS": {}, "f5MpBakv": {}, "bM4grWSN": {}}, "slotId": "bwbXHLhv", "sourceItemId": "3pGRlIIt", "tags": ["ocf5yCPu", "qwwQOjJH", "EXcwkOTX"], "type": "787lQTV6"}]}], "requestId": "4tWVazcY"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListIntegrationConfigurations
samples/cli/sample-apps Inventory adminListIntegrationConfigurations \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '30' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 3 'AdminListIntegrationConfigurations' test.out

#- 4 AdminCreateIntegrationConfiguration
samples/cli/sample-apps Inventory adminCreateIntegrationConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["ea0271PL", "uowilzjp", "mVXbaKdF"], "serviceName": "sXzbxc90", "targetInventoryCode": "uuhKNoRR"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateIntegrationConfiguration' test.out

#- 5 AdminUpdateIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateIntegrationConfiguration \
    --integrationConfigurationId 'lw7PgUry' \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["ncOFCtkU", "rUmj2Cxy", "f2kFVWpf"], "serviceName": "lhP5RcB6", "targetInventoryCode": "h6s9lQ9W"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateIntegrationConfiguration' test.out

#- 6 AdminUpdateStatusIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateStatusIntegrationConfiguration \
    --integrationConfigurationId 'r9vCSzNn' \
    --namespace $AB_NAMESPACE \
    --body '{"status": "TIED"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateStatusIntegrationConfiguration' test.out

#- 7 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'IS5N9k2T' \
    --limit '27' \
    --offset '40' \
    --sortBy 'updatedAt' \
    --userId 'Q2RDCviy' \
    > test.out 2>&1
eval_tap $? 7 'AdminListInventories' test.out

#- 8 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "etOaHVhv", "userId": "3h1eYuWF"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateInventory' test.out

#- 9 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId '9G5OeiX4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventory' test.out

#- 10 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'buD5JM1Z' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 99}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateInventory' test.out

#- 11 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'mVCrwTJj' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "hTxTobj9"}' \
    > test.out 2>&1
eval_tap $? 11 'DeleteInventory' test.out

#- 12 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'XUGB4oHn' \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '32' \
    --sortBy 'createdAt:desc' \
    --sourceItemId 'dNabpJVU' \
    --tags 'hbjeteDO' \
    > test.out 2>&1
eval_tap $? 12 'AdminListItems' test.out

#- 13 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'OTpIVX5E' \
    --namespace $AB_NAMESPACE \
    --slotId 'L2zTs82S' \
    --sourceItemId 'MErBr3bR' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetInventoryItem' test.out

#- 14 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'm1iwdr3I' \
    --limit '46' \
    --offset '42' \
    --sortBy 'updatedAt:asc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListInventoryConfigurations' test.out

#- 15 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "EBEc3bQT", "description": "f5jOd86U", "initialMaxSlots": 7, "maxInstancesPerUser": 48, "maxUpgradeSlots": 80, "name": "MD8PCS4r"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateInventoryConfiguration' test.out

#- 16 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId '4y2j91Ay' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetInventoryConfiguration' test.out

#- 17 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'hXX0zFGD' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "vznTkgPM", "description": "7nACJzc6", "initialMaxSlots": 36, "maxInstancesPerUser": 15, "maxUpgradeSlots": 89, "name": "fZJSMVeG"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateInventoryConfiguration' test.out

#- 18 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'msdy19tN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteInventoryConfiguration' test.out

#- 19 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '99' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 19 'AdminListItemTypes' test.out

#- 20 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "1u38KxJE"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateItemType' test.out

#- 21 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName '98EBPe7t' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminDeleteItemType' test.out

#- 22 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '42' \
    --owner 'D6Eq7ISA' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 22 'AdminListTags' test.out

#- 23 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "ovepdpLB", "owner": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateTag' test.out

#- 24 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'EcAzEc7S' \
    > test.out 2>&1
eval_tap $? 24 'AdminDeleteTag' test.out

#- 25 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'AIpSAn91' \
    --namespace $AB_NAMESPACE \
    --userId '06d86ABC' \
    --dateRangeValidation 'WfP7X59q' \
    --body '{"options": ["Xx3pcB2N", "l1XJL1dJ", "wS2fil6e"], "qty": 64, "slotId": "gKPuNgeK", "sourceItemId": "Bscmx3gW"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminConsumeUserItem' test.out

#- 26 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 's2YPioL2' \
    --namespace $AB_NAMESPACE \
    --userId 'GShkEMYe' \
    --body '[{"customAttributes": {"o0XegN5o": {}, "S7Vs9qHR": {}, "cjF7mtWp": {}}, "serverCustomAttributes": {"mJy7vUwU": {}, "VEp4hC18": {}, "WxEn5Vn5": {}}, "slotId": "hfx2lDKk", "sourceItemId": "ACFlG0Rr", "tags": ["z1QtzjsB", "LNyYQ20G", "jJWlBYos"], "type": "qvXtKfUv"}, {"customAttributes": {"cxS8ndTW": {}, "GXmHMrls": {}, "mt5Ys2vJ": {}}, "serverCustomAttributes": {"csP2nHT4": {}, "u0XNfC87": {}, "gmGbclJq": {}}, "slotId": "5iNlc5Yn", "sourceItemId": "H49AFFtw", "tags": ["aahcAvBy", "f26HA0G1", "WDqryHgH"], "type": "AA6EH3sP"}, {"customAttributes": {"dMRCNNgh": {}, "rhj4IU87": {}, "ReLcMVLT": {}}, "serverCustomAttributes": {"0C8Pxu5l": {}, "l57lIErL": {}, "E1pcvjaE": {}}, "slotId": "ZhDvDYfm", "sourceItemId": "vdZooiZs", "tags": ["dTFM8vqM", "b8Ovh3hY", "ZhXj0u4u"], "type": "BGDLyJaS"}]' \
    > test.out 2>&1
eval_tap $? 26 'AdminBulkUpdateMyItems' test.out

#- 27 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'J2x4Dy4R' \
    --namespace $AB_NAMESPACE \
    --userId '2SKEDQLI' \
    --body '{"customAttributes": {"N5gdbZrc": {}, "huXgIxzl": {}, "YdPuEtal": {}}, "qty": 71, "serverCustomAttributes": {"WMzdFzUa": {}, "5iyu7qLm": {}, "edVWQDel": {}}, "slotId": "qeexSt20", "slotUsed": 21, "source": "OTHER", "sourceItemId": "Tolk9Arf", "tags": ["SOKSBdrx", "fgUajSSr", "0nDe5r4y"], "type": "DW3Q9Xvz"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminSaveItemToInventory' test.out

#- 28 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'pdxrQry4' \
    --namespace $AB_NAMESPACE \
    --userId 'vIC7QARn' \
    --body '[{"slotId": "8Z9BzZOq", "sourceItemId": "ox9yuC5S"}, {"slotId": "BjZSQqeN", "sourceItemId": "1LIRTIbw"}, {"slotId": "VeMaqn0I", "sourceItemId": "xKZHw8iM"}]' \
    > test.out 2>&1
eval_tap $? 28 'AdminBulkRemoveItems' test.out

#- 29 AdminBulkSaveItemToInventory
samples/cli/sample-apps Inventory adminBulkSaveItemToInventory \
    --inventoryId 'LVbkeFuZ' \
    --namespace $AB_NAMESPACE \
    --userId 'vGMDLdft' \
    --body '[{"customAttributes": {"8GlClxDs": {}, "yqQystTT": {}, "FxHu1ODU": {}}, "qty": 41, "serverCustomAttributes": {"cHW4PZRL": {}, "giNduHF7": {}, "Dv5BxRNt": {}}, "slotId": "kxLCyOu6", "slotUsed": 43, "source": "ECOMMERCE", "sourceItemId": "fhv8Eeep", "tags": ["WVsHXxP8", "iyOvzs1o", "WTswdpn3"], "type": "4aKiv1Q4"}, {"customAttributes": {"HYKrmM0G": {}, "VP278zt6": {}, "pQg8ekCN": {}}, "qty": 94, "serverCustomAttributes": {"11yNGukK": {}, "M49jKvei": {}, "0dSSXryS": {}}, "slotId": "3PGsdrBn", "slotUsed": 3, "source": "ECOMMERCE", "sourceItemId": "HLCpHLtt", "tags": ["TtvyvchX", "NffvSpqt", "n75UpQnA"], "type": "ZhSOK5Cy"}, {"customAttributes": {"mN1FleIn": {}, "RSfO9v8U": {}, "imejHS0C": {}}, "qty": 86, "serverCustomAttributes": {"Q4MTjGwG": {}, "sQqAsiDg": {}, "R9z4HxUt": {}}, "slotId": "syYKYyYS", "slotUsed": 66, "source": "ECOMMERCE", "sourceItemId": "xQtSuqBk", "tags": ["2BN5WwHm", "qCJznS8Q", "OTCpHPi0"], "type": "eFnl5Hsw"}]' \
    > test.out 2>&1
eval_tap $? 29 'AdminBulkSaveItemToInventory' test.out

#- 30 AdminUpdateUserInventoriesByInventoryCode
samples/cli/sample-apps Inventory adminUpdateUserInventoriesByInventoryCode \
    --inventoryConfigurationCode 'iEgYzAbI' \
    --namespace $AB_NAMESPACE \
    --userId 'SZxYXe9K' \
    --body '{"incMaxSlots": 40}' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateUserInventoriesByInventoryCode' test.out

#- 31 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId '2IObJOp4' \
    --body '{"customAttributes": {"WAAJcemj": {}, "1ETHctDQ": {}, "b8R1dDja": {}}, "inventoryConfigurationCode": "vCMFFZoS", "qty": 9, "serverCustomAttributes": {"MyM7sEbL": {}, "trcNPDnV": {}, "6PTZWRRH": {}}, "slotId": "IBJyggGv", "slotUsed": 95, "source": "OTHER", "sourceItemId": "Usj5UL6J", "tags": ["gmrjdNL5", "t9Ouv2CN", "qaDaGE18"], "type": "XV26kdh6"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminSaveItem' test.out

#- 32 AdminBulkSaveItem
samples/cli/sample-apps Inventory adminBulkSaveItem \
    --namespace $AB_NAMESPACE \
    --userId '25wdVqsU' \
    --body '[{"customAttributes": {"kgbpw50E": {}, "ubXo9l6e": {}, "xja2pXFA": {}}, "inventoryConfigurationCode": "aZnOcKty", "qty": 50, "serverCustomAttributes": {"WqN9EC0f": {}, "yif1vdlA": {}, "mL4geSoD": {}}, "slotId": "IdT8ReTW", "slotUsed": 97, "source": "OTHER", "sourceItemId": "IsYYZYF5", "tags": ["BhwceHIU", "2fLezQrN", "lTTe3eoA"], "type": "IZxbOsBA"}, {"customAttributes": {"h7yMt72p": {}, "4HEr5J6Z": {}, "SHkxt2nB": {}}, "inventoryConfigurationCode": "ZcP2idEX", "qty": 27, "serverCustomAttributes": {"5FeCyORb": {}, "1SbEuauQ": {}, "e9kkDnFz": {}}, "slotId": "nGBKAqcI", "slotUsed": 73, "source": "OTHER", "sourceItemId": "ZEeSeXLi", "tags": ["PZz2A8s1", "95PihISd", "OlM6GbuL"], "type": "DaAWUL0A"}, {"customAttributes": {"Zr1WjLP1": {}, "OPZQlCUM": {}, "OO3BErqL": {}}, "inventoryConfigurationCode": "MF05u1vi", "qty": 51, "serverCustomAttributes": {"NGetsQl4": {}, "OFu2Is5i": {}, "GWptZeyQ": {}}, "slotId": "ELa4yYxL", "slotUsed": 98, "source": "ECOMMERCE", "sourceItemId": "Q2yRMhde", "tags": ["uscIbGLj", "pg1n5FTK", "79EIR0Or"], "type": "RIqnhSPh"}]' \
    > test.out 2>&1
eval_tap $? 32 'AdminBulkSaveItem' test.out

#- 33 AdminSyncUserEntitlements
samples/cli/sample-apps Inventory adminSyncUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '8fGyQWfs' \
    > test.out 2>&1
eval_tap $? 33 'AdminSyncUserEntitlements' test.out

#- 34 AdminPurchasable
samples/cli/sample-apps Inventory adminPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'KgjJHqjh' \
    --body '{"entitlementType": "KcEznpsL", "inventoryConfig": {"slotUsed": 89}, "itemId": "Y7VilOU3", "itemType": "BDQMXUPB", "items": [{"bundledQty": 99, "entitlementType": "e8I8ADRC", "inventoryConfig": {"slotUsed": 100}, "itemId": "dZV0fVtA", "itemType": "BdqdmIsr", "sku": "AvO6YooY", "stackable": true, "useCount": 94}, {"bundledQty": 77, "entitlementType": "ysLYRpRO", "inventoryConfig": {"slotUsed": 46}, "itemId": "RerdJxtF", "itemType": "xa1Oj5Ll", "sku": "VbHpJfhz", "stackable": true, "useCount": 58}, {"bundledQty": 60, "entitlementType": "s6pfC3S6", "inventoryConfig": {"slotUsed": 91}, "itemId": "S0qbZUlY", "itemType": "nDqxDIle", "sku": "qTQGx0N9", "stackable": false, "useCount": 89}], "quantity": 72, "sku": "jQ3QrL8H", "stackable": false, "useCount": 24}' \
    > test.out 2>&1
eval_tap $? 34 'AdminPurchasable' test.out

#- 35 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'YQOa7kFn' \
    --limit '62' \
    --offset '87' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 35 'PublicListInventoryConfigurations' test.out

#- 36 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '13' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 36 'PublicListItemTypes' test.out

#- 37 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '88' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 37 'PublicListTags' test.out

#- 38 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode '4Ub0We6x' \
    --limit '23' \
    --offset '72' \
    --sortBy 'updatedAt' \
    > test.out 2>&1
eval_tap $? 38 'PublicListInventories' test.out

#- 39 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'D9BtioO0' \
    --namespace $AB_NAMESPACE \
    --body '{"options": ["xNuFKxjU", "oEBB14Ho", "j3fQKkeN"], "qty": 15, "slotId": "U8dgvnkO", "sourceItemId": "LDbvbDeO"}' \
    > test.out 2>&1
eval_tap $? 39 'PublicConsumeMyItem' test.out

#- 40 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'eICcItUx' \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '43' \
    --sortBy 'updatedAt:asc' \
    --sourceItemId 'eDwxDVEm' \
    --tags 'OyJZ1m1t' \
    > test.out 2>&1
eval_tap $? 40 'PublicListItems' test.out

#- 41 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'Yjp9WgeT' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"l52TWh4r": {}, "9KpZbrJH": {}, "KqPkOCHH": {}}, "slotId": "kjhX8XwG", "sourceItemId": "fR74U28l", "tags": ["ByH4O0gC", "tCT6xJe6", "tavAshz8"]}, {"customAttributes": {"jfjKGjg5": {}, "DKCQnlVf": {}, "fSMkpOkc": {}}, "slotId": "hRwP0iSO", "sourceItemId": "PHhShiTV", "tags": ["B5Cn7tIl", "EDEEAoSP", "99tw5AkA"]}, {"customAttributes": {"UkOef7Do": {}, "VsBzYlAh": {}, "BkQkpkHn": {}}, "slotId": "SgNPMERa", "sourceItemId": "C8p3UtK2", "tags": ["UULGIb3M", "Lx68Au7b", "svOzwX0Z"]}]' \
    > test.out 2>&1
eval_tap $? 41 'PublicBulkUpdateMyItems' test.out

#- 42 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId '6yYFkEL6' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "6Ew6CVqZ", "sourceItemId": "ymOIYiiE"}, {"slotId": "0jxo87z4", "sourceItemId": "if2ToLYK"}, {"slotId": "YMGqrXP5", "sourceItemId": "03emrBBm"}]' \
    > test.out 2>&1
eval_tap $? 42 'PublicBulkRemoveMyItems' test.out

#- 43 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'xr5WopXh' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 94, "slotId": "LHXBi7ts", "sourceItemId": "If16FLmi"}, {"qty": 58, "slotId": "QLmsbOnC", "sourceItemId": "1iczdSqH"}, {"qty": 60, "slotId": "7AuOkkpf", "sourceItemId": "iPyONLPl"}], "srcInventoryId": "0b82tIyR"}' \
    > test.out 2>&1
eval_tap $? 43 'PublicMoveMyItems' test.out

#- 44 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'gdenD42f' \
    --namespace $AB_NAMESPACE \
    --slotId 'TE7D5UmV' \
    --sourceItemId 'IxbDX6Hs' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE