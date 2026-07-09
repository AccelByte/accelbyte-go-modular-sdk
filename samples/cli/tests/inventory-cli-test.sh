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
    --limit '23' \
    --offset '24' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 3 'AdminListIntegrationConfigurations' test.out

#- 4 AdminCreateIntegrationConfiguration
samples/cli/sample-apps Inventory adminCreateIntegrationConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["mWKBbsOe", "jSIdHxla", "EaPbphFl"], "serviceName": "LAeLvzEI", "targetInventoryCode": "x2KBu1Gq"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateIntegrationConfiguration' test.out

#- 5 AdminUpdateIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateIntegrationConfiguration \
    --integrationConfigurationId 'kfsdwMSU' \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["s3gD879z", "e7ds5KiL", "xI2jImFE"], "serviceName": "fW3Jp6Sk", "targetInventoryCode": "M6201Yor"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateIntegrationConfiguration' test.out

#- 6 AdminUpdateStatusIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateStatusIntegrationConfiguration \
    --integrationConfigurationId 'XUDIunB1' \
    --namespace $AB_NAMESPACE \
    --body '{"status": "TIED"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateStatusIntegrationConfiguration' test.out

#- 7 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'h2DOUXAB' \
    --limit '96' \
    --offset '53' \
    --sortBy 'updatedAt:asc' \
    --userId 'Ovdi1WX6' \
    > test.out 2>&1
eval_tap $? 7 'AdminListInventories' test.out

#- 8 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "5wCfTQIq", "userId": "JQWQ5Cd3"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateInventory' test.out

#- 9 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'f70ud5Mm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventory' test.out

#- 10 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'tYXgh7kc' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 89}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateInventory' test.out

#- 11 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'QAvBcrmV' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "YrSHiVX0"}' \
    > test.out 2>&1
eval_tap $? 11 'DeleteInventory' test.out

#- 12 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'y7MlDQii' \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '65' \
    --sortBy 'createdAt:asc' \
    --sourceItemId 'RDnvh0Un' \
    --tags 'Q3Z168uE' \
    > test.out 2>&1
eval_tap $? 12 'AdminListItems' test.out

#- 13 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'AnXI8Gyd' \
    --namespace $AB_NAMESPACE \
    --slotId 'UvXH5XnP' \
    --sourceItemId 'zIfIrd74' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetInventoryItem' test.out

#- 14 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'dHioTOH1' \
    --limit '64' \
    --offset '71' \
    --sortBy 'code:desc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListInventoryConfigurations' test.out

#- 15 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "QM3yd6jR", "description": "y20iUwDm", "initialMaxSlots": 76, "maxInstancesPerUser": 45, "maxUpgradeSlots": 72, "name": "FYOORxsT"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateInventoryConfiguration' test.out

#- 16 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'CSIxhmMa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetInventoryConfiguration' test.out

#- 17 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'u0Mb85Ic' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Yqa8M08p", "description": "OEcVfGeB", "initialMaxSlots": 41, "maxInstancesPerUser": 95, "maxUpgradeSlots": 82, "name": "fGhipRTy"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateInventoryConfiguration' test.out

#- 18 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'M65yk2mr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteInventoryConfiguration' test.out

#- 19 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '88' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 19 'AdminListItemTypes' test.out

#- 20 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "VNGZzI1r"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateItemType' test.out

#- 21 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'b2EJiqrn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminDeleteItemType' test.out

#- 22 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '28' \
    --owner 'gilETd4l' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 22 'AdminListTags' test.out

#- 23 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "AZ1zklRB", "owner": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateTag' test.out

#- 24 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'cVZR0GY6' \
    > test.out 2>&1
eval_tap $? 24 'AdminDeleteTag' test.out

#- 25 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId '1rzaMDY4' \
    --namespace $AB_NAMESPACE \
    --userId 'wqxT2CSH' \
    --dateRangeValidation 'MJdBQeQD' \
    --body '{"options": ["elpG0sOa", "MsgzPocA", "9BhV58Ti"], "qty": 68, "slotId": "AiKmlJyR", "sourceItemId": "H97r0tAb"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminConsumeUserItem' test.out

#- 26 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'jwqoPGZ8' \
    --namespace $AB_NAMESPACE \
    --userId 'AMQlf3C5' \
    --body '[{"customAttributes": {"N9MqDfkz": {}, "OTGTY2JO": {}, "PRDyBhlf": {}}, "serverCustomAttributes": {"ayJACuY9": {}, "uPaEMGhN": {}, "egSIDsmp": {}}, "slotId": "PnX3CtAp", "sourceItemId": "7x7K7age", "tags": ["gKZ6fjC7", "qDFzuama", "YtPPbvLI"], "type": "4B57x6FL"}, {"customAttributes": {"eyamKljF": {}, "Bu1e7I8R": {}, "oqKGAEOF": {}}, "serverCustomAttributes": {"aUqC6Ugq": {}, "kYtVEi1m": {}, "Z7TGFUYi": {}}, "slotId": "uxjHAAYu", "sourceItemId": "b2mc0gGb", "tags": ["5VoqDZSX", "LFtevgLM", "JXSqzH2Y"], "type": "rzXoN6cx"}, {"customAttributes": {"diOvRsDf": {}, "XWJ2Cjep": {}, "jS7Wh2Mf": {}}, "serverCustomAttributes": {"gozZYF9B": {}, "BiLxSEIB": {}, "odmlAU1X": {}}, "slotId": "R6lEh9Ud", "sourceItemId": "cru6SPBh", "tags": ["oFM4Wgxi", "CZpIc3zM", "bsPjtL3N"], "type": "X3JAa8x6"}]' \
    > test.out 2>&1
eval_tap $? 26 'AdminBulkUpdateMyItems' test.out

#- 27 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId '7bCcijVI' \
    --namespace $AB_NAMESPACE \
    --userId 'UbpFiO4X' \
    --body '{"customAttributes": {"0HwZQARO": {}, "EQayUYU8": {}, "wmGTgXh9": {}}, "qty": 61, "serverCustomAttributes": {"CJVT0Hyp": {}, "PWAQ049i": {}, "knMYf4uB": {}}, "slotId": "9jwWIeOY", "slotUsed": 65, "source": "OTHER", "sourceItemId": "Qfnt3VZ2", "tags": ["wD66CHit", "vIyJPjwT", "qVfw9SR0"], "type": "XAGTJBwd"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminSaveItemToInventory' test.out

#- 28 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId '8GoAm11q' \
    --namespace $AB_NAMESPACE \
    --userId 'W0HTe2kx' \
    --body '[{"slotId": "bzRTApvk", "sourceItemId": "TMeN7Uj2"}, {"slotId": "noYehQXO", "sourceItemId": "hZ4Qz53s"}, {"slotId": "hDEGiL4K", "sourceItemId": "q1HEk35X"}]' \
    > test.out 2>&1
eval_tap $? 28 'AdminBulkRemoveItems' test.out

#- 29 AdminBulkSaveItemToInventory
samples/cli/sample-apps Inventory adminBulkSaveItemToInventory \
    --inventoryId 'Gs24lHoR' \
    --namespace $AB_NAMESPACE \
    --userId 'PS6S1jCG' \
    --body '[{"customAttributes": {"1LuEm3AB": {}, "bEYI1dBz": {}, "W2QJjxtr": {}}, "qty": 37, "serverCustomAttributes": {"G4AsEoOQ": {}, "8z0g4M8B": {}, "ljJ2Hr06": {}}, "slotId": "VlCXJOin", "slotUsed": 68, "source": "ECOMMERCE", "sourceItemId": "cSirYBiB", "tags": ["0V1CbzbR", "0glMxqdr", "GgpPspFI"], "type": "4ohWu5ZM"}, {"customAttributes": {"qEDXL6BO": {}, "hN1XDmD1": {}, "HaGZf2vq": {}}, "qty": 89, "serverCustomAttributes": {"HFSNP6aZ": {}, "zhQfgpRG": {}, "B5KQa1fq": {}}, "slotId": "bzPrSrJN", "slotUsed": 73, "source": "ECOMMERCE", "sourceItemId": "mJvtlUG2", "tags": ["QgJR6TlD", "j3zPYkXC", "0BLec908"], "type": "cMpiZI67"}, {"customAttributes": {"09lbc99O": {}, "hFeIBccv": {}, "H4B7GK6Y": {}}, "qty": 49, "serverCustomAttributes": {"6gujLHV2": {}, "rsnkROPw": {}, "4OfG9cYk": {}}, "slotId": "0stbha8X", "slotUsed": 59, "source": "ECOMMERCE", "sourceItemId": "xtn7coAD", "tags": ["q7tFeiwr", "UILJQdtF", "i6lIMv4B"], "type": "70gTYqXu"}]' \
    > test.out 2>&1
eval_tap $? 29 'AdminBulkSaveItemToInventory' test.out

#- 30 AdminUpdateUserInventoriesByInventoryCode
samples/cli/sample-apps Inventory adminUpdateUserInventoriesByInventoryCode \
    --inventoryConfigurationCode 'pV9EDxvK' \
    --namespace $AB_NAMESPACE \
    --userId 'KQhL0pjj' \
    --body '{"incMaxSlots": 28}' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateUserInventoriesByInventoryCode' test.out

#- 31 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'usGUshPE' \
    --body '{"customAttributes": {"VdCFivph": {}, "FzkreuEh": {}, "1pH9s3y5": {}}, "inventoryConfigurationCode": "QEOEBejt", "qty": 95, "serverCustomAttributes": {"oE9OVPbO": {}, "uRTx8AGn": {}, "s6Sr7bdz": {}}, "slotId": "fq5aL97w", "slotUsed": 1, "source": "OTHER", "sourceItemId": "6wCtYqHu", "tags": ["hNVCqVPS", "FOMSylMn", "vlnl4Qig"], "type": "rzg9gyCs"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminSaveItem' test.out

#- 32 AdminBulkSaveItem
samples/cli/sample-apps Inventory adminBulkSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'Yyc5EL00' \
    --body '[{"customAttributes": {"FKzWTnKI": {}, "0qglqgS5": {}, "71jjQVV6": {}}, "inventoryConfigurationCode": "2T5MfZUc", "qty": 90, "serverCustomAttributes": {"ibiFueI9": {}, "6UBpoCcG": {}, "DtTDPYo6": {}}, "slotId": "Ax9fOjoH", "slotUsed": 64, "source": "OTHER", "sourceItemId": "RMNZg6dR", "tags": ["zkyuNDP5", "RTN0BpwR", "YHOuO23V"], "type": "7oUwdu5v"}, {"customAttributes": {"twsC2W8z": {}, "UsGfCNri": {}, "zasWcj9y": {}}, "inventoryConfigurationCode": "TnhgAiVS", "qty": 57, "serverCustomAttributes": {"kNvXivqj": {}, "Hyc6tZg1": {}, "QXto7gSd": {}}, "slotId": "fCU3VK86", "slotUsed": 80, "source": "ECOMMERCE", "sourceItemId": "3OSEvMV2", "tags": ["C6DW5m5H", "YLdikrco", "1KaeCqv7"], "type": "QnCFuE5U"}, {"customAttributes": {"27PPnYHc": {}, "Z1VpmuCx": {}, "O0FdAKVO": {}}, "inventoryConfigurationCode": "Wu1nT97c", "qty": 39, "serverCustomAttributes": {"FgKPmCyR": {}, "mdb9FSJB": {}, "lTjZFZUO": {}}, "slotId": "W2dmuKfF", "slotUsed": 29, "source": "ECOMMERCE", "sourceItemId": "mgDVibFl", "tags": ["9cIIBxYq", "PrtUCdHi", "qXrAHxVa"], "type": "N0gsovgL"}]' \
    > test.out 2>&1
eval_tap $? 32 'AdminBulkSaveItem' test.out

#- 33 AdminSyncUserEntitlements
samples/cli/sample-apps Inventory adminSyncUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'GIj8qiBi' \
    > test.out 2>&1
eval_tap $? 33 'AdminSyncUserEntitlements' test.out

#- 34 AdminPurchasable
samples/cli/sample-apps Inventory adminPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'jf2PYMNV' \
    --body '{"entitlementType": "Tzs360L3", "inventoryConfig": {"slotUsed": 88}, "itemId": "a2IrJZT7", "itemType": "F6zYTb26", "items": [{"bundledQty": 37, "entitlementType": "Ozz5Ml2Q", "inventoryConfig": {"slotUsed": 35}, "itemId": "xG0bD8P9", "itemType": "kcWAquBe", "sku": "VRDNgIzE", "stackable": true, "useCount": 40}, {"bundledQty": 28, "entitlementType": "rJFPE6lt", "inventoryConfig": {"slotUsed": 21}, "itemId": "inhrXIKW", "itemType": "2L0pxzmv", "sku": "KanRR5Bm", "stackable": true, "useCount": 98}, {"bundledQty": 32, "entitlementType": "Lk7OYZR9", "inventoryConfig": {"slotUsed": 6}, "itemId": "AF6BEhE8", "itemType": "b3J4VUdn", "sku": "folEKMjC", "stackable": false, "useCount": 7}], "quantity": 20, "sku": "HBxcmYSQ", "stackable": false, "useCount": 47}' \
    > test.out 2>&1
eval_tap $? 34 'AdminPurchasable' test.out

#- 35 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'Q1oZQ1iu' \
    --limit '59' \
    --offset '89' \
    --sortBy 'code' \
    > test.out 2>&1
eval_tap $? 35 'PublicListInventoryConfigurations' test.out

#- 36 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '59' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 36 'PublicListItemTypes' test.out

#- 37 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '32' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 37 'PublicListTags' test.out

#- 38 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'HyNhiZCc' \
    --limit '44' \
    --offset '63' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 38 'PublicListInventories' test.out

#- 39 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'WIYZ1v6V' \
    --namespace $AB_NAMESPACE \
    --body '{"options": ["FFVknxWZ", "0sdKhiem", "nOs6JDtC"], "qty": 93, "slotId": "MGOt2dxT", "sourceItemId": "1yiIuZro"}' \
    > test.out 2>&1
eval_tap $? 39 'PublicConsumeMyItem' test.out

#- 40 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'HuIKMWSL' \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '89' \
    --sortBy 'createdAt' \
    --sourceItemId 'y5dDYOIR' \
    --tags 'OHu9mFZN' \
    > test.out 2>&1
eval_tap $? 40 'PublicListItems' test.out

#- 41 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'BrgiBXkX' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"vQzGa3jE": {}, "iXQwVxaq": {}, "cdjmRCdG": {}}, "slotId": "5yGsAApo", "sourceItemId": "CIZdJnmB", "tags": ["Kt4aNjaG", "lHs8kMbG", "RhRUyA8K"]}, {"customAttributes": {"3FMVD8Fn": {}, "q9oMW4Nw": {}, "ift4bf1n": {}}, "slotId": "8MBbvzXn", "sourceItemId": "hwF0WuOt", "tags": ["BWVQK4X1", "RkYkkQ3t", "21eB8IF8"]}, {"customAttributes": {"Z8tJn3J4": {}, "s930yfc0": {}, "2Gql9wDQ": {}}, "slotId": "Jv9JNA52", "sourceItemId": "E0yEH05d", "tags": ["AikCzVrZ", "Fndt30Az", "K4bsyrBa"]}]' \
    > test.out 2>&1
eval_tap $? 41 'PublicBulkUpdateMyItems' test.out

#- 42 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId '6PZWUlsY' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "bAZBCBuz", "sourceItemId": "Lrk9y7Vp"}, {"slotId": "yZRgaGtt", "sourceItemId": "4GKdKAcz"}, {"slotId": "9s5NBbk4", "sourceItemId": "feoLVsZJ"}]' \
    > test.out 2>&1
eval_tap $? 42 'PublicBulkRemoveMyItems' test.out

#- 43 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'smYqVQv1' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 87, "slotId": "cZn92PNm", "sourceItemId": "fVfrCSK6"}, {"qty": 64, "slotId": "OK2spjzr", "sourceItemId": "IaL1MWjy"}, {"qty": 58, "slotId": "TBSCpLQa", "sourceItemId": "FI1syZEw"}], "srcInventoryId": "0u7KuKxo"}' \
    > test.out 2>&1
eval_tap $? 43 'PublicMoveMyItems' test.out

#- 44 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId '5PyNwwLf' \
    --namespace $AB_NAMESPACE \
    --slotId 'EMrxBoZr' \
    --sourceItemId 'tuuN6Ocq' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE