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
    --body '{"message": "Il2Usg6y", "operations": [{"consumeItems": [{"dateRangeValidation": false, "inventoryId": "OzMXXehH", "options": ["5oGNq4d9", "a4RIRLeU", "AfgFK37N"], "qty": 89, "slotId": "7QkSFZ2p", "sourceItemId": "G1oc0srN"}, {"dateRangeValidation": true, "inventoryId": "taX0sEnW", "options": ["tLO0R8Bk", "xP957h29", "XrfLVG5Y"], "qty": 36, "slotId": "FuSpPpyO", "sourceItemId": "KNWhae9u"}, {"dateRangeValidation": false, "inventoryId": "n3DdA4BE", "options": ["fY1uGJjI", "W1wry467", "eYKJ7ugS"], "qty": 49, "slotId": "PYPLR7Ta", "sourceItemId": "2mlmrn4P"}], "createItems": [{"customAttributes": {"6rN5GGM8": {}, "IKa6sbzI": {}, "sg8Fij5l": {}}, "inventoryConfigurationCode": "t2w8oggA", "inventoryId": "MEHPwNwX", "qty": 77, "serverCustomAttributes": {"plLJM1El": {}, "rB3Lcxw3": {}, "f48HKrgV": {}}, "slotId": "Tj1dDhhI", "slotUsed": 67, "source": "ECOMMERCE", "sourceItemId": "1K5eZAtX", "tags": ["UOtmfaHz", "EGIVcvtq", "9JkpLTVe"], "toSpecificInventory": true, "type": "lR0IkzeQ"}, {"customAttributes": {"drfWfOZz": {}, "X6fBzkxi": {}, "T90b7TbN": {}}, "inventoryConfigurationCode": "gVLhMakp", "inventoryId": "Fwqf06Ek", "qty": 2, "serverCustomAttributes": {"eM836xzt": {}, "j8w88Umz": {}, "XZDoPt6g": {}}, "slotId": "bVVQaXaa", "slotUsed": 57, "source": "ECOMMERCE", "sourceItemId": "oFmfzYlN", "tags": ["KPaBfh6c", "ppJergFv", "wOSEk1kf"], "toSpecificInventory": true, "type": "1hlnzuhs"}, {"customAttributes": {"RsmWgpUc": {}, "MlLPmgDx": {}, "nTS6yDUc": {}}, "inventoryConfigurationCode": "1RkelI91", "inventoryId": "vLeinvX0", "qty": 65, "serverCustomAttributes": {"sYmMcsa0": {}, "e1OkjENX": {}, "NhkM12ij": {}}, "slotId": "Q9WcNPVB", "slotUsed": 95, "source": "ECOMMERCE", "sourceItemId": "ISXu8NkM", "tags": ["HKDgLrEB", "BireK9Dr", "eXFw0gaS"], "toSpecificInventory": false, "type": "ISSFwir8"}], "removeItems": [{"inventoryId": "IEnFrqAF", "slotId": "W2TAyIOo", "sourceItemId": "vHVIbiDj"}, {"inventoryId": "XkNztrqn", "slotId": "QguVWMZx", "sourceItemId": "Sa5WwCKY"}, {"inventoryId": "dPJdOlNY", "slotId": "WR9D5kRR", "sourceItemId": "hGeMbJzg"}], "targetUserId": "ntAPrqiJ", "updateItems": [{"customAttributes": {"W8MrqYfB": {}, "zTH6gVqY": {}, "U53HC0FI": {}}, "inventoryId": "O0zBq37V", "serverCustomAttributes": {"tXbeQJGU": {}, "Hrlg6qUN": {}, "iHVWnTKo": {}}, "slotId": "NZ5iNaGb", "sourceItemId": "lcaXrKAv", "tags": ["6Kw89K0f", "Cc0P9DQw", "uegBl0Rt"], "type": "uDUB3rvU"}, {"customAttributes": {"nvpps2u3": {}, "jketwGYF": {}, "SoBCP672": {}}, "inventoryId": "21yQZBXT", "serverCustomAttributes": {"6DLiuZLO": {}, "W8d7R4CB": {}, "RLgAaYmO": {}}, "slotId": "gHWdhYTj", "sourceItemId": "2gqhGZHi", "tags": ["Q6cXSduQ", "7JnhiDr2", "a2mTDI0m"], "type": "RZyDVLKf"}, {"customAttributes": {"2HaXugza": {}, "kOZVCWtQ": {}, "Z6np0ZIS": {}}, "inventoryId": "6oqcPbmP", "serverCustomAttributes": {"yzWXTjBh": {}, "6SktfX9v": {}, "eRgAX5bd": {}}, "slotId": "n8JshPqN", "sourceItemId": "gyarOagX", "tags": ["ykqAZePu", "5GOzB1Rj", "peOp2v6P"], "type": "oUJO9FOn"}]}, {"consumeItems": [{"dateRangeValidation": true, "inventoryId": "wiI7zvli", "options": ["n2Z5ZFVO", "nLsNfEwX", "3qldWeWN"], "qty": 75, "slotId": "bqLCaenv", "sourceItemId": "AipRDWv4"}, {"dateRangeValidation": false, "inventoryId": "Se5bEsSJ", "options": ["6dkdCV2K", "0lAG9Hfj", "zoezXUca"], "qty": 98, "slotId": "wt9BbwzY", "sourceItemId": "rWnlyswh"}, {"dateRangeValidation": true, "inventoryId": "Ke8DrG7j", "options": ["Vt7PtwOw", "wjCHwsIy", "d7E9o3nd"], "qty": 100, "slotId": "5XDOijAc", "sourceItemId": "akaJ4Gy7"}], "createItems": [{"customAttributes": {"7FzPQxdU": {}, "cNZ5B3mn": {}, "pCduBpBX": {}}, "inventoryConfigurationCode": "T6u5r5aC", "inventoryId": "RXl5OYsm", "qty": 99, "serverCustomAttributes": {"yylRCQV9": {}, "5fnHEl3k": {}, "U8iPSXXm": {}}, "slotId": "j75d4TdH", "slotUsed": 51, "source": "OTHER", "sourceItemId": "L7shULVl", "tags": ["bFFQYNjB", "3c1gP6Ix", "Rvzo64B2"], "toSpecificInventory": false, "type": "E2MO0hQM"}, {"customAttributes": {"lVqgx3vX": {}, "jKLiSHZM": {}, "QP6LuCaV": {}}, "inventoryConfigurationCode": "DwKE3xBF", "inventoryId": "jrYgOLPi", "qty": 36, "serverCustomAttributes": {"ybNfWhZY": {}, "5GLmOoGN": {}, "64xRzk4q": {}}, "slotId": "u8yZI4cr", "slotUsed": 15, "source": "OTHER", "sourceItemId": "XZAuUoer", "tags": ["eJc3LZeW", "GzXqCFfm", "T0pAaFrG"], "toSpecificInventory": false, "type": "LbXJZNWx"}, {"customAttributes": {"TYfJZtMq": {}, "YV98BYVF": {}, "SjzfNsw9": {}}, "inventoryConfigurationCode": "vpPtjhmE", "inventoryId": "quhKVKJp", "qty": 5, "serverCustomAttributes": {"ScP5BENl": {}, "AKx0ER4M": {}, "81zL5sSu": {}}, "slotId": "wviRiR3X", "slotUsed": 39, "source": "OTHER", "sourceItemId": "hBY8vyZO", "tags": ["ldvl73FY", "tcdp5ks4", "BmbIMMYl"], "toSpecificInventory": true, "type": "RFHA5C60"}], "removeItems": [{"inventoryId": "9oI7F306", "slotId": "EwGaqOxd", "sourceItemId": "ZU5mRsY5"}, {"inventoryId": "noVj8tmk", "slotId": "HDO1Khl6", "sourceItemId": "5KZhF7OM"}, {"inventoryId": "46toWBwI", "slotId": "YPpeN8bj", "sourceItemId": "IPeuNqWS"}], "targetUserId": "hkAejSvs", "updateItems": [{"customAttributes": {"VFoZhmk0": {}, "dVy6fBrk": {}, "rDpPzO0U": {}}, "inventoryId": "ynEmG8n3", "serverCustomAttributes": {"AAmlHXil": {}, "JOWcs2Jr": {}, "v6ddxToe": {}}, "slotId": "ohxmTWU2", "sourceItemId": "xx0wXdBa", "tags": ["ZXG7ry41", "uWpJmTiC", "ix6WFdut"], "type": "4HSnnm1u"}, {"customAttributes": {"mJaJe8QV": {}, "wtAfMWjd": {}, "9VdrbEzv": {}}, "inventoryId": "fXPR4LJn", "serverCustomAttributes": {"bl8OvXxh": {}, "Qc4JRIVH": {}, "QDSqWqeK": {}}, "slotId": "VrWuhgr0", "sourceItemId": "sOWla4a7", "tags": ["UqklIikE", "JPBJdFOC", "cpfJRgnA"], "type": "ejUYfAVj"}, {"customAttributes": {"6Q83uhVx": {}, "YjroPtwD": {}, "IYh2MScx": {}}, "inventoryId": "K13BNsAo", "serverCustomAttributes": {"6yecia0K": {}, "jZtOnps0": {}, "tzyx9x6H": {}}, "slotId": "77kCjDeM", "sourceItemId": "9EYxcy6K", "tags": ["ZrC7rDbC", "7felMStU", "42NpCcql"], "type": "fGoaWvlb"}]}, {"consumeItems": [{"dateRangeValidation": true, "inventoryId": "uMECR0gh", "options": ["cRiecaNw", "wKo4SJjK", "AmbwTo23"], "qty": 8, "slotId": "uEuAbHGV", "sourceItemId": "SD0kB19d"}, {"dateRangeValidation": true, "inventoryId": "YMPuJRBR", "options": ["vFKGbEo5", "fo2muEAZ", "o0JCLi7q"], "qty": 38, "slotId": "4d07k6zD", "sourceItemId": "WXHFYpKV"}, {"dateRangeValidation": false, "inventoryId": "o2FM5zK4", "options": ["XrKkQp5s", "pD6yr7SX", "N2PNyAtW"], "qty": 76, "slotId": "99YuCrNR", "sourceItemId": "JTdOBpFL"}], "createItems": [{"customAttributes": {"uPgHpHTy": {}, "v9hSN8Ea": {}, "gSqvZvvu": {}}, "inventoryConfigurationCode": "NWEDfaEg", "inventoryId": "DcAk72rk", "qty": 100, "serverCustomAttributes": {"2GvpZZwu": {}, "39EEMaka": {}, "egVLYrKH": {}}, "slotId": "5K0jhAbG", "slotUsed": 36, "source": "OTHER", "sourceItemId": "gR7Bux5w", "tags": ["i2xKfBHm", "FIr6PDya", "3SaDhCPj"], "toSpecificInventory": false, "type": "HKmpMyAx"}, {"customAttributes": {"HXnEKr8f": {}, "bnZUxJEZ": {}, "FYvFu80s": {}}, "inventoryConfigurationCode": "mId2RQpl", "inventoryId": "jHYm0P40", "qty": 96, "serverCustomAttributes": {"ko6zAzLN": {}, "WmDlUvuO": {}, "kCeZodNM": {}}, "slotId": "epravNYu", "slotUsed": 14, "source": "ECOMMERCE", "sourceItemId": "bowSoHze", "tags": ["ZgOcCwTz", "lBASYl0p", "OMMk9lG4"], "toSpecificInventory": false, "type": "lCexg8II"}, {"customAttributes": {"FmjUtn4g": {}, "73GJDhWj": {}, "5NYkjLpM": {}}, "inventoryConfigurationCode": "f9jkTccD", "inventoryId": "v2Ejnbp5", "qty": 4, "serverCustomAttributes": {"PkNmZ3nM": {}, "glUcKB5q": {}, "9eSYa42t": {}}, "slotId": "kmZPDPtM", "slotUsed": 55, "source": "ECOMMERCE", "sourceItemId": "LgGf1qqy", "tags": ["TwRsnnCa", "DObLZJv8", "VZedNB9G"], "toSpecificInventory": false, "type": "poPcZXT4"}], "removeItems": [{"inventoryId": "r21OTzMs", "slotId": "wJ2sNf7x", "sourceItemId": "XfYtX1Ll"}, {"inventoryId": "7HN91oEx", "slotId": "d3MNnVx2", "sourceItemId": "4RGq4Nu3"}, {"inventoryId": "BxIjwKQI", "slotId": "QctYI8Nf", "sourceItemId": "CyE9Lpgr"}], "targetUserId": "oznDDLMA", "updateItems": [{"customAttributes": {"8OaEIxmV": {}, "pWqIFlas": {}, "OjdO1b2Z": {}}, "inventoryId": "urhUTZUD", "serverCustomAttributes": {"O5t0qOBi": {}, "mpdB9dIY": {}, "Rixs3q1e": {}}, "slotId": "UBxNNK1f", "sourceItemId": "ArNi5XJw", "tags": ["NIq8tVkk", "6zsZHxEk", "Rq1uqXtg"], "type": "4i357AKg"}, {"customAttributes": {"P8GDGhqI": {}, "FkxKhNLH": {}, "VRmArIol": {}}, "inventoryId": "7Z3zeNQJ", "serverCustomAttributes": {"HzS9oJPb": {}, "PomUnVck": {}, "FSxOg6pd": {}}, "slotId": "DXYQV2Sw", "sourceItemId": "F8a4REvO", "tags": ["HdY3RLuE", "DuGb13Cz", "Pj5JKT5M"], "type": "paglKosv"}, {"customAttributes": {"Pbe1KlJN": {}, "533QXGSL": {}, "95bHsLue": {}}, "inventoryId": "41mTbelN", "serverCustomAttributes": {"41SnEOl7": {}, "Q3QG39F8": {}, "0tlyCyC7": {}}, "slotId": "tAcMMpWp", "sourceItemId": "0ICv08I9", "tags": ["5cVbFhmX", "RR0KYlGv", "bYOWb9uV"], "type": "V18TmpPs"}]}], "requestId": "Y6p7nuvH"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListIntegrationConfigurations
samples/cli/sample-apps Inventory adminListIntegrationConfigurations \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '30' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 3 'AdminListIntegrationConfigurations' test.out

#- 4 AdminCreateIntegrationConfiguration
samples/cli/sample-apps Inventory adminCreateIntegrationConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["i5z1ZLsZ", "u9csOmoG", "Di90EStn"], "serviceName": "ssi8BXdI", "targetInventoryCode": "FSkMdfZZ"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateIntegrationConfiguration' test.out

#- 5 AdminUpdateIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateIntegrationConfiguration \
    --integrationConfigurationId 'NAt4wfsz' \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["pyVTElDU", "JBESqjlJ", "MzjyAnY8"], "serviceName": "zAcu0Itk", "targetInventoryCode": "kvXG3kBH"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateIntegrationConfiguration' test.out

#- 6 AdminUpdateStatusIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateStatusIntegrationConfiguration \
    --integrationConfigurationId 'Ibvkbs5v' \
    --namespace $AB_NAMESPACE \
    --body '{"status": "TIED"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateStatusIntegrationConfiguration' test.out

#- 7 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'EkA0Bli7' \
    --limit '48' \
    --offset '43' \
    --sortBy 'inventoryConfigurationCode:desc' \
    --userId 'txrrI8Co' \
    > test.out 2>&1
eval_tap $? 7 'AdminListInventories' test.out

#- 8 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "nYM0jFcP", "userId": "A3wfiJOA"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateInventory' test.out

#- 9 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'z3KymwvP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventory' test.out

#- 10 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'RTZ8Ty9i' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 2}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateInventory' test.out

#- 11 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'Cr7legns' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "y9c5O8Fl"}' \
    > test.out 2>&1
eval_tap $? 11 'DeleteInventory' test.out

#- 12 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'biYIls5B' \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '46' \
    --sortBy 'updatedAt:desc' \
    --sourceItemId 'xj4PzGbi' \
    --tags 'ydboquHH' \
    > test.out 2>&1
eval_tap $? 12 'AdminListItems' test.out

#- 13 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId '0UgTEWEe' \
    --namespace $AB_NAMESPACE \
    --slotId '7yUZaCbC' \
    --sourceItemId 'wGUtwYMD' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetInventoryItem' test.out

#- 14 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'UdeWfD13' \
    --limit '71' \
    --offset '46' \
    --sortBy 'updatedAt:asc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListInventoryConfigurations' test.out

#- 15 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "WwH55pWs", "description": "EC0c3Zt2", "initialMaxSlots": 34, "maxInstancesPerUser": 53, "maxUpgradeSlots": 16, "name": "rKDYV5YC"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateInventoryConfiguration' test.out

#- 16 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'GyzrqDhk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetInventoryConfiguration' test.out

#- 17 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'oDCOQkH4' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "uvKJknwN", "description": "DyfCRn8G", "initialMaxSlots": 37, "maxInstancesPerUser": 76, "maxUpgradeSlots": 5, "name": "ENaFk3H6"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateInventoryConfiguration' test.out

#- 18 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'GwvMNIT5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteInventoryConfiguration' test.out

#- 19 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '100' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 19 'AdminListItemTypes' test.out

#- 20 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "AXSiduHv"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateItemType' test.out

#- 21 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'ew6pxjoQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminDeleteItemType' test.out

#- 22 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '30' \
    --owner 'dOACHHzG' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 22 'AdminListTags' test.out

#- 23 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "kBmIs6BK", "owner": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateTag' test.out

#- 24 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'uosSQbfZ' \
    > test.out 2>&1
eval_tap $? 24 'AdminDeleteTag' test.out

#- 25 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'LNUdgOAs' \
    --namespace $AB_NAMESPACE \
    --userId 'k17ToTNX' \
    --dateRangeValidation '0pLqoCE8' \
    --body '{"options": ["AbwACO7g", "PoCEme0s", "0rliJC1L"], "qty": 20, "slotId": "HaeWlqF7", "sourceItemId": "eWq5ncgk"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminConsumeUserItem' test.out

#- 26 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'yXKWW5mq' \
    --namespace $AB_NAMESPACE \
    --userId 'X78D7l18' \
    --body '[{"customAttributes": {"EMZZrjuI": {}, "Uo7v456y": {}, "B78S7dDI": {}}, "serverCustomAttributes": {"GWIZEb5x": {}, "TpA2XWYq": {}, "Qn5dqID3": {}}, "slotId": "AGWDQ4If", "sourceItemId": "1grG1mMU", "tags": ["q717Befu", "7hRChF2o", "cobsufJE"], "type": "kBJHT7xs"}, {"customAttributes": {"u7LLWFOr": {}, "f1yvMGTl": {}, "Se38rVjB": {}}, "serverCustomAttributes": {"AAlzxAlY": {}, "TRYKiTvi": {}, "WvzEmSlX": {}}, "slotId": "C3IwMvx7", "sourceItemId": "aH1BMK3C", "tags": ["6hXsXngh", "27Q7tKVK", "mLTULQL0"], "type": "qZclUSbT"}, {"customAttributes": {"XUHBP2KH": {}, "3b6y4ugC": {}, "0FzZp86l": {}}, "serverCustomAttributes": {"aNAok4K9": {}, "ZSOatXBP": {}, "4ZWpF3JK": {}}, "slotId": "4bxLVfb0", "sourceItemId": "F3kQGRw7", "tags": ["SaMe2nHL", "zUdkqY7r", "leppa9cQ"], "type": "eStZEsMD"}]' \
    > test.out 2>&1
eval_tap $? 26 'AdminBulkUpdateMyItems' test.out

#- 27 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId '4vWxPEXO' \
    --namespace $AB_NAMESPACE \
    --userId 'ayAf1R6n' \
    --body '{"customAttributes": {"1KBj3nJK": {}, "grJ1jlMM": {}, "gpggTkrB": {}}, "qty": 58, "serverCustomAttributes": {"ru0i37zg": {}, "WS3xr5zp": {}, "75YfboXC": {}}, "slotId": "hPPMsbAz", "slotUsed": 71, "source": "OTHER", "sourceItemId": "c9GYTq0h", "tags": ["6aKuDJGX", "Iwdu2fGi", "wuTiRf1D"], "type": "LSsaUCYh"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminSaveItemToInventory' test.out

#- 28 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'C857LyRk' \
    --namespace $AB_NAMESPACE \
    --userId 'ctVs5fVA' \
    --body '[{"slotId": "3Squ4tJB", "sourceItemId": "alI9QKd6"}, {"slotId": "KGi0ofIG", "sourceItemId": "RdhxnJJL"}, {"slotId": "5TeYAxbA", "sourceItemId": "NAZ68Gjt"}]' \
    > test.out 2>&1
eval_tap $? 28 'AdminBulkRemoveItems' test.out

#- 29 AdminBulkSaveItemToInventory
samples/cli/sample-apps Inventory adminBulkSaveItemToInventory \
    --inventoryId 'axiOGnlY' \
    --namespace $AB_NAMESPACE \
    --userId 'rhuXTu21' \
    --body '[{"customAttributes": {"F1aLMlki": {}, "KNGsEDNe": {}, "NAM8kJ36": {}}, "qty": 24, "serverCustomAttributes": {"euS9r0qq": {}, "o88O1V86": {}, "ZCvkvmvG": {}}, "slotId": "cSutCgnj", "slotUsed": 23, "source": "OTHER", "sourceItemId": "KJf1Jrfv", "tags": ["2rtjJdBy", "J5OO7uGU", "FrWFTWEl"], "type": "dFCfiKPi"}, {"customAttributes": {"p9cdNx9W": {}, "nWGXhDil": {}, "xyY6rEya": {}}, "qty": 36, "serverCustomAttributes": {"f6VO0DXW": {}, "qGTEjDky": {}, "HZ0UBruL": {}}, "slotId": "hCsHUbQW", "slotUsed": 23, "source": "OTHER", "sourceItemId": "emhqA4E2", "tags": ["tLKvBY0M", "i1QUsgfZ", "t3Xbpe5q"], "type": "i5itjZgN"}, {"customAttributes": {"RcOVorfY": {}, "rqqWIZDu": {}, "aGly43fl": {}}, "qty": 70, "serverCustomAttributes": {"oFnQb557": {}, "vbTnlY5S": {}, "sX1ArUeC": {}}, "slotId": "CeRAAStG", "slotUsed": 76, "source": "OTHER", "sourceItemId": "s2mgU9xm", "tags": ["217ZtYEU", "2M4JSRqq", "iG1Axuf6"], "type": "34TEJTAr"}]' \
    > test.out 2>&1
eval_tap $? 29 'AdminBulkSaveItemToInventory' test.out

#- 30 AdminUpdateUserInventoriesByInventoryCode
samples/cli/sample-apps Inventory adminUpdateUserInventoriesByInventoryCode \
    --inventoryConfigurationCode 'CXXLWj2G' \
    --namespace $AB_NAMESPACE \
    --userId 'amBAzdm4' \
    --body '{"incMaxSlots": 20}' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateUserInventoriesByInventoryCode' test.out

#- 31 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'ikcnV3rW' \
    --body '{"customAttributes": {"AjWJKwhX": {}, "EYEwbuDe": {}, "ngM9SBW8": {}}, "inventoryConfigurationCode": "LK4bJ86G", "qty": 76, "serverCustomAttributes": {"ynul8FUv": {}, "2SNjetmF": {}, "hQucmmFZ": {}}, "slotId": "eEMRjlGb", "slotUsed": 77, "source": "OTHER", "sourceItemId": "SgtXPuUG", "tags": ["RhQUqgAq", "ze6FDvwe", "Uy7kagus"], "type": "asPBbDSh"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminSaveItem' test.out

#- 32 AdminBulkSaveItem
samples/cli/sample-apps Inventory adminBulkSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'VJTz3Xkc' \
    --body '[{"customAttributes": {"nBxhs0L5": {}, "nmfro2jW": {}, "XIglGUyW": {}}, "inventoryConfigurationCode": "wVkd8QF6", "qty": 83, "serverCustomAttributes": {"fRWnc9Df": {}, "0WQih9J6": {}, "fFON6u2t": {}}, "slotId": "F6pLfpol", "slotUsed": 5, "source": "OTHER", "sourceItemId": "Z3kMkBaT", "tags": ["oyJDSI18", "GroyEeNk", "lFagEh6u"], "type": "CFCDCFBI"}, {"customAttributes": {"gNhzTgWm": {}, "05jWq3E8": {}, "dfpvWBH0": {}}, "inventoryConfigurationCode": "z9iL0fur", "qty": 28, "serverCustomAttributes": {"CXBlHgPx": {}, "Rui51TXk": {}, "A9I0EG9e": {}}, "slotId": "cefiYJVr", "slotUsed": 100, "source": "ECOMMERCE", "sourceItemId": "eF9R5BOn", "tags": ["Vu4PB6TP", "NSqNupv2", "JeRJTMsP"], "type": "fJpos4VQ"}, {"customAttributes": {"uwMmOb0j": {}, "3d0ze21L": {}, "RukEvgC5": {}}, "inventoryConfigurationCode": "Us4OCEV5", "qty": 45, "serverCustomAttributes": {"UNctKU5J": {}, "Zw10Gfjf": {}, "OsWcfqi9": {}}, "slotId": "HbHeO4lL", "slotUsed": 6, "source": "ECOMMERCE", "sourceItemId": "kNFztEfX", "tags": ["xSo16Zis", "g9JnUaAS", "EKl5Qigd"], "type": "tpaIJO7s"}]' \
    > test.out 2>&1
eval_tap $? 32 'AdminBulkSaveItem' test.out

#- 33 AdminSyncUserEntitlements
samples/cli/sample-apps Inventory adminSyncUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId '0ieuiVvl' \
    > test.out 2>&1
eval_tap $? 33 'AdminSyncUserEntitlements' test.out

#- 34 AdminPurchasable
samples/cli/sample-apps Inventory adminPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'Mq1f1On1' \
    --body '{"entitlementType": "bCQKm89g", "inventoryConfig": {"slotUsed": 1}, "itemId": "gmoTWNVC", "itemType": "Za3Uz7fA", "items": [{"bundledQty": 22, "entitlementType": "pUWzDZbN", "inventoryConfig": {"slotUsed": 32}, "itemId": "VzBtqAV0", "itemType": "TFj4Rz01", "sku": "QVjp8mjC", "stackable": true, "useCount": 74}, {"bundledQty": 63, "entitlementType": "DVPAfWFv", "inventoryConfig": {"slotUsed": 48}, "itemId": "i6MO2PLr", "itemType": "iX28cf1f", "sku": "izRxgPGR", "stackable": false, "useCount": 1}, {"bundledQty": 32, "entitlementType": "x51HcEW6", "inventoryConfig": {"slotUsed": 81}, "itemId": "jsKuW6v5", "itemType": "TN5tF2lj", "sku": "j2Gg65ah", "stackable": true, "useCount": 70}], "quantity": 88, "sku": "ZwDeIHL6", "stackable": true, "useCount": 30}' \
    > test.out 2>&1
eval_tap $? 34 'AdminPurchasable' test.out

#- 35 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'YebJ6i99' \
    --limit '5' \
    --offset '23' \
    --sortBy 'updatedAt:asc' \
    > test.out 2>&1
eval_tap $? 35 'PublicListInventoryConfigurations' test.out

#- 36 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '83' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 36 'PublicListItemTypes' test.out

#- 37 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '9' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 37 'PublicListTags' test.out

#- 38 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'hPtT1rb4' \
    --limit '89' \
    --offset '72' \
    --sortBy 'updatedAt:asc' \
    > test.out 2>&1
eval_tap $? 38 'PublicListInventories' test.out

#- 39 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'TA6uD2Rh' \
    --namespace $AB_NAMESPACE \
    --body '{"options": ["Z4keboXj", "1qQX6Qqs", "0FFZkzuE"], "qty": 14, "slotId": "KlaeB25X", "sourceItemId": "0HTvJytJ"}' \
    > test.out 2>&1
eval_tap $? 39 'PublicConsumeMyItem' test.out

#- 40 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'ARSZZXp4' \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '80' \
    --sortBy 'updatedAt:desc' \
    --sourceItemId 'ssMkHp0M' \
    --tags 'FuxJnidp' \
    > test.out 2>&1
eval_tap $? 40 'PublicListItems' test.out

#- 41 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'umVGVKlF' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"IIp6YlQf": {}, "CWfgoKsp": {}, "tYRboPKT": {}}, "slotId": "2lAy3Qlu", "sourceItemId": "AAsIJo6w", "tags": ["2lJVYgy6", "xXdCi0OF", "mH9IZ56N"]}, {"customAttributes": {"HklBrzzx": {}, "5GrH3OBj": {}, "sp68sCc3": {}}, "slotId": "PcbcXGCs", "sourceItemId": "3dHzra4M", "tags": ["cLGsyxUQ", "2veDhy8b", "iWAXJMgr"]}, {"customAttributes": {"697Bs36Z": {}, "hZO99Avq": {}, "Adam5TPn": {}}, "slotId": "fvvpSKvW", "sourceItemId": "Zuw93JoQ", "tags": ["WE6MvjOh", "aJNiqVXa", "PweJXfwT"]}]' \
    > test.out 2>&1
eval_tap $? 41 'PublicBulkUpdateMyItems' test.out

#- 42 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'PmYDLXiJ' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "x7bmKzdO", "sourceItemId": "MIw9lGBn"}, {"slotId": "UaBfXaFW", "sourceItemId": "BSOWrrdz"}, {"slotId": "KgNH6pOw", "sourceItemId": "tNSHsQEX"}]' \
    > test.out 2>&1
eval_tap $? 42 'PublicBulkRemoveMyItems' test.out

#- 43 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'IrHJKpRx' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 24, "slotId": "gvQlX14F", "sourceItemId": "R4yWxpkD"}, {"qty": 80, "slotId": "yYHTZVYC", "sourceItemId": "JCrzQfOR"}, {"qty": 84, "slotId": "hHAWLcCZ", "sourceItemId": "ZFnV8r8L"}], "srcInventoryId": "HHE8O1Br"}' \
    > test.out 2>&1
eval_tap $? 43 'PublicMoveMyItems' test.out

#- 44 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'lwSeLuqH' \
    --namespace $AB_NAMESPACE \
    --slotId '94Z5bNIX' \
    --sourceItemId 'B34iRbVx' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE