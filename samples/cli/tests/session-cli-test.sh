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
echo "1..96"

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
    --body '{"metricExcludedNamespaces": ["4n4rPasU", "MoiooTjT", "AOHq3UAq"], "regionRetryMapping": {"2g6gMkvN": ["7Hr8yqgV", "brslFbPY", "uJzQpC5A"], "kP87xZBU": ["XDiET1gu", "XbTbUBO9", "698T1zWD"], "IGvqohc4": ["AkejzGe0", "wHGHqTY4", "gps3sI8O"]}, "regionURLMapping": ["IF9EQIEX", "bsSuHkXk", "yB4MoV7C"], "testGameMode": "e45ysWJb", "testRegionURLMapping": ["Xg8nCiG9", "YsbU7Fka", "JCMIDmx4"], "testTargetUserIDs": ["uRGth83z", "bfecL5ke", "nxFnW6Kk"]}' \
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
    --body '{"durationDays": 71}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationAlertV1' test.out

#- 13 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 72}' \
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
    --body '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["UPDATE_INVITABLE_USER_TYPE", "UPDATE_JOINABLE_USER_TYPE", "UPDATE_JOINABLE_USER_TYPE"], "PSNServiceLabel": 5, "PSNSupportedPlatforms": ["28oikGHW", "8O67Er8g", "jSLlQwS8"], "SessionTitle": "eE0kotpj", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "1UnildIj", "XboxServiceConfigID": "NuYwLoGV", "XboxSessionTemplateName": "yCvJunpm", "XboxTitleID": "d107lhdJ", "localizedSessionName": {"W3W4FGCl": {}, "MAKKwXvD": {}, "4nTmladK": {}}}, "PSNBaseUrl": "72GelRsI", "amsClaimTimeoutMinutes": 73, "appName": "I25TFtff", "asyncProcessDSRequest": {"async": false, "timeout": 10}, "attributes": {"E93EooJ5": {}, "DGv1njV5": {}, "oCqxxJY9": {}}, "autoJoin": false, "autoLeaveSession": false, "clientVersion": "i2zk6pZw", "customURLGRPC": "7cBoTpWk", "deployment": "s122EBCG", "disableCodeGeneration": false, "disableResendInvite": false, "dsManualSetReady": true, "dsSource": "dNx7Kugc", "enableSecret": true, "fallbackClaimKeys": ["FNVHzM7p", "I37v56M4", "dx0hVWHs"], "grpcSessionConfig": {"appName": "NhIrSPIG", "customURL": "B57RLujz", "functionFlag": 79}, "immutableStorage": false, "inactiveTimeout": 29, "inviteTimeout": 68, "joinability": "CLOSED", "leaderElectionGracePeriod": 46, "manualRejoin": true, "maxActiveSessions": 44, "maxPlayers": 69, "minPlayers": 76, "name": "WXwiT3LI", "partyCodeGeneratorString": "a7t05Z0Z", "partyCodeLength": 2, "persistent": true, "preferredClaimKeys": ["O5xlOqdV", "bdCCXRo3", "ln9AKZlr"], "requestedRegions": ["ckQxvYQX", "olpuuOqD", "Kwudzy2l"], "textChat": true, "textChatMode": "TEAM", "tieTeamsSessionLifetime": true, "ttlHours": 9, "type": "P2P"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateConfigurationTemplateV1' test.out

#- 17 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --name 'XCWEN3hp' \
    --offset '11' \
    --order 'OzKAi7V8' \
    --orderBy 'aimGcNKZ' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetAllConfigurationTemplatesV1' test.out

#- 18 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'TJbZnAS8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigurationTemplateV1' test.out

#- 19 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'I9pyHlyy' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["UPDATE_INVITABLE_USER_TYPE", "UPDATE_INVITABLE_USER_TYPE", "UPDATE_JOINABLE_USER_TYPE"], "PSNServiceLabel": 59, "PSNSupportedPlatforms": ["ELq7pl1D", "XDh4jenH", "RrAG6lJd"], "SessionTitle": "HYOQ869h", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "OLB8ECUH", "XboxServiceConfigID": "9UJFp2F4", "XboxSessionTemplateName": "4FmqjDK3", "XboxTitleID": "ETxC9tXI", "localizedSessionName": {"Vo7gTvXz": {}, "HPas6siF": {}, "FVML5ZjK": {}}}, "PSNBaseUrl": "907Jr4MS", "amsClaimTimeoutMinutes": 21, "appName": "vx3mO9uZ", "asyncProcessDSRequest": {"async": false, "timeout": 86}, "attributes": {"FCkETxMN": {}, "RomevX49": {}, "GIm4Ebqu": {}}, "autoJoin": false, "autoLeaveSession": false, "clientVersion": "AwJksKA5", "customURLGRPC": "3PO4kXTg", "deployment": "hEaoXKhM", "disableCodeGeneration": false, "disableResendInvite": false, "dsManualSetReady": true, "dsSource": "g4cIJmT2", "enableSecret": true, "fallbackClaimKeys": ["HbvDO4Tc", "3AFxfQxF", "1YhuDZA3"], "grpcSessionConfig": {"appName": "8wF2G1Ad", "customURL": "yzVnFoEw", "functionFlag": 64}, "immutableStorage": false, "inactiveTimeout": 32, "inviteTimeout": 30, "joinability": "FRIENDS_OF_FRIENDS", "leaderElectionGracePeriod": 21, "manualRejoin": true, "maxActiveSessions": 58, "maxPlayers": 61, "minPlayers": 22, "name": "mJlXO1qV", "partyCodeGeneratorString": "c3vJNdd9", "partyCodeLength": 43, "persistent": false, "preferredClaimKeys": ["9epwKSxD", "nhZg5VRY", "ZdYBKmaZ"], "requestedRegions": ["Sd8y4kTl", "rmJ3yXQy", "o82bJSQv"], "textChat": true, "textChatMode": "TEAM", "tieTeamsSessionLifetime": true, "ttlHours": 65, "type": "DS"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name '7uqcCuUI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 's60a9eng' \
    --namespace $AB_NAMESPACE \
    --userId '82jxZeUx' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'zszAEZhb' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "zWjQSUNa"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminReconcileMaxActiveSession' test.out

#- 23 AdminGetDSMCConfiguration
eval_tap 0 23 'AdminGetDSMCConfiguration # SKIP deprecated' test.out

#- 24 AdminSyncDSMCConfiguration
eval_tap 0 24 'AdminSyncDSMCConfiguration # SKIP deprecated' test.out

#- 25 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName 'kpCmRPd9' \
    --dsPodName 'jOog8gmK' \
    --fromTime 'tJaXVLGQ' \
    --gameMode 'zM8EyniU' \
    --isPersistent 'Po2xYlrv' \
    --isSoftDeleted 'LBsCmtOv' \
    --joinability 'OPEN' \
    --limit '9' \
    --matchPool 'oamYRJiY' \
    --memberID 'izqqStCI' \
    --offset '89' \
    --order 'CWlTrTvy' \
    --orderBy 'TIGZNu7Z' \
    --sessionID '3f8I7HUH' \
    --status 'PREPARING' \
    --statusV2 'NEED_TO_REQUEST' \
    --toTime 'dnt9Scgk' \
    > test.out 2>&1
eval_tap $? 25 'AdminQueryGameSessions' test.out

#- 26 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"RAdlrFuI": {}, "R1fijtlP": {}, "6RHKY0HA": {}}' \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["PYhlhFGR", "JfvPfZFc", "CQ2MhoRu"]}' \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId '7mNiQEqh' \
    --body '{"ready": true}' \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminUpdateDSInformation
samples/cli/sample-apps Session adminUpdateDSInformation \
    --namespace $AB_NAMESPACE \
    --sessionId 'dRi0cc23' \
    --body '{"createdRegion": "TK6Qo5Cn", "deployment": "Xmq9k5pj", "description": "zrpKWo5l", "ip": "5DXhePDJ", "port": 64, "region": "HYsZ9XGn", "serverId": "tUM8AnWN", "source": "bQcftkoC", "status": "Mf0U3Lzf"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateDSInformation' test.out

#- 30 AdminKickGameSessionMember
samples/cli/sample-apps Session adminKickGameSessionMember \
    --memberId 'iyzVZQHG' \
    --namespace $AB_NAMESPACE \
    --sessionId 'mHrc72Ux' \
    > test.out 2>&1
eval_tap $? 30 'AdminKickGameSessionMember' test.out

#- 31 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'btGVEVTu' \
    --namespace $AB_NAMESPACE \
    --sessionId 'ARqreaE0' \
    --statusType 'HzPTJ9ld' \
    > test.out 2>&1
eval_tap $? 31 'AdminUpdateGameSessionMember' test.out

#- 32 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '42' \
    --order 'EFo1fygF' \
    > test.out 2>&1
eval_tap $? 32 'AdminGetListNativeSession' test.out

#- 33 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --configurationName 'MmRswM0q' \
    --fromTime 'j102zBuN' \
    --isSoftDeleted 'L1PKr1b2' \
    --joinability 'OPEN' \
    --key '5Gu5qcTF' \
    --leaderID 'hP7aTNuF' \
    --limit '50' \
    --memberID 'cztDD92m' \
    --memberStatus 'JOINED' \
    --offset '26' \
    --order 'pY1bzQEn' \
    --orderBy 'WmEoH69j' \
    --partyID '9sfyv1tP' \
    --toTime 'E0e2LexT' \
    --value 'mgZC9jOT' \
    > test.out 2>&1
eval_tap $? 33 'AdminQueryParties' test.out

#- 34 AdminDeleteBulkParties
samples/cli/sample-apps Session adminDeleteBulkParties \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["zSXOUWMI", "8bFDsLFB", "kPBsg7be"]}' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteBulkParties' test.out

#- 35 AdminReadPartySessionStorage
samples/cli/sample-apps Session adminReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId 'QZvgTrue' \
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
    --body '{"psn": {"clientId": "9ljtxZhB", "clientSecret": "E137fLoV", "scope": "9gypbolQ"}}' \
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

#- 41 AdminUploadPlatformCredentials
samples/cli/sample-apps Session adminUploadPlatformCredentials \
    --namespace $AB_NAMESPACE \
    --platformId 'XBOX' \
    --description 'hCt3sevf' \
    --file 'tmp.dat' \
    --password 'P21R5X1j' \
    > test.out 2>&1
eval_tap $? 41 'AdminUploadPlatformCredentials' test.out

#- 42 AdminGetRecentPlayer
samples/cli/sample-apps Session adminGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --userId 'fZxTdbtP' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetRecentPlayer' test.out

#- 43 AdminGetRecentTeamPlayer
samples/cli/sample-apps Session adminGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --userId '6grc1iQX' \
    > test.out 2>&1
eval_tap $? 43 'AdminGetRecentTeamPlayer' test.out

#- 44 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'cxmav3JZ' \
    > test.out 2>&1
eval_tap $? 44 'AdminReadSessionStorage' test.out

#- 45 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'hjwtgEz5' \
    > test.out 2>&1
eval_tap $? 45 'AdminDeleteUserSessionStorage' test.out

#- 46 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'abHZ68Ul' \
    --userId 'IWQIJ3GT' \
    > test.out 2>&1
eval_tap $? 46 'AdminReadUserSessionStorage' test.out

#- 47 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'nmwLL3Mb' \
    > test.out 2>&1
eval_tap $? 47 'AdminQueryPlayerAttributes' test.out

#- 48 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'Re8v3b4K' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetPlayerAttributes' test.out

#- 49 AdminSyncNativeSession
samples/cli/sample-apps Session adminSyncNativeSession \
    --namespace $AB_NAMESPACE \
    --userId 'wSZXpZrA' \
    > test.out 2>&1
eval_tap $? 49 'AdminSyncNativeSession' test.out

#- 50 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --resolveMaxActiveSession 'true' \
    --body '{"appName": "g6Vb7kJ3", "attributes": {"DkZCdw8x": {}, "HWrYiUNn": {}, "Gzpod8Tj": {}}, "autoJoin": true, "backfillTicketID": "lRgzCpPo", "clientVersion": "Og4PBgk9", "configurationName": "IfKfgCib", "customURLGRPC": "EKIbibqm", "deployment": "ASFmz8Nx", "dsSource": "XOBvmhga", "fallbackClaimKeys": ["1RpQJHCP", "6KjuFfyI", "9gIJxazj"], "inactiveTimeout": 59, "inviteTimeout": 44, "joinability": "FRIENDS_OF_MEMBERS", "matchPool": "T5kNrO3J", "maxPlayers": 63, "minPlayers": 71, "preferredClaimKeys": ["kumWfjom", "fWnWJKY6", "5ZlOU01i"], "requestedRegions": ["V5u3eQG5", "ursdvF48", "MMDW4PA0"], "serverName": "yFL6YMkw", "storage": {"leader": {"CXBGfaQP": {}, "obz3YTaF": {}, "fln9Kbkh": {}}}, "teams": [{"parties": [{"partyID": "sK1BtmZg", "userIDs": ["69gs8AMJ", "V7pqIX0n", "hXOxBRYw"]}, {"partyID": "76yCbjYv", "userIDs": ["qtqPaWGv", "OoqPTtXf", "jkPtmIP6"]}, {"partyID": "qGBMjpjQ", "userIDs": ["KhMXtIYN", "61RJYYf4", "JT0z3sTi"]}], "teamID": "Wnk8sPEA", "userIDs": ["ZBpKbXPd", "UpcWTkhu", "VcziRLq7"]}, {"parties": [{"partyID": "WpzM885F", "userIDs": ["rtEg8rzm", "8eIUGFpZ", "upsKMnpq"]}, {"partyID": "8WHa3bdt", "userIDs": ["3gQ8Whcr", "g9EvDYeB", "LbLNGpp6"]}, {"partyID": "CWwhUJGe", "userIDs": ["4dRZDJgY", "WoUPymUP", "xJqTzZS9"]}], "teamID": "YYbooGOX", "userIDs": ["cpVVY3AB", "RsJuxGzy", "iH2GLVVe"]}, {"parties": [{"partyID": "6dewAKKD", "userIDs": ["VFdVxs0c", "TUMskwdu", "8I8vDKzS"]}, {"partyID": "7ugKOkPR", "userIDs": ["6IUgIhUt", "to8zyL4Q", "vtWN0gQl"]}, {"partyID": "mIFjfg1F", "userIDs": ["MfxYLZvW", "eE0eyH9J", "kXIORxZm"]}], "teamID": "KwPVt1Ue", "userIDs": ["MJnUdaY1", "f3SNTjjs", "Q8tj9vL5"]}], "textChat": false, "textChatMode": "NONE", "ticketIDs": ["thZcGDWr", "kXDIoB3u", "Mq46VVJH"], "tieTeamsSessionLifetime": false, "type": "DS"}' \
    > test.out 2>&1
eval_tap $? 50 'CreateGameSession' test.out

#- 51 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"clZqKVXL": {}, "RwlN9qdR": {}, "LPk9qGZO": {}}' \
    > test.out 2>&1
eval_tap $? 51 'PublicQueryGameSessionsByAttributes' test.out

#- 52 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "NGoBh1w6"}' \
    > test.out 2>&1
eval_tap $? 52 'PublicSessionJoinCode' test.out

#- 53 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'zEbV7Kka' \
    > test.out 2>&1
eval_tap $? 53 'GetGameSessionByPodName' test.out

#- 54 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'ChJSIkom' \
    > test.out 2>&1
eval_tap $? 54 'GetGameSession' test.out

#- 55 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'MTvSLccf' \
    --body '{"attributes": {"sReqZ0x4": {}, "MEr5E7ve": {}, "6sZ8RKr0": {}}, "backfillTicketID": "HHKaN670", "clientVersion": "FnejOpNx", "deployment": "ZBeVvxJ8", "fallbackClaimKeys": ["7a0Ne2yg", "NHWXwlJb", "GpS6CpGq"], "inactiveTimeout": 29, "inviteTimeout": 28, "joinability": "FRIENDS_OF_MEMBERS", "matchPool": "bT8Feeey", "maxPlayers": 59, "minPlayers": 78, "preferredClaimKeys": ["kwETzFZd", "HPJV6gg7", "9T4oWtRu"], "requestedRegions": ["AvVMhO6N", "2z5UZjni", "iPDpYbeG"], "teams": [{"parties": [{"partyID": "9lLBxxp4", "userIDs": ["SPhyMz2F", "gKwo1ybO", "OIjsuZXD"]}, {"partyID": "qyPUi2LG", "userIDs": ["VE5mIDt3", "CDlg4HEl", "FCHeRg0C"]}, {"partyID": "ChOIDoCj", "userIDs": ["5ctXcCBQ", "M1onBdRN", "z3NBYdMH"]}], "teamID": "huLb1L2E", "userIDs": ["eBdGcIID", "YgxJQ0Yi", "3RN2Nt8Y"]}, {"parties": [{"partyID": "MH1Hi9mw", "userIDs": ["3xbdMfKw", "5n5CwIYa", "jaieGOIr"]}, {"partyID": "yPTQnDUc", "userIDs": ["Nz6tR39V", "EowOIIjw", "QclOg42c"]}, {"partyID": "UNVY9YSE", "userIDs": ["UehkiMTO", "88Gd5ScW", "QpU3cqdF"]}], "teamID": "31NJgT4v", "userIDs": ["nNwMdUUv", "gL9S8PvG", "ThRLnsr2"]}, {"parties": [{"partyID": "IhO3gZL2", "userIDs": ["FV0OPkKK", "yhkZbfSn", "amT6vm2n"]}, {"partyID": "0qjbem4c", "userIDs": ["DJ8mjumT", "kI2x8wfW", "qB5qYMBF"]}, {"partyID": "Y3wWYl6r", "userIDs": ["dJWACbXY", "mghI8aLg", "V5j4scKN"]}], "teamID": "zojWJNmN", "userIDs": ["Aua7OV43", "ht5gjEjG", "I6zylll9"]}], "ticketIDs": ["Pq3QkyyK", "P1muULbg", "taEnhwYK"], "tieTeamsSessionLifetime": false, "type": "DS", "version": 18}' \
    > test.out 2>&1
eval_tap $? 55 'UpdateGameSession' test.out

#- 56 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'EUBJ94cb' \
    > test.out 2>&1
eval_tap $? 56 'DeleteGameSession' test.out

#- 57 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'A8W0sPXx' \
    --body '{"attributes": {"M1n582wb": {}, "G7Kd6z3O": {}, "A9rfJa91": {}}, "backfillTicketID": "pRpxkLrR", "clientVersion": "Ic6pQ34J", "deployment": "1gc9mM2D", "fallbackClaimKeys": ["l2jINJsA", "KWc0Yb7s", "DSaIFx06"], "inactiveTimeout": 94, "inviteTimeout": 52, "joinability": "OPEN", "matchPool": "voy4THTe", "maxPlayers": 44, "minPlayers": 62, "preferredClaimKeys": ["BatRv1Uo", "TEbP2u8K", "eTR3SG4o"], "requestedRegions": ["qlhcUQyU", "54NQ01Ov", "uwUODyol"], "teams": [{"parties": [{"partyID": "mQCbOptw", "userIDs": ["JLsUy6yt", "o156Ewf7", "snMdjRyI"]}, {"partyID": "fjty8kLJ", "userIDs": ["fprRIZ5E", "SVHhb3mo", "egMNo9hn"]}, {"partyID": "2zDWSHgl", "userIDs": ["9muGYJFa", "1E3Yr2NQ", "sUYMSHPN"]}], "teamID": "GCyJEutb", "userIDs": ["Mf3imlBn", "NvgLFCaO", "GSejEzzE"]}, {"parties": [{"partyID": "FtbjVHFG", "userIDs": ["gkaRm9oj", "Epw4GSPf", "BI3teO5I"]}, {"partyID": "U7TW1Spb", "userIDs": ["XQJWLiTW", "P7lz8qw1", "n4ZXVIH2"]}, {"partyID": "L1vp4NV5", "userIDs": ["RJvgryI8", "FpalYljx", "4WftQV17"]}], "teamID": "wvcRpoDH", "userIDs": ["tU9UepP5", "bkpQv7PS", "gh1Vbkwm"]}, {"parties": [{"partyID": "SIJtbBXK", "userIDs": ["KZlriYYV", "gYuo1A6J", "EFC6vmOX"]}, {"partyID": "47uKqZih", "userIDs": ["pcrs5DfV", "RfOJovcP", "sOBqglpQ"]}, {"partyID": "ivOgaokQ", "userIDs": ["Co8chydm", "0z4itoL0", "n29MlJ7L"]}], "teamID": "D1TKMKHu", "userIDs": ["9PJ6p5SH", "hwHWquQj", "2mpwf5sU"]}], "ticketIDs": ["gxPPHeP5", "ZpYwBpni", "wvonl0Tu"], "tieTeamsSessionLifetime": false, "type": "P2P", "version": 75}' \
    > test.out 2>&1
eval_tap $? 57 'PatchUpdateGameSession' test.out

#- 58 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'dIQOmRs0' \
    --body '{"backfillTicketID": "mSK30s0r"}' \
    > test.out 2>&1
eval_tap $? 58 'UpdateGameSessionBackfillTicketID' test.out

#- 59 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'g5l1IysO' \
    > test.out 2>&1
eval_tap $? 59 'GameSessionGenerateCode' test.out

#- 60 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId '6Sfrnswo' \
    > test.out 2>&1
eval_tap $? 60 'PublicRevokeGameSessionCode' test.out

#- 61 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 't4LY7Ngd' \
    --body '{"metadata": {"0jovcmiB": "Kw0kZky7", "L9PqpPK6": "YxOxiKXb", "fZle1E6X": "fqPR48z2"}, "platformID": "c03HRxxr", "userID": "on5X8P4S"}' \
    > test.out 2>&1
eval_tap $? 61 'PublicGameSessionInvite' test.out

#- 62 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'auYgBAw2' \
    > test.out 2>&1
eval_tap $? 62 'JoinGameSession' test.out

#- 63 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'X7TkvIZs' \
    --body '{"leaderID": "qyE0yYI6"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicPromoteGameSessionLeader' test.out

#- 64 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'pSlKv2um' \
    > test.out 2>&1
eval_tap $? 64 'LeaveGameSession' test.out

#- 65 PublicKickGameSessionMember
samples/cli/sample-apps Session publicKickGameSessionMember \
    --memberId 'PDqTOn43' \
    --namespace $AB_NAMESPACE \
    --sessionId '0qW0f7aE' \
    > test.out 2>&1
eval_tap $? 65 'PublicKickGameSessionMember' test.out

#- 66 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'kHvKkkne' \
    > test.out 2>&1
eval_tap $? 66 'PublicGameSessionReject' test.out

#- 67 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId 'lNTGsiAd' \
    > test.out 2>&1
eval_tap $? 67 'GetSessionServerSecret' test.out

#- 68 AppendTeamGameSession
eval_tap 0 68 'AppendTeamGameSession # SKIP deprecated' test.out

#- 69 PublicGameSessionCancel
samples/cli/sample-apps Session publicGameSessionCancel \
    --namespace $AB_NAMESPACE \
    --sessionId '59gDr4A9' \
    --userId 'yJUE3FtV' \
    > test.out 2>&1
eval_tap $? 69 'PublicGameSessionCancel' test.out

#- 70 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "hTHcOdV1"}' \
    > test.out 2>&1
eval_tap $? 70 'PublicPartyJoinCode' test.out

#- 71 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'x0j055X6' \
    > test.out 2>&1
eval_tap $? 71 'PublicGetParty' test.out

#- 72 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId '2FIXLG2i' \
    --body '{"attributes": {"fBXFLBTN": {}, "D37f0f6U": {}, "RDUcfNbA": {}}, "inactiveTimeout": 29, "inviteTimeout": 98, "joinability": "INVITE_ONLY", "maxPlayers": 70, "minPlayers": 50, "type": "NONE", "version": 56}' \
    > test.out 2>&1
eval_tap $? 72 'PublicUpdateParty' test.out

#- 73 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'a3XaR5Xn' \
    --body '{"attributes": {"h7p1jyFY": {}, "juwGe6r4": {}, "PiLjcxqU": {}}, "inactiveTimeout": 18, "inviteTimeout": 89, "joinability": "INVITE_ONLY", "maxPlayers": 7, "minPlayers": 45, "type": "NONE", "version": 61}' \
    > test.out 2>&1
eval_tap $? 73 'PublicPatchUpdateParty' test.out

#- 74 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'Kdls7hJA' \
    > test.out 2>&1
eval_tap $? 74 'PublicGeneratePartyCode' test.out

#- 75 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'H7BKKke5' \
    > test.out 2>&1
eval_tap $? 75 'PublicRevokePartyCode' test.out

#- 76 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'xSl65M9o' \
    --body '{"metadata": {"hNCgu3ei": "gaxjOk2J", "j9TZr4aw": "qa6nbVca", "ZB6DvarI": "sD0jsmHm"}, "platformID": "XFfgnVcA", "userID": "p5HD7rVu"}' \
    > test.out 2>&1
eval_tap $? 76 'PublicPartyInvite' test.out

#- 77 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'Z2aH05Cz' \
    --body '{"leaderID": "bMZZO85T"}' \
    > test.out 2>&1
eval_tap $? 77 'PublicPromotePartyLeader' test.out

#- 78 PublicReadPartySessionStorage
samples/cli/sample-apps Session publicReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId 'Y1jmiNEe' \
    > test.out 2>&1
eval_tap $? 78 'PublicReadPartySessionStorage' test.out

#- 79 PublicUpdateInsertPartySessionStorage
samples/cli/sample-apps Session publicUpdateInsertPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId 'fcJIr0up' \
    --userId '54FmUwgn' \
    --body '{"PfR0aMuj": {}, "afMdI2kD": {}, "kyPH3FKR": {}}' \
    > test.out 2>&1
eval_tap $? 79 'PublicUpdateInsertPartySessionStorage' test.out

#- 80 PublicUpdateInsertPartySessionStorageReserved
samples/cli/sample-apps Session publicUpdateInsertPartySessionStorageReserved \
    --namespace $AB_NAMESPACE \
    --partyId 'y9a0Ws4A' \
    --userId 'gRaBYwwm' \
    --body '{"JdzxACdT": {}, "Y29aTksX": {}, "nR9JATux": {}}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateInsertPartySessionStorageReserved' test.out

#- 81 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId '8s2uN3G0' \
    > test.out 2>&1
eval_tap $? 81 'PublicPartyJoin' test.out

#- 82 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'mOT7b9qq' \
    > test.out 2>&1
eval_tap $? 82 'PublicPartyLeave' test.out

#- 83 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'IHX8eYAB' \
    > test.out 2>&1
eval_tap $? 83 'PublicPartyReject' test.out

#- 84 PublicPartyCancel
samples/cli/sample-apps Session publicPartyCancel \
    --namespace $AB_NAMESPACE \
    --partyId '81y8eReT' \
    --userId 'fWrMZg6n' \
    > test.out 2>&1
eval_tap $? 84 'PublicPartyCancel' test.out

#- 85 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'fdMw1NUT' \
    --userId 'A1vAMeof' \
    > test.out 2>&1
eval_tap $? 85 'PublicPartyKick' test.out

#- 86 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"eL3iDdDz": {}, "QVEnVdQs": {}, "Z5fl8HEU": {}}, "configurationName": "WriF3iGA", "inactiveTimeout": 28, "inviteTimeout": 12, "joinability": "CLOSED", "maxPlayers": 9, "members": [{"ID": "yjNsmD6M", "PlatformID": "yxSgivxY", "PlatformUserID": "xMpgsFq1"}, {"ID": "0WkapPcN", "PlatformID": "2Un3pXZ1", "PlatformUserID": "bu3ArfZG"}, {"ID": "VeP7Vs7J", "PlatformID": "pCdvoSzq", "PlatformUserID": "0tZG0fnI"}], "minPlayers": 51, "textChat": true, "type": "NONE"}' \
    > test.out 2>&1
eval_tap $? 86 'PublicCreateParty' test.out

#- 87 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    > test.out 2>&1
eval_tap $? 87 'PublicGetRecentPlayer' test.out

#- 88 PublicGetRecentTeamPlayer
samples/cli/sample-apps Session publicGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    > test.out 2>&1
eval_tap $? 88 'PublicGetRecentTeamPlayer' test.out

#- 89 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'zMIG8PHq' \
    --body '{"c9y0P0z4": {}, "l3UaXd6c": {}, "6DF7Gt6Q": {}}' \
    > test.out 2>&1
eval_tap $? 89 'PublicUpdateInsertSessionStorageLeader' test.out

#- 90 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'WiERfbh9' \
    --userId 'Kgu7fBC7' \
    --body '{"4M2i9jq6": {}, "6kvVfKjp": {}, "qI2tbFhj": {}}' \
    > test.out 2>&1
eval_tap $? 90 'PublicUpdateInsertSessionStorage' test.out

#- 91 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["8HG17g2m", "JrhotUAt", "m9thiDRS"]}' \
    > test.out 2>&1
eval_tap $? 91 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 92 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 92 'PublicGetPlayerAttributes' test.out

#- 93 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": true, "currentPlatform": "K13gfysR", "data": {"9kzb6OcH": {}, "n0pdnJhc": {}, "d6NaUaE1": {}}, "platforms": [{"name": "sUUADYlH", "userID": "FNhRTywM"}, {"name": "yWS6WGWR", "userID": "vlBjxUZt"}, {"name": "AoWj78O5", "userID": "Pq5GcyEV"}], "roles": ["7ws3Sg9w", "qErkF1UQ", "aVBHmJNk"], "simultaneousPlatform": "pcJ2Vvsc"}' \
    > test.out 2>&1
eval_tap $? 93 'PublicStorePlayerAttributes' test.out

#- 94 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 94 'PublicDeletePlayerAttributes' test.out

#- 95 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'MViXH9Dg' \
    --orderBy '0eMs59tf' \
    --status 'aiQBKZkW' \
    > test.out 2>&1
eval_tap $? 95 'PublicQueryMyGameSessions' test.out

#- 96 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'saXWYJTh' \
    --orderBy 'esmBS6m2' \
    --status '7W02kuXi' \
    > test.out 2>&1
eval_tap $? 96 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE