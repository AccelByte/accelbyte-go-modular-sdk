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
    --body '{"message": "eCAOpjX1", "operations": [{"consumeItems": [{"dateRangeValidation": true, "inventoryId": "XV1kOY6y", "options": ["TuoSJ16p", "PHkUpKXh", "ejQfR82f"], "qty": 52, "slotId": "p0DDkq0a", "sourceItemId": "ywwCR3OD"}, {"dateRangeValidation": false, "inventoryId": "XN98dlcB", "options": ["UpHTY73r", "22DjwuiW", "IQuXTKw3"], "qty": 93, "slotId": "mn3q0ac2", "sourceItemId": "z1vCBTUI"}, {"dateRangeValidation": true, "inventoryId": "Os8c6L2T", "options": ["rHYyd0Ia", "lUHfLPoP", "7MQkTNjy"], "qty": 80, "slotId": "LjfpJgmU", "sourceItemId": "knA9Zevo"}], "createItems": [{"customAttributes": {"fcLXmzxs": {}, "ndlUJEyr": {}, "C3woazHw": {}}, "inventoryConfigurationCode": "PHwssl3F", "inventoryId": "sbgnqukx", "qty": 78, "serverCustomAttributes": {"JT9hdf90": {}, "eQRo9IUC": {}, "tVRdqO4b": {}}, "slotId": "6cgxLJbd", "slotUsed": 21, "source": "OTHER", "sourceItemId": "aww2Gten", "tags": ["PsHYUKWu", "CEKPopve", "4DVbKWxA"], "toSpecificInventory": true, "type": "gMZPRnYT"}, {"customAttributes": {"zwYCk4n3": {}, "rIaTIdZ5": {}, "Y1zb51xi": {}}, "inventoryConfigurationCode": "1QGvZbh0", "inventoryId": "EkT6e9WM", "qty": 99, "serverCustomAttributes": {"9BucNwwq": {}, "FP9O9EWS": {}, "YXmz61m2": {}}, "slotId": "4jq7UeZH", "slotUsed": 17, "source": "OTHER", "sourceItemId": "LMFkQjcu", "tags": ["C3Tm589q", "GhbJIb1D", "nkEQR3Jm"], "toSpecificInventory": false, "type": "ijRZkSNJ"}, {"customAttributes": {"zVziQsau": {}, "mAaF7o6y": {}, "KDwQBjyI": {}}, "inventoryConfigurationCode": "4ljlKDEH", "inventoryId": "dFQ51Yof", "qty": 99, "serverCustomAttributes": {"fCuIkQzo": {}, "gLmvhP3E": {}, "6YFF3Dvf": {}}, "slotId": "UpEkrwmM", "slotUsed": 60, "source": "OTHER", "sourceItemId": "2W5xlrE4", "tags": ["OOB1Ezru", "qo8ukuXh", "bzfZfU8k"], "toSpecificInventory": true, "type": "rc4YnZQv"}], "removeItems": [{"inventoryId": "NTUXBt68", "slotId": "Jf48X0Aq", "sourceItemId": "qFy1lI4t"}, {"inventoryId": "YnboQdcn", "slotId": "mprMLism", "sourceItemId": "h56Tt2j0"}, {"inventoryId": "iP3YyHz3", "slotId": "zTBhxcLg", "sourceItemId": "RsYc7MLZ"}], "targetUserId": "dF3gBN21", "updateItems": [{"customAttributes": {"O022CZZ0": {}, "vHiJUQGl": {}, "AWLK74x6": {}}, "inventoryId": "glhQTlxv", "serverCustomAttributes": {"Mp1cE7cl": {}, "D4NxA2By": {}, "17an4LS5": {}}, "slotId": "e4aQL9wP", "sourceItemId": "yblQqEY9", "tags": ["CEGJMSVV", "hMbkB53o", "LhgDdmDB"], "type": "pdRORkq4"}, {"customAttributes": {"pvios4Yp": {}, "58gT3e8b": {}, "EHRRGeCz": {}}, "inventoryId": "goyxuXyG", "serverCustomAttributes": {"Ss2EV0nN": {}, "MEej0kAp": {}, "YdDBhDGH": {}}, "slotId": "u6eZlrHN", "sourceItemId": "S58s8j3J", "tags": ["rEGO018f", "am4cTPj3", "UNx1ijLn"], "type": "GInieW9C"}, {"customAttributes": {"Ge3VSWaR": {}, "WPvhBUXp": {}, "aQj9iFpr": {}}, "inventoryId": "5e8jWaNm", "serverCustomAttributes": {"lahVr9uo": {}, "uY2qt41T": {}, "IZun4xaG": {}}, "slotId": "eNURPEy4", "sourceItemId": "WlO571JG", "tags": ["gJ3wxTBL", "nFGukEDl", "gCfOlk0s"], "type": "BFB3Xbwp"}]}, {"consumeItems": [{"dateRangeValidation": true, "inventoryId": "7Lw3Fzgn", "options": ["kKhZZAE8", "hkVhMkWb", "fepc4F5n"], "qty": 27, "slotId": "ENFFqnDD", "sourceItemId": "RNIHXnUI"}, {"dateRangeValidation": true, "inventoryId": "toPHAg1u", "options": ["oczepLoa", "sbDn7g6L", "PLYjGutZ"], "qty": 42, "slotId": "2Rn0T90y", "sourceItemId": "FHJ2qIEM"}, {"dateRangeValidation": true, "inventoryId": "tdqgm02b", "options": ["mvudOh3b", "EGmYBOPs", "nubbJdkl"], "qty": 81, "slotId": "TLZew2Bd", "sourceItemId": "bkPL0dSV"}], "createItems": [{"customAttributes": {"7bkg93kT": {}, "1UvgFKpA": {}, "pe5GwBqt": {}}, "inventoryConfigurationCode": "Qz6fgwh3", "inventoryId": "V3dje3vQ", "qty": 59, "serverCustomAttributes": {"j95nnOcA": {}, "7tSmGLEL": {}, "8xRXfWnq": {}}, "slotId": "QEylwKF4", "slotUsed": 59, "source": "OTHER", "sourceItemId": "0mjJPGFw", "tags": ["649PWOzy", "wKrpGJRR", "BiPvou7w"], "toSpecificInventory": true, "type": "FRnro8hS"}, {"customAttributes": {"XeyH0h2J": {}, "Kk9wPQta": {}, "6c3IIrZx": {}}, "inventoryConfigurationCode": "n1SD5keM", "inventoryId": "h2oviP1m", "qty": 57, "serverCustomAttributes": {"yNAYXEIv": {}, "apfLcbkS": {}, "UBnCWXww": {}}, "slotId": "vqUANBDl", "slotUsed": 41, "source": "ECOMMERCE", "sourceItemId": "g1myCIe8", "tags": ["OXlAihje", "Zw2zAhVx", "PpHNWude"], "toSpecificInventory": true, "type": "6QcgmSH8"}, {"customAttributes": {"y7FcMbJX": {}, "gJ3OkeWq": {}, "parH0laK": {}}, "inventoryConfigurationCode": "H57NHmIt", "inventoryId": "aZCJm3Jo", "qty": 59, "serverCustomAttributes": {"Rf1E8iz4": {}, "9YKZxQi4": {}, "NoghzkhE": {}}, "slotId": "nH5cMVwY", "slotUsed": 1, "source": "OTHER", "sourceItemId": "jiwZCEAP", "tags": ["EOm61Ivw", "z1pXAMeD", "N10vDtTt"], "toSpecificInventory": false, "type": "FjGvKfY5"}], "removeItems": [{"inventoryId": "PgOZZx5r", "slotId": "2KaVxnB9", "sourceItemId": "LO8Zdepu"}, {"inventoryId": "K6tostD9", "slotId": "1k1sJ3bo", "sourceItemId": "GVvuWmhc"}, {"inventoryId": "PXQFrITK", "slotId": "1UiGHKQo", "sourceItemId": "rBjak5YO"}], "targetUserId": "9AuZaYvr", "updateItems": [{"customAttributes": {"kVmjsD4v": {}, "pYlTnZW8": {}, "mGZ0Vyrl": {}}, "inventoryId": "dK4cQreE", "serverCustomAttributes": {"ZRHfjQVr": {}, "W8nuDE1y": {}, "C8tRWFIr": {}}, "slotId": "b2ZIXbtP", "sourceItemId": "CUrgV7nx", "tags": ["6sbYyOdY", "elH5HMUU", "GOe2VzBQ"], "type": "e2uVcA4a"}, {"customAttributes": {"J3gV3XoS": {}, "GY8f9FnF": {}, "0Q1AuelB": {}}, "inventoryId": "gy5zbn76", "serverCustomAttributes": {"vtAf0Jy3": {}, "uAfKVg5k": {}, "nFDrgLpj": {}}, "slotId": "QqHwfIaW", "sourceItemId": "wXTaMC67", "tags": ["qRdB3o5J", "4rXR2nMa", "HFrJYeoN"], "type": "OD6ScrVK"}, {"customAttributes": {"sel35Ccb": {}, "rGnCvlb0": {}, "tdm87tI3": {}}, "inventoryId": "U8nx0h50", "serverCustomAttributes": {"Ti9H6pvT": {}, "eLnP0Osp": {}, "PTKANnWE": {}}, "slotId": "9aBn9wZH", "sourceItemId": "FwWEnhLX", "tags": ["8QpSI2AM", "rn1O3XYL", "IzwGWrFx"], "type": "0ly05QwT"}]}, {"consumeItems": [{"dateRangeValidation": true, "inventoryId": "ja6UkLb5", "options": ["z6nPVe0W", "GiBm0K7m", "aloC08MD"], "qty": 100, "slotId": "ZZCFAFQZ", "sourceItemId": "FzmZqrEC"}, {"dateRangeValidation": true, "inventoryId": "PcJMoSPQ", "options": ["Ll5aGVvQ", "4KbQ4hzg", "Pj0nnq69"], "qty": 82, "slotId": "PdYHR2WN", "sourceItemId": "IW0N9msw"}, {"dateRangeValidation": true, "inventoryId": "w8e1KrNI", "options": ["EJMGvJCt", "Sc9d4vZp", "gCVthnvJ"], "qty": 98, "slotId": "KIg8PCPh", "sourceItemId": "rKbs3hqP"}], "createItems": [{"customAttributes": {"NebB6FoR": {}, "2rLXHUBV": {}, "jDGVpdoo": {}}, "inventoryConfigurationCode": "fDsL5oiG", "inventoryId": "AsrgBkg1", "qty": 18, "serverCustomAttributes": {"4qY08rrV": {}, "eSy1A5Dr": {}, "03w9xn6Y": {}}, "slotId": "0arrjTXL", "slotUsed": 79, "source": "ECOMMERCE", "sourceItemId": "zT4WItDQ", "tags": ["iMPYfvwm", "Xjli3RGl", "Fn9mv85z"], "toSpecificInventory": false, "type": "pwrvCYNR"}, {"customAttributes": {"YOXyQ3aH": {}, "j36kvTcE": {}, "sy0knZ00": {}}, "inventoryConfigurationCode": "fpTNNJgM", "inventoryId": "cGFiN7Ej", "qty": 39, "serverCustomAttributes": {"LvqLQVMZ": {}, "bzbfZpW8": {}, "Yaa3G6Bz": {}}, "slotId": "HpvYUIey", "slotUsed": 33, "source": "ECOMMERCE", "sourceItemId": "mNT9Kg1p", "tags": ["hqU9E8Ec", "oeWEiUjK", "GrNOFpwq"], "toSpecificInventory": false, "type": "elPQ1aN9"}, {"customAttributes": {"jUDQSteL": {}, "FYfWVd4F": {}, "QcVwWqKv": {}}, "inventoryConfigurationCode": "5V7NFjjT", "inventoryId": "QDP1nGC2", "qty": 28, "serverCustomAttributes": {"cQa6euvN": {}, "zFhhSskp": {}, "JCvAjrUJ": {}}, "slotId": "e2aTI5DR", "slotUsed": 3, "source": "OTHER", "sourceItemId": "XnXfXMXh", "tags": ["ZCXMxctb", "8vTDDure", "6RAGhtyO"], "toSpecificInventory": false, "type": "KcF2LwPl"}], "removeItems": [{"inventoryId": "J8hgdbwh", "slotId": "hAj00g7V", "sourceItemId": "sZRoVUTv"}, {"inventoryId": "5Ht3kJHz", "slotId": "XIeuGiwV", "sourceItemId": "ZngFGVxq"}, {"inventoryId": "FIwX4w82", "slotId": "HQa0oQO8", "sourceItemId": "4QqG2Xez"}], "targetUserId": "k2TDsVOw", "updateItems": [{"customAttributes": {"VUN46xKX": {}, "sDo9vw7e": {}, "2S1Ofv1b": {}}, "inventoryId": "8d6YEMk5", "serverCustomAttributes": {"PjPkJrZu": {}, "rYJ4MUl1": {}, "9jECfkbB": {}}, "slotId": "rl3ndRwp", "sourceItemId": "HN7GJApQ", "tags": ["1TjFrYTZ", "NWlm7dDx", "FQBDMNYk"], "type": "pDw1i6Nn"}, {"customAttributes": {"SHVW9Ttk": {}, "kf2fgDyr": {}, "zWrEM1Dg": {}}, "inventoryId": "YMUzxErx", "serverCustomAttributes": {"0QYElrkU": {}, "KmEvjlrO": {}, "Opep2Hgf": {}}, "slotId": "cSTyNKOA", "sourceItemId": "y8Laltv9", "tags": ["MkT6HIke", "MEoG7tFA", "gkvuXxgk"], "type": "9c7AylNg"}, {"customAttributes": {"F7bVQGiU": {}, "vkvc44iz": {}, "DUdA8wzG": {}}, "inventoryId": "llCEADQi", "serverCustomAttributes": {"owFUnofx": {}, "xkwtxhfs": {}, "gmM91h8Z": {}}, "slotId": "MKvczqBn", "sourceItemId": "nWCF7lmY", "tags": ["aNb6uYSi", "WfkDS3pL", "dZumhlw0"], "type": "wANzmLDD"}]}], "requestId": "rsXVQgdM"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListIntegrationConfigurations
samples/cli/sample-apps Inventory adminListIntegrationConfigurations \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '92' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 3 'AdminListIntegrationConfigurations' test.out

#- 4 AdminCreateIntegrationConfiguration
samples/cli/sample-apps Inventory adminCreateIntegrationConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["MVpyf7p2", "8YLcYAyi", "NS4ENZvT"], "serviceName": "xVJqij4S", "targetInventoryCode": "udWEjgzq"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateIntegrationConfiguration' test.out

#- 5 AdminUpdateIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateIntegrationConfiguration \
    --integrationConfigurationId 'KPYspkBE' \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["ZGbvDGiY", "9ql5DXJg", "NKSj9LDq"], "serviceName": "LLT7LGxD", "targetInventoryCode": "DiY5muCt"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateIntegrationConfiguration' test.out

#- 6 AdminUpdateStatusIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateStatusIntegrationConfiguration \
    --integrationConfigurationId 'ZpE4Dah5' \
    --namespace $AB_NAMESPACE \
    --body '{"status": "TIED"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateStatusIntegrationConfiguration' test.out

#- 7 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'jMZoTl9q' \
    --limit '95' \
    --offset '9' \
    --sortBy 'inventoryConfigurationCode:desc' \
    --userId '5KZYdZbm' \
    > test.out 2>&1
eval_tap $? 7 'AdminListInventories' test.out

#- 8 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "rPEfocH3", "userId": "UtiRlS9m"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateInventory' test.out

#- 9 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'vtzKyI5S' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventory' test.out

#- 10 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 't4SB5WTD' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 8}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateInventory' test.out

#- 11 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'r4dhPzYk' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "GgHlDSH7"}' \
    > test.out 2>&1
eval_tap $? 11 'DeleteInventory' test.out

#- 12 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId '1VEdE4PI' \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --offset '48' \
    --sortBy 'updatedAt:asc' \
    --sourceItemId '7Jb0cE2x' \
    --tags 'tFJRx6ca' \
    > test.out 2>&1
eval_tap $? 12 'AdminListItems' test.out

#- 13 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'vXFHFiEo' \
    --namespace $AB_NAMESPACE \
    --slotId 'RvV1FYZV' \
    --sourceItemId '1PVq5WL3' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetInventoryItem' test.out

#- 14 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code '3kbPbooT' \
    --limit '10' \
    --offset '54' \
    --sortBy 'updatedAt:asc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListInventoryConfigurations' test.out

#- 15 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Xs1dSfZU", "description": "eD1WVaSF", "initialMaxSlots": 89, "maxInstancesPerUser": 41, "maxUpgradeSlots": 29, "name": "wU7c7Hiw"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateInventoryConfiguration' test.out

#- 16 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'gG098Zpp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetInventoryConfiguration' test.out

#- 17 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId '1lr9NJLg' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "1tvE1tIq", "description": "OSSGSTx4", "initialMaxSlots": 98, "maxInstancesPerUser": 86, "maxUpgradeSlots": 2, "name": "0C4mf277"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateInventoryConfiguration' test.out

#- 18 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'uvtKZ0ls' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteInventoryConfiguration' test.out

#- 19 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '72' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 19 'AdminListItemTypes' test.out

#- 20 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "cA86T0De"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateItemType' test.out

#- 21 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'MFKthTk5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminDeleteItemType' test.out

#- 22 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '29' \
    --owner 'QMMBrrBb' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 22 'AdminListTags' test.out

#- 23 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "jC428NpA", "owner": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateTag' test.out

#- 24 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'GdIWtsZV' \
    > test.out 2>&1
eval_tap $? 24 'AdminDeleteTag' test.out

#- 25 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'hLAN87ex' \
    --namespace $AB_NAMESPACE \
    --userId 'KLbVp0JU' \
    --dateRangeValidation '3mIf8Ddm' \
    --body '{"options": ["7iZFoNZA", "ScP6DoPv", "29xVYEzd"], "qty": 19, "slotId": "qjLNueTm", "sourceItemId": "UiBqri6P"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminConsumeUserItem' test.out

#- 26 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'pcXEdadD' \
    --namespace $AB_NAMESPACE \
    --userId 'ljeboAWB' \
    --body '[{"customAttributes": {"w6bgSxuA": {}, "wa1ao0tD": {}, "bpff6eDS": {}}, "serverCustomAttributes": {"AncbGy09": {}, "kaIJPbq5": {}, "bbiZT5Wp": {}}, "slotId": "gFA1CvRX", "sourceItemId": "0cZOgfus", "tags": ["xd5KUVLv", "Iq1DTl9M", "KmJCW0If"], "type": "HMX1caLp"}, {"customAttributes": {"rHUDG4HE": {}, "z4dgPuLu": {}, "UISozhrB": {}}, "serverCustomAttributes": {"s4OClVta": {}, "E5hzUqX8": {}, "SuokiG4K": {}}, "slotId": "T0uj90VE", "sourceItemId": "XfIsOxUR", "tags": ["PVGe7lQf", "coBDFVER", "kp47KNn1"], "type": "YaVFbYbi"}, {"customAttributes": {"K1Ayk1Sw": {}, "XLGwLLmW": {}, "u8Z0k0gP": {}}, "serverCustomAttributes": {"xUkUUINA": {}, "CBYZ2V16": {}, "SUCB80xY": {}}, "slotId": "ATEYCA3r", "sourceItemId": "0ZigtRgF", "tags": ["7fvUKP8H", "bJ4WJ4wc", "jmxcMMz8"], "type": "T1Hz4wJa"}]' \
    > test.out 2>&1
eval_tap $? 26 'AdminBulkUpdateMyItems' test.out

#- 27 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'pPRpoCoY' \
    --namespace $AB_NAMESPACE \
    --userId 'G47Zbtxg' \
    --body '{"customAttributes": {"0gKcAXT1": {}, "aa9jTxmO": {}, "Qh02DavN": {}}, "qty": 20, "serverCustomAttributes": {"U1VhSyhS": {}, "htyiCPsH": {}, "hLsDVmm0": {}}, "slotId": "KzrlqTkF", "slotUsed": 8, "source": "ECOMMERCE", "sourceItemId": "wqujT4X5", "tags": ["8JWC9i8H", "MECCbrgA", "yVGKtDpl"], "type": "9V8JPXg8"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminSaveItemToInventory' test.out

#- 28 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'v8vCWiqV' \
    --namespace $AB_NAMESPACE \
    --userId 'lBXhceKM' \
    --body '[{"slotId": "E8uGrg3M", "sourceItemId": "8WrYcPOk"}, {"slotId": "Ces0kYV5", "sourceItemId": "9BWzCG6R"}, {"slotId": "Qk5JO6gX", "sourceItemId": "A19ueFnC"}]' \
    > test.out 2>&1
eval_tap $? 28 'AdminBulkRemoveItems' test.out

#- 29 AdminBulkSaveItemToInventory
samples/cli/sample-apps Inventory adminBulkSaveItemToInventory \
    --inventoryId 'q1O1aY35' \
    --namespace $AB_NAMESPACE \
    --userId '9Sg0C9ai' \
    --body '[{"customAttributes": {"lUPbA2Pd": {}, "TaFQCJt7": {}, "BZxizy6C": {}}, "qty": 35, "serverCustomAttributes": {"ln9RxOTl": {}, "mACS3vtp": {}, "cFlyKoXo": {}}, "slotId": "nKTBSKDT", "slotUsed": 9, "source": "OTHER", "sourceItemId": "bMuruhFP", "tags": ["6csLg2j2", "tfhoyuvh", "egRWvmJ4"], "type": "2WXHdzzv"}, {"customAttributes": {"SG3Vug79": {}, "ZdL8Bcqc": {}, "sTdva1Gx": {}}, "qty": 59, "serverCustomAttributes": {"Lhs8tn09": {}, "FQO1NbRh": {}, "aV9fqyrY": {}}, "slotId": "YmXGYbwa", "slotUsed": 64, "source": "ECOMMERCE", "sourceItemId": "8r5kVK7N", "tags": ["MVJ1PW4K", "S00WWMdP", "hgCJlLHc"], "type": "u9NUtoQz"}, {"customAttributes": {"TCOPuPhL": {}, "CeMp8X0L": {}, "kFcUHtpo": {}}, "qty": 55, "serverCustomAttributes": {"LRYUT1RV": {}, "ocOaGIw2": {}, "1hf5oZEU": {}}, "slotId": "n24M2QkI", "slotUsed": 60, "source": "ECOMMERCE", "sourceItemId": "jhMvSVVC", "tags": ["BkI2anHA", "rxoJTyUN", "NMRcz4y0"], "type": "rlNr2Cq9"}]' \
    > test.out 2>&1
eval_tap $? 29 'AdminBulkSaveItemToInventory' test.out

#- 30 AdminUpdateUserInventoriesByInventoryCode
samples/cli/sample-apps Inventory adminUpdateUserInventoriesByInventoryCode \
    --inventoryConfigurationCode 'gBhU52y9' \
    --namespace $AB_NAMESPACE \
    --userId 'gkxL7qQI' \
    --body '{"incMaxSlots": 52}' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateUserInventoriesByInventoryCode' test.out

#- 31 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'dvjH8QVL' \
    --body '{"customAttributes": {"jqcYqkYz": {}, "hvWjyHlz": {}, "MvmPNQ00": {}}, "inventoryConfigurationCode": "o7RvGvOp", "qty": 41, "serverCustomAttributes": {"E93FzIFc": {}, "8WYDvnaZ": {}, "4V9ld3aA": {}}, "slotId": "KEtvez1X", "slotUsed": 95, "source": "OTHER", "sourceItemId": "Xyqc7s8p", "tags": ["j1kwgX1G", "MOzr2N5z", "q2llF4sV"], "type": "LHG0ZmgX"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminSaveItem' test.out

#- 32 AdminBulkSaveItem
samples/cli/sample-apps Inventory adminBulkSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'ISG28Vcs' \
    --body '[{"customAttributes": {"BQzgUjn5": {}, "WtrrgcBU": {}, "qk1xyIZl": {}}, "inventoryConfigurationCode": "LvyGJYOH", "qty": 20, "serverCustomAttributes": {"zF0qpQ9f": {}, "rutnW4a7": {}, "ZJt7tMhp": {}}, "slotId": "5boPNIUR", "slotUsed": 29, "source": "OTHER", "sourceItemId": "XAoyyyrW", "tags": ["DMt7tf2y", "aeIPeuCN", "i3tW7GYF"], "type": "HAQ9qNxd"}, {"customAttributes": {"zBg1kaib": {}, "Uyuq2de3": {}, "53LQb3J5": {}}, "inventoryConfigurationCode": "b7HeozBg", "qty": 14, "serverCustomAttributes": {"nlUANbf3": {}, "Y0p3vIqo": {}, "xKgG3Muh": {}}, "slotId": "ohy75xoz", "slotUsed": 78, "source": "OTHER", "sourceItemId": "rTgdX60x", "tags": ["T9FAumkQ", "JVDX1nXB", "AswouHRe"], "type": "2EDczJwl"}, {"customAttributes": {"DHVq25tp": {}, "kwtci70k": {}, "LHbTkq5P": {}}, "inventoryConfigurationCode": "l9eLlB9T", "qty": 18, "serverCustomAttributes": {"qQhB8lxl": {}, "xlK1qRHW": {}, "g8L00q1G": {}}, "slotId": "W9Ukc46G", "slotUsed": 63, "source": "OTHER", "sourceItemId": "CYTaiouX", "tags": ["EUUVDJ48", "stqaDd9W", "yp4CnSkl"], "type": "N4TipR7X"}]' \
    > test.out 2>&1
eval_tap $? 32 'AdminBulkSaveItem' test.out

#- 33 AdminSyncUserEntitlements
samples/cli/sample-apps Inventory adminSyncUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'pfWdu22h' \
    > test.out 2>&1
eval_tap $? 33 'AdminSyncUserEntitlements' test.out

#- 34 AdminPurchasable
samples/cli/sample-apps Inventory adminPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'E7SgvkFr' \
    --body '{"entitlementType": "vcCQ5Cap", "inventoryConfig": {"slotUsed": 18}, "itemId": "YkBcfkys", "itemType": "e9oJpdJD", "items": [{"bundledQty": 53, "entitlementType": "5GQMsw1M", "inventoryConfig": {"slotUsed": 92}, "itemId": "LPlDib2k", "itemType": "2z7blTlm", "sku": "nzixoDB6", "stackable": false, "useCount": 76}, {"bundledQty": 19, "entitlementType": "MfL4uDZP", "inventoryConfig": {"slotUsed": 60}, "itemId": "3V1PTbZZ", "itemType": "UktXNWDq", "sku": "paRTpnt3", "stackable": true, "useCount": 70}, {"bundledQty": 81, "entitlementType": "IACNxLZV", "inventoryConfig": {"slotUsed": 83}, "itemId": "9f5ayhJz", "itemType": "LpC6X66Q", "sku": "SW3D5r8D", "stackable": false, "useCount": 64}], "quantity": 31, "sku": "ZdBTKwer", "stackable": false, "useCount": 72}' \
    > test.out 2>&1
eval_tap $? 34 'AdminPurchasable' test.out

#- 35 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'KKyscl9i' \
    --limit '26' \
    --offset '83' \
    --sortBy 'code:desc' \
    > test.out 2>&1
eval_tap $? 35 'PublicListInventoryConfigurations' test.out

#- 36 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '68' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 36 'PublicListItemTypes' test.out

#- 37 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '51' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 37 'PublicListTags' test.out

#- 38 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'XFWBoIXH' \
    --limit '58' \
    --offset '23' \
    --sortBy 'updatedAt' \
    > test.out 2>&1
eval_tap $? 38 'PublicListInventories' test.out

#- 39 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'MUtjAaXG' \
    --namespace $AB_NAMESPACE \
    --body '{"options": ["BSd4BKQA", "yh5la8ji", "A56ZsbiC"], "qty": 91, "slotId": "TPrSWaiC", "sourceItemId": "6vBzKPrz"}' \
    > test.out 2>&1
eval_tap $? 39 'PublicConsumeMyItem' test.out

#- 40 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'IVNGWdy3' \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '39' \
    --sortBy 'updatedAt:desc' \
    --sourceItemId '2o0riaSl' \
    --tags 'x4l8Flfn' \
    > test.out 2>&1
eval_tap $? 40 'PublicListItems' test.out

#- 41 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'TSEAUyrq' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"i8Zhz0zo": {}, "r6cetuze": {}, "RHtQQUVH": {}}, "slotId": "NDOlEXB3", "sourceItemId": "xbN2porm", "tags": ["JUixgIPf", "wJOTWDcb", "5emBLN9V"]}, {"customAttributes": {"PPU7OVdv": {}, "XaQal8Ir": {}, "0jKY95rS": {}}, "slotId": "7rhIb2SK", "sourceItemId": "cZuIWyTv", "tags": ["IOEbr4or", "EK2ZP3UN", "YNwHGbof"]}, {"customAttributes": {"0BeMrmot": {}, "db1NNNnO": {}, "fHvaLUH4": {}}, "slotId": "r6o0x1Gx", "sourceItemId": "efXFP7Kx", "tags": ["VAz9gbTq", "sh0DllVN", "CjLnnwj4"]}]' \
    > test.out 2>&1
eval_tap $? 41 'PublicBulkUpdateMyItems' test.out

#- 42 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'syty6v8U' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "IhcA7gfl", "sourceItemId": "ROUesvFb"}, {"slotId": "oDo6BEJ6", "sourceItemId": "6vgxtT8i"}, {"slotId": "K4lzjHa4", "sourceItemId": "qD6aRNkp"}]' \
    > test.out 2>&1
eval_tap $? 42 'PublicBulkRemoveMyItems' test.out

#- 43 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'qcAYtXSL' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 55, "slotId": "1DEDZ3Gg", "sourceItemId": "PHKpd21h"}, {"qty": 75, "slotId": "C1Mvr1BX", "sourceItemId": "w67CTJ9h"}, {"qty": 66, "slotId": "waSMPqho", "sourceItemId": "9y0sv4Zw"}], "srcInventoryId": "lrVDFMLP"}' \
    > test.out 2>&1
eval_tap $? 43 'PublicMoveMyItems' test.out

#- 44 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'ohOn7oW5' \
    --namespace $AB_NAMESPACE \
    --slotId '3QkH06ZG' \
    --sourceItemId '9iJIOzSt' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE