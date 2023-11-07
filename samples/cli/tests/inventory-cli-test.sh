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
    --body '{"message": "JMgqBhsY", "operations": [{"consumeItems": [{"inventoryId": "djGS0iQq", "qty": 29, "slotId": "qdH7u9N5", "sourceItemId": "ZAcTaklD"}, {"inventoryId": "ipnDdtxW", "qty": 37, "slotId": "8VBlTrke", "sourceItemId": "m53F42W4"}, {"inventoryId": "1z8eZxLB", "qty": 80, "slotId": "4nSkpKnt", "sourceItemId": "Lsqo3wfz"}], "createItems": [{"customAttributes": {"FnxZAEsY": {}, "vG0F5X9I": {}, "ifOBeQZo": {}}, "inventoryConfigurationCode": "MO9LHSqW", "inventoryId": "tbSIMXZO", "qty": 62, "serverCustomAttributes": {"lpHDvcDV": {}, "mZzZAfcg": {}, "NsooYTZC": {}}, "slotId": "z8kAQked", "slotUsed": 20, "sourceItemId": "zRNDOebC", "tags": ["ClQ7sQBA", "qmR0f9bI", "CqPC09bc"], "toSpecificInventory": false, "type": "fo17azSh"}, {"customAttributes": {"EPzGVJrl": {}, "TWNQA5ww": {}, "DOAlb7sH": {}}, "inventoryConfigurationCode": "COAlDjQP", "inventoryId": "73YOqFNh", "qty": 69, "serverCustomAttributes": {"CUcAAV7L": {}, "H6XZWYUz": {}, "4dwSrgzY": {}}, "slotId": "3bxEtWB1", "slotUsed": 51, "sourceItemId": "xJY1eySc", "tags": ["23faLkZj", "6bPITz9I", "yJzWuYUy"], "toSpecificInventory": true, "type": "DrwBitqe"}, {"customAttributes": {"aUHiYYwE": {}, "2F1mVi8z": {}, "KciWDYFi": {}}, "inventoryConfigurationCode": "5OLIlQaz", "inventoryId": "l48fnfMP", "qty": 83, "serverCustomAttributes": {"TLV7LFnm": {}, "aEOArHNh": {}, "nB59FQhD": {}}, "slotId": "nKKq0y4W", "slotUsed": 75, "sourceItemId": "DAJdafjw", "tags": ["gu56Eqzl", "9xVKtWwH", "y277EAAa"], "toSpecificInventory": false, "type": "kwvo5iQv"}], "removeItems": [{"inventoryId": "BfpN7ygz", "slotId": "evZGYVmw", "sourceItemId": "JQWIyKJD"}, {"inventoryId": "NshchXGN", "slotId": "4znLJReF", "sourceItemId": "XUntZWM2"}, {"inventoryId": "9z8uE8gv", "slotId": "T3IadaMm", "sourceItemId": "x1TlSdpm"}], "targetUserId": "d5gF5eBH", "updateItems": [{"customAttributes": {"vIODHlv9": {}, "zGo6wrHr": {}, "bINMUHyc": {}}, "inventoryId": "k1Mpan1a", "serverCustomAttributes": {"FCcXqAlM": {}, "hZPadquT": {}, "b78YNv90": {}}, "slotId": "p0UCGZ2f", "sourceItemId": "YHKJNBle", "tags": ["0c2UwltT", "vtYWArDa", "7enc8KTr"], "type": "IhoIaK6s"}, {"customAttributes": {"2V4srC2T": {}, "abetr6Mh": {}, "5vDiT57C": {}}, "inventoryId": "iwPBiopz", "serverCustomAttributes": {"teExX5Q3": {}, "luqrt1lY": {}, "VhhORSra": {}}, "slotId": "GwXcPn53", "sourceItemId": "tpyL5zfb", "tags": ["XMzXnMCD", "l7OsDjjt", "I5GBoKdG"], "type": "LF4wGdAr"}, {"customAttributes": {"Tnsa7CBx": {}, "LR2unp0O": {}, "mJrCWdYg": {}}, "inventoryId": "zNPrpq4W", "serverCustomAttributes": {"wj9ynhBe": {}, "NdyEUUwe": {}, "imFhI0J0": {}}, "slotId": "26zKQFTq", "sourceItemId": "4vBtnhzz", "tags": ["UNe6OlsH", "ZmAcJslF", "yzw6xF1Y"], "type": "qlMMdifw"}]}, {"consumeItems": [{"inventoryId": "7Nb102Be", "qty": 23, "slotId": "X4OVOPSl", "sourceItemId": "PanI3TvD"}, {"inventoryId": "0C7hYdEv", "qty": 45, "slotId": "yw9hlz7I", "sourceItemId": "Csrkn7BA"}, {"inventoryId": "TITZTpMX", "qty": 93, "slotId": "9hwCcaFv", "sourceItemId": "tUjCJ33U"}], "createItems": [{"customAttributes": {"KaYCsnYy": {}, "PP0eGZkn": {}, "O2EvLsSO": {}}, "inventoryConfigurationCode": "VBv1ZTFw", "inventoryId": "6KUa3vMH", "qty": 28, "serverCustomAttributes": {"ttBSgyQe": {}, "BfyjSbTr": {}, "Wqvy7Aee": {}}, "slotId": "418XfGnS", "slotUsed": 27, "sourceItemId": "jkJPmD9U", "tags": ["IhqIRGNX", "oyJWrh5e", "DPAfUsyB"], "toSpecificInventory": true, "type": "mYMiodnL"}, {"customAttributes": {"dklv1q1j": {}, "veJRPnsf": {}, "tl6Db9vH": {}}, "inventoryConfigurationCode": "51ArpVHW", "inventoryId": "btgllQIe", "qty": 8, "serverCustomAttributes": {"KOlh0oFG": {}, "PSofkLcB": {}, "SmDvYaaB": {}}, "slotId": "3DyMUzZy", "slotUsed": 43, "sourceItemId": "si05di1v", "tags": ["DUHpXfPS", "knUP7wvH", "5vHjqgqg"], "toSpecificInventory": false, "type": "MvlqhrFQ"}, {"customAttributes": {"dhJVS5Dl": {}, "pTsWE6xb": {}, "0kSKDB4V": {}}, "inventoryConfigurationCode": "IrV88qxo", "inventoryId": "j3EDKnQh", "qty": 53, "serverCustomAttributes": {"wnv49wpX": {}, "hpXEuiIG": {}, "oXiq7ayV": {}}, "slotId": "KCD2yNNQ", "slotUsed": 43, "sourceItemId": "P0TOer9d", "tags": ["szxXRRRd", "D3ByK1NW", "47mhPyDC"], "toSpecificInventory": true, "type": "JWVeFY6G"}], "removeItems": [{"inventoryId": "ksROEfmB", "slotId": "EqIawanv", "sourceItemId": "wdPswe22"}, {"inventoryId": "FMn8Isju", "slotId": "PBk6l11b", "sourceItemId": "dRqX1Wx7"}, {"inventoryId": "YeAdzABL", "slotId": "pShgulbs", "sourceItemId": "1dzGErlJ"}], "targetUserId": "HGOmeTOR", "updateItems": [{"customAttributes": {"uDeH0jD3": {}, "SuNeDPRx": {}, "F2FNOOUz": {}}, "inventoryId": "jwkeaaqT", "serverCustomAttributes": {"CAdx5Jyl": {}, "GcjESSZD": {}, "Tm9BT4Uo": {}}, "slotId": "bb1CnFXm", "sourceItemId": "wxGzkShM", "tags": ["O7Z3qkbS", "jmp5Vmji", "CKrx0OSe"], "type": "JlCPUW09"}, {"customAttributes": {"pBScaKdt": {}, "R57PXeQQ": {}, "PLvDO404": {}}, "inventoryId": "NE5qVVwW", "serverCustomAttributes": {"hRKX2TAW": {}, "Xc00vphF": {}, "KsRNhW9b": {}}, "slotId": "WEgJvFZg", "sourceItemId": "jLJBUt0R", "tags": ["5dajsUYT", "WQvM2iYZ", "VjYTXH4T"], "type": "LWIlQU9B"}, {"customAttributes": {"a4koMgGe": {}, "rfMRvRZQ": {}, "zMJQUmNg": {}}, "inventoryId": "27EJSMGt", "serverCustomAttributes": {"eUuCPPWP": {}, "j2xOn6KF": {}, "qZe68U6L": {}}, "slotId": "dAQzT1k9", "sourceItemId": "5FLs7pRk", "tags": ["fHJCA4hk", "SdsCb6rt", "gxo2nBP8"], "type": "3Nl84oC6"}]}, {"consumeItems": [{"inventoryId": "Y7GzISrt", "qty": 57, "slotId": "4QWMRI3l", "sourceItemId": "BoarfAYh"}, {"inventoryId": "TzFg06Uq", "qty": 56, "slotId": "UIC2SB1x", "sourceItemId": "oqLZiDiZ"}, {"inventoryId": "CuffdIZn", "qty": 69, "slotId": "ckZ5LaeD", "sourceItemId": "W28lZ0Uq"}], "createItems": [{"customAttributes": {"YwXvQKtk": {}, "Eqlhd84X": {}, "Q2vl8zOu": {}}, "inventoryConfigurationCode": "vFpWT5K0", "inventoryId": "qH8u37ul", "qty": 76, "serverCustomAttributes": {"O0mtXIHu": {}, "Huh0hyXY": {}, "TyHtiWrL": {}}, "slotId": "vbcJQ5UK", "slotUsed": 100, "sourceItemId": "YLQ9Tfa2", "tags": ["W7rRs9BH", "lCRz8cGk", "8Aplrr4Y"], "toSpecificInventory": true, "type": "VgUimi9a"}, {"customAttributes": {"vWF7kpsm": {}, "0ilpvnzw": {}, "RLLRwqxW": {}}, "inventoryConfigurationCode": "4LKEJslh", "inventoryId": "zoZranDJ", "qty": 22, "serverCustomAttributes": {"4LJX3NrX": {}, "zJk9NnX8": {}, "pKaAQboy": {}}, "slotId": "koVsX0cZ", "slotUsed": 57, "sourceItemId": "WWYn9EWv", "tags": ["EmmX8cSC", "1Yxr0KcK", "fQ71esfl"], "toSpecificInventory": true, "type": "ipUA7EqD"}, {"customAttributes": {"RaVU8H05": {}, "duhvyQBY": {}, "9GeCFZO5": {}}, "inventoryConfigurationCode": "15eAiHC2", "inventoryId": "ma1bwLhE", "qty": 69, "serverCustomAttributes": {"lsH1edUW": {}, "UrjX1NXg": {}, "olvrCCUd": {}}, "slotId": "cm2bsapP", "slotUsed": 38, "sourceItemId": "Jea9zDPh", "tags": ["vI7FU1Ph", "fIE7czoA", "zhbJlp5z"], "toSpecificInventory": false, "type": "rVcBTYfZ"}], "removeItems": [{"inventoryId": "VhXv1SMT", "slotId": "eOYcK4fy", "sourceItemId": "vR0tIgSN"}, {"inventoryId": "NcMZFS9r", "slotId": "jEZYC71W", "sourceItemId": "Ct65XqYe"}, {"inventoryId": "Exu2Ka2x", "slotId": "r2aS4X2x", "sourceItemId": "AegGsIBV"}], "targetUserId": "P4ScU9Pz", "updateItems": [{"customAttributes": {"yT6YFUUZ": {}, "HwhfAwL4": {}, "svN0G9dZ": {}}, "inventoryId": "VvOUHwW4", "serverCustomAttributes": {"p2Bfm7gr": {}, "e7SgjqYw": {}, "yg8GTrNP": {}}, "slotId": "hMJiJYGk", "sourceItemId": "sGU18vmb", "tags": ["JAfIKwSj", "XoxEdoPh", "BPGJRLJs"], "type": "Nk6UVpXf"}, {"customAttributes": {"UnG3ZhMS": {}, "jiJF6T5G": {}, "FcqJKVt1": {}}, "inventoryId": "FQaEZLzI", "serverCustomAttributes": {"QPyFP8O2": {}, "ALyh6CRx": {}, "o38265hJ": {}}, "slotId": "TgBL7sKL", "sourceItemId": "teD0bYX7", "tags": ["i3AA3Lb0", "Zhc52pIK", "sMrbwE2p"], "type": "pEUysZw5"}, {"customAttributes": {"WrPAgf8P": {}, "ssRnxsKa": {}, "6O5hWNlY": {}}, "inventoryId": "oh1CneMT", "serverCustomAttributes": {"kHMLbvsE": {}, "RfmPp9jr": {}, "idObFjIR": {}}, "slotId": "cvl8qtKg", "sourceItemId": "msN3NNXm", "tags": ["dftUwN30", "zvpiHQO4", "hEHa5aN7"], "type": "QdmQb3OK"}]}], "requestId": "Cgvj7nD3"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'AaAB8jFy' \
    --limit '72' \
    --offset '21' \
    --sortBy 'updatedAt:asc' \
    --userId 'HkkBRpQZ' \
    > test.out 2>&1
eval_tap $? 3 'AdminListInventories' test.out

#- 4 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "FEuVFxio", "userId": "Bg0HRZzb"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateInventory' test.out

#- 5 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'GZLMavte' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetInventory' test.out

#- 6 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'jTI1mNAc' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 99}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateInventory' test.out

#- 7 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId '4zqB9nk8' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "JHTelUU5"}' \
    > test.out 2>&1
eval_tap $? 7 'DeleteInventory' test.out

#- 8 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'IgXYDw9N' \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '64' \
    --qtyGte '29' \
    --sortBy 'createdAt:desc' \
    --sourceItemId 'NsmtWLD8' \
    --tags '3XA9Im9b' \
    > test.out 2>&1
eval_tap $? 8 'AdminListItems' test.out

#- 9 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'IUZf3Jfh' \
    --namespace $AB_NAMESPACE \
    --slotId 'lDK43mMp' \
    --sourceItemId 'QtOalOrJ' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventoryItem' test.out

#- 10 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'zs5fsfEv' \
    --limit '18' \
    --offset '54' \
    --sortBy 'code:asc' \
    > test.out 2>&1
eval_tap $? 10 'AdminListInventoryConfigurations' test.out

#- 11 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "DJp5Fnbs", "description": "mruCNGNW", "initialMaxSlots": 3, "maxInstancesPerUser": 41, "maxUpgradeSlots": 64, "name": "vJ0TuT2X"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminCreateInventoryConfiguration' test.out

#- 12 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'XpLCeYas' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminGetInventoryConfiguration' test.out

#- 13 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'c2SJs7OX' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "7VMIF93n", "description": "75GITdpv", "initialMaxSlots": 30, "maxInstancesPerUser": 98, "maxUpgradeSlots": 79, "name": "RSaB500C"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminUpdateInventoryConfiguration' test.out

#- 14 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId '6TEMmTsC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteInventoryConfiguration' test.out

#- 15 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '83' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 15 'AdminListItemTypes' test.out

#- 16 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "eJcsYPGL"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateItemType' test.out

#- 17 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'CnHBlfWm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDeleteItemType' test.out

#- 18 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '3' \
    --owner 'zsnM5kve' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 18 'AdminListTags' test.out

#- 19 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "xJHyn5hp", "owner": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminCreateTag' test.out

#- 20 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'fIUc2cjb' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteTag' test.out

#- 21 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'atFrSfSE' \
    --namespace $AB_NAMESPACE \
    --userId 'v2V1EHzh' \
    --body '{"qty": 43, "slotId": "0HdcDxZm", "sourceItemId": "bzpi3FTO"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminConsumeUserItem' test.out

#- 22 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'l1V1aNkz' \
    --namespace $AB_NAMESPACE \
    --userId '1dMd4IwD' \
    --body '[{"customAttributes": {"yq1cvVAw": {}, "GVZdStBZ": {}, "3gSgguUr": {}}, "serverCustomAttributes": {"Rt172kqI": {}, "oYfp2tVX": {}, "Byxos2hI": {}}, "slotId": "9d7B54qd", "sourceItemId": "54mCWSze", "tags": ["8yb6fQdd", "CHPJe4CC", "GqFYQufw"], "type": "Cq8MFwfc"}, {"customAttributes": {"9LplA5ST": {}, "9jrAakKi": {}, "SywU4Uqa": {}}, "serverCustomAttributes": {"IMk1aTTa": {}, "irfURMH6": {}, "gFyMwOfy": {}}, "slotId": "Yp6Relb0", "sourceItemId": "dNuAW6ZJ", "tags": ["WP8N27Dv", "xUdUqIN2", "QICLCCBb"], "type": "tevXGkqe"}, {"customAttributes": {"l5tw9mZ4": {}, "blIgWeVL": {}, "Dz53bOLp": {}}, "serverCustomAttributes": {"IGAU9rvC": {}, "MyLC4oo5": {}, "3aiznZn3": {}}, "slotId": "i5C8CQ6z", "sourceItemId": "a7ngkLqF", "tags": ["nmtQnmeq", "KbDUEQVY", "qDSpfNUz"], "type": "YcxRn7NW"}]' \
    > test.out 2>&1
eval_tap $? 22 'AdminBulkUpdateMyItems' test.out

#- 23 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId '22WBof11' \
    --namespace $AB_NAMESPACE \
    --userId 'SLSbrkUA' \
    --body '{"customAttributes": {"mbTifffX": {}, "9CLHxmWm": {}, "b5O78W8d": {}}, "qty": 33, "serverCustomAttributes": {"TVu6LsAI": {}, "lTf5pIZ9": {}, "alSTyV8J": {}}, "slotId": "clppEfam", "slotUsed": 41, "sourceItemId": "pOXt9ylt", "tags": ["mjxRVMNZ", "yTbf8pm1", "AeZAzVqk"], "type": "8npWxp8s"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminSaveItemToInventory' test.out

#- 24 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'BFvGEkNS' \
    --namespace $AB_NAMESPACE \
    --userId 'poqFJGju' \
    --body '[{"slotId": "ebzNTNPb", "sourceItemId": "mJeBYLSJ"}, {"slotId": "D2ifZzf6", "sourceItemId": "QAhx4HRG"}, {"slotId": "S7WG2vwn", "sourceItemId": "Q2b1qhaR"}]' \
    > test.out 2>&1
eval_tap $? 24 'AdminBulkRemoveItems' test.out

#- 25 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'rKmRT6kr' \
    --body '{"customAttributes": {"jn6cFFOk": {}, "1zg0WvJj": {}, "Cgyi9KXI": {}}, "inventoryConfigurationCode": "2uudK0v2", "qty": 71, "serverCustomAttributes": {"1Xuv4MX4": {}, "qjFy8rG5": {}, "l4i6Dw5w": {}}, "slotId": "tepA9O4T", "slotUsed": 79, "sourceItemId": "sS29Jces", "tags": ["UM2UiwC4", "lcbmGjPo", "PGRUMozQ"], "type": "TCA3p00x"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminSaveItem' test.out

#- 26 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'uXaUPuNf' \
    --limit '13' \
    --offset '36' \
    --sortBy 'updatedAt' \
    > test.out 2>&1
eval_tap $? 26 'PublicListInventoryConfigurations' test.out

#- 27 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '33' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 27 'PublicListItemTypes' test.out

#- 28 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '69' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 28 'PublicListTags' test.out

#- 29 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'ImI2XqG1' \
    --limit '9' \
    --offset '51' \
    --sortBy 'updatedAt:desc' \
    > test.out 2>&1
eval_tap $? 29 'PublicListInventories' test.out

#- 30 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'SeRbAzve' \
    --namespace $AB_NAMESPACE \
    --body '{"qty": 63, "slotId": "M7ztfrDH", "sourceItemId": "w6M82muZ"}' \
    > test.out 2>&1
eval_tap $? 30 'PublicConsumeMyItem' test.out

#- 31 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'cP1SIJ46' \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '63' \
    --qtyGte '51' \
    --sortBy 'qty:desc' \
    --sourceItemId 'id4rKr3o' \
    --tags 'NEG5iZA7' \
    > test.out 2>&1
eval_tap $? 31 'PublicListItems' test.out

#- 32 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'p3xeAL8X' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"y1hoNNLt": {}, "4opTSps7": {}, "pB6OUOCm": {}}, "slotId": "radL6NZg", "sourceItemId": "Ip2XM3qL", "tags": ["0FauwjeE", "Czd8GNGE", "fmsEUma2"]}, {"customAttributes": {"Z3M5nXs2": {}, "fdfR5fEK": {}, "mAFLl0wC": {}}, "slotId": "9b1QYxU1", "sourceItemId": "Gfj36A2M", "tags": ["Pmr1VMXS", "J0w834qo", "RSD4cOdl"]}, {"customAttributes": {"7rRdV9VV": {}, "w5m3JTdP": {}, "cliEiAjr": {}}, "slotId": "GrVHEnaa", "sourceItemId": "WWPhRRfh", "tags": ["285K87OH", "Tnh01cqJ", "lzQIfkWH"]}]' \
    > test.out 2>&1
eval_tap $? 32 'PublicBulkUpdateMyItems' test.out

#- 33 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId '3ypGpdGD' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "JTtF00vK", "sourceItemId": "TWVApU4C"}, {"slotId": "g9echZip", "sourceItemId": "cqP094St"}, {"slotId": "9U2bl0lr", "sourceItemId": "yjynVclT"}]' \
    > test.out 2>&1
eval_tap $? 33 'PublicBulkRemoveMyItems' test.out

#- 34 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'WpB0E3TO' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 50, "slotId": "xIHXcizO", "sourceItemId": "M6PRJ7XL"}, {"qty": 18, "slotId": "uFdUEIrS", "sourceItemId": "5v9p933l"}, {"qty": 54, "slotId": "rLFi1qyY", "sourceItemId": "KbXCGH1G"}], "srcInventoryId": "2LOLUqhX"}' \
    > test.out 2>&1
eval_tap $? 34 'PublicMoveMyItems' test.out

#- 35 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'h74CVDSW' \
    --namespace $AB_NAMESPACE \
    --slotId 'Nt1tIh3u' \
    --sourceItemId 'dohjR482' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE