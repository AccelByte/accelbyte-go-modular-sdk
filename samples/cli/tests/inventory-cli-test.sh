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
    --body '{"message": "zWcLMPzN", "operations": [{"consumeItems": [{"dateRangeValidation": false, "inventoryId": "pDoPQFXi", "options": ["oncZjhbD", "9uMzCdsd", "PbOkBi69"], "qty": 86, "slotId": "XbQKAUF9", "sourceItemId": "hhM64uZK"}, {"dateRangeValidation": false, "inventoryId": "pmR9ofQW", "options": ["X4dUenjL", "Xs4OjliJ", "gHgys4CW"], "qty": 39, "slotId": "MFIOwFJY", "sourceItemId": "upODGFes"}, {"dateRangeValidation": false, "inventoryId": "iTgBpruo", "options": ["DTi7PBG9", "UXFjQXXB", "CDZidBe5"], "qty": 19, "slotId": "HcVLzO7P", "sourceItemId": "Ygd7LTKj"}], "createItems": [{"customAttributes": {"rYxJbWCK": {}, "YLMqPWo5": {}, "oUWekoAw": {}}, "inventoryConfigurationCode": "BEyJRXA7", "inventoryId": "0T1UYTv8", "qty": 13, "serverCustomAttributes": {"h7WvVp7v": {}, "NPgYYyQ0": {}, "i4FgyPY8": {}}, "slotId": "cxzWrbSX", "slotUsed": 53, "source": "OTHER", "sourceItemId": "D9beHOBr", "tags": ["yam5nwRd", "ySCorlQF", "QZA2dA2m"], "toSpecificInventory": false, "type": "9h4CoMDn"}, {"customAttributes": {"BKO8vV2p": {}, "VpyGCnhj": {}, "mKdR9Tth": {}}, "inventoryConfigurationCode": "5YbCSRn0", "inventoryId": "qSfSRAmG", "qty": 37, "serverCustomAttributes": {"vih7JL57": {}, "1FiCQrL2": {}, "SnN6HcSb": {}}, "slotId": "rx2PBz0T", "slotUsed": 95, "source": "ECOMMERCE", "sourceItemId": "E8G0ZbPB", "tags": ["lCZ3t1Jy", "budCcNaR", "XZKcVYHR"], "toSpecificInventory": true, "type": "V6gLvlp2"}, {"customAttributes": {"3qSXOpWA": {}, "z9trYEqs": {}, "gZvpWfyp": {}}, "inventoryConfigurationCode": "f7VCNNBQ", "inventoryId": "5nx4Qo31", "qty": 88, "serverCustomAttributes": {"Vbc03j94": {}, "OW3Jhbqy": {}, "oTbBNsDy": {}}, "slotId": "ZG0p7wie", "slotUsed": 77, "source": "ECOMMERCE", "sourceItemId": "aUcKcWlw", "tags": ["0ftHqdAy", "FTcjMsFk", "bb28DUV7"], "toSpecificInventory": true, "type": "0qvUnfmP"}], "removeItems": [{"inventoryId": "y3jsZvn2", "slotId": "GPh7ladK", "sourceItemId": "OUuC7qMA"}, {"inventoryId": "zzYnWMCm", "slotId": "AbCUuG4E", "sourceItemId": "0UNlUwYJ"}, {"inventoryId": "jjRPg0X7", "slotId": "Fx2XDm3M", "sourceItemId": "LWgOrJlc"}], "targetUserId": "ZC3FWK3C", "updateItems": [{"customAttributes": {"jn24WwgQ": {}, "co4iYhks": {}, "KqKXwNts": {}}, "inventoryId": "OGGpErWS", "serverCustomAttributes": {"J9In92y7": {}, "mLGgphhj": {}, "bRWgtyRC": {}}, "slotId": "z7RLMtL3", "sourceItemId": "PdM5LyQt", "tags": ["euzwipzf", "vkSxdA35", "A2SW5MTW"], "type": "LQthepqg"}, {"customAttributes": {"kVT8X8og": {}, "HbulGJrA": {}, "e45hNu26": {}}, "inventoryId": "8MNmGY6B", "serverCustomAttributes": {"l4mnaD1q": {}, "bC6fex6b": {}, "27b1dZHy": {}}, "slotId": "VyFL5xKk", "sourceItemId": "SYjotvzw", "tags": ["R7kBjX7m", "nFJn21YC", "a8MMWZ1k"], "type": "ngIFnQ4h"}, {"customAttributes": {"hjQ3BUP8": {}, "FpsGQhWq": {}, "3KNibbOa": {}}, "inventoryId": "fc5DD8RL", "serverCustomAttributes": {"BnP4P0vh": {}, "15Nf2Jaq": {}, "7cUSyhqz": {}}, "slotId": "AW8FUYBD", "sourceItemId": "77abdo5V", "tags": ["x6rl5IjN", "EWq9eLsR", "a3Q1w95f"], "type": "ubWI4KLA"}]}, {"consumeItems": [{"dateRangeValidation": false, "inventoryId": "Jlsi1dj6", "options": ["M3nCOhQG", "YC3zb4Ay", "C9Nn1T85"], "qty": 70, "slotId": "3KrXx875", "sourceItemId": "JyxwNcvJ"}, {"dateRangeValidation": true, "inventoryId": "6R5m9X6s", "options": ["LmDPbewx", "DcSBfaY5", "z9WOTNjI"], "qty": 13, "slotId": "mhyDV7A8", "sourceItemId": "ItfBTnmf"}, {"dateRangeValidation": false, "inventoryId": "bCsNPhWp", "options": ["W7u5AFhI", "vRL7n0wo", "R5mfSvYp"], "qty": 8, "slotId": "yxtOJkcb", "sourceItemId": "m73i1yez"}], "createItems": [{"customAttributes": {"9f6HeC0w": {}, "Z3spSH8E": {}, "9eDvAbvs": {}}, "inventoryConfigurationCode": "6h43WuhS", "inventoryId": "2cL8sq7E", "qty": 43, "serverCustomAttributes": {"aYqmeUtK": {}, "aELZYqGB": {}, "onDAP0zK": {}}, "slotId": "2w6gBVF2", "slotUsed": 34, "source": "OTHER", "sourceItemId": "X4H0qL6o", "tags": ["ofhtahXL", "mdYwg7Ke", "ioNq9gb7"], "toSpecificInventory": true, "type": "yuHKO0tM"}, {"customAttributes": {"jm14kPcy": {}, "O7innjL3": {}, "7ed3b1jy": {}}, "inventoryConfigurationCode": "h6EBgDmy", "inventoryId": "bkOVNwNr", "qty": 96, "serverCustomAttributes": {"OKWWONc0": {}, "qUqwk82F": {}, "r2Wm097M": {}}, "slotId": "I4NpffBN", "slotUsed": 3, "source": "OTHER", "sourceItemId": "BH0mnmMP", "tags": ["6ka3KKvR", "pRUxEMXi", "LzBt11qo"], "toSpecificInventory": true, "type": "DIi9NVYs"}, {"customAttributes": {"LRSFQgd2": {}, "Igc5kn2i": {}, "9F1r3q0N": {}}, "inventoryConfigurationCode": "CxujjJ9q", "inventoryId": "AddhEkXs", "qty": 99, "serverCustomAttributes": {"o0XMBvsY": {}, "2a0uUvU5": {}, "Qut7mJEH": {}}, "slotId": "XpSOQA12", "slotUsed": 51, "source": "ECOMMERCE", "sourceItemId": "0GQ3BBNF", "tags": ["egmfCp23", "sw3folkQ", "TGzmnwDk"], "toSpecificInventory": true, "type": "ACdb6YTx"}], "removeItems": [{"inventoryId": "8glHiDyD", "slotId": "pm2ZTAuk", "sourceItemId": "aCeCbjDL"}, {"inventoryId": "saYxPE7x", "slotId": "r0Bq1zRl", "sourceItemId": "B68dNm3G"}, {"inventoryId": "bOHa44ee", "slotId": "Cl9zQh13", "sourceItemId": "cF8dYycQ"}], "targetUserId": "7W9TPRsh", "updateItems": [{"customAttributes": {"dBgnrvTq": {}, "l9C5WuqB": {}, "7avoLwlD": {}}, "inventoryId": "FRxuJ3La", "serverCustomAttributes": {"hTPDKNPF": {}, "KkJUJ3TK": {}, "1MM9Q6t1": {}}, "slotId": "gsEbpEHa", "sourceItemId": "7G5WtM36", "tags": ["e1UV2lT5", "eh1Z3dhM", "Vx3fU6UX"], "type": "ga7dPAAV"}, {"customAttributes": {"oHRwBJ4X": {}, "8BoMVfIV": {}, "6TV38IzH": {}}, "inventoryId": "4bW82h8M", "serverCustomAttributes": {"SDU3LlQ9": {}, "ufjFe0sT": {}, "pBz9Tb2Q": {}}, "slotId": "DhbDW45p", "sourceItemId": "QOeZj1Qv", "tags": ["O5YRGFXG", "PXoVYkyd", "BFNP2kai"], "type": "q2XMJT28"}, {"customAttributes": {"L4UVFVyy": {}, "MZZhp4EW": {}, "NVDq3hQ9": {}}, "inventoryId": "g2lzv4Cd", "serverCustomAttributes": {"4u2hVyRZ": {}, "bkVRBVUs": {}, "tZWikpnZ": {}}, "slotId": "vGOw4CrT", "sourceItemId": "aKARZYHj", "tags": ["b3WuVdoY", "E5l3U6IJ", "ZEYUFm8y"], "type": "Xx0Pha0y"}]}, {"consumeItems": [{"dateRangeValidation": false, "inventoryId": "cB0xboxn", "options": ["NAtifcMs", "NJnWnxcV", "uynD1lfk"], "qty": 97, "slotId": "iPu4jDKq", "sourceItemId": "iu71gh13"}, {"dateRangeValidation": false, "inventoryId": "11GMyOV2", "options": ["m9dQBDxZ", "5m5yjd9Q", "WzqMgnzH"], "qty": 26, "slotId": "gccizJ5J", "sourceItemId": "l7l2i89o"}, {"dateRangeValidation": false, "inventoryId": "xQK5tvSZ", "options": ["FX7Z08Jl", "k584vDk8", "CAgfDzhU"], "qty": 100, "slotId": "b844pul4", "sourceItemId": "myw5Jt38"}], "createItems": [{"customAttributes": {"sSTo5Zml": {}, "5Z0gT5Fz": {}, "pQaKG47O": {}}, "inventoryConfigurationCode": "yL8rSBt9", "inventoryId": "5UJX3LOz", "qty": 76, "serverCustomAttributes": {"jQsic77z": {}, "05tCvvii": {}, "W2yMqH6j": {}}, "slotId": "ckt4wQR2", "slotUsed": 9, "source": "ECOMMERCE", "sourceItemId": "8Zj7o2T6", "tags": ["2I9N34IM", "MQndBkk2", "maYoZx7m"], "toSpecificInventory": false, "type": "vvFBcxYN"}, {"customAttributes": {"DuR8Dk6R": {}, "fPyGXqwK": {}, "yAECZhOS": {}}, "inventoryConfigurationCode": "iIX3l4dx", "inventoryId": "B813WpNA", "qty": 79, "serverCustomAttributes": {"zsQHS5Rx": {}, "W5sOaBUu": {}, "Z74uShUw": {}}, "slotId": "0jpXsKH8", "slotUsed": 68, "source": "ECOMMERCE", "sourceItemId": "2XRgknfs", "tags": ["7AQpwcfs", "ThqSpkCa", "o9xO66Un"], "toSpecificInventory": false, "type": "vULKS915"}, {"customAttributes": {"7PN6HVtZ": {}, "aBz0j1EC": {}, "Wv8aragg": {}}, "inventoryConfigurationCode": "wuwmlb5S", "inventoryId": "pqN9tjHp", "qty": 68, "serverCustomAttributes": {"FmAIDZ7W": {}, "cAHUTl8q": {}, "oGtnOM61": {}}, "slotId": "HDBawevF", "slotUsed": 54, "source": "ECOMMERCE", "sourceItemId": "Qty8Eqgi", "tags": ["ST5D3I4n", "Sf3JILaO", "1lMjIB8I"], "toSpecificInventory": true, "type": "XL0DESbL"}], "removeItems": [{"inventoryId": "J7XAF1Cv", "slotId": "wp7W4qVQ", "sourceItemId": "tQUvcfu9"}, {"inventoryId": "1YZarLYI", "slotId": "a70akUTS", "sourceItemId": "RC2jcRD8"}, {"inventoryId": "Rus5Qj2r", "slotId": "kGkIdSIY", "sourceItemId": "VABvOYt8"}], "targetUserId": "7kgPq8HG", "updateItems": [{"customAttributes": {"t2Golaa2": {}, "hMNLcwg2": {}, "A3oYzXVh": {}}, "inventoryId": "s4fWKVjo", "serverCustomAttributes": {"xjGCrqCJ": {}, "CokJR5XR": {}, "mfVPARkn": {}}, "slotId": "aBAs1y8Y", "sourceItemId": "Nuem9siD", "tags": ["Mwo9B6ap", "0XUhi6vf", "KV05qr4T"], "type": "PYNGDc0U"}, {"customAttributes": {"OhIV3kio": {}, "N1KkpJas": {}, "P1ZFwTys": {}}, "inventoryId": "Dm52KgkP", "serverCustomAttributes": {"nDAWpUhm": {}, "M83fkcSY": {}, "gdEG0FYr": {}}, "slotId": "RxcXOpl9", "sourceItemId": "0in7Yjcm", "tags": ["W5GnPciF", "osoMRVPq", "BZoAU6BY"], "type": "ABrWkUP9"}, {"customAttributes": {"Oy6OOcYI": {}, "xzj4zQuY": {}, "v9TYqQ2J": {}}, "inventoryId": "lVnXjitv", "serverCustomAttributes": {"E0yVcvBA": {}, "ltv0GZIn": {}, "n0xWe4M9": {}}, "slotId": "Eg9QUMLd", "sourceItemId": "rFDjAdQi", "tags": ["gg9EOPYw", "bBaxa7by", "UdAIBi8f"], "type": "O9u1qhX0"}]}], "requestId": "eiSmGY6Z"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListIntegrationConfigurations
samples/cli/sample-apps Inventory adminListIntegrationConfigurations \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '16' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 3 'AdminListIntegrationConfigurations' test.out

#- 4 AdminCreateIntegrationConfiguration
samples/cli/sample-apps Inventory adminCreateIntegrationConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["zNsRpKxn", "TrfTFDIf", "5hNtI1bz"], "serviceName": "1rD9bNTw", "targetInventoryCode": "QPnkc1Au"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateIntegrationConfiguration' test.out

#- 5 AdminUpdateIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateIntegrationConfiguration \
    --integrationConfigurationId 'j95OuQAb' \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["YyYtXAd0", "3LuAgJL8", "9m83EMSD"], "serviceName": "OCYOHuI4", "targetInventoryCode": "u7J1OGw8"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateIntegrationConfiguration' test.out

#- 6 AdminUpdateStatusIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateStatusIntegrationConfiguration \
    --integrationConfigurationId '9TCwdLs5' \
    --namespace $AB_NAMESPACE \
    --body '{"status": "INIT"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateStatusIntegrationConfiguration' test.out

#- 7 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'Z8UDrfCo' \
    --limit '22' \
    --offset '100' \
    --sortBy 'createdAt' \
    --userId 'GJSct8TQ' \
    > test.out 2>&1
eval_tap $? 7 'AdminListInventories' test.out

#- 8 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "LeYA8YPo", "userId": "kKkQvMTi"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateInventory' test.out

#- 9 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'ip4oA97H' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventory' test.out

#- 10 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'Z29neGu9' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 87}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateInventory' test.out

#- 11 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId '48lWZise' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "pkM7v0iW"}' \
    > test.out 2>&1
eval_tap $? 11 'DeleteInventory' test.out

#- 12 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'HOlstZiU' \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '72' \
    --sortBy 'updatedAt:asc' \
    --sourceItemId 'y5Sh5w23' \
    --tags 'DGwyWLL3' \
    > test.out 2>&1
eval_tap $? 12 'AdminListItems' test.out

#- 13 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'EcEMDfLA' \
    --namespace $AB_NAMESPACE \
    --slotId 'l5hDURfT' \
    --sourceItemId 'ra0qWLyh' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetInventoryItem' test.out

#- 14 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'Dr3iF9DO' \
    --limit '30' \
    --offset '100' \
    --sortBy 'updatedAt:asc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListInventoryConfigurations' test.out

#- 15 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "UgJbfSvA", "description": "Gutp21Vp", "initialMaxSlots": 93, "maxInstancesPerUser": 10, "maxUpgradeSlots": 66, "name": "x4HSVEPt"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateInventoryConfiguration' test.out

#- 16 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'Uq6na3bl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetInventoryConfiguration' test.out

#- 17 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'onew8zD7' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "j9eEXxcS", "description": "NWexRcwT", "initialMaxSlots": 49, "maxInstancesPerUser": 95, "maxUpgradeSlots": 98, "name": "r6jCm8C8"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateInventoryConfiguration' test.out

#- 18 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'f5D2qPkl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteInventoryConfiguration' test.out

#- 19 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '92' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 19 'AdminListItemTypes' test.out

#- 20 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "PQFKhz7T"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateItemType' test.out

#- 21 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'mZfU85Jl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminDeleteItemType' test.out

#- 22 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '64' \
    --owner 't3T1EZ3A' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 22 'AdminListTags' test.out

#- 23 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "mf93FZIs", "owner": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateTag' test.out

#- 24 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'AAoQm6hD' \
    > test.out 2>&1
eval_tap $? 24 'AdminDeleteTag' test.out

#- 25 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'bmf2rG9f' \
    --namespace $AB_NAMESPACE \
    --userId '0kVwO9z6' \
    --dateRangeValidation 'JsBNKYPP' \
    --body '{"options": ["mZOzmvee", "BPCfDzBz", "vYR4tdld"], "qty": 85, "slotId": "eZSQo6cu", "sourceItemId": "z6nnJ0UM"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminConsumeUserItem' test.out

#- 26 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'PdqkHm4b' \
    --namespace $AB_NAMESPACE \
    --userId 'mAUvaBQd' \
    --body '[{"customAttributes": {"b315hYg3": {}, "BPRIYkq9": {}, "QDHpsXfe": {}}, "serverCustomAttributes": {"mRgjekFb": {}, "H3pEpK9z": {}, "O31kQLWh": {}}, "slotId": "dJlqTk8R", "sourceItemId": "y49nW3vT", "tags": ["g1ZJuLFs", "HqtebbP0", "IyAQFwaN"], "type": "1UsciRsy"}, {"customAttributes": {"IUI6huYu": {}, "ewQfTPU8": {}, "4XSYBUhQ": {}}, "serverCustomAttributes": {"x7Vixuqq": {}, "MoyejtCX": {}, "Y5NYJaZJ": {}}, "slotId": "JfU2BepP", "sourceItemId": "fVVCG2sV", "tags": ["VmTCDCRt", "uk9tcUuS", "BMOXymCv"], "type": "YAcUw4Sm"}, {"customAttributes": {"XTCjLeEv": {}, "mYQoly2O": {}, "tzAxIplo": {}}, "serverCustomAttributes": {"5i4XXUss": {}, "RtU1vSpR": {}, "wviIvfIs": {}}, "slotId": "7dWnXofG", "sourceItemId": "ACHDJxZ1", "tags": ["D8mF1Zeb", "8LHeueHd", "TVfTb5QC"], "type": "F1lrceds"}]' \
    > test.out 2>&1
eval_tap $? 26 'AdminBulkUpdateMyItems' test.out

#- 27 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'viQF48MG' \
    --namespace $AB_NAMESPACE \
    --userId 'kMN5Pl5h' \
    --body '{"customAttributes": {"tlMMzEDv": {}, "pzkJyeZI": {}, "YWzhWnr4": {}}, "qty": 83, "serverCustomAttributes": {"zH78UuIG": {}, "G38p3sVQ": {}, "XgoMxIPC": {}}, "slotId": "NcKYzTgn", "slotUsed": 21, "source": "OTHER", "sourceItemId": "RjqwgbXg", "tags": ["ZQ5rYYSN", "5Pd1sO5Z", "1S2d2zyi"], "type": "01Y1kJ9G"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminSaveItemToInventory' test.out

#- 28 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'BbkxKQ0L' \
    --namespace $AB_NAMESPACE \
    --userId 'wVllQ2Ua' \
    --body '[{"slotId": "611uIQLz", "sourceItemId": "DPfhN3Wm"}, {"slotId": "QvPN95Hu", "sourceItemId": "3ViMwGL0"}, {"slotId": "GbRBYSPg", "sourceItemId": "eKXQ3gtF"}]' \
    > test.out 2>&1
eval_tap $? 28 'AdminBulkRemoveItems' test.out

#- 29 AdminBulkSaveItemToInventory
samples/cli/sample-apps Inventory adminBulkSaveItemToInventory \
    --inventoryId '2RDgmueX' \
    --namespace $AB_NAMESPACE \
    --userId 'mZVyew6H' \
    --body '[{"customAttributes": {"JC0rnobP": {}, "q2Nv8oLE": {}, "ljDiEYDv": {}}, "qty": 41, "serverCustomAttributes": {"eMyls8Lh": {}, "01i4ZDoo": {}, "JaOVaQYc": {}}, "slotId": "OkODiKVJ", "slotUsed": 14, "source": "ECOMMERCE", "sourceItemId": "yqxolJP0", "tags": ["pXAR2H8a", "RDSmUs38", "AsjctyMp"], "type": "0SbiGKPK"}, {"customAttributes": {"iD2Dw3A1": {}, "pYp43tGT": {}, "TDnRKSzb": {}}, "qty": 30, "serverCustomAttributes": {"uirnagA9": {}, "VJXZSjHY": {}, "1zY7KeHR": {}}, "slotId": "BZwl6GOV", "slotUsed": 53, "source": "OTHER", "sourceItemId": "8jsw0oJm", "tags": ["EZqGoLwK", "YkMmV9KG", "xEwduAZk"], "type": "ttnM9JbP"}, {"customAttributes": {"yrLzrD1B": {}, "rT30tHim": {}, "Sh9iyi0G": {}}, "qty": 16, "serverCustomAttributes": {"9UhpQ19t": {}, "Ej83J95n": {}, "u7wF9ymU": {}}, "slotId": "4SA87PBE", "slotUsed": 63, "source": "ECOMMERCE", "sourceItemId": "OZsMovcn", "tags": ["MjZrq2GG", "iFOjEXZ6", "UBaEoGbk"], "type": "5cmm44Xi"}]' \
    > test.out 2>&1
eval_tap $? 29 'AdminBulkSaveItemToInventory' test.out

#- 30 AdminUpdateUserInventoriesByInventoryCode
samples/cli/sample-apps Inventory adminUpdateUserInventoriesByInventoryCode \
    --inventoryConfigurationCode 'bDkvbBBe' \
    --namespace $AB_NAMESPACE \
    --userId 'NrH6O2Du' \
    --body '{"incMaxSlots": 80}' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateUserInventoriesByInventoryCode' test.out

#- 31 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'SikwkpbO' \
    --body '{"customAttributes": {"kFXWcPEy": {}, "sMkdpM6t": {}, "NU8aUsAF": {}}, "inventoryConfigurationCode": "OTsJMH2a", "qty": 100, "serverCustomAttributes": {"b2ABkN2t": {}, "e96vys4A": {}, "xseq3hwC": {}}, "slotId": "FgFQiNLI", "slotUsed": 18, "source": "ECOMMERCE", "sourceItemId": "2suL90Wj", "tags": ["oOvirjH2", "CmGZEcY8", "ZA6Ua2T6"], "type": "CRNlfK8l"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminSaveItem' test.out

#- 32 AdminBulkSaveItem
samples/cli/sample-apps Inventory adminBulkSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'GGAveSbB' \
    --body '[{"customAttributes": {"jIv2gynx": {}, "P1iAtsMs": {}, "6EcVWidn": {}}, "inventoryConfigurationCode": "efKVHkPj", "qty": 59, "serverCustomAttributes": {"MBUcQzEw": {}, "U51ygkRP": {}, "HdOpNheV": {}}, "slotId": "H15w7o9t", "slotUsed": 55, "source": "OTHER", "sourceItemId": "wAntRmHC", "tags": ["FrTkelIQ", "jHc9Hf57", "d79Il1jZ"], "type": "Xz8wnQfq"}, {"customAttributes": {"erbYatNM": {}, "ZAoQt9F3": {}, "hIATk5FF": {}}, "inventoryConfigurationCode": "Y7mSsbRW", "qty": 30, "serverCustomAttributes": {"QnOTYqgp": {}, "Hau79MPv": {}, "4eyBtRev": {}}, "slotId": "KH5Uwy59", "slotUsed": 1, "source": "ECOMMERCE", "sourceItemId": "A0uYSffM", "tags": ["nfBrNFhm", "cg6Qg3xO", "66u2m4Tp"], "type": "Sx76Iu8M"}, {"customAttributes": {"v9vsf6xg": {}, "qt6ALjzQ": {}, "hMlfjnae": {}}, "inventoryConfigurationCode": "Q8y9g2DT", "qty": 31, "serverCustomAttributes": {"tbL98uIF": {}, "lsk4jzsy": {}, "0Xbjpl5v": {}}, "slotId": "4Us7XPVM", "slotUsed": 100, "source": "ECOMMERCE", "sourceItemId": "sMkXh5mh", "tags": ["SdTSVcZr", "slN0QPoX", "imJfJAkz"], "type": "HOhqCPs3"}]' \
    > test.out 2>&1
eval_tap $? 32 'AdminBulkSaveItem' test.out

#- 33 AdminSyncUserEntitlements
samples/cli/sample-apps Inventory adminSyncUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'WUXXc2vP' \
    > test.out 2>&1
eval_tap $? 33 'AdminSyncUserEntitlements' test.out

#- 34 AdminPurchasable
samples/cli/sample-apps Inventory adminPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'EkDAOVWF' \
    --body '{"entitlementType": "iTqg7bPa", "inventoryConfig": {"slotUsed": 23}, "itemId": "m9tlH1Mu", "itemType": "acB92XCu", "items": [{"bundledQty": 17, "entitlementType": "qnAE0ILZ", "inventoryConfig": {"slotUsed": 26}, "itemId": "Iuh6uKR7", "itemType": "UlbvWrGp", "sku": "L0i1b64x", "stackable": true, "useCount": 38}, {"bundledQty": 33, "entitlementType": "1os2sXI5", "inventoryConfig": {"slotUsed": 45}, "itemId": "Oxb1kWmB", "itemType": "HF5k6uJk", "sku": "MZVtK6Yz", "stackable": false, "useCount": 92}, {"bundledQty": 25, "entitlementType": "XBGiMchC", "inventoryConfig": {"slotUsed": 21}, "itemId": "G6Y4jARM", "itemType": "nL3kr99h", "sku": "lFrU5wF4", "stackable": false, "useCount": 73}], "quantity": 27, "sku": "d3vkMXhv", "stackable": true, "useCount": 4}' \
    > test.out 2>&1
eval_tap $? 34 'AdminPurchasable' test.out

#- 35 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'fzD7CQnT' \
    --limit '75' \
    --offset '87' \
    --sortBy 'code:asc' \
    > test.out 2>&1
eval_tap $? 35 'PublicListInventoryConfigurations' test.out

#- 36 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '43' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 36 'PublicListItemTypes' test.out

#- 37 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '41' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 37 'PublicListTags' test.out

#- 38 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'RDHS1a14' \
    --limit '1' \
    --offset '99' \
    --sortBy 'updatedAt:desc' \
    > test.out 2>&1
eval_tap $? 38 'PublicListInventories' test.out

#- 39 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'UR2SugLl' \
    --namespace $AB_NAMESPACE \
    --body '{"options": ["xo53TqMs", "cEKOToxG", "GfFtUr7F"], "qty": 80, "slotId": "ezpXku6r", "sourceItemId": "Wr2yM9hn"}' \
    > test.out 2>&1
eval_tap $? 39 'PublicConsumeMyItem' test.out

#- 40 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'GLMHp9Tk' \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '37' \
    --sortBy 'createdAt' \
    --sourceItemId 'd3YTBLS6' \
    --tags 'lDJwQVRd' \
    > test.out 2>&1
eval_tap $? 40 'PublicListItems' test.out

#- 41 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'y9Xno7TA' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"mIvSZ9D4": {}, "ADvwLlAj": {}, "wox4OgmO": {}}, "slotId": "VMvaqvW2", "sourceItemId": "OfFXZqdK", "tags": ["r88H1kYF", "UdJBRIw2", "UjFk81R0"]}, {"customAttributes": {"kXPTab5t": {}, "4D3NhHkf": {}, "QRKOsxUJ": {}}, "slotId": "qeq1hkxW", "sourceItemId": "fnpqsrpX", "tags": ["480HhZq3", "36SaIiJT", "tL92VtQG"]}, {"customAttributes": {"GmKR4BvV": {}, "QXlk0A8o": {}, "pyZA4dgH": {}}, "slotId": "C6yjt7uX", "sourceItemId": "oi9UP4r3", "tags": ["y9AUNUNg", "mMlTCk6q", "qUMBHrLp"]}]' \
    > test.out 2>&1
eval_tap $? 41 'PublicBulkUpdateMyItems' test.out

#- 42 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId '8ZpArRdH' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "KZWdNQ4q", "sourceItemId": "7dXO3ux7"}, {"slotId": "mztefX1N", "sourceItemId": "00ehI1u0"}, {"slotId": "kaiH2zql", "sourceItemId": "JLglDZrl"}]' \
    > test.out 2>&1
eval_tap $? 42 'PublicBulkRemoveMyItems' test.out

#- 43 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'givD3Uri' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 67, "slotId": "ddVKxIQW", "sourceItemId": "w7Qar2Eb"}, {"qty": 76, "slotId": "1uuPEsgW", "sourceItemId": "wdBFuGSR"}, {"qty": 64, "slotId": "DFjsgCtQ", "sourceItemId": "1h3XL6jC"}], "srcInventoryId": "5VLS0ufB"}' \
    > test.out 2>&1
eval_tap $? 43 'PublicMoveMyItems' test.out

#- 44 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'sNrOzkqS' \
    --namespace $AB_NAMESPACE \
    --slotId 'TgjaElcf' \
    --sourceItemId 'i1t5NuvD' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE