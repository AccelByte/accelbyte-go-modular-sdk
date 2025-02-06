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
    --body '{"logLevel": "warning"}' \
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
    --body '{"metricExcludedNamespaces": ["M1Rp27HJ", "LnRjYVhP", "bj3QOJ4y"], "regionRetryMapping": {"B2Bjjojt": ["Ovzv4unF", "XxZW8vSq", "xDgGZHWq"], "5FPeRqPH": ["oFhtRKHM", "msobgxkQ", "itbzrX0u"], "Fzv9YxJh": ["VJQ81MlV", "GAHd2dWg", "1fel4sDK"]}, "regionURLMapping": ["87O2e9Bi", "KETAI9YV", "rKMuaUaF"], "testGameMode": "QXZUQpem", "testRegionURLMapping": ["g9YhTacQ", "jYRPjemG", "30cX9bxB"], "testTargetUserIDs": ["rUeGDFBQ", "R5bwNBlt", "OYXishms"]}' \
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
    --body '{"durationDays": 3}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationAlertV1' test.out

#- 13 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 100}' \
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
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 94, "PSNSupportedPlatforms": ["5Z4IaICv", "MNYfcVD1", "uzUAml44"], "SessionTitle": "S1DQdLjk", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "8UlsR8p4", "XboxServiceConfigID": "Vm5Bkf18", "XboxSessionTemplateName": "b9rlWJg9", "XboxTitleID": "uGhglhkC", "localizedSessionName": {"qvU6Kys9": {}, "CZ1TH861": {}, "mfvMmTVi": {}}}, "PSNBaseUrl": "KfcPavTr", "appName": "erK0WzXQ", "asyncProcessDSRequest": {"async": true, "timeout": 44}, "attributes": {"UsPUXyNX": {}, "44YdCgJ5": {}, "5AepwaBp": {}}, "autoJoin": true, "autoLeaveSession": true, "clientVersion": "vOea0OOX", "customURLGRPC": "2WXU27CA", "deployment": "NL2qBbMa", "disableCodeGeneration": true, "disableResendInvite": true, "dsManualSetReady": true, "dsSource": "MnelqbvG", "enableSecret": true, "fallbackClaimKeys": ["x4MzDUKL", "tPjejf1T", "MWVMQd6L"], "grpcSessionConfig": {"appName": "NQM0OgPz", "customURL": "KKzp7jZI", "functionFlag": 86}, "immutableStorage": true, "inactiveTimeout": 6, "inviteTimeout": 50, "joinability": "eqPZgGgz", "leaderElectionGracePeriod": 92, "manualRejoin": false, "maxActiveSessions": 66, "maxPlayers": 20, "minPlayers": 94, "name": "2Au1dbtM", "persistent": true, "preferredClaimKeys": ["acsaPCXV", "uBKnANZa", "eT9W8dNq"], "requestedRegions": ["y5cH2pmA", "aPf8Zsfk", "tcWClTaC"], "textChat": true, "textChatMode": "TEAM", "tieTeamsSessionLifetime": false, "type": "ccWgZxbq"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateConfigurationTemplateV1' test.out

#- 17 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --name 'HtaKcZxP' \
    --offset '4' \
    --order 'OFlId82x' \
    --orderBy 'MhRlIyfA' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetAllConfigurationTemplatesV1' test.out

#- 18 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'NDtbMJy0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigurationTemplateV1' test.out

#- 19 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'DBAsSYzx' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 76, "PSNSupportedPlatforms": ["mcsA3wi5", "WyIYEbNs", "02XKVaFC"], "SessionTitle": "jSSQFnxH", "ShouldSync": false, "XboxAllowCrossPlatform": true, "XboxSandboxID": "EblepgNz", "XboxServiceConfigID": "Qt11NDFA", "XboxSessionTemplateName": "J27c9dWs", "XboxTitleID": "bD8qm5Q2", "localizedSessionName": {"xyiRRZmW": {}, "yzGawiv0": {}, "3u2uXxcZ": {}}}, "PSNBaseUrl": "XqxLC0re", "appName": "mxUE3MnU", "asyncProcessDSRequest": {"async": true, "timeout": 86}, "attributes": {"pAZ1MZDd": {}, "VYCVophz": {}, "ufqJH9LW": {}}, "autoJoin": true, "autoLeaveSession": true, "clientVersion": "PXerWmYm", "customURLGRPC": "Xq3Rjb9X", "deployment": "O5q1KeVa", "disableCodeGeneration": true, "disableResendInvite": false, "dsManualSetReady": true, "dsSource": "T6ROXZcf", "enableSecret": false, "fallbackClaimKeys": ["z3rsBaHu", "4Gr7EKD0", "e8jn87Ms"], "grpcSessionConfig": {"appName": "dkg5EbXw", "customURL": "cjU6KifL", "functionFlag": 41}, "immutableStorage": true, "inactiveTimeout": 37, "inviteTimeout": 38, "joinability": "DCCuo68Q", "leaderElectionGracePeriod": 7, "manualRejoin": true, "maxActiveSessions": 66, "maxPlayers": 58, "minPlayers": 15, "name": "0dcezy0S", "persistent": false, "preferredClaimKeys": ["T57iVfAb", "e5KqWRSO", "2epHg1P0"], "requestedRegions": ["WDpykRWe", "ulyNWINJ", "9WzG6Xog"], "textChat": false, "textChatMode": "NONE", "tieTeamsSessionLifetime": false, "type": "PKTViigm"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name '8vJlh3vq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 'JzBoa9Y0' \
    --namespace $AB_NAMESPACE \
    --userId 'tb8VZlbU' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name '6Dm1qoY5' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "PZ6tc5uY"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminReconcileMaxActiveSession' test.out

#- 23 AdminGetDSMCConfiguration
eval_tap 0 23 'AdminGetDSMCConfiguration # SKIP deprecated' test.out

#- 24 AdminSyncDSMCConfiguration
eval_tap 0 24 'AdminSyncDSMCConfiguration # SKIP deprecated' test.out

#- 25 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName 'jtMIktfl' \
    --dsPodName 'GgzwM0xR' \
    --fromTime 'qPGZ7pER' \
    --gameMode 'n9Q9BKEx' \
    --isPersistent 'GM0z9KB9' \
    --isSoftDeleted 'M9YDAtEc' \
    --joinability 'SlmCDMll' \
    --limit '64' \
    --matchPool '5izvOV9v' \
    --memberID 'i6UqNAYi' \
    --offset '60' \
    --order 'rzRz55xW' \
    --orderBy 'YkTCheG4' \
    --sessionID 'pEtranpF' \
    --status 'yu0SZKvF' \
    --statusV2 'vBLUDMJ9' \
    --toTime 'E0e1ECeR' \
    > test.out 2>&1
eval_tap $? 25 'AdminQueryGameSessions' test.out

#- 26 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"03cOBj6Q": {}, "jjYkIb89": {}, "eaz7yOrV": {}}' \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["7opaFWlE", "y1aBnTiO", "I3j7a8DH"]}' \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'ENG5kzTm' \
    --body '{"ready": true}' \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminUpdateDSInformation
samples/cli/sample-apps Session adminUpdateDSInformation \
    --namespace $AB_NAMESPACE \
    --sessionId 'DA17Ubfp' \
    --body '{"clientVersion": "9Dx8IQRs", "createdRegion": "SX1iCXmz", "deployment": "Ud6ypIsy", "description": "zmvDIMyo", "gameMode": "NO7eNWiJ", "ip": "1wR6nUyZ", "port": 35, "region": "hXE4lnQF", "serverId": "rxEtbrNH", "source": "TYSdkGeV", "status": "Ix6TF7d2"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateDSInformation' test.out

#- 30 AdminKickGameSessionMember
samples/cli/sample-apps Session adminKickGameSessionMember \
    --memberId 'Ig4dY5VZ' \
    --namespace $AB_NAMESPACE \
    --sessionId 'SFl6Smul' \
    > test.out 2>&1
eval_tap $? 30 'AdminKickGameSessionMember' test.out

#- 31 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'VQeRcVtM' \
    --namespace $AB_NAMESPACE \
    --sessionId 'tGejcp7z' \
    --statusType '6guDyVyu' \
    > test.out 2>&1
eval_tap $? 31 'AdminUpdateGameSessionMember' test.out

#- 32 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '26' \
    --order 'oJZKdLAy' \
    > test.out 2>&1
eval_tap $? 32 'AdminGetListNativeSession' test.out

#- 33 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --isSoftDeleted 'UDjGZ0Nw' \
    --joinability 'rul3Qxi7' \
    --key 'p5qny3dY' \
    --leaderID 'JOuuzuR0' \
    --limit '11' \
    --memberID 'KhTp384v' \
    --memberStatus 'oPtmp9lx' \
    --offset '73' \
    --order 'z9iNjB0k' \
    --orderBy 'b4gNT72k' \
    --partyID 'pzOnpMPh' \
    --value 'KgopnFjv' \
    > test.out 2>&1
eval_tap $? 33 'AdminQueryParties' test.out

#- 34 AdminDeleteBulkParties
samples/cli/sample-apps Session adminDeleteBulkParties \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["2mgWEYNI", "0WxLe2dy", "UfbN0bkY"]}' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteBulkParties' test.out

#- 35 AdminReadPartySessionStorage
samples/cli/sample-apps Session adminReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId 'PS7aPmmA' \
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
    --body '{"psn": {"clientId": "cRS389x6", "clientSecret": "Jxsy8PRe", "scope": "awkmkppm"}}' \
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
    --limit '38' \
    --userId 'fh69VOWV' \
    > test.out 2>&1
eval_tap $? 41 'AdminGetRecentPlayer' test.out

#- 42 AdminGetRecentTeamPlayer
samples/cli/sample-apps Session adminGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --userId '0ZPP4eIi' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetRecentTeamPlayer' test.out

#- 43 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId '1VxzfxHw' \
    > test.out 2>&1
eval_tap $? 43 'AdminReadSessionStorage' test.out

#- 44 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'IyAKmKZz' \
    > test.out 2>&1
eval_tap $? 44 'AdminDeleteUserSessionStorage' test.out

#- 45 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'GwIpSWxK' \
    --userId 'MTm7TUvZ' \
    > test.out 2>&1
eval_tap $? 45 'AdminReadUserSessionStorage' test.out

#- 46 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users '2rbANS8T' \
    > test.out 2>&1
eval_tap $? 46 'AdminQueryPlayerAttributes' test.out

#- 47 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'PCrYjQqh' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetPlayerAttributes' test.out

#- 48 AdminSyncNativeSession
samples/cli/sample-apps Session adminSyncNativeSession \
    --namespace $AB_NAMESPACE \
    --userId 'tcCpZ4kp' \
    > test.out 2>&1
eval_tap $? 48 'AdminSyncNativeSession' test.out

#- 49 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "Mn6FQY80", "attributes": {"j9v8pqBv": {}, "FC1X2pDv": {}, "MTvrbZJz": {}}, "autoJoin": false, "backfillTicketID": "tVhHlKGH", "clientVersion": "4ei3FsyC", "configurationName": "HkHYpe0k", "customURLGRPC": "N0oBoB2O", "deployment": "CYyNe0K2", "dsSource": "hn9vEJCi", "fallbackClaimKeys": ["esaOGpgt", "MYCPl5MI", "2cYAfwRF"], "inactiveTimeout": 100, "inviteTimeout": 65, "joinability": "tMFbOTFk", "matchPool": "uBKQmGmS", "maxPlayers": 5, "minPlayers": 59, "preferredClaimKeys": ["hrJxhhWP", "1KyWU4Wg", "5YUoklVs"], "requestedRegions": ["Og0oFko3", "LkFWNrpq", "2SxCOTbW"], "serverName": "PTceoDwX", "storage": {"leader": {"6LmyDiBm": {}, "J7RA1GBG": {}, "wltKBJvb": {}}}, "teams": [{"parties": [{"partyID": "spIiRvPy", "userIDs": ["sNvsqrsV", "KIIag7aY", "Sj2OOcE5"]}, {"partyID": "8uWhdlAg", "userIDs": ["qR7N9TJf", "pWHO9FuU", "9ZTc1DF1"]}, {"partyID": "w6ugi0Jg", "userIDs": ["k5cHdgoS", "Kimhi3rr", "ltbEz3GD"]}], "teamID": "OGluUcth", "userIDs": ["1GwqX2Ck", "SE1s9xzA", "k7NQIe6y"]}, {"parties": [{"partyID": "3kIq0r9O", "userIDs": ["twRtZ1AQ", "3mdoVUxw", "TDS4tx1h"]}, {"partyID": "xGqq4o0Z", "userIDs": ["EiwBqldS", "DuCzQTt7", "dHJDDhPm"]}, {"partyID": "ILB25tCB", "userIDs": ["vKSNombV", "HybQQic7", "x7UThQiG"]}], "teamID": "KNlB1oAQ", "userIDs": ["U3mq16vG", "Ibxv5XEJ", "xo3s5df0"]}, {"parties": [{"partyID": "KkCN4evj", "userIDs": ["o7Y0mv6H", "rEKfCiuv", "whcSBErR"]}, {"partyID": "lARaA5fH", "userIDs": ["iJ6dNkv0", "B5Bykc8I", "egxjPGws"]}, {"partyID": "Ylrqh1MP", "userIDs": ["evb4X8Jw", "h7Viz4qL", "FxwNGUTS"]}], "teamID": "ITyxvyBu", "userIDs": ["xdg079o2", "HrTGlIeP", "hw9TxqU4"]}], "textChat": false, "textChatMode": "GAME", "ticketIDs": ["vZa0uD07", "wGwepgsA", "XbkMfoKj"], "tieTeamsSessionLifetime": true, "type": "JsVSzr5S"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateGameSession' test.out

#- 50 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"dlhpSG3C": {}, "h9vVOpBU": {}, "dUeStDsw": {}}' \
    > test.out 2>&1
eval_tap $? 50 'PublicQueryGameSessionsByAttributes' test.out

#- 51 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "AhSSzLEf"}' \
    > test.out 2>&1
eval_tap $? 51 'PublicSessionJoinCode' test.out

#- 52 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'vV66SVvW' \
    > test.out 2>&1
eval_tap $? 52 'GetGameSessionByPodName' test.out

#- 53 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'YMKookzc' \
    > test.out 2>&1
eval_tap $? 53 'GetGameSession' test.out

#- 54 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'eBKZqoB4' \
    --body '{"attributes": {"haz6V6vM": {}, "XX4iKhTq": {}, "bdLtR0cr": {}}, "backfillTicketID": "dHHvTj1j", "clientVersion": "tKWnY2bi", "deployment": "quel3a7w", "fallbackClaimKeys": ["nnf8CXC7", "cAbI0vv5", "qTBfzYAe"], "inactiveTimeout": 21, "inviteTimeout": 96, "joinability": "6hMlH4IB", "matchPool": "H8W0PjIV", "maxPlayers": 12, "minPlayers": 16, "preferredClaimKeys": ["0Mjh5jSp", "4lBEcwJ6", "MtR9WnPy"], "requestedRegions": ["aUPCGJnl", "MYPhI6yv", "cvLzMNI6"], "teams": [{"parties": [{"partyID": "x5H9X2OF", "userIDs": ["ZGjWrUts", "qJ7FiQt7", "i62f0u6E"]}, {"partyID": "yvCSyxfg", "userIDs": ["bnA2LeHg", "iaYtuXij", "RM60mX1e"]}, {"partyID": "jGlxu0s6", "userIDs": ["o2vzHvlq", "loVL7Wsy", "c4DMBFyN"]}], "teamID": "0oQqD6Lm", "userIDs": ["oDwGAeSH", "dEqsYfRN", "IkRdQgaM"]}, {"parties": [{"partyID": "glOVpnh0", "userIDs": ["tGKqkeZx", "Vjt4FbyL", "MUXU4gZd"]}, {"partyID": "BVwQrxCg", "userIDs": ["1GozIqVQ", "OJ74NDWN", "Q2du8RbC"]}, {"partyID": "clHswl2Z", "userIDs": ["e75G9m0e", "UlQ1W06n", "U1qLBBWU"]}], "teamID": "w9uwDfRV", "userIDs": ["rUZuHudN", "WclKZgA6", "x8gG7mFr"]}, {"parties": [{"partyID": "1W0oJTZR", "userIDs": ["qAFqLCRD", "AJCDYrwY", "seGJXpJV"]}, {"partyID": "oLkauOp3", "userIDs": ["GVXpPNp6", "bYgXw82y", "OWClh8Mo"]}, {"partyID": "Ijlec58Y", "userIDs": ["kaAASYG9", "1QfqeQyJ", "40osCB8p"]}], "teamID": "Lia55cOk", "userIDs": ["3gIToow7", "HBBAM99r", "H6CJ7lpH"]}], "ticketIDs": ["qRfu0UJq", "l75uGxnK", "2rJakTkj"], "tieTeamsSessionLifetime": false, "type": "SahWz4VB", "version": 96}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGameSession' test.out

#- 55 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'lrH2b0G0' \
    > test.out 2>&1
eval_tap $? 55 'DeleteGameSession' test.out

#- 56 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'q3qKVPQF' \
    --body '{"attributes": {"outmB3iy": {}, "cC5AORFy": {}, "sBvDQxpb": {}}, "backfillTicketID": "75c2Lhdp", "clientVersion": "nVy5XSvE", "deployment": "LEAVpEDQ", "fallbackClaimKeys": ["eR58OB5M", "UySwIGCB", "QYP1jHGo"], "inactiveTimeout": 22, "inviteTimeout": 32, "joinability": "dZQQkWRk", "matchPool": "NSUbi1cU", "maxPlayers": 30, "minPlayers": 88, "preferredClaimKeys": ["UZJLKYA5", "ZTd0lP6G", "7LKTfQ7m"], "requestedRegions": ["can3cTIc", "72vDem5w", "IxNFcbM7"], "teams": [{"parties": [{"partyID": "v4hA50Tw", "userIDs": ["aFxnXVK8", "rOwjJVKK", "qcyclLwU"]}, {"partyID": "EjXklt8Z", "userIDs": ["661V4F7I", "MmpGp08T", "rXZKfdEd"]}, {"partyID": "fJ8m5nkS", "userIDs": ["m9xJJvEP", "82I1wYl9", "jSla2Ldz"]}], "teamID": "8tKg4jpT", "userIDs": ["UPDpFZZV", "Zu3AzaTv", "bgVwlXPv"]}, {"parties": [{"partyID": "rKJikJdq", "userIDs": ["xGEDzHG7", "W5YNt8mY", "hG7ReIhy"]}, {"partyID": "2BUbdrez", "userIDs": ["jSVx7bBB", "oa8vxsKW", "afnuoU8N"]}, {"partyID": "PMyACjvM", "userIDs": ["dkmnA4Bl", "Tx19vXld", "8u76ccLS"]}], "teamID": "PhzQu6JR", "userIDs": ["4CrxS27Q", "ADcrGuxY", "6yOYbzsf"]}, {"parties": [{"partyID": "CTUh6Yc7", "userIDs": ["RhhJOSwV", "jYigqvbU", "Rfhu9lK0"]}, {"partyID": "FxUMVzq8", "userIDs": ["EDLjbhzJ", "XuhcfBWi", "7DxEh0pC"]}, {"partyID": "8SaDSRy4", "userIDs": ["u7LnEA4C", "3jHTVSSx", "8BcoyY7W"]}], "teamID": "340LNASw", "userIDs": ["6yshfAjD", "UIo1Mwv3", "AZoOwlTi"]}], "ticketIDs": ["4vSwqfak", "d1hSz9v6", "VzggjtWa"], "tieTeamsSessionLifetime": false, "type": "spdtVm3P", "version": 7}' \
    > test.out 2>&1
eval_tap $? 56 'PatchUpdateGameSession' test.out

#- 57 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'Jk5GcqTi' \
    --body '{"backfillTicketID": "yGlHRXHP"}' \
    > test.out 2>&1
eval_tap $? 57 'UpdateGameSessionBackfillTicketID' test.out

#- 58 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'wgMPhBbW' \
    > test.out 2>&1
eval_tap $? 58 'GameSessionGenerateCode' test.out

#- 59 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'oaKUOzc3' \
    > test.out 2>&1
eval_tap $? 59 'PublicRevokeGameSessionCode' test.out

#- 60 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'p0bpxTrn' \
    --body '{"metadata": {"NRIfa3d7": "yQ9ycxpy", "AheNn6os": "1kIQACwM", "ltnUyFVw": "cf75ZtQS"}, "platformID": "ssA5LHWK", "userID": "uZPbqduY"}' \
    > test.out 2>&1
eval_tap $? 60 'PublicGameSessionInvite' test.out

#- 61 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'U3RcdbGz' \
    > test.out 2>&1
eval_tap $? 61 'JoinGameSession' test.out

#- 62 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'XUpN8BPD' \
    --body '{"leaderID": "Soy2gMoO"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicPromoteGameSessionLeader' test.out

#- 63 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'jwXBDSQI' \
    > test.out 2>&1
eval_tap $? 63 'LeaveGameSession' test.out

#- 64 PublicKickGameSessionMember
samples/cli/sample-apps Session publicKickGameSessionMember \
    --memberId '93yoh4WF' \
    --namespace $AB_NAMESPACE \
    --sessionId '4ZzLmG9y' \
    > test.out 2>&1
eval_tap $? 64 'PublicKickGameSessionMember' test.out

#- 65 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId '3yeuRgxF' \
    > test.out 2>&1
eval_tap $? 65 'PublicGameSessionReject' test.out

#- 66 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId 'UVUcZhSA' \
    > test.out 2>&1
eval_tap $? 66 'GetSessionServerSecret' test.out

#- 67 AppendTeamGameSession
eval_tap 0 67 'AppendTeamGameSession # SKIP deprecated' test.out

#- 68 PublicGameSessionCancel
samples/cli/sample-apps Session publicGameSessionCancel \
    --namespace $AB_NAMESPACE \
    --sessionId '44KhnYrN' \
    --userId 'eoztFuna' \
    > test.out 2>&1
eval_tap $? 68 'PublicGameSessionCancel' test.out

#- 69 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "UdWFweeu"}' \
    > test.out 2>&1
eval_tap $? 69 'PublicPartyJoinCode' test.out

#- 70 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'Zu8EOpcx' \
    > test.out 2>&1
eval_tap $? 70 'PublicGetParty' test.out

#- 71 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId '9Tdg7bVn' \
    --body '{"attributes": {"p1FRsLjd": {}, "OowKvlXW": {}, "vn0Ul9DQ": {}}, "inactiveTimeout": 86, "inviteTimeout": 5, "joinability": "TFzHBaAW", "maxPlayers": 90, "minPlayers": 91, "type": "kdoYg6GK", "version": 75}' \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdateParty' test.out

#- 72 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'b1diGdpd' \
    --body '{"attributes": {"CAnanx0L": {}, "zhHwKd1j": {}, "JWB7ZcRH": {}}, "inactiveTimeout": 51, "inviteTimeout": 100, "joinability": "2KWWIC2j", "maxPlayers": 2, "minPlayers": 71, "type": "5NLujzY8", "version": 53}' \
    > test.out 2>&1
eval_tap $? 72 'PublicPatchUpdateParty' test.out

#- 73 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'OHkqxcA7' \
    > test.out 2>&1
eval_tap $? 73 'PublicGeneratePartyCode' test.out

#- 74 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'zsxUZAxf' \
    > test.out 2>&1
eval_tap $? 74 'PublicRevokePartyCode' test.out

#- 75 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'Xm68XnkA' \
    --body '{"metadata": {"S4yvbWQ0": "qDVjbSdx", "7kdNB7S7": "LhkZ2etK", "GLPC2D9N": "XyethvTH"}, "platformID": "tvuKcTpO", "userID": "HkzK8oz7"}' \
    > test.out 2>&1
eval_tap $? 75 'PublicPartyInvite' test.out

#- 76 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'yqw1bNCW' \
    --body '{"leaderID": "z0f9M3mJ"}' \
    > test.out 2>&1
eval_tap $? 76 'PublicPromotePartyLeader' test.out

#- 77 PublicReadPartySessionStorage
samples/cli/sample-apps Session publicReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId 'AhykUu9Q' \
    > test.out 2>&1
eval_tap $? 77 'PublicReadPartySessionStorage' test.out

#- 78 PublicUpdateInsertPartySessionStorageReserved
samples/cli/sample-apps Session publicUpdateInsertPartySessionStorageReserved \
    --namespace $AB_NAMESPACE \
    --partyId '6veqcdUS' \
    --userId 'xmljNVqJ' \
    --body '{"TIJdfObD": {}, "MzjcmqYd": {}, "4H9FMz07": {}}' \
    > test.out 2>&1
eval_tap $? 78 'PublicUpdateInsertPartySessionStorageReserved' test.out

#- 79 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'GTXUiE35' \
    > test.out 2>&1
eval_tap $? 79 'PublicPartyJoin' test.out

#- 80 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'XBXQqzxF' \
    > test.out 2>&1
eval_tap $? 80 'PublicPartyLeave' test.out

#- 81 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId '5y7yxzIC' \
    > test.out 2>&1
eval_tap $? 81 'PublicPartyReject' test.out

#- 82 PublicPartyCancel
samples/cli/sample-apps Session publicPartyCancel \
    --namespace $AB_NAMESPACE \
    --partyId 'XZ6iHIUQ' \
    --userId 'b3dkGw1I' \
    > test.out 2>&1
eval_tap $? 82 'PublicPartyCancel' test.out

#- 83 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId '0QvXy5Hv' \
    --userId 'KJzt05Uk' \
    > test.out 2>&1
eval_tap $? 83 'PublicPartyKick' test.out

#- 84 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"2bVSO7eg": {}, "8fwS3iEm": {}, "wJbpHPpM": {}}, "configurationName": "3ItP2kNI", "inactiveTimeout": 3, "inviteTimeout": 97, "joinability": "H7CaJmIv", "maxPlayers": 18, "members": [{"ID": "JM79hUDL", "PlatformID": "sJJOkuZ5", "PlatformUserID": "55rKaxGy"}, {"ID": "PFf3gL7A", "PlatformID": "LKR3oBjC", "PlatformUserID": "z5Ibi4X2"}, {"ID": "luZB3aYk", "PlatformID": "MtncI7ZI", "PlatformUserID": "PMcoLwDu"}], "minPlayers": 37, "textChat": false, "type": "xhnHFrkM"}' \
    > test.out 2>&1
eval_tap $? 84 'PublicCreateParty' test.out

#- 85 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    > test.out 2>&1
eval_tap $? 85 'PublicGetRecentPlayer' test.out

#- 86 PublicGetRecentTeamPlayer
samples/cli/sample-apps Session publicGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetRecentTeamPlayer' test.out

#- 87 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'SCDeYGCx' \
    --body '{"SMLcAb6b": {}, "gvKsPPsN": {}, "nnlENywb": {}}' \
    > test.out 2>&1
eval_tap $? 87 'PublicUpdateInsertSessionStorageLeader' test.out

#- 88 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'mhIE6Xj9' \
    --userId 'NNWRJwtP' \
    --body '{"CAPTzlcs": {}, "hkj8n6kC": {}, "XqFXfQQU": {}}' \
    > test.out 2>&1
eval_tap $? 88 'PublicUpdateInsertSessionStorage' test.out

#- 89 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["SMNafE3a", "vPL22kde", "v7dZDUfo"]}' \
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
    --body '{"crossplayEnabled": true, "currentPlatform": "xFU2DrFN", "data": {"ItZuntZ0": {}, "m0zI2U5w": {}, "FadmHmbF": {}}, "platforms": [{"name": "YiNyObhY", "userID": "hUaA20Y3"}, {"name": "fVO9ZAWR", "userID": "v6rtGImF"}, {"name": "mIkPhGaQ", "userID": "rDppmXRT"}], "roles": ["MHUKUGA4", "nG1i2KEO", "EYsyZsS1"], "simultaneousPlatform": "psMGeiYB"}' \
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
    --order 'uu9UOZZ1' \
    --orderBy 'RpyVgpop' \
    --status 'hX13PkR2' \
    > test.out 2>&1
eval_tap $? 93 'PublicQueryMyGameSessions' test.out

#- 94 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'egkLzESw' \
    --orderBy 'M0lUtkY4' \
    --status 'srEk4YL2' \
    > test.out 2>&1
eval_tap $? 94 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE