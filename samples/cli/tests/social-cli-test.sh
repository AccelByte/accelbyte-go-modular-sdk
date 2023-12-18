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
    --userId 'fmSKw2nk' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'WTbpMFlb' \
    --userId 'ehcRvQz6' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["CIQ3ZZtb", "vuipxFnK", "iGwvllih"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'OMQYwvG1' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'K1aCtQvB' \
    --body '{"achievements": ["vimkh1ry", "6qBINueg", "sdfGHhk7"], "attributes": {"ySo3KiQC": "h0QMf1Ie", "600DZivt": "2ZMfVIh7", "8jqaajHB": "QJ51m9ya"}, "avatarUrl": "Mk3NqFlu", "inventories": ["oXqsGOFP", "R5IcGi97", "zYOkKMo6"], "label": "uMk3swCE", "profileName": "5Fcdl7jc", "statistics": ["HLFXlWAQ", "iHMcvSQa", "onKsiek7"], "tags": ["gil4YqUu", "kIUe1Sys", "QzLHBulv"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'XqdRI1FQ' \
    --userId 'DpLXQ5Z6' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId '2jn2iwuo' \
    --userId 'ElGGD7KB' \
    --body '{"achievements": ["z3CN3q2W", "l3ZN6GCn", "kRGH2c9q"], "attributes": {"w0sgpWrO": "deOC2cTE", "ikCrExTR": "KUBIRuQ5", "OGrRE1d0": "XarrKxRW"}, "avatarUrl": "rc0nmVHZ", "inventories": ["CIUVn9Qb", "oxgdUjzf", "rgpTHXLn"], "label": "D4P5IPxR", "profileName": "wrRXQKa0", "statistics": ["S2N5VLvM", "Z8dsQITQ", "BXUKxQbE"], "tags": ["I4XgGfF5", "U1q7lwdq", "qKbBXMVW"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'i58tpmIc' \
    --userId 'GBvlAByV' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'SEAxRL9E' \
    --namespace $AB_NAMESPACE \
    --profileId '9NUtrsfw' \
    --userId 'OQu76waA' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'S61dCFEs' \
    --namespace $AB_NAMESPACE \
    --profileId '5gQLiTmJ' \
    --userId 'PQO75bf4' \
    --body '{"name": "zGtPsDU1", "value": "I8LBmAKf"}' \
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
    --limit '37' \
    --offset '56' \
    --statCodes '2Pr0QgW4' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'ZyE7pExO' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'MONTHLY' \
    --limit '25' \
    --name 'fPrwScUU' \
    --offset '88' \
    --sortBy '3S4SOeHA' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "MONTHLY", "description": "8vZSWz96", "end": "1975-02-14T00:00:00Z", "name": "BrufVYwD", "resetDate": 54, "resetDay": 61, "resetMonth": 9, "resetTime": "4UkVzH1z", "seasonPeriod": 2, "start": "1990-10-03T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["d5PpKqmI", "7ZseQDHU", "yA4Kupfv"]}' \
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
    --cycleId 'CT4wUsSp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'K0bhWtZc' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "SEASONAL", "description": "6XwAumy8", "end": "1985-06-06T00:00:00Z", "name": "vXrUOHrK", "resetDate": 34, "resetDay": 61, "resetMonth": 15, "resetTime": "Hz6e2A6D", "seasonPeriod": 2, "start": "1977-09-12T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId '9RhNoAZ0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'dihVk39e' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["fhoBIJsi", "5sa5WIf1", "EcFavWt8"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId '3WUNQx8C' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'Hsfe4xiu' \
    --userIds 'O0ZzNbWC' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.1567688238332593, "statCode": "tRRCSVVp", "userId": "jKWebTOG"}, {"inc": 0.6843724880127459, "statCode": "I1rXxIMP", "userId": "2nynbRnK"}, {"inc": 0.38855263092398407, "statCode": "surjT1ku", "userId": "SvTtSPoL"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9997434592912015, "statCode": "lKiGVaqM", "userId": "8peqTYUY"}, {"inc": 0.9267498202827626, "statCode": "NdZrZI7N", "userId": "jydofYzG"}, {"inc": 0.7651152811820403, "statCode": "CZRdMxy0", "userId": "aeoYfgRV"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'hobicj3O' \
    --userIds '["VuM4LScu", "4jiRGU05", "EEEVbcze"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "gLKaB5sz", "userId": "hOVSfUL5"}, {"statCode": "IePmq5w6", "userId": "w7C9uic6"}, {"statCode": "aetPXnJ0", "userId": "Ppk1dBsZ"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'fy6wHHNB' \
    --isGlobal 'false' \
    --isPublic 'false' \
    --limit '92' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["98grcoSP", "U3SAdMgX", "2auahYx3"], "defaultValue": 0.30634663954191876, "description": "zwX9z5a2", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": false, "maximum": 0.665252149349637, "minimum": 0.13513060523216602, "name": "DsQIDqLj", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "W3rlACd5", "tags": ["QzRg8K29", "CDNqWWDw", "UjgbOsnr"]}' \
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
    --limit '89' \
    --offset '91' \
    --keyword 'OzEuWq6F' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'j6y8cUFh' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'HKLdIjPu' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'FH9cKi3a' \
    --body '{"cycleIds": ["gAOEZihK", "9JgO0qm9", "52ouFMrt"], "defaultValue": 0.9430948469001169, "description": "CBOSMlN6", "ignoreAdditionalDataOnValueRejected": false, "isPublic": false, "name": "Lk53mp9Y", "tags": ["VNQjJHvx", "UsK2GDmv", "6rWGXspC"]}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'qFLlZSuh' \
    --limit '100' \
    --offset '22' \
    --sortBy 'aOnHnIpD' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'kRDuFYJj' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId '70bNapqW' \
    --namespace $AB_NAMESPACE \
    --userId '8ifYHV0g' \
    --isPublic 'true' \
    --limit '23' \
    --offset '27' \
    --sortBy 'rjGGen8z' \
    --statCodes 'tsCrOeYc' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'wdlqD4BL' \
    --isPublic 'false' \
    --limit '39' \
    --offset '40' \
    --sortBy 'HoaagBw4' \
    --statCodes 'kp3Vray0' \
    --tags 'VJAMh09y' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'ItaOomQQ' \
    --body '[{"statCode": "bq6vq1E7"}, {"statCode": "6HLA1kmG"}, {"statCode": "MvmYRpzM"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'eaypAnaH' \
    --body '[{"inc": 0.1427926942657074, "statCode": "jbJorin7"}, {"inc": 0.40615159090175446, "statCode": "WsyIcjaG"}, {"inc": 0.7066154966743373, "statCode": "dt2Douyb"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'sg6FQWW0' \
    --body '[{"inc": 0.06931551110443024, "statCode": "5eBl4Tz4"}, {"inc": 0.2909740680482297, "statCode": "LGe4jInP"}, {"inc": 0.8191096012683357, "statCode": "rgp5ZDEt"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 's774RP32' \
    --body '[{"statCode": "ulYCePzy"}, {"statCode": "1Jaegs10"}, {"statCode": "LQg7tlk9"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'LxQJCZBs' \
    --userId '5cG6N7D0' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '4TEVsWjV' \
    --userId '5QGUvIMN' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'fYz30ROe' \
    --userId 'qCMfFIcx' \
    --body '{"inc": 0.1874574421106996}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'BB8oOVE3' \
    --userId 'dG9ReBIh' \
    --additionalKey 'NCY2ZtE3' \
    --body '{"additionalData": {"HWsiXT74": {}, "0jkbxkgB": {}, "UKMk86WV": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '32' \
    --statCodes 'MTXVOvTe' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'ZVnWSuC1' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'WEEKLY' \
    --limit '98' \
    --name 'UIiAaBJJ' \
    --offset '93' \
    --sortBy 'tmhaQFqG' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["Yl2cdwFA", "zfCATSsY", "k93eJjzw"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'MzAbPmrg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'HQlqGO6T' \
    --userIds 'KMgcgCEu' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9530559474417134, "statCode": "JZa9Yv0w", "userId": "0FyJ0kep"}, {"inc": 0.399127976127968, "statCode": "oCEFVAlH", "userId": "wpFYZD88"}, {"inc": 0.0161190191511692, "statCode": "7wXN1bqM", "userId": "GMF9FyDS"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.886294657031288, "statCode": "V8k2MeHt", "userId": "oAG3speW"}, {"inc": 0.10381686115415123, "statCode": "Wf8qJZhz", "userId": "9mic1oav"}, {"inc": 0.02749042462622553, "statCode": "G5ifb07t", "userId": "34KqGFbX"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "hxuzRh7C", "userId": "yWEX198j"}, {"statCode": "Is1lMb8x", "userId": "deQU2C5C"}, {"statCode": "l5XHqU0K", "userId": "2pamjOZy"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["i3vmIYle", "7FV950PT", "I8xFQ3Sh"], "defaultValue": 0.3623276493266129, "description": "7GUb6Tz2", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": true, "maximum": 0.33979276777175293, "minimum": 0.29339999661784344, "name": "tMUMYEZU", "setAsGlobal": false, "setBy": "SERVER", "statCode": "ZRcFScJS", "tags": ["MSYBNb7A", "WNbRt08h", "SFXwe23L"]}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'ipClLjcm' \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '13' \
    --sortBy 'hEp3tHlY' \
    --statCodes '["Usk9VqvR", "L7LDRad8", "vBzlxLuy"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '95' \
    --sortBy '1nsL8eAK' \
    --statCodes '["DmJNqoyr", "1FZqLzzQ", "fFVHw5ax"]' \
    --tags '["Q3TjSiPj", "JS0Nqv8j", "e0Ti2Uam"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey '7JIDggru' \
    --statCodes '["OOuSafjo", "zjrSnP9R", "fuOOqiVF"]' \
    --tags '["2CV5UVtT", "pP2n7V5F", "WSemEakq"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'pkZR49pq' \
    --namespace $AB_NAMESPACE \
    --userId 'JGavKz7c' \
    --limit '92' \
    --offset '99' \
    --sortBy '93fBCKT2' \
    --statCodes 'T4A8oM5D' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'P6F81zdc' \
    --limit '18' \
    --offset '9' \
    --sortBy '0UEBqWgb' \
    --statCodes 'Y7Bu3Ofm' \
    --tags 'E0s16uxD' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '7kYbTLSX' \
    --body '[{"statCode": "GEY9XulW"}, {"statCode": "pMtFHqLQ"}, {"statCode": "A1ZCDZtm"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'Ngvu2w0G' \
    --additionalKey '7w0Sv5Ra' \
    --statCodes '["YuwvSR2Y", "OEPz7WMa", "g9vZcfP8"]' \
    --tags '["HAK2CP6P", "NB6RWIRg", "E0wJ4rU3"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems1' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '117xjArg' \
    --body '[{"inc": 0.5581967264353856, "statCode": "t2jEn2tD"}, {"inc": 0.7565679767157653, "statCode": "gO4qri1a"}, {"inc": 0.9856895184897182, "statCode": "7kYKtgq2"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'BXx8Lbe7' \
    --body '[{"inc": 0.4129132282753524, "statCode": "bHp4Xmrk"}, {"inc": 0.6597521319310837, "statCode": "ZLLL9W25"}, {"inc": 0.26875614038383444, "statCode": "HleWLuiI"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId '3PlDOq5f' \
    --body '[{"statCode": "uN1dA0gn"}, {"statCode": "nmPjZYp2"}, {"statCode": "rCFkJ3Bl"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'whcTYZAG' \
    --userId 'iDHNQ9er' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'vAGDqcAu' \
    --userId 'Et37oUZH' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'xdy00MZi' \
    --userId 'xSEUP1Pu' \
    --body '{"inc": 0.4991327977803576}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '1SZsgL5e' \
    --userId 'xFtynJ9c' \
    --body '{"inc": 0.3946069865069328}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'Ax6sR59j' \
    --userId 'UcC5tiYF' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"4JaECC0s": {}, "0GXPMaPL": {}, "1XoD0sEi": {}}, "additionalKey": "0365ondP", "statCode": "zW3e7OUx", "updateStrategy": "MAX", "userId": "V98tvg3U", "value": 0.9126446244139594}, {"additionalData": {"qO8Sh9cH": {}, "b2WhZGHa": {}, "J9zCUjfa": {}}, "additionalKey": "ls9qFoNV", "statCode": "mXJdDYOn", "updateStrategy": "MIN", "userId": "ZNMQUn1W", "value": 0.39239219989958074}, {"additionalData": {"69GSG48k": {}, "vXPpMoq8": {}, "Ik4T7g6U": {}}, "additionalKey": "b01bnijM", "statCode": "SbY2MpfH", "updateStrategy": "INCREMENT", "userId": "A6vwiu9a", "value": 0.22618246184615742}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'HoXsNu9B' \
    --statCode 'ewE1iYb6' \
    --userIds '["3M4aVQ5L", "pb8rbKlX", "XDvg7eNG"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'SopkRfXO' \
    --additionalKey 'B9i6YScp' \
    --statCodes '["mKhoB2gi", "RpncreCN", "VwSzxBXJ"]' \
    --tags '["jy1aeHRa", "XQzQv3Oq", "5hNYqTdc"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId '7aUjZxgO' \
    --additionalKey 'DqLTH4PC' \
    --body '[{"additionalData": {"4XUl2H41": {}, "hGoieBSy": {}, "upwny5oL": {}}, "statCode": "wIimuoTH", "updateStrategy": "INCREMENT", "value": 0.40307716448437814}, {"additionalData": {"tsqk1NzR": {}, "07tknOSl": {}, "Br9U0aKp": {}}, "statCode": "zTpWJnqW", "updateStrategy": "OVERRIDE", "value": 0.012164567183750807}, {"additionalData": {"MnDUA4TE": {}, "dViZT0Sc": {}, "hnP4DLec": {}}, "statCode": "FEc3EUUO", "updateStrategy": "OVERRIDE", "value": 0.7847781115396502}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId '6xf0c0Wu' \
    --additionalKey 'RngiNDjv' \
    --body '[{"additionalData": {"xAxpbpML": {}, "1zxakcMe": {}, "lzq0cuvR": {}}, "statCode": "ZBStZysP"}, {"additionalData": {"d5n5gBGC": {}, "hmlcx1WX": {}, "Nskb3jzE": {}}, "statCode": "JZJiqLix"}, {"additionalData": {"2A90cIO8": {}, "ScnLiqI0": {}, "FRcWy0M2": {}}, "statCode": "RfDtk2n0"}]' \
    > test.out 2>&1
eval_tap $? 92 'BulkResetUserStatItemValues' test.out

#- 93 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'UGYdAWhV' \
    --userId 'hnRWCpm2' \
    --additionalKey 'pEGkqQFj' \
    > test.out 2>&1
eval_tap $? 93 'DeleteUserStatItems2' test.out

#- 94 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'vZhyumB7' \
    --userId 'zlKUzNQj' \
    --additionalKey 'q54v9N0z' \
    --body '{"additionalData": {"DFaU1hiw": {}, "s5eqc7dy": {}, "Zru6joHI": {}}, "updateStrategy": "MIN", "value": 0.27641433046291153}' \
    > test.out 2>&1
eval_tap $? 94 'UpdateUserStatItemValue' test.out

#- 95 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"uRWikKuH": {}, "xGMfNsVB": {}, "lWRpwPiQ": {}}, "additionalKey": "35w8wEYS", "statCode": "K72l6Sij", "updateStrategy": "OVERRIDE", "userId": "zvYfCHUX", "value": 0.3197278790958539}, {"additionalData": {"Ca1A24b5": {}, "bY8j6dp7": {}, "xKiUv1Gc": {}}, "additionalKey": "IXGK1jc9", "statCode": "74NJZbjD", "updateStrategy": "MAX", "userId": "kqSqzWpS", "value": 0.6336325869967459}, {"additionalData": {"7Wdpw6Ua": {}, "c4IisgkG": {}, "6wxISfGF": {}}, "additionalKey": "GZGjuyCy", "statCode": "HxUJn5cX", "updateStrategy": "MIN", "userId": "DDSTRvn3", "value": 0.8864667138113942}]' \
    > test.out 2>&1
eval_tap $? 95 'BulkUpdateUserStatItem1' test.out

#- 96 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId '990ECXxI' \
    --additionalKey 'vCuT489S' \
    --statCodes '["4fkI6ckQ", "Xm4PK2Iu", "csrrxWT5"]' \
    --tags '["6QVNUaHD", "wYXdKqk6", "7WSLF6dm"]' \
    > test.out 2>&1
eval_tap $? 96 'PublicQueryUserStatItems2' test.out

#- 97 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'gy336RLF' \
    --additionalKey 'bnDSb4vH' \
    --body '[{"additionalData": {"HPCQW7UJ": {}, "pWSndDQ2": {}, "zQQ5buTc": {}}, "statCode": "9sbOJAUZ", "updateStrategy": "INCREMENT", "value": 0.26943476384457754}, {"additionalData": {"12lbLFLN": {}, "GtrNWZuP": {}, "gChOzdOZ": {}}, "statCode": "d3VU1rYx", "updateStrategy": "INCREMENT", "value": 0.24773935546637338}, {"additionalData": {"7pAf8fmx": {}, "8XItpZ1a": {}, "O5YZTWDw": {}}, "statCode": "qKroJts5", "updateStrategy": "MAX", "value": 0.0453881460940706}]' \
    > test.out 2>&1
eval_tap $? 97 'BulkUpdateUserStatItem2' test.out

#- 98 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'ytvhuUdE' \
    --userId '6ThgNiVE' \
    --additionalKey 'KWBBIKme' \
    --body '{"additionalData": {"1ffNdSrX": {}, "bOut4bO8": {}, "ZQkTtmtw": {}}, "updateStrategy": "MIN", "value": 0.3668417018572999}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE