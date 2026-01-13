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
echo "1..99"

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

#- 2 GetNamespaceSlotConfig
eval_tap 0 2 'GetNamespaceSlotConfig # SKIP deprecated' test.out

#- 3 UpdateNamespaceSlotConfig
eval_tap 0 3 'UpdateNamespaceSlotConfig # SKIP deprecated' test.out

#- 4 DeleteNamespaceSlotConfig
eval_tap 0 4 'DeleteNamespaceSlotConfig # SKIP deprecated' test.out

#- 5 GetUserSlotConfig
eval_tap 0 5 'GetUserSlotConfig # SKIP deprecated' test.out

#- 6 UpdateUserSlotConfig
eval_tap 0 6 'UpdateUserSlotConfig # SKIP deprecated' test.out

#- 7 DeleteUserSlotConfig
eval_tap 0 7 'DeleteUserSlotConfig # SKIP deprecated' test.out

#- 8 GetUserProfiles
eval_tap 0 8 'GetUserProfiles # SKIP deprecated' test.out

#- 9 GetProfile
eval_tap 0 9 'GetProfile # SKIP deprecated' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
eval_tap 0 12 'PublicGetUserGameProfiles # SKIP deprecated' test.out

#- 13 PublicGetUserProfiles
eval_tap 0 13 'PublicGetUserProfiles # SKIP deprecated' test.out

#- 14 PublicCreateProfile
eval_tap 0 14 'PublicCreateProfile # SKIP deprecated' test.out

#- 15 PublicGetProfile
eval_tap 0 15 'PublicGetProfile # SKIP deprecated' test.out

#- 16 PublicUpdateProfile
eval_tap 0 16 'PublicUpdateProfile # SKIP deprecated' test.out

#- 17 PublicDeleteProfile
eval_tap 0 17 'PublicDeleteProfile # SKIP deprecated' test.out

#- 18 PublicGetProfileAttribute
eval_tap 0 18 'PublicGetProfileAttribute # SKIP deprecated' test.out

#- 19 PublicUpdateAttribute
eval_tap 0 19 'PublicUpdateAttribute # SKIP deprecated' test.out

#- 20 PublicGetUserNamespaceSlots
eval_tap 0 20 'PublicGetUserNamespaceSlots # SKIP deprecated' test.out

#- 21 PublicCreateUserNamespaceSlot
eval_tap 0 21 'PublicCreateUserNamespaceSlot # SKIP deprecated' test.out

#- 22 PublicGetSlotData
eval_tap 0 22 'PublicGetSlotData # SKIP deprecated' test.out

#- 23 PublicUpdateUserNamespaceSlot
eval_tap 0 23 'PublicUpdateUserNamespaceSlot # SKIP deprecated' test.out

#- 24 PublicDeleteUserNamespaceSlot
eval_tap 0 24 'PublicDeleteUserNamespaceSlot # SKIP deprecated' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
eval_tap 0 25 'PublicUpdateUserNamespaceSlotMetadata # SKIP deprecated' test.out

#- 26 GetGlobalStatItems
samples/cli/sample-apps Social getGlobalStatItems \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '71' \
    --statCodes '4lDxqP23' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'D4RktQTC' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'DAILY' \
    --limit '45' \
    --name 'RtYs6IyO' \
    --offset '94' \
    --sortBy 'k6Spf3BF' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "ANNUALLY", "description": "ubcfvkBv", "end": "1971-03-07T00:00:00Z", "id": "A9dXCMOv", "name": "kNY6feGI", "resetDate": 74, "resetDay": 31, "resetMonth": 27, "resetTime": "uXbmMZ6y", "seasonPeriod": 88, "start": "1984-08-17T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["dkF8a6ai", "7PmV6Zfb", "F2uqAkHQ"]}' \
    > test.out 2>&1
eval_tap $? 30 'BulkGetStatCycle' test.out

#- 31 ExportStatCycle
samples/cli/sample-apps Social exportStatCycle \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'ExportStatCycle' test.out

#- 32 ImportStatCycle
samples/cli/sample-apps Social importStatCycle \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 32 'ImportStatCycle' test.out

#- 33 GetStatCycle
samples/cli/sample-apps Social getStatCycle \
    --cycleId 'n2s9NpbN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId '9nn4IsV5' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "MONTHLY", "description": "niawlsQ6", "end": "1985-03-09T00:00:00Z", "name": "iAepSWJl", "resetDate": 89, "resetDay": 55, "resetMonth": 70, "resetTime": "BzzvQHXN", "seasonPeriod": 12, "start": "1975-05-18T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'g2xHuJCy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'u9fs6r04' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["Xw8igrWi", "UPkn1uiA", "wreCHmGe"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'sfd4Pxu9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'LGdps4sg' \
    --userIds 'kC5ti2b1' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9567466071462724, "statCode": "ql6jFofR", "userId": "Y963nfTY"}, {"inc": 0.9302073772611333, "statCode": "7yGbaMdB", "userId": "ciZQBM7O"}, {"inc": 0.23929682703209065, "statCode": "JZk7yKZ4", "userId": "X4sXcyat"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.31048217987215077, "statCode": "XHLsnETa", "userId": "yh9iNpKt"}, {"inc": 0.008412651581647279, "statCode": "ueh6Xtd2", "userId": "TX9KjHJi"}, {"inc": 0.04382197527292253, "statCode": "qC15wK3u", "userId": "OQb4rKmf"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'QUP9C8RK' \
    --userIds '["qnC9l1Np", "Anzi6yEs", "ZRGX0O4L"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "o7ObzRrH", "userId": "PtSP9G0g"}, {"statCode": "vt8xrOgk", "userId": "RowsNZ9K"}, {"statCode": "BCnWSqhN", "userId": "JKQzCFU6"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'jd9SFXGs' \
    --isGlobal 'false' \
    --isPublic 'true' \
    --limit '36' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": false, "cycleIds": ["FqnUVku2", "tfYNgQtf", "e7AcZBSu"], "cycleOverrides": [{"cycleId": "HQKtydp0", "maximum": 0.8060463933505683, "minimum": 0.6102339713110607}, {"cycleId": "VMWvndvg", "maximum": 0.697852252410397, "minimum": 0.14506774103687414}, {"cycleId": "x8R9N4ve", "maximum": 0.20663088372480787, "minimum": 0.37131352982856136}], "defaultValue": 0.6335109981746467, "description": "nBOO6Ifx", "globalAggregationMethod": "TOTAL", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": true, "maximum": 0.22853783199948807, "minimum": 0.8356661120921284, "name": "7Osjn2Ng", "setAsGlobal": true, "setBy": "SERVER", "statCode": "CsJhKABf", "tags": ["90gKue9x", "G5Qf3GWw", "3CcMYfiu"], "visibility": "SHOWALL"}' \
    > test.out 2>&1
eval_tap $? 44 'CreateStat' test.out

#- 45 ExportStats
samples/cli/sample-apps Social exportStats \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 45 'ExportStats' test.out

#- 46 ImportStats
samples/cli/sample-apps Social importStats \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 46 'ImportStats' test.out

#- 47 QueryStats
samples/cli/sample-apps Social queryStats \
    --namespace $AB_NAMESPACE \
    --isGlobal 'true' \
    --isPublic 'true' \
    --limit '58' \
    --offset '89' \
    --keyword '3oz7D4Za' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'l4aOqYDr' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'WIwDpQTZ' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode '7oZc6zJA' \
    --body '{"capCycleOverride": true, "cycleIds": ["RlipXaIP", "yNf8HK3e", "Y9TaHKd0"], "cycleOverrides": [{"cycleId": "eEi707R4", "maximum": 0.7104664200298602, "minimum": 0.6110283703683831}, {"cycleId": "tlRfnvGS", "maximum": 0.4997449222001671, "minimum": 0.48961936782439686}, {"cycleId": "WjTPd8Bd", "maximum": 0.9907314844551662, "minimum": 0.32902478689995296}], "defaultValue": 0.34270993397106875, "description": "hoDIRRSF", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": true, "maximum": 0.29021432123491697, "minimum": 0.5856551048754457, "name": "h2jB2Gzn", "setAsGlobal": true, "setBy": "SERVER", "tags": ["x5ElHnrv", "78FvlyIl", "NlfkSMMu"], "visibility": "SHOWALL"}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'wbWsHH9K' \
    --limit '99' \
    --offset '82' \
    --sortBy 'qbTfTEGb' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'qzLZxLvX' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'lzTfPWin' \
    --namespace $AB_NAMESPACE \
    --userId 'vexk0jfB' \
    --isPublic 'true' \
    --limit '11' \
    --offset '56' \
    --sortBy 'aPi1BgEH' \
    --statCodes 'I1c2aoTY' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '5aGtR89s' \
    --isPublic 'false' \
    --limit '40' \
    --offset '91' \
    --sortBy 'j471OHLZ' \
    --statCodes 'La5yV9MP' \
    --tags 'MytBUW4b' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'fYOl1dAl' \
    --body '[{"statCode": "kWD9hgtt"}, {"statCode": "uQ4G7Odc"}, {"statCode": "XA103pB6"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'ttut2HKU' \
    --body '[{"inc": 0.6963760957234676, "statCode": "DVO4ELU4"}, {"inc": 0.6227774531622655, "statCode": "8j4Tf03g"}, {"inc": 0.16602385038956147, "statCode": "KBxWZQLp"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'wGXFvIay' \
    --body '[{"inc": 0.11421799967360013, "statCode": "Wwa99J29"}, {"inc": 0.8473818296501526, "statCode": "0fdtnBLC"}, {"inc": 0.8807479869981228, "statCode": "5SC14v04"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'qZmuQK7j' \
    --body '[{"statCode": "OacTK9MG"}, {"statCode": "ikc1AzaY"}, {"statCode": "TMYSiTkQ"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'DUCgy3vX' \
    --userId 'yUj8Fs6p' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'fIso4xiy' \
    --userId 'LNs9begU' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'rxZrN5Re' \
    --userId 'rjfdjUF0' \
    --body '{"inc": 0.06033293881402768}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'CJhPPh6v' \
    --userId 'P4l3el76' \
    --additionalKey '2oQHmOKy' \
    --body '{"additionalData": {"qVIfPNKS": {}, "wSjToAR7": {}, "OPZXQuPU": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '56' \
    --statCodes '2SjBjYOi' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'EUJFxnWF' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'SEASONAL' \
    --limit '25' \
    --name 'Oft5JBc3' \
    --offset '64' \
    --sortBy 's6d5pQrz' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["G9yqVser", "1O6duRPJ", "kkn2LWx9"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'roEnFj1t' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'zpz1Ktra' \
    --userIds 'ydGjXWeE' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9407174924914768, "statCode": "Vm3OgdZk", "userId": "Orn47ZSb"}, {"inc": 0.8478959742321819, "statCode": "s36pTZuZ", "userId": "bdkKlwLg"}, {"inc": 0.14136088500736999, "statCode": "ivzaLUNr", "userId": "lFwpq1Jt"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.29427657377632754, "statCode": "yO2ZbvY0", "userId": "zxb54Tzd"}, {"inc": 0.25502505214930626, "statCode": "hNmrJXaP", "userId": "8bAJfHCN"}, {"inc": 0.2810589335212679, "statCode": "0CREmebo", "userId": "C06mhy4C"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "4DUWSeaj", "userId": "NaZzAuyG"}, {"statCode": "DC1JdERU", "userId": "hXnVnsuA"}, {"statCode": "vjE2Ogog", "userId": "VIp1eAs7"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": false, "cycleIds": ["RSRlI3Mh", "3uTrWDFK", "WGGh7T0s"], "cycleOverrides": [{"cycleId": "a1yojh94", "maximum": 0.2810600179982191, "minimum": 0.6693962778279949}, {"cycleId": "SEFsLoSj", "maximum": 0.15289327795787266, "minimum": 0.2108857562451858}, {"cycleId": "b1W8NZPG", "maximum": 0.6333645260734525, "minimum": 0.6993975575205814}], "defaultValue": 0.014492808415221825, "description": "xltKerGE", "globalAggregationMethod": "TOTAL", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": false, "maximum": 0.9072604239523776, "minimum": 0.40431045685344913, "name": "wmjI4wvx", "setAsGlobal": true, "setBy": "SERVER", "statCode": "K4YxMJ7S", "tags": ["JxF3J9Sh", "Kh9w1wla", "z1bThEir"], "visibility": "SERVERONLY"}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'rFfhUSvl' \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '35' \
    --sortBy 'PgaE8nEm' \
    --statCodes '["OzyZZ0v7", "HJH9G2oJ", "rghqVIsy"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '6' \
    --sortBy 'SARUsX7u' \
    --statCodes '["1COJcGaR", "RmCkVRcF", "9vCVjNaH"]' \
    --tags '["zxYBOKrw", "ZB6Bb5VJ", "dMM7sQwH"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'li5LG1wu' \
    --statCodes '["NmymnT4F", "XPBm3LBn", "8DmJ8IwO"]' \
    --tags '["1BxHBvUa", "Ke0XwK6R", "BIWO3XbN"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'hwNDIf1K' \
    --namespace $AB_NAMESPACE \
    --userId '3bzjIwiw' \
    --limit '1' \
    --offset '89' \
    --sortBy '6oQNWIiW' \
    --statCodes 'QpG7IIzb' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'X0l38DyS' \
    --limit '100' \
    --offset '33' \
    --sortBy 'kXF2ou3d' \
    --statCodes '74Rc1Vup' \
    --tags 'bu4DtMeM' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems1' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'A1m4GHY1' \
    --body '[{"statCode": "M60pLt6I"}, {"statCode": "Al2X30PE"}, {"statCode": "wY9VoNVo"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'ZEqKfBry' \
    --additionalKey 'XcBb9vzH' \
    --statCodes '["CUxuSMID", "c5UOFhP3", "6y9ENDIl"]' \
    --tags '["CBVeG7P6", "wkQJ2ftQ", "oEYVvPkI"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'CEL4f7pm' \
    --body '[{"inc": 0.28467423581850715, "statCode": "2j0al7sl"}, {"inc": 0.6942815617497021, "statCode": "NqHg9OF5"}, {"inc": 0.7954721298518236, "statCode": "JMKEqYX1"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId '5VcbkPnq' \
    --body '[{"inc": 0.3206822649522538, "statCode": "c3XpXcsb"}, {"inc": 0.844566826523961, "statCode": "HWCtG98N"}, {"inc": 0.003981165891518645, "statCode": "nqu76lXB"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'yewM7vhO' \
    --body '[{"statCode": "bmHv6Z0x"}, {"statCode": "9jQRhxes"}, {"statCode": "Uts0dqHT"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'j7Bx8idU' \
    --userId 'XXHuZ4oL' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'BtFp3DDe' \
    --userId 'AwWDyqa3' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'WZeoZRrX' \
    --userId 'E0BasXBM' \
    --body '{"inc": 0.18808976730538762}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'EMlBMVF2' \
    --userId '8uRcO41N' \
    --body '{"inc": 0.10820456926806732}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode '6856VR02' \
    --userId '7QD62HtV' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"OoGU2100": {}, "1D1lu9Xo": {}, "DA4qhsM3": {}}, "additionalKey": "f8kurhRr", "requestId": "viZ1LNos", "statCode": "Dh1lHsr1", "updateStrategy": "MAX", "userId": "wkzHe1K0", "value": 0.21054004926232106}, {"additionalData": {"tlcpD1bl": {}, "Z3PhXz6y": {}, "hrxXsU71": {}}, "additionalKey": "13qsti7z", "requestId": "UFlHxvSl", "statCode": "foz8stz4", "updateStrategy": "MAX", "userId": "0hcy9suA", "value": 0.8004580298312395}, {"additionalData": {"yrqRwaCI": {}, "9CUG4Ym8": {}, "JN5U5l5b": {}}, "additionalKey": "GrGrMWu1", "requestId": "0M2GpIFG", "statCode": "pcEIGGMY", "updateStrategy": "MIN", "userId": "JP5bPUcC", "value": 0.3225566704330479}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey '0lQcEytT' \
    --statCode '7bncuqTQ' \
    --userIds '["hpRBGRNU", "xE1OgfYH", "h6vQuhXG"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'hPKjf9l1' \
    --additionalKey 'ZjMQwwPb' \
    --statCodes '["gI2fmeb3", "ugDFJ9Yk", "YtnJs638"]' \
    --tags '["GqHjbVJi", "uYpEcN1C", "4le8GZxA"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId '4dVBwzK0' \
    --additionalKey 'yh7IkMIS' \
    --body '[{"additionalData": {"aBViqUjv": {}, "QSk6mkmo": {}, "BI7F9QPb": {}}, "requestId": "pa1Tufk9", "statCode": "d34JDCN0", "updateStrategy": "MAX", "value": 0.16989082630505448}, {"additionalData": {"tzsqlZGV": {}, "sERRQ729": {}, "LoAyt9xB": {}}, "requestId": "j0iWyAAZ", "statCode": "EzTNcHw9", "updateStrategy": "OVERRIDE", "value": 0.0007919329598995439}, {"additionalData": {"ALTZ11TV": {}, "puK2tmiV": {}, "6MYbeXhp": {}}, "requestId": "FiR1RPrS", "statCode": "a7h64zOv", "updateStrategy": "MAX", "value": 0.7690709050894047}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkGetOrDefaultByUserId
samples/cli/sample-apps Social bulkGetOrDefaultByUserId \
    --namespace $AB_NAMESPACE \
    --userId 'UKpbv36g' \
    --additionalKey '0D23rcsB' \
    --body '{"statCodes": ["wBYrgcjo", "uPuRrGXk", "ILYnu8qw"]}' \
    > test.out 2>&1
eval_tap $? 92 'BulkGetOrDefaultByUserId' test.out

#- 93 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'Cx1MAvGq' \
    --additionalKey 'lQEhPjti' \
    --body '[{"additionalData": {"uNB836ng": {}, "YKupfc6z": {}, "I8PU9LBQ": {}}, "statCode": "Ilq2cTHr"}, {"additionalData": {"GK86CxNR": {}, "GD4diozM": {}, "lQhOYf20": {}}, "statCode": "NFhIYCNX"}, {"additionalData": {"ePFPnuDJ": {}, "5WmIn5Qm": {}, "VjJAdSZH": {}}, "statCode": "v1zRvgjz"}]' \
    > test.out 2>&1
eval_tap $? 93 'BulkResetUserStatItemValues' test.out

#- 94 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode '7QNfBEL4' \
    --userId '1Ku9MDaU' \
    --additionalKey 'EKndCcbG' \
    > test.out 2>&1
eval_tap $? 94 'DeleteUserStatItems2' test.out

#- 95 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'OQ1JU43q' \
    --userId '6koIwpXP' \
    --additionalKey 'F69DqtIQ' \
    --body '{"additionalData": {"qKrTWbqw": {}, "OoQ9pFHw": {}, "LwGEBjEC": {}}, "updateStrategy": "MIN", "value": 0.3633530694433862}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue' test.out

#- 96 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"yJtXdJTm": {}, "s1OW3lT5": {}, "WjN8unkr": {}}, "additionalKey": "JXEhRGzY", "requestId": "cadOhtiL", "statCode": "kLafYNGC", "updateStrategy": "MIN", "userId": "STWgvT9P", "value": 0.7685919509251617}, {"additionalData": {"kbrbRjDW": {}, "kNyenlHz": {}, "47yJNhAA": {}}, "additionalKey": "jTmjbnBq", "requestId": "H99q2QIw", "statCode": "Bdkz748M", "updateStrategy": "MAX", "userId": "HSEhNWJq", "value": 0.8773399607441734}, {"additionalData": {"2xheLzHg": {}, "R1xsWakH": {}, "UWha07Rj": {}}, "additionalKey": "luRDTuJR", "requestId": "jQzH3v5g", "statCode": "MgH7qGGZ", "updateStrategy": "INCREMENT", "userId": "E0E1BlpV", "value": 0.06784924845990237}]' \
    > test.out 2>&1
eval_tap $? 96 'BulkUpdateUserStatItem1' test.out

#- 97 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'GqgPx15Q' \
    --additionalKey 'U73Juz7J' \
    --statCodes '["2kX5Nigw", "yaGh4XoM", "3kPfOrkR"]' \
    --tags '["TR1m5ekR", "t53e5tpQ", "ubzSoF0w"]' \
    > test.out 2>&1
eval_tap $? 97 'PublicQueryUserStatItems2' test.out

#- 98 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'RLmh05g2' \
    --additionalKey 'PhTaFoRT' \
    --body '[{"additionalData": {"n7cnaorj": {}, "NyB3WmGY": {}, "Tt1IRCJ4": {}}, "requestId": "QOJV01Kk", "statCode": "mV8igdcx", "updateStrategy": "MAX", "value": 0.593948805046302}, {"additionalData": {"KfxEoVAI": {}, "fG7r6Po3": {}, "XhoURudq": {}}, "requestId": "tK7njJRS", "statCode": "caQ1vN2r", "updateStrategy": "MIN", "value": 0.6580140755099884}, {"additionalData": {"1LZdmAMQ": {}, "LbnEQPRG": {}, "wnUuKkIB": {}}, "requestId": "Kh8n5mLO", "statCode": "9eBbqSfI", "updateStrategy": "INCREMENT", "value": 0.13945726656314938}]' \
    > test.out 2>&1
eval_tap $? 98 'BulkUpdateUserStatItem2' test.out

#- 99 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'FQEIg7zI' \
    --userId 'm914aERo' \
    --additionalKey 'foOt88Cj' \
    --body '{"additionalData": {"1QbIHAyb": {}, "AgqF6BJ1": {}, "t1QxP4x6": {}}, "updateStrategy": "MIN", "value": 0.5428475336746635}' \
    > test.out 2>&1
eval_tap $? 99 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE