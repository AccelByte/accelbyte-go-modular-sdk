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
    --body '{"durationDays": 65}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateConfigurationAlertV1' test.out

#- 8 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 14}' \
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
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 83, "PSNSupportedPlatforms": ["rzsE3j7l", "dQPTvmeu", "3uqGIUBL"], "SessionTitle": "0Fxx0SQF", "ShouldSync": false, "XboxServiceConfigID": "rNqRt6JQ", "XboxSessionTemplateName": "dFnQErFi", "localizedSessionName": {"laer2qHs": {}, "2Crh9GcM": {}, "WFflUKeC": {}}}, "PSNBaseUrl": "5RCzjqdT", "autoJoin": true, "clientVersion": "mjhIjnwS", "deployment": "q0FRfnbV", "dsSource": "Xmxv3Xpa", "fallbackClaimKeys": ["0KZzcqMr", "8MO7wqBO", "eiKdZhWM"], "immutableStorage": false, "inactiveTimeout": 14, "inviteTimeout": 56, "joinability": "YIh8BJLk", "maxActiveSessions": 25, "maxPlayers": 52, "minPlayers": 46, "name": "Oh1i303m", "persistent": false, "preferredClaimKeys": ["L6jiCifG", "2RMDxys4", "FEuWoPmw"], "requestedRegions": ["2XOkAF8U", "HWVb9AGV", "zCbKIYbP"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "mZrYsE3w"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminCreateConfigurationTemplateV1' test.out

#- 11 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --name 'D6r2yRUq' \
    --offset '11' \
    --order 'zVtHBmlm' \
    --orderBy 'vkFY44Fy' \
    > test.out 2>&1
eval_tap $? 11 'AdminGetAllConfigurationTemplatesV1' test.out

#- 12 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'AJeylAn1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminGetConfigurationTemplateV1' test.out

#- 13 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'YF3pqMIj' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 88, "PSNSupportedPlatforms": ["XaxzNClY", "I8QJMFBe", "oItubMkX"], "SessionTitle": "Qk0Q1WUf", "ShouldSync": true, "XboxServiceConfigID": "42QAUsIm", "XboxSessionTemplateName": "MgHxPRrM", "localizedSessionName": {"cgTwAuxn": {}, "DfDbjCj0": {}, "HI0IMm63": {}}}, "PSNBaseUrl": "2Z3UNjbQ", "autoJoin": true, "clientVersion": "oRWJyuua", "deployment": "YYhiOdF2", "dsSource": "ZrMDOhGp", "fallbackClaimKeys": ["KE4eFgdY", "qZFMbU5u", "hNkk3jvc"], "immutableStorage": true, "inactiveTimeout": 40, "inviteTimeout": 13, "joinability": "l4hXmSKU", "maxActiveSessions": 76, "maxPlayers": 27, "minPlayers": 42, "name": "SGV2kCdC", "persistent": true, "preferredClaimKeys": ["YmivBf99", "wIe8sQgm", "xPYWbxdk"], "requestedRegions": ["F6CP7AFr", "SW4WIWCc", "qRUUAuTK"], "textChat": false, "tieTeamsSessionLifetime": true, "type": "jEO3KxtF"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminUpdateConfigurationTemplateV1' test.out

#- 14 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'CDgkyNiP' \
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
    --configurationName 'Kqh92go4' \
    --dsPodName 'DBPvgPAJ' \
    --fromTime 'B8KgaWT9' \
    --gameMode 'QxvvFk9z' \
    --isPersistent 'l2p8aN3L' \
    --isSoftDeleted 'seU8uETp' \
    --joinability 's4JsWtTH' \
    --limit '57' \
    --matchPool 'X8s9WMdp' \
    --memberID 'YJD97Yde' \
    --offset '88' \
    --order 'xyFcGPt6' \
    --orderBy 'rwGbOP9j' \
    --sessionID 'RVO3oyf8' \
    --status 'E0DZrJP6' \
    --statusV2 'GqnwE32P' \
    --toTime 'rtBP5q6U' \
    > test.out 2>&1
eval_tap $? 17 'AdminQueryGameSessions' test.out

#- 18 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["ufftlihB", "j7FD773i", "ovBQ0v9C"]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteBulkGameSessions' test.out

#- 19 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'sWPycb9h' \
    --namespace $AB_NAMESPACE \
    --sessionId '6iQ1b59E' \
    --statusType 'nysnwXlm' \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateGameSessionMember' test.out

#- 20 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --joinability 'XorhMTnW' \
    --key 'AzIBR0ZB' \
    --leaderID 'RP1v71KC' \
    --limit '30' \
    --memberID '5bjkzsqz' \
    --memberStatus 'Ac8vxgNy' \
    --offset '26' \
    --order '4E3Qmr3W' \
    --orderBy 'iiiUHpsG' \
    --partyID 'QsiGYChm' \
    --value 'uLsG6hFT' \
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
    --body '{"psn": {"clientId": "oB1loelV", "clientSecret": "Qi2SMjCm", "scope": "2WakIDtZ"}}' \
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
    --sessionId 'RKoSSjkQ' \
    > test.out 2>&1
eval_tap $? 24 'AdminReadSessionStorage' test.out

#- 25 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'tkhmJTj5' \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteUserSessionStorage' test.out

#- 26 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'CUd6U2Tt' \
    --userId 'EaovUgL4' \
    > test.out 2>&1
eval_tap $? 26 'AdminReadUserSessionStorage' test.out

#- 27 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users '85TzmUey' \
    > test.out 2>&1
eval_tap $? 27 'AdminQueryPlayerAttributes' test.out

#- 28 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'oAUGo30c' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetPlayerAttributes' test.out

#- 29 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"7ti5y6Zi": {}, "cUmy3BEJ": {}, "y8DEtElA": {}}, "autoJoin": true, "backfillTicketID": "Jnib3RvI", "clientVersion": "SXXCzG0z", "configurationName": "kvi36alG", "deployment": "hPTNR1Z0", "dsSource": "oO25lh53", "fallbackClaimKeys": ["DZ8MlvJJ", "Cd80piuj", "ytkSTyek"], "inactiveTimeout": 80, "inviteTimeout": 24, "joinability": "nzQVnZFy", "matchPool": "10BTHywH", "maxPlayers": 27, "minPlayers": 98, "preferredClaimKeys": ["ZuJrLHKK", "0sLoq0WG", "gBIQv1g4"], "requestedRegions": ["NsGIaGIs", "rue6mACC", "TZ4K3HNL"], "serverName": "MTPtZ0Tt", "teams": [{"UserIDs": ["h6okj3UA", "mdnvOYDN", "cmvbSnUe"], "parties": [{"partyID": "cDI7cwyf", "userIDs": ["oFNgZ6Ok", "p1daaLsm", "jhiNUkus"]}, {"partyID": "YnvwL0IA", "userIDs": ["0xSKggBm", "mpcRItVl", "x8rlkgAr"]}, {"partyID": "7LCjl6vA", "userIDs": ["CZPm8Tez", "F7a2zOgA", "eE9BrXav"]}]}, {"UserIDs": ["m4lgvPyR", "UfRbduA9", "pDnBR0uO"], "parties": [{"partyID": "i8ulfDvh", "userIDs": ["CQTe5RA6", "Bv0wZ1q8", "ySQck5bu"]}, {"partyID": "dx9GSN4m", "userIDs": ["Ag7lVP8T", "V54F7izp", "zaCwnWaK"]}, {"partyID": "z6XwHZaa", "userIDs": ["NBpsS926", "rTqGy2eX", "GgutXXkG"]}]}, {"UserIDs": ["PjIAFkdz", "54L0LMRn", "8FqQkoFA"], "parties": [{"partyID": "Nu4e5N4b", "userIDs": ["IsOCDkKJ", "nVgaNjBs", "9O04C0jf"]}, {"partyID": "x9gIHVVi", "userIDs": ["zmL0IPGi", "o8tjQnTr", "mcOFDoU8"]}, {"partyID": "e6peqZiI", "userIDs": ["JYjSwvlp", "P8jSjj3u", "Es9RmMcN"]}]}], "textChat": true, "ticketIDs": ["2APz3Fm9", "cXM4oxuh", "yvLl1sAo"], "tieTeamsSessionLifetime": true, "type": "Z3uPgHHS"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateGameSession' test.out

#- 30 PublicQueryGameSessions
samples/cli/sample-apps Session publicQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"rrEdKMZe": {}, "blfqdbL7": {}, "pPuVitYv": {}}' \
    > test.out 2>&1
eval_tap $? 30 'PublicQueryGameSessions' test.out

#- 31 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "OUuaRrFh"}' \
    > test.out 2>&1
eval_tap $? 31 'PublicSessionJoinCode' test.out

#- 32 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'MBiEw3Sk' \
    > test.out 2>&1
eval_tap $? 32 'GetGameSessionByPodName' test.out

#- 33 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'Sqgo8FV1' \
    > test.out 2>&1
eval_tap $? 33 'GetGameSession' test.out

#- 34 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '281jlKnS' \
    --body '{"attributes": {"8FE9KZub": {}, "t2W3nnVZ": {}, "nsMxhOi4": {}}, "backfillTicketID": "u0CFUcQv", "clientVersion": "CTuJS2IF", "deployment": "Md8VwRQ7", "fallbackClaimKeys": ["xRZIsELd", "UyfE59M6", "7fmKBjsg"], "inactiveTimeout": 9, "inviteTimeout": 26, "joinability": "ONp9LnZh", "matchPool": "BmR42WMc", "maxPlayers": 77, "minPlayers": 71, "preferredClaimKeys": ["kjKhRxVF", "YWQvVSYr", "jZ6tNO7L"], "requestedRegions": ["Yw7IMdWN", "4sjAQRC7", "tGWQeZ6w"], "teams": [{"UserIDs": ["qcgxwYqL", "W07sIVNH", "3dDQ0SLf"], "parties": [{"partyID": "eLJ91OSX", "userIDs": ["PbQiQtCj", "vbeNQZtC", "HmNY1hj6"]}, {"partyID": "YiTW6Nnd", "userIDs": ["G4fuEuoh", "5WeX76UL", "aedKtdTQ"]}, {"partyID": "sM94O4LP", "userIDs": ["lq2dSDXV", "5JzTWHCR", "Y77kOtOL"]}]}, {"UserIDs": ["958s2gIE", "KeNDqvSf", "VYvWfvlH"], "parties": [{"partyID": "Bh260rMh", "userIDs": ["VIMf9eSu", "pIsQXV2r", "0cE60PQ3"]}, {"partyID": "TBBNJP1K", "userIDs": ["2o2eYEdZ", "CSwF9YAX", "sFvLqKBW"]}, {"partyID": "wLGYaVZ1", "userIDs": ["XIoHJUs7", "VBF58bSF", "Wu3rC6sE"]}]}, {"UserIDs": ["wcefzXRL", "wp7Rf8D0", "6kPl3qKA"], "parties": [{"partyID": "akVqcicF", "userIDs": ["4oGmDdoW", "WxJsXi70", "y3B1pUev"]}, {"partyID": "ZLbuwiTu", "userIDs": ["1DemB0nF", "FA6vxAqk", "76Bl077q"]}, {"partyID": "OwbcNM05", "userIDs": ["bo3j4pza", "sXXBKOlw", "4M2jZsYU"]}]}], "ticketIDs": ["vnkHhIhd", "2Vrqxf18", "QKeWRmz3"], "tieTeamsSessionLifetime": false, "type": "MnJJUfep", "version": 15}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGameSession' test.out

#- 35 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'SRqH6dko' \
    > test.out 2>&1
eval_tap $? 35 'DeleteGameSession' test.out

#- 36 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'a6sDr3jt' \
    --body '{"attributes": {"0GQP5oJl": {}, "eCtEu1BM": {}, "hFeLqRsU": {}}, "backfillTicketID": "k4Usqv6l", "clientVersion": "DR5HL40Y", "deployment": "OuHetjDN", "fallbackClaimKeys": ["YnObp1Wd", "DkJMZFhS", "LG1tHsba"], "inactiveTimeout": 59, "inviteTimeout": 84, "joinability": "sDRU32K1", "matchPool": "CW0qAHgK", "maxPlayers": 81, "minPlayers": 29, "preferredClaimKeys": ["9b9CxyHi", "WmTHnFOu", "CQzBDOuT"], "requestedRegions": ["NHOkXLoo", "bgBh2i0s", "Lu5y78uz"], "teams": [{"UserIDs": ["uM7ego5b", "suyBgv9t", "DweYE0rS"], "parties": [{"partyID": "yBHBFmAM", "userIDs": ["SDYx4ncj", "NskRDTI1", "lBUFpQaO"]}, {"partyID": "BbKTTuur", "userIDs": ["r891NUSZ", "H2s5UOrH", "aDKQ8k2z"]}, {"partyID": "wwUQEinR", "userIDs": ["WyANQkZ5", "QRB9pLT6", "0epIhJ6u"]}]}, {"UserIDs": ["XL2CMBUE", "6rlhiisS", "pk6UUJYp"], "parties": [{"partyID": "NK5zJ4nZ", "userIDs": ["XWlwFUzZ", "uCPSftQQ", "uokYYnjc"]}, {"partyID": "LvDUwGAd", "userIDs": ["t2tTHFPc", "q5PtpSWb", "7Tt3v554"]}, {"partyID": "uWh5g0A2", "userIDs": ["n5eJufhn", "kC1RlBCd", "q8BBvTni"]}]}, {"UserIDs": ["rwuUszXJ", "PF6bnl9q", "KtHn3A6g"], "parties": [{"partyID": "ThPZMZV8", "userIDs": ["S6s9bAMg", "WuteMgBi", "IoAtumUw"]}, {"partyID": "RGxYu9qK", "userIDs": ["x2zcpVO6", "L9lbP53R", "uzjIqnyx"]}, {"partyID": "0jCo3YlQ", "userIDs": ["QqpqG6ka", "FFAPL3gF", "Hte2VKjC"]}]}], "ticketIDs": ["VeLfpq0m", "JXByIEmJ", "xXeumN78"], "tieTeamsSessionLifetime": true, "type": "b5KNakd8", "version": 21}' \
    > test.out 2>&1
eval_tap $? 36 'PatchUpdateGameSession' test.out

#- 37 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'IAJgNuaF' \
    --body '{"backfillTicketID": "21PLQ7jT"}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateGameSessionBackfillTicketID' test.out

#- 38 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId '42hMvQdX' \
    > test.out 2>&1
eval_tap $? 38 'GameSessionGenerateCode' test.out

#- 39 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'Jp5YbUuS' \
    > test.out 2>&1
eval_tap $? 39 'PublicRevokeGameSessionCode' test.out

#- 40 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'drz8krCz' \
    --body '{"platformID": "UUJDSMFe", "userID": "vWqUH7PB"}' \
    > test.out 2>&1
eval_tap $? 40 'PublicGameSessionInvite' test.out

#- 41 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'Y1oo2rHI' \
    > test.out 2>&1
eval_tap $? 41 'JoinGameSession' test.out

#- 42 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'zccJECPQ' \
    --body '{"leaderID": "pOU73km2"}' \
    > test.out 2>&1
eval_tap $? 42 'PublicPromoteGameSessionLeader' test.out

#- 43 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'XBcL0Sbt' \
    > test.out 2>&1
eval_tap $? 43 'LeaveGameSession' test.out

#- 44 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId '5exs86RV' \
    > test.out 2>&1
eval_tap $? 44 'PublicGameSessionReject' test.out

#- 45 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'f0RsYQi0' \
    --body '{"additionalMembers": [{"partyID": "8Dr7gOyU", "userIDs": ["5D6HfIT1", "WDGTGHqU", "dqAbz5uy"]}, {"partyID": "t23hRpG5", "userIDs": ["U7nCGLT8", "W5i0wiqw", "qmDSDK6g"]}, {"partyID": "KbnS1sEa", "userIDs": ["zZBzpqzF", "lHjjFxCj", "7RKlln9H"]}], "proposedTeams": [{"UserIDs": ["Gk34JMP8", "oMTJHA3a", "WdJP765X"], "parties": [{"partyID": "y67K52gw", "userIDs": ["kQdFnIkp", "4qVzjkEZ", "1y1oVkRM"]}, {"partyID": "zklWWptJ", "userIDs": ["dWToPOZg", "m5RfzHEo", "uQOTixw4"]}, {"partyID": "zXARrC8Q", "userIDs": ["QQHwrDV5", "22kWm1yk", "nd0nmXkc"]}]}, {"UserIDs": ["AfzQUXXw", "Y1Rl8DNS", "CVEv6Gyn"], "parties": [{"partyID": "ASk7fXst", "userIDs": ["zyYLkDlB", "jmyxVJXB", "9UoNaGEI"]}, {"partyID": "ZEmmozt4", "userIDs": ["d9JVAaiF", "vBjS7T1T", "rhge5SHS"]}, {"partyID": "1cHA34Xv", "userIDs": ["CEJWbtsO", "HOCRcAfO", "DUMh5hzg"]}]}, {"UserIDs": ["sbyL9MH8", "HSkP20EA", "GFpEi9g9"], "parties": [{"partyID": "yi3pbEgb", "userIDs": ["EkYts8pw", "cBnXVTvS", "yOb48Abn"]}, {"partyID": "8p0vTvmP", "userIDs": ["ksbjHBP5", "1a6IO0uG", "y98Ioo5C"]}, {"partyID": "zWPXIGSx", "userIDs": ["VV1QJiRt", "jLENJc12", "Qd10mOLN"]}]}], "version": 10}' \
    > test.out 2>&1
eval_tap $? 45 'AppendTeamGameSession' test.out

#- 46 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "AbPGRgcZ"}' \
    > test.out 2>&1
eval_tap $? 46 'PublicPartyJoinCode' test.out

#- 47 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'MgYuHDVW' \
    > test.out 2>&1
eval_tap $? 47 'PublicGetParty' test.out

#- 48 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'w5jsylpC' \
    --body '{"attributes": {"nSk5vs5D": {}, "pZwIPzRu": {}, "SlShT2L6": {}}, "inactiveTimeout": 50, "inviteTimeout": 17, "joinability": "7cjGxNgK", "maxPlayers": 30, "minPlayers": 17, "type": "ksdC6PLI", "version": 1}' \
    > test.out 2>&1
eval_tap $? 48 'PublicUpdateParty' test.out

#- 49 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'ab6dintp' \
    --body '{"attributes": {"LzQdbUNu": {}, "iOG3MXnd": {}, "aA2OQmS2": {}}, "inactiveTimeout": 61, "inviteTimeout": 96, "joinability": "mKaOkmg9", "maxPlayers": 81, "minPlayers": 49, "type": "gdJsIfDA", "version": 5}' \
    > test.out 2>&1
eval_tap $? 49 'PublicPatchUpdateParty' test.out

#- 50 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'r3fe00iF' \
    > test.out 2>&1
eval_tap $? 50 'PublicGeneratePartyCode' test.out

#- 51 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'oqfbtFkj' \
    > test.out 2>&1
eval_tap $? 51 'PublicRevokePartyCode' test.out

#- 52 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'Jf6CeRjr' \
    --body '{"platformID": "2doa7zf6", "userID": "RsG65z32"}' \
    > test.out 2>&1
eval_tap $? 52 'PublicPartyInvite' test.out

#- 53 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'w0fRJVeH' \
    --body '{"leaderID": "8U8PGGer"}' \
    > test.out 2>&1
eval_tap $? 53 'PublicPromotePartyLeader' test.out

#- 54 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId '9zLnCRqE' \
    > test.out 2>&1
eval_tap $? 54 'PublicPartyJoin' test.out

#- 55 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'KtoakZtd' \
    > test.out 2>&1
eval_tap $? 55 'PublicPartyLeave' test.out

#- 56 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'kTzWuTWP' \
    > test.out 2>&1
eval_tap $? 56 'PublicPartyReject' test.out

#- 57 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'NqX8oFEy' \
    --userId 'NuHHmi94' \
    > test.out 2>&1
eval_tap $? 57 'PublicPartyKick' test.out

#- 58 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"3khqPv1A": {}, "VFBw3dhs": {}, "V0ZeW0Ih": {}}, "configurationName": "C7vegpbf", "inactiveTimeout": 85, "inviteTimeout": 31, "joinability": "t0FeyrXn", "maxPlayers": 65, "members": [{"ID": "sWsYK1Rv", "PlatformID": "BxNY0fln", "PlatformUserID": "NkC0chul"}, {"ID": "rtzLn8n5", "PlatformID": "86rMmP23", "PlatformUserID": "Iyf95DSw"}, {"ID": "QgP9oOoy", "PlatformID": "VjLKASDJ", "PlatformUserID": "XSma4LkQ"}], "minPlayers": 27, "textChat": false, "type": "jp1mdhn5"}' \
    > test.out 2>&1
eval_tap $? 58 'PublicCreateParty' test.out

#- 59 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'SdB3ewyt' \
    --body '{"vqik4vFi": {}, "HgG9LLFA": {}, "Hki3zgB4": {}}' \
    > test.out 2>&1
eval_tap $? 59 'PublicUpdateInsertSessionStorageLeader' test.out

#- 60 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'UJ5klIxN' \
    --userId 'p0R6JLQb' \
    --body '{"kPAuXDk6": {}, "uT5O9o6V": {}, "lqfqIRwc": {}}' \
    > test.out 2>&1
eval_tap $? 60 'PublicUpdateInsertSessionStorage' test.out

#- 61 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["J63VlKbS", "5EemQNl3", "uV6pumsV"]}' \
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
    --body '{"crossplayEnabled": true, "currentPlatform": "QMuRneFf", "data": {"jx9SIlQn": {}, "FMPYX78s": {}, "2J80Ewqw": {}}, "platforms": [{"name": "3ppTQfOI", "userID": "quVS7mfU"}, {"name": "AMVUd5EZ", "userID": "LCxaJT8R"}, {"name": "9HpBT7aG", "userID": "UNrfdS9r"}], "roles": ["IRyCQaJ4", "hJG20Riq", "JZCVRwn7"]}' \
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
    --order 'TUxaMv6B' \
    --orderBy 'BecJsSfd' \
    --status 'kWHxjKY0' \
    > test.out 2>&1
eval_tap $? 65 'PublicQueryMyGameSessions' test.out

#- 66 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'f6o53rU7' \
    --orderBy 'i4YNTj6I' \
    --status 'K8DNlw2I' \
    > test.out 2>&1
eval_tap $? 66 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE