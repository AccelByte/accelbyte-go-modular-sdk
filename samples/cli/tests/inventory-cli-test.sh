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
    --body '{"message": "K4ryptiv", "operations": [{"consumeItems": [{"inventoryId": "ccO7byYt", "qty": 26, "slotId": "U9UtpclE", "sourceItemId": "Wp664nvO"}, {"inventoryId": "dQw6T2xi", "qty": 66, "slotId": "oTFDo92s", "sourceItemId": "UX3JGAuA"}, {"inventoryId": "MFtG3rON", "qty": 42, "slotId": "4EvWXqTA", "sourceItemId": "yxlVoHJO"}], "createItems": [{"customAttributes": {"eNf2Bbnz": {}, "tJ5Vdp34": {}, "8i6nv21e": {}}, "inventoryConfigurationCode": "xtt00igD", "inventoryId": "tgLQ8FKx", "qty": 62, "serverCustomAttributes": {"jnKHfZi9": {}, "jdEdvIes": {}, "S3R5Eqsd": {}}, "slotId": "igO45t1n", "slotUsed": 86, "sourceItemId": "BFTkN1g1", "tags": ["JcuTHvcw", "S3e9rACM", "DWFGgZth"], "toSpecificInventory": false, "type": "ITVzQjym"}, {"customAttributes": {"L1FD6KuB": {}, "5sQVZIqd": {}, "MjFyB8s2": {}}, "inventoryConfigurationCode": "IZGSsLcq", "inventoryId": "nqhtRjoK", "qty": 55, "serverCustomAttributes": {"jVHG4dVw": {}, "OvpuMv3A": {}, "Lc5Rj6Ov": {}}, "slotId": "PuqSaHPG", "slotUsed": 53, "sourceItemId": "6ltLTjaC", "tags": ["vZXwYWYo", "ow1ueN1h", "bbUrgDqv"], "toSpecificInventory": true, "type": "Kagp0Pjb"}, {"customAttributes": {"DW1P6TCX": {}, "g74cCZT9": {}, "jo0uYInx": {}}, "inventoryConfigurationCode": "naXgP2rv", "inventoryId": "vJs7QiIj", "qty": 38, "serverCustomAttributes": {"BqFyHw7y": {}, "5sgVLIOl": {}, "j1sy1s9D": {}}, "slotId": "7T9Xr0RQ", "slotUsed": 99, "sourceItemId": "RHUV8IJi", "tags": ["eRYPeQx7", "Qs3x6BI6", "TSHJREnW"], "toSpecificInventory": false, "type": "h5Kn7ArA"}], "removeItems": [{"inventoryId": "kKGB4PDH", "slotId": "ONx2z8ax", "sourceItemId": "RuLIiq1c"}, {"inventoryId": "SJIJiGe3", "slotId": "a64HyWEk", "sourceItemId": "gWQSO3cc"}, {"inventoryId": "JCEAuLyz", "slotId": "OTkiRjcf", "sourceItemId": "EmFy9shx"}], "targetUserId": "GBH3N4jB", "updateItems": [{"customAttributes": {"QsN55Hjl": {}, "W1pGNBxq": {}, "mVd7r10K": {}}, "inventoryId": "mnrilRCJ", "serverCustomAttributes": {"yJLg0y92": {}, "vHiM85q1": {}, "e13ku8ZV": {}}, "slotId": "pKOaJdnq", "sourceItemId": "Qjhp14gc", "tags": ["EDfT9LxM", "NJN2W9rw", "BCYnCP4B"], "type": "fzfOTJiD"}, {"customAttributes": {"Ohfu3lPg": {}, "TOE47elA": {}, "dXTubDoC": {}}, "inventoryId": "aMcSp1QH", "serverCustomAttributes": {"wpzTIAqF": {}, "JWxBBqLg": {}, "JcWspEo6": {}}, "slotId": "VDFVKuLC", "sourceItemId": "3hjTmLfM", "tags": ["lkgu5TZR", "o1ULYRVC", "QxzszS9L"], "type": "iAkx0abM"}, {"customAttributes": {"QJp4w4JU": {}, "yC2zVfjw": {}, "rPoe9eqT": {}}, "inventoryId": "KQxia80L", "serverCustomAttributes": {"tiluZ59q": {}, "TTEbG6he": {}, "iOMz49wl": {}}, "slotId": "skvnlVPd", "sourceItemId": "rPyu2NEJ", "tags": ["T3JsOcSJ", "4A2phKeE", "d0sEfwg5"], "type": "0FScPDCi"}]}, {"consumeItems": [{"inventoryId": "aqI92aql", "qty": 5, "slotId": "59HQpAo3", "sourceItemId": "IB5ltVPh"}, {"inventoryId": "GExpknxm", "qty": 35, "slotId": "tmKDa2u6", "sourceItemId": "SDtROuos"}, {"inventoryId": "cE38GzDU", "qty": 57, "slotId": "MgZA4h2S", "sourceItemId": "XZnIkIQI"}], "createItems": [{"customAttributes": {"JbQ1m4gW": {}, "laZUqbej": {}, "wLO6RiXL": {}}, "inventoryConfigurationCode": "sZcQYI3K", "inventoryId": "Bg6cwPrS", "qty": 52, "serverCustomAttributes": {"1XCNIPBY": {}, "IVQH4xoX": {}, "5T7Uld8h": {}}, "slotId": "lAdPidxt", "slotUsed": 93, "sourceItemId": "7l47jnBh", "tags": ["y6VI9MVp", "DZeGguT2", "BjOTK66y"], "toSpecificInventory": false, "type": "HgcqFG1S"}, {"customAttributes": {"wNygaov1": {}, "epb6WYhc": {}, "bAOXL7P3": {}}, "inventoryConfigurationCode": "NI4Omwxy", "inventoryId": "Twa1e2PX", "qty": 89, "serverCustomAttributes": {"FMujohZi": {}, "QNZskaGX": {}, "yL3pgqKA": {}}, "slotId": "CDZeO8jY", "slotUsed": 4, "sourceItemId": "s8syma6p", "tags": ["MIkwcY34", "bdWcpYAA", "FTm77HhJ"], "toSpecificInventory": false, "type": "KBP99KBx"}, {"customAttributes": {"xKPJg7DF": {}, "jxn1kTwT": {}, "X8tHq1jd": {}}, "inventoryConfigurationCode": "jFgkr2Ds", "inventoryId": "xpsHNp7e", "qty": 10, "serverCustomAttributes": {"SvaGX3qb": {}, "xTc3o0fI": {}, "Gur4203m": {}}, "slotId": "BTC2PS8R", "slotUsed": 59, "sourceItemId": "IE1sVWVC", "tags": ["FNQAN07z", "NjTsK5Xg", "ncuEjzGg"], "toSpecificInventory": false, "type": "f1ur93qF"}], "removeItems": [{"inventoryId": "prae0aDW", "slotId": "2Ei9Ed0q", "sourceItemId": "0Uc8zDoZ"}, {"inventoryId": "Jr2zaDfW", "slotId": "DzuKa1YG", "sourceItemId": "Bky2uNlA"}, {"inventoryId": "9ofEjNiL", "slotId": "uRij9KD8", "sourceItemId": "RL7Id88O"}], "targetUserId": "b280EMRM", "updateItems": [{"customAttributes": {"cGpWCg34": {}, "VIHsJ4rK": {}, "6ZB98k0v": {}}, "inventoryId": "o93uVT54", "serverCustomAttributes": {"AGvVPoa0": {}, "Na6kmjWo": {}, "aTH2Fk5V": {}}, "slotId": "5j2pdfy8", "sourceItemId": "ADTzeenO", "tags": ["0vc1UoH0", "F6DSH1kA", "xfBYhf3h"], "type": "IsbRYkPa"}, {"customAttributes": {"PiSweWup": {}, "quWjtaAP": {}, "mjBQVLuj": {}}, "inventoryId": "dC57Qh4r", "serverCustomAttributes": {"JSZJuIj8": {}, "iSf5Vbjy": {}, "XKCfJEHT": {}}, "slotId": "RsTeqJsB", "sourceItemId": "cvYh15gu", "tags": ["oLbGPrK4", "dPgz6ZCY", "IOYHE78L"], "type": "FmuHimFk"}, {"customAttributes": {"bIJeUgOr": {}, "1El1EsiB": {}, "y54k5BTj": {}}, "inventoryId": "0vq8LrAO", "serverCustomAttributes": {"YzMxAROs": {}, "OlS0bnOV": {}, "tEyRsP0n": {}}, "slotId": "D5RLoMpP", "sourceItemId": "s4o67O5e", "tags": ["0buul9Jj", "a9ZRyZEc", "VcLOrgpC"], "type": "uTwIJf6L"}]}, {"consumeItems": [{"inventoryId": "zRdhOW27", "qty": 68, "slotId": "nqIkpc4C", "sourceItemId": "T9GmFVgI"}, {"inventoryId": "IXl0SvpE", "qty": 12, "slotId": "RQ27IDvn", "sourceItemId": "fl6KGdlS"}, {"inventoryId": "ysDp86Yi", "qty": 14, "slotId": "DLTDR1xd", "sourceItemId": "eQdqTL6o"}], "createItems": [{"customAttributes": {"XU57TwYu": {}, "gyhmjVUA": {}, "RGT9oulB": {}}, "inventoryConfigurationCode": "LiKe1txL", "inventoryId": "M5ZAEOyb", "qty": 17, "serverCustomAttributes": {"J8nii2OZ": {}, "Atpd3Njw": {}, "VHJjbV6z": {}}, "slotId": "on1h7Izz", "slotUsed": 33, "sourceItemId": "fv4jx6cK", "tags": ["4Yenb6sN", "cZL5X9Dl", "i12GEuKW"], "toSpecificInventory": true, "type": "X0pj0Gc3"}, {"customAttributes": {"pBnfiRNw": {}, "nc6aT9lx": {}, "jLhyrR8g": {}}, "inventoryConfigurationCode": "VwSOq2Nf", "inventoryId": "UxonDPyM", "qty": 39, "serverCustomAttributes": {"tVLwJObV": {}, "Glac6WzK": {}, "r8KBn6Tp": {}}, "slotId": "zaEHfqG7", "slotUsed": 100, "sourceItemId": "SXJicBwo", "tags": ["uRZiCNkr", "g4YWvYN4", "e75gCHol"], "toSpecificInventory": false, "type": "MXtnmbW4"}, {"customAttributes": {"SFC5jnlr": {}, "WZ2uK7s5": {}, "L2w3rXwu": {}}, "inventoryConfigurationCode": "kgBChyXX", "inventoryId": "sayhEtq1", "qty": 71, "serverCustomAttributes": {"fok9n1kN": {}, "bb29NanH": {}, "AakFb3eJ": {}}, "slotId": "ekmP1Au4", "slotUsed": 91, "sourceItemId": "sT41iOaj", "tags": ["shv6norg", "uaoZtqPd", "up7WSdn0"], "toSpecificInventory": true, "type": "ZQdNhHY1"}], "removeItems": [{"inventoryId": "BNrcYcRt", "slotId": "3XMpycVd", "sourceItemId": "6D7qGXjk"}, {"inventoryId": "uGlejtlb", "slotId": "jtDYWU96", "sourceItemId": "1m6oPJAD"}, {"inventoryId": "wkEhGdUf", "slotId": "XBmKEyrG", "sourceItemId": "9pG9cuxb"}], "targetUserId": "8qxpsFjF", "updateItems": [{"customAttributes": {"bXW5r6Tz": {}, "BpAG008y": {}, "8gIiX6IS": {}}, "inventoryId": "mwScA97C", "serverCustomAttributes": {"e5Tqy4Q9": {}, "f2Wq5KTH": {}, "fsjG7HvG": {}}, "slotId": "THi4Kh0q", "sourceItemId": "jynIyBZC", "tags": ["81NbAUfT", "9BEBZBM7", "NqXBxbzy"], "type": "DZAZgdzr"}, {"customAttributes": {"iYvWpfgC": {}, "0OMZsJtt": {}, "PnyDjksK": {}}, "inventoryId": "Zu5eN5ZJ", "serverCustomAttributes": {"fxBFPEGJ": {}, "ZcuWnjp6": {}, "HOVPHkYP": {}}, "slotId": "CNHrYnc9", "sourceItemId": "6o8XXcKm", "tags": ["etr9vNQV", "v4IKQy0d", "fc1frLls"], "type": "X4fLmOAd"}, {"customAttributes": {"4kLXWGA1": {}, "wGVdPJ4p": {}, "PLVryJNI": {}}, "inventoryId": "sVkq4V24", "serverCustomAttributes": {"RmI7e0U1": {}, "GD9PhF4S": {}, "q2pvBuR2": {}}, "slotId": "KbTp6R3P", "sourceItemId": "nJ8d63JK", "tags": ["3KI87VKd", "93Py5Q0c", "qBpOQooz"], "type": "7PYDFua7"}]}], "requestId": "ukEMBaeL"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'MKkw0spS' \
    --limit '29' \
    --offset '0' \
    --sortBy 'createdAt:asc' \
    --userId 'i0eJJd4Y' \
    > test.out 2>&1
eval_tap $? 3 'AdminListInventories' test.out

#- 4 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "IwaDpjgX", "userId": "0Y8gd7b8"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateInventory' test.out

#- 5 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'YgKHyz22' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetInventory' test.out

#- 6 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'TZX57t5I' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 19}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateInventory' test.out

#- 7 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'NEOafdb4' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "UQCjQHbt"}' \
    > test.out 2>&1
eval_tap $? 7 'DeleteInventory' test.out

#- 8 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'slIOvPhg' \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '34' \
    --qtyGte '63' \
    --sortBy 'qty:asc' \
    --sourceItemId 'F7Jy4zQW' \
    --tags '7O02kf4E' \
    > test.out 2>&1
eval_tap $? 8 'AdminListItems' test.out

#- 9 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'yTdp5rY6' \
    --namespace $AB_NAMESPACE \
    --slotId 'rJE6Vsl3' \
    --sourceItemId 'OJCEpkJL' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventoryItem' test.out

#- 10 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'G1EFDIWw' \
    --limit '93' \
    --offset '24' \
    --sortBy 'updatedAt' \
    > test.out 2>&1
eval_tap $? 10 'AdminListInventoryConfigurations' test.out

#- 11 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Z0mLel68", "description": "Yt3hV6UB", "initialMaxSlots": 74, "maxInstancesPerUser": 51, "maxUpgradeSlots": 46, "name": "gOrW5bfw"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminCreateInventoryConfiguration' test.out

#- 12 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'EoZrF7vj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminGetInventoryConfiguration' test.out

#- 13 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'rQj5Gj41' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "8DRXv5AP", "description": "W9gt6iq6", "initialMaxSlots": 64, "maxInstancesPerUser": 7, "maxUpgradeSlots": 86, "name": "D0GCcXiO"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminUpdateInventoryConfiguration' test.out

#- 14 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'VisTViIp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteInventoryConfiguration' test.out

#- 15 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '81' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 15 'AdminListItemTypes' test.out

#- 16 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "O9tXXK9A"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateItemType' test.out

#- 17 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'gx1g97ZC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDeleteItemType' test.out

#- 18 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '59' \
    --owner 'PqUxoIxJ' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 18 'AdminListTags' test.out

#- 19 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "FooqZkaW", "owner": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminCreateTag' test.out

#- 20 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName '19l8MvN6' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteTag' test.out

#- 21 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'PTKdQ1A2' \
    --namespace $AB_NAMESPACE \
    --userId 'OaCvipac' \
    --body '{"qty": 27, "slotId": "iUO24vE7", "sourceItemId": "RpGw4MBZ"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminConsumeUserItem' test.out

#- 22 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'zCK1txUO' \
    --namespace $AB_NAMESPACE \
    --userId 'hxOquTRi' \
    --body '[{"customAttributes": {"21ItuSXA": {}, "9LqsPAQ3": {}, "qKFmQSAN": {}}, "serverCustomAttributes": {"3mkiz6Ni": {}, "R0A5NtTA": {}, "p1tdZNgf": {}}, "slotId": "kuHwWPt5", "sourceItemId": "etMhTYo2", "tags": ["P4YbOU6v", "Z3ybXjxh", "sWiBRbMh"], "type": "yZUCWNib"}, {"customAttributes": {"vvIocB28": {}, "37Ivbhb6": {}, "JFc6jzef": {}}, "serverCustomAttributes": {"a7ErucVH": {}, "7D4yJRu7": {}, "SGCEiwnE": {}}, "slotId": "b19geCv0", "sourceItemId": "CeaMYhE8", "tags": ["OiRy7VML", "Vse2ZKgP", "GyHUOXCS"], "type": "xv1w5n3H"}, {"customAttributes": {"O8Fx5oYa": {}, "85Xd0Idz": {}, "0Zn7wcWu": {}}, "serverCustomAttributes": {"iDVWYpRY": {}, "uonXYByv": {}, "BHnmiizZ": {}}, "slotId": "aKO6RN7v", "sourceItemId": "dnmk9M8S", "tags": ["TOyyafA0", "1pwgAkAM", "9VMN3Dm4"], "type": "Ivd2FGUU"}]' \
    > test.out 2>&1
eval_tap $? 22 'AdminBulkUpdateMyItems' test.out

#- 23 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'l2FtWAk3' \
    --namespace $AB_NAMESPACE \
    --userId 'UEaovWqG' \
    --body '{"customAttributes": {"guVd3rWw": {}, "jkJqHNXW": {}, "pdLYQvDn": {}}, "qty": 80, "serverCustomAttributes": {"31As9PtD": {}, "5IaJWf2Y": {}, "OklVo2ca": {}}, "slotId": "8cAL8c2E", "slotUsed": 8, "sourceItemId": "Uorx6t06", "tags": ["0tdPqrwB", "UhoW8weD", "7McI1kHJ"], "type": "tDb9H9Xo"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminSaveItemToInventory' test.out

#- 24 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'Cjh9UIRJ' \
    --namespace $AB_NAMESPACE \
    --userId 'nYH79x3B' \
    --body '[{"slotId": "srkwXU3S", "sourceItemId": "6RIEp5Ja"}, {"slotId": "UJojlT3Z", "sourceItemId": "O5KKZ7m0"}, {"slotId": "QEqKxySO", "sourceItemId": "SRLeSvEw"}]' \
    > test.out 2>&1
eval_tap $? 24 'AdminBulkRemoveItems' test.out

#- 25 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'mMDVkCEy' \
    --body '{"customAttributes": {"HSM4OQem": {}, "XfBsN2D9": {}, "o4lzenRI": {}}, "inventoryConfigurationCode": "6kOFKIeA", "qty": 82, "serverCustomAttributes": {"HC5GVmGa": {}, "29OXLAWI": {}, "f1d7M6GR": {}}, "slotId": "P3XtIsXR", "slotUsed": 83, "sourceItemId": "FUuMEnBR", "tags": ["EZeHH9TS", "lJxVk5HW", "0WRB52DX"], "type": "tBTai364"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminSaveItem' test.out

#- 26 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'el6VNqQN' \
    --limit '63' \
    --offset '73' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 26 'PublicListInventoryConfigurations' test.out

#- 27 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '24' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 27 'PublicListItemTypes' test.out

#- 28 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '26' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 28 'PublicListTags' test.out

#- 29 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'U7aK3ddR' \
    --limit '76' \
    --offset '46' \
    --sortBy 'updatedAt:desc' \
    > test.out 2>&1
eval_tap $? 29 'PublicListInventories' test.out

#- 30 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'I7WFAgTs' \
    --namespace $AB_NAMESPACE \
    --body '{"qty": 30, "slotId": "MEtgZioP", "sourceItemId": "2068zOu8"}' \
    > test.out 2>&1
eval_tap $? 30 'PublicConsumeMyItem' test.out

#- 31 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'jzHG4GB3' \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '9' \
    --qtyGte '99' \
    --sortBy 'updatedAt:asc' \
    --sourceItemId 'ZWiWfODN' \
    --tags '8fiCTCr4' \
    > test.out 2>&1
eval_tap $? 31 'PublicListItems' test.out

#- 32 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'yJTu7Czl' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"7hEvzQP7": {}, "uP1NYfU1": {}, "i3YsbZg3": {}}, "slotId": "Dbz99pkX", "sourceItemId": "6t911ZlG", "tags": ["3zSTbQYG", "bhsdNEnH", "jKWDwt6X"]}, {"customAttributes": {"PR79AXNT": {}, "H4Og1nAy": {}, "gto1pMw4": {}}, "slotId": "thCtoIfT", "sourceItemId": "MD7viWP7", "tags": ["T1066sBD", "GWSpGaLE", "ihOXCsfD"]}, {"customAttributes": {"peBEesLR": {}, "HlUCbmjA": {}, "bynniCp4": {}}, "slotId": "Fq0SPa9K", "sourceItemId": "25nBb2Tj", "tags": ["VvhePVeK", "hIvXzRpj", "96pxNgRu"]}]' \
    > test.out 2>&1
eval_tap $? 32 'PublicBulkUpdateMyItems' test.out

#- 33 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'H9sgWEvq' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "C8UjM4FE", "sourceItemId": "Ur5pfnix"}, {"slotId": "xlAtpLhR", "sourceItemId": "5rVrlJwc"}, {"slotId": "hVwC64X9", "sourceItemId": "tXGtcJ4s"}]' \
    > test.out 2>&1
eval_tap $? 33 'PublicBulkRemoveMyItems' test.out

#- 34 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'AkC2SAAF' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 88, "slotId": "m72Wx6B6", "sourceItemId": "Xeiwf5pz"}, {"qty": 26, "slotId": "1QtVfFUx", "sourceItemId": "OlGWJSCL"}, {"qty": 75, "slotId": "31mzhpCm", "sourceItemId": "x84cbd2j"}], "srcInventoryId": "nZIptTh4"}' \
    > test.out 2>&1
eval_tap $? 34 'PublicMoveMyItems' test.out

#- 35 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'gkH9ovew' \
    --namespace $AB_NAMESPACE \
    --slotId 'buLr0kZa' \
    --sourceItemId 'CgZKOHjz' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE