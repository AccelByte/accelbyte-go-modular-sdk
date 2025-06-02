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
    --body '{"message": "gq4BBapu", "operations": [{"consumeItems": [{"dateRangeValidation": true, "inventoryId": "r3JGdwdm", "options": ["7AE6KFmj", "nfZClxU0", "uDcTu3Yy"], "qty": 67, "slotId": "jdGQAKi4", "sourceItemId": "r2Br6bYu"}, {"dateRangeValidation": false, "inventoryId": "nHSH8DNI", "options": ["LQhs6Omu", "lip6R1iP", "bOdDgpdJ"], "qty": 52, "slotId": "QjAlZxg7", "sourceItemId": "Nh0ySKBF"}, {"dateRangeValidation": true, "inventoryId": "FtyWOEc9", "options": ["BBEaKjZo", "7mZA2wxp", "wdMqKG7b"], "qty": 90, "slotId": "iMJfHRYQ", "sourceItemId": "plWtDA9n"}], "createItems": [{"customAttributes": {"pQEyT7ar": {}, "EADHaWj3": {}, "0RaD7n6H": {}}, "inventoryConfigurationCode": "Jz9XG6xk", "inventoryId": "xELbnAEe", "qty": 25, "serverCustomAttributes": {"4I8MyXXC": {}, "a67h282n": {}, "1wvyja95": {}}, "slotId": "lpmzEVI2", "slotUsed": 77, "source": "OTHER", "sourceItemId": "zfsq2xtG", "tags": ["vqqHFgSS", "NFlV9m7W", "N2IqR1Wm"], "toSpecificInventory": false, "type": "AThuNtQL"}, {"customAttributes": {"9msmU4oN": {}, "0Dg4SELY": {}, "L8hrPsKj": {}}, "inventoryConfigurationCode": "OTCUCCIu", "inventoryId": "lvzxICBR", "qty": 97, "serverCustomAttributes": {"dk5XESls": {}, "PXhR8cMU": {}, "iEFxAhAl": {}}, "slotId": "6negovBw", "slotUsed": 29, "source": "OTHER", "sourceItemId": "5qgX0VLQ", "tags": ["rSAzvkE9", "SdzqDh9l", "nn10KgHr"], "toSpecificInventory": false, "type": "PgT1vBhp"}, {"customAttributes": {"KblwxDss": {}, "j13TxgWK": {}, "pFfLw4eO": {}}, "inventoryConfigurationCode": "Hu3AdDHS", "inventoryId": "BQeViPqp", "qty": 70, "serverCustomAttributes": {"pQ04h7Tz": {}, "F7VuOAK5": {}, "fLSX2esA": {}}, "slotId": "fdokLxlj", "slotUsed": 55, "source": "ECOMMERCE", "sourceItemId": "MeEf24ch", "tags": ["aR8Fa6Xi", "JB0ZzCL3", "8c7cqFRq"], "toSpecificInventory": true, "type": "hdfE1FtK"}], "removeItems": [{"inventoryId": "ILhqw8Aj", "slotId": "gN4qd5hl", "sourceItemId": "em8e3YKT"}, {"inventoryId": "EdbLVpAZ", "slotId": "xM8Vq9YZ", "sourceItemId": "vjA7MOtP"}, {"inventoryId": "ZZzl5JTX", "slotId": "YAol12K8", "sourceItemId": "Mlgp3DmD"}], "targetUserId": "ej0xNBUa", "updateItems": [{"customAttributes": {"OGv4SJlO": {}, "zvdKonjf": {}, "UPjECZi6": {}}, "inventoryId": "csmpmL7P", "serverCustomAttributes": {"HLBKu61w": {}, "j5YDfTYw": {}, "wnwoIhF3": {}}, "slotId": "LIakffEE", "sourceItemId": "qX9RoqfN", "tags": ["wWvtaivj", "ZdmObHlT", "1K4ctXFA"], "type": "zD5qXF7K"}, {"customAttributes": {"UNJGJMAL": {}, "CpstVgM5": {}, "kC64AW8x": {}}, "inventoryId": "RSVNsLVK", "serverCustomAttributes": {"vyPYo0W2": {}, "UIhRgJNX": {}, "3rdPuTCq": {}}, "slotId": "ykNZerpX", "sourceItemId": "pqWVIwMq", "tags": ["4PmROl4o", "2lb6FLEO", "EH8dzFue"], "type": "B7rS5GFn"}, {"customAttributes": {"5Ztenqi9": {}, "QtTVUFbC": {}, "TllSYjnN": {}}, "inventoryId": "ybxVpm0l", "serverCustomAttributes": {"OEcewM0a": {}, "xGPexyrX": {}, "CHcHCdSt": {}}, "slotId": "Tns7t6yM", "sourceItemId": "2jLrpypD", "tags": ["NWYBW0Bu", "Ui5T6hQc", "ZERfTbPi"], "type": "DLmbfOCZ"}]}, {"consumeItems": [{"dateRangeValidation": true, "inventoryId": "i65GlIvh", "options": ["T0hCf83C", "PIcwbuYU", "90FoPSna"], "qty": 70, "slotId": "VGM0sWoG", "sourceItemId": "My4L6FxA"}, {"dateRangeValidation": false, "inventoryId": "uPdFHAqm", "options": ["irOe06Gh", "JJLuC62e", "Jd5uHEL8"], "qty": 5, "slotId": "hvREMlsy", "sourceItemId": "ijkbyHjG"}, {"dateRangeValidation": true, "inventoryId": "pmcC7X0V", "options": ["UkabAiNF", "ldHUIebJ", "K0mhziNC"], "qty": 75, "slotId": "k1hr3kmV", "sourceItemId": "JynAoMvV"}], "createItems": [{"customAttributes": {"iSgbxO4E": {}, "y0qcCeJJ": {}, "1mVgksyH": {}}, "inventoryConfigurationCode": "XNdJhfjv", "inventoryId": "E3DuZUQ3", "qty": 45, "serverCustomAttributes": {"Mca3o1T5": {}, "dAtFRwjC": {}, "JMryJ4Tz": {}}, "slotId": "EQas5bWA", "slotUsed": 23, "source": "ECOMMERCE", "sourceItemId": "VGsM2MBv", "tags": ["ZItpe3C6", "pJe67pIx", "HZg4kMVQ"], "toSpecificInventory": false, "type": "0k13n8v9"}, {"customAttributes": {"jf1uN7NB": {}, "Ej2EOBNv": {}, "Bo8PdtSg": {}}, "inventoryConfigurationCode": "xZz5IEzz", "inventoryId": "CGO2G3HG", "qty": 16, "serverCustomAttributes": {"UouCz9nH": {}, "AQv3yrjg": {}, "5bWdzKp2": {}}, "slotId": "YSTqVLex", "slotUsed": 16, "source": "ECOMMERCE", "sourceItemId": "BtW6Z9vX", "tags": ["1iZgfrTO", "HP33Yiqq", "P8IiNRIA"], "toSpecificInventory": true, "type": "XmT2DMl2"}, {"customAttributes": {"v0F6Vmeh": {}, "34AH524D": {}, "BmdJlQJa": {}}, "inventoryConfigurationCode": "NEtxmNK7", "inventoryId": "VCMWZuVW", "qty": 79, "serverCustomAttributes": {"ocbMpZRW": {}, "1VLLfIyg": {}, "wQangD2l": {}}, "slotId": "tohuYBiC", "slotUsed": 56, "source": "OTHER", "sourceItemId": "xqvqFVbo", "tags": ["lgoeympB", "kA8WvoIr", "VAZGBeqi"], "toSpecificInventory": true, "type": "rDssuaZO"}], "removeItems": [{"inventoryId": "qkL9ROId", "slotId": "kPgjUh3v", "sourceItemId": "6DJIDBDM"}, {"inventoryId": "TdV0jK3q", "slotId": "Q1xz5Yfz", "sourceItemId": "boEp9Kgf"}, {"inventoryId": "QSdqB28D", "slotId": "h8Fk7a5j", "sourceItemId": "uzgLN8pL"}], "targetUserId": "6INStpIR", "updateItems": [{"customAttributes": {"s36u0fwl": {}, "IIGo3uE9": {}, "PQn496mz": {}}, "inventoryId": "IAVqs4MH", "serverCustomAttributes": {"j74gNTq4": {}, "G5EyDvkt": {}, "4XZGCrdG": {}}, "slotId": "BM5RnGBo", "sourceItemId": "wM4CzGDb", "tags": ["cLzYvHEi", "EFR3L7Dw", "MB9B4JQo"], "type": "lVWcO0ZI"}, {"customAttributes": {"W5ldJcAa": {}, "G3ozGmmb": {}, "VXcRgSbo": {}}, "inventoryId": "G6JPxtuO", "serverCustomAttributes": {"bKN1RnQ3": {}, "GErUTcBz": {}, "YLqxjnBj": {}}, "slotId": "TahXzKI8", "sourceItemId": "6EMqnvlL", "tags": ["iRRF2d9c", "QbVJIbrD", "rhBDZ1Id"], "type": "mu0wW2Bp"}, {"customAttributes": {"wBcvHISW": {}, "2jOujQx4": {}, "1VuRFz7x": {}}, "inventoryId": "4KgglmvB", "serverCustomAttributes": {"hkE0B4Fg": {}, "O3YcZswE": {}, "BwCs3Vj6": {}}, "slotId": "2R6yYTw4", "sourceItemId": "hN6FYWXo", "tags": ["tRdJT0Ic", "PYE0eo5l", "SWq6OS1c"], "type": "2YhuCRkI"}]}, {"consumeItems": [{"dateRangeValidation": false, "inventoryId": "H28jf5zt", "options": ["OdTRX102", "txbeeQfP", "uvNnIAsp"], "qty": 45, "slotId": "6r1ncXGw", "sourceItemId": "g9o8UUrN"}, {"dateRangeValidation": false, "inventoryId": "EVoKzvG5", "options": ["zwdUgxNn", "JVSATMB8", "xphwR3y4"], "qty": 14, "slotId": "5Jaluvpk", "sourceItemId": "OWFH9m9n"}, {"dateRangeValidation": true, "inventoryId": "VbwPr5Vu", "options": ["6JQLN3GQ", "gJIEX29J", "hUUl0z7y"], "qty": 1, "slotId": "S34G9tGI", "sourceItemId": "UPdVdsrP"}], "createItems": [{"customAttributes": {"NvhuLCQZ": {}, "yKQA3zL8": {}, "sK667PwK": {}}, "inventoryConfigurationCode": "JWgjVrDS", "inventoryId": "xoZ6ydnA", "qty": 68, "serverCustomAttributes": {"0xAWlmAU": {}, "Els5WWcl": {}, "aRsUvq8u": {}}, "slotId": "s1x0QMTm", "slotUsed": 39, "source": "OTHER", "sourceItemId": "bkp7fWrt", "tags": ["qjm0FMZh", "OWwj5HMK", "K8YOygjg"], "toSpecificInventory": false, "type": "ilMnkscS"}, {"customAttributes": {"Bhc92WUV": {}, "TXHw0tEg": {}, "skiPjeu8": {}}, "inventoryConfigurationCode": "66epIXbM", "inventoryId": "LOqlstDu", "qty": 33, "serverCustomAttributes": {"OtbDADVV": {}, "cc81sK9t": {}, "G166lN7a": {}}, "slotId": "A9SERF06", "slotUsed": 29, "source": "ECOMMERCE", "sourceItemId": "0ahAPQXg", "tags": ["IlaVv11W", "QLmGaI3n", "dVYlmJrS"], "toSpecificInventory": true, "type": "ba8Vw2su"}, {"customAttributes": {"tUK4eBDH": {}, "CR8AQGFD": {}, "G6JDEY6f": {}}, "inventoryConfigurationCode": "tW9bzlcq", "inventoryId": "iIviRhwR", "qty": 96, "serverCustomAttributes": {"vguC2E8y": {}, "Edp63BoF": {}, "sUjYrsf2": {}}, "slotId": "DILqBisk", "slotUsed": 40, "source": "ECOMMERCE", "sourceItemId": "ryTiy940", "tags": ["7pUlqMNl", "WyRPV1IU", "6PtRR2Gj"], "toSpecificInventory": true, "type": "QvyyPIK3"}], "removeItems": [{"inventoryId": "97kSyFDd", "slotId": "hZPe7vPY", "sourceItemId": "6ZHrvuSn"}, {"inventoryId": "u48o1KYg", "slotId": "LZxc2515", "sourceItemId": "ihOoJmni"}, {"inventoryId": "CLXpBhSM", "slotId": "xmWY3ovl", "sourceItemId": "OuMaQ4Yx"}], "targetUserId": "n0XTQRss", "updateItems": [{"customAttributes": {"Hyfltdqa": {}, "Ku4lIXCF": {}, "XOQrnm7R": {}}, "inventoryId": "ikL0m01s", "serverCustomAttributes": {"lZRYqS58": {}, "Ehg9QLLN": {}, "yHUCN5EV": {}}, "slotId": "y91528Dw", "sourceItemId": "WZHj9Fpx", "tags": ["aP6tIdko", "fgisWu1S", "qeZwVH0M"], "type": "CjUpiuer"}, {"customAttributes": {"jkMV7YhW": {}, "81DjZRKn": {}, "cpnhPZLF": {}}, "inventoryId": "tGgoq4IG", "serverCustomAttributes": {"q2zFNa0R": {}, "WpHpviry": {}, "XJ4m63e7": {}}, "slotId": "wKXYSBFR", "sourceItemId": "TuiDKBON", "tags": ["c1XTZJLn", "zwSyVAop", "V3ypI0uh"], "type": "vui0IHzo"}, {"customAttributes": {"hLL6gHPu": {}, "VK0N2iRV": {}, "FJhRoUwN": {}}, "inventoryId": "n515BYuy", "serverCustomAttributes": {"OADBcQu0": {}, "wUBMYlnR": {}, "n9ga7OrO": {}}, "slotId": "HIJNR2Ig", "sourceItemId": "XWM1dKZW", "tags": ["AUy5sGEb", "T5N7Ir0q", "FCGn30s0"], "type": "FoVnxxQz"}]}], "requestId": "t0RjMs5Q"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListIntegrationConfigurations
samples/cli/sample-apps Inventory adminListIntegrationConfigurations \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '49' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 3 'AdminListIntegrationConfigurations' test.out

#- 4 AdminCreateIntegrationConfiguration
samples/cli/sample-apps Inventory adminCreateIntegrationConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["6DlYkFPu", "1JCX0eOV", "rxNb4PC3"], "serviceName": "h427qA7a", "targetInventoryCode": "tdtdXm9Q"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateIntegrationConfiguration' test.out

#- 5 AdminUpdateIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateIntegrationConfiguration \
    --integrationConfigurationId 'V9FFpZS4' \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["9MOzchmx", "2grByyvI", "rjD2Rwiw"], "serviceName": "084gs2C9", "targetInventoryCode": "UXjYMZrt"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateIntegrationConfiguration' test.out

#- 6 AdminUpdateStatusIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateStatusIntegrationConfiguration \
    --integrationConfigurationId 'qLq6NZzJ' \
    --namespace $AB_NAMESPACE \
    --body '{"status": "INIT"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateStatusIntegrationConfiguration' test.out

#- 7 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'tNob7uS5' \
    --limit '29' \
    --offset '7' \
    --sortBy 'inventoryConfigurationCode:asc' \
    --userId 'ynWuVydV' \
    > test.out 2>&1
eval_tap $? 7 'AdminListInventories' test.out

#- 8 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "ztH5Hhnh", "userId": "1kjIB7Hc"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateInventory' test.out

#- 9 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'EEcxknyZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventory' test.out

#- 10 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'qn6Id0DJ' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 24}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateInventory' test.out

#- 11 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId '9eeLPC8y' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "9pAUjvRR"}' \
    > test.out 2>&1
eval_tap $? 11 'DeleteInventory' test.out

#- 12 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'nRlaKQbD' \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '74' \
    --sortBy 'createdAt:desc' \
    --sourceItemId 'V0E4CTpr' \
    --tags 'wx2SNZLj' \
    > test.out 2>&1
eval_tap $? 12 'AdminListItems' test.out

#- 13 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'w4gTM1KP' \
    --namespace $AB_NAMESPACE \
    --slotId 'mYG8Mij8' \
    --sourceItemId 'n4hPowvC' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetInventoryItem' test.out

#- 14 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'Sw2OLrjm' \
    --limit '65' \
    --offset '51' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 14 'AdminListInventoryConfigurations' test.out

#- 15 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "HfqdRvga", "description": "XePn74oE", "initialMaxSlots": 94, "maxInstancesPerUser": 4, "maxUpgradeSlots": 26, "name": "ZQF5B44v"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateInventoryConfiguration' test.out

#- 16 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'oxuCMfmH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetInventoryConfiguration' test.out

#- 17 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId '2LLv1X5s' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "uEZL2Abn", "description": "f3apClpW", "initialMaxSlots": 2, "maxInstancesPerUser": 23, "maxUpgradeSlots": 38, "name": "qvGog8ah"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateInventoryConfiguration' test.out

#- 18 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId '0elorsAD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteInventoryConfiguration' test.out

#- 19 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '32' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 19 'AdminListItemTypes' test.out

#- 20 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "6hmsWZ0X"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateItemType' test.out

#- 21 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'qKnGGleW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminDeleteItemType' test.out

#- 22 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '69' \
    --owner 'BVGbbP0M' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 22 'AdminListTags' test.out

#- 23 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "ySQWAxMn", "owner": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateTag' test.out

#- 24 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'FCqjbDTw' \
    > test.out 2>&1
eval_tap $? 24 'AdminDeleteTag' test.out

#- 25 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'C5ONH9kR' \
    --namespace $AB_NAMESPACE \
    --userId 'paNjebrj' \
    --dateRangeValidation 'aF8eJ0cY' \
    --body '{"options": ["7ulWpbJz", "pUKQzukS", "OdpTNQuj"], "qty": 4, "slotId": "6pCYn031", "sourceItemId": "JDNHR94i"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminConsumeUserItem' test.out

#- 26 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId '9kSICLGa' \
    --namespace $AB_NAMESPACE \
    --userId 'aCE4N4R8' \
    --body '[{"customAttributes": {"egpwTw8H": {}, "RGazg6hA": {}, "vcFSxei9": {}}, "serverCustomAttributes": {"74MrtUJ9": {}, "xNX2qco0": {}, "Eyye0mQL": {}}, "slotId": "MyGkxeHY", "sourceItemId": "I25eM23e", "tags": ["FXywOZGq", "6dahzEq3", "76pgHkPT"], "type": "wjG7Ylt9"}, {"customAttributes": {"2i4RnfU1": {}, "UQjCS6hj": {}, "kiLm6dLf": {}}, "serverCustomAttributes": {"WZpqxHqz": {}, "HqjQ72xg": {}, "DaO423nM": {}}, "slotId": "ap7HJxi3", "sourceItemId": "fKsRPzB2", "tags": ["QUMsh5g7", "TDruKuq5", "zskT5aJr"], "type": "jG114p4E"}, {"customAttributes": {"0fA7mJb1": {}, "tA1Pd7cV": {}, "Jan4Vuhp": {}}, "serverCustomAttributes": {"Nwr0Qx5U": {}, "VaCYS7Fl": {}, "iJ4QarHn": {}}, "slotId": "7wZqlx5G", "sourceItemId": "MjUu19fK", "tags": ["eUpBL3o1", "G86XIV7k", "EMq9Fzcj"], "type": "HLfCFpyj"}]' \
    > test.out 2>&1
eval_tap $? 26 'AdminBulkUpdateMyItems' test.out

#- 27 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'hk2gnMwd' \
    --namespace $AB_NAMESPACE \
    --userId 'DUELkrxp' \
    --body '{"customAttributes": {"78SH33ih": {}, "XJar1HBk": {}, "HfdBD899": {}}, "qty": 46, "serverCustomAttributes": {"cEfuW97U": {}, "19o4S0n3": {}, "1xurLvGF": {}}, "slotId": "UOxxW68b", "slotUsed": 10, "source": "ECOMMERCE", "sourceItemId": "4ziaIPDt", "tags": ["5oj5ggMf", "DDHFWQXf", "67zCjOur"], "type": "zhKuMrwf"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminSaveItemToInventory' test.out

#- 28 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'mq0Idaqw' \
    --namespace $AB_NAMESPACE \
    --userId '1d3MBscy' \
    --body '[{"slotId": "20Zb3Pkz", "sourceItemId": "BGi8kseM"}, {"slotId": "0Uq1E1Op", "sourceItemId": "JLkhVYcD"}, {"slotId": "I7Z9wHRs", "sourceItemId": "p8nOBDyW"}]' \
    > test.out 2>&1
eval_tap $? 28 'AdminBulkRemoveItems' test.out

#- 29 AdminBulkSaveItemToInventory
samples/cli/sample-apps Inventory adminBulkSaveItemToInventory \
    --inventoryId '5jdXLH68' \
    --namespace $AB_NAMESPACE \
    --userId 'tLuGWwRD' \
    --body '[{"customAttributes": {"dihBS4Jd": {}, "O8zPuuAe": {}, "41dZdkyh": {}}, "qty": 75, "serverCustomAttributes": {"GDc3Qdve": {}, "IwJEFpNq": {}, "Vq1Q5O5H": {}}, "slotId": "5Z9NN4OS", "slotUsed": 50, "source": "OTHER", "sourceItemId": "w8Xi1QNM", "tags": ["YSc6WIux", "8wW08mQF", "GZLeq5Q4"], "type": "OKAEvKre"}, {"customAttributes": {"oZ0QmRIn": {}, "JwbLZfMD": {}, "6iGQNA8C": {}}, "qty": 21, "serverCustomAttributes": {"eYPqmIN8": {}, "0GY7agMF": {}, "NSqreHzq": {}}, "slotId": "7QtB7ZJG", "slotUsed": 28, "source": "OTHER", "sourceItemId": "61TbwRsZ", "tags": ["LCRma0NR", "bKmqDFVB", "ZJe1SsZh"], "type": "RohvcYQF"}, {"customAttributes": {"wd7nzZaA": {}, "jjL1jADw": {}, "Az4Zq7kU": {}}, "qty": 90, "serverCustomAttributes": {"1uszTLJV": {}, "VevkbXtj": {}, "SkPA3sh8": {}}, "slotId": "2U9Af7dQ", "slotUsed": 5, "source": "OTHER", "sourceItemId": "UBBEqmmM", "tags": ["NuSBivYc", "SgYWTCci", "SgGqUw4S"], "type": "UfehRrYh"}]' \
    > test.out 2>&1
eval_tap $? 29 'AdminBulkSaveItemToInventory' test.out

#- 30 AdminUpdateUserInventoriesByInventoryCode
samples/cli/sample-apps Inventory adminUpdateUserInventoriesByInventoryCode \
    --inventoryConfigurationCode 'ePMvm4gM' \
    --namespace $AB_NAMESPACE \
    --userId 'UpgyTPx1' \
    --body '{"incMaxSlots": 78}' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateUserInventoriesByInventoryCode' test.out

#- 31 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'OpiKPwWy' \
    --body '{"customAttributes": {"munUuHmc": {}, "z4nIRDwp": {}, "mghgEsYv": {}}, "inventoryConfigurationCode": "Q3InJNxo", "qty": 39, "serverCustomAttributes": {"usZoYUz0": {}, "TOicNvGV": {}, "aiB3InBq": {}}, "slotId": "7sR03jsP", "slotUsed": 0, "source": "OTHER", "sourceItemId": "J82re4G0", "tags": ["AKDRjMlL", "bKHUTEpG", "wooARL14"], "type": "L20kf3oq"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminSaveItem' test.out

#- 32 AdminBulkSaveItem
samples/cli/sample-apps Inventory adminBulkSaveItem \
    --namespace $AB_NAMESPACE \
    --userId '2KgR4dSr' \
    --body '[{"customAttributes": {"DbuTSs6Q": {}, "HYW8AcTz": {}, "5Moixol8": {}}, "inventoryConfigurationCode": "tcBSy9uZ", "qty": 52, "serverCustomAttributes": {"SZ88lFVq": {}, "NyHQ5OLk": {}, "fR1OTHma": {}}, "slotId": "346Y27QW", "slotUsed": 9, "source": "OTHER", "sourceItemId": "rCubp9kg", "tags": ["GKx32ldJ", "Ios2njrS", "3a0K5HZ9"], "type": "KVZQJRAE"}, {"customAttributes": {"FISrQCbR": {}, "trEnSRuQ": {}, "bLQ8qgte": {}}, "inventoryConfigurationCode": "nEshDO0J", "qty": 90, "serverCustomAttributes": {"3mG01fqi": {}, "Y5fAFoAQ": {}, "xpGCqo5I": {}}, "slotId": "5u5U5K7F", "slotUsed": 41, "source": "ECOMMERCE", "sourceItemId": "JCTvkdox", "tags": ["RPtQnzFH", "Zu29i1cZ", "wx6rSpde"], "type": "QirBLGAt"}, {"customAttributes": {"Ywiu2W9F": {}, "Rc4U8rsb": {}, "kP8MaYY3": {}}, "inventoryConfigurationCode": "vRy86iC9", "qty": 76, "serverCustomAttributes": {"1IZadezp": {}, "geGGjq8b": {}, "zjn3VHfY": {}}, "slotId": "9BInrEIN", "slotUsed": 88, "source": "OTHER", "sourceItemId": "N28PS1rW", "tags": ["g7B4aB1l", "E5C7QHhk", "4eXCqzfP"], "type": "PVYoZ0Kx"}]' \
    > test.out 2>&1
eval_tap $? 32 'AdminBulkSaveItem' test.out

#- 33 AdminSyncUserEntitlements
samples/cli/sample-apps Inventory adminSyncUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'AKwEpntC' \
    > test.out 2>&1
eval_tap $? 33 'AdminSyncUserEntitlements' test.out

#- 34 AdminPurchasable
samples/cli/sample-apps Inventory adminPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'm1ek9guQ' \
    --body '{"entitlementType": "3jJGUiuQ", "inventoryConfig": {"slotUsed": 49}, "itemId": "mBjcYdem", "itemType": "7yBN92Ox", "items": [{"bundledQty": 76, "entitlementType": "amA5aYYx", "inventoryConfig": {"slotUsed": 18}, "itemId": "fw4QuZqx", "itemType": "tvSGeFMM", "sku": "LDKyVZCf", "stackable": true, "useCount": 45}, {"bundledQty": 50, "entitlementType": "QXwwkt6T", "inventoryConfig": {"slotUsed": 68}, "itemId": "5027UDI7", "itemType": "hrCU5t3l", "sku": "OkvWzSg1", "stackable": true, "useCount": 9}, {"bundledQty": 87, "entitlementType": "uaezAko6", "inventoryConfig": {"slotUsed": 77}, "itemId": "JWDmcpqr", "itemType": "iNOOXd31", "sku": "7l2Pdqj8", "stackable": true, "useCount": 24}], "quantity": 64, "sku": "lGQDXZtS", "stackable": false, "useCount": 22}' \
    > test.out 2>&1
eval_tap $? 34 'AdminPurchasable' test.out

#- 35 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'RLWxNODH' \
    --limit '66' \
    --offset '4' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 35 'PublicListInventoryConfigurations' test.out

#- 36 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '85' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 36 'PublicListItemTypes' test.out

#- 37 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '26' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 37 'PublicListTags' test.out

#- 38 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'JID9pCBj' \
    --limit '88' \
    --offset '97' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 38 'PublicListInventories' test.out

#- 39 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'XWHtjKbv' \
    --namespace $AB_NAMESPACE \
    --body '{"options": ["Qp7jrjid", "E3l4WeZ6", "qMsX3zwJ"], "qty": 46, "slotId": "5a4HT4l0", "sourceItemId": "SjO5FCS4"}' \
    > test.out 2>&1
eval_tap $? 39 'PublicConsumeMyItem' test.out

#- 40 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'rkcGVEwj' \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '47' \
    --sortBy 'createdAt:asc' \
    --sourceItemId 'vNFiR5He' \
    --tags 'l2oujY3o' \
    > test.out 2>&1
eval_tap $? 40 'PublicListItems' test.out

#- 41 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'F4fSn0cN' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"QK5629vm": {}, "zuhggnil": {}, "WiZrDq6R": {}}, "slotId": "QGDLdZji", "sourceItemId": "vDArzLBD", "tags": ["bMzraCFr", "MYZX8Poe", "w7AIXDgB"]}, {"customAttributes": {"n7MIMErO": {}, "qa7vswHi": {}, "PfyDwuMX": {}}, "slotId": "RR5nKDrZ", "sourceItemId": "VFCWhFRC", "tags": ["3ukm28D8", "ClOBXKbE", "d18BNRdU"]}, {"customAttributes": {"S5TS51j1": {}, "ktpi33o4": {}, "Ffm1MW84": {}}, "slotId": "BD1sb4sp", "sourceItemId": "zG6I1fF6", "tags": ["XzgLEJiQ", "uIGXxM4T", "Ekhn6Xab"]}]' \
    > test.out 2>&1
eval_tap $? 41 'PublicBulkUpdateMyItems' test.out

#- 42 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'rK7m6Wgt' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "W8rJLeZA", "sourceItemId": "PO1TMgZ7"}, {"slotId": "xaIMMdOH", "sourceItemId": "JlwmhBe4"}, {"slotId": "dZdwDMzL", "sourceItemId": "Bp8Zc0Y7"}]' \
    > test.out 2>&1
eval_tap $? 42 'PublicBulkRemoveMyItems' test.out

#- 43 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'VcCHvTex' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 70, "slotId": "5irjpZ3a", "sourceItemId": "6Boa3Pz3"}, {"qty": 31, "slotId": "DdcsEysU", "sourceItemId": "nhraYQBX"}, {"qty": 56, "slotId": "JdXwDOM9", "sourceItemId": "1FJUosBn"}], "srcInventoryId": "OEukuj62"}' \
    > test.out 2>&1
eval_tap $? 43 'PublicMoveMyItems' test.out

#- 44 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'vD4ZUJBK' \
    --namespace $AB_NAMESPACE \
    --slotId 'UKcFqqQe' \
    --sourceItemId 'DdyD4D6e' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE