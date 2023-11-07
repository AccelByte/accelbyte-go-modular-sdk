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
echo "1..96"

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
samples/cli/sample-apps Social getUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId '0DZP3RCX' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'M6PuPO5k' \
    --userId 'SxGIVJnj' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["o8qRVDfo", "DfGNHmft", "HNoiuShc"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'DNc59ITO' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'MxoRXyQx' \
    --body '{"achievements": ["HZzAtR6Y", "QnjBEhwN", "LGNSjWh4"], "attributes": {"d3TMywc4": "OvsjOJLP", "EtnFoDg4": "53cnjrHf", "Wt3XdXbz": "S09rBmQ3"}, "avatarUrl": "yHi1yPiA", "inventories": ["BzbYuYHQ", "SBqb3o39", "LkJ1hbLX"], "label": "2ZqXJvRP", "profileName": "Z0ytcaiG", "statistics": ["KvUUZnWg", "mSpALEzC", "WtPenV66"], "tags": ["aYuSPrMu", "08wyaLX4", "rU5HyqhF"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId '6kTOwXiD' \
    --userId 'Yh84JjuH' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'QnlNiA12' \
    --userId '4BoqZ0Lc' \
    --body '{"achievements": ["SmoeVuDM", "tv4UkMyt", "cjrAUkty"], "attributes": {"exBGgiMb": "YSm29Tl7", "AFFV4osM": "AYOX1r6r", "z9o3FwqP": "WmQEJf5D"}, "avatarUrl": "Tx6ANL4O", "inventories": ["uYlWx9oU", "yroIxxLZ", "0PWzE27C"], "label": "0BALGIub", "profileName": "kPlFwMz6", "statistics": ["2ePR7CMh", "KreVtGkD", "8bbAjtQf"], "tags": ["aJjnyjkZ", "1ZYapJvV", "P7KGlz8x"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId '8Ok2Dv32' \
    --userId '09210aDs' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'OfSqySPG' \
    --namespace $AB_NAMESPACE \
    --profileId '0v3AW5mB' \
    --userId 'VH5rm4xK' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'y9c1dnEz' \
    --namespace $AB_NAMESPACE \
    --profileId 'DYYHxLYT' \
    --userId 'DhYGalc0' \
    --body '{"name": "HKb5XOWZ", "value": "F3CStUvt"}' \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

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
    --limit '1' \
    --offset '4' \
    --statCodes 'YxAx43O5' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode '7MwG00gX' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'WEEKLY' \
    --limit '41' \
    --name 'Gk3G1goT' \
    --offset '11' \
    --sortBy '4qJ6Hct3' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "MONTHLY", "description": "4akJwVFy", "end": "1986-01-13T00:00:00Z", "name": "EzZ8Sf2F", "resetDate": 59, "resetDay": 33, "resetMonth": 17, "resetTime": "eVogLlsb", "seasonPeriod": 12, "start": "1971-11-12T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["LMxorguw", "Rl5Xi3A5", "2YeWC29f"]}' \
    > test.out 2>&1
eval_tap $? 30 'BulkGetStatCycle' test.out

#- 31 GetStatCycle
samples/cli/sample-apps Social getStatCycle \
    --cycleId 'ZZ87x7St' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetStatCycle' test.out

#- 32 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'Dbp25ELf' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "WEEKLY", "description": "cQOacFeI", "end": "1973-08-18T00:00:00Z", "name": "vJU274zv", "resetDate": 6, "resetDay": 98, "resetMonth": 83, "resetTime": "gWJelFNx", "seasonPeriod": 19, "start": "1976-09-15T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdateStatCycle' test.out

#- 33 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'hgyhMB1w' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'DeleteStatCycle' test.out

#- 34 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId '6nf0coNY' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["A1elfzA7", "BSJT4tCm", "6bUqZG4T"]}' \
    > test.out 2>&1
eval_tap $? 34 'BulkAddStats' test.out

#- 35 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'ZmN8bKJa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'StopStatCycle' test.out

#- 36 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'RNmy3PFR' \
    --userIds '3oPkcHWy' \
    > test.out 2>&1
eval_tap $? 36 'BulkFetchStatItems' test.out

#- 37 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.7864609469907002, "statCode": "GNk1eUYa", "userId": "85lURsqO"}, {"inc": 0.2247447061955813, "statCode": "eEtnaBAj", "userId": "S8nqATVf"}, {"inc": 0.21248163289794642, "statCode": "PGDO0of5", "userId": "iepQpGuh"}]' \
    > test.out 2>&1
eval_tap $? 37 'BulkIncUserStatItem' test.out

#- 38 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.5045549500363004, "statCode": "uef4VcBl", "userId": "zwuWe2it"}, {"inc": 0.45260208652214085, "statCode": "N6pQro7K", "userId": "H192n7al"}, {"inc": 0.638360043294854, "statCode": "SVKrmZoj", "userId": "d6bk1R3N"}]' \
    > test.out 2>&1
eval_tap $? 38 'BulkIncUserStatItemValue' test.out

#- 39 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'PscoU2IM' \
    --userIds '["woY4Utvw", "wV793b2W", "X0s2XA43"]' \
    > test.out 2>&1
eval_tap $? 39 'BulkFetchOrDefaultStatItems' test.out

#- 40 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "nAB5XDXu", "userId": "1xUZL13o"}, {"statCode": "KLYix24C", "userId": "8Qr297ic"}, {"statCode": "1FOUCsUC", "userId": "jH6krM7L"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkResetUserStatItem' test.out

#- 41 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'hePnEsRF' \
    --isGlobal 'true' \
    --isPublic 'true' \
    --limit '13' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 41 'GetStats' test.out

#- 42 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["uZd9S19c", "cIxPGOr4", "QsZw4WN4"], "defaultValue": 0.7118942220345241, "description": "sqjmPV5j", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": true, "maximum": 0.5605154006885407, "minimum": 0.27312370306934797, "name": "En0ONRau", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "1VidN9ti", "tags": ["ikfxgt11", "bJ6aE62X", "7crMGLQt"]}' \
    > test.out 2>&1
eval_tap $? 42 'CreateStat' test.out

#- 43 ExportStats
samples/cli/sample-apps Social exportStats \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'ExportStats' test.out

#- 44 ImportStats
samples/cli/sample-apps Social importStats \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 44 'ImportStats' test.out

#- 45 QueryStats
samples/cli/sample-apps Social queryStats \
    --namespace $AB_NAMESPACE \
    --isGlobal 'true' \
    --isPublic 'false' \
    --limit '87' \
    --offset '96' \
    --keyword 'Zi055KB1' \
    > test.out 2>&1
eval_tap $? 45 'QueryStats' test.out

#- 46 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'pCEcwsaO' \
    > test.out 2>&1
eval_tap $? 46 'GetStat' test.out

#- 47 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'Uqwn2ewc' \
    > test.out 2>&1
eval_tap $? 47 'DeleteStat' test.out

#- 48 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'aQOEzf5C' \
    --body '{"cycleIds": ["ym8AlxYJ", "paQhue0u", "Wt3ETumz"], "defaultValue": 0.34482864211939435, "description": "ZJzPXJtJ", "ignoreAdditionalDataOnValueRejected": true, "isPublic": true, "name": "dwbWes1c", "tags": ["NiaKVcSr", "fsQrxjMW", "lfZeZPkh"]}' \
    > test.out 2>&1
eval_tap $? 48 'UpdateStat' test.out

#- 49 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '9Sqxmxfi' \
    --limit '28' \
    --offset '30' \
    --sortBy 'VfEtWXtE' \
    > test.out 2>&1
eval_tap $? 49 'GetStatItems' test.out

#- 50 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'M8zwhiv1' \
    > test.out 2>&1
eval_tap $? 50 'DeleteTiedStat' test.out

#- 51 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId '5IuA6Mrj' \
    --namespace $AB_NAMESPACE \
    --userId '7zCsrbEt' \
    --isPublic 'true' \
    --limit '61' \
    --offset '31' \
    --sortBy 'b2lzryhB' \
    --statCodes 'ugg4v4ws' \
    > test.out 2>&1
eval_tap $? 51 'GetUserStatCycleItems' test.out

#- 52 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'sJJceUKE' \
    --isPublic 'false' \
    --limit '37' \
    --offset '51' \
    --sortBy 'vlVJkrcO' \
    --statCodes 'OTbVahTK' \
    --tags 'HmmX1zdR' \
    > test.out 2>&1
eval_tap $? 52 'GetUserStatItems' test.out

#- 53 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'zOxZd7aJ' \
    --body '[{"statCode": "Gw4ybWeM"}, {"statCode": "TbjzKaQJ"}, {"statCode": "31YTUobN"}]' \
    > test.out 2>&1
eval_tap $? 53 'BulkCreateUserStatItems' test.out

#- 54 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'c4mBv3nz' \
    --body '[{"inc": 0.6866648492729878, "statCode": "MI5hkrJt"}, {"inc": 0.6298504161536803, "statCode": "UyttnnsZ"}, {"inc": 0.9839113022010443, "statCode": "HD271F72"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkIncUserStatItem1' test.out

#- 55 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId '4nllZskw' \
    --body '[{"inc": 0.7847884740853774, "statCode": "sUt1zkh8"}, {"inc": 0.8425810691214286, "statCode": "zfQwPHkT"}, {"inc": 0.021340197009354633, "statCode": "MktyIq5m"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkIncUserStatItemValue1' test.out

#- 56 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'ivhiKaHb' \
    --body '[{"statCode": "ACJr0QM3"}, {"statCode": "cLqH4zv6"}, {"statCode": "A3EKpskp"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkResetUserStatItem1' test.out

#- 57 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'FNKPOMGf' \
    --userId 'a8QHoR2Z' \
    > test.out 2>&1
eval_tap $? 57 'CreateUserStatItem' test.out

#- 58 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'ggzk8uP3' \
    --userId 'fwMPNH8f' \
    > test.out 2>&1
eval_tap $? 58 'DeleteUserStatItems' test.out

#- 59 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'dq6ockNp' \
    --userId 'EvyZBBJj' \
    --body '{"inc": 0.8523587761343944}' \
    > test.out 2>&1
eval_tap $? 59 'IncUserStatItemValue' test.out

#- 60 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'HxSMqFr6' \
    --userId 'V0pA1Aoc' \
    --additionalKey 'CSO0Wm1E' \
    --body '{"additionalData": {"sHyKQfej": {}, "nCOntamp": {}, "PIRcQKKd": {}}}' \
    > test.out 2>&1
eval_tap $? 60 'ResetUserStatItemValue' test.out

#- 61 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '8' \
    --statCodes 'WCqLTIKV' \
    > test.out 2>&1
eval_tap $? 61 'GetGlobalStatItems1' test.out

#- 62 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'rntpA9vE' \
    > test.out 2>&1
eval_tap $? 62 'GetGlobalStatItemByStatCode1' test.out

#- 63 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'MONTHLY' \
    --limit '74' \
    --name 'HJqMo72t' \
    --offset '87' \
    --sortBy '6OvZmRUS' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 63 'GetStatCycles1' test.out

#- 64 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["VQOmA0Ea", "p692I0Dh", "kCWOUFBl"]}' \
    > test.out 2>&1
eval_tap $? 64 'BulkGetStatCycle1' test.out

#- 65 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'KJ4tIL35' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycle1' test.out

#- 66 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'eDxklAKb' \
    --userIds 'NYwLBJFg' \
    > test.out 2>&1
eval_tap $? 66 'BulkFetchStatItems1' test.out

#- 67 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.8529877051532561, "statCode": "xjj6i7cA", "userId": "jWPYjItW"}, {"inc": 0.48553143866736914, "statCode": "in14XGvM", "userId": "y4oeGojW"}, {"inc": 0.7376634574201406, "statCode": "gEESKYsp", "userId": "xV9Ua3TP"}]' \
    > test.out 2>&1
eval_tap $? 67 'PublicBulkIncUserStatItem' test.out

#- 68 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.05226110143174967, "statCode": "QqhdwXrQ", "userId": "Qln5KcYl"}, {"inc": 0.9826786091170419, "statCode": "MdVXzDx7", "userId": "tUttvZ1s"}, {"inc": 0.8146450893213963, "statCode": "yYRj8qeO", "userId": "CvK73z43"}]' \
    > test.out 2>&1
eval_tap $? 68 'PublicBulkIncUserStatItemValue' test.out

#- 69 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "ntt502lc", "userId": "lN3DryAm"}, {"statCode": "O3xdHy4j", "userId": "NuH2nQAg"}, {"statCode": "jVSFqaSo", "userId": "WM0AWC7F"}]' \
    > test.out 2>&1
eval_tap $? 69 'BulkResetUserStatItem2' test.out

#- 70 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["josJTWqj", "3Qm0Yx6g", "WuixE5qh"], "defaultValue": 0.020418055476256414, "description": "uxEGkoRY", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": false, "maximum": 0.8931363766376862, "minimum": 0.04467842167281466, "name": "YXlAZwo8", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "28ZccOpa", "tags": ["kxv5dbcA", "ZTb6fM2s", "bQTWl3Jj"]}' \
    > test.out 2>&1
eval_tap $? 70 'CreateStat1' test.out

#- 71 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'zJLFDRbx' \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '38' \
    --sortBy 'md5MIUn8' \
    --statCodes '["P77kGQGd", "rzWeI6Rx", "4LaUYNHx"]' \
    > test.out 2>&1
eval_tap $? 71 'PublicListMyStatCycleItems' test.out

#- 72 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '61' \
    --sortBy 'cjdhEsoF' \
    --statCodes '["2FQ8KElx", "Lynl4FKK", "ONi4qhbs"]' \
    --tags '["3arwvDz8", "8MJnUhe9", "epIru5nQ"]' \
    > test.out 2>&1
eval_tap $? 72 'PublicListMyStatItems' test.out

#- 73 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'gY81EzyK' \
    --statCodes '["OJxUOBvx", "tcI8RsvR", "WpW5PjKx"]' \
    --tags '["mgotb1kd", "Eie3BWY3", "Rt1hZaDj"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListAllMyStatItems' test.out

#- 74 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'bYIy3rzZ' \
    --namespace $AB_NAMESPACE \
    --userId 'V71HAzSK' \
    --limit '66' \
    --offset '56' \
    --sortBy 'rdEfsaLQ' \
    --statCodes 'GuuUwREM' \
    > test.out 2>&1
eval_tap $? 74 'GetUserStatCycleItems1' test.out

#- 75 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'Au7I2sKW' \
    --limit '23' \
    --offset '56' \
    --sortBy 'vLwbmcEb' \
    --statCodes 'vU1mfbyv' \
    --tags 'dXvXmSZJ' \
    > test.out 2>&1
eval_tap $? 75 'PublicQueryUserStatItems' test.out

#- 76 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'SBkJEuGc' \
    --body '[{"statCode": "bNPaCCML"}, {"statCode": "bgboYwks"}, {"statCode": "YaEKbZfl"}]' \
    > test.out 2>&1
eval_tap $? 76 'PublicBulkCreateUserStatItems' test.out

#- 77 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'ycvXIAa2' \
    --additionalKey 'k6kWWBio' \
    --statCodes '["K4MeBQt6", "8RDezfzb", "R9dIHC6d"]' \
    --tags '["BSkC6mAQ", "rvA2T5q2", "2SQnHcTv"]' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems1' test.out

#- 78 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'KHdWMVfS' \
    --body '[{"inc": 0.4284599840706803, "statCode": "aRKWzvvb"}, {"inc": 0.524699407659104, "statCode": "j0j5B5Ie"}, {"inc": 0.3996747311955303, "statCode": "o4Y8RgDc"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkIncUserStatItem1' test.out

#- 79 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId '6LJeTw8e' \
    --body '[{"inc": 0.35591122604826275, "statCode": "sqSBHhxW"}, {"inc": 0.03531868163210461, "statCode": "EeSLOFbY"}, {"inc": 0.8245096860842466, "statCode": "4qzenLtD"}]' \
    > test.out 2>&1
eval_tap $? 79 'BulkIncUserStatItemValue2' test.out

#- 80 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'NRfjudoX' \
    --body '[{"statCode": "mwRCl5Uu"}, {"statCode": "OLAyQVlc"}, {"statCode": "MOqtEkIG"}]' \
    > test.out 2>&1
eval_tap $? 80 'BulkResetUserStatItem3' test.out

#- 81 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '9gpvI3iM' \
    --userId 'Af0QAdFM' \
    > test.out 2>&1
eval_tap $? 81 'PublicCreateUserStatItem' test.out

#- 82 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'GX0wVQYS' \
    --userId 'vIBLBRQm' \
    > test.out 2>&1
eval_tap $? 82 'DeleteUserStatItems1' test.out

#- 83 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '4PUq5jqL' \
    --userId '7ZjpeGWu' \
    --body '{"inc": 0.2303460187989952}' \
    > test.out 2>&1
eval_tap $? 83 'PublicIncUserStatItem' test.out

#- 84 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'iXiOF9cL' \
    --userId 'Dmpfq7cl' \
    --body '{"inc": 0.7280764485539496}' \
    > test.out 2>&1
eval_tap $? 84 'PublicIncUserStatItemValue' test.out

#- 85 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'bZWrG45H' \
    --userId 'SawlafVF' \
    > test.out 2>&1
eval_tap $? 85 'ResetUserStatItemValue1' test.out

#- 86 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"hhg6ADLM": {}, "KHuTYUNT": {}, "4xHpUOz8": {}}, "additionalKey": "lywMtW6Q", "statCode": "Jw7sYYTu", "updateStrategy": "MIN", "userId": "P4mGLJLp", "value": 0.46800550909893424}, {"additionalData": {"6Z9U5qSl": {}, "0j0iSqGH": {}, "ahoyTvvY": {}}, "additionalKey": "SqIEYxvr", "statCode": "gIlUqUkr", "updateStrategy": "OVERRIDE", "userId": "n4fkMfDQ", "value": 0.7918791837000758}, {"additionalData": {"8ZV7sR0A": {}, "fE7B2bCI": {}, "ZlhoV1B0": {}}, "additionalKey": "a22dpIld", "statCode": "ysTFA1oI", "updateStrategy": "MIN", "userId": "txJcgQR1", "value": 0.008047633417989197}]' \
    > test.out 2>&1
eval_tap $? 86 'BulkUpdateUserStatItemV2' test.out

#- 87 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'MgH69MLQ' \
    --statCode 'iHNx4tjz' \
    --userIds '["dXrj3dVT", "gAHZbvaJ", "ujx7xR3P"]' \
    > test.out 2>&1
eval_tap $? 87 'BulkFetchOrDefaultStatItems1' test.out

#- 88 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'oKHmK7Lh' \
    --additionalKey 'jA30kWu0' \
    --statCodes '["oy4k1Tri", "ApMZ5Npa", "pYVaVmCL"]' \
    --tags '["1sWBF2l4", "b3BarGJM", "84FpwcMo"]' \
    > test.out 2>&1
eval_tap $? 88 'AdminListUsersStatItems' test.out

#- 89 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'QdWUsOij' \
    --additionalKey 'XJqafKAf' \
    --body '[{"additionalData": {"ywOkWsM5": {}, "BxZ72mVO": {}, "YH8KhkBe": {}}, "statCode": "ZBJs4GnT", "updateStrategy": "INCREMENT", "value": 0.32095464464703316}, {"additionalData": {"uSJK4y6o": {}, "00gNwX4h": {}, "Osb7VHlt": {}}, "statCode": "7u6CDHN8", "updateStrategy": "INCREMENT", "value": 0.4781768565109653}, {"additionalData": {"dnCm1J4M": {}, "tpq4LYBF": {}, "YtH7piAZ": {}}, "statCode": "gEGrqA4t", "updateStrategy": "INCREMENT", "value": 0.8768342315635369}]' \
    > test.out 2>&1
eval_tap $? 89 'BulkUpdateUserStatItem' test.out

#- 90 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'YhFwVAdV' \
    --additionalKey 'adIgIoYm' \
    --body '[{"additionalData": {"2MKB20g1": {}, "C9VtcUns": {}, "QsEAp4hI": {}}, "statCode": "UyQ8s0me"}, {"additionalData": {"GF4pUGgG": {}, "M0Cl2v0O": {}, "aeffSDYP": {}}, "statCode": "oq7cO8Ta"}, {"additionalData": {"si8uT9wB": {}, "IkpnZC6v": {}, "IcfMoYg4": {}}, "statCode": "WoEqayfA"}]' \
    > test.out 2>&1
eval_tap $? 90 'BulkResetUserStatItemValues' test.out

#- 91 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'yHT3IUyj' \
    --userId 'qf22n1sx' \
    --additionalKey 'PWl2I5yB' \
    > test.out 2>&1
eval_tap $? 91 'DeleteUserStatItems2' test.out

#- 92 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '1mRXGHGm' \
    --userId 'F5jr21I6' \
    --additionalKey 'fAqmOncY' \
    --body '{"additionalData": {"iDvTs9M3": {}, "Ory3p5Vn": {}, "kUGGOojh": {}}, "updateStrategy": "MAX", "value": 0.7501369128685127}' \
    > test.out 2>&1
eval_tap $? 92 'UpdateUserStatItemValue' test.out

#- 93 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"ArSN1Lvh": {}, "L7Oa6Kqf": {}, "Z7mt9o72": {}}, "additionalKey": "7vnY0g2w", "statCode": "FeloJCaF", "updateStrategy": "OVERRIDE", "userId": "xr0rik6H", "value": 0.7538153832116767}, {"additionalData": {"FPXSm5XN": {}, "gKKpiDRX": {}, "XgrTIizd": {}}, "additionalKey": "eic6If7m", "statCode": "jynyKT6J", "updateStrategy": "MAX", "userId": "rwWxVArt", "value": 0.15320289660016728}, {"additionalData": {"GrqRw4up": {}, "NjPwHkMQ": {}, "la1lOhtc": {}}, "additionalKey": "hhpDZHJq", "statCode": "b3aybCR2", "updateStrategy": "MIN", "userId": "XutDjOMU", "value": 0.8812942643933745}]' \
    > test.out 2>&1
eval_tap $? 93 'BulkUpdateUserStatItem1' test.out

#- 94 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'GIi5LqDd' \
    --additionalKey 'pXctQn6V' \
    --statCodes '["ntqr7hP6", "ZkSEZQ3F", "jyeT9JE7"]' \
    --tags '["jBHdvn1c", "e1LrJnxD", "WFUPwulb"]' \
    > test.out 2>&1
eval_tap $? 94 'PublicQueryUserStatItems2' test.out

#- 95 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'c67zZtCO' \
    --additionalKey 'QcvrogC2' \
    --body '[{"additionalData": {"lQhFBKDE": {}, "R24ReqZY": {}, "U7bjVAnK": {}}, "statCode": "9zKneHm7", "updateStrategy": "INCREMENT", "value": 0.7345603572299649}, {"additionalData": {"YgmZRP6k": {}, "gIJMR8MR": {}, "N04nGkQQ": {}}, "statCode": "VYIHw5el", "updateStrategy": "OVERRIDE", "value": 0.6716648728311746}, {"additionalData": {"JO5CdhJ3": {}, "pszuEUQt": {}, "QshT3wA4": {}}, "statCode": "dVstW7eD", "updateStrategy": "MAX", "value": 0.9434838221003161}]' \
    > test.out 2>&1
eval_tap $? 95 'BulkUpdateUserStatItem2' test.out

#- 96 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'BApItFym' \
    --userId 'RVb58upa' \
    --additionalKey 'hBrgpjXr' \
    --body '{"additionalData": {"vVU9icWy": {}, "1cSVVglN": {}, "k6CqqNDt": {}}, "updateStrategy": "MIN", "value": 0.3836059165168271}' \
    > test.out 2>&1
eval_tap $? 96 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE