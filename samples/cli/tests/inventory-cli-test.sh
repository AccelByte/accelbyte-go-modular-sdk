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
    --body '{"message": "14sUWTuF", "operations": [{"consumeItems": [{"dateRangeValidation": false, "inventoryId": "ZLH8pmlA", "options": ["zoCceAAZ", "4TNG3Slw", "Sa2vfcdz"], "qty": 75, "slotId": "1IZ780r5", "sourceItemId": "mSE0PwCH"}, {"dateRangeValidation": true, "inventoryId": "LYdCddYZ", "options": ["nEoZRKOR", "I2B4huLt", "25H6V4Co"], "qty": 74, "slotId": "KIAfYoAy", "sourceItemId": "VJjLb0F0"}, {"dateRangeValidation": false, "inventoryId": "ody7kYQg", "options": ["UMQjpmyz", "PAKHmBMJ", "P43qXwxm"], "qty": 27, "slotId": "gQJXnT5I", "sourceItemId": "Vwb6v6Rr"}], "createItems": [{"customAttributes": {"4keswgRx": {}, "9nxmkZQF": {}, "SlVQUzIQ": {}}, "inventoryConfigurationCode": "hcsrgSvg", "inventoryId": "NrlXTsHT", "qty": 12, "serverCustomAttributes": {"BBrLbi7D": {}, "sVa5fymQ": {}, "Q5mslVAD": {}}, "slotId": "Mxnt1foW", "slotUsed": 23, "source": "ECOMMERCE", "sourceItemId": "0LsXzXJQ", "tags": ["hFDIqTGM", "FmtJ1P4o", "soc6wAXk"], "toSpecificInventory": false, "type": "jYe5UI5x"}, {"customAttributes": {"orOx6JRM": {}, "p6mizMwE": {}, "Wu3zq1Og": {}}, "inventoryConfigurationCode": "1ulnttC0", "inventoryId": "mAQDPE6V", "qty": 95, "serverCustomAttributes": {"P4xuUWVK": {}, "9mp0uVv7": {}, "4NfzMtPb": {}}, "slotId": "w3RzXUXv", "slotUsed": 29, "source": "ECOMMERCE", "sourceItemId": "e79NhJb0", "tags": ["dTnfwvWN", "XbOLdi8E", "4baPN43G"], "toSpecificInventory": false, "type": "BUvkcWGe"}, {"customAttributes": {"yWiX5VpK": {}, "24r05vc9": {}, "1viY2e1i": {}}, "inventoryConfigurationCode": "UtNpgTQt", "inventoryId": "6DfCMbBg", "qty": 86, "serverCustomAttributes": {"4p9nHDDU": {}, "PQwpjV6v": {}, "HFVBcGIh": {}}, "slotId": "5V39l94u", "slotUsed": 61, "source": "OTHER", "sourceItemId": "zxNdeFS0", "tags": ["iW7eUZzf", "B03krJ8H", "62dLPJ3Q"], "toSpecificInventory": true, "type": "UPHKplIF"}], "removeItems": [{"inventoryId": "lyGo6xSB", "slotId": "d6ql4FQI", "sourceItemId": "nDfsOlph"}, {"inventoryId": "KVu8eM85", "slotId": "X2NWU05x", "sourceItemId": "OJAbXZMm"}, {"inventoryId": "y7xRPUWn", "slotId": "xjveWKuL", "sourceItemId": "MMrQvFMp"}], "targetUserId": "gWJpNIui", "updateItems": [{"customAttributes": {"PZVePZXk": {}, "j1cbl9rm": {}, "EIInSjIo": {}}, "inventoryId": "kPcC1ltm", "serverCustomAttributes": {"qL13S9H9": {}, "m10Zbrbk": {}, "qCw6VaGF": {}}, "slotId": "K1hQdqxz", "sourceItemId": "A3qPBqOn", "tags": ["LkvtEyFc", "6tAlE6cm", "WQ2JYzZ0"], "type": "kbaqvMqO"}, {"customAttributes": {"DlcHgmuo": {}, "JyJZbcko": {}, "oHFDV5qo": {}}, "inventoryId": "j1dplpjE", "serverCustomAttributes": {"IyfEBoaS": {}, "tVgkNRXa": {}, "AcV5WKsb": {}}, "slotId": "ITj4dcN2", "sourceItemId": "FWCr8jJ7", "tags": ["B9W2GHDN", "wevyhKll", "N29pNMUp"], "type": "FaQ0Vkdd"}, {"customAttributes": {"qXT9ZFK6": {}, "Ndej01LA": {}, "Pu6k7ZVk": {}}, "inventoryId": "5cqcBMKD", "serverCustomAttributes": {"LnFUXR96": {}, "9fKHzRLB": {}, "P2ukINaT": {}}, "slotId": "ETlLpnw5", "sourceItemId": "ueJdT2Jz", "tags": ["hQBqeTxD", "mPSJlULf", "aPDmcI8X"], "type": "39TObJUH"}]}, {"consumeItems": [{"dateRangeValidation": true, "inventoryId": "d5BTvswo", "options": ["YhxyyFGC", "tNWY4kmV", "USDnLPlM"], "qty": 8, "slotId": "2ZzJ6RVj", "sourceItemId": "DbhtGz3T"}, {"dateRangeValidation": false, "inventoryId": "HnKTY97C", "options": ["6nCXvxoQ", "OMlglnnc", "YjiVZaTE"], "qty": 7, "slotId": "yZty4V8J", "sourceItemId": "bwI8qfPB"}, {"dateRangeValidation": true, "inventoryId": "T2YSCCn9", "options": ["eJ8Kexqo", "2aIWk5SR", "Q0QSpYkb"], "qty": 44, "slotId": "351424UU", "sourceItemId": "LzBEC3YO"}], "createItems": [{"customAttributes": {"0W7aCbp4": {}, "JlL6yxmj": {}, "fMxAwtbm": {}}, "inventoryConfigurationCode": "VhGAHW6O", "inventoryId": "CVZokoMo", "qty": 46, "serverCustomAttributes": {"G9aohOCo": {}, "i6rMzI4v": {}, "nZqN6vr4": {}}, "slotId": "iajBkvoT", "slotUsed": 87, "source": "OTHER", "sourceItemId": "44jVGLCc", "tags": ["dWoPo7ZJ", "zNUAw09u", "PzVJBwVW"], "toSpecificInventory": true, "type": "YI6WvZnJ"}, {"customAttributes": {"yN08AD2X": {}, "50pjDIlW": {}, "6bM64fOK": {}}, "inventoryConfigurationCode": "DiKl1iEq", "inventoryId": "EEGdp63x", "qty": 84, "serverCustomAttributes": {"OyNvG1jM": {}, "LZBPn6fI": {}, "aV4mTX8U": {}}, "slotId": "kudxModn", "slotUsed": 58, "source": "ECOMMERCE", "sourceItemId": "1EwdvatJ", "tags": ["iair300e", "xBH3rZO0", "XvwMlmjL"], "toSpecificInventory": false, "type": "E2l7t9Gk"}, {"customAttributes": {"iNmcmsXc": {}, "gZn9ouAC": {}, "nCdt3xXU": {}}, "inventoryConfigurationCode": "GHoB7k3N", "inventoryId": "5Y5JLAw7", "qty": 67, "serverCustomAttributes": {"9FiJVqnX": {}, "Z6vO32zr": {}, "HVKDFAwW": {}}, "slotId": "9d81ILRO", "slotUsed": 52, "source": "ECOMMERCE", "sourceItemId": "4iYVsnOB", "tags": ["Lc7KJRfh", "7mXugoQM", "NwDhgezc"], "toSpecificInventory": true, "type": "HFhMChHV"}], "removeItems": [{"inventoryId": "Hpl22MnG", "slotId": "z9RWhKpK", "sourceItemId": "00ad5XpA"}, {"inventoryId": "b7PaDUrD", "slotId": "mYg8mR7b", "sourceItemId": "z4VinTWi"}, {"inventoryId": "5jrSP661", "slotId": "ffS5T8F6", "sourceItemId": "hUWh6WFu"}], "targetUserId": "73eANxsF", "updateItems": [{"customAttributes": {"YaXCvHby": {}, "YZ96Gsun": {}, "jIhfNPRF": {}}, "inventoryId": "91e2bqoE", "serverCustomAttributes": {"C6eCWMDF": {}, "YMqFDuUp": {}, "NTp2YR8h": {}}, "slotId": "44rkvwLM", "sourceItemId": "IxSOcuNf", "tags": ["CTK0PejT", "0Vm7oVjR", "zZsNdXQr"], "type": "qPD8OuQO"}, {"customAttributes": {"NHzaTYi9": {}, "OUC1YlTV": {}, "a3Z1AsGi": {}}, "inventoryId": "NnbQnaRC", "serverCustomAttributes": {"wTFFkNhL": {}, "1fjGoTUu": {}, "ro6A7VO1": {}}, "slotId": "SCwJ3TM1", "sourceItemId": "PNWvhBkc", "tags": ["9u9LnhO1", "6m6QicfY", "RQxmiQeQ"], "type": "nQWDWqJa"}, {"customAttributes": {"maom8LxH": {}, "fKUT6opN": {}, "26p9ruMc": {}}, "inventoryId": "Qz5tRSPE", "serverCustomAttributes": {"ahONq8vo": {}, "NEBvv5Sq": {}, "1wOzkfxw": {}}, "slotId": "WqHJTXX2", "sourceItemId": "i5z80CZo", "tags": ["CFheM21u", "5CA92GIx", "PG3EHUpN"], "type": "pwAOOGfn"}]}, {"consumeItems": [{"dateRangeValidation": false, "inventoryId": "62dRRPNI", "options": ["m1G9BQDp", "39SL0PuI", "16x2lbVD"], "qty": 66, "slotId": "Zgszcm0U", "sourceItemId": "vc8Yrc5R"}, {"dateRangeValidation": false, "inventoryId": "DS4ZHQwG", "options": ["wZMQF1uh", "N81KYLVk", "9X3zn7Hb"], "qty": 7, "slotId": "Cwfdksta", "sourceItemId": "GRvgkGuu"}, {"dateRangeValidation": true, "inventoryId": "21mjDhso", "options": ["C2pGktEM", "7W4homMx", "ksdyLGBo"], "qty": 90, "slotId": "3yQUrtV2", "sourceItemId": "qbnpyu5w"}], "createItems": [{"customAttributes": {"gP3WrVv6": {}, "MRrKCCEN": {}, "RVEDyKu6": {}}, "inventoryConfigurationCode": "6bbcCvKG", "inventoryId": "NLO3dEfb", "qty": 59, "serverCustomAttributes": {"lsv61K1m": {}, "KEXvIaPK": {}, "YgM8KyxQ": {}}, "slotId": "YOjiwjQH", "slotUsed": 57, "source": "ECOMMERCE", "sourceItemId": "pfx4s006", "tags": ["S5mH8ZKQ", "T1cqY01y", "pBNjrEb7"], "toSpecificInventory": true, "type": "S02D9yye"}, {"customAttributes": {"RUj6Wh0O": {}, "lIGYRCTy": {}, "DPupDEe2": {}}, "inventoryConfigurationCode": "8xbqilEe", "inventoryId": "7Kk7xTTl", "qty": 60, "serverCustomAttributes": {"Z1aAkUwD": {}, "JI8NiphC": {}, "bViHbMsI": {}}, "slotId": "6YS8HeXA", "slotUsed": 42, "source": "ECOMMERCE", "sourceItemId": "Z0RudlkO", "tags": ["JSCinBbd", "rZQF9YzX", "Bg4umWn7"], "toSpecificInventory": true, "type": "qz4kP2Dc"}, {"customAttributes": {"iy41XdF2": {}, "Ulz5L6i7": {}, "9pXn1ko9": {}}, "inventoryConfigurationCode": "miuaXYIp", "inventoryId": "g83yQGDR", "qty": 73, "serverCustomAttributes": {"3HQEpHUI": {}, "VQ1RVPaR": {}, "wDPCGrRW": {}}, "slotId": "dKEl77R4", "slotUsed": 11, "source": "OTHER", "sourceItemId": "K9406HAo", "tags": ["DAnJ9PeB", "4tiLpfG2", "Z0c1Fokx"], "toSpecificInventory": false, "type": "c9N6zVwd"}], "removeItems": [{"inventoryId": "Q8LTCk83", "slotId": "GpbpctqR", "sourceItemId": "GdfGvHln"}, {"inventoryId": "Sba7GFv0", "slotId": "KLGGBuVU", "sourceItemId": "1ZRbgaXt"}, {"inventoryId": "EA2sPB6z", "slotId": "M4qNibGM", "sourceItemId": "VgdZrUOz"}], "targetUserId": "gAvRV8x7", "updateItems": [{"customAttributes": {"z0kROA8E": {}, "FMMgveml": {}, "0UK9vlwC": {}}, "inventoryId": "z2m7xvzP", "serverCustomAttributes": {"TTyZJYu6": {}, "eF3g0O1d": {}, "NW6XIs6P": {}}, "slotId": "PRPkloNf", "sourceItemId": "qn0sWzUu", "tags": ["myrslYn3", "I4cJApes", "Xw19xUAj"], "type": "7YobgdTr"}, {"customAttributes": {"FTDQiKvc": {}, "nvBnrA2d": {}, "Nq72xIHc": {}}, "inventoryId": "5za9X3Rj", "serverCustomAttributes": {"aLjD8GdC": {}, "qHlXRrw2": {}, "grUxMXu4": {}}, "slotId": "vVa80QNk", "sourceItemId": "hrFQ7i5c", "tags": ["3RcCT0Ca", "g2T6c98r", "N8Z0sYAo"], "type": "2C11tpbw"}, {"customAttributes": {"dxoNfTlE": {}, "WcExl2ef": {}, "mboeRy5K": {}}, "inventoryId": "k6w12khH", "serverCustomAttributes": {"Wk7WKAnm": {}, "RT25dDad": {}, "AA9razpl": {}}, "slotId": "utZfBFU6", "sourceItemId": "GDU13SJ4", "tags": ["e8tZ91GM", "84vTY77Q", "pUYB4l4b"], "type": "Z7t7ENeh"}]}], "requestId": "hInYks7E"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListIntegrationConfigurations
samples/cli/sample-apps Inventory adminListIntegrationConfigurations \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '84' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 3 'AdminListIntegrationConfigurations' test.out

#- 4 AdminCreateIntegrationConfiguration
samples/cli/sample-apps Inventory adminCreateIntegrationConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["LasI8wkM", "DhK7qdrM", "TUM8EuqP"], "serviceName": "n1b42ddw", "targetInventoryCode": "5pibC6wF"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateIntegrationConfiguration' test.out

#- 5 AdminUpdateIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateIntegrationConfiguration \
    --integrationConfigurationId 'WTGOVDpS' \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["yl1irlP4", "K1oNwfF3", "4YQUEeY6"], "serviceName": "GIOWLft4", "targetInventoryCode": "yBoQh0MI"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateIntegrationConfiguration' test.out

#- 6 AdminUpdateStatusIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateStatusIntegrationConfiguration \
    --integrationConfigurationId 'QyfJIRC0' \
    --namespace $AB_NAMESPACE \
    --body '{"status": "TIED"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateStatusIntegrationConfiguration' test.out

#- 7 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'ptPLLLfE' \
    --limit '91' \
    --offset '30' \
    --sortBy 'createdAt:asc' \
    --userId 'X05ZEzbr' \
    > test.out 2>&1
eval_tap $? 7 'AdminListInventories' test.out

#- 8 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "QsAcv6lP", "userId": "gmHws7Zp"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateInventory' test.out

#- 9 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'To72CuQQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventory' test.out

#- 10 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId 'SBD2Ld0S' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 36}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateInventory' test.out

#- 11 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'i5YmbZaQ' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "GTwiJxuT"}' \
    > test.out 2>&1
eval_tap $? 11 'DeleteInventory' test.out

#- 12 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId '490w8JoB' \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '34' \
    --sortBy 'createdAt:asc' \
    --sourceItemId 'a9GrWFyf' \
    --tags 'ejsPpPYn' \
    > test.out 2>&1
eval_tap $? 12 'AdminListItems' test.out

#- 13 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'Z63y2nYq' \
    --namespace $AB_NAMESPACE \
    --slotId 'hGXLLgYl' \
    --sourceItemId '5IAw83I0' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetInventoryItem' test.out

#- 14 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'OAE5oarC' \
    --limit '70' \
    --offset '63' \
    --sortBy 'updatedAt' \
    > test.out 2>&1
eval_tap $? 14 'AdminListInventoryConfigurations' test.out

#- 15 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "8BrWyfLc", "description": "vrytiVKM", "initialMaxSlots": 80, "maxInstancesPerUser": 41, "maxUpgradeSlots": 61, "name": "8WNVsqxd"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateInventoryConfiguration' test.out

#- 16 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId '8wYhde1v' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetInventoryConfiguration' test.out

#- 17 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'mFQtnlDl' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "ltI4IQ8y", "description": "ZBYV94NZ", "initialMaxSlots": 78, "maxInstancesPerUser": 19, "maxUpgradeSlots": 4, "name": "g8LZ0k1v"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateInventoryConfiguration' test.out

#- 18 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'zPJNfJv9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteInventoryConfiguration' test.out

#- 19 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '92' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 19 'AdminListItemTypes' test.out

#- 20 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "iCJ2N2VH"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateItemType' test.out

#- 21 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName '06fTHh3s' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminDeleteItemType' test.out

#- 22 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '63' \
    --owner '9dFbeoEr' \
    --sortBy 'name:asc' \
    > test.out 2>&1
eval_tap $? 22 'AdminListTags' test.out

#- 23 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "b7ZFJuEc", "owner": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateTag' test.out

#- 24 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'Zk23yvVQ' \
    > test.out 2>&1
eval_tap $? 24 'AdminDeleteTag' test.out

#- 25 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'Cx830Y6P' \
    --namespace $AB_NAMESPACE \
    --userId 'feq5wY3g' \
    --dateRangeValidation 'Ymhn32HW' \
    --body '{"options": ["DwKMKM5F", "hdFQyrl0", "48tEDMim"], "qty": 48, "slotId": "zim9sSnX", "sourceItemId": "WPJL8Ngh"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminConsumeUserItem' test.out

#- 26 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'ot87YfUi' \
    --namespace $AB_NAMESPACE \
    --userId 'kKJLMIg6' \
    --body '[{"customAttributes": {"kXi5pZAM": {}, "WKBj54IU": {}, "UKXckWYZ": {}}, "serverCustomAttributes": {"nxB6s3L9": {}, "pAm5SIZn": {}, "S1gu8xZn": {}}, "slotId": "N92fJfbD", "sourceItemId": "iKHPT5H4", "tags": ["vB23VIdJ", "mKBKGnG1", "gC0dUrEH"], "type": "KybltFQV"}, {"customAttributes": {"7UPs59Ul": {}, "59C4pUwO": {}, "brhy8CWj": {}}, "serverCustomAttributes": {"CQ5ZjAhG": {}, "9czmy6Vu": {}, "ZE6as13L": {}}, "slotId": "bDVc7OUp", "sourceItemId": "JyYkXktD", "tags": ["clcuT8JK", "MpwdgbL9", "ncIVYwwr"], "type": "Hc45Emlp"}, {"customAttributes": {"aYeIRmYM": {}, "Vb4NWS8A": {}, "sN5tMoyb": {}}, "serverCustomAttributes": {"8BqasG2M": {}, "ltEQVtnV": {}, "mz4Sy3yu": {}}, "slotId": "A8S4UGF6", "sourceItemId": "JYVvXrvK", "tags": ["CcSvaZU6", "R0ZZ3i1D", "QRLcUqyn"], "type": "t8RGftRM"}]' \
    > test.out 2>&1
eval_tap $? 26 'AdminBulkUpdateMyItems' test.out

#- 27 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'gI2o6duz' \
    --namespace $AB_NAMESPACE \
    --userId 'obuTTYXG' \
    --body '{"customAttributes": {"bGj7jjpn": {}, "ZWcRMKof": {}, "eRImFr0S": {}}, "qty": 76, "serverCustomAttributes": {"BUEVeQNq": {}, "t0qdvWBg": {}, "GGdK5uPs": {}}, "slotId": "eZdLiks3", "slotUsed": 67, "source": "OTHER", "sourceItemId": "iJrmLGmD", "tags": ["PGlQuCaF", "VP5j6kwr", "N7BoUN8f"], "type": "CZzJdfeZ"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminSaveItemToInventory' test.out

#- 28 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'CjcvYMrI' \
    --namespace $AB_NAMESPACE \
    --userId 'qHckZaVR' \
    --body '[{"slotId": "ek8YVM2D", "sourceItemId": "YMmFM2wc"}, {"slotId": "ch2Xc6bP", "sourceItemId": "N5FbyjKW"}, {"slotId": "2wayltaD", "sourceItemId": "XkiErUCX"}]' \
    > test.out 2>&1
eval_tap $? 28 'AdminBulkRemoveItems' test.out

#- 29 AdminBulkSaveItemToInventory
samples/cli/sample-apps Inventory adminBulkSaveItemToInventory \
    --inventoryId 'ZTxed6pK' \
    --namespace $AB_NAMESPACE \
    --userId '3WCPYmxm' \
    --body '[{"customAttributes": {"0Rw9EjQY": {}, "jXHFf8Rg": {}, "wTTw5mrC": {}}, "qty": 43, "serverCustomAttributes": {"rQ44T3if": {}, "NtO3QkMP": {}, "TQwyZPU8": {}}, "slotId": "8apTirUn", "slotUsed": 45, "source": "OTHER", "sourceItemId": "W3lQG1JU", "tags": ["R5n89Fbn", "08fs7w9g", "TlALstmW"], "type": "vGUg4qC5"}, {"customAttributes": {"2bH3lQKI": {}, "0Zq6pl4f": {}, "sOu7kA5K": {}}, "qty": 69, "serverCustomAttributes": {"IyVFDYGl": {}, "6Y1oc3Mu": {}, "beSnYhBU": {}}, "slotId": "LULOxOTV", "slotUsed": 95, "source": "ECOMMERCE", "sourceItemId": "oz4N0Dv4", "tags": ["eLuqcART", "iXbc2SYr", "IPqSeRzP"], "type": "Ugf5G4ta"}, {"customAttributes": {"R4ygHm48": {}, "U317xs0u": {}, "zPnld2Pc": {}}, "qty": 83, "serverCustomAttributes": {"q2W35qtH": {}, "bkkxSkTC": {}, "IPEHUG9t": {}}, "slotId": "7lK5DTtP", "slotUsed": 87, "source": "ECOMMERCE", "sourceItemId": "W0mKcNjl", "tags": ["OjBHxfq0", "NDy37CwP", "ZCs3dp9H"], "type": "4bSv757n"}]' \
    > test.out 2>&1
eval_tap $? 29 'AdminBulkSaveItemToInventory' test.out

#- 30 AdminUpdateUserInventoriesByInventoryCode
samples/cli/sample-apps Inventory adminUpdateUserInventoriesByInventoryCode \
    --inventoryConfigurationCode 'dgM7deRA' \
    --namespace $AB_NAMESPACE \
    --userId 'c0h85tEZ' \
    --body '{"incMaxSlots": 11}' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateUserInventoriesByInventoryCode' test.out

#- 31 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'z9UcETg1' \
    --body '{"customAttributes": {"2w7INn8i": {}, "jMnXUJOm": {}, "dsgxZ3Mj": {}}, "inventoryConfigurationCode": "KevPZAWb", "qty": 70, "serverCustomAttributes": {"avV2ysNB": {}, "AgJhn3NC": {}, "goxzAL4R": {}}, "slotId": "5sDQ3xMv", "slotUsed": 23, "source": "ECOMMERCE", "sourceItemId": "q99y79Xy", "tags": ["eSoq4FE0", "35N0SMTC", "Q3SnDEaE"], "type": "bHoWG5xJ"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminSaveItem' test.out

#- 32 AdminBulkSaveItem
samples/cli/sample-apps Inventory adminBulkSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'u0nCxqEK' \
    --body '[{"customAttributes": {"7DjYiav8": {}, "qobukl3E": {}, "ozqRvVsJ": {}}, "inventoryConfigurationCode": "Q4UyQpOL", "qty": 88, "serverCustomAttributes": {"QTodBIgg": {}, "ERl0fFt1": {}, "CTxN25da": {}}, "slotId": "GpimXv1v", "slotUsed": 48, "source": "ECOMMERCE", "sourceItemId": "vjV7Lkg3", "tags": ["sgIxGgO5", "j9Fov0mn", "Wm91cimg"], "type": "Nk4416Yk"}, {"customAttributes": {"w1EAt7Yh": {}, "4oRw4L1b": {}, "n4v0NhKm": {}}, "inventoryConfigurationCode": "aU2kEYZa", "qty": 56, "serverCustomAttributes": {"1r0bcfMo": {}, "hh7Sns2B": {}, "qWjrDB8Y": {}}, "slotId": "74NKmMKD", "slotUsed": 91, "source": "OTHER", "sourceItemId": "B2VzEugg", "tags": ["Eu2ap55o", "WATdLCzB", "vGJ3khkN"], "type": "It6B2Ahf"}, {"customAttributes": {"CFhbUfcR": {}, "gTcE0qFR": {}, "sNywRxPz": {}}, "inventoryConfigurationCode": "a2eAXzqK", "qty": 56, "serverCustomAttributes": {"jDn8iX0Z": {}, "z5lq8fDe": {}, "pKXqd8lQ": {}}, "slotId": "072fGBjL", "slotUsed": 22, "source": "ECOMMERCE", "sourceItemId": "Lq4Qzoh3", "tags": ["JpBOJaml", "4irytpa4", "4gouf7gN"], "type": "09VBlItB"}]' \
    > test.out 2>&1
eval_tap $? 32 'AdminBulkSaveItem' test.out

#- 33 AdminSyncUserEntitlements
samples/cli/sample-apps Inventory adminSyncUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'RCJGpyl4' \
    > test.out 2>&1
eval_tap $? 33 'AdminSyncUserEntitlements' test.out

#- 34 AdminPurchasable
samples/cli/sample-apps Inventory adminPurchasable \
    --namespace $AB_NAMESPACE \
    --userId '6eh7ZCaH' \
    --body '{"entitlementType": "n0uQ7JtX", "inventoryConfig": {"slotUsed": 46}, "itemId": "4dmmOqBD", "itemType": "QcHIr6mc", "items": [{"bundledQty": 84, "entitlementType": "kpQcs0xJ", "inventoryConfig": {"slotUsed": 62}, "itemId": "rvgUoCa4", "itemType": "SIAA8tc7", "sku": "OAyQPw0N", "stackable": true, "useCount": 62}, {"bundledQty": 38, "entitlementType": "iM1lFB85", "inventoryConfig": {"slotUsed": 23}, "itemId": "lZ2EnFNX", "itemType": "jGXrCouU", "sku": "1grdH7eb", "stackable": false, "useCount": 70}, {"bundledQty": 37, "entitlementType": "BxycuA3g", "inventoryConfig": {"slotUsed": 64}, "itemId": "4xm4Dxi3", "itemType": "yEa6EfeS", "sku": "9W0w7Ea5", "stackable": true, "useCount": 96}], "quantity": 1, "sku": "Rc8iQAQu", "stackable": true, "useCount": 37}' \
    > test.out 2>&1
eval_tap $? 34 'AdminPurchasable' test.out

#- 35 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code '3kqDaEUY' \
    --limit '67' \
    --offset '42' \
    --sortBy 'updatedAt:desc' \
    > test.out 2>&1
eval_tap $? 35 'PublicListInventoryConfigurations' test.out

#- 36 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '20' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 36 'PublicListItemTypes' test.out

#- 37 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --offset '62' \
    --sortBy 'createdAt:desc' \
    > test.out 2>&1
eval_tap $? 37 'PublicListTags' test.out

#- 38 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'leD7QL1d' \
    --limit '69' \
    --offset '63' \
    --sortBy 'updatedAt:asc' \
    > test.out 2>&1
eval_tap $? 38 'PublicListInventories' test.out

#- 39 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'BeqzI8yo' \
    --namespace $AB_NAMESPACE \
    --body '{"options": ["bTQ0rQ7O", "PE4UiNJY", "O6VrEIIC"], "qty": 15, "slotId": "rWM2zCel", "sourceItemId": "ugKVCGsn"}' \
    > test.out 2>&1
eval_tap $? 39 'PublicConsumeMyItem' test.out

#- 40 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId '7QMqVCvc' \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '73' \
    --sortBy 'createdAt:asc' \
    --sourceItemId 'QuGNvcBW' \
    --tags 'CCSv07el' \
    > test.out 2>&1
eval_tap $? 40 'PublicListItems' test.out

#- 41 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId '3KyJn7wj' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"awhZDpst": {}, "sqDT48NB": {}, "avM6qSQj": {}}, "slotId": "JaTtZxBq", "sourceItemId": "J8pvVQao", "tags": ["2d1CTWmZ", "ak0zsoNx", "2625kfNV"]}, {"customAttributes": {"ky1R3bPF": {}, "ZKM9mvdV": {}, "KbfbINB3": {}}, "slotId": "6pdYKc0h", "sourceItemId": "alxHPjA7", "tags": ["4wSgzKLS", "Eup09vJN", "aKD7hrnP"]}, {"customAttributes": {"v6gNM6kU": {}, "uP77JdRo": {}, "T68SJU4N": {}}, "slotId": "p6c6Nmrr", "sourceItemId": "Z9qiPnp8", "tags": ["6zGgIgJc", "H2g2UtUt", "nMlbyU47"]}]' \
    > test.out 2>&1
eval_tap $? 41 'PublicBulkUpdateMyItems' test.out

#- 42 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId 'nqNCb99B' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "2kxn2d2j", "sourceItemId": "RAfr0T8I"}, {"slotId": "qzCLcJtA", "sourceItemId": "UWIsnRy0"}, {"slotId": "0WG98t0K", "sourceItemId": "JbXdkPFt"}]' \
    > test.out 2>&1
eval_tap $? 42 'PublicBulkRemoveMyItems' test.out

#- 43 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'UN7X9yaK' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 63, "slotId": "RJVVmj1Y", "sourceItemId": "3F8jSGz0"}, {"qty": 5, "slotId": "T9CAtgLS", "sourceItemId": "PFIU6uNz"}, {"qty": 17, "slotId": "jKW2F4OO", "sourceItemId": "O8AQ4ipw"}], "srcInventoryId": "zPa84q6A"}' \
    > test.out 2>&1
eval_tap $? 43 'PublicMoveMyItems' test.out

#- 44 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'q0SPZSe9' \
    --namespace $AB_NAMESPACE \
    --slotId 'AbjWpQxR' \
    --sourceItemId 'aolLyH2X' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE