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
echo "1..88"

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
    --body '{"maxSlotSize": 55, "maxSlots": 85}' \
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
    --userId 'eexMDwNe' \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
samples/cli/sample-apps Social updateUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'yDbXxTjs' \
    --body '{"maxSlotSize": 99, "maxSlots": 2}' \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
samples/cli/sample-apps Social deleteUserSlotConfig \
    --namespace $AB_NAMESPACE \
    --userId 'BuSJoJcI' \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
samples/cli/sample-apps Social getUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId '1tmyeEdi' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'nrGB0Vfg' \
    --userId 'nkWkMQDP' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
samples/cli/sample-apps Social getUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'IoLLbBb3' \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
samples/cli/sample-apps Social getSlotData \
    --namespace $AB_NAMESPACE \
    --slotId 'GUhAlLol' \
    --userId '5CqLtz1O' \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["BcBE38ht", "reEO0Ula", "mr7hzHHo"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'OFJDTkke' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'Zrl10vBe' \
    --body '{"achievements": ["Ewm8GdHo", "g9Svp5gW", "WhecgXKf"], "attributes": {"BvrCyK7f": "Jxq1DVRg", "tOrGvZa6": "ybjTWTW3", "1s3K5jmM": "Dc9RNxcf"}, "avatarUrl": "X4wKOMBo", "inventories": ["niS2DpZa", "0Jd7AFk4", "QSVHdika"], "label": "P2rFmmiB", "profileName": "H2rqYVyf", "statistics": ["aPNAq6yS", "33MEGfZm", "AqLHBdUD"], "tags": ["V9Slytwj", "1BvpsinL", "0M2OJAlA"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'XfvZaOyW' \
    --userId 'mnZbDlhL' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'MKjLb9DI' \
    --userId 'XTIMi5z9' \
    --body '{"achievements": ["vWYFT1TI", "UWs4obJ6", "4Yh2QhUe"], "attributes": {"aVm6ey3h": "if1A55V6", "G96ZLSTz": "yameOQse", "ZFCBfxFU": "u2MwT9Sj"}, "avatarUrl": "Jnkocz45", "inventories": ["wng8rjYD", "SSNzcYbk", "OpB90UdE"], "label": "T7Red8Sp", "profileName": "l6eWstBm", "statistics": ["BbYPlewN", "mw5kc8Ed", "SUC9CePB"], "tags": ["3mw7S0qR", "pzCcJdjX", "F7MuRU69"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'SatWguBR' \
    --userId 'KpsDf4ce' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName 'G82VdxCV' \
    --namespace $AB_NAMESPACE \
    --profileId '0K2k1CvS' \
    --userId 'a27B2v1y' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'MbI0MQgX' \
    --namespace $AB_NAMESPACE \
    --profileId 'sqCzi4zy' \
    --userId '1W99VW1k' \
    --body '{"name": "4fWVFYhs", "value": "Xab9hU73"}' \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
samples/cli/sample-apps Social publicGetUserNamespaceSlots \
    --namespace $AB_NAMESPACE \
    --userId 'PQwHuGH1' \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
samples/cli/sample-apps Social publicCreateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --userId 'WN25Rkuj' \
    --label 'EThOOpd3' \
    --tags '["GR5EZudR", "5TuPMwQf", "N0UDMAg1"]' \
    --checksum 'q000qCFk' \
    --customAttribute 'H2VwzOfB' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
samples/cli/sample-apps Social publicGetSlotData \
    --namespace $AB_NAMESPACE \
    --slotId '6yOMB43F' \
    --userId '1SndS96Q' \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
samples/cli/sample-apps Social publicUpdateUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'FIW312zr' \
    --userId 'VwNn6B7F' \
    --label 'boeg5LKL' \
    --tags '["c5hgojS0", "MfVbDkzt", "xdq9fJ8e"]' \
    --checksum '8M0mx2aM' \
    --customAttribute 'qJlM5wYZ' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
samples/cli/sample-apps Social publicDeleteUserNamespaceSlot \
    --namespace $AB_NAMESPACE \
    --slotId 'K5eHF5My' \
    --userId 'BGikEDrU' \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
samples/cli/sample-apps Social publicUpdateUserNamespaceSlotMetadata \
    --namespace $AB_NAMESPACE \
    --slotId 'fmxlerrL' \
    --userId 'W96QZqHP' \
    --body '{"customAttribute": "QeDxXTwv", "label": "6yATV4Tt", "tags": ["g0KLSDb8", "dp1yzrv6", "Bu9LokpH"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateUserNamespaceSlotMetadata' test.out

#- 26 GetGlobalStatItems
samples/cli/sample-apps Social getGlobalStatItems \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '82' \
    --statCodes 'wQPsz5MS' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'sTS32qv3' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'ANNUALLY' \
    --limit '74' \
    --name 'TEzbzyU6' \
    --offset '54' \
    --sortBy 'ImT2kzJS' \
    --status 'STOPPED' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "MONTHLY", "description": "guXCR4wW", "end": "1998-09-24T00:00:00Z", "name": "mSptSzl5", "resetDate": 78, "resetDay": 64, "resetMonth": 44, "resetTime": "OgphfS33", "seasonPeriod": 38, "start": "1980-11-07T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 GetStatCycle
samples/cli/sample-apps Social getStatCycle \
    --cycleId 'llqHPQN9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'GetStatCycle' test.out

#- 31 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'QmAKjUIx' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "ANNUALLY", "description": "jIvlcfSm", "end": "1990-06-06T00:00:00Z", "name": "SqOlg9c4", "resetDate": 16, "resetDay": 18, "resetMonth": 56, "resetTime": "DAVlELkF", "seasonPeriod": 14, "start": "1992-01-15T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 31 'UpdateStatCycle' test.out

#- 32 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId 'x19Ph0qe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'DeleteStatCycle' test.out

#- 33 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'Au5R4BnZ' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["oy4VWA2E", "JkX5nWPC", "YgWHXfSe"]}' \
    > test.out 2>&1
eval_tap $? 33 'BulkAddStats' test.out

#- 34 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode '0lDWBwAk' \
    --userIds 'zb63lYZR' \
    > test.out 2>&1
eval_tap $? 34 'BulkFetchStatItems' test.out

#- 35 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.6496826981399894, "statCode": "F4yCenDK", "userId": "lHI3Ats4"}, {"inc": 0.9314329019438883, "statCode": "HEdB3kTa", "userId": "ZFO7PPef"}, {"inc": 0.1327124662585426, "statCode": "8H1WVjdV", "userId": "Fb3dkDNc"}]' \
    > test.out 2>&1
eval_tap $? 35 'BulkIncUserStatItem' test.out

#- 36 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.6121828784140546, "statCode": "tIOo3jF5", "userId": "J3FMDJ4S"}, {"inc": 0.5121460956542083, "statCode": "WW1XW68R", "userId": "UJ6UTu2X"}, {"inc": 0.1766098473373685, "statCode": "Q7szfB7C", "userId": "ecDypsn0"}]' \
    > test.out 2>&1
eval_tap $? 36 'BulkIncUserStatItemValue' test.out

#- 37 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'KA7Ckxjt' \
    --userIds '["3ssJKSy3", "KhW7k26I", "96aIUS4I"]' \
    > test.out 2>&1
eval_tap $? 37 'BulkFetchOrDefaultStatItems' test.out

#- 38 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "RIqxGLGC", "userId": "V3SYMlzg"}, {"statCode": "THrFTCLf", "userId": "kDT0s22F"}, {"statCode": "UXO3AnGC", "userId": "iR1QCOiL"}]' \
    > test.out 2>&1
eval_tap $? 38 'BulkResetUserStatItem' test.out

#- 39 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'rMIrVpqJ' \
    --isGlobal 'true' \
    --limit '77' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 39 'GetStats' test.out

#- 40 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["QhqMZgfm", "WGND1JBk", "UaiheViL"], "defaultValue": 0.5082964203913138, "description": "hdOGJOFT", "incrementOnly": false, "maximum": 0.1905892631820535, "minimum": 0.45105923390540825, "name": "rnOPPYBv", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "39JByzpu", "tags": ["S1jBFfiH", "vmyO4iV8", "FoKP2qJ0"]}' \
    > test.out 2>&1
eval_tap $? 40 'CreateStat' test.out

#- 41 ExportStats
samples/cli/sample-apps Social exportStats \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'ExportStats' test.out

#- 42 ImportStats
samples/cli/sample-apps Social importStats \
    --namespace $AB_NAMESPACE \
    --replaceExisting 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 42 'ImportStats' test.out

#- 43 QueryStats
samples/cli/sample-apps Social queryStats \
    --namespace $AB_NAMESPACE \
    --isGlobal 'true' \
    --limit '5' \
    --offset '65' \
    --keyword 'GcCrJsSZ' \
    > test.out 2>&1
eval_tap $? 43 'QueryStats' test.out

#- 44 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode 'U4INILOK' \
    > test.out 2>&1
eval_tap $? 44 'GetStat' test.out

#- 45 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'vSkal2RJ' \
    > test.out 2>&1
eval_tap $? 45 'DeleteStat' test.out

#- 46 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'H8hZMPbj' \
    --body '{"cycleIds": ["fn7HEJNa", "R0NByerj", "GXTTEzH3"], "defaultValue": 0.2270323964987233, "description": "xJiQSE3A", "name": "9ihqJXlD", "tags": ["gkX9rcdu", "mrJz7TkM", "9dx5C8Pt"]}' \
    > test.out 2>&1
eval_tap $? 46 'UpdateStat' test.out

#- 47 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode '7dz8Wz22' \
    > test.out 2>&1
eval_tap $? 47 'DeleteTiedStat' test.out

#- 48 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'QN9HcxjK' \
    --namespace $AB_NAMESPACE \
    --userId '2aYGyGlG' \
    --limit '1' \
    --offset '97' \
    --statCodes 'rrAhi5rZ' \
    > test.out 2>&1
eval_tap $? 48 'GetUserStatCycleItems' test.out

#- 49 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'nACriNP5' \
    --limit '44' \
    --offset '27' \
    --sortBy 'GtYIqqFs' \
    --statCodes 'Y8kXV9Pn' \
    --tags 'mO8TTJ76' \
    > test.out 2>&1
eval_tap $? 49 'GetUserStatItems' test.out

#- 50 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'O7h3Qk6K' \
    --body '[{"statCode": "Z7Bz4jdw"}, {"statCode": "Wj6okfEH"}, {"statCode": "Wensbg7k"}]' \
    > test.out 2>&1
eval_tap $? 50 'BulkCreateUserStatItems' test.out

#- 51 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '46BZI76D' \
    --body '[{"inc": 0.2306831217067722, "statCode": "1bMlMAFy"}, {"inc": 0.8667669259973005, "statCode": "x32Y8IEt"}, {"inc": 0.45053104464057725, "statCode": "Y1vdom5j"}]' \
    > test.out 2>&1
eval_tap $? 51 'BulkIncUserStatItem1' test.out

#- 52 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'kcFQCQ2P' \
    --body '[{"inc": 0.1587342764690437, "statCode": "KmVub9wW"}, {"inc": 0.06869689740548968, "statCode": "MaOroFWL"}, {"inc": 0.7261325175154977, "statCode": "n9DweoXi"}]' \
    > test.out 2>&1
eval_tap $? 52 'BulkIncUserStatItemValue1' test.out

#- 53 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '0WXEMEiQ' \
    --body '[{"statCode": "KI6Estm5"}, {"statCode": "IuNCLlg2"}, {"statCode": "LEFG3uVz"}]' \
    > test.out 2>&1
eval_tap $? 53 'BulkResetUserStatItem1' test.out

#- 54 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'plVrCK3K' \
    --userId 'vAAAnCSA' \
    > test.out 2>&1
eval_tap $? 54 'CreateUserStatItem' test.out

#- 55 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'FHfBDi9s' \
    --userId 'hAmc5atB' \
    > test.out 2>&1
eval_tap $? 55 'DeleteUserStatItems' test.out

#- 56 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'nmq9UBUp' \
    --userId 'S3dUJX8y' \
    --body '{"inc": 0.46017128350552583}' \
    > test.out 2>&1
eval_tap $? 56 'IncUserStatItemValue' test.out

#- 57 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'fn1sF2Hq' \
    --userId 'c9tjryhb' \
    --additionalKey 'rkvQECPY' \
    --body '{"additionalData": {"pWOmYfiD": {}, "XqjJNxL1": {}, "Kno74rh9": {}}}' \
    > test.out 2>&1
eval_tap $? 57 'ResetUserStatItemValue' test.out

#- 58 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '45' \
    --statCodes 'ASsblHLK' \
    > test.out 2>&1
eval_tap $? 58 'GetGlobalStatItems1' test.out

#- 59 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'S2WakYIy' \
    > test.out 2>&1
eval_tap $? 59 'GetGlobalStatItemByStatCode1' test.out

#- 60 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'SEASONAL' \
    --limit '87' \
    --name 'nAaufIH4' \
    --offset '29' \
    --sortBy 'WZU9PSZp' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 60 'GetStatCycles1' test.out

#- 61 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'gLpxMiEg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'GetStatCycle1' test.out

#- 62 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'e5HCoFln' \
    --userIds 'Iacowdfk' \
    > test.out 2>&1
eval_tap $? 62 'BulkFetchStatItems1' test.out

#- 63 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.6192917110559715, "statCode": "nFiDyopc", "userId": "XIRbm2ha"}, {"inc": 0.3122454725828109, "statCode": "RIiRhAT5", "userId": "DOdo74Y1"}, {"inc": 0.8266728169197712, "statCode": "ks0M54dX", "userId": "XUzN4PIK"}]' \
    > test.out 2>&1
eval_tap $? 63 'PublicBulkIncUserStatItem' test.out

#- 64 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.5883969076736262, "statCode": "QEoS8vFb", "userId": "bsip6oJo"}, {"inc": 0.2951213939191395, "statCode": "0y8yhsCa", "userId": "g3Im23Aj"}, {"inc": 0.737976945519458, "statCode": "vtcH8s8T", "userId": "IQwgotds"}]' \
    > test.out 2>&1
eval_tap $? 64 'PublicBulkIncUserStatItemValue' test.out

#- 65 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "eofIrP05", "userId": "nKZ9B6sE"}, {"statCode": "WLr5Bpu2", "userId": "mutFQvKM"}, {"statCode": "OZORcOfV", "userId": "DGBDbkD8"}]' \
    > test.out 2>&1
eval_tap $? 65 'BulkResetUserStatItem2' test.out

#- 66 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["eBjsFYdV", "kw9JC7yK", "9Y85lurB"], "defaultValue": 0.28721428671474514, "description": "pRTNN7Zk", "incrementOnly": true, "maximum": 0.7250543671909556, "minimum": 0.09750451607935995, "name": "lHjW7QPP", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "DA3kETij", "tags": ["ZmIodnwt", "JmYTGxzk", "4sNScqei"]}' \
    > test.out 2>&1
eval_tap $? 66 'CreateStat1' test.out

#- 67 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'TeyfRE9l' \
    --namespace $AB_NAMESPACE \
    --userId '5V3DR4zu' \
    --limit '32' \
    --offset '23' \
    --statCodes 'C4WZ0o5c' \
    > test.out 2>&1
eval_tap $? 67 'GetUserStatCycleItems1' test.out

#- 68 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'X6D3ZnWY' \
    --limit '91' \
    --offset '91' \
    --sortBy 'xq7KpSFB' \
    --statCodes 'b9LZZWYz' \
    --tags 'A3LeVDP4' \
    > test.out 2>&1
eval_tap $? 68 'PublicQueryUserStatItems' test.out

#- 69 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'HO6YZpMT' \
    --body '[{"statCode": "iVbAiIYx"}, {"statCode": "GfrwxNjW"}, {"statCode": "aOmfOzOg"}]' \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkCreateUserStatItems' test.out

#- 70 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'hVT0vqJU' \
    --statCodes '["rqAU65ap", "ELHumZKZ", "nIzHDXkq"]' \
    --tags '["lnwaxaXy", "5PGuTK85", "AzkJzmnL"]' \
    > test.out 2>&1
eval_tap $? 70 'PublicQueryUserStatItems1' test.out

#- 71 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'lOIBj1vr' \
    --body '[{"inc": 0.06453322521362737, "statCode": "CJAeFobU"}, {"inc": 0.6469959402092329, "statCode": "A9iAzlvZ"}, {"inc": 0.40722223361211274, "statCode": "g7CSNuwU"}]' \
    > test.out 2>&1
eval_tap $? 71 'PublicBulkIncUserStatItem1' test.out

#- 72 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId '39AR1JIj' \
    --body '[{"inc": 0.6521379745735123, "statCode": "vm0Fb5GT"}, {"inc": 0.4363747979647469, "statCode": "WRr8kjMG"}, {"inc": 0.7788117376822051, "statCode": "jWhhLYIz"}]' \
    > test.out 2>&1
eval_tap $? 72 'BulkIncUserStatItemValue2' test.out

#- 73 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'hfw1hliQ' \
    --body '[{"statCode": "igLOEV6r"}, {"statCode": "HuMEQQtc"}, {"statCode": "hUlT3U1f"}]' \
    > test.out 2>&1
eval_tap $? 73 'BulkResetUserStatItem3' test.out

#- 74 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'xPgZjjx1' \
    --userId 'pExpqKIX' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateUserStatItem' test.out

#- 75 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'SskiZ4fw' \
    --userId 'RlJXBaSr' \
    > test.out 2>&1
eval_tap $? 75 'DeleteUserStatItems1' test.out

#- 76 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'JEXTXw78' \
    --userId 'Csz8s92I' \
    --body '{"inc": 0.4667875977554984}' \
    > test.out 2>&1
eval_tap $? 76 'PublicIncUserStatItem' test.out

#- 77 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '4jGuhF3h' \
    --userId 'BCJG75nB' \
    --body '{"inc": 0.08875649520361029}' \
    > test.out 2>&1
eval_tap $? 77 'PublicIncUserStatItemValue' test.out

#- 78 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'GGgCWi2X' \
    --userId 'LQZLvGwg' \
    > test.out 2>&1
eval_tap $? 78 'ResetUserStatItemValue1' test.out

#- 79 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"MNAR7dP9": {}, "VmxIRL7H": {}, "aKxAx8PI": {}}, "additionalKey": "lXAU4YxL", "statCode": "HdYwdobf", "updateStrategy": "INCREMENT", "userId": "mEl18sg9", "value": 0.38428635426282853}, {"additionalData": {"hVxw3WQP": {}, "9KdMmpWi": {}, "n3TVNDEj": {}}, "additionalKey": "fiNFsxk4", "statCode": "7JRVMNW7", "updateStrategy": "OVERRIDE", "userId": "95HwCFlp", "value": 0.1100780455195256}, {"additionalData": {"ixzx8Y7K": {}, "HpZwrP2R": {}, "KkyiDk1a": {}}, "additionalKey": "bPfy1B18", "statCode": "565t5YMU", "updateStrategy": "MIN", "userId": "HyuDljUR", "value": 0.8081657955497451}]' \
    > test.out 2>&1
eval_tap $? 79 'BulkUpdateUserStatItemV2' test.out

#- 80 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'EpQyGGuF' \
    --statCode 'd1sQcBq0' \
    --userIds '["Wb3XWgVP", "4C0xmyzA", "zpxhFK1R"]' \
    > test.out 2>&1
eval_tap $? 80 'BulkFetchOrDefaultStatItems1' test.out

#- 81 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'YsW0yqxH' \
    --additionalKey 'SxpRx4NR' \
    --body '[{"additionalData": {"khFhN0K6": {}, "0iAmron0": {}, "t8XZqa8m": {}}, "statCode": "HKhh8vqo", "updateStrategy": "MAX", "value": 0.41799017729252863}, {"additionalData": {"YBiYcd8N": {}, "SdIx9zKT": {}, "ANsiJgox": {}}, "statCode": "5osK3Fgx", "updateStrategy": "OVERRIDE", "value": 0.36572403086210714}, {"additionalData": {"c1OcRGYh": {}, "L1ETjjwK": {}, "nDvqyCpJ": {}}, "statCode": "dN8Urqt5", "updateStrategy": "MIN", "value": 0.11993265660456731}]' \
    > test.out 2>&1
eval_tap $? 81 'BulkUpdateUserStatItem' test.out

#- 82 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'cqIgJq1y' \
    --additionalKey 'hn1nRX6U' \
    --body '[{"additionalData": {"xGIrKBdD": {}, "sshSjxKP": {}, "CZtR79au": {}}, "statCode": "JyR6C5Ja"}, {"additionalData": {"vNN8TkA6": {}, "f34GkYqX": {}, "PXhW5qIB": {}}, "statCode": "0Llk1HA1"}, {"additionalData": {"oRtP0WaY": {}, "mx92QS9z": {}, "BByujJeW": {}}, "statCode": "GJDdf4Sk"}]' \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItemValues' test.out

#- 83 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode '4l6rgcUJ' \
    --userId 'Pb2xuvpm' \
    --additionalKey '0syxw4A1' \
    > test.out 2>&1
eval_tap $? 83 'DeleteUserStatItems2' test.out

#- 84 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'WwCNrXIj' \
    --userId 'KI9ILink' \
    --additionalKey '6LpBGyy4' \
    --body '{"additionalData": {"jJcnXgbo": {}, "VpvZztx9": {}, "WVCDyA5F": {}}, "updateStrategy": "OVERRIDE", "value": 0.6045580272146691}' \
    > test.out 2>&1
eval_tap $? 84 'UpdateUserStatItemValue' test.out

#- 85 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"vP2qvTOv": {}, "2fKOYH87": {}, "4LdyEcNz": {}}, "additionalKey": "wbp0lqAe", "statCode": "BmMEGqCV", "updateStrategy": "MAX", "userId": "jSWIcPC9", "value": 0.14711821331932384}, {"additionalData": {"l4xv7hXC": {}, "zp1DPQyj": {}, "I6Z4lUTp": {}}, "additionalKey": "F8MKQSq0", "statCode": "ROr5zwj0", "updateStrategy": "OVERRIDE", "userId": "fkr5tvd1", "value": 0.39590212057700136}, {"additionalData": {"f3KeN6Dj": {}, "Eyy7OuwT": {}, "Obyw1ZC6": {}}, "additionalKey": "v4SFfgKq", "statCode": "vpE8zjXN", "updateStrategy": "MAX", "userId": "mH8Tk56q", "value": 0.36580809053840657}]' \
    > test.out 2>&1
eval_tap $? 85 'BulkUpdateUserStatItem1' test.out

#- 86 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'U6utwgrw' \
    --additionalKey 'wJOJ7iIm' \
    --statCodes '["6H5vgkhG", "RY832yMZ", "fuFWFeJf"]' \
    --tags '["gFp6Qsdt", "OMAkPH4F", "JLhBzX2w"]' \
    > test.out 2>&1
eval_tap $? 86 'PublicQueryUserStatItems2' test.out

#- 87 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 'iaMFyKY8' \
    --additionalKey 'DS6ljwSa' \
    --body '[{"additionalData": {"iWIdKcEX": {}, "qPQTU19d": {}, "f0Yxsj8Z": {}}, "statCode": "4AitOX0r", "updateStrategy": "INCREMENT", "value": 0.9679924593535943}, {"additionalData": {"KYZ5clJ5": {}, "JlftvV6t": {}, "wiv1NHeX": {}}, "statCode": "1HICiulC", "updateStrategy": "MIN", "value": 0.07656814037528836}, {"additionalData": {"4dYsgNJe": {}, "cRLdX4yS": {}, "2MqbjoD0": {}}, "statCode": "8u8TLwWK", "updateStrategy": "MIN", "value": 0.20748954813199527}]' \
    > test.out 2>&1
eval_tap $? 87 'BulkUpdateUserStatItem2' test.out

#- 88 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'pq95esfT' \
    --userId 'GNAVQzVI' \
    --additionalKey 'WQ3Hb4OY' \
    --body '{"additionalData": {"hKGWypmI": {}, "q7OIDHEG": {}, "rDjlWwAV": {}}, "updateStrategy": "INCREMENT", "value": 0.3264335868064434}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE