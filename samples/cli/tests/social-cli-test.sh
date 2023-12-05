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
    --userId 'ZYHdc8kZ' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'kbitGYBf' \
    --userId 'oQRGewRO' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["05QiXyuN", "t5bd7dUY", "YG5oU8It"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'reKP2fRf' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'PPi5zStY' \
    --body '{"achievements": ["nlL1xNkO", "yHUxHljY", "sxyFMVtl"], "attributes": {"FOEDDKV7": "lxu7TrYi", "6zlfwymk": "96tnZi3t", "hEK8rOMP": "rexRFZTG"}, "avatarUrl": "z9jyaIEi", "inventories": ["D5tGxa3H", "4v6c1EkZ", "U3pWnBda"], "label": "DwwrCutU", "profileName": "JU8Q0RI0", "statistics": ["hINyHe8w", "ljlYYNKY", "1vz6Ul9r"], "tags": ["HYSKxRUk", "JeijSkvn", "VzBeNT0B"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'FAH6XNMg' \
    --userId 'E8eXUpl1' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'k7h7WG95' \
    --userId 'rA4QzihS' \
    --body '{"achievements": ["eIkCbX0F", "iTjgvdXJ", "5zWmmIhw"], "attributes": {"lsF4Jj3B": "oiwdK9Ed", "lpv6I5l9": "BzsPb4RM", "VA0qCYZh": "JwwgJFt2"}, "avatarUrl": "RdF5zM0P", "inventories": ["aDKqySPl", "fYllRZvl", "zuZg0fAp"], "label": "CILs9QEp", "profileName": "zwhuU8yu", "statistics": ["3vZ14eiw", "I7qaP4KF", "JP8f99DL"], "tags": ["gmxmjDDS", "1Sm9qsJH", "zVIdcZ48"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'F6Mx2UCq' \
    --userId 'moQCtjEc' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'KKszQFPJ' \
    --namespace $AB_NAMESPACE \
    --profileId 'NFvhtskC' \
    --userId 'VJXNLR0p' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'ktdXoD9v' \
    --namespace $AB_NAMESPACE \
    --profileId '3SPsymMF' \
    --userId 'SNUfkw0z' \
    --body '{"name": "uqyZhcxb", "value": "XiX9j78i"}' \
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
    --limit '61' \
    --offset '0' \
    --statCodes '4KXuwy0Z' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'Gadrzks7' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'MONTHLY' \
    --limit '82' \
    --name 'LzaajVEH' \
    --offset '10' \
    --sortBy 'Fd12lBYr' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "MONTHLY", "description": "eWAGbpxQ", "end": "1972-01-16T00:00:00Z", "name": "u7HZNuiM", "resetDate": 34, "resetDay": 69, "resetMonth": 44, "resetTime": "jFW8NAVc", "seasonPeriod": 85, "start": "1993-02-27T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["UfvVSKWL", "BY3DiJiO", "q3hUh6i0"]}' \
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
    --cycleId 'HhZi59vz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'FB5xVlLO' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "MONTHLY", "description": "GFjBhKKG", "end": "1999-03-11T00:00:00Z", "name": "5MQIgmkj", "resetDate": 2, "resetDay": 77, "resetMonth": 90, "resetTime": "8zlNkNik", "seasonPeriod": 39, "start": "1981-04-17T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'SsEEvB1T' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'pLAmx4eG' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["xrAkFwuc", "xd4gGYUu", "h7zIiZRD"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'p9GAj5fI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'VJzgnymH' \
    --userIds 'ML1lxkSF' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.4524207710924677, "statCode": "5TrO86ar", "userId": "ADuwhMUT"}, {"inc": 0.4331086057575657, "statCode": "Pt9W0kNQ", "userId": "8jGF4eqF"}, {"inc": 0.5893292617563282, "statCode": "KO80Ized", "userId": "f4vBgfz1"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.900876415429582, "statCode": "WdU0qGUr", "userId": "2sAhdxTR"}, {"inc": 0.71804125820354, "statCode": "EAlafUVK", "userId": "nPzf9b3I"}, {"inc": 0.9094376094921675, "statCode": "N5KvYYAM", "userId": "XuASjael"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '41MLB4ky' \
    --userIds '["ipa0vRRp", "wPy5mhgP", "YHXYQ7yr"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "yplaA342", "userId": "UUVHcFh4"}, {"statCode": "rtqjcMeW", "userId": "6cmZkCP7"}, {"statCode": "qX7yZW4Y", "userId": "hsnIMTSf"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'Xt76pmvf' \
    --isGlobal 'true' \
    --isPublic 'false' \
    --limit '40' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["z3eINtBf", "6kZbYtDM", "LEXFYU0J"], "defaultValue": 0.8420391680955636, "description": "N2VI9ubj", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": true, "maximum": 0.22645001824563005, "minimum": 0.28702072285509206, "name": "iLppP68S", "setAsGlobal": false, "setBy": "SERVER", "statCode": "gvDJVplf", "tags": ["uqD9w0W1", "olVBPuxf", "qNYqKI71"]}' \
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
    --isGlobal 'false' \
    --isPublic 'true' \
    --limit '79' \
    --offset '84' \
    --keyword 'Fx8vcyvP' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'pbRAXYhI' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'Nt4sj4qY' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'qa3TqLUV' \
    --body '{"cycleIds": ["An32T9rm", "eQfAoOLQ", "gHUD1jll"], "defaultValue": 0.2982604592890814, "description": "y4WvRiQ7", "ignoreAdditionalDataOnValueRejected": true, "isPublic": false, "name": "fuOTgWFg", "tags": ["nSCEazYt", "p6AfW7Hw", "uSgVcNaV"]}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'xSigxgwu' \
    --limit '22' \
    --offset '45' \
    --sortBy 'OurbhGmT' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'euYbFVW5' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'TGRW117U' \
    --namespace $AB_NAMESPACE \
    --userId 'AU80sbwE' \
    --isPublic 'false' \
    --limit '70' \
    --offset '25' \
    --sortBy 'bQQYkwQD' \
    --statCodes 'QIjlkIpw' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'BXuB9f0O' \
    --isPublic 'true' \
    --limit '50' \
    --offset '80' \
    --sortBy 'd7UA95El' \
    --statCodes 'IjPbv9e5' \
    --tags 'uE9oNTya' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'hmI4Xo0p' \
    --body '[{"statCode": "5s4C2Gio"}, {"statCode": "TrrgqXPQ"}, {"statCode": "Ou5KyO16"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'eMlwld0C' \
    --body '[{"inc": 0.34035941297461936, "statCode": "AhUle8ky"}, {"inc": 0.7052848839959944, "statCode": "b4dZIsSg"}, {"inc": 0.9417841613870049, "statCode": "xDCoxdmA"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'Cd19rqIH' \
    --body '[{"inc": 0.25574138704567406, "statCode": "pxfzOD2a"}, {"inc": 0.03454886268138513, "statCode": "ZrP3ifQv"}, {"inc": 0.10954193362831066, "statCode": "fC9CLM3g"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'EQWGPxkY' \
    --body '[{"statCode": "p3ix9SOk"}, {"statCode": "KGmw1FcP"}, {"statCode": "uZEYNdWd"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'BnR8l9nD' \
    --userId 'vdu2fpZi' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'A2DgVG6f' \
    --userId '9gxZhhyr' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'xdxwKifj' \
    --userId '5rW7ip8W' \
    --body '{"inc": 0.48355823367719986}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'ZBNTFbjz' \
    --userId 'fBFiq7FA' \
    --additionalKey 'YDISUdpP' \
    --body '{"additionalData": {"5npQ7aXd": {}, "CYddhjMv": {}, "0Y2B2B7z": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '70' \
    --statCodes 'jouV2dfj' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode '3BFbfYGS' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'SEASONAL' \
    --limit '58' \
    --name 'wfjIISA7' \
    --offset '2' \
    --sortBy '3IJqH87x' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["brPIxYZs", "gLViT9jB", "43xExyIx"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'DF02Z2Eq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'FAUQbuQ9' \
    --userIds 'XMlFMOB8' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.5461285079122985, "statCode": "KahYbvPr", "userId": "S2iuJrvl"}, {"inc": 0.8172172570744628, "statCode": "BIiT9t6B", "userId": "MLiAMmSR"}, {"inc": 0.3298852540452424, "statCode": "RTG1REtQ", "userId": "JOWbBh6o"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.7701054294291533, "statCode": "f0Xw4edd", "userId": "YxgGGWfL"}, {"inc": 0.7705284336947869, "statCode": "rdTkGC3a", "userId": "Tcd2RzO1"}, {"inc": 0.23790774566102735, "statCode": "8jYy6CAt", "userId": "4JaWu92D"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "lSi63YNG", "userId": "LqPk45Yx"}, {"statCode": "0bTVabXQ", "userId": "8k0H0QQV"}, {"statCode": "O3B8idko", "userId": "4KOg5T7q"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["gIpuzvBU", "smKw0tyx", "CY3GhXwN"], "defaultValue": 0.6913057057839117, "description": "EF6jM0L6", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": false, "isPublic": false, "maximum": 0.07524598345819633, "minimum": 0.9735111829305033, "name": "htsAL1Z2", "setAsGlobal": true, "setBy": "SERVER", "statCode": "atgBPFPr", "tags": ["RioQNU8j", "xOqKhwVT", "CmanP82w"]}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'tvwqNOYN' \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '77' \
    --sortBy 'Z8HCYCZA' \
    --statCodes '["K7oJTBcW", "vZbeIqsT", "ayyU9iuK"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '69' \
    --sortBy 'n4fcXtki' \
    --statCodes '["CVYMDVra", "PbvpuD32", "QFjvCf8y"]' \
    --tags '["tuEpA3yJ", "IYqGW6pp", "g0Nujiv5"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'mnQN4NGp' \
    --statCodes '["qbStgYSy", "yRh7pO8E", "FO7LbDvM"]' \
    --tags '["Z28CQPK9", "JZapZ7a5", "JlJFQ3kU"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'noTEurb5' \
    --namespace $AB_NAMESPACE \
    --userId 'LLlCnKwz' \
    --limit '50' \
    --offset '56' \
    --sortBy 'xKqiIEuz' \
    --statCodes 'AKdCL0LK' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '6YIqfsn8' \
    --limit '35' \
    --offset '82' \
    --sortBy 'cqgFUNxy' \
    --statCodes 'tYhBAkw6' \
    --tags 'rOQl32eT' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'jAhMngmd' \
    --body '[{"statCode": "f9ZkHD3A"}, {"statCode": "ll63B0cL"}, {"statCode": "OUgg1wot"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'thqWBzOU' \
    --additionalKey 'cIebWyVm' \
    --statCodes '["T5apAi8b", "1QE6BCPh", "idQnUHdG"]' \
    --tags '["8wKNxh0m", "1MtVnoZM", "M3THQWnx"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems1' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '8ri5wcWq' \
    --body '[{"inc": 0.7267039057117958, "statCode": "SDkQry1x"}, {"inc": 0.8141441930249734, "statCode": "CuMnW5pC"}, {"inc": 0.05373567550199454, "statCode": "G6UV0DO8"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId '87N33CVG' \
    --body '[{"inc": 0.014200928674995006, "statCode": "8kSNH2Nr"}, {"inc": 0.2643624699841576, "statCode": "fG5dxq1N"}, {"inc": 0.4662768337545722, "statCode": "xVmWBdZa"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId '084mAIaV' \
    --body '[{"statCode": "Sje6VhWc"}, {"statCode": "QdASASDM"}, {"statCode": "719pTvLT"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'lXqyHXcZ' \
    --userId '6lCZuzRi' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'bz4Adhhi' \
    --userId 'h5raM8tW' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'R6bzn5ij' \
    --userId 'ABtlmCPW' \
    --body '{"inc": 0.8119382270919924}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '6ZFmmzwY' \
    --userId 'Plob8pYl' \
    --body '{"inc": 0.15871122534206195}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'KEiWAAWg' \
    --userId '1FqJt2tt' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"jLC4s61V": {}, "apIrbcB1": {}, "VnGR1Pw4": {}}, "additionalKey": "AYV3DCjK", "statCode": "gLmqOEhj", "updateStrategy": "MIN", "userId": "mFveRe1p", "value": 0.6814211639114999}, {"additionalData": {"V1wRNmmu": {}, "b7dYasbd": {}, "tQPlRvr5": {}}, "additionalKey": "FhihIYnf", "statCode": "4bVLk9G5", "updateStrategy": "MAX", "userId": "Bw88op3S", "value": 0.6174867288590923}, {"additionalData": {"O0MnqRBO": {}, "rpkRgE10": {}, "jUt9JEIJ": {}}, "additionalKey": "pcjhleUG", "statCode": "tgVTBwVx", "updateStrategy": "MIN", "userId": "JHV2uU5d", "value": 0.7488879269869626}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey '1sQVlaEr' \
    --statCode 'YUh6SWYT' \
    --userIds '["OyGU3Vlc", "bEQuwFi0", "gr56ZMA5"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'Xo0g1ibZ' \
    --additionalKey 'nnPUbAPl' \
    --statCodes '["5UHrt9Tr", "Y3ECG93H", "ydAgZMyj"]' \
    --tags '["rwwZ1gks", "lDM5ov79", "H8uOJ0xc"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId '83KidNEM' \
    --additionalKey 'xHO91HYr' \
    --body '[{"additionalData": {"ZsnxlwsO": {}, "IuQl7xVr": {}, "qCTH8W03": {}}, "statCode": "Y9eTqYPN", "updateStrategy": "INCREMENT", "value": 0.27060675054074845}, {"additionalData": {"eSZP97YU": {}, "aBRvikOX": {}, "JdkwMI7A": {}}, "statCode": "fz3rSKEt", "updateStrategy": "MAX", "value": 0.5376037298381785}, {"additionalData": {"Vnu1ipqw": {}, "d8Q07tK4": {}, "1mqu5oL4": {}}, "statCode": "DMvw6D9d", "updateStrategy": "MAX", "value": 0.37752316972501343}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'h3y8bKxc' \
    --additionalKey 'ZjEviy9r' \
    --body '[{"additionalData": {"sx3zZe3K": {}, "nQcbRUSw": {}, "UfCviE7O": {}}, "statCode": "AMoVroXE"}, {"additionalData": {"402WaXaQ": {}, "GaxuNQgr": {}, "izuffFuu": {}}, "statCode": "zxP9i34U"}, {"additionalData": {"RSoaZtkw": {}, "DCuQJrBv": {}, "hHXKwClz": {}}, "statCode": "DRQ7qBdO"}]' \
    > test.out 2>&1
eval_tap $? 92 'BulkResetUserStatItemValues' test.out

#- 93 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'NMc3rhNO' \
    --userId 'P0BkJQ8D' \
    --additionalKey '1eAJAz91' \
    > test.out 2>&1
eval_tap $? 93 'DeleteUserStatItems2' test.out

#- 94 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'OabwJm8r' \
    --userId 'KD3o3tqO' \
    --additionalKey 'vKzBwIGu' \
    --body '{"additionalData": {"t3pobS4B": {}, "WYUnPb3c": {}, "koWbfeEl": {}}, "updateStrategy": "MIN", "value": 0.679287679309817}' \
    > test.out 2>&1
eval_tap $? 94 'UpdateUserStatItemValue' test.out

#- 95 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"ajT8CuYZ": {}, "mVzY2B8R": {}, "HJV0TZux": {}}, "additionalKey": "AX9hnI2R", "statCode": "0Fli3v7Q", "updateStrategy": "MIN", "userId": "4gHjpOO8", "value": 0.0169161581707572}, {"additionalData": {"4JJtTie7": {}, "9ZYEXHkv": {}, "Pn4YgAVn": {}}, "additionalKey": "M83eJ4zq", "statCode": "IPw6sFxe", "updateStrategy": "INCREMENT", "userId": "9wQYoLGy", "value": 0.5877772988524059}, {"additionalData": {"x1X2fYkI": {}, "4klZMvxh": {}, "17db5lVO": {}}, "additionalKey": "bkqAdfew", "statCode": "j5m4t07L", "updateStrategy": "MIN", "userId": "yz91aFvk", "value": 0.5082304580674973}]' \
    > test.out 2>&1
eval_tap $? 95 'BulkUpdateUserStatItem1' test.out

#- 96 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'Mz8Xrx28' \
    --additionalKey '83frekXW' \
    --statCodes '["3t3mh7uh", "OlGfLY9B", "zaGZ63nc"]' \
    --tags '["TsLok1N3", "wCs4lETK", "7hkQvyxs"]' \
    > test.out 2>&1
eval_tap $? 96 'PublicQueryUserStatItems2' test.out

#- 97 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'j8Y8WI8x' \
    --additionalKey 'GE86ygp6' \
    --body '[{"additionalData": {"WTKGQlAR": {}, "qvA7Bu5n": {}, "76GLcDOG": {}}, "statCode": "It86ypUu", "updateStrategy": "MIN", "value": 0.22550958013812794}, {"additionalData": {"TGjCc77M": {}, "9JHE7NVZ": {}, "1dp7nWMJ": {}}, "statCode": "VHnKn3Ll", "updateStrategy": "OVERRIDE", "value": 0.44454640655576827}, {"additionalData": {"1wdaVRvU": {}, "zdxCxjhe": {}, "K54ZiXGS": {}}, "statCode": "2R6RpOx1", "updateStrategy": "MIN", "value": 0.3087249494475821}]' \
    > test.out 2>&1
eval_tap $? 97 'BulkUpdateUserStatItem2' test.out

#- 98 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'OBgmTYSh' \
    --userId 'BQjBYtSw' \
    --additionalKey 'WOwssoKg' \
    --body '{"additionalData": {"ljSFidIs": {}, "6AWNO5c5": {}, "W0i7ae64": {}}, "updateStrategy": "MAX", "value": 0.31063769899887383}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE