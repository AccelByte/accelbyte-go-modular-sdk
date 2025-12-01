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
    --body '{"message": "AnrtWJtw", "operations": [{"consumeItems": [{"dateRangeValidation": true, "inventoryId": "5q77soe3", "options": ["6wJ9wocF", "fbQtxXRR", "OBEZH2qV"], "qty": 11, "slotId": "TLwcmLSW", "sourceItemId": "gwdNbh3i"}, {"dateRangeValidation": true, "inventoryId": "bGpo5dwF", "options": ["ASJXGWo2", "d8JhVaIh", "SvDTIqTm"], "qty": 94, "slotId": "qIUzMzdn", "sourceItemId": "tLne8JIx"}, {"dateRangeValidation": true, "inventoryId": "fKMHZvt3", "options": ["h0WvKIj3", "Grd8lWdC", "eeGXvblS"], "qty": 68, "slotId": "cgl3K8Cl", "sourceItemId": "AzU71wOE"}], "createItems": [{"customAttributes": {"q2MijGsE": {}, "mLPa1fFa": {}, "kWpRGY7M": {}}, "inventoryConfigurationCode": "zcHlIJwR", "inventoryId": "Ah0g7Ki5", "qty": 67, "serverCustomAttributes": {"GGUJeg1B": {}, "236KyKtd": {}, "eYZsuTsT": {}}, "slotId": "FZXScofw", "slotUsed": 80, "source": "OTHER", "sourceItemId": "MnkFQ6cB", "tags": ["8sRCktlm", "oQx7sWoL", "TLt2qPU0"], "toSpecificInventory": false, "type": "0GbEw6SL"}, {"customAttributes": {"y6xAspNT": {}, "S9zKVHJJ": {}, "Tdw7av1N": {}}, "inventoryConfigurationCode": "I0MFYpXM", "inventoryId": "t0tgiFww", "qty": 28, "serverCustomAttributes": {"LAGfexQ4": {}, "qHuR8mvS": {}, "mUcxsXH7": {}}, "slotId": "yaoTBsrZ", "slotUsed": 81, "source": "OTHER", "sourceItemId": "KNdUWZGR", "tags": ["NiNfzO6M", "ZZRkt2cl", "9PTdKU9o"], "toSpecificInventory": false, "type": "SvM3NLRz"}, {"customAttributes": {"qeXr84MR": {}, "uDT98osD": {}, "Cus3jjqw": {}}, "inventoryConfigurationCode": "40nggyZJ", "inventoryId": "PnbYMugB", "qty": 13, "serverCustomAttributes": {"LSCCtp6f": {}, "WWz1etO8": {}, "2r0wWiX2": {}}, "slotId": "xqjMpRtF", "slotUsed": 90, "source": "OTHER", "sourceItemId": "8iWsb7L3", "tags": ["qz5yJtA7", "Wu4I7VMj", "RFW6R8Jv"], "toSpecificInventory": true, "type": "U8KV20ao"}], "removeItems": [{"inventoryId": "WXadnVEr", "slotId": "jzxswA1b", "sourceItemId": "hB9mtfGJ"}, {"inventoryId": "T0wHY3JE", "slotId": "amKPbuUF", "sourceItemId": "nDkEedxB"}, {"inventoryId": "dtrCf0Ur", "slotId": "PXcaZwh9", "sourceItemId": "xUNpgFFb"}], "targetUserId": "DJIsbaJI", "updateItems": [{"customAttributes": {"adRPmiXW": {}, "luUOhz0b": {}, "dnfBj2CC": {}}, "inventoryId": "IOkbLRDF", "serverCustomAttributes": {"K1rrj1k5": {}, "AtJlkzCG": {}, "bq6eJRPo": {}}, "slotId": "F87qv5km", "sourceItemId": "b1yv3bAc", "tags": ["Wl2Es3dJ", "yGSb1JHl", "nACxS2UE"], "type": "MZjRJQvF"}, {"customAttributes": {"oQHYSPaB": {}, "EMFgNcIr": {}, "1PH20bX8": {}}, "inventoryId": "oz8EE9z1", "serverCustomAttributes": {"ELIw0tkM": {}, "yAYJrcC2": {}, "gICh4CBb": {}}, "slotId": "scTzagw0", "sourceItemId": "Gdtim44w", "tags": ["vXRGpQD0", "Kpt7BqhX", "stByesTp"], "type": "hcnPJ13o"}, {"customAttributes": {"bVrQlxAj": {}, "MSIF0mqa": {}, "T9Qllxd5": {}}, "inventoryId": "A3noFCdG", "serverCustomAttributes": {"pAdhuUmj": {}, "C3w10kXi": {}, "9SWBVXPV": {}}, "slotId": "S2jGCtjG", "sourceItemId": "GSHDGFvp", "tags": ["MxsBFRP4", "kPOSyDRD", "BTdFUSyy"], "type": "t5ogb5Hj"}]}, {"consumeItems": [{"dateRangeValidation": false, "inventoryId": "anouTptF", "options": ["zwMr9LKW", "boyjq8zj", "gHZdsXKL"], "qty": 91, "slotId": "XFuWtioT", "sourceItemId": "DTk8BYbt"}, {"dateRangeValidation": true, "inventoryId": "rI4r7KNz", "options": ["mfdfXujl", "G1CvI3pY", "BJoRaQaU"], "qty": 17, "slotId": "kz5BVwEx", "sourceItemId": "hPppSsnq"}, {"dateRangeValidation": true, "inventoryId": "lSqjJ5Jy", "options": ["UYNuFJva", "9gLLtHHQ", "izfBbvx0"], "qty": 57, "slotId": "dXEGrm8T", "sourceItemId": "etyR9u4d"}], "createItems": [{"customAttributes": {"kRQAqPft": {}, "WbCHEdUF": {}, "u0VkU1KA": {}}, "inventoryConfigurationCode": "jFxcrnMa", "inventoryId": "ytKawhLQ", "qty": 82, "serverCustomAttributes": {"9LTRDjfj": {}, "DDKdE0z5": {}, "PQqUBj4Z": {}}, "slotId": "FARpn6Cx", "slotUsed": 51, "source": "ECOMMERCE", "sourceItemId": "PU6uQJ02", "tags": ["nC8WzDDb", "48qL8IM4", "IwuAzUSz"], "toSpecificInventory": false, "type": "n9fIkodQ"}, {"customAttributes": {"lYLDUtM5": {}, "dikIr24e": {}, "rD5BVtWl": {}}, "inventoryConfigurationCode": "pi7Ut5nq", "inventoryId": "5Jh9IELd", "qty": 37, "serverCustomAttributes": {"szDZ51Lp": {}, "jz0DZrDm": {}, "vWQf7cpm": {}}, "slotId": "U6BAf5X2", "slotUsed": 72, "source": "ECOMMERCE", "sourceItemId": "EkfnLH71", "tags": ["zja9zyrK", "1sV1Qwbq", "8SaUDE6t"], "toSpecificInventory": true, "type": "Xt839RAx"}, {"customAttributes": {"Yp9XqLtl": {}, "80dSInPQ": {}, "f9XObtcQ": {}}, "inventoryConfigurationCode": "m6aYvfY9", "inventoryId": "gkATejlY", "qty": 8, "serverCustomAttributes": {"wdTfsUwe": {}, "EUi2wBJ4": {}, "h2KTAdn4": {}}, "slotId": "v7XIctuE", "slotUsed": 5, "source": "ECOMMERCE", "sourceItemId": "WNWiXk7V", "tags": ["xAsKEQO7", "g2N9bsNx", "Q4mi3IJz"], "toSpecificInventory": true, "type": "8Krp3jxz"}], "removeItems": [{"inventoryId": "lOc0EMjk", "slotId": "UGKPTs2V", "sourceItemId": "KJRXMtA8"}, {"inventoryId": "tLdObYYb", "slotId": "hIUq3dH2", "sourceItemId": "PfAMXHit"}, {"inventoryId": "2PPqU1ux", "slotId": "tdii5tzs", "sourceItemId": "KYBwj7z4"}], "targetUserId": "mF2DRYKt", "updateItems": [{"customAttributes": {"Zq8p4ldl": {}, "vRIaBBPm": {}, "rJFhi6ep": {}}, "inventoryId": "RgqqAa8y", "serverCustomAttributes": {"caJN07hK": {}, "ashsaKrA": {}, "rcKQVfkr": {}}, "slotId": "3sRoEUmr", "sourceItemId": "WUz06HEI", "tags": ["sS2SF7PT", "FfFiUV1P", "hBxQIBZN"], "type": "wjTE3ii7"}, {"customAttributes": {"61041wmn": {}, "rPRBw3NH": {}, "q5Nm0yAR": {}}, "inventoryId": "F0RJVRpf", "serverCustomAttributes": {"OakeH11G": {}, "kwnhLtEh": {}, "Ac6W74SH": {}}, "slotId": "ViJRJ8tV", "sourceItemId": "4InAZXTI", "tags": ["C9ZnqRVK", "SX1CEdJr", "TtJ8g8IP"], "type": "MR3A94Xw"}, {"customAttributes": {"SaYNDupr": {}, "D8whk5ql": {}, "Q1CrAyrv": {}}, "inventoryId": "Yb82HhKI", "serverCustomAttributes": {"ZoWBIchz": {}, "yiVLeKV7": {}, "EnWUt9sG": {}}, "slotId": "8Q5Lyr2o", "sourceItemId": "Q4XmqyfH", "tags": ["tgWFdvLA", "D7NYnXAg", "44JCSxfq"], "type": "41LjI7SC"}]}, {"consumeItems": [{"dateRangeValidation": true, "inventoryId": "n43cw0H5", "options": ["s8pBTBZV", "ljDQBhFj", "bdnmRbni"], "qty": 79, "slotId": "e9tXl7TG", "sourceItemId": "fET2Ispl"}, {"dateRangeValidation": true, "inventoryId": "FRJTaZGU", "options": ["uYrXTAfo", "7RUeIRml", "vlWDmNLr"], "qty": 42, "slotId": "HdffAteC", "sourceItemId": "8tb4PwJw"}, {"dateRangeValidation": true, "inventoryId": "LRxoxoJ2", "options": ["CGrtr5eO", "224jmfNz", "y7iHtSpX"], "qty": 43, "slotId": "hxgoXxyQ", "sourceItemId": "gABP4ZFi"}], "createItems": [{"customAttributes": {"gVxOAXdg": {}, "C14GqY6n": {}, "Dc4zvDfF": {}}, "inventoryConfigurationCode": "2Xb9pGgV", "inventoryId": "lfQNBgZy", "qty": 70, "serverCustomAttributes": {"qtac50hL": {}, "qg687icQ": {}, "G9cJr6eS": {}}, "slotId": "ddnwLraI", "slotUsed": 17, "source": "OTHER", "sourceItemId": "F965C8NT", "tags": ["kpbbLSda", "PPjnHOao", "5GVegPPr"], "toSpecificInventory": true, "type": "n7R7wZuY"}, {"customAttributes": {"B4NpWrLf": {}, "tj19ujT4": {}, "TG9ozvHs": {}}, "inventoryConfigurationCode": "kcW41kuM", "inventoryId": "PGpUfcyf", "qty": 99, "serverCustomAttributes": {"YIkIaoYW": {}, "qFj97NEq": {}, "794T91sY": {}}, "slotId": "AAtTCg1Z", "slotUsed": 50, "source": "OTHER", "sourceItemId": "eRU7zs9R", "tags": ["EVevKSPL", "IP1XSEs6", "1xszgVVn"], "toSpecificInventory": false, "type": "7VtfN0li"}, {"customAttributes": {"wnE3w75I": {}, "0gGbfOzg": {}, "lZeTRq2J": {}}, "inventoryConfigurationCode": "O6jhL5U7", "inventoryId": "6qMkm4k6", "qty": 60, "serverCustomAttributes": {"AuUVRGwk": {}, "xYGyPMUA": {}, "ixelxJ2v": {}}, "slotId": "mfQcOcxd", "slotUsed": 69, "source": "ECOMMERCE", "sourceItemId": "oM6RPSCn", "tags": ["lLFnR3Q6", "QSNqyqGI", "25M71hxI"], "toSpecificInventory": true, "type": "FcVxGyXQ"}], "removeItems": [{"inventoryId": "MXYDmT5U", "slotId": "3JoHHQdd", "sourceItemId": "ZbDYkrdq"}, {"inventoryId": "c2DWC6HB", "slotId": "yucvKi5F", "sourceItemId": "YecG78uP"}, {"inventoryId": "Ppm7vHHa", "slotId": "VFf9NPza", "sourceItemId": "ryPFxJEg"}], "targetUserId": "wtBlQ56B", "updateItems": [{"customAttributes": {"OowhjNcC": {}, "0k4gfF47": {}, "0JDcHQo4": {}}, "inventoryId": "7flSuHwt", "serverCustomAttributes": {"2TT1tlBV": {}, "RldQ31jA": {}, "7ojRmPCk": {}}, "slotId": "mw8Pf8Lj", "sourceItemId": "6ASjxXoF", "tags": ["QXpKPVsA", "e8Q8VAxj", "30LQysZz"], "type": "caAwkCXh"}, {"customAttributes": {"SaMxl5mR": {}, "zru4btlE": {}, "KdZVAbLE": {}}, "inventoryId": "gdvqyNE2", "serverCustomAttributes": {"qbjNCAoL": {}, "jTGcnI87": {}, "IgZRDtAB": {}}, "slotId": "WNhpi4MM", "sourceItemId": "JinhAsON", "tags": ["x2u2UwdR", "bwnxLjvB", "0cBfbqlv"], "type": "4wduDAEh"}, {"customAttributes": {"RqvLBuWj": {}, "s5D0qWkZ": {}, "2wByy5ga": {}}, "inventoryId": "hmUZVm8M", "serverCustomAttributes": {"SeqLfOqC": {}, "AVUH5tVC": {}, "KdAKowKU": {}}, "slotId": "l0prkhnJ", "sourceItemId": "JA9lhZJR", "tags": ["hrorrqDX", "HLLoaOrO", "AURhhQLR"], "type": "NhXvu9KO"}]}], "requestId": "mxBW7v0g"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListIntegrationConfigurations
samples/cli/sample-apps Inventory adminListIntegrationConfigurations \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '97' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 3 'AdminListIntegrationConfigurations' test.out

#- 4 AdminCreateIntegrationConfiguration
samples/cli/sample-apps Inventory adminCreateIntegrationConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["JtKENd42", "CFZ4V0pp", "Hfrfl7j7"], "serviceName": "kwAmL6oJ", "targetInventoryCode": "Ij9cDiqy"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateIntegrationConfiguration' test.out

#- 5 AdminUpdateIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateIntegrationConfiguration \
    --integrationConfigurationId 'b8VCMSjY' \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["b5vycm0L", "kLjnGXrS", "YECCEgdH"], "serviceName": "prDU8JiR", "targetInventoryCode": "6whIECf2"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateIntegrationConfiguration' test.out

#- 6 AdminUpdateStatusIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateStatusIntegrationConfiguration \
    --integrationConfigurationId '1LTNNhTd' \
    --namespace $AB_NAMESPACE \
    --body '{"status": "INIT"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateStatusIntegrationConfiguration' test.out

#- 7 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode '9FJHCaYq' \
    --limit '31' \
    --offset '92' \
    --sortBy 'updatedAt:asc' \
    --userId 'JykYhK4S' \
    > test.out 2>&1
eval_tap $? 7 'AdminListInventories' test.out

#- 8 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "YNyZJws3", "userId": "uegVMSY9"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateInventory' test.out

#- 9 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'M5GFnTJk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventory' test.out

#- 10 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'pLOKxXUI' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 59}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateInventory' test.out

#- 11 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'yR0IASpF' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "zlfYbquf"}' \
    > test.out 2>&1
eval_tap $? 11 'DeleteInventory' test.out

#- 12 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'ZlNGeaHr' \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '3' \
    --sortBy 'updatedAt:desc' \
    --sourceItemId 'xosg9hhO' \
    --tags 'oVYUd2Ul' \
    > test.out 2>&1
eval_tap $? 12 'AdminListItems' test.out

#- 13 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'TMdeNMaT' \
    --namespace $AB_NAMESPACE \
    --slotId 'XR4gXMHK' \
    --sourceItemId 'IqeHmdkM' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetInventoryItem' test.out

#- 14 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'BRCFxIDb' \
    --limit '84' \
    --offset '67' \
    --sortBy 'code:asc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListInventoryConfigurations' test.out

#- 15 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "5HKQAkf8", "description": "N4WCx2bV", "initialMaxSlots": 99, "maxInstancesPerUser": 87, "maxUpgradeSlots": 100, "name": "cVOLTai1"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateInventoryConfiguration' test.out

#- 16 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId '1Yrb9Kt4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetInventoryConfiguration' test.out

#- 17 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'GXAA7YRX' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "t4y1r3VI", "description": "V88Fn7cV", "initialMaxSlots": 55, "maxInstancesPerUser": 77, "maxUpgradeSlots": 93, "name": "LyX3L5V7"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateInventoryConfiguration' test.out

#- 18 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId '7df2nn5i' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteInventoryConfiguration' test.out

#- 19 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '53' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 19 'AdminListItemTypes' test.out

#- 20 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "SVTtDLTf"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateItemType' test.out

#- 21 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'VLIx0tJW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminDeleteItemType' test.out

#- 22 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '60' \
    --owner '0cDFekQf' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 22 'AdminListTags' test.out

#- 23 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "a3hoWh2J", "owner": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateTag' test.out

#- 24 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'djoFOvDZ' \
    > test.out 2>&1
eval_tap $? 24 'AdminDeleteTag' test.out

#- 25 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'lGwNPqVS' \
    --namespace $AB_NAMESPACE \
    --userId 'NmlUfhM8' \
    --dateRangeValidation 'yR2ZmMKA' \
    --body '{"options": ["LOcM8fBA", "9BPJgXkv", "slUyRp14"], "qty": 100, "slotId": "9qWhmpaU", "sourceItemId": "0ranrAUQ"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminConsumeUserItem' test.out

#- 26 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'Jx8cH26z' \
    --namespace $AB_NAMESPACE \
    --userId 'OYGaHvdc' \
    --body '[{"customAttributes": {"6WWWB1EB": {}, "C68tDy1l": {}, "9DdV7qeq": {}}, "serverCustomAttributes": {"wsAKb9fb": {}, "kBYT20N9": {}, "pt7oP9kj": {}}, "slotId": "X8qdoogM", "sourceItemId": "ept4ZYgh", "tags": ["V6eAvZ9Z", "TYreEaIC", "TTZ7UXVo"], "type": "UNX9VrDV"}, {"customAttributes": {"L3JKVOFe": {}, "d6ysytZY": {}, "zgySr2Qx": {}}, "serverCustomAttributes": {"fdADmTsC": {}, "fx82dixL": {}, "c27MPTee": {}}, "slotId": "FGdjqLt2", "sourceItemId": "4mfM73Xq", "tags": ["qfBN9d2w", "xBMiISTw", "AcXpzlQ8"], "type": "eKWtA4if"}, {"customAttributes": {"iYj2CO9o": {}, "Nj7vWsY1": {}, "hi4jo9lI": {}}, "serverCustomAttributes": {"DOGzd9js": {}, "jEfRK0Wu": {}, "8BumtQab": {}}, "slotId": "syvUB82b", "sourceItemId": "rWgEutxe", "tags": ["uICMRmBf", "YV7MY5lX", "gOVAohst"], "type": "Sij9P2sz"}]' \
    > test.out 2>&1
eval_tap $? 26 'AdminBulkUpdateMyItems' test.out

#- 27 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'JBZY86sv' \
    --namespace $AB_NAMESPACE \
    --userId '5PzZCcv0' \
    --body '{"customAttributes": {"hTzBTL2y": {}, "WfquzOjF": {}, "Cfaamj7C": {}}, "qty": 76, "serverCustomAttributes": {"LIwFujXA": {}, "8uSZh4oK": {}, "SqoMhoKq": {}}, "slotId": "EX2LM4Jq", "slotUsed": 75, "source": "ECOMMERCE", "sourceItemId": "5uKPRC7O", "tags": ["uUJ5isH2", "XBTMPBuf", "ee4rV2wE"], "type": "FllNE8j9"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminSaveItemToInventory' test.out

#- 28 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'NptTvA1e' \
    --namespace $AB_NAMESPACE \
    --userId '0fEraO1W' \
    --body '[{"slotId": "MqGOiOwx", "sourceItemId": "DHqTpPoC"}, {"slotId": "eBY0BAkN", "sourceItemId": "w68OQwTu"}, {"slotId": "PDuN2JKC", "sourceItemId": "S3iZhCkg"}]' \
    > test.out 2>&1
eval_tap $? 28 'AdminBulkRemoveItems' test.out

#- 29 AdminBulkSaveItemToInventory
samples/cli/sample-apps Inventory adminBulkSaveItemToInventory \
    --inventoryId 'sRTNdWx6' \
    --namespace $AB_NAMESPACE \
    --userId 'AXzrTsQX' \
    --body '[{"customAttributes": {"X4fM4Rh0": {}, "XUhQ3wTC": {}, "oyMuMbuf": {}}, "qty": 32, "serverCustomAttributes": {"hPOZBXps": {}, "oVyauX56": {}, "B412Zzom": {}}, "slotId": "RBTIHQfm", "slotUsed": 92, "source": "ECOMMERCE", "sourceItemId": "Nz1AxY9S", "tags": ["VsxTxyVU", "4j2msKoI", "dsh3UX9I"], "type": "i4Mg5LSn"}, {"customAttributes": {"hBO6YVD4": {}, "1B65kJV8": {}, "WwdoazlF": {}}, "qty": 78, "serverCustomAttributes": {"QV9rgGkr": {}, "lRKxHR5W": {}, "YTZdJ9TY": {}}, "slotId": "vQJxTyw9", "slotUsed": 14, "source": "ECOMMERCE", "sourceItemId": "2aHiywi3", "tags": ["qKwfZZyg", "CL7iHrRd", "oPLDMsNb"], "type": "ImxlDCVn"}, {"customAttributes": {"dDh1TNsP": {}, "tDwdfPSK": {}, "BeUKeGkc": {}}, "qty": 44, "serverCustomAttributes": {"WTHaGugI": {}, "vRuBN9uO": {}, "zf242NOq": {}}, "slotId": "TAtRRcSL", "slotUsed": 97, "source": "OTHER", "sourceItemId": "OCbgRyEr", "tags": ["8w5hYtZ0", "DoxMHkXz", "Rn7jQEJ6"], "type": "elotMKtL"}]' \
    > test.out 2>&1
eval_tap $? 29 'AdminBulkSaveItemToInventory' test.out

#- 30 AdminUpdateUserInventoriesByInventoryCode
samples/cli/sample-apps Inventory adminUpdateUserInventoriesByInventoryCode \
    --inventoryConfigurationCode 'HhgkQsRo' \
    --namespace $AB_NAMESPACE \
    --userId 'mQzzY41i' \
    --body '{"incMaxSlots": 66}' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateUserInventoriesByInventoryCode' test.out

#- 31 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'iu6l2VXs' \
    --body '{"customAttributes": {"PP8gIupm": {}, "2OVVMque": {}, "XSZ3cNJa": {}}, "inventoryConfigurationCode": "ffUU6UO0", "qty": 94, "serverCustomAttributes": {"MpodHsJp": {}, "UJJq1i4U": {}, "3zDmDyUq": {}}, "slotId": "PabeDERl", "slotUsed": 76, "source": "ECOMMERCE", "sourceItemId": "MHsgxcAL", "tags": ["djGtDN1H", "N3NrkBZ5", "vLR1utuu"], "type": "CgU8poF1"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminSaveItem' test.out

#- 32 AdminBulkSaveItem
samples/cli/sample-apps Inventory adminBulkSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'JUeYrjjC' \
    --body '[{"customAttributes": {"SrglGmVU": {}, "1lWqX6LX": {}, "GZ1mH469": {}}, "inventoryConfigurationCode": "mFMJ60P8", "qty": 28, "serverCustomAttributes": {"WVf02fwS": {}, "YKHHaYLT": {}, "vYn4kGXV": {}}, "slotId": "zLPSmzDw", "slotUsed": 24, "source": "OTHER", "sourceItemId": "TWlpKUXM", "tags": ["PeEzh6s8", "c112MiVV", "Mf1dVeUq"], "type": "zJF6xYEF"}, {"customAttributes": {"KqQeiXm8": {}, "otM7cAYQ": {}, "tEV6sxof": {}}, "inventoryConfigurationCode": "VkeXOxJf", "qty": 64, "serverCustomAttributes": {"VVUNxb7w": {}, "aTlZbZZ2": {}, "1Fo7VCBW": {}}, "slotId": "y1fikqel", "slotUsed": 60, "source": "ECOMMERCE", "sourceItemId": "D9tcTqBc", "tags": ["qLRZbDj5", "7Fqr6Sl4", "DPzSWDGN"], "type": "Pk3UzYut"}, {"customAttributes": {"ohlcqZP7": {}, "S9HG2bOP": {}, "sH9JcRs2": {}}, "inventoryConfigurationCode": "jaxpt4sY", "qty": 90, "serverCustomAttributes": {"0sLKSSY2": {}, "5Kd6vxNk": {}, "YnyV9vym": {}}, "slotId": "EUZYVOzY", "slotUsed": 1, "source": "ECOMMERCE", "sourceItemId": "tgVrtLvD", "tags": ["iniKgmn6", "mawGYKPN", "QsZBm5TK"], "type": "30ojFSNf"}]' \
    > test.out 2>&1
eval_tap $? 32 'AdminBulkSaveItem' test.out

#- 33 AdminSyncUserEntitlements
samples/cli/sample-apps Inventory adminSyncUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'soxcS97g' \
    > test.out 2>&1
eval_tap $? 33 'AdminSyncUserEntitlements' test.out

#- 34 AdminPurchasable
samples/cli/sample-apps Inventory adminPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'zYY81uzB' \
    --body '{"entitlementType": "pVTqJfL3", "inventoryConfig": {"slotUsed": 13}, "itemId": "qWxxkyPd", "itemType": "XWWcdvhv", "items": [{"bundledQty": 74, "entitlementType": "S97TjJwc", "inventoryConfig": {"slotUsed": 67}, "itemId": "zhAnVsat", "itemType": "SLnL3in4", "sku": "TnnUhRki", "stackable": true, "useCount": 61}, {"bundledQty": 29, "entitlementType": "U4ua3bhJ", "inventoryConfig": {"slotUsed": 70}, "itemId": "oIm1OHEq", "itemType": "Y5zUVNgL", "sku": "NNlKKL1d", "stackable": false, "useCount": 49}, {"bundledQty": 12, "entitlementType": "nVwJie8e", "inventoryConfig": {"slotUsed": 36}, "itemId": "XmSX60Ab", "itemType": "6DdA49nc", "sku": "2Bw9xGPW", "stackable": true, "useCount": 5}], "quantity": 72, "sku": "dvFgsdFM", "stackable": true, "useCount": 7}' \
    > test.out 2>&1
eval_tap $? 34 'AdminPurchasable' test.out

#- 35 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 't9h5ay0y' \
    --limit '90' \
    --offset '64' \
    --sortBy 'code:asc' \
    > test.out 2>&1
eval_tap $? 35 'PublicListInventoryConfigurations' test.out

#- 36 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '55' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 36 'PublicListItemTypes' test.out

#- 37 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '4' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 37 'PublicListTags' test.out

#- 38 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'MtmlDU7Z' \
    --limit '43' \
    --offset '82' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 38 'PublicListInventories' test.out

#- 39 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'uDYxeeiH' \
    --namespace $AB_NAMESPACE \
    --body '{"options": ["rU5gZ9iG", "Zi7Ri4Qd", "lWuq9yWJ"], "qty": 96, "slotId": "VE8cY8AP", "sourceItemId": "z1zdWlFG"}' \
    > test.out 2>&1
eval_tap $? 39 'PublicConsumeMyItem' test.out

#- 40 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'sySRbkAv' \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '62' \
    --sortBy 'createdAt:desc' \
    --sourceItemId 'Jy3y5KRz' \
    --tags 'BGkLzSGH' \
    > test.out 2>&1
eval_tap $? 40 'PublicListItems' test.out

#- 41 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'zYSixmrC' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"kL02U0B7": {}, "3aVB4cVV": {}, "JiJPuQ2j": {}}, "slotId": "0uzqcPs0", "sourceItemId": "kkivof77", "tags": ["hXnHVI8f", "pTe6O4U2", "E3qDJkqz"]}, {"customAttributes": {"fXDEOfNy": {}, "7qeOTh44": {}, "N2WKhJWp": {}}, "slotId": "Oj1MFitC", "sourceItemId": "3GMdDEHF", "tags": ["l3CpYWww", "f0yj9aIi", "QE7rqE54"]}, {"customAttributes": {"E6tgopct": {}, "yERpAsHL": {}, "sYntj5Ln": {}}, "slotId": "Y8bVDBfu", "sourceItemId": "vxWzUibC", "tags": ["7tVSdZu9", "G7fiW9pu", "szRdBoSr"]}]' \
    > test.out 2>&1
eval_tap $? 41 'PublicBulkUpdateMyItems' test.out

#- 42 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'eBzOSHpV' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "1LZ9USig", "sourceItemId": "4NnUwLZE"}, {"slotId": "XmiJcvP0", "sourceItemId": "l5sqKzQ3"}, {"slotId": "OtNwVV5n", "sourceItemId": "2mKwzREO"}]' \
    > test.out 2>&1
eval_tap $? 42 'PublicBulkRemoveMyItems' test.out

#- 43 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'XbFMTImP' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 19, "slotId": "UvMJN4ZG", "sourceItemId": "cGSfl3t0"}, {"qty": 24, "slotId": "a5fWaBCG", "sourceItemId": "JIaSrhv0"}, {"qty": 69, "slotId": "FHIr4lN9", "sourceItemId": "soXEY8Mt"}], "srcInventoryId": "5uUdqoqU"}' \
    > test.out 2>&1
eval_tap $? 43 'PublicMoveMyItems' test.out

#- 44 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId '6c6Cu1Gu' \
    --namespace $AB_NAMESPACE \
    --slotId 'x8Guq8xr' \
    --sourceItemId 'uNRONex2' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE