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
    --inventoryConfigurationCode 'i9r9focn' \
    --limit '47' \
    --offset '46' \
    --sortBy 'updatedAt:desc' \
    --userId 'tSeiPOah' \
    > test.out 2>&1
eval_tap $? 2 'AdminListInventories' test.out

#- 3 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "iLrCx5o1", "userId": "HTUBrlLd"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateInventory' test.out

#- 4 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'mPodPGEk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetInventory' test.out

#- 5 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'p1Pm6hwh' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 66}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateInventory' test.out

#- 6 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'atlyJwFF' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "Y7VfgbeT"}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteInventory' test.out

#- 7 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'KdDjtuD2' \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '8' \
    --qtyGte '75' \
    --sortBy 'createdAt:asc' \
    --sourceItemId 'WuN1SsC8' \
    --tags 'dMW5T1mw' \
    > test.out 2>&1
eval_tap $? 7 'AdminListItems' test.out

#- 8 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'rgw2j08e' \
    --namespace $AB_NAMESPACE \
    --slotId 'mhSseeRa' \
    --sourceItemId 'S9kJoKDI' \
    > test.out 2>&1
eval_tap $? 8 'AdminGetInventoryItem' test.out

#- 9 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'Xd1kgy35' \
    --limit '99' \
    --offset '40' \
    --sortBy 'updatedAt:asc' \
    > test.out 2>&1
eval_tap $? 9 'AdminListInventoryConfigurations' test.out

#- 10 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "6ZvGcY2N", "description": "Z6IBmWfb", "initialMaxSlots": 75, "maxInstancesPerUser": 96, "maxUpgradeSlots": 58, "name": "D8l0fNPw"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminCreateInventoryConfiguration' test.out

#- 11 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'CPV21JAw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetInventoryConfiguration' test.out

#- 12 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'Cxg8WjHw' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "ZihPkTNp", "description": "mUt8t4PD", "initialMaxSlots": 55, "maxInstancesPerUser": 62, "maxUpgradeSlots": 99, "name": "DeAggo8Z"}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateInventoryConfiguration' test.out

#- 13 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'w6SgOHpA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteInventoryConfiguration' test.out

#- 14 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '23' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListItemTypes' test.out

#- 15 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "ffOTnqGR"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateItemType' test.out

#- 16 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName '4FJHgBlh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminDeleteItemType' test.out

#- 17 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '19' \
    --owner '8seKbs0e' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 17 'AdminListTags' test.out

#- 18 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "PcidWVMZ", "owner": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 18 'AdminCreateTag' test.out

#- 19 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'YFblYtdw' \
    > test.out 2>&1
eval_tap $? 19 'AdminDeleteTag' test.out

#- 20 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'waK5jw5g' \
    --namespace $AB_NAMESPACE \
    --userId '2aIY2k07' \
    --body '{"qty": 86, "slotId": "OqWOtf8O", "sourceItemId": "KMP8pSnI"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminConsumeUserItem' test.out

#- 21 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'UcucmSDQ' \
    --namespace $AB_NAMESPACE \
    --userId '8t7kPAq9' \
    --body '[{"customAttributes": {"1ghJXywa": {}, "ZKqY8LnZ": {}, "Bl6nw53w": {}}, "serverCustomAttributes": {"dVVf9Lsf": {}, "j5C50XzG": {}, "Afsq3Lmd": {}}, "slotId": "nUAVYi6L", "sourceItemId": "XMalNudw", "tags": ["jee72saj", "4DmkDkKh", "fWerYiPr"], "type": "aZ097s5h"}, {"customAttributes": {"BaGhLDfs": {}, "4DNv591j": {}, "rJAqVA81": {}}, "serverCustomAttributes": {"13Woq0be": {}, "U0lhauRD": {}, "Gnhcp41W": {}}, "slotId": "hbtdwkeE", "sourceItemId": "uBUV8HKn", "tags": ["rZmWsjPY", "43zyyBJ3", "weEbdQs5"], "type": "2tueVWrG"}, {"customAttributes": {"s4MKB5ZV": {}, "wTpDh6CH": {}, "kX6W0WXP": {}}, "serverCustomAttributes": {"MDB9SLvD": {}, "Vg2ZCmB0": {}, "PCoAYwUb": {}}, "slotId": "8IHgGVP6", "sourceItemId": "r9Sc5vER", "tags": ["EiW6LD2p", "ngsZiHkb", "dbDPLPJB"], "type": "BMrDlwsP"}]' \
    > test.out 2>&1
eval_tap $? 21 'AdminBulkUpdateMyItems' test.out

#- 22 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId '1JocIKeD' \
    --namespace $AB_NAMESPACE \
    --userId 'n9S4xqoM' \
    --body '{"customAttributes": {"550CcsrT": {}, "0wJBd2yn": {}, "ivkOJ0MK": {}}, "qty": 52, "serverCustomAttributes": {"VVMUgAsO": {}, "JlT1O82k": {}, "zoOZE6pY": {}}, "slotId": "GejVqxOg", "slotUsed": 47, "sourceItemId": "MTBn9CY2", "tags": ["TFQ7ynjQ", "io3Pr4Vr", "RgkPnNWY"], "type": "ECqhJgXd"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminSaveItemToInventory' test.out

#- 23 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'ZOlrhp36' \
    --namespace $AB_NAMESPACE \
    --userId 'ki3CI5WK' \
    --body '[{"slotId": "v6dyHPK9", "sourceItemId": "85k2RN8J"}, {"slotId": "rh9oOGB3", "sourceItemId": "O4JqNeyD"}, {"slotId": "oPEJ6WUS", "sourceItemId": "OMOqUne2"}]' \
    > test.out 2>&1
eval_tap $? 23 'AdminBulkRemoveItems' test.out

#- 24 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'g2sUmz1Q' \
    --body '{"customAttributes": {"7UGBSQSb": {}, "ITqL79DV": {}, "IsWRqvzC": {}}, "inventoryConfigurationCode": "oIMoKNYQ", "qty": 70, "serverCustomAttributes": {"r7Ok8QXt": {}, "hdYsk0xW": {}, "2G1b3pDj": {}}, "slotId": "Mmh739P8", "slotUsed": 87, "sourceItemId": "btCDRgok", "tags": ["2kXAC6YH", "32KiROC0", "Ot6b3DG3"], "type": "gJRngxPt"}' \
    > test.out 2>&1
eval_tap $? 24 'AdminSaveItem' test.out

#- 25 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'qVENFxx5' \
    --limit '95' \
    --offset '56' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 25 'PublicListInventoryConfigurations' test.out

#- 26 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '53' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 26 'PublicListItemTypes' test.out

#- 27 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '84' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 27 'PublicListTags' test.out

#- 28 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode '6YKnLITA' \
    --limit '30' \
    --offset '52' \
    --sortBy 'updatedAt' \
    > test.out 2>&1
eval_tap $? 28 'PublicListInventories' test.out

#- 29 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'fwwB4ekT' \
    --namespace $AB_NAMESPACE \
    --body '{"qty": 87, "slotId": "nEw5YwcU", "sourceItemId": "kIdmt7mU"}' \
    > test.out 2>&1
eval_tap $? 29 'PublicConsumeMyItem' test.out

#- 30 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId '7fWYW1df' \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '89' \
    --qtyGte '43' \
    --sortBy 'createdAt' \
    --sourceItemId '9hDHOWKl' \
    --tags 'qZMDiAT3' \
    > test.out 2>&1
eval_tap $? 30 'PublicListItems' test.out

#- 31 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'Fvt4F6Bk' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"Yu0aFITo": {}, "KzKPYI15": {}, "7qX31iC7": {}}, "slotId": "i6ZcEZES", "sourceItemId": "VJVXa0nF", "tags": ["n4fZ9M9G", "hE4WdbXl", "ByHfKHEK"]}, {"customAttributes": {"GmJBoMGH": {}, "ykVbcQlx": {}, "VJEOodHH": {}}, "slotId": "q3JkR6uk", "sourceItemId": "tmBf7ZBh", "tags": ["sol54gWe", "D10AsZ4t", "ecuqMZI3"]}, {"customAttributes": {"m1tY5yYG": {}, "ehDOQ2BE": {}, "7dWM0Hq9": {}}, "slotId": "SQxKjojw", "sourceItemId": "HWfCtlHo", "tags": ["3YXD1aNx", "BMeFBtJE", "Jci9chU3"]}]' \
    > test.out 2>&1
eval_tap $? 31 'PublicBulkUpdateMyItems' test.out

#- 32 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'L0Pm0aVs' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "ZFV1S670", "sourceItemId": "cLYA8WcC"}, {"slotId": "nXDVTuVj", "sourceItemId": "w1VeF0yv"}, {"slotId": "NxHScq8U", "sourceItemId": "AZitw6t8"}]' \
    > test.out 2>&1
eval_tap $? 32 'PublicBulkRemoveMyItems' test.out

#- 33 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId '0LnFGt9e' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 75, "slotId": "JpQ2kmOl", "sourceItemId": "6AnxcZD7"}, {"qty": 86, "slotId": "cLuG1Qse", "sourceItemId": "THgT9a8w"}, {"qty": 94, "slotId": "Ivz4O1qQ", "sourceItemId": "bpCfXlRI"}], "srcInventoryId": "gDZhDU7k"}' \
    > test.out 2>&1
eval_tap $? 33 'PublicMoveMyItems' test.out

#- 34 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'unhdnI4c' \
    --namespace $AB_NAMESPACE \
    --slotId 'q8QCQ8XM' \
    --sourceItemId 'YIzOWhrp' \
    > test.out 2>&1
eval_tap $? 34 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE