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
    --body '{"message": "lRWUBsAs", "operations": [{"consumeItems": [{"inventoryId": "Beub4ddu", "qty": 99, "slotId": "Yh4VD48e", "sourceItemId": "wx6zpx6i"}, {"inventoryId": "s138BPJf", "qty": 52, "slotId": "wjobr28s", "sourceItemId": "D02UAlwT"}, {"inventoryId": "WDMkymmQ", "qty": 23, "slotId": "r1AYWbZl", "sourceItemId": "FnR1hbCu"}], "createItems": [{"customAttributes": {"SukyjV5j": {}, "EhS3RbCK": {}, "yECqw9hV": {}}, "inventoryConfigurationCode": "Y6j2UA1p", "inventoryId": "Ml6aTO4m", "qty": 96, "serverCustomAttributes": {"8l1KPDWa": {}, "vyl1fY2W": {}, "l32euvPC": {}}, "slotId": "jvAfnbcP", "slotUsed": 86, "sourceItemId": "hegAJ7ks", "tags": ["5CPwkLzB", "N6USFBPZ", "QBuPwfmR"], "toSpecificInventory": false, "type": "YBgfzdTJ"}, {"customAttributes": {"XjRgNCNs": {}, "EoC5JalY": {}, "EHdULc3H": {}}, "inventoryConfigurationCode": "VJ6YSooL", "inventoryId": "APUG24qF", "qty": 81, "serverCustomAttributes": {"Co3Zmxoc": {}, "SR4wX4JF": {}, "6N9jVo5O": {}}, "slotId": "Os0yCKu2", "slotUsed": 75, "sourceItemId": "gzE10wnL", "tags": ["Vqaho5Fa", "lIl5nzKc", "X3mBkT0Q"], "toSpecificInventory": true, "type": "vgrNozxf"}, {"customAttributes": {"LZOtMCtg": {}, "Xn3fkels": {}, "PfjA8WBt": {}}, "inventoryConfigurationCode": "rmUQL7LP", "inventoryId": "R8W8EzVI", "qty": 20, "serverCustomAttributes": {"Xzkg8NPJ": {}, "VLhuETST": {}, "M9EnEZS7": {}}, "slotId": "VFZ1wMoI", "slotUsed": 73, "sourceItemId": "BmA16t6H", "tags": ["7bxPEGGW", "bkLpiWqG", "diYtp7M0"], "toSpecificInventory": true, "type": "ToMuRn1C"}], "removeItems": [{"inventoryId": "12lbZlzs", "slotId": "3chkF6hz", "sourceItemId": "P1p4megs"}, {"inventoryId": "dcXkwWjG", "slotId": "ztdNzFrD", "sourceItemId": "Vzr9xHHR"}, {"inventoryId": "CY0um4C6", "slotId": "G6rWzeFQ", "sourceItemId": "gpN192to"}], "targetUserId": "rEgkdkgm", "updateItems": [{"customAttributes": {"zKyXp5VC": {}, "VRzjHuOF": {}, "YEXUNL3d": {}}, "inventoryId": "vS8Vr1ZS", "serverCustomAttributes": {"5395Gnka": {}, "cqOo3EAS": {}, "vSJY1v0I": {}}, "slotId": "kB8XeI9i", "sourceItemId": "vKjyvK65", "tags": ["vCLcsMIy", "DRbixxwL", "BTcWtVYN"], "type": "IrWTWJyH"}, {"customAttributes": {"IAv1IeP1": {}, "CRk7mWOo": {}, "YHiKfUUj": {}}, "inventoryId": "Fime8DIg", "serverCustomAttributes": {"lR3AWpw4": {}, "JdQpi8IM": {}, "DTfJLrYV": {}}, "slotId": "MwGgp7Nb", "sourceItemId": "HZuzCbK9", "tags": ["af2ADABK", "2omtBvdZ", "eXvVEAuo"], "type": "2fqaW7Qm"}, {"customAttributes": {"nAm8suNj": {}, "OAn3VDus": {}, "bFrm54bQ": {}}, "inventoryId": "hMfpsml3", "serverCustomAttributes": {"CSMGiccX": {}, "bMH3lmF8": {}, "duEeu6Al": {}}, "slotId": "NWsfEHk8", "sourceItemId": "LyBgYs8c", "tags": ["IBUcwRXv", "MgLzcqsh", "4VBnPmzS"], "type": "RW6JyAkk"}]}, {"consumeItems": [{"inventoryId": "IEEZgyOy", "qty": 15, "slotId": "WLjyARgi", "sourceItemId": "r9nkn5Jd"}, {"inventoryId": "Eks2v66D", "qty": 70, "slotId": "g66kk3E6", "sourceItemId": "xdoDx98a"}, {"inventoryId": "tFCjTwZu", "qty": 1, "slotId": "Q0CC9S7H", "sourceItemId": "ZEE8CLKu"}], "createItems": [{"customAttributes": {"zYgarwKB": {}, "NoMnYywu": {}, "xAOtCUnU": {}}, "inventoryConfigurationCode": "mJnpP7oj", "inventoryId": "ghvDNe2E", "qty": 73, "serverCustomAttributes": {"b9EkVL9h": {}, "L0PSJRSV": {}, "Di0CZIi0": {}}, "slotId": "CnSy81SL", "slotUsed": 98, "sourceItemId": "M0RSPYaH", "tags": ["tlRaprEF", "3u4jfqBZ", "zyriB3Lj"], "toSpecificInventory": true, "type": "KJyUv3Dj"}, {"customAttributes": {"ajjsffs9": {}, "froVPGF6": {}, "AtNjZQCL": {}}, "inventoryConfigurationCode": "sZMYf1La", "inventoryId": "GrD8TAQ9", "qty": 94, "serverCustomAttributes": {"K75xDn6I": {}, "yduAgenD": {}, "lz7Pic78": {}}, "slotId": "nFc8XUrn", "slotUsed": 57, "sourceItemId": "9o1QjuoF", "tags": ["kRUJUCXj", "vFhWHJQc", "JPtxM8oq"], "toSpecificInventory": false, "type": "JeVbxmu6"}, {"customAttributes": {"xXDfVkxX": {}, "rNUylQAU": {}, "lmSz4g5T": {}}, "inventoryConfigurationCode": "2Y5K0xNf", "inventoryId": "s2wzUqoj", "qty": 60, "serverCustomAttributes": {"XyJREet9": {}, "wrZy0iGc": {}, "uPCOG3nb": {}}, "slotId": "ytMQyr6S", "slotUsed": 69, "sourceItemId": "zd5ujE1L", "tags": ["ONXcpmzD", "UPkopKJx", "ctFiKAyH"], "toSpecificInventory": true, "type": "ZhhkrwbG"}], "removeItems": [{"inventoryId": "L9mJAy5O", "slotId": "axdirVOz", "sourceItemId": "HnZurBaQ"}, {"inventoryId": "cb4Qm1AS", "slotId": "FPTxmnLq", "sourceItemId": "JeZ3j2SP"}, {"inventoryId": "nffrjzKN", "slotId": "TEFcB7ax", "sourceItemId": "25HIfLUQ"}], "targetUserId": "18H2xUEk", "updateItems": [{"customAttributes": {"OpaQUzKE": {}, "OBXAuUND": {}, "qUV6eVKp": {}}, "inventoryId": "ljy86Q9V", "serverCustomAttributes": {"Fn3nSGjU": {}, "fJ7AQim4": {}, "rNvybLRp": {}}, "slotId": "asYkMhX3", "sourceItemId": "v6xsdSiV", "tags": ["8hRFW3Fu", "Qo0fgPon", "GCjMmQ5g"], "type": "xUJ7jVki"}, {"customAttributes": {"Bppb6DfV": {}, "7HjOEc31": {}, "GpDvhhfO": {}}, "inventoryId": "4OahvpAj", "serverCustomAttributes": {"45i5b2dl": {}, "KPDzsEHh": {}, "dtnhVK5O": {}}, "slotId": "Bmx7NpfH", "sourceItemId": "10VgZHKc", "tags": ["sPMXB3la", "B4uq5cM6", "EqUD553G"], "type": "759Y7Mdv"}, {"customAttributes": {"k7nzuYTt": {}, "msLHNEZr": {}, "kNjVKwgf": {}}, "inventoryId": "9h4anQ5T", "serverCustomAttributes": {"suartkev": {}, "fMyKZ93K": {}, "w1l4qoRe": {}}, "slotId": "F8dtYBgC", "sourceItemId": "FdJ3GYlY", "tags": ["A5HvXIwD", "sfolawOj", "uGH1ui34"], "type": "2i4WOnE7"}]}, {"consumeItems": [{"inventoryId": "nAfyEBkw", "qty": 51, "slotId": "rIq24Kad", "sourceItemId": "Y5Tw1PcK"}, {"inventoryId": "KMBEzmXz", "qty": 73, "slotId": "FSL6jhTu", "sourceItemId": "At5xrJIY"}, {"inventoryId": "ly2hlVjC", "qty": 91, "slotId": "JUcH8KIf", "sourceItemId": "JDByunQw"}], "createItems": [{"customAttributes": {"izuc3L6w": {}, "ClPsue2P": {}, "ddRz2OMg": {}}, "inventoryConfigurationCode": "znjmRDqf", "inventoryId": "BqDiDTgV", "qty": 28, "serverCustomAttributes": {"LMAw7YmE": {}, "Sno56pcQ": {}, "M7cpPO7g": {}}, "slotId": "mWMzrSQB", "slotUsed": 0, "sourceItemId": "WBlwly9G", "tags": ["bUKbdvfg", "ohfR7Ocu", "FT65RmQg"], "toSpecificInventory": true, "type": "VHX0fYvb"}, {"customAttributes": {"SkGQh9H5": {}, "2Qc07WYM": {}, "E3ZFFa16": {}}, "inventoryConfigurationCode": "Gv3GcCwS", "inventoryId": "YzfBxblY", "qty": 26, "serverCustomAttributes": {"2tKmg6W8": {}, "o8tXhcd1": {}, "RGBCARDQ": {}}, "slotId": "x4NPvSah", "slotUsed": 77, "sourceItemId": "IP1h5uYj", "tags": ["XRPI0Gb9", "TJFfFIzS", "OugzdmHz"], "toSpecificInventory": false, "type": "Txkl903b"}, {"customAttributes": {"I4jE4Kqr": {}, "aiU53Ais": {}, "AeUHYpeq": {}}, "inventoryConfigurationCode": "lIQePECN", "inventoryId": "kQQYBAIF", "qty": 60, "serverCustomAttributes": {"ibcW7CAM": {}, "t17YQYez": {}, "3RH6jUbn": {}}, "slotId": "1DzPIdcJ", "slotUsed": 6, "sourceItemId": "ys3QUehW", "tags": ["tN2zWQtf", "8bgEXlMV", "sZ70tIw8"], "toSpecificInventory": false, "type": "ve29MMyt"}], "removeItems": [{"inventoryId": "VjBzuRdy", "slotId": "TAvRA18z", "sourceItemId": "JcGfxfNO"}, {"inventoryId": "YjMCfDtZ", "slotId": "c7ZEbIhO", "sourceItemId": "yqNOnrfX"}, {"inventoryId": "YZAKii7m", "slotId": "ksliMU7g", "sourceItemId": "ujMXWJRg"}], "targetUserId": "lUCJnKVa", "updateItems": [{"customAttributes": {"L6hA3UZA": {}, "K15NhidU": {}, "LB6navp8": {}}, "inventoryId": "DivXJSFM", "serverCustomAttributes": {"mh3pYPnr": {}, "YCfz39yj": {}, "DnsBfPjV": {}}, "slotId": "Ojy988ed", "sourceItemId": "wwyaYCjv", "tags": ["Rb8MOPgS", "drTDe2hS", "m57kBCDP"], "type": "28CcyWfv"}, {"customAttributes": {"Bdy6Pb8t": {}, "MIucU88w": {}, "LuGKGJby": {}}, "inventoryId": "T0OF0eqK", "serverCustomAttributes": {"wFMGICLB": {}, "0LaS6dPu": {}, "PExZcku0": {}}, "slotId": "Hy5gan7u", "sourceItemId": "AVdszOBy", "tags": ["YHGmKXH8", "53FwWwbz", "9iSaCnTV"], "type": "E88UQZJL"}, {"customAttributes": {"wSDUY5j6": {}, "H7AjJXCW": {}, "dIWQ0x75": {}}, "inventoryId": "rCubX0GW", "serverCustomAttributes": {"dbPTYbmH": {}, "eSNJOwPi": {}, "xmHOlQSH": {}}, "slotId": "tAuH7NFn", "sourceItemId": "1rGB08uO", "tags": ["XiOAwgkI", "tzaP51Hq", "i3lqWKZo"], "type": "x6KSQB5u"}]}], "requestId": "IcUAIBzh"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'RLnqFxJ7' \
    --limit '73' \
    --offset '51' \
    --sortBy 'createdAt:desc' \
    --userId 'Y7PFo4a0' \
    > test.out 2>&1
eval_tap $? 3 'AdminListInventories' test.out

#- 4 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "YMAFPo68", "userId": "fUqYAHFS"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateInventory' test.out

#- 5 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'goSHs25J' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetInventory' test.out

#- 6 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'bruS55Ud' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 24}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateInventory' test.out

#- 7 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId '3QbnufCU' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "a6KnQe1Z"}' \
    > test.out 2>&1
eval_tap $? 7 'DeleteInventory' test.out

#- 8 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'AsIXQmR6' \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '75' \
    --qtyGte '42' \
    --sortBy 'updatedAt' \
    --sourceItemId 'Hcdx2TBf' \
    --tags '4StJKb6Z' \
    > test.out 2>&1
eval_tap $? 8 'AdminListItems' test.out

#- 9 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'toRdFqNA' \
    --namespace $AB_NAMESPACE \
    --slotId 'jA4sn3yd' \
    --sourceItemId '6G6WIvwC' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventoryItem' test.out

#- 10 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'LZfVJlNG' \
    --limit '90' \
    --offset '90' \
    --sortBy 'updatedAt' \
    > test.out 2>&1
eval_tap $? 10 'AdminListInventoryConfigurations' test.out

#- 11 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "TsOi3E95", "description": "vi1INQPj", "initialMaxSlots": 62, "maxInstancesPerUser": 25, "maxUpgradeSlots": 26, "name": "9dNISYpF"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminCreateInventoryConfiguration' test.out

#- 12 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'L5O0Gqw3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminGetInventoryConfiguration' test.out

#- 13 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'n4O6vf40' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "uLSy10VO", "description": "E6bIbxtX", "initialMaxSlots": 11, "maxInstancesPerUser": 21, "maxUpgradeSlots": 45, "name": "FoZwRT1K"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminUpdateInventoryConfiguration' test.out

#- 14 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'VytVdp4u' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteInventoryConfiguration' test.out

#- 15 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '70' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 15 'AdminListItemTypes' test.out

#- 16 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "7DCILv8z"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateItemType' test.out

#- 17 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'VrJuxFqh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDeleteItemType' test.out

#- 18 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '47' \
    --owner '5b2QSLUC' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 18 'AdminListTags' test.out

#- 19 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "yKSCtUD8", "owner": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminCreateTag' test.out

#- 20 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'b2g3ZUCY' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteTag' test.out

#- 21 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'GDAHBBlx' \
    --namespace $AB_NAMESPACE \
    --userId 'fqb62biF' \
    --body '{"qty": 62, "slotId": "FLYdY0gD", "sourceItemId": "IWyFcFsA"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminConsumeUserItem' test.out

#- 22 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'UEJgwMIE' \
    --namespace $AB_NAMESPACE \
    --userId '2BVDk6YP' \
    --body '[{"customAttributes": {"m7XQraKl": {}, "r2m36dgD": {}, "p8to3Iax": {}}, "serverCustomAttributes": {"HiNHYfTq": {}, "m0B8Qp87": {}, "ZyQvg1nS": {}}, "slotId": "SUZT5C5T", "sourceItemId": "rSqx2GyF", "tags": ["47ARZNbo", "UVn97H18", "GKvdzHZf"], "type": "nAOygvGC"}, {"customAttributes": {"oZDfE1JY": {}, "sHNlX4Pv": {}, "RGpj6Lrg": {}}, "serverCustomAttributes": {"phwmIEbM": {}, "Q4xnxujz": {}, "pJ8XIJmS": {}}, "slotId": "JZMsgtk6", "sourceItemId": "pnfxZAl9", "tags": ["M1mQlvNk", "uuRHhzss", "fDVWFoXR"], "type": "FI4c8SmT"}, {"customAttributes": {"96aBOWG7": {}, "iH0jGqBE": {}, "gTMNAXRr": {}}, "serverCustomAttributes": {"7vnmxuJ2": {}, "t9l3efXc": {}, "tshT0FUk": {}}, "slotId": "M2gsTr7d", "sourceItemId": "cPPKWrZ0", "tags": ["VIbMeC6M", "HYAoBvZl", "DYskoyMN"], "type": "uFRkX0hF"}]' \
    > test.out 2>&1
eval_tap $? 22 'AdminBulkUpdateMyItems' test.out

#- 23 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'ujWq0T3A' \
    --namespace $AB_NAMESPACE \
    --userId '6lUb2X3M' \
    --body '{"customAttributes": {"trSMRHmd": {}, "aY4MaZZR": {}, "j0t8orNT": {}}, "qty": 71, "serverCustomAttributes": {"1GaIxdW7": {}, "jOV983jB": {}, "c916bBb2": {}}, "slotId": "U82Vxlk2", "slotUsed": 37, "sourceItemId": "gZ4JLa6u", "tags": ["8EZTGmxr", "NeJwB86F", "ZcUVEzRi"], "type": "X5k1V2Sn"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminSaveItemToInventory' test.out

#- 24 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'OHYXJrLW' \
    --namespace $AB_NAMESPACE \
    --userId 'QT7RlKqa' \
    --body '[{"slotId": "XT6K7gIs", "sourceItemId": "j5RozB0i"}, {"slotId": "7gp9rK4f", "sourceItemId": "bLj059WH"}, {"slotId": "EHoRKI5l", "sourceItemId": "V2JMPgDf"}]' \
    > test.out 2>&1
eval_tap $? 24 'AdminBulkRemoveItems' test.out

#- 25 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'nv6ia9gt' \
    --body '{"customAttributes": {"NOGz60GN": {}, "PpUzI4OI": {}, "1DGvDMAN": {}}, "inventoryConfigurationCode": "PzEb5NV3", "qty": 83, "serverCustomAttributes": {"BksBRbPs": {}, "FXUS6Wml": {}, "fp8okxJ5": {}}, "slotId": "nssthBNm", "slotUsed": 69, "sourceItemId": "bH9ppAxp", "tags": ["qxGv2F0E", "lhankVQB", "2GxXM7FB"], "type": "w7A3XXB8"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminSaveItem' test.out

#- 26 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'Oqm8Btyz' \
    --limit '2' \
    --offset '36' \
    --sortBy 'code:asc' \
    > test.out 2>&1
eval_tap $? 26 'PublicListInventoryConfigurations' test.out

#- 27 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '41' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 27 'PublicListItemTypes' test.out

#- 28 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '35' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 28 'PublicListTags' test.out

#- 29 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'iMCCzfOD' \
    --limit '3' \
    --offset '8' \
    --sortBy 'updatedAt' \
    > test.out 2>&1
eval_tap $? 29 'PublicListInventories' test.out

#- 30 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'Y6NHn5tn' \
    --namespace $AB_NAMESPACE \
    --body '{"qty": 88, "slotId": "oQC8n4my", "sourceItemId": "RCXghzuy"}' \
    > test.out 2>&1
eval_tap $? 30 'PublicConsumeMyItem' test.out

#- 31 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'sRsHKTAZ' \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '71' \
    --qtyGte '57' \
    --sortBy 'qty' \
    --sourceItemId 'PSpvltqM' \
    --tags 'SoeZsGIH' \
    > test.out 2>&1
eval_tap $? 31 'PublicListItems' test.out

#- 32 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'A7YXttim' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"LYDWpwV1": {}, "bnaUqPaH": {}, "asmUQbvW": {}}, "slotId": "PHPm7G8S", "sourceItemId": "MKS3kuhd", "tags": ["zmEePzJZ", "inABhi1l", "1ylUOhqd"]}, {"customAttributes": {"K4YXvZ63": {}, "vNmXEA2r": {}, "4s0X9vsM": {}}, "slotId": "YXTco2mH", "sourceItemId": "3kHEOrka", "tags": ["LXUQhDVq", "HkjFUhqf", "b2wdMjcW"]}, {"customAttributes": {"IznaaWfA": {}, "vlVc8jZZ": {}, "Fdn8Z4mf": {}}, "slotId": "y9MbXPLR", "sourceItemId": "cQ4bvbBN", "tags": ["AIr3ZWCh", "9jrUTtPx", "9JKPFGxI"]}]' \
    > test.out 2>&1
eval_tap $? 32 'PublicBulkUpdateMyItems' test.out

#- 33 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId '2JFmyd2B' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "ufRX4joN", "sourceItemId": "TvnPYhda"}, {"slotId": "tKfjePIs", "sourceItemId": "ll7xjzF6"}, {"slotId": "PpAGdlK2", "sourceItemId": "vVxcyEU6"}]' \
    > test.out 2>&1
eval_tap $? 33 'PublicBulkRemoveMyItems' test.out

#- 34 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'ItnZ1Bqg' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 30, "slotId": "HvjntTpZ", "sourceItemId": "FljXxkPW"}, {"qty": 35, "slotId": "RVMHmSX8", "sourceItemId": "KFwfQHu6"}, {"qty": 47, "slotId": "2DZWWbaf", "sourceItemId": "GVRMat3H"}], "srcInventoryId": "4KtBsZ23"}' \
    > test.out 2>&1
eval_tap $? 34 'PublicMoveMyItems' test.out

#- 35 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'UGWSSXJZ' \
    --namespace $AB_NAMESPACE \
    --slotId 'nVH49zBp' \
    --sourceItemId 'COxmGBbd' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE