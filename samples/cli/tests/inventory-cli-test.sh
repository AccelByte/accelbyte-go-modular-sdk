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
echo "1..34"

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

#- 2 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'Jb72M5Ku' \
    --limit '93' \
    --offset '14' \
    --sortBy 'inventoryConfigurationCode' \
    --userId 'A0wMN10e' \
    > test.out 2>&1
eval_tap $? 2 'AdminListInventories' test.out

#- 3 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "l2haAkQd", "userId": "zpUJled6"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateInventory' test.out

#- 4 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'l8Vr0l5B' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetInventory' test.out

#- 5 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'BaVdr5ih' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 79}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateInventory' test.out

#- 6 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'reuBUzxY' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "NvMoZSVo"}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteInventory' test.out

#- 7 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'vtqNEbRE' \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --offset '95' \
    --qtyGte '96' \
    --sortBy 'createdAt' \
    --sourceItemId 'zX1gnUFk' \
    --tags '88mFyOpd' \
    > test.out 2>&1
eval_tap $? 7 'AdminListItems' test.out

#- 8 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'iCRygxl9' \
    --namespace $AB_NAMESPACE \
    --slotId '36jrJ2ja' \
    --sourceItemId 'ktc3jpis' \
    > test.out 2>&1
eval_tap $? 8 'AdminGetInventoryItem' test.out

#- 9 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code '4iYc93sv' \
    --limit '46' \
    --offset '82' \
    --sortBy 'code' \
    > test.out 2>&1
eval_tap $? 9 'AdminListInventoryConfigurations' test.out

#- 10 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "uCDCE0yq", "description": "ugaL24gz", "initialMaxSlots": 91, "maxInstancesPerUser": 77, "maxUpgradeSlots": 23, "name": "EHNlsMsT"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminCreateInventoryConfiguration' test.out

#- 11 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'BEYg2joj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetInventoryConfiguration' test.out

#- 12 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'maGUKMN1' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "kuhN85l3", "description": "eGWifgRA", "initialMaxSlots": 77, "maxInstancesPerUser": 56, "maxUpgradeSlots": 30, "name": "DU0Cd9Yi"}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateInventoryConfiguration' test.out

#- 13 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'CZLrP1lv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteInventoryConfiguration' test.out

#- 14 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '97' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 14 'AdminListItemTypes' test.out

#- 15 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "izaBDQVl"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateItemType' test.out

#- 16 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'jzmqGl9s' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminDeleteItemType' test.out

#- 17 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '6' \
    --owner 'geycOKge' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 17 'AdminListTags' test.out

#- 18 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "U6ohwjyD", "owner": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 18 'AdminCreateTag' test.out

#- 19 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'v9LFIKKn' \
    > test.out 2>&1
eval_tap $? 19 'AdminDeleteTag' test.out

#- 20 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'jTVia4Uo' \
    --namespace $AB_NAMESPACE \
    --userId 'i8WC35kc' \
    --body '{"qty": 83, "slotId": "QbotS3ET", "sourceItemId": "JZknOY42"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminConsumeUserItem' test.out

#- 21 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'YYjudCFA' \
    --namespace $AB_NAMESPACE \
    --userId '5Zkl0UKY' \
    --body '[{"customAttributes": {"qWeL59gi": {}, "5w7DHNYV": {}, "K2qc2fm6": {}}, "serverCustomAttributes": {"9OfUMw85": {}, "tvFf1zDm": {}, "wFKf97I9": {}}, "slotId": "QxDyBuDb", "sourceItemId": "ngjKf3Hw", "tags": ["eB6XtQu0", "kod0LXlq", "JYN3y0wX"], "type": "cLQJr7oh"}, {"customAttributes": {"mBuLjQmh": {}, "Nm6ZG9NL": {}, "hmFoEvZS": {}}, "serverCustomAttributes": {"0Aa9j4Ok": {}, "6Erbj1q6": {}, "QX8EkhLY": {}}, "slotId": "zJvvnQop", "sourceItemId": "lU0wiKpp", "tags": ["v7Go5V6N", "Tt1Uepjv", "z6nn1zQQ"], "type": "LxPtacTF"}, {"customAttributes": {"GQ0wybqB": {}, "AegHcsdV": {}, "KPxcB23G": {}}, "serverCustomAttributes": {"FDi0bMud": {}, "e8C76SlD": {}, "uSlCRxZG": {}}, "slotId": "V5DuPJz4", "sourceItemId": "5CONG7m0", "tags": ["bD5V96TL", "TEs0aF99", "DOsGL8xV"], "type": "aD2Vm9QH"}]' \
    > test.out 2>&1
eval_tap $? 21 'AdminBulkUpdateMyItems' test.out

#- 22 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'Yv90gfQb' \
    --namespace $AB_NAMESPACE \
    --userId 'qoe1rwoa' \
    --body '{"customAttributes": {"b7AmQaUz": {}, "TeOzPejP": {}, "hFf6wY0f": {}}, "qty": 72, "serverCustomAttributes": {"5n28lfA3": {}, "vkigG3y8": {}, "eDh6eL33": {}}, "slotId": "2oHQZonA", "slotUsed": 50, "sourceItemId": "4BiKydUE", "tags": ["5p7iMnr8", "EdrbKHD8", "SL7lMY1t"], "type": "PLbzaqaJ"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminSaveItemToInventory' test.out

#- 23 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'OIBATvBd' \
    --namespace $AB_NAMESPACE \
    --userId 'pGj31sAI' \
    --body '[{"slotId": "dcXp4vP5", "sourceItemId": "u1bWRU0z"}, {"slotId": "Ot222x8E", "sourceItemId": "KgeFjpAU"}, {"slotId": "uZAzBVrw", "sourceItemId": "OHVftiXt"}]' \
    > test.out 2>&1
eval_tap $? 23 'AdminBulkRemoveItems' test.out

#- 24 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'bHLXRS8R' \
    --body '{"customAttributes": {"kRWObt7Y": {}, "8mW5uGS2": {}, "r9U2gfk3": {}}, "inventoryConfigurationCode": "4MSt3CKK", "qty": 10, "serverCustomAttributes": {"2UsaWNXC": {}, "NaN56zLB": {}, "hGU4vSFN": {}}, "slotId": "pEfB1Uix", "slotUsed": 33, "sourceItemId": "Z6YZu9SE", "tags": ["gDIqG7hD", "l36wXdur", "NebjNEHg"], "type": "bhsjnvEO"}' \
    > test.out 2>&1
eval_tap $? 24 'AdminSaveItem' test.out

#- 25 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'FUsyMyNi' \
    --limit '72' \
    --offset '7' \
    --sortBy 'code' \
    > test.out 2>&1
eval_tap $? 25 'PublicListInventoryConfigurations' test.out

#- 26 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '51' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 26 'PublicListItemTypes' test.out

#- 27 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '100' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 27 'PublicListTags' test.out

#- 28 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'PwuFn3pN' \
    --limit '50' \
    --offset '18' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 28 'PublicListInventories' test.out

#- 29 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'npefzPeB' \
    --namespace $AB_NAMESPACE \
    --body '{"qty": 95, "slotId": "LM57byT5", "sourceItemId": "N7Skmy45"}' \
    > test.out 2>&1
eval_tap $? 29 'PublicConsumeMyItem' test.out

#- 30 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'in2lozU0' \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --offset '42' \
    --qtyGte '15' \
    --sortBy 'createdAt:asc' \
    --sourceItemId 'KF8WOBIp' \
    --tags '6irEHJoD' \
    > test.out 2>&1
eval_tap $? 30 'PublicListItems' test.out

#- 31 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'rDM9geRx' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"MoBm6bsi": {}, "vfbyGkLR": {}, "qnSIrkFw": {}}, "slotId": "GFcQ8a7E", "sourceItemId": "px3fVGbH", "tags": ["wPpwswbT", "iwI05QyX", "gs4aNmqv"]}, {"customAttributes": {"mYr2iJ8p": {}, "rEEtVeea": {}, "aeInHVoq": {}}, "slotId": "HaSL9k7c", "sourceItemId": "DkDxXZIs", "tags": ["NUo9GrXy", "3w98o8Ke", "GN7tG2VD"]}, {"customAttributes": {"ioVcpujD": {}, "SSyFn4Pq": {}, "2QaEUjf4": {}}, "slotId": "cT1pu6BX", "sourceItemId": "Bd5I3AsK", "tags": ["rzQFOudd", "VyFPr9by", "wnKkOUSH"]}]' \
    > test.out 2>&1
eval_tap $? 31 'PublicBulkUpdateMyItems' test.out

#- 32 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'UMUPv85l' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "k4ZlKnHO", "sourceItemId": "RvToIuME"}, {"slotId": "rx6XyUtg", "sourceItemId": "b1wtkuw9"}, {"slotId": "bzRAhk9D", "sourceItemId": "LnHirnAr"}]' \
    > test.out 2>&1
eval_tap $? 32 'PublicBulkRemoveMyItems' test.out

#- 33 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'P8v3VS0g' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 38, "slotId": "KLBIN0sC", "sourceItemId": "C8BuFZeK"}, {"qty": 38, "slotId": "iEQbJdrx", "sourceItemId": "riheYOLl"}, {"qty": 46, "slotId": "VwMfy7iw", "sourceItemId": "NvU7wO39"}], "srcInventoryId": "2NX5aJhP"}' \
    > test.out 2>&1
eval_tap $? 33 'PublicMoveMyItems' test.out

#- 34 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId '0up3y0PT' \
    --namespace $AB_NAMESPACE \
    --slotId 'n6eVGE0e' \
    --sourceItemId 'odvwAftI' \
    > test.out 2>&1
eval_tap $? 34 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE