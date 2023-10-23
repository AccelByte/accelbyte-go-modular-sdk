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
echo "1..70"

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
    --body '{"regionRetryMapping": {"fpgXxvzI": ["4V2sg0A9", "6jpNiKDQ", "wQgqIAJk"], "jO4TZBUc": ["za18ft3W", "8xw9uT6d", "2svIl7zm"], "moacdeYw": ["HxEwne8a", "JEFDkFPd", "fZ8TJP5N"]}, "regionURLMapping": ["yCL5sNnK", "ZiEaDBC5", "I3o5ipuw"], "testGameMode": "vqT0vcta", "testRegionURLMapping": ["WFCHJk5L", "AyJbyYw3", "Zx6FR9DZ"], "testTargetUserIDs": ["R7iOjcU4", "V5pHVbb7", "uIXGBgxA"]}' \
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
    --body '{"durationDays": 86}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateConfigurationAlertV1' test.out

#- 11 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 47}' \
    > test.out 2>&1
eval_tap $? 11 'AdminCreateConfigurationAlertV1' test.out

#- 12 AdminDeleteConfigurationAlertV1
samples/cli/sample-apps Session adminDeleteConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteConfigurationAlertV1' test.out

#- 13 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 100, "PSNSupportedPlatforms": ["7wV9eRTd", "PwhyyrZJ", "86OjuiEj"], "SessionTitle": "Drv17Gon", "ShouldSync": true, "XboxServiceConfigID": "5DVWYG1k", "XboxSessionTemplateName": "8dgyMk6m", "localizedSessionName": {"vnMr4bI1": {}, "vUOZySZn": {}, "8hMYp0RB": {}}}, "PSNBaseUrl": "dbZYnaBh", "autoJoin": false, "clientVersion": "7x4V0Vgp", "deployment": "Yu9OUMLI", "dsSource": "VKBWjlH1", "fallbackClaimKeys": ["iizZ3dF7", "Ydc9Ad58", "N7S6Mb5F"], "immutableStorage": true, "inactiveTimeout": 79, "inviteTimeout": 90, "joinability": "D5OrjhGs", "maxActiveSessions": 60, "maxPlayers": 94, "minPlayers": 58, "name": "MpvsshtD", "persistent": false, "preferredClaimKeys": ["vBrPv5sz", "D7Ws7z95", "yHP19anl"], "requestedRegions": ["UGyHd2zB", "hy8d4EbE", "sJaGGxxA"], "textChat": false, "tieTeamsSessionLifetime": true, "type": "80Ey0wCx"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminCreateConfigurationTemplateV1' test.out

#- 14 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --name 'qZu9GCo1' \
    --offset '95' \
    --order 'svassh9j' \
    --orderBy 'rLZIyrOb' \
    > test.out 2>&1
eval_tap $? 14 'AdminGetAllConfigurationTemplatesV1' test.out

#- 15 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name '6uSSMi18' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'AdminGetConfigurationTemplateV1' test.out

#- 16 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'eSea4ehu' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 87, "PSNSupportedPlatforms": ["8WuxkeDC", "QFK6FqkS", "F3r039WW"], "SessionTitle": "0Qu7bjvO", "ShouldSync": false, "XboxServiceConfigID": "6cBOO3L6", "XboxSessionTemplateName": "jYVrAKwn", "localizedSessionName": {"Iuy7848q": {}, "OavVMTbe": {}, "5uUmm417": {}}}, "PSNBaseUrl": "UkEGjFYp", "autoJoin": false, "clientVersion": "HWMKOm8F", "deployment": "jImEuOuc", "dsSource": "foSrZU2F", "fallbackClaimKeys": ["fUGDf53b", "dd1BlYqW", "nEHHHgMQ"], "immutableStorage": true, "inactiveTimeout": 56, "inviteTimeout": 93, "joinability": "26OpfQ6O", "maxActiveSessions": 96, "maxPlayers": 49, "minPlayers": 27, "name": "E6R0hmCp", "persistent": true, "preferredClaimKeys": ["2JkAEBG8", "WFRpYJ0z", "4wgeei1p"], "requestedRegions": ["bAu3Vb6b", "8w3a0Zx9", "yM8g49Fc"], "textChat": false, "tieTeamsSessionLifetime": false, "type": "19CRDOrE"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminUpdateConfigurationTemplateV1' test.out

#- 17 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'IyU3t5nR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDeleteConfigurationTemplateV1' test.out

#- 18 AdminGetDSMCConfiguration
samples/cli/sample-apps Session adminGetDSMCConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminGetDSMCConfiguration' test.out

#- 19 AdminSyncDSMCConfiguration
samples/cli/sample-apps Session adminSyncDSMCConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'AdminSyncDSMCConfiguration' test.out

#- 20 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName 'jMjheXTx' \
    --dsPodName 'dYR48nAy' \
    --fromTime '0W6FJHGD' \
    --gameMode 'Th3dvWhG' \
    --isPersistent '465XdjcE' \
    --isSoftDeleted 'HNgad9gp' \
    --joinability 'kv1aQsm1' \
    --limit '100' \
    --matchPool 'fRuBtAra' \
    --memberID 'r5g0R6ix' \
    --offset '9' \
    --order 'bVa70Riu' \
    --orderBy 'h3DqVvKs' \
    --sessionID 'l2AQlMY0' \
    --status 'Fhcs9MZA' \
    --statusV2 'nhsBmkm7' \
    --toTime 'Fm9L4ihg' \
    > test.out 2>&1
eval_tap $? 20 'AdminQueryGameSessions' test.out

#- 21 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"uuUd24SE": {}, "IsywenzA": {}, "fnFwoTeY": {}}' \
    > test.out 2>&1
eval_tap $? 21 'AdminQueryGameSessionsByAttributes' test.out

#- 22 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["FA9r5qqG", "u0Rogs1z", "U1JFhxJ0"]}' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteBulkGameSessions' test.out

#- 23 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId '611HHSJS' \
    --namespace $AB_NAMESPACE \
    --sessionId 'CqobGGeM' \
    --statusType 'eylGST4i' \
    > test.out 2>&1
eval_tap $? 23 'AdminUpdateGameSessionMember' test.out

#- 24 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --joinability 'aEbqqbJm' \
    --key '8jASuor9' \
    --leaderID 'v12o15qJ' \
    --limit '32' \
    --memberID 'PtvrJ7ob' \
    --memberStatus '9JF3CI5O' \
    --offset '9' \
    --order 'Plt1K5kk' \
    --orderBy 'eETBpMo4' \
    --partyID 'EnP3KBKC' \
    --value 'DbyCqGu3' \
    > test.out 2>&1
eval_tap $? 24 'AdminQueryParties' test.out

#- 25 AdminGetPlatformCredentials
samples/cli/sample-apps Session adminGetPlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'AdminGetPlatformCredentials' test.out

#- 26 AdminUpdatePlatformCredentials
samples/cli/sample-apps Session adminUpdatePlatformCredentials \
    --namespace $AB_NAMESPACE \
    --body '{"psn": {"clientId": "cwGzrHS9", "clientSecret": "RMJwFQdO", "scope": "m9hawqLw"}}' \
    > test.out 2>&1
eval_tap $? 26 'AdminUpdatePlatformCredentials' test.out

#- 27 AdminDeletePlatformCredentials
samples/cli/sample-apps Session adminDeletePlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AdminDeletePlatformCredentials' test.out

#- 28 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'C2P41AO5' \
    > test.out 2>&1
eval_tap $? 28 'AdminReadSessionStorage' test.out

#- 29 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'IixEFFY4' \
    > test.out 2>&1
eval_tap $? 29 'AdminDeleteUserSessionStorage' test.out

#- 30 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'WWSJcxeY' \
    --userId 'IyEHG4id' \
    > test.out 2>&1
eval_tap $? 30 'AdminReadUserSessionStorage' test.out

#- 31 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users '0sXp4ai1' \
    > test.out 2>&1
eval_tap $? 31 'AdminQueryPlayerAttributes' test.out

#- 32 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'EuxI7Alo' \
    > test.out 2>&1
eval_tap $? 32 'AdminGetPlayerAttributes' test.out

#- 33 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"pJbIKoCJ": {}, "TR073uqG": {}, "zrEdi53G": {}}, "autoJoin": false, "backfillTicketID": "pLrHxujs", "clientVersion": "84qzW0bo", "configurationName": "XUKPG984", "deployment": "lByxCPnk", "dsSource": "Ee22MDv9", "fallbackClaimKeys": ["IjxlWybc", "SbRsA8h3", "5JlCkV1J"], "inactiveTimeout": 85, "inviteTimeout": 67, "joinability": "XfCUkiKn", "matchPool": "mppYtIXd", "maxPlayers": 4, "minPlayers": 74, "preferredClaimKeys": ["GDWL7sjD", "rs80VYVr", "Af55Skj3"], "requestedRegions": ["OQZLciTy", "XgHE7Dwv", "nML8BovF"], "serverName": "v6sfKEBA", "teams": [{"UserIDs": ["t5TS36G0", "VZdqdTFU", "dBLHAvKe"], "parties": [{"partyID": "LD3dVOq6", "userIDs": ["hstG2kQF", "bypPkti7", "YisIUKHK"]}, {"partyID": "tMIWSegV", "userIDs": ["YkNReJ56", "f6S7FEup", "YKTVBlMv"]}, {"partyID": "TMe21jFQ", "userIDs": ["qhhezz8x", "86E78o47", "BbeKxGfe"]}]}, {"UserIDs": ["C501dsW1", "jVVF1LvN", "mgbojEjh"], "parties": [{"partyID": "kMBI8zLq", "userIDs": ["Oo1fczZU", "UD0MEdbe", "xyfZw412"]}, {"partyID": "OChA13cV", "userIDs": ["f8kyDupg", "zJv8ILZb", "g9g16ZkF"]}, {"partyID": "v4q489zQ", "userIDs": ["bbtgowKZ", "azFQaMl5", "194mxm77"]}]}, {"UserIDs": ["opmvuKju", "f5cOJ14o", "HhXOOhic"], "parties": [{"partyID": "v2aImAOY", "userIDs": ["AzVCVnp2", "3HRh7Dqx", "5jFWRZOG"]}, {"partyID": "EEiXmVPG", "userIDs": ["27plzXSd", "ov9AFdMo", "luAmskOp"]}, {"partyID": "XMdtnDXl", "userIDs": ["Bz3pKcks", "kuZ5Qdde", "1ukfzL3P"]}]}], "textChat": false, "ticketIDs": ["nLkcM5KJ", "B7jjw4mO", "4rikyBSO"], "tieTeamsSessionLifetime": false, "type": "Mh08ZmOr"}' \
    > test.out 2>&1
eval_tap $? 33 'CreateGameSession' test.out

#- 34 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"TBBW3ujO": {}, "1P1MCV7l": {}, "mj4AHIkJ": {}}' \
    > test.out 2>&1
eval_tap $? 34 'PublicQueryGameSessionsByAttributes' test.out

#- 35 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "BSHZfHXK"}' \
    > test.out 2>&1
eval_tap $? 35 'PublicSessionJoinCode' test.out

#- 36 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'hOingBZ8' \
    > test.out 2>&1
eval_tap $? 36 'GetGameSessionByPodName' test.out

#- 37 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '33beZrV5' \
    > test.out 2>&1
eval_tap $? 37 'GetGameSession' test.out

#- 38 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'bVFPFOY4' \
    --body '{"attributes": {"9OPOADJg": {}, "6HKCJIWX": {}, "0qMLjSFY": {}}, "backfillTicketID": "5iPU7kpf", "clientVersion": "UWEWlFWY", "deployment": "pMSyVeza", "fallbackClaimKeys": ["hMU6YOtG", "ASeZ2lh7", "QZTwYOfu"], "inactiveTimeout": 78, "inviteTimeout": 25, "joinability": "GP9Eezv2", "matchPool": "mdtfBP8z", "maxPlayers": 44, "minPlayers": 99, "preferredClaimKeys": ["HIkOsV8c", "dnlUaba4", "2kNFd7w7"], "requestedRegions": ["Pl5SadpE", "ajLXCHO9", "RpopbDlQ"], "teams": [{"UserIDs": ["78p47XqI", "SYzHfBUO", "menENtgh"], "parties": [{"partyID": "lnfpZfzS", "userIDs": ["FRpMEsrq", "lIWYsHHX", "eEj45Q3Q"]}, {"partyID": "C9115hf9", "userIDs": ["VwKrOjkp", "4gUMcXfF", "CZG7p0D8"]}, {"partyID": "srr6YY0W", "userIDs": ["ZuKR4yqm", "DUuj7uZj", "LD3SMuRn"]}]}, {"UserIDs": ["NsxfItsZ", "JzxbwpD2", "ydSyJkGY"], "parties": [{"partyID": "7s9W8sBu", "userIDs": ["gOD6LtO3", "j9ptl02F", "uXg4sQ8t"]}, {"partyID": "ak8WPApS", "userIDs": ["8DCtuiwy", "J9JlkKAw", "hwb8Luhz"]}, {"partyID": "NerNhxnK", "userIDs": ["wqtGJNFK", "lH3m6fHM", "Ra44SKKw"]}]}, {"UserIDs": ["6njoJij2", "giDzWx8n", "u8NWtENc"], "parties": [{"partyID": "YEuuCYnl", "userIDs": ["Ae926chB", "hsZHKV4Y", "EqJG9Rct"]}, {"partyID": "u1DBk1jW", "userIDs": ["eXVzTIre", "Q4Gq1olj", "PBGzvqeU"]}, {"partyID": "qvcnVaki", "userIDs": ["Xu8jOnhH", "mWThs9W7", "SxyFYxM7"]}]}], "ticketIDs": ["Ezs9YKnq", "YjVFDtVC", "IWLxo2QA"], "tieTeamsSessionLifetime": false, "type": "1renGw7L", "version": 50}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateGameSession' test.out

#- 39 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'BJE68zfz' \
    > test.out 2>&1
eval_tap $? 39 'DeleteGameSession' test.out

#- 40 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '5VOc2jTX' \
    --body '{"attributes": {"6F9hnbAn": {}, "qcJS8miD": {}, "LhQczrFG": {}}, "backfillTicketID": "JjcFZsvD", "clientVersion": "V9sEXYXU", "deployment": "tNDvsC4z", "fallbackClaimKeys": ["dd0T2poR", "CAWch5r4", "Pt3PHefc"], "inactiveTimeout": 11, "inviteTimeout": 30, "joinability": "2KxEXiwR", "matchPool": "ZsGxIClK", "maxPlayers": 37, "minPlayers": 37, "preferredClaimKeys": ["7g3j3m09", "dc8ep4Op", "scqXNAb0"], "requestedRegions": ["BstbNc4m", "IhRJuOub", "6KDSPVH7"], "teams": [{"UserIDs": ["jHWIXsqi", "yjdLUAYQ", "KWSopAhX"], "parties": [{"partyID": "Y71RXzxG", "userIDs": ["hPyIllge", "PyY5iTG3", "FBkExCIv"]}, {"partyID": "0jPaUBGd", "userIDs": ["y0i9TSkF", "a3bM38ML", "umaNEpIm"]}, {"partyID": "gRlqSH0I", "userIDs": ["dHrK6gO3", "qUMN7V1c", "amWG19TF"]}]}, {"UserIDs": ["JLa933A2", "kC8N6zW2", "4cAWSkWs"], "parties": [{"partyID": "UBYlEoWG", "userIDs": ["AcesQXYL", "j3N4jMMG", "sBOkpnLG"]}, {"partyID": "1JLhyMkK", "userIDs": ["uNEytSZC", "FpZOaXK9", "YeIt9rrF"]}, {"partyID": "BQwAGcEL", "userIDs": ["MaU5mPVj", "7LTt1jkz", "ejuhCkJl"]}]}, {"UserIDs": ["nA2dK0U6", "bWdit6bd", "kO9Y4wlb"], "parties": [{"partyID": "pK4w5V81", "userIDs": ["ujwI4Weo", "2BgsvTPs", "ACo1Czoy"]}, {"partyID": "zWiVWWfo", "userIDs": ["GlaIsa7q", "p1AIeaNs", "slTZ5z7V"]}, {"partyID": "4fVSrgPD", "userIDs": ["ovQGuWOW", "xMVy2RuS", "QLQKzA3H"]}]}], "ticketIDs": ["RyRPLqI7", "f8JTLrZR", "goBwXGRl"], "tieTeamsSessionLifetime": false, "type": "P6ODTl88", "version": 51}' \
    > test.out 2>&1
eval_tap $? 40 'PatchUpdateGameSession' test.out

#- 41 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'XwJMG9O3' \
    --body '{"backfillTicketID": "aX56rnbk"}' \
    > test.out 2>&1
eval_tap $? 41 'UpdateGameSessionBackfillTicketID' test.out

#- 42 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'F32AZkVe' \
    > test.out 2>&1
eval_tap $? 42 'GameSessionGenerateCode' test.out

#- 43 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'FBaQx2RC' \
    > test.out 2>&1
eval_tap $? 43 'PublicRevokeGameSessionCode' test.out

#- 44 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId '1LsVRY9w' \
    --body '{"platformID": "ZgOh5fNM", "userID": "xaDyrp4Y"}' \
    > test.out 2>&1
eval_tap $? 44 'PublicGameSessionInvite' test.out

#- 45 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'hOdyEubC' \
    > test.out 2>&1
eval_tap $? 45 'JoinGameSession' test.out

#- 46 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'bZGbVTPN' \
    --body '{"leaderID": "9jpDk1mZ"}' \
    > test.out 2>&1
eval_tap $? 46 'PublicPromoteGameSessionLeader' test.out

#- 47 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'XQ0x7cvH' \
    > test.out 2>&1
eval_tap $? 47 'LeaveGameSession' test.out

#- 48 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'r1H7mNk7' \
    > test.out 2>&1
eval_tap $? 48 'PublicGameSessionReject' test.out

#- 49 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'XkX5JxCe' \
    --body '{"additionalMembers": [{"partyID": "y8sLDUci", "userIDs": ["1hWISqXx", "t4k3Ub2a", "jW3yt5hk"]}, {"partyID": "k62wHrp9", "userIDs": ["zgOfthMB", "jVe4Fzm0", "y1oc9qTJ"]}, {"partyID": "DJ1At21M", "userIDs": ["hlDbPcGZ", "48o0w3JK", "3kWkTIRD"]}], "proposedTeams": [{"UserIDs": ["65yQtVoa", "V7KFvhBx", "75APgvgf"], "parties": [{"partyID": "LIXDr6S9", "userIDs": ["grvm2eoO", "J2KozpZK", "QjbXnmbV"]}, {"partyID": "qZINEhJj", "userIDs": ["86PSvKId", "V62GLLF4", "2b70U5T8"]}, {"partyID": "rzW3uQNZ", "userIDs": ["EY6TQTKT", "MleCLqga", "A0EDLDRX"]}]}, {"UserIDs": ["ntF581Ut", "7EdYUIZp", "KIDasECx"], "parties": [{"partyID": "bhTl7u7N", "userIDs": ["G02Zf59A", "ttRKEp9O", "sx8z7h3S"]}, {"partyID": "dDDbRAlS", "userIDs": ["zLfTwqdX", "Qfw2uJab", "YUjCOWYS"]}, {"partyID": "Lp9qul3r", "userIDs": ["pkpZWTgN", "2ogoyaoM", "fJBZwQM6"]}]}, {"UserIDs": ["E322BeYi", "iE5hXRUq", "PlbFIFy1"], "parties": [{"partyID": "9eubSm0a", "userIDs": ["TmDqiaw5", "p0syjXl9", "LZZGVD1C"]}, {"partyID": "AM5U22hY", "userIDs": ["jTQ0tBw0", "KLbmMDvX", "4XHb9YnF"]}, {"partyID": "954PoTPU", "userIDs": ["SNKKuBQe", "VhepihKS", "z6NDJTN7"]}]}], "version": 7}' \
    > test.out 2>&1
eval_tap $? 49 'AppendTeamGameSession' test.out

#- 50 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "GsVZoWsf"}' \
    > test.out 2>&1
eval_tap $? 50 'PublicPartyJoinCode' test.out

#- 51 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId '6BbVS30r' \
    > test.out 2>&1
eval_tap $? 51 'PublicGetParty' test.out

#- 52 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'kpc026ax' \
    --body '{"attributes": {"i7vl11yb": {}, "eLz0sZUA": {}, "SRpdBkZc": {}}, "inactiveTimeout": 17, "inviteTimeout": 77, "joinability": "UJOBDiAs", "maxPlayers": 79, "minPlayers": 9, "type": "wpbn4Pp1", "version": 10}' \
    > test.out 2>&1
eval_tap $? 52 'PublicUpdateParty' test.out

#- 53 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'zR2syumH' \
    --body '{"attributes": {"fEHerXeB": {}, "LNekwZDE": {}, "OIDkwBUX": {}}, "inactiveTimeout": 50, "inviteTimeout": 12, "joinability": "HYm3jFh0", "maxPlayers": 85, "minPlayers": 14, "type": "o7bIDnKr", "version": 90}' \
    > test.out 2>&1
eval_tap $? 53 'PublicPatchUpdateParty' test.out

#- 54 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'weuI8cH5' \
    > test.out 2>&1
eval_tap $? 54 'PublicGeneratePartyCode' test.out

#- 55 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'tJNvzjZW' \
    > test.out 2>&1
eval_tap $? 55 'PublicRevokePartyCode' test.out

#- 56 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'iJVmww6v' \
    --body '{"platformID": "RhrE8uvI", "userID": "E5HFcvSE"}' \
    > test.out 2>&1
eval_tap $? 56 'PublicPartyInvite' test.out

#- 57 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'lpnjeLsm' \
    --body '{"leaderID": "F8EQ3GTK"}' \
    > test.out 2>&1
eval_tap $? 57 'PublicPromotePartyLeader' test.out

#- 58 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'IHget5tK' \
    > test.out 2>&1
eval_tap $? 58 'PublicPartyJoin' test.out

#- 59 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'GW4qbeqr' \
    > test.out 2>&1
eval_tap $? 59 'PublicPartyLeave' test.out

#- 60 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId '8kHLjLbJ' \
    > test.out 2>&1
eval_tap $? 60 'PublicPartyReject' test.out

#- 61 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'NM4Op4Av' \
    --userId 'rYj0x2Sq' \
    > test.out 2>&1
eval_tap $? 61 'PublicPartyKick' test.out

#- 62 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"4vfSzJHc": {}, "HOyRBSc5": {}, "j7K73Uq8": {}}, "configurationName": "MuRwCtcW", "inactiveTimeout": 65, "inviteTimeout": 65, "joinability": "hBB1WMks", "maxPlayers": 44, "members": [{"ID": "BLEWy1Nd", "PlatformID": "V6zmpjxl", "PlatformUserID": "nqxp2Q6k"}, {"ID": "jzzOpHCq", "PlatformID": "KXIqAMgr", "PlatformUserID": "5LUhLLQ4"}, {"ID": "O75VIAkf", "PlatformID": "u4FDDQKZ", "PlatformUserID": "Z73IBqZi"}], "minPlayers": 58, "textChat": true, "type": "3vcjzUU0"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicCreateParty' test.out

#- 63 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'iVYFj05H' \
    --body '{"U2EZpaC1": {}, "iF9eOQsm": {}, "eEl8JDQJ": {}}' \
    > test.out 2>&1
eval_tap $? 63 'PublicUpdateInsertSessionStorageLeader' test.out

#- 64 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'nnJLX41p' \
    --userId 'YbWNi03X' \
    --body '{"ghl9Spm7": {}, "nrdiiu0h": {}, "t63G846T": {}}' \
    > test.out 2>&1
eval_tap $? 64 'PublicUpdateInsertSessionStorage' test.out

#- 65 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["puuKVKTh", "yLf8d9Zv", "7GootqoZ"]}' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 66 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'PublicGetPlayerAttributes' test.out

#- 67 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": false, "currentPlatform": "vYAb6rOi", "data": {"Ns2SFQsh": {}, "7F1V4XgA": {}, "xkqsWBtH": {}}, "platforms": [{"name": "10XZ5ndo", "userID": "p99azY5b"}, {"name": "qNm6EuDE", "userID": "PNREkIio"}, {"name": "Fsr40KJU", "userID": "OCWCNldF"}], "roles": ["98LGOO6Q", "kHhTN3F0", "ZtulB32C"]}' \
    > test.out 2>&1
eval_tap $? 67 'PublicStorePlayerAttributes' test.out

#- 68 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 68 'PublicDeletePlayerAttributes' test.out

#- 69 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order '5LbUJK0O' \
    --orderBy 'kNOZuqaP' \
    --status 'Sb2z4zOT' \
    > test.out 2>&1
eval_tap $? 69 'PublicQueryMyGameSessions' test.out

#- 70 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'r2Ugr3Fa' \
    --orderBy 'hFZ4B5r6' \
    --status 'yJhtmvzf' \
    > test.out 2>&1
eval_tap $? 70 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE