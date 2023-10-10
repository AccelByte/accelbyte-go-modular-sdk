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
echo "1..67"

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
    --body '{"durationDays": 58}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateConfigurationAlertV1' test.out

#- 8 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 42}' \
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
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 38, "PSNSupportedPlatforms": ["tJDbErHO", "Tdr1YXsO", "oAShxjNY"], "SessionTitle": "73hC1OQM", "ShouldSync": true, "XboxServiceConfigID": "kdOqOUY8", "XboxSessionTemplateName": "Ap55Wa6V", "localizedSessionName": {"YBtxVQ9e": {}, "DwYpHtCb": {}, "2MCKMgbQ": {}}}, "PSNBaseUrl": "0zsg7Fib", "autoJoin": true, "clientVersion": "XeFcpz6B", "deployment": "LTlPVqUd", "dsSource": "6PRftTxu", "fallbackClaimKeys": ["SMsifPBN", "8HLTsYES", "o22WfIep"], "immutableStorage": false, "inactiveTimeout": 74, "inviteTimeout": 54, "joinability": "jOy9j7OI", "maxActiveSessions": 66, "maxPlayers": 97, "minPlayers": 63, "name": "3OPvfF0r", "persistent": true, "preferredClaimKeys": ["W0RL0MyJ", "62mJx4nH", "4OzQMxP5"], "requestedRegions": ["yRYIdZV2", "3Ej2fd26", "0fvfdDuV"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "5N2shDSS"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminCreateConfigurationTemplateV1' test.out

#- 11 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --name '4xMHU0iK' \
    --offset '88' \
    --order 'thEVbGzQ' \
    --orderBy 'iegT7fcM' \
    > test.out 2>&1
eval_tap $? 11 'AdminGetAllConfigurationTemplatesV1' test.out

#- 12 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'AfVGTVul' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminGetConfigurationTemplateV1' test.out

#- 13 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'IIssTaMN' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 5, "PSNSupportedPlatforms": ["pua9xAT3", "vYINSVwA", "V40kBeWF"], "SessionTitle": "S9PjBtpY", "ShouldSync": false, "XboxServiceConfigID": "q8AQx6RZ", "XboxSessionTemplateName": "Y4Dz2GMP", "localizedSessionName": {"CFcBRS4F": {}, "wGH7LBHm": {}, "n4jLGGTZ": {}}}, "PSNBaseUrl": "sYvOCQzM", "autoJoin": false, "clientVersion": "N3n3mYjH", "deployment": "5AmHc0XT", "dsSource": "G3RPokk0", "fallbackClaimKeys": ["BHctwGMC", "K5wxpQF3", "FLh7hnxe"], "immutableStorage": false, "inactiveTimeout": 65, "inviteTimeout": 31, "joinability": "Om3tx7FA", "maxActiveSessions": 85, "maxPlayers": 7, "minPlayers": 58, "name": "gc3YTVTS", "persistent": false, "preferredClaimKeys": ["Y1OYPAU4", "ufmFtjVg", "LZq1ZQT4"], "requestedRegions": ["ZgQsJNXK", "pPvcMFeC", "gUcWmmVU"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "gyDmpFAF"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminUpdateConfigurationTemplateV1' test.out

#- 14 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'eLgBPMjP' \
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
    --configurationName 'drsncAyC' \
    --dsPodName 'GJ7zmKWy' \
    --fromTime 'I5qaVnGw' \
    --gameMode 'IAcZ4LVU' \
    --isPersistent 'J9xKxWj6' \
    --isSoftDeleted 'Z5CMtQ3U' \
    --joinability 'ucW7MDTb' \
    --limit '91' \
    --matchPool 'lkiERKhe' \
    --memberID 'LkJLdCWj' \
    --offset '23' \
    --order 'Gg58FDhP' \
    --orderBy 'fjDbSGGn' \
    --sessionID 'd7Go7alC' \
    --status '1UpZNM33' \
    --statusV2 'PGT9me6v' \
    --toTime 'Phv0fBYb' \
    > test.out 2>&1
eval_tap $? 17 'AdminQueryGameSessions' test.out

#- 18 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"TvHSQ7xZ": {}, "Keq2uybR": {}, "HQlpClbz": {}}' \
    > test.out 2>&1
eval_tap $? 18 'AdminQueryGameSessionsByAttributes' test.out

#- 19 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["60Xd3a5Q", "ddPgAH2G", "IdIZU5pV"]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminDeleteBulkGameSessions' test.out

#- 20 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'iBucy120' \
    --namespace $AB_NAMESPACE \
    --sessionId '1LhZsprs' \
    --statusType '229TVinq' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateGameSessionMember' test.out

#- 21 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --joinability 'ngXv5BVd' \
    --key 'JxCFEGb0' \
    --leaderID 'jjfLmh0S' \
    --limit '5' \
    --memberID 'jbwIbdRu' \
    --memberStatus 'zMErMUr3' \
    --offset '18' \
    --order '1SIuMW4h' \
    --orderBy 'SMTQiWYz' \
    --partyID 'I7Vz9vpL' \
    --value 'cVNLgPFX' \
    > test.out 2>&1
eval_tap $? 21 'AdminQueryParties' test.out

#- 22 AdminGetPlatformCredentials
samples/cli/sample-apps Session adminGetPlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'AdminGetPlatformCredentials' test.out

#- 23 AdminUpdatePlatformCredentials
samples/cli/sample-apps Session adminUpdatePlatformCredentials \
    --namespace $AB_NAMESPACE \
    --body '{"psn": {"clientId": "RpUFsLDs", "clientSecret": "UciCrnYU", "scope": "l7hOCwAl"}}' \
    > test.out 2>&1
eval_tap $? 23 'AdminUpdatePlatformCredentials' test.out

#- 24 AdminDeletePlatformCredentials
samples/cli/sample-apps Session adminDeletePlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'AdminDeletePlatformCredentials' test.out

#- 25 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'Wn7VBsXY' \
    > test.out 2>&1
eval_tap $? 25 'AdminReadSessionStorage' test.out

#- 26 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'HdhNdtcb' \
    > test.out 2>&1
eval_tap $? 26 'AdminDeleteUserSessionStorage' test.out

#- 27 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'ZoADhk2v' \
    --userId 'p3G3ZFw3' \
    > test.out 2>&1
eval_tap $? 27 'AdminReadUserSessionStorage' test.out

#- 28 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'g2wD4pAW' \
    > test.out 2>&1
eval_tap $? 28 'AdminQueryPlayerAttributes' test.out

#- 29 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'iHOzMiCp' \
    > test.out 2>&1
eval_tap $? 29 'AdminGetPlayerAttributes' test.out

#- 30 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"M6bby3Za": {}, "SMfedKdb": {}, "MIrBM3bb": {}}, "autoJoin": true, "backfillTicketID": "gLEfs4FP", "clientVersion": "9dJBxiS6", "configurationName": "vv5SxFhb", "deployment": "3OOxPL8v", "dsSource": "AAuHVEHV", "fallbackClaimKeys": ["FR5zEwKS", "tjYJaG4j", "Vg10cmBP"], "inactiveTimeout": 1, "inviteTimeout": 40, "joinability": "Pe4LfwsO", "matchPool": "FRGlsNfr", "maxPlayers": 50, "minPlayers": 41, "preferredClaimKeys": ["Nv9EJRjR", "YC4Jknnp", "gGQ8us88"], "requestedRegions": ["kQdsGPeT", "HvKRhTK1", "Csi8c7D1"], "serverName": "ukaGNosc", "teams": [{"UserIDs": ["EgrUBU81", "3KO8Gfhx", "l4L6Z9di"], "parties": [{"partyID": "7UTLgTz8", "userIDs": ["6X1Do0JH", "1ws6xBLe", "wzmyD5En"]}, {"partyID": "wvTmVJdl", "userIDs": ["nhm2fhbW", "SX3T8Zci", "9ARvuf9t"]}, {"partyID": "D3Tf8CJ4", "userIDs": ["K0WiIbxW", "8sJ5ephr", "wetatToc"]}]}, {"UserIDs": ["P885abM8", "fwT9700B", "eo6FRkOt"], "parties": [{"partyID": "eHgwoQbu", "userIDs": ["pYE8683w", "qXDeDuin", "wOYX0CgL"]}, {"partyID": "t7BtuvC1", "userIDs": ["uFU3GtVN", "w7os9NvX", "x5BXowm3"]}, {"partyID": "zCxWPoZR", "userIDs": ["pet2RUeL", "sDB5PXZy", "8DivAFqK"]}]}, {"UserIDs": ["JHhFM03q", "n2u6pMxw", "IrLZPGbd"], "parties": [{"partyID": "ggc2qIPV", "userIDs": ["A7yoNqsy", "l5IpPFrV", "BshPwpo6"]}, {"partyID": "XQNV0M7m", "userIDs": ["4vefg0vu", "iR3DBHRm", "PCqbSYpI"]}, {"partyID": "x4TrzAik", "userIDs": ["NjcwUsmh", "4VOvSnay", "caINkNNd"]}]}], "textChat": false, "ticketIDs": ["mUzOndpg", "c1TkpeFd", "L9ElSk2v"], "tieTeamsSessionLifetime": true, "type": "4Wu3drm8"}' \
    > test.out 2>&1
eval_tap $? 30 'CreateGameSession' test.out

#- 31 PublicQueryGameSessions
samples/cli/sample-apps Session publicQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"fI8zjbkZ": {}, "RXgUnZXz": {}, "Mx6lShHs": {}}' \
    > test.out 2>&1
eval_tap $? 31 'PublicQueryGameSessions' test.out

#- 32 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "DctVbTBi"}' \
    > test.out 2>&1
eval_tap $? 32 'PublicSessionJoinCode' test.out

#- 33 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'BXaQgYX6' \
    > test.out 2>&1
eval_tap $? 33 'GetGameSessionByPodName' test.out

#- 34 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'qZFnXfdJ' \
    > test.out 2>&1
eval_tap $? 34 'GetGameSession' test.out

#- 35 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'o6W296pk' \
    --body '{"attributes": {"IUmMCAfa": {}, "le9XNuTK": {}, "puXU1jSU": {}}, "backfillTicketID": "yzbi617b", "clientVersion": "sieusUEB", "deployment": "mZ0ovdE8", "fallbackClaimKeys": ["rOIBCHMh", "L5bRCIHc", "Cc6kuJaV"], "inactiveTimeout": 43, "inviteTimeout": 80, "joinability": "GiORRow2", "matchPool": "UxlIrYcc", "maxPlayers": 82, "minPlayers": 98, "preferredClaimKeys": ["sbEj0v7A", "OFjoLi3w", "FfciSrTV"], "requestedRegions": ["3WEwAlSV", "ilNHltiK", "jr1K4GV9"], "teams": [{"UserIDs": ["5c84rDrX", "IvSLLZuN", "g9liVtlb"], "parties": [{"partyID": "v9owzsq6", "userIDs": ["L9J7VEub", "lNj1NFmq", "cTV1rCCq"]}, {"partyID": "Zc8QTJQl", "userIDs": ["vkHY2tmf", "iZIHQ8E5", "xlLxOUkD"]}, {"partyID": "bZePURtB", "userIDs": ["il6m8S9N", "W9c1jhzE", "GkMEwMHU"]}]}, {"UserIDs": ["4rEwTGhK", "YPLR3Wge", "astc4muu"], "parties": [{"partyID": "sFwXuzzh", "userIDs": ["oSs4GKAH", "j0pA6851", "HVhFwnri"]}, {"partyID": "wmMMclCO", "userIDs": ["twkKFLWx", "EaJ1U6w1", "6943S6DF"]}, {"partyID": "WLxpMRNG", "userIDs": ["YjdKHcSj", "822kpdgC", "pSC2Egdr"]}]}, {"UserIDs": ["Ph6yJusB", "QWYee7yd", "XLyYGV8u"], "parties": [{"partyID": "qSMjw9IG", "userIDs": ["N6SKBylD", "3gIiRBOa", "dw5ymw4z"]}, {"partyID": "5OpDPpnN", "userIDs": ["zwFcPQEC", "gnw8kvHM", "SCMHBGlC"]}, {"partyID": "UGJcagcO", "userIDs": ["bJcHspoO", "CK97Z0Xl", "IxkjcNtV"]}]}], "ticketIDs": ["6SqzrYtI", "W5c9WvVA", "4Fc0GkfY"], "tieTeamsSessionLifetime": true, "type": "LsBIayIU", "version": 51}' \
    > test.out 2>&1
eval_tap $? 35 'UpdateGameSession' test.out

#- 36 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'LtVepm1R' \
    > test.out 2>&1
eval_tap $? 36 'DeleteGameSession' test.out

#- 37 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'P1nSCmfU' \
    --body '{"attributes": {"9qV7lUZW": {}, "HEyi4XX2": {}, "epwUfzK7": {}}, "backfillTicketID": "RtaTfElY", "clientVersion": "MWD9Z7AM", "deployment": "n6sH4xVB", "fallbackClaimKeys": ["ar1OYe1I", "oTDjl6iL", "47EPo67c"], "inactiveTimeout": 55, "inviteTimeout": 85, "joinability": "znQAnGPj", "matchPool": "JkeeFUnZ", "maxPlayers": 14, "minPlayers": 60, "preferredClaimKeys": ["rNxrm2tM", "xMCpzmUv", "3GL6WZ4g"], "requestedRegions": ["LjiUHqYf", "G0BoRDVp", "VexNEyn9"], "teams": [{"UserIDs": ["di9Y8cLP", "fsW6OwIW", "BsS0rHnI"], "parties": [{"partyID": "L60eNbdf", "userIDs": ["Ie4X7MZ5", "Hov44vX6", "wOFj1iXX"]}, {"partyID": "a54hc1Wl", "userIDs": ["5mQBNGeG", "xE71t7ZV", "unuxLmzs"]}, {"partyID": "ImtYEtgM", "userIDs": ["tAOkHW6E", "eEslnhj4", "JwFkcuuv"]}]}, {"UserIDs": ["WkWbCx2T", "xDS4eaPU", "GeNuvBIA"], "parties": [{"partyID": "ryUDGW01", "userIDs": ["Ex4IfvZf", "2HZlRtjW", "LkGqxs8A"]}, {"partyID": "clK6dq0a", "userIDs": ["jn9vPT1H", "yKs49OoV", "iu2P1dLA"]}, {"partyID": "ncP724Rh", "userIDs": ["cKNnIZQM", "NHkdCBY6", "ttQ3tiRb"]}]}, {"UserIDs": ["KUMzytIg", "OVHiwwr0", "NXs5Fp2X"], "parties": [{"partyID": "VwRzYCPW", "userIDs": ["Ut1irJO9", "8xpty7CK", "VX0nCgwM"]}, {"partyID": "WiQ9zCLY", "userIDs": ["PKbQqzOu", "pux0FSCv", "ZCYt2tHJ"]}, {"partyID": "9rqPy59b", "userIDs": ["hobmvKVB", "wYoANDhn", "PzvUMcoG"]}]}], "ticketIDs": ["WWD79LQk", "V9hA0Ny5", "XJDRpJU9"], "tieTeamsSessionLifetime": false, "type": "YAsIeHbJ", "version": 50}' \
    > test.out 2>&1
eval_tap $? 37 'PatchUpdateGameSession' test.out

#- 38 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'bTsWw3xP' \
    --body '{"backfillTicketID": "ABPLBcqy"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateGameSessionBackfillTicketID' test.out

#- 39 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'NhOILZXj' \
    > test.out 2>&1
eval_tap $? 39 'GameSessionGenerateCode' test.out

#- 40 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId '30hZ62lY' \
    > test.out 2>&1
eval_tap $? 40 'PublicRevokeGameSessionCode' test.out

#- 41 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId '6vdVgZvW' \
    --body '{"platformID": "TxN5jDxN", "userID": "cS4f3Idr"}' \
    > test.out 2>&1
eval_tap $? 41 'PublicGameSessionInvite' test.out

#- 42 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'F9MWJoRl' \
    > test.out 2>&1
eval_tap $? 42 'JoinGameSession' test.out

#- 43 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'tF8qMvu5' \
    --body '{"leaderID": "S6SRKPXH"}' \
    > test.out 2>&1
eval_tap $? 43 'PublicPromoteGameSessionLeader' test.out

#- 44 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'YtGaaasY' \
    > test.out 2>&1
eval_tap $? 44 'LeaveGameSession' test.out

#- 45 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'p88OyzLY' \
    > test.out 2>&1
eval_tap $? 45 'PublicGameSessionReject' test.out

#- 46 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'aVGdLPYw' \
    --body '{"additionalMembers": [{"partyID": "nbRhm2yy", "userIDs": ["53xlXcRW", "ejCrOGNy", "98rFHZrh"]}, {"partyID": "8I9iFQuo", "userIDs": ["O1lgfkWn", "Cy4Szcb2", "7Qr0uPv1"]}, {"partyID": "mk0iFHGJ", "userIDs": ["hBwM5hAE", "KBLTyCi9", "rxl7bgOO"]}], "proposedTeams": [{"UserIDs": ["0cjkwLuc", "QUxqTyu7", "V4w2nBfx"], "parties": [{"partyID": "U5P9RX9i", "userIDs": ["WAEfUOE2", "i49D0gyw", "S2RDhgYH"]}, {"partyID": "aAeYocvp", "userIDs": ["boOpu5y5", "EC4OUrEX", "S9UDg3mq"]}, {"partyID": "KOuEcTFh", "userIDs": ["rE7oIPHZ", "i91DTEbG", "ry5wOw7q"]}]}, {"UserIDs": ["H1Q3E7Fr", "nS9yjpye", "sD1Nios8"], "parties": [{"partyID": "eFGIPDsT", "userIDs": ["jcEgpXke", "42BBYAwl", "SETzExTs"]}, {"partyID": "41YCmRIn", "userIDs": ["FoBMLtSg", "Wpl9ewfg", "KYrlLeD0"]}, {"partyID": "LN6G1Yid", "userIDs": ["IvzbxASX", "uukUKbj6", "mrzCaXaA"]}]}, {"UserIDs": ["ErRPKxVw", "3x0m1Gwj", "Ay9P5LfJ"], "parties": [{"partyID": "xUV3CPiF", "userIDs": ["KYbkhNdV", "vnmVlJ7x", "fsRWiWeD"]}, {"partyID": "cCFa64RS", "userIDs": ["EKb5JDpA", "UVXmSo4j", "Ai3EQiA5"]}, {"partyID": "rxB2F5vf", "userIDs": ["nmKEmzYx", "co0fsEvE", "YxniXf88"]}]}], "version": 98}' \
    > test.out 2>&1
eval_tap $? 46 'AppendTeamGameSession' test.out

#- 47 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "K4gccS51"}' \
    > test.out 2>&1
eval_tap $? 47 'PublicPartyJoinCode' test.out

#- 48 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'kO4lS136' \
    > test.out 2>&1
eval_tap $? 48 'PublicGetParty' test.out

#- 49 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'zikthad7' \
    --body '{"attributes": {"k55Ab7im": {}, "EXx8zjVH": {}, "VTFLRgxw": {}}, "inactiveTimeout": 27, "inviteTimeout": 30, "joinability": "RVSGstXQ", "maxPlayers": 20, "minPlayers": 2, "type": "nT9vRKiY", "version": 31}' \
    > test.out 2>&1
eval_tap $? 49 'PublicUpdateParty' test.out

#- 50 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'Az4JjmSk' \
    --body '{"attributes": {"94IVUy9l": {}, "ut7HXpKz": {}, "o2iNofE2": {}}, "inactiveTimeout": 5, "inviteTimeout": 66, "joinability": "SYASDFbv", "maxPlayers": 1, "minPlayers": 84, "type": "OfvwcP1q", "version": 77}' \
    > test.out 2>&1
eval_tap $? 50 'PublicPatchUpdateParty' test.out

#- 51 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'QSbwb6uK' \
    > test.out 2>&1
eval_tap $? 51 'PublicGeneratePartyCode' test.out

#- 52 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'TwmWzjul' \
    > test.out 2>&1
eval_tap $? 52 'PublicRevokePartyCode' test.out

#- 53 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId '6stNW8eP' \
    --body '{"platformID": "rQFKt9v3", "userID": "y0aw4C8u"}' \
    > test.out 2>&1
eval_tap $? 53 'PublicPartyInvite' test.out

#- 54 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'S001if8P' \
    --body '{"leaderID": "zoP7sSfg"}' \
    > test.out 2>&1
eval_tap $? 54 'PublicPromotePartyLeader' test.out

#- 55 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'BIhSeAlV' \
    > test.out 2>&1
eval_tap $? 55 'PublicPartyJoin' test.out

#- 56 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'h1ICSSmP' \
    > test.out 2>&1
eval_tap $? 56 'PublicPartyLeave' test.out

#- 57 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'jNqYs88U' \
    > test.out 2>&1
eval_tap $? 57 'PublicPartyReject' test.out

#- 58 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'B6AtLnc5' \
    --userId 'W9K6nkH7' \
    > test.out 2>&1
eval_tap $? 58 'PublicPartyKick' test.out

#- 59 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"egI4LZz1": {}, "79B2tqkQ": {}, "qIi4CRak": {}}, "configurationName": "Iij1MjVC", "inactiveTimeout": 53, "inviteTimeout": 98, "joinability": "UX4HU2n3", "maxPlayers": 40, "members": [{"ID": "OIJbv5Wi", "PlatformID": "640KcFo5", "PlatformUserID": "dgeRiHmU"}, {"ID": "P2VLdyK1", "PlatformID": "l1VADWpO", "PlatformUserID": "QoBbsySA"}, {"ID": "obPn5iL7", "PlatformID": "HaufpTx9", "PlatformUserID": "CCccWFzd"}], "minPlayers": 58, "textChat": false, "type": "YY06G5jK"}' \
    > test.out 2>&1
eval_tap $? 59 'PublicCreateParty' test.out

#- 60 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'hButf7Cj' \
    --body '{"Tzz6vHnO": {}, "wrSq7OVd": {}, "YLojcUvK": {}}' \
    > test.out 2>&1
eval_tap $? 60 'PublicUpdateInsertSessionStorageLeader' test.out

#- 61 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId '6Tn8lbkm' \
    --userId 'EPf6S9Ts' \
    --body '{"TKj0sZDL": {}, "uw3nlkog": {}, "jOblkdW3": {}}' \
    > test.out 2>&1
eval_tap $? 61 'PublicUpdateInsertSessionStorage' test.out

#- 62 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["6eMByZgE", "v9BbfUCE", "BKC5vnQh"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 63 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'PublicGetPlayerAttributes' test.out

#- 64 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": true, "currentPlatform": "CPrs1HMZ", "data": {"rZdjAB5n": {}, "pGm5QsLI": {}, "GLClAUG7": {}}, "platforms": [{"name": "Q2xVXo1B", "userID": "AoGTfXAM"}, {"name": "36eDLdHc", "userID": "FV5keeMv"}, {"name": "pUc0ff6N", "userID": "8HBrOc85"}], "roles": ["SXaC5Ipu", "pjA7P37t", "TvW49q42"]}' \
    > test.out 2>&1
eval_tap $? 64 'PublicStorePlayerAttributes' test.out

#- 65 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'PublicDeletePlayerAttributes' test.out

#- 66 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order '4NHxtkhk' \
    --orderBy 'mtth5OaC' \
    --status 'P6P5yYuI' \
    > test.out 2>&1
eval_tap $? 66 'PublicQueryMyGameSessions' test.out

#- 67 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order '4XmislR1' \
    --orderBy 'b58USF63' \
    --status '51WCwglq' \
    > test.out 2>&1
eval_tap $? 67 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE