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
    --body '{"message": "oNwd6EQJ", "operations": [{"consumeItems": [{"dateRangeValidation": true, "inventoryId": "C35CtDc6", "options": ["f8eyWCDd", "NYNSGw8u", "y9VoG6X9"], "qty": 65, "slotId": "l4rhU0ZP", "sourceItemId": "QF7m0cx4"}, {"dateRangeValidation": false, "inventoryId": "6jUO9Ce9", "options": ["QZjBGQV3", "1PWfviY4", "LuSsnyvX"], "qty": 49, "slotId": "LG59Lfxh", "sourceItemId": "8KFQHFaT"}, {"dateRangeValidation": true, "inventoryId": "kCcLD8yb", "options": ["GM8XxLwk", "oMpeUrtR", "V0HJ5Pzb"], "qty": 96, "slotId": "yEDsPnMs", "sourceItemId": "zNzFqwou"}], "createItems": [{"customAttributes": {"9jV7Qld1": {}, "mcDnBC5C": {}, "mspm4Qfs": {}}, "inventoryConfigurationCode": "MCO32KyG", "inventoryId": "EZsyPFe0", "qty": 54, "serverCustomAttributes": {"uGJ5K0g1": {}, "WVA4sDfl": {}, "y2No9Ylt": {}}, "slotId": "IUSw75HT", "slotUsed": 48, "source": "OTHER", "sourceItemId": "nbhFrudA", "tags": ["7sY0WBF4", "U1Fqlof4", "Hlh2YZPv"], "toSpecificInventory": true, "type": "huqNcS9j"}, {"customAttributes": {"QPcdE5CO": {}, "dH5o7YYG": {}, "Oi2ikvrj": {}}, "inventoryConfigurationCode": "FliABEZp", "inventoryId": "MIn2hmrE", "qty": 64, "serverCustomAttributes": {"mOUTm3EU": {}, "x6zDxso7": {}, "GksoNsYT": {}}, "slotId": "o8Gx5NzY", "slotUsed": 10, "source": "OTHER", "sourceItemId": "COxeNYpx", "tags": ["nwnPzUqW", "amJtebtW", "nhsWYJ8x"], "toSpecificInventory": true, "type": "TioNFeYP"}, {"customAttributes": {"Xqu5P7Nx": {}, "8qltWZ4E": {}, "0OavjvtG": {}}, "inventoryConfigurationCode": "El3G3f6P", "inventoryId": "C6f5MYVK", "qty": 22, "serverCustomAttributes": {"RAro7AP9": {}, "1mRdaiUP": {}, "yd0f9lsF": {}}, "slotId": "aOeTbVdU", "slotUsed": 23, "source": "ECOMMERCE", "sourceItemId": "783SaYr6", "tags": ["pf19kGwP", "5EkXSa9i", "asQsjAug"], "toSpecificInventory": true, "type": "CwwRsH1v"}], "removeItems": [{"inventoryId": "bB9S5HZW", "slotId": "v7dfsofs", "sourceItemId": "edRSSc31"}, {"inventoryId": "39Sl48GZ", "slotId": "r6IfYZSj", "sourceItemId": "ExuN5qO8"}, {"inventoryId": "XfQHsM1D", "slotId": "Q9A2BL0I", "sourceItemId": "lklaWmsa"}], "targetUserId": "66Tg2ZvL", "updateItems": [{"customAttributes": {"2GonafQs": {}, "SonjhWin": {}, "7lOI7OMn": {}}, "inventoryId": "GbPiEQWx", "serverCustomAttributes": {"3oBfcgro": {}, "coOuSX4h": {}, "SlUKq1vl": {}}, "slotId": "fkaT4l2Z", "sourceItemId": "tJRISCYY", "tags": ["oBZ8Nzf9", "brX4NGSD", "tNrONbHT"], "type": "RccmcLX9"}, {"customAttributes": {"hEls54lT": {}, "3WBMMxXq": {}, "ArsWbATG": {}}, "inventoryId": "tpRFAOOs", "serverCustomAttributes": {"GtfMs8ms": {}, "DXMFO3hM": {}, "sTCxKsgC": {}}, "slotId": "S6aoCYAA", "sourceItemId": "FhPQdeog", "tags": ["IHWmPeON", "NwDACBkw", "9XEU03uf"], "type": "JmlUya6d"}, {"customAttributes": {"2456K3yM": {}, "4Ex8ZFST": {}, "D1hn1zeJ": {}}, "inventoryId": "9gxXMBCq", "serverCustomAttributes": {"UMClEosl": {}, "G1mqihYB": {}, "2yygImH2": {}}, "slotId": "vVT4I6Xv", "sourceItemId": "mX5ionJ6", "tags": ["6BasqLsJ", "ivg4mFxN", "aJXb0TJW"], "type": "Y8q3j8fQ"}]}, {"consumeItems": [{"dateRangeValidation": false, "inventoryId": "LSEKkS5K", "options": ["UZH8qrfy", "4FFVmwIT", "oLEurjID"], "qty": 58, "slotId": "2gBO1GFt", "sourceItemId": "1DblcXeU"}, {"dateRangeValidation": false, "inventoryId": "SiDDJ81b", "options": ["NHOA15AS", "yFFmOxZT", "wpBH6Sq5"], "qty": 30, "slotId": "4CYrC4g9", "sourceItemId": "dj1lO0pO"}, {"dateRangeValidation": true, "inventoryId": "kJByqUGs", "options": ["PXPXwWwS", "fI3Non3o", "x993uwH5"], "qty": 44, "slotId": "Grx2RrPo", "sourceItemId": "YxSgMWYX"}], "createItems": [{"customAttributes": {"ONmpAsUN": {}, "imY7e1DP": {}, "WxFEfLbk": {}}, "inventoryConfigurationCode": "cykFmpkK", "inventoryId": "stgqOm7W", "qty": 90, "serverCustomAttributes": {"IEOiprnV": {}, "eaLHc13k": {}, "2PlFNdJW": {}}, "slotId": "zaRXNhlx", "slotUsed": 99, "source": "OTHER", "sourceItemId": "eCrTGZlH", "tags": ["hmydIBvH", "byEfPjSj", "gpjmNJfU"], "toSpecificInventory": true, "type": "iYKEwK9y"}, {"customAttributes": {"d5LlpGtQ": {}, "5O3R2pwW": {}, "6WHzXzOl": {}}, "inventoryConfigurationCode": "R0HRNab1", "inventoryId": "Sbb0gWiT", "qty": 99, "serverCustomAttributes": {"slLgWoD9": {}, "NBRA0RgQ": {}, "DMYgtBAG": {}}, "slotId": "OhSqJKQ9", "slotUsed": 1, "source": "OTHER", "sourceItemId": "fZ9seXg2", "tags": ["gxdlcqUY", "4Hp0sISi", "fptfwsDH"], "toSpecificInventory": false, "type": "QKB72T6a"}, {"customAttributes": {"v7skKpIx": {}, "n2xaGdU0": {}, "nxoEqilP": {}}, "inventoryConfigurationCode": "sPV9HLdG", "inventoryId": "uNWIPOQK", "qty": 80, "serverCustomAttributes": {"hQVI1jwJ": {}, "C8o65fxc": {}, "3Hltk6j7": {}}, "slotId": "9G8Ghbd0", "slotUsed": 50, "source": "OTHER", "sourceItemId": "hlkTZahp", "tags": ["huETwe5y", "Ggb337Mm", "V0pwQ5Oh"], "toSpecificInventory": false, "type": "5VEBM3b0"}], "removeItems": [{"inventoryId": "lQbB5BTJ", "slotId": "TdOOW7VN", "sourceItemId": "ILf180eM"}, {"inventoryId": "yRAovNml", "slotId": "ofnesed6", "sourceItemId": "DtGikpY2"}, {"inventoryId": "fGFyCP6m", "slotId": "D7uQtd6X", "sourceItemId": "C2aMjjR0"}], "targetUserId": "DjZNRVQ3", "updateItems": [{"customAttributes": {"oGBzemkV": {}, "r4AW0yAH": {}, "wdpnXhZx": {}}, "inventoryId": "akIhvGSc", "serverCustomAttributes": {"VtAdAAgZ": {}, "3BTye5TF": {}, "Ym7uI6Am": {}}, "slotId": "uVtd7TWo", "sourceItemId": "yVRtiAPi", "tags": ["uJXJu9ft", "MmSJVad6", "UhR4kGs7"], "type": "CI38AyR4"}, {"customAttributes": {"Eai5R4jo": {}, "Ka8C32lR": {}, "ti34tSiR": {}}, "inventoryId": "EsxMNvuD", "serverCustomAttributes": {"N72Nymk9": {}, "Unvlb73G": {}, "sYPS3krD": {}}, "slotId": "XEawHUuy", "sourceItemId": "rKqP50hZ", "tags": ["NkRwHUfQ", "dx8Vdu7l", "7ltHfmYJ"], "type": "D8beyz4Z"}, {"customAttributes": {"JVyVXSdT": {}, "twGyWYuG": {}, "KnBtiDbo": {}}, "inventoryId": "7Pa320Wl", "serverCustomAttributes": {"NiVHiPUY": {}, "TUHd5geg": {}, "P72qWS4s": {}}, "slotId": "pGpQfJdS", "sourceItemId": "fzJNH02J", "tags": ["gT9J9nxA", "8vmlqgCf", "FAFHvSho"], "type": "MEodLRWh"}]}, {"consumeItems": [{"dateRangeValidation": true, "inventoryId": "8KeLA7IO", "options": ["Bo6qIfkX", "Z4Sc2xFT", "79hQbcKM"], "qty": 78, "slotId": "u6U9la2O", "sourceItemId": "cRk7bMaZ"}, {"dateRangeValidation": true, "inventoryId": "ZmNjZm4d", "options": ["otMI4llK", "KlhRoV1n", "m6HfGcPP"], "qty": 88, "slotId": "zJcOwZl3", "sourceItemId": "3ITcvhL1"}, {"dateRangeValidation": true, "inventoryId": "MwlC5DGH", "options": ["T9Yrrn3D", "CiaHQRYW", "yUITDNv9"], "qty": 26, "slotId": "YgemMNCL", "sourceItemId": "gTuqksdV"}], "createItems": [{"customAttributes": {"oHTNw596": {}, "Pm2znCUr": {}, "lGA7dMph": {}}, "inventoryConfigurationCode": "YnFye6KL", "inventoryId": "cKnk3iP8", "qty": 2, "serverCustomAttributes": {"lYq5FtoB": {}, "nhpoEFru": {}, "B2IK3snW": {}}, "slotId": "kTulxlfr", "slotUsed": 39, "source": "ECOMMERCE", "sourceItemId": "hBRLFc9T", "tags": ["yhYY2QNu", "ncmZUVO1", "tA8vUlqj"], "toSpecificInventory": false, "type": "ielTULY8"}, {"customAttributes": {"O8dw9BQj": {}, "QZLZ7cPn": {}, "c1bM73Og": {}}, "inventoryConfigurationCode": "EkufD4T6", "inventoryId": "DW68cgoo", "qty": 90, "serverCustomAttributes": {"7jJd4w2w": {}, "A22jUQss": {}, "So8nPX4d": {}}, "slotId": "pzKWfvRp", "slotUsed": 70, "source": "ECOMMERCE", "sourceItemId": "ZFfOnBIn", "tags": ["iBKQiul5", "2C56tw9H", "I1YpWEyc"], "toSpecificInventory": false, "type": "vsClGKHk"}, {"customAttributes": {"lxBU6yKo": {}, "HvmC4hSu": {}, "4oUOjPXQ": {}}, "inventoryConfigurationCode": "SHD9DCPQ", "inventoryId": "BVe4GRMq", "qty": 79, "serverCustomAttributes": {"OVv1Fcwq": {}, "Pwbau94z": {}, "pkxuoqkX": {}}, "slotId": "8wbTZnYN", "slotUsed": 90, "source": "ECOMMERCE", "sourceItemId": "K3wT15Nq", "tags": ["x2Krs5dR", "q6NOHaao", "XbIC2NXL"], "toSpecificInventory": true, "type": "B1xiJLL5"}], "removeItems": [{"inventoryId": "vfWJhgcn", "slotId": "ypyv1hbR", "sourceItemId": "QPDUEECf"}, {"inventoryId": "6LhUkqF6", "slotId": "6gGl4X3v", "sourceItemId": "d3e0vbo4"}, {"inventoryId": "r2Q8RIrf", "slotId": "dMwZlIQ2", "sourceItemId": "HcVdjM9j"}], "targetUserId": "6VYKStwY", "updateItems": [{"customAttributes": {"iKFiIhA2": {}, "LpTmPBBc": {}, "KsXSB0qC": {}}, "inventoryId": "LGT7xLme", "serverCustomAttributes": {"2ZMTBYZt": {}, "C4lmV2Gl": {}, "TXltlWUa": {}}, "slotId": "SoH3HxNT", "sourceItemId": "5oMuDHVp", "tags": ["oKcJ6RPA", "IqkC03LR", "pg1fjZw3"], "type": "oavgBVKh"}, {"customAttributes": {"zeZ4UB7D": {}, "9ltH0L2C": {}, "rPVezPXo": {}}, "inventoryId": "olicIg0E", "serverCustomAttributes": {"0i6e0VN3": {}, "wXpJXD3F": {}, "EhqZUJRm": {}}, "slotId": "nncJAdqc", "sourceItemId": "4Lf8HW1J", "tags": ["Gn7Wv4gq", "Bj87jcOh", "16FlFoZz"], "type": "QUo17xpA"}, {"customAttributes": {"0oIF4M7Y": {}, "K9Cm10QD": {}, "6zdTNaYy": {}}, "inventoryId": "1XYrL0Rt", "serverCustomAttributes": {"hzeeTvkt": {}, "C5zlKRf5": {}, "Bo1UCRvU": {}}, "slotId": "WJJ8lnTX", "sourceItemId": "VojHBYga", "tags": ["4eUBrS0O", "t1nCyfZH", "qQt13CZC"], "type": "ESXufhvq"}]}], "requestId": "tyXHpw9L"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListIntegrationConfigurations
samples/cli/sample-apps Inventory adminListIntegrationConfigurations \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '58' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 3 'AdminListIntegrationConfigurations' test.out

#- 4 AdminCreateIntegrationConfiguration
samples/cli/sample-apps Inventory adminCreateIntegrationConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["oJc8EPf6", "ffjSFIq9", "WLnpLmr5"], "serviceName": "924aRgDg", "targetInventoryCode": "xFCQhqZM"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateIntegrationConfiguration' test.out

#- 5 AdminUpdateIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateIntegrationConfiguration \
    --integrationConfigurationId '2DtDSmUJ' \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["cO1f6b5L", "oZouqzpv", "YsJVT4je"], "serviceName": "odbpxr2D", "targetInventoryCode": "6gEKudAP"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateIntegrationConfiguration' test.out

#- 6 AdminUpdateStatusIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateStatusIntegrationConfiguration \
    --integrationConfigurationId 'xs7iV0AJ' \
    --namespace $AB_NAMESPACE \
    --body '{"status": "TIED"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateStatusIntegrationConfiguration' test.out

#- 7 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 's2gOv2uu' \
    --limit '38' \
    --offset '51' \
    --sortBy 'createdAt:asc' \
    --userId 'RHsxrJVG' \
    > test.out 2>&1
eval_tap $? 7 'AdminListInventories' test.out

#- 8 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "tz0hgxkt", "userId": "7NKg6OCg"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateInventory' test.out

#- 9 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'qk9HSzYk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventory' test.out

#- 10 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId '6qarfmVk' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 1}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateInventory' test.out

#- 11 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'MPmuAQI5' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "Lvy8boAf"}' \
    > test.out 2>&1
eval_tap $? 11 'DeleteInventory' test.out

#- 12 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'GLr5dxlc' \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '22' \
    --sortBy 'createdAt' \
    --sourceItemId '5Htsyzd3' \
    --tags '4kYdLOyK' \
    > test.out 2>&1
eval_tap $? 12 'AdminListItems' test.out

#- 13 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'kOpIPf5Z' \
    --namespace $AB_NAMESPACE \
    --slotId 'ffL34rMG' \
    --sourceItemId 'GRpzwtqx' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetInventoryItem' test.out

#- 14 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'l0zxfngg' \
    --limit '85' \
    --offset '81' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListInventoryConfigurations' test.out

#- 15 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "DfbxxJDw", "description": "bD98R4Mq", "initialMaxSlots": 50, "maxInstancesPerUser": 38, "maxUpgradeSlots": 71, "name": "OyhVLQK8"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateInventoryConfiguration' test.out

#- 16 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'DFTSThIq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetInventoryConfiguration' test.out

#- 17 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'm3CbALnJ' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "xAFfO3T8", "description": "7labLpsB", "initialMaxSlots": 6, "maxInstancesPerUser": 11, "maxUpgradeSlots": 46, "name": "rnbQeVWa"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateInventoryConfiguration' test.out

#- 18 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'Pu2QFruL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteInventoryConfiguration' test.out

#- 19 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '12' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 19 'AdminListItemTypes' test.out

#- 20 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "XHwR63Oc"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateItemType' test.out

#- 21 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'vWiVqyFs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminDeleteItemType' test.out

#- 22 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '33' \
    --owner 'Xy7VEs2O' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 22 'AdminListTags' test.out

#- 23 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "FQRMEgdX", "owner": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateTag' test.out

#- 24 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'OPHQenjf' \
    > test.out 2>&1
eval_tap $? 24 'AdminDeleteTag' test.out

#- 25 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'CaRItwQH' \
    --namespace $AB_NAMESPACE \
    --userId 'qmM3YcaF' \
    --dateRangeValidation 'tOwJDm2L' \
    --body '{"options": ["0ASSWZSX", "9LolNo9S", "iwyyx2Gi"], "qty": 16, "slotId": "wlEHfRQV", "sourceItemId": "UvRlkW6Q"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminConsumeUserItem' test.out

#- 26 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'BStfJQcM' \
    --namespace $AB_NAMESPACE \
    --userId 'K8BhKjau' \
    --body '[{"customAttributes": {"PiBZKwi1": {}, "JoC1lZ4Y": {}, "xMCr6x77": {}}, "serverCustomAttributes": {"b0WVNpRU": {}, "mqTJdvdd": {}, "hyUvCWTd": {}}, "slotId": "jIXM6DfK", "sourceItemId": "v0o4GQvm", "tags": ["NEapo0H0", "w5Q91lKJ", "FNjG3fWo"], "type": "I46dfZwn"}, {"customAttributes": {"NIu3eNep": {}, "f7fP1s3F": {}, "H030H6yg": {}}, "serverCustomAttributes": {"BSFR4rVX": {}, "6GCI5qWm": {}, "KPi5vTSZ": {}}, "slotId": "GR8Cg7Vg", "sourceItemId": "6C8eonG0", "tags": ["0eK3iVdR", "51CiiAut", "eUSrleEZ"], "type": "WahP3oIe"}, {"customAttributes": {"qiSHRjkw": {}, "hC7rPcOZ": {}, "VXX2PuLN": {}}, "serverCustomAttributes": {"1vkmX5ha": {}, "v5Y5f9vJ": {}, "a7pvjhVg": {}}, "slotId": "3v4Wa57Y", "sourceItemId": "EdYMTSEk", "tags": ["agyjj0tH", "buXgSH2W", "J3l807aA"], "type": "PVOESJOj"}]' \
    > test.out 2>&1
eval_tap $? 26 'AdminBulkUpdateMyItems' test.out

#- 27 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId '0kPnkyfQ' \
    --namespace $AB_NAMESPACE \
    --userId 'eIIOjcgw' \
    --body '{"customAttributes": {"OIYJ2pz4": {}, "vT80nqGv": {}, "DcNlANBJ": {}}, "qty": 76, "serverCustomAttributes": {"yLGsYiHF": {}, "vk6t0VPN": {}, "879oywbb": {}}, "slotId": "rGXRcB7t", "slotUsed": 14, "source": "OTHER", "sourceItemId": "DBKDb1kq", "tags": ["1GtmGmRE", "EyVNpYud", "ILPHZBoX"], "type": "TN6g8ZaE"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminSaveItemToInventory' test.out

#- 28 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'XfYR0Ist' \
    --namespace $AB_NAMESPACE \
    --userId 'xbMB0Y9z' \
    --body '[{"slotId": "goESYRFC", "sourceItemId": "PfSq7wsf"}, {"slotId": "EkvSgQPN", "sourceItemId": "YepGUSXK"}, {"slotId": "OIHSInl8", "sourceItemId": "u8HOVVg0"}]' \
    > test.out 2>&1
eval_tap $? 28 'AdminBulkRemoveItems' test.out

#- 29 AdminBulkSaveItemToInventory
samples/cli/sample-apps Inventory adminBulkSaveItemToInventory \
    --inventoryId 'uYyuUv47' \
    --namespace $AB_NAMESPACE \
    --userId 'vOT9EUo1' \
    --body '[{"customAttributes": {"pijVRmV4": {}, "04J9iGHb": {}, "lSYqvcUK": {}}, "qty": 12, "serverCustomAttributes": {"iIvkgY4B": {}, "lcQNC7Kx": {}, "0e4QaKd1": {}}, "slotId": "eNrOPQNk", "slotUsed": 46, "source": "ECOMMERCE", "sourceItemId": "Mn8kB7RM", "tags": ["xhyix51g", "4v2XzCeG", "nAFyUU4e"], "type": "XjJaMBAh"}, {"customAttributes": {"BFvLWvi4": {}, "fEhYe3ea": {}, "Wi8BcK0P": {}}, "qty": 78, "serverCustomAttributes": {"AhY44BTF": {}, "YGiMibtT": {}, "C18VQONw": {}}, "slotId": "Vj7N80xR", "slotUsed": 23, "source": "ECOMMERCE", "sourceItemId": "H5jX2luh", "tags": ["nM5PvxIm", "3n5GOz1T", "h2kAl7B0"], "type": "qtvTyxc4"}, {"customAttributes": {"JEiyy9oc": {}, "gCYWSjCq": {}, "476SggD0": {}}, "qty": 28, "serverCustomAttributes": {"mDzIzlEo": {}, "KzAIoiZV": {}, "MaHmXKh5": {}}, "slotId": "zlCJCGkW", "slotUsed": 64, "source": "ECOMMERCE", "sourceItemId": "Wc7H8wY9", "tags": ["jUSsegxT", "k5gzPvoP", "A5iOmE7v"], "type": "DZdV0elW"}]' \
    > test.out 2>&1
eval_tap $? 29 'AdminBulkSaveItemToInventory' test.out

#- 30 AdminUpdateUserInventoriesByInventoryCode
samples/cli/sample-apps Inventory adminUpdateUserInventoriesByInventoryCode \
    --inventoryConfigurationCode 'EPgm4aIS' \
    --namespace $AB_NAMESPACE \
    --userId 'jazT1059' \
    --body '{"incMaxSlots": 9}' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateUserInventoriesByInventoryCode' test.out

#- 31 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'KkaRpQgS' \
    --body '{"customAttributes": {"GTRShp4P": {}, "pIpe7JDJ": {}, "YMSSv3nS": {}}, "inventoryConfigurationCode": "wZiSXY3n", "qty": 88, "serverCustomAttributes": {"2Tm30Pdy": {}, "puhU1sT4": {}, "lNzxftCH": {}}, "slotId": "9JdsIA8u", "slotUsed": 80, "source": "OTHER", "sourceItemId": "48zPG2c8", "tags": ["b06EoALj", "B4UqLep0", "uhQKQ5jT"], "type": "SkXrBBw3"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminSaveItem' test.out

#- 32 AdminBulkSaveItem
samples/cli/sample-apps Inventory adminBulkSaveItem \
    --namespace $AB_NAMESPACE \
    --userId '0zPeE0lL' \
    --body '[{"customAttributes": {"WNSBnjJl": {}, "7g07Vqoh": {}, "Zyv8Vcw6": {}}, "inventoryConfigurationCode": "qZMfU982", "qty": 61, "serverCustomAttributes": {"LEhUrS5o": {}, "pD2bSX80": {}, "Dfg8F2A6": {}}, "slotId": "zhEFXJkk", "slotUsed": 28, "source": "ECOMMERCE", "sourceItemId": "bU3BO5vq", "tags": ["Y5kViwPc", "LNt61DQ8", "kHlypIVb"], "type": "MsLSqdHi"}, {"customAttributes": {"EOe7Zadq": {}, "gcUH6Ve6": {}, "Sm4LPkd8": {}}, "inventoryConfigurationCode": "msKfZZEM", "qty": 40, "serverCustomAttributes": {"ra58C0li": {}, "x0xX25sQ": {}, "DOHOt6xf": {}}, "slotId": "9XHUrNAh", "slotUsed": 19, "source": "ECOMMERCE", "sourceItemId": "xsKMK15M", "tags": ["B4C3iOTw", "Pe9Qsgh1", "AuQkB4lS"], "type": "cW1y12zR"}, {"customAttributes": {"i1D76TJq": {}, "9iyGJIj1": {}, "xjcDvwKr": {}}, "inventoryConfigurationCode": "tsjsxvmU", "qty": 42, "serverCustomAttributes": {"D853gvYE": {}, "ceP87vtO": {}, "p58Vg4Qo": {}}, "slotId": "lAAUZtV2", "slotUsed": 79, "source": "ECOMMERCE", "sourceItemId": "OdEm4j4a", "tags": ["q9l00Fn0", "fFVc5ncd", "BhKLA6GC"], "type": "W00kBqgV"}]' \
    > test.out 2>&1
eval_tap $? 32 'AdminBulkSaveItem' test.out

#- 33 AdminSyncUserEntitlements
samples/cli/sample-apps Inventory adminSyncUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'Lujr5uhP' \
    > test.out 2>&1
eval_tap $? 33 'AdminSyncUserEntitlements' test.out

#- 34 AdminPurchasable
samples/cli/sample-apps Inventory adminPurchasable \
    --namespace $AB_NAMESPACE \
    --userId '6nNAwqBt' \
    --body '{"entitlementType": "Hj66jKst", "inventoryConfig": {"slotUsed": 21}, "itemId": "absAeUu0", "itemType": "uI6UdT9n", "items": [{"bundledQty": 48, "entitlementType": "9Grfgaf6", "inventoryConfig": {"slotUsed": 55}, "itemId": "bael0bwp", "itemType": "RloGvWew", "sku": "5ChcRck6", "stackable": false, "useCount": 14}, {"bundledQty": 12, "entitlementType": "SwzULRbe", "inventoryConfig": {"slotUsed": 70}, "itemId": "gcoONdxv", "itemType": "vcRuwEJp", "sku": "GqMxMrTp", "stackable": true, "useCount": 21}, {"bundledQty": 36, "entitlementType": "OxjebAbz", "inventoryConfig": {"slotUsed": 9}, "itemId": "moZ8FajD", "itemType": "AZ2OcI4z", "sku": "aZzT7JIc", "stackable": true, "useCount": 96}], "quantity": 32, "sku": "UoWDi2Iw", "stackable": true, "useCount": 24}' \
    > test.out 2>&1
eval_tap $? 34 'AdminPurchasable' test.out

#- 35 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'GDFwgKAT' \
    --limit '73' \
    --offset '93' \
    --sortBy 'updatedAt' \
    > test.out 2>&1
eval_tap $? 35 'PublicListInventoryConfigurations' test.out

#- 36 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --offset '19' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 36 'PublicListItemTypes' test.out

#- 37 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '62' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 37 'PublicListTags' test.out

#- 38 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'MrlXMJvP' \
    --limit '23' \
    --offset '43' \
    --sortBy 'updatedAt:asc' \
    > test.out 2>&1
eval_tap $? 38 'PublicListInventories' test.out

#- 39 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'ZckteGz7' \
    --namespace $AB_NAMESPACE \
    --body '{"options": ["DVnfQ9ff", "OCFdxXUx", "C1FcUCpJ"], "qty": 0, "slotId": "AZULpDOp", "sourceItemId": "62hsKQx9"}' \
    > test.out 2>&1
eval_tap $? 39 'PublicConsumeMyItem' test.out

#- 40 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'BuvHiuI3' \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '71' \
    --sortBy 'createdAt' \
    --sourceItemId '7inqySFU' \
    --tags 'gUmf57tc' \
    > test.out 2>&1
eval_tap $? 40 'PublicListItems' test.out

#- 41 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'pfx88vSE' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"7zWDUVKf": {}, "tPeCJwlZ": {}, "37XgmFSd": {}}, "slotId": "zEsWv1F5", "sourceItemId": "fEdhlmiA", "tags": ["mxs9ZE7F", "oRNP0gaa", "Wq9TXjed"]}, {"customAttributes": {"e3Ss0y4j": {}, "B9XDRDv5": {}, "JYrqwkUG": {}}, "slotId": "cdHi5WSa", "sourceItemId": "qmslSsAG", "tags": ["D8we3Pn9", "zIMZ2ofj", "tCKLfyE3"]}, {"customAttributes": {"7q9LGCZN": {}, "7zYjzBEc": {}, "3i6s5MKU": {}}, "slotId": "moWidd5J", "sourceItemId": "qQwBA27m", "tags": ["F90pPe29", "dZD2Om7d", "S4byRcaR"]}]' \
    > test.out 2>&1
eval_tap $? 41 'PublicBulkUpdateMyItems' test.out

#- 42 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'V0FuI9WQ' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "QhdnHHkJ", "sourceItemId": "rhCAn1Kd"}, {"slotId": "M9xjGNgV", "sourceItemId": "FiHPctZI"}, {"slotId": "kQ55Ydn7", "sourceItemId": "9uN00l7L"}]' \
    > test.out 2>&1
eval_tap $? 42 'PublicBulkRemoveMyItems' test.out

#- 43 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'zLDmQluE' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 59, "slotId": "9z2ZoJ5v", "sourceItemId": "kxq9mAMT"}, {"qty": 89, "slotId": "vIhJRIP7", "sourceItemId": "345F04wC"}, {"qty": 3, "slotId": "lqtDRA4b", "sourceItemId": "Ob3NWnPU"}], "srcInventoryId": "6Zi3Cv7n"}' \
    > test.out 2>&1
eval_tap $? 43 'PublicMoveMyItems' test.out

#- 44 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'KkttIutN' \
    --namespace $AB_NAMESPACE \
    --slotId 'w5zsqv6i' \
    --sourceItemId 'TZ0uPd0K' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE