#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Code generated. DO NOT EDIT.

# Meta:
# - random seed: 256
# - template file: cli_test.j2

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
echo "1..95"

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
samples/cli/sample-apps Social getNamespaceSlotConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 2 'GetNamespaceSlotConfig' test.out

#- 3 UpdateNamespaceSlotConfig
samples/cli/sample-apps Social updateNamespaceSlotConfig \
    --namespace $AB_NAMESPACE \
    --body '{"maxSlotSize": 65, "maxSlots": 89}' \
    > test.out 2>&1
eval_tap $? 3 'UpdateNamespaceSlotConfig' test.out

#- 4 DeleteNamespaceSlotConfig
samples/cli/sample-apps Social deleteNamespaceSlotConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'DeleteNamespaceSlotConfig' test.out

#- 5 GetUserSlotConfig
samples/cli/sample-apps Social getUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'YzyWX9oCJiWp3pQc' \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
samples/cli/sample-apps Social updateUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId '7pRwcCF3e4M2reU2' \
    --body '{"maxSlotSize": 23, "maxSlots": 60}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
samples/cli/sample-apps Social deleteUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'D6yWNdKxqj3jsb1Y' \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
samples/cli/sample-apps Social getUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId '8Z7mC5EUlCsqJ5eO' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'iCCwK0lZAoplYwpA' \
    --userId 'qMIQRDnesrAbUCSO' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
samples/cli/sample-apps Social getUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'O15YFExLwKSpfYzs' \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
samples/cli/sample-apps Social getSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'J8fIieuFrM2Srn4E' \
    --userId 'XJz2WmApZpST1ktm' \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["VRl4oiGhlGe4FHfM", "JXv5hvm0jKM9JP5C", "mDzShU0WHtP4woSY"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'Tmv3fWzYAI8zfMHo' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'kH2lPpFInqo2Vkaq' \
    --body '{"achievements": ["sTGQWwL7leJQeXNn", "GHnWmn3hMt32OXon", "R5PLb5SUqM7jbWII"], "attributes": {"UkdSkx7s3zm8Ybea": "zmcPmXZVbcc64UJp", "7Ff4vb5ftvyF0DPc": "NMOmN5wT1xc3KRQX", "Mb5JMRFD7OSTe7gM": "xqofUrx2RFjr4Bar"}, "avatarUrl": "ngTX6DipTBYStyKC", "inventories": ["20NxYDXi60AZVy9u", "yBdxrSEvorhDoXep", "BLkYG8rsmE6LIpau"], "label": "cNxEZudzpqtke1Mk", "profileName": "PyWl0MMx2PvMyGML", "statistics": ["vWzQDdneYbF1fgPc", "mUqByBUWEIvp5N6X", "WqyeBvYRkXiv1rYk"], "tags": ["ZLE4AXSWqCrJlkzJ", "YTU5s2RCKyqIUIry", "Z1qWdZnUdtvDFQsD"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId '9cuFWVSuHGJlg6AW' \
    --userId 'bCFmfru2WrXmQlps' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'bbtDeNMCShZL0H2Z' \
    --userId 'nYshGxMoP8na96rA' \
    --body '{"achievements": ["JLYSYFSxC0defpcB", "VXDVRG4rWkbYB3Tx", "9NRSA3Ie3vO80XI9"], "attributes": {"5wPmWyd1HW2bYXmw": "Zl8nFZQ68mFmqkeq", "vq2WIgQem6v8orMy": "YC2dfZfjBa403HME", "J3ikWhMlmS4BJEfJ": "5T1MyqU9kmYKxCzG"}, "avatarUrl": "uhGsWLzFnY2CMxvf", "inventories": ["fN2elsHtpNPvKdm3", "14CzT5Qz2LpR9XPc", "pWiA3EP4L8uFgDTP"], "label": "QAP0g8sxnsXkEODZ", "profileName": "dfGLTJzvhJJtut2s", "statistics": ["wCc72ZcBTQHa2q3e", "ty72ehsoIlWkVM1n", "cclxACHqPyPeJwJM"], "tags": ["MC4pudBmLTBXvDqG", "lw2ouVhb1ebN9gNw", "7fZ5Gv4EXzSpzmWo"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'gqzhSxBKNVYJ8Egv' \
    --userId '5ZekaIPM5qPVyyee' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'wV97Sv7bmcEce8DQ' \
    --namespace $AB_NAMESPACE \
    --profileId 'eHMbFGbMUFz7cu9H' \
    --userId 'ZTeaK0Gi7DppcfbT' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'lMTPnWHCUfiIyT6R' \
    --namespace $AB_NAMESPACE \
    --profileId 'BK0wlqSn05gvvoGg' \
    --userId 'zaGCOYuwmOl2OY5V' \
    --body '{"name": "j3EiLX3uXcoikMIM", "value": "mXhzU7OrjmIOAefq"}' \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
samples/cli/sample-apps Social publicGetUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'A0JnpZ1hJPM3A8cT' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
samples/cli/sample-apps Social publicCreateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --userId 'ujlRuuuNJylBqwih' \
    --label '0z4gae0GfgK95KHa' \
    --tags '["zWg4dPhqpY47qTJu", "1cIaLLsy7y6Pzvkh", "zeXWxUjNWBQCYBma"]' \
    --checksum 'bOixesCR4G0jMWUN' \
    --customAttribute 'OQrLW3cCNm4oeG7d' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
samples/cli/sample-apps Social publicGetSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'uNMBcLBX4b0DtC1O' \
    --userId 'DMXqDEvbwCO3iuNy' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
samples/cli/sample-apps Social publicUpdateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 's7aDyrk7PGg0JLWT' \
    --userId '9TYYusAgP1PTVPyF' \
    --label 'sxlxyMsqFNeredLu' \
    --tags '["A1OePH09YafczKVk", "DEv3wGGX4ug7JU9g", "cWyVbKZRsxAv3Klz"]' \
    --checksum 'bpe6dKckEgl9tFlg' \
    --customAttribute 'IsZ4aC64GIIvTM8P' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
samples/cli/sample-apps Social publicDeleteUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'nmfzVG8HmlUaBkIa' \
    --userId 'jwu4FsFSMLXGLJEA' \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
samples/cli/sample-apps Social publicUpdateUserNamespaceSlotMetadata \
    --namespace $AB_NAMESPACE \
    --slotId 'lc8WpnxAJ00H3IVS' \
    --userId 'zBpMHK1m2yBmtcVT' \
    --body '{"customAttribute": "SXPdRPtWT6oAjFj5", "label": "yFQsRNK01FzyRGwX", "tags": ["9Mrh18s3GzJmw3PS", "E8pyHtWb0xX4z3Q6", "H4DPfkd5GwF4a48R"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateUserNamespaceSlotMetadata' test.out

#- 26 GetGlobalStatItems
samples/cli/sample-apps Social getGlobalStatItems \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '61' \
    --statCodes 'YGDkb5s8ZwdtIQKu' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode '8Ev8ghbXBptgFoIO' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'SEASONAL' \
    --limit '25' \
    --name 'SHNMefO9de2OLqK3' \
    --offset '61' \
    --sortBy 'WbH2DcnV9cpRhLXJ' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "WEEKLY", "description": "0kvX8PHowhRms2RR", "end": "1975-08-28T00:00:00Z", "name": "KjvKFCKep8KXeQyk", "resetDate": 54, "resetDay": 14, "resetMonth": 90, "resetTime": "rcrDrVHbfbwymfLz", "seasonPeriod": 50, "start": "1979-09-30T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["DsQ9PNyJdJvOkDAw", "UgkaGrVJPNO6VqQj", "Jcm3rRmXJIYMeldG"]}' \
    > test.out 2>&1
eval_tap $? 30 'BulkGetStatCycle' test.out

#- 31 GetStatCycle
samples/cli/sample-apps Social getStatCycle \
    --cycleId 'Ebl43MGie7lqjuey' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetStatCycle' test.out

#- 32 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'LbAicPtYriBi7U6r' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "SEASONAL", "description": "1Jnmo0MwxQkKPUyA", "end": "1985-08-20T00:00:00Z", "name": "bldLZl5w1Hu8t5Mi", "resetDate": 99, "resetDay": 85, "resetMonth": 56, "resetTime": "CmLVss1zuCzOe9h8", "seasonPeriod": 68, "start": "1994-03-19T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdateStatCycle' test.out

#- 33 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'TAVWREzEIP05N9IO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'DeleteStatCycle' test.out

#- 34 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'QEkmwIDWiDQhdnLG' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["5faHwkohbc5PTuMm", "RhYVCSlSIX1bjRGb", "7XCAd1LqyN00nsmf"]}' \
    > test.out 2>&1
eval_tap $? 34 'BulkAddStats' test.out

#- 35 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'LmVNlhu57NmLBjOe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'StopStatCycle' test.out

#- 36 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'uNhAkwxlxoUDXs7P' \
    --userIds 'BbL22QTB99WoHWa1' \
    > test.out 2>&1
eval_tap $? 36 'BulkFetchStatItems' test.out

#- 37 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.07501779182994206, "statCode": "4XOSew9JfL8IlMr8", "userId": "rqJx2tkr6QfZaVRt"}, {"inc": 0.1616884797933893, "statCode": "TcasQJ3MEVCHibWw", "userId": "2Ljqhsc6TcbLazR0"}, {"inc": 0.9717087103071305, "statCode": "qpAsVIkiRq9UixPG", "userId": "GQD04zxjuuK3JHmx"}]' \
    > test.out 2>&1
eval_tap $? 37 'BulkIncUserStatItem' test.out

#- 38 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.22696471612619695, "statCode": "oDv3JNuNMDJcacA2", "userId": "5nz1sqi3pzu3CVX6"}, {"inc": 0.42710319867109503, "statCode": "YSdmnRhqYSgRBI88", "userId": "4l7IMCy8NKdCJgrO"}, {"inc": 0.8834194742209542, "statCode": "5syfSHrOiiqyBQ3B", "userId": "RtQge1oIabdugdLl"}]' \
    > test.out 2>&1
eval_tap $? 38 'BulkIncUserStatItemValue' test.out

#- 39 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'IQLN5oEj4TP84hzJ' \
    --userIds '["IzdpMyTNV3IywG7B", "RbPOotui4bLCoTr4", "lPGSds69DGDgKzhT"]' \
    > test.out 2>&1
eval_tap $? 39 'BulkFetchOrDefaultStatItems' test.out

#- 40 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "I1omA4Gt211AQqdm", "userId": "Hpb4U6E4SASDBeBG"}, {"statCode": "cf5IrOinsLHu5Xcq", "userId": "Rz7jnOnwQMpxwiE1"}, {"statCode": "1GzrjtvL4qYBN4c2", "userId": "U3IxNuyogiPGIQ1V"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkResetUserStatItem' test.out

#- 41 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'SugahkFtWHG7Bhvi' \
    --isGlobal 'true' \
    --isPublic 'false' \
    --limit '82' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 41 'GetStats' test.out

#- 42 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["BI5gwMQl7vYMSqbL", "54W1LdvawNKyM3JN", "WMN2SchW4TN8x26E"], "defaultValue": 0.27381297180104114, "description": "CYLY5XvGIIfCaC6G", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": false, "isPublic": false, "maximum": 0.6120160272887384, "minimum": 0.04960777641247349, "name": "juJV0IrE62C2ePhO", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "pjRFup8QE2khiVFs", "tags": ["95fq5rk8dDqTibXW", "aBxkDeUIhWVjAtK4", "rlqvTNaAnq9xnX11"]}' \
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
    --replaceExisting 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 44 'ImportStats' test.out

#- 45 QueryStats
samples/cli/sample-apps Social queryStats \
    --namespace $AB_NAMESPACE \
    --isGlobal 'true' \
    --isPublic 'false' \
    --limit '88' \
    --offset '56' \
    --keyword 'bjEz3jO88tUka9dB' \
    > test.out 2>&1
eval_tap $? 45 'QueryStats' test.out

#- 46 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'nx4jd3mymQ9ieHRN' \
    > test.out 2>&1
eval_tap $? 46 'GetStat' test.out

#- 47 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'zfTmOp0m5OZUs4df' \
    > test.out 2>&1
eval_tap $? 47 'DeleteStat' test.out

#- 48 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'znwn2RYAbjm1Skjs' \
    --body '{"cycleIds": ["ZM12TWfJUU3A3L8q", "yPQ3EpwyeU81tOxr", "a4HBjRGVsgQrKRsg"], "defaultValue": 0.5232138507720374, "description": "2iUfpdyLrziNXXo9", "ignoreAdditionalDataOnValueRejected": true, "isPublic": true, "name": "cBF9jPrw3LAMaOgd", "tags": ["a6RusFo4dQQC9GM1", "X9x6Avh3Of635Pb2", "zAbEQXmGUX9l0pd0"]}' \
    > test.out 2>&1
eval_tap $? 48 'UpdateStat' test.out

#- 49 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'himTw2iTDCf9vKhW' \
    > test.out 2>&1
eval_tap $? 49 'DeleteTiedStat' test.out

#- 50 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'L7f6cLdVJ8EXOLcp' \
    --namespace $AB_NAMESPACE \
    --userId 'QZunNHQKV8n6WMor' \
    --isPublic 'true' \
    --limit '69' \
    --offset '17' \
    --sortBy '1oMYztgrZx9x2jV3' \
    --statCodes 'pr1k9nkKqGJ1fhxb' \
    > test.out 2>&1
eval_tap $? 50 'GetUserStatCycleItems' test.out

#- 51 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'nurjOlWzqQgQfcaw' \
    --isPublic 'true' \
    --limit '43' \
    --offset '0' \
    --sortBy 'yh13xALzJXwLCJOX' \
    --statCodes 'tGwO6BtolfEHz3r0' \
    --tags '0YRm55nwA5GeX23z' \
    > test.out 2>&1
eval_tap $? 51 'GetUserStatItems' test.out

#- 52 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '0EuHTVO2gJvZlEBa' \
    --body '[{"statCode": "diiOXgByim6ksMQp"}, {"statCode": "HKHlYKwSKCK69Emr"}, {"statCode": "hQD6mPmPTjgX32AY"}]' \
    > test.out 2>&1
eval_tap $? 52 'BulkCreateUserStatItems' test.out

#- 53 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'QasKDx3riXHUo4UR' \
    --body '[{"inc": 0.017393915523610692, "statCode": "7gZNGXjFNHOiN9RW"}, {"inc": 0.22971114435790674, "statCode": "0VtIyzmKO8klqxrj"}, {"inc": 0.360476751903793, "statCode": "leBAYcA8IesNlmco"}]' \
    > test.out 2>&1
eval_tap $? 53 'BulkIncUserStatItem1' test.out

#- 54 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'GTQeJss5tBbpMjus' \
    --body '[{"inc": 0.9959177437172354, "statCode": "ETZtnvfu5Ht9dGod"}, {"inc": 0.12124593094504388, "statCode": "kgFO9tdlIy73Ctnt"}, {"inc": 0.43207744380953905, "statCode": "djby6FdErWSi057w"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkIncUserStatItemValue1' test.out

#- 55 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '7s2PCtIkuE2TZgQe' \
    --body '[{"statCode": "jOhEqTjWzpOmysGV"}, {"statCode": "QDRfYOpp5A8KsMkH"}, {"statCode": "6epyfxzXxOOy13Rm"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkResetUserStatItem1' test.out

#- 56 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '8R7RXQUM3Pp07hMQ' \
    --userId '17vW3n2cU7uNlTje' \
    > test.out 2>&1
eval_tap $? 56 'CreateUserStatItem' test.out

#- 57 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'o26TKMaGEbWhsm2M' \
    --userId '0tuly70PPT55TKvL' \
    > test.out 2>&1
eval_tap $? 57 'DeleteUserStatItems' test.out

#- 58 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'ea3GsstF2Py94Hgi' \
    --userId 'tXEvJfetsZpvdxf2' \
    --body '{"inc": 0.7764810489813536}' \
    > test.out 2>&1
eval_tap $? 58 'IncUserStatItemValue' test.out

#- 59 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'Ayl019AzZZzPdEBV' \
    --userId 'idKy0tRFq8ehjZEx' \
    --additionalKey 'GEtnhgclG7Jz1ReK' \
    --body '{"additionalData": {"PpWpgD0Pyjlfksqj": {}, "zDcpAAjqmje8EzbJ": {}, "iWKH9M3ZQTtuXb4v": {}}}' \
    > test.out 2>&1
eval_tap $? 59 'ResetUserStatItemValue' test.out

#- 60 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '65' \
    --statCodes 'YxcAjNuOyuqxKbYP' \
    > test.out 2>&1
eval_tap $? 60 'GetGlobalStatItems1' test.out

#- 61 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'Nbt1cf8nRGPx2zb8' \
    > test.out 2>&1
eval_tap $? 61 'GetGlobalStatItemByStatCode1' test.out

#- 62 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'MONTHLY' \
    --limit '95' \
    --name '315VXxTVvTgUCsPr' \
    --offset '90' \
    --sortBy '5RxjLu7Tkf9birb6' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 62 'GetStatCycles1' test.out

#- 63 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["w5r80zTJKz0mVkQB", "0zu9DAo15KSVzwfP", "mO99WtifgdOJfP06"]}' \
    > test.out 2>&1
eval_tap $? 63 'BulkGetStatCycle1' test.out

#- 64 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'CSJAWkLXJUKQg0KI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetStatCycle1' test.out

#- 65 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode '2nU22DsaWjNMzCrB' \
    --userIds 'EonUGTNP0tHGvp00' \
    > test.out 2>&1
eval_tap $? 65 'BulkFetchStatItems1' test.out

#- 66 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.6005976711850659, "statCode": "pgLjoeSJ2Vmr5tF8", "userId": "reoXyTczzs8Qd3jn"}, {"inc": 0.004688535713608166, "statCode": "qSEEQj5YQED6b7aR", "userId": "1chtHP5VMCSLthrn"}, {"inc": 0.5140743156202574, "statCode": "ObwGNp5uxmmAVk1v", "userId": "UK3mkGKQnBymeIOF"}]' \
    > test.out 2>&1
eval_tap $? 66 'PublicBulkIncUserStatItem' test.out

#- 67 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.2816125066699767, "statCode": "5mfQoNV40ykkK6v0", "userId": "cOVMlL9PctHXf3Pu"}, {"inc": 0.9645058886352126, "statCode": "tXQsB7U3SQQzSqMD", "userId": "TyU1Chp0B0bEUL1I"}, {"inc": 0.8363184622092794, "statCode": "Y1zcuhBIckkPfWQR", "userId": "wabPAzdRgXqqn11s"}]' \
    > test.out 2>&1
eval_tap $? 67 'PublicBulkIncUserStatItemValue' test.out

#- 68 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "cEJoBrQwLdNQCDbJ", "userId": "ZL9rUuSwC0vCrCfP"}, {"statCode": "GMa689jn58h1o7tP", "userId": "7y2bTy82GH9ItgRH"}, {"statCode": "EJXljDdrNnc3e0De", "userId": "xqfOURIf5A5Vm0yw"}]' \
    > test.out 2>&1
eval_tap $? 68 'BulkResetUserStatItem2' test.out

#- 69 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["I6RlgDMdPkFbvFGf", "nfWrS65HvIpGRCvJ", "h0DXMtx6CIAJQxTE"], "defaultValue": 0.6805132836381148, "description": "pL5vBje5X5y2XOUr", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": false, "maximum": 0.5415823448890777, "minimum": 0.9945637811627851, "name": "O7P9h9sMPsUeZiAR", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "uiBUlQlmy5Mlw3ma", "tags": ["t5Q7D9ECSJBknCER", "p8boDf3nG6gcNTCg", "Zv0ysugLnqjDYoxu"]}' \
    > test.out 2>&1
eval_tap $? 69 'CreateStat1' test.out

#- 70 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'xNHxTI0IjByjKZPj' \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '10' \
    --sortBy 'UwaqoDgOJgNq9aF6' \
    --statCodes '["XCmVlT0QhUJny3q1", "Eaq9qwk2GOiI30Ql", "wryhlCvr7Yf6pijo"]' \
    > test.out 2>&1
eval_tap $? 70 'PublicListMyStatCycleItems' test.out

#- 71 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '62' \
    --sortBy 'CpWgnuvxznTv5M1V' \
    --statCodes '["yNtFSZc5SeFalr4X", "DMPlTh1ooXAOtfXx", "zzq3L5zeqGmcPqzm"]' \
    --tags '["rVJK7krySq3U3CTJ", "0aYsq9iEaqYBAuv3", "MpGDacDkbh22FLVA"]' \
    > test.out 2>&1
eval_tap $? 71 'PublicListMyStatItems' test.out

#- 72 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'dTP5tqFhhJaDJDng' \
    --statCodes '["4tBZXuJrW8QCqCbh", "GGmXmDc9kG6DhcdR", "OM6PCKoiCMkNhRXh"]' \
    --tags '["A1x2Bf4E9zsR0WqF", "d1bR3A6O7FK98H3V", "ljroHAamOtFfZnnP"]' \
    > test.out 2>&1
eval_tap $? 72 'PublicListAllMyStatItems' test.out

#- 73 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'pMsLwCbd0iNniu2P' \
    --namespace $AB_NAMESPACE \
    --userId 'FbEINrE5clwcDjFG' \
    --limit '13' \
    --offset '82' \
    --sortBy 'mYqvdZQr11z140k5' \
    --statCodes '5ZhosLlKeYTKlLrO' \
    > test.out 2>&1
eval_tap $? 73 'GetUserStatCycleItems1' test.out

#- 74 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '0TtSJz1Tw1NHGwfl' \
    --limit '16' \
    --offset '56' \
    --sortBy 'k6DNll6Ea0PuGSEB' \
    --statCodes '1XS0Iso59pJxEZZr' \
    --tags 'e3efCUF5rNsakKAX' \
    > test.out 2>&1
eval_tap $? 74 'PublicQueryUserStatItems' test.out

#- 75 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId '2LPyId9swTj3oqJx' \
    --body '[{"statCode": "Nyc0FJKYMZ8dHbYE"}, {"statCode": "aA4DcAEKzwOFedAS"}, {"statCode": "Bb2Qc9thVVSPuUXR"}]' \
    > test.out 2>&1
eval_tap $? 75 'PublicBulkCreateUserStatItems' test.out

#- 76 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'y1eOEcqRg5Cm5UmG' \
    --additionalKey 'pESvxVZ6ZYQCGNCl' \
    --statCodes '["dgL9pQJH7hIfvFO1", "oQDLakHbAelHA0Xi", "EHPDKmn3V698i3Cj"]' \
    --tags '["j1UQtrRfhTFjuDHA", "fa1CPQc5saCTXwJ4", "ULVLLus9qVqsZXbE"]' \
    > test.out 2>&1
eval_tap $? 76 'PublicQueryUserStatItems1' test.out

#- 77 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'I7ABKPyld4qSNaOV' \
    --body '[{"inc": 0.7470706330531711, "statCode": "56ErUFVmMWi1kYyl"}, {"inc": 0.21669549014041223, "statCode": "ulgoSfw0F7wGoajK"}, {"inc": 0.9988106791594414, "statCode": "LYHl0gSOWrYrysiU"}]' \
    > test.out 2>&1
eval_tap $? 77 'PublicBulkIncUserStatItem1' test.out

#- 78 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'TR5edpImHiMPJ5hf' \
    --body '[{"inc": 0.3580175835195164, "statCode": "60J1tEiHWuAZaVKl"}, {"inc": 0.17535232090526487, "statCode": "7ZcINblOzZCYCRcv"}, {"inc": 0.9784456685810091, "statCode": "VSoQVdxtYqJF7uVt"}]' \
    > test.out 2>&1
eval_tap $? 78 'BulkIncUserStatItemValue2' test.out

#- 79 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'Y2aYX67OijGuPCRp' \
    --body '[{"statCode": "p7FsbZg0kkIuskfZ"}, {"statCode": "6NZIRQYu9tQkiW8B"}, {"statCode": "ASezEetDXyhla0Ot"}]' \
    > test.out 2>&1
eval_tap $? 79 'BulkResetUserStatItem3' test.out

#- 80 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'Kt6KHPNu23kz6WAI' \
    --userId 'mFTXGOxYIJWLxw9F' \
    > test.out 2>&1
eval_tap $? 80 'PublicCreateUserStatItem' test.out

#- 81 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'WV43JYWZ9UJu4YgD' \
    --userId '1jqX88Z9EDyObbza' \
    > test.out 2>&1
eval_tap $? 81 'DeleteUserStatItems1' test.out

#- 82 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'Sxy8VDqevgJUlj9X' \
    --userId 'h3fRHJPfaQKpJduS' \
    --body '{"inc": 0.4047120428826443}' \
    > test.out 2>&1
eval_tap $? 82 'PublicIncUserStatItem' test.out

#- 83 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'oxmW6wnkoqFaM9Yt' \
    --userId 'SxF2RELwBC0xF2zI' \
    --body '{"inc": 0.750352201191166}' \
    > test.out 2>&1
eval_tap $? 83 'PublicIncUserStatItemValue' test.out

#- 84 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'ZRTg7tqqpsys1lMt' \
    --userId 'jJD0AcP7lHCKWT3M' \
    > test.out 2>&1
eval_tap $? 84 'ResetUserStatItemValue1' test.out

#- 85 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"TFEt5kAQvrx9vHJU": {}, "dlgsECHYmyP9Jk5z": {}, "kCPL3wJX10skpX88": {}}, "additionalKey": "K42z0vA3Ez3fKo6l", "statCode": "5kGFzQ0ZqQbZbYaZ", "updateStrategy": "OVERRIDE", "userId": "P2XHhcaK9OEYkcgX", "value": 0.4759783232599798}, {"additionalData": {"pNyZXbkum9eBijfU": {}, "58yFhJoiTafDlOPV": {}, "O2a4KEvS7lwJMNFH": {}}, "additionalKey": "TsxSof2VOlq4ylEZ", "statCode": "K2RzB2BxJ9V6MxoN", "updateStrategy": "MIN", "userId": "P7b19YC2WDt87B1B", "value": 0.7685340097195253}, {"additionalData": {"4dlp6PuPTMckuZsT": {}, "0yXKwsirsTapm9Kx": {}, "6oJCCFFEIRbd90jU": {}}, "additionalKey": "gCk3o1BQzJgKiqLm", "statCode": "GOomKxNtpJETMDTT", "updateStrategy": "INCREMENT", "userId": "CyWqgI0EB4bU10Xp", "value": 0.389897536814639}]' \
    > test.out 2>&1
eval_tap $? 85 'BulkUpdateUserStatItemV2' test.out

#- 86 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'vUSPTX9gyEpWs0Gg' \
    --statCode 'oGXyOl1C8pHRDYPB' \
    --userIds '["ivLn7OgGBY3RdCYe", "rCeOXibrSXCyNoWu", "XffYRsHgRHl6kpPE"]' \
    > test.out 2>&1
eval_tap $? 86 'BulkFetchOrDefaultStatItems1' test.out

#- 87 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId '2MsHBE62CVaGUrVY' \
    --additionalKey 'D3rJeNr0y7kukgBf' \
    --statCodes '["5bLkMQnDISKIjbZR", "hUj44Tl71sAy1Fsk", "vaHLtw98pTuBxAgL"]' \
    --tags '["G9VIQqxscUNgdW1T", "surKbY1KzI2zjKad", "KCOn4mPihJZfsHNV"]' \
    > test.out 2>&1
eval_tap $? 87 'AdminListUsersStatItems' test.out

#- 88 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId '4vAMJ7EPw4mcinZT' \
    --additionalKey 'jXk3AkCYLKltENRu' \
    --body '[{"additionalData": {"HEkvScV5pVWumQlT": {}, "OctEFOI2Z53hAxd3": {}, "DRHMgELDQj43R1ad": {}}, "statCode": "dvyctR2aiBYB81sV", "updateStrategy": "INCREMENT", "value": 0.6040484458005562}, {"additionalData": {"NLYOaosRKVRywjix": {}, "6Mer1QxsNcpUtEQJ": {}, "Ck1uBL7tBePBYiBC": {}}, "statCode": "gPVQ0ift6BD3smU1", "updateStrategy": "MIN", "value": 0.5472678101715162}, {"additionalData": {"luETROztVtD4c6eV": {}, "hvW5HWSKbBJ2HPLj": {}, "skrfNGzY4c0GMtqb": {}}, "statCode": "Mcq8Ij5l3riJk33C", "updateStrategy": "OVERRIDE", "value": 0.6755690148282915}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItem' test.out

#- 89 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'JmEo3K1eTQN0f2mw' \
    --additionalKey 'EUTot52JRVFKfXIx' \
    --body '[{"additionalData": {"Z1PjX0iQpDiofm8v": {}, "8swNEUqXJF1EL2OO": {}, "XvvvtgoXfkYKdzK6": {}}, "statCode": "Wo44sIVzdJoc9KZ7"}, {"additionalData": {"gTgJjTSLn6Hmx6Et": {}, "XRbm4bLxkQ01i63V": {}, "qhCLBJoKFgbSKbXC": {}}, "statCode": "wOKhXbZHhlPKyMYd"}, {"additionalData": {"pXiKxZ4cf9jAxkev": {}, "gtXdDgVnjZNvJF4p": {}, "IZmtr6SghPCloRa9": {}}, "statCode": "t3Zqls0TrUZAgXSk"}]' \
    > test.out 2>&1
eval_tap $? 89 'BulkResetUserStatItemValues' test.out

#- 90 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'BLEO372djM3SmBIO' \
    --userId 'AycQB2QczYIxSSnq' \
    --additionalKey 'xkAWmGp3ooNaMOPP' \
    > test.out 2>&1
eval_tap $? 90 'DeleteUserStatItems2' test.out

#- 91 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'PuF2U2VzbIzxaEzw' \
    --userId 'Rexkef91QhYnd9pZ' \
    --additionalKey 'I11JcqgDUjZdVI2D' \
    --body '{"additionalData": {"Z4I64eHuDhJBYfKF": {}, "CmfnOQEIKIKHFG6k": {}, "D7U83QmA7CU12AYK": {}}, "updateStrategy": "MAX", "value": 0.8247146095248208}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserStatItemValue' test.out

#- 92 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"E929cFrY3zjedl1R": {}, "L2hiMoGsebAqkI19": {}, "IuFD9qz6sFu6iY8l": {}}, "additionalKey": "P8DxeIWRImjaq2ND", "statCode": "vPWaLHRFvZI9QR0O", "updateStrategy": "OVERRIDE", "userId": "c8PS1TDITLuJQkhZ", "value": 0.11771120372439592}, {"additionalData": {"YGNlT1Y5Z0D5R1yz": {}, "OndBouttwkUU5iHV": {}, "DuRFsVT4RxgaR0oZ": {}}, "additionalKey": "853gTgLWCfdMvmtS", "statCode": "uOIVaMt67HwTq1hZ", "updateStrategy": "MAX", "userId": "yTok3600m6WR9j07", "value": 0.9950760885636522}, {"additionalData": {"rVqdWgDICZuakdCL": {}, "mbIIkQPTb38ufz6s": {}, "w0SA6Iud0frAZYbK": {}}, "additionalKey": "p7oMp704cauJD1Of", "statCode": "7FGKC7KTdMhUUmHH", "updateStrategy": "MIN", "userId": "BdoWTz8k3dIqVwyb", "value": 0.6770373632035704}]' \
    > test.out 2>&1
eval_tap $? 92 'BulkUpdateUserStatItem1' test.out

#- 93 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'eCEkrtQ9ktPPzztC' \
    --additionalKey 'npsA00fUX7EXLk2u' \
    --statCodes '["eMO02bROd6Mqj5pT", "vnCVoFYdQFyeB22q", "1Jqj4qU0WjosD6kZ"]' \
    --tags '["pTF17Tdfj7as3n06", "m7jO1KHxEgp0ONxr", "xFgUlK58pUwptT63"]' \
    > test.out 2>&1
eval_tap $? 93 'PublicQueryUserStatItems2' test.out

#- 94 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'OjjXuzlppQt1euQO' \
    --additionalKey '2Pu7tc7vpj96PYfF' \
    --body '[{"additionalData": {"FLK7hPFLQ31aeIhi": {}, "N2EGzQzWQ7xD5T9l": {}, "A6zHX6NGnxgxDkpy": {}}, "statCode": "KmVY0KOTlZNnoKAj", "updateStrategy": "MAX", "value": 0.06948133101550324}, {"additionalData": {"d6tDW0WnGyUI4EqU": {}, "3A1289atqWtHnP6u": {}, "FJLqWQoKYrBxV9Vs": {}}, "statCode": "9xOasNEXXbGjKY2E", "updateStrategy": "OVERRIDE", "value": 0.7169450499320449}, {"additionalData": {"Nl06deQYIx6Sou6I": {}, "cB8XnWEXhWuJtxmc": {}, "Nu6PefmNQMTJGebL": {}}, "statCode": "oLTrx7BtZNFPr8vW", "updateStrategy": "MIN", "value": 0.011401589375986898}]' \
    > test.out 2>&1
eval_tap $? 94 'BulkUpdateUserStatItem2' test.out

#- 95 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'FBwsVvwdYLkHfYvH' \
    --userId 'CGqRJiZdMwHa7oIQ' \
    --additionalKey 'xPVPQaj9XgLRopm2' \
    --body '{"additionalData": {"UfiXysAZjomfFsxa": {}, "qGbDfwWBIwiHMFDs": {}, "TqTDzoexIoVcIG9T": {}}, "updateStrategy": "INCREMENT", "value": 0.8535766662273611}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE