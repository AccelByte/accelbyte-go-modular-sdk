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
echo "1..74"

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
    --body '{"regionRetryMapping": {"SkvtiWTQ": ["JwnWHVdx", "HQnM3Vjj", "LAxeHO9O"], "cRHFTtyA": ["fpBDxThc", "6HPyP147", "o8j68C7T"], "M8ZyFH0V": ["ck1BXG1v", "U3jV9Qd3", "cZCf9AVA"]}, "regionURLMapping": ["1fLOVyRm", "aL9inXLe", "7Dc8KWNC"], "testGameMode": "xPnKmFN5", "testRegionURLMapping": ["13Q7FmgN", "Iv0hZdT7", "zL2lrKM0"], "testTargetUserIDs": ["le3rLTgp", "QVjx8GXf", "y1ctPu4t"]}' \
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
    --body '{"durationDays": 26}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateConfigurationAlertV1' test.out

#- 11 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 58}' \
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
    --description 'J62hoIWG' \
    --certname 'ChO2iuP8' \
    --file 'tmp.dat' \
    --password 'WWkvwUy8' \
    > test.out 2>&1
eval_tap $? 13 'HandleUploadXboxPFXCertificate' test.out

#- 14 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 29, "PSNSupportedPlatforms": ["ABHLWxbO", "lR52D5a9", "t32dnDae"], "SessionTitle": "mESOn0le", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "OalkOzU5", "XboxServiceConfigID": "nRz9d0sG", "XboxSessionTemplateName": "qQfIEIEA", "XboxTitleID": "10GqamGM", "localizedSessionName": {"cXedaJOJ": {}, "SkftwWrj": {}, "2gtyGGKU": {}}}, "PSNBaseUrl": "JQmh5aIb", "autoJoin": true, "clientVersion": "9R6Ufgz2", "deployment": "6lBUDxHS", "disableCodeGeneration": true, "dsManualSetReady": true, "dsSource": "OAOIPPbA", "enableSecret": true, "fallbackClaimKeys": ["wlBUHACi", "QPgPj62n", "SlZfdW1W"], "immutableStorage": false, "inactiveTimeout": 71, "inviteTimeout": 17, "joinability": "GsAEvpJL", "maxActiveSessions": 41, "maxPlayers": 28, "minPlayers": 76, "name": "xCpbBzAu", "persistent": false, "preferredClaimKeys": ["xjfFklDk", "3UlMf1l5", "dnhyGFjH"], "requestedRegions": ["LpLoy6k2", "sCrv1YmF", "1BAyN9Kz"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "fXpEFyTO"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminCreateConfigurationTemplateV1' test.out

#- 15 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --name 'ufunPsex' \
    --offset '73' \
    --order 'rUDtNHbN' \
    --orderBy 'qmjHVWZi' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetAllConfigurationTemplatesV1' test.out

#- 16 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'ypmraNzJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetConfigurationTemplateV1' test.out

#- 17 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'uky5AAsw' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 52, "PSNSupportedPlatforms": ["rlr5tZVO", "075AoB75", "jwx49UcS"], "SessionTitle": "8ZJ2c3AP", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "uCX3pMEc", "XboxServiceConfigID": "YqDifcea", "XboxSessionTemplateName": "8tmstPOd", "XboxTitleID": "a0QebpTs", "localizedSessionName": {"neqAuAHU": {}, "5rD3ewMw": {}, "2xTkwefa": {}}}, "PSNBaseUrl": "H9C79s0R", "autoJoin": false, "clientVersion": "7UoeYsay", "deployment": "qzjykdAN", "disableCodeGeneration": false, "dsManualSetReady": false, "dsSource": "ptkFjEWh", "enableSecret": true, "fallbackClaimKeys": ["jNYIFF3T", "3XnGOe8Q", "lHmHW5pb"], "immutableStorage": false, "inactiveTimeout": 48, "inviteTimeout": 38, "joinability": "lF8FHFbG", "maxActiveSessions": 79, "maxPlayers": 17, "minPlayers": 86, "name": "BBh2MAFv", "persistent": false, "preferredClaimKeys": ["fdw531Bs", "dmtMPPLH", "VcWydVKc"], "requestedRegions": ["kggNFolT", "bboK10nh", "PTsj1ijh"], "textChat": false, "tieTeamsSessionLifetime": true, "type": "pC8pvn1S"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateConfigurationTemplateV1' test.out

#- 18 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'FkZy6b51' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteConfigurationTemplateV1' test.out

#- 19 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 'Uuknt8v9' \
    --namespace $AB_NAMESPACE \
    --userId '7u289KNr' \
    > test.out 2>&1
eval_tap $? 19 'AdminGetMemberActiveSession' test.out

#- 20 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'oacvgkub' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "RVUONvv6"}' \
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
    --configurationName 'TWOLLBfK' \
    --dsPodName 'AGsYcL24' \
    --fromTime 'yCVNMgG5' \
    --gameMode 'NQQBik4v' \
    --isPersistent '8SkVGHnP' \
    --isSoftDeleted 'H85IPERf' \
    --joinability 'elXbyMM3' \
    --limit '48' \
    --matchPool '0OgTjpOb' \
    --memberID 'ERUt0sJT' \
    --offset '57' \
    --order 'xTij8RZF' \
    --orderBy '5L37HZb7' \
    --sessionID 'OZvpspBV' \
    --status 'RNkNd5lL' \
    --statusV2 '50U6HLZm' \
    --toTime '42QyvIAi' \
    > test.out 2>&1
eval_tap $? 23 'AdminQueryGameSessions' test.out

#- 24 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"GS0wfOZH": {}, "fdWKXXDM": {}, "nTMdImR0": {}}' \
    > test.out 2>&1
eval_tap $? 24 'AdminQueryGameSessionsByAttributes' test.out

#- 25 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["NomHyN8M", "4uXfOj4f", "qv2hWfVh"]}' \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteBulkGameSessions' test.out

#- 26 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId '53bN12GM' \
    --body '{"ready": true}' \
    > test.out 2>&1
eval_tap $? 26 'AdminSetDSReady' test.out

#- 27 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId '47qPyqbZ' \
    --namespace $AB_NAMESPACE \
    --sessionId 'ExXwvUOT' \
    --statusType '6JUkvrRb' \
    > test.out 2>&1
eval_tap $? 27 'AdminUpdateGameSessionMember' test.out

#- 28 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --joinability '4IQRE0uc' \
    --key '8DgTKmfc' \
    --leaderID 'RVCLFpPH' \
    --limit '6' \
    --memberID '16HZJy9B' \
    --memberStatus 'de5hqmof' \
    --offset '87' \
    --order 'aRdWn8oQ' \
    --orderBy 'H5IWrp2T' \
    --partyID 'rbLpuKvJ' \
    --value 'mie9YpSQ' \
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
    --body '{"psn": {"clientId": "m2ehYGME", "clientSecret": "q55UshkQ", "scope": "47i873KZ"}}' \
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
    --sessionId 'JgUmCxfk' \
    > test.out 2>&1
eval_tap $? 32 'AdminReadSessionStorage' test.out

#- 33 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'Si4TJSdR' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteUserSessionStorage' test.out

#- 34 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'r2MWG6zt' \
    --userId 'XmjNSxfU' \
    > test.out 2>&1
eval_tap $? 34 'AdminReadUserSessionStorage' test.out

#- 35 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'JKmFJFZz' \
    > test.out 2>&1
eval_tap $? 35 'AdminQueryPlayerAttributes' test.out

#- 36 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId '7vKtuqHg' \
    > test.out 2>&1
eval_tap $? 36 'AdminGetPlayerAttributes' test.out

#- 37 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"oKyMwe2k": {}, "GMtYPuJN": {}, "a7EbEc27": {}}, "autoJoin": true, "backfillTicketID": "BwICDunA", "clientVersion": "p3JQwUsQ", "configurationName": "nYGxwfjt", "deployment": "UXGgulKO", "dsSource": "icRfQQGD", "fallbackClaimKeys": ["GRRbUHUB", "sqPLbWPG", "Y0K24xn1"], "inactiveTimeout": 54, "inviteTimeout": 51, "joinability": "JuJuC0uM", "matchPool": "61Fdg2x4", "maxPlayers": 16, "minPlayers": 28, "preferredClaimKeys": ["hxljkRvb", "ZeaaysoN", "geSzSMpC"], "requestedRegions": ["7OXxy2Kn", "ACEiNLsp", "76KFUkgB"], "serverName": "s6ZmjfVF", "teams": [{"UserIDs": ["f7g7M0KQ", "d03bhHpz", "vnOeun0T"], "parties": [{"partyID": "XqWjcIyQ", "userIDs": ["3fORuRI5", "PwBlYKN8", "s3OD4QkV"]}, {"partyID": "vVOfRf01", "userIDs": ["iPb9JY56", "EVze1V8B", "XS6IIKSh"]}, {"partyID": "oAjuTnEy", "userIDs": ["SNuuJDcL", "LiXU23mN", "5333fVdI"]}]}, {"UserIDs": ["fcGetjpj", "DSDAUD3D", "50ZzJV2c"], "parties": [{"partyID": "ZFPGExqn", "userIDs": ["Ue5vKktl", "36iuNxXi", "R6NBoLy2"]}, {"partyID": "iOP8Vtrr", "userIDs": ["9ktCaENK", "5fprvV4c", "88ubWpzv"]}, {"partyID": "F7wjyXCb", "userIDs": ["TMWzj4UN", "l8hBaETI", "ESU8tKW2"]}]}, {"UserIDs": ["4MArwgj0", "XZJFAyl0", "HQWzi0QG"], "parties": [{"partyID": "RZwKb51C", "userIDs": ["4AR2IvpA", "3RPscbiK", "gXIr8Xd3"]}, {"partyID": "3MBhqr6V", "userIDs": ["r7Dn0Q5O", "jK2E7cd5", "qKjYPmV3"]}, {"partyID": "o3QuQqgw", "userIDs": ["fYdYLA0n", "4hyxBAZ0", "Gz8LTCZf"]}]}], "textChat": false, "ticketIDs": ["85GbGvfK", "pXqi4bTF", "9PeQ2rYu"], "tieTeamsSessionLifetime": false, "type": "XRVk6idT"}' \
    > test.out 2>&1
eval_tap $? 37 'CreateGameSession' test.out

#- 38 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"cJ4dtkVz": {}, "b82kG3YA": {}, "ISzl35fl": {}}' \
    > test.out 2>&1
eval_tap $? 38 'PublicQueryGameSessionsByAttributes' test.out

#- 39 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "aVlvP4oV"}' \
    > test.out 2>&1
eval_tap $? 39 'PublicSessionJoinCode' test.out

#- 40 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'NSnL3USL' \
    > test.out 2>&1
eval_tap $? 40 'GetGameSessionByPodName' test.out

#- 41 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'FEnjX3dd' \
    > test.out 2>&1
eval_tap $? 41 'GetGameSession' test.out

#- 42 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'Afzv66mm' \
    --body '{"attributes": {"RP3ZDxhb": {}, "YAZbvJ6q": {}, "6NKahI10": {}}, "backfillTicketID": "5vo9ACOD", "clientVersion": "AKv248o4", "deployment": "Jx7uaujR", "fallbackClaimKeys": ["NAukwHgn", "B7w0VLht", "YBOu0lLO"], "inactiveTimeout": 86, "inviteTimeout": 97, "joinability": "yRv2JRfE", "matchPool": "1W2Htxls", "maxPlayers": 91, "minPlayers": 99, "preferredClaimKeys": ["ZJp4aAB1", "C8fXmHS9", "eQxZSfsj"], "requestedRegions": ["mLwlEgEl", "pxJAK1VA", "ANUxkO07"], "teams": [{"UserIDs": ["WwNoyU0T", "3f71xpMo", "6KpkjthD"], "parties": [{"partyID": "wqWC9QEg", "userIDs": ["Xg2dLNSh", "bPWPSSPV", "1VFZ1QRz"]}, {"partyID": "kbMilwMT", "userIDs": ["XIiNEPi5", "rYLPooiW", "T6j5iANS"]}, {"partyID": "acIxuS6f", "userIDs": ["4g5Cq87m", "0yKvYHQU", "ElixPWLO"]}]}, {"UserIDs": ["XHseNuP8", "XHpsTYe8", "ENGVzCBJ"], "parties": [{"partyID": "bHaggdBv", "userIDs": ["PZONhCw3", "SWspd0vG", "vbLCY4X8"]}, {"partyID": "GUVXl1QE", "userIDs": ["7w0nt4pl", "YT4ac5iG", "Uc6qblSA"]}, {"partyID": "EMQEgYls", "userIDs": ["jqnIXDzs", "ssDeC65I", "Ujh6Tn4i"]}]}, {"UserIDs": ["a6YcZvLh", "okdDpAz0", "UKEn62bB"], "parties": [{"partyID": "Lpxj35iN", "userIDs": ["fTDdIAeC", "PwGTHmDQ", "XnY3wArk"]}, {"partyID": "YDM7zUKz", "userIDs": ["NCvEdyft", "mgK4mVzB", "8ESUXUCM"]}, {"partyID": "QE5T3j8d", "userIDs": ["G4cFmlZ0", "KY0VGjZo", "DtWQdoFd"]}]}], "ticketIDs": ["bVeQOUs8", "VEdn5108", "gL5B9rCW"], "tieTeamsSessionLifetime": true, "type": "fwEVIHb0", "version": 65}' \
    > test.out 2>&1
eval_tap $? 42 'UpdateGameSession' test.out

#- 43 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'qBCDPkoi' \
    > test.out 2>&1
eval_tap $? 43 'DeleteGameSession' test.out

#- 44 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '4VXiWSSw' \
    --body '{"attributes": {"dT6pEc7r": {}, "47xhzQFh": {}, "iHkuUzCC": {}}, "backfillTicketID": "bQy2cF0e", "clientVersion": "6j7FqPET", "deployment": "yGZR9rnU", "fallbackClaimKeys": ["OsuYGQlI", "4HlTqwJW", "kD2AshlP"], "inactiveTimeout": 19, "inviteTimeout": 11, "joinability": "2RC3wzuM", "matchPool": "nhljgSxa", "maxPlayers": 51, "minPlayers": 21, "preferredClaimKeys": ["6rpNMfTY", "BUcPzeYQ", "bZGtd4Kp"], "requestedRegions": ["DOWHyYpj", "mCWLdt5v", "kb47bz7X"], "teams": [{"UserIDs": ["67nTFZSI", "QxJhmw26", "AriIA8YQ"], "parties": [{"partyID": "0kz1rtwl", "userIDs": ["gdVnnjCF", "k7vTpJUm", "rMB4i4j4"]}, {"partyID": "lCJgAT7r", "userIDs": ["69MHWnin", "Zbn9e1Rx", "wMU5EnxF"]}, {"partyID": "8gUNApPJ", "userIDs": ["KkZGkGuy", "wwiogk1o", "Cdo7AurF"]}]}, {"UserIDs": ["nreOlMsf", "hB4tzDiZ", "aWhLuOek"], "parties": [{"partyID": "H4WTcUIJ", "userIDs": ["i0WSjNlP", "xgvSXApO", "GSkGzDPI"]}, {"partyID": "D2XOoKhn", "userIDs": ["cujz13v9", "y4gdjE8m", "tOheBcTe"]}, {"partyID": "EfKgAWN4", "userIDs": ["tozSZFeU", "N5m0f0zb", "c3vb22R6"]}]}, {"UserIDs": ["xoJAUce3", "ntSduFps", "bXuuSQbo"], "parties": [{"partyID": "ElhpSJAb", "userIDs": ["530O01ai", "FuinBSH9", "G66WAZcr"]}, {"partyID": "iwasA43e", "userIDs": ["5ka7pBob", "DFU5S4Np", "1a7v7Lel"]}, {"partyID": "JXfcImIO", "userIDs": ["b9i75bkW", "OVE4k3h0", "v3TzDYqN"]}]}], "ticketIDs": ["ALzc2ttR", "nVfxhISn", "8hxG4Mvm"], "tieTeamsSessionLifetime": true, "type": "3ZIg6FVb", "version": 2}' \
    > test.out 2>&1
eval_tap $? 44 'PatchUpdateGameSession' test.out

#- 45 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'ozGvKwQa' \
    --body '{"backfillTicketID": "LCw2UT95"}' \
    > test.out 2>&1
eval_tap $? 45 'UpdateGameSessionBackfillTicketID' test.out

#- 46 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'yDI9uZ44' \
    > test.out 2>&1
eval_tap $? 46 'GameSessionGenerateCode' test.out

#- 47 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'S8mtKQ4c' \
    > test.out 2>&1
eval_tap $? 47 'PublicRevokeGameSessionCode' test.out

#- 48 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'cchWUpsq' \
    --body '{"platformID": "tYmQMzvy", "userID": "ljUhAHQb"}' \
    > test.out 2>&1
eval_tap $? 48 'PublicGameSessionInvite' test.out

#- 49 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '6MGCqE9v' \
    > test.out 2>&1
eval_tap $? 49 'JoinGameSession' test.out

#- 50 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'JkxmaYAq' \
    --body '{"leaderID": "ldjjxNSj"}' \
    > test.out 2>&1
eval_tap $? 50 'PublicPromoteGameSessionLeader' test.out

#- 51 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'U3euXypc' \
    > test.out 2>&1
eval_tap $? 51 'LeaveGameSession' test.out

#- 52 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'lUQkWD7J' \
    > test.out 2>&1
eval_tap $? 52 'PublicGameSessionReject' test.out

#- 53 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'eho20UPy' \
    --body '{"additionalMembers": [{"partyID": "b62UJvnp", "userIDs": ["mxP3jf2e", "rlLt2Wrz", "oINaWnW9"]}, {"partyID": "925GY7sK", "userIDs": ["VNTQixL2", "iUyDRQVw", "jEYK1rOa"]}, {"partyID": "UCCxpPtD", "userIDs": ["bKgtxe9M", "eptpjWyZ", "3PGMlA2T"]}], "proposedTeams": [{"UserIDs": ["ofpqIFP9", "2aURtGGz", "RO2lbRB4"], "parties": [{"partyID": "7L9fiTjm", "userIDs": ["R18Qy7Ae", "6n4W373l", "uKOkU910"]}, {"partyID": "TjtRflhL", "userIDs": ["fHCTUmOu", "AuFL2J6x", "OMsPPrx6"]}, {"partyID": "0HE4wpqK", "userIDs": ["VnZ1dJna", "N5kKwJvn", "xzBeOlIl"]}]}, {"UserIDs": ["cQhYT6Li", "qZpcCwBa", "6Kigr06F"], "parties": [{"partyID": "C6oKLD8R", "userIDs": ["8cDpz4nQ", "kSf087aj", "cH1ir6qt"]}, {"partyID": "YHbRaXYr", "userIDs": ["BYoeocXl", "O9IXjrkL", "5vbbONqH"]}, {"partyID": "1Sr3Ps60", "userIDs": ["JO0vygz3", "gGmAzqIG", "9wbfRO0I"]}]}, {"UserIDs": ["xSKsNSO6", "HPfg4prv", "xtHrs0Jo"], "parties": [{"partyID": "JJ46gc5W", "userIDs": ["4awNkxFw", "ufRsK5fs", "XD42Xug5"]}, {"partyID": "1ORqJWMc", "userIDs": ["I8ADb2tW", "NfjWlFwT", "ixzlIGnp"]}, {"partyID": "B6pkyoui", "userIDs": ["ikaWklym", "3IwYz7yZ", "qnuQdKGH"]}]}], "version": 43}' \
    > test.out 2>&1
eval_tap $? 53 'AppendTeamGameSession' test.out

#- 54 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "J1LAjmem"}' \
    > test.out 2>&1
eval_tap $? 54 'PublicPartyJoinCode' test.out

#- 55 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'eOqAqPA5' \
    > test.out 2>&1
eval_tap $? 55 'PublicGetParty' test.out

#- 56 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'vMQAogyE' \
    --body '{"attributes": {"0mUOXO0c": {}, "aVyAV42g": {}, "lpNV2Mqb": {}}, "inactiveTimeout": 85, "inviteTimeout": 75, "joinability": "HtOLSxkS", "maxPlayers": 26, "minPlayers": 28, "type": "1e2m5kGA", "version": 1}' \
    > test.out 2>&1
eval_tap $? 56 'PublicUpdateParty' test.out

#- 57 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'AqMA8aI8' \
    --body '{"attributes": {"e9J3ArqD": {}, "IWsQsNAp": {}, "iCWTLUqW": {}}, "inactiveTimeout": 62, "inviteTimeout": 21, "joinability": "l9NvUKER", "maxPlayers": 82, "minPlayers": 60, "type": "cLDBpPd3", "version": 19}' \
    > test.out 2>&1
eval_tap $? 57 'PublicPatchUpdateParty' test.out

#- 58 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'MzZtQOvr' \
    > test.out 2>&1
eval_tap $? 58 'PublicGeneratePartyCode' test.out

#- 59 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'uEr1eGRo' \
    > test.out 2>&1
eval_tap $? 59 'PublicRevokePartyCode' test.out

#- 60 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'Ue5qs0a0' \
    --body '{"platformID": "jpiLJOJs", "userID": "aXoU7jlH"}' \
    > test.out 2>&1
eval_tap $? 60 'PublicPartyInvite' test.out

#- 61 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId '6YpALwvw' \
    --body '{"leaderID": "JqfFIp6G"}' \
    > test.out 2>&1
eval_tap $? 61 'PublicPromotePartyLeader' test.out

#- 62 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'm8hY06ov' \
    > test.out 2>&1
eval_tap $? 62 'PublicPartyJoin' test.out

#- 63 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'bBCvXObr' \
    > test.out 2>&1
eval_tap $? 63 'PublicPartyLeave' test.out

#- 64 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId '7yq35NIR' \
    > test.out 2>&1
eval_tap $? 64 'PublicPartyReject' test.out

#- 65 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId '6rhNigHL' \
    --userId '5HfQXLvq' \
    > test.out 2>&1
eval_tap $? 65 'PublicPartyKick' test.out

#- 66 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"BTm5vYu2": {}, "tBhZlsz2": {}, "rwoeyDIR": {}}, "configurationName": "qgahz2xh", "inactiveTimeout": 50, "inviteTimeout": 81, "joinability": "XWmak8xz", "maxPlayers": 27, "members": [{"ID": "r6mMbWFc", "PlatformID": "itpXar3b", "PlatformUserID": "T7uaDszV"}, {"ID": "fNMoJ6gA", "PlatformID": "pXWWkQls", "PlatformUserID": "DV9dWpPi"}, {"ID": "REnEpFpP", "PlatformID": "QTft7CsF", "PlatformUserID": "6vASvjV4"}], "minPlayers": 19, "textChat": true, "type": "z61OEuOW"}' \
    > test.out 2>&1
eval_tap $? 66 'PublicCreateParty' test.out

#- 67 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'a5rzfsiV' \
    --body '{"2Yfqy526": {}, "H41pVWGW": {}, "QMCSyBl8": {}}' \
    > test.out 2>&1
eval_tap $? 67 'PublicUpdateInsertSessionStorageLeader' test.out

#- 68 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'ClNUoQ6G' \
    --userId 'VplP44Z0' \
    --body '{"tR3Cfdg4": {}, "vT0XbJFo": {}, "UQOqDk5h": {}}' \
    > test.out 2>&1
eval_tap $? 68 'PublicUpdateInsertSessionStorage' test.out

#- 69 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["DtLLQjIW", "gh5wbduS", "ebu7svoX"]}' \
    > test.out 2>&1
eval_tap $? 69 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 70 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 70 'PublicGetPlayerAttributes' test.out

#- 71 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": false, "currentPlatform": "g2IB8frW", "data": {"iiKy1ti5": {}, "nOlr2fZ3": {}, "ky6mH9Zw": {}}, "platforms": [{"name": "z2NPL2rT", "userID": "GRyJqFdY"}, {"name": "dAzp5wwH", "userID": "KVQmF0mN"}, {"name": "t4sIge3F", "userID": "ZyZaI26y"}], "roles": ["7CbV97KQ", "gj38xJ5p", "ftr9a91K"]}' \
    > test.out 2>&1
eval_tap $? 71 'PublicStorePlayerAttributes' test.out

#- 72 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 72 'PublicDeletePlayerAttributes' test.out

#- 73 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'CbuWCigJ' \
    --orderBy '4gyT2glw' \
    --status 'OPO2xs09' \
    > test.out 2>&1
eval_tap $? 73 'PublicQueryMyGameSessions' test.out

#- 74 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'WXYRQpVe' \
    --orderBy 'uBLg3VwU' \
    --status 'VxLfQjK1' \
    > test.out 2>&1
eval_tap $? 74 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE