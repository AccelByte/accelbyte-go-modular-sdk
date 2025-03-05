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
    --body '{"message": "7bcN0o63", "operations": [{"consumeItems": [{"dateRangeValidation": true, "inventoryId": "RHPEhl7k", "options": ["rksNtwMV", "4wtGrLgG", "WN5lcwdq"], "qty": 7, "slotId": "HAPzW6Ey", "sourceItemId": "Po8ufnuK"}, {"dateRangeValidation": false, "inventoryId": "Lj0Eodju", "options": ["e0hGdGxp", "pZiHK1yC", "bPPQRFhx"], "qty": 40, "slotId": "3kqWCTpD", "sourceItemId": "JfwgnkfQ"}, {"dateRangeValidation": true, "inventoryId": "MQ9pWFCv", "options": ["grLAPDEy", "fe2ViTjd", "2eg7MWqD"], "qty": 85, "slotId": "bl2MWlKv", "sourceItemId": "ep3eZtKJ"}], "createItems": [{"customAttributes": {"LNfmQ9xT": {}, "9esCcxYv": {}, "Lm9vjB9t": {}}, "inventoryConfigurationCode": "whi7gTMt", "inventoryId": "TsBlONMn", "qty": 4, "serverCustomAttributes": {"kzBlyku7": {}, "5zmPnXJv": {}, "VO68tgm1": {}}, "slotId": "Sao93LAO", "slotUsed": 22, "source": "OTHER", "sourceItemId": "ahIoCiCA", "tags": ["dOSNCkMG", "BcXVzF4Q", "3jYhx2vo"], "toSpecificInventory": false, "type": "yeNsk6zc"}, {"customAttributes": {"q0dmJCXS": {}, "1HUA0Ltb": {}, "OUxnMLTR": {}}, "inventoryConfigurationCode": "qVH8U7k8", "inventoryId": "Xi076myC", "qty": 69, "serverCustomAttributes": {"S17TLQe7": {}, "hr548oQQ": {}, "sWHIE0oz": {}}, "slotId": "q7GN5FZX", "slotUsed": 55, "source": "OTHER", "sourceItemId": "rchErvBm", "tags": ["WyYYmpCb", "ULY5q9dO", "4PCeSrQ0"], "toSpecificInventory": true, "type": "LyN3OBsz"}, {"customAttributes": {"lc9eGmoo": {}, "VwURvJRH": {}, "NTAYDSRN": {}}, "inventoryConfigurationCode": "0VUPf7uu", "inventoryId": "brLjdles", "qty": 40, "serverCustomAttributes": {"l1V6snWl": {}, "GiQAerZK": {}, "Rc7SAPek": {}}, "slotId": "YFEqhxSj", "slotUsed": 33, "source": "OTHER", "sourceItemId": "OiS7q9Fk", "tags": ["tMClOSyg", "BiKgr8Bl", "vhOXhSrR"], "toSpecificInventory": false, "type": "YYLJgiDr"}], "removeItems": [{"inventoryId": "ApkSTqbP", "slotId": "Qz8l0QB3", "sourceItemId": "k46XWHzl"}, {"inventoryId": "QMZRnTJn", "slotId": "cvugdML9", "sourceItemId": "aB48FFeH"}, {"inventoryId": "G246zazg", "slotId": "KAlHPCtA", "sourceItemId": "o96SxGTB"}], "targetUserId": "4Y64LnrZ", "updateItems": [{"customAttributes": {"vXNIthvu": {}, "tZtFqhGb": {}, "5bS1Vhqn": {}}, "inventoryId": "Yetx4TVB", "serverCustomAttributes": {"o7VP1B75": {}, "LH6DXyAH": {}, "wme1v2C9": {}}, "slotId": "nGsiDmsS", "sourceItemId": "DBNNTiUu", "tags": ["xEsJXngK", "KSsrflEk", "9VblA8Mg"], "type": "QpuMNwYW"}, {"customAttributes": {"usE1LnUN": {}, "fIP2UFnb": {}, "Cnm4n9Sx": {}}, "inventoryId": "TD2EAYS7", "serverCustomAttributes": {"mN9XFJRw": {}, "SGHtu9du": {}, "J8ncAQip": {}}, "slotId": "HbKwbLz4", "sourceItemId": "HWbezUFJ", "tags": ["lzNIZ8Wl", "mxj4UKma", "aFdKgKMv"], "type": "6P6taqkE"}, {"customAttributes": {"VuNHTBcp": {}, "p3pbtrQN": {}, "qnY5K2U0": {}}, "inventoryId": "AfcXr3qM", "serverCustomAttributes": {"X8rnuesc": {}, "k5yGjEnQ": {}, "EhntruFH": {}}, "slotId": "UENpvwvM", "sourceItemId": "4aoygE2a", "tags": ["THO8ekUY", "9qgdb6B5", "A7JCgAQn"], "type": "luSGcTm3"}]}, {"consumeItems": [{"dateRangeValidation": false, "inventoryId": "kytMise0", "options": ["0hAMh8Qv", "YcAgnIq1", "e7R4QBpr"], "qty": 83, "slotId": "coBPr3wv", "sourceItemId": "qLT53Eel"}, {"dateRangeValidation": false, "inventoryId": "tLsqmWpl", "options": ["gHxa8zeT", "W5K7ncIZ", "nrmigFn8"], "qty": 16, "slotId": "33HRcuVn", "sourceItemId": "2YuzHN2j"}, {"dateRangeValidation": false, "inventoryId": "iFusNYgS", "options": ["knCRN9aR", "nEnpx5uV", "Zqmouz3k"], "qty": 42, "slotId": "2lefYnro", "sourceItemId": "7XFPExAI"}], "createItems": [{"customAttributes": {"JEmv97Kb": {}, "N2F0UT6U": {}, "1Y5tO7DM": {}}, "inventoryConfigurationCode": "RaBk0xyj", "inventoryId": "Oph9IAYT", "qty": 69, "serverCustomAttributes": {"2veLntV9": {}, "nszJAsmW": {}, "G2RfmRYu": {}}, "slotId": "hyehcrXB", "slotUsed": 55, "source": "ECOMMERCE", "sourceItemId": "asCrVBsw", "tags": ["1NWZ6B0P", "4zJizqP4", "b13GA57c"], "toSpecificInventory": false, "type": "tDnMJisV"}, {"customAttributes": {"ahZeB0kE": {}, "bfNw1oRL": {}, "a18TDSAd": {}}, "inventoryConfigurationCode": "0BAfaVsM", "inventoryId": "ViaCzocV", "qty": 90, "serverCustomAttributes": {"BJPCyoXg": {}, "5KkJdym1": {}, "ZLGTQSGA": {}}, "slotId": "RLTwvrCQ", "slotUsed": 91, "source": "ECOMMERCE", "sourceItemId": "YocDJBIi", "tags": ["CuxKcPy5", "geQvMopd", "sVlnpR65"], "toSpecificInventory": false, "type": "9mFFGPWJ"}, {"customAttributes": {"zEldBtJA": {}, "lv77Irl7": {}, "H3TB0nsU": {}}, "inventoryConfigurationCode": "3qnC1f4f", "inventoryId": "ZGqchJ3H", "qty": 5, "serverCustomAttributes": {"aZ4FItnA": {}, "GIbhnXQs": {}, "a447NFa8": {}}, "slotId": "eJsYVOaE", "slotUsed": 30, "source": "ECOMMERCE", "sourceItemId": "HQCDw9Zc", "tags": ["aNTusw76", "XhUXY8Ft", "Nsy5Irff"], "toSpecificInventory": false, "type": "vfYKpJQH"}], "removeItems": [{"inventoryId": "jNoINLkH", "slotId": "7L9UcboB", "sourceItemId": "8xehcLU2"}, {"inventoryId": "Za6MOUdo", "slotId": "5GJAAvrW", "sourceItemId": "FkeI6FAk"}, {"inventoryId": "Yu7pyF2x", "slotId": "XxCFMZIg", "sourceItemId": "cnnGrPRT"}], "targetUserId": "ERojrQTv", "updateItems": [{"customAttributes": {"UlqT1RCH": {}, "YlHHbOA3": {}, "9CtJpvUX": {}}, "inventoryId": "v0N4jQgJ", "serverCustomAttributes": {"PT8nhySN": {}, "pAAKB6xT": {}, "GiXgBnH9": {}}, "slotId": "81Bvf1kg", "sourceItemId": "JIcAp5O7", "tags": ["YVeVa51D", "BxilVmQo", "PoofS1bu"], "type": "6EsrXoCX"}, {"customAttributes": {"Pj67vQbP": {}, "GE1xu0q9": {}, "MoCR8xhr": {}}, "inventoryId": "vrmay0Ao", "serverCustomAttributes": {"cXZZUSXo": {}, "jWzImsop": {}, "DwWZXDO3": {}}, "slotId": "SQNejCre", "sourceItemId": "740f0Ago", "tags": ["YKGYEvTq", "Z1SWItVJ", "OoNzAMao"], "type": "LRSh5SjU"}, {"customAttributes": {"lReEucSk": {}, "JT96aJ54": {}, "9t1zQCvz": {}}, "inventoryId": "JMvs27Eu", "serverCustomAttributes": {"Ml6wTY09": {}, "sch9Ngxy": {}, "ZB5Xgsvq": {}}, "slotId": "cAC5WHe9", "sourceItemId": "OLlsiFAF", "tags": ["cyrHU015", "bjVe5eHl", "l6gryZ2u"], "type": "fNyW7XMx"}]}, {"consumeItems": [{"dateRangeValidation": false, "inventoryId": "1ZqasUQG", "options": ["Uv2AIv9E", "s4Ersysq", "5Nl2vy8q"], "qty": 33, "slotId": "Lgq3r7Fi", "sourceItemId": "ffgqFr6U"}, {"dateRangeValidation": true, "inventoryId": "gH6CdUUD", "options": ["WFfG6MyE", "9CbugBYX", "ky1N5PRj"], "qty": 43, "slotId": "41nH2ZlQ", "sourceItemId": "7LB6RcwL"}, {"dateRangeValidation": true, "inventoryId": "pngp7Jx0", "options": ["SS711kZY", "juhtDquw", "sVMvcn7u"], "qty": 26, "slotId": "HmUGHXmn", "sourceItemId": "TfVWfhr8"}], "createItems": [{"customAttributes": {"dCUpplR2": {}, "ry9zUYaF": {}, "CgL7oEjj": {}}, "inventoryConfigurationCode": "EKI7ziqa", "inventoryId": "GvSHsQxW", "qty": 6, "serverCustomAttributes": {"hkJ9cZQc": {}, "EprT2YQo": {}, "V3vPLYfq": {}}, "slotId": "xZkEjOlL", "slotUsed": 45, "source": "OTHER", "sourceItemId": "iTKpD8uB", "tags": ["l2glmzlz", "OJ8HIdm9", "ShOFsKuP"], "toSpecificInventory": true, "type": "D3d1w4g4"}, {"customAttributes": {"xdZosBCY": {}, "oNU7bG0V": {}, "o50Ptcka": {}}, "inventoryConfigurationCode": "irw8VBK4", "inventoryId": "6F9TpBpr", "qty": 44, "serverCustomAttributes": {"ehvSOPku": {}, "QobMLWou": {}, "prF40Ew5": {}}, "slotId": "PjhoWgbV", "slotUsed": 3, "source": "ECOMMERCE", "sourceItemId": "vOvEzX4l", "tags": ["pHLXf7qA", "2u0vOcXI", "e8jbGPV1"], "toSpecificInventory": false, "type": "H1HTTBMa"}, {"customAttributes": {"2ExUUvYA": {}, "2lbc6i37": {}, "7l4OSKqA": {}}, "inventoryConfigurationCode": "ykDMXzjm", "inventoryId": "Twg6Bxmh", "qty": 14, "serverCustomAttributes": {"JnF0QLQy": {}, "hMNtBA1k": {}, "l3rQ0MTE": {}}, "slotId": "MA57S8TW", "slotUsed": 11, "source": "ECOMMERCE", "sourceItemId": "YSp3zMz2", "tags": ["wCezDjdn", "obpIWPsE", "48piP2Th"], "toSpecificInventory": false, "type": "prb6CRVT"}], "removeItems": [{"inventoryId": "ARdniCqX", "slotId": "3ZOREOAj", "sourceItemId": "HzEE8Mbf"}, {"inventoryId": "nbFlMOf8", "slotId": "WLwrEw00", "sourceItemId": "RDIDpXLf"}, {"inventoryId": "tKwEZFbP", "slotId": "4KK7P2tC", "sourceItemId": "M7EiRePZ"}], "targetUserId": "ncxlnCpY", "updateItems": [{"customAttributes": {"CzakuMTy": {}, "jQZFgYDd": {}, "IBW3G4kH": {}}, "inventoryId": "WY5rKAJb", "serverCustomAttributes": {"J57hf6Wf": {}, "ry3K4fR6": {}, "0vYVnPgU": {}}, "slotId": "jrS0MNUL", "sourceItemId": "jYDTfgX9", "tags": ["Dug7Ht3d", "0esx7B56", "AG7O0ksA"], "type": "wKC2U6pY"}, {"customAttributes": {"ca7CiQkS": {}, "Mcp63d63": {}, "f2XYo6RA": {}}, "inventoryId": "tYQOqgOY", "serverCustomAttributes": {"xtnIafjx": {}, "b08eQ3JZ": {}, "UKTx0A6r": {}}, "slotId": "UA1eirle", "sourceItemId": "SU7mM0mI", "tags": ["yjLJ1dFg", "JrSg1c0Q", "P4JUTMBP"], "type": "WwZis6tB"}, {"customAttributes": {"sIRqT5Rp": {}, "hW3mTY5p": {}, "CMkZK1dI": {}}, "inventoryId": "Y69p4h9u", "serverCustomAttributes": {"rhiIDPUd": {}, "EtdicEqu": {}, "AbBlOxVE": {}}, "slotId": "PiiWhQ3C", "sourceItemId": "DSKjvfEf", "tags": ["NlCi8YdI", "wO4ckUuY", "JLadAIXM"], "type": "dJtLID61"}]}], "requestId": "TKSlFC80"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListIntegrationConfigurations
samples/cli/sample-apps Inventory adminListIntegrationConfigurations \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '79' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 3 'AdminListIntegrationConfigurations' test.out

#- 4 AdminCreateIntegrationConfiguration
samples/cli/sample-apps Inventory adminCreateIntegrationConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["o3tmrp1W", "0sZdlkLU", "j04qRS8g"], "serviceName": "hBBp0w4g", "targetInventoryCode": "4uaoSS0Q"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateIntegrationConfiguration' test.out

#- 5 AdminUpdateIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateIntegrationConfiguration \
    --integrationConfigurationId 'jk9WnTDv' \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["O0K6TVtU", "XBDnUzTX", "DpbLLWpn"], "serviceName": "qz6WpM6A", "targetInventoryCode": "W81v6usE"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateIntegrationConfiguration' test.out

#- 6 AdminUpdateStatusIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateStatusIntegrationConfiguration \
    --integrationConfigurationId 'auHrE5RR' \
    --namespace $AB_NAMESPACE \
    --body '{"status": "TIED"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateStatusIntegrationConfiguration' test.out

#- 7 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'wNdA68HH' \
    --limit '9' \
    --offset '30' \
    --sortBy 'updatedAt' \
    --userId 'vDw3TSYr' \
    > test.out 2>&1
eval_tap $? 7 'AdminListInventories' test.out

#- 8 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "eJxAmPqT", "userId": "ZZUEDxos"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateInventory' test.out

#- 9 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId '6jZsyY5n' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventory' test.out

#- 10 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'L0qhba5L' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 40}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateInventory' test.out

#- 11 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'k6RPaT49' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "uD55k9Tc"}' \
    > test.out 2>&1
eval_tap $? 11 'DeleteInventory' test.out

#- 12 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'V6qKAxeI' \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --offset '22' \
    --sortBy 'createdAt:desc' \
    --sourceItemId '8cdKlagI' \
    --tags 'y2wnhALW' \
    > test.out 2>&1
eval_tap $? 12 'AdminListItems' test.out

#- 13 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'l7VqjIMj' \
    --namespace $AB_NAMESPACE \
    --slotId 'PsHCV4cW' \
    --sourceItemId 'f0Gzo5qo' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetInventoryItem' test.out

#- 14 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code '5v7RZzz9' \
    --limit '26' \
    --offset '57' \
    --sortBy 'updatedAt' \
    > test.out 2>&1
eval_tap $? 14 'AdminListInventoryConfigurations' test.out

#- 15 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "NZAOcGWf", "description": "lm09Gcih", "initialMaxSlots": 54, "maxInstancesPerUser": 35, "maxUpgradeSlots": 48, "name": "ihZXmcLj"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateInventoryConfiguration' test.out

#- 16 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId '6efOqCWK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetInventoryConfiguration' test.out

#- 17 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'EmcbnJXt' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "ETBLdOhC", "description": "trqUntfQ", "initialMaxSlots": 17, "maxInstancesPerUser": 6, "maxUpgradeSlots": 23, "name": "BtSBsOtW"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateInventoryConfiguration' test.out

#- 18 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId '9f1D0WHJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteInventoryConfiguration' test.out

#- 19 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '12' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 19 'AdminListItemTypes' test.out

#- 20 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "M4qdAU7j"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateItemType' test.out

#- 21 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'Rxcafq0R' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminDeleteItemType' test.out

#- 22 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '72' \
    --owner 'p9yEOJzs' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 22 'AdminListTags' test.out

#- 23 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "2CHQrBVz", "owner": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateTag' test.out

#- 24 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'mBrsWcpN' \
    > test.out 2>&1
eval_tap $? 24 'AdminDeleteTag' test.out

#- 25 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId '5FIUKQoa' \
    --namespace $AB_NAMESPACE \
    --userId 'pixSMozJ' \
    --dateRangeValidation 'UQWPwx9E' \
    --body '{"options": ["q6PmWWkE", "2sX8IUVT", "fvUx2yVX"], "qty": 69, "slotId": "oAHxdxvc", "sourceItemId": "CP1UuWdR"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminConsumeUserItem' test.out

#- 26 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'syICpjpZ' \
    --namespace $AB_NAMESPACE \
    --userId '4mi3ZlbK' \
    --body '[{"customAttributes": {"x3NCzre0": {}, "7GOvbaKc": {}, "n3L0FsV7": {}}, "serverCustomAttributes": {"xX1KgsnK": {}, "ZZUgI4wg": {}, "xm6KHRv1": {}}, "slotId": "mb6ZtSpX", "sourceItemId": "1Mu5qGpC", "tags": ["yCxOPnNw", "NH6MGvmy", "iiLiSR7M"], "type": "1IWZFYNZ"}, {"customAttributes": {"Pv2CtqDs": {}, "mWCQKgCd": {}, "iQNaCcjQ": {}}, "serverCustomAttributes": {"RNf2tCBO": {}, "lZWRONFi": {}, "uJOuSeOb": {}}, "slotId": "gexZHDVc", "sourceItemId": "dOMqrznz", "tags": ["t86rpldw", "7TEYhHjV", "CFy3y1os"], "type": "yi3jLta3"}, {"customAttributes": {"61x0V9By": {}, "WhXy0Ojo": {}, "LA52jY0W": {}}, "serverCustomAttributes": {"J9cPAoZF": {}, "fRCegYUr": {}, "Y0oKcG2Y": {}}, "slotId": "L3TV9ii2", "sourceItemId": "x1Iqi7Ur", "tags": ["qtZAaEil", "o08o8HRa", "lUWYIe37"], "type": "GeDzKUyx"}]' \
    > test.out 2>&1
eval_tap $? 26 'AdminBulkUpdateMyItems' test.out

#- 27 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'XlZnUaZY' \
    --namespace $AB_NAMESPACE \
    --userId 'XFRrZLXP' \
    --body '{"customAttributes": {"Ohg0hPdl": {}, "m4vtRsAF": {}, "tB7RxrKn": {}}, "qty": 93, "serverCustomAttributes": {"soMOFeCR": {}, "c8DakDXl": {}, "jvgowiTX": {}}, "slotId": "21zDo0jt", "slotUsed": 46, "source": "ECOMMERCE", "sourceItemId": "8udvGYiJ", "tags": ["AKJZrXwO", "HIxJZVN7", "Z0JRMoWG"], "type": "OYWGSixE"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminSaveItemToInventory' test.out

#- 28 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'mDIf43b2' \
    --namespace $AB_NAMESPACE \
    --userId 'llgtcsc4' \
    --body '[{"slotId": "qaoM8ypu", "sourceItemId": "pXjKyrDy"}, {"slotId": "e8uZfPJn", "sourceItemId": "wOoDCL2u"}, {"slotId": "lHRDUegm", "sourceItemId": "TufO7TJ1"}]' \
    > test.out 2>&1
eval_tap $? 28 'AdminBulkRemoveItems' test.out

#- 29 AdminBulkSaveItemToInventory
samples/cli/sample-apps Inventory adminBulkSaveItemToInventory \
    --inventoryId 'hiSeQ099' \
    --namespace $AB_NAMESPACE \
    --userId 'o1MaiLs5' \
    --body '[{"customAttributes": {"g1S0ZMr1": {}, "9GijY1YR": {}, "D0SZOLPT": {}}, "qty": 25, "serverCustomAttributes": {"7uGaWN0O": {}, "9IqOQrvE": {}, "w4OpBX28": {}}, "slotId": "8pehJO23", "slotUsed": 57, "source": "OTHER", "sourceItemId": "KuJmT1N3", "tags": ["k6u99MDv", "L6G9owvx", "XoH5dZnx"], "type": "mNXr1Ehb"}, {"customAttributes": {"QYg3u6vi": {}, "irFY0GhQ": {}, "5bZfIeqe": {}}, "qty": 28, "serverCustomAttributes": {"vHsgBTTh": {}, "fP5Cod1n": {}, "wEwLPvUm": {}}, "slotId": "0mKjZzES", "slotUsed": 65, "source": "ECOMMERCE", "sourceItemId": "vzOaRC2r", "tags": ["ollh6iIP", "c8IwZNHz", "QP7FZ76p"], "type": "tiZS6t23"}, {"customAttributes": {"bsFWfWxy": {}, "VaPtgUwY": {}, "ROUYnRtc": {}}, "qty": 91, "serverCustomAttributes": {"NuxdXETO": {}, "Ppzx02iQ": {}, "03xYVPa8": {}}, "slotId": "lsinHoba", "slotUsed": 63, "source": "ECOMMERCE", "sourceItemId": "BCKvmV83", "tags": ["bEsSiBoH", "YHz0nKWE", "CKR8DNTX"], "type": "B63opSWp"}]' \
    > test.out 2>&1
eval_tap $? 29 'AdminBulkSaveItemToInventory' test.out

#- 30 AdminUpdateUserInventoriesByInventoryCode
samples/cli/sample-apps Inventory adminUpdateUserInventoriesByInventoryCode \
    --inventoryConfigurationCode '1jd8PhdV' \
    --namespace $AB_NAMESPACE \
    --userId 'cj7h1Ha8' \
    --body '{"incMaxSlots": 46}' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateUserInventoriesByInventoryCode' test.out

#- 31 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'nlGEskCw' \
    --body '{"customAttributes": {"oBk5uQR1": {}, "Rh83pgA1": {}, "wOQzVBTt": {}}, "inventoryConfigurationCode": "xYEheM3y", "qty": 53, "serverCustomAttributes": {"fHKxOzJl": {}, "GgS3sKla": {}, "rrJqQQSx": {}}, "slotId": "ZA1hSmHr", "slotUsed": 81, "source": "OTHER", "sourceItemId": "SOKSTFwa", "tags": ["b4OalYJ3", "GFP9UhVr", "MnePpovM"], "type": "jqL5qo2k"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminSaveItem' test.out

#- 32 AdminBulkSaveItem
samples/cli/sample-apps Inventory adminBulkSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'A2KzhiYg' \
    --body '[{"customAttributes": {"mba3l6Rr": {}, "qizAwScu": {}, "yumi4IGc": {}}, "inventoryConfigurationCode": "Jvcpl74C", "qty": 85, "serverCustomAttributes": {"MwW3pqo8": {}, "tkBnptBN": {}, "AAq7p9YX": {}}, "slotId": "I8n0gA3d", "slotUsed": 8, "source": "ECOMMERCE", "sourceItemId": "mOwzBd9U", "tags": ["h6UMv911", "Kh34oVZ7", "859bxduA"], "type": "0mxXVj7o"}, {"customAttributes": {"VV2WjcUI": {}, "kHtncbYS": {}, "uWWjG95S": {}}, "inventoryConfigurationCode": "9H7Hquse", "qty": 53, "serverCustomAttributes": {"vwdoCpv8": {}, "kNQ59Xe4": {}, "GHA407V8": {}}, "slotId": "5jjFfiYt", "slotUsed": 36, "source": "ECOMMERCE", "sourceItemId": "n1B4C8Py", "tags": ["GNKfJ4kG", "aGabu9NM", "YPzqFQsf"], "type": "ZgxLLNDi"}, {"customAttributes": {"VLZB5nQr": {}, "sVYEAIjG": {}, "tAjh5xIx": {}}, "inventoryConfigurationCode": "5trl6Jys", "qty": 23, "serverCustomAttributes": {"qPmkcg1u": {}, "4b0JWpKS": {}, "qcnC3rev": {}}, "slotId": "KAWNL6D3", "slotUsed": 15, "source": "ECOMMERCE", "sourceItemId": "rq6IYjsq", "tags": ["lUc6VZjX", "w0aCz25H", "27f1pQjQ"], "type": "jT0d67la"}]' \
    > test.out 2>&1
eval_tap $? 32 'AdminBulkSaveItem' test.out

#- 33 AdminSyncUserEntitlements
samples/cli/sample-apps Inventory adminSyncUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'mLBC6ACt' \
    > test.out 2>&1
eval_tap $? 33 'AdminSyncUserEntitlements' test.out

#- 34 AdminPurchasable
samples/cli/sample-apps Inventory adminPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'gVYrAn9y' \
    --body '{"entitlementType": "feocHnSG", "inventoryConfig": {"slotUsed": 56}, "itemId": "KJFeSjMJ", "itemType": "gDicPCNT", "items": [{"bundledQty": 18, "entitlementType": "qd4AZOZo", "inventoryConfig": {"slotUsed": 65}, "itemId": "LPSNUALZ", "itemType": "KNhQETkH", "sku": "TWuqcDNm", "stackable": true, "useCount": 43}, {"bundledQty": 70, "entitlementType": "N6uKbNbW", "inventoryConfig": {"slotUsed": 53}, "itemId": "Brj11pAZ", "itemType": "ALzHivEZ", "sku": "dHGsCEQJ", "stackable": false, "useCount": 9}, {"bundledQty": 22, "entitlementType": "S1MitmzM", "inventoryConfig": {"slotUsed": 43}, "itemId": "ft8zyqYB", "itemType": "8JbY5N5l", "sku": "Thx5pJlj", "stackable": false, "useCount": 47}], "quantity": 67, "sku": "tVQDyOyO", "stackable": true, "useCount": 89}' \
    > test.out 2>&1
eval_tap $? 34 'AdminPurchasable' test.out

#- 35 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'FscuHQtY' \
    --limit '39' \
    --offset '15' \
    --sortBy 'updatedAt:desc' \
    > test.out 2>&1
eval_tap $? 35 'PublicListInventoryConfigurations' test.out

#- 36 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '28' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 36 'PublicListItemTypes' test.out

#- 37 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '54' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 37 'PublicListTags' test.out

#- 38 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'zrxxjnYc' \
    --limit '28' \
    --offset '35' \
    --sortBy 'updatedAt:desc' \
    > test.out 2>&1
eval_tap $? 38 'PublicListInventories' test.out

#- 39 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'daM7tkIx' \
    --namespace $AB_NAMESPACE \
    --body '{"options": ["uqBnu9Af", "07Hi1zTF", "1QwevzGw"], "qty": 10, "slotId": "GvxY8kEM", "sourceItemId": "tLhEzR9H"}' \
    > test.out 2>&1
eval_tap $? 39 'PublicConsumeMyItem' test.out

#- 40 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'CUufsAqm' \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '11' \
    --sortBy 'createdAt:asc' \
    --sourceItemId 'fr9GzGm1' \
    --tags 'OceFy5w1' \
    > test.out 2>&1
eval_tap $? 40 'PublicListItems' test.out

#- 41 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'JrFTLBes' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"jtEqD4lm": {}, "kSP8QgQr": {}, "WzGZzrSO": {}}, "slotId": "eSiad1tY", "sourceItemId": "hXnUAPOh", "tags": ["xy7gvVaB", "0gE0KDaa", "o98sBrQ9"]}, {"customAttributes": {"nIHSyIzl": {}, "eNdSWwCv": {}, "Vx8mwGST": {}}, "slotId": "SJxBjkSS", "sourceItemId": "EV3hsngJ", "tags": ["SuP3AFQG", "gJHSiDkr", "gi26P1nR"]}, {"customAttributes": {"aWJ9hTta": {}, "LfGisWCw": {}, "w6yqSSDL": {}}, "slotId": "IT8UlynD", "sourceItemId": "DuNZThks", "tags": ["uXYV20kP", "CHK2E65J", "FchtDTKI"]}]' \
    > test.out 2>&1
eval_tap $? 41 'PublicBulkUpdateMyItems' test.out

#- 42 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'QB2LYmRG' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "PkbInZX7", "sourceItemId": "ppODlYuU"}, {"slotId": "0VCnIf5G", "sourceItemId": "utWgQ7fi"}, {"slotId": "Nk0CfXNP", "sourceItemId": "2qkQX1Fu"}]' \
    > test.out 2>&1
eval_tap $? 42 'PublicBulkRemoveMyItems' test.out

#- 43 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'zgMjcwOU' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 95, "slotId": "MKJb6iYJ", "sourceItemId": "6sn4123Q"}, {"qty": 43, "slotId": "JYxqsNuE", "sourceItemId": "UUpcU6Vh"}, {"qty": 65, "slotId": "61Ig85LM", "sourceItemId": "aIr1SNGN"}], "srcInventoryId": "YUJAHsmQ"}' \
    > test.out 2>&1
eval_tap $? 43 'PublicMoveMyItems' test.out

#- 44 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'ONfAaeK8' \
    --namespace $AB_NAMESPACE \
    --slotId 'dCAfzlwU' \
    --sourceItemId '16zN3VZO' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE