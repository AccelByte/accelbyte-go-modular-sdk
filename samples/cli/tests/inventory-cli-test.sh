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
    --body '{"message": "H3hJECYF", "operations": [{"consumeItems": [{"inventoryId": "cdDI1YNo", "qty": 75, "slotId": "sb7BvpiE", "sourceItemId": "pSJca5QW"}, {"inventoryId": "A2m2q4xc", "qty": 89, "slotId": "ElHPQM8Q", "sourceItemId": "QtlmaWdK"}, {"inventoryId": "dkFwj5S9", "qty": 48, "slotId": "0uBJlqYH", "sourceItemId": "EfEXVidq"}], "createItems": [{"customAttributes": {"sC43yC94": {}, "0OBcTE62": {}, "JUd2lWj2": {}}, "inventoryConfigurationCode": "sNDMzpzK", "inventoryId": "8XQUtRtQ", "qty": 57, "serverCustomAttributes": {"mtlTgqsl": {}, "8EaCzw25": {}, "wpnFSS5W": {}}, "slotId": "DZsgCgdZ", "slotUsed": 28, "sourceItemId": "rZp8OCyV", "tags": ["7iryXDLT", "twLU2xSr", "JxbRsEsX"], "toSpecificInventory": true, "type": "LCoQysN8"}, {"customAttributes": {"BzmJnHKS": {}, "jf5Yx2GD": {}, "M9jyWHIi": {}}, "inventoryConfigurationCode": "Hg9yrsEB", "inventoryId": "xy1B0uKe", "qty": 38, "serverCustomAttributes": {"eJvoMlY3": {}, "7E1JqESw": {}, "fUZNrNKZ": {}}, "slotId": "7HDsmKfN", "slotUsed": 14, "sourceItemId": "GVWClbWA", "tags": ["luUuSmHw", "FszWrQ9W", "adZNNHJZ"], "toSpecificInventory": true, "type": "UK0hqoyd"}, {"customAttributes": {"aXTdVx0K": {}, "03yzR0iz": {}, "A3wYZ3Pi": {}}, "inventoryConfigurationCode": "aY9Uao03", "inventoryId": "NGXHXjrj", "qty": 80, "serverCustomAttributes": {"qHYjTeHw": {}, "VFxPnQH0": {}, "QVM8BH38": {}}, "slotId": "J4QPTBlb", "slotUsed": 13, "sourceItemId": "XilEZf2v", "tags": ["rMUrCs42", "rpZk63vd", "1SDM51EK"], "toSpecificInventory": false, "type": "s5A99Q28"}], "removeItems": [{"inventoryId": "cCBSGoQP", "slotId": "1F2d9yA2", "sourceItemId": "5j9ZD7xm"}, {"inventoryId": "zq9Uqg7J", "slotId": "eMuu4F7w", "sourceItemId": "UMDMT7xe"}, {"inventoryId": "Tp03viKb", "slotId": "PuP1z3kW", "sourceItemId": "YnyG1vMr"}], "targetUserId": "0AVybUEH", "updateItems": [{"customAttributes": {"v3m517CA": {}, "vLKzEd3t": {}, "ZUJYSb9w": {}}, "inventoryId": "jjN7bi4U", "serverCustomAttributes": {"r5teeoEx": {}, "RxG6IkNc": {}, "QOcfsK5C": {}}, "slotId": "9vpyOfhP", "sourceItemId": "MNa8VJf6", "tags": ["sjxKGxJI", "DDSg2it1", "NLK3h2tW"], "type": "vW2Qjhdv"}, {"customAttributes": {"LcLVqJzK": {}, "7GZw3Qwl": {}, "Qefh1d67": {}}, "inventoryId": "jJzvEOqO", "serverCustomAttributes": {"nZJlt1HT": {}, "42ELnMFB": {}, "sUxbrToE": {}}, "slotId": "vnrfq66D", "sourceItemId": "Hvh8MUZc", "tags": ["0FJcmTY4", "3uS52YBi", "C7sEIaPu"], "type": "pOBtok4y"}, {"customAttributes": {"CUsPEisq": {}, "9N5c3rV4": {}, "H4Z3dVLr": {}}, "inventoryId": "q9j9Eydp", "serverCustomAttributes": {"K587turv": {}, "Zm5Bm0Yl": {}, "hgLCMvQL": {}}, "slotId": "3sdj6dAf", "sourceItemId": "xBItcCYn", "tags": ["fuLCScvZ", "74ObsVo5", "2vQbkjbS"], "type": "JlGTZ6Nn"}]}, {"consumeItems": [{"inventoryId": "Xdx9DQHY", "qty": 98, "slotId": "e2i4qnEl", "sourceItemId": "r7r0s3xl"}, {"inventoryId": "zBbc9obV", "qty": 41, "slotId": "BJe04FqA", "sourceItemId": "P2MCTELR"}, {"inventoryId": "6xgROVBX", "qty": 21, "slotId": "EOk5rh8R", "sourceItemId": "I5i5CdO8"}], "createItems": [{"customAttributes": {"BDI9UTZu": {}, "KHeGqb0Y": {}, "UnGN5PCW": {}}, "inventoryConfigurationCode": "VueJYQeE", "inventoryId": "BYDoAxJN", "qty": 1, "serverCustomAttributes": {"gIjgm3Ix": {}, "0pEcsviK": {}, "wMGaJpvS": {}}, "slotId": "QgAeYun1", "slotUsed": 35, "sourceItemId": "ra8qKYQz", "tags": ["XLYFipHC", "Q9kjMTGk", "Ade8pNAr"], "toSpecificInventory": true, "type": "hU3K5QPT"}, {"customAttributes": {"o1yXmTtv": {}, "HU3wtM9H": {}, "LmKJdE9G": {}}, "inventoryConfigurationCode": "WCJgLJ2X", "inventoryId": "J1UaqFFs", "qty": 18, "serverCustomAttributes": {"LZdSJbec": {}, "RyM7E4g3": {}, "Dg1PbvOc": {}}, "slotId": "VfsVug8P", "slotUsed": 97, "sourceItemId": "68T2Tezp", "tags": ["CiNcJrfF", "mu589wyh", "cEWLmIOi"], "toSpecificInventory": true, "type": "gmPiTqLU"}, {"customAttributes": {"UXYiNkAU": {}, "R3wVyj5u": {}, "0GY1KTbl": {}}, "inventoryConfigurationCode": "NDXseej7", "inventoryId": "xb25Osdt", "qty": 61, "serverCustomAttributes": {"IlqIf8Lp": {}, "detrB6sI": {}, "NdetUqZR": {}}, "slotId": "AkTTM4If", "slotUsed": 100, "sourceItemId": "ulBZPHlS", "tags": ["K880aqWk", "phqTIT4h", "WuTGiHe2"], "toSpecificInventory": true, "type": "Q9NCsQmm"}], "removeItems": [{"inventoryId": "Qaa2yAKl", "slotId": "yRKZwzYz", "sourceItemId": "40fPiQCJ"}, {"inventoryId": "i7TUsx9O", "slotId": "FhjKCe50", "sourceItemId": "FHNvanc7"}, {"inventoryId": "55VRnJJa", "slotId": "awBtYo7T", "sourceItemId": "PRyi01yO"}], "targetUserId": "U8aPsIAb", "updateItems": [{"customAttributes": {"NSEZeqsS": {}, "xsiXNTvA": {}, "Z6emmetF": {}}, "inventoryId": "VnkGm4Al", "serverCustomAttributes": {"YwdNZzkj": {}, "OGavz52I": {}, "VYWOiyzq": {}}, "slotId": "medO20QP", "sourceItemId": "zK3KS7Ul", "tags": ["3uE0k3iR", "17JUUlNV", "TBiQILMT"], "type": "ZhqsnmQx"}, {"customAttributes": {"4AKR8bj6": {}, "SRSMQETi": {}, "0ixJTHek": {}}, "inventoryId": "Cg2ZKyS0", "serverCustomAttributes": {"blw0hcq3": {}, "njT1EbVO": {}, "Os4ehv8j": {}}, "slotId": "FdRcLds8", "sourceItemId": "8kBgcgtb", "tags": ["HgtTVYIM", "aFDUQblv", "nSy6cG20"], "type": "XY1Lrmwj"}, {"customAttributes": {"86Cpfmza": {}, "Kja2hJos": {}, "y87r375q": {}}, "inventoryId": "kDhkuMBx", "serverCustomAttributes": {"xB6xYpas": {}, "0jld8MJW": {}, "cqCfmyOO": {}}, "slotId": "y6b4b78h", "sourceItemId": "6obnuIbW", "tags": ["UV7DVczI", "FQYNDdYl", "4RlrPpDN"], "type": "5g7dlRBA"}]}, {"consumeItems": [{"inventoryId": "RaQbia6w", "qty": 9, "slotId": "t2ieBsPn", "sourceItemId": "bS0yBYc8"}, {"inventoryId": "32TpFxYL", "qty": 25, "slotId": "iSKFBL94", "sourceItemId": "k8FYoRLk"}, {"inventoryId": "FqFbiq9K", "qty": 70, "slotId": "7FDLoLfv", "sourceItemId": "0wL66U3O"}], "createItems": [{"customAttributes": {"OYbys9p5": {}, "EaxCDnho": {}, "wlMG95Sj": {}}, "inventoryConfigurationCode": "JmYBxDM7", "inventoryId": "V1rjfzOj", "qty": 54, "serverCustomAttributes": {"06fICYqA": {}, "uCPYuH4z": {}, "XP3xwnUW": {}}, "slotId": "ZCkC8IPe", "slotUsed": 21, "sourceItemId": "HmAZof7m", "tags": ["wpqNaBIF", "PxNfHqWm", "A52ATmaz"], "toSpecificInventory": true, "type": "jfRTYH3a"}, {"customAttributes": {"qBiNShuj": {}, "NqxAxrXy": {}, "PiX9s2DF": {}}, "inventoryConfigurationCode": "E8otpUA1", "inventoryId": "DGJwKvca", "qty": 67, "serverCustomAttributes": {"lqICYNRX": {}, "ufRvY5cm": {}, "bmCH3WBO": {}}, "slotId": "v5jpCMMf", "slotUsed": 46, "sourceItemId": "ChygZcCe", "tags": ["d0Sxrxbv", "I5LeYpNx", "CPv620sn"], "toSpecificInventory": true, "type": "IrJ853xG"}, {"customAttributes": {"CfWxjLUO": {}, "nZ4KLm2T": {}, "LKccDCxT": {}}, "inventoryConfigurationCode": "wspRsIiO", "inventoryId": "tCGCDvKK", "qty": 85, "serverCustomAttributes": {"r8Ck0yUY": {}, "tCU5Bvi9": {}, "ljELXlQJ": {}}, "slotId": "7yvKkkKY", "slotUsed": 34, "sourceItemId": "Tjs3r6zg", "tags": ["2L5q3I2H", "OkZQVmkH", "2Imf4QXm"], "toSpecificInventory": true, "type": "Olb9ziX4"}], "removeItems": [{"inventoryId": "YdRI2x29", "slotId": "lWQWzUi5", "sourceItemId": "fzZ2MCQR"}, {"inventoryId": "muqe3wYX", "slotId": "aDiNjOtZ", "sourceItemId": "kb1LfXdY"}, {"inventoryId": "ju0X53V4", "slotId": "LOvsmHrD", "sourceItemId": "8ktWCj71"}], "targetUserId": "CVD7U0C2", "updateItems": [{"customAttributes": {"dBAM8Rtw": {}, "jvYsEm83": {}, "FTmvkwUZ": {}}, "inventoryId": "1gGJBMYG", "serverCustomAttributes": {"w7RR4m8v": {}, "PPA7gDlg": {}, "O5kbDVmu": {}}, "slotId": "6ip6ZdTF", "sourceItemId": "jJ36ypBB", "tags": ["wygLE5TP", "9f1A2RGn", "31Hh3qJX"], "type": "PR4ielId"}, {"customAttributes": {"4dBfhgdg": {}, "KGsPY3Pb": {}, "Tqgjkf8F": {}}, "inventoryId": "R9hkWQHu", "serverCustomAttributes": {"9bhvegD1": {}, "wNPyzLqW": {}, "aDqwDCVV": {}}, "slotId": "Z0QZ5vdJ", "sourceItemId": "tHpnurv8", "tags": ["g2Q2oCZ8", "ISzqYZ5a", "8cltikz2"], "type": "dPTRAaht"}, {"customAttributes": {"gwrFuSoZ": {}, "8PSBLUUU": {}, "TKW0yNwA": {}}, "inventoryId": "XNX2zYtD", "serverCustomAttributes": {"h5UBdc5B": {}, "4d66Ei6J": {}, "4zh6sEPp": {}}, "slotId": "tfbq6J1P", "sourceItemId": "vm61ArQu", "tags": ["EBI8Wsk9", "eueguc9V", "sGTsWxP5"], "type": "2YclA37V"}]}], "requestId": "BaIVC2iS"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'mfv5Ouoq' \
    --limit '57' \
    --offset '99' \
    --sortBy 'inventoryConfigurationCode:asc' \
    --userId 's6rSR5LV' \
    > test.out 2>&1
eval_tap $? 3 'AdminListInventories' test.out

#- 4 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "cAQasVvs", "userId": "Ui56idrF"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateInventory' test.out

#- 5 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId '7Le09bFR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetInventory' test.out

#- 6 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'RpDDQaGp' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 93}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateInventory' test.out

#- 7 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId '9liJ79AM' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "mzjBZ1WM"}' \
    > test.out 2>&1
eval_tap $? 7 'DeleteInventory' test.out

#- 8 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'WWMhUxPN' \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '47' \
    --qtyGte '93' \
    --sortBy 'updatedAt:asc' \
    --sourceItemId 'nMBM0mUj' \
    --tags 'ELVFbZZa' \
    > test.out 2>&1
eval_tap $? 8 'AdminListItems' test.out

#- 9 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'avvwzPbi' \
    --namespace $AB_NAMESPACE \
    --slotId 'NQ5djXhG' \
    --sourceItemId '77t9pvnM' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventoryItem' test.out

#- 10 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'h9ouRgpz' \
    --limit '68' \
    --offset '20' \
    --sortBy 'updatedAt:asc' \
    > test.out 2>&1
eval_tap $? 10 'AdminListInventoryConfigurations' test.out

#- 11 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "T2Xhxcch", "description": "5RBI2dRD", "initialMaxSlots": 23, "maxInstancesPerUser": 99, "maxUpgradeSlots": 52, "name": "FedSVcg3"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminCreateInventoryConfiguration' test.out

#- 12 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'MycqeM9j' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminGetInventoryConfiguration' test.out

#- 13 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'ZiOkZqYz' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "QzRj30S0", "description": "4CbOwrdQ", "initialMaxSlots": 25, "maxInstancesPerUser": 35, "maxUpgradeSlots": 13, "name": "053pGnxQ"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminUpdateInventoryConfiguration' test.out

#- 14 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'ciaq2QGt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteInventoryConfiguration' test.out

#- 15 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '4' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 15 'AdminListItemTypes' test.out

#- 16 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "FbOXbbLx"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateItemType' test.out

#- 17 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'zvzpluX4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDeleteItemType' test.out

#- 18 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '29' \
    --owner '5rNUDF0z' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 18 'AdminListTags' test.out

#- 19 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "MeZqjcas", "owner": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminCreateTag' test.out

#- 20 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'zSjPPGo6' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteTag' test.out

#- 21 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'g1ogSOEI' \
    --namespace $AB_NAMESPACE \
    --userId 'MJVz9Jp6' \
    --body '{"qty": 3, "slotId": "dbzIKcZz", "sourceItemId": "xcWGglki"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminConsumeUserItem' test.out

#- 22 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'NP4sHAYl' \
    --namespace $AB_NAMESPACE \
    --userId 'v7J757hk' \
    --body '[{"customAttributes": {"P3jj6v7G": {}, "7UPlGx0p": {}, "SIu442OJ": {}}, "serverCustomAttributes": {"NQSvWZDx": {}, "ZqFoVNjo": {}, "5r4Zujvs": {}}, "slotId": "ZKWzSxMR", "sourceItemId": "Ovee9IyC", "tags": ["w9hKxVlS", "7RLfwzNQ", "3sknTC0O"], "type": "6JVQGNXp"}, {"customAttributes": {"p3sCw08l": {}, "cJLII4nA": {}, "uk6aM758": {}}, "serverCustomAttributes": {"8dCbEJPH": {}, "f3Q08uiZ": {}, "V8T8eMXo": {}}, "slotId": "Z6axqOM8", "sourceItemId": "ECax8hld", "tags": ["x9ZlMJby", "zlh4JdxN", "3J6tYvEi"], "type": "CLx5Mlt8"}, {"customAttributes": {"0yswiBWI": {}, "zBwHI9Ym": {}, "LrrPqHEh": {}}, "serverCustomAttributes": {"tdbOHamU": {}, "d6w63FFN": {}, "i3fKjoZ8": {}}, "slotId": "mzYfk3SJ", "sourceItemId": "DogzEwFw", "tags": ["1afpmZhe", "bToMaSWC", "9YPQgH9c"], "type": "IvZeZFHi"}]' \
    > test.out 2>&1
eval_tap $? 22 'AdminBulkUpdateMyItems' test.out

#- 23 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'KABA7IIL' \
    --namespace $AB_NAMESPACE \
    --userId 'fphoXnwe' \
    --body '{"customAttributes": {"IHeozOgV": {}, "9iScj5LI": {}, "pfcf8vqY": {}}, "qty": 2, "serverCustomAttributes": {"wFm2PZut": {}, "kOQY7hJ7": {}, "7xXqTf55": {}}, "slotId": "Tics3c68", "slotUsed": 52, "sourceItemId": "W9ZndVSj", "tags": ["WVjQ1yZv", "9xQLwUAi", "meJQoUq7"], "type": "54l8rC3Q"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminSaveItemToInventory' test.out

#- 24 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId '74DfWV9K' \
    --namespace $AB_NAMESPACE \
    --userId '3sblFUuO' \
    --body '[{"slotId": "4IAgGYp8", "sourceItemId": "cEZcwpJN"}, {"slotId": "IO1zwE5N", "sourceItemId": "M1dZMSwS"}, {"slotId": "BxdWLrnG", "sourceItemId": "rsJhEDUa"}]' \
    > test.out 2>&1
eval_tap $? 24 'AdminBulkRemoveItems' test.out

#- 25 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'q9xfH44p' \
    --body '{"customAttributes": {"c2FvGSgB": {}, "xEIh8Jjg": {}, "6dBRrg99": {}}, "inventoryConfigurationCode": "aw1MprPn", "qty": 79, "serverCustomAttributes": {"CigzJvnG": {}, "bi3UfxbI": {}, "mHVdGiBB": {}}, "slotId": "f1HHj6Qs", "slotUsed": 25, "sourceItemId": "4489l808", "tags": ["xQYsR9s5", "vzkbSAxX", "WyoSVKlF"], "type": "YGVqebrR"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminSaveItem' test.out

#- 26 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'CPVtGlMO' \
    --limit '62' \
    --offset '33' \
    --sortBy 'updatedAt:asc' \
    > test.out 2>&1
eval_tap $? 26 'PublicListInventoryConfigurations' test.out

#- 27 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '92' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 27 'PublicListItemTypes' test.out

#- 28 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '85' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 28 'PublicListTags' test.out

#- 29 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode '6nzFCgAe' \
    --limit '29' \
    --offset '17' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 29 'PublicListInventories' test.out

#- 30 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId '99xGX2Tr' \
    --namespace $AB_NAMESPACE \
    --body '{"qty": 46, "slotId": "6PUjnUNt", "sourceItemId": "XttnQHUu"}' \
    > test.out 2>&1
eval_tap $? 30 'PublicConsumeMyItem' test.out

#- 31 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'YInmjxYD' \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '32' \
    --qtyGte '26' \
    --sortBy 'updatedAt:desc' \
    --sourceItemId 'jcN7ohf4' \
    --tags 'pOdTxyUs' \
    > test.out 2>&1
eval_tap $? 31 'PublicListItems' test.out

#- 32 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId '1i8UPr80' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"S2j90mOL": {}, "XRUUMxnK": {}, "MF5oW0vt": {}}, "slotId": "mWnOPLkm", "sourceItemId": "Vz7gJm4J", "tags": ["YdxtW5n2", "y6ccaHuk", "pNm35eIx"]}, {"customAttributes": {"w90LHkcB": {}, "TgBDbEEG": {}, "jSxHklHh": {}}, "slotId": "fJbjqDln", "sourceItemId": "PUF7IUak", "tags": ["MetVrxZR", "rdtEYjZ7", "VKh2mDOH"]}, {"customAttributes": {"oAqpzfOz": {}, "yyMKAEBx": {}, "hKAOt3UN": {}}, "slotId": "vJlfVk05", "sourceItemId": "v5uovpsR", "tags": ["ZGpUZ6o3", "pYfQjS2z", "xnhBGvbG"]}]' \
    > test.out 2>&1
eval_tap $? 32 'PublicBulkUpdateMyItems' test.out

#- 33 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'Q7gKV14e' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "T4RDcTXr", "sourceItemId": "nkAR8Rvn"}, {"slotId": "6ZaXoXIG", "sourceItemId": "sYUmGwfe"}, {"slotId": "ppOCe4bt", "sourceItemId": "cmYmSwz7"}]' \
    > test.out 2>&1
eval_tap $? 33 'PublicBulkRemoveMyItems' test.out

#- 34 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'UPXRL4Gn' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 85, "slotId": "bV8bF8wS", "sourceItemId": "khSodzyw"}, {"qty": 60, "slotId": "qC6mM400", "sourceItemId": "3g4rmN08"}, {"qty": 98, "slotId": "US2Zxc75", "sourceItemId": "g4Q3ZbZj"}], "srcInventoryId": "Hkq7Fj0E"}' \
    > test.out 2>&1
eval_tap $? 34 'PublicMoveMyItems' test.out

#- 35 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'PDGTxwB8' \
    --namespace $AB_NAMESPACE \
    --slotId 'OHLppwJJ' \
    --sourceItemId 'ajU7A3Kr' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE