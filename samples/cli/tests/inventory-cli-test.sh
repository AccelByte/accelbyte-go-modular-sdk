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
    --body '{"message": "exxVbsBZ", "operations": [{"consumeItems": [{"inventoryId": "ySiZM0U0", "qty": 2, "slotId": "DNLUOZXv", "sourceItemId": "oFmemEHh"}, {"inventoryId": "XwiVC1Bu", "qty": 47, "slotId": "V8aIw1Ti", "sourceItemId": "KTGyP3CQ"}, {"inventoryId": "m9nkqIW2", "qty": 76, "slotId": "SEjo71sJ", "sourceItemId": "ClHsMd3t"}], "createItems": [{"customAttributes": {"JVcgFUCl": {}, "INp2V6KZ": {}, "vM6QauYb": {}}, "inventoryConfigurationCode": "IKdXjoPY", "inventoryId": "zkKdRSWf", "qty": 52, "serverCustomAttributes": {"yYPAIy1Q": {}, "H5RmARIx": {}, "xvXEhjoA": {}}, "slotId": "cbId8Jpq", "slotUsed": 49, "sourceItemId": "5S7dq873", "tags": ["k9RF7FWZ", "JKz2jtWY", "MQ6fyQEi"], "toSpecificInventory": true, "type": "mCpPfrdU"}, {"customAttributes": {"hn9d2WKY": {}, "sueDNCMm": {}, "y7ZjbYTy": {}}, "inventoryConfigurationCode": "krifxduA", "inventoryId": "AMUDtzZB", "qty": 79, "serverCustomAttributes": {"nZTqGxSC": {}, "VtXv09jI": {}, "ZiO06lkh": {}}, "slotId": "nyNCXtjo", "slotUsed": 12, "sourceItemId": "1nI8rCXR", "tags": ["1VCAAnjm", "kVgSKyFP", "tTVVhdyX"], "toSpecificInventory": false, "type": "IakIGA1Q"}, {"customAttributes": {"grkHlyd2": {}, "WH7i05hD": {}, "tmdyOrHD": {}}, "inventoryConfigurationCode": "xMMLUL9N", "inventoryId": "UmOLrFoP", "qty": 86, "serverCustomAttributes": {"3oLwJLk7": {}, "0YPKUjZt": {}, "3VKivbLO": {}}, "slotId": "Nz3bV7DL", "slotUsed": 81, "sourceItemId": "ORk7w2fQ", "tags": ["YvZj9PYJ", "joxc7mYu", "Yo1kd6LT"], "toSpecificInventory": true, "type": "uInoi9QC"}], "removeItems": [{"inventoryId": "tDZp6Axa", "slotId": "uxWHDlSe", "sourceItemId": "ysE7huL0"}, {"inventoryId": "LxZL4VWm", "slotId": "vDCBacWS", "sourceItemId": "Ftce2T19"}, {"inventoryId": "1647FtHw", "slotId": "HT0eiXw4", "sourceItemId": "8OqJdsnp"}], "targetUserId": "sOm9Nsz6", "updateItems": [{"customAttributes": {"kmlS6Hcc": {}, "Hcze7sQn": {}, "zFQ4xn2u": {}}, "inventoryId": "EJY7ZVpz", "serverCustomAttributes": {"LtKzCm8w": {}, "3xAwFXii": {}, "z5NQ5RI7": {}}, "slotId": "lV7qZIPU", "sourceItemId": "moAfnrYm", "tags": ["PdaXeUDM", "yvTjy0EY", "MQAshOM8"], "type": "eX4RStvw"}, {"customAttributes": {"u1EwOliF": {}, "SxphnOFg": {}, "jjOv0msZ": {}}, "inventoryId": "lXJhc8Pd", "serverCustomAttributes": {"aRekp6jM": {}, "YnqfrDEE": {}, "BbVXlhbU": {}}, "slotId": "JRSBJkmP", "sourceItemId": "4xhM8OJP", "tags": ["wVYIPNMX", "DvKfThk5", "bA5bc3Wj"], "type": "8RptLFay"}, {"customAttributes": {"tAH8KIvM": {}, "T2E60Y13": {}, "FzJnRtY2": {}}, "inventoryId": "5ZNH6ukS", "serverCustomAttributes": {"8fFe3s4T": {}, "qVJI38bP": {}, "p0Ixw0yM": {}}, "slotId": "bpRmpE33", "sourceItemId": "NrdE884K", "tags": ["znAiFuXG", "qzWD0ucB", "0P5QY5yD"], "type": "5iQU6U3i"}]}, {"consumeItems": [{"inventoryId": "U4lvGtYP", "qty": 18, "slotId": "sUzXdTI6", "sourceItemId": "j8oKAhng"}, {"inventoryId": "fASQAo0O", "qty": 8, "slotId": "Mf9WpQZE", "sourceItemId": "m5JJq8yT"}, {"inventoryId": "UWShlBvh", "qty": 72, "slotId": "wDFQmUf0", "sourceItemId": "kCMtTZvd"}], "createItems": [{"customAttributes": {"Wv1DS1f3": {}, "IobmqMvq": {}, "M279PJL5": {}}, "inventoryConfigurationCode": "meioIMIP", "inventoryId": "9Up17DPW", "qty": 84, "serverCustomAttributes": {"IsdyNuC8": {}, "kb1jwdxT": {}, "Op5zSriP": {}}, "slotId": "qcSQbIor", "slotUsed": 70, "sourceItemId": "umfhuzgv", "tags": ["Qb4JJCkX", "HfDC7sEl", "39CblXhX"], "toSpecificInventory": false, "type": "2uIwagNX"}, {"customAttributes": {"ZfrnPCiH": {}, "VhtRQmXy": {}, "GkswX3Tf": {}}, "inventoryConfigurationCode": "kSmBuS3P", "inventoryId": "M4LoBg9f", "qty": 67, "serverCustomAttributes": {"F6hT5Ciu": {}, "CBHddzK0": {}, "HM9X6AbV": {}}, "slotId": "Nfnwkbha", "slotUsed": 95, "sourceItemId": "CxV4mwMR", "tags": ["YOcPyvkZ", "R5TgDu1P", "R8EwRTXO"], "toSpecificInventory": false, "type": "YpTg5HAS"}, {"customAttributes": {"QXAaQxIR": {}, "Bspj8qk0": {}, "MX8S8GrR": {}}, "inventoryConfigurationCode": "x1fyieUD", "inventoryId": "8Syo7wh3", "qty": 55, "serverCustomAttributes": {"Lej5bN6v": {}, "QKcXN70J": {}, "X3zNNGvu": {}}, "slotId": "6aIUIo24", "slotUsed": 70, "sourceItemId": "sNx5Jygk", "tags": ["JWckonRR", "zgXs87mT", "M3G6PWSx"], "toSpecificInventory": true, "type": "JjcdgVtJ"}], "removeItems": [{"inventoryId": "6n2G55oc", "slotId": "uPoScx05", "sourceItemId": "fO9ZkHyT"}, {"inventoryId": "jImS4VA2", "slotId": "Xi1QBIbK", "sourceItemId": "nqc50NxF"}, {"inventoryId": "cwWrbCkl", "slotId": "pRcWVHmL", "sourceItemId": "BpIh7Vwr"}], "targetUserId": "c25MjKj1", "updateItems": [{"customAttributes": {"4ejmpThx": {}, "dZ23Hu9t": {}, "hvn6bHcb": {}}, "inventoryId": "wynKWWMx", "serverCustomAttributes": {"7PCSkxcQ": {}, "xAcxP3yv": {}, "FdEknAUj": {}}, "slotId": "UB61aHTr", "sourceItemId": "44cqBpTP", "tags": ["MBkcK2EY", "NL0jySt6", "iAT4gkDn"], "type": "FqWk2Rfa"}, {"customAttributes": {"PgK522Ab": {}, "bMaJW38u": {}, "IDSmoHHw": {}}, "inventoryId": "SDgczLGw", "serverCustomAttributes": {"dMxYSY3l": {}, "w7gyJbXL": {}, "ONpMKFUO": {}}, "slotId": "87E7q8ur", "sourceItemId": "FwfheaaA", "tags": ["RNl2yyoz", "vrR1xvyb", "DuahlzpH"], "type": "MJAWnYU7"}, {"customAttributes": {"bW5Vle7T": {}, "nGEwIcGN": {}, "j6ph0CoH": {}}, "inventoryId": "dSUyhe4i", "serverCustomAttributes": {"EbqPYQ1x": {}, "xYSs1hri": {}, "sqzVf7pY": {}}, "slotId": "OOICxi5u", "sourceItemId": "AsGwL8Vx", "tags": ["p7QejwCQ", "XclBaQp4", "WboA3GwB"], "type": "6oiYF6qH"}]}, {"consumeItems": [{"inventoryId": "WGyxjJdQ", "qty": 66, "slotId": "idB8xlHS", "sourceItemId": "KIBseI00"}, {"inventoryId": "N93jGN0O", "qty": 52, "slotId": "BML4jWv2", "sourceItemId": "VIqP06j7"}, {"inventoryId": "CXPYe1u0", "qty": 67, "slotId": "V4JEq935", "sourceItemId": "AqRuyXxJ"}], "createItems": [{"customAttributes": {"32DJTxwa": {}, "BZxFKZqG": {}, "xkWyhpvt": {}}, "inventoryConfigurationCode": "kcTYzcNP", "inventoryId": "zOhgihub", "qty": 73, "serverCustomAttributes": {"XUcz65mi": {}, "AMTMvgUn": {}, "f1yX3Gvn": {}}, "slotId": "vLy4nk1U", "slotUsed": 61, "sourceItemId": "ZNrOxePN", "tags": ["IhjVAFNQ", "d1EYMwDq", "JKajLBve"], "toSpecificInventory": true, "type": "0T0Gka2n"}, {"customAttributes": {"Ula8WbXj": {}, "Rnlh4JAV": {}, "G4kGeDZB": {}}, "inventoryConfigurationCode": "88001zIG", "inventoryId": "BWNxMNIB", "qty": 24, "serverCustomAttributes": {"7zVwDxPu": {}, "5ucQfaYq": {}, "Ej478PVQ": {}}, "slotId": "gDVQFre2", "slotUsed": 73, "sourceItemId": "mcxyqryb", "tags": ["iu4gYUZ1", "GrjRW0b0", "6DVpWC18"], "toSpecificInventory": true, "type": "m9Br8Q54"}, {"customAttributes": {"FaGMhb3k": {}, "iHD7Wtbf": {}, "Ha36MYkR": {}}, "inventoryConfigurationCode": "FaNJ0Gav", "inventoryId": "qbvPJF3z", "qty": 81, "serverCustomAttributes": {"qNGR4H8C": {}, "Zoir3tJk": {}, "ZXNjFDgx": {}}, "slotId": "qCFv9iPq", "slotUsed": 49, "sourceItemId": "IvFmL6aO", "tags": ["8WSUPQ2w", "g1aHblcM", "VJEJtbYY"], "toSpecificInventory": true, "type": "4k8gwXD5"}], "removeItems": [{"inventoryId": "BcPXX1Gu", "slotId": "eOTfnaFo", "sourceItemId": "YZXDIBZw"}, {"inventoryId": "g5SytfW1", "slotId": "hXeMCdvY", "sourceItemId": "S21hHr0Y"}, {"inventoryId": "vSDY62fk", "slotId": "yQGmzSAp", "sourceItemId": "lvG4kEhD"}], "targetUserId": "ehjt6ZwH", "updateItems": [{"customAttributes": {"HGXkjpuD": {}, "pBIk0n8c": {}, "81Pc9r6U": {}}, "inventoryId": "J6vmxcms", "serverCustomAttributes": {"4hwltUHI": {}, "4t3ZHril": {}, "t6EyDQHZ": {}}, "slotId": "Pn5xvMUu", "sourceItemId": "n5G6tuqJ", "tags": ["dSf8YKbp", "0Egpb85K", "d4LaCpFj"], "type": "rAJfUY2k"}, {"customAttributes": {"8Spbpuxf": {}, "Ox93UXXD": {}, "vpkT8rzB": {}}, "inventoryId": "2KWdiUUh", "serverCustomAttributes": {"h0P1c3NR": {}, "WYIWOfdE": {}, "TgYukoYo": {}}, "slotId": "sX7zzF8v", "sourceItemId": "kRIGJbaD", "tags": ["3uugsg0V", "xaMEtcs4", "i2ZrASTX"], "type": "l0rL8vFk"}, {"customAttributes": {"cH4c7rDE": {}, "8VvLIDb0": {}, "3JGGLS0C": {}}, "inventoryId": "oMLxTOHN", "serverCustomAttributes": {"amaqbn5q": {}, "8FMsXIg4": {}, "idWZe4uW": {}}, "slotId": "1lryOup4", "sourceItemId": "IMhcq1yk", "tags": ["YuUxJ3X2", "EyX35glR", "9luJZ26A"], "type": "ZUB8kCtw"}]}], "requestId": "IT9tqgPp"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'KdfHkpPb' \
    --limit '52' \
    --offset '14' \
    --sortBy 'createdAt:asc' \
    --userId 'odAG8mQv' \
    > test.out 2>&1
eval_tap $? 3 'AdminListInventories' test.out

#- 4 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "SInnFpvy", "userId": "WjRPoOff"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateInventory' test.out

#- 5 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'KGpYePCU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetInventory' test.out

#- 6 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'QcL3TEhd' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 58}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateInventory' test.out

#- 7 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'LR2BAvv1' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "N1LJfNbm"}' \
    > test.out 2>&1
eval_tap $? 7 'DeleteInventory' test.out

#- 8 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'EiVJEta1' \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '28' \
    --qtyGte '24' \
    --sortBy 'createdAt:asc' \
    --sourceItemId 'MDgMKanJ' \
    --tags 'cYUg1HUr' \
    > test.out 2>&1
eval_tap $? 8 'AdminListItems' test.out

#- 9 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'Y8FGEWXn' \
    --namespace $AB_NAMESPACE \
    --slotId 'tFBSWUJV' \
    --sourceItemId '4dh9VnS4' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventoryItem' test.out

#- 10 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'aDEPPI3H' \
    --limit '96' \
    --offset '7' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 10 'AdminListInventoryConfigurations' test.out

#- 11 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "5euc6DxZ", "description": "T2NiZ9Lk", "initialMaxSlots": 11, "maxInstancesPerUser": 74, "maxUpgradeSlots": 45, "name": "mCtKj8xD"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminCreateInventoryConfiguration' test.out

#- 12 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'BXKfe8aR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminGetInventoryConfiguration' test.out

#- 13 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId '0K3eYMuw' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "AXOxOPln", "description": "JChL3sE7", "initialMaxSlots": 72, "maxInstancesPerUser": 97, "maxUpgradeSlots": 42, "name": "8Xzet5rv"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminUpdateInventoryConfiguration' test.out

#- 14 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'OXUEul55' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteInventoryConfiguration' test.out

#- 15 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '74' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 15 'AdminListItemTypes' test.out

#- 16 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "9k5C7j1D"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateItemType' test.out

#- 17 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'FwZT06dW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDeleteItemType' test.out

#- 18 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '9' \
    --owner 'YdEBQjhs' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 18 'AdminListTags' test.out

#- 19 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "06TMc5mT", "owner": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminCreateTag' test.out

#- 20 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 's08xGQnK' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteTag' test.out

#- 21 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'chOLKdQJ' \
    --namespace $AB_NAMESPACE \
    --userId 'hzIkDOaw' \
    --body '{"qty": 90, "slotId": "g4dCI1nR", "sourceItemId": "yWYx6Sq4"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminConsumeUserItem' test.out

#- 22 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'VPfEdpeB' \
    --namespace $AB_NAMESPACE \
    --userId 'nzCV8j48' \
    --body '[{"customAttributes": {"KWRxg1C8": {}, "ysmx2tY4": {}, "4VqVPOgG": {}}, "serverCustomAttributes": {"p3zFyRcz": {}, "lj44RKyj": {}, "tMgdzoB3": {}}, "slotId": "wscVkZGr", "sourceItemId": "6cvhR3ko", "tags": ["RRkw9SCr", "OU1RnYmC", "iD7pT1w2"], "type": "R8VyAH2g"}, {"customAttributes": {"BozbdPTw": {}, "6p0Rrw2R": {}, "XtGlEVxk": {}}, "serverCustomAttributes": {"qNvz2YFe": {}, "j7Pz0l4u": {}, "93GnTnyK": {}}, "slotId": "yT8U4YSL", "sourceItemId": "EuSo216I", "tags": ["0ggAmSBb", "rkfbM8WV", "AZ5NABhA"], "type": "VEmXBJJn"}, {"customAttributes": {"93YV31dN": {}, "pPJKZf5v": {}, "JvcEnmJW": {}}, "serverCustomAttributes": {"KFE4nK8H": {}, "6oVD6dZP": {}, "yYFKydqu": {}}, "slotId": "rzGhGDWM", "sourceItemId": "EqA00XGL", "tags": ["MUKFREVB", "Y2xZ2AUZ", "Qlvegsro"], "type": "9Jiu50nv"}]' \
    > test.out 2>&1
eval_tap $? 22 'AdminBulkUpdateMyItems' test.out

#- 23 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId '3wXrVfDK' \
    --namespace $AB_NAMESPACE \
    --userId 'yp64R4Tt' \
    --body '{"customAttributes": {"j4AFh7CK": {}, "XdojOknl": {}, "wnOCdI2v": {}}, "qty": 91, "serverCustomAttributes": {"mJfFUBxv": {}, "5zUQZOo4": {}, "qQrJF3lp": {}}, "slotId": "2J0NRtkp", "slotUsed": 11, "sourceItemId": "Z0niQpMM", "tags": ["kL3BaLFi", "PAvnZgS3", "3KisX6O4"], "type": "5baJ1RLD"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminSaveItemToInventory' test.out

#- 24 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId '3BXTG5g4' \
    --namespace $AB_NAMESPACE \
    --userId 'uiJrKXDU' \
    --body '[{"slotId": "wb3xfQCu", "sourceItemId": "pf8cSVc9"}, {"slotId": "wbE421rF", "sourceItemId": "hBeHOfZX"}, {"slotId": "o3SQ0tvL", "sourceItemId": "vrM39roj"}]' \
    > test.out 2>&1
eval_tap $? 24 'AdminBulkRemoveItems' test.out

#- 25 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'QHpt7Bdx' \
    --body '{"customAttributes": {"Qn99wgzW": {}, "277Ynrpk": {}, "0hXz4OYp": {}}, "inventoryConfigurationCode": "6R04DAS4", "qty": 67, "serverCustomAttributes": {"upxvgGyB": {}, "Eh3GUX8Y": {}, "BUxEXLg6": {}}, "slotId": "KXn5sTBN", "slotUsed": 4, "sourceItemId": "ob7zsDvz", "tags": ["VoHsMxpj", "4cKRQ9x6", "CV3ssCBD"], "type": "wdrjze0g"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminSaveItem' test.out

#- 26 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'Pxj2kOs7' \
    --limit '29' \
    --offset '16' \
    --sortBy 'updatedAt:asc' \
    > test.out 2>&1
eval_tap $? 26 'PublicListInventoryConfigurations' test.out

#- 27 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '42' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 27 'PublicListItemTypes' test.out

#- 28 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '85' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 28 'PublicListTags' test.out

#- 29 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode '5SSZNctT' \
    --limit '93' \
    --offset '68' \
    --sortBy 'updatedAt:asc' \
    > test.out 2>&1
eval_tap $? 29 'PublicListInventories' test.out

#- 30 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'xzpMHcG9' \
    --namespace $AB_NAMESPACE \
    --body '{"qty": 46, "slotId": "L7VsLFdU", "sourceItemId": "1vRzqOyD"}' \
    > test.out 2>&1
eval_tap $? 30 'PublicConsumeMyItem' test.out

#- 31 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'jaEWcGFn' \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '83' \
    --qtyGte '61' \
    --sortBy 'createdAt' \
    --sourceItemId 'M1OufPmR' \
    --tags 'c0atD7Po' \
    > test.out 2>&1
eval_tap $? 31 'PublicListItems' test.out

#- 32 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'XV3a3xHn' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"rL8Vluel": {}, "wAfZ3TJU": {}, "mdfS6Ape": {}}, "slotId": "AAqGbyDj", "sourceItemId": "7bH9u8IL", "tags": ["fZRLMtHr", "i8l9QEkO", "osF7sIH0"]}, {"customAttributes": {"XLzQfs1K": {}, "nyO7muPT": {}, "ZOPoyQUO": {}}, "slotId": "dWyMpUD4", "sourceItemId": "osuxVdfL", "tags": ["rd2ghHkF", "dGwYf1Ly", "LzFjHz12"]}, {"customAttributes": {"RQWD525k": {}, "o2ErazHX": {}, "BjX6ndy0": {}}, "slotId": "ePZUySfU", "sourceItemId": "fiP5hbzy", "tags": ["o91cqGSh", "9tWLXWhH", "S2vETbSU"]}]' \
    > test.out 2>&1
eval_tap $? 32 'PublicBulkUpdateMyItems' test.out

#- 33 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId '3CQucOcF' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "hacLOzDY", "sourceItemId": "QbxRYmuI"}, {"slotId": "x1NeGdWj", "sourceItemId": "nlUcFwuj"}, {"slotId": "oTM6GKVS", "sourceItemId": "bxrKFgq8"}]' \
    > test.out 2>&1
eval_tap $? 33 'PublicBulkRemoveMyItems' test.out

#- 34 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'k77mYRPt' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 3, "slotId": "StuFib4q", "sourceItemId": "BxfIrqyI"}, {"qty": 49, "slotId": "f1muOtTt", "sourceItemId": "fiE2z3zj"}, {"qty": 0, "slotId": "CxlDHm61", "sourceItemId": "nLUviMou"}], "srcInventoryId": "g871MLUw"}' \
    > test.out 2>&1
eval_tap $? 34 'PublicMoveMyItems' test.out

#- 35 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'ROyOzfKW' \
    --namespace $AB_NAMESPACE \
    --slotId 'mrPCQ0Vy' \
    --sourceItemId 'acu8liqS' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE