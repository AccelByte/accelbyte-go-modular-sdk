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
    --body '{"message": "h3VoP8zD", "operations": [{"consumeItems": [{"inventoryId": "j4pM8UkN", "qty": 77, "slotId": "sG8SLbZD", "sourceItemId": "CRLoJhYU"}, {"inventoryId": "QjhYCtt3", "qty": 99, "slotId": "M41xCzVb", "sourceItemId": "fFAvyTtN"}, {"inventoryId": "5g4LRvXM", "qty": 1, "slotId": "w7kqJgpF", "sourceItemId": "4aVtf9Je"}], "createItems": [{"customAttributes": {"tlddlvmJ": {}, "ncqCXsrA": {}, "Ku47N2sq": {}}, "inventoryConfigurationCode": "AXsWzrya", "inventoryId": "h8w685LU", "qty": 98, "serverCustomAttributes": {"yvbEI8qU": {}, "czHGnccr": {}, "qov9tC8g": {}}, "slotId": "msipj9j2", "slotUsed": 56, "source": "ECOMMERCE", "sourceItemId": "Sl9WYybn", "tags": ["3VpZOnfE", "GnM9JOSj", "AHzcKl7Q"], "toSpecificInventory": false, "type": "Wzs6deeb"}, {"customAttributes": {"DIHs96Us": {}, "VGDUo26x": {}, "w0IonpIn": {}}, "inventoryConfigurationCode": "7Xmizogw", "inventoryId": "RiHRyUAJ", "qty": 84, "serverCustomAttributes": {"ibXwM22z": {}, "4YdrmUWQ": {}, "jXYyiA2h": {}}, "slotId": "tKWWxIMA", "slotUsed": 92, "source": "ECOMMERCE", "sourceItemId": "uzercj9D", "tags": ["c86TekAD", "ybRDaNOl", "8tnTHjKO"], "toSpecificInventory": false, "type": "BKSJgyaD"}, {"customAttributes": {"euSy9tRL": {}, "bM94WygJ": {}, "sOBbTa8Z": {}}, "inventoryConfigurationCode": "w9KEcr2q", "inventoryId": "N0oNolTj", "qty": 99, "serverCustomAttributes": {"qZLouz1H": {}, "HEGztVDC": {}, "lgWfW8OQ": {}}, "slotId": "e8SXwJaH", "slotUsed": 20, "source": "OTHER", "sourceItemId": "XhUD6qdH", "tags": ["ma9ao0sB", "K7qt5CJS", "e2enqMWL"], "toSpecificInventory": true, "type": "YOoACgzT"}], "removeItems": [{"inventoryId": "vAokpHtu", "slotId": "Z6ZCFZch", "sourceItemId": "jdbskuib"}, {"inventoryId": "OipR3AWL", "slotId": "wuKcZAMv", "sourceItemId": "uLAkgXWN"}, {"inventoryId": "L7Fy3zhV", "slotId": "UBJXsmpj", "sourceItemId": "Y9sQIvd9"}], "targetUserId": "KkHANtyg", "updateItems": [{"customAttributes": {"Gcel2FOS": {}, "BUwM9JP5": {}, "wFxaCeWA": {}}, "inventoryId": "wZNhBgnq", "serverCustomAttributes": {"dZMXtdHn": {}, "DUCGRY29": {}, "KlH7QHFv": {}}, "slotId": "YDKTTV96", "sourceItemId": "mnkjdjpd", "tags": ["qCrG43WW", "GT5vjvkQ", "Ykm1JU8K"], "type": "tk9G3V9j"}, {"customAttributes": {"3Z5NzXlE": {}, "kHmpW6nT": {}, "1QlAaUNq": {}}, "inventoryId": "x9EBz7m1", "serverCustomAttributes": {"3wHbtf5J": {}, "mTDLTTES": {}, "s0xfmrUh": {}}, "slotId": "DZRCy7Ri", "sourceItemId": "AC4sQtTC", "tags": ["VxfQGYnu", "LuQMG5nz", "3rGuznQR"], "type": "KfsN8rwV"}, {"customAttributes": {"8lew8r2W": {}, "sm0kFg87": {}, "04p7OTqc": {}}, "inventoryId": "NTBjcTYf", "serverCustomAttributes": {"Of0572Bz": {}, "hY7mhZYQ": {}, "skQpiAl5": {}}, "slotId": "yRcO7jPg", "sourceItemId": "Q0tyFQdh", "tags": ["XyUnHDf8", "S8amjLNW", "TZ2LOEiU"], "type": "L9onYtjQ"}]}, {"consumeItems": [{"inventoryId": "nHgAhooe", "qty": 59, "slotId": "mimRrdZ2", "sourceItemId": "FElFI1k5"}, {"inventoryId": "2AfJrdqd", "qty": 54, "slotId": "1gr5D1rB", "sourceItemId": "jeGTviuu"}, {"inventoryId": "Ink0wiGY", "qty": 43, "slotId": "FRrpm2V4", "sourceItemId": "muyycqNt"}], "createItems": [{"customAttributes": {"8VGEhWdH": {}, "44rJbSCY": {}, "dJGfBP2d": {}}, "inventoryConfigurationCode": "a84bvldw", "inventoryId": "ZlTUYsSl", "qty": 17, "serverCustomAttributes": {"NsvoXZZC": {}, "gSO3uF4O": {}, "jcwpdb2f": {}}, "slotId": "OkIIBGHj", "slotUsed": 28, "source": "ECOMMERCE", "sourceItemId": "ETyRqz11", "tags": ["wdGu2BFl", "KQ34Pkxf", "AodE0rPf"], "toSpecificInventory": false, "type": "PJUkiC3t"}, {"customAttributes": {"HeEQht1O": {}, "FHEJAZ5y": {}, "JNmVHlBM": {}}, "inventoryConfigurationCode": "dNDj0pti", "inventoryId": "dY1h3M3J", "qty": 47, "serverCustomAttributes": {"X3TYKlcN": {}, "2dicJlzl": {}, "uyeRx7sI": {}}, "slotId": "aolCz5pG", "slotUsed": 96, "source": "ECOMMERCE", "sourceItemId": "KaspINwI", "tags": ["G90zD4uH", "fycFv0g0", "Iznkua78"], "toSpecificInventory": false, "type": "KRdABUOF"}, {"customAttributes": {"sIMVontN": {}, "GijUdtC6": {}, "DL1kZssv": {}}, "inventoryConfigurationCode": "RgbACppa", "inventoryId": "R1NgdGKA", "qty": 22, "serverCustomAttributes": {"YdiI4IiH": {}, "USGaUj2O": {}, "Go1wlOIo": {}}, "slotId": "3GVenddU", "slotUsed": 84, "source": "OTHER", "sourceItemId": "irfby5BT", "tags": ["UYiFhd8S", "xJYqUD5m", "g9nEAX2e"], "toSpecificInventory": false, "type": "5P6feZOy"}], "removeItems": [{"inventoryId": "HKVsQyX0", "slotId": "eXOeZnDS", "sourceItemId": "Lp7TpNTT"}, {"inventoryId": "iqwi4c2T", "slotId": "eR55UyR2", "sourceItemId": "e4Jn5SeA"}, {"inventoryId": "iAeyNqYA", "slotId": "ir1d3spG", "sourceItemId": "319fa2aW"}], "targetUserId": "1Txik1AV", "updateItems": [{"customAttributes": {"2Sf5MBYY": {}, "ckxE0yoR": {}, "DPZfk7PN": {}}, "inventoryId": "IRddXrJ3", "serverCustomAttributes": {"YLzjIiYV": {}, "EldJ43Ia": {}, "oivcCHFA": {}}, "slotId": "sovH2tlT", "sourceItemId": "t8LNNOmb", "tags": ["pbyGOQYi", "3tTEgzQY", "1BNEOX8Y"], "type": "Y0m8nrvG"}, {"customAttributes": {"FR24lFnR": {}, "H06N3zxq": {}, "Jm5cFpVw": {}}, "inventoryId": "u86pNCM0", "serverCustomAttributes": {"aq8qZZAK": {}, "BqUtOgLi": {}, "NGxtlwwI": {}}, "slotId": "zkDdWCGs", "sourceItemId": "G9c52KKw", "tags": ["8didBB0I", "3XZCzyGP", "zjIQo9Ws"], "type": "0ElHFONT"}, {"customAttributes": {"8jQEQyEU": {}, "0FTgu5Sn": {}, "ox9mB9aA": {}}, "inventoryId": "BkZG78Kv", "serverCustomAttributes": {"gwGPPGjA": {}, "wV040r4x": {}, "NrvVsVyw": {}}, "slotId": "dCuF6DXn", "sourceItemId": "nLd7BFHr", "tags": ["D9ZrYq64", "vPPIFLqB", "0k9AZWQU"], "type": "BU1qgq4C"}]}, {"consumeItems": [{"inventoryId": "o5C7lubk", "qty": 56, "slotId": "BdEi7Yhg", "sourceItemId": "6xo4LLyK"}, {"inventoryId": "hQOQRr1N", "qty": 11, "slotId": "zqUjNh7Y", "sourceItemId": "x71wmMeL"}, {"inventoryId": "a7a2a1Ix", "qty": 24, "slotId": "dCONnSce", "sourceItemId": "FcdTKQIu"}], "createItems": [{"customAttributes": {"fP3AH1Ti": {}, "z8tmwzol": {}, "Lu7QMpfM": {}}, "inventoryConfigurationCode": "bgdyYLJZ", "inventoryId": "p5wxngmq", "qty": 3, "serverCustomAttributes": {"YJvQbiMb": {}, "XWh3J82m": {}, "NHhQjzoW": {}}, "slotId": "9pNTqZ8i", "slotUsed": 100, "source": "OTHER", "sourceItemId": "iD7RvalN", "tags": ["xHsnk1Uy", "5tuXNakc", "KvlKlmI3"], "toSpecificInventory": true, "type": "Bw99Ev8L"}, {"customAttributes": {"6hePZEUG": {}, "BRulyuQ2": {}, "58xw5086": {}}, "inventoryConfigurationCode": "PzLPnv8k", "inventoryId": "FcvCuRUx", "qty": 52, "serverCustomAttributes": {"Y1WIXwza": {}, "ZquIWUTG": {}, "Ey3jInIP": {}}, "slotId": "VxyBxsnd", "slotUsed": 99, "source": "ECOMMERCE", "sourceItemId": "o8AAS6mY", "tags": ["2HVvAJWM", "yQI0sHEH", "RHgwERlX"], "toSpecificInventory": false, "type": "tgnX6aQT"}, {"customAttributes": {"DYIP4EVZ": {}, "YPt7WSpo": {}, "Ka26NodX": {}}, "inventoryConfigurationCode": "0PNiwDWQ", "inventoryId": "S1kCRbEV", "qty": 82, "serverCustomAttributes": {"SGiHMtOu": {}, "cTeQ4suD": {}, "3KReObk7": {}}, "slotId": "WwSW8TRV", "slotUsed": 82, "source": "ECOMMERCE", "sourceItemId": "neCsKtvD", "tags": ["1vehJrxk", "ZjCeYdWh", "RK4GpaVW"], "toSpecificInventory": false, "type": "0KrV17hr"}], "removeItems": [{"inventoryId": "JK9cn4Rg", "slotId": "4Q8u8bvj", "sourceItemId": "1zcdf98i"}, {"inventoryId": "RlhPpHft", "slotId": "7NCBO2mT", "sourceItemId": "FHGslEb1"}, {"inventoryId": "lyR3DEJU", "slotId": "zvjdY5mC", "sourceItemId": "Wn5CisTR"}], "targetUserId": "ZLnixCQX", "updateItems": [{"customAttributes": {"jW2dmWar": {}, "e6GGVclC": {}, "bJKEILmn": {}}, "inventoryId": "Fhy7aNqW", "serverCustomAttributes": {"ypIxW9b9": {}, "46to6VSM": {}, "6od5TnQD": {}}, "slotId": "KygvdRHc", "sourceItemId": "Y7ziXK4U", "tags": ["5DsYnXuB", "wcoBpIck", "70NU4unR"], "type": "fJRSDGnQ"}, {"customAttributes": {"d2qYP1G0": {}, "3BDewmPZ": {}, "nj0cvp3p": {}}, "inventoryId": "FdAmEugs", "serverCustomAttributes": {"1ppLBH2u": {}, "FSBSjQgY": {}, "l1YnAdVU": {}}, "slotId": "rIl00nmc", "sourceItemId": "cA0FUyNq", "tags": ["nFXhzmbL", "K0zhv3Vc", "0XrzvTPS"], "type": "dKKFih4H"}, {"customAttributes": {"qMEfEJfn": {}, "yBwnDRGQ": {}, "eITHJPN8": {}}, "inventoryId": "W6vDXf12", "serverCustomAttributes": {"JtJc7fS0": {}, "houPyOq0": {}, "8qqCNzIa": {}}, "slotId": "z4CyZ2UX", "sourceItemId": "XhQ5V3Op", "tags": ["LEFaFhIm", "qSa6YtWN", "JMJeCee9"], "type": "1wSocvsf"}]}], "requestId": "9gGG4gT0"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListIntegrationConfigurations
samples/cli/sample-apps Inventory adminListIntegrationConfigurations \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '10' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 3 'AdminListIntegrationConfigurations' test.out

#- 4 AdminCreateIntegrationConfiguration
samples/cli/sample-apps Inventory adminCreateIntegrationConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["JqwHNXFd", "WrKEyFN7", "t0KPbGx6"], "serviceName": "ANUlqdGs", "targetInventoryCode": "fk2U5Rpu"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateIntegrationConfiguration' test.out

#- 5 AdminUpdateIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateIntegrationConfiguration \
    --integrationConfigurationId 'I1oaFgBG' \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["NsFnMMl7", "NEy37Eei", "jMnq8TbS"], "serviceName": "cBbD3Y47", "targetInventoryCode": "jslclEqN"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateIntegrationConfiguration' test.out

#- 6 AdminUpdateStatusIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateStatusIntegrationConfiguration \
    --integrationConfigurationId 'JcfGC97X' \
    --namespace $AB_NAMESPACE \
    --body '{"status": "INIT"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateStatusIntegrationConfiguration' test.out

#- 7 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'nLr0vylW' \
    --limit '10' \
    --offset '48' \
    --sortBy 'createdAt' \
    --userId 'NOqcENov' \
    > test.out 2>&1
eval_tap $? 7 'AdminListInventories' test.out

#- 8 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "ORe55uNO", "userId": "eO9LugJn"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateInventory' test.out

#- 9 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'GdRmcJDK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventory' test.out

#- 10 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'sfZRdIzX' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 63}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateInventory' test.out

#- 11 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 's5EI1gcB' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "16SVJNZy"}' \
    > test.out 2>&1
eval_tap $? 11 'DeleteInventory' test.out

#- 12 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'jjEJ7IFX' \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '60' \
    --sortBy 'updatedAt' \
    --sourceItemId 'Z1VSTnqc' \
    --tags 'gHwdg3gr' \
    > test.out 2>&1
eval_tap $? 12 'AdminListItems' test.out

#- 13 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'IqJjJky3' \
    --namespace $AB_NAMESPACE \
    --slotId 'we7QqIzR' \
    --sourceItemId 'fEUMR1b9' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetInventoryItem' test.out

#- 14 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'T4svm6g6' \
    --limit '32' \
    --offset '19' \
    --sortBy 'updatedAt:desc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListInventoryConfigurations' test.out

#- 15 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "IXFFmB9T", "description": "iHMVZ2wE", "initialMaxSlots": 16, "maxInstancesPerUser": 87, "maxUpgradeSlots": 18, "name": "sX8WNL8o"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateInventoryConfiguration' test.out

#- 16 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'HsprdcKH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetInventoryConfiguration' test.out

#- 17 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'S887yBBW' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "4HW1ku61", "description": "W28DQlAM", "initialMaxSlots": 66, "maxInstancesPerUser": 8, "maxUpgradeSlots": 87, "name": "uXkCZjEl"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateInventoryConfiguration' test.out

#- 18 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'z6LSVhVL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteInventoryConfiguration' test.out

#- 19 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '100' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 19 'AdminListItemTypes' test.out

#- 20 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "974wFicm"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateItemType' test.out

#- 21 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'QgpdKcKu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminDeleteItemType' test.out

#- 22 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '52' \
    --owner 'YkS5T4ud' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 22 'AdminListTags' test.out

#- 23 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "HcFF9aLy", "owner": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateTag' test.out

#- 24 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'V0Vjw0BI' \
    > test.out 2>&1
eval_tap $? 24 'AdminDeleteTag' test.out

#- 25 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'Zdbso0Lb' \
    --namespace $AB_NAMESPACE \
    --userId 'CmlYz3fS' \
    --body '{"qty": 76, "slotId": "KRlRekAM", "sourceItemId": "R4fpYH53"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminConsumeUserItem' test.out

#- 26 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'k3COS91Q' \
    --namespace $AB_NAMESPACE \
    --userId 'gwhn318K' \
    --body '[{"customAttributes": {"pbKgEKEb": {}, "TncW7eKt": {}, "lUOcxBKi": {}}, "serverCustomAttributes": {"O9QAOJDp": {}, "59ZKW1tD": {}, "wZKA4av0": {}}, "slotId": "NhcdOhcc", "sourceItemId": "ihRWCZk3", "tags": ["VQehVZPB", "RX6Z0N5z", "m6tjauzC"], "type": "vSXEwdvs"}, {"customAttributes": {"FYIRrPcs": {}, "pLcZv4ne": {}, "Q9zwK9ja": {}}, "serverCustomAttributes": {"n03hrhFb": {}, "MDpRZi0m": {}, "DDDDSaa0": {}}, "slotId": "qaRp8rJi", "sourceItemId": "pZF1gh0U", "tags": ["zU4oBSYW", "dRmTXdzy", "d754kM7i"], "type": "omm7PtTQ"}, {"customAttributes": {"TFwu7zRw": {}, "beui3dZX": {}, "1q0LtHAz": {}}, "serverCustomAttributes": {"YIMKTzHL": {}, "ykuiSJjG": {}, "y1KkePuv": {}}, "slotId": "cZfgEHpd", "sourceItemId": "q4xQdjH9", "tags": ["LaWGENQu", "5Sczn2Q4", "qTWjmwrN"], "type": "il0GUxaa"}]' \
    > test.out 2>&1
eval_tap $? 26 'AdminBulkUpdateMyItems' test.out

#- 27 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'lu9F2pf0' \
    --namespace $AB_NAMESPACE \
    --userId '6VDHVQoc' \
    --body '{"customAttributes": {"8ydPOyLP": {}, "9o4L7ASd": {}, "P3jNehjg": {}}, "qty": 44, "serverCustomAttributes": {"TfI2W5Op": {}, "VJ6IUKmn": {}, "8LRA4twA": {}}, "slotId": "CpqRbYqE", "slotUsed": 16, "source": "OTHER", "sourceItemId": "xPdAEmIU", "tags": ["90EUcZcC", "UgCEqIzz", "fUXLOPh6"], "type": "js4kdCpG"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminSaveItemToInventory' test.out

#- 28 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'rKnEMVaY' \
    --namespace $AB_NAMESPACE \
    --userId 'A4kv1chr' \
    --body '[{"slotId": "6EMN9r6i", "sourceItemId": "b0QSrzPc"}, {"slotId": "gbrgMiQb", "sourceItemId": "7e59Mo5D"}, {"slotId": "b43kkspT", "sourceItemId": "4pUhOufi"}]' \
    > test.out 2>&1
eval_tap $? 28 'AdminBulkRemoveItems' test.out

#- 29 AdminBulkSaveItemToInventory
samples/cli/sample-apps Inventory adminBulkSaveItemToInventory \
    --inventoryId 'GAuKJo0T' \
    --namespace $AB_NAMESPACE \
    --userId 'J8LKISl8' \
    --body '[{"customAttributes": {"qBAPZRg6": {}, "zxljOrNm": {}, "QB5YgnJ2": {}}, "qty": 42, "serverCustomAttributes": {"NYBpOItI": {}, "mdlHa5Wx": {}, "Ud9Ge4VB": {}}, "slotId": "zXENo540", "slotUsed": 87, "source": "OTHER", "sourceItemId": "4cPwMU00", "tags": ["uq01XF6O", "0YUGpO17", "Gxm26TJ1"], "type": "UJ5GBNQ2"}, {"customAttributes": {"uS243Wcg": {}, "njDyHbjd": {}, "8EKgsjMW": {}}, "qty": 24, "serverCustomAttributes": {"cfgwFm2L": {}, "NGb5jdDo": {}, "giTBUbMk": {}}, "slotId": "6uUxxj2D", "slotUsed": 9, "source": "OTHER", "sourceItemId": "DaIEctyi", "tags": ["y3MLVV5H", "MVk606JN", "LVZR3PCZ"], "type": "vcsXJRs4"}, {"customAttributes": {"8XvxeK3O": {}, "eIDekDXy": {}, "rG0GZp9g": {}}, "qty": 2, "serverCustomAttributes": {"nibgY8YU": {}, "Eb8Cwp9F": {}, "bDfGMbOj": {}}, "slotId": "1MJcFBAa", "slotUsed": 6, "source": "OTHER", "sourceItemId": "LdeYaOkZ", "tags": ["nkvCQbHg", "ltsI97wD", "dezD4oRN"], "type": "6M5tv5AK"}]' \
    > test.out 2>&1
eval_tap $? 29 'AdminBulkSaveItemToInventory' test.out

#- 30 AdminUpdateUserInventoriesByInventoryCode
samples/cli/sample-apps Inventory adminUpdateUserInventoriesByInventoryCode \
    --inventoryConfigurationCode 'hIAFPRq5' \
    --namespace $AB_NAMESPACE \
    --userId '99oUaKSc' \
    --body '{"incMaxSlots": 59}' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateUserInventoriesByInventoryCode' test.out

#- 31 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'UweqbYGp' \
    --body '{"customAttributes": {"HjunPejZ": {}, "PQtOe4uw": {}, "BE37jKYC": {}}, "inventoryConfigurationCode": "JbETTbkW", "qty": 19, "serverCustomAttributes": {"YoxAKsCW": {}, "Kd6VQliH": {}, "uAGHiaEa": {}}, "slotId": "DoG2Kz0g", "slotUsed": 21, "source": "ECOMMERCE", "sourceItemId": "tV6FOmDr", "tags": ["TfgvfLie", "wu341QWv", "iJiaA9RJ"], "type": "nnTY8tdS"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminSaveItem' test.out

#- 32 AdminBulkSaveItem
samples/cli/sample-apps Inventory adminBulkSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'Tao2idlU' \
    --body '[{"customAttributes": {"tKxzByXu": {}, "aPgI4Hhf": {}, "114EuHk0": {}}, "inventoryConfigurationCode": "G1nfj3C2", "qty": 1, "serverCustomAttributes": {"a7n8sasD": {}, "FA1Bzi3Y": {}, "l1cvobjo": {}}, "slotId": "JylKT6df", "slotUsed": 70, "source": "OTHER", "sourceItemId": "RPRwNvcn", "tags": ["F19PkpSk", "LjYTkkQu", "pwahMH97"], "type": "z4jBQ7mj"}, {"customAttributes": {"bWhsqDDn": {}, "AwSKo5hf": {}, "vJ69ULe7": {}}, "inventoryConfigurationCode": "clqguYtx", "qty": 58, "serverCustomAttributes": {"2UuDjmLa": {}, "m5EqtK41": {}, "OjBGvaMq": {}}, "slotId": "0SdtiumC", "slotUsed": 15, "source": "ECOMMERCE", "sourceItemId": "p58ypz0Y", "tags": ["P4fyjQ5o", "b6yf7UyZ", "s0eWZ1jx"], "type": "qBigtuhW"}, {"customAttributes": {"gI4wHwVz": {}, "tmeH2mnN": {}, "0ITuIjYP": {}}, "inventoryConfigurationCode": "n6d4d0jh", "qty": 34, "serverCustomAttributes": {"O5NWa1QQ": {}, "qq3L44nI": {}, "GeJMkqEU": {}}, "slotId": "3PMlZU8W", "slotUsed": 12, "source": "ECOMMERCE", "sourceItemId": "Ol6W5yoL", "tags": ["GVn3wLb0", "mH5q1HME", "SJU1fX1A"], "type": "HHaJyMok"}]' \
    > test.out 2>&1
eval_tap $? 32 'AdminBulkSaveItem' test.out

#- 33 AdminSyncUserEntitlements
samples/cli/sample-apps Inventory adminSyncUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '8j5kR7JU' \
    > test.out 2>&1
eval_tap $? 33 'AdminSyncUserEntitlements' test.out

#- 34 AdminPurchasable
samples/cli/sample-apps Inventory adminPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'WXNcRB0s' \
    --body '{"entitlementType": "3rgXDsD5", "inventoryConfig": {"slotUsed": 13}, "itemId": "TnZ4jgoD", "itemType": "GeA4pZfp", "items": [{"bundledQty": 59, "entitlementType": "fhQ1KdD7", "inventoryConfig": {"slotUsed": 48}, "itemId": "KnvXj3oG", "itemType": "ygWVvDdV", "sku": "PDMeY5tN", "stackable": false, "useCount": 34}, {"bundledQty": 88, "entitlementType": "7pZXMXwN", "inventoryConfig": {"slotUsed": 44}, "itemId": "U53v2ivx", "itemType": "8SFlvULw", "sku": "TLEhydvZ", "stackable": true, "useCount": 76}, {"bundledQty": 87, "entitlementType": "f2NrS7IP", "inventoryConfig": {"slotUsed": 71}, "itemId": "q9gDRaP7", "itemType": "OKGI6Nwt", "sku": "7iiRoP6W", "stackable": true, "useCount": 61}], "quantity": 33, "sku": "zdMQYjvm", "stackable": true, "useCount": 55}' \
    > test.out 2>&1
eval_tap $? 34 'AdminPurchasable' test.out

#- 35 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code '0nyQruBX' \
    --limit '32' \
    --offset '54' \
    --sortBy 'code' \
    > test.out 2>&1
eval_tap $? 35 'PublicListInventoryConfigurations' test.out

#- 36 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '60' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 36 'PublicListItemTypes' test.out

#- 37 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '59' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 37 'PublicListTags' test.out

#- 38 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'fkESdS6n' \
    --limit '91' \
    --offset '53' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 38 'PublicListInventories' test.out

#- 39 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'kjO2ip9W' \
    --namespace $AB_NAMESPACE \
    --body '{"qty": 77, "slotId": "54Nn8iWp", "sourceItemId": "6Wi2Sgf1"}' \
    > test.out 2>&1
eval_tap $? 39 'PublicConsumeMyItem' test.out

#- 40 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId '3whz6dKv' \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --offset '32' \
    --sortBy 'updatedAt' \
    --sourceItemId 'aX5chY2H' \
    --tags 'MPukzjWv' \
    > test.out 2>&1
eval_tap $? 40 'PublicListItems' test.out

#- 41 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'c1NprvJ8' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"8CaFk9DE": {}, "OPntpwEc": {}, "AGRRn7PX": {}}, "slotId": "FMZg1IYj", "sourceItemId": "gLPnRz7T", "tags": ["eRmXD9n7", "Pg4fMeIl", "gQLAoVlm"]}, {"customAttributes": {"jPucgFGg": {}, "1RSfuSRS": {}, "1fYKP90J": {}}, "slotId": "9ejQZsXV", "sourceItemId": "rLiSgF0O", "tags": ["vupdx9vG", "MTQk8X9q", "ebaHZ7fc"]}, {"customAttributes": {"tT9TdYve": {}, "U1J1EPok": {}, "BeGSvXIx": {}}, "slotId": "kiQGiLOB", "sourceItemId": "suR8qVsT", "tags": ["EAUyTsU1", "ULqFMYKv", "MG3SFu3R"]}]' \
    > test.out 2>&1
eval_tap $? 41 'PublicBulkUpdateMyItems' test.out

#- 42 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId '1Y2iVTUa' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "nXb1994a", "sourceItemId": "bovkRzji"}, {"slotId": "WCR2Qrye", "sourceItemId": "lR9MWnGm"}, {"slotId": "NmC4TqXF", "sourceItemId": "0vJKw9vD"}]' \
    > test.out 2>&1
eval_tap $? 42 'PublicBulkRemoveMyItems' test.out

#- 43 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'P25COb0c' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 95, "slotId": "gjf7PurO", "sourceItemId": "d5BCn82N"}, {"qty": 87, "slotId": "SW93sxTd", "sourceItemId": "xx4Evpgy"}, {"qty": 92, "slotId": "dcChQ18i", "sourceItemId": "AJltaff2"}], "srcInventoryId": "Hx8IS84q"}' \
    > test.out 2>&1
eval_tap $? 43 'PublicMoveMyItems' test.out

#- 44 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'xsMyePFs' \
    --namespace $AB_NAMESPACE \
    --slotId 'iWpUeFrW' \
    --sourceItemId 'V0VLGlyX' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE