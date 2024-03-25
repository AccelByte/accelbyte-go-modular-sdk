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
echo "1..98"

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
    --userId 'jx5Pcp6H' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'odtrTEOK' \
    --userId '0Fp2zfT3' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["bYC2FiJv", "R1OWsQOM", "P2yeWqkH"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'nP4ZyM5g' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'cAAZ4sIE' \
    --body '{"achievements": ["KxkSfhJF", "zO8XphQ1", "TuiVfZ4T"], "attributes": {"iOruXcFp": "8AkVHacY", "snPXzEa6": "dzgBQScS", "ESppJQA4": "XWdjFcgr"}, "avatarUrl": "pvFVtfc0", "inventories": ["P2wuiT7y", "mSzA664y", "3jsztVUT"], "label": "S4VNCGmd", "profileName": "BrNu0PT7", "statistics": ["zxONcESH", "ePXGnP6J", "O1Hy6bPi"], "tags": ["W7DXn89n", "PNdADyuH", "b6xwEpKC"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'AjEXF1mL' \
    --userId '0M6AEwev' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId '7zyqSMGp' \
    --userId 'zgz7BB11' \
    --body '{"achievements": ["G2FNTGwf", "U136Dxn8", "6WkGv2s5"], "attributes": {"fPDEjnre": "J4ZiGVw6", "vEMoShS5": "a50O7mPc", "IiFYwjAy": "TeOVBOua"}, "avatarUrl": "dCzH6jgY", "inventories": ["JLLzdykl", "LPfkpFRX", "FOoZfl8R"], "label": "s6qLxkmV", "profileName": "KmLbQGQ0", "statistics": ["oyDT6cr2", "e0KY3oUv", "G7jBFgFu"], "tags": ["Q3dXQZ2b", "WdJyFp55", "amEFE7ov"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId '0cHvtvpp' \
    --userId 'EATHzEtm' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'Ry2Ji7LQ' \
    --namespace $AB_NAMESPACE \
    --profileId '5o3JH3LY' \
    --userId 'sm5Lu5SC' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'h6gC8dRp' \
    --namespace $AB_NAMESPACE \
    --profileId 'cSKUmU2n' \
    --userId 'w5OTg4eV' \
    --body '{"name": "nVwcAz4Z", "value": "TTtiBgOn"}' \
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
    --limit '25' \
    --offset '21' \
    --statCodes 'EguPclRQ' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'AwyIdPda' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'ANNUALLY' \
    --limit '31' \
    --name 'aOClKd0b' \
    --offset '47' \
    --sortBy 'xh82IvTL' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "DAILY", "description": "tym2wUn8", "end": "1989-03-02T00:00:00Z", "name": "BK01BoKG", "resetDate": 82, "resetDay": 8, "resetMonth": 81, "resetTime": "tenwkPSK", "seasonPeriod": 88, "start": "1972-02-29T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["80Vo4Ich", "e7F86T3u", "uBEutaok"]}' \
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
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 32 'ImportStatCycle' test.out

#- 33 GetStatCycle
samples/cli/sample-apps Social getStatCycle \
    --cycleId 'Ysc1Bg4Y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'g2tR6AxZ' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "SEASONAL", "description": "Weu43hfv", "end": "1981-02-10T00:00:00Z", "name": "KrO2ArII", "resetDate": 5, "resetDay": 94, "resetMonth": 23, "resetTime": "klQCgvKB", "seasonPeriod": 82, "start": "1997-05-05T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'ytuPudOo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'n3Joeht3' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["SnzeEtEB", "zJHxRqtC", "LdanWLll"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'q05FoJ4Z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'jRgkFwC7' \
    --userIds 's2yp4vdE' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9301046381947021, "statCode": "48k1uXll", "userId": "tsfZUIeh"}, {"inc": 0.5426808767658151, "statCode": "L8CsOHuT", "userId": "obsOPLFM"}, {"inc": 0.945029044910477, "statCode": "2VO17OJS", "userId": "xLw2pevj"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.7414771657312644, "statCode": "xG229MDF", "userId": "06ts5rAC"}, {"inc": 0.39359447786767054, "statCode": "v0jI3bMQ", "userId": "DGd6b8wY"}, {"inc": 0.4860759831526068, "statCode": "YBMCFCXG", "userId": "NtFqCoN3"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '6M1NRsR0' \
    --userIds '["cUQIidtl", "ZRSlQoLN", "Gqte6UBI"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "8fDKJfm2", "userId": "thlhHkLH"}, {"statCode": "ueLmSKUV", "userId": "UaFECxAw"}, {"statCode": "3OEC4sDg", "userId": "yIgJO6Pw"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'Fs329nMe' \
    --isGlobal 'false' \
    --isPublic 'true' \
    --limit '34' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["Yzmizi9Y", "hhTba3Iq", "tbbh5yUt"], "defaultValue": 0.9279048734244474, "description": "XyoQXFYG", "globalAggregationMethod": "TOTAL", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": false, "isPublic": true, "maximum": 0.27346948681818783, "minimum": 0.3566871287675828, "name": "6UE74eS2", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "FWQdza8l", "tags": ["sf53CXSA", "QFTZywLV", "1S1EG0pu"]}' \
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
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 46 'ImportStats' test.out

#- 47 QueryStats
samples/cli/sample-apps Social queryStats \
    --namespace $AB_NAMESPACE \
    --isGlobal 'false' \
    --isPublic 'false' \
    --limit '13' \
    --offset '4' \
    --keyword 'bCPPJ04j' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'quHPrg2l' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'WYnwTfQI' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'b4RgPIsQ' \
    --body '{"cycleIds": ["j8HsX7J5", "aKqX9x8q", "Q6hqe4e6"], "defaultValue": 0.6130479291498863, "description": "Ay99rPf7", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": false, "isPublic": true, "name": "TNq0qI59", "tags": ["1wGiJdwt", "ev6AqgtJ", "zJxLZ7YT"]}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'rJ6bMLVK' \
    --limit '36' \
    --offset '22' \
    --sortBy '0zZJNGLt' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode '1On0cQsa' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'Lbyvyupj' \
    --namespace $AB_NAMESPACE \
    --userId 'zcwsxVW9' \
    --isPublic 'true' \
    --limit '13' \
    --offset '94' \
    --sortBy 'McAbN625' \
    --statCodes 'drcWfSnk' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'I9OOM9QR' \
    --isPublic 'true' \
    --limit '75' \
    --offset '1' \
    --sortBy 'CMmchfw1' \
    --statCodes 'uqVa1k41' \
    --tags 'TItAwvHd' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'dERUeCXw' \
    --body '[{"statCode": "RlpHitxs"}, {"statCode": "rkwvI3hU"}, {"statCode": "HI9YwgUg"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'QXpZqarO' \
    --body '[{"inc": 0.21323960788969754, "statCode": "9FlwhxpJ"}, {"inc": 0.1252025301481421, "statCode": "hMbEqrrh"}, {"inc": 0.13430610887836958, "statCode": "5gXYjArm"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'P65UlPL9' \
    --body '[{"inc": 0.52607315782864, "statCode": "E50m53xb"}, {"inc": 0.9519894099439968, "statCode": "TaMSE5dL"}, {"inc": 0.09465860587575248, "statCode": "z3Bwk49F"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'JHZqaV14' \
    --body '[{"statCode": "c4m1fVWm"}, {"statCode": "TNC4ZibD"}, {"statCode": "bD7c43EK"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'kU681dHm' \
    --userId 'UVR3bgMF' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '2fnnkugV' \
    --userId 'Vo6N4Hf1' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'UoPtQs5C' \
    --userId '3iBFF1Wj' \
    --body '{"inc": 0.9282510248815252}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'EfSXnCnC' \
    --userId 'hHvyL1dN' \
    --additionalKey 'M10ocPFe' \
    --body '{"additionalData": {"Ek1Wy2uM": {}, "qXnZnbux": {}, "oQHkmyPZ": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '34' \
    --statCodes 'mmKIbuDC' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'dtcu74T3' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'SEASONAL' \
    --limit '10' \
    --name 'APVQPxia' \
    --offset '10' \
    --sortBy 'Q7dCJNur' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["Yh69Q5lE", "UvW4473G", "VJNj4zxL"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'dqkPZ93H' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'aloNOUqH' \
    --userIds 'xnc8vDAt' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.5829048337834681, "statCode": "WwbSCqyk", "userId": "VUEbOc3X"}, {"inc": 0.1218700117381134, "statCode": "GfBzgPSH", "userId": "YhKPv30J"}, {"inc": 0.5660055875653224, "statCode": "BZ2DX16K", "userId": "p6YgQhw5"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.6554927151389262, "statCode": "6EG0WKwS", "userId": "MugG3p2g"}, {"inc": 0.388961489837798, "statCode": "HiuWESmu", "userId": "QEot0P31"}, {"inc": 0.9614194365375427, "statCode": "Thlpo7Ef", "userId": "FeukzNvI"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "VSq2uc8S", "userId": "7nKwj8P5"}, {"statCode": "FZHsCg1k", "userId": "lJ10phLh"}, {"statCode": "7S0HljJt", "userId": "1C29NJ6b"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["DLC3S4GZ", "1ThvwBIP", "efav9vPq"], "defaultValue": 0.20072805377665293, "description": "up7AUwdB", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": false, "maximum": 0.6096000726549688, "minimum": 0.5613098276924587, "name": "6P69N6Zm", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "cxxUrIvq", "tags": ["R3zycv8W", "nI7GP2iz", "KkP1S29c"]}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'vQwb87n7' \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '23' \
    --sortBy 'SAfnA67P' \
    --statCodes '["MrItFnDs", "4UICRUPz", "913LOR4Z"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '40' \
    --sortBy 'h6uOvj1y' \
    --statCodes '["qnmjdy1c", "HypTl8wm", "uWdgRGdZ"]' \
    --tags '["hg1YSxjt", "kKzXxwo2", "6E71WVSp"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'IKNVbZ09' \
    --statCodes '["mMCPgRJE", "LJMsAc0s", "DXcsfA1e"]' \
    --tags '["zwDk5gju", "dQLIBJ7i", "n96Mns15"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'aRQAcpuF' \
    --namespace $AB_NAMESPACE \
    --userId 'gcsV8QpP' \
    --limit '76' \
    --offset '65' \
    --sortBy 'PtFYknL5' \
    --statCodes 'TYTeCg8z' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'm4dJfPGV' \
    --limit '39' \
    --offset '90' \
    --sortBy 'y1wnVrr4' \
    --statCodes 'hrjogDaE' \
    --tags 'oAAJbAvR' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'exAhqwni' \
    --body '[{"statCode": "HQAe4iNY"}, {"statCode": "Do4KNNA8"}, {"statCode": "N4eeFqHn"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'zR6ChrrV' \
    --additionalKey 'U207G5WA' \
    --statCodes '["bc240FJ4", "nTqsruxO", "ngjSUyEu"]' \
    --tags '["McOdwcbv", "ECHLuVyw", "XaYWNpSd"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems1' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'yfPPYgsr' \
    --body '[{"inc": 0.8532341085814718, "statCode": "FUv8ufKB"}, {"inc": 0.2713530149806982, "statCode": "BHiKI5wh"}, {"inc": 0.21862825004027353, "statCode": "MyVm6jW6"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'CINLGo7n' \
    --body '[{"inc": 0.05688386732270656, "statCode": "9TnggEMO"}, {"inc": 0.8807849414337497, "statCode": "pInqoB9h"}, {"inc": 0.23360817047234117, "statCode": "7BevEZGW"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'YSMA9Rvy' \
    --body '[{"statCode": "P5thbLlY"}, {"statCode": "494Y790D"}, {"statCode": "H4EQpFtI"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'AknsQpuY' \
    --userId 'GVq8oZ1b' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'OyAgczf4' \
    --userId '0CuCnWGt' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '2B0e0jJe' \
    --userId '5DTHNfIF' \
    --body '{"inc": 0.27442978967858933}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'GHApLOsX' \
    --userId 'BAVbImFH' \
    --body '{"inc": 0.927257896541651}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'WAx9WLL6' \
    --userId 'g9XcOFf2' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"mLb1ZlXb": {}, "q8Mpfme1": {}, "vtDcNVb3": {}}, "additionalKey": "9OD7wwLM", "statCode": "2h7vmH3p", "updateStrategy": "OVERRIDE", "userId": "D6ImIJ9T", "value": 0.679274088110266}, {"additionalData": {"htoAJh2A": {}, "hpabJ0uL": {}, "Zzx4ujTN": {}}, "additionalKey": "zbw0vfJz", "statCode": "OUshLl1o", "updateStrategy": "MIN", "userId": "CP4faAN8", "value": 0.2922103655758912}, {"additionalData": {"DiPCj2ko": {}, "t7jxdxc4": {}, "niOYWdXa": {}}, "additionalKey": "IHYwI6PA", "statCode": "8Fo7K3td", "updateStrategy": "MIN", "userId": "zAERSOGr", "value": 0.7082467003547364}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey '8eJja1c2' \
    --statCode 'WNDUzasK' \
    --userIds '["tv9LSIcf", "UMXCMhII", "DSCRYuNF"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'qFsGfOWQ' \
    --additionalKey 'eZyhm53q' \
    --statCodes '["VBIrycSI", "vFORSwnC", "9IC3brnI"]' \
    --tags '["o6I8TNOW", "u3rgeZzn", "LoDaMyMG"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'iMjPP0ga' \
    --additionalKey 'EC2pnB9D' \
    --body '[{"additionalData": {"9g1q9kEd": {}, "vhUnKNsL": {}, "4ue7vxCp": {}}, "statCode": "xUu1zlX6", "updateStrategy": "MIN", "value": 0.6431388888199339}, {"additionalData": {"MvwSAKmc": {}, "dVGxaMfm": {}, "JzhdrhBu": {}}, "statCode": "F7Is4hMz", "updateStrategy": "MIN", "value": 0.4034680945309178}, {"additionalData": {"8Loe791u": {}, "uQFG6fvV": {}, "cUDbxJMF": {}}, "statCode": "2EqO9SEv", "updateStrategy": "OVERRIDE", "value": 0.08353864383571263}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId '6bllidiR' \
    --additionalKey 'fhJ8QRZZ' \
    --body '[{"additionalData": {"G1dH2DzD": {}, "MiqbaibN": {}, "Xc9htsBJ": {}}, "statCode": "652UJg9h"}, {"additionalData": {"Eam72def": {}, "77UzfUSY": {}, "xT4OFEza": {}}, "statCode": "TH8cVOqS"}, {"additionalData": {"6KirpUqO": {}, "TYOQR0bc": {}, "fOqfPtf9": {}}, "statCode": "wVIGnzy2"}]' \
    > test.out 2>&1
eval_tap $? 92 'BulkResetUserStatItemValues' test.out

#- 93 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'Jx8vk8Iz' \
    --userId 'iGzShtbx' \
    --additionalKey 'GqSYeFPb' \
    > test.out 2>&1
eval_tap $? 93 'DeleteUserStatItems2' test.out

#- 94 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'rWyOgWmT' \
    --userId 'nRcrFbPv' \
    --additionalKey 'CWu94HOc' \
    --body '{"additionalData": {"z19bl6Wu": {}, "k45h8Buo": {}, "IS5exo8Y": {}}, "updateStrategy": "MIN", "value": 0.11224089860584752}' \
    > test.out 2>&1
eval_tap $? 94 'UpdateUserStatItemValue' test.out

#- 95 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"65iezx4b": {}, "AJcoDuUX": {}, "2h7jwnzu": {}}, "additionalKey": "nUiG4ESP", "statCode": "DZgRSfo4", "updateStrategy": "OVERRIDE", "userId": "cMLfdPFF", "value": 0.4323452647510846}, {"additionalData": {"gMi9UYNZ": {}, "v4r8Rjp6": {}, "hsCf6RFJ": {}}, "additionalKey": "x7DxISR6", "statCode": "UjGCaRYt", "updateStrategy": "MAX", "userId": "wIZgV4EV", "value": 0.179247795616019}, {"additionalData": {"NXxP0Zg3": {}, "Aec9wbKY": {}, "ErgKHtud": {}}, "additionalKey": "0mQPGVoz", "statCode": "pa1pNcJz", "updateStrategy": "INCREMENT", "userId": "j4MxgNk6", "value": 0.8945516666555892}]' \
    > test.out 2>&1
eval_tap $? 95 'BulkUpdateUserStatItem1' test.out

#- 96 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'poUH5o7M' \
    --additionalKey 't0GMM223' \
    --statCodes '["oSgokgqR", "qkp4oENE", "Shi35DRQ"]' \
    --tags '["tQSrXAK6", "ocXtsP3L", "FTaPCYoa"]' \
    > test.out 2>&1
eval_tap $? 96 'PublicQueryUserStatItems2' test.out

#- 97 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'Ajxkl9I0' \
    --additionalKey 'mDHG4Kqn' \
    --body '[{"additionalData": {"NoU6hFUO": {}, "davJWAgj": {}, "8UBBwaky": {}}, "statCode": "3pW1luJe", "updateStrategy": "MAX", "value": 0.4459952068192301}, {"additionalData": {"DfX4ZC9B": {}, "TtYqpM36": {}, "AolSzMsc": {}}, "statCode": "t8w3NfTK", "updateStrategy": "MIN", "value": 0.91314059772094}, {"additionalData": {"3lu8q4kG": {}, "y3UtBUBY": {}, "9ZEic080": {}}, "statCode": "vMbm5CoL", "updateStrategy": "MAX", "value": 0.5264371872069024}]' \
    > test.out 2>&1
eval_tap $? 97 'BulkUpdateUserStatItem2' test.out

#- 98 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'EYJSAF7s' \
    --userId 'CDpbFFO1' \
    --additionalKey 'UmIX2qW9' \
    --body '{"additionalData": {"f1YFv5nj": {}, "nKNeBRNM": {}, "WGiBsm2E": {}}, "updateStrategy": "INCREMENT", "value": 0.1850006016080381}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE