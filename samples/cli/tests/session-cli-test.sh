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
    --body '{"logLevel": "panic"}' \
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
    --body '{"metricExcludedNamespaces": ["XG6Ut2hz", "92LBvBGE", "ewJB1E62"], "regionRetryMapping": {"PWY4HUVG": ["Bw0m5pgO", "rs0GirA4", "OhZD5hr7"], "QitTDwLk": ["OlpydIiT", "FKmT1rI1", "vEci9ZlA"], "HB11peNe": ["JjZAq5ZL", "2OEbGvjf", "vq2eWYjt"]}, "regionURLMapping": ["KFHB29q6", "XD2AswUM", "RGZCbUs5"], "testGameMode": "02INoriR", "testRegionURLMapping": ["zxtwxq1W", "Ul7ZcnOx", "GkFuZreT"], "testTargetUserIDs": ["YQiezWPq", "YvgJDUkf", "JmJ6G1CH"]}' \
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
    --body '{"durationDays": 38}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationAlertV1' test.out

#- 13 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 32}' \
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
    --body '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["UPDATE_INVITABLE_USER_TYPE", "PROMOTE_TO_LEADER", "UPDATE_INVITABLE_USER_TYPE"], "PSNServiceLabel": 43, "PSNSupportedPlatforms": ["0chQG5PN", "mE4RXuCt", "rxLl7zjQ"], "SessionTitle": "p1oG410e", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "qWvLIgNH", "XboxServiceConfigID": "SXghK7iT", "XboxSessionTemplateName": "k6ep2t84", "XboxTitleID": "ilfUYsCO", "localizedSessionName": {"lEPRAvso": {}, "hy1vxaEn": {}, "KvOxqbZU": {}}}, "PSNBaseUrl": "m5oe1Z3X", "amsClaimTimeoutMinutes": 58, "appName": "RcarC8dd", "asyncProcessDSRequest": {"async": false, "timeout": 47}, "attributes": {"N9GMIqom": {}, "YqcMSWPw": {}, "FmGSca4S": {}}, "autoJoin": true, "autoLeaveSession": true, "clientVersion": "9NMYLJzc", "customURLGRPC": "WLcLQyLi", "deployment": "UIjxfDJ5", "disableCodeGeneration": false, "disableResendInvite": false, "dsManualSetReady": true, "dsSource": "cFp7yoYf", "enableSecret": false, "fallbackClaimKeys": ["k5H711n7", "KrvDS6SI", "8akOot40"], "grpcSessionConfig": {"appName": "Rdp0wZhM", "customURL": "lfXaVLLF", "functionFlag": 34}, "immutableStorage": false, "inactiveTimeout": 7, "inviteTimeout": 79, "joinability": "CLOSED", "leaderElectionGracePeriod": 3, "manualRejoin": false, "maxActiveSessions": 95, "maxPlayers": 34, "minPlayers": 74, "name": "tf5pJdAR", "persistent": true, "preferredClaimKeys": ["gq0z0MKr", "PWvqicMR", "1A6IRQRH"], "requestedRegions": ["sYNFhVue", "oMh3tq7t", "bJJRp5Ao"], "textChat": false, "textChatMode": "NONE", "tieTeamsSessionLifetime": false, "ttlHours": 22, "type": "NONE"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateConfigurationTemplateV1' test.out

#- 17 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --name 'qTnSA1je' \
    --offset '82' \
    --order 'Wc02ttPh' \
    --orderBy 'CphnVsQT' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetAllConfigurationTemplatesV1' test.out

#- 18 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name '1zoNNcyE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigurationTemplateV1' test.out

#- 19 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'c5UBGzNa' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["UPDATE_INVITABLE_USER_TYPE", "PROMOTE_TO_LEADER", "KICK"], "PSNServiceLabel": 67, "PSNSupportedPlatforms": ["BNMw8LYO", "7dpRXERV", "Y5wXG6b8"], "SessionTitle": "1EHDpBcw", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "fWQC5cod", "XboxServiceConfigID": "a7XMnWSu", "XboxSessionTemplateName": "RhNQOVY0", "XboxTitleID": "pRmWTbbF", "localizedSessionName": {"36S0kawm": {}, "pyDR9gig": {}, "aHVZsa8a": {}}}, "PSNBaseUrl": "6BBicwcJ", "amsClaimTimeoutMinutes": 58, "appName": "roff6hWm", "asyncProcessDSRequest": {"async": true, "timeout": 53}, "attributes": {"3K1kqz33": {}, "qTP3tie3": {}, "0desH1Mf": {}}, "autoJoin": false, "autoLeaveSession": true, "clientVersion": "x57b3JSB", "customURLGRPC": "9Ak1JGAb", "deployment": "z3nOLqLJ", "disableCodeGeneration": true, "disableResendInvite": false, "dsManualSetReady": true, "dsSource": "TDFKJSpW", "enableSecret": true, "fallbackClaimKeys": ["Fa6Pj6rd", "RVeMvToH", "g3eroCgf"], "grpcSessionConfig": {"appName": "0N3w41cx", "customURL": "ObEjm8wP", "functionFlag": 35}, "immutableStorage": false, "inactiveTimeout": 80, "inviteTimeout": 68, "joinability": "INVITE_ONLY", "leaderElectionGracePeriod": 27, "manualRejoin": true, "maxActiveSessions": 94, "maxPlayers": 17, "minPlayers": 66, "name": "af5Yikos", "persistent": false, "preferredClaimKeys": ["lzbPS4eN", "ULEeYQz5", "e8Jziv1q"], "requestedRegions": ["ePekgl2e", "jsw3SiCr", "OXLlVf3K"], "textChat": false, "textChatMode": "GAME", "tieTeamsSessionLifetime": false, "ttlHours": 15, "type": "DS"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name '4AX3bGTk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 'qjI7KCNV' \
    --namespace $AB_NAMESPACE \
    --userId 'b5Z3GoMV' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'BNAOJvtA' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "KdYZ8qOy"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminReconcileMaxActiveSession' test.out

#- 23 AdminGetDSMCConfiguration
eval_tap 0 23 'AdminGetDSMCConfiguration # SKIP deprecated' test.out

#- 24 AdminSyncDSMCConfiguration
eval_tap 0 24 'AdminSyncDSMCConfiguration # SKIP deprecated' test.out

#- 25 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName 'IMIhAFo4' \
    --dsPodName 'c6WU2k42' \
    --fromTime 'ix1BlxlF' \
    --gameMode 'zoWwD1WD' \
    --isPersistent 'CC0VGCwi' \
    --isSoftDeleted 'p5SzgMoQ' \
    --joinability 'FRIENDS_OF_MEMBERS' \
    --limit '20' \
    --matchPool '1s80bHTS' \
    --memberID 'E3zHJhGk' \
    --offset '94' \
    --order 'i7QJV4l0' \
    --orderBy 'P7OwMrRE' \
    --sessionID 'qOu1qntD' \
    --status 'AVAILABLE' \
    --statusV2 'PREPARING' \
    --toTime 'X4ZhPC92' \
    > test.out 2>&1
eval_tap $? 25 'AdminQueryGameSessions' test.out

#- 26 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"TtSynCR6": {}, "jobKtmAx": {}, "JrORCevh": {}}' \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["rQ68GGIU", "J0WYOgbL", "RgO883PN"]}' \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'F4JCKdRt' \
    --body '{"ready": true}' \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminUpdateDSInformation
samples/cli/sample-apps Session adminUpdateDSInformation \
    --namespace $AB_NAMESPACE \
    --sessionId 'EtDevcP0' \
    --body '{"createdRegion": "x21wkUgw", "deployment": "0rTx7qAX", "description": "PBEzn8aB", "ip": "2KqQMZsc", "port": 20, "region": "cTn5JaRM", "serverId": "BSTeyKdS", "source": "lcnYusvZ", "status": "C1AnvABy"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateDSInformation' test.out

#- 30 AdminKickGameSessionMember
samples/cli/sample-apps Session adminKickGameSessionMember \
    --memberId 'bQ0TWLaA' \
    --namespace $AB_NAMESPACE \
    --sessionId 'iSjgBBT5' \
    > test.out 2>&1
eval_tap $? 30 'AdminKickGameSessionMember' test.out

#- 31 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'MWnHCGax' \
    --namespace $AB_NAMESPACE \
    --sessionId 'hKGJDORC' \
    --statusType 'WeNrnu5H' \
    > test.out 2>&1
eval_tap $? 31 'AdminUpdateGameSessionMember' test.out

#- 32 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '14' \
    --order 'zU2Rqnqd' \
    > test.out 2>&1
eval_tap $? 32 'AdminGetListNativeSession' test.out

#- 33 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --configurationName 'l0oz49LD' \
    --fromTime 'hA8HwBYQ' \
    --isSoftDeleted 'A7oqaQZ2' \
    --joinability 'CLOSED' \
    --key 'CPd975Rd' \
    --leaderID 'zfxOVtej' \
    --limit '100' \
    --memberID 'glpRta4k' \
    --memberStatus 'JOINED' \
    --offset '88' \
    --order '769BTlOh' \
    --orderBy 'Of46qijp' \
    --partyID 'FUpAtzVr' \
    --toTime 'y03XRzG5' \
    --value 'Qv62NNEe' \
    > test.out 2>&1
eval_tap $? 33 'AdminQueryParties' test.out

#- 34 AdminDeleteBulkParties
samples/cli/sample-apps Session adminDeleteBulkParties \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["JqjnsW2E", "nxegaTr0", "tnjnngAF"]}' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteBulkParties' test.out

#- 35 AdminReadPartySessionStorage
samples/cli/sample-apps Session adminReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId '3xD7qfXp' \
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
    --body '{"psn": {"clientId": "kCtDxLR8", "clientSecret": "JW2rfFJy", "scope": "XjoOdPfo"}}' \
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
    --limit '17' \
    --userId 'g8XSLKxg' \
    > test.out 2>&1
eval_tap $? 41 'AdminGetRecentPlayer' test.out

#- 42 AdminGetRecentTeamPlayer
samples/cli/sample-apps Session adminGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --userId 'vv4K0zaJ' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetRecentTeamPlayer' test.out

#- 43 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'qJ6vhXNo' \
    > test.out 2>&1
eval_tap $? 43 'AdminReadSessionStorage' test.out

#- 44 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'W2nRzUGj' \
    > test.out 2>&1
eval_tap $? 44 'AdminDeleteUserSessionStorage' test.out

#- 45 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'T7teJGsw' \
    --userId 'xNeulwol' \
    > test.out 2>&1
eval_tap $? 45 'AdminReadUserSessionStorage' test.out

#- 46 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'ks2f7vB3' \
    > test.out 2>&1
eval_tap $? 46 'AdminQueryPlayerAttributes' test.out

#- 47 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'Yk4Cd2oY' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetPlayerAttributes' test.out

#- 48 AdminSyncNativeSession
samples/cli/sample-apps Session adminSyncNativeSession \
    --namespace $AB_NAMESPACE \
    --userId 'i3rVmMQk' \
    > test.out 2>&1
eval_tap $? 48 'AdminSyncNativeSession' test.out

#- 49 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --resolveMaxActiveSession 'false' \
    --body '{"appName": "Faypm653", "attributes": {"p1oJYb54": {}, "xmSk4upQ": {}, "u1hHBMcX": {}}, "autoJoin": true, "backfillTicketID": "GoVo5Hvq", "clientVersion": "rXkiXtgL", "configurationName": "30ymXEFU", "customURLGRPC": "9kBBvJXZ", "deployment": "knUh9SWN", "dsSource": "YoMn5ie2", "fallbackClaimKeys": ["FdEWbf10", "XvPpYzaU", "nk6Nt7oO"], "inactiveTimeout": 96, "inviteTimeout": 64, "joinability": "FRIENDS_OF_FRIENDS", "matchPool": "pAiEFg0s", "maxPlayers": 88, "minPlayers": 68, "preferredClaimKeys": ["xr81fA8y", "r9Kqw0cS", "J0NP94zZ"], "requestedRegions": ["hYfQpEzp", "Pz3dJ353", "HtndcSCr"], "serverName": "dQDQbTKn", "storage": {"leader": {"wfT589mK": {}, "t2j7w0n5": {}, "wLI9zegv": {}}}, "teams": [{"parties": [{"partyID": "rVE8MeHT", "userIDs": ["uu6Ds6lx", "jiwcntCk", "EaaWIysp"]}, {"partyID": "0OQd36sz", "userIDs": ["gb8AiQZ9", "DU0vKGbF", "C0DB9DwE"]}, {"partyID": "cF8z4Ksu", "userIDs": ["hpcHrYxv", "N8jYJTmT", "98gzMwWr"]}], "teamID": "ODcwK8cu", "userIDs": ["cuHt3MWM", "9xO85t9W", "EH7Q9b21"]}, {"parties": [{"partyID": "ANA2cyhA", "userIDs": ["DOT116S9", "hPmpm2RX", "r9yCbT1b"]}, {"partyID": "aZHpifdY", "userIDs": ["6WSIg7g0", "Cw4bsMCM", "8ADfl5PI"]}, {"partyID": "HWG1L4yy", "userIDs": ["UXmLwEEP", "vMgWXfAz", "ZtrNzRPW"]}], "teamID": "1yzeVnl4", "userIDs": ["sfWMr3Fr", "0caYIwOS", "k85o1lVi"]}, {"parties": [{"partyID": "jVLz0wGo", "userIDs": ["NMV9tTJS", "hcBNstfl", "aDYpqgrk"]}, {"partyID": "mEQn7yWT", "userIDs": ["4ZEcmuSH", "KOuDvb8T", "1mskCHTL"]}, {"partyID": "hrVRy7gt", "userIDs": ["hIZ32upz", "rEIHcmnY", "mZIdKeqL"]}], "teamID": "L68GpiqV", "userIDs": ["CJk9pCN5", "eevrqaRO", "ulp0iaC6"]}], "textChat": false, "textChatMode": "NONE", "ticketIDs": ["wwlizUDR", "AiU0PSLb", "5D5JcFV1"], "tieTeamsSessionLifetime": true, "type": "NONE"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateGameSession' test.out

#- 50 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"W1unCiuw": {}, "13rStaYU": {}, "txH6nnAR": {}}' \
    > test.out 2>&1
eval_tap $? 50 'PublicQueryGameSessionsByAttributes' test.out

#- 51 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "mNkAroIv"}' \
    > test.out 2>&1
eval_tap $? 51 'PublicSessionJoinCode' test.out

#- 52 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'sUwn7FyY' \
    > test.out 2>&1
eval_tap $? 52 'GetGameSessionByPodName' test.out

#- 53 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'ydAZJ0Hj' \
    > test.out 2>&1
eval_tap $? 53 'GetGameSession' test.out

#- 54 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'kSkVRfaa' \
    --body '{"attributes": {"AQbH2qZr": {}, "CWhNzGZL": {}, "20YFjOxZ": {}}, "backfillTicketID": "5k26MKGD", "clientVersion": "cYIC77fK", "deployment": "119oDRVU", "fallbackClaimKeys": ["8bak8Xx3", "jbJHRbT3", "VhPGW4X5"], "inactiveTimeout": 87, "inviteTimeout": 53, "joinability": "FRIENDS_OF_FRIENDS", "matchPool": "wmfyigLm", "maxPlayers": 98, "minPlayers": 79, "preferredClaimKeys": ["FofBUAt1", "cSHCpss0", "JViiHpfa"], "requestedRegions": ["HKhVDwhF", "z6qhsP5E", "MhBV9i7h"], "teams": [{"parties": [{"partyID": "iygwvzhs", "userIDs": ["iVaI0q4T", "ebGYBnL6", "rUofSM9F"]}, {"partyID": "6r2JZRx9", "userIDs": ["xBmIYj6E", "Wq48EOh6", "n3v8mpMv"]}, {"partyID": "8Mw2OH5P", "userIDs": ["CSo7gckF", "M7hk7kqR", "yEs6JbR9"]}], "teamID": "8amEOdG0", "userIDs": ["PMBV8QNF", "EzyQo0Is", "h6idvgWV"]}, {"parties": [{"partyID": "wSk8MarL", "userIDs": ["qQ3X3dcC", "LgXrHwJU", "J41zhWXs"]}, {"partyID": "kFSnpcYt", "userIDs": ["sjh3x76c", "JsRUhpfp", "tzOAmBPR"]}, {"partyID": "ZdBC9uwk", "userIDs": ["wXQhgpWs", "d9ZdA4lc", "BU9VZH4W"]}], "teamID": "73oCYQWZ", "userIDs": ["HbBVzTdM", "ROi5l6xE", "hVWpLCh6"]}, {"parties": [{"partyID": "TDLI32zN", "userIDs": ["2MAVmlLa", "rAZhl3aE", "6vADlGBV"]}, {"partyID": "o69ABT71", "userIDs": ["1ss4Sesr", "FdwJGlbK", "TP0P4snJ"]}, {"partyID": "8arHvPqp", "userIDs": ["qXLsYX78", "nVSNU1f9", "9Utr6bbR"]}], "teamID": "K4LcxI8N", "userIDs": ["jwK5TLm7", "JHbsbM2b", "m57QjCGZ"]}], "ticketIDs": ["XAaE2pIY", "APlOH1nt", "Hsy70tZa"], "tieTeamsSessionLifetime": true, "type": "P2P", "version": 54}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGameSession' test.out

#- 55 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'EBIHIcd2' \
    > test.out 2>&1
eval_tap $? 55 'DeleteGameSession' test.out

#- 56 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '1HDfQHpG' \
    --body '{"attributes": {"klB6hwqx": {}, "gnY3oEIl": {}, "KWPr5tYU": {}}, "backfillTicketID": "Edjw7Dht", "clientVersion": "JIIvpls8", "deployment": "EszWYXF8", "fallbackClaimKeys": ["b1KhSUQE", "X7oVAf6d", "5y2opzoP"], "inactiveTimeout": 59, "inviteTimeout": 63, "joinability": "INVITE_ONLY", "matchPool": "Pbg4LegN", "maxPlayers": 49, "minPlayers": 37, "preferredClaimKeys": ["Q6zcesur", "8m8ZVmFb", "svSj6psO"], "requestedRegions": ["a0vVw9y7", "lQWMw697", "ISJtsKx5"], "teams": [{"parties": [{"partyID": "L3SVWQ6h", "userIDs": ["ggj250Fx", "lhBZOEIA", "2dqqbsqz"]}, {"partyID": "4kkAeeEu", "userIDs": ["rikHPmF6", "rYYzryiN", "DuOFt6Vj"]}, {"partyID": "gCaRgXBj", "userIDs": ["T5F0dujI", "xeOpMN6A", "HSTYcb1w"]}], "teamID": "W8Qnf0HX", "userIDs": ["lJ7R2qC0", "H52KDpdY", "wjxhaDaI"]}, {"parties": [{"partyID": "7ulQnzi6", "userIDs": ["cueWPWed", "uE0e2lqC", "2qasBWfY"]}, {"partyID": "aq7IllO5", "userIDs": ["aayeqUOF", "hU9mi6KU", "yLvQRD41"]}, {"partyID": "EUtKDgdd", "userIDs": ["DEeeaNrC", "INfR5ghb", "SGUiIwmd"]}], "teamID": "U7bXf80m", "userIDs": ["4MhWZvvU", "FwFhIhYM", "EvWtASxc"]}, {"parties": [{"partyID": "QtQvaVTN", "userIDs": ["SxZsVrfB", "s5YAUgs8", "ViUvIQXr"]}, {"partyID": "YuuUR5QM", "userIDs": ["elOsnYiL", "hSXIqXEA", "xNCXFeb5"]}, {"partyID": "4A816SQH", "userIDs": ["c84R1yFs", "wjJpUcym", "pmHkElZv"]}], "teamID": "bJ5inSQ4", "userIDs": ["SsWXJGES", "022ZrvUi", "nj4w9Ops"]}], "ticketIDs": ["w3P5DmXx", "t267DxsS", "GXeXYEzO"], "tieTeamsSessionLifetime": false, "type": "NONE", "version": 54}' \
    > test.out 2>&1
eval_tap $? 56 'PatchUpdateGameSession' test.out

#- 57 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'xGhLsQDS' \
    --body '{"backfillTicketID": "TETShsQR"}' \
    > test.out 2>&1
eval_tap $? 57 'UpdateGameSessionBackfillTicketID' test.out

#- 58 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'Q7RLZ89A' \
    > test.out 2>&1
eval_tap $? 58 'GameSessionGenerateCode' test.out

#- 59 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'F3s04YYD' \
    > test.out 2>&1
eval_tap $? 59 'PublicRevokeGameSessionCode' test.out

#- 60 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId '0dD26zSu' \
    --body '{"metadata": {"2VNuWpNs": "yoYTclMI", "UpICf7Sa": "trqOxy1M", "ZgxjNPbw": "DoSzF0Gc"}, "platformID": "xDDTGGYu", "userID": "kAKxdUmw"}' \
    > test.out 2>&1
eval_tap $? 60 'PublicGameSessionInvite' test.out

#- 61 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'daNFulXh' \
    > test.out 2>&1
eval_tap $? 61 'JoinGameSession' test.out

#- 62 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId '3io2dAgY' \
    --body '{"leaderID": "68Axc2nV"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicPromoteGameSessionLeader' test.out

#- 63 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'M3tcY80T' \
    > test.out 2>&1
eval_tap $? 63 'LeaveGameSession' test.out

#- 64 PublicKickGameSessionMember
samples/cli/sample-apps Session publicKickGameSessionMember \
    --memberId 'rn8W9oFH' \
    --namespace $AB_NAMESPACE \
    --sessionId 'Bzv0hFSB' \
    > test.out 2>&1
eval_tap $? 64 'PublicKickGameSessionMember' test.out

#- 65 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'ae62XNZK' \
    > test.out 2>&1
eval_tap $? 65 'PublicGameSessionReject' test.out

#- 66 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId 'SJKFkNOd' \
    > test.out 2>&1
eval_tap $? 66 'GetSessionServerSecret' test.out

#- 67 AppendTeamGameSession
eval_tap 0 67 'AppendTeamGameSession # SKIP deprecated' test.out

#- 68 PublicGameSessionCancel
samples/cli/sample-apps Session publicGameSessionCancel \
    --namespace $AB_NAMESPACE \
    --sessionId '0Rkna8k5' \
    --userId 'UVYa07p3' \
    > test.out 2>&1
eval_tap $? 68 'PublicGameSessionCancel' test.out

#- 69 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "BMGjE0we"}' \
    > test.out 2>&1
eval_tap $? 69 'PublicPartyJoinCode' test.out

#- 70 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'iWNnnwLm' \
    > test.out 2>&1
eval_tap $? 70 'PublicGetParty' test.out

#- 71 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'tKROmTWo' \
    --body '{"attributes": {"6SlQnHZY": {}, "8SNXncMP": {}, "8aBWglJy": {}}, "inactiveTimeout": 66, "inviteTimeout": 71, "joinability": "FRIENDS_OF_FRIENDS", "maxPlayers": 48, "minPlayers": 62, "type": "DS", "version": 75}' \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdateParty' test.out

#- 72 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'ma5ztIXJ' \
    --body '{"attributes": {"GsC35sDg": {}, "w5QXGbTE": {}, "FxHbITDC": {}}, "inactiveTimeout": 42, "inviteTimeout": 14, "joinability": "FRIENDS_OF_LEADER", "maxPlayers": 60, "minPlayers": 14, "type": "NONE", "version": 45}' \
    > test.out 2>&1
eval_tap $? 72 'PublicPatchUpdateParty' test.out

#- 73 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'OrhztJFa' \
    > test.out 2>&1
eval_tap $? 73 'PublicGeneratePartyCode' test.out

#- 74 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'olP9eBwL' \
    > test.out 2>&1
eval_tap $? 74 'PublicRevokePartyCode' test.out

#- 75 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'qb0G5SkZ' \
    --body '{"metadata": {"WMWKmTX0": "oIRWK8RJ", "HkjXYaNW": "nbUspKxE", "cNExEax1": "6ptn9go0"}, "platformID": "gFIhrS06", "userID": "DMdVYv8e"}' \
    > test.out 2>&1
eval_tap $? 75 'PublicPartyInvite' test.out

#- 76 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'U2fwJgCt' \
    --body '{"leaderID": "LVofQatf"}' \
    > test.out 2>&1
eval_tap $? 76 'PublicPromotePartyLeader' test.out

#- 77 PublicReadPartySessionStorage
samples/cli/sample-apps Session publicReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId '7tchByxi' \
    > test.out 2>&1
eval_tap $? 77 'PublicReadPartySessionStorage' test.out

#- 78 PublicUpdateInsertPartySessionStorageReserved
samples/cli/sample-apps Session publicUpdateInsertPartySessionStorageReserved \
    --namespace $AB_NAMESPACE \
    --partyId 'wzXYcWrz' \
    --userId 'q7Ny8qfj' \
    --body '{"HZgJ94iw": {}, "cgBDW9MA": {}, "dJKMwuYk": {}}' \
    > test.out 2>&1
eval_tap $? 78 'PublicUpdateInsertPartySessionStorageReserved' test.out

#- 79 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'pOGkJekO' \
    > test.out 2>&1
eval_tap $? 79 'PublicPartyJoin' test.out

#- 80 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId '0YcyL0Wo' \
    > test.out 2>&1
eval_tap $? 80 'PublicPartyLeave' test.out

#- 81 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'fpDXvVBk' \
    > test.out 2>&1
eval_tap $? 81 'PublicPartyReject' test.out

#- 82 PublicPartyCancel
samples/cli/sample-apps Session publicPartyCancel \
    --namespace $AB_NAMESPACE \
    --partyId 'o8dqSSsO' \
    --userId 'uQHlxUS0' \
    > test.out 2>&1
eval_tap $? 82 'PublicPartyCancel' test.out

#- 83 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'ehpghI1h' \
    --userId 'E0c9iUiI' \
    > test.out 2>&1
eval_tap $? 83 'PublicPartyKick' test.out

#- 84 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"nFB9PnNu": {}, "jZMH2Hpi": {}, "eEcpBgQ1": {}}, "configurationName": "4LOyN44v", "inactiveTimeout": 11, "inviteTimeout": 55, "joinability": "FRIENDS_OF_MEMBERS", "maxPlayers": 72, "members": [{"ID": "v1q3Do6A", "PlatformID": "hsFXnUvE", "PlatformUserID": "Cs6Fq8YV"}, {"ID": "KhTBX7Vq", "PlatformID": "G4RV9hL5", "PlatformUserID": "96yDwv6K"}, {"ID": "lPbwedI8", "PlatformID": "SuNI40Gm", "PlatformUserID": "0lFgPtwT"}], "minPlayers": 42, "textChat": true, "type": "DS"}' \
    > test.out 2>&1
eval_tap $? 84 'PublicCreateParty' test.out

#- 85 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    > test.out 2>&1
eval_tap $? 85 'PublicGetRecentPlayer' test.out

#- 86 PublicGetRecentTeamPlayer
samples/cli/sample-apps Session publicGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetRecentTeamPlayer' test.out

#- 87 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'TWYx70tF' \
    --body '{"spYCY3si": {}, "r5ToEi9w": {}, "vXE1RbTc": {}}' \
    > test.out 2>&1
eval_tap $? 87 'PublicUpdateInsertSessionStorageLeader' test.out

#- 88 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'gruPl0Qz' \
    --userId 'ZG92MROp' \
    --body '{"use8F71l": {}, "iPbhTAbz": {}, "dpFXzAOn": {}}' \
    > test.out 2>&1
eval_tap $? 88 'PublicUpdateInsertSessionStorage' test.out

#- 89 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["SImVnR38", "oIvMdG32", "hhrPafA5"]}' \
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
    --body '{"crossplayEnabled": false, "currentPlatform": "T8RkBbrP", "data": {"Ewco49sr": {}, "G5St5MfZ": {}, "Zmlo6BV2": {}}, "platforms": [{"name": "ioqArBFw", "userID": "IYVsbfmm"}, {"name": "LLZBtEx1", "userID": "M7RjivcZ"}, {"name": "CNDn6F1y", "userID": "nXl3Cgv1"}], "roles": ["CHAu0ACP", "tfMtYhLd", "hI4nHpm1"], "simultaneousPlatform": "EhbT95qZ"}' \
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
    --order 'xSJK1FqB' \
    --orderBy 'konogASO' \
    --status 'fMjPzzPC' \
    > test.out 2>&1
eval_tap $? 93 'PublicQueryMyGameSessions' test.out

#- 94 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'eHqBAYw7' \
    --orderBy 'KEiDri05' \
    --status 'ONo7pOww' \
    > test.out 2>&1
eval_tap $? 94 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE