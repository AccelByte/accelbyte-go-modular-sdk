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
    --userId 'c9jtKaIF' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'a1WdKEVt' \
    --userId '0AbpItwp' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["oibIZOmA", "3oUn5ktw", "gTti04tW"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'RG8f1zyA' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'jwuKSxE1' \
    --body '{"achievements": ["CaxsSupY", "m22BzIqJ", "KXFVo81B"], "attributes": {"fWPN4B6K": "1OBFSlWs", "KeBQzQ44": "ESEj70yq", "VcTFdAQk": "msKmOfmY"}, "avatarUrl": "V2Q3LpoO", "inventories": ["UcjolhD4", "oGsz6qjn", "w2mkjQfl"], "label": "zMQtTTjR", "profileName": "r6vP96bH", "statistics": ["QcJW3P3K", "jAh4dc5k", "9fCFMxqa"], "tags": ["lFxBlM5c", "rlBSPxfH", "TH0qMVmy"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'TJG3FwgS' \
    --userId 'URj005tx' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'tUNt8rWy' \
    --userId 'yyHjuDvu' \
    --body '{"achievements": ["eqdeVCQo", "RkRcb7sy", "xEecB4el"], "attributes": {"O0cROSed": "fDSFt0X8", "KbQOWKo5": "fDj1vXQo", "FmP1qZtI": "QgpWDkcL"}, "avatarUrl": "DgOffKr2", "inventories": ["Hiak1lLk", "yb6jjIQ9", "k6spFp32"], "label": "iAtWhQOA", "profileName": "taUbnbvD", "statistics": ["aYh6ptLk", "GLJMfXZP", "laGFUUBS"], "tags": ["hWOu7HtL", "N61MJxUR", "MBICGi4K"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'tvX08eWj' \
    --userId '1GkBe2KC' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'bKsGe0Bl' \
    --namespace $AB_NAMESPACE \
    --profileId 'AYwRK6j5' \
    --userId 'Xw7fOiZO' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'VZYIYjmY' \
    --namespace $AB_NAMESPACE \
    --profileId 'L2m4RcJJ' \
    --userId 'PvuSqpR8' \
    --body '{"name": "lvwd7xYV", "value": "R2jcYXLa"}' \
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
    --offset '2' \
    --statCodes 'tkkZ0kTt' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'unTU4xR1' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'DAILY' \
    --limit '83' \
    --name 'BRh4SMlV' \
    --offset '50' \
    --sortBy 'CBgq7ZBv' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "WEEKLY", "description": "Pg72aG3G", "end": "1997-06-02T00:00:00Z", "name": "VomUqpHU", "resetDate": 16, "resetDay": 23, "resetMonth": 52, "resetTime": "fZENVuQZ", "seasonPeriod": 27, "start": "1998-07-26T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["Dt98p1Lg", "IFpYNBIT", "J0hB4ISN"]}' \
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
    --cycleId 'yhrAONqi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'e0IBSghV' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "SEASONAL", "description": "qIrE9UdW", "end": "1997-05-05T00:00:00Z", "name": "gCuBlQbu", "resetDate": 98, "resetDay": 8, "resetMonth": 17, "resetTime": "KpVLxXVd", "seasonPeriod": 15, "start": "1998-03-12T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'zXtggqwC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId '3Gdi8KtT' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["ID05RuuQ", "QmuiXUUG", "7OtfcUjt"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'mirEUbqi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'Y6HJKlS4' \
    --userIds 'NO5mItCA' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.09429262556027473, "statCode": "BkQ4YPKl", "userId": "iHK518qe"}, {"inc": 0.0766893097977327, "statCode": "DWnm2Jpp", "userId": "W0jebGyz"}, {"inc": 0.030715072447025094, "statCode": "4hxOE2EJ", "userId": "v0TMpSUG"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.0896466695211614, "statCode": "lv3bSfms", "userId": "KP4RWjlB"}, {"inc": 0.45608249895073016, "statCode": "JIN4K48l", "userId": "pO409dgT"}, {"inc": 0.7684179872465058, "statCode": "AH3afU5m", "userId": "9025biCa"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'qX3SJfo2' \
    --userIds '["sxfg2hiE", "zNW67IDj", "T6OV7KPF"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "uvGVr1sr", "userId": "QcEBnfkj"}, {"statCode": "Elb6m2GQ", "userId": "A8ekNLhb"}, {"statCode": "LTGW2qhB", "userId": "WpkiVXok"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'SLYcuiVu' \
    --isGlobal 'true' \
    --isPublic 'false' \
    --limit '93' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["9EFfhiMY", "Ep7T2BtH", "shWF9uGW"], "defaultValue": 0.6581168281560487, "description": "Ua1xJ6ls", "globalAggregationMethod": "TOTAL", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": false, "maximum": 0.5385083006455474, "minimum": 0.891920851246764, "name": "5RuUb38d", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "YWjCTTqP", "tags": ["4uoqnQqQ", "8rPLTH5X", "2RZjQzt2"]}' \
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
    --isPublic 'false' \
    --limit '87' \
    --offset '97' \
    --keyword 'aKMUHixv' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'Gu3iiEu2' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'Lbytl6n7' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'zCC6jrya' \
    --body '{"cycleIds": ["XXXhSB2v", "0S1DYpex", "eUExGgMU"], "defaultValue": 0.34245894188370407, "description": "gY1QKnq6", "globalAggregationMethod": "TOTAL", "ignoreAdditionalDataOnValueRejected": false, "isPublic": false, "name": "okNsvEcE", "tags": ["YEHs91g2", "uBbVLnVx", "Ill2t9mo"]}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'kyjlKqFx' \
    --limit '60' \
    --offset '46' \
    --sortBy 'RmzNKj7t' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'ow3rLaYT' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId '90dpOgBs' \
    --namespace $AB_NAMESPACE \
    --userId 'EtxdqJwp' \
    --isPublic 'false' \
    --limit '85' \
    --offset '78' \
    --sortBy 'DhtMRd7B' \
    --statCodes 'CkeL0W4H' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'QMyD43i0' \
    --isPublic 'true' \
    --limit '20' \
    --offset '26' \
    --sortBy 'xnMPzyFC' \
    --statCodes 't4EGW73n' \
    --tags 'SfjK8Y0b' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'WkTZXhjF' \
    --body '[{"statCode": "vLzha9Wd"}, {"statCode": "ygWcDr1Y"}, {"statCode": "91pXJqzH"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'pgGK5Mva' \
    --body '[{"inc": 0.4592230428962635, "statCode": "u7UaU3Kp"}, {"inc": 0.9130289569408762, "statCode": "Kp3Z4j0G"}, {"inc": 0.3249274392244368, "statCode": "5AeVDtzz"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'ZGzPaAib' \
    --body '[{"inc": 0.7966919227541517, "statCode": "0J4GipwO"}, {"inc": 0.48512801735852595, "statCode": "F5xmi9II"}, {"inc": 0.9075647751477086, "statCode": "Hxrw3DpV"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'vdDvPp74' \
    --body '[{"statCode": "BGeEt1he"}, {"statCode": "6aGnBh2P"}, {"statCode": "wRt5WtEI"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'QkSp8pqP' \
    --userId '1dnKnCt6' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'AWm9GULV' \
    --userId 'c4MW7sXf' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'tpY039Yo' \
    --userId '3XJOwfIO' \
    --body '{"inc": 0.17580203864194344}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'XZ0jrLkJ' \
    --userId '0V5e3yUy' \
    --additionalKey 'wTbKlTqR' \
    --body '{"additionalData": {"GDPw8dw7": {}, "EJU40B3d": {}, "jSr179NY": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '72' \
    --statCodes 'UIEINAgU' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'u4csBS5D' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'ANNUALLY' \
    --limit '47' \
    --name '8LL8kvqh' \
    --offset '94' \
    --sortBy 'zMLFW1Wv' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["nipk50yw", "3DOaQMYk", "g12y6LyZ"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'GDZisWJM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'QUMbL3zT' \
    --userIds 'Ap8a4D2H' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.19392201320590519, "statCode": "MkB0ciuI", "userId": "MJXRGt3m"}, {"inc": 0.03589202664486002, "statCode": "nCQTSwZM", "userId": "xo7RVIQe"}, {"inc": 0.7117083738948425, "statCode": "tTp9rklU", "userId": "nA6xFLZP"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.013173750511565663, "statCode": "5GXoyWQ5", "userId": "VQcV3HmJ"}, {"inc": 0.3264143283338361, "statCode": "21a7lAuI", "userId": "aZnGznF7"}, {"inc": 0.5552739002002034, "statCode": "dvHV81aN", "userId": "V3FTS3hE"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "k873jwfI", "userId": "hBM0BCMV"}, {"statCode": "SQULQuHI", "userId": "roZvca0u"}, {"statCode": "CY4o2APE", "userId": "7NnCxg73"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["XyTZTvS2", "0XErOQsW", "KWX4OKPu"], "defaultValue": 0.1905323541734134, "description": "lsN6JJYM", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": true, "maximum": 0.6073752055172862, "minimum": 0.0742325268613605, "name": "k0aEkHqQ", "setAsGlobal": true, "setBy": "SERVER", "statCode": "rQTQ2sBv", "tags": ["PK4RRZDa", "PORHCsOY", "9uWnpIWJ"]}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'mAH4MLEN' \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '7' \
    --sortBy 'PUerbo8T' \
    --statCodes '["ljIE6USP", "wJmRB9jo", "VcQVDBvj"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '43' \
    --sortBy 'IOk31Bpf' \
    --statCodes '["B3Mg6PfX", "FLMM98up", "AnFYSF5F"]' \
    --tags '["ovjNQYgO", "bR0oEOIx", "S4JQYYXA"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'qMXEFJ0B' \
    --statCodes '["UoieacIh", "6VLcz3wY", "JI6zpgZS"]' \
    --tags '["mFouScgF", "HpgZAZoW", "0zNW26dk"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'XRR6xbKV' \
    --namespace $AB_NAMESPACE \
    --userId 'wy5eWM0L' \
    --limit '48' \
    --offset '18' \
    --sortBy '6HL4fIvf' \
    --statCodes 'PdJPURN7' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'g7JmTjL0' \
    --limit '33' \
    --offset '60' \
    --sortBy 'wqTQWIn3' \
    --statCodes 'duMVEb01' \
    --tags 'CEDG7pLq' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'F9dz0Uwr' \
    --body '[{"statCode": "JiA3ZFfc"}, {"statCode": "HaLwSANI"}, {"statCode": "N6vIpAzM"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'zKxUNEbp' \
    --additionalKey 'dGE4uxRF' \
    --statCodes '["1byplhEm", "LmNR3k3b", "6jlc6zGD"]' \
    --tags '["IiNpF4ad", "jLsRmfzp", "T8CIn7BY"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems1' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'p2w2Mp0d' \
    --body '[{"inc": 0.7607765737821937, "statCode": "jHKKEarR"}, {"inc": 0.5866496293453044, "statCode": "JsqcOjRT"}, {"inc": 0.47682436335157585, "statCode": "nkgG9z1k"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'nR8zTDP6' \
    --body '[{"inc": 0.09945003569724198, "statCode": "zScljAxd"}, {"inc": 0.383560353467031, "statCode": "D0kAou7q"}, {"inc": 0.7406091521126409, "statCode": "zfh9Ziu1"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'O2LhspJl' \
    --body '[{"statCode": "3QVIX0xq"}, {"statCode": "L1rCkK9h"}, {"statCode": "dH4iXBYk"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'JgdI1irM' \
    --userId 'Zxq4w9L1' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'ouGKjB7r' \
    --userId 'bkp7K1uv' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'KW9DRkPd' \
    --userId '6P5RMa6k' \
    --body '{"inc": 0.5133802460272668}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'aTvuKMQY' \
    --userId 'pR5Ajiv4' \
    --body '{"inc": 0.5912639382339422}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'LJsDxdP3' \
    --userId 'A0sL8lrs' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"9hK5Xx58": {}, "qhVEfAFM": {}, "h9ZLYX1M": {}}, "additionalKey": "3DeMccBK", "statCode": "xbaVGKKh", "updateStrategy": "OVERRIDE", "userId": "FBnB4ni6", "value": 0.23424198018570797}, {"additionalData": {"SkAF8aLO": {}, "N2Y2xVyL": {}, "yYPB6vve": {}}, "additionalKey": "XYvLK0hH", "statCode": "gkyD3Vu4", "updateStrategy": "MIN", "userId": "UWCwWZ8X", "value": 0.7629130356368221}, {"additionalData": {"Uy40ynRb": {}, "PkA91LWa": {}, "DpIc7VdS": {}}, "additionalKey": "O1JzWYTc", "statCode": "nMmnqYxG", "updateStrategy": "MIN", "userId": "vjLMpGJN", "value": 0.29468095712440234}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'C6Zjhmdf' \
    --statCode 'GDs3mg47' \
    --userIds '["SY7aNq82", "rQZrPfbF", "CCY5COGu"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'Ip9eCZod' \
    --additionalKey 'sWmjwVGn' \
    --statCodes '["5Qvt9Kg9", "Be9BnpET", "tTyTzirh"]' \
    --tags '["jVHO02F8", "qEn4dl7o", "GMN46Fui"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'bZaVyhko' \
    --additionalKey 'oLlIIczQ' \
    --body '[{"additionalData": {"HOKfUh36": {}, "fZXjAwS1": {}, "VML3bUqk": {}}, "statCode": "yucrsfCq", "updateStrategy": "MAX", "value": 0.11004876084013826}, {"additionalData": {"HTTfn9cw": {}, "7jgh7E5y": {}, "FvEmACXf": {}}, "statCode": "NAdmgdlQ", "updateStrategy": "MIN", "value": 0.39187744215679643}, {"additionalData": {"D6cJTbzo": {}, "6079vSdm": {}, "TLIWP1A0": {}}, "statCode": "c8NTVTFH", "updateStrategy": "OVERRIDE", "value": 0.21183750901217369}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'hvL02yZP' \
    --additionalKey 'PLzE4FSB' \
    --body '[{"additionalData": {"uqwikO0q": {}, "9X8chwzV": {}, "GhWDByuS": {}}, "statCode": "47nxCPTg"}, {"additionalData": {"71bP5aps": {}, "MsaPOsht": {}, "5bpUIKEw": {}}, "statCode": "S27Yxtv8"}, {"additionalData": {"g7lLGJFm": {}, "X9IcYb65": {}, "dghgQiun": {}}, "statCode": "A98Sq9Tp"}]' \
    > test.out 2>&1
eval_tap $? 92 'BulkResetUserStatItemValues' test.out

#- 93 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'NOw9sQgN' \
    --userId 'UsVNrm3B' \
    --additionalKey 'O3aOcUhZ' \
    > test.out 2>&1
eval_tap $? 93 'DeleteUserStatItems2' test.out

#- 94 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'jlSC16PM' \
    --userId 'Rz4HIwns' \
    --additionalKey 'fPTVR0Ag' \
    --body '{"additionalData": {"pB5JPXi6": {}, "vvgLDAbh": {}, "dwiSUSYB": {}}, "updateStrategy": "MIN", "value": 0.0560894009202475}' \
    > test.out 2>&1
eval_tap $? 94 'UpdateUserStatItemValue' test.out

#- 95 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"mc1u41Tn": {}, "ZMs73jvP": {}, "9gwXVo8d": {}}, "additionalKey": "V8ak5NuA", "statCode": "jncJPIO2", "updateStrategy": "MAX", "userId": "rtoXLC3O", "value": 0.14241314270496774}, {"additionalData": {"zlLrhyn7": {}, "3H4Jkj7u": {}, "opv8UF6f": {}}, "additionalKey": "lURSBZ6E", "statCode": "kUXuUYYU", "updateStrategy": "INCREMENT", "userId": "TuXRZmny", "value": 0.8800030404479358}, {"additionalData": {"rSdOQmPL": {}, "tpsNJbSs": {}, "43Tde2Jh": {}}, "additionalKey": "avXkub24", "statCode": "UIJkZSJM", "updateStrategy": "INCREMENT", "userId": "56tqk3by", "value": 0.6951350866804298}]' \
    > test.out 2>&1
eval_tap $? 95 'BulkUpdateUserStatItem1' test.out

#- 96 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId '2bs6nnnF' \
    --additionalKey 'qZPBV8gI' \
    --statCodes '["xvLOTrsI", "B7BVvbyv", "keTiVGz8"]' \
    --tags '["kDg6tYn9", "X3tRf0wU", "EK1jTbjV"]' \
    > test.out 2>&1
eval_tap $? 96 'PublicQueryUserStatItems2' test.out

#- 97 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId '8uipm1c4' \
    --additionalKey '0GeukwzO' \
    --body '[{"additionalData": {"y2kJK5j6": {}, "BRLhCPOi": {}, "bOlZzZlw": {}}, "statCode": "EP2bWw5V", "updateStrategy": "OVERRIDE", "value": 0.36545676795864623}, {"additionalData": {"j88a69Ug": {}, "PXgyI2I9": {}, "No91MQLo": {}}, "statCode": "zzXDeDfk", "updateStrategy": "INCREMENT", "value": 0.42620421191312885}, {"additionalData": {"aExshiyp": {}, "amKV1DWm": {}, "S2sUNxHD": {}}, "statCode": "BiR5Z8q2", "updateStrategy": "MAX", "value": 0.7644152571593564}]' \
    > test.out 2>&1
eval_tap $? 97 'BulkUpdateUserStatItem2' test.out

#- 98 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'kiIHl7LE' \
    --userId 'nsqwMMK6' \
    --additionalKey 'WGUSuXPT' \
    --body '{"additionalData": {"9BNRgqnO": {}, "QBseO7YB": {}, "1jJgISSj": {}}, "updateStrategy": "MAX", "value": 0.23580022977445003}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE