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
echo "1..66"

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

#- 6 AdminGetConfigurationAlertV1
samples/cli/sample-apps Session adminGetConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetConfigurationAlertV1' test.out

#- 7 AdminUpdateConfigurationAlertV1
samples/cli/sample-apps Session adminUpdateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 82}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateConfigurationAlertV1' test.out

#- 8 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 25}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateConfigurationAlertV1' test.out

#- 9 AdminDeleteConfigurationAlertV1
samples/cli/sample-apps Session adminDeleteConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminDeleteConfigurationAlertV1' test.out

#- 10 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 31, "PSNSupportedPlatforms": ["kEbcnrlB", "ALxPfaW4", "ZsFjlMwA"], "SessionTitle": "DfGM43Yv", "ShouldSync": false, "XboxServiceConfigID": "pZm3phIc", "XboxSessionTemplateName": "sHQfFhDT", "localizedSessionName": {"zYS79zVn": {}, "2BrJpFUq": {}, "nc76kQet": {}}}, "PSNBaseUrl": "sCza4cUO", "autoJoin": true, "clientVersion": "s5BTYpNY", "deployment": "mgh9Iqao", "dsSource": "BnTJnQvB", "fallbackClaimKeys": ["ldaGZmK7", "dqSXMMWp", "3sbTkwY3"], "immutableStorage": false, "inactiveTimeout": 45, "inviteTimeout": 96, "joinability": "U0UrQsqY", "maxActiveSessions": 18, "maxPlayers": 20, "minPlayers": 69, "name": "qbyD2OsI", "persistent": true, "preferredClaimKeys": ["s6FKFLhL", "ufNBOs4L", "dg7qHKRd"], "requestedRegions": ["XuJeYDG9", "L016uwop", "tojgyiQj"], "textChat": false, "tieTeamsSessionLifetime": false, "type": "JGL5lMO7"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminCreateConfigurationTemplateV1' test.out

#- 11 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --name 'Moa3X3No' \
    --offset '59' \
    --order 'dG0p2m6Z' \
    --orderBy 'aSGG194J' \
    > test.out 2>&1
eval_tap $? 11 'AdminGetAllConfigurationTemplatesV1' test.out

#- 12 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'x4e6oeIb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminGetConfigurationTemplateV1' test.out

#- 13 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'cln4GTwo' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 63, "PSNSupportedPlatforms": ["QN8xiwuq", "cnBNWt5E", "8ok9CdoA"], "SessionTitle": "6D20XSae", "ShouldSync": true, "XboxServiceConfigID": "B28pkdnF", "XboxSessionTemplateName": "ssAMuYHi", "localizedSessionName": {"CKmOrqII": {}, "gHFTMURl": {}, "XECWeKRK": {}}}, "PSNBaseUrl": "4HZS5zBr", "autoJoin": true, "clientVersion": "gobwmHAX", "deployment": "uJ2xqReQ", "dsSource": "9vBbdaen", "fallbackClaimKeys": ["4NgexJJ0", "R3ywATse", "Dy1xMHsh"], "immutableStorage": true, "inactiveTimeout": 10, "inviteTimeout": 8, "joinability": "lC7kqHEb", "maxActiveSessions": 70, "maxPlayers": 42, "minPlayers": 90, "name": "58pinfFi", "persistent": false, "preferredClaimKeys": ["ZWzj6otJ", "p7RqA7it", "QPxZubD3"], "requestedRegions": ["kZZCZCdO", "rzDeGlz3", "KtDt8p5G"], "textChat": false, "tieTeamsSessionLifetime": true, "type": "Ic1scFWY"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminUpdateConfigurationTemplateV1' test.out

#- 14 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'LNK2Ykmw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteConfigurationTemplateV1' test.out

#- 15 AdminGetDSMCConfiguration
samples/cli/sample-apps Session adminGetDSMCConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'AdminGetDSMCConfiguration' test.out

#- 16 AdminSyncDSMCConfiguration
samples/cli/sample-apps Session adminSyncDSMCConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminSyncDSMCConfiguration' test.out

#- 17 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName 'rwxiiwos' \
    --dsPodName 'OuPhUk4y' \
    --fromTime 'Ud4Gbt7l' \
    --gameMode 'EgYHLtzL' \
    --isPersistent '9gGQXkxG' \
    --isSoftDeleted 'BzBAW0u2' \
    --joinability 'EiaVSKeF' \
    --limit '81' \
    --matchPool 'xj22nTHM' \
    --memberID 'WhjBG7cA' \
    --offset '90' \
    --order 'KCwperre' \
    --orderBy 'NbeYdqyX' \
    --sessionID '36BcPzmF' \
    --status 'wFaocCEK' \
    --statusV2 'a6Kvn6Pd' \
    --toTime '6LepH8D7' \
    > test.out 2>&1
eval_tap $? 17 'AdminQueryGameSessions' test.out

#- 18 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["tzGx2P3j", "DkkKedVv", "ukvrlkqq"]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteBulkGameSessions' test.out

#- 19 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'wvLBuODd' \
    --namespace $AB_NAMESPACE \
    --sessionId 'pIyz3D5j' \
    --statusType 'EGL0jbKA' \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateGameSessionMember' test.out

#- 20 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --joinability 'aUNJK89Y' \
    --key 'pkvqZobB' \
    --leaderID 'h51r4rz0' \
    --limit '4' \
    --memberID '331oeCIv' \
    --memberStatus 'xpeI8dub' \
    --offset '37' \
    --order 'zk5JqzMu' \
    --orderBy 'ihiAYOfr' \
    --partyID '0hs4mKZE' \
    --value 'jpUSzoVp' \
    > test.out 2>&1
eval_tap $? 20 'AdminQueryParties' test.out

#- 21 AdminGetPlatformCredentials
samples/cli/sample-apps Session adminGetPlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminGetPlatformCredentials' test.out

#- 22 AdminUpdatePlatformCredentials
samples/cli/sample-apps Session adminUpdatePlatformCredentials \
    --namespace $AB_NAMESPACE \
    --body '{"psn": {"clientId": "7mTkWvmI", "clientSecret": "znxRMjAE", "scope": "214u4Svz"}}' \
    > test.out 2>&1
eval_tap $? 22 'AdminUpdatePlatformCredentials' test.out

#- 23 AdminDeletePlatformCredentials
samples/cli/sample-apps Session adminDeletePlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'AdminDeletePlatformCredentials' test.out

#- 24 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'NQnJ0HmW' \
    > test.out 2>&1
eval_tap $? 24 'AdminReadSessionStorage' test.out

#- 25 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'hHMDFhaf' \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteUserSessionStorage' test.out

#- 26 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'Tv0rksZi' \
    --userId 'jKrbLrFj' \
    > test.out 2>&1
eval_tap $? 26 'AdminReadUserSessionStorage' test.out

#- 27 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'jZJS8U8h' \
    > test.out 2>&1
eval_tap $? 27 'AdminQueryPlayerAttributes' test.out

#- 28 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'ZqAciGfU' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetPlayerAttributes' test.out

#- 29 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"VENbR17D": {}, "veBJyWw9": {}, "npCvjH1E": {}}, "autoJoin": true, "backfillTicketID": "lvn8kU01", "clientVersion": "wIRLUYyl", "configurationName": "A5oWKJ66", "deployment": "xTIvniut", "dsSource": "eLJBxmFl", "fallbackClaimKeys": ["zAxTpxG6", "oB5JORxv", "Hr0T81fn"], "inactiveTimeout": 59, "inviteTimeout": 78, "joinability": "Hx4HQehY", "matchPool": "9hrEiZqJ", "maxPlayers": 52, "minPlayers": 87, "preferredClaimKeys": ["K3hquPiT", "6U0c8yjD", "GqSXUHBh"], "requestedRegions": ["DCZPrGgj", "Sa7KaCkf", "BAUU0tWX"], "serverName": "zAdIWDLz", "teams": [{"UserIDs": ["TwyTbOUj", "uBKesCvv", "3VaUhO9j"], "parties": [{"partyID": "ctdrFVLa", "userIDs": ["VsYLjAms", "WptatPea", "j4aeWnNm"]}, {"partyID": "gkFsTZRf", "userIDs": ["Nhv06Kh5", "Wd4OVP62", "ulgDB0eL"]}, {"partyID": "52NJbtVW", "userIDs": ["cPkWjx6E", "eWJZ0mMw", "LPvh9ZQL"]}]}, {"UserIDs": ["lscceACa", "3JywQpQg", "OYCwA7eM"], "parties": [{"partyID": "C9lymIym", "userIDs": ["xMENR0Fg", "ZpApa23I", "psnLYetu"]}, {"partyID": "yv8McSfJ", "userIDs": ["wL2y2GMe", "9lmVdve5", "z67nW3Ii"]}, {"partyID": "k5YhJBes", "userIDs": ["vXGsCPIf", "ZvPHb7my", "OdbSSNjW"]}]}, {"UserIDs": ["Qtqdy4ws", "38iLOBZq", "ScCExGja"], "parties": [{"partyID": "z8ZfklLE", "userIDs": ["sLc9eZSB", "t7TdtQd4", "bFzzLXHQ"]}, {"partyID": "CVCcj4pD", "userIDs": ["aFh0KOcz", "9T8HVgOx", "U5PNCU1b"]}, {"partyID": "4ec3xFMY", "userIDs": ["4VUBuPRZ", "tGg7DXGN", "dqBn3kFT"]}]}], "textChat": true, "ticketIDs": ["Xp8Byqlm", "CZ5vCAgO", "47VilWTb"], "tieTeamsSessionLifetime": true, "type": "3VdRCpGb"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateGameSession' test.out

#- 30 PublicQueryGameSessions
samples/cli/sample-apps Session publicQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"syBcd0yE": {}, "9lXasQyy": {}, "YiMcox3N": {}}' \
    > test.out 2>&1
eval_tap $? 30 'PublicQueryGameSessions' test.out

#- 31 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "llf6ZMpz"}' \
    > test.out 2>&1
eval_tap $? 31 'PublicSessionJoinCode' test.out

#- 32 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'RMFnHUsp' \
    > test.out 2>&1
eval_tap $? 32 'GetGameSessionByPodName' test.out

#- 33 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '1fX5oIwN' \
    > test.out 2>&1
eval_tap $? 33 'GetGameSession' test.out

#- 34 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '4jH8Qiac' \
    --body '{"attributes": {"g26MsNFA": {}, "TlAjE93K": {}, "gVQTd719": {}}, "backfillTicketID": "yunce5Xw", "clientVersion": "3p2jSqGN", "deployment": "HmTJCkWF", "fallbackClaimKeys": ["cTa2iiVy", "776vIMAR", "jZYhy50g"], "inactiveTimeout": 51, "inviteTimeout": 49, "joinability": "zbldp5l5", "matchPool": "zbGuUXEN", "maxPlayers": 40, "minPlayers": 5, "preferredClaimKeys": ["Z5mHPgQ3", "usPcupwo", "BUsibHvs"], "requestedRegions": ["Y0MckA4I", "lwJIkhkD", "mXHf0BPj"], "teams": [{"UserIDs": ["JADQN8H4", "svo0sSno", "MKGeAAkj"], "parties": [{"partyID": "GWczCOqz", "userIDs": ["VLgkj9WB", "npzSnmtS", "7879AoRZ"]}, {"partyID": "tJdrD404", "userIDs": ["NtqC2xwN", "bnMxM31t", "FMa5XVFN"]}, {"partyID": "dx31onpt", "userIDs": ["zXtojmki", "NcIIw4Ou", "2GrIu0Yi"]}]}, {"UserIDs": ["H6fGdTbi", "XtUZDPVD", "Onn5GJfv"], "parties": [{"partyID": "bcHx7Rv1", "userIDs": ["GsV7fBDF", "pHa5PldP", "1RhS0X4I"]}, {"partyID": "pMVg0x0A", "userIDs": ["ZziuhOVc", "zy1Qjj7J", "FDmiXYqp"]}, {"partyID": "TzzRYurB", "userIDs": ["JLYqVW1s", "mbTZCJJ1", "SxT9bLyw"]}]}, {"UserIDs": ["lkmHcjBS", "zgUQMuvQ", "71dDoOSb"], "parties": [{"partyID": "YsSA6mUe", "userIDs": ["xGsqqXqr", "j2EHehcm", "bUqqS7lM"]}, {"partyID": "XrfpS8hE", "userIDs": ["c4fsKqdX", "7uOJ8OHp", "ovtI9vwm"]}, {"partyID": "sYP1lfbw", "userIDs": ["G6JNG0mZ", "2zT6F6eS", "UFJEKmkk"]}]}], "ticketIDs": ["YDwWJHN8", "sX37KMnd", "OY92PFjm"], "tieTeamsSessionLifetime": false, "type": "SBnmaZcj", "version": 91}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGameSession' test.out

#- 35 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '4K572eG3' \
    > test.out 2>&1
eval_tap $? 35 'DeleteGameSession' test.out

#- 36 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'fWaXdwHE' \
    --body '{"attributes": {"oFGSdjM1": {}, "cspFlP40": {}, "DBKctFNT": {}}, "backfillTicketID": "BRDqSbKv", "clientVersion": "xcHLIj1V", "deployment": "nw3ccJ5T", "fallbackClaimKeys": ["CNre1eac", "ceNAFhUR", "7RDlzOGt"], "inactiveTimeout": 92, "inviteTimeout": 5, "joinability": "OsqZs1Mr", "matchPool": "CxDr96hX", "maxPlayers": 15, "minPlayers": 64, "preferredClaimKeys": ["LLFySOCp", "iaD3oqpr", "DV9fIq9G"], "requestedRegions": ["CEBhvSnt", "GDumSRaR", "5jg1NO2n"], "teams": [{"UserIDs": ["VQXyzI3m", "uwiBpd2E", "e726muZx"], "parties": [{"partyID": "OKig8er5", "userIDs": ["t3LC2xyP", "7zoP4w0A", "YBe0nrLE"]}, {"partyID": "3SXhYWf2", "userIDs": ["nTvUHiAm", "z5qlAQzi", "j2P39e2c"]}, {"partyID": "XjORB3VF", "userIDs": ["icu2wCDp", "1tlwLZbA", "eqOYfj3Z"]}]}, {"UserIDs": ["6KZnXxGJ", "dnnF2w6E", "6H14FKzI"], "parties": [{"partyID": "5JKigwOd", "userIDs": ["aDLIjDop", "TZtGr5gg", "EfOV1z6d"]}, {"partyID": "aOs76bS0", "userIDs": ["IxRshcoA", "NBwA2VbD", "vC6rfxVy"]}, {"partyID": "xdg8C20A", "userIDs": ["BG5towKN", "0MVrBxPh", "tlkekxJv"]}]}, {"UserIDs": ["ObH3QDCa", "khc67Ahk", "7gm8oRe5"], "parties": [{"partyID": "ELhU0NmA", "userIDs": ["h3CRLkAb", "l8gXlfTs", "cxHJASaR"]}, {"partyID": "Amb7c7U8", "userIDs": ["gGhvDIhU", "BXZFc7Ch", "ypmmQabk"]}, {"partyID": "jHwyuZsF", "userIDs": ["j5qZNuwD", "3TZGHwWa", "X3NkHp3B"]}]}], "ticketIDs": ["5eWrWUEl", "XYEZhLGR", "nORR8qQ7"], "tieTeamsSessionLifetime": true, "type": "oX42LR3C", "version": 26}' \
    > test.out 2>&1
eval_tap $? 36 'PatchUpdateGameSession' test.out

#- 37 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'AD0pAQs9' \
    --body '{"backfillTicketID": "jT0rvqVx"}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateGameSessionBackfillTicketID' test.out

#- 38 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'bEQl2aZL' \
    > test.out 2>&1
eval_tap $? 38 'GameSessionGenerateCode' test.out

#- 39 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'ZP6LScdt' \
    > test.out 2>&1
eval_tap $? 39 'PublicRevokeGameSessionCode' test.out

#- 40 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'YiUVqu2g' \
    --body '{"platformID": "AiRLdXTk", "userID": "KuLvQZSz"}' \
    > test.out 2>&1
eval_tap $? 40 'PublicGameSessionInvite' test.out

#- 41 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'lN6rcBXi' \
    > test.out 2>&1
eval_tap $? 41 'JoinGameSession' test.out

#- 42 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'zee8iEfX' \
    --body '{"leaderID": "J6FjtXqJ"}' \
    > test.out 2>&1
eval_tap $? 42 'PublicPromoteGameSessionLeader' test.out

#- 43 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'E4ufPjmR' \
    > test.out 2>&1
eval_tap $? 43 'LeaveGameSession' test.out

#- 44 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'ZeIBNkId' \
    > test.out 2>&1
eval_tap $? 44 'PublicGameSessionReject' test.out

#- 45 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'wDyYfvSp' \
    --body '{"additionalMembers": [{"partyID": "L7dCjhOf", "userIDs": ["gnsVhtee", "CRa9Rx2g", "u9DcD7GR"]}, {"partyID": "Z4fA54DO", "userIDs": ["SwTzDqgP", "CFOBkquC", "TocsX9my"]}, {"partyID": "ItYosDOq", "userIDs": ["5hVfZAWj", "hci4xBar", "heZpWNCs"]}], "proposedTeams": [{"UserIDs": ["w1iSW6md", "PMKcUjdx", "PRzKmc9d"], "parties": [{"partyID": "7L12k8Op", "userIDs": ["KmRjA2lP", "Jyz6Gmju", "SeiaHagO"]}, {"partyID": "ZlwUheIT", "userIDs": ["vYqG1xt7", "goOh5Suv", "c7Or6key"]}, {"partyID": "zuLPksAW", "userIDs": ["LMFXwEz1", "QaPm3Jtb", "lZpaL7j2"]}]}, {"UserIDs": ["Qnhk6FTc", "MkbkW9NB", "JsA1fP3j"], "parties": [{"partyID": "aqHToOW7", "userIDs": ["0R0Hzh4n", "ED9pcSZg", "NTdorAp8"]}, {"partyID": "D388bMaU", "userIDs": ["UIU9XDfn", "DtfiExHs", "678ZcHQX"]}, {"partyID": "mozR7caE", "userIDs": ["6fa9aP3y", "MuY77sWt", "N1GzKzc3"]}]}, {"UserIDs": ["ES5J9tMi", "1kY7AUJc", "j8BR4yz3"], "parties": [{"partyID": "hXHnSlEu", "userIDs": ["bZdOA9TT", "rjHDcRVh", "Z4Pktt8F"]}, {"partyID": "Zv5aO4Bg", "userIDs": ["lHdlUFUf", "lI9kASBU", "7n6XapRC"]}, {"partyID": "O7mKErQ4", "userIDs": ["h3vfbgiX", "YR0SGoyc", "kKBbUz1r"]}]}], "version": 3}' \
    > test.out 2>&1
eval_tap $? 45 'AppendTeamGameSession' test.out

#- 46 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "8ImHuDIz"}' \
    > test.out 2>&1
eval_tap $? 46 'PublicPartyJoinCode' test.out

#- 47 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId '4MwoYGsP' \
    > test.out 2>&1
eval_tap $? 47 'PublicGetParty' test.out

#- 48 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'fIniI2e4' \
    --body '{"attributes": {"xoYsPGfd": {}, "vn8HsCId": {}, "lSvweWSl": {}}, "inactiveTimeout": 19, "inviteTimeout": 9, "joinability": "WXEb6b0A", "maxPlayers": 65, "minPlayers": 93, "type": "5HXkqPRe", "version": 78}' \
    > test.out 2>&1
eval_tap $? 48 'PublicUpdateParty' test.out

#- 49 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'rY1HLr8P' \
    --body '{"attributes": {"IvPpPo2N": {}, "HDZGujtA": {}, "spz2kxoP": {}}, "inactiveTimeout": 42, "inviteTimeout": 15, "joinability": "LoY17J8N", "maxPlayers": 28, "minPlayers": 74, "type": "FgKEm4pj", "version": 86}' \
    > test.out 2>&1
eval_tap $? 49 'PublicPatchUpdateParty' test.out

#- 50 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'NAziajCO' \
    > test.out 2>&1
eval_tap $? 50 'PublicGeneratePartyCode' test.out

#- 51 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'YRycSxiS' \
    > test.out 2>&1
eval_tap $? 51 'PublicRevokePartyCode' test.out

#- 52 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'Fma8tzsF' \
    --body '{"platformID": "pqUCGgay", "userID": "tRv9bC2c"}' \
    > test.out 2>&1
eval_tap $? 52 'PublicPartyInvite' test.out

#- 53 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'inqA1BJM' \
    --body '{"leaderID": "xIWpkGI7"}' \
    > test.out 2>&1
eval_tap $? 53 'PublicPromotePartyLeader' test.out

#- 54 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'EenPTFmr' \
    > test.out 2>&1
eval_tap $? 54 'PublicPartyJoin' test.out

#- 55 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'hprda7W4' \
    > test.out 2>&1
eval_tap $? 55 'PublicPartyLeave' test.out

#- 56 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'IyybrSn3' \
    > test.out 2>&1
eval_tap $? 56 'PublicPartyReject' test.out

#- 57 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'BAChAlpZ' \
    --userId 'FIYoo9wz' \
    > test.out 2>&1
eval_tap $? 57 'PublicPartyKick' test.out

#- 58 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"7Pwh0LOB": {}, "oyqnR66f": {}, "RupS04Ft": {}}, "configurationName": "AvdIbOUo", "inactiveTimeout": 15, "inviteTimeout": 32, "joinability": "EjOPSVpo", "maxPlayers": 20, "members": [{"ID": "WVQFsXiq", "PlatformID": "RT2Cu0Q6", "PlatformUserID": "Q5CasX5l"}, {"ID": "WW55NgjM", "PlatformID": "M5wS3hXw", "PlatformUserID": "C4l0NDOk"}, {"ID": "3VBiU1Ek", "PlatformID": "UanxYhGz", "PlatformUserID": "ZJYKl7ty"}], "minPlayers": 87, "textChat": false, "type": "YcWd9a6B"}' \
    > test.out 2>&1
eval_tap $? 58 'PublicCreateParty' test.out

#- 59 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'ZtDLhmRC' \
    --body '{"lHUze89e": {}, "h38qpoad": {}, "Qi5tGaIt": {}}' \
    > test.out 2>&1
eval_tap $? 59 'PublicUpdateInsertSessionStorageLeader' test.out

#- 60 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'oMR4rZsZ' \
    --userId 'Ob3LgRA2' \
    --body '{"Ro2XsREW": {}, "0nObnwX5": {}, "1FHjKDzV": {}}' \
    > test.out 2>&1
eval_tap $? 60 'PublicUpdateInsertSessionStorage' test.out

#- 61 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["rCKN0W99", "clHjKijK", "8p1glxGd"]}' \
    > test.out 2>&1
eval_tap $? 61 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 62 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'PublicGetPlayerAttributes' test.out

#- 63 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": true, "currentPlatform": "CUbZBuqL", "data": {"sLui79wz": {}, "Rle5SUWA": {}, "MgTgKw0e": {}}, "platforms": [{"name": "rH7mSTLu", "userID": "RtY5ciaB"}, {"name": "WB2ehGDU", "userID": "0MfounUt"}, {"name": "4kXHNpah", "userID": "2xMcegV2"}], "roles": ["cGFywa9j", "PuD6ZdrT", "eqfEFAlh"]}' \
    > test.out 2>&1
eval_tap $? 63 'PublicStorePlayerAttributes' test.out

#- 64 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDeletePlayerAttributes' test.out

#- 65 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'ni6Up4V7' \
    --orderBy 'YKNFMlra' \
    --status 'PuFHLZra' \
    > test.out 2>&1
eval_tap $? 65 'PublicQueryMyGameSessions' test.out

#- 66 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'NcZ8hVZy' \
    --orderBy 'vqTgVFxS' \
    --status 'VEMk0D42' \
    > test.out 2>&1
eval_tap $? 66 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE