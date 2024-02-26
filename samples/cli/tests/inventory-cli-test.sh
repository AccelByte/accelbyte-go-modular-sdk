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
echo "1..35"

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
    --body '{"message": "bKeQksAu", "operations": [{"consumeItems": [{"inventoryId": "ftXaJmtC", "qty": 53, "slotId": "pJVrGyWO", "sourceItemId": "K6mIV59m"}, {"inventoryId": "QJLp4ClG", "qty": 84, "slotId": "p6W6jzd5", "sourceItemId": "64cYnDXJ"}, {"inventoryId": "0UW0ze7P", "qty": 94, "slotId": "4gMz4o6V", "sourceItemId": "phUnYifj"}], "createItems": [{"customAttributes": {"pRGK0oFk": {}, "qYkKRa2M": {}, "B0naJ4EZ": {}}, "inventoryConfigurationCode": "vMbccxja", "inventoryId": "nLCJVYhL", "qty": 55, "serverCustomAttributes": {"zBb6i3Y6": {}, "cYNUNDq7": {}, "0bxvPB4T": {}}, "slotId": "aM1y1Nn8", "slotUsed": 83, "sourceItemId": "10KoACfP", "tags": ["nQcXfpX5", "Jq3Vm6j9", "5sBC5Iqn"], "toSpecificInventory": false, "type": "yJpjYCUB"}, {"customAttributes": {"mpoKIzDh": {}, "opuCqeG4": {}, "6kO14Sof": {}}, "inventoryConfigurationCode": "0rt9JSk1", "inventoryId": "aN3JnBBc", "qty": 88, "serverCustomAttributes": {"Yz8kiu0v": {}, "hHM2UtLk": {}, "lLJoOk5m": {}}, "slotId": "p0FXDsJ4", "slotUsed": 78, "sourceItemId": "Fxk8p5c0", "tags": ["6o4MEH5J", "WSEBYjCM", "pLZ8Upl5"], "toSpecificInventory": false, "type": "uuf3iohV"}, {"customAttributes": {"q1oxcAOh": {}, "59fQxKIi": {}, "03ooQEsS": {}}, "inventoryConfigurationCode": "hGp0vHKQ", "inventoryId": "SLfNChTt", "qty": 87, "serverCustomAttributes": {"rnkBjV0l": {}, "3mUnXkKs": {}, "5W26Y3AU": {}}, "slotId": "2hdlP0mO", "slotUsed": 44, "sourceItemId": "wnONqObv", "tags": ["Mnnm0kvI", "imzOz6Pl", "bwPemRIb"], "toSpecificInventory": true, "type": "HoyK4gGU"}], "removeItems": [{"inventoryId": "hJFgqf4f", "slotId": "DHePxL0n", "sourceItemId": "6D6Qcthy"}, {"inventoryId": "pqOo5tpD", "slotId": "Z3h0jn4X", "sourceItemId": "SvmZANpD"}, {"inventoryId": "QAkqPRdy", "slotId": "XVDs01qx", "sourceItemId": "DHDXMcUc"}], "targetUserId": "KbXweZxC", "updateItems": [{"customAttributes": {"kGCygCpJ": {}, "Q0fhirq6": {}, "WQWypQJD": {}}, "inventoryId": "OFeTe1oW", "serverCustomAttributes": {"KPLU7Dr4": {}, "RUvp23Tw": {}, "KTnZreQ4": {}}, "slotId": "g7sljAp7", "sourceItemId": "X9y1hu0D", "tags": ["5IeVvZ0Z", "lmiiKx4D", "jnFUpMyr"], "type": "PON6vRIa"}, {"customAttributes": {"k6UtcAiZ": {}, "F87zv3S5": {}, "cylirmwC": {}}, "inventoryId": "uxo4Lp3y", "serverCustomAttributes": {"fFIe8yal": {}, "Q13eNoym": {}, "5iT6gAcx": {}}, "slotId": "JM8GqC0k", "sourceItemId": "DOSKfbpE", "tags": ["B79RTTBf", "yVsDLiOj", "qVdHutb4"], "type": "fQEjEJ63"}, {"customAttributes": {"P94xR6b9": {}, "HBv26wM6": {}, "RPhszUE5": {}}, "inventoryId": "Fh54SWBT", "serverCustomAttributes": {"bM4fRpcm": {}, "4Af00Xws": {}, "DIkHCSd9": {}}, "slotId": "CsDKjU53", "sourceItemId": "cVhKL1xG", "tags": ["50GpvzZh", "FPrBHmA6", "fAXQ8CDr"], "type": "ov0HZFRX"}]}, {"consumeItems": [{"inventoryId": "gSzvipx6", "qty": 97, "slotId": "jKzOUXsC", "sourceItemId": "FTy8BnvT"}, {"inventoryId": "EYMDYiFT", "qty": 13, "slotId": "j4hODunA", "sourceItemId": "9MmMnXvO"}, {"inventoryId": "qh6glX8x", "qty": 6, "slotId": "M5D6u7yJ", "sourceItemId": "BCFZEcYX"}], "createItems": [{"customAttributes": {"YzjMkUCZ": {}, "bDgkwCzH": {}, "sZFus1im": {}}, "inventoryConfigurationCode": "B4hsgz9z", "inventoryId": "NwZWeflD", "qty": 37, "serverCustomAttributes": {"4uEbwiJg": {}, "zSiUWhFE": {}, "dbBVQlJC": {}}, "slotId": "eI7LCLhc", "slotUsed": 27, "sourceItemId": "cjqIJD58", "tags": ["pSstChHd", "nywY9qnN", "vBzvNcz3"], "toSpecificInventory": false, "type": "KQlky0AP"}, {"customAttributes": {"isr5jXwK": {}, "0F4hZNiS": {}, "omh1Bgba": {}}, "inventoryConfigurationCode": "oF57Kzpd", "inventoryId": "Gx5TunTr", "qty": 3, "serverCustomAttributes": {"vZHibqCa": {}, "BkzTDiX0": {}, "HwNFPjUB": {}}, "slotId": "igwYO9Ha", "slotUsed": 44, "sourceItemId": "rx2GrQXC", "tags": ["GSJMulW1", "pwBjK4nb", "2EWlXUDF"], "toSpecificInventory": false, "type": "zWwWn3SA"}, {"customAttributes": {"ZJW0WcCT": {}, "NqFdHcAE": {}, "gn2HY5BA": {}}, "inventoryConfigurationCode": "UgfPc96x", "inventoryId": "9c8Q6uQ9", "qty": 1, "serverCustomAttributes": {"G6niF7MI": {}, "A62p56SW": {}, "ls2XeqYn": {}}, "slotId": "i4t4gPF7", "slotUsed": 78, "sourceItemId": "ska2CvXo", "tags": ["gTrzh3FY", "0ShfhM6T", "opkU1VDh"], "toSpecificInventory": true, "type": "n8iV4eeu"}], "removeItems": [{"inventoryId": "nAy1SlK9", "slotId": "qYq1HX9l", "sourceItemId": "HKonMzBc"}, {"inventoryId": "bJeeCXUK", "slotId": "SYgLWvGp", "sourceItemId": "sgrUP5Hh"}, {"inventoryId": "SI9SjBP0", "slotId": "fqhWS0re", "sourceItemId": "lgTSmU3U"}], "targetUserId": "jaj4XnUd", "updateItems": [{"customAttributes": {"0ftQLWhN": {}, "hvoFColI": {}, "L1C5DXhH": {}}, "inventoryId": "9QG0euYw", "serverCustomAttributes": {"NjYJboAK": {}, "9lcUnHA5": {}, "u4MN6UED": {}}, "slotId": "6tUpESb4", "sourceItemId": "ni243I9r", "tags": ["rL6QKFL3", "VlePEVue", "F5nAL4iB"], "type": "M7IS9icF"}, {"customAttributes": {"DBRKFxrJ": {}, "F2v0PVCr": {}, "1fgPZj9u": {}}, "inventoryId": "dHmAM1J7", "serverCustomAttributes": {"N1Z6xTry": {}, "HCVX4x79": {}, "I0Cv4R2l": {}}, "slotId": "CsTHgBVh", "sourceItemId": "tfLnnR7g", "tags": ["groUiIni", "fbMuuLUs", "wZppGQl4"], "type": "QIzQ1N8G"}, {"customAttributes": {"F5cXs7gJ": {}, "PxOi4N1m": {}, "5rz1dad5": {}}, "inventoryId": "uWhJcXUB", "serverCustomAttributes": {"CRHJBNi8": {}, "1rAfWf6L": {}, "twX6WCR5": {}}, "slotId": "9yFITuq2", "sourceItemId": "A0YADEYY", "tags": ["rwuwTsZb", "yhmRCOWa", "HJuv8NpQ"], "type": "OphfdoQW"}]}, {"consumeItems": [{"inventoryId": "NXEq7Ix2", "qty": 96, "slotId": "35cGlP46", "sourceItemId": "TjKiaRUq"}, {"inventoryId": "d5MAB6yb", "qty": 37, "slotId": "Xn9x6xP7", "sourceItemId": "npzjB70o"}, {"inventoryId": "d2znrmxW", "qty": 43, "slotId": "wVskOdgt", "sourceItemId": "zUyfPVGz"}], "createItems": [{"customAttributes": {"WOGEdztR": {}, "qpa26fds": {}, "N7pXXJyz": {}}, "inventoryConfigurationCode": "ghr1TSmc", "inventoryId": "gT5lcRWM", "qty": 19, "serverCustomAttributes": {"oxQfE2yO": {}, "T6hVDjzO": {}, "FbIeE5Pe": {}}, "slotId": "E7ed9VHN", "slotUsed": 87, "sourceItemId": "ePQk00CY", "tags": ["HDsYebIa", "uNXHYro7", "Ke76lsk4"], "toSpecificInventory": true, "type": "xJO2Xmfx"}, {"customAttributes": {"u5fZLF1v": {}, "PiEkNPd9": {}, "bK9kFxrn": {}}, "inventoryConfigurationCode": "mulnXCYd", "inventoryId": "37HN3Kcv", "qty": 9, "serverCustomAttributes": {"m8YtRkTT": {}, "xB7xJ8Wn": {}, "sAFautUX": {}}, "slotId": "LRKNvrYM", "slotUsed": 73, "sourceItemId": "PoFEJh3O", "tags": ["GqNbYC6M", "wigiaetr", "fOGGW1YM"], "toSpecificInventory": true, "type": "CBU3yj7q"}, {"customAttributes": {"ghGOt7Se": {}, "k5IEOtqo": {}, "AAYFBMOf": {}}, "inventoryConfigurationCode": "JySGS74T", "inventoryId": "hWfdcTov", "qty": 47, "serverCustomAttributes": {"gY0Trz9D": {}, "l7CSfiST": {}, "JQBWXpPs": {}}, "slotId": "RFl7WRgo", "slotUsed": 71, "sourceItemId": "K3vRbrMl", "tags": ["c8DPNU5V", "zBXA4lu9", "3JOGix3X"], "toSpecificInventory": true, "type": "OtNrVQNl"}], "removeItems": [{"inventoryId": "DV9DDUIC", "slotId": "5ENbO8rI", "sourceItemId": "4sZZtoIn"}, {"inventoryId": "O6ZxBBqm", "slotId": "7qVSRYpj", "sourceItemId": "JP8y5WuZ"}, {"inventoryId": "vtWfx49u", "slotId": "OYF8s0Lo", "sourceItemId": "PEcDDGxj"}], "targetUserId": "2vra1u7Z", "updateItems": [{"customAttributes": {"P8JNMayv": {}, "5PWSCJfW": {}, "GRJ9CQzU": {}}, "inventoryId": "K2tsceIz", "serverCustomAttributes": {"PtZJfBYk": {}, "tQGVFOuB": {}, "vZdY4J36": {}}, "slotId": "MYKz97Ba", "sourceItemId": "lsG9UNSS", "tags": ["XXDdDOWL", "huxOFvPQ", "S0SLImOM"], "type": "8KUI5pm7"}, {"customAttributes": {"Fb1y7iuL": {}, "64TIMQGY": {}, "223HmSak": {}}, "inventoryId": "pbJAYm3k", "serverCustomAttributes": {"q6QAMxt9": {}, "66q03sQ5": {}, "gKFkC4I2": {}}, "slotId": "TUPRbRhv", "sourceItemId": "B3O4nAHg", "tags": ["z5xuUFJI", "84v3SDD1", "uKFNaIZ5"], "type": "6MsUJz3L"}, {"customAttributes": {"2PGVur7I": {}, "UHIua6LB": {}, "tU1jwZAw": {}}, "inventoryId": "vYmI54Cb", "serverCustomAttributes": {"LCMYO2HL": {}, "JJiWO2n3": {}, "kCcyQaK4": {}}, "slotId": "hGLCA4nE", "sourceItemId": "0I85UKxD", "tags": ["XmnBg4d9", "m4MjDx56", "77ul4eNX"], "type": "MkWEARub"}]}], "requestId": "EhzVSH5J"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'm2OJBdxx' \
    --limit '32' \
    --offset '38' \
    --sortBy 'createdAt:asc' \
    --userId 'AzgRnWbp' \
    > test.out 2>&1
eval_tap $? 3 'AdminListInventories' test.out

#- 4 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "K2aauqMn", "userId": "WJPQEQKS"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateInventory' test.out

#- 5 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'B3HeBPxd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetInventory' test.out

#- 6 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'jpqw05xT' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 75}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateInventory' test.out

#- 7 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId '3IAcplVj' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "GDvEuE2t"}' \
    > test.out 2>&1
eval_tap $? 7 'DeleteInventory' test.out

#- 8 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'FhY3ixOe' \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '99' \
    --qtyGte '63' \
    --sortBy 'updatedAt' \
    --sourceItemId 'qg4OCFNc' \
    --tags 'kkL8z6Bj' \
    > test.out 2>&1
eval_tap $? 8 'AdminListItems' test.out

#- 9 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId '9lCIYhLP' \
    --namespace $AB_NAMESPACE \
    --slotId 'e1fJ7nPJ' \
    --sourceItemId 'WdseSzrG' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventoryItem' test.out

#- 10 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'pfVyqvWg' \
    --limit '92' \
    --offset '55' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 10 'AdminListInventoryConfigurations' test.out

#- 11 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "k7Fz9mRg", "description": "D8n2giE3", "initialMaxSlots": 45, "maxInstancesPerUser": 38, "maxUpgradeSlots": 55, "name": "S1jSt6EI"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminCreateInventoryConfiguration' test.out

#- 12 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'bS9rHJFL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminGetInventoryConfiguration' test.out

#- 13 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId '6wOlXW50' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "xZN03b8R", "description": "TjisuqLM", "initialMaxSlots": 31, "maxInstancesPerUser": 23, "maxUpgradeSlots": 93, "name": "B5N0s5Qr"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminUpdateInventoryConfiguration' test.out

#- 14 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId '3ChOw6m4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteInventoryConfiguration' test.out

#- 15 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '43' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 15 'AdminListItemTypes' test.out

#- 16 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "uXFLTsai"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateItemType' test.out

#- 17 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'hCX91M3u' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDeleteItemType' test.out

#- 18 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '97' \
    --owner '0054lby3' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 18 'AdminListTags' test.out

#- 19 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "TntD1vbO", "owner": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminCreateTag' test.out

#- 20 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'RumQ9vln' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteTag' test.out

#- 21 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId '5xJivXl1' \
    --namespace $AB_NAMESPACE \
    --userId 'hB3quiBy' \
    --body '{"qty": 83, "slotId": "FPHliAkP", "sourceItemId": "qbkNRCFj"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminConsumeUserItem' test.out

#- 22 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'nqpV4kHz' \
    --namespace $AB_NAMESPACE \
    --userId 'shvRAkO6' \
    --body '[{"customAttributes": {"eLqoaRsU": {}, "SS9gB0CC": {}, "eC2nDQa5": {}}, "serverCustomAttributes": {"sjclLLYW": {}, "oF0LTlQA": {}, "S8yo5vdb": {}}, "slotId": "jXLsAXvM", "sourceItemId": "legBEU2H", "tags": ["YCdYRHBq", "vh8lSXoh", "D1ohSg4e"], "type": "mawljdcp"}, {"customAttributes": {"CfGYfDRN": {}, "3pGqKLRN": {}, "Dc52O9O5": {}}, "serverCustomAttributes": {"7B9J68eh": {}, "ZDgQw1eH": {}, "zKx6nOoh": {}}, "slotId": "AOaqZQ7I", "sourceItemId": "x2tLTA9v", "tags": ["gKqAhw1l", "9IwJtEzz", "GQzSjTFT"], "type": "0eXN3D78"}, {"customAttributes": {"RakCfUrE": {}, "2EelYPDc": {}, "XVnBFDlM": {}}, "serverCustomAttributes": {"ACudPOn7": {}, "cqKGTjcv": {}, "LbgAHMc9": {}}, "slotId": "iv1ukzgN", "sourceItemId": "qxw2n8zT", "tags": ["ulmlKWod", "q0vuZzUq", "KHcx6pcv"], "type": "VUDQ68wt"}]' \
    > test.out 2>&1
eval_tap $? 22 'AdminBulkUpdateMyItems' test.out

#- 23 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'APMZR9T1' \
    --namespace $AB_NAMESPACE \
    --userId 'oonANqxg' \
    --body '{"customAttributes": {"wV9L1zXc": {}, "aQGEDv7E": {}, "HrOxktSt": {}}, "qty": 18, "serverCustomAttributes": {"nVXTosH1": {}, "FPQb3h7y": {}, "WeFz6HrJ": {}}, "slotId": "eGmAwvot", "slotUsed": 34, "sourceItemId": "QK0yhZiK", "tags": ["Ip2oE76D", "qpeyCDOR", "8HqKNHZj"], "type": "h4pfZtwH"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminSaveItemToInventory' test.out

#- 24 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'LYwtNaav' \
    --namespace $AB_NAMESPACE \
    --userId '0DW3opbV' \
    --body '[{"slotId": "SewRnUYO", "sourceItemId": "PfvnPiYz"}, {"slotId": "kkMwR7op", "sourceItemId": "nZ04y6wS"}, {"slotId": "IwGujqxw", "sourceItemId": "n4vhfOAR"}]' \
    > test.out 2>&1
eval_tap $? 24 'AdminBulkRemoveItems' test.out

#- 25 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'rkwwTBqz' \
    --body '{"customAttributes": {"51mkVAEF": {}, "rn33wt2g": {}, "LeQ6vZHu": {}}, "inventoryConfigurationCode": "DHVGcrtU", "qty": 8, "serverCustomAttributes": {"KbTbtZ1S": {}, "7Z7DVAsh": {}, "mv1VlWCU": {}}, "slotId": "SuK4k1Y3", "slotUsed": 46, "sourceItemId": "1x6fqkez", "tags": ["5kVGkh41", "xaNKKsF7", "ISJcd4J2"], "type": "dSsFebMC"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminSaveItem' test.out

#- 26 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'J56b51KV' \
    --limit '58' \
    --offset '69' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 26 'PublicListInventoryConfigurations' test.out

#- 27 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '64' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 27 'PublicListItemTypes' test.out

#- 28 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '35' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 28 'PublicListTags' test.out

#- 29 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'm9aOrw98' \
    --limit '43' \
    --offset '85' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 29 'PublicListInventories' test.out

#- 30 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'dlyR3trE' \
    --namespace $AB_NAMESPACE \
    --body '{"qty": 68, "slotId": "Hdpox4wM", "sourceItemId": "zR1KfSMk"}' \
    > test.out 2>&1
eval_tap $? 30 'PublicConsumeMyItem' test.out

#- 31 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'HeuYtRLG' \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '33' \
    --qtyGte '76' \
    --sortBy 'updatedAt' \
    --sourceItemId 'uFkcU5GD' \
    --tags '8LKQEmw1' \
    > test.out 2>&1
eval_tap $? 31 'PublicListItems' test.out

#- 32 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'Y02PC6WM' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"9xVug1Ie": {}, "rQa4E7UX": {}, "ZCUVFMDL": {}}, "slotId": "V99WXoP0", "sourceItemId": "FV5lBPmp", "tags": ["wPT4kq5f", "yyMAwrzJ", "I59I85yT"]}, {"customAttributes": {"KxMH6lj5": {}, "eTrgqgp9": {}, "5hFksPXQ": {}}, "slotId": "y255sZej", "sourceItemId": "d4L4f8Ct", "tags": ["piTrgKm5", "D6ZRETSc", "WnjySgpS"]}, {"customAttributes": {"Vy61VJhJ": {}, "off8zbiY": {}, "JzdIjpG4": {}}, "slotId": "YfydxJjw", "sourceItemId": "XbXP5c7j", "tags": ["BwdlTlkM", "tFO3SMDS", "e3N16ZRh"]}]' \
    > test.out 2>&1
eval_tap $? 32 'PublicBulkUpdateMyItems' test.out

#- 33 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'HVoD68fZ' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "JJZjWxY7", "sourceItemId": "nCm7UgSw"}, {"slotId": "RB2tRZJl", "sourceItemId": "38eOIfp7"}, {"slotId": "dGxQQByO", "sourceItemId": "M4Ogkq6v"}]' \
    > test.out 2>&1
eval_tap $? 33 'PublicBulkRemoveMyItems' test.out

#- 34 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'xNr30MLo' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 21, "slotId": "lW724m7c", "sourceItemId": "R39dqQ9X"}, {"qty": 92, "slotId": "vWGkzUSo", "sourceItemId": "pg5fE8M1"}, {"qty": 46, "slotId": "LtKvnhWL", "sourceItemId": "FwlqR7yu"}], "srcInventoryId": "HFsEjOsr"}' \
    > test.out 2>&1
eval_tap $? 34 'PublicMoveMyItems' test.out

#- 35 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'XrJRtCzo' \
    --namespace $AB_NAMESPACE \
    --slotId '7pJuaOxP' \
    --sourceItemId 'GHnDsabS' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE