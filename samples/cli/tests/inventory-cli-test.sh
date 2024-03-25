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
    --body '{"message": "yXCyTOHF", "operations": [{"consumeItems": [{"inventoryId": "hwpA3RJp", "qty": 48, "slotId": "oCflpRQ8", "sourceItemId": "lpNy8QFS"}, {"inventoryId": "ggFvQdKu", "qty": 60, "slotId": "Ywgf7tgL", "sourceItemId": "S6x3WAti"}, {"inventoryId": "sOOp35aN", "qty": 69, "slotId": "e61WiTlC", "sourceItemId": "o7EKoaRb"}], "createItems": [{"customAttributes": {"pQZgL5ZI": {}, "fYp51ZDG": {}, "J8LNrq58": {}}, "inventoryConfigurationCode": "iBCPZTG8", "inventoryId": "YOoKWGch", "qty": 87, "serverCustomAttributes": {"bLqpmdjk": {}, "6TP4FU4Q": {}, "jdEQuNTl": {}}, "slotId": "9bVWVT8C", "slotUsed": 35, "sourceItemId": "aV9OVSJR", "tags": ["azoZx1jY", "76vSCjUR", "S4dUq8ZT"], "toSpecificInventory": false, "type": "9CJByNcd"}, {"customAttributes": {"qoViRJLK": {}, "mrC4SaJR": {}, "FHDXUMVp": {}}, "inventoryConfigurationCode": "UIVoTs2W", "inventoryId": "w6UtCncc", "qty": 85, "serverCustomAttributes": {"jj6fBjn2": {}, "muzuIsxZ": {}, "ibtHHROT": {}}, "slotId": "LFvrE2YG", "slotUsed": 60, "sourceItemId": "Zu47FYco", "tags": ["jPqqMzNz", "0GuGYhFJ", "f1J0LFLJ"], "toSpecificInventory": false, "type": "mr6UNYZN"}, {"customAttributes": {"8okPwJf0": {}, "rKmu6oji": {}, "XX3HfI2w": {}}, "inventoryConfigurationCode": "JlQI5J7k", "inventoryId": "R5K2jfmH", "qty": 36, "serverCustomAttributes": {"EjEFlbDw": {}, "zA1lqw9F": {}, "YSQelWL8": {}}, "slotId": "N0hYvJZx", "slotUsed": 15, "sourceItemId": "oUlMoUSa", "tags": ["wnKqyVz9", "AczVWQVj", "XXaFyRFO"], "toSpecificInventory": false, "type": "w2VZKcGI"}], "removeItems": [{"inventoryId": "ApwL9GQw", "slotId": "HjJ1ZJeB", "sourceItemId": "r7SPdvun"}, {"inventoryId": "7BzCal0q", "slotId": "sJqfFcwJ", "sourceItemId": "iUew4aAc"}, {"inventoryId": "ds8r4BXS", "slotId": "ZAV9lX4D", "sourceItemId": "nIB5vs3Y"}], "targetUserId": "6G5WoMWl", "updateItems": [{"customAttributes": {"oLpcyKDa": {}, "pdZhuOQR": {}, "3H18KHzu": {}}, "inventoryId": "UyA4FPK7", "serverCustomAttributes": {"UEtFA9w5": {}, "sMTatGYS": {}, "bVkGjWoe": {}}, "slotId": "0OmauANn", "sourceItemId": "s7VinlWF", "tags": ["6uohMRej", "I8b2itKp", "z0i91AlX"], "type": "zZWIELnU"}, {"customAttributes": {"bB0S62y4": {}, "jNSZZRS0": {}, "AQY2IkbN": {}}, "inventoryId": "98ktMI0y", "serverCustomAttributes": {"BrKcIKaH": {}, "UIBzY88U": {}, "FcHQr8pH": {}}, "slotId": "Mpw2hImh", "sourceItemId": "rIXfdIRC", "tags": ["vA4x6NFY", "Sq2VzAbF", "QfVrIyn4"], "type": "5HYBJYZT"}, {"customAttributes": {"wLHm3Ave": {}, "bZgmcYu6": {}, "dhEB1lYf": {}}, "inventoryId": "XiqqEShg", "serverCustomAttributes": {"3XjOuBZH": {}, "Et0jNt5i": {}, "P4XM33ek": {}}, "slotId": "bBvX6B44", "sourceItemId": "fF0CFmwz", "tags": ["kkNT2iId", "Za2jHYAq", "1O8sel2a"], "type": "JHPcAsME"}]}, {"consumeItems": [{"inventoryId": "SPpk032l", "qty": 85, "slotId": "nJPMv0mi", "sourceItemId": "h0X5KxwT"}, {"inventoryId": "dvzXRPA7", "qty": 84, "slotId": "Oq69TdQK", "sourceItemId": "KXsTInNl"}, {"inventoryId": "p73ZpbMu", "qty": 41, "slotId": "Ze1pO1ic", "sourceItemId": "yETM3CpP"}], "createItems": [{"customAttributes": {"TY0NwLSI": {}, "JpN1aQNZ": {}, "akcURkUI": {}}, "inventoryConfigurationCode": "CoeDa5Bd", "inventoryId": "uvWg8FON", "qty": 65, "serverCustomAttributes": {"WgPGYcE0": {}, "izsGGTt8": {}, "E4XuXoEu": {}}, "slotId": "Ts2eQ1lX", "slotUsed": 81, "sourceItemId": "yONBEUJJ", "tags": ["qXIvkRvQ", "JT8ekSd7", "QKrw8b6y"], "toSpecificInventory": false, "type": "3zMq76V5"}, {"customAttributes": {"U3JtgAAL": {}, "x2rZHn43": {}, "TtpTT1ou": {}}, "inventoryConfigurationCode": "9Ou46NXD", "inventoryId": "bTVXEPtd", "qty": 47, "serverCustomAttributes": {"NytIaOKI": {}, "OBxohcVH": {}, "iIBk7cOM": {}}, "slotId": "00Gchxi0", "slotUsed": 37, "sourceItemId": "pGZQ1XVF", "tags": ["x1nFSiCD", "3U7LqOe4", "fW3tDDJA"], "toSpecificInventory": false, "type": "s6xdOAf0"}, {"customAttributes": {"wqa07HfL": {}, "Oyw6QGqr": {}, "ima1TQ3k": {}}, "inventoryConfigurationCode": "5NPbmiEO", "inventoryId": "vKi6H11T", "qty": 22, "serverCustomAttributes": {"N7vbU2GA": {}, "3thPmZtX": {}, "Ryh4fB0z": {}}, "slotId": "KLrN5v3C", "slotUsed": 54, "sourceItemId": "wpWhZdyQ", "tags": ["vTLsLJ7Z", "b7Fdvs4I", "pwSL3AAw"], "toSpecificInventory": true, "type": "HKdpDrjo"}], "removeItems": [{"inventoryId": "XggkD45W", "slotId": "MYpi2ovg", "sourceItemId": "N6RV5G8r"}, {"inventoryId": "2YphXGaN", "slotId": "sol6I177", "sourceItemId": "b4jb2pkL"}, {"inventoryId": "aeD0kbPC", "slotId": "SlDneyk9", "sourceItemId": "Vl7xWnGD"}], "targetUserId": "Jb5QAoFV", "updateItems": [{"customAttributes": {"scylF6Wx": {}, "pNeiLR8U": {}, "Ngq74h8M": {}}, "inventoryId": "l2xL3COL", "serverCustomAttributes": {"Ki77DwQM": {}, "eslBe5HA": {}, "WdxJzYq5": {}}, "slotId": "wuIBfOaf", "sourceItemId": "S8vH0fAg", "tags": ["mZTiR3pz", "SG5NJiyZ", "biwDgpVc"], "type": "D1hr7Fqp"}, {"customAttributes": {"eixN2GBC": {}, "eh02iyLR": {}, "qA1JlCQi": {}}, "inventoryId": "yxiOsIbX", "serverCustomAttributes": {"DJeRX7gg": {}, "GGnIEu7x": {}, "IQuKrGcO": {}}, "slotId": "hZoifMeh", "sourceItemId": "SPn7GRum", "tags": ["GMqh2JBj", "78YrxcJc", "aCZOyJNb"], "type": "8VwqedzZ"}, {"customAttributes": {"oZQy0SUH": {}, "K0kmfVCc": {}, "rkPIy9R3": {}}, "inventoryId": "MtovpboI", "serverCustomAttributes": {"zHWigYCU": {}, "6Slyz8bX": {}, "IxEgFp85": {}}, "slotId": "nLp28asW", "sourceItemId": "yGoF1kJb", "tags": ["CVUSTePV", "D97q5N6C", "K47eQkWq"], "type": "mKXouYlN"}]}, {"consumeItems": [{"inventoryId": "qIaxekXl", "qty": 68, "slotId": "ITGj8vxH", "sourceItemId": "9466smvR"}, {"inventoryId": "YXgJn2Nu", "qty": 37, "slotId": "NoLyrvaK", "sourceItemId": "t0oltk84"}, {"inventoryId": "opORm50y", "qty": 99, "slotId": "BSYhmgAm", "sourceItemId": "sFJrLnnl"}], "createItems": [{"customAttributes": {"uJfZvKbh": {}, "miwVeYAr": {}, "YEgvaqqt": {}}, "inventoryConfigurationCode": "EFV4z6Ie", "inventoryId": "O0eFIyp2", "qty": 5, "serverCustomAttributes": {"HWIZrGL4": {}, "kqCEwEZd": {}, "5d97CEbh": {}}, "slotId": "zypd1m0N", "slotUsed": 11, "sourceItemId": "GgWQqxa2", "tags": ["nZgnVw6E", "ayseOlp2", "VluPMnZ5"], "toSpecificInventory": false, "type": "L5LUbXbQ"}, {"customAttributes": {"Tab1eTSW": {}, "HYAuumoC": {}, "Mj3fSoV3": {}}, "inventoryConfigurationCode": "4y9bi6fr", "inventoryId": "zeHd4tDU", "qty": 92, "serverCustomAttributes": {"L39gAQwZ": {}, "Mh6OSjqS": {}, "V5F64PpD": {}}, "slotId": "PbpaKVL4", "slotUsed": 53, "sourceItemId": "CBy4lzbN", "tags": ["JCXcR4Hz", "q89EFS0e", "YHplpXzf"], "toSpecificInventory": true, "type": "XehsMZQP"}, {"customAttributes": {"auqNVyym": {}, "FKgvmHLA": {}, "zu7ML7mr": {}}, "inventoryConfigurationCode": "ZKvT7xEx", "inventoryId": "ZKXo635i", "qty": 39, "serverCustomAttributes": {"A8oNuB7g": {}, "4k22jU3Y": {}, "ed0MRKLM": {}}, "slotId": "kDemCuwe", "slotUsed": 33, "sourceItemId": "iVazKTEV", "tags": ["EK3xCaDz", "11Rw0U9y", "5ve0TUWa"], "toSpecificInventory": false, "type": "xJPjczqr"}], "removeItems": [{"inventoryId": "ai8V7KyH", "slotId": "OeHh0XMG", "sourceItemId": "lE4egtt0"}, {"inventoryId": "545mD39p", "slotId": "YW4yyOow", "sourceItemId": "QMxgZXvB"}, {"inventoryId": "7NAE0BtI", "slotId": "00ftTRvp", "sourceItemId": "bILpyYKT"}], "targetUserId": "9W5u3mar", "updateItems": [{"customAttributes": {"mzIkYWs3": {}, "NZE7whn3": {}, "riv7mIQ4": {}}, "inventoryId": "ujFqMzaZ", "serverCustomAttributes": {"6E2T9ibY": {}, "hccO3zew": {}, "Oj0Ycdno": {}}, "slotId": "1BbblBWC", "sourceItemId": "16uYH6qc", "tags": ["pw6CMZdT", "m8cq9rSp", "Uy0iyekn"], "type": "AUuszAGg"}, {"customAttributes": {"iYZHvTRD": {}, "zQIpV12J": {}, "EiEgY24L": {}}, "inventoryId": "s5UhIrBe", "serverCustomAttributes": {"WZWqhqlA": {}, "ksJMnKtf": {}, "8kjD10sf": {}}, "slotId": "pZqxKXHk", "sourceItemId": "d3ylMvEq", "tags": ["9BxBQGG3", "uJhYM0a0", "SrGeJSyv"], "type": "gx1DbPov"}, {"customAttributes": {"vLUYJAY6": {}, "63PVl1Zk": {}, "nSQqgV3R": {}}, "inventoryId": "aLUltbPJ", "serverCustomAttributes": {"t3rJMjYe": {}, "rWmM2QhK": {}, "Z7Jnz0J0": {}}, "slotId": "Yow7ggHR", "sourceItemId": "SvoF6l17", "tags": ["AeN58YJm", "FL1yssBS", "ehshbhNA"], "type": "8JYTj3an"}]}], "requestId": "8rT4T69C"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'iB83GSNj' \
    --limit '50' \
    --offset '31' \
    --sortBy 'inventoryConfigurationCode' \
    --userId 'Au0eZoe5' \
    > test.out 2>&1
eval_tap $? 3 'AdminListInventories' test.out

#- 4 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "yAcDiTUj", "userId": "wlzIJ9wX"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateInventory' test.out

#- 5 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'mzDXXVuF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetInventory' test.out

#- 6 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'Y4DGou8J' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 28}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateInventory' test.out

#- 7 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'xUOf4IZX' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "tG0CZbKf"}' \
    > test.out 2>&1
eval_tap $? 7 'DeleteInventory' test.out

#- 8 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'H3Q1Lamp' \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '92' \
    --qtyGte '29' \
    --sortBy 'updatedAt:desc' \
    --sourceItemId 'kIPAKxtE' \
    --tags 'mDKeMtZu' \
    > test.out 2>&1
eval_tap $? 8 'AdminListItems' test.out

#- 9 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'MaE7oGgU' \
    --namespace $AB_NAMESPACE \
    --slotId '0AnsFiVR' \
    --sourceItemId 'h8HnHnnY' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventoryItem' test.out

#- 10 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code '3G55FAMF' \
    --limit '10' \
    --offset '37' \
    --sortBy 'code' \
    > test.out 2>&1
eval_tap $? 10 'AdminListInventoryConfigurations' test.out

#- 11 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "sPVFWNwr", "description": "YCMXv4KM", "initialMaxSlots": 24, "maxInstancesPerUser": 61, "maxUpgradeSlots": 53, "name": "nHCj2XI9"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminCreateInventoryConfiguration' test.out

#- 12 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'eeEoWcYH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminGetInventoryConfiguration' test.out

#- 13 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'N7nKpYb8' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "sZPIXyMk", "description": "q0aqFtHW", "initialMaxSlots": 55, "maxInstancesPerUser": 91, "maxUpgradeSlots": 79, "name": "oLC3Yj8L"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminUpdateInventoryConfiguration' test.out

#- 14 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'XrxG1JH0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteInventoryConfiguration' test.out

#- 15 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '11' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 15 'AdminListItemTypes' test.out

#- 16 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "OxbVlQki"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateItemType' test.out

#- 17 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'RrbrKihA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDeleteItemType' test.out

#- 18 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '34' \
    --owner '2c8fD3ua' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 18 'AdminListTags' test.out

#- 19 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "PXmIGjBK", "owner": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminCreateTag' test.out

#- 20 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'PPfWgMfr' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteTag' test.out

#- 21 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'bqtlaF35' \
    --namespace $AB_NAMESPACE \
    --userId 'FVu8mux0' \
    --body '{"qty": 67, "slotId": "CY5IGOnb", "sourceItemId": "VKb38pTO"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminConsumeUserItem' test.out

#- 22 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'XeO7Rsr6' \
    --namespace $AB_NAMESPACE \
    --userId 'h2dyc66s' \
    --body '[{"customAttributes": {"PnAJ3G2o": {}, "QAHlfTJw": {}, "hpGwAUZl": {}}, "serverCustomAttributes": {"YQon3sfb": {}, "QNDfs7BA": {}, "JOU97ySg": {}}, "slotId": "UNqLXgKW", "sourceItemId": "sP3mjTMn", "tags": ["r19qiaYG", "VtBJxNBA", "WYtjFHux"], "type": "eJS1Jz8h"}, {"customAttributes": {"oWlrIL38": {}, "Rw92xwm9": {}, "YDM6uC4u": {}}, "serverCustomAttributes": {"6Jt8YtmF": {}, "01yvOmGc": {}, "mwDFO9Ao": {}}, "slotId": "0OY0cqTN", "sourceItemId": "2Ynccz6S", "tags": ["WqW4pZV9", "P4kfMjyL", "2TDH3Mf1"], "type": "YD5i9pzY"}, {"customAttributes": {"opviiTrh": {}, "QfJn5fkd": {}, "mhz98VbY": {}}, "serverCustomAttributes": {"XZBmw92h": {}, "DWCv9hbu": {}, "UnSBFVm2": {}}, "slotId": "LgqOgkr8", "sourceItemId": "iJSqr7XP", "tags": ["WhB2J3U0", "DYzingVu", "UGzIV7SI"], "type": "CKPqFo8l"}]' \
    > test.out 2>&1
eval_tap $? 22 'AdminBulkUpdateMyItems' test.out

#- 23 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'v05s7Eht' \
    --namespace $AB_NAMESPACE \
    --userId 'z7PYR3Jp' \
    --body '{"customAttributes": {"aN0jqchb": {}, "B0sBZRXH": {}, "Ykf9s5o3": {}}, "qty": 17, "serverCustomAttributes": {"39SvyCGD": {}, "ovRSkxLd": {}, "HCPzUrwh": {}}, "slotId": "7BXd3Irs", "slotUsed": 66, "sourceItemId": "UuYPILi8", "tags": ["fA3Tuoca", "OawT9AGZ", "esa5mOkd"], "type": "WoDncxm8"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminSaveItemToInventory' test.out

#- 24 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'oBoycox5' \
    --namespace $AB_NAMESPACE \
    --userId 'cN5t1LXp' \
    --body '[{"slotId": "5AZgGaUN", "sourceItemId": "hjgxiku4"}, {"slotId": "8Qj7eCvM", "sourceItemId": "6aK1meGQ"}, {"slotId": "ZhIlsZqR", "sourceItemId": "3vJ4i7du"}]' \
    > test.out 2>&1
eval_tap $? 24 'AdminBulkRemoveItems' test.out

#- 25 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'H5ZKRSvB' \
    --body '{"customAttributes": {"XsCMx0fJ": {}, "rEvpFKLr": {}, "M8DHoFik": {}}, "inventoryConfigurationCode": "YnBIwtLw", "qty": 76, "serverCustomAttributes": {"V0udfEpc": {}, "Z6YuCRhK": {}, "psdCKKZS": {}}, "slotId": "kW5LksHT", "slotUsed": 9, "sourceItemId": "fxlnqv6O", "tags": ["gXlx25rr", "Bl5AKOuN", "coPtEWAk"], "type": "eX1Ii4YM"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminSaveItem' test.out

#- 26 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'OFut43R1' \
    --limit '11' \
    --offset '20' \
    --sortBy 'updatedAt:asc' \
    > test.out 2>&1
eval_tap $? 26 'PublicListInventoryConfigurations' test.out

#- 27 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '0' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 27 'PublicListItemTypes' test.out

#- 28 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '24' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 28 'PublicListTags' test.out

#- 29 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode '2rVHdnAo' \
    --limit '81' \
    --offset '90' \
    --sortBy 'updatedAt' \
    > test.out 2>&1
eval_tap $? 29 'PublicListInventories' test.out

#- 30 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'xACeZOay' \
    --namespace $AB_NAMESPACE \
    --body '{"qty": 67, "slotId": "FIhwEqo9", "sourceItemId": "tEhpQIud"}' \
    > test.out 2>&1
eval_tap $? 30 'PublicConsumeMyItem' test.out

#- 31 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'yzjoyrJ4' \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '52' \
    --qtyGte '80' \
    --sortBy 'createdAt' \
    --sourceItemId 'wBOuijTP' \
    --tags '8BYUYOEO' \
    > test.out 2>&1
eval_tap $? 31 'PublicListItems' test.out

#- 32 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'cGhAJk9T' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"ZhXDQHT4": {}, "Z9Gw0ouQ": {}, "ZfBpeh2P": {}}, "slotId": "xikunjR3", "sourceItemId": "9DNEsf80", "tags": ["BXW1wirZ", "MD70DaoF", "MjLYiilN"]}, {"customAttributes": {"9mKknTDl": {}, "M2yGn2vM": {}, "E6wvpU8k": {}}, "slotId": "LDzV99nA", "sourceItemId": "EshULC0V", "tags": ["HCoq3VYj", "IulaqzA5", "bETpha68"]}, {"customAttributes": {"KRCDOOyb": {}, "fbGsVtae": {}, "TbAXXKgm": {}}, "slotId": "SJvuGxqk", "sourceItemId": "vQ6i1Pce", "tags": ["HI29IMxt", "lTd9DKFj", "UsKJ0GZO"]}]' \
    > test.out 2>&1
eval_tap $? 32 'PublicBulkUpdateMyItems' test.out

#- 33 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'fi71wLwt' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "h2mtiKZR", "sourceItemId": "L78eQ7pR"}, {"slotId": "y3Gc3ORR", "sourceItemId": "bZLCRDAO"}, {"slotId": "E7hZl5rw", "sourceItemId": "xosfcqkc"}]' \
    > test.out 2>&1
eval_tap $? 33 'PublicBulkRemoveMyItems' test.out

#- 34 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId '6NJhgKjj' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 93, "slotId": "mOyGCkRn", "sourceItemId": "gjqUMHJM"}, {"qty": 46, "slotId": "eAgwKv7G", "sourceItemId": "HaiZ7aEI"}, {"qty": 85, "slotId": "ZzKmMIv6", "sourceItemId": "v7E84Gmd"}], "srcInventoryId": "RDN5nlR8"}' \
    > test.out 2>&1
eval_tap $? 34 'PublicMoveMyItems' test.out

#- 35 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'U5fFxGyY' \
    --namespace $AB_NAMESPACE \
    --slotId '6QqqEOrM' \
    --sourceItemId 'lEBKCa8X' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE