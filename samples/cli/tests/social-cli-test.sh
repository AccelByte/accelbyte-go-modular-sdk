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
    --userId '2qyXiFG5' \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
samples/cli/sample-apps Social getProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'eDzgnCnr' \
    --userId 'oK0EqRqU' \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
samples/cli/sample-apps Social publicGetUserGameProfiles \
    --namespace $AB_NAMESPACE \
    --userIds '["V3HH8RC7", "7P0RNEKX", "8r9Gx4v6"]' \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
samples/cli/sample-apps Social publicGetUserProfiles \
    --namespace $AB_NAMESPACE \
    --userId 'vT3Mi0ZI' \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
samples/cli/sample-apps Social publicCreateProfile \
    --namespace $AB_NAMESPACE \
    --userId 'iQm3Howh' \
    --body '{"achievements": ["YRV448Lk", "G0d65LCd", "X65n5q1R"], "attributes": {"925VR3Dk": "H5iX88Bc", "jFuy0pmv": "ux4Gz6ri", "8k9x7hWu": "bhJbuFQr"}, "avatarUrl": "OuKeHGT5", "inventories": ["dL5R10I2", "yIuHnCZQ", "IEQSnXy9"], "label": "Vlj7GxhW", "profileName": "CpyNlzQf", "statistics": ["YVXHQb8x", "efU9sFoQ", "ck8VR0Eo"], "tags": ["kL0Jqebs", "MVzU10Hz", "tmTtI2SU"]}' \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
samples/cli/sample-apps Social publicGetProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'whYKCFkU' \
    --userId 'LVVohn7g' \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
samples/cli/sample-apps Social publicUpdateProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'UHbtgHva' \
    --userId 'l5IwFZqc' \
    --body '{"achievements": ["ilID7u6b", "mRoTwAwr", "N1gwCkiB"], "attributes": {"Z6IbyN03": "xijsnApf", "mZEh1CT8": "aZMdI9Io", "Ka6Vsd9V": "nJrgSnWT"}, "avatarUrl": "G7myDq1K", "inventories": ["Z2d6cff0", "ov7xaIgh", "ReTFEtGR"], "label": "IOKrDsrI", "profileName": "FHOS8WiM", "statistics": ["gTL343ZK", "5KlA4jWG", "lzRgLinS"], "tags": ["437SjxfT", "qqkgEuGE", "zIiX88Ct"]}' \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
samples/cli/sample-apps Social publicDeleteProfile \
    --namespace $AB_NAMESPACE \
    --profileId 'vm5IrOmL' \
    --userId 'i2sDD6kH' \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
samples/cli/sample-apps Social publicGetProfileAttribute \
    --attributeName '5FUzQ2bS' \
    --namespace $AB_NAMESPACE \
    --profileId 'peeXMQOw' \
    --userId 'V310IDOJ' \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
samples/cli/sample-apps Social publicUpdateAttribute \
    --attributeName 'YSnyFgjo' \
    --namespace $AB_NAMESPACE \
    --profileId 'Jox2Grqu' \
    --userId 'OGPBmpe5' \
    --body '{"name": "ToCfD0Ni", "value": "M5JVAkkk"}' \
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
    --limit '87' \
    --offset '84' \
    --statCodes 'nbfz6eNv' \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
samples/cli/sample-apps Social getGlobalStatItemByStatCode \
    --namespace $AB_NAMESPACE \
    --statCode 'IqOFDy30' \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
samples/cli/sample-apps Social getStatCycles \
    --namespace $AB_NAMESPACE \
    --cycleType 'ANNUALLY' \
    --limit '8' \
    --name 'B20LqG78' \
    --offset '0' \
    --sortBy 'MpFeQo1d' \
    --status 'INIT' \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
samples/cli/sample-apps Social createStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "SEASONAL", "description": "lH00f44y", "end": "1981-03-11T00:00:00Z", "name": "FgsaPm97", "resetDate": 49, "resetDay": 97, "resetMonth": 81, "resetTime": "K0UmqCrw", "seasonPeriod": 70, "start": "1997-10-18T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
samples/cli/sample-apps Social bulkGetStatCycle \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["FZFJfyzE", "atRzf7Bq", "s79BaBFZ"]}' \
    > test.out 2>&1
eval_tap $? 30 'BulkGetStatCycle' test.out

#- 31 GetStatCycle
samples/cli/sample-apps Social getStatCycle \
    --cycleId 'KMPdCV3h' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'GetStatCycle' test.out

#- 32 UpdateStatCycle
samples/cli/sample-apps Social updateStatCycle \
    --cycleId 'rXgjUIzi' \
    --namespace $AB_NAMESPACE \
    --body '{"cycleType": "ANNUALLY", "description": "MeBWRF6L", "end": "1980-12-09T00:00:00Z", "name": "bPTH6yQN", "resetDate": 45, "resetDay": 81, "resetMonth": 65, "resetTime": "zu6cUA6V", "seasonPeriod": 80, "start": "1987-09-19T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdateStatCycle' test.out

#- 33 DeleteStatCycle
samples/cli/sample-apps Social deleteStatCycle \
    --cycleId '3GnoFEZb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'DeleteStatCycle' test.out

#- 34 BulkAddStats
samples/cli/sample-apps Social bulkAddStats \
    --cycleId 'dVIF2PQ4' \
    --namespace $AB_NAMESPACE \
    --body '{"statCodes": ["zP0InUeG", "NoQosWTv", "gnRYNEYA"]}' \
    > test.out 2>&1
eval_tap $? 34 'BulkAddStats' test.out

#- 35 StopStatCycle
samples/cli/sample-apps Social stopStatCycle \
    --cycleId '7noEIlkt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'StopStatCycle' test.out

#- 36 BulkFetchStatItems
samples/cli/sample-apps Social bulkFetchStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'nktWR5qd' \
    --userIds '14WM91s0' \
    > test.out 2>&1
eval_tap $? 36 'BulkFetchStatItems' test.out

#- 37 BulkIncUserStatItem
samples/cli/sample-apps Social bulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.8109405793249779, "statCode": "0upAZ2oz", "userId": "fHbZJJl7"}, {"inc": 0.3330980808306655, "statCode": "3Z4BmDwU", "userId": "QIv79cQ5"}, {"inc": 0.4282321996983892, "statCode": "IsVjtx0K", "userId": "uWIFlKIF"}]' \
    > test.out 2>&1
eval_tap $? 37 'BulkIncUserStatItem' test.out

#- 38 BulkIncUserStatItemValue
samples/cli/sample-apps Social bulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.0016553602969009429, "statCode": "ESeJKkmJ", "userId": "OjzZgEVD"}, {"inc": 0.09060791649512312, "statCode": "9WC6j1rj", "userId": "u3OLXIWU"}, {"inc": 0.6388734029157693, "statCode": "pI1vxTU5", "userId": "8DgEE5kA"}]' \
    > test.out 2>&1
eval_tap $? 38 'BulkIncUserStatItemValue' test.out

#- 39 BulkFetchOrDefaultStatItems
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'QHLEM4Dh' \
    --userIds '["Nh02HNBA", "DBaTjRiq", "y22gbEN9"]' \
    > test.out 2>&1
eval_tap $? 39 'BulkFetchOrDefaultStatItems' test.out

#- 40 BulkResetUserStatItem
samples/cli/sample-apps Social bulkResetUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "QtZxIEZl", "userId": "5Kh0XBn4"}, {"statCode": "GmjYAXrI", "userId": "kahvpn5I"}, {"statCode": "v8WG8mZG", "userId": "XeSlwfqt"}]' \
    > test.out 2>&1
eval_tap $? 40 'BulkResetUserStatItem' test.out

#- 41 GetStats
samples/cli/sample-apps Social getStats \
    --namespace $AB_NAMESPACE \
    --cycleIds 'DwVzgF9U' \
    --isGlobal 'false' \
    --isPublic 'true' \
    --limit '50' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 41 'GetStats' test.out

#- 42 CreateStat
samples/cli/sample-apps Social createStat \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["zwrVZ3dI", "tvA1fcB8", "TB1iD5Ez"], "defaultValue": 0.3239339745750467, "description": "BcH7YG22", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": true, "maximum": 0.8179191611222292, "minimum": 0.5298410152693, "name": "vSQgNeg2", "setAsGlobal": true, "setBy": "SERVER", "statCode": "C2aibBXt", "tags": ["g2TEZswQ", "BPsLwYXK", "YE4Z2JOV"]}' \
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
    --isGlobal 'false' \
    --isPublic 'false' \
    --limit '19' \
    --offset '61' \
    --keyword 'sUOZZU0I' \
    > test.out 2>&1
eval_tap $? 45 'QueryStats' test.out

#- 46 GetStat
samples/cli/sample-apps Social getStat \
    --namespace $AB_NAMESPACE \
    --statCode '4ENNd2ZG' \
    > test.out 2>&1
eval_tap $? 46 'GetStat' test.out

#- 47 DeleteStat
samples/cli/sample-apps Social deleteStat \
    --namespace $AB_NAMESPACE \
    --statCode 'tWWAuXPd' \
    > test.out 2>&1
eval_tap $? 47 'DeleteStat' test.out

#- 48 UpdateStat
samples/cli/sample-apps Social updateStat \
    --namespace $AB_NAMESPACE \
    --statCode 'ReUBUezH' \
    --body '{"cycleIds": ["GKHAQG5M", "Q0M36BYP", "gH7Nfx2C"], "defaultValue": 0.011001828960015558, "description": "1ehicp1O", "ignoreAdditionalDataOnValueRejected": true, "isPublic": true, "name": "oSPNc6mw", "tags": ["BpmWiafL", "P2n8iX1O", "8nNHcxhH"]}' \
    > test.out 2>&1
eval_tap $? 48 'UpdateStat' test.out

#- 49 DeleteTiedStat
samples/cli/sample-apps Social deleteTiedStat \
    --namespace $AB_NAMESPACE \
    --statCode 'kqviiTJf' \
    > test.out 2>&1
eval_tap $? 49 'DeleteTiedStat' test.out

#- 50 GetUserStatCycleItems
samples/cli/sample-apps Social getUserStatCycleItems \
    --cycleId 'JcJXzFcW' \
    --namespace $AB_NAMESPACE \
    --userId 'paQqhPIZ' \
    --isPublic 'true' \
    --limit '14' \
    --offset '23' \
    --sortBy '1VGKAU2V' \
    --statCodes 'lqYFeeaw' \
    > test.out 2>&1
eval_tap $? 50 'GetUserStatCycleItems' test.out

#- 51 GetUserStatItems
samples/cli/sample-apps Social getUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'cbEm0R5v' \
    --isPublic 'false' \
    --limit '56' \
    --offset '20' \
    --sortBy '1sF5pWWH' \
    --statCodes 'TLtgdBeJ' \
    --tags 'sp0VdcMO' \
    > test.out 2>&1
eval_tap $? 51 'GetUserStatItems' test.out

#- 52 BulkCreateUserStatItems
samples/cli/sample-apps Social bulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'Wl0L8P47' \
    --body '[{"statCode": "VupPWdEs"}, {"statCode": "QSvRA5Ox"}, {"statCode": "ByNJpRc9"}]' \
    > test.out 2>&1
eval_tap $? 52 'BulkCreateUserStatItems' test.out

#- 53 BulkIncUserStatItem1
samples/cli/sample-apps Social bulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'Zuowfe9H' \
    --body '[{"inc": 0.3827898841014624, "statCode": "TJRqtRxa"}, {"inc": 0.6882252255359561, "statCode": "CQvSzK9D"}, {"inc": 0.48967784468398645, "statCode": "PCQdwL1o"}]' \
    > test.out 2>&1
eval_tap $? 53 'BulkIncUserStatItem1' test.out

#- 54 BulkIncUserStatItemValue1
samples/cli/sample-apps Social bulkIncUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --userId 'w0K3l5Wg' \
    --body '[{"inc": 0.7846962314923284, "statCode": "s0UHxJ82"}, {"inc": 0.5638487872828706, "statCode": "CnQ9ZPFM"}, {"inc": 0.7557241260073186, "statCode": "31vDUXBS"}]' \
    > test.out 2>&1
eval_tap $? 54 'BulkIncUserStatItemValue1' test.out

#- 55 BulkResetUserStatItem1
samples/cli/sample-apps Social bulkResetUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId 'adnTDDcL' \
    --body '[{"statCode": "Bbkavyvj"}, {"statCode": "149Or5qI"}, {"statCode": "IMpKNq1I"}]' \
    > test.out 2>&1
eval_tap $? 55 'BulkResetUserStatItem1' test.out

#- 56 CreateUserStatItem
samples/cli/sample-apps Social createUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'zXQH4jtK' \
    --userId 'iYDhKdzB' \
    > test.out 2>&1
eval_tap $? 56 'CreateUserStatItem' test.out

#- 57 DeleteUserStatItems
samples/cli/sample-apps Social deleteUserStatItems \
    --namespace $AB_NAMESPACE \
    --statCode 'xhbQkZdQ' \
    --userId 'L2c2wKdm' \
    > test.out 2>&1
eval_tap $? 57 'DeleteUserStatItems' test.out

#- 58 IncUserStatItemValue
samples/cli/sample-apps Social incUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'F6xXBgws' \
    --userId 'TkQUBChG' \
    --body '{"inc": 0.46729567447019316}' \
    > test.out 2>&1
eval_tap $? 58 'IncUserStatItemValue' test.out

#- 59 ResetUserStatItemValue
samples/cli/sample-apps Social resetUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'yexaoWlg' \
    --userId 'RpdRBchB' \
    --additionalKey 'R31BlOSJ' \
    --body '{"additionalData": {"plNVN0Wg": {}, "vjA4SKBV": {}, "uzPaSpwu": {}}}' \
    > test.out 2>&1
eval_tap $? 59 'ResetUserStatItemValue' test.out

#- 60 GetGlobalStatItems1
samples/cli/sample-apps Social getGlobalStatItems1 \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '18' \
    --statCodes 'twTVC7pg' \
    > test.out 2>&1
eval_tap $? 60 'GetGlobalStatItems1' test.out

#- 61 GetGlobalStatItemByStatCode1
samples/cli/sample-apps Social getGlobalStatItemByStatCode1 \
    --namespace $AB_NAMESPACE \
    --statCode 'x1dZzbGO' \
    > test.out 2>&1
eval_tap $? 61 'GetGlobalStatItemByStatCode1' test.out

#- 62 GetStatCycles1
samples/cli/sample-apps Social getStatCycles1 \
    --namespace $AB_NAMESPACE \
    --cycleType 'WEEKLY' \
    --limit '9' \
    --name 'FpaNEKsx' \
    --offset '87' \
    --sortBy 'yNdtmfh7' \
    --status 'ACTIVE' \
    > test.out 2>&1
eval_tap $? 62 'GetStatCycles1' test.out

#- 63 BulkGetStatCycle1
samples/cli/sample-apps Social bulkGetStatCycle1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["VuJL9E9C", "2wGfKRd2", "XJCzm9VO"]}' \
    > test.out 2>&1
eval_tap $? 63 'BulkGetStatCycle1' test.out

#- 64 GetStatCycle1
samples/cli/sample-apps Social getStatCycle1 \
    --cycleId 'Yg89FsDl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetStatCycle1' test.out

#- 65 BulkFetchStatItems1
samples/cli/sample-apps Social bulkFetchStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'zEQy7yUx' \
    --userIds 'gwXsBGhp' \
    > test.out 2>&1
eval_tap $? 65 'BulkFetchStatItems1' test.out

#- 66 PublicBulkIncUserStatItem
samples/cli/sample-apps Social publicBulkIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.5911288268719309, "statCode": "eHfMJTNf", "userId": "VUTO0in3"}, {"inc": 0.33640088876553365, "statCode": "QisAcWIf", "userId": "qhg7Rdaq"}, {"inc": 0.3411480025014595, "statCode": "vJxqrjmi", "userId": "PGXIuhoG"}]' \
    > test.out 2>&1
eval_tap $? 66 'PublicBulkIncUserStatItem' test.out

#- 67 PublicBulkIncUserStatItemValue
samples/cli/sample-apps Social publicBulkIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --body '[{"inc": 0.7013487504204924, "statCode": "RPqNPbYU", "userId": "ttPjBp0b"}, {"inc": 0.22504271640330875, "statCode": "y69oDoXo", "userId": "6sHdoyC5"}, {"inc": 0.11758956016753963, "statCode": "OjEFndmG", "userId": "zoFEM24P"}]' \
    > test.out 2>&1
eval_tap $? 67 'PublicBulkIncUserStatItemValue' test.out

#- 68 BulkResetUserStatItem2
samples/cli/sample-apps Social bulkResetUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --body '[{"statCode": "3s3NPd7a", "userId": "Kce2rpU0"}, {"statCode": "DkOw7i8b", "userId": "EEiSruJg"}, {"statCode": "UV9THr8G", "userId": "Rqdfep4b"}]' \
    > test.out 2>&1
eval_tap $? 68 'BulkResetUserStatItem2' test.out

#- 69 CreateStat1
samples/cli/sample-apps Social createStat1 \
    --namespace $AB_NAMESPACE \
    --body '{"cycleIds": ["HRcV7p3A", "jWdelqXG", "nyS0CTqh"], "defaultValue": 0.6630212622811543, "description": "obSGqXHQ", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": false, "maximum": 0.03701561090617422, "minimum": 0.15022298203054185, "name": "mBuiXxAP", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "8eUTSMYm", "tags": ["hgNEMziu", "144mdtLm", "rS8VpjMj"]}' \
    > test.out 2>&1
eval_tap $? 69 'CreateStat1' test.out

#- 70 PublicListMyStatCycleItems
samples/cli/sample-apps Social publicListMyStatCycleItems \
    --cycleId 'aWeqLUdS' \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    --offset '95' \
    --sortBy 'ZbWjVScY' \
    --statCodes '["SwnSe9up", "91g9Ivoc", "oEQSRPaV"]' \
    > test.out 2>&1
eval_tap $? 70 'PublicListMyStatCycleItems' test.out

#- 71 PublicListMyStatItems
samples/cli/sample-apps Social publicListMyStatItems \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '20' \
    --sortBy 'GPhHgWZ5' \
    --statCodes '["RvuUOSFL", "x0Uvet8t", "TuIZsV4a"]' \
    --tags '["tqKTSvVB", "LoMw6RjW", "TICKwMfT"]' \
    > test.out 2>&1
eval_tap $? 71 'PublicListMyStatItems' test.out

#- 72 PublicListAllMyStatItems
samples/cli/sample-apps Social publicListAllMyStatItems \
    --namespace $AB_NAMESPACE \
    --additionalKey '3lRZ93bQ' \
    --statCodes '["5KbuVkXw", "f4EzgfXu", "4CAtaURE"]' \
    --tags '["WW3gIpxu", "vOzybyP3", "tVbtsobr"]' \
    > test.out 2>&1
eval_tap $? 72 'PublicListAllMyStatItems' test.out

#- 73 GetUserStatCycleItems1
samples/cli/sample-apps Social getUserStatCycleItems1 \
    --cycleId 'VeXxBPVv' \
    --namespace $AB_NAMESPACE \
    --userId 'AoAqcopM' \
    --limit '28' \
    --offset '56' \
    --sortBy 'O2PlAVxx' \
    --statCodes 'AIGvJGoU' \
    > test.out 2>&1
eval_tap $? 73 'GetUserStatCycleItems1' test.out

#- 74 PublicQueryUserStatItems
samples/cli/sample-apps Social publicQueryUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'JGOmKutd' \
    --limit '11' \
    --offset '30' \
    --sortBy 'A0M99mKV' \
    --statCodes 'yVkw9Cwp' \
    --tags 'ayl3Nf94' \
    > test.out 2>&1
eval_tap $? 74 'PublicQueryUserStatItems' test.out

#- 75 PublicBulkCreateUserStatItems
samples/cli/sample-apps Social publicBulkCreateUserStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'BFsynjt4' \
    --body '[{"statCode": "CbHz42gA"}, {"statCode": "TpePnCD8"}, {"statCode": "KYc38gae"}]' \
    > test.out 2>&1
eval_tap $? 75 'PublicBulkCreateUserStatItems' test.out

#- 76 PublicQueryUserStatItems1
samples/cli/sample-apps Social publicQueryUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --userId 'lXIZGPec' \
    --additionalKey '2IhQkmlM' \
    --statCodes '["H4nNUrIF", "GQR9Ul92", "4bzh1FPk"]' \
    --tags '["mw2BEVg5", "azdWotxt", "jEugZ4lP"]' \
    > test.out 2>&1
eval_tap $? 76 'PublicQueryUserStatItems1' test.out

#- 77 PublicBulkIncUserStatItem1
samples/cli/sample-apps Social publicBulkIncUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --userId '0CbMAnn7' \
    --body '[{"inc": 0.9019584142370527, "statCode": "BytTvYvh"}, {"inc": 0.45854673548855296, "statCode": "eONMmvRF"}, {"inc": 0.23348831732480735, "statCode": "LM6ae0Hv"}]' \
    > test.out 2>&1
eval_tap $? 77 'PublicBulkIncUserStatItem1' test.out

#- 78 BulkIncUserStatItemValue2
samples/cli/sample-apps Social bulkIncUserStatItemValue2 \
    --namespace $AB_NAMESPACE \
    --userId '2yFa1zYZ' \
    --body '[{"inc": 0.39890588210960576, "statCode": "p6TFqa75"}, {"inc": 0.9424733997975379, "statCode": "UOjxs9j7"}, {"inc": 0.632950525219685, "statCode": "wrSEMGkr"}]' \
    > test.out 2>&1
eval_tap $? 78 'BulkIncUserStatItemValue2' test.out

#- 79 BulkResetUserStatItem3
samples/cli/sample-apps Social bulkResetUserStatItem3 \
    --namespace $AB_NAMESPACE \
    --userId 'LRwkG4gQ' \
    --body '[{"statCode": "qVJP877T"}, {"statCode": "omxKnUPf"}, {"statCode": "BJ2P7Mya"}]' \
    > test.out 2>&1
eval_tap $? 79 'BulkResetUserStatItem3' test.out

#- 80 PublicCreateUserStatItem
samples/cli/sample-apps Social publicCreateUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'mOvv1sHf' \
    --userId 'sC9rfb37' \
    > test.out 2>&1
eval_tap $? 80 'PublicCreateUserStatItem' test.out

#- 81 DeleteUserStatItems1
samples/cli/sample-apps Social deleteUserStatItems1 \
    --namespace $AB_NAMESPACE \
    --statCode 'm3EGynPF' \
    --userId '9YvMTUss' \
    > test.out 2>&1
eval_tap $? 81 'DeleteUserStatItems1' test.out

#- 82 PublicIncUserStatItem
samples/cli/sample-apps Social publicIncUserStatItem \
    --namespace $AB_NAMESPACE \
    --statCode 'K7sBFPwB' \
    --userId 'wCp08WMF' \
    --body '{"inc": 0.6382747585898473}' \
    > test.out 2>&1
eval_tap $? 82 'PublicIncUserStatItem' test.out

#- 83 PublicIncUserStatItemValue
samples/cli/sample-apps Social publicIncUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode 'r4DsPTO5' \
    --userId 'dCeS8MpQ' \
    --body '{"inc": 0.16004142664508147}' \
    > test.out 2>&1
eval_tap $? 83 'PublicIncUserStatItemValue' test.out

#- 84 ResetUserStatItemValue1
samples/cli/sample-apps Social resetUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode '4hHkZatG' \
    --userId 'NbiMCrmU' \
    > test.out 2>&1
eval_tap $? 84 'ResetUserStatItemValue1' test.out

#- 85 BulkUpdateUserStatItemV2
samples/cli/sample-apps Social bulkUpdateUserStatItemV2 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"ZFMBI5H5": {}, "Rdjql68T": {}, "PUkaqmQG": {}}, "additionalKey": "hXnnZQ4x", "statCode": "vzY8vLvH", "updateStrategy": "OVERRIDE", "userId": "juVRzlDf", "value": 0.03027538167736432}, {"additionalData": {"XBHmh3oK": {}, "zfkvZ2sV": {}, "krBoPqi2": {}}, "additionalKey": "AlYdWnQt", "statCode": "412pTqmA", "updateStrategy": "OVERRIDE", "userId": "alM7moOi", "value": 0.01824547034409918}, {"additionalData": {"CBXWxXMk": {}, "AFdUoUAa": {}, "sGSc0CSZ": {}}, "additionalKey": "UzJu2uyO", "statCode": "ooXSaFvz", "updateStrategy": "MAX", "userId": "EP8aGudx", "value": 0.9357803281709448}]' \
    > test.out 2>&1
eval_tap $? 85 'BulkUpdateUserStatItemV2' test.out

#- 86 BulkFetchOrDefaultStatItems1
samples/cli/sample-apps Social bulkFetchOrDefaultStatItems1 \
    --namespace $AB_NAMESPACE \
    --additionalKey 'YR7RhbFE' \
    --statCode 'GykUQygG' \
    --userIds '["Mu4xFlFc", "OrHHG1tI", "m9mfLwHv"]' \
    > test.out 2>&1
eval_tap $? 86 'BulkFetchOrDefaultStatItems1' test.out

#- 87 AdminListUsersStatItems
samples/cli/sample-apps Social adminListUsersStatItems \
    --namespace $AB_NAMESPACE \
    --userId 'KeqdGeLE' \
    --additionalKey 'Q6CVJJIe' \
    --statCodes '["RBQkVSm5", "EaZL50u2", "KHLd7aWh"]' \
    --tags '["iPeKgGGb", "KFwdrdrA", "jN1hpV9Z"]' \
    > test.out 2>&1
eval_tap $? 87 'AdminListUsersStatItems' test.out

#- 88 BulkUpdateUserStatItem
samples/cli/sample-apps Social bulkUpdateUserStatItem \
    --namespace $AB_NAMESPACE \
    --userId 'hXLnx2Tt' \
    --additionalKey 'B2iqt10I' \
    --body '[{"additionalData": {"vcTuYljq": {}, "OD1LnftC": {}, "aXTXZcdu": {}}, "statCode": "O3zSDpXs", "updateStrategy": "MAX", "value": 0.8861318108829248}, {"additionalData": {"dXc1cW4n": {}, "3mRumAnK": {}, "xIDyQ3wz": {}}, "statCode": "Kf3WbXpD", "updateStrategy": "MAX", "value": 0.4780362049205059}, {"additionalData": {"E2PL1iqD": {}, "JEHQ03Bj": {}, "0WfyPeiP": {}}, "statCode": "bvTW6w0X", "updateStrategy": "MIN", "value": 0.8710123595698799}]' \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItem' test.out

#- 89 BulkResetUserStatItemValues
samples/cli/sample-apps Social bulkResetUserStatItemValues \
    --namespace $AB_NAMESPACE \
    --userId 'bQt3iUpy' \
    --additionalKey 'PFTZWSod' \
    --body '[{"additionalData": {"XDelOet3": {}, "unm1aW1j": {}, "Ac0HELng": {}}, "statCode": "OuEEDfrZ"}, {"additionalData": {"tZHHNxBt": {}, "GAOqkYyk": {}, "Fvirwtf7": {}}, "statCode": "DfseOjuP"}, {"additionalData": {"CTgXRBbW": {}, "p1vZHwtZ": {}, "Y6PWTaKV": {}}, "statCode": "aqDJYoxC"}]' \
    > test.out 2>&1
eval_tap $? 89 'BulkResetUserStatItemValues' test.out

#- 90 DeleteUserStatItems2
samples/cli/sample-apps Social deleteUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --statCode '6GEoozWi' \
    --userId 'NnKmOPeQ' \
    --additionalKey 't7X07b45' \
    > test.out 2>&1
eval_tap $? 90 'DeleteUserStatItems2' test.out

#- 91 UpdateUserStatItemValue
samples/cli/sample-apps Social updateUserStatItemValue \
    --namespace $AB_NAMESPACE \
    --statCode '7cIaHiGk' \
    --userId '5SJKrWy6' \
    --additionalKey 'OZ9goilm' \
    --body '{"additionalData": {"4FccL50K": {}, "0ROKn7DS": {}, "nY26ZGb8": {}}, "updateStrategy": "INCREMENT", "value": 0.8295153389687393}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserStatItemValue' test.out

#- 92 BulkUpdateUserStatItem1
samples/cli/sample-apps Social bulkUpdateUserStatItem1 \
    --namespace $AB_NAMESPACE \
    --body '[{"additionalData": {"hSMZrnV3": {}, "1vtBfPlt": {}, "ldrFQiBd": {}}, "additionalKey": "XsqEkF23", "statCode": "Nw9EQNem", "updateStrategy": "INCREMENT", "userId": "kjzeid13", "value": 0.8351726445728881}, {"additionalData": {"TnQGkVUP": {}, "C0KrFlOE": {}, "w2VdnH6p": {}}, "additionalKey": "mCDsnQij", "statCode": "a0iG0Elw", "updateStrategy": "MAX", "userId": "pwg96hD8", "value": 0.2458427962844656}, {"additionalData": {"nq3EowTi": {}, "7gpHR451": {}, "ovnu5VgD": {}}, "additionalKey": "yCjpJTGT", "statCode": "lfjmdnqY", "updateStrategy": "INCREMENT", "userId": "CfMlK16Q", "value": 0.42901691163189437}]' \
    > test.out 2>&1
eval_tap $? 92 'BulkUpdateUserStatItem1' test.out

#- 93 PublicQueryUserStatItems2
samples/cli/sample-apps Social publicQueryUserStatItems2 \
    --namespace $AB_NAMESPACE \
    --userId 'MGQtkOmr' \
    --additionalKey 'GnBKGShu' \
    --statCodes '["YHh45kJc", "ssc8UcWS", "OK0yhnay"]' \
    --tags '["0vYtiaR4", "4Obwbcc9", "DSiTJXOG"]' \
    > test.out 2>&1
eval_tap $? 93 'PublicQueryUserStatItems2' test.out

#- 94 BulkUpdateUserStatItem2
samples/cli/sample-apps Social bulkUpdateUserStatItem2 \
    --namespace $AB_NAMESPACE \
    --userId 't8056lua' \
    --additionalKey 'WphKomdW' \
    --body '[{"additionalData": {"h447obre": {}, "c5k0oMkb": {}, "C8Bp3AkS": {}}, "statCode": "vJsk39dR", "updateStrategy": "OVERRIDE", "value": 0.37063406371998286}, {"additionalData": {"LDP4iI51": {}, "kPuIvQ47": {}, "Ou61Q6hl": {}}, "statCode": "ZbBPGXEi", "updateStrategy": "MAX", "value": 0.36479869802435694}, {"additionalData": {"YWSPC62p": {}, "SbuJHbaZ": {}, "mSylsl2X": {}}, "statCode": "yn4RD1QZ", "updateStrategy": "OVERRIDE", "value": 0.6432552243989219}]' \
    > test.out 2>&1
eval_tap $? 94 'BulkUpdateUserStatItem2' test.out

#- 95 UpdateUserStatItemValue1
samples/cli/sample-apps Social updateUserStatItemValue1 \
    --namespace $AB_NAMESPACE \
    --statCode 'jLkdosJn' \
    --userId 'GoDnQ5vh' \
    --additionalKey 'SXL7yjT6' \
    --body '{"additionalData": {"x8DDB8Zq": {}, "N07x3vWU": {}, "xJGnAW6o": {}}, "updateStrategy": "MIN", "value": 0.6108069767118658}' \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE