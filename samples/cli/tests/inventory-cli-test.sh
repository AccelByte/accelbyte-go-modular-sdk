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
    --body '{"message": "eoIeeymJ", "operations": [{"consumeItems": [{"dateRangeValidation": true, "inventoryId": "1aOWcQoO", "options": ["FLCilDR8", "ghMbzJzp", "NQDlue1q"], "qty": 59, "slotId": "67ttsaoo", "sourceItemId": "bCKiCiz7"}, {"dateRangeValidation": false, "inventoryId": "UdiD8Y4z", "options": ["sNgA4tpm", "qO532vYI", "FaFHbyAq"], "qty": 60, "slotId": "CYmRdoLK", "sourceItemId": "HkwVltNQ"}, {"dateRangeValidation": true, "inventoryId": "gMhfldsh", "options": ["rg6VYxMM", "QpsIaa8C", "P5jffRXy"], "qty": 45, "slotId": "p2CtCINF", "sourceItemId": "Kvm5tp5s"}], "createItems": [{"customAttributes": {"rlqVMcsw": {}, "dazBw43s": {}, "ZBqhSZrX": {}}, "inventoryConfigurationCode": "vsT069NB", "inventoryId": "JF38jriJ", "qty": 85, "serverCustomAttributes": {"XjuJ7AJ5": {}, "HbIEFyXO": {}, "Q6ts3DHl": {}}, "slotId": "3TnjWkj4", "slotUsed": 19, "source": "OTHER", "sourceItemId": "CrTwTlf2", "tags": ["Shxo70Ai", "nfsXvhCn", "hHsPZV5z"], "toSpecificInventory": true, "type": "HdfuuYhq"}, {"customAttributes": {"RgrNj4RM": {}, "YRotWdIa": {}, "cxD3H5GS": {}}, "inventoryConfigurationCode": "C0dQSxdY", "inventoryId": "niA2JlYD", "qty": 90, "serverCustomAttributes": {"Y5jSOeyF": {}, "1GZCuvkT": {}, "rhmeeMJQ": {}}, "slotId": "3WBmn6hT", "slotUsed": 25, "source": "OTHER", "sourceItemId": "kugwsC7j", "tags": ["InSKpYxZ", "x0btLkJK", "sjEn74wh"], "toSpecificInventory": true, "type": "iMVRGb8c"}, {"customAttributes": {"Fwm3LplI": {}, "EmI78QD4": {}, "VrQ7sow9": {}}, "inventoryConfigurationCode": "s9YYyGxe", "inventoryId": "oictIjoD", "qty": 58, "serverCustomAttributes": {"HIf7mFap": {}, "M7ZVbN5X": {}, "ahNGPPMK": {}}, "slotId": "uMz1w5J3", "slotUsed": 73, "source": "OTHER", "sourceItemId": "7pArYGHq", "tags": ["B5hO9JGh", "6Zkjd7Jw", "9vnpIKtv"], "toSpecificInventory": true, "type": "ldBkeIsT"}], "removeItems": [{"inventoryId": "VlauJIHy", "slotId": "LpcO99Tz", "sourceItemId": "n7BqJdf5"}, {"inventoryId": "ZZrd3EZD", "slotId": "DVQDGCfj", "sourceItemId": "Uj419m9l"}, {"inventoryId": "T74E8hsm", "slotId": "801UZmES", "sourceItemId": "tQC7ojRY"}], "targetUserId": "DkXfVaBe", "updateItems": [{"customAttributes": {"OVBM8f70": {}, "y4Vp6cd3": {}, "WxFHa2qP": {}}, "inventoryId": "BKfnDWUz", "serverCustomAttributes": {"aFwLuNV4": {}, "l7Os3mE7": {}, "vCuuuFGo": {}}, "slotId": "8vVNijr0", "sourceItemId": "Z9xeCXwR", "tags": ["px1JqgK1", "66I2e6vy", "cO9Lg6Sf"], "type": "VmDSaIwR"}, {"customAttributes": {"pOqmoQwa": {}, "BUZe7cPR": {}, "11Np42NK": {}}, "inventoryId": "uoK0tPNC", "serverCustomAttributes": {"WzbB0FLc": {}, "aUsKp67I": {}, "OveI3vja": {}}, "slotId": "vLNfwdO6", "sourceItemId": "CiGYgSyG", "tags": ["hAmdMpFK", "zdHrN48F", "oxyAAqGw"], "type": "L0vGpr4w"}, {"customAttributes": {"AJAkQ3se": {}, "6JyEfUfS": {}, "jpRorLlU": {}}, "inventoryId": "IHEXJ1KX", "serverCustomAttributes": {"TmKrghFF": {}, "QCJx7Zc6": {}, "4nngKXgl": {}}, "slotId": "8GRr4Xf3", "sourceItemId": "rJLH60mL", "tags": ["lvLtw7tg", "H0yQBNTM", "KnIW4rCQ"], "type": "jGFz7caf"}]}, {"consumeItems": [{"dateRangeValidation": true, "inventoryId": "6Xr9nAYg", "options": ["EGgfAyL2", "72UosnPs", "RGZNy9Ow"], "qty": 33, "slotId": "xWUU4oPN", "sourceItemId": "Wwrxko2l"}, {"dateRangeValidation": false, "inventoryId": "FFKmDErR", "options": ["BEndr3Uq", "8EVwUaUH", "PQGWSbB5"], "qty": 96, "slotId": "q4BHtVYV", "sourceItemId": "vyKq11wa"}, {"dateRangeValidation": true, "inventoryId": "vaDtd3ja", "options": ["1496j09L", "LAXPgJix", "tmkIWG2S"], "qty": 8, "slotId": "D6DtmxIy", "sourceItemId": "zo0u6UOJ"}], "createItems": [{"customAttributes": {"qqXFCYEE": {}, "Uzh8MT9i": {}, "gPKxiGeE": {}}, "inventoryConfigurationCode": "w2NX3viX", "inventoryId": "yNeYpOFd", "qty": 55, "serverCustomAttributes": {"wHpGw3dt": {}, "720cRiJh": {}, "ytBwQ2sB": {}}, "slotId": "5FOSwbZM", "slotUsed": 10, "source": "OTHER", "sourceItemId": "3wXGEAtm", "tags": ["hnH8X3i7", "JEzxYM7a", "mDaKIN0A"], "toSpecificInventory": false, "type": "tlYtOYbY"}, {"customAttributes": {"xbzLIaL1": {}, "J2590lai": {}, "z4Sb6OH5": {}}, "inventoryConfigurationCode": "dGXP1MEE", "inventoryId": "7BFAgbDu", "qty": 55, "serverCustomAttributes": {"z1YIsiAD": {}, "pG6G7eVJ": {}, "twRYgyGN": {}}, "slotId": "w6KYMAGS", "slotUsed": 25, "source": "OTHER", "sourceItemId": "EqglZPiM", "tags": ["FazkvnWW", "8kfC4xxq", "J1PYyJL7"], "toSpecificInventory": false, "type": "SLCJT0G1"}, {"customAttributes": {"UjfoE5sD": {}, "kgNoon92": {}, "v8v6w8jY": {}}, "inventoryConfigurationCode": "GiC2oujE", "inventoryId": "sj5wdXyw", "qty": 82, "serverCustomAttributes": {"7PQdytYp": {}, "3cIrMYpb": {}, "iOkWrUgD": {}}, "slotId": "G87HGdcg", "slotUsed": 30, "source": "OTHER", "sourceItemId": "LJZoGmmy", "tags": ["Urq03TKJ", "CfOptGkp", "HxBvcga7"], "toSpecificInventory": false, "type": "3RvLP5sy"}], "removeItems": [{"inventoryId": "qU26TAug", "slotId": "N04C9wOs", "sourceItemId": "BqgxjTF4"}, {"inventoryId": "hSMAu7eA", "slotId": "8IAds5Cn", "sourceItemId": "387Qxedo"}, {"inventoryId": "ue3NiM9f", "slotId": "br1b3hFi", "sourceItemId": "skQlRc96"}], "targetUserId": "1tcrkUml", "updateItems": [{"customAttributes": {"wjtYMytm": {}, "0njbgjnQ": {}, "GUGHz1sl": {}}, "inventoryId": "XTNSwRCp", "serverCustomAttributes": {"erx5HtHF": {}, "832Bnpg6": {}, "MkeevMj3": {}}, "slotId": "oXPq22Ce", "sourceItemId": "LXgBaw4n", "tags": ["ISYk7BOK", "TmFq9I1N", "3RwD2MwP"], "type": "5r5pClbf"}, {"customAttributes": {"Icu8FmXz": {}, "e0NhZgKW": {}, "4rQRzSeP": {}}, "inventoryId": "HDEA4AjO", "serverCustomAttributes": {"g9xxwdOp": {}, "tuEkWJgq": {}, "mWD71n1F": {}}, "slotId": "XGHhI2Od", "sourceItemId": "V8vuszSI", "tags": ["t1eBbIpo", "3D49iEzT", "4ZurD0Em"], "type": "5402OIsA"}, {"customAttributes": {"MZB1oOo3": {}, "DlmOLj1o": {}, "k9hnoMru": {}}, "inventoryId": "PImuTrLQ", "serverCustomAttributes": {"7xUBUcDQ": {}, "pxuZF4FE": {}, "tcxscJdR": {}}, "slotId": "38vmObls", "sourceItemId": "kXRdOkiT", "tags": ["yQsf3MTy", "nXy51lZN", "mGcwGiSf"], "type": "KnNJSNWC"}]}, {"consumeItems": [{"dateRangeValidation": false, "inventoryId": "BhAN2JyJ", "options": ["9pi91yiu", "uBFsVQoD", "eEvpyG4x"], "qty": 98, "slotId": "hn5x8BVD", "sourceItemId": "JnvuGaPy"}, {"dateRangeValidation": false, "inventoryId": "tdhijDVI", "options": ["LbUUSqiq", "bDdZeMC6", "NWNChBTM"], "qty": 100, "slotId": "liqytoaT", "sourceItemId": "JYCG2xVo"}, {"dateRangeValidation": false, "inventoryId": "WEKc4Urt", "options": ["FDF0V5CJ", "5CAJe3MJ", "hPjIQaFk"], "qty": 48, "slotId": "lJRUB5cj", "sourceItemId": "3WkM4kg1"}], "createItems": [{"customAttributes": {"EBJx4lsz": {}, "HPhoROXe": {}, "KflxLWJY": {}}, "inventoryConfigurationCode": "LrYxLben", "inventoryId": "3gnBTaxP", "qty": 3, "serverCustomAttributes": {"6uhETJ5U": {}, "PPYsQrg7": {}, "5EHcFhV8": {}}, "slotId": "80UnC9RW", "slotUsed": 64, "source": "ECOMMERCE", "sourceItemId": "qWDXiyjQ", "tags": ["C68tKKkg", "HKYqVBcf", "4ob84BGx"], "toSpecificInventory": false, "type": "NATHBnY4"}, {"customAttributes": {"hHhcyyXK": {}, "vk7SO2iS": {}, "w80jWqSW": {}}, "inventoryConfigurationCode": "MvVtXAlh", "inventoryId": "le4xnPKP", "qty": 92, "serverCustomAttributes": {"JB9kqxRk": {}, "SlODETNm": {}, "esMJJasb": {}}, "slotId": "jFX4Zzuu", "slotUsed": 0, "source": "ECOMMERCE", "sourceItemId": "yvkKArug", "tags": ["eVYCtCAm", "RG8V7g34", "LQEqzIvL"], "toSpecificInventory": true, "type": "f4KGt4ze"}, {"customAttributes": {"USzKVz2F": {}, "qXx9TISj": {}, "iCJ9auum": {}}, "inventoryConfigurationCode": "8uyvXi3Z", "inventoryId": "ShXpvNhE", "qty": 2, "serverCustomAttributes": {"3Q2TQhDP": {}, "yVK7LLGE": {}, "wfDMEUfe": {}}, "slotId": "j4weRZVv", "slotUsed": 79, "source": "OTHER", "sourceItemId": "HwALPEjL", "tags": ["oXgKGAxA", "Z8yoWN8O", "It2kRr2O"], "toSpecificInventory": true, "type": "pg3N4ub0"}], "removeItems": [{"inventoryId": "7dtpuiul", "slotId": "yzyrC6nd", "sourceItemId": "GPe3jILe"}, {"inventoryId": "1P4asfpt", "slotId": "URS0X5X7", "sourceItemId": "7MFTYZbC"}, {"inventoryId": "Fnh1wsSb", "slotId": "siiVpbfX", "sourceItemId": "x5cCTA91"}], "targetUserId": "IUCBcPb4", "updateItems": [{"customAttributes": {"2CMlkzhJ": {}, "OpzmjVXL": {}, "BHkR3eyJ": {}}, "inventoryId": "96L6VDv7", "serverCustomAttributes": {"8HQw3S8U": {}, "DKgPyOY4": {}, "633P86Ft": {}}, "slotId": "T6gi9Km1", "sourceItemId": "BT0FHwwk", "tags": ["eBFuPdyk", "5K1JisNo", "Go1LzkeY"], "type": "6dI0QrwE"}, {"customAttributes": {"kzC1ZzzT": {}, "tpl5bh5T": {}, "MbWQmOnA": {}}, "inventoryId": "Mkyyx2fX", "serverCustomAttributes": {"va73B0k6": {}, "V2xueszQ": {}, "WZSQrzrQ": {}}, "slotId": "mx9CbjEx", "sourceItemId": "G87Qpjog", "tags": ["Y1imJvSO", "pXS7X86q", "504CyxKM"], "type": "JBfCxBOV"}, {"customAttributes": {"n0TaqPLi": {}, "YNv9Xnol": {}, "A0MTQBl4": {}}, "inventoryId": "gRgZDQ0j", "serverCustomAttributes": {"MJvwfLWg": {}, "LsjEvQ8R": {}, "wWugXGaA": {}}, "slotId": "d87QTlRl", "sourceItemId": "3mYoyW7F", "tags": ["eCaP3jvb", "fZzqo3Nl", "QpGE2Pfw"], "type": "wRPntmxq"}]}], "requestId": "fLDDv9Zt"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListIntegrationConfigurations
samples/cli/sample-apps Inventory adminListIntegrationConfigurations \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '5' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 3 'AdminListIntegrationConfigurations' test.out

#- 4 AdminCreateIntegrationConfiguration
samples/cli/sample-apps Inventory adminCreateIntegrationConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["yEGVCRqN", "nEObaWr0", "MRF9MUOo"], "serviceName": "CrafI1pw", "targetInventoryCode": "JBVRVDN1"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateIntegrationConfiguration' test.out

#- 5 AdminUpdateIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateIntegrationConfiguration \
    --integrationConfigurationId 'Eh2kB4t9' \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["xJdSNyw1", "nWTl3xzf", "9GOqMR9C"], "serviceName": "lYPphJtM", "targetInventoryCode": "8iMmJ9FH"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateIntegrationConfiguration' test.out

#- 6 AdminUpdateStatusIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateStatusIntegrationConfiguration \
    --integrationConfigurationId 'IQYSwBPS' \
    --namespace $AB_NAMESPACE \
    --body '{"status": "INIT"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateStatusIntegrationConfiguration' test.out

#- 7 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'Cwhowm1e' \
    --limit '47' \
    --offset '40' \
    --sortBy 'updatedAt:desc' \
    --userId '7IRJ8wV5' \
    > test.out 2>&1
eval_tap $? 7 'AdminListInventories' test.out

#- 8 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "iKKyR96M", "userId": "6FpnGhlN"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateInventory' test.out

#- 9 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'sTBT5y6p' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventory' test.out

#- 10 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'T9NA6d4w' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 3}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateInventory' test.out

#- 11 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'bvrPo07u' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "RxYOOdEQ"}' \
    > test.out 2>&1
eval_tap $? 11 'DeleteInventory' test.out

#- 12 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId '7J4Z4p4Q' \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '100' \
    --sortBy 'createdAt:desc' \
    --sourceItemId 'u4PtVRCl' \
    --tags 'xyGNkCfg' \
    > test.out 2>&1
eval_tap $? 12 'AdminListItems' test.out

#- 13 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'luyPkFmk' \
    --namespace $AB_NAMESPACE \
    --slotId 'UbA5lEv6' \
    --sourceItemId 'FCRQ7Z3h' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetInventoryItem' test.out

#- 14 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'JwaSYQy5' \
    --limit '30' \
    --offset '4' \
    --sortBy 'code' \
    > test.out 2>&1
eval_tap $? 14 'AdminListInventoryConfigurations' test.out

#- 15 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "jEggNLe2", "description": "wRejC6ab", "initialMaxSlots": 1, "maxInstancesPerUser": 87, "maxUpgradeSlots": 14, "name": "nUnOWL6K"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateInventoryConfiguration' test.out

#- 16 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'agAPky15' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetInventoryConfiguration' test.out

#- 17 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId '9RQQiNwy' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "ZgMdOUvh", "description": "yCo8cK6z", "initialMaxSlots": 39, "maxInstancesPerUser": 95, "maxUpgradeSlots": 49, "name": "fnKmjbLf"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateInventoryConfiguration' test.out

#- 18 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId '5fVkRCdy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteInventoryConfiguration' test.out

#- 19 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '41' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 19 'AdminListItemTypes' test.out

#- 20 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "d0Ly4sWc"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateItemType' test.out

#- 21 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'wSPK74Nl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminDeleteItemType' test.out

#- 22 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '54' \
    --owner '0brsxWOi' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 22 'AdminListTags' test.out

#- 23 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "1Ym6apjM", "owner": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateTag' test.out

#- 24 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'XzJYVdq3' \
    > test.out 2>&1
eval_tap $? 24 'AdminDeleteTag' test.out

#- 25 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'UoEloP3i' \
    --namespace $AB_NAMESPACE \
    --userId 'QICaL5pz' \
    --dateRangeValidation 'JEuRibyM' \
    --body '{"options": ["Si7tTB2z", "QkXNMlas", "MB6NarfS"], "qty": 65, "slotId": "2hDYUwwF", "sourceItemId": "w0pKifFn"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminConsumeUserItem' test.out

#- 26 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'L50POSLV' \
    --namespace $AB_NAMESPACE \
    --userId 'ap2ii7f5' \
    --body '[{"customAttributes": {"omVwIZd6": {}, "o2H9kAFU": {}, "DaYlgB7F": {}}, "serverCustomAttributes": {"OjVNGpAf": {}, "4NhIClne": {}, "VW8u4EOt": {}}, "slotId": "FGqBjFmE", "sourceItemId": "QA6x81ZY", "tags": ["cqAC8Q2M", "QjEeYxS7", "LacBnnBT"], "type": "GEE6TuZk"}, {"customAttributes": {"Hn8Zy6Hf": {}, "L29QVAkT": {}, "1iaRM6Fe": {}}, "serverCustomAttributes": {"7SfTYvM1": {}, "IGirZ1RF": {}, "r7E2NxKk": {}}, "slotId": "tZ1nZ9xb", "sourceItemId": "KanPIYID", "tags": ["57kVxynl", "NUHE6CHC", "vwd9y7rU"], "type": "rTQr8mcy"}, {"customAttributes": {"LL9Q9WsK": {}, "Pr99Ao05": {}, "uzWiKaWN": {}}, "serverCustomAttributes": {"kGaSuM6D": {}, "EdetstEU": {}, "vtjGG3Ph": {}}, "slotId": "3pDCFBxx", "sourceItemId": "3Qv5HmVV", "tags": ["MUGSXhsi", "FV28HsOY", "MLs1uSUA"], "type": "Q77W4DqY"}]' \
    > test.out 2>&1
eval_tap $? 26 'AdminBulkUpdateMyItems' test.out

#- 27 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'wVuuOYLV' \
    --namespace $AB_NAMESPACE \
    --userId '7T33As7D' \
    --body '{"customAttributes": {"PhxBEZYj": {}, "r3rUeIyP": {}, "ta1gBgZr": {}}, "qty": 29, "serverCustomAttributes": {"2LJmiz6T": {}, "WkmRoqhF": {}, "V7uYudGU": {}}, "slotId": "qYlKerHi", "slotUsed": 13, "source": "OTHER", "sourceItemId": "cqDQl4az", "tags": ["8VxSrNuR", "Wfodk6Ak", "bTxPJxbp"], "type": "CKPdyjHu"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminSaveItemToInventory' test.out

#- 28 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'M3Lenlrc' \
    --namespace $AB_NAMESPACE \
    --userId 'ucKvMwqH' \
    --body '[{"slotId": "dKdEbqp3", "sourceItemId": "EyNTZy1e"}, {"slotId": "RPDcaPye", "sourceItemId": "djk14CSN"}, {"slotId": "7Dtjx1VB", "sourceItemId": "R5cJ0xO2"}]' \
    > test.out 2>&1
eval_tap $? 28 'AdminBulkRemoveItems' test.out

#- 29 AdminBulkSaveItemToInventory
samples/cli/sample-apps Inventory adminBulkSaveItemToInventory \
    --inventoryId 'q7XevvU3' \
    --namespace $AB_NAMESPACE \
    --userId '2nPB7dEx' \
    --body '[{"customAttributes": {"jDMBG4Tc": {}, "fZ6AtozE": {}, "Gzur35mY": {}}, "qty": 67, "serverCustomAttributes": {"Fex4umnx": {}, "RdpPjzuW": {}, "12def7wU": {}}, "slotId": "6yfimQfB", "slotUsed": 86, "source": "ECOMMERCE", "sourceItemId": "t8NRklus", "tags": ["SVkhcbFz", "GmpxfLoY", "NfEK4c7G"], "type": "HFTPmlYb"}, {"customAttributes": {"DBMKUYJ4": {}, "YWjGfuV4": {}, "yqvBsS4r": {}}, "qty": 39, "serverCustomAttributes": {"L5lIv9MB": {}, "8PbWL6iB": {}, "5WvDKbe6": {}}, "slotId": "u4vBQvgk", "slotUsed": 100, "source": "OTHER", "sourceItemId": "AmlrSwde", "tags": ["mB98nKKV", "sRg7rQF0", "c7ZvM2xj"], "type": "F4uToT9O"}, {"customAttributes": {"uj6dUHF7": {}, "HFo1OI6O": {}, "neKkuxop": {}}, "qty": 55, "serverCustomAttributes": {"iwh3di7q": {}, "UjpAohlw": {}, "xuNEvZDz": {}}, "slotId": "4vpVdpLA", "slotUsed": 37, "source": "ECOMMERCE", "sourceItemId": "pSGQ8gtm", "tags": ["ik0FHMhg", "8LB0sd6J", "c60f6Vhq"], "type": "jgu8n3od"}]' \
    > test.out 2>&1
eval_tap $? 29 'AdminBulkSaveItemToInventory' test.out

#- 30 AdminUpdateUserInventoriesByInventoryCode
samples/cli/sample-apps Inventory adminUpdateUserInventoriesByInventoryCode \
    --inventoryConfigurationCode 'MaizBHzh' \
    --namespace $AB_NAMESPACE \
    --userId 'JMgS7Qde' \
    --body '{"incMaxSlots": 75}' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateUserInventoriesByInventoryCode' test.out

#- 31 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId '4S7XPVTi' \
    --body '{"customAttributes": {"ahlTV3LB": {}, "feYnNTZ0": {}, "U1inBPrZ": {}}, "inventoryConfigurationCode": "VXhix9p0", "qty": 73, "serverCustomAttributes": {"xQCWzrV8": {}, "xIunhZFd": {}, "PvqEvSVs": {}}, "slotId": "zubK9NB8", "slotUsed": 20, "source": "ECOMMERCE", "sourceItemId": "dxYZqpZL", "tags": ["xD7yUV2c", "JmmsxVff", "bwseyrGT"], "type": "V25a2LV3"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminSaveItem' test.out

#- 32 AdminBulkSaveItem
samples/cli/sample-apps Inventory adminBulkSaveItem \
    --namespace $AB_NAMESPACE \
    --userId '2ZxJNqLK' \
    --body '[{"customAttributes": {"JA8x88Hr": {}, "87qihzFu": {}, "cAzFW3mk": {}}, "inventoryConfigurationCode": "VMxZ3kda", "qty": 70, "serverCustomAttributes": {"Aex0meLS": {}, "xFxeBqng": {}, "Rac9aFzz": {}}, "slotId": "zof08Fk0", "slotUsed": 3, "source": "ECOMMERCE", "sourceItemId": "H3dhUUp7", "tags": ["xrAB1YI5", "eGqW3IIJ", "2UQX1cQR"], "type": "IHng1fPp"}, {"customAttributes": {"f6d5bmpL": {}, "EJkA3QnS": {}, "ty9H5u30": {}}, "inventoryConfigurationCode": "8uJR0UOT", "qty": 41, "serverCustomAttributes": {"d20tDdK9": {}, "WT8JPbWo": {}, "wTkQglRW": {}}, "slotId": "WfmGvnwK", "slotUsed": 36, "source": "ECOMMERCE", "sourceItemId": "B86cIld3", "tags": ["KOEIRFa9", "1WrhZjnF", "MsJ9UVu1"], "type": "IxnaN2sT"}, {"customAttributes": {"E0ebSm0n": {}, "VebAPqSS": {}, "gHZYE1xB": {}}, "inventoryConfigurationCode": "YoQW6Xvl", "qty": 16, "serverCustomAttributes": {"yAtMoyoQ": {}, "8bAczYGW": {}, "JKnJigRP": {}}, "slotId": "r8gkNlNv", "slotUsed": 3, "source": "OTHER", "sourceItemId": "CasApRlQ", "tags": ["KNA3Yp7t", "GNUHARRN", "I48ZHkff"], "type": "OVkfSUNn"}]' \
    > test.out 2>&1
eval_tap $? 32 'AdminBulkSaveItem' test.out

#- 33 AdminSyncUserEntitlements
samples/cli/sample-apps Inventory adminSyncUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'S4WYRSio' \
    > test.out 2>&1
eval_tap $? 33 'AdminSyncUserEntitlements' test.out

#- 34 AdminPurchasable
samples/cli/sample-apps Inventory adminPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'HbZrrEVh' \
    --body '{"entitlementType": "RRE2ynGk", "inventoryConfig": {"slotUsed": 31}, "itemId": "dgRheY8J", "itemType": "yTfOj5up", "items": [{"bundledQty": 69, "entitlementType": "qZUfgM1v", "inventoryConfig": {"slotUsed": 41}, "itemId": "54RkghBV", "itemType": "1cXYcvYh", "sku": "sKFpb7Os", "stackable": true, "useCount": 63}, {"bundledQty": 78, "entitlementType": "m6U9s1F3", "inventoryConfig": {"slotUsed": 52}, "itemId": "y1ztoZbC", "itemType": "9rWAhfkX", "sku": "vUbNt5Ki", "stackable": true, "useCount": 82}, {"bundledQty": 58, "entitlementType": "EDx2xkQX", "inventoryConfig": {"slotUsed": 89}, "itemId": "x9w59vWR", "itemType": "w17X9prl", "sku": "0dSip3Hv", "stackable": false, "useCount": 43}], "quantity": 22, "sku": "4Ltg0rOJ", "stackable": true, "useCount": 44}' \
    > test.out 2>&1
eval_tap $? 34 'AdminPurchasable' test.out

#- 35 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'UxfsgzYv' \
    --limit '100' \
    --offset '25' \
    --sortBy 'code:desc' \
    > test.out 2>&1
eval_tap $? 35 'PublicListInventoryConfigurations' test.out

#- 36 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '74' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 36 'PublicListItemTypes' test.out

#- 37 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '82' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 37 'PublicListTags' test.out

#- 38 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'wvZJW1Ab' \
    --limit '53' \
    --offset '67' \
    --sortBy 'updatedAt' \
    > test.out 2>&1
eval_tap $? 38 'PublicListInventories' test.out

#- 39 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'vulENrWH' \
    --namespace $AB_NAMESPACE \
    --body '{"options": ["Ya7XODo2", "7bT8ToFs", "VX3rnU4p"], "qty": 40, "slotId": "0prMQ371", "sourceItemId": "HtGC4C6h"}' \
    > test.out 2>&1
eval_tap $? 39 'PublicConsumeMyItem' test.out

#- 40 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 's3325FMp' \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '26' \
    --sortBy 'updatedAt:desc' \
    --sourceItemId 'LjoZD6kc' \
    --tags 'RQcwB0Cv' \
    > test.out 2>&1
eval_tap $? 40 'PublicListItems' test.out

#- 41 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'cmP7sVJh' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"FLEz5Pud": {}, "HXEVv9d3": {}, "Z32gEiXv": {}}, "slotId": "NWFjIeXh", "sourceItemId": "uDahEpFD", "tags": ["QTlWfMJ4", "kJrA3uqP", "94PS8QOp"]}, {"customAttributes": {"O5AU9fOM": {}, "IEx0Banm": {}, "0LlsU3zT": {}}, "slotId": "uIWXoisK", "sourceItemId": "VAHT3p5v", "tags": ["s07AQOX8", "0EL5feWx", "2cYnPQXh"]}, {"customAttributes": {"CfRn1phS": {}, "tUP3pF5q": {}, "2AOaQkCz": {}}, "slotId": "HBiNYwrM", "sourceItemId": "NRyOA1go", "tags": ["j3RQAKE9", "nAHnbYmT", "AyUD68xz"]}]' \
    > test.out 2>&1
eval_tap $? 41 'PublicBulkUpdateMyItems' test.out

#- 42 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'Z2WwLSOv' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "9dYeWZng", "sourceItemId": "kpciNxIJ"}, {"slotId": "V2fOn0vr", "sourceItemId": "FwdBXCAQ"}, {"slotId": "4ZduRZR5", "sourceItemId": "vxTyjSsK"}]' \
    > test.out 2>&1
eval_tap $? 42 'PublicBulkRemoveMyItems' test.out

#- 43 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'Ab1NkoR6' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 31, "slotId": "ss0bK8DH", "sourceItemId": "ECjLmbfJ"}, {"qty": 85, "slotId": "pMXrqgHI", "sourceItemId": "uZpiPP4o"}, {"qty": 51, "slotId": "4th24ozA", "sourceItemId": "2NVu3tO0"}], "srcInventoryId": "jNKrMDDZ"}' \
    > test.out 2>&1
eval_tap $? 43 'PublicMoveMyItems' test.out

#- 44 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'Gd4nJtqn' \
    --namespace $AB_NAMESPACE \
    --slotId 'RxscpDle' \
    --sourceItemId 'YCTNhnb2' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE