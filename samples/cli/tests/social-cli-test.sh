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
echo "1..100"

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
    --limit '49' \
    --offset '4' \
    --statCodes 'LSVh88iS' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'oEM3xLsU' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'ANNUALLY' \
    --limit '12' \
    --name 'Jf2fct4x' \
    --offset '21' \
    --sortBy 'yr1zVlHH' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "ANNUALLY", "description": "b6ppqSye", "end": "1997-05-20T00:00:00Z", "id": "8wlxVGHU", "name": "p6xQSMTh", "resetDate": 28, "resetDay": 10, "resetMonth": 17, "resetTime": "ysUQiB1p", "seasonPeriod": 55, "start": "1990-09-08T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["T8SrCscx", "NX48PSbY", "mmuf3vSy"]}' \
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
    --cycleId 'bnnHKhxU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'c8qYYwwo' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "WEEKLY", "description": "xXwgejZM", "end": "1973-07-03T00:00:00Z", "name": "TjlXEMlH", "resetDate": 37, "resetDay": 21, "resetMonth": 13, "resetTime": "syISwnRG", "seasonPeriod": 46, "start": "1975-10-03T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'j3MhAnYn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 ResetStatCycle
samples/cli/sample-apps Social resetStatCycle \
    --cycleId 'oDrMmjHs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 36 'ResetStatCycle' test.out

#- 37 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'zYP4El3C' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["uwaCvCQA", "4vkllaoX", "PprVV5hR"]}' \
    > test.out 2>&1
eval_tap $? 37 'BulkAddStats' test.out

#- 38 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId 'kZYBmkoY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'StopStatCycle' test.out

#- 39 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'vL20diJZ' \
    --userIds 'ilGB5HJM' \
    > test.out 2>&1
eval_tap $? 39 'BulkFetchStatItems' test.out

#- 40 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.8223173858462269, "statCode": "PV8DjgxO", "userId": "SZrcodyz"}, {"inc": 0.6717727342535513, "statCode": "5JmM199v", "userId": "NjZVe5Tq"}, {"inc": 0.3416670612160273, "statCode": "ueBUZq4r", "userId": "Wh72dVsE"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItem' test.out

#- 41 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.6864342433092361, "statCode": "9gMAFjoK", "userId": "OZmnuGIa"}, {"inc": 0.7713859225292122, "statCode": "FwlccDRe", "userId": "uBhmMLPC"}, {"inc": 0.016796295849226706, "statCode": "aOZPpyaW", "userId": "hvSfACOG"}]' \
    > test.out 2>&1
eval_tap $? 41 'BulkIncUserStatItemValue' test.out

#- 42 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'lZsbLdBC' \
    --userIds '["LtlMON2a", "P5SuMBuV", "efL3d0KG"]' \
    > test.out 2>&1
eval_tap $? 42 'BulkFetchOrDefaultStatItems' test.out

#- 43 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "jFaMHfGt", "userId": "yj86De3z"}, {"statCode": "EV8Eklwg", "userId": "tkpNEI5U"}, {"statCode": "qsO4azS9", "userId": "YwH5jZ1t"}]' \
    > test.out 2>&1
eval_tap $? 43 'BulkResetUserStatItem' test.out

#- 44 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds '4dcKywWS' \
    --isGlobal 'true' \
    --isPublic 'true' \
    --limit '65' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 44 'GetStats' test.out

#- 45 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": false, "cycleIds": ["U1CoelHX", "fzOdcXn8", "JV4e9G1q"], "cycleOverrides": [{"cycleId": "4RS6YJ26", "maximum": 0.5238078726265503, "minimum": 0.7442421925478423}, {"cycleId": "Y5p4kwio", "maximum": 0.46108481648215793, "minimum": 0.8095564250308436}, {"cycleId": "n0CMx66A", "maximum": 0.8051053987404282, "minimum": 0.1338091529889004}], "defaultValue": 0.4346767975491136, "description": "gJ5JtQG3", "globalAggregationMethod": "TOTAL", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": false, "isPublic": false, "maximum": 0.34358556955336217, "minimum": 0.904588696847232, "name": "fI4AiOIh", "setAsGlobal": false, "setBy": "SERVER", "statCode": "NQQ5eTnk", "tags": ["rwsPDXUB", "jvlUGlgU", "Mr6ovRtz"], "visibility": "SERVERONLY"}' \
    > test.out 2>&1
eval_tap $? 45 'CreateStat' test.out

#- 46 ExportStats
samples/cli/sample-apps Social exportStats \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'ExportStats' test.out

#- 47 ImportStats
samples/cli/sample-apps Social importStats \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 47 'ImportStats' test.out

#- 48 QueryStats
samples/cli/sample-apps Social queryStats \
    --namespace $AB_NAMESPACE \
    --isGlobal 'false' \
    --isPublic 'false' \
    --limit '26' \
    --offset '65' \
    --keyword 'Yj1ldC4R' \
    > test.out 2>&1
eval_tap $? 48 'QueryStats' test.out

#- 49 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'yKPv6A05' \
    > test.out 2>&1
eval_tap $? 49 'GetStat' test.out

#- 50 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'AaMVCgwa' \
    > test.out 2>&1
eval_tap $? 50 'DeleteStat' test.out

#- 51 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'BdTIG6Wj' \
    --body '{"capCycleOverride": false, "cycleIds": ["hPGCPF96", "KkcOQeD0", "YmnHdaCE"], "cycleOverrides": [{"cycleId": "0UFmxy2J", "maximum": 0.29583617869211776, "minimum": 0.742240834415467}, {"cycleId": "NqUSNwnA", "maximum": 0.6154515939158334, "minimum": 0.9517288139769998}, {"cycleId": "rPsNOp62", "maximum": 0.03750315063590837, "minimum": 0.6515698907477159}], "defaultValue": 0.6297557266456618, "description": "NVNPzj3b", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": true, "maximum": 0.022430383446910174, "minimum": 0.44226210058990867, "name": "PI7okYr2", "setAsGlobal": false, "setBy": "SERVER", "tags": ["TesiX12R", "oy0de6Yg", "8hT1mnMq"], "visibility": "SERVERONLY"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdateStat' test.out

#- 52 GetStatItems
samples/cli/sample-apps Social getStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'HkY2zfjY' \
    --limit '18' \
    --offset '46' \
    --sortBy 'GLmQPxCX' \
    > test.out 2>&1
eval_tap $? 52 'GetStatItems' test.out

#- 53 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'si8LjTcP' \
    > test.out 2>&1
eval_tap $? 53 'DeleteTiedStat' test.out

#- 54 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'LHDbylJf' \
    --namespace $AB_NAMESPACE \
    --userId 'KSlGcBzp' \
    --isPublic 'true' \
    --limit '11' \
    --offset '93' \
    --sortBy 'g9HwqgVe' \
    --statCodes 'HQIxz45F' \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatCycleItems' test.out

#- 55 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'S4dxivzK' \
    --isPublic 'false' \
    --limit '56' \
    --offset '41' \
    --sortBy 'X5caCbDG' \
    --statCodes 'Eq8DimOm' \
    --tags 'ZfTfvU0k' \
    > test.out 2>&1
eval_tap $? 55 'GetUserStatItems' test.out

#- 56 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'KaGtISVd' \
    --body '[{"statCode": "NO63Zmqy"}, {"statCode": "1eClHjRL"}, {"statCode": "zxSguNDl"}]' \
    > test.out 2>&1
eval_tap $? 56 'BulkCreateUserStatItems' test.out

#- 57 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '3tpCPnAN' \
    --body '[{"inc": 0.35834637296272687, "statCode": "5LiY5POH"}, {"inc": 0.1020817550576425, "statCode": "jR51lPjw"}, {"inc": 0.9269854336709035, "statCode": "nKbNdBXe"}]' \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItem1' test.out

#- 58 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'RCcwTtwP' \
    --body '[{"inc": 0.1551387723751173, "statCode": "ZgU48iRV"}, {"inc": 0.15999440528239273, "statCode": "oKBxWlU8"}, {"inc": 0.9982890746315694, "statCode": "RMLKGVaR"}]' \
    > test.out 2>&1
eval_tap $? 58 'BulkIncUserStatItemValue1' test.out

#- 59 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'YJFngq3B' \
    --body '[{"statCode": "JigW9j8B"}, {"statCode": "OLvVi3TV"}, {"statCode": "kYWGi7NM"}]' \
    > test.out 2>&1
eval_tap $? 59 'BulkResetUserStatItem1' test.out

#- 60 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'nTXDeNrp' \
    --userId 'vZAjnX0H' \
    > test.out 2>&1
eval_tap $? 60 'CreateUserStatItem' test.out

#- 61 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'uMdA2dk6' \
    --userId 'mSw76O2t' \
    > test.out 2>&1
eval_tap $? 61 'DeleteUserStatItems' test.out

#- 62 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'ILiG10Ya' \
    --userId 's178tpPc' \
    --body '{"inc": 0.6580332958177421}' \
    > test.out 2>&1
eval_tap $? 62 'IncUserStatItemValue' test.out

#- 63 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'M7L6acqk' \
    --userId 'miY3OT3N' \
    --additionalKey 'G8af5xxU' \
    --body '{"additionalData": {"EtzOLca9": {}, "TlQ2UfKz": {}, "BygkbCPm": {}}}' \
    > test.out 2>&1
eval_tap $? 63 'ResetUserStatItemValue' test.out

#- 64 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    --offset '16' \
    --statCodes '42Uzu1xH' \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItems1' test.out

#- 65 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'xzuYm00I' \
    > test.out 2>&1
eval_tap $? 65 'GetGlobalStatItemByStatCode1' test.out

#- 66 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'ANNUALLY' \
    --limit '2' \
    --name '49QNmuAj' \
    --offset '78' \
    --sortBy 'mJPcvh7T' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 66 'GetStatCycles1' test.out

#- 67 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["PP9USV14", "OjQLW7EE", "lvK54swv"]}' \
    > test.out 2>&1
eval_tap $? 67 'BulkGetStatCycle1' test.out

#- 68 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'Rs9MWnx3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 68 'GetStatCycle1' test.out

#- 69 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'I6OwXUa4' \
    --userIds 'wOJDHfQH' \
    > test.out 2>&1
eval_tap $? 69 'BulkFetchStatItems1' test.out

#- 70 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9615924526787356, "statCode": "4KEcMIyQ", "userId": "rrJTykBP"}, {"inc": 0.7211931524447783, "statCode": "D0UnITSi", "userId": "ePvPpeuF"}, {"inc": 0.7256068026282386, "statCode": "Gvs6aVyx", "userId": "k0xJLj0C"}]' \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItem' test.out

#- 71 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.9074408312846207, "statCode": "JJYwgKuM", "userId": "aGIWxihY"}, {"inc": 0.29117448253462674, "statCode": "dDw4UW2P", "userId": "plJR7mqZ"}, {"inc": 0.6911518684139115, "statCode": "I8NRFEGO", "userId": "f5TvA3O9"}]' \
    > test.out 2>&1
eval_tap $? 71 'PublicBulkIncUserStatItemValue' test.out

#- 72 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "sBKCQzsy", "userId": "10YTiI7u"}, {"statCode": "2QAN4sCj", "userId": "8zVwRmXm"}, {"statCode": "uO4JV6yH", "userId": "EhROJqdH"}]' \
    > test.out 2>&1
eval_tap $? 72 'BulkResetUserStatItem2' test.out

#- 73 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"capCycleOverride": true, "cycleIds": ["4yLkBCV2", "yE3y5bpw", "ZdUmwvcY"], "cycleOverrides": [{"cycleId": "b9giONnO", "maximum": 0.8245613776445913, "minimum": 0.7263081703580831}, {"cycleId": "uaYYofsT", "maximum": 0.08715698550186901, "minimum": 0.33937728540637846}, {"cycleId": "k1zsHduA", "maximum": 0.5250721162790476, "minimum": 0.7155651088291723}], "defaultValue": 0.19992444176859314, "description": "Fj2Rfw4e", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": true, "maximum": 0.13661772406802775, "minimum": 0.9476413117389579, "name": "PTqLhlks", "setAsGlobal": true, "setBy": "SERVER", "statCode": "q8OWGQzf", "tags": ["x4K8UfsN", "bBwUsOCv", "TC0Rsc8I"], "visibility": "SHOWALL"}' \
    > test.out 2>&1
eval_tap $? 73 'CreateStat1' test.out

#- 74 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'syB73GvN' \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '28' \
    --sortBy 'mTawktL4' \
    --statCodes '["LxrVJmvu", "BY7M9Yly", "ArFHXXew"]' \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatCycleItems' test.out

#- 75 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '65' \
    --sortBy 'JWCbPoUW' \
    --statCodes '["tsN4GKE6", "OaP5KLqb", "6q1Jkwj8"]' \
    --tags '["Wl1I8uis", "l3OA5RnY", "jDAvp5rS"]' \
    > test.out 2>&1
eval_tap $? 75 'PublicListMyStatItems' test.out

#- 76 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey 'abe8NR1k' \
    --statCodes '["xa6dCZkV", "nfvGlhk6", "nTyv2x76"]' \
    --tags '["qEPRkrf3", "ZACNoQpG", "fo2owtYb"]' \
    > test.out 2>&1
eval_tap $? 76 'PublicListAllMyStatItems' test.out

#- 77 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'n5Ik3QsB' \
    --namespace $AB_NAMESPACE \
    --userId '2BcyWfTh' \
    --limit '43' \
    --offset '77' \
    --sortBy 'RmNJogxh' \
    --statCodes 'vku1bGYB' \
    > test.out 2>&1
eval_tap $? 77 'GetUserStatCycleItems1' test.out

#- 78 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'W3lv3cxp' \
    --limit '94' \
    --offset '27' \
    --sortBy 'ONQnBrAl' \
    --statCodes 'jMSRUdFC' \
    --tags 'ObPLINYN' \
    > test.out 2>&1
eval_tap $? 78 'PublicQueryUserStatItems1' test.out

#- 79 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'O75D6nPi' \
    --body '[{"statCode": "uTaOjlCD"}, {"statCode": "FqZtiCsm"}, {"statCode": "phA0XBFA"}]' \
    > test.out 2>&1
eval_tap $? 79 'PublicBulkCreateUserStatItems' test.out

#- 80 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'KiTHm8ae' \
    --additionalKey 'm0vV5Ey3' \
    --statCodes '["ntYhQk1V", "kYVj9Ks6", "1m2qS74y"]' \
    --tags '["itPbk3WS", "VzEXF02F", "dSpuZOGj"]' \
    > test.out 2>&1
eval_tap $? 80 'PublicQueryUserStatItems' test.out

#- 81 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '2IIVzNYx' \
    --body '[{"inc": 0.5762327225647385, "statCode": "aNNo7OFf"}, {"inc": 0.5173688651631405, "statCode": "56HkvhoY"}, {"inc": 0.15259118434418828, "statCode": "ISGyU7pU"}]' \
    > test.out 2>&1
eval_tap $? 81 'PublicBulkIncUserStatItem1' test.out

#- 82 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId 'XP6C8K31' \
    --body '[{"inc": 0.4349368988302099, "statCode": "an7XSBXm"}, {"inc": 0.26364286078130894, "statCode": "i8HiH4TY"}, {"inc": 0.7098340191162678, "statCode": "GLye3Qiv"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkIncUserStatItemValue2' test.out

#- 83 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'ksiMlmvv' \
    --body '[{"statCode": "Kw5HcrGQ"}, {"statCode": "WhNOgIQd"}, {"statCode": "OgWyimnJ"}]' \
    > test.out 2>&1
eval_tap $? 83 'BulkResetUserStatItem3' test.out

#- 84 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'lYmvT90C' \
    --userId 'obLDGFUD' \
    > test.out 2>&1
eval_tap $? 84 'PublicCreateUserStatItem' test.out

#- 85 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'NoZzUlfv' \
    --userId 'zyFu1gHf' \
    > test.out 2>&1
eval_tap $? 85 'DeleteUserStatItems1' test.out

#- 86 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'eTc09sOz' \
    --userId 'eIk6SYXy' \
    --body '{"inc": 0.5469414626196464}' \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItem' test.out

#- 87 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '7t9kHtiK' \
    --userId 'jnIVFpeH' \
    --body '{"inc": 0.5305129662045991}' \
    > test.out 2>&1
eval_tap $? 87 'PublicIncUserStatItemValue' test.out

#- 88 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode '2g55PuzO' \
    --userId 'AOCHwN4p' \
    > test.out 2>&1
eval_tap $? 88 'ResetUserStatItemValue1' test.out

#- 89 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"nEcgsF4s": {}, "xo18ebfg": {}, "CPiBWJRv": {}}, "additionalKey": "KCmBKTNe", "requestId": "3cc170BC", "statCode": "fWHbKivF", "updateStrategy": "MIN", "userId": "xUQWUUnJ", "value": 0.27624666733459946}, {"additionalData": {"4lRklWf5": {}, "5l3Q50ir": {}, "UhxPck2r": {}}, "additionalKey": "nOOlOHkV", "requestId": "3x0KQ75E", "statCode": "4L2hvH5E", "updateStrategy": "MAX", "userId": "r5ps7TPJ", "value": 0.8415021886501437}, {"additionalData": {"3yZxzXcF": {}, "g57TVY71": {}, "Yj5db8rd": {}}, "additionalKey": "Ikxrke4T", "requestId": "dsRTH1Uw", "statCode": "8OnBiVWL", "updateStrategy": "INCREMENT", "userId": "LItgNTwx", "value": 0.9733341895178034}]' \
    > test.out 2>&1
eval_tap $? 89 'BulkUpdateUserStatItemV2' test.out

#- 90 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey '2SYp7eqs' \
    --statCode 'Qvf6EVdh' \
    --userIds '["glgyTG57", "hgvqkn6x", "0XM2eMcZ"]' \
    > test.out 2>&1
eval_tap $? 90 'BulkFetchOrDefaultStatItems1' test.out

#- 91 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId '9Fgy7kh6' \
    --additionalKey 'yytSiKJW' \
    --statCodes '["nSwxkwch", "7DTBaWIL", "nNBKFHfw"]' \
    --tags '["VbV7GPLY", "H6WDSw22", "xbK6BpWp"]' \
    > test.out 2>&1
eval_tap $? 91 'AdminListUsersStatItems' test.out

#- 92 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'PjlOQIx9' \
    --additionalKey 'rIYle98P' \
    --body '[{"additionalData": {"YKGlgHFP": {}, "lIU7eiSV": {}, "2GkxoelJ": {}}, "requestId": "npEIuKNz", "statCode": "7ZHwnvJS", "updateStrategy": "INCREMENT", "value": 0.45712666459361806}, {"additionalData": {"LfT8I9gH": {}, "oXk0bP7m": {}, "CKamcOqp": {}}, "requestId": "O5PTop7A", "statCode": "G864resF", "updateStrategy": "INCREMENT", "value": 0.10111941142367586}, {"additionalData": {"hrN0TEHv": {}, "ww1t2u8a": {}, "SweNfZbo": {}}, "requestId": "8HmbLPg8", "statCode": "6AzIq2Ol", "updateStrategy": "MAX", "value": 0.9407600088013066}]' \
    > test.out 2>&1
eval_tap $? 92 'BulkUpdateUserStatItem' test.out

#- 93 BulkGetOrDefaultByUserId
samples/cli/sample-apps Social bulkGetOrDefaultByUserId \
    --namespace $AB_NAMESPACE \
    --userId 'ak2BBDsk' \
    --additionalKey 'HpRXZD6F' \
    --body '{"statCodes": ["zUaP5kXe", "GvB9LZZa", "ItMLyEa7"]}' \
    > test.out 2>&1
eval_tap $? 93 'BulkGetOrDefaultByUserId' test.out

#- 94 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 's61FNUDx' \
    --additionalKey 'coNxODlj' \
    --body '[{"additionalData": {"WUyfOrJt": {}, "oNOPPQlf": {}, "GeqFEhwH": {}}, "statCode": "cSVDBhMq"}, {"additionalData": {"UXyh28xf": {}, "fdZvdWiX": {}, "GDXQW3x8": {}}, "statCode": "jtUdDa2T"}, {"additionalData": {"TU9JbISZ": {}, "eAXs8UBP": {}, "YLOXy3VM": {}}, "statCode": "pY5TmhVC"}]' \
    > test.out 2>&1
eval_tap $? 94 'BulkResetUserStatItemValues' test.out

#- 95 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode 'meysLniv' \
    --userId 'UzgYbWkn' \
    --additionalKey '1XasX38c' \
    > test.out 2>&1
eval_tap $? 95 'DeleteUserStatItems2' test.out

#- 96 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'sU5bQoqB' \
    --userId 'XubMoVlQ' \
    --additionalKey 'csHP3sZ6' \
    --body '{"additionalData": {"BZHhOORC": {}, "dFcf3EUf": {}, "nqgslLRa": {}}, "updateStrategy": "MIN", "value": 0.8294407199546551}' \
    > test.out 2>&1
eval_tap $? 96 'UpdateUserStatItemValue' test.out

#- 97 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"TzfUNm5m": {}, "wgbb7GCH": {}, "D3ujtNof": {}}, "additionalKey": "uXqvyNKG", "requestId": "crDIkP1x", "statCode": "FmUX6T8y", "updateStrategy": "MIN", "userId": "N1m5Oz3S", "value": 0.8063406840182016}, {"additionalData": {"tpi40KRv": {}, "cbs8Ewem": {}, "MPYmvKOX": {}}, "additionalKey": "Clvr7XOI", "requestId": "WFlwdRxF", "statCode": "68o22zno", "updateStrategy": "OVERRIDE", "userId": "0L1iprU2", "value": 0.014266064506803344}, {"additionalData": {"hAVWdejO": {}, "BkLkHYOH": {}, "70Sz584r": {}}, "additionalKey": "NYB15dfH", "requestId": "n1DmH2RJ", "statCode": "mnAcg0fx", "updateStrategy": "INCREMENT", "userId": "1kzUEetY", "value": 0.8179709379315273}]' \
    > test.out 2>&1
eval_tap $? 97 'BulkUpdateUserStatItem1' test.out

#- 98 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'FFSS2LFn' \
    --additionalKey 'IuwZvASj' \
    --statCodes '["d9Ednl1r", "47L0Mguv", "BVzeuEvL"]' \
    --tags '["97QRK83y", "SWonoFMZ", "SDl8Pzmx"]' \
    > test.out 2>&1
eval_tap $? 98 'PublicQueryUserStatItems2' test.out

#- 99 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'eRFXr4x8' \
    --additionalKey 'vpq6xp3e' \
    --body '[{"additionalData": {"b0lZB1i9": {}, "t5FcQBZ3": {}, "Kjs23UaO": {}}, "requestId": "PnuBXFg1", "statCode": "NdDyYjDK", "updateStrategy": "MAX", "value": 0.9125200088935101}, {"additionalData": {"IUVSlune": {}, "R9rz1T8P": {}, "ptA8UxrM": {}}, "requestId": "8zoL00cS", "statCode": "pB51KBJG", "updateStrategy": "OVERRIDE", "value": 0.2945379336149462}, {"additionalData": {"nJ56EiU5": {}, "RnSAeJHi": {}, "33I1vS4h": {}}, "requestId": "HbwHfT1q", "statCode": "MPeyIpxq", "updateStrategy": "INCREMENT", "value": 0.6095687183331536}]' \
    > test.out 2>&1
eval_tap $? 99 'BulkUpdateUserStatItem2' test.out

#- 100 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'cogC0qLm' \
    --userId '9HRh8pfJ' \
    --additionalKey 'Fh4CuG0K' \
    --body '{"additionalData": {"7eMg90ND": {}, "884eA27a": {}, "BTYZMmwV": {}}, "updateStrategy": "INCREMENT", "value": 0.7326807609917307}' \
    > test.out 2>&1
eval_tap $? 100 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE