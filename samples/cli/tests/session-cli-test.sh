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
echo "1..104"

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
    --body '{"logLevel": "error"}' \
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
    --body '{"metricExcludedNamespaces": ["UNQ4SV6L", "Ft3WY1D0", "dsCrXWCs"], "regionRetryMapping": {"Fb1LgYMJ": ["Af52y38F", "x03aeXL5", "lcuBVjqg"], "HGGiJGVz": ["LoPHEPDL", "XjeILiLj", "8Oyg6u7g"], "jbKdzJeK": ["5CZZDcEF", "sa043rki", "oFaVcK7i"]}, "regionURLMapping": ["nRHoaKMG", "2tzg6jQQ", "LaSlLmUM"], "testGameMode": "zu6PZDDW", "testRegionURLMapping": ["d2mpc1kG", "PTTjdBPJ", "rHzLG3YG"], "testTargetUserIDs": ["dg0YsZiq", "8UaBAxN0", "mO6aUxrn"]}' \
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
    --body '{"durationDays": 57}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationAlertV1' test.out

#- 13 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 24}' \
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
    --body '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["UPDATE_INVITABLE_USER_TYPE", "PROMOTE_TO_LEADER", "UPDATE_INVITABLE_USER_TYPE"], "PSNServiceLabel": 5, "PSNSupportedPlatforms": ["aHNhjDA6", "5PILCc5V", "86MRSWFD"], "SessionTitle": "sULtB0cL", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "tfeuZG6e", "XboxServiceConfigID": "0mUwArtW", "XboxSessionTemplateName": "aWT8IGWo", "XboxTitleID": "3yMPy4jp", "activePlatforms": ["oHAO2Jnu", "GV4DGXEx", "7ykodWYD"], "localizedSessionName": {"2xkC2R8p": {}, "Um7wAcO1": {}, "DnX3MpEG": {}}}, "PSNBaseUrl": "1lP4g0IF", "amsClaimTimeoutMinutes": 36, "appName": "1QzWzztt", "asyncProcessDSRequest": {"async": true, "timeout": 95}, "attributes": {"g38NPiaJ": {}, "urFXHRR6": {}, "hLkiwkUt": {}}, "autoJoin": false, "autoLeaveSession": false, "clientVersion": "slNsPHt4", "customURLGRPC": "cfiVFxzG", "deployment": "n0uDIa4g", "disableCodeGeneration": false, "disableResendInvite": true, "dsManualSetReady": true, "dsSource": "ZVQMNUlu", "enableSecret": true, "fallbackClaimKeys": ["LoL7FWex", "0KykwJBT", "tYWVk8Nb"], "grpcSessionConfig": {"appName": "MA1BJeLF", "customURL": "wS7qiAGn", "functionFlag": 61}, "immutableStorage": false, "inactiveTimeout": 51, "inviteTimeout": 91, "joinability": "FRIENDS_OF_FRIENDS", "leaderElectionGracePeriod": 71, "manualRejoin": false, "maxActiveSessions": 5, "maxPlayers": 8, "minPlayers": 6, "name": "BJlVi1Nu", "partyCodeGeneratorString": "67PLZa2n", "partyCodeLength": 22, "persistent": false, "preferredClaimKeys": ["fkTTsgzP", "imk3VI5n", "hkOuBIlS"], "requestedRegions": ["hTS9qsvL", "6Ch0brOD", "xEG0uJvu"], "textChat": true, "textChatMode": "TEAM", "tieTeamsSessionLifetime": false, "ttlHours": 41, "type": "P2P"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateConfigurationTemplateV1' test.out

#- 17 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --name 'zCtDF47i' \
    --offset '32' \
    --order 'yGQXT5h9' \
    --orderBy 'jSWPwvpT' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetAllConfigurationTemplatesV1' test.out

#- 18 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'NnT1zxMh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigurationTemplateV1' test.out

#- 19 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'Kzy5RCWb' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["UPDATE_JOINABLE_USER_TYPE", "PROMOTE_TO_LEADER", "KICK"], "PSNServiceLabel": 81, "PSNSupportedPlatforms": ["hMdSD9bc", "UNEhWHKQ", "1xnHCRVx"], "SessionTitle": "M3Wjeaxx", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "SGnsuF4d", "XboxServiceConfigID": "n0uLUfdi", "XboxSessionTemplateName": "veCfthqs", "XboxTitleID": "53tUq6LN", "activePlatforms": ["csq291kL", "3aWT0nVx", "J4xKkOMw"], "localizedSessionName": {"DT0MxAm3": {}, "XKtd51bU": {}, "CkxsKtkK": {}}}, "PSNBaseUrl": "W2NoF471", "amsClaimTimeoutMinutes": 62, "appName": "bFdebCAC", "asyncProcessDSRequest": {"async": false, "timeout": 6}, "attributes": {"lsffUzFF": {}, "eSjvYgKC": {}, "LWaY5CkD": {}}, "autoJoin": true, "autoLeaveSession": false, "clientVersion": "LBpk3Zwi", "customURLGRPC": "020VlDO1", "deployment": "dDiO72TG", "disableCodeGeneration": true, "disableResendInvite": true, "dsManualSetReady": true, "dsSource": "FyWjWfJC", "enableSecret": false, "fallbackClaimKeys": ["vBqMPZRU", "qHXR6PIT", "lnYl0I01"], "grpcSessionConfig": {"appName": "6nnwz8nh", "customURL": "qvCWiOG8", "functionFlag": 64}, "immutableStorage": false, "inactiveTimeout": 56, "inviteTimeout": 28, "joinability": "OPEN", "leaderElectionGracePeriod": 14, "manualRejoin": true, "maxActiveSessions": 72, "maxPlayers": 21, "minPlayers": 38, "name": "5sJG9VjW", "partyCodeGeneratorString": "7NfcSP5C", "partyCodeLength": 51, "persistent": false, "preferredClaimKeys": ["Q0fiAWAj", "lTp4gboA", "1s2wxu2c"], "requestedRegions": ["POCfH5ij", "SMZY1RCk", "BLkOmLGW"], "textChat": false, "textChatMode": "TEAM", "tieTeamsSessionLifetime": false, "ttlHours": 34, "type": "P2P"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'wQJQEJbk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 'C3YZ5xSr' \
    --namespace $AB_NAMESPACE \
    --userId 'oHYX2LMf' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'wxwzvo7F' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "ExA3BPVL"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminReconcileMaxActiveSession' test.out

#- 23 AdminGetDSMCConfiguration
eval_tap 0 23 'AdminGetDSMCConfiguration # SKIP deprecated' test.out

#- 24 AdminSyncDSMCConfiguration
eval_tap 0 24 'AdminSyncDSMCConfiguration # SKIP deprecated' test.out

#- 25 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName '9OtU2QwX' \
    --dsPodName '4YzBDm3K' \
    --fromTime '1GnoNOMh' \
    --gameMode 'BVxjTsPv' \
    --isPersistent '54SIKJKp' \
    --isSoftDeleted 'yVkUn5tS' \
    --joinability 'FRIENDS_OF_FRIENDS' \
    --limit '69' \
    --matchPool 'E9d2Qy4p' \
    --memberID '13h5Xelf' \
    --offset '55' \
    --order 'CpZnDFcQ' \
    --orderBy 'Ou81J1No' \
    --sessionID 'ZR8VwCZo' \
    --status 'NEED_TO_REQUEST' \
    --statusV2 'DS_CANCELLED' \
    --toTime '3TSxXSmK' \
    > test.out 2>&1
eval_tap $? 25 'AdminQueryGameSessions' test.out

#- 26 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"ET7F7FHk": {}, "oSMzAbIc": {}, "ErQpLVoW": {}}' \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["QDvpnf9t", "ItCSUwJA", "gQ5TxVCD"]}' \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'J6Gl0nyT' \
    --body '{"ready": true}' \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminUpdateDSInformation
samples/cli/sample-apps Session adminUpdateDSInformation \
    --namespace $AB_NAMESPACE \
    --sessionId 'FWlNOW5s' \
    --body '{"createdRegion": "mPO3hlYW", "deployment": "J6vfKKt6", "description": "2PvBtkBq", "ip": "pIHxO23G", "port": 33, "region": "Q0kG9Flu", "serverId": "RnCe4LyF", "source": "Nyf1BUSi", "status": "FAILED_TO_REQUEST"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateDSInformation' test.out

#- 30 AdminKickGameSessionMember
samples/cli/sample-apps Session adminKickGameSessionMember \
    --memberId 'uPAaSUd2' \
    --namespace $AB_NAMESPACE \
    --sessionId 'DW3pJAbv' \
    > test.out 2>&1
eval_tap $? 30 'AdminKickGameSessionMember' test.out

#- 31 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'NsVJq5NA' \
    --namespace $AB_NAMESPACE \
    --sessionId 'SYfBQQrz' \
    --statusType 'KWBY7Y3v' \
    > test.out 2>&1
eval_tap $? 31 'AdminUpdateGameSessionMember' test.out

#- 32 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '21' \
    --order 'T9TURoU3' \
    > test.out 2>&1
eval_tap $? 32 'AdminGetListNativeSession' test.out

#- 33 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --configurationName '3Gm7ZLCl' \
    --fromTime 'SWhu3N75' \
    --isSoftDeleted 'VtwP4Dlj' \
    --joinability 'INVITE_ONLY' \
    --key 'ofpIh65T' \
    --leaderID '6lMi66sw' \
    --limit '68' \
    --memberID 'QwZ7MQc5' \
    --memberStatus 'REJECTED' \
    --offset '5' \
    --order 'sBBqHrzc' \
    --orderBy 'LeQkXqZp' \
    --partyID '5sLjksiz' \
    --toTime 'vsQkhXsL' \
    --value 'xDLmyFyl' \
    > test.out 2>&1
eval_tap $? 33 'AdminQueryParties' test.out

#- 34 AdminDeleteBulkParties
samples/cli/sample-apps Session adminDeleteBulkParties \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["ntS0FefV", "UINxX4zf", "5tokGEGk"]}' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteBulkParties' test.out

#- 35 AdminReadPartySessionStorage
samples/cli/sample-apps Session adminReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId 'C8i34mKR' \
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
    --body '{"psn": {"clientId": "aqDZSB6m", "clientSecret": "CAHRyWjS", "scope": "jQDlX5Eu"}}' \
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
    --platformId 'PSN' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeletePlatformCredentialsByPlatformId' test.out

#- 40 AdminSyncPlatformCredentials
samples/cli/sample-apps Session adminSyncPlatformCredentials \
    --namespace $AB_NAMESPACE \
    --platformId 'XBOX' \
    > test.out 2>&1
eval_tap $? 40 'AdminSyncPlatformCredentials' test.out

#- 41 AdminUploadPlatformCredentials
samples/cli/sample-apps Session adminUploadPlatformCredentials \
    --namespace $AB_NAMESPACE \
    --platformId 'XBOX' \
    --description '8eoqW39F' \
    --file 'tmp.dat' \
    --password 'mDZk6UxO' \
    > test.out 2>&1
eval_tap $? 41 'AdminUploadPlatformCredentials' test.out

#- 42 AdminGetRecentPlayer
samples/cli/sample-apps Session adminGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --userId 'HNNWhQoO' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetRecentPlayer' test.out

#- 43 AdminGetRecentTeamPlayer
samples/cli/sample-apps Session adminGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --userId 'pBrybTEX' \
    > test.out 2>&1
eval_tap $? 43 'AdminGetRecentTeamPlayer' test.out

#- 44 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'VCrl7Ihr' \
    > test.out 2>&1
eval_tap $? 44 'AdminReadSessionStorage' test.out

#- 45 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'uKVQBOeD' \
    > test.out 2>&1
eval_tap $? 45 'AdminDeleteUserSessionStorage' test.out

#- 46 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'xgEaQvnT' \
    --userId '1EfYR8JO' \
    > test.out 2>&1
eval_tap $? 46 'AdminReadUserSessionStorage' test.out

#- 47 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'sMVs1NrK' \
    > test.out 2>&1
eval_tap $? 47 'AdminQueryPlayerAttributes' test.out

#- 48 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'VQYPjtFK' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetPlayerAttributes' test.out

#- 49 AdminSyncNativeSession
samples/cli/sample-apps Session adminSyncNativeSession \
    --namespace $AB_NAMESPACE \
    --userId 'dx5tLQGK' \
    > test.out 2>&1
eval_tap $? 49 'AdminSyncNativeSession' test.out

#- 50 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --resolveMaxActiveSession 'false' \
    --body '{"appName": "M5pmj4Np", "attributes": {"5dxbqNfh": {}, "nlxp9H0D": {}, "1rQM9KyE": {}}, "autoJoin": false, "backfillTicketID": "p6dnmWHJ", "clientVersion": "W5tAy3LP", "configurationName": "4RAXxYTY", "customURLGRPC": "oG437jKM", "deployment": "QEGQK9H3", "dsSource": "AAo4dA02", "fallbackClaimKeys": ["ZkZKVDzl", "3N6V5MDQ", "dIXE8Pee"], "inactiveTimeout": 31, "inviteTimeout": 50, "joinability": "INVITE_ONLY", "matchPool": "f6DWIcQt", "maxPlayers": 75, "minPlayers": 13, "password": "2aDt7bRT", "preferredClaimKeys": ["v6SneRxr", "SHb9D6Cx", "z2GrBDhM"], "requestedRegions": ["xupDRxF6", "utTwpiTz", "47FtzM7f"], "serverName": "T1xLc7mm", "storage": {"leader": {"xj3w1chv": {}, "JVah9nOj": {}, "Wvas063n": {}}}, "teams": [{"parties": [{"partyID": "Yg5TpXis", "userIDs": ["Mv4s3G7c", "4YfpYyWC", "ftsvqpGO"]}, {"partyID": "7NwpCrzg", "userIDs": ["VNL8ZQjn", "dMajNO5w", "dy4ShnoG"]}, {"partyID": "B0srfMsl", "userIDs": ["eMi3AnBB", "UXdJ2Fe7", "jyRFtqjs"]}], "teamID": "8AoSzpjJ", "userIDs": ["jGTdLLlK", "1EnmHEIe", "8IRifE7r"]}, {"parties": [{"partyID": "i08G1sXU", "userIDs": ["rsgxIVc9", "NCQrpSbJ", "FKwzOdT5"]}, {"partyID": "FwXJxdIO", "userIDs": ["nkn19mB1", "2EcDP9ZY", "1NSQ1Gao"]}, {"partyID": "o4EDzZIM", "userIDs": ["GCpXaxc9", "Yp3Uh8br", "G3Jhf7Wd"]}], "teamID": "rYFhWkK7", "userIDs": ["3UrQ59nG", "VltWZI5J", "ylUeBmV2"]}, {"parties": [{"partyID": "9vos214f", "userIDs": ["2skqi0BC", "lGJckk6E", "pVJaF3YC"]}, {"partyID": "ZEmUvArM", "userIDs": ["8FPYSVZ3", "ruYPCiHP", "7W8M8jAX"]}, {"partyID": "ALSsFQrI", "userIDs": ["uQ8kvzFj", "hSvlmYSt", "hWeshLSB"]}], "teamID": "ljhFTh0S", "userIDs": ["pyGS22EQ", "Q9pl7f0z", "D3iFzcYe"]}], "textChat": true, "textChatMode": "TEAM", "ticketIDs": ["KRCO1MtQ", "ZK4DFYX6", "0UmNK1Oj"], "tieTeamsSessionLifetime": true, "type": "P2P"}' \
    > test.out 2>&1
eval_tap $? 50 'CreateGameSession' test.out

#- 51 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"CZ9NZ5av": {}, "l88W7eqI": {}, "rq4e7aCM": {}}' \
    > test.out 2>&1
eval_tap $? 51 'PublicQueryGameSessionsByAttributes' test.out

#- 52 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "bXZ09iFe"}' \
    > test.out 2>&1
eval_tap $? 52 'PublicSessionJoinCode' test.out

#- 53 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'TCH737IF' \
    > test.out 2>&1
eval_tap $? 53 'GetGameSessionByPodName' test.out

#- 54 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'umrxoWZl' \
    > test.out 2>&1
eval_tap $? 54 'GetGameSession' test.out

#- 55 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'w5EUwOSu' \
    --body '{"attributes": {"Zuhotupt": {}, "YGRMy8Bj": {}, "UpP6tNXn": {}}, "backfillTicketID": "4PHxM6iC", "clientVersion": "ekO0alvv", "deployment": "5pxOlEki", "fallbackClaimKeys": ["V36UTvgC", "aqlJMPII", "1HSQbKa8"], "inactiveTimeout": 80, "inviteTimeout": 75, "joinability": "FRIENDS_OF_MEMBERS", "matchPool": "svnCcyJA", "maxPlayers": 63, "minPlayers": 50, "password": "oQUhoXHb", "preferredClaimKeys": ["LdAWegx0", "gnhpZHLy", "oYy1zHUz"], "requestedRegions": ["TjbdjPGj", "Rz88Ujlh", "ezgBzKyk"], "teams": [{"parties": [{"partyID": "LdEXaf8N", "userIDs": ["V31VmHEl", "xzIya2WJ", "pmGtgxhH"]}, {"partyID": "t9qInA2m", "userIDs": ["Brsw9Rv8", "0N0ki00l", "Ibe30Udg"]}, {"partyID": "OMEyT7zB", "userIDs": ["pYktqcMa", "wCYqf0Zw", "3LqVMW5i"]}], "teamID": "qx6IQ9IJ", "userIDs": ["CcAnk88f", "XtHcQVkV", "oI0kEugO"]}, {"parties": [{"partyID": "fLedolf6", "userIDs": ["K9Dp3GUZ", "4DtNSHZ1", "w46gpEW7"]}, {"partyID": "nalRZQuJ", "userIDs": ["vua7fAcR", "jrcgp41F", "l26737hk"]}, {"partyID": "GU98OrHP", "userIDs": ["VUbRs4oj", "Nr7Cx29Z", "5OIfvTgE"]}], "teamID": "uN9ErvFH", "userIDs": ["Nrr3iCdA", "VAY0HJie", "A3xgGJb0"]}, {"parties": [{"partyID": "d7m1Uv4c", "userIDs": ["4qQhA7jC", "FW1F9Dhs", "ueBP8R6z"]}, {"partyID": "doOiH1QG", "userIDs": ["WzcYpVPg", "9DPj9By0", "Q3Z1Xjrt"]}, {"partyID": "KrdF1D7R", "userIDs": ["Jzyj08GB", "6BWIXVyJ", "rBWDOEdj"]}], "teamID": "EaZysE6K", "userIDs": ["rhVGFe6f", "wtVUjtaf", "78Hc6fwq"]}], "ticketIDs": ["lFQwsdax", "1pTQQ1cu", "fcyfnkW7"], "tieTeamsSessionLifetime": false, "type": "NONE", "version": 11}' \
    > test.out 2>&1
eval_tap $? 55 'UpdateGameSession' test.out

#- 56 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'rzFOh12m' \
    > test.out 2>&1
eval_tap $? 56 'DeleteGameSession' test.out

#- 57 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'ROs82btO' \
    --body '{"attributes": {"gc5BQv4Q": {}, "8zoq8ZMP": {}, "rJCPggOl": {}}, "backfillTicketID": "xYv5zeQa", "clientVersion": "gS6RmGcc", "deployment": "PmZMpXAa", "fallbackClaimKeys": ["TNkjDmys", "lrfYPSMB", "do7shQTS"], "inactiveTimeout": 96, "inviteTimeout": 47, "joinability": "INVITE_ONLY", "matchPool": "ybARvNgX", "maxPlayers": 66, "minPlayers": 81, "password": "c3NdWDVS", "preferredClaimKeys": ["CkGlminE", "jLQbVjCJ", "VOVHJOmd"], "requestedRegions": ["cMpDxJht", "WwiSVfVf", "Husv6crk"], "teams": [{"parties": [{"partyID": "Fe2tmYuu", "userIDs": ["1kTYuMm4", "v72KrUOG", "FCvdQvFK"]}, {"partyID": "BAczQN53", "userIDs": ["TQzsjHvn", "SjijAaF8", "Sa8Ya8ii"]}, {"partyID": "CNkMLHCY", "userIDs": ["gipR35u7", "Dk6Fz8VR", "Xl30xvYC"]}], "teamID": "hwC38fOY", "userIDs": ["lmyGBZKq", "jwxKNk9Q", "qgII0C08"]}, {"parties": [{"partyID": "5EQY6LNE", "userIDs": ["wfCIVK8g", "07jHRAFm", "gLMvmLR0"]}, {"partyID": "86e1rlwD", "userIDs": ["1HTi8LmV", "qpPLGs9J", "afn3jO4t"]}, {"partyID": "G7hmpJbE", "userIDs": ["CkIUxdig", "gxNrPjJy", "HXX8kpnz"]}], "teamID": "e09HZZ9c", "userIDs": ["YChV038H", "dtOEWm8s", "b6EE9txV"]}, {"parties": [{"partyID": "s0cDCo2X", "userIDs": ["sOuL0xwz", "tbV2IfkG", "gVb2AjC9"]}, {"partyID": "DXaU8z2T", "userIDs": ["tjS0tiYa", "neXmy3XV", "i2ayel0P"]}, {"partyID": "2SCeHsCY", "userIDs": ["Z7Tf0oXi", "Nd5lLc88", "qDNDRmy1"]}], "teamID": "EuRbIeCB", "userIDs": ["x5W0ouX9", "nraLFfVd", "vhnOvV0h"]}], "ticketIDs": ["l1dLT5xk", "kNOO696g", "zc5qsM4z"], "tieTeamsSessionLifetime": false, "type": "P2P", "version": 74}' \
    > test.out 2>&1
eval_tap $? 57 'PatchUpdateGameSession' test.out

#- 58 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'jnzsGoHF' \
    --body '{"backfillTicketID": "NKKuiGH8"}' \
    > test.out 2>&1
eval_tap $? 58 'UpdateGameSessionBackfillTicketID' test.out

#- 59 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'R2xnCzm5' \
    > test.out 2>&1
eval_tap $? 59 'GameSessionGenerateCode' test.out

#- 60 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'EGUKJw5J' \
    > test.out 2>&1
eval_tap $? 60 'PublicRevokeGameSessionCode' test.out

#- 61 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'UuuM1qRM' \
    --body '{"metadata": {"PB4e6RAo": "uNmbtEQD", "hGCixYnD": "Af01Piru", "X0tvJXzH": "DJqk4MHy"}, "platformID": "ZFx0kFjF", "userID": "n5HyuHGT"}' \
    > test.out 2>&1
eval_tap $? 61 'PublicGameSessionInvite' test.out

#- 62 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'wvDtF9pa' \
    --body '{"password": "U6OAtilv"}' \
    > test.out 2>&1
eval_tap $? 62 'JoinGameSession' test.out

#- 63 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'BRFvibK2' \
    --body '{"leaderID": "SpZ6G8ym"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicPromoteGameSessionLeader' test.out

#- 64 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'ieFe0zjx' \
    > test.out 2>&1
eval_tap $? 64 'LeaveGameSession' test.out

#- 65 PublicKickGameSessionMember
samples/cli/sample-apps Session publicKickGameSessionMember \
    --memberId 'ZDMzDMEZ' \
    --namespace $AB_NAMESPACE \
    --sessionId 'QQ6HYZrP' \
    > test.out 2>&1
eval_tap $? 65 'PublicKickGameSessionMember' test.out

#- 66 PublicGetGameSessionPassword
samples/cli/sample-apps Session publicGetGameSessionPassword \
    --namespace $AB_NAMESPACE \
    --sessionId 's16rIl45' \
    > test.out 2>&1
eval_tap $? 66 'PublicGetGameSessionPassword' test.out

#- 67 PublicUpdateGameSessionPassword
samples/cli/sample-apps Session publicUpdateGameSessionPassword \
    --namespace $AB_NAMESPACE \
    --sessionId 'TOeI516l' \
    --body '{"newPassword": "XAVlU3OL"}' \
    > test.out 2>&1
eval_tap $? 67 'PublicUpdateGameSessionPassword' test.out

#- 68 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'jhZOg5st' \
    > test.out 2>&1
eval_tap $? 68 'PublicGameSessionReject' test.out

#- 69 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId 'qDrOoXan' \
    > test.out 2>&1
eval_tap $? 69 'GetSessionServerSecret' test.out

#- 70 AppendTeamGameSession
eval_tap 0 70 'AppendTeamGameSession # SKIP deprecated' test.out

#- 71 PublicGameSessionCancel
samples/cli/sample-apps Session publicGameSessionCancel \
    --namespace $AB_NAMESPACE \
    --sessionId 'MGX43pgQ' \
    --userId 'foCWSFnx' \
    > test.out 2>&1
eval_tap $? 71 'PublicGameSessionCancel' test.out

#- 72 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "1Q9a3BOy"}' \
    > test.out 2>&1
eval_tap $? 72 'PublicPartyJoinCode' test.out

#- 73 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'oMoMlUjl' \
    > test.out 2>&1
eval_tap $? 73 'PublicGetParty' test.out

#- 74 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'EmRm6gE1' \
    --body '{"attributes": {"Jng85eVB": {}, "OjPD1MQ3": {}, "CNu9tchE": {}}, "inactiveTimeout": 85, "inviteTimeout": 78, "joinability": "FRIENDS_OF_LEADER", "maxPlayers": 45, "minPlayers": 62, "password": "chbGMXDJ", "type": "P2P", "version": 69}' \
    > test.out 2>&1
eval_tap $? 74 'PublicUpdateParty' test.out

#- 75 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'fAO9d6fr' \
    --body '{"attributes": {"MxPpk898": {}, "agMQwGJE": {}, "jHTip280": {}}, "inactiveTimeout": 7, "inviteTimeout": 98, "joinability": "FRIENDS_OF_LEADER", "maxPlayers": 76, "minPlayers": 55, "password": "Qcwhnx5a", "type": "DS", "version": 26}' \
    > test.out 2>&1
eval_tap $? 75 'PublicPatchUpdateParty' test.out

#- 76 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'zDenLfWs' \
    > test.out 2>&1
eval_tap $? 76 'PublicGeneratePartyCode' test.out

#- 77 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'hKMO0NSq' \
    > test.out 2>&1
eval_tap $? 77 'PublicRevokePartyCode' test.out

#- 78 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId '07FQafnO' \
    --body '{"metadata": {"qeXO5D70": "8zenPoRN", "cbtpGvry": "g2NjJ3ys", "zx61mcmU": "qMlYyy0Y"}, "platformID": "H12wjqWn", "userID": "65uApOws"}' \
    > test.out 2>&1
eval_tap $? 78 'PublicPartyInvite' test.out

#- 79 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'nOJoNRYR' \
    --body '{"leaderID": "pNovnL7o"}' \
    > test.out 2>&1
eval_tap $? 79 'PublicPromotePartyLeader' test.out

#- 80 PublicGetPartyPassword
samples/cli/sample-apps Session publicGetPartyPassword \
    --namespace $AB_NAMESPACE \
    --partyId 'ChDSElwd' \
    > test.out 2>&1
eval_tap $? 80 'PublicGetPartyPassword' test.out

#- 81 PublicUpdatePartyPassword
samples/cli/sample-apps Session publicUpdatePartyPassword \
    --namespace $AB_NAMESPACE \
    --partyId 'BUmC6Nd2' \
    --body '{"newPassword": "Vqa3yqT0"}' \
    > test.out 2>&1
eval_tap $? 81 'PublicUpdatePartyPassword' test.out

#- 82 PublicReadPartySessionStorage
samples/cli/sample-apps Session publicReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId 'k5Jc6AsF' \
    > test.out 2>&1
eval_tap $? 82 'PublicReadPartySessionStorage' test.out

#- 83 PublicUpdateInsertPartySessionStorage
samples/cli/sample-apps Session publicUpdateInsertPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId 'xL9nFIKH' \
    --userId 'TTRsJ0pi' \
    --body '{"cHTPQXVP": {}, "JTizlDbO": {}, "ievvp6aB": {}}' \
    > test.out 2>&1
eval_tap $? 83 'PublicUpdateInsertPartySessionStorage' test.out

#- 84 PublicUpdateInsertPartySessionStorageReserved
samples/cli/sample-apps Session publicUpdateInsertPartySessionStorageReserved \
    --namespace $AB_NAMESPACE \
    --partyId 'IIWBH80d' \
    --userId '0LCRmRRo' \
    --body '{"8ToKeAtW": {}, "9YWffRRY": {}, "dYvIxj40": {}}' \
    > test.out 2>&1
eval_tap $? 84 'PublicUpdateInsertPartySessionStorageReserved' test.out

#- 85 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'UV9Ltadv' \
    --body '{"password": "AyXO5UVI"}' \
    > test.out 2>&1
eval_tap $? 85 'PublicPartyJoin' test.out

#- 86 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'ehxuhazo' \
    > test.out 2>&1
eval_tap $? 86 'PublicPartyLeave' test.out

#- 87 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'DG3QboKj' \
    > test.out 2>&1
eval_tap $? 87 'PublicPartyReject' test.out

#- 88 PublicPartyCancel
samples/cli/sample-apps Session publicPartyCancel \
    --namespace $AB_NAMESPACE \
    --partyId 'J8SIvyDe' \
    --userId 'D8O8An7a' \
    > test.out 2>&1
eval_tap $? 88 'PublicPartyCancel' test.out

#- 89 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'wtgg1ef6' \
    --userId 'WAIy5rRI' \
    > test.out 2>&1
eval_tap $? 89 'PublicPartyKick' test.out

#- 90 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"p7njHKYC": {}, "Be0ZYKYr": {}, "QmlbN1Ha": {}}, "configurationName": "U8UuabHF", "inactiveTimeout": 88, "inviteTimeout": 94, "joinability": "FRIENDS_OF_FRIENDS", "maxPlayers": 36, "members": [{"ID": "UBn7jPtQ", "PlatformID": "CyzNq3HE", "PlatformUserID": "XNNV0n60"}, {"ID": "Qv8oYGSl", "PlatformID": "0sUm1a48", "PlatformUserID": "4pnUi14C"}, {"ID": "lmZ5rfGK", "PlatformID": "KzGeGXdZ", "PlatformUserID": "qezHtJGW"}], "minPlayers": 49, "password": "eeE2qYGB", "textChat": true, "type": "NONE"}' \
    > test.out 2>&1
eval_tap $? 90 'PublicCreateParty' test.out

#- 91 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    > test.out 2>&1
eval_tap $? 91 'PublicGetRecentPlayer' test.out

#- 92 PublicGetRecentTeamPlayer
samples/cli/sample-apps Session publicGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    > test.out 2>&1
eval_tap $? 92 'PublicGetRecentTeamPlayer' test.out

#- 93 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'TXcr3f7J' \
    --body '{"UONklV4a": {}, "FMDRjDB5": {}, "R2sHRqgB": {}}' \
    > test.out 2>&1
eval_tap $? 93 'PublicUpdateInsertSessionStorageLeader' test.out

#- 94 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'HtIp6FCp' \
    --userId 'HjPNyh3C' \
    --body '{"I5nbXnYj": {}, "2f4f01Zf": {}, "PHtOSsLt": {}}' \
    > test.out 2>&1
eval_tap $? 94 'PublicUpdateInsertSessionStorage' test.out

#- 95 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["Ldah2M6x", "vOEeiRJR", "OtldYbQd"]}' \
    > test.out 2>&1
eval_tap $? 95 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 96 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 96 'PublicGetPlayerAttributes' test.out

#- 97 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": true, "currentPlatform": "bIiitkxc", "data": {"AMK4Xh5o": {}, "rhEf8dy2": {}, "Z1GWO5TP": {}}, "platforms": [{"name": "eQwL9TOw", "userID": "ivwKfDU4"}, {"name": "lPtHI19r", "userID": "M26fH3mC"}, {"name": "32Ah7fVX", "userID": "ClRkKoEA"}], "roles": ["VL2k5QKH", "1F6TfNvh", "1bho8e7v"], "simultaneousPlatform": "h35bPO2j"}' \
    > test.out 2>&1
eval_tap $? 97 'PublicStorePlayerAttributes' test.out

#- 98 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 98 'PublicDeletePlayerAttributes' test.out

#- 99 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'hUbM0kM6' \
    --orderBy 'WchZS8rx' \
    --status 'Z5DjtUgH' \
    > test.out 2>&1
eval_tap $? 99 'PublicQueryMyGameSessions' test.out

#- 100 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order '6iGUmFNi' \
    --orderBy 'gf5GHbRc' \
    --status 'TVPvQbbp' \
    > test.out 2>&1
eval_tap $? 100 'PublicQueryMyParties' test.out

#- 101 PublicReplaceSessionStorageLeaderV2
samples/cli/sample-apps Session publicReplaceSessionStorageLeaderV2 \
    --namespace $AB_NAMESPACE \
    --sessionId '942M3naL' \
    --body '{"ycEiXnla": {}, "VPLhdDdY": {}, "sfxbC0Mf": {}}' \
    > test.out 2>&1
eval_tap $? 101 'PublicReplaceSessionStorageLeaderV2' test.out

#- 102 PublicUpdateInsertSessionStorageLeaderV2
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeaderV2 \
    --namespace $AB_NAMESPACE \
    --sessionId '3EOLKw9I' \
    --body '{"eVB9PjnD": {}, "1a2baOhL": {}, "rGf4jHw4": {}}' \
    > test.out 2>&1
eval_tap $? 102 'PublicUpdateInsertSessionStorageLeaderV2' test.out

#- 103 PublicReplaceSessionStorageUserV2
samples/cli/sample-apps Session publicReplaceSessionStorageUserV2 \
    --namespace $AB_NAMESPACE \
    --sessionId 'Ec4bnDXh' \
    --userId 'XV1vNnHN' \
    --body '{"3ySK1XGU": {}, "EwsixPkU": {}, "iA46G9Rz": {}}' \
    > test.out 2>&1
eval_tap $? 103 'PublicReplaceSessionStorageUserV2' test.out

#- 104 PublicUpdateInsertSessionStorageUserV2
samples/cli/sample-apps Session publicUpdateInsertSessionStorageUserV2 \
    --namespace $AB_NAMESPACE \
    --sessionId 'gz5x3Hnp' \
    --userId 'acIXQsjE' \
    --body '{"UGse7IC6": {}, "eQuEXYG3": {}, "OXLGC1bU": {}}' \
    > test.out 2>&1
eval_tap $? 104 'PublicUpdateInsertSessionStorageUserV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE