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
samples/cli/sample-apps Social getUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'oND3csmt' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'nujLMgO7' \
    --userId 'pbvUg2oB' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["SMmyoBbw", "z5okKlTv", "K6F4Qx6L"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'KVtJonYt' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'zFRMsOjy' \
    --body '{"achievements": ["RHBqigIP", "ZJwNvYIV", "dAaB2Hqh"], "attributes": {"lH0dYThq": "MrFq9rSZ", "9TZuD4I4": "5C2FQ2gD", "prWPslZw": "hmDoaEbS"}, "avatarUrl": "QumDniWN", "inventories": ["E1wuODcm", "TfRQM7DV", "lxwHw7hi"], "label": "HHSsavO1", "profileName": "AUCWbWRm", "statistics": ["OxU4BTpS", "qzUwZUE4", "zV2G0bO4"], "tags": ["818QCoWx", "UbFBdNuW", "55kfheku"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'CqrZn15s' \
    --userId 'UF4qE9oA' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'q4TZCSzX' \
    --userId 'LVSOygiR' \
    --body '{"achievements": ["5sNZoOkA", "6w8bMJue", "gI9yNS8z"], "attributes": {"DYM8fHYn": "YbUXp58E", "7tiAxSjU": "ljExk8Db", "98gOyGP4": "rj2OQlZE"}, "avatarUrl": "OB6xf6cE", "inventories": ["ZrAeq8ep", "8bXF4bwo", "yKUleRvg"], "label": "bQWH5u2q", "profileName": "nPX30vS1", "statistics": ["zQCwvfvO", "D8D9I5RW", "qPZa9QE0"], "tags": ["jahj5InZ", "phuuB44j", "sruS5uad"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId '5fQ82mS1' \
    --userId '5qfnOR2e' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'mNvIAeiO' \
    --namespace $AB_NAMESPACE \
    --profileId 'qC6fKK2c' \
    --userId 'NKizPbf3' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'WbeOSYhO' \
    --namespace $AB_NAMESPACE \
    --profileId 'stMRYg6R' \
    --userId 'k5zd5zhz' \
    --body '{"name": "QE5bQCgg", "value": "JTSiaLQn"}' \
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
    --limit '9' \
    --offset '40' \
    --statCodes 'rWso8fXg' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'lCmrURTy' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'DAILY' \
    --limit '13' \
    --name 'Hdsp0ria' \
    --offset '36' \
    --sortBy 'kwcHAbey' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "WEEKLY", "description": "41nVzDSV", "end": "1984-11-12T00:00:00Z", "id": "rA3iODHA", "name": "gt1cxMDa", "resetDate": 22, "resetDay": 33, "resetMonth": 65, "resetTime": "bv9FCTeW", "seasonPeriod": 10, "start": "1978-07-22T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["t8OgeFWD", "FvhTi7NO", "cveBsnkW"]}' \
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
    --cycleId 'xKCE8bSg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'Kz9oZsyf' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "DAILY", "description": "wdcC23hq", "end": "1977-06-04T00:00:00Z", "name": "pDNU3yee", "resetDate": 18, "resetDay": 17, "resetMonth": 34, "resetTime": "ZUyph4ro", "seasonPeriod": 33, "start": "1975-08-19T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'fzPfSBfz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'kS9fuWr4' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["wvik79QJ", "G5U7AOLB", "qLNXJyT8"]}' \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'VrSIhLVD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'zshE6XNf' \
    --userIds 'qTGllabb' \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.21264499757139377, "statCode": "TM6wvcG7", "userId": "BsTmQ0yw"}, {"inc": 0.6340445356533202, "statCode": "mxrtrjiG", "userId": "zQ22lS5t"}, {"inc": 0.9746632821198432, "statCode": "BUxKjFi0", "userId": "X4mAtbJN"}]' \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9004817746146797, "statCode": "2H99NRfC", "userId": "M998Q91y"}, {"inc": 0.7957591553108729, "statCode": "TwAcIY6d", "userId": "T8rmPl0l"}, {"inc": 0.2654139343133318, "statCode": "mV4ZreaZ", "userId": "uKWItIgh"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'o1PFpEfp' \
    --userIds '["q7qZin1y", "SLdvwG9P", "oStkfyeE"]' \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "68S9TkJZ", "userId": "EB6blaE6"}, {"statCode": "o072Skqu", "userId": "ph1cLWT1"}, {"statCode": "o8Xt0k7l", "userId": "eohIVfKS"}]' \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'BogJEGQJ' \
    --isGlobal 'true' \
    --isPublic 'false' \
    --limit '91' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["ZT3pjHti", "3lGNU1cW", "lqiao0Xc"], "defaultValue": 0.6752115174516407, "description": "4EKjAY1t", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": false, "maximum": 0.01101914204037202, "minimum": 0.35062139659439373, "name": "apXn1Vxv", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "kEOKYd0J", "tags": ["cdh4c4CI", "6DCw8zG4", "CQb2S2zX"], "visibility": "SHOWALL"}' \
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
    --limit '54' \
    --offset '69' \
    --keyword 'SlWlAsIY' \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'eOxtZGq0' \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'O4brPQ7u' \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'oPhwaWy0' \
    --body '{"cycleIds": ["Cv3IKfu0", "1IQTBHfg", "PLPeY5Od"], "defaultValue": 0.5308651647052669, "description": "IFBJ3hTj", "globalAggregationMethod": "TOTAL", "ignoreAdditionalDataOnValueRejected": true, "isPublic": false, "name": "mRgz0MCu", "tags": ["PaNeCZTe", "oMHk4iB8", "UqyBli80"], "visibility": "SERVERONLY"}' \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'fI5zD2Vw' \
    --limit '81' \
    --offset '16' \
    --sortBy 'GSJ4VVog' \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'hQSkLXt1' \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'TNO60oi0' \
    --namespace $AB_NAMESPACE \
    --userId 'LLd8UrFz' \
    --isPublic 'true' \
    --limit '2' \
    --offset '76' \
    --sortBy 't73SWSjR' \
    --statCodes 'VOtcbosQ' \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'ol33620h' \
    --isPublic 'false' \
    --limit '88' \
    --offset '73' \
    --sortBy 'SNBEnHsM' \
    --statCodes 'VAmbWpHE' \
    --tags 'gvVoPASm' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'R0DtvVqE' \
    --body '[{"statCode": "DlRt26WZ"}, {"statCode": "yqpbPalR"}, {"statCode": "oGu3X3K7"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'wVsvTLXN' \
    --body '[{"inc": 0.7552721885737779, "statCode": "Fl1ltGCB"}, {"inc": 0.5936659666070326, "statCode": "ffMaH6wG"}, {"inc": 0.8631362605184655, "statCode": "HN0Xc89N"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'VqY25kPf' \
    --body '[{"inc": 0.2368334222655094, "statCode": "YiieWgzE"}, {"inc": 0.8898607315489431, "statCode": "H00rj5WM"}, {"inc": 0.9043673001978801, "statCode": "tYRD14Xu"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'nPLgLoI3' \
    --body '[{"statCode": "e0o3B8lX"}, {"statCode": "Ah2n9ktc"}, {"statCode": "bZYJFijh"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '3HPrwZCd' \
    --userId 'qzNoZI0E' \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'XtC4Ab8j' \
    --userId 'mmAB5hnT' \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'AcOBKPay' \
    --userId 'wr33iGDB' \
    --body '{"inc": 0.7443347583778147}' \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'fM8Y6qzR' \
    --userId 'CJnJjko4' \
    --additionalKey 'U7G6zS8r' \
    --body '{"additionalData": {"QGs5kv3z": {}, "Cyj7ZZWy": {}, "avIp24mK": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '86' \
    --statCodes 'Q6sFUs9J' \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'WA71eN9j' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'SEASONAL' \
    --limit '15' \
    --name 'jNnv2F5B' \
    --offset '54' \
    --sortBy '8awoIghj' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["fWIsPSoj", "H3RuhWn0", "5Y6OXML5"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId '7NRd4aq0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'vpaCkKHj' \
    --userIds 'xknFEKj1' \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.277642370439227, "statCode": "R8LLPR8d", "userId": "0o5jeARK"}, {"inc": 0.3604118486134653, "statCode": "bN11TVch", "userId": "sGLKzVaO"}, {"inc": 0.13330519054996492, "statCode": "MKhyU2WJ", "userId": "PSWAD861"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.3694990474211589, "statCode": "wuUwU41C", "userId": "z4kGytSM"}, {"inc": 0.8143747475250386, "statCode": "xu6TJNBG", "userId": "xWuXIsW4"}, {"inc": 0.5547419910094716, "statCode": "41fkIFk3", "userId": "RruLRsXg"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "4Gupchja", "userId": "HFxTtDtw"}, {"statCode": "A4xVSxnm", "userId": "am4zUQfE"}, {"statCode": "ei8BaByE", "userId": "9NfMuO1v"}]' \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["krXH0e6k", "fKIUUm7q", "vedMOCID"], "defaultValue": 0.2190248636884734, "description": "3z3dly23", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": false, "isPublic": false, "maximum": 0.642476316325317, "minimum": 0.365956185267833, "name": "6T0HaN1v", "setAsGlobal": false, "setBy": "SERVER", "statCode": "ElegdmoJ", "tags": ["0FuJrl8W", "a1nQAd0g", "xPlL2XE5"], "visibility": "SERVERONLY"}' \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'Cf5Uq1FE' \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '34' \
    --sortBy 'Aw8kcHY8' \
    --statCodes '["1tEM2LBK", "TJltR90r", "KWtMJu9X"]' \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '20' \
    --sortBy 'R10kabG2' \
    --statCodes '["0F07arZO", "PkTnczNF", "uKuMNdCK"]' \
    --tags '["o9u8vKS4", "vvayd6hD", "pTn2JxRH"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'e8vl2AXy' \
    --statCodes '["5bnIsZTa", "2rl1wwfB", "yvpVirkZ"]' \
    --tags '["EKyoBIea", "cwh4Fn4T", "A7BHL5fh"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId '2NPr17dO' \
    --namespace $AB_NAMESPACE \
    --userId 'PT61mL4v' \
    --limit '1' \
    --offset '30' \
    --sortBy '6Q1O2lFh' \
    --statCodes 'GadNNPql' \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'RfwuFKgD' \
    --limit '32' \
    --offset '14' \
    --sortBy 'ovBImbL8' \
    --statCodes '3Px1divJ' \
    --tags 'Gge9apfa' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems' test.out

#- 78 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'alBExYNN' \
    --body '[{"statCode": "EBxJ8G3T"}, {"statCode": "jS18dgN9"}, {"statCode": "BJsXux92"}]' \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'fCkDawjJ' \
    --additionalKey 'dpkRxCwh' \
    --statCodes '["4t5Wohj3", "Gn6gwmdM", "IukJRULj"]' \
    --tags '["3QMYY6lT", "1Mp2EU1h", "OpsI4CMP"]' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems1' test.out

#- 80 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '9trTWDTr' \
    --body '[{"inc": 0.5871975893008006, "statCode": "becq5QQA"}, {"inc": 0.5973745177220103, "statCode": "9O3tY8Ht"}, {"inc": 0.07659421924992005, "statCode": "NqrEXORw"}]' \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'L5aIj6eQ' \
    --body '[{"inc": 0.3498816967785465, "statCode": "55YtuvXn"}, {"inc": 0.9232307137878214, "statCode": "ouATN2Ed"}, {"inc": 0.6710647801685102, "statCode": "3EEMFTbp"}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'oymGxGXo' \
    --body '[{"statCode": "cRTl7CD1"}, {"statCode": "KyikiDv4"}, {"statCode": "Bt4ZGkRp"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'b1tqzieY' \
    --userId '81JTrjbo' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'Nq6mxthB' \
    --userId 'bF1LeIfO' \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode '1qYdNjBL' \
    --userId 'eRIfBHDZ' \
    --body '{"inc": 0.33478878533549294}' \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '3v2Xd400' \
    --userId 'EB2YAARk' \
    --body '{"inc": 0.43346222216205266}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'BKlzcyiY' \
    --userId 'i33W5Ftz' \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"9Iwbbg2N": {}, "qM1yBa2D": {}, "DsgLegGY": {}}, "additionalKey": "kGho4VGP", "statCode": "T1p1ikbc", "updateStrategy": "MAX", "userId": "VQYzVi5g", "value": 0.09380280911594796}, {"additionalData": {"Rbn91UZH": {}, "42KELDGu": {}, "odwy5ye1": {}}, "additionalKey": "gD3JdaF5", "statCode": "eg6dY56l", "updateStrategy": "OVERRIDE", "userId": "mWHP5yPh", "value": 0.6024814077176378}, {"additionalData": {"z29UKrwJ": {}, "6QkdpWxt": {}, "rYVzoC3X": {}}, "additionalKey": "LVebjjU0", "statCode": "DJ2qnuCs", "updateStrategy": "OVERRIDE", "userId": "aWdAwbRY", "value": 0.7656881377241049}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'YCSmUM3u' \
    --statCode 'KIegaiYl' \
    --userIds '["LG0r6Lmp", "AGkKIZSm", "v4QfZ2He"]' \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId '14wbQZJa' \
    --additionalKey 'imWkDnvh' \
    --statCodes '["V6XYCh9J", "FVhE8evE", "srshXEoQ"]' \
    --tags '["Nm23QIM7", "4sQoDVHx", "bVSQDGir"]' \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'Y7dU6skr' \
    --additionalKey 'HgjhIS2m' \
    --body '[{"additionalData": {"CiMQlFWl": {}, "OFBIVIfZ": {}, "t2rVeaDO": {}}, "statCode": "lLMRPTN4", "updateStrategy": "MAX", "value": 0.7288675490636688}, {"additionalData": {"63hp8Lse": {}, "lSlTaiyg": {}, "e4gxPmFm": {}}, "statCode": "IHGtI7oS", "updateStrategy": "MAX", "value": 0.3183957833734341}, {"additionalData": {"TrJPrflC": {}, "dMRX8thO": {}, "SFEJY11U": {}}, "statCode": "KABwkuTA", "updateStrategy": "MIN", "value": 0.7124883124325548}]' \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkGetOrDefaultByUserId
samples/cli/sample-apps Social bulkGetOrDefaultByUserId \
    --namespace $AB_NAMESPACE \
    --userId 'HcJICemH' \
    --additionalKey 'ngkaR2wI' \
    --body '{"statCodes": ["w3vaIzii", "eijMaeqi", "4SBqiLqC"]}' \
    > test.out 2>&1
eval_tap $? 92 'BulkGetOrDefaultByUserId' test.out

#- 93 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'kqH2OvG5' \
    --additionalKey 'MSmikZxF' \
    --body '[{"additionalData": {"aI2wBGIW": {}, "9k1G7cTA": {}, "I2U3JjZn": {}}, "statCode": "VwUmJVTs"}, {"additionalData": {"seb6hPge": {}, "qFO5d3K9": {}, "Jk4HdwQS": {}}, "statCode": "kG6hbnaI"}, {"additionalData": {"Syf9zYbA": {}, "5RuKEx64": {}, "7ZlqptTR": {}}, "statCode": "r1NfS7X9"}]' \
    > test.out 2>&1
eval_tap $? 93 'BulkResetUserStatItemValues' test.out

#- 94 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'zEuHe96Q' \
    --userId 'iEGR3CwO' \
    --additionalKey 'WPhEgxwX' \
    > test.out 2>&1
eval_tap $? 94 'DeleteUserStatItems2' test.out

#- 95 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'bHsBS4bR' \
    --userId 'kRCJAHXF' \
    --additionalKey 'UK9aGlJD' \
    --body '{"additionalData": {"UVIdfGAK": {}, "4S8RT2fH": {}, "9woUA2dE": {}}, "updateStrategy": "MIN", "value": 0.12568425158856733}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue' test.out

#- 96 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"Ik7gW3fb": {}, "KmivzfOk": {}, "doy8Tve6": {}}, "additionalKey": "JtHNW7uM", "statCode": "ijmJ8qRX", "updateStrategy": "MIN", "userId": "fQb6jrER", "value": 0.6464450591378255}, {"additionalData": {"8fDz9aIn": {}, "lTqNS0cE": {}, "Y5WnSJ87": {}}, "additionalKey": "3sCfOpsI", "statCode": "nqIVJxwi", "updateStrategy": "INCREMENT", "userId": "nK1CJw06", "value": 0.06084878197794241}, {"additionalData": {"A15QaQmb": {}, "dkNrKIlI": {}, "eOjuR2Cd": {}}, "additionalKey": "fi9Oevy3", "statCode": "IQFKoogE", "updateStrategy": "OVERRIDE", "userId": "L8b0PtrM", "value": 0.3740854501879788}]' \
    > test.out 2>&1
eval_tap $? 96 'BulkUpdateUserStatItem1' test.out

#- 97 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId '1wkEExOt' \
    --additionalKey 'yhxDNwZ7' \
    --statCodes '["XqSOQjaV", "YYaXvoqc", "lvcANBlH"]' \
    --tags '["DRhPb369", "DYgiTgX1", "HCihFBVT"]' \
    > test.out 2>&1
eval_tap $? 97 'PublicQueryUserStatItems2' test.out

#- 98 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'ojyNrjuc' \
    --additionalKey 'QeDT7LnU' \
    --body '[{"additionalData": {"Qjw1mrz5": {}, "VGrBb4Er": {}, "5NxoOxqs": {}}, "statCode": "pk73mo2E", "updateStrategy": "MAX", "value": 0.3914707191393614}, {"additionalData": {"ctEZhq4s": {}, "ivlczh9i": {}, "dqq1hU26": {}}, "statCode": "I7adwALr", "updateStrategy": "INCREMENT", "value": 0.30333407504140497}, {"additionalData": {"MVGvNhYp": {}, "3vr0o6iJ": {}, "hT9QoFxP": {}}, "statCode": "bH15iV9v", "updateStrategy": "INCREMENT", "value": 0.1187322449964513}]' \
    > test.out 2>&1
eval_tap $? 98 'BulkUpdateUserStatItem2' test.out

#- 99 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'S9apvgeT' \
    --userId 'Sf0qKbwU' \
    --additionalKey '2zyCvOoj' \
    --body '{"additionalData": {"cdum6sxZ": {}, "3edV0kM9": {}, "oEnxES2e": {}}, "updateStrategy": "MAX", "value": 0.6152995913346868}' \
    > test.out 2>&1
eval_tap $? 99 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE