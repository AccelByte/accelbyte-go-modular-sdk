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
    --body '{"message": "GL4Tu26L", "operations": [{"consumeItems": [{"inventoryId": "ySg6s98f", "options": ["S9EKC9CT", "yqsB28Ix", "WmF8GDNT"], "qty": 62, "slotId": "Gw9tsriZ", "sourceItemId": "KqsLEL9s"}, {"inventoryId": "CNyLJzm6", "options": ["DSXLLOwx", "JwAiUsYx", "d6pGrhT5"], "qty": 12, "slotId": "6UBCUJ5f", "sourceItemId": "4lV8Z17G"}, {"inventoryId": "XwjgiugR", "options": ["ABufOrQE", "jYhq5k98", "rDV89mqD"], "qty": 78, "slotId": "rK2WVvTL", "sourceItemId": "fnW24GLt"}], "createItems": [{"customAttributes": {"vFnnqfBL": {}, "FElUYvRJ": {}, "InnMlLKU": {}}, "inventoryConfigurationCode": "1MRSWxI9", "inventoryId": "VulV00oj", "qty": 63, "serverCustomAttributes": {"cyA0E7fl": {}, "Ed0x0ID6": {}, "pJ7enhwf": {}}, "slotId": "FHETp1zd", "slotUsed": 84, "source": "ECOMMERCE", "sourceItemId": "bKbBmFsX", "tags": ["m0EF1aKf", "RsIYEPyt", "5T6IvPka"], "toSpecificInventory": true, "type": "A94dLcwZ"}, {"customAttributes": {"di0vdoHd": {}, "YEqIgRPy": {}, "Q7g93ctl": {}}, "inventoryConfigurationCode": "PXqFljFX", "inventoryId": "uft4fTJc", "qty": 24, "serverCustomAttributes": {"8Mt0ndfe": {}, "5u9cHs6t": {}, "eaLthX3q": {}}, "slotId": "4XIgBBe3", "slotUsed": 43, "source": "OTHER", "sourceItemId": "s9yVXRV2", "tags": ["XyCVTcvq", "k9ZEhTxQ", "PRU4Vo58"], "toSpecificInventory": false, "type": "zAoykcmg"}, {"customAttributes": {"5zpYQgKf": {}, "k6jBygNZ": {}, "6duQkKB4": {}}, "inventoryConfigurationCode": "sKzRWjBT", "inventoryId": "zwww5WBO", "qty": 29, "serverCustomAttributes": {"Ca3dsyuX": {}, "ygbKcgMS": {}, "q7d1GtxE": {}}, "slotId": "90A6yhik", "slotUsed": 90, "source": "OTHER", "sourceItemId": "vYeCw6Hl", "tags": ["ARkISenb", "ZMQf791Y", "HkXy3el1"], "toSpecificInventory": false, "type": "zL1yTcEM"}], "removeItems": [{"inventoryId": "Yl6txQgZ", "slotId": "a3NdAbaP", "sourceItemId": "Qnpj6dyt"}, {"inventoryId": "GcTqbJpu", "slotId": "9t01isgL", "sourceItemId": "5jEDCNqf"}, {"inventoryId": "P6fE4md0", "slotId": "XK4noSzG", "sourceItemId": "FLslwOIa"}], "targetUserId": "0WqbE9GH", "updateItems": [{"customAttributes": {"epb2M4af": {}, "OAzE1q8U": {}, "woNhdIAO": {}}, "inventoryId": "C2WzUzs1", "serverCustomAttributes": {"vXQ8EEWq": {}, "GhFAw62Q": {}, "IXJlVP81": {}}, "slotId": "PbMjffQ5", "sourceItemId": "BvBz6rEX", "tags": ["yfiGI45Z", "vVDxj3o7", "c2KDYCRr"], "type": "Py6nWDQ9"}, {"customAttributes": {"Ick7X0AL": {}, "X7Y1XjV2": {}, "jjQ2zlUA": {}}, "inventoryId": "Kaix15OW", "serverCustomAttributes": {"hJO1gs4C": {}, "RNJLLNlE": {}, "LrwSE1FA": {}}, "slotId": "PPueDnUE", "sourceItemId": "Ydrki8zZ", "tags": ["J9EiYDP3", "9zPNccvT", "LAP5q21r"], "type": "g732nIl6"}, {"customAttributes": {"TrXJxPSC": {}, "7QKMmz9K": {}, "YtPYy3Ea": {}}, "inventoryId": "krHyHpc0", "serverCustomAttributes": {"PrOB3oyI": {}, "XtHDYr7x": {}, "rO9sfr3W": {}}, "slotId": "49eUQKPO", "sourceItemId": "Ko46xehW", "tags": ["JfBMo3fn", "n8ejZ0hc", "l0Prkfzg"], "type": "UD5BYkx0"}]}, {"consumeItems": [{"inventoryId": "lwon4FKi", "options": ["NJXTXG77", "caz1lGNF", "9tfgLrWW"], "qty": 35, "slotId": "45WolyLB", "sourceItemId": "L5Z02IG3"}, {"inventoryId": "HbEQ2pA3", "options": ["okPzzRtY", "koA8pkDE", "9SOqp11o"], "qty": 18, "slotId": "zLcJht5y", "sourceItemId": "jgfGsLoF"}, {"inventoryId": "CiKx0C3f", "options": ["BjLz9iHl", "7MmnWQHF", "7lMjMZlf"], "qty": 52, "slotId": "2XVU434v", "sourceItemId": "rYgr5hQ2"}], "createItems": [{"customAttributes": {"RlHUeC6c": {}, "hMUUZKMB": {}, "BQOFwDYy": {}}, "inventoryConfigurationCode": "c3l7JOrf", "inventoryId": "YWkgGo0b", "qty": 53, "serverCustomAttributes": {"SJzz7LNh": {}, "U86lhZYC": {}, "3mv0VHsk": {}}, "slotId": "cOcuarAx", "slotUsed": 12, "source": "OTHER", "sourceItemId": "7RJBkLyL", "tags": ["w2il37tA", "ujHxNpeX", "wy3ZQXre"], "toSpecificInventory": false, "type": "AqkaqHiI"}, {"customAttributes": {"N7Xxgzpp": {}, "7iWhhFdF": {}, "jhg1E2p6": {}}, "inventoryConfigurationCode": "w2XeSRCZ", "inventoryId": "Kk8tciQw", "qty": 49, "serverCustomAttributes": {"QnARmWdw": {}, "2uO0uB5V": {}, "hlRq75Eo": {}}, "slotId": "EKjhoYF1", "slotUsed": 28, "source": "ECOMMERCE", "sourceItemId": "Vs5ywMjg", "tags": ["LqdMiL5m", "ett79BSa", "ZAGKv0vr"], "toSpecificInventory": true, "type": "Vn2BIR2f"}, {"customAttributes": {"VTQwpnTo": {}, "R4WvhMn6": {}, "cdsTcOQh": {}}, "inventoryConfigurationCode": "3Co2DsUB", "inventoryId": "IfdotH2R", "qty": 91, "serverCustomAttributes": {"mjLVDrZ9": {}, "74hCNvx7": {}, "S950XBfO": {}}, "slotId": "PjgJnXTW", "slotUsed": 84, "source": "OTHER", "sourceItemId": "YcNyVR11", "tags": ["pFAYpucQ", "Ab0JlkC8", "WGGcVC49"], "toSpecificInventory": false, "type": "yiyKFsaL"}], "removeItems": [{"inventoryId": "Igi4QQVi", "slotId": "sUvPT7GG", "sourceItemId": "T7uxSt1y"}, {"inventoryId": "uaay0gle", "slotId": "kQV3MlkZ", "sourceItemId": "iofqVPO6"}, {"inventoryId": "rh3HOL8L", "slotId": "fwuHw9af", "sourceItemId": "Zy2rSDSc"}], "targetUserId": "A5lHqsIc", "updateItems": [{"customAttributes": {"m6WDMHyI": {}, "HbGOY2lA": {}, "LezkTDnh": {}}, "inventoryId": "aUhh8JG2", "serverCustomAttributes": {"7zKBVzIN": {}, "DMiZ8mDA": {}, "20kwDnPq": {}}, "slotId": "YmJFuh8x", "sourceItemId": "jUbB7r5r", "tags": ["bgqthgwZ", "vPGDAUEs", "ZOTKAO2Q"], "type": "kp0mHAP3"}, {"customAttributes": {"RF8CLjyo": {}, "TEJKiuQs": {}, "B9kUzpbp": {}}, "inventoryId": "wO2BSyx4", "serverCustomAttributes": {"6xiE2HBi": {}, "Wbj3NNzp": {}, "lUpryuH9": {}}, "slotId": "ZWMYpEr8", "sourceItemId": "I1Omq38i", "tags": ["Hw3LJWHn", "EWd3KPu9", "C0pzgrP6"], "type": "puBkBSOs"}, {"customAttributes": {"h0Nf7qOw": {}, "hNA6mkgZ": {}, "Hs7gyUu6": {}}, "inventoryId": "BrONUNMK", "serverCustomAttributes": {"MfkhgJK6": {}, "lmMvT9DH": {}, "xLHs1u3b": {}}, "slotId": "nZA0xwSJ", "sourceItemId": "MigMEvkc", "tags": ["0wD41k9Q", "qKPaGKBc", "qiBK1mQI"], "type": "l4TSGFHC"}]}, {"consumeItems": [{"inventoryId": "gC55N6t9", "options": ["FdvFy4zF", "VInwLedV", "N5KBej1g"], "qty": 1, "slotId": "1wtIz08y", "sourceItemId": "h8XeCVl7"}, {"inventoryId": "9uQG1YL4", "options": ["8jX6uubF", "UQ4S99Cr", "eWUhlKok"], "qty": 30, "slotId": "YHCtuX95", "sourceItemId": "7J8OoTWx"}, {"inventoryId": "Bv6E6uwv", "options": ["7PxJW2cu", "VkcQJ38Y", "PegGtU8u"], "qty": 51, "slotId": "IAIydP88", "sourceItemId": "Kb4REse0"}], "createItems": [{"customAttributes": {"SsQ6Aoch": {}, "7RKTTpYw": {}, "OYdjtiP7": {}}, "inventoryConfigurationCode": "AjjUbA16", "inventoryId": "4ZlVPXUg", "qty": 76, "serverCustomAttributes": {"zbrOavsQ": {}, "31lh3s2D": {}, "RvxPct4t": {}}, "slotId": "yqXHP34B", "slotUsed": 77, "source": "OTHER", "sourceItemId": "eBRWvuuD", "tags": ["yo0MQqWt", "6fFuyVcd", "zvP15yh7"], "toSpecificInventory": false, "type": "5PSU7j5u"}, {"customAttributes": {"2qD97KJC": {}, "cOnDEfwP": {}, "p8ndXbhz": {}}, "inventoryConfigurationCode": "B7u3doFP", "inventoryId": "lDR35Yvh", "qty": 63, "serverCustomAttributes": {"V2EORnt6": {}, "j77HN9Kw": {}, "9P1kibh3": {}}, "slotId": "gRhHxnRz", "slotUsed": 9, "source": "OTHER", "sourceItemId": "EACC1cQj", "tags": ["bWE8EI6l", "N79wIXcV", "ck52lcmk"], "toSpecificInventory": true, "type": "9Dj593k8"}, {"customAttributes": {"MBgGLeFF": {}, "nr7Nxci4": {}, "0wtVD7ft": {}}, "inventoryConfigurationCode": "DWpsfiBe", "inventoryId": "AtNFdbqN", "qty": 79, "serverCustomAttributes": {"6AEjB8sM": {}, "BoYCuwg4": {}, "KgoYVwuO": {}}, "slotId": "NbJMQRTR", "slotUsed": 0, "source": "ECOMMERCE", "sourceItemId": "7i7sKMic", "tags": ["92HHAqOB", "RG71R05q", "LSlWsP0z"], "toSpecificInventory": true, "type": "1gWImwvo"}], "removeItems": [{"inventoryId": "vtCyyhwQ", "slotId": "quPfGPu8", "sourceItemId": "XAKQts0G"}, {"inventoryId": "mOkLBQcj", "slotId": "WO6cSU7o", "sourceItemId": "qHBLDPAR"}, {"inventoryId": "QeKN59XK", "slotId": "HKGUrXGf", "sourceItemId": "xjmqMol5"}], "targetUserId": "F0il2YGT", "updateItems": [{"customAttributes": {"NB4U3OJ6": {}, "roOfH3qK": {}, "mapwXI5T": {}}, "inventoryId": "j3gkgpWf", "serverCustomAttributes": {"8PtPZdPz": {}, "3MPzZ7nv": {}, "SAa0Nn7J": {}}, "slotId": "7cNFIwzu", "sourceItemId": "RqEC84RQ", "tags": ["F8ojcCHb", "ojGuhcQL", "Untxww7A"], "type": "ovEhprI7"}, {"customAttributes": {"KAhZK4xS": {}, "Ny1rn6Cq": {}, "9FvdMgGo": {}}, "inventoryId": "ROcw21za", "serverCustomAttributes": {"3gfHcV9S": {}, "F1owQw2p": {}, "XhIPy6vz": {}}, "slotId": "05auKqQo", "sourceItemId": "DSK9O857", "tags": ["cAQ7GAvF", "6Y2BZncX", "NrGyRVRe"], "type": "xxjjxbMP"}, {"customAttributes": {"wXWiSb8F": {}, "m1wLKiOt": {}, "mOfp71Nk": {}}, "inventoryId": "pag3AADf", "serverCustomAttributes": {"jtdXDoCp": {}, "WCgBcwFU": {}, "2SyKmtFN": {}}, "slotId": "rnvIz4nb", "sourceItemId": "Bq3XPPm4", "tags": ["MekLOLjJ", "gpqNvhzu", "hysot7Wz"], "type": "zN5378oS"}]}], "requestId": "lFelstxf"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListIntegrationConfigurations
samples/cli/sample-apps Inventory adminListIntegrationConfigurations \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '21' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 3 'AdminListIntegrationConfigurations' test.out

#- 4 AdminCreateIntegrationConfiguration
samples/cli/sample-apps Inventory adminCreateIntegrationConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["p2Nqus0g", "hvD2LRqu", "00YnxXPw"], "serviceName": "D0Nm5GG2", "targetInventoryCode": "pW1WYMbl"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateIntegrationConfiguration' test.out

#- 5 AdminUpdateIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateIntegrationConfiguration \
    --integrationConfigurationId 'a6RIrePi' \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["XITxQeij", "RnreFhyI", "iIlmw5MW"], "serviceName": "DGo1lZ1p", "targetInventoryCode": "23mRuOJl"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateIntegrationConfiguration' test.out

#- 6 AdminUpdateStatusIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateStatusIntegrationConfiguration \
    --integrationConfigurationId 'UAbc6SIL' \
    --namespace $AB_NAMESPACE \
    --body '{"status": "TIED"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateStatusIntegrationConfiguration' test.out

#- 7 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'QhWlOejW' \
    --limit '84' \
    --offset '1' \
    --sortBy 'updatedAt:desc' \
    --userId 'WMRsE0fo' \
    > test.out 2>&1
eval_tap $? 7 'AdminListInventories' test.out

#- 8 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "MELJWjpi", "userId": "nXgN6hea"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateInventory' test.out

#- 9 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'EfJRZ1Vg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventory' test.out

#- 10 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'rS7cqw1r' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 45}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateInventory' test.out

#- 11 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'uaLWIySb' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "KzktUmbb"}' \
    > test.out 2>&1
eval_tap $? 11 'DeleteInventory' test.out

#- 12 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'asoYvkbx' \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --offset '95' \
    --sortBy 'updatedAt:asc' \
    --sourceItemId 'hWvkqxQ7' \
    --tags 'eoIzxxMw' \
    > test.out 2>&1
eval_tap $? 12 'AdminListItems' test.out

#- 13 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'RMmHBTCG' \
    --namespace $AB_NAMESPACE \
    --slotId '75r9VeI9' \
    --sourceItemId 'Np8sXNbw' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetInventoryItem' test.out

#- 14 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'ybWMQCNv' \
    --limit '8' \
    --offset '85' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 14 'AdminListInventoryConfigurations' test.out

#- 15 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "NlkYMw3e", "description": "ayf4CRMs", "initialMaxSlots": 1, "maxInstancesPerUser": 77, "maxUpgradeSlots": 20, "name": "QqOifxNs"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateInventoryConfiguration' test.out

#- 16 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'QeYqOEy3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetInventoryConfiguration' test.out

#- 17 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'kyWw3zcj' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "mi7agYr7", "description": "TmCLGXur", "initialMaxSlots": 59, "maxInstancesPerUser": 79, "maxUpgradeSlots": 12, "name": "nb7OsCsX"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateInventoryConfiguration' test.out

#- 18 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'eTnv57SY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteInventoryConfiguration' test.out

#- 19 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '89' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 19 'AdminListItemTypes' test.out

#- 20 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "MBSI5DPD"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateItemType' test.out

#- 21 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName '64RjPM2y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminDeleteItemType' test.out

#- 22 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --offset '94' \
    --owner '0izGqx84' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 22 'AdminListTags' test.out

#- 23 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "cueESXxo", "owner": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateTag' test.out

#- 24 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'AQ2oRXuz' \
    > test.out 2>&1
eval_tap $? 24 'AdminDeleteTag' test.out

#- 25 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'OrO4qICZ' \
    --namespace $AB_NAMESPACE \
    --userId 'MZf0M5f8' \
    --body '{"options": ["AIMRLw6O", "PhVlrkHU", "OqENQRH4"], "qty": 45, "slotId": "PqGKxdrE", "sourceItemId": "2kXBEBYR"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminConsumeUserItem' test.out

#- 26 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'wSWGkLZh' \
    --namespace $AB_NAMESPACE \
    --userId 's4wdRAon' \
    --body '[{"customAttributes": {"7Vp3moLQ": {}, "mTiq8hR4": {}, "ZvPcjpVR": {}}, "serverCustomAttributes": {"fwqRo6Ss": {}, "E3jDSjcZ": {}, "wzpjMhVm": {}}, "slotId": "HFlEivYS", "sourceItemId": "EARyTTKR", "tags": ["pAZPc0an", "Xhq4e9mI", "hfKJIgTw"], "type": "Bo6L2Ios"}, {"customAttributes": {"TjXnVhzd": {}, "3BB90Bzz": {}, "oBAx5Sq7": {}}, "serverCustomAttributes": {"uuxAzviz": {}, "d0BwLmWy": {}, "aezAbXzq": {}}, "slotId": "0mPQcVXD", "sourceItemId": "c7y1zgwY", "tags": ["OAkrVBSF", "76Eu43rP", "AuG6c4PH"], "type": "uUyrpopi"}, {"customAttributes": {"zrBwNjbT": {}, "tfZn1gZ1": {}, "zlEJj3Es": {}}, "serverCustomAttributes": {"x5cUdqHE": {}, "MHFsUpjk": {}, "s4d9E2M0": {}}, "slotId": "UKUj5rRI", "sourceItemId": "MQ9NreNx", "tags": ["E3s9OdV7", "YLLB40f6", "U1lcFwvN"], "type": "ITxLyhh0"}]' \
    > test.out 2>&1
eval_tap $? 26 'AdminBulkUpdateMyItems' test.out

#- 27 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'IlITEU9h' \
    --namespace $AB_NAMESPACE \
    --userId 'tXHSZfDw' \
    --body '{"customAttributes": {"ISOk5x4R": {}, "8iHDRdsk": {}, "KMxDDqb3": {}}, "qty": 84, "serverCustomAttributes": {"9GFFXdPo": {}, "HgrOzH35": {}, "mlPtZWhf": {}}, "slotId": "L7gSkLep", "slotUsed": 37, "source": "OTHER", "sourceItemId": "mNFGdFWv", "tags": ["b9puuD9R", "J3GoVOFo", "kS21PVLs"], "type": "bdAdcFpR"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminSaveItemToInventory' test.out

#- 28 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'xJXXOB29' \
    --namespace $AB_NAMESPACE \
    --userId 'bHjxxIld' \
    --body '[{"slotId": "wboruzbQ", "sourceItemId": "npeczlaH"}, {"slotId": "MR3Nw6Ld", "sourceItemId": "AJpyhY2P"}, {"slotId": "FRX9UxlU", "sourceItemId": "SPjn6x8I"}]' \
    > test.out 2>&1
eval_tap $? 28 'AdminBulkRemoveItems' test.out

#- 29 AdminBulkSaveItemToInventory
samples/cli/sample-apps Inventory adminBulkSaveItemToInventory \
    --inventoryId 'kbOYdbaP' \
    --namespace $AB_NAMESPACE \
    --userId 'zC1YRTAA' \
    --body '[{"customAttributes": {"x4eGpfte": {}, "9k5MirSz": {}, "udGAaXif": {}}, "qty": 97, "serverCustomAttributes": {"id4sTYVQ": {}, "3Ppy0UOl": {}, "Q2gzo9r7": {}}, "slotId": "ZVoOaNga", "slotUsed": 12, "source": "OTHER", "sourceItemId": "yYEh0NiQ", "tags": ["Oz3QSVdk", "hLriXL0v", "iL3wE84t"], "type": "omZAmKei"}, {"customAttributes": {"xr1vlxja": {}, "chqJA7lH": {}, "7iFig7tb": {}}, "qty": 94, "serverCustomAttributes": {"sidmhf3I": {}, "6DBr2jPc": {}, "DChVK4PT": {}}, "slotId": "fT9kXvho", "slotUsed": 17, "source": "ECOMMERCE", "sourceItemId": "M3nvWfev", "tags": ["Vs7XsLJi", "520ZbP1h", "7IiCtyAd"], "type": "EGwPsBIF"}, {"customAttributes": {"Y4UeHuSJ": {}, "ufaeqdmE": {}, "QcU9oofo": {}}, "qty": 37, "serverCustomAttributes": {"XdV80guS": {}, "EhJ3N2g2": {}, "QoSTxDlE": {}}, "slotId": "2wMheslS", "slotUsed": 30, "source": "ECOMMERCE", "sourceItemId": "FQ7KOwcN", "tags": ["6oPuSQz2", "atxMaOwW", "CEdP8Dsl"], "type": "yXZhOTcp"}]' \
    > test.out 2>&1
eval_tap $? 29 'AdminBulkSaveItemToInventory' test.out

#- 30 AdminUpdateUserInventoriesByInventoryCode
samples/cli/sample-apps Inventory adminUpdateUserInventoriesByInventoryCode \
    --inventoryConfigurationCode 'HXEfG5HB' \
    --namespace $AB_NAMESPACE \
    --userId 'Tc8V1LuB' \
    --body '{"incMaxSlots": 16}' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateUserInventoriesByInventoryCode' test.out

#- 31 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'tVDQDTJA' \
    --body '{"customAttributes": {"9pHkULG1": {}, "yzbHJKR4": {}, "hFrRq50K": {}}, "inventoryConfigurationCode": "DgT4dwLT", "qty": 27, "serverCustomAttributes": {"jcUPP8pY": {}, "yT2iWA0L": {}, "OabZrnWI": {}}, "slotId": "QIozl6mJ", "slotUsed": 53, "source": "OTHER", "sourceItemId": "izbcq0Fw", "tags": ["5AmH7o0H", "lWpuj4Cl", "yWHc74Ar"], "type": "FncnikAm"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminSaveItem' test.out

#- 32 AdminBulkSaveItem
samples/cli/sample-apps Inventory adminBulkSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'Fbb7Md0Y' \
    --body '[{"customAttributes": {"qnq1sgf6": {}, "xbLVfUvT": {}, "ZRLgu6lM": {}}, "inventoryConfigurationCode": "I8rhRTuY", "qty": 10, "serverCustomAttributes": {"2SOehWu7": {}, "PIPRfMxb": {}, "j4CEGCg7": {}}, "slotId": "qg8YtrdZ", "slotUsed": 12, "source": "ECOMMERCE", "sourceItemId": "bhlMtijH", "tags": ["aJTEOTPG", "X5Jt9TAF", "4KISBQM3"], "type": "F9caMHaH"}, {"customAttributes": {"CCk1ZOcg": {}, "cwI8oxQc": {}, "n7lMLjlx": {}}, "inventoryConfigurationCode": "4tyoNCbm", "qty": 44, "serverCustomAttributes": {"K8xK2fuv": {}, "LTQBrtV3": {}, "0EOUovWu": {}}, "slotId": "ZngBuGDp", "slotUsed": 98, "source": "OTHER", "sourceItemId": "oKAaRsuS", "tags": ["qz1o3TaG", "PuT79y8I", "JLv1yEUD"], "type": "XazrtNEs"}, {"customAttributes": {"KBmvf94m": {}, "9c1S9Yc4": {}, "X2O12u1O": {}}, "inventoryConfigurationCode": "ZB8b0NCd", "qty": 48, "serverCustomAttributes": {"zjEDZeuM": {}, "j20LF6Je": {}, "cZwyNgEu": {}}, "slotId": "uk8sLbMV", "slotUsed": 21, "source": "OTHER", "sourceItemId": "dUxAPUJV", "tags": ["60oqONbA", "rakv1ZhK", "rMHEkO49"], "type": "SnlKcdsw"}]' \
    > test.out 2>&1
eval_tap $? 32 'AdminBulkSaveItem' test.out

#- 33 AdminSyncUserEntitlements
samples/cli/sample-apps Inventory adminSyncUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'yymWl2Px' \
    > test.out 2>&1
eval_tap $? 33 'AdminSyncUserEntitlements' test.out

#- 34 AdminPurchasable
samples/cli/sample-apps Inventory adminPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'g8pNvcJ9' \
    --body '{"entitlementType": "6iXsnmVt", "inventoryConfig": {"slotUsed": 71}, "itemId": "fC2IX3P7", "itemType": "62ocuTZC", "items": [{"bundledQty": 64, "entitlementType": "8aU0XdPF", "inventoryConfig": {"slotUsed": 60}, "itemId": "92m82M7N", "itemType": "hOiH7yoF", "sku": "mOd8j7pv", "stackable": false, "useCount": 39}, {"bundledQty": 0, "entitlementType": "TvK9Fg7c", "inventoryConfig": {"slotUsed": 64}, "itemId": "LaAyvrOA", "itemType": "H70TvNJd", "sku": "QfrgsZTe", "stackable": false, "useCount": 29}, {"bundledQty": 48, "entitlementType": "abDTxqR8", "inventoryConfig": {"slotUsed": 98}, "itemId": "gHb1EQaZ", "itemType": "cONdGSBq", "sku": "a8rO09hq", "stackable": false, "useCount": 3}], "quantity": 24, "sku": "JMnYQqfq", "stackable": true, "useCount": 34}' \
    > test.out 2>&1
eval_tap $? 34 'AdminPurchasable' test.out

#- 35 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'oeIjHZ7S' \
    --limit '16' \
    --offset '17' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 35 'PublicListInventoryConfigurations' test.out

#- 36 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '15' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 36 'PublicListItemTypes' test.out

#- 37 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '71' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 37 'PublicListTags' test.out

#- 38 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'zZwm4Gqj' \
    --limit '2' \
    --offset '100' \
    --sortBy 'updatedAt:asc' \
    > test.out 2>&1
eval_tap $? 38 'PublicListInventories' test.out

#- 39 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'KlrDDX2u' \
    --namespace $AB_NAMESPACE \
    --body '{"options": ["RMy7y5df", "N0C5qiIK", "OVIO9IzW"], "qty": 86, "slotId": "BaFkxdUJ", "sourceItemId": "mXlqv2Wc"}' \
    > test.out 2>&1
eval_tap $? 39 'PublicConsumeMyItem' test.out

#- 40 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'SZUfJ7rT' \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '71' \
    --sortBy 'updatedAt' \
    --sourceItemId 'd2hn4Hpx' \
    --tags '7KVT2nPD' \
    > test.out 2>&1
eval_tap $? 40 'PublicListItems' test.out

#- 41 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'ZMVpKgGE' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"Hvipx9EI": {}, "xtoKgT1i": {}, "GkjoGZ5O": {}}, "slotId": "58Xpwfcz", "sourceItemId": "NM6yvQwT", "tags": ["bWikLrBq", "leOhJ7aM", "n1hikasc"]}, {"customAttributes": {"m1ZR1jlG": {}, "VwXfCPKw": {}, "Zze2DwpC": {}}, "slotId": "6koHs7i8", "sourceItemId": "4BROsiJz", "tags": ["idTAZe2m", "DOdxqahn", "kSpWnZ5P"]}, {"customAttributes": {"s1YrpwOS": {}, "suP7IIlN": {}, "vtKfxw2C": {}}, "slotId": "Utz2kvCS", "sourceItemId": "fPZ7E7ue", "tags": ["Co7dgmZZ", "6qT2xdQN", "SgEgVg0R"]}]' \
    > test.out 2>&1
eval_tap $? 41 'PublicBulkUpdateMyItems' test.out

#- 42 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'hm7gE08l' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "gTPZSqoH", "sourceItemId": "RxuwzgHb"}, {"slotId": "Z5a22rGD", "sourceItemId": "THnu9n3w"}, {"slotId": "92ZnZtvE", "sourceItemId": "LUU3j7AQ"}]' \
    > test.out 2>&1
eval_tap $? 42 'PublicBulkRemoveMyItems' test.out

#- 43 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId '9RcGWQQ6' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 55, "slotId": "HX8KEhG2", "sourceItemId": "Ef9DpW5G"}, {"qty": 78, "slotId": "NJvqleMn", "sourceItemId": "HIQBkGkz"}, {"qty": 84, "slotId": "z0uRqodj", "sourceItemId": "j44pifmp"}], "srcInventoryId": "ROdkaI7V"}' \
    > test.out 2>&1
eval_tap $? 43 'PublicMoveMyItems' test.out

#- 44 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'LN9L0eDf' \
    --namespace $AB_NAMESPACE \
    --slotId '6oYXIoqu' \
    --sourceItemId 'ScZJE4E0' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE