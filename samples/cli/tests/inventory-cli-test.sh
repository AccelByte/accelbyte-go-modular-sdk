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
    --body '{"message": "PukipwSM", "operations": [{"consumeItems": [{"inventoryId": "HVXR9zBH", "qty": 74, "slotId": "6Hti8UMC", "sourceItemId": "GjKKICru"}, {"inventoryId": "3y5XPoW3", "qty": 98, "slotId": "DcjXPIYY", "sourceItemId": "wkDgJ7rT"}, {"inventoryId": "CIFNGbIg", "qty": 91, "slotId": "mv1IZgM6", "sourceItemId": "l7PXIbwZ"}], "createItems": [{"customAttributes": {"oLias3w0": {}, "FveLYRhu": {}, "wW5XUCLB": {}}, "inventoryConfigurationCode": "QlWcoOCl", "inventoryId": "x1COIOQm", "qty": 53, "serverCustomAttributes": {"jVsGFIHK": {}, "62GwQH1m": {}, "eXLtITO4": {}}, "slotId": "7thhdiAS", "slotUsed": 98, "sourceItemId": "xVK4z4vs", "tags": ["i406SXsP", "qDXVxH0R", "MmOhZDwV"], "toSpecificInventory": false, "type": "BdgtTIH5"}, {"customAttributes": {"C2uGBY5L": {}, "ESKzMGHF": {}, "zC0IKtHV": {}}, "inventoryConfigurationCode": "uzZAjbu3", "inventoryId": "E2d6PJyV", "qty": 39, "serverCustomAttributes": {"AAqP7eGy": {}, "Xh6SYUPE": {}, "dhiAjhYg": {}}, "slotId": "7A5iQ5Ff", "slotUsed": 50, "sourceItemId": "LxxC7VwA", "tags": ["nKXQ78Nh", "BgbAmRWC", "sJ9Zeg5o"], "toSpecificInventory": false, "type": "BZ8SB699"}, {"customAttributes": {"fhUU8kbh": {}, "1eG1ZS9p": {}, "OjVVAIrZ": {}}, "inventoryConfigurationCode": "AHhVsYWe", "inventoryId": "wnqBBwPM", "qty": 35, "serverCustomAttributes": {"cMBSj858": {}, "oCRmxipI": {}, "ZkQ6dIai": {}}, "slotId": "CVjGnsqP", "slotUsed": 42, "sourceItemId": "EoyvnSUm", "tags": ["gwVwQ4cI", "p6FxrS5C", "bmIxLtDv"], "toSpecificInventory": true, "type": "igsIe2h6"}], "removeItems": [{"inventoryId": "zI1C8NOo", "slotId": "0ATQKn24", "sourceItemId": "DgdmsIz4"}, {"inventoryId": "3JgR13ED", "slotId": "kbFcrLc9", "sourceItemId": "09zklzyc"}, {"inventoryId": "gPQSNsvF", "slotId": "e5pZ9IyB", "sourceItemId": "qDRIwjon"}], "targetUserId": "QpJPYOg0", "updateItems": [{"customAttributes": {"wqUFZPYu": {}, "Lrq45lcD": {}, "4e1jVe5i": {}}, "inventoryId": "QWiufRuK", "serverCustomAttributes": {"cUbdzalq": {}, "MQXjeelM": {}, "r2feTnnU": {}}, "slotId": "E0opCcnX", "sourceItemId": "EB6EvBCw", "tags": ["InHNZ4sw", "Yuy8cFkB", "qWKcJc79"], "type": "auVhUWqV"}, {"customAttributes": {"NbHj03GJ": {}, "castdKCj": {}, "qA2PDsxq": {}}, "inventoryId": "7OAImGcA", "serverCustomAttributes": {"bTP1glUP": {}, "cFr4Fh5L": {}, "Agg3BPMQ": {}}, "slotId": "UwDH3Vj7", "sourceItemId": "HzpjwrQO", "tags": ["t4nY2zJj", "nCQFmo4R", "4HxrQv26"], "type": "3539dUVl"}, {"customAttributes": {"eSA0Nafd": {}, "vZwmbSmB": {}, "pH0bstgz": {}}, "inventoryId": "k5fiVF3h", "serverCustomAttributes": {"oD4a4ajc": {}, "fYzoIluH": {}, "Ffcg5aD8": {}}, "slotId": "lIeIelC3", "sourceItemId": "Y5IBSV4D", "tags": ["8QpNmLwB", "NAg2Qwp7", "kNILv5Tl"], "type": "JcbpC5Bx"}]}, {"consumeItems": [{"inventoryId": "Mus2t1Vk", "qty": 97, "slotId": "wGDXCzRK", "sourceItemId": "vzorSO5U"}, {"inventoryId": "0XWU0j0R", "qty": 30, "slotId": "hKcixHAP", "sourceItemId": "UQTHzQsP"}, {"inventoryId": "mJuz3fup", "qty": 89, "slotId": "cFNOjwUv", "sourceItemId": "nMUougdY"}], "createItems": [{"customAttributes": {"vZHwuNaA": {}, "7GCJ54kQ": {}, "3mv95snh": {}}, "inventoryConfigurationCode": "EWcsQTKG", "inventoryId": "zbaeSQpp", "qty": 98, "serverCustomAttributes": {"l7JWowUQ": {}, "lI81Eyzx": {}, "cI4MRoCv": {}}, "slotId": "8CIy0wbP", "slotUsed": 43, "sourceItemId": "6S7URsO3", "tags": ["pGSksH3D", "6fB3lziW", "vcdrBAYF"], "toSpecificInventory": true, "type": "exZJplmZ"}, {"customAttributes": {"ECpJxttq": {}, "TNP3O9xy": {}, "qvxznaPs": {}}, "inventoryConfigurationCode": "LoYptA62", "inventoryId": "j6J0TBsb", "qty": 15, "serverCustomAttributes": {"5DXgy9Os": {}, "UVi1U055": {}, "Z1bMqx1K": {}}, "slotId": "SATpdKTN", "slotUsed": 65, "sourceItemId": "sce0Ypli", "tags": ["baKzdkoD", "xXOH9VSg", "w06cmB3U"], "toSpecificInventory": true, "type": "pUZ3nspz"}, {"customAttributes": {"2LytEL0I": {}, "56IT4pa8": {}, "0pYQB5y1": {}}, "inventoryConfigurationCode": "gUMZr2Of", "inventoryId": "u5G5ATVG", "qty": 65, "serverCustomAttributes": {"e9J3FSCZ": {}, "HefsmAc1": {}, "XFAd8RYk": {}}, "slotId": "QpeXyk4F", "slotUsed": 67, "sourceItemId": "9QhIwRXM", "tags": ["YRNJ9yF7", "SQSGR2GC", "0369cWbf"], "toSpecificInventory": true, "type": "QHknl9kR"}], "removeItems": [{"inventoryId": "ryh447od", "slotId": "1IfUjV9b", "sourceItemId": "N575Mi3N"}, {"inventoryId": "BSFFG33S", "slotId": "lAsW5l7E", "sourceItemId": "mGlHsBYJ"}, {"inventoryId": "IwjuSEwP", "slotId": "DzwLB7Ul", "sourceItemId": "hZAtAgdq"}], "targetUserId": "hohYaeuL", "updateItems": [{"customAttributes": {"CVljc4dw": {}, "k3ClX63Z": {}, "JnwqLqeT": {}}, "inventoryId": "9DfV2hNq", "serverCustomAttributes": {"5APhAvjl": {}, "h2uR3dVQ": {}, "ii9t45Gv": {}}, "slotId": "nwa6yGzv", "sourceItemId": "rV0kHY7q", "tags": ["FO7EVajV", "5gFtEHAI", "Nrvlwzvv"], "type": "nuwxsXoU"}, {"customAttributes": {"rWaXOtdT": {}, "fuxdQySr": {}, "TE8T0ceF": {}}, "inventoryId": "eNGwDQgk", "serverCustomAttributes": {"HXoQnxKg": {}, "rt81F8o5": {}, "1usfVTry": {}}, "slotId": "62jlvaLm", "sourceItemId": "di55u7Wx", "tags": ["EKGzIsjn", "E2kfrLlB", "i3iBvsnZ"], "type": "6gv4K39K"}, {"customAttributes": {"mxowfcxa": {}, "DhM2Jkzl": {}, "I5XpwDWB": {}}, "inventoryId": "0uXp2yVe", "serverCustomAttributes": {"vHrBCX69": {}, "VhB4mLdh": {}, "fWVQM1NN": {}}, "slotId": "ezP11fDg", "sourceItemId": "6YoTmNP0", "tags": ["pZ36WA6A", "uSwMqJZn", "lTDv9iSP"], "type": "qnJfBwTT"}]}, {"consumeItems": [{"inventoryId": "jr3hkyLT", "qty": 70, "slotId": "WlLy4meP", "sourceItemId": "2PsfvEN4"}, {"inventoryId": "l8QfFUma", "qty": 81, "slotId": "B3KS0ZyJ", "sourceItemId": "3zkl0KjL"}, {"inventoryId": "LxZfqTNd", "qty": 36, "slotId": "cyYiRfDr", "sourceItemId": "7DIm1Pck"}], "createItems": [{"customAttributes": {"LV5Kc1YZ": {}, "1wmmat6w": {}, "mUP3mUiF": {}}, "inventoryConfigurationCode": "gL4rcs1O", "inventoryId": "P0gQmedp", "qty": 45, "serverCustomAttributes": {"xlLhwph4": {}, "OFU8rnA5": {}, "RjmZYA63": {}}, "slotId": "tArZuxlq", "slotUsed": 1, "sourceItemId": "RBi5DJlg", "tags": ["gsovXhBU", "TnqQdMxE", "TqepQsbA"], "toSpecificInventory": true, "type": "5aC2N4hC"}, {"customAttributes": {"BlUmddcE": {}, "nOB7epOg": {}, "MmhlgRCY": {}}, "inventoryConfigurationCode": "YABTDr97", "inventoryId": "IL5czHrZ", "qty": 96, "serverCustomAttributes": {"XDoewGm9": {}, "X167fhKh": {}, "vB1xzx7f": {}}, "slotId": "TMe4ZN1P", "slotUsed": 56, "sourceItemId": "m9bunr8X", "tags": ["08ILyYHe", "SCGo3XXy", "KoQYdfBa"], "toSpecificInventory": false, "type": "kThErNR3"}, {"customAttributes": {"m1cTdL70": {}, "emuedF3R": {}, "21JQqR8W": {}}, "inventoryConfigurationCode": "ZxmkvqDO", "inventoryId": "SzsekrUj", "qty": 34, "serverCustomAttributes": {"B0umMc9e": {}, "FLwdzE02": {}, "3Boo64l6": {}}, "slotId": "EAT7WeZm", "slotUsed": 80, "sourceItemId": "dtjXjmhv", "tags": ["YJsVnw7P", "NqVUPQt3", "ynrwgVyn"], "toSpecificInventory": true, "type": "Fglwcez7"}], "removeItems": [{"inventoryId": "DeSNb2DQ", "slotId": "RtJGnM9e", "sourceItemId": "0nYXZGjO"}, {"inventoryId": "88RzIL3N", "slotId": "gneLHVVK", "sourceItemId": "pZk6ZTli"}, {"inventoryId": "tONmgXHA", "slotId": "LQEBEYFm", "sourceItemId": "sRxobC38"}], "targetUserId": "NNVZEYrV", "updateItems": [{"customAttributes": {"jKfFktCb": {}, "UBF04tjt": {}, "fXBEBSQ7": {}}, "inventoryId": "4ZfIBsZL", "serverCustomAttributes": {"vAV7cs0G": {}, "mx90NvlE": {}, "LdKZFB8u": {}}, "slotId": "z3CS4Y40", "sourceItemId": "IvjUy7Nw", "tags": ["nrdh5Ip9", "31LUQTo5", "vdw0ZRO0"], "type": "JQbhED1x"}, {"customAttributes": {"d6x2SZEl": {}, "mNouOsB2": {}, "bp0Ol8xD": {}}, "inventoryId": "wCMKt7j0", "serverCustomAttributes": {"T1adkpj7": {}, "KKpbZOzr": {}, "RE9OexxS": {}}, "slotId": "2QA4GiCT", "sourceItemId": "KNOf6Hmk", "tags": ["Loec56v3", "lfUCPMIS", "o0KtAr20"], "type": "7XFGEYt3"}, {"customAttributes": {"FPO3D5DT": {}, "MGKKvUOk": {}, "IMie6iy2": {}}, "inventoryId": "5aGVqxfj", "serverCustomAttributes": {"QSc3OPT9": {}, "o7Mn5iLr": {}, "GUOYFpWN": {}}, "slotId": "di98zhDi", "sourceItemId": "RSOJkdIy", "tags": ["An8D8PM0", "niL8NQmQ", "nh27c13f"], "type": "Pwri2VR5"}]}], "requestId": "Kk6vnpKn"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode '5aVnZfk2' \
    --limit '97' \
    --offset '24' \
    --sortBy 'updatedAt' \
    --userId 'y2A88qNP' \
    > test.out 2>&1
eval_tap $? 3 'AdminListInventories' test.out

#- 4 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "7b7W86jh", "userId": "BZb4wYO0"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateInventory' test.out

#- 5 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'nAWpkyA2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetInventory' test.out

#- 6 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'RhAXp7zG' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 4}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateInventory' test.out

#- 7 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'kdwkTiGm' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "OYTw3el3"}' \
    > test.out 2>&1
eval_tap $? 7 'DeleteInventory' test.out

#- 8 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId '7WLCZk97' \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '26' \
    --qtyGte '84' \
    --sortBy 'updatedAt:desc' \
    --sourceItemId 'E8GxoO92' \
    --tags '0AxMD9FJ' \
    > test.out 2>&1
eval_tap $? 8 'AdminListItems' test.out

#- 9 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'KLHRZbbu' \
    --namespace $AB_NAMESPACE \
    --slotId '0AVJDKjQ' \
    --sourceItemId 'xXViGjK4' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventoryItem' test.out

#- 10 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'v3MlJvqL' \
    --limit '67' \
    --offset '49' \
    --sortBy 'updatedAt' \
    > test.out 2>&1
eval_tap $? 10 'AdminListInventoryConfigurations' test.out

#- 11 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "IM8zUegp", "description": "KjBF0IZh", "initialMaxSlots": 86, "maxInstancesPerUser": 14, "maxUpgradeSlots": 18, "name": "LCC0novq"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminCreateInventoryConfiguration' test.out

#- 12 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'ABMVhRuh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminGetInventoryConfiguration' test.out

#- 13 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'Tfzj9Pmn' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "IKOgCVlS", "description": "3kPUiFTI", "initialMaxSlots": 82, "maxInstancesPerUser": 83, "maxUpgradeSlots": 2, "name": "OAhptKX4"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminUpdateInventoryConfiguration' test.out

#- 14 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'oKvX5GoJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteInventoryConfiguration' test.out

#- 15 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '55' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 15 'AdminListItemTypes' test.out

#- 16 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "1gmrztje"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateItemType' test.out

#- 17 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'ZTiehnWP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDeleteItemType' test.out

#- 18 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '83' \
    --owner 'loyNp2yv' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 18 'AdminListTags' test.out

#- 19 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "6ewL1H0A", "owner": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminCreateTag' test.out

#- 20 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'NyeNrdOP' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteTag' test.out

#- 21 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'CrSwu8vO' \
    --namespace $AB_NAMESPACE \
    --userId 'xtOcPGMj' \
    --body '{"qty": 90, "slotId": "rmHPul5y", "sourceItemId": "EfQI6eAW"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminConsumeUserItem' test.out

#- 22 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId '9mQKrjkN' \
    --namespace $AB_NAMESPACE \
    --userId 'rGJk5aSF' \
    --body '[{"customAttributes": {"8mFJi5Y1": {}, "WjY31P4d": {}, "CBGLsxr4": {}}, "serverCustomAttributes": {"NBnSLyMU": {}, "HsdLbGx7": {}, "KIIwIJtQ": {}}, "slotId": "DCl7Q0NJ", "sourceItemId": "8AUIoH1c", "tags": ["sdkwSruJ", "USEb4o0d", "2SDVKpJW"], "type": "WrOjHnpa"}, {"customAttributes": {"Hn30r25l": {}, "aLRGlVWv": {}, "L3YY5V4b": {}}, "serverCustomAttributes": {"CTIqRGCb": {}, "GmusjBmr": {}, "tDmD51tl": {}}, "slotId": "YQSrHRYm", "sourceItemId": "2MEa0Szw", "tags": ["0KjFAOau", "5QPSBdzM", "ZDycHyht"], "type": "YuJJdif1"}, {"customAttributes": {"TAoMEvyM": {}, "vd1An2h8": {}, "P53duKwD": {}}, "serverCustomAttributes": {"pA4c99Qr": {}, "r2H9CET4": {}, "sj9tuVtQ": {}}, "slotId": "PUaSwefb", "sourceItemId": "fZoCoBkq", "tags": ["n0f441zT", "YQMAZCaJ", "tAVGSan1"], "type": "QzhgXGu9"}]' \
    > test.out 2>&1
eval_tap $? 22 'AdminBulkUpdateMyItems' test.out

#- 23 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'FvXxRXUr' \
    --namespace $AB_NAMESPACE \
    --userId 'zqrQ4tB4' \
    --body '{"customAttributes": {"K52zPagk": {}, "pqOnCkxO": {}, "JUp0VeKy": {}}, "qty": 6, "serverCustomAttributes": {"OW2NJOcq": {}, "H4B0nL0u": {}, "a9gdZJU4": {}}, "slotId": "VSgTwi9c", "slotUsed": 30, "sourceItemId": "ulnURypT", "tags": ["B7Cs2uKU", "YMrCPpDU", "ZBqMlZAW"], "type": "2ymVDrYm"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminSaveItemToInventory' test.out

#- 24 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'R80c3XwM' \
    --namespace $AB_NAMESPACE \
    --userId 'viubouH2' \
    --body '[{"slotId": "deNxb1vE", "sourceItemId": "2Oppv9Lc"}, {"slotId": "jmL4X04u", "sourceItemId": "nAzDC9AW"}, {"slotId": "XYj6XLCD", "sourceItemId": "aB4yPusf"}]' \
    > test.out 2>&1
eval_tap $? 24 'AdminBulkRemoveItems' test.out

#- 25 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'NVQ5VCL2' \
    --body '{"customAttributes": {"wGEGyz9W": {}, "cIrvK1uV": {}, "IxLjqpJb": {}}, "inventoryConfigurationCode": "t9NWa7QC", "qty": 51, "serverCustomAttributes": {"VTLjvsb0": {}, "LzGVN9wy": {}, "omJ7Mii2": {}}, "slotId": "3ww22BWo", "slotUsed": 32, "sourceItemId": "2gwvbIse", "tags": ["0PKZTgjM", "pgkGtgCS", "f0s355OU"], "type": "ei32iK02"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminSaveItem' test.out

#- 26 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'l5URLZFg' \
    --limit '65' \
    --offset '73' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 26 'PublicListInventoryConfigurations' test.out

#- 27 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '6' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 27 'PublicListItemTypes' test.out

#- 28 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --offset '100' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 28 'PublicListTags' test.out

#- 29 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'k84kA43A' \
    --limit '54' \
    --offset '19' \
    --sortBy 'updatedAt:asc' \
    > test.out 2>&1
eval_tap $? 29 'PublicListInventories' test.out

#- 30 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId '6AekQTST' \
    --namespace $AB_NAMESPACE \
    --body '{"qty": 10, "slotId": "jK5OZ6qp", "sourceItemId": "PpW8Wxlg"}' \
    > test.out 2>&1
eval_tap $? 30 'PublicConsumeMyItem' test.out

#- 31 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId '0v6Vyyay' \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '66' \
    --qtyGte '47' \
    --sortBy 'qty:asc' \
    --sourceItemId 'E5XAh19K' \
    --tags '6hQeeIxd' \
    > test.out 2>&1
eval_tap $? 31 'PublicListItems' test.out

#- 32 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'MRwVejEn' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"xt0Yscku": {}, "L8vmGnIT": {}, "AvVPy96m": {}}, "slotId": "PID6t08F", "sourceItemId": "ItQjFZBW", "tags": ["6MMKbm8s", "vEzlYSuD", "ZSGnRVlr"]}, {"customAttributes": {"BG9cGSBt": {}, "HyP4YNRW": {}, "xoQntAf2": {}}, "slotId": "OtA6pqOj", "sourceItemId": "HtR6LMWV", "tags": ["1nBqpvQq", "FwMb1tky", "HBUxD5sN"]}, {"customAttributes": {"q2iW0vT0": {}, "PSYMQCRY": {}, "rLU1ntZx": {}}, "slotId": "u9uteqoA", "sourceItemId": "6t8ZPzTj", "tags": ["vD016Y04", "wKIGV7mL", "8VViojmI"]}]' \
    > test.out 2>&1
eval_tap $? 32 'PublicBulkUpdateMyItems' test.out

#- 33 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId '65MjiAiN' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "f8dQkCMf", "sourceItemId": "w9JkCI2H"}, {"slotId": "b6GiBMTo", "sourceItemId": "gYZyJ4Yi"}, {"slotId": "5CgXyxIC", "sourceItemId": "dRu5rrQB"}]' \
    > test.out 2>&1
eval_tap $? 33 'PublicBulkRemoveMyItems' test.out

#- 34 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'Ce6rtcZe' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 58, "slotId": "lGATtlGO", "sourceItemId": "7JtOgajK"}, {"qty": 59, "slotId": "Zj9NJWuL", "sourceItemId": "WSuHTv3c"}, {"qty": 39, "slotId": "VOP5i8yX", "sourceItemId": "JH0caQHp"}], "srcInventoryId": "fE26cIHZ"}' \
    > test.out 2>&1
eval_tap $? 34 'PublicMoveMyItems' test.out

#- 35 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'ZJF9JxaO' \
    --namespace $AB_NAMESPACE \
    --slotId '7FQ8ZA4G' \
    --sourceItemId 'GZf7SlWN' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE