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
    --userId 'zbokskJ6' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'PVdb7Jtt' \
    --userId 'bsxQK09N' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["Se6ZdfSW", "ykqj3d6f", "dAh5Dlpz"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'kdg8jkX6' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'p4tCgvb6' \
    --body '{"achievements": ["ZwM5qd0G", "2q95GkiW", "kK6JVCzp"], "attributes": {"hQbL80Ae": "GyzISj32", "eX2X0jG9": "G6fijdgu", "jrIIKvqq": "sjW88Hyr"}, "avatarUrl": "8YCB8TLF", "inventories": ["Gh4ZDX6P", "AW5mdouC", "LxbObmZc"], "label": "UcmEzD7Y", "profileName": "o4e4cFhw", "statistics": ["KG3WfEp2", "v7UnX0EP", "dlQ21t6a"], "tags": ["Ib09IelO", "CIxhrnWk", "rGwxA1qJ"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'gdqDsevo' \
    --userId 'jpGFVdJE' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'Pj5nmbqm' \
    --userId '8AuUOXVA' \
    --body '{"achievements": ["zakvUJa8", "vDnnvTf5", "GYWUhQlo"], "attributes": {"sVKqGPcX": "uXZGQa2S", "SmsJerLe": "hWepvRTD", "iIL7r8t5": "8AoaxNXx"}, "avatarUrl": "M7yC7yBG", "inventories": ["KB9bL7zp", "6jAtRMLp", "aDwI58Jl"], "label": "8whDQemh", "profileName": "9Be8uU4o", "statistics": ["kOyzG8i4", "tCm42iFP", "TGhTIjbO"], "tags": ["HNB4xh4l", "SHK2iJpx", "vIzPZmHx"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'wNHsrDcL' \
    --userId 'utd9wueV' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'px9f5Nft' \
    --namespace $AB_NAMESPACE \
    --profileId 'Y8miLdVe' \
    --userId 'g5kJoJgW' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'wSdm2GlA' \
    --namespace $AB_NAMESPACE \
    --profileId 'MSPgIAUG' \
    --userId 'rHIpKvOr' \
    --body '{"name": "NtDEbcIi", "value": "pYZwvopb"}' \
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
    --limit '18' \
    --offset '91' \
    --statCodes 'abADCMSD' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode '0HPncnc3' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'ANNUALLY' \
    --limit '33' \
    --name '4tvfmj3u' \
    --offset '45' \
    --sortBy 'sWRbBFDV' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "SEASONAL", "description": "yI0iAKv2", "end": "1988-11-07T00:00:00Z", "name": "8C7c2vl4", "resetDate": 40, "resetDay": 89, "resetMonth": 53, "resetTime": "mmTtrEir", "seasonPeriod": 90, "start": "1997-01-18T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["n2RLlYmm", "rYnnDChn", "OHoqVdRq"]}' \
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
    --cycleId '36YFFzH1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId '2AUNKRDi' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "SEASONAL", "description": "GHzq63Bt", "end": "1994-10-25T00:00:00Z", "name": "UTtAdQx1", "resetDate": 59, "resetDay": 9, "resetMonth": 72, "resetTime": "sT9JFGFb", "seasonPeriod": 54, "start": "1999-10-09T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'BhRDW6EJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'plFF4Ozt' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["5BzXVwSM", "oA60PqiE", "8kiq2fMS"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'HKnrwJKB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'zd8lkzY4' \
    --userIds 'pRl1pn3n' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9463656294048338, "statCode": "bV0C0Uq9", "userId": "yGn3qpkM"}, {"inc": 0.6912590545762581, "statCode": "G7W7S2tx", "userId": "bVTsgtaz"}, {"inc": 0.9760016128646737, "statCode": "ajXcsrq0", "userId": "CYU9KTEQ"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.8421694674345105, "statCode": "FiOc9fv7", "userId": "mN0aoCW5"}, {"inc": 0.08819524102811216, "statCode": "jICo2v5p", "userId": "YlD45sA5"}, {"inc": 0.05521095699266232, "statCode": "s2EG7aGS", "userId": "AncEZD86"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '7bq2unr4' \
    --userIds '["ePgUZxUh", "s677WG7A", "EUCYZOI0"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "gC3adbir", "userId": "pIMsXl8Q"}, {"statCode": "IG0TqVi7", "userId": "icuVVQg4"}, {"statCode": "EVAJc0gO", "userId": "YaQeBaG5"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'BrZNSPV4' \
    --isGlobal 'true' \
    --isPublic 'false' \
    --limit '54' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["YVy4PYBZ", "cxavyxwi", "aZvjb44R"], "defaultValue": 0.23214702321584169, "description": "UpxBgEWa", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": true, "maximum": 0.21486331018113725, "minimum": 0.40400001968256194, "name": "kHGKbLGS", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "RJmUP49H", "tags": ["et5B1QwV", "mr1O6Fm5", "kgkdGg5z"]}' \
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
    --isPublic 'false' \
    --limit '11' \
    --offset '75' \
    --keyword 'goQVBoIr' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'Ai241lLO' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'lQxPDujH' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode '5ZKRNtiv' \
    --body '{"cycleIds": ["NfIO83AR", "0jQC49RX", "nroiQE4X"], "defaultValue": 0.34857500453470647, "description": "1eCo9Oad", "ignoreAdditionalDataOnValueRejected": false, "isPublic": false, "name": "1ZRzFVMa", "tags": ["XHk0MtpD", "KVdpnd42", "XBRirDDg"]}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'WDUIHrCK' \
    --limit '57' \
    --offset '66' \
    --sortBy '8GGoLYbZ' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'rFPR1o8T' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'JEepNXvI' \
    --namespace $AB_NAMESPACE \
    --userId 'Bnh7V88b' \
    --isPublic 'false' \
    --limit '4' \
    --offset '82' \
    --sortBy 'xWBiUAZS' \
    --statCodes 'GbJEU1le' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'Pj1yH0ls' \
    --isPublic 'false' \
    --limit '68' \
    --offset '80' \
    --sortBy '8jEeslFd' \
    --statCodes 'BritAkSZ' \
    --tags 'slxa4M3k' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'Jfq9lbKC' \
    --body '[{"statCode": "PZyIBZeZ"}, {"statCode": "OG6bI44x"}, {"statCode": "RolYqFMT"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'WXzISJmU' \
    --body '[{"inc": 0.5145744917908521, "statCode": "mi35uD89"}, {"inc": 0.6332308184528256, "statCode": "9KypWWmw"}, {"inc": 0.8132680418243508, "statCode": "WKnfCrHf"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'JwT981sn' \
    --body '[{"inc": 0.2794463093442041, "statCode": "FECzxM5h"}, {"inc": 0.5619554136727491, "statCode": "DM6Lw004"}, {"inc": 0.279498892147666, "statCode": "jzOx0enk"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'sOo6YHD3' \
    --body '[{"statCode": "dnHkTrf2"}, {"statCode": "dUiOmSQD"}, {"statCode": "zwcqe10A"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'Ll3IenL0' \
    --userId '1Kv4Huq9' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'kYrG1Exv' \
    --userId '3niRsmIQ' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'iEKwSXM6' \
    --userId 'ApwB1VoV' \
    --body '{"inc": 0.9400083897608735}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'eMwk2Dpq' \
    --userId 'wi19Zqw6' \
    --additionalKey 'anj7wmSp' \
    --body '{"additionalData": {"DXST3UGG": {}, "6r1x7znE": {}, "kYpZ3oKG": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '15' \
    --statCodes 't1nAkO7D' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'gQCK0Zmb' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'SEASONAL' \
    --limit '26' \
    --name 'Z1xIiarm' \
    --offset '37' \
    --sortBy 'EEaM2Azq' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["FCsgfmde", "KNslYcvA", "RnTdlqQP"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'cRpL3upk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'tLa5m6o2' \
    --userIds '3CPneRua' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.3731391911588464, "statCode": "yLmAOU3c", "userId": "Q8bcAJQO"}, {"inc": 0.308841553575649, "statCode": "LIYiS8om", "userId": "zCwiWZDX"}, {"inc": 0.061234638733234426, "statCode": "06A61aVT", "userId": "vA48SqOu"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9991777859799414, "statCode": "k3RjgIrn", "userId": "vYDVeSJ2"}, {"inc": 0.1473089706269557, "statCode": "arC3A4v4", "userId": "PQarPbD6"}, {"inc": 0.9093718102795826, "statCode": "TrSV2Qjl", "userId": "CSRmuRV0"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "akoSRLp8", "userId": "cfAOPD0I"}, {"statCode": "ycdXd8fa", "userId": "KghdBBHT"}, {"statCode": "xrMjCzFC", "userId": "LyYeP3or"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["FFoW9x78", "DWJ0gxvC", "eSjLArwN"], "defaultValue": 0.7431564594298724, "description": "zeQtB8ay", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": true, "maximum": 0.21999171943855655, "minimum": 0.23026512688818224, "name": "fRsvvDG4", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "T0ZASyj2", "tags": ["P4Tth6Fz", "wtEEypG6", "XLK6szKo"]}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'VkDeMjIC' \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '79' \
    --sortBy 'lIu8mGrt' \
    --statCodes '["0c34buPJ", "Wj8o7fie", "yvdDSbh6"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    --offset '54' \
    --sortBy 'fDTREDRX' \
    --statCodes '["qapMjmDW", "tfBSlKZ6", "JgyugHnQ"]' \
    --tags '["4BdI3dYx", "UHXnguM7", "UF2dOzNy"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'rkXtbAss' \
    --statCodes '["jdpSmDXr", "m0M53kMr", "sxWkdUwU"]' \
    --tags '["Us5qMArK", "iK4LDtSW", "qwEmK86t"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'yJHKXULv' \
    --namespace $AB_NAMESPACE \
    --userId 'aQ83yZHu' \
    --limit '25' \
    --offset '83' \
    --sortBy 'iWnMtHGN' \
    --statCodes 'NYrt6afC' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'QPL7uCxh' \
    --limit '95' \
    --offset '65' \
    --sortBy '5ifcaHov' \
    --statCodes '0blQjMaX' \
    --tags 'r0WXxSPL' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'wI3nWGSG' \
    --body '[{"statCode": "Sx3bDO30"}, {"statCode": "ohNyi1x7"}, {"statCode": "T24ngjFL"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'CYuFeZCP' \
    --additionalKey 'zKfDpzbB' \
    --statCodes '["oxCLy3Zs", "dfJxMkjr", "ajL5vY6r"]' \
    --tags '["VHz72iUk", "ubTVDeo0", "4egJJhHw"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems1' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'CQKwmGPi' \
    --body '[{"inc": 0.34418523989242833, "statCode": "MTz3ojUo"}, {"inc": 0.28734355585647076, "statCode": "zbOB7BSO"}, {"inc": 0.6589718036212747, "statCode": "uAfYz3Lm"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'mi48QrYu' \
    --body '[{"inc": 0.8107539681735737, "statCode": "DRzLCLHE"}, {"inc": 0.5728435792081988, "statCode": "H9uliTSc"}, {"inc": 0.1214775670471937, "statCode": "du42mB85"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId '00ZsUhuF' \
    --body '[{"statCode": "6ONL6ZNp"}, {"statCode": "g2Mmkq0l"}, {"statCode": "BxTCKpw6"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'O7mKUPDh' \
    --userId 'ghRkspqX' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'xpRtwu3O' \
    --userId 'JHsqJ8US' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'lfI2G7i5' \
    --userId 'USur1Hvq' \
    --body '{"inc": 0.2780811865189854}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'xKB5Lwmt' \
    --userId 'z3hjPpW4' \
    --body '{"inc": 0.23459014997949235}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'iE0rd97a' \
    --userId 'unj94rYt' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"rBz3de1R": {}, "s6WBQsvL": {}, "CJ3oZ0NT": {}}, "additionalKey": "4E93Rgvi", "statCode": "xlDhFHSt", "updateStrategy": "INCREMENT", "userId": "Sr9H4KV2", "value": 0.2728644785185703}, {"additionalData": {"kR7Xvgg2": {}, "sH3Ye7C1": {}, "vGIHDH67": {}}, "additionalKey": "s38ghyWc", "statCode": "QhXEsyr6", "updateStrategy": "MIN", "userId": "LEebGKA4", "value": 0.4376336820675911}, {"additionalData": {"EJUQsKW1": {}, "xnt1HLAK": {}, "OecpxXv7": {}}, "additionalKey": "hydtpOB2", "statCode": "TpMHZnsa", "updateStrategy": "OVERRIDE", "userId": "Oobmwu1h", "value": 0.3316970898363302}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'DnFNaMyK' \
    --statCode '7wyxcMA5' \
    --userIds '["fKpzIsk9", "byWcDkTy", "OmQKbBKY"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId '0WiotAx3' \
    --additionalKey 'npR8Obzi' \
    --statCodes '["X2ZbEPWK", "G5GzBsEX", "3SFr8bea"]' \
    --tags '["ZYKYlu4d", "gi2i1K3S", "SsavNrdU"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'WeFdc9Nt' \
    --additionalKey '581NsPI3' \
    --body '[{"additionalData": {"hXWyzC8Z": {}, "QlLokdSO": {}, "VYJy5mYH": {}}, "statCode": "SgjplWlv", "updateStrategy": "MAX", "value": 0.8566619852084106}, {"additionalData": {"WYaN8Zvi": {}, "Iyuk1jtX": {}, "qf9tA0nU": {}}, "statCode": "qOOzpcDL", "updateStrategy": "MAX", "value": 0.7882802591952678}, {"additionalData": {"gSKkn97I": {}, "GLdim1ii": {}, "mwfPhhZy": {}}, "statCode": "AUmHnuD0", "updateStrategy": "MAX", "value": 0.9793896430128589}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId '8plzkkjX' \
    --additionalKey 'CF4qbMDs' \
    --body '[{"additionalData": {"5VtVyvwr": {}, "McdNYlnZ": {}, "9nz7QYw4": {}}, "statCode": "ZSHDEmAs"}, {"additionalData": {"mQKwLCvh": {}, "8Kd3lRL9": {}, "mdWPOFD9": {}}, "statCode": "Wp4q701Q"}, {"additionalData": {"0WIGyD5N": {}, "XWgbtpsG": {}, "2l3qNhm6": {}}, "statCode": "y9aSTHzt"}]' \
    > test.out 2>&1
eval_tap $? 92 'BulkResetUserStatItemValues' test.out

#- 93 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'wN6CLzLz' \
    --userId '1ONDdxcD' \
    --additionalKey 'RLpjDKW3' \
    > test.out 2>&1
eval_tap $? 93 'DeleteUserStatItems2' test.out

#- 94 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'PbgtybpI' \
    --userId 'FLpAhvL8' \
    --additionalKey 'UWEfDtXM' \
    --body '{"additionalData": {"7A01ZnEW": {}, "5sZx60Xs": {}, "EV2GxKZa": {}}, "updateStrategy": "INCREMENT", "value": 0.9949015331565109}' \
    > test.out 2>&1
eval_tap $? 94 'UpdateUserStatItemValue' test.out

#- 95 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"Ta1DBrKs": {}, "qCQpkRvf": {}, "2cBfX4mW": {}}, "additionalKey": "hTu03aIf", "statCode": "HVnc3PVr", "updateStrategy": "MIN", "userId": "7hl6fEsX", "value": 0.4094360211449092}, {"additionalData": {"XYSNO12P": {}, "RO8hecmp": {}, "PzVjaxGl": {}}, "additionalKey": "Yv58Db4M", "statCode": "2pOeCR2x", "updateStrategy": "INCREMENT", "userId": "6yxQEJId", "value": 0.992251865348604}, {"additionalData": {"U6H6wpE9": {}, "4L6a9pVX": {}, "PeGvibJH": {}}, "additionalKey": "9cj1i6tN", "statCode": "bFkwTh17", "updateStrategy": "MAX", "userId": "gqriJXva", "value": 0.24910410349404422}]' \
    > test.out 2>&1
eval_tap $? 95 'BulkUpdateUserStatItem1' test.out

#- 96 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'mH1DCypo' \
    --additionalKey 'uzTL7pdu' \
    --statCodes '["pEWd40ff", "CdZZxJUv", "X73Ry3vR"]' \
    --tags '["JK3y3XvZ", "MiYdykYF", "wDA8rDoL"]' \
    > test.out 2>&1
eval_tap $? 96 'PublicQueryUserStatItems2' test.out

#- 97 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'bBxndF0i' \
    --additionalKey 'YRHrmuZ8' \
    --body '[{"additionalData": {"HIGkmrgu": {}, "dbVqQ6Hi": {}, "ttlAdmgK": {}}, "statCode": "gcXHnNUW", "updateStrategy": "OVERRIDE", "value": 0.4462779077273695}, {"additionalData": {"qMy9rQPo": {}, "wESg3ofk": {}, "IqiFhn0W": {}}, "statCode": "5UJb45oJ", "updateStrategy": "OVERRIDE", "value": 0.6754494704704599}, {"additionalData": {"YuxH0ahO": {}, "8FClFwf6": {}, "TbKBsJ66": {}}, "statCode": "Y5e6MS3Z", "updateStrategy": "MIN", "value": 0.1051326801128879}]' \
    > test.out 2>&1
eval_tap $? 97 'BulkUpdateUserStatItem2' test.out

#- 98 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'X0Cv81Y8' \
    --userId 'BxaswXSm' \
    --additionalKey 'XlgJLHlk' \
    --body '{"additionalData": {"3CQL14zO": {}, "Fj3hLKnS": {}, "XBcQe3ak": {}}, "updateStrategy": "MAX", "value": 0.9447289670429252}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE