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
    --inventoryConfigurationCode 'fqDLzAgZ' \
    --limit '61' \
    --offset '62' \
    --sortBy 'createdAt' \
    --userId 'SX4Zlcvw' \
    > test.out 2>&1
eval_tap $? 2 'AdminListInventories' test.out

#- 3 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "bH9eXfjn", "userId": "wQZgNQwH"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateInventory' test.out

#- 4 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'OER9jAEI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetInventory' test.out

#- 5 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'bLjpcSuo' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 99}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateInventory' test.out

#- 6 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'ZPiGGdD3' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "THz9CrwM"}' \
    > test.out 2>&1
eval_tap $? 6 'DeleteInventory' test.out

#- 7 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'tb5dxWBb' \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '43' \
    --qtyGte '57' \
    --sortBy 'qty:asc' \
    --sourceItemId 'BXLIokiK' \
    --tags 'BnF6P0A0' \
    > test.out 2>&1
eval_tap $? 7 'AdminListItems' test.out

#- 8 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'mh4RiIo5' \
    --itemId 'TJxzADnE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminGetInventoryItem' test.out

#- 9 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'lKya1gnH' \
    --limit '39' \
    --offset '93' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 9 'AdminListInventoryConfigurations' test.out

#- 10 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "pCCaNuvr", "description": "zFcmhrGb", "initialMaxSlots": 43, "maxInstancesPerUser": 80, "maxUpgradeSlots": 73, "name": "bOSQ0zzW"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminCreateInventoryConfiguration' test.out

#- 11 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'CreP72CC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetInventoryConfiguration' test.out

#- 12 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'X0MMO6Nl' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "u71ielYD", "description": "Gc85FcCV", "initialMaxSlots": 58, "maxInstancesPerUser": 93, "maxUpgradeSlots": 83, "name": "ArBqOKxL"}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateInventoryConfiguration' test.out

#- 13 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'FezM2UIz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteInventoryConfiguration' test.out

#- 14 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '12' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListItemTypes' test.out

#- 15 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "A9J5WTWa"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateItemType' test.out

#- 16 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'q4QHxEQ7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminDeleteItemType' test.out

#- 17 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '63' \
    --owner 'ZPcAdgUK' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 17 'AdminListTags' test.out

#- 18 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "BUM2RR1H", "owner": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 18 'AdminCreateTag' test.out

#- 19 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'vWzXh5rY' \
    > test.out 2>&1
eval_tap $? 19 'AdminDeleteTag' test.out

#- 20 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'KpLwC5dm' \
    --namespace $AB_NAMESPACE \
    --userId 'S6e3b6Za' \
    --body '[{"customAttributes": {"FtjVxLBF": {}, "IyMDUMbF": {}, "qSx4P2Kv": {}}, "id": "Lxaad5FQ", "serverCustomAttributes": {"DLana0yS": {}, "DOjwuLzl": {}, "IuOqIu33": {}}, "tags": ["vH8iUETK", "HkB0WcGs", "3dW5YlFI"], "type": "4AOkFuJh"}, {"customAttributes": {"2UDNrANg": {}, "AB193ts6": {}, "yPXuod5v": {}}, "id": "XxMgNNhM", "serverCustomAttributes": {"pfosIfGf": {}, "CveaL9rm": {}, "77NVki1R": {}}, "tags": ["9LFc8bl0", "Sv786bJh", "iE4V8Kkb"], "type": "3P84Ftok"}, {"customAttributes": {"gn37ci8J": {}, "rqh98Cyh": {}, "eFDYU04N": {}}, "id": "HyqrunyL", "serverCustomAttributes": {"5p6WkwpF": {}, "JzQSIAfC": {}, "ePtjPXox": {}}, "tags": ["ywphKzop", "Qdn0k5ym", "xcSYywpS"], "type": "SDpItRXx"}]' \
    > test.out 2>&1
eval_tap $? 20 'AdminBulkUpdateMyItems' test.out

#- 21 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'TBq5qAtr' \
    --namespace $AB_NAMESPACE \
    --userId 'E2DPibRk' \
    --body '{"customAttributes": {"iORLFMPC": {}, "m4mo0Hfw": {}, "KWAvDnuA": {}}, "qty": 50, "serverCustomAttributes": {"BseK7LcP": {}, "8ZyQ6Pmt": {}, "Zg4AaCOk": {}}, "sourceItemId": "6Hpb94Fz", "tags": ["39t6ECCx", "wfgLtwL5", "7IUD9ff9"], "type": "Japymvo9"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminSaveItemToInventory' test.out

#- 22 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'jwWyrdSZ' \
    --namespace $AB_NAMESPACE \
    --userId '72Pz6znq' \
    --body '{"ids": ["RFoELoAd", "ZFd2dEgw", "5F8TqPQn"]}' \
    > test.out 2>&1
eval_tap $? 22 'AdminBulkRemoveItems' test.out

#- 23 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'BWFR6GOp' \
    --itemId 'PmnZZfBU' \
    --namespace $AB_NAMESPACE \
    --userId 'zHDtbbNG' \
    --body '{"qty": 86}' \
    > test.out 2>&1
eval_tap $? 23 'AdminConsumeUserItem' test.out

#- 24 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'ZCtC9NtK' \
    --body '{"customAttributes": {"w4zFhJt9": {}, "tNQuUUfs": {}, "h2meaPVP": {}}, "inventoryConfigurationCode": "hWOQibmN", "qty": 97, "serverCustomAttributes": {"37dbkFoV": {}, "USnQgKmZ": {}, "aI8HsRQ0": {}}, "sourceItemId": "fsoTePng", "tags": ["DlCjVpdq", "fC1oprs8", "3yNDxo0m"], "type": "ywJMC6KI"}' \
    > test.out 2>&1
eval_tap $? 24 'AdminSaveItem' test.out

#- 25 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code '6rW9tUnn' \
    --limit '49' \
    --offset '33' \
    --sortBy 'updatedAt' \
    > test.out 2>&1
eval_tap $? 25 'PublicListInventoryConfigurations' test.out

#- 26 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '48' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 26 'PublicListItemTypes' test.out

#- 27 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '0' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 27 'PublicListTags' test.out

#- 28 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'SXB2Bmdp' \
    --limit '90' \
    --offset '59' \
    --sortBy 'updatedAt' \
    > test.out 2>&1
eval_tap $? 28 'PublicListInventories' test.out

#- 29 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'hDIBc7kP' \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '73' \
    --qtyGte '84' \
    --sortBy 'createdAt:desc' \
    --sourceItemId 'K6G342vs' \
    --tags 'vaHRZ6y4' \
    > test.out 2>&1
eval_tap $? 29 'PublicListItems' test.out

#- 30 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'Gilmdok9' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"7Htc2AbP": {}, "WiGA8Hcp": {}, "DzQqOdHf": {}}, "id": "JpinaJ3G", "tags": ["euBH9FMH", "gEDJJxRt", "2cEMwHrE"]}, {"customAttributes": {"VN0xQJ63": {}, "LWPcuZMm": {}, "cxZSxYfJ": {}}, "id": "mlPPQCK1", "tags": ["BIHyWIt6", "DWpFYjC2", "OwZblZM2"]}, {"customAttributes": {"B7OGdRp6": {}, "p9is62Dk": {}, "lx6ZC7YK": {}}, "id": "he24qTOu", "tags": ["dsgNxRt6", "A0ouNRNU", "SH64qVhX"]}]' \
    > test.out 2>&1
eval_tap $? 30 'PublicBulkUpdateMyItems' test.out

#- 31 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'AmI0olxy' \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["dF9b6xy5", "LeUc0DKd", "SBN7ocTu"]}' \
    > test.out 2>&1
eval_tap $? 31 'PublicBulkRemoveMyItems' test.out

#- 32 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'rFcATA2H' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"id": "E1MAnBrq", "qty": 78}, {"id": "jiZvf1aU", "qty": 47}, {"id": "AGigQbWJ", "qty": 90}], "srcInventoryId": "43Rnzx3B"}' \
    > test.out 2>&1
eval_tap $? 32 'PublicMoveMyItems' test.out

#- 33 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'Tf7qegmd' \
    --itemId 'ovmR24mS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'PublicGetItem' test.out

#- 34 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId '4JV8UvkH' \
    --itemId 'sOPTfqEM' \
    --namespace $AB_NAMESPACE \
    --body '{"qty": 75}' \
    > test.out 2>&1
eval_tap $? 34 'PublicConsumeMyItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE