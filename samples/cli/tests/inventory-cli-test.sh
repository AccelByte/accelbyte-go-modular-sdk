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
    --body '{"message": "Gc8Tln8O", "operations": [{"consumeItems": [{"inventoryId": "p2GZEMqP", "qty": 11, "slotId": "Ngveqtot", "sourceItemId": "jePNaQiV"}, {"inventoryId": "apzb5ncM", "qty": 19, "slotId": "35dlcc80", "sourceItemId": "GgLWxBlC"}, {"inventoryId": "RxfNtr9Z", "qty": 24, "slotId": "or6TUh1z", "sourceItemId": "25G8uH6K"}], "createItems": [{"customAttributes": {"v7WVZYLJ": {}, "7f5JqQM3": {}, "PvKlVUEn": {}}, "inventoryConfigurationCode": "moJYFkQ0", "inventoryId": "KIZqG4se", "qty": 21, "serverCustomAttributes": {"kwDADUWz": {}, "o9JCuymC": {}, "gP89hCjE": {}}, "slotId": "O8fDsMSJ", "slotUsed": 87, "sourceItemId": "Ig9MSpUU", "tags": ["SmICLOGB", "Qbtze9Ye", "ddpRptbb"], "toSpecificInventory": true, "type": "Y4eOaBCb"}, {"customAttributes": {"YPfpd7d3": {}, "8nrmugwz": {}, "JXrZeDCl": {}}, "inventoryConfigurationCode": "jipcY8bV", "inventoryId": "zGBDs1NP", "qty": 10, "serverCustomAttributes": {"ROdmnEuD": {}, "imMNqsVX": {}, "EopKdlaN": {}}, "slotId": "MX9xMidV", "slotUsed": 16, "sourceItemId": "qlO1TPkL", "tags": ["S0rVBwkI", "VEjnm70v", "JIG2tY8d"], "toSpecificInventory": false, "type": "qn9g00NT"}, {"customAttributes": {"sTaHi4a4": {}, "OPAsOm5Y": {}, "prnU4Xg3": {}}, "inventoryConfigurationCode": "X8Z6kecg", "inventoryId": "IPQFHA9a", "qty": 90, "serverCustomAttributes": {"4EKdH9zi": {}, "3RNknwat": {}, "N8WU3Ru2": {}}, "slotId": "7wmfPmDk", "slotUsed": 47, "sourceItemId": "Rm4hjxmb", "tags": ["Wb7lolFz", "SulnnJtq", "vDkZjRp1"], "toSpecificInventory": false, "type": "cUw6oQmv"}], "removeItems": [{"inventoryId": "8URhme2x", "slotId": "Cx2SXX0O", "sourceItemId": "Ao3HcHWC"}, {"inventoryId": "tZD9p72E", "slotId": "87sdOBKL", "sourceItemId": "z6XPxLPY"}, {"inventoryId": "uGYWF7HR", "slotId": "lRRhkcGy", "sourceItemId": "N0tXwxHi"}], "targetUserId": "ukf5SD5O", "updateItems": [{"customAttributes": {"4wLIAesw": {}, "PqaRhA1m": {}, "JlXvMdY7": {}}, "inventoryId": "RzKqno6n", "serverCustomAttributes": {"J0bfa1v3": {}, "yIcOqenD": {}, "1ZqBxbbx": {}}, "slotId": "9aOjZF1X", "sourceItemId": "BxfWWtog", "tags": ["oZH5ozIj", "E1bzHIk9", "C6CeIRY1"], "type": "o8DomHw8"}, {"customAttributes": {"DzdmQC8v": {}, "2yQc2qtt": {}, "JbP7Aoto": {}}, "inventoryId": "pXJZjCmN", "serverCustomAttributes": {"zbkepKJ1": {}, "zLUMISr7": {}, "83mkbqhs": {}}, "slotId": "ES24oMNo", "sourceItemId": "1MiGxfKq", "tags": ["sh4Lq0w5", "zjcZo1JS", "2kfuJKdB"], "type": "FkFMEhCm"}, {"customAttributes": {"xGIQxGtL": {}, "OS0WEn5X": {}, "jec8UCoP": {}}, "inventoryId": "snRoYRgF", "serverCustomAttributes": {"et1zkV6I": {}, "E9m5Plxf": {}, "fOUpt3o9": {}}, "slotId": "3QQRvf00", "sourceItemId": "NAzCGFCq", "tags": ["c1ShD2AJ", "NaI8HmMA", "I6iKvFk8"], "type": "MLHf8txy"}]}, {"consumeItems": [{"inventoryId": "VwJGdO6b", "qty": 53, "slotId": "7PiNBl2b", "sourceItemId": "FH0cD9SV"}, {"inventoryId": "2W6XABnA", "qty": 25, "slotId": "cbNr17eo", "sourceItemId": "euykD1BC"}, {"inventoryId": "Hf3sblOM", "qty": 32, "slotId": "7bc2pHdu", "sourceItemId": "Fb6V4MDp"}], "createItems": [{"customAttributes": {"t8wJ2NyC": {}, "fDbrcNcP": {}, "A26qEsFb": {}}, "inventoryConfigurationCode": "cJ7EaKMm", "inventoryId": "mbTtaA11", "qty": 87, "serverCustomAttributes": {"CElWVUvY": {}, "6otd41Wq": {}, "DeD9EQGf": {}}, "slotId": "WZSNORVj", "slotUsed": 52, "sourceItemId": "KwT9bUy4", "tags": ["sCIrkKxE", "JZ0QijsK", "B7u3qdcR"], "toSpecificInventory": true, "type": "e9idhw4J"}, {"customAttributes": {"835pFYVW": {}, "eary25LE": {}, "cVoBfR2H": {}}, "inventoryConfigurationCode": "jabDvQ0F", "inventoryId": "e9HLExMk", "qty": 87, "serverCustomAttributes": {"KZZfxkkP": {}, "aUCMdf80": {}, "PZfhlAo4": {}}, "slotId": "cYhGhH8s", "slotUsed": 22, "sourceItemId": "7uPdhb2F", "tags": ["PlzgEYZE", "U6LnyH8V", "uzXJhbDj"], "toSpecificInventory": true, "type": "zxS9LOEK"}, {"customAttributes": {"n99543Qr": {}, "sc36vDdG": {}, "SQixYRcB": {}}, "inventoryConfigurationCode": "AOecQOwD", "inventoryId": "MAtZ2eID", "qty": 77, "serverCustomAttributes": {"6nyKkL1l": {}, "tmDyMWbU": {}, "cjhU5rk5": {}}, "slotId": "cVWVZ9zM", "slotUsed": 11, "sourceItemId": "ub0xIHya", "tags": ["556wWFCV", "RElsU2ss", "R0HndHiH"], "toSpecificInventory": true, "type": "7ebgz9sj"}], "removeItems": [{"inventoryId": "ZGzgCBCT", "slotId": "Cavnomoa", "sourceItemId": "oxBI7m0x"}, {"inventoryId": "93GdI7xu", "slotId": "g6sR0rQm", "sourceItemId": "cwj6Ikl0"}, {"inventoryId": "a46EzNSq", "slotId": "6UsfsJE9", "sourceItemId": "9nsAaU3V"}], "targetUserId": "k6OCPH91", "updateItems": [{"customAttributes": {"2pTAqSOv": {}, "DzUyOSCJ": {}, "XnipfWon": {}}, "inventoryId": "NaIbBc02", "serverCustomAttributes": {"PkcdhppF": {}, "bj9wosRN": {}, "ytRpmP4A": {}}, "slotId": "AlbZRbjk", "sourceItemId": "4jnS27Rt", "tags": ["FfbLrOQu", "kaGQfBJF", "DgKw9LT3"], "type": "8JM0slUw"}, {"customAttributes": {"dZo7Go5K": {}, "qLhYEM1x": {}, "3jhGuWJB": {}}, "inventoryId": "KIrrrH0t", "serverCustomAttributes": {"Ndqx7Jzk": {}, "QIsPbo4E": {}, "Umbfjvic": {}}, "slotId": "WwJnpfvX", "sourceItemId": "yzJ5bu2r", "tags": ["AwNwMREK", "QFA6Wfx9", "icNXmGyv"], "type": "fmBXLjrL"}, {"customAttributes": {"pLTiWtcN": {}, "t7YpTPvl": {}, "TiAYIznV": {}}, "inventoryId": "mvWLTE2b", "serverCustomAttributes": {"TAg9Zynb": {}, "mbxmrdlV": {}, "tWchaG4Y": {}}, "slotId": "ylQkti4T", "sourceItemId": "YN1OOlaO", "tags": ["fP8HD6N1", "VCIhjMDM", "doLvi0ql"], "type": "J2tSExDM"}]}, {"consumeItems": [{"inventoryId": "aHaMQOB3", "qty": 56, "slotId": "yKbyODpP", "sourceItemId": "bfsXxFtH"}, {"inventoryId": "ZBUFTPIF", "qty": 89, "slotId": "NBlUwTwa", "sourceItemId": "WrF4wYUd"}, {"inventoryId": "xawsgqmP", "qty": 6, "slotId": "DW4DYNOS", "sourceItemId": "AvB2Bff0"}], "createItems": [{"customAttributes": {"Tga6oLsx": {}, "9VSVYxIR": {}, "wCmQR0Jx": {}}, "inventoryConfigurationCode": "hJULuFV7", "inventoryId": "fumfXsUe", "qty": 9, "serverCustomAttributes": {"91uAISCW": {}, "MTEk6cQr": {}, "dzv3ZnK6": {}}, "slotId": "fN1gGVCa", "slotUsed": 85, "sourceItemId": "D8i3VLN3", "tags": ["mpBNyzLn", "qRD04JWe", "LNRAoMcX"], "toSpecificInventory": true, "type": "BjX7psNd"}, {"customAttributes": {"cggkJCBP": {}, "50MgCT6f": {}, "3xL7DmUo": {}}, "inventoryConfigurationCode": "lEmL4mWd", "inventoryId": "CwYaXuK7", "qty": 77, "serverCustomAttributes": {"sROf3mPm": {}, "QvfKgxQ2": {}, "xRrNpnSY": {}}, "slotId": "QM8XTkff", "slotUsed": 4, "sourceItemId": "KmsTFCDt", "tags": ["gEZ9kdsu", "cjjhbnWu", "qAiLhoYC"], "toSpecificInventory": true, "type": "emcer8yo"}, {"customAttributes": {"VbR4o3wq": {}, "NJjtSpo1": {}, "cle1OefG": {}}, "inventoryConfigurationCode": "7JdED8AR", "inventoryId": "WT0OZVWz", "qty": 3, "serverCustomAttributes": {"gBgcOKzk": {}, "BG7Kt0Dy": {}, "scvRnkd8": {}}, "slotId": "H8lrNAEj", "slotUsed": 48, "sourceItemId": "hcuua24M", "tags": ["zaKZS1bd", "FQp3xjCR", "DCeA37db"], "toSpecificInventory": false, "type": "ydXrV9W0"}], "removeItems": [{"inventoryId": "WHFNeQZA", "slotId": "tVFaOJ3U", "sourceItemId": "mj8I2qMN"}, {"inventoryId": "BiXPziol", "slotId": "gWEtT9sB", "sourceItemId": "wuJ3yJGq"}, {"inventoryId": "qDqV0V9w", "slotId": "XvAwuiGb", "sourceItemId": "qV0s710J"}], "targetUserId": "cFOzq1Nj", "updateItems": [{"customAttributes": {"ErWR9AzH": {}, "QbtKYZp7": {}, "TF7onQ95": {}}, "inventoryId": "xHbz5Pfj", "serverCustomAttributes": {"4OLh8hhO": {}, "FkbiHNuH": {}, "5pD6QtG3": {}}, "slotId": "7HNzfBWj", "sourceItemId": "jqTx066o", "tags": ["7k15jWEd", "UMn8dQg8", "VJIa5GXs"], "type": "UddImGtF"}, {"customAttributes": {"kYH1LO9Q": {}, "hUYNpud0": {}, "k22CR6ag": {}}, "inventoryId": "4b6mJ96B", "serverCustomAttributes": {"CxmAifH7": {}, "qscuBEh6": {}, "eQaVtVt5": {}}, "slotId": "en1zFOeA", "sourceItemId": "ImVEZ4JC", "tags": ["6D8VyiNc", "1nvs4FSG", "TODwPqEV"], "type": "Dnbm9adf"}, {"customAttributes": {"CcvEKsAG": {}, "hVf0a91p": {}, "HfeuD0SY": {}}, "inventoryId": "3EIk66Td", "serverCustomAttributes": {"KzkG9Y09": {}, "fG6xqfuV": {}, "L0oY0AT9": {}}, "slotId": "ZDLkiMLx", "sourceItemId": "TjBqCR6K", "tags": ["2FFqOFkW", "gjvkhpyn", "sWkhi3bj"], "type": "4RUmxVoG"}]}], "requestId": "zmbFzEvY"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'WtIEbpdi' \
    --limit '43' \
    --offset '96' \
    --sortBy 'inventoryConfigurationCode:desc' \
    --userId 'UAIwxf37' \
    > test.out 2>&1
eval_tap $? 3 'AdminListInventories' test.out

#- 4 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "EnW3qTJ0", "userId": "QDWKmXR7"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateInventory' test.out

#- 5 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'xnPzk0l8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetInventory' test.out

#- 6 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'iXi541sp' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 76}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateInventory' test.out

#- 7 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'DyP4aoFZ' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "HJCSCZHB"}' \
    > test.out 2>&1
eval_tap $? 7 'DeleteInventory' test.out

#- 8 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'jzrikgDV' \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '9' \
    --qtyGte '74' \
    --sortBy 'updatedAt:desc' \
    --sourceItemId 'G0lT1iiM' \
    --tags 'DK8jpEl6' \
    > test.out 2>&1
eval_tap $? 8 'AdminListItems' test.out

#- 9 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'xtFCZGMF' \
    --namespace $AB_NAMESPACE \
    --slotId '3989t2u9' \
    --sourceItemId 'mVKwyOAA' \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventoryItem' test.out

#- 10 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'tJ1hy5FB' \
    --limit '11' \
    --offset '88' \
    --sortBy 'code:desc' \
    > test.out 2>&1
eval_tap $? 10 'AdminListInventoryConfigurations' test.out

#- 11 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "9BmqA9lZ", "description": "zlFccUWG", "initialMaxSlots": 94, "maxInstancesPerUser": 50, "maxUpgradeSlots": 5, "name": "LGHFDzUx"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminCreateInventoryConfiguration' test.out

#- 12 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'xgMeANb1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminGetInventoryConfiguration' test.out

#- 13 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'nIBDGRvu' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "e3g7m8KN", "description": "8iCP5Zaa", "initialMaxSlots": 27, "maxInstancesPerUser": 66, "maxUpgradeSlots": 0, "name": "6CW1ELPX"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminUpdateInventoryConfiguration' test.out

#- 14 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'mxSZJ5Ah' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteInventoryConfiguration' test.out

#- 15 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '94' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 15 'AdminListItemTypes' test.out

#- 16 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "6n5KrhDV"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateItemType' test.out

#- 17 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'D3vyUzIs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDeleteItemType' test.out

#- 18 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '52' \
    --owner 'lvm5WHij' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 18 'AdminListTags' test.out

#- 19 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "NbrfsuQD", "owner": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminCreateTag' test.out

#- 20 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'Vjkbxfyi' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteTag' test.out

#- 21 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'qZwytZyd' \
    --namespace $AB_NAMESPACE \
    --userId 'STFnIRXT' \
    --body '{"qty": 58, "slotId": "qgx26xuL", "sourceItemId": "MFtL3E4r"}' \
    > test.out 2>&1
eval_tap $? 21 'AdminConsumeUserItem' test.out

#- 22 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId '88nUqvyd' \
    --namespace $AB_NAMESPACE \
    --userId 'NV9Ht2e6' \
    --body '[{"customAttributes": {"jELHCKqY": {}, "lYhTujh3": {}, "tGERguej": {}}, "serverCustomAttributes": {"918Xw0oT": {}, "RoPl9WWB": {}, "plNkDbzZ": {}}, "slotId": "55w0XeSu", "sourceItemId": "ttAtnA2u", "tags": ["jm0GISQp", "gC9hSaLt", "NapRiuaM"], "type": "pPcXmtDY"}, {"customAttributes": {"teRMZE3k": {}, "rHYaUQaY": {}, "2FYTjf0x": {}}, "serverCustomAttributes": {"vDwpoOCl": {}, "wfk7aVzv": {}, "VfZlAs9H": {}}, "slotId": "1BhlApSa", "sourceItemId": "cXVt53Ym", "tags": ["nyl9LhPV", "FNeK4nIs", "jMacoy2B"], "type": "XrrNjjEA"}, {"customAttributes": {"pygb3y6i": {}, "vHP21jCM": {}, "wthXD6Zb": {}}, "serverCustomAttributes": {"6TfwTuAn": {}, "OMuv060z": {}, "Ue5ZJuHT": {}}, "slotId": "fTzpNwcI", "sourceItemId": "9dRvP3rX", "tags": ["ubAESeMb", "wnzZqMgQ", "6R7WriFH"], "type": "9mUUtAp1"}]' \
    > test.out 2>&1
eval_tap $? 22 'AdminBulkUpdateMyItems' test.out

#- 23 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'xNDIguQ6' \
    --namespace $AB_NAMESPACE \
    --userId 'QFnKYeO9' \
    --body '{"customAttributes": {"uVmZWt23": {}, "Q1hrgjOx": {}, "5w0CTuR8": {}}, "qty": 86, "serverCustomAttributes": {"1dPtEmxu": {}, "ZNKv67uE": {}, "ft35WtTG": {}}, "slotId": "aBV4nXS9", "slotUsed": 45, "sourceItemId": "WkMTcX8H", "tags": ["Tnq62qed", "ZWxtsxKK", "4uPzTImD"], "type": "G02w1Ebf"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminSaveItemToInventory' test.out

#- 24 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'JVQsXbvK' \
    --namespace $AB_NAMESPACE \
    --userId 'YsKj5lDb' \
    --body '[{"slotId": "RYhFL7fH", "sourceItemId": "bxlkuv82"}, {"slotId": "db8zmOPg", "sourceItemId": "dXDun3eU"}, {"slotId": "GVmtX5EK", "sourceItemId": "AGhxGjJc"}]' \
    > test.out 2>&1
eval_tap $? 24 'AdminBulkRemoveItems' test.out

#- 25 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'PkAMDxy7' \
    --body '{"customAttributes": {"eh1mrvEE": {}, "jbX4Tu7W": {}, "0Uhgq2wD": {}}, "inventoryConfigurationCode": "WmYvERQf", "qty": 83, "serverCustomAttributes": {"WAuE87jI": {}, "eGG0LINc": {}, "rSIlK8bt": {}}, "slotId": "9xOtbyf4", "slotUsed": 27, "sourceItemId": "NWKWBUto", "tags": ["nRePBRjS", "8If1oKeq", "gnMX9v6w"], "type": "FFHI4cXz"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminSaveItem' test.out

#- 26 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'ujrmtmuT' \
    --limit '95' \
    --offset '35' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 26 'PublicListInventoryConfigurations' test.out

#- 27 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '21' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 27 'PublicListItemTypes' test.out

#- 28 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '12' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 28 'PublicListTags' test.out

#- 29 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'irZXuFZP' \
    --limit '73' \
    --offset '10' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 29 'PublicListInventories' test.out

#- 30 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'cNMTagUq' \
    --namespace $AB_NAMESPACE \
    --body '{"qty": 99, "slotId": "SLC7fGEa", "sourceItemId": "QJ9I2hwX"}' \
    > test.out 2>&1
eval_tap $? 30 'PublicConsumeMyItem' test.out

#- 31 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'asgCwJBa' \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '72' \
    --qtyGte '27' \
    --sortBy 'qty:desc' \
    --sourceItemId 'CX4rvCAR' \
    --tags 'ltNkDADW' \
    > test.out 2>&1
eval_tap $? 31 'PublicListItems' test.out

#- 32 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'AwSetklG' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"PfuJSJrb": {}, "bUa0P1HG": {}, "cD7hsHwI": {}}, "slotId": "mOYSR24I", "sourceItemId": "SlVwebFc", "tags": ["bzXga9EO", "kIgPfKU0", "kIEcMhs7"]}, {"customAttributes": {"aoDN7w5y": {}, "xsPGKI4m": {}, "lXyCW06r": {}}, "slotId": "Z4zLJGBe", "sourceItemId": "zRM6IA2i", "tags": ["f3rUBuda", "lJPPRjtR", "6pqrCA7q"]}, {"customAttributes": {"X8jLwFIV": {}, "iudJyw4B": {}, "U6BbZMAl": {}}, "slotId": "1686S4sW", "sourceItemId": "VLh8UZeZ", "tags": ["q0CCu5rS", "OVfMlRe6", "fQO29eux"]}]' \
    > test.out 2>&1
eval_tap $? 32 'PublicBulkUpdateMyItems' test.out

#- 33 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'gC2fXUt9' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "l0xLTNgf", "sourceItemId": "Gsrxjxc7"}, {"slotId": "3iB8rHna", "sourceItemId": "Wg5pnHcQ"}, {"slotId": "M7sDR4nG", "sourceItemId": "1qXisEmr"}]' \
    > test.out 2>&1
eval_tap $? 33 'PublicBulkRemoveMyItems' test.out

#- 34 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId '8ZPvyZqZ' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 99, "slotId": "gaJ1a9u2", "sourceItemId": "RaUrQ4wh"}, {"qty": 69, "slotId": "wNnjL8N5", "sourceItemId": "H5Eo1jD2"}, {"qty": 41, "slotId": "BNHi4CNu", "sourceItemId": "dCX2LWvP"}], "srcInventoryId": "fuHcLIPk"}' \
    > test.out 2>&1
eval_tap $? 34 'PublicMoveMyItems' test.out

#- 35 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'kW1Eh9WG' \
    --namespace $AB_NAMESPACE \
    --slotId 'kKj0pq11' \
    --sourceItemId '0nhpisLz' \
    > test.out 2>&1
eval_tap $? 35 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE