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
    --body '{"message": "0vaQzLHv", "operations": [{"consumeItems": [{"inventoryId": "OZyRrdVz", "qty": 88, "slotId": "LvGUH0rP", "sourceItemId": "4HcdMaAa"}, {"inventoryId": "towxXzqm", "qty": 25, "slotId": "1OcscIpc", "sourceItemId": "FqyzAtUa"}, {"inventoryId": "Un74P154", "qty": 37, "slotId": "XEJw99Ix", "sourceItemId": "Plv4wJje"}], "createItems": [{"customAttributes": {"U11Tl7sA": {}, "vYnu9exX": {}, "GPFwJ4Ep": {}}, "inventoryConfigurationCode": "WTiRiubb", "inventoryId": "F9c4XFiJ", "qty": 24, "serverCustomAttributes": {"TXGET9ZB": {}, "GrrbGJWC": {}, "Yy2knpkN": {}}, "slotId": "ur2Yp4tt", "slotUsed": 80, "source": "OTHER", "sourceItemId": "kvpTRjoN", "tags": ["DjwQxSIr", "eauP2Mle", "4LODnS8B"], "toSpecificInventory": false, "type": "YUrVSltX"}, {"customAttributes": {"heT6Rw4K": {}, "o6iqu96A": {}, "z6ZWHoUN": {}}, "inventoryConfigurationCode": "toTjOG8p", "inventoryId": "gaPIiMGE", "qty": 37, "serverCustomAttributes": {"6NqxOH9s": {}, "OkGA7QWd": {}, "nYKmhwxJ": {}}, "slotId": "pG0xEfC4", "slotUsed": 97, "source": "OTHER", "sourceItemId": "5QijbXJK", "tags": ["87Mc5DVb", "b1oI1Tdq", "GCwdtSMY"], "toSpecificInventory": false, "type": "ukUqyiys"}, {"customAttributes": {"lcRWUgZx": {}, "f1JfEV9G": {}, "zqMLic3g": {}}, "inventoryConfigurationCode": "DMiuJLXv", "inventoryId": "7Cfjeq4t", "qty": 54, "serverCustomAttributes": {"WUGyEhjL": {}, "gKvi9zBv": {}, "S4RK2nIk": {}}, "slotId": "I6CCNWWs", "slotUsed": 54, "source": "OTHER", "sourceItemId": "2hQLrl6g", "tags": ["BmvMO9T1", "EqMaf0zR", "RctdDrBn"], "toSpecificInventory": true, "type": "pwI7n96b"}], "removeItems": [{"inventoryId": "wvC7mLZf", "slotId": "pTtxWypf", "sourceItemId": "gjPCHroZ"}, {"inventoryId": "VBwSQ61Q", "slotId": "8vuVB4DR", "sourceItemId": "DRDZMT7v"}, {"inventoryId": "Q0lTRKKt", "slotId": "ZeBXQqqs", "sourceItemId": "rfmZsxNT"}], "targetUserId": "P3c1ioLP", "updateItems": [{"customAttributes": {"Sg27kjiN": {}, "BISatAXJ": {}, "rZYA4f3d": {}}, "inventoryId": "dPgEY8s6", "serverCustomAttributes": {"mHbxrbve": {}, "OWUmKcBe": {}, "fMt0dfty": {}}, "slotId": "ZcenpvC0", "sourceItemId": "JxUspSRd", "tags": ["u8fJQN8D", "IFEmJZPF", "8d83ncMA"], "type": "V8nVRLKJ"}, {"customAttributes": {"oDsPyWDJ": {}, "P96cB3RZ": {}, "51xuhvFF": {}}, "inventoryId": "UkFiaSNW", "serverCustomAttributes": {"c1v4VczA": {}, "C73D8eck": {}, "6tBvqe3h": {}}, "slotId": "lyxDnIxp", "sourceItemId": "TWRcki7i", "tags": ["5JxNGJbs", "NNTMym0T", "T5ZzLZRX"], "type": "JsEo4pD9"}, {"customAttributes": {"8Emyw7cd": {}, "cs5eUgGx": {}, "8b0C3Pt7": {}}, "inventoryId": "HGwhII5K", "serverCustomAttributes": {"SbAHGKbA": {}, "sXmv4Rqh": {}, "2zdeWAwk": {}}, "slotId": "R2RvuvhP", "sourceItemId": "3bN5zYXb", "tags": ["VynX9Vr8", "uge6kQvC", "U883qUqv"], "type": "yRO4GgPM"}]}, {"consumeItems": [{"inventoryId": "iyRQ45Do", "qty": 99, "slotId": "ghjg06k7", "sourceItemId": "J4XVYLAn"}, {"inventoryId": "AEj7y3G2", "qty": 78, "slotId": "IWEul0k9", "sourceItemId": "RoVj4Mxk"}, {"inventoryId": "fFoA7D3E", "qty": 88, "slotId": "GJGhACNy", "sourceItemId": "avzn9iQB"}], "createItems": [{"customAttributes": {"F8bx06nL": {}, "LoIR6UNu": {}, "RoHxOR6A": {}}, "inventoryConfigurationCode": "1zICCfvL", "inventoryId": "WCUjW513", "qty": 11, "serverCustomAttributes": {"I7MdXsxn": {}, "88xxYTYF": {}, "zKQGtPm3": {}}, "slotId": "sDC0FfAr", "slotUsed": 52, "source": "ECOMMERCE", "sourceItemId": "xFyJMhuT", "tags": ["rhNHBfC8", "OlOZQrlk", "fv4yPFiC"], "toSpecificInventory": false, "type": "DbmjNVHd"}, {"customAttributes": {"IOUJo3a1": {}, "OcersLJd": {}, "LtcKL8gs": {}}, "inventoryConfigurationCode": "TMbiz45q", "inventoryId": "u5rRbgxh", "qty": 39, "serverCustomAttributes": {"C9I2dOVG": {}, "EbyF08S0": {}, "45snxDci": {}}, "slotId": "UaqPvKhn", "slotUsed": 48, "source": "OTHER", "sourceItemId": "Cnqr24kq", "tags": ["bWg00Xku", "OYJoKfYI", "nx44CIzP"], "toSpecificInventory": true, "type": "Ihlyjq9w"}, {"customAttributes": {"wPLCmc20": {}, "6JEaAfvA": {}, "Zhg3Bk0B": {}}, "inventoryConfigurationCode": "akn3UK0j", "inventoryId": "aFLoBgs3", "qty": 100, "serverCustomAttributes": {"Mf7Q6mtN": {}, "a818EkbQ": {}, "WNFwkzi7": {}}, "slotId": "WC6yBGgE", "slotUsed": 65, "source": "OTHER", "sourceItemId": "qyH301fF", "tags": ["0N2cZyYQ", "9KH1XDuJ", "98g3cqAr"], "toSpecificInventory": false, "type": "9DZWXFFv"}], "removeItems": [{"inventoryId": "yXFJWTR4", "slotId": "tfPEXSMu", "sourceItemId": "vECE1v2i"}, {"inventoryId": "PqVbl7QF", "slotId": "ocIqoaso", "sourceItemId": "cRhv4Lkn"}, {"inventoryId": "Vh7BzFW7", "slotId": "fgU7zmFy", "sourceItemId": "ZGwbN5Wi"}], "targetUserId": "g28sBpOw", "updateItems": [{"customAttributes": {"5cnc9PF8": {}, "yE0s0LKP": {}, "RDk7Fg2D": {}}, "inventoryId": "xQharZvP", "serverCustomAttributes": {"odIAdttw": {}, "PKWar6V6": {}, "cO7OLVR5": {}}, "slotId": "FOQAqWX1", "sourceItemId": "omD4ChKI", "tags": ["Of5lJ65d", "HTIQP2Cs", "Y19NFDIj"], "type": "xVyvSThB"}, {"customAttributes": {"44FchxiT": {}, "jBwOKInw": {}, "8kBGHP9r": {}}, "inventoryId": "NhWhA349", "serverCustomAttributes": {"FccdIoJG": {}, "hmddI9IQ": {}, "ku3P7n5K": {}}, "slotId": "P8sjF5ue", "sourceItemId": "I8kClx5y", "tags": ["78ReIgZA", "BUE2yiAT", "S28e5LQB"], "type": "9vyCilVo"}, {"customAttributes": {"GPNVVghk": {}, "oJsmVWJO": {}, "nKbHsQAA": {}}, "inventoryId": "0bnQ6AEm", "serverCustomAttributes": {"s6SoIaUr": {}, "OGGd95dT": {}, "gh7PJdhq": {}}, "slotId": "uVsP5GZs", "sourceItemId": "iKTfRo2U", "tags": ["9Gsw2WqR", "AxR0mZXo", "hbTXoMQn"], "type": "1xcehQ81"}]}, {"consumeItems": [{"inventoryId": "ioDBF89n", "qty": 75, "slotId": "IZeZaMQz", "sourceItemId": "A50P0yt0"}, {"inventoryId": "dpRqGNs4", "qty": 40, "slotId": "pNhGkMBR", "sourceItemId": "aGzR3qgT"}, {"inventoryId": "Uy5OyDzG", "qty": 19, "slotId": "b2nQeogI", "sourceItemId": "p1how0uT"}], "createItems": [{"customAttributes": {"CjnXN9q4": {}, "uj7gm1jY": {}, "b4FGSbJ3": {}}, "inventoryConfigurationCode": "U1zykq2H", "inventoryId": "ylkrJ5M2", "qty": 91, "serverCustomAttributes": {"TKIZUblj": {}, "XUCMDnuj": {}, "TxwwJklW": {}}, "slotId": "mIlFf0Ej", "slotUsed": 91, "source": "ECOMMERCE", "sourceItemId": "e85mBIzi", "tags": ["Y3ofACX5", "zAMawgpK", "eWuVBuee"], "toSpecificInventory": true, "type": "BSaM3h5d"}, {"customAttributes": {"av8vVPTF": {}, "JvVTIq1d": {}, "3L8agPZ7": {}}, "inventoryConfigurationCode": "x6HSbSsp", "inventoryId": "EiIp8Z71", "qty": 64, "serverCustomAttributes": {"pSCHxGn7": {}, "FGJ2ndw3": {}, "5SJTUp74": {}}, "slotId": "mwT3a4BE", "slotUsed": 18, "source": "OTHER", "sourceItemId": "CKT5fD17", "tags": ["NRdMFgEQ", "ulP2wY2Q", "poq8T7E5"], "toSpecificInventory": true, "type": "YodeSlkK"}, {"customAttributes": {"bJ3xIVhy": {}, "z6cUyKkq": {}, "7pVXCsKp": {}}, "inventoryConfigurationCode": "3emcYubt", "inventoryId": "OZQq1Xua", "qty": 91, "serverCustomAttributes": {"82WuDT0a": {}, "TRhfOAim": {}, "kzqK5c0f": {}}, "slotId": "5Dkt40YV", "slotUsed": 78, "source": "OTHER", "sourceItemId": "xcgP0LkP", "tags": ["FTmHzgIi", "bddeKo7Y", "JOrKAnRk"], "toSpecificInventory": true, "type": "wP7tHEua"}], "removeItems": [{"inventoryId": "tLgdDpPY", "slotId": "iZSF0ZSS", "sourceItemId": "vfzM6DPl"}, {"inventoryId": "SfRUV0WI", "slotId": "2sInNunL", "sourceItemId": "MVuCnCJr"}, {"inventoryId": "bpXS0VXD", "slotId": "tJZPcxEF", "sourceItemId": "8j10FX9i"}], "targetUserId": "4Dha85qW", "updateItems": [{"customAttributes": {"fU7wXzE3": {}, "5iIPRIEN": {}, "XdA2yWFz": {}}, "inventoryId": "Q0h9XD7i", "serverCustomAttributes": {"h9UUHq6g": {}, "Yv5yqIkv": {}, "TKfI5usb": {}}, "slotId": "KpW8ujHm", "sourceItemId": "Hp0LVyPP", "tags": ["tbVOyL2Y", "RzmqNYVF", "mityLaIo"], "type": "d12MzWWk"}, {"customAttributes": {"1aFlADsU": {}, "cw9gysEH": {}, "YiwsryV2": {}}, "inventoryId": "CKBC9Vli", "serverCustomAttributes": {"vNYR1UF9": {}, "80YReWEF": {}, "nPDhBD8p": {}}, "slotId": "iqOLyfxP", "sourceItemId": "v1tY0GFr", "tags": ["3t7fv2UU", "PI4IDhl9", "EwljGt8p"], "type": "92alyNmQ"}, {"customAttributes": {"yral0RoS": {}, "Sq18iw41": {}, "w6qyQHWK": {}}, "inventoryId": "rX1KHeqd", "serverCustomAttributes": {"GoNbT4VH": {}, "OBoJepFG": {}, "N0UuTuLw": {}}, "slotId": "wcAzeByP", "sourceItemId": "r7oX6atX", "tags": ["fXRit7K8", "5W2YPU1a", "mswvLyex"], "type": "DZYeUjWC"}]}], "requestId": "vXREGepI"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListIntegrationConfigurations
samples/cli/sample-apps Inventory adminListIntegrationConfigurations \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '62' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 3 'AdminListIntegrationConfigurations' test.out

#- 4 AdminCreateIntegrationConfiguration
samples/cli/sample-apps Inventory adminCreateIntegrationConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["jxCgAQF9", "om2MpmCO", "Ywt7gOOb"], "serviceName": "pCRFTdEx", "targetInventoryCode": "p8zxKLHP"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateIntegrationConfiguration' test.out

#- 5 AdminUpdateIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateIntegrationConfiguration \
    --integrationConfigurationId 'JOIG66Du' \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["UqNrOg51", "10e2I2vj", "bhO8PMzL"], "serviceName": "0IXxr1J0", "targetInventoryCode": "ETul1wxp"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateIntegrationConfiguration' test.out

#- 6 AdminUpdateStatusIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateStatusIntegrationConfiguration \
    --integrationConfigurationId 'iKPI4gT6' \
    --namespace $AB_NAMESPACE \
    --body '{"status": "TIED"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateStatusIntegrationConfiguration' test.out

#- 7 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'nYS1d8T1' \
    --limit '95' \
    --offset '81' \
    --sortBy 'inventoryConfigurationCode:desc' \
    --userId 'cGLhfUUx' \
    > test.out 2>&1
eval_tap $? 7 'AdminListInventories' test.out

#- 8 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "3FnyDdfu", "userId": "Chf8ANot"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateInventory' test.out

#- 9 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId '2dcveANB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventory' test.out

#- 10 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'oLgGMZPW' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 83}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateInventory' test.out

#- 11 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'k97Lkimv' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "mAKjI68R"}' \
    > test.out 2>&1
eval_tap $? 11 'DeleteInventory' test.out

#- 12 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'ss0Ua8yk' \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '39' \
    --sortBy 'updatedAt' \
    --sourceItemId 'oShPJdGf' \
    --tags '8GPAbGOJ' \
    > test.out 2>&1
eval_tap $? 12 'AdminListItems' test.out

#- 13 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'VpQBsvw0' \
    --namespace $AB_NAMESPACE \
    --slotId 'x5qRxOr3' \
    --sourceItemId 'tEqNQFTc' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetInventoryItem' test.out

#- 14 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'ETkZqqJW' \
    --limit '31' \
    --offset '2' \
    --sortBy 'updatedAt' \
    > test.out 2>&1
eval_tap $? 14 'AdminListInventoryConfigurations' test.out

#- 15 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "cmdHwzqK", "description": "D9RERing", "initialMaxSlots": 39, "maxInstancesPerUser": 35, "maxUpgradeSlots": 25, "name": "zZnuwDhk"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateInventoryConfiguration' test.out

#- 16 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId '2IteD5p0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetInventoryConfiguration' test.out

#- 17 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'EJYTrtLG' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "BdOdDl7F", "description": "9HZV6Oj8", "initialMaxSlots": 47, "maxInstancesPerUser": 39, "maxUpgradeSlots": 8, "name": "o0MA8Gtf"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateInventoryConfiguration' test.out

#- 18 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'LUyAJ99e' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteInventoryConfiguration' test.out

#- 19 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '19' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 19 'AdminListItemTypes' test.out

#- 20 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "0UHcR2QU"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateItemType' test.out

#- 21 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'QbgGlCzG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminDeleteItemType' test.out

#- 22 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '96' \
    --owner 'Nt4e2IdB' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 22 'AdminListTags' test.out

#- 23 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "U0voTX2F", "owner": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateTag' test.out

#- 24 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'y4szC4Of' \
    > test.out 2>&1
eval_tap $? 24 'AdminDeleteTag' test.out

#- 25 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'yuZb0QyG' \
    --namespace $AB_NAMESPACE \
    --userId '4Jifvye2' \
    --body '{"qty": 15, "slotId": "hq5PeQE0", "sourceItemId": "Fio1cGqs"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminConsumeUserItem' test.out

#- 26 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'sCUOpeAk' \
    --namespace $AB_NAMESPACE \
    --userId 'IpxEpGOe' \
    --body '[{"customAttributes": {"nuLc7mm4": {}, "UHWPOAMv": {}, "hytMysIL": {}}, "serverCustomAttributes": {"66ebMgTf": {}, "W764Hv7G": {}, "BsmiKwlD": {}}, "slotId": "bd2nqivP", "sourceItemId": "fRpqGepc", "tags": ["n2fqpqZN", "pAj8E60Z", "Sf9cGrPj"], "type": "uSlBioGW"}, {"customAttributes": {"rK7fOP8d": {}, "6czgiklj": {}, "fdRuWkmS": {}}, "serverCustomAttributes": {"LOOJidtc": {}, "e31IChHS": {}, "Op10Noa2": {}}, "slotId": "CmRVUffv", "sourceItemId": "V9u63jjS", "tags": ["td8onOBt", "YKnjU0HR", "uxHFM7cb"], "type": "A3LYis2z"}, {"customAttributes": {"LBPjiFoo": {}, "M74L5BhL": {}, "Kk4mpYad": {}}, "serverCustomAttributes": {"Pfjq2Dpi": {}, "3xCcsBzx": {}, "dsrJLIin": {}}, "slotId": "f0wQNEsm", "sourceItemId": "3DmEs1AD", "tags": ["t67XV6ZL", "AnVN2BNH", "lRaD5unw"], "type": "o514QGkV"}]' \
    > test.out 2>&1
eval_tap $? 26 'AdminBulkUpdateMyItems' test.out

#- 27 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'MwUHmXKA' \
    --namespace $AB_NAMESPACE \
    --userId '9NFNdiBk' \
    --body '{"customAttributes": {"fu8NQaje": {}, "UnYltq1I": {}, "iBEIRQUu": {}}, "qty": 97, "serverCustomAttributes": {"LIChgclQ": {}, "GFdWgIUv": {}, "0hRdcSKd": {}}, "slotId": "OSgLnsZe", "slotUsed": 54, "source": "ECOMMERCE", "sourceItemId": "HF3WHvwx", "tags": ["tqlnZxqj", "BGT88iEb", "rgGlHHjn"], "type": "M09JuTPm"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminSaveItemToInventory' test.out

#- 28 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'U0zrxXof' \
    --namespace $AB_NAMESPACE \
    --userId 'e15P5dKr' \
    --body '[{"slotId": "HdqG8mVC", "sourceItemId": "a81bFtWp"}, {"slotId": "l904c4WZ", "sourceItemId": "qXLTxsox"}, {"slotId": "wxQHZ6rh", "sourceItemId": "up9xQSku"}]' \
    > test.out 2>&1
eval_tap $? 28 'AdminBulkRemoveItems' test.out

#- 29 AdminBulkSaveItemToInventory
samples/cli/sample-apps Inventory adminBulkSaveItemToInventory \
    --inventoryId 'Uj7lqgKu' \
    --namespace $AB_NAMESPACE \
    --userId '83r7snrG' \
    --body '[{"customAttributes": {"Z6JUzYIl": {}, "x2OddRyp": {}, "JsTQq5y9": {}}, "qty": 65, "serverCustomAttributes": {"ogCV40te": {}, "ySt5n9ER": {}, "jgmJLWlJ": {}}, "slotId": "agGhRBi1", "slotUsed": 83, "source": "ECOMMERCE", "sourceItemId": "2rVzhkEL", "tags": ["DefnRzDq", "jMnkbxCi", "wOEKrdoQ"], "type": "8VRwltEc"}, {"customAttributes": {"hRZJ8aAh": {}, "K5KbDmyH": {}, "UhxZSSUp": {}}, "qty": 71, "serverCustomAttributes": {"EHAtXlIK": {}, "ZFLJ2w1n": {}, "9tNAi4lg": {}}, "slotId": "SlX2ncif", "slotUsed": 2, "source": "OTHER", "sourceItemId": "6QUJoXxr", "tags": ["mb7XDcIE", "h4xwPEdz", "j1g1RrLw"], "type": "Wjk2e2Pd"}, {"customAttributes": {"htqpbj7Q": {}, "0sZsbyyT": {}, "DuIybXZu": {}}, "qty": 17, "serverCustomAttributes": {"eemFYzKK": {}, "5ctnP6T2": {}, "caKj236y": {}}, "slotId": "ctAeZfyU", "slotUsed": 36, "source": "OTHER", "sourceItemId": "MzrqCE0f", "tags": ["vpOwY8Ob", "pYsvPXno", "PT6bNC2z"], "type": "IFGf7Duq"}]' \
    > test.out 2>&1
eval_tap $? 29 'AdminBulkSaveItemToInventory' test.out

#- 30 AdminUpdateUserInventoriesByInventoryCode
samples/cli/sample-apps Inventory adminUpdateUserInventoriesByInventoryCode \
    --inventoryConfigurationCode '8Lk5dyFU' \
    --namespace $AB_NAMESPACE \
    --userId 'aOxZxWn3' \
    --body '{"incMaxSlots": 37}' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateUserInventoriesByInventoryCode' test.out

#- 31 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId '8ndZx4nu' \
    --body '{"customAttributes": {"gMVoQvV5": {}, "XvyE3HJB": {}, "PQLqjuhY": {}}, "inventoryConfigurationCode": "qzrps0uU", "qty": 75, "serverCustomAttributes": {"kntKs5QE": {}, "CulSGmBP": {}, "bWhh47ya": {}}, "slotId": "BJZE5Vyr", "slotUsed": 55, "source": "OTHER", "sourceItemId": "l2BnRdyS", "tags": ["EPKVKNTq", "0qiE7LzT", "uaKXLYQU"], "type": "qhSCFzcI"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminSaveItem' test.out

#- 32 AdminBulkSaveItem
samples/cli/sample-apps Inventory adminBulkSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'GQCUU12C' \
    --body '[{"customAttributes": {"GcPM4IsH": {}, "9zycUyTG": {}, "jmnN5E81": {}}, "inventoryConfigurationCode": "qiQhuyks", "qty": 77, "serverCustomAttributes": {"9MxejUqt": {}, "M6Kuy3Ae": {}, "XN67V0gC": {}}, "slotId": "RNrLdLeR", "slotUsed": 6, "source": "OTHER", "sourceItemId": "BFsHj8us", "tags": ["ujMZvb5k", "8UsYM0Nu", "Q7M7PL74"], "type": "zQG3v5vm"}, {"customAttributes": {"tBZplqVB": {}, "OdalNSAN": {}, "jMWZxxqD": {}}, "inventoryConfigurationCode": "wC3McPvb", "qty": 61, "serverCustomAttributes": {"nSdS0596": {}, "XUSYslfD": {}, "vkfughYA": {}}, "slotId": "9GIby6ln", "slotUsed": 55, "source": "OTHER", "sourceItemId": "2yJnF01x", "tags": ["DRM6i9c9", "wJDovTlw", "lPkQSxoQ"], "type": "Qiv47qtd"}, {"customAttributes": {"qlfyBHzm": {}, "MXi97w3w": {}, "J2Db2HmO": {}}, "inventoryConfigurationCode": "8idIa7RW", "qty": 41, "serverCustomAttributes": {"K7BwouDb": {}, "DWVtW0Iv": {}, "KD4j1pMQ": {}}, "slotId": "lGnoTeyv", "slotUsed": 29, "source": "ECOMMERCE", "sourceItemId": "GxoxjIxp", "tags": ["xHsUFjsj", "hndCrTIF", "07gIZdkX"], "type": "eMloL4PA"}]' \
    > test.out 2>&1
eval_tap $? 32 'AdminBulkSaveItem' test.out

#- 33 AdminSyncUserEntitlements
samples/cli/sample-apps Inventory adminSyncUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'ZVdzez2U' \
    > test.out 2>&1
eval_tap $? 33 'AdminSyncUserEntitlements' test.out

#- 34 AdminPurchasable
samples/cli/sample-apps Inventory adminPurchasable \
    --namespace $AB_NAMESPACE \
    --userId '6Z73gidt' \
    --body '{"entitlementType": "K4wjzGIa", "inventoryConfig": {"slotUsed": 68}, "itemId": "8K2cE97f", "itemType": "DLRB11nv", "items": [{"bundledQty": 26, "entitlementType": "Yl7MHyD2", "inventoryConfig": {"slotUsed": 43}, "itemId": "Bfw52BzL", "itemType": "edlNsPuO", "sku": "RrKWdQ7q", "stackable": false, "useCount": 99}, {"bundledQty": 9, "entitlementType": "nwQmj4NU", "inventoryConfig": {"slotUsed": 69}, "itemId": "7lf3IPkr", "itemType": "9Npw1VkK", "sku": "b34p6Idu", "stackable": true, "useCount": 92}, {"bundledQty": 82, "entitlementType": "KIXxXjV3", "inventoryConfig": {"slotUsed": 100}, "itemId": "ybMph97k", "itemType": "Cu3eUm2S", "sku": "w1Ufaqag", "stackable": false, "useCount": 97}], "quantity": 38, "sku": "KTEDC5lE", "stackable": false, "useCount": 73}' \
    > test.out 2>&1
eval_tap $? 34 'AdminPurchasable' test.out

#- 35 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'vJTu34BT' \
    --limit '77' \
    --offset '63' \
    --sortBy 'updatedAt:desc' \
    > test.out 2>&1
eval_tap $? 35 'PublicListInventoryConfigurations' test.out

#- 36 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '16' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 36 'PublicListItemTypes' test.out

#- 37 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '6' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 37 'PublicListTags' test.out

#- 38 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'F7z5TTLC' \
    --limit '4' \
    --offset '93' \
    --sortBy 'updatedAt' \
    > test.out 2>&1
eval_tap $? 38 'PublicListInventories' test.out

#- 39 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId '9YeHMZaO' \
    --namespace $AB_NAMESPACE \
    --body '{"qty": 31, "slotId": "dazFHbKR", "sourceItemId": "pVbBQA2s"}' \
    > test.out 2>&1
eval_tap $? 39 'PublicConsumeMyItem' test.out

#- 40 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId '7rlgV09I' \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '99' \
    --sortBy 'updatedAt:desc' \
    --sourceItemId 'VgA5nmBm' \
    --tags 'sJ69tYQJ' \
    > test.out 2>&1
eval_tap $? 40 'PublicListItems' test.out

#- 41 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'GaBmzRhM' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"L0gzH5De": {}, "eVAjHKmW": {}, "Kgvlirg6": {}}, "slotId": "grwjpIle", "sourceItemId": "Z3EywwiV", "tags": ["bE9WvOmW", "VbDPE6vr", "hlkk4gSc"]}, {"customAttributes": {"xZVNQWL9": {}, "8piivUK0": {}, "4Pg4yA76": {}}, "slotId": "lTLkwK3U", "sourceItemId": "hO1oa9Hs", "tags": ["m6IYz6mM", "LCfLWw6a", "2Kza8dic"]}, {"customAttributes": {"OzjE7R2I": {}, "2RYdDI8J": {}, "UiOfC9qT": {}}, "slotId": "UnIK2w6j", "sourceItemId": "qCh8bDPU", "tags": ["bulTWiQw", "RXGM4zP7", "XitlwyNa"]}]' \
    > test.out 2>&1
eval_tap $? 41 'PublicBulkUpdateMyItems' test.out

#- 42 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'fqAOAynW' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "8WIjV5Hn", "sourceItemId": "k0vL0xb6"}, {"slotId": "zMu3ssg2", "sourceItemId": "GJzfWrZo"}, {"slotId": "QWvRxLHu", "sourceItemId": "2y3UxfOH"}]' \
    > test.out 2>&1
eval_tap $? 42 'PublicBulkRemoveMyItems' test.out

#- 43 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId '9l7ZYSr4' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 83, "slotId": "TeRUwSY2", "sourceItemId": "hty0Tjv0"}, {"qty": 21, "slotId": "7h0KEqDW", "sourceItemId": "OFUq27fO"}, {"qty": 71, "slotId": "G3BCmMzJ", "sourceItemId": "nthww3QQ"}], "srcInventoryId": "NhCHHsBO"}' \
    > test.out 2>&1
eval_tap $? 43 'PublicMoveMyItems' test.out

#- 44 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'IUlIcV3H' \
    --namespace $AB_NAMESPACE \
    --slotId 'qOBc8LKG' \
    --sourceItemId 'IoxFkBW4' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE