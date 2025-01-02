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
echo "1..93"

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
    --body '{"logLevel": "debug"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPatchUpdateLogConfig' test.out

#- 6 AdminGetDSMCConfigurationDefault
samples/cli/sample-apps Session adminGetDSMCConfigurationDefault \
    > test.out 2>&1
eval_tap $? 6 'AdminGetDSMCConfigurationDefault' test.out

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
    --body '{"metricExcludedNamespaces": ["MnaP8O0X", "or4mt5uQ", "pBlBcpun"], "regionRetryMapping": {"EGZ5XROy": ["ibeUTp28", "TCYdarG5", "GzlpxpdH"], "kzER42wQ": ["rfaHszhF", "JgsfLGeM", "6qCItfSP"], "GwbgSkfR": ["s8sgtmuZ", "pabreIjl", "CXzeqD10"]}, "regionURLMapping": ["nJaVCxZN", "T9HobzZ8", "rxXBSVpD"], "testGameMode": "m306jVdX", "testRegionURLMapping": ["cl4cnsvf", "n6RjfZwQ", "I4DsyMw0"], "testTargetUserIDs": ["aAnPaAF7", "4DQwPWZs", "gMWlGyda"]}' \
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
    --body '{"durationDays": 29}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationAlertV1' test.out

#- 13 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 13}' \
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
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 52, "PSNSupportedPlatforms": ["Wyw9XhXn", "zCZUFlti", "pDuaDHpU"], "SessionTitle": "F1s86OlG", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "t9yYuQVf", "XboxServiceConfigID": "0KTZs3jO", "XboxSessionTemplateName": "G7wGtose", "XboxTitleID": "5HuL3Aqr", "localizedSessionName": {"vx1zY806": {}, "8AQUAyxA": {}, "i3ZnsmsI": {}}}, "PSNBaseUrl": "3Yw8gOJV", "appName": "7YKZSi3P", "attributes": {"LJtF7CLF": {}, "402prcsn": {}, "0K3QNiQb": {}}, "autoJoin": true, "autoLeaveSession": false, "clientVersion": "SH7aYUpA", "customURLGRPC": "8O4xf18r", "deployment": "vQX42QCx", "disableCodeGeneration": false, "disableResendInvite": true, "dsManualSetReady": true, "dsSource": "hYXmDXu3", "enableSecret": false, "fallbackClaimKeys": ["SxYJ7qv4", "41404tHC", "zee7mqib"], "grpcSessionConfig": {"appName": "6B0eSI9G", "customURL": "IcRMF1nH", "functionFlag": 48}, "immutableStorage": false, "inactiveTimeout": 0, "inviteTimeout": 71, "joinability": "XGZgU4YX", "leaderElectionGracePeriod": 78, "manualRejoin": false, "maxActiveSessions": 85, "maxPlayers": 0, "minPlayers": 0, "name": "OFxYznoG", "persistent": true, "preferredClaimKeys": ["j9C2rzVM", "nRNpjeEc", "Zed26SsA"], "requestedRegions": ["5o6a3JN5", "bTMVuzph", "zpwosouW"], "textChat": true, "tieTeamsSessionLifetime": false, "type": "vQyRC3i8"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateConfigurationTemplateV1' test.out

#- 17 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --name 'HAW8SwZB' \
    --offset '15' \
    --order '8v3HQDMb' \
    --orderBy 'AtHlN1K4' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetAllConfigurationTemplatesV1' test.out

#- 18 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'MDQmFkwu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigurationTemplateV1' test.out

#- 19 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'zpbs0Sz6' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 70, "PSNSupportedPlatforms": ["ub0CK8BS", "EaaBKRLY", "CeF2nIfG"], "SessionTitle": "O9lMCu8k", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "IPFDHCRE", "XboxServiceConfigID": "gOEHw3Lg", "XboxSessionTemplateName": "uv5STPyM", "XboxTitleID": "n0wKNKti", "localizedSessionName": {"KhHyfjn4": {}, "4uMW0WuP": {}, "JpEy0uHl": {}}}, "PSNBaseUrl": "CP3iTvhn", "appName": "GZa6Q2Xw", "attributes": {"UbHGd7sa": {}, "g9IicCOv": {}, "XaF1s6uC": {}}, "autoJoin": true, "autoLeaveSession": true, "clientVersion": "dZCZ9iJi", "customURLGRPC": "kAqlFa26", "deployment": "IXBTYgcg", "disableCodeGeneration": false, "disableResendInvite": false, "dsManualSetReady": true, "dsSource": "NjmD2gcv", "enableSecret": false, "fallbackClaimKeys": ["PsVvIhda", "58qqtauF", "v7wiamZR"], "grpcSessionConfig": {"appName": "Q3PJzxmA", "customURL": "DoRr8xkD", "functionFlag": 11}, "immutableStorage": true, "inactiveTimeout": 41, "inviteTimeout": 10, "joinability": "QfIFM9Dh", "leaderElectionGracePeriod": 68, "manualRejoin": true, "maxActiveSessions": 0, "maxPlayers": 81, "minPlayers": 44, "name": "oy9opK90", "persistent": false, "preferredClaimKeys": ["51i14n8S", "LuZL93yR", "hCdEnpUW"], "requestedRegions": ["F9cGcKsR", "hclQASd5", "KJEGuZxY"], "textChat": false, "tieTeamsSessionLifetime": true, "type": "nMbfMvnn"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'DmBboerF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 'sdqxX4GU' \
    --namespace $AB_NAMESPACE \
    --userId '4j9392lJ' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name '0Yu0qepn' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "1K0BdyZ5"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminReconcileMaxActiveSession' test.out

#- 23 AdminGetDSMCConfiguration
samples/cli/sample-apps Session adminGetDSMCConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'AdminGetDSMCConfiguration' test.out

#- 24 AdminSyncDSMCConfiguration
samples/cli/sample-apps Session adminSyncDSMCConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'AdminSyncDSMCConfiguration' test.out

#- 25 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName '916coa1p' \
    --dsPodName 'Jtuc90P9' \
    --fromTime 'GjCUZbG8' \
    --gameMode 'wE0jz55k' \
    --isPersistent 'J0VfY7lk' \
    --isSoftDeleted 'OIxp0262' \
    --joinability '6B5tP8eI' \
    --limit '50' \
    --matchPool 'Lv22BuTR' \
    --memberID '9N0XHxRO' \
    --offset '89' \
    --order 'Rr30zJWj' \
    --orderBy 'i8Zth8Jg' \
    --sessionID '8tSOprdG' \
    --status '13KYZp0Z' \
    --statusV2 'dzRiYvgN' \
    --toTime 'u32RpR9C' \
    > test.out 2>&1
eval_tap $? 25 'AdminQueryGameSessions' test.out

#- 26 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"6675gHeB": {}, "hqoKhw2D": {}, "8wpDFjgB": {}}' \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["MpAXDWAj", "W3DtEJk7", "pVT3zD5F"]}' \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'rqa3ek2Y' \
    --body '{"ready": false}' \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminKickGameSessionMember
samples/cli/sample-apps Session adminKickGameSessionMember \
    --memberId 'cuQTh8if' \
    --namespace $AB_NAMESPACE \
    --sessionId 'Sm6x0Hiu' \
    > test.out 2>&1
eval_tap $? 29 'AdminKickGameSessionMember' test.out

#- 30 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'Bl9qwExl' \
    --namespace $AB_NAMESPACE \
    --sessionId '9PWdcXFa' \
    --statusType 'LLsNMrio' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateGameSessionMember' test.out

#- 31 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '58' \
    --order '86Eql0a3' \
    > test.out 2>&1
eval_tap $? 31 'AdminGetListNativeSession' test.out

#- 32 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --isSoftDeleted 'hHbVccFY' \
    --joinability 'cRJytN7w' \
    --key 'BQ565bhh' \
    --leaderID 'MxF9rlFR' \
    --limit '65' \
    --memberID 'fMYmXTUi' \
    --memberStatus 'Di2bjOZD' \
    --offset '0' \
    --order 'ngGb9RG4' \
    --orderBy 'klTJwZJU' \
    --partyID 'CvX6m4HI' \
    --value 'FqBy4DgN' \
    > test.out 2>&1
eval_tap $? 32 'AdminQueryParties' test.out

#- 33 AdminDeleteBulkParties
samples/cli/sample-apps Session adminDeleteBulkParties \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["lJRdnnZ9", "EvocWkrv", "5y9H6auX"]}' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteBulkParties' test.out

#- 34 AdminReadPartySessionStorage
samples/cli/sample-apps Session adminReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId 'gymQBpy5' \
    > test.out 2>&1
eval_tap $? 34 'AdminReadPartySessionStorage' test.out

#- 35 AdminGetPlatformCredentials
samples/cli/sample-apps Session adminGetPlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'AdminGetPlatformCredentials' test.out

#- 36 AdminUpdatePlatformCredentials
samples/cli/sample-apps Session adminUpdatePlatformCredentials \
    --namespace $AB_NAMESPACE \
    --body '{"psn": {"clientId": "2oP9j4Xe", "clientSecret": "tqHXNTpw", "scope": "8BkQ7C3O"}}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdatePlatformCredentials' test.out

#- 37 AdminDeletePlatformCredentials
samples/cli/sample-apps Session adminDeletePlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'AdminDeletePlatformCredentials' test.out

#- 38 AdminDeletePlatformCredentialsByPlatformId
samples/cli/sample-apps Session adminDeletePlatformCredentialsByPlatformId \
    --namespace $AB_NAMESPACE \
    --platformId 'XBOX' \
    > test.out 2>&1
eval_tap $? 38 'AdminDeletePlatformCredentialsByPlatformId' test.out

#- 39 AdminSyncPlatformCredentials
samples/cli/sample-apps Session adminSyncPlatformCredentials \
    --namespace $AB_NAMESPACE \
    --platformId 'XBOX' \
    > test.out 2>&1
eval_tap $? 39 'AdminSyncPlatformCredentials' test.out

#- 40 AdminGetRecentPlayer
samples/cli/sample-apps Session adminGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --userId 'SGPHU96R' \
    > test.out 2>&1
eval_tap $? 40 'AdminGetRecentPlayer' test.out

#- 41 AdminGetRecentTeamPlayer
samples/cli/sample-apps Session adminGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --userId 'agpFWST0' \
    > test.out 2>&1
eval_tap $? 41 'AdminGetRecentTeamPlayer' test.out

#- 42 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId '8M8qv9C1' \
    > test.out 2>&1
eval_tap $? 42 'AdminReadSessionStorage' test.out

#- 43 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'OlV0YiGQ' \
    > test.out 2>&1
eval_tap $? 43 'AdminDeleteUserSessionStorage' test.out

#- 44 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'f0n2hQ9l' \
    --userId 'momZHHkI' \
    > test.out 2>&1
eval_tap $? 44 'AdminReadUserSessionStorage' test.out

#- 45 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'jteoCPkw' \
    > test.out 2>&1
eval_tap $? 45 'AdminQueryPlayerAttributes' test.out

#- 46 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'xgf6QQZs' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetPlayerAttributes' test.out

#- 47 AdminSyncNativeSession
samples/cli/sample-apps Session adminSyncNativeSession \
    --namespace $AB_NAMESPACE \
    --userId 'PE4iNOeY' \
    > test.out 2>&1
eval_tap $? 47 'AdminSyncNativeSession' test.out

#- 48 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "bfFdDYOZ", "attributes": {"JyQ1AIHb": {}, "fYDF6i7B": {}, "5AqYaDC5": {}}, "autoJoin": true, "backfillTicketID": "Df28FZHw", "clientVersion": "zuwvqo6x", "configurationName": "9M4vNJTu", "customURLGRPC": "87lKhdXq", "deployment": "weUJ8mpe", "dsSource": "rX6Qt3wa", "fallbackClaimKeys": ["KjQ4QbK2", "kRAq6S3y", "fpA6qrGU"], "inactiveTimeout": 45, "inviteTimeout": 1, "joinability": "vZqFo2R9", "matchPool": "m3XaPwrt", "maxPlayers": 43, "minPlayers": 54, "preferredClaimKeys": ["2oEC5bum", "CAYaNqN6", "8XMb5Q7q"], "requestedRegions": ["25A4e6Pj", "dzBCVQNC", "Uw9epfp1"], "serverName": "r41WIlpT", "storage": {"leader": {"jE7mmxd5": {}, "lqcj0Q2G": {}, "GqyFZFt5": {}}}, "teams": [{"parties": [{"partyID": "my8RHn6F", "userIDs": ["pk8QhIkT", "matgR2lm", "mXh4tPqB"]}, {"partyID": "9tbYs01T", "userIDs": ["SRPJ1zwU", "NRgfE0wB", "vo3k2nuF"]}, {"partyID": "Osl1X4ZZ", "userIDs": ["1vPzchtz", "oc93pqlg", "LyLunizW"]}], "teamID": "ps6G9qs7", "userIDs": ["MufynB2C", "35wegkjP", "sTNdYoV3"]}, {"parties": [{"partyID": "gHwUwrHr", "userIDs": ["iQvsrhuG", "QR4DMI5M", "j9lz4YwK"]}, {"partyID": "XkgX1V0O", "userIDs": ["rPZEBTSf", "WqcDwSuf", "CVMI8Tgd"]}, {"partyID": "nPixDoY7", "userIDs": ["MAq57oq4", "1UOvYR9p", "ZZFfPkct"]}], "teamID": "dM9EaahK", "userIDs": ["7BU3stuP", "wPf0BwIe", "vlXi900C"]}, {"parties": [{"partyID": "OtiXgZkK", "userIDs": ["1TzitH2x", "ehCTm9zh", "pqoKYzBb"]}, {"partyID": "J0dDKuN6", "userIDs": ["DVxzxQX2", "zL8JOfgb", "gHrwrThh"]}, {"partyID": "gZRfeSLh", "userIDs": ["lxXKAjgI", "lzErBvK1", "n0XVvld8"]}], "teamID": "85eKTwPs", "userIDs": ["Ws4kv1UN", "sxZ6z4kY", "rwupruGJ"]}], "textChat": false, "ticketIDs": ["dpbIRHst", "TIivsgSK", "o9yhUJwe"], "tieTeamsSessionLifetime": false, "type": "bv1GMK1h"}' \
    > test.out 2>&1
eval_tap $? 48 'CreateGameSession' test.out

#- 49 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"1fXrEl58": {}, "KdjIuN2D": {}, "rmnU9Uo3": {}}' \
    > test.out 2>&1
eval_tap $? 49 'PublicQueryGameSessionsByAttributes' test.out

#- 50 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "QmUKNDqD"}' \
    > test.out 2>&1
eval_tap $? 50 'PublicSessionJoinCode' test.out

#- 51 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'C3mlqnVH' \
    > test.out 2>&1
eval_tap $? 51 'GetGameSessionByPodName' test.out

#- 52 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'X7o6FqR6' \
    > test.out 2>&1
eval_tap $? 52 'GetGameSession' test.out

#- 53 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '2PzqrbV1' \
    --body '{"attributes": {"i7v6YBVp": {}, "sxu7iJu7": {}, "P6EojPjC": {}}, "backfillTicketID": "J0vzR2d8", "clientVersion": "wDOxHy8I", "deployment": "mfnFcCMR", "fallbackClaimKeys": ["qVI7jIfx", "DfvhIbUm", "LgiL4pHf"], "inactiveTimeout": 88, "inviteTimeout": 52, "joinability": "77sHFrd3", "matchPool": "Zs0urKYZ", "maxPlayers": 87, "minPlayers": 75, "preferredClaimKeys": ["X1LLeN7v", "wW2gFDLd", "mZWfIvk4"], "requestedRegions": ["e27mSeHT", "NwamHx6M", "wPQ10HTp"], "teams": [{"parties": [{"partyID": "yfIPb5iA", "userIDs": ["ZYnHjJH9", "LI9cuj5Z", "8CrHkRhf"]}, {"partyID": "SCLBdYSy", "userIDs": ["rRIjiVG2", "4ktEOp8b", "6VtKcKAa"]}, {"partyID": "1DyoaYg5", "userIDs": ["1Tvi7nCB", "lUKy2xTG", "c84PnfHw"]}], "teamID": "zncQ0XyZ", "userIDs": ["OY41i3oz", "jLmxVmxx", "gCp53KLP"]}, {"parties": [{"partyID": "QNq4lHEm", "userIDs": ["b4MOWkwz", "PTLQHc1d", "NMzUfUCL"]}, {"partyID": "3OL8YynW", "userIDs": ["s9oIQdqv", "njMLmfZQ", "GzCb9Zrf"]}, {"partyID": "4lTNASdc", "userIDs": ["EBYWdf2G", "OM3igI05", "UaWwqGjV"]}], "teamID": "Kg7RTGdy", "userIDs": ["zOI9W2JV", "YLIiXSwc", "in63XLSc"]}, {"parties": [{"partyID": "mRDDb5Ca", "userIDs": ["C6G5ZDht", "tBGbHqKb", "vgtN6vQs"]}, {"partyID": "EviZBX4t", "userIDs": ["g4c6KZNi", "Il5EEOP5", "nndroRbz"]}, {"partyID": "GItG3Z3Q", "userIDs": ["sEGeyEKj", "K1Rl5T9D", "I88WU6g4"]}], "teamID": "POrhKxSj", "userIDs": ["Z7PKZBYu", "Gqs3miIb", "QWZfntf6"]}], "ticketIDs": ["Mx76ixab", "jlfFMZgo", "c3VYzqXp"], "tieTeamsSessionLifetime": false, "type": "vl3JUCFA", "version": 30}' \
    > test.out 2>&1
eval_tap $? 53 'UpdateGameSession' test.out

#- 54 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'K5YoI9NK' \
    > test.out 2>&1
eval_tap $? 54 'DeleteGameSession' test.out

#- 55 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'cQe3e9mJ' \
    --body '{"attributes": {"reFNg8gj": {}, "5QOGSS4I": {}, "ywra3nio": {}}, "backfillTicketID": "Nw7u1Yqh", "clientVersion": "HXjkxMdw", "deployment": "rxaC5EyN", "fallbackClaimKeys": ["uxK2efgL", "sjKEUecS", "epb8lL4B"], "inactiveTimeout": 2, "inviteTimeout": 45, "joinability": "LpIyGPxx", "matchPool": "92zz13E5", "maxPlayers": 82, "minPlayers": 6, "preferredClaimKeys": ["7LJ7Vj7h", "w9dgBM4Z", "vWh5yHY3"], "requestedRegions": ["7cBO2538", "LZoWQoHw", "OpExaFYy"], "teams": [{"parties": [{"partyID": "4t6plSeg", "userIDs": ["T9P1pnZZ", "yJ4QZ4Mv", "bhg7u7QE"]}, {"partyID": "YDi32UZv", "userIDs": ["I690aapX", "qfMoBoap", "AU1mlorW"]}, {"partyID": "J1NQ8tag", "userIDs": ["inAEXPBB", "N0P1OmdG", "4SYh7tvh"]}], "teamID": "9k8oymkw", "userIDs": ["AbBnlkQ1", "C9DIjlZD", "gy4l6iah"]}, {"parties": [{"partyID": "oEQBYpfI", "userIDs": ["ZYbqFVFw", "drrTsFuD", "NYZdqJRH"]}, {"partyID": "gGGO9seB", "userIDs": ["SRwMMJP7", "cGrTipkc", "WPy3OLpM"]}, {"partyID": "x5sKwF0q", "userIDs": ["Ex5SWhex", "X6DJT7fY", "v7jpAPp1"]}], "teamID": "h00Ilvp0", "userIDs": ["WLpxurRz", "emMdj9Fu", "8yg00Lm0"]}, {"parties": [{"partyID": "9LvftpQI", "userIDs": ["uLzx36VF", "ijZM2ExO", "xcP9xpP4"]}, {"partyID": "P2dcAQW6", "userIDs": ["vEd6fOq7", "XlYwlubm", "kfoCU0v7"]}, {"partyID": "iYitQqZI", "userIDs": ["M1EywGuz", "f7w09jHz", "zN21kRwc"]}], "teamID": "rvwZWcuZ", "userIDs": ["DqrjBix1", "1skLmZ2j", "gY4KEDM0"]}], "ticketIDs": ["klRaW1e8", "hTALgAZl", "kqUf4kYU"], "tieTeamsSessionLifetime": false, "type": "H1z8U0bg", "version": 0}' \
    > test.out 2>&1
eval_tap $? 55 'PatchUpdateGameSession' test.out

#- 56 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'wzOLQnnN' \
    --body '{"backfillTicketID": "SYkcLQiG"}' \
    > test.out 2>&1
eval_tap $? 56 'UpdateGameSessionBackfillTicketID' test.out

#- 57 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'mDLdCTMV' \
    > test.out 2>&1
eval_tap $? 57 'GameSessionGenerateCode' test.out

#- 58 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'QUQ6WkVr' \
    > test.out 2>&1
eval_tap $? 58 'PublicRevokeGameSessionCode' test.out

#- 59 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'iSWbwBKT' \
    --body '{"metadata": {"U8gxvtaK": "zl9cBbKF", "OqfYpXyz": "kopNSXZe", "qtBtEZc0": "D8zQOpJb"}, "platformID": "gt9MpXj7", "userID": "nkX059Dj"}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGameSessionInvite' test.out

#- 60 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'Ye5QXAGH' \
    > test.out 2>&1
eval_tap $? 60 'JoinGameSession' test.out

#- 61 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'wsLGdAig' \
    --body '{"leaderID": "edQuBKov"}' \
    > test.out 2>&1
eval_tap $? 61 'PublicPromoteGameSessionLeader' test.out

#- 62 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'rnbPCP1Z' \
    > test.out 2>&1
eval_tap $? 62 'LeaveGameSession' test.out

#- 63 PublicKickGameSessionMember
samples/cli/sample-apps Session publicKickGameSessionMember \
    --memberId 'X5sUeKWq' \
    --namespace $AB_NAMESPACE \
    --sessionId 'DEZPPvNY' \
    > test.out 2>&1
eval_tap $? 63 'PublicKickGameSessionMember' test.out

#- 64 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'JJis6Awb' \
    > test.out 2>&1
eval_tap $? 64 'PublicGameSessionReject' test.out

#- 65 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId '6M3Ti0s8' \
    > test.out 2>&1
eval_tap $? 65 'GetSessionServerSecret' test.out

#- 66 AppendTeamGameSession
eval_tap 0 66 'AppendTeamGameSession # SKIP deprecated' test.out

#- 67 PublicGameSessionCancel
samples/cli/sample-apps Session publicGameSessionCancel \
    --namespace $AB_NAMESPACE \
    --sessionId 'SbgHGtTV' \
    --userId '6bpaDGny' \
    > test.out 2>&1
eval_tap $? 67 'PublicGameSessionCancel' test.out

#- 68 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "JrJ4N0mO"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicPartyJoinCode' test.out

#- 69 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'FHrHsaNm' \
    > test.out 2>&1
eval_tap $? 69 'PublicGetParty' test.out

#- 70 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId '9QknyTNM' \
    --body '{"attributes": {"1ERfsSX9": {}, "xlI6ZE1Y": {}, "RwN4nuXN": {}}, "inactiveTimeout": 68, "inviteTimeout": 98, "joinability": "vPWVFr34", "maxPlayers": 72, "minPlayers": 82, "type": "vixwNlhu", "version": 98}' \
    > test.out 2>&1
eval_tap $? 70 'PublicUpdateParty' test.out

#- 71 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'DXGET1sY' \
    --body '{"attributes": {"W1Lmy0yr": {}, "s1Z7Tt7U": {}, "HAoknAqx": {}}, "inactiveTimeout": 72, "inviteTimeout": 67, "joinability": "fkn9ifvA", "maxPlayers": 24, "minPlayers": 84, "type": "DGfOOXLt", "version": 49}' \
    > test.out 2>&1
eval_tap $? 71 'PublicPatchUpdateParty' test.out

#- 72 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'x0W9aU9F' \
    > test.out 2>&1
eval_tap $? 72 'PublicGeneratePartyCode' test.out

#- 73 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'LwxbWfLg' \
    > test.out 2>&1
eval_tap $? 73 'PublicRevokePartyCode' test.out

#- 74 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'O9FmiBe7' \
    --body '{"metadata": {"MztziArh": "3cKVEj1R", "xV8Gbqci": "XySmOrsa", "4bgzNv3V": "00V1yQck"}, "platformID": "w1kMRVrQ", "userID": "oZH5RHke"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicPartyInvite' test.out

#- 75 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'GTbdUyQz' \
    --body '{"leaderID": "PnLT9HIu"}' \
    > test.out 2>&1
eval_tap $? 75 'PublicPromotePartyLeader' test.out

#- 76 PublicReadPartySessionStorage
samples/cli/sample-apps Session publicReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId 'DNqgrouT' \
    > test.out 2>&1
eval_tap $? 76 'PublicReadPartySessionStorage' test.out

#- 77 PublicUpdateInsertPartySessionStorageReserved
samples/cli/sample-apps Session publicUpdateInsertPartySessionStorageReserved \
    --namespace $AB_NAMESPACE \
    --partyId 'pczEAlBc' \
    --userId 'PJfc2vDq' \
    --body '{"u4qnEKta": {}, "84tHSqvL": {}, "8WxpRnik": {}}' \
    > test.out 2>&1
eval_tap $? 77 'PublicUpdateInsertPartySessionStorageReserved' test.out

#- 78 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'PPv2wbio' \
    > test.out 2>&1
eval_tap $? 78 'PublicPartyJoin' test.out

#- 79 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'EOHxmeUJ' \
    > test.out 2>&1
eval_tap $? 79 'PublicPartyLeave' test.out

#- 80 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'AoQY3p4B' \
    > test.out 2>&1
eval_tap $? 80 'PublicPartyReject' test.out

#- 81 PublicPartyCancel
samples/cli/sample-apps Session publicPartyCancel \
    --namespace $AB_NAMESPACE \
    --partyId '805qgNQ7' \
    --userId 'Mpt1wfE1' \
    > test.out 2>&1
eval_tap $? 81 'PublicPartyCancel' test.out

#- 82 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId '3hTbaH2b' \
    --userId '3HK2IDND' \
    > test.out 2>&1
eval_tap $? 82 'PublicPartyKick' test.out

#- 83 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"iDZbRLrA": {}, "SlUsErS8": {}, "JjoGLeNp": {}}, "configurationName": "v5fZ6FTx", "inactiveTimeout": 48, "inviteTimeout": 6, "joinability": "bdcmjugI", "maxPlayers": 47, "members": [{"ID": "QE0fLJr1", "PlatformID": "YQFe3zaa", "PlatformUserID": "zzGQWYgm"}, {"ID": "A8zSPu35", "PlatformID": "wVhYPT2B", "PlatformUserID": "vRVCiSo8"}, {"ID": "MjFyHAzi", "PlatformID": "RIcSAcTw", "PlatformUserID": "xhM8OKZO"}], "minPlayers": 6, "textChat": true, "type": "7mHS9T8N"}' \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateParty' test.out

#- 84 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    > test.out 2>&1
eval_tap $? 84 'PublicGetRecentPlayer' test.out

#- 85 PublicGetRecentTeamPlayer
samples/cli/sample-apps Session publicGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    > test.out 2>&1
eval_tap $? 85 'PublicGetRecentTeamPlayer' test.out

#- 86 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'vyfUrpvU' \
    --body '{"aFKVENFl": {}, "DQGq5YU6": {}, "2HozMm4P": {}}' \
    > test.out 2>&1
eval_tap $? 86 'PublicUpdateInsertSessionStorageLeader' test.out

#- 87 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'RxjcV8Dp' \
    --userId 'luv8H5IP' \
    --body '{"TaimYXtl": {}, "hUKNbHND": {}, "GckAcn3x": {}}' \
    > test.out 2>&1
eval_tap $? 87 'PublicUpdateInsertSessionStorage' test.out

#- 88 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["zgupzUPG", "TfHa5Oes", "gG9dkxs3"]}' \
    > test.out 2>&1
eval_tap $? 88 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 89 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 89 'PublicGetPlayerAttributes' test.out

#- 90 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": false, "currentPlatform": "PdBMzkaV", "data": {"MnKsJAsd": {}, "JCdBtMLr": {}, "oFazTE57": {}}, "platforms": [{"name": "sDu9sjfH", "userID": "KXjhQdam"}, {"name": "yGWAqNQf", "userID": "xXSFSjqG"}, {"name": "RiGfWx6e", "userID": "LZIMj2pu"}], "roles": ["7batNsU4", "qRUX1MMs", "YqtDVF0U"], "simultaneousPlatform": "Pe8afI5O"}' \
    > test.out 2>&1
eval_tap $? 90 'PublicStorePlayerAttributes' test.out

#- 91 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 91 'PublicDeletePlayerAttributes' test.out

#- 92 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'H4ss7EyD' \
    --orderBy 'cXsg1kMe' \
    --status 'ERpPvAAk' \
    > test.out 2>&1
eval_tap $? 92 'PublicQueryMyGameSessions' test.out

#- 93 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'lDh2k9FF' \
    --orderBy 'g0XEbDs9' \
    --status 'ImhgT2bF' \
    > test.out 2>&1
eval_tap $? 93 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE