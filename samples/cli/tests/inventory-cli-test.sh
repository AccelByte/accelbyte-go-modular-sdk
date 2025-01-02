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
    --body '{"message": "PDEc3nB1", "operations": [{"consumeItems": [{"dateRangeValidation": false, "inventoryId": "g9XHg0rg", "options": ["pMzMnDa2", "fWNnhOsL", "JK6eE5Bt"], "qty": 3, "slotId": "W192YjlL", "sourceItemId": "GRiOkMS8"}, {"dateRangeValidation": false, "inventoryId": "qi7zLRup", "options": ["ELMVJZTp", "eaHfStIo", "xg9P8JoK"], "qty": 68, "slotId": "kHIfD5hi", "sourceItemId": "kkzU5aEl"}, {"dateRangeValidation": true, "inventoryId": "4bHzXfZZ", "options": ["obQMc9MI", "A05hNIFl", "HgTB5Yb7"], "qty": 91, "slotId": "j0YHTg2F", "sourceItemId": "xPb0ID23"}], "createItems": [{"customAttributes": {"Rsoa2OOo": {}, "sIpLrvc2": {}, "WBVdyGyd": {}}, "inventoryConfigurationCode": "CqmlHQpz", "inventoryId": "GRaNFDMB", "qty": 73, "serverCustomAttributes": {"4yAxpNu8": {}, "JPu3cXLX": {}, "zcs2zv6d": {}}, "slotId": "FZc0dtcj", "slotUsed": 80, "source": "OTHER", "sourceItemId": "FbsZHrIz", "tags": ["x9KuQ8Yl", "pEPr07Ly", "VOhGL3jl"], "toSpecificInventory": true, "type": "qpyL9bRh"}, {"customAttributes": {"vG54elph": {}, "FxmyBQRo": {}, "vX39SokA": {}}, "inventoryConfigurationCode": "C4AtVt6h", "inventoryId": "TajkPkry", "qty": 58, "serverCustomAttributes": {"MzTg9q1K": {}, "zjPwAONC": {}, "dIPikaAX": {}}, "slotId": "Wf3q9hel", "slotUsed": 40, "source": "ECOMMERCE", "sourceItemId": "gqkacluw", "tags": ["CmBNnd8A", "1mvk61tt", "ZjaFjmFe"], "toSpecificInventory": false, "type": "ShpAgWsS"}, {"customAttributes": {"ZiFpGZFQ": {}, "rG2Jpa5G": {}, "BeIzJuJc": {}}, "inventoryConfigurationCode": "dfXz8vnE", "inventoryId": "rMi9lJ4O", "qty": 49, "serverCustomAttributes": {"hINXes5N": {}, "ARIYSeu4": {}, "suQwrMjU": {}}, "slotId": "OW92EFdo", "slotUsed": 30, "source": "OTHER", "sourceItemId": "R31L8jyz", "tags": ["uyU0uv3p", "bGUPGpa9", "BfmrP1xf"], "toSpecificInventory": false, "type": "sKbRyKpN"}], "removeItems": [{"inventoryId": "yN72h8a0", "slotId": "Vg1FJwqD", "sourceItemId": "3eIuTFmq"}, {"inventoryId": "WlKCsHr9", "slotId": "9jKL3qp2", "sourceItemId": "eTb7mRgg"}, {"inventoryId": "eksMykZW", "slotId": "sAw0hKSq", "sourceItemId": "lTqboprI"}], "targetUserId": "8IoN1swd", "updateItems": [{"customAttributes": {"h5PDIR6W": {}, "6sgb2ZF8": {}, "NI0DMwmN": {}}, "inventoryId": "0O9wadqX", "serverCustomAttributes": {"R2SC7BIo": {}, "77VhGJmB": {}, "R8F3qNCW": {}}, "slotId": "8nhlW8Gc", "sourceItemId": "7XBS0xIx", "tags": ["hx69UNBM", "IgmDWB8O", "4VDvvNzr"], "type": "VjnMgRtr"}, {"customAttributes": {"45tQMhSx": {}, "rVYd46Tz": {}, "OXVuiaD1": {}}, "inventoryId": "HRDV1oBN", "serverCustomAttributes": {"gZKoEfEG": {}, "Xvvi4fxd": {}, "P7rKjnaV": {}}, "slotId": "mfLKsDRI", "sourceItemId": "RJ5UhuUp", "tags": ["1YKy8uaZ", "vUJA9P23", "xUKsG98l"], "type": "OCcsupxH"}, {"customAttributes": {"cAqYqzH3": {}, "NtwzLhG1": {}, "thgWVUca": {}}, "inventoryId": "VKALQtwW", "serverCustomAttributes": {"zqiBrAgA": {}, "pvaapMQg": {}, "252WegPb": {}}, "slotId": "XlVhz4Li", "sourceItemId": "aPDQ7KtN", "tags": ["UUWNUbUU", "f1qdPXn2", "9ocnWZ1q"], "type": "vmoPfURj"}]}, {"consumeItems": [{"dateRangeValidation": false, "inventoryId": "AfDwfz3G", "options": ["VjCgkGta", "nOwtNrpB", "Xjh4Jpta"], "qty": 49, "slotId": "oPWlh0Zk", "sourceItemId": "Wmml0Obm"}, {"dateRangeValidation": false, "inventoryId": "mzPMYmPe", "options": ["JIwq5Zq1", "Ksw28I72", "aa9rgkzi"], "qty": 2, "slotId": "MM7qGt8y", "sourceItemId": "034VOsWW"}, {"dateRangeValidation": true, "inventoryId": "kv8xUeza", "options": ["rQQGWAJK", "gzKsLjlT", "TOkgqAli"], "qty": 85, "slotId": "4Z5doiVB", "sourceItemId": "bMVwtI8X"}], "createItems": [{"customAttributes": {"awCgrh4g": {}, "Eprf7BNu": {}, "9rKo7sIM": {}}, "inventoryConfigurationCode": "sopyxDp0", "inventoryId": "CSnFN8AR", "qty": 59, "serverCustomAttributes": {"UQYOfByy": {}, "D2yMg9Qa": {}, "oTBaLAW6": {}}, "slotId": "KYIsnCzH", "slotUsed": 24, "source": "OTHER", "sourceItemId": "KQI8UpTi", "tags": ["rx29gc9u", "aYtgjYYw", "iBFIzJsc"], "toSpecificInventory": false, "type": "WlW2n54c"}, {"customAttributes": {"S5mNll6R": {}, "o4nB8Xix": {}, "C9QBJKAu": {}}, "inventoryConfigurationCode": "BI6eBwpN", "inventoryId": "pxAI58Oq", "qty": 92, "serverCustomAttributes": {"OlH3klVb": {}, "Uh6pv07k": {}, "eqnPoNrg": {}}, "slotId": "b7P8lMg1", "slotUsed": 56, "source": "ECOMMERCE", "sourceItemId": "KeA8fgit", "tags": ["BPQGGYeF", "wly5hge8", "EqIbTnHq"], "toSpecificInventory": false, "type": "bG2EzNum"}, {"customAttributes": {"adIY1F8G": {}, "hg4g4Mpu": {}, "PZuVmKMN": {}}, "inventoryConfigurationCode": "YagtO9Jy", "inventoryId": "7PrJV8dZ", "qty": 24, "serverCustomAttributes": {"BFacth5h": {}, "ObWHd77k": {}, "3onQKN5I": {}}, "slotId": "LifUUSYc", "slotUsed": 34, "source": "OTHER", "sourceItemId": "6ECaVHKA", "tags": ["WbR5B9kX", "PbqxIaY3", "GUGMapEn"], "toSpecificInventory": true, "type": "wvFP9Aw1"}], "removeItems": [{"inventoryId": "67vr1odp", "slotId": "BZ66hxba", "sourceItemId": "6lVO7uHK"}, {"inventoryId": "C2kcA1wr", "slotId": "F0H2hKfp", "sourceItemId": "z8hQWvcI"}, {"inventoryId": "TAymwzQJ", "slotId": "h8lvy1q1", "sourceItemId": "1g3AY3Rn"}], "targetUserId": "U78uyCFv", "updateItems": [{"customAttributes": {"pXMDVeJj": {}, "xiR4J9so": {}, "5dXZjY32": {}}, "inventoryId": "Hr08hofX", "serverCustomAttributes": {"iGBpgV6v": {}, "zfAqbqsD": {}, "qeRoISqH": {}}, "slotId": "0DERI6rS", "sourceItemId": "RXieDlwq", "tags": ["QN77fHRf", "CSPGsHC5", "I3MoqNlS"], "type": "IhOU6jxy"}, {"customAttributes": {"MViDq8FY": {}, "haOfDm0N": {}, "z38S0428": {}}, "inventoryId": "b184c5U0", "serverCustomAttributes": {"Blgk0HZO": {}, "84zUaFeF": {}, "MF5SPyrS": {}}, "slotId": "uIm6FFZV", "sourceItemId": "pVOEbH4x", "tags": ["PK65ICsl", "ZcLI8jtn", "4YBG2l6V"], "type": "tdYkq4Vk"}, {"customAttributes": {"6VNBMOa0": {}, "deLibEOS": {}, "JOVhE3jV": {}}, "inventoryId": "xOYYLUYT", "serverCustomAttributes": {"CKmhjcQ0": {}, "TXyUGfYJ": {}, "dkIyX0g8": {}}, "slotId": "6PXreqLp", "sourceItemId": "HoBQnZSF", "tags": ["ultR4TbR", "wHBTkAAJ", "9pmGYVCz"], "type": "adSwVfe3"}]}, {"consumeItems": [{"dateRangeValidation": false, "inventoryId": "k7DJFekN", "options": ["YzG4erXD", "aylOv1gE", "mB3JsWVq"], "qty": 54, "slotId": "aCiPv7kv", "sourceItemId": "SAwlq9rO"}, {"dateRangeValidation": false, "inventoryId": "0T1goxhx", "options": ["z824woN8", "UaT7Q3YS", "cvoZgcz3"], "qty": 31, "slotId": "vB3Jnw4Y", "sourceItemId": "AyCjpVT4"}, {"dateRangeValidation": false, "inventoryId": "a0D6CUtm", "options": ["J9a97y2i", "l39octXC", "dTUdNeSX"], "qty": 22, "slotId": "Lq6UBb80", "sourceItemId": "c3GqlNV2"}], "createItems": [{"customAttributes": {"0CLTDQa8": {}, "ZSwuRixv": {}, "KGjvMGdj": {}}, "inventoryConfigurationCode": "D6Eb0TtO", "inventoryId": "gEC74tuW", "qty": 53, "serverCustomAttributes": {"XbPeZpcx": {}, "dJ6eijkN": {}, "aHW9VaCH": {}}, "slotId": "L1zpGvqo", "slotUsed": 79, "source": "OTHER", "sourceItemId": "Qu8sXGhQ", "tags": ["MsS9QhW5", "hNEmzVS9", "OWKfjTO6"], "toSpecificInventory": false, "type": "wQbRnrXA"}, {"customAttributes": {"sQB1T2GB": {}, "iJIicOxD": {}, "KyxORdVp": {}}, "inventoryConfigurationCode": "CYDp5nJu", "inventoryId": "ETJZq9cR", "qty": 40, "serverCustomAttributes": {"Vseqfw2j": {}, "TU12l5iw": {}, "pTNo9Kfh": {}}, "slotId": "yH6jwOju", "slotUsed": 11, "source": "ECOMMERCE", "sourceItemId": "wjFDM9C1", "tags": ["ftCh5nZL", "CAncGc9U", "BlHB8Qr9"], "toSpecificInventory": false, "type": "kEAiijZp"}, {"customAttributes": {"8HqaM4Kd": {}, "bFEsZrbQ": {}, "cl4ApCzj": {}}, "inventoryConfigurationCode": "swkp2Cb0", "inventoryId": "dizDiwHr", "qty": 51, "serverCustomAttributes": {"157KbMnC": {}, "uJkOqcGd": {}, "qbqSZgBe": {}}, "slotId": "E8fiNlz3", "slotUsed": 95, "source": "OTHER", "sourceItemId": "a5bnLBej", "tags": ["MwVeuN8r", "N7acUpxk", "r7vgdwGy"], "toSpecificInventory": false, "type": "y2XL6T2e"}], "removeItems": [{"inventoryId": "ytvxqbdm", "slotId": "3tI9ZU3G", "sourceItemId": "Q9J36dUb"}, {"inventoryId": "iCAfc34W", "slotId": "WhnRELiX", "sourceItemId": "ZlKmdFRr"}, {"inventoryId": "D7rv5NZ2", "slotId": "sop74kAP", "sourceItemId": "u3WGFJT0"}], "targetUserId": "nGVvFWu3", "updateItems": [{"customAttributes": {"EIg8AkAq": {}, "NZLIUBaX": {}, "FirE101D": {}}, "inventoryId": "byTn6PaX", "serverCustomAttributes": {"2iuMpqy4": {}, "8VZpwlHO": {}, "p8Aly8d6": {}}, "slotId": "0kBDmr0J", "sourceItemId": "VLhIp9kW", "tags": ["7DDq8h8j", "pcZ6zCkU", "sGZ2MMJ1"], "type": "wUAkAUBt"}, {"customAttributes": {"JS3J2zDc": {}, "dmD6dO6p": {}, "XDEN0FtZ": {}}, "inventoryId": "Dkb5vaLg", "serverCustomAttributes": {"f5cnKZvJ": {}, "dH92QF4m": {}, "a5JHMa2W": {}}, "slotId": "yNfgaA42", "sourceItemId": "6Mqyvm4n", "tags": ["nOYX1fzq", "isSq7nEd", "t496rbzJ"], "type": "wCrYEvew"}, {"customAttributes": {"tiRT7nBt": {}, "hQ2uytgR": {}, "7WjagYS6": {}}, "inventoryId": "UhXUZ64X", "serverCustomAttributes": {"zQdsjeM9": {}, "bsJrtdI9": {}, "neYbGVtt": {}}, "slotId": "o6oVXHRL", "sourceItemId": "lOdfNVwl", "tags": ["uyR9XFDj", "zVhKBean", "DIda9Dv3"], "type": "HJe1rYPo"}]}], "requestId": "mQRLqiNY"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListIntegrationConfigurations
samples/cli/sample-apps Inventory adminListIntegrationConfigurations \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '42' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 3 'AdminListIntegrationConfigurations' test.out

#- 4 AdminCreateIntegrationConfiguration
samples/cli/sample-apps Inventory adminCreateIntegrationConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["5NZZ8vz3", "CyJ7coTV", "q0EcKKBF"], "serviceName": "TZhMuyfk", "targetInventoryCode": "ZYvPcR4P"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateIntegrationConfiguration' test.out

#- 5 AdminUpdateIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateIntegrationConfiguration \
    --integrationConfigurationId 'VL6MZhre' \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["weKHpB7l", "7ROOSuBN", "oKou6nrw"], "serviceName": "Z27UJt3H", "targetInventoryCode": "PVQZKRSc"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateIntegrationConfiguration' test.out

#- 6 AdminUpdateStatusIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateStatusIntegrationConfiguration \
    --integrationConfigurationId '8fnmGSju' \
    --namespace $AB_NAMESPACE \
    --body '{"status": "INIT"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateStatusIntegrationConfiguration' test.out

#- 7 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'pSj3saoi' \
    --limit '38' \
    --offset '36' \
    --sortBy 'updatedAt' \
    --userId 'Ttjsd02h' \
    > test.out 2>&1
eval_tap $? 7 'AdminListInventories' test.out

#- 8 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "MyzhpSQ7", "userId": "L6Y72BDA"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateInventory' test.out

#- 9 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'mhGqehBG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventory' test.out

#- 10 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'cVv7HYnJ' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 37}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateInventory' test.out

#- 11 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'fiterrUY' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "If8PLcAu"}' \
    > test.out 2>&1
eval_tap $? 11 'DeleteInventory' test.out

#- 12 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'fxbmaALP' \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '36' \
    --sortBy 'updatedAt' \
    --sourceItemId 'BKNOJGTr' \
    --tags 'KPLIGYaV' \
    > test.out 2>&1
eval_tap $? 12 'AdminListItems' test.out

#- 13 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'UB1KsnRW' \
    --namespace $AB_NAMESPACE \
    --slotId 'vTI6tbsY' \
    --sourceItemId 'NK7hRPSL' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetInventoryItem' test.out

#- 14 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'oP0xgwOh' \
    --limit '96' \
    --offset '70' \
    --sortBy 'code:desc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListInventoryConfigurations' test.out

#- 15 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "AAmDb4qz", "description": "7RRkZoe7", "initialMaxSlots": 68, "maxInstancesPerUser": 48, "maxUpgradeSlots": 0, "name": "SW09PY6X"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateInventoryConfiguration' test.out

#- 16 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'DM4tPeXo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetInventoryConfiguration' test.out

#- 17 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'vir4QnU3' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "S3TWIzdU", "description": "X3Ptx2wn", "initialMaxSlots": 85, "maxInstancesPerUser": 73, "maxUpgradeSlots": 74, "name": "K1so6iLe"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateInventoryConfiguration' test.out

#- 18 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'h66euDay' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteInventoryConfiguration' test.out

#- 19 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '76' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 19 'AdminListItemTypes' test.out

#- 20 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "vI73AT1G"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateItemType' test.out

#- 21 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'iOmz6I11' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminDeleteItemType' test.out

#- 22 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '27' \
    --owner 'gN3TgOgQ' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 22 'AdminListTags' test.out

#- 23 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "U0SFHLn4", "owner": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateTag' test.out

#- 24 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'Ksua1ZEs' \
    > test.out 2>&1
eval_tap $? 24 'AdminDeleteTag' test.out

#- 25 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId '87f2hUKE' \
    --namespace $AB_NAMESPACE \
    --userId 'MJKoMdZb' \
    --dateRangeValidation 'FD8CiU0W' \
    --body '{"options": ["PuSIyU40", "mw9IUeoj", "oBk8jddi"], "qty": 18, "slotId": "CjXTLSVC", "sourceItemId": "wbJDdlXC"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminConsumeUserItem' test.out

#- 26 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'czaiz6Ev' \
    --namespace $AB_NAMESPACE \
    --userId 'VBy63VGw' \
    --body '[{"customAttributes": {"G8OQjErW": {}, "J5XxP1X5": {}, "U89vtSyu": {}}, "serverCustomAttributes": {"5zIGO8WO": {}, "ki5ngJks": {}, "rTd3lW83": {}}, "slotId": "iddxWR5F", "sourceItemId": "3VtVMJDs", "tags": ["4Mxg4tt3", "H7AO1BW0", "lUciodkr"], "type": "Tyi2cJQ2"}, {"customAttributes": {"W5pwaeHf": {}, "Sop3R1TZ": {}, "2ztPRicN": {}}, "serverCustomAttributes": {"jKhSh3hm": {}, "z5OYmraq": {}, "gWtIUArw": {}}, "slotId": "7GVqAR9r", "sourceItemId": "oE4hB0Pv", "tags": ["rksvpmcK", "2LHzPrtz", "nFsiwMtl"], "type": "RRjf1C2u"}, {"customAttributes": {"dTTRqaGG": {}, "IT39AwON": {}, "fDQOf0S3": {}}, "serverCustomAttributes": {"vhpH0zfA": {}, "uATbg92O": {}, "atDA4Vb3": {}}, "slotId": "7ZK1Hi06", "sourceItemId": "IraUWkBE", "tags": ["D0WFg1Ei", "IwSUafjN", "H0lA84R5"], "type": "EONyvk5g"}]' \
    > test.out 2>&1
eval_tap $? 26 'AdminBulkUpdateMyItems' test.out

#- 27 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'EywuCW5o' \
    --namespace $AB_NAMESPACE \
    --userId 'fMunCMw1' \
    --body '{"customAttributes": {"zsifNioP": {}, "1vK7Nqzq": {}, "cfJddmhs": {}}, "qty": 86, "serverCustomAttributes": {"dozm5Gf9": {}, "MyQkbpns": {}, "bCODsVbu": {}}, "slotId": "AKKmPQli", "slotUsed": 99, "source": "OTHER", "sourceItemId": "LSLoSsNU", "tags": ["DRopRLMC", "N8i6p5Ry", "rGvhVddt"], "type": "J8vF56y1"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminSaveItemToInventory' test.out

#- 28 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'DxObGPwj' \
    --namespace $AB_NAMESPACE \
    --userId 'lPL0wyCo' \
    --body '[{"slotId": "HjOzgVwM", "sourceItemId": "n1X0qpqi"}, {"slotId": "oLwFc7GO", "sourceItemId": "zNrFMjic"}, {"slotId": "lpHUJEwB", "sourceItemId": "bSLFZJtv"}]' \
    > test.out 2>&1
eval_tap $? 28 'AdminBulkRemoveItems' test.out

#- 29 AdminBulkSaveItemToInventory
samples/cli/sample-apps Inventory adminBulkSaveItemToInventory \
    --inventoryId '7BB0S3Ax' \
    --namespace $AB_NAMESPACE \
    --userId 'Zlf8N8vW' \
    --body '[{"customAttributes": {"vx1ufntY": {}, "q1jD66KN": {}, "tb5gTIgY": {}}, "qty": 7, "serverCustomAttributes": {"gTcP36Mt": {}, "3HSGfaNS": {}, "5UbMSgKO": {}}, "slotId": "RIz7i2l7", "slotUsed": 50, "source": "ECOMMERCE", "sourceItemId": "ez79FP5I", "tags": ["2XmxwpGj", "h9RziHuU", "fI0cgn9D"], "type": "5Weapol9"}, {"customAttributes": {"9arLqfYK": {}, "LvlW4mbB": {}, "I8ZXbOPz": {}}, "qty": 59, "serverCustomAttributes": {"gs0LBzkl": {}, "8qbe9RDu": {}, "6PvbtBVX": {}}, "slotId": "Wi8opt2c", "slotUsed": 20, "source": "OTHER", "sourceItemId": "4nMFKCl4", "tags": ["fF9u4rg2", "TVoV8JOL", "RWojhHL5"], "type": "chFtBVR7"}, {"customAttributes": {"qNE5sT5S": {}, "vuFaHsq8": {}, "syvX02UB": {}}, "qty": 61, "serverCustomAttributes": {"cAO0nfkY": {}, "22Q0tbna": {}, "QLPNmmFf": {}}, "slotId": "5kkeAcME", "slotUsed": 66, "source": "OTHER", "sourceItemId": "KeJE4UZ5", "tags": ["tcB2aJDC", "NYtpAm5W", "FYI4TGgt"], "type": "HJWM66SY"}]' \
    > test.out 2>&1
eval_tap $? 29 'AdminBulkSaveItemToInventory' test.out

#- 30 AdminUpdateUserInventoriesByInventoryCode
samples/cli/sample-apps Inventory adminUpdateUserInventoriesByInventoryCode \
    --inventoryConfigurationCode 'DAOhRF0Z' \
    --namespace $AB_NAMESPACE \
    --userId 'xeYQrr99' \
    --body '{"incMaxSlots": 93}' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateUserInventoriesByInventoryCode' test.out

#- 31 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'FZB58R9M' \
    --body '{"customAttributes": {"js2z8kLz": {}, "5ErX1SMB": {}, "yvojVGEH": {}}, "inventoryConfigurationCode": "bz60YCUD", "qty": 11, "serverCustomAttributes": {"csfzVusx": {}, "zPFshaEv": {}, "RrAvlCBV": {}}, "slotId": "n0cVwxCV", "slotUsed": 29, "source": "OTHER", "sourceItemId": "jSiFNslR", "tags": ["v27ymZ3E", "naJAMFUH", "c46X8P5m"], "type": "p30KofYv"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminSaveItem' test.out

#- 32 AdminBulkSaveItem
samples/cli/sample-apps Inventory adminBulkSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'Y1VSlyip' \
    --body '[{"customAttributes": {"IydRYmtp": {}, "van84ib1": {}, "8zO7ROys": {}}, "inventoryConfigurationCode": "6VfabGFC", "qty": 72, "serverCustomAttributes": {"LWOdz3aF": {}, "0TSOromH": {}, "yqzcqlv8": {}}, "slotId": "g3JVyoCD", "slotUsed": 10, "source": "ECOMMERCE", "sourceItemId": "eFqRFnCv", "tags": ["ObttmiIg", "FmhoTRE4", "ev8VWblJ"], "type": "9dn9Caza"}, {"customAttributes": {"U4gvQ1NC": {}, "UtNFUtxZ": {}, "tcZCqlp2": {}}, "inventoryConfigurationCode": "RvMUqYAE", "qty": 82, "serverCustomAttributes": {"MRZc8bHK": {}, "Srxy9wkZ": {}, "5TnW8uQS": {}}, "slotId": "u6dSGjXl", "slotUsed": 17, "source": "OTHER", "sourceItemId": "jI7nXLtq", "tags": ["mB3H14wm", "u9aruuGg", "tB1Ulql8"], "type": "WVucKPub"}, {"customAttributes": {"bFh1XGG9": {}, "TXQma2Om": {}, "4CXMPrBa": {}}, "inventoryConfigurationCode": "fv3LTUoS", "qty": 61, "serverCustomAttributes": {"XGqWPLV5": {}, "CAJcSweh": {}, "bBw5BVhM": {}}, "slotId": "OPeTsa3U", "slotUsed": 26, "source": "OTHER", "sourceItemId": "uhMYj94y", "tags": ["dCSpYnyt", "TZHbr2BW", "U9BYSjkX"], "type": "JMSuUFKs"}]' \
    > test.out 2>&1
eval_tap $? 32 'AdminBulkSaveItem' test.out

#- 33 AdminSyncUserEntitlements
samples/cli/sample-apps Inventory adminSyncUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'ZEKTTaqI' \
    > test.out 2>&1
eval_tap $? 33 'AdminSyncUserEntitlements' test.out

#- 34 AdminPurchasable
samples/cli/sample-apps Inventory adminPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'HO1XuDKs' \
    --body '{"entitlementType": "1eKg3xYT", "inventoryConfig": {"slotUsed": 73}, "itemId": "watMytcE", "itemType": "zJSHBcEu", "items": [{"bundledQty": 90, "entitlementType": "ZdcNNUI2", "inventoryConfig": {"slotUsed": 46}, "itemId": "HQasaxzZ", "itemType": "2JNmZgPQ", "sku": "c9u1Y1eo", "stackable": false, "useCount": 53}, {"bundledQty": 93, "entitlementType": "lk2fN6tf", "inventoryConfig": {"slotUsed": 74}, "itemId": "7c6yImBd", "itemType": "CzifkvQZ", "sku": "xcBiQxl5", "stackable": false, "useCount": 41}, {"bundledQty": 91, "entitlementType": "F88c5Uzb", "inventoryConfig": {"slotUsed": 86}, "itemId": "gkR6gxf3", "itemType": "wotG63cV", "sku": "jBBa4hbU", "stackable": true, "useCount": 7}], "quantity": 83, "sku": "OautwMf3", "stackable": true, "useCount": 74}' \
    > test.out 2>&1
eval_tap $? 34 'AdminPurchasable' test.out

#- 35 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'jXSp2nl9' \
    --limit '87' \
    --offset '99' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 35 'PublicListInventoryConfigurations' test.out

#- 36 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '89' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 36 'PublicListItemTypes' test.out

#- 37 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '92' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 37 'PublicListTags' test.out

#- 38 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'M17e61qL' \
    --limit '5' \
    --offset '27' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 38 'PublicListInventories' test.out

#- 39 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'YLbmtkdR' \
    --namespace $AB_NAMESPACE \
    --body '{"options": ["tJ8EvXWB", "RxnohKws", "tJ5RDmpx"], "qty": 69, "slotId": "xBJsuAJV", "sourceItemId": "Rc05oAM2"}' \
    > test.out 2>&1
eval_tap $? 39 'PublicConsumeMyItem' test.out

#- 40 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'cEhro1tf' \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '98' \
    --sortBy 'createdAt' \
    --sourceItemId 'fOOOnrHy' \
    --tags 'QiYsralT' \
    > test.out 2>&1
eval_tap $? 40 'PublicListItems' test.out

#- 41 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'a5O577SJ' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"FttwQtJh": {}, "XNXo1P2E": {}, "CxiJKf5F": {}}, "slotId": "Gf4ZCMtQ", "sourceItemId": "N6FuJhRk", "tags": ["2IRJpxKz", "Km51guKS", "UbjG5ky8"]}, {"customAttributes": {"Wjd4QPnq": {}, "MtseNksH": {}, "osXia36R": {}}, "slotId": "5nU0yled", "sourceItemId": "oeMUpJrm", "tags": ["TvoupIbr", "HqaBKVrO", "ePQjDRCa"]}, {"customAttributes": {"GT9aIj7P": {}, "wNBJCmlg": {}, "NlUgidyj": {}}, "slotId": "UKERx02U", "sourceItemId": "Kj2AuQSt", "tags": ["OYFnWk0U", "LHNGV2lB", "7SHtonwI"]}]' \
    > test.out 2>&1
eval_tap $? 41 'PublicBulkUpdateMyItems' test.out

#- 42 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'KA7DEDpt' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "RCvDLW0U", "sourceItemId": "tX18B5c8"}, {"slotId": "Hmgtk0eL", "sourceItemId": "yxIaV0vy"}, {"slotId": "8vNvF7er", "sourceItemId": "ErFL5fwN"}]' \
    > test.out 2>&1
eval_tap $? 42 'PublicBulkRemoveMyItems' test.out

#- 43 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'yONAWc9V' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 0, "slotId": "kSEaMAcj", "sourceItemId": "VKGif9D8"}, {"qty": 47, "slotId": "Gm6KvbOI", "sourceItemId": "RrbSo6hd"}, {"qty": 7, "slotId": "fXCQRmns", "sourceItemId": "PHNesmqA"}], "srcInventoryId": "hvPmpuIL"}' \
    > test.out 2>&1
eval_tap $? 43 'PublicMoveMyItems' test.out

#- 44 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'Nq5cPuxA' \
    --namespace $AB_NAMESPACE \
    --slotId 'pvPL0z6d' \
    --sourceItemId 'YXQzRiYr' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE