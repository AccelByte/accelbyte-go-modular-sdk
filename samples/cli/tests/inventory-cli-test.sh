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
eval_tap 0 2 'AdminCreateChainingOperations # SKIP deprecated' test.out

#- 3 AdminListIntegrationConfigurations
samples/cli/sample-apps Inventory adminListIntegrationConfigurations \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '88' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 3 'AdminListIntegrationConfigurations' test.out

#- 4 AdminCreateIntegrationConfiguration
samples/cli/sample-apps Inventory adminCreateIntegrationConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["4S7Ocj4J", "t2nKBzYn", "8vnxqGTw"], "serviceName": "6z21UxNn", "targetInventoryCode": "CY8D6TYw"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateIntegrationConfiguration' test.out

#- 5 AdminUpdateIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateIntegrationConfiguration \
    --integrationConfigurationId 'LpHCWC39' \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["gcvNhFLH", "qxuy1wjZ", "IPuzfR7G"], "serviceName": "XHSgY9ol", "targetInventoryCode": "7vbcZPRA"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateIntegrationConfiguration' test.out

#- 6 AdminUpdateStatusIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateStatusIntegrationConfiguration \
    --integrationConfigurationId 'cOUisrJn' \
    --namespace $AB_NAMESPACE \
    --body '{"status": "INIT"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateStatusIntegrationConfiguration' test.out

#- 7 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'vuBZGVxs' \
    --limit '63' \
    --offset '68' \
    --sortBy 'inventoryConfigurationCode' \
    --userId '2ociyvXJ' \
    > test.out 2>&1
eval_tap $? 7 'AdminListInventories' test.out

#- 8 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "hkI6VCXE", "userId": "03HX9lc4"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateInventory' test.out

#- 9 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'F6HhAyhw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventory' test.out

#- 10 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'oE15Ax2m' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 15}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateInventory' test.out

#- 11 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'EhUL57n6' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "CGhdESCQ"}' \
    > test.out 2>&1
eval_tap $? 11 'DeleteInventory' test.out

#- 12 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 's8x0ws92' \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '61' \
    --sortBy 'createdAt:desc' \
    --sourceItemId 'QxAxm24e' \
    --tags 'KSdzJue2' \
    > test.out 2>&1
eval_tap $? 12 'AdminListItems' test.out

#- 13 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'JYBwQu5b' \
    --namespace $AB_NAMESPACE \
    --slotId 'S9fS4JTS' \
    --sourceItemId 'f6gc0G2s' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetInventoryItem' test.out

#- 14 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'H5AIqb7p' \
    --limit '75' \
    --offset '56' \
    --sortBy 'updatedAt:desc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListInventoryConfigurations' test.out

#- 15 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "ZfrLjucJ", "description": "6H8AnCQa", "initialMaxSlots": 30, "maxInstancesPerUser": 19, "maxUpgradeSlots": 79, "name": "LJxm0g1R"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateInventoryConfiguration' test.out

#- 16 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId '6cXWJqki' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetInventoryConfiguration' test.out

#- 17 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'wmwBVH1X' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "qb9PRGKw", "description": "ueVxG7Fx", "initialMaxSlots": 67, "maxInstancesPerUser": 62, "maxUpgradeSlots": 86, "name": "Xg5eQkfq"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateInventoryConfiguration' test.out

#- 18 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId '0f2OTrGU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteInventoryConfiguration' test.out

#- 19 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '14' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 19 'AdminListItemTypes' test.out

#- 20 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "H1RUnFz9"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateItemType' test.out

#- 21 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'YvGXqpvA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminDeleteItemType' test.out

#- 22 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '16' \
    --owner 'UE10JjCH' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 22 'AdminListTags' test.out

#- 23 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "6qrytfIH", "owner": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateTag' test.out

#- 24 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'w97kHmEs' \
    > test.out 2>&1
eval_tap $? 24 'AdminDeleteTag' test.out

#- 25 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId '3oxqgqdn' \
    --namespace $AB_NAMESPACE \
    --userId 'GGIqds6W' \
    --dateRangeValidation 'TE65FRvV' \
    --body '{"options": ["MbkSjXSf", "neFGjZtt", "2ShJIbNE"], "qty": 78, "slotId": "Efi9uK8n", "sourceItemId": "0IxBWWr1"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminConsumeUserItem' test.out

#- 26 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'UpsGvuqF' \
    --namespace $AB_NAMESPACE \
    --userId 'y6UixBJK' \
    --body '[{"customAttributes": {"OlcPIMzS": {}, "6B0efqVa": {}, "RvwvAAvK": {}}, "serverCustomAttributes": {"1UeK0lOn": {}, "6eDdM7U9": {}, "BcyeIgku": {}}, "slotId": "5Uzn0BMs", "sourceItemId": "GM2zWkl7", "tags": ["54tYUDCD", "AEpil2gg", "JceKqH14"], "type": "liNNcevK"}, {"customAttributes": {"blYpO5Ww": {}, "EIA0gTW6": {}, "NBjPyjCA": {}}, "serverCustomAttributes": {"CLdrPO5Q": {}, "8abok0FS": {}, "lE0phAIf": {}}, "slotId": "RgcQt3L7", "sourceItemId": "Ec4bUkJY", "tags": ["dwBl0Qtn", "AxxHNzBB", "CqqBOeLQ"], "type": "SXiRjIZC"}, {"customAttributes": {"Eqt37f0x": {}, "gwyTWKf4": {}, "St7H0qg4": {}}, "serverCustomAttributes": {"GLa6H8Iq": {}, "ioxLQL4G": {}, "hYHOgyGk": {}}, "slotId": "WvIX02pt", "sourceItemId": "CYiwZSKN", "tags": ["X5vxDlBO", "NmexCPfi", "GYdJYxq6"], "type": "q5LuvDC6"}]' \
    > test.out 2>&1
eval_tap $? 26 'AdminBulkUpdateMyItems' test.out

#- 27 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'Om4dFRAN' \
    --namespace $AB_NAMESPACE \
    --userId 't7R5clbJ' \
    --body '{"customAttributes": {"Jd3Ux0O7": {}, "9ZNlqQXQ": {}, "BPpa4MfH": {}}, "qty": 17, "serverCustomAttributes": {"UkvTUV9n": {}, "GBRSImcR": {}, "YBfYVdQ3": {}}, "slotId": "Sbvq3pHH", "slotUsed": 48, "source": "ECOMMERCE", "sourceItemId": "n9iuQv2Y", "tags": ["cOSgFNVt", "Rt9XaRe8", "NtcHDzzh"], "type": "8C5NQ1Wc"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminSaveItemToInventory' test.out

#- 28 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'H8PqTu3p' \
    --namespace $AB_NAMESPACE \
    --userId 'atM8Pur6' \
    --body '[{"slotId": "fWMlE0pq", "sourceItemId": "zHYAEVdQ"}, {"slotId": "ngwSfLd4", "sourceItemId": "5EkGWIcx"}, {"slotId": "hCvwvK6F", "sourceItemId": "jfprgStT"}]' \
    > test.out 2>&1
eval_tap $? 28 'AdminBulkRemoveItems' test.out

#- 29 AdminBulkSaveItemToInventory
samples/cli/sample-apps Inventory adminBulkSaveItemToInventory \
    --inventoryId 'ZkLZk1YB' \
    --namespace $AB_NAMESPACE \
    --userId 'h1w2oQTS' \
    --body '[{"customAttributes": {"UVS6EVob": {}, "NqQZjL1x": {}, "3jqHjuwZ": {}}, "qty": 35, "serverCustomAttributes": {"GKNSbett": {}, "mW1xS8pu": {}, "gAh83uQS": {}}, "slotId": "E92Dbtyk", "slotUsed": 85, "source": "OTHER", "sourceItemId": "e7thDmFQ", "tags": ["SdbaGnDF", "xvLTqz3g", "tdRKl2Kf"], "type": "PnzkSccB"}, {"customAttributes": {"61oIkSR6": {}, "gKdyvd8I": {}, "TS5TuznV": {}}, "qty": 53, "serverCustomAttributes": {"Xt548Su4": {}, "n6mjm8un": {}, "r0SnQnLE": {}}, "slotId": "jGdo230e", "slotUsed": 63, "source": "OTHER", "sourceItemId": "Sr3hxUTr", "tags": ["G5mOVuV8", "rhVFGAxH", "gZX6POmB"], "type": "JsKWPS2y"}, {"customAttributes": {"h1V5Q5fz": {}, "oMQFwhTn": {}, "bBELibb8": {}}, "qty": 10, "serverCustomAttributes": {"Kv4SiAh6": {}, "n9EStSxS": {}, "PZTKRbuy": {}}, "slotId": "XxGYSA9O", "slotUsed": 1, "source": "OTHER", "sourceItemId": "9gekgm6S", "tags": ["nvC02CZt", "1TqVbz4F", "Pc6KDfDf"], "type": "xcPWGnbr"}]' \
    > test.out 2>&1
eval_tap $? 29 'AdminBulkSaveItemToInventory' test.out

#- 30 AdminUpdateUserInventoriesByInventoryCode
samples/cli/sample-apps Inventory adminUpdateUserInventoriesByInventoryCode \
    --inventoryConfigurationCode 'KMX4ZOzs' \
    --namespace $AB_NAMESPACE \
    --userId 'ji7es3AB' \
    --body '{"incMaxSlots": 54}' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateUserInventoriesByInventoryCode' test.out

#- 31 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'XGt51r0x' \
    --body '{"customAttributes": {"d0fNrfl7": {}, "h9Tq1NZM": {}, "Y0lC1yda": {}}, "inventoryConfigurationCode": "MY6zyEBj", "qty": 25, "serverCustomAttributes": {"GLVClCjv": {}, "u6oKQKIZ": {}, "OAAhJS96": {}}, "slotId": "YjEe6Jas", "slotUsed": 12, "source": "ECOMMERCE", "sourceItemId": "gYiCfydp", "tags": ["S99fZohx", "dDi1P0mx", "qJXQFiCU"], "type": "QzjD6v5q"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminSaveItem' test.out

#- 32 AdminBulkSaveItem
samples/cli/sample-apps Inventory adminBulkSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'qLeyd5xD' \
    --body '[{"customAttributes": {"UiRiBn1c": {}, "lkh8Cx8K": {}, "CVXd3Dko": {}}, "inventoryConfigurationCode": "LxA4X20x", "qty": 92, "serverCustomAttributes": {"baKlDqrB": {}, "Gcf7iQm1": {}, "LCyJSMlr": {}}, "slotId": "IQrYOCeg", "slotUsed": 75, "source": "OTHER", "sourceItemId": "PnmCBHQW", "tags": ["0xr6eE1Y", "ANC31sBG", "Y7KmiYbC"], "type": "RncEhhN4"}, {"customAttributes": {"CLCDkByT": {}, "thcqD1GL": {}, "GyYSPUWd": {}}, "inventoryConfigurationCode": "xzc5o7F4", "qty": 66, "serverCustomAttributes": {"JldxEuZh": {}, "mJXfjgtn": {}, "V6I4EtFM": {}}, "slotId": "EY4p4eTg", "slotUsed": 32, "source": "OTHER", "sourceItemId": "cmWxoGKL", "tags": ["NFADL1aR", "5MgtnyT7", "gClRhY0B"], "type": "WGBVodYL"}, {"customAttributes": {"zpH9L1V4": {}, "8aU3ngCU": {}, "Oqk3kDVn": {}}, "inventoryConfigurationCode": "A2tEWQvs", "qty": 37, "serverCustomAttributes": {"qmc00Yns": {}, "cvxgUQCI": {}, "4FH4SiLf": {}}, "slotId": "UZzLTmUU", "slotUsed": 53, "source": "ECOMMERCE", "sourceItemId": "jQeLZRbP", "tags": ["7r1BdR5V", "aaiOCpQw", "wr0fdhRn"], "type": "c8Kc75C7"}]' \
    > test.out 2>&1
eval_tap $? 32 'AdminBulkSaveItem' test.out

#- 33 AdminSyncUserEntitlements
samples/cli/sample-apps Inventory adminSyncUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'dKL4UgUr' \
    > test.out 2>&1
eval_tap $? 33 'AdminSyncUserEntitlements' test.out

#- 34 AdminPurchasable
samples/cli/sample-apps Inventory adminPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'RshAwZMv' \
    --body '{"entitlementType": "QquHazfv", "inventoryConfig": {"slotUsed": 90}, "itemId": "MsB1lvhr", "itemType": "jcS0LPkp", "items": [{"bundledQty": 3, "entitlementType": "l9VyL5nU", "inventoryConfig": {"slotUsed": 82}, "itemId": "aF69boRX", "itemType": "6bzUmIms", "sku": "uX006PzO", "stackable": true, "useCount": 94}, {"bundledQty": 39, "entitlementType": "noNPFVFy", "inventoryConfig": {"slotUsed": 77}, "itemId": "ERvH2IVN", "itemType": "RGt4p6Yh", "sku": "U4XAQYMD", "stackable": true, "useCount": 38}, {"bundledQty": 48, "entitlementType": "v6bpUMMy", "inventoryConfig": {"slotUsed": 58}, "itemId": "LPeRyc21", "itemType": "JbBeN1QB", "sku": "76FoPN7z", "stackable": true, "useCount": 78}], "quantity": 44, "sku": "X31Lv7CU", "stackable": false, "useCount": 41}' \
    > test.out 2>&1
eval_tap $? 34 'AdminPurchasable' test.out

#- 35 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'H3W26pn3' \
    --limit '86' \
    --offset '16' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 35 'PublicListInventoryConfigurations' test.out

#- 36 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '76' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 36 'PublicListItemTypes' test.out

#- 37 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '28' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 37 'PublicListTags' test.out

#- 38 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'lzY1WQN5' \
    --limit '12' \
    --offset '73' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 38 'PublicListInventories' test.out

#- 39 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId '6PFhlWlo' \
    --namespace $AB_NAMESPACE \
    --body '{"options": ["ueNyBnPV", "6nEG0izn", "ia2fW6jb"], "qty": 0, "slotId": "oDxaADDw", "sourceItemId": "pQTrKOm2"}' \
    > test.out 2>&1
eval_tap $? 39 'PublicConsumeMyItem' test.out

#- 40 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId '8VJEg8xw' \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '11' \
    --sortBy 'createdAt:desc' \
    --sourceItemId '7Yu36f0j' \
    --tags 'eC808gOh' \
    > test.out 2>&1
eval_tap $? 40 'PublicListItems' test.out

#- 41 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId '39bjYFW3' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"wcsdlHKU": {}, "PRZTnFkl": {}, "lblM2al6": {}}, "slotId": "DPhDPJgk", "sourceItemId": "EWsuriE7", "tags": ["roy0DWus", "zeYJuQZy", "W39TBlhH"]}, {"customAttributes": {"X6wsKOVX": {}, "jEZNX7BM": {}, "K2THaeik": {}}, "slotId": "OBncDZCM", "sourceItemId": "hI5NjXWQ", "tags": ["MuTmvluA", "YlyvqKDH", "6ESELTts"]}, {"customAttributes": {"3vWClVP5": {}, "10WpLoUn": {}, "S72H5jSM": {}}, "slotId": "nRylJOcC", "sourceItemId": "WTh1JZ3i", "tags": ["56rjS7bm", "2rVmysJu", "SZ6Mpu1f"]}]' \
    > test.out 2>&1
eval_tap $? 41 'PublicBulkUpdateMyItems' test.out

#- 42 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'sv6PzuhB' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "9qaNbFe9", "sourceItemId": "eAmkupTY"}, {"slotId": "gngRP8KK", "sourceItemId": "hb1yj1EC"}, {"slotId": "r0L9xhgh", "sourceItemId": "I9ZLYvsi"}]' \
    > test.out 2>&1
eval_tap $? 42 'PublicBulkRemoveMyItems' test.out

#- 43 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'O4k9AGnC' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 19, "slotId": "MQn0zMfF", "sourceItemId": "v9zhvwAs"}, {"qty": 79, "slotId": "JZloY7r2", "sourceItemId": "xH5Xmqxk"}, {"qty": 34, "slotId": "GK4Kc9zv", "sourceItemId": "T0lEDaJe"}], "srcInventoryId": "P4m5VeLQ"}' \
    > test.out 2>&1
eval_tap $? 43 'PublicMoveMyItems' test.out

#- 44 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId '5ooPWJeS' \
    --namespace $AB_NAMESPACE \
    --slotId '42lXOstc' \
    --sourceItemId 'IVNR2p6J' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE