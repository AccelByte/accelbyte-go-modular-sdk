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
echo "1..94"

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

#- 4 AdminGetLogConfig
samples/cli/sample-apps Session adminGetLogConfig \
    > test.out 2>&1
eval_tap $? 4 'AdminGetLogConfig' test.out

#- 5 AdminPatchUpdateLogConfig
samples/cli/sample-apps Session adminPatchUpdateLogConfig \
    --body '{"logLevel": "trace"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPatchUpdateLogConfig' test.out

#- 6 AdminGetDSMCConfigurationDefault
eval_tap 0 6 'AdminGetDSMCConfigurationDefault # SKIP deprecated' test.out

#- 7 AdminListEnvironmentVariables
samples/cli/sample-apps Session adminListEnvironmentVariables \
    > test.out 2>&1
eval_tap $? 7 'AdminListEnvironmentVariables' test.out

#- 8 AdminListGlobalConfiguration
samples/cli/sample-apps Session adminListGlobalConfiguration \
    > test.out 2>&1
eval_tap $? 8 'AdminListGlobalConfiguration' test.out

#- 9 AdminUpdateGlobalConfiguration
samples/cli/sample-apps Session adminUpdateGlobalConfiguration \
    --body '{"metricExcludedNamespaces": ["YQy3q3VT", "VIlYm0f6", "0GJlhC7u"], "regionRetryMapping": {"BcaJ7HnJ": ["B0awgIWu", "84pVvFFr", "M0xY91FA"], "r7im9uKW": ["tPCUxuvv", "mO2GvGx6", "HwhkaCQo"], "3TNbSpgh": ["L5t8i2vQ", "YW5MmHF1", "uXokIkBF"]}, "regionURLMapping": ["hStRrjXk", "0VEdqAuB", "zEDaKg2w"], "testGameMode": "WctJeVZK", "testRegionURLMapping": ["W93gmetu", "xYMk4hzS", "rNJK7wGz"], "testTargetUserIDs": ["lXqcxHba", "GrkWUw4g", "3eSmdIX1"]}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateGlobalConfiguration' test.out

#- 10 AdminDeleteGlobalConfiguration
samples/cli/sample-apps Session adminDeleteGlobalConfiguration \
    > test.out 2>&1
eval_tap $? 10 'AdminDeleteGlobalConfiguration' test.out

#- 11 AdminGetConfigurationAlertV1
samples/cli/sample-apps Session adminGetConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetConfigurationAlertV1' test.out

#- 12 AdminUpdateConfigurationAlertV1
samples/cli/sample-apps Session adminUpdateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 22}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationAlertV1' test.out

#- 13 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 88}' \
    > test.out 2>&1
eval_tap $? 13 'AdminCreateConfigurationAlertV1' test.out

#- 14 AdminDeleteConfigurationAlertV1
samples/cli/sample-apps Session adminDeleteConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteConfigurationAlertV1' test.out

#- 15 AdminUploadXBoxCertificate
eval_tap 0 15 'AdminUploadXBoxCertificate # SKIP deprecated' test.out

#- 16 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["UPDATE_INVITABLE_USER_TYPE", "UPDATE_JOINABLE_USER_TYPE", "PROMOTE_TO_LEADER"], "PSNServiceLabel": 17, "PSNSupportedPlatforms": ["WBvTOsCp", "RUYihX73", "uHpmgUrS"], "SessionTitle": "xT8elI5L", "ShouldSync": false, "XboxAllowCrossPlatform": true, "XboxSandboxID": "GX8eZahE", "XboxServiceConfigID": "qrrciINz", "XboxSessionTemplateName": "w5bp2Q41", "XboxTitleID": "R0MlFIMP", "localizedSessionName": {"7guXTsYR": {}, "2bMJKpd8": {}, "VoWdSCQQ": {}}}, "PSNBaseUrl": "SWc43HxR", "amsClaimTimeoutMinutes": 8, "appName": "kDrHEeFf", "asyncProcessDSRequest": {"async": false, "timeout": 19}, "attributes": {"k7mnPXMH": {}, "0wOoqEdc": {}, "XWc56Qzk": {}}, "autoJoin": true, "autoLeaveSession": true, "clientVersion": "JSqcdNVo", "customURLGRPC": "tVtNkWKt", "deployment": "GEanlnMV", "disableCodeGeneration": true, "disableResendInvite": true, "dsManualSetReady": false, "dsSource": "pfFraJcm", "enableSecret": true, "fallbackClaimKeys": ["C900GMnN", "CcBjpplO", "cOAla17A"], "grpcSessionConfig": {"appName": "pLhgvN68", "customURL": "CwJpq812", "functionFlag": 44}, "immutableStorage": true, "inactiveTimeout": 94, "inviteTimeout": 56, "joinability": "k5o63KnU", "leaderElectionGracePeriod": 43, "manualRejoin": true, "maxActiveSessions": 42, "maxPlayers": 61, "minPlayers": 92, "name": "HcDgjd48", "persistent": false, "preferredClaimKeys": ["46UPPkEx", "r5kshtr2", "2LvjoGDu"], "requestedRegions": ["UlWKeGnu", "d81XpWJG", "0F7TfeGi"], "textChat": true, "textChatMode": "GAME", "tieTeamsSessionLifetime": true, "ttlHours": 95, "type": "D9XNSSK4"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateConfigurationTemplateV1' test.out

#- 17 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --name 'm5Rsbqt0' \
    --offset '90' \
    --order 'Fl3p3aqt' \
    --orderBy 'i59qMt7K' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetAllConfigurationTemplatesV1' test.out

#- 18 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'wTKjl5w2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigurationTemplateV1' test.out

#- 19 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'OWWDMixL' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["UPDATE_INVITABLE_USER_TYPE", "PROMOTE_TO_LEADER", "PROMOTE_TO_LEADER"], "PSNServiceLabel": 100, "PSNSupportedPlatforms": ["CGHxzYM4", "wxxkD1VP", "xGvQgnro"], "SessionTitle": "98bAS2kV", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "vjaOyiXA", "XboxServiceConfigID": "XoVif81E", "XboxSessionTemplateName": "F0EAEkgN", "XboxTitleID": "u7yObbx3", "localizedSessionName": {"nnXhV5EY": {}, "WtQ5DD38": {}, "4bht3FAB": {}}}, "PSNBaseUrl": "om4DW0pO", "amsClaimTimeoutMinutes": 40, "appName": "E9YQ3hoj", "asyncProcessDSRequest": {"async": true, "timeout": 68}, "attributes": {"GkrpvtYJ": {}, "A9Dc6MNV": {}, "QJ32PjYF": {}}, "autoJoin": true, "autoLeaveSession": false, "clientVersion": "ES0ErqE4", "customURLGRPC": "XqncEhnm", "deployment": "zkoGJClr", "disableCodeGeneration": false, "disableResendInvite": false, "dsManualSetReady": true, "dsSource": "uR5PQuWa", "enableSecret": true, "fallbackClaimKeys": ["WSCEkK54", "zYlxVdAu", "el3A2J20"], "grpcSessionConfig": {"appName": "7rINxCY7", "customURL": "g1KGxqjB", "functionFlag": 50}, "immutableStorage": true, "inactiveTimeout": 86, "inviteTimeout": 51, "joinability": "yR33sOC4", "leaderElectionGracePeriod": 30, "manualRejoin": false, "maxActiveSessions": 74, "maxPlayers": 79, "minPlayers": 26, "name": "ijBxbCVi", "persistent": false, "preferredClaimKeys": ["Md4CFt42", "jv1YsmDw", "NUjvf8zl"], "requestedRegions": ["4YrjPeQ8", "vA1oNkIb", "cmMg0Djr"], "textChat": true, "textChatMode": "GAME", "tieTeamsSessionLifetime": false, "ttlHours": 96, "type": "3e3fQRCg"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'Q7e3Cm1o' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 'WFeEQaSC' \
    --namespace $AB_NAMESPACE \
    --userId 'tB6N0ZKG' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'm9ymUZVx' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "N7MEGDpm"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminReconcileMaxActiveSession' test.out

#- 23 AdminGetDSMCConfiguration
eval_tap 0 23 'AdminGetDSMCConfiguration # SKIP deprecated' test.out

#- 24 AdminSyncDSMCConfiguration
eval_tap 0 24 'AdminSyncDSMCConfiguration # SKIP deprecated' test.out

#- 25 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName 'ffk0J7je' \
    --dsPodName 'Nuz2PqMx' \
    --fromTime 'BOQXRa7l' \
    --gameMode '2f7cRnpW' \
    --isPersistent 'zZKNykDG' \
    --isSoftDeleted 'JGDUcxPH' \
    --joinability 'SLZvoLW3' \
    --limit '57' \
    --matchPool 'At4vBqUL' \
    --memberID 'w8VBwV6a' \
    --offset '5' \
    --order 'C70qvHs3' \
    --orderBy 'nNfhKwxK' \
    --sessionID 'K2mULJDH' \
    --status 'DDkLhvZL' \
    --statusV2 'Q4UMyC68' \
    --toTime '7U5Bs9XM' \
    > test.out 2>&1
eval_tap $? 25 'AdminQueryGameSessions' test.out

#- 26 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"zLeVEe7r": {}, "G92UR9B8": {}, "T2zoCx0s": {}}' \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["8kDPYQP1", "ur035XMJ", "8voxMdPi"]}' \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'kNJGi9ak' \
    --body '{"ready": false}' \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminUpdateDSInformation
samples/cli/sample-apps Session adminUpdateDSInformation \
    --namespace $AB_NAMESPACE \
    --sessionId '54jUY2wu' \
    --body '{"createdRegion": "uQWOuaQM", "deployment": "XUCSLwxx", "description": "OXiQihph", "ip": "49tEeLwS", "port": 11, "region": "vVbJRlXf", "serverId": "GXIaRDOd", "source": "FOex1sjS", "status": "YVBYmAdd"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateDSInformation' test.out

#- 30 AdminKickGameSessionMember
samples/cli/sample-apps Session adminKickGameSessionMember \
    --memberId '1iNfoNbJ' \
    --namespace $AB_NAMESPACE \
    --sessionId 'Wq7vJAg9' \
    > test.out 2>&1
eval_tap $? 30 'AdminKickGameSessionMember' test.out

#- 31 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'Vdd6Gtez' \
    --namespace $AB_NAMESPACE \
    --sessionId 'c2JganOT' \
    --statusType '94pHwUpr' \
    > test.out 2>&1
eval_tap $? 31 'AdminUpdateGameSessionMember' test.out

#- 32 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '86' \
    --order 'b6pTWion' \
    > test.out 2>&1
eval_tap $? 32 'AdminGetListNativeSession' test.out

#- 33 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --fromTime 'iWtwLGXR' \
    --isSoftDeleted 'jIsDWvP7' \
    --joinability 'sPL9ObSB' \
    --key 'KLYMwqfb' \
    --leaderID 'X6R9BHzt' \
    --limit '84' \
    --memberID 'K3dekPrP' \
    --memberStatus 'YAncQPSP' \
    --offset '38' \
    --order 'PQxtQvdO' \
    --orderBy 'WKzAxRzj' \
    --partyID 'Q4rAu2HP' \
    --toTime '7W41op3p' \
    --value 'gccPgXRv' \
    > test.out 2>&1
eval_tap $? 33 'AdminQueryParties' test.out

#- 34 AdminDeleteBulkParties
samples/cli/sample-apps Session adminDeleteBulkParties \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["g48l96zx", "Ttlw9H2x", "X83FERu5"]}' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteBulkParties' test.out

#- 35 AdminReadPartySessionStorage
samples/cli/sample-apps Session adminReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId 'VtBUCaMt' \
    > test.out 2>&1
eval_tap $? 35 'AdminReadPartySessionStorage' test.out

#- 36 AdminGetPlatformCredentials
samples/cli/sample-apps Session adminGetPlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 36 'AdminGetPlatformCredentials' test.out

#- 37 AdminUpdatePlatformCredentials
samples/cli/sample-apps Session adminUpdatePlatformCredentials \
    --namespace $AB_NAMESPACE \
    --body '{"psn": {"clientId": "dBRqp5fh", "clientSecret": "v0b6XVkS", "scope": "xMFm1jtS"}}' \
    > test.out 2>&1
eval_tap $? 37 'AdminUpdatePlatformCredentials' test.out

#- 38 AdminDeletePlatformCredentials
samples/cli/sample-apps Session adminDeletePlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'AdminDeletePlatformCredentials' test.out

#- 39 AdminDeletePlatformCredentialsByPlatformId
samples/cli/sample-apps Session adminDeletePlatformCredentialsByPlatformId \
    --namespace $AB_NAMESPACE \
    --platformId 'XBOX' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeletePlatformCredentialsByPlatformId' test.out

#- 40 AdminSyncPlatformCredentials
samples/cli/sample-apps Session adminSyncPlatformCredentials \
    --namespace $AB_NAMESPACE \
    --platformId 'XBOX' \
    > test.out 2>&1
eval_tap $? 40 'AdminSyncPlatformCredentials' test.out

#- 41 AdminGetRecentPlayer
samples/cli/sample-apps Session adminGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --userId 'sfOEmFNN' \
    > test.out 2>&1
eval_tap $? 41 'AdminGetRecentPlayer' test.out

#- 42 AdminGetRecentTeamPlayer
samples/cli/sample-apps Session adminGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --userId 'Mq260YUU' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetRecentTeamPlayer' test.out

#- 43 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'RHAFBWVL' \
    > test.out 2>&1
eval_tap $? 43 'AdminReadSessionStorage' test.out

#- 44 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'WQoIO0iT' \
    > test.out 2>&1
eval_tap $? 44 'AdminDeleteUserSessionStorage' test.out

#- 45 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'K2bH7KuT' \
    --userId 'xaFMW452' \
    > test.out 2>&1
eval_tap $? 45 'AdminReadUserSessionStorage' test.out

#- 46 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'aKHE8zh1' \
    > test.out 2>&1
eval_tap $? 46 'AdminQueryPlayerAttributes' test.out

#- 47 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'Lh2p62mS' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetPlayerAttributes' test.out

#- 48 AdminSyncNativeSession
samples/cli/sample-apps Session adminSyncNativeSession \
    --namespace $AB_NAMESPACE \
    --userId 'Dy393Faa' \
    > test.out 2>&1
eval_tap $? 48 'AdminSyncNativeSession' test.out

#- 49 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --resolveMaxActiveSession 'false' \
    --body '{"appName": "z2V3lV1A", "attributes": {"ADpt8Ycg": {}, "vLEhnVus": {}, "6phD9tbX": {}}, "autoJoin": true, "backfillTicketID": "RhuXzK9Y", "clientVersion": "bJf2zmDI", "configurationName": "dpJjSXLp", "customURLGRPC": "mbayCZWN", "deployment": "cIXGTJjP", "dsSource": "ci9FRIHj", "fallbackClaimKeys": ["2TmH4aqw", "O4Hh3Nn8", "sT4TVrat"], "inactiveTimeout": 14, "inviteTimeout": 46, "joinability": "v2dWTduE", "matchPool": "90qpzzNg", "maxPlayers": 3, "minPlayers": 24, "preferredClaimKeys": ["9A9cl9Zk", "UINY4fqU", "OzLFuU9N"], "requestedRegions": ["ngYMGScO", "j3WCKE3U", "39LtBtWg"], "serverName": "XLClkqZR", "storage": {"leader": {"N72Bz8pD": {}, "TmSJYXbQ": {}, "jeEHBGI1": {}}}, "teams": [{"parties": [{"partyID": "cVdQ1lRn", "userIDs": ["Nbx18R6J", "U8VAAmbo", "EjU16sMZ"]}, {"partyID": "s6rcQwOg", "userIDs": ["nIMD94nP", "Ty8R7bK2", "MovHTJSj"]}, {"partyID": "loyXrEkD", "userIDs": ["abJCOSb9", "z8HkwDB8", "QicYq7EP"]}], "teamID": "LoNVP2bI", "userIDs": ["0t7gyZiv", "Lfy5Mf3X", "lRMd9qMk"]}, {"parties": [{"partyID": "A7b1Aarz", "userIDs": ["CXYMyP3G", "ahn1wqxk", "KN2Tgn8P"]}, {"partyID": "1ITYHRqT", "userIDs": ["82QOa8wZ", "c5ulnivs", "wlTj0NOv"]}, {"partyID": "zFwgcYwK", "userIDs": ["bt50Ts2R", "LVH5apeI", "7O09c4bJ"]}], "teamID": "mfKgD7zR", "userIDs": ["Ife5tUyl", "oyeTZcrW", "pBLbsgzb"]}, {"parties": [{"partyID": "2mFZW3Jq", "userIDs": ["HlNEcSoX", "4XNrbz6y", "xCDZWdRh"]}, {"partyID": "vKjrspfh", "userIDs": ["qPPxAQVC", "gKpxYeng", "Imnc2gjz"]}, {"partyID": "oimJIfSi", "userIDs": ["qSfWmWIi", "KCn87Jhy", "qL1rXZ9l"]}], "teamID": "W4hnehFp", "userIDs": ["XoC3MFJE", "gJdr4fTQ", "5yI3UcU3"]}], "textChat": false, "textChatMode": "GAME", "ticketIDs": ["m5Xy548E", "Z7WnwgRs", "KWxTpCY5"], "tieTeamsSessionLifetime": false, "type": "Uyce1LLc"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateGameSession' test.out

#- 50 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"iJoELjfv": {}, "yAAkgBQe": {}, "p3tuhxoO": {}}' \
    > test.out 2>&1
eval_tap $? 50 'PublicQueryGameSessionsByAttributes' test.out

#- 51 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "pIHX1EuL"}' \
    > test.out 2>&1
eval_tap $? 51 'PublicSessionJoinCode' test.out

#- 52 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'Wt2A1M1s' \
    > test.out 2>&1
eval_tap $? 52 'GetGameSessionByPodName' test.out

#- 53 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'nRZkZKrd' \
    > test.out 2>&1
eval_tap $? 53 'GetGameSession' test.out

#- 54 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'd5nehlxq' \
    --body '{"attributes": {"6CX6JzTk": {}, "32rLr8XZ": {}, "doDkLxz5": {}}, "backfillTicketID": "4tZaRbTg", "clientVersion": "jMX9C9Xr", "deployment": "DoTWuiSX", "fallbackClaimKeys": ["UWMI60rl", "6ubCtxAb", "ufwendCU"], "inactiveTimeout": 95, "inviteTimeout": 94, "joinability": "l9SDfktA", "matchPool": "YPgUtwHi", "maxPlayers": 77, "minPlayers": 34, "preferredClaimKeys": ["4FwAU6tz", "7dRM71dp", "DtVyfmNU"], "requestedRegions": ["QcISyRoq", "pkquEcFJ", "icp1aOWI"], "teams": [{"parties": [{"partyID": "01qyJJIY", "userIDs": ["CJwZb0aQ", "or3y2FQE", "KdA95K9C"]}, {"partyID": "MZfGIoX1", "userIDs": ["vrzBgfmo", "ruEo7GxA", "zlwgegoY"]}, {"partyID": "6v4etcBR", "userIDs": ["mXqEDZu3", "yLwA532Z", "dGBDXrhN"]}], "teamID": "5NN5b5Bj", "userIDs": ["eFpghGu1", "X2IPls7a", "2UREUSHQ"]}, {"parties": [{"partyID": "EoHIyXVc", "userIDs": ["RLemO0qc", "U2hjxGsS", "8UE3TDIj"]}, {"partyID": "mqdh9o7W", "userIDs": ["YdQFytpc", "H147cIyV", "GXJSIkhi"]}, {"partyID": "8tmEqsoo", "userIDs": ["toJNv8AV", "Xf3sceDS", "judc3YJk"]}], "teamID": "hUxiAdW0", "userIDs": ["rVVsWBTF", "zTtQrrzu", "t5WP01q3"]}, {"parties": [{"partyID": "yIdIeBOM", "userIDs": ["uyJYsxvn", "bHOXTRYO", "JdtSp2GS"]}, {"partyID": "YD6V81uV", "userIDs": ["TWocqs0T", "lfNZUWMQ", "kQ2wLTg4"]}, {"partyID": "ydSgyba8", "userIDs": ["sm0et84B", "Nm3Ri904", "k8gjylbw"]}], "teamID": "3V3gTSw8", "userIDs": ["KoyuIFVz", "h4gynYOY", "v9W96iOO"]}], "ticketIDs": ["xGCOSC0j", "5cb0FyMC", "jpcMcSEG"], "tieTeamsSessionLifetime": false, "type": "OtVUeH02", "version": 54}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGameSession' test.out

#- 55 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'CJtjl7eP' \
    > test.out 2>&1
eval_tap $? 55 'DeleteGameSession' test.out

#- 56 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'i0lbdNzP' \
    --body '{"attributes": {"w8cuxLnT": {}, "C72aDNs7": {}, "vFhHSuGz": {}}, "backfillTicketID": "IQVUOHGR", "clientVersion": "t47lLzrn", "deployment": "25Pibg0B", "fallbackClaimKeys": ["bS20kjdJ", "6c6rJzQP", "FiCoc7Xb"], "inactiveTimeout": 72, "inviteTimeout": 25, "joinability": "5DHoUtbm", "matchPool": "JxQcnbMM", "maxPlayers": 95, "minPlayers": 97, "preferredClaimKeys": ["VqobxXjr", "uUlVaXSm", "p79CEL1q"], "requestedRegions": ["XTEmgQL1", "8ZYm76vM", "oXYEgzBl"], "teams": [{"parties": [{"partyID": "8bo8S5Pu", "userIDs": ["aUzUuVVs", "DehItXa7", "b9H5cRyC"]}, {"partyID": "2im3DEOo", "userIDs": ["pywlfe4G", "6Tw0kmLh", "ursV5RDw"]}, {"partyID": "qQjGBTHX", "userIDs": ["rwIEAahQ", "tmfhYARD", "M7yGRKDY"]}], "teamID": "LC0daohJ", "userIDs": ["aY8MXmKR", "u5fftvAa", "uThlaAy0"]}, {"parties": [{"partyID": "9ThUIH9p", "userIDs": ["lczKcENc", "ch0O7JDs", "9cM5RZao"]}, {"partyID": "y0zCSZXn", "userIDs": ["pYKQd2Hp", "ewCYQrP1", "LJk5tK6b"]}, {"partyID": "crWNPN8e", "userIDs": ["dx0r9mWq", "rTUME9Q9", "fSs1XwTN"]}], "teamID": "b06TP1g7", "userIDs": ["EAp2yTfG", "7fVuGkS9", "o5ZQLgIa"]}, {"parties": [{"partyID": "eZbJaQYo", "userIDs": ["Ctc4rh8b", "SgA5nv6Z", "pNwGIioY"]}, {"partyID": "gXwUFuaK", "userIDs": ["lua6o5r5", "rWlU9CtB", "9Fm5N3gi"]}, {"partyID": "v9SwI1Ix", "userIDs": ["j6l5zlmw", "mCXK2GsT", "zgxa8qFy"]}], "teamID": "YZsJdqmq", "userIDs": ["whOpV86C", "8QjQ2KjQ", "yt4ThiUx"]}], "ticketIDs": ["D5S4kfbc", "sVlztaJH", "SEigb5ac"], "tieTeamsSessionLifetime": true, "type": "H50nSONc", "version": 70}' \
    > test.out 2>&1
eval_tap $? 56 'PatchUpdateGameSession' test.out

#- 57 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'G0RUdz3q' \
    --body '{"backfillTicketID": "SFCb6zdT"}' \
    > test.out 2>&1
eval_tap $? 57 'UpdateGameSessionBackfillTicketID' test.out

#- 58 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'HwXNGaDd' \
    > test.out 2>&1
eval_tap $? 58 'GameSessionGenerateCode' test.out

#- 59 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'GqcnoNab' \
    > test.out 2>&1
eval_tap $? 59 'PublicRevokeGameSessionCode' test.out

#- 60 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'iRYXA4zH' \
    --body '{"metadata": {"7BsVjLDa": "n9yoQq7W", "FeAZ1L9v": "zwvyy6iF", "XNm8Fw8d": "4g2c4yKB"}, "platformID": "RrLAZOyV", "userID": "nuqgCz6i"}' \
    > test.out 2>&1
eval_tap $? 60 'PublicGameSessionInvite' test.out

#- 61 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'AunpkasX' \
    > test.out 2>&1
eval_tap $? 61 'JoinGameSession' test.out

#- 62 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'G4qEJnAl' \
    --body '{"leaderID": "vyH2CWRT"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicPromoteGameSessionLeader' test.out

#- 63 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'uPp6k8nF' \
    > test.out 2>&1
eval_tap $? 63 'LeaveGameSession' test.out

#- 64 PublicKickGameSessionMember
samples/cli/sample-apps Session publicKickGameSessionMember \
    --memberId 'onuZGTso' \
    --namespace $AB_NAMESPACE \
    --sessionId 'WtTc1kVr' \
    > test.out 2>&1
eval_tap $? 64 'PublicKickGameSessionMember' test.out

#- 65 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'jzg2K0kj' \
    > test.out 2>&1
eval_tap $? 65 'PublicGameSessionReject' test.out

#- 66 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId 't669bXsE' \
    > test.out 2>&1
eval_tap $? 66 'GetSessionServerSecret' test.out

#- 67 AppendTeamGameSession
eval_tap 0 67 'AppendTeamGameSession # SKIP deprecated' test.out

#- 68 PublicGameSessionCancel
samples/cli/sample-apps Session publicGameSessionCancel \
    --namespace $AB_NAMESPACE \
    --sessionId '48QiVSA0' \
    --userId 'EQNcHkGZ' \
    > test.out 2>&1
eval_tap $? 68 'PublicGameSessionCancel' test.out

#- 69 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "JGcfTrmm"}' \
    > test.out 2>&1
eval_tap $? 69 'PublicPartyJoinCode' test.out

#- 70 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'tPmV8QmW' \
    > test.out 2>&1
eval_tap $? 70 'PublicGetParty' test.out

#- 71 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId '8wikTdiv' \
    --body '{"attributes": {"OYUjpSOW": {}, "1TbJX0sH": {}, "616RyOLi": {}}, "inactiveTimeout": 100, "inviteTimeout": 38, "joinability": "PLgsERW7", "maxPlayers": 94, "minPlayers": 11, "type": "Z5z7K49Z", "version": 74}' \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdateParty' test.out

#- 72 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'I8QNBgPP' \
    --body '{"attributes": {"s3OgGByz": {}, "Gn302Yf3": {}, "bkK6nBik": {}}, "inactiveTimeout": 64, "inviteTimeout": 98, "joinability": "ljkmxKiu", "maxPlayers": 89, "minPlayers": 93, "type": "7ut7yxbB", "version": 17}' \
    > test.out 2>&1
eval_tap $? 72 'PublicPatchUpdateParty' test.out

#- 73 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId '75AaFozW' \
    > test.out 2>&1
eval_tap $? 73 'PublicGeneratePartyCode' test.out

#- 74 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId '5XkxRLmQ' \
    > test.out 2>&1
eval_tap $? 74 'PublicRevokePartyCode' test.out

#- 75 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'j5uqrMd0' \
    --body '{"metadata": {"AaOV8MFR": "2f9GA1ZV", "NcTRY5RN": "d8z4Itgw", "4dZHi6Ww": "fCU55vqA"}, "platformID": "KorBTgKs", "userID": "9p3K774A"}' \
    > test.out 2>&1
eval_tap $? 75 'PublicPartyInvite' test.out

#- 76 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId '0dNyXTvL' \
    --body '{"leaderID": "6OsfqDzf"}' \
    > test.out 2>&1
eval_tap $? 76 'PublicPromotePartyLeader' test.out

#- 77 PublicReadPartySessionStorage
samples/cli/sample-apps Session publicReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId 'L7euHqUm' \
    > test.out 2>&1
eval_tap $? 77 'PublicReadPartySessionStorage' test.out

#- 78 PublicUpdateInsertPartySessionStorageReserved
samples/cli/sample-apps Session publicUpdateInsertPartySessionStorageReserved \
    --namespace $AB_NAMESPACE \
    --partyId '8oUZXmDe' \
    --userId 'Slqjnz6G' \
    --body '{"PwRZzQzc": {}, "OXfOpOUc": {}, "iCGi0DX0": {}}' \
    > test.out 2>&1
eval_tap $? 78 'PublicUpdateInsertPartySessionStorageReserved' test.out

#- 79 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'gEd4K7QY' \
    > test.out 2>&1
eval_tap $? 79 'PublicPartyJoin' test.out

#- 80 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'vRhOY4oq' \
    > test.out 2>&1
eval_tap $? 80 'PublicPartyLeave' test.out

#- 81 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'vOyU9xYY' \
    > test.out 2>&1
eval_tap $? 81 'PublicPartyReject' test.out

#- 82 PublicPartyCancel
samples/cli/sample-apps Session publicPartyCancel \
    --namespace $AB_NAMESPACE \
    --partyId 'JaUAP7Iy' \
    --userId 'slewAep3' \
    > test.out 2>&1
eval_tap $? 82 'PublicPartyCancel' test.out

#- 83 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'RnHZjIve' \
    --userId 'HtFJ8y7K' \
    > test.out 2>&1
eval_tap $? 83 'PublicPartyKick' test.out

#- 84 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"EDGPgEp9": {}, "ME17ZArV": {}, "SPykJG9y": {}}, "configurationName": "TltF3hNS", "inactiveTimeout": 93, "inviteTimeout": 100, "joinability": "4tBmFel6", "maxPlayers": 19, "members": [{"ID": "eQ5lKkHj", "PlatformID": "FpvPL6UR", "PlatformUserID": "43jH7weZ"}, {"ID": "keu9EEKC", "PlatformID": "zRthSRoO", "PlatformUserID": "w9Gitmhy"}, {"ID": "nKuxcroC", "PlatformID": "KhB4CYYw", "PlatformUserID": "Pdcdumd5"}], "minPlayers": 71, "textChat": false, "type": "mG8Bm67Z"}' \
    > test.out 2>&1
eval_tap $? 84 'PublicCreateParty' test.out

#- 85 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    > test.out 2>&1
eval_tap $? 85 'PublicGetRecentPlayer' test.out

#- 86 PublicGetRecentTeamPlayer
samples/cli/sample-apps Session publicGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetRecentTeamPlayer' test.out

#- 87 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'sQZWHMwC' \
    --body '{"3sT1hRCx": {}, "Li9JQQV1": {}, "Xx6UyJA4": {}}' \
    > test.out 2>&1
eval_tap $? 87 'PublicUpdateInsertSessionStorageLeader' test.out

#- 88 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'sr7ibsez' \
    --userId 'KaIWsyGm' \
    --body '{"WK5fXRr8": {}, "YmZWkKdz": {}, "7ZBsfGkm": {}}' \
    > test.out 2>&1
eval_tap $? 88 'PublicUpdateInsertSessionStorage' test.out

#- 89 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["8yQAvjKl", "XIoJ4Jwx", "i8RzG7jR"]}' \
    > test.out 2>&1
eval_tap $? 89 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 90 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 90 'PublicGetPlayerAttributes' test.out

#- 91 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": true, "currentPlatform": "cmavlOIQ", "data": {"mbIkHlNU": {}, "3cN6u6zB": {}, "Oq0nDKbb": {}}, "platforms": [{"name": "w1gy2vXh", "userID": "ZGbrCq2c"}, {"name": "ywctu5rl", "userID": "y4g351Fy"}, {"name": "e3exiOxi", "userID": "dpkvFYOI"}], "roles": ["X7OKB9ll", "mjkn4PYK", "bBy7Q0cq"], "simultaneousPlatform": "znGw93T9"}' \
    > test.out 2>&1
eval_tap $? 91 'PublicStorePlayerAttributes' test.out

#- 92 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 92 'PublicDeletePlayerAttributes' test.out

#- 93 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'oGneCWPM' \
    --orderBy 'Azd2PHtE' \
    --status '5OPWdhEY' \
    > test.out 2>&1
eval_tap $? 93 'PublicQueryMyGameSessions' test.out

#- 94 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'EvQt8eid' \
    --orderBy 'mx1nuiMh' \
    --status 'HWDWC7wl' \
    > test.out 2>&1
eval_tap $? 94 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE