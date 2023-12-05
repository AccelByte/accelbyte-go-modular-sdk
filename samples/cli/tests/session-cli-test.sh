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
echo "1..75"

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

#- 2 GetHealthcheckInfo
samples/cli/sample-apps Session getHealthcheckInfo \
    > test.out 2>&1
eval_tap $? 2 'GetHealthcheckInfo' test.out

#- 3 GetHealthcheckInfoV1
samples/cli/sample-apps Session getHealthcheckInfoV1 \
    > test.out 2>&1
eval_tap $? 3 'GetHealthcheckInfoV1' test.out

#- 4 AdminGetDSMCConfigurationDefault
samples/cli/sample-apps Session adminGetDSMCConfigurationDefault \
    > test.out 2>&1
eval_tap $? 4 'AdminGetDSMCConfigurationDefault' test.out

#- 5 AdminListEnvironmentVariables
samples/cli/sample-apps Session adminListEnvironmentVariables \
    > test.out 2>&1
eval_tap $? 5 'AdminListEnvironmentVariables' test.out

#- 6 AdminListGlobalConfiguration
samples/cli/sample-apps Session adminListGlobalConfiguration \
    > test.out 2>&1
eval_tap $? 6 'AdminListGlobalConfiguration' test.out

#- 7 AdminUpdateGlobalConfiguration
samples/cli/sample-apps Session adminUpdateGlobalConfiguration \
    --body '{"regionRetryMapping": {"PKsOyoax": ["g2uwcxwU", "GB0t5nFD", "J8XowRM0"], "AHaD4Ioq": ["mVRFNSrp", "2p1uFvOs", "uvx0HM7T"], "r3ClLiLo": ["mDJiyT3S", "83xmhVB4", "lC8Rm5fs"]}, "regionURLMapping": ["R29Vw1B9", "mFRYzs5F", "gbeY0M8G"], "testGameMode": "ybMWOBFt", "testRegionURLMapping": ["q7gWS4ba", "VfY2TsGj", "VcC4K30H"], "testTargetUserIDs": ["ppLyvKlL", "FtZWMlcF", "bnxbGk2w"]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateGlobalConfiguration' test.out

#- 8 AdminDeleteGlobalConfiguration
samples/cli/sample-apps Session adminDeleteGlobalConfiguration \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteGlobalConfiguration' test.out

#- 9 AdminGetConfigurationAlertV1
samples/cli/sample-apps Session adminGetConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetConfigurationAlertV1' test.out

#- 10 AdminUpdateConfigurationAlertV1
samples/cli/sample-apps Session adminUpdateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 13}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateConfigurationAlertV1' test.out

#- 11 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 39}' \
    > test.out 2>&1
eval_tap $? 11 'AdminCreateConfigurationAlertV1' test.out

#- 12 AdminDeleteConfigurationAlertV1
samples/cli/sample-apps Session adminDeleteConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteConfigurationAlertV1' test.out

#- 13 HandleUploadXboxPFXCertificate
samples/cli/sample-apps Session handleUploadXboxPFXCertificate \
    --namespace $AB_NAMESPACE \
    --description 'lbo1WN0j' \
    --certname 'H0NCcK7B' \
    --file 'tmp.dat' \
    --password 'ojE533IZ' \
    > test.out 2>&1
eval_tap $? 13 'HandleUploadXboxPFXCertificate' test.out

#- 14 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 12, "PSNSupportedPlatforms": ["K6NzbJwQ", "uIx42kZI", "zjRHg45A"], "SessionTitle": "H7pRZfVW", "ShouldSync": false, "XboxAllowCrossPlatform": true, "XboxSandboxID": "0ppyERJc", "XboxServiceConfigID": "6uNm21IJ", "XboxSessionTemplateName": "HDJqhlij", "XboxTitleID": "4hk8Nyxh", "localizedSessionName": {"oCFsXjeE": {}, "xJ7NLb4s": {}, "Qu2ilAPh": {}}}, "PSNBaseUrl": "iylZGzsZ", "attributes": {"qToUFqvS": {}, "uoiU8ibq": {}, "rGyJHjke": {}}, "autoJoin": true, "clientVersion": "dUOO44i4", "deployment": "WccgHzTx", "disableCodeGeneration": true, "dsManualSetReady": true, "dsSource": "GQdVn7yN", "enableSecret": false, "fallbackClaimKeys": ["8S1DyBL9", "GPSDNuQ8", "vwUhihCh"], "immutableStorage": false, "inactiveTimeout": 56, "inviteTimeout": 63, "joinability": "UgKH1phQ", "maxActiveSessions": 19, "maxPlayers": 4, "minPlayers": 32, "name": "xvWRm5Yl", "persistent": false, "preferredClaimKeys": ["R8rkjx5w", "lbTMSHHR", "hvLZQX7N"], "requestedRegions": ["bNsbxNMU", "PuDcFKuC", "h2TwyYoX"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "DnMj1L0z"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminCreateConfigurationTemplateV1' test.out

#- 15 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --name 'HCUXimWd' \
    --offset '30' \
    --order 'CgDOFKKb' \
    --orderBy '7y4yrjmv' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetAllConfigurationTemplatesV1' test.out

#- 16 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'hBWJAr6H' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetConfigurationTemplateV1' test.out

#- 17 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'x4n0BTNh' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 48, "PSNSupportedPlatforms": ["znEpRm9v", "amhrqm5E", "vt0fEy3M"], "SessionTitle": "FWGUvzJY", "ShouldSync": false, "XboxAllowCrossPlatform": true, "XboxSandboxID": "Xy5zu8p3", "XboxServiceConfigID": "Y5Y52Zz5", "XboxSessionTemplateName": "HNQYz2Tw", "XboxTitleID": "b00oM42u", "localizedSessionName": {"q8yNRjpn": {}, "JkQuuYA9": {}, "epTRMqAI": {}}}, "PSNBaseUrl": "cz0uLkLU", "attributes": {"YPyxAzZS": {}, "22yRTWxC": {}, "XLnzEpnM": {}}, "autoJoin": false, "clientVersion": "o4t3fmlk", "deployment": "VP5mEZ80", "disableCodeGeneration": false, "dsManualSetReady": true, "dsSource": "x3pVznKm", "enableSecret": false, "fallbackClaimKeys": ["T8KAKVr5", "zNpdsNvY", "JUTZGuaP"], "immutableStorage": true, "inactiveTimeout": 71, "inviteTimeout": 42, "joinability": "szekOsW4", "maxActiveSessions": 43, "maxPlayers": 83, "minPlayers": 77, "name": "S7unWJmI", "persistent": false, "preferredClaimKeys": ["3HY0lGLX", "ocHY71cA", "SzonDpNa"], "requestedRegions": ["fokSbDlI", "6maDd1AI", "ms1fb4r8"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "JNVEGpkZ"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateConfigurationTemplateV1' test.out

#- 18 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'IBCyv3kQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteConfigurationTemplateV1' test.out

#- 19 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name '3TiwEZNK' \
    --namespace $AB_NAMESPACE \
    --userId 'EjKidE6M' \
    > test.out 2>&1
eval_tap $? 19 'AdminGetMemberActiveSession' test.out

#- 20 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'kHRcXPG0' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "PIga4E1j"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminReconcileMaxActiveSession' test.out

#- 21 AdminGetDSMCConfiguration
samples/cli/sample-apps Session adminGetDSMCConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminGetDSMCConfiguration' test.out

#- 22 AdminSyncDSMCConfiguration
samples/cli/sample-apps Session adminSyncDSMCConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'AdminSyncDSMCConfiguration' test.out

#- 23 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName 'xbO5d30S' \
    --dsPodName '6CY0CSFP' \
    --fromTime 'eqp7pgE3' \
    --gameMode 'qWmOJ2Z2' \
    --isPersistent 'EnxUTUpu' \
    --isSoftDeleted 'cGeTqNt4' \
    --joinability 'LEVSs0xR' \
    --limit '25' \
    --matchPool 'YnOi1eiC' \
    --memberID 'iOoI0P80' \
    --offset '11' \
    --order 'pVrXMKnN' \
    --orderBy 'aEsVCGOc' \
    --sessionID 'EBFyPa0j' \
    --status '0YK5gYb4' \
    --statusV2 'yQI8F2DC' \
    --toTime '4xZ8GLXr' \
    > test.out 2>&1
eval_tap $? 23 'AdminQueryGameSessions' test.out

#- 24 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"F1KDJgez": {}, "zE0BuhNP": {}, "44lqR3IH": {}}' \
    > test.out 2>&1
eval_tap $? 24 'AdminQueryGameSessionsByAttributes' test.out

#- 25 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["eHBluFQ8", "245Mm0Ox", "AVSj8qqr"]}' \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteBulkGameSessions' test.out

#- 26 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'f6TgQyZB' \
    --body '{"ready": false}' \
    > test.out 2>&1
eval_tap $? 26 'AdminSetDSReady' test.out

#- 27 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'Z9fxwPhg' \
    --namespace $AB_NAMESPACE \
    --sessionId '8QtuVASu' \
    --statusType 'e8MeyKJD' \
    > test.out 2>&1
eval_tap $? 27 'AdminUpdateGameSessionMember' test.out

#- 28 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --joinability 'NCbiRl6m' \
    --key 'ngLLfUzS' \
    --leaderID 'tt8Nwi5G' \
    --limit '55' \
    --memberID '8ZELbCuP' \
    --memberStatus '2H5erpyt' \
    --offset '11' \
    --order 'fZigkQqO' \
    --orderBy 'WFDtYeYR' \
    --partyID 'VjzLOBp2' \
    --value 'lXAkwo7s' \
    > test.out 2>&1
eval_tap $? 28 'AdminQueryParties' test.out

#- 29 AdminGetPlatformCredentials
samples/cli/sample-apps Session adminGetPlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'AdminGetPlatformCredentials' test.out

#- 30 AdminUpdatePlatformCredentials
samples/cli/sample-apps Session adminUpdatePlatformCredentials \
    --namespace $AB_NAMESPACE \
    --body '{"psn": {"clientId": "HT4OSXUx", "clientSecret": "rHaCzse2", "scope": "5SWKcYFb"}}' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdatePlatformCredentials' test.out

#- 31 AdminDeletePlatformCredentials
samples/cli/sample-apps Session adminDeletePlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'AdminDeletePlatformCredentials' test.out

#- 32 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'NwXKAWL1' \
    > test.out 2>&1
eval_tap $? 32 'AdminReadSessionStorage' test.out

#- 33 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'gomx9qvJ' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteUserSessionStorage' test.out

#- 34 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'AxXDfMTT' \
    --userId 'ce8z7DmQ' \
    > test.out 2>&1
eval_tap $? 34 'AdminReadUserSessionStorage' test.out

#- 35 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'B1L1Euq3' \
    > test.out 2>&1
eval_tap $? 35 'AdminQueryPlayerAttributes' test.out

#- 36 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'G1hs0Lqh' \
    > test.out 2>&1
eval_tap $? 36 'AdminGetPlayerAttributes' test.out

#- 37 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"5cW9IqWY": {}, "Zf3c0Z86": {}, "PbooPOQb": {}}, "autoJoin": false, "backfillTicketID": "u6oUV0rX", "clientVersion": "ll59prDL", "configurationName": "22BM5q4n", "deployment": "C0y2x31h", "dsSource": "nnHLznVB", "fallbackClaimKeys": ["s1G1Wtau", "DFEsLWVa", "yFFAwjBr"], "inactiveTimeout": 29, "inviteTimeout": 51, "joinability": "hcHgcIPe", "matchPool": "fviyz1He", "maxPlayers": 32, "minPlayers": 53, "preferredClaimKeys": ["6J7FFpwS", "WXu4AQUo", "aiA32wEH"], "requestedRegions": ["qMtpkkm0", "m9wlDTVr", "SYc4jt2U"], "serverName": "qoOsE4AK", "teams": [{"UserIDs": ["0CCLNMlb", "tbJGrV6W", "NVPWeSux"], "parties": [{"partyID": "x6e3OT8Y", "userIDs": ["cfDLd7zG", "cYdznhGb", "yXCt6j77"]}, {"partyID": "DQVqp66D", "userIDs": ["fE08vBEM", "BJZ4a5qG", "UV0Cv0M0"]}, {"partyID": "ZtiFeGPn", "userIDs": ["XvpAglh3", "qjUgFizC", "HgDEW1d4"]}]}, {"UserIDs": ["fM6e4raj", "dN9Qmdj4", "v25IEw0z"], "parties": [{"partyID": "igPFQcbR", "userIDs": ["9YdNaZm2", "l1Z83erO", "IXchLiBd"]}, {"partyID": "ejjKyFHK", "userIDs": ["wk7t8KAn", "fjYOgAm7", "QRWSxu6K"]}, {"partyID": "rvACIh4O", "userIDs": ["pQagzAOR", "KP5pLSzW", "fPU6VdGn"]}]}, {"UserIDs": ["K0q0zisn", "DufI4IRS", "YuwpvBeB"], "parties": [{"partyID": "92tD5HZa", "userIDs": ["8M5vmbfk", "bizdQ1z5", "6RSyN0SK"]}, {"partyID": "XKRgx3hL", "userIDs": ["PZ18DPsh", "letzwHTV", "vFyZKMqp"]}, {"partyID": "7Z5EMZlm", "userIDs": ["YEAq1LzL", "lqMrYoOB", "6mPiPGwo"]}]}], "textChat": true, "ticketIDs": ["ueKwuhlb", "nhIMgddN", "lwA1qVBn"], "tieTeamsSessionLifetime": false, "type": "LSUb2m9J"}' \
    > test.out 2>&1
eval_tap $? 37 'CreateGameSession' test.out

#- 38 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"sphJqs9J": {}, "IUeA7zyq": {}, "uMuAInus": {}}' \
    > test.out 2>&1
eval_tap $? 38 'PublicQueryGameSessionsByAttributes' test.out

#- 39 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "ZGOnoQtx"}' \
    > test.out 2>&1
eval_tap $? 39 'PublicSessionJoinCode' test.out

#- 40 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName '77WinBmB' \
    > test.out 2>&1
eval_tap $? 40 'GetGameSessionByPodName' test.out

#- 41 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '9hU3XGfD' \
    > test.out 2>&1
eval_tap $? 41 'GetGameSession' test.out

#- 42 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'Z4EBd3UW' \
    --body '{"attributes": {"VkEWH8nG": {}, "WJAI6viU": {}, "EgIkCpuN": {}}, "backfillTicketID": "U2tWmBbc", "clientVersion": "dY3mWstv", "deployment": "1sgoUnxg", "fallbackClaimKeys": ["Ne41wYwh", "wJzvAQio", "Ocy0jv6M"], "inactiveTimeout": 39, "inviteTimeout": 92, "joinability": "aa2MQ0ut", "matchPool": "Iz0ivapz", "maxPlayers": 57, "minPlayers": 34, "preferredClaimKeys": ["i47E2XPX", "8fYPk5xj", "GNDRoRK9"], "requestedRegions": ["eJm2WVVF", "3OdOWkbN", "Y1oZjzHR"], "teams": [{"UserIDs": ["Bxfyk0UO", "zwa14ulQ", "bPamLgiv"], "parties": [{"partyID": "pjK1PXve", "userIDs": ["yD9gM3rp", "EB4pvkf6", "rmIGJsj9"]}, {"partyID": "YyiRiFLO", "userIDs": ["zrY8P0wZ", "p1kaLk2p", "KQzsPSyh"]}, {"partyID": "v9GqO3Wj", "userIDs": ["tgSBkGGo", "FjtLhPW5", "0nP75viH"]}]}, {"UserIDs": ["EspLlTdQ", "QeziYqkq", "4iH2zkZL"], "parties": [{"partyID": "wHisqZM3", "userIDs": ["tLzJjVGd", "qXiClGOr", "56mc93La"]}, {"partyID": "jy524HaH", "userIDs": ["wZy73o1o", "A2bk8v8f", "ts1plTSR"]}, {"partyID": "jcjXEkyi", "userIDs": ["eYeb4ldV", "hPBY9SDf", "UsvFKdsM"]}]}, {"UserIDs": ["43cxShSc", "Q6RxHoOv", "e8FFFGbW"], "parties": [{"partyID": "4HJ3nNwO", "userIDs": ["aKLeQFoc", "7TxKCpz8", "qezNbmnE"]}, {"partyID": "nd9s1ovV", "userIDs": ["9FiElZLG", "08T4cv26", "RG3Guw41"]}, {"partyID": "riSeaREC", "userIDs": ["XEKgg8Qs", "e0kMJUnO", "KhcRtO4u"]}]}], "ticketIDs": ["ZOxq6NeX", "L0DqWo5K", "nWGujfZs"], "tieTeamsSessionLifetime": true, "type": "y85uCvha", "version": 27}' \
    > test.out 2>&1
eval_tap $? 42 'UpdateGameSession' test.out

#- 43 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '9xYW7kYO' \
    > test.out 2>&1
eval_tap $? 43 'DeleteGameSession' test.out

#- 44 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'g9vTg6jo' \
    --body '{"attributes": {"NWXooOGH": {}, "ouCo341g": {}, "fr7ZgVxD": {}}, "backfillTicketID": "4KoIm21Q", "clientVersion": "ccZicWRa", "deployment": "MWKr8PdC", "fallbackClaimKeys": ["rEJZc5tw", "hQrzwKJL", "fiyFBbrX"], "inactiveTimeout": 45, "inviteTimeout": 64, "joinability": "F6UAlW2v", "matchPool": "6cJXESk5", "maxPlayers": 49, "minPlayers": 19, "preferredClaimKeys": ["AErGB65i", "JsFguRqI", "GumX8QD8"], "requestedRegions": ["J3qrXOLK", "emj4UDAn", "Xl6FFq2A"], "teams": [{"UserIDs": ["9M4qGAtI", "9cqCQEKV", "Vmy4NrOF"], "parties": [{"partyID": "UuulZ78c", "userIDs": ["tEZoWHXs", "EBwucJ3Y", "qD4AKPBz"]}, {"partyID": "jDvCXqdi", "userIDs": ["oAnjR1bM", "b7wTZw65", "Xft4SmLV"]}, {"partyID": "KTYsOukk", "userIDs": ["8aencNgc", "guJABIik", "aIwCytnM"]}]}, {"UserIDs": ["e5j9toJK", "2be6udeL", "B91trMdy"], "parties": [{"partyID": "MxRAuewN", "userIDs": ["rQmcVQ3C", "J8vnKyII", "PvQIfmxW"]}, {"partyID": "MFow8ZVx", "userIDs": ["PBroEr4z", "T9RVazk9", "MI4URI41"]}, {"partyID": "E92k82ym", "userIDs": ["zNWxyKOD", "5htGjHAJ", "4xFYCqVu"]}]}, {"UserIDs": ["2J78mkOn", "PQqSgEd7", "ZLU5nJvp"], "parties": [{"partyID": "4u369tZl", "userIDs": ["o769PWPx", "oZeiBFCU", "SXdlbWbX"]}, {"partyID": "gXmAkVN6", "userIDs": ["vHJuY4jK", "Nja3CAAY", "IE7SajMH"]}, {"partyID": "9WFxOrYc", "userIDs": ["Z0hUePGi", "BeOef3gp", "w0riuxST"]}]}], "ticketIDs": ["FaLQlzzL", "4sibf8ds", "fqKaiVJu"], "tieTeamsSessionLifetime": true, "type": "bQdrmzto", "version": 4}' \
    > test.out 2>&1
eval_tap $? 44 'PatchUpdateGameSession' test.out

#- 45 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'EcKo7f2N' \
    --body '{"backfillTicketID": "u1GhWq5b"}' \
    > test.out 2>&1
eval_tap $? 45 'UpdateGameSessionBackfillTicketID' test.out

#- 46 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId '3iZJ1S6v' \
    > test.out 2>&1
eval_tap $? 46 'GameSessionGenerateCode' test.out

#- 47 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'OQI3uNOV' \
    > test.out 2>&1
eval_tap $? 47 'PublicRevokeGameSessionCode' test.out

#- 48 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'l4FgsR46' \
    --body '{"platformID": "a7oFalgV", "userID": "ygEtd4C2"}' \
    > test.out 2>&1
eval_tap $? 48 'PublicGameSessionInvite' test.out

#- 49 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '3TSWKP4E' \
    > test.out 2>&1
eval_tap $? 49 'JoinGameSession' test.out

#- 50 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'GI6TElv4' \
    --body '{"leaderID": "6wRlYe27"}' \
    > test.out 2>&1
eval_tap $? 50 'PublicPromoteGameSessionLeader' test.out

#- 51 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'WPLjhW4u' \
    > test.out 2>&1
eval_tap $? 51 'LeaveGameSession' test.out

#- 52 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'ktMWIhCa' \
    > test.out 2>&1
eval_tap $? 52 'PublicGameSessionReject' test.out

#- 53 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId 'lAqzSGTv' \
    --body '{"secret": "uJKVkbs6"}' \
    > test.out 2>&1
eval_tap $? 53 'GetSessionServerSecret' test.out

#- 54 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'O6niHY4Q' \
    --body '{"additionalMembers": [{"partyID": "b71R1QWY", "userIDs": ["YpVtrOkz", "Ctkj7cg0", "o6ggIdyY"]}, {"partyID": "CqeW6hCf", "userIDs": ["GhETtPf6", "MzIsNlSy", "bu9rymqi"]}, {"partyID": "iyhcVska", "userIDs": ["hOzJmeCg", "ucTDvjIu", "i1WyQ67P"]}], "proposedTeams": [{"UserIDs": ["hA33LqL4", "h0s5uGxm", "fn1PYXeB"], "parties": [{"partyID": "NSAPlumv", "userIDs": ["JLJetSBk", "woDfX2be", "pawsZXA9"]}, {"partyID": "VoO7P1bn", "userIDs": ["Jul2aX5M", "9hRkOv9t", "ySe6mIq8"]}, {"partyID": "BNZz7H49", "userIDs": ["703P6psK", "fJnwVNfO", "ryipwptE"]}]}, {"UserIDs": ["byMsBxSy", "pwlReq7W", "RJV4mGjZ"], "parties": [{"partyID": "4hGf1cq3", "userIDs": ["8JClsgLk", "0RB76Gzg", "DYtAzrHW"]}, {"partyID": "yA4GnfHF", "userIDs": ["Utot7sPf", "A4ynyQBU", "6hDBYiHK"]}, {"partyID": "UW3WL700", "userIDs": ["HY6Ajr4e", "otx18c3B", "a0ZcsbU6"]}]}, {"UserIDs": ["gqyqe4FR", "eSRlM4vV", "xkrPSGlk"], "parties": [{"partyID": "S9P3yXFe", "userIDs": ["Y6uI9aTf", "cmYT3gXy", "BcazvD08"]}, {"partyID": "4Iy2gkQ3", "userIDs": ["rmL4rkmF", "wbJjrXks", "hASOLJbI"]}, {"partyID": "wzW2kihJ", "userIDs": ["C2sqozLq", "HKzI94Yu", "Ktu1QSDK"]}]}], "version": 3}' \
    > test.out 2>&1
eval_tap $? 54 'AppendTeamGameSession' test.out

#- 55 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Dln59WNY"}' \
    > test.out 2>&1
eval_tap $? 55 'PublicPartyJoinCode' test.out

#- 56 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'P6eElqnM' \
    > test.out 2>&1
eval_tap $? 56 'PublicGetParty' test.out

#- 57 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'deUY52zF' \
    --body '{"attributes": {"nLXkbHRQ": {}, "1ToI55fg": {}, "em5SlAPo": {}}, "inactiveTimeout": 43, "inviteTimeout": 62, "joinability": "eLG1ub7l", "maxPlayers": 1, "minPlayers": 59, "type": "uB14Eq2i", "version": 31}' \
    > test.out 2>&1
eval_tap $? 57 'PublicUpdateParty' test.out

#- 58 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'riWFS7WM' \
    --body '{"attributes": {"E9eGrQg7": {}, "qR2Uy7RI": {}, "KQ8BA0fT": {}}, "inactiveTimeout": 3, "inviteTimeout": 21, "joinability": "mSt47sRv", "maxPlayers": 43, "minPlayers": 40, "type": "9xu56RuI", "version": 18}' \
    > test.out 2>&1
eval_tap $? 58 'PublicPatchUpdateParty' test.out

#- 59 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'buqvgWXa' \
    > test.out 2>&1
eval_tap $? 59 'PublicGeneratePartyCode' test.out

#- 60 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'arrH6Klu' \
    > test.out 2>&1
eval_tap $? 60 'PublicRevokePartyCode' test.out

#- 61 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId '07I5W6rU' \
    --body '{"platformID": "lW8PWkVG", "userID": "G0lDyvZD"}' \
    > test.out 2>&1
eval_tap $? 61 'PublicPartyInvite' test.out

#- 62 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'tjITrAzI' \
    --body '{"leaderID": "uLyKfCkr"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicPromotePartyLeader' test.out

#- 63 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'V4DULRO2' \
    > test.out 2>&1
eval_tap $? 63 'PublicPartyJoin' test.out

#- 64 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'dcExJLs7' \
    > test.out 2>&1
eval_tap $? 64 'PublicPartyLeave' test.out

#- 65 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'SE3INjcz' \
    > test.out 2>&1
eval_tap $? 65 'PublicPartyReject' test.out

#- 66 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'a7Wk4dro' \
    --userId 'dXbqm8wU' \
    > test.out 2>&1
eval_tap $? 66 'PublicPartyKick' test.out

#- 67 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"f1LSjkmV": {}, "vlz7w6po": {}, "gqwIsgy6": {}}, "configurationName": "ezNVwfXZ", "inactiveTimeout": 77, "inviteTimeout": 91, "joinability": "XJzWcAhi", "maxPlayers": 11, "members": [{"ID": "JeQuKu1Z", "PlatformID": "vXjIRcbD", "PlatformUserID": "FDBDiBHU"}, {"ID": "1FMrKKMC", "PlatformID": "kByzoJEa", "PlatformUserID": "Dd2qW9fF"}, {"ID": "NABSTObg", "PlatformID": "0MlDEguy", "PlatformUserID": "CeY3v8dK"}], "minPlayers": 64, "textChat": false, "type": "tutH0rbX"}' \
    > test.out 2>&1
eval_tap $? 67 'PublicCreateParty' test.out

#- 68 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'n3UsMixC' \
    --body '{"u05SzcVX": {}, "Pmzv2Von": {}, "ECHsuUgP": {}}' \
    > test.out 2>&1
eval_tap $? 68 'PublicUpdateInsertSessionStorageLeader' test.out

#- 69 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'SHCUb9Ps' \
    --userId 'ZvzijLDP' \
    --body '{"W4JvaChK": {}, "47E7oWsd": {}, "Jmp1h3g6": {}}' \
    > test.out 2>&1
eval_tap $? 69 'PublicUpdateInsertSessionStorage' test.out

#- 70 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["MWdlWb8t", "tWQjTOfb", "76Ifm9ZE"]}' \
    > test.out 2>&1
eval_tap $? 70 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 71 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'PublicGetPlayerAttributes' test.out

#- 72 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": true, "currentPlatform": "1wgfabMr", "data": {"uRlazZXf": {}, "FOEGWBqP": {}, "xydo2McA": {}}, "platforms": [{"name": "3TMAYzzw", "userID": "cuQIU1lg"}, {"name": "tqrgf6e1", "userID": "I0gcNwSR"}, {"name": "ZQWWTJVu", "userID": "oNThP2RO"}], "roles": ["BjyGts3A", "XTQGl538", "23vfmJX8"]}' \
    > test.out 2>&1
eval_tap $? 72 'PublicStorePlayerAttributes' test.out

#- 73 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 73 'PublicDeletePlayerAttributes' test.out

#- 74 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'f6uFZKy7' \
    --orderBy '2w4YjTKp' \
    --status 'uGVPLqXd' \
    > test.out 2>&1
eval_tap $? 74 'PublicQueryMyGameSessions' test.out

#- 75 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'xQlIoKCY' \
    --orderBy '8AySuLfj' \
    --status '2yTYsw5I' \
    > test.out 2>&1
eval_tap $? 75 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE