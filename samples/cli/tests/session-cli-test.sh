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
    --body '{"metricExcludedNamespaces": ["Y8tlMBhL", "OH4j2MZW", "zncmkFLq"], "regionRetryMapping": {"wY8zJpmC": ["z7EePQjE", "aXpWlRKD", "AwUCsJlL"], "4yLcpawF": ["xuG5N7VX", "pPJK3sca", "qbJquUbN"], "03zfW7fM": ["f2i8DApj", "EmSrPxNA", "SvEHKapX"]}, "regionURLMapping": ["Uz5eyIRX", "Pi6m2tsB", "Ctd5SGew"], "testGameMode": "Rg8MPfOC", "testRegionURLMapping": ["3xC4PHAm", "G6u2KJPf", "4PDJTCA6"], "testTargetUserIDs": ["aq0hIqhN", "djffmWy2", "OhXoZizx"]}' \
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
    --body '{"durationDays": 70}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationAlertV1' test.out

#- 13 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 67}' \
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
    --body '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["KICK", "UPDATE_INVITABLE_USER_TYPE", "KICK"], "PSNServiceLabel": 23, "PSNSupportedPlatforms": ["pkx5dVqb", "QxdNpYbt", "e0UmSpKR"], "SessionTitle": "HdXpTlod", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "ljLwI9JV", "XboxServiceConfigID": "RvH6iVnd", "XboxSessionTemplateName": "RdojDyGr", "XboxTitleID": "q9Sc6hIy", "localizedSessionName": {"LmMjSywa": {}, "kyLoumdP": {}, "JP90Avj5": {}}}, "PSNBaseUrl": "0uNg1rSw", "amsClaimTimeoutMinutes": 42, "appName": "kiq2qcMd", "asyncProcessDSRequest": {"async": false, "timeout": 42}, "attributes": {"3GasC4GM": {}, "xjCwS2Nn": {}, "tp2j0VDl": {}}, "autoJoin": true, "autoLeaveSession": true, "clientVersion": "lSjsczYJ", "customURLGRPC": "hfe3b48a", "deployment": "iOFz9kXf", "disableCodeGeneration": true, "disableResendInvite": false, "dsManualSetReady": true, "dsSource": "4xvu5stK", "enableSecret": true, "fallbackClaimKeys": ["6lBYi5ph", "zjCcRTIu", "81YGD4wN"], "grpcSessionConfig": {"appName": "rMQyXbsf", "customURL": "YBY9V6a6", "functionFlag": 94}, "immutableStorage": false, "inactiveTimeout": 87, "inviteTimeout": 92, "joinability": "FRIENDS_OF_FRIENDS", "leaderElectionGracePeriod": 85, "manualRejoin": true, "maxActiveSessions": 8, "maxPlayers": 65, "minPlayers": 74, "name": "qOsNx1Wi", "partyCodeLength": 75, "persistent": false, "preferredClaimKeys": ["ROfss3uf", "do06EOoI", "TgUI2JVa"], "requestedRegions": ["hxz41FQk", "mDaIt0q5", "fs4JFMjr"], "textChat": false, "textChatMode": "NONE", "tieTeamsSessionLifetime": true, "ttlHours": 47, "type": "P2P"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateConfigurationTemplateV1' test.out

#- 17 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --name 'U9SHbe28' \
    --offset '50' \
    --order 'P7dg4QGG' \
    --orderBy '5b7zZOoe' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetAllConfigurationTemplatesV1' test.out

#- 18 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'ZrHeOreS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigurationTemplateV1' test.out

#- 19 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'w82yM0Qx' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["UPDATE_JOINABLE_USER_TYPE", "KICK", "UPDATE_INVITABLE_USER_TYPE"], "PSNServiceLabel": 56, "PSNSupportedPlatforms": ["xjUHwlzd", "YOHftLMe", "AzdVWLqC"], "SessionTitle": "RqQMiN0g", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "rDeKcbRi", "XboxServiceConfigID": "tHhJxK0C", "XboxSessionTemplateName": "qTatG1Bm", "XboxTitleID": "bcNrLmhu", "localizedSessionName": {"NE540Hjg": {}, "L90SoHU6": {}, "mjY593S9": {}}}, "PSNBaseUrl": "KQS1FeBc", "amsClaimTimeoutMinutes": 34, "appName": "ApJfntXj", "asyncProcessDSRequest": {"async": false, "timeout": 3}, "attributes": {"O7Ep8etV": {}, "UowudHpH": {}, "4Hq7wjDD": {}}, "autoJoin": false, "autoLeaveSession": false, "clientVersion": "IBKF4WHs", "customURLGRPC": "kQACg9iC", "deployment": "Coc1aOFB", "disableCodeGeneration": true, "disableResendInvite": false, "dsManualSetReady": true, "dsSource": "AVvZIcnk", "enableSecret": false, "fallbackClaimKeys": ["UaNnXD5M", "yaNFB4Gk", "YbuTFBhk"], "grpcSessionConfig": {"appName": "sY6PlBYA", "customURL": "de1U0aAx", "functionFlag": 16}, "immutableStorage": false, "inactiveTimeout": 10, "inviteTimeout": 52, "joinability": "FRIENDS_OF_FRIENDS", "leaderElectionGracePeriod": 70, "manualRejoin": false, "maxActiveSessions": 28, "maxPlayers": 6, "minPlayers": 34, "name": "8jtnGxMX", "partyCodeLength": 69, "persistent": false, "preferredClaimKeys": ["NNwKFVmO", "A3jp4gb9", "qx9k4X0C"], "requestedRegions": ["aS28yqol", "Hd1TIrfG", "pq2cPIqw"], "textChat": false, "textChatMode": "TEAM", "tieTeamsSessionLifetime": false, "ttlHours": 51, "type": "NONE"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'g9F5OrjY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 'vU1frUWY' \
    --namespace $AB_NAMESPACE \
    --userId 'ehu7oBt2' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name '442x9gC8' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "nEHwXpMa"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminReconcileMaxActiveSession' test.out

#- 23 AdminGetDSMCConfiguration
eval_tap 0 23 'AdminGetDSMCConfiguration # SKIP deprecated' test.out

#- 24 AdminSyncDSMCConfiguration
eval_tap 0 24 'AdminSyncDSMCConfiguration # SKIP deprecated' test.out

#- 25 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName 'tuEebFJl' \
    --dsPodName 'fONAOpke' \
    --fromTime '2U9fDqZe' \
    --gameMode 'MpYGGORt' \
    --isPersistent 'PBz4Nc3c' \
    --isSoftDeleted 'N9QS0wp7' \
    --joinability 'FRIENDS_OF_MEMBERS' \
    --limit '18' \
    --matchPool 'Qq2bS1DF' \
    --memberID 'yEzzG5jT' \
    --offset '98' \
    --order '6BhPZCXJ' \
    --orderBy 'bN3lsGGV' \
    --sessionID 'Hy2lGAuN' \
    --status 'NEED_TO_REQUEST' \
    --statusV2 'PREPARING' \
    --toTime 'uZXnGcrO' \
    > test.out 2>&1
eval_tap $? 25 'AdminQueryGameSessions' test.out

#- 26 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"CtZpH59b": {}, "TN0YdQh2": {}, "1X6RRgkn": {}}' \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["iyN9Hpfp", "Ckv41WDa", "MdKsP4em"]}' \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'v1ZWRwdK' \
    --body '{"ready": true}' \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminUpdateDSInformation
samples/cli/sample-apps Session adminUpdateDSInformation \
    --namespace $AB_NAMESPACE \
    --sessionId 'MGGVKg1R' \
    --body '{"createdRegion": "xzMcxGkG", "deployment": "8U4UDjNW", "description": "3fWLveBA", "ip": "hTalcWUE", "port": 70, "region": "s6AfeMI2", "serverId": "DmhfwQjF", "source": "yrXDa0Rb", "status": "akVheMrl"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateDSInformation' test.out

#- 30 AdminKickGameSessionMember
samples/cli/sample-apps Session adminKickGameSessionMember \
    --memberId 'z2Y8O1ML' \
    --namespace $AB_NAMESPACE \
    --sessionId 'p1ToFGsi' \
    > test.out 2>&1
eval_tap $? 30 'AdminKickGameSessionMember' test.out

#- 31 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'YOdI51FA' \
    --namespace $AB_NAMESPACE \
    --sessionId 'B8Ea8Qgj' \
    --statusType 'GRFIqC55' \
    > test.out 2>&1
eval_tap $? 31 'AdminUpdateGameSessionMember' test.out

#- 32 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '70' \
    --order 'hHEfuyaR' \
    > test.out 2>&1
eval_tap $? 32 'AdminGetListNativeSession' test.out

#- 33 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --configurationName '0o01BEIU' \
    --fromTime 'pCNnqzq8' \
    --isSoftDeleted '5seTZVZe' \
    --joinability 'INVITE_ONLY' \
    --key 'ysujjywq' \
    --leaderID 'Z1erMUQ4' \
    --limit '50' \
    --memberID '0Fdii8qo' \
    --memberStatus 'CONNECTED' \
    --offset '16' \
    --order '7UCHGGPI' \
    --orderBy 'XFHIGZ0y' \
    --partyID '0rRxdvTV' \
    --toTime '0bTkf50l' \
    --value 'BqUTjTR7' \
    > test.out 2>&1
eval_tap $? 33 'AdminQueryParties' test.out

#- 34 AdminDeleteBulkParties
samples/cli/sample-apps Session adminDeleteBulkParties \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["S76MQNIq", "hxXTlf4B", "WqlBgjnl"]}' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteBulkParties' test.out

#- 35 AdminReadPartySessionStorage
samples/cli/sample-apps Session adminReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId 'KNK1zPzj' \
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
    --body '{"psn": {"clientId": "nFkEXt6y", "clientSecret": "IXvDIB3U", "scope": "7CwYzHyA"}}' \
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
    --limit '54' \
    --userId '9mctZ9JZ' \
    > test.out 2>&1
eval_tap $? 41 'AdminGetRecentPlayer' test.out

#- 42 AdminGetRecentTeamPlayer
samples/cli/sample-apps Session adminGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --userId 'JMqDoTVJ' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetRecentTeamPlayer' test.out

#- 43 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'giIrsAKP' \
    > test.out 2>&1
eval_tap $? 43 'AdminReadSessionStorage' test.out

#- 44 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId '60YNUHAi' \
    > test.out 2>&1
eval_tap $? 44 'AdminDeleteUserSessionStorage' test.out

#- 45 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'X8KT9g8C' \
    --userId 'ae45KTOK' \
    > test.out 2>&1
eval_tap $? 45 'AdminReadUserSessionStorage' test.out

#- 46 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'pZVDuoVr' \
    > test.out 2>&1
eval_tap $? 46 'AdminQueryPlayerAttributes' test.out

#- 47 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'SudLjl4V' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetPlayerAttributes' test.out

#- 48 AdminSyncNativeSession
samples/cli/sample-apps Session adminSyncNativeSession \
    --namespace $AB_NAMESPACE \
    --userId 'NncHVwGE' \
    > test.out 2>&1
eval_tap $? 48 'AdminSyncNativeSession' test.out

#- 49 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --resolveMaxActiveSession 'false' \
    --body '{"appName": "sQCgdEX1", "attributes": {"YUdKrZkI": {}, "I3JFuOFz": {}, "jYA1JXOV": {}}, "autoJoin": false, "backfillTicketID": "WRWKvojx", "clientVersion": "EKgrKGwT", "configurationName": "CfG1JSPl", "customURLGRPC": "zb8Wsl3g", "deployment": "6wRudN5D", "dsSource": "P3MBuDDr", "fallbackClaimKeys": ["TJIAEuzz", "Ia8GtwJK", "Mr4q6L3J"], "inactiveTimeout": 56, "inviteTimeout": 68, "joinability": "FRIENDS_OF_FRIENDS", "matchPool": "ZdyUcc6L", "maxPlayers": 57, "minPlayers": 15, "preferredClaimKeys": ["HJI4UO8i", "6BAdQzR0", "KN7QdoC8"], "requestedRegions": ["xE36ZK5P", "Pm0k22hK", "dpVNTwIJ"], "serverName": "o0jbRE8X", "storage": {"leader": {"m39TBdgf": {}, "at8M8gfI": {}, "BGcjPNTi": {}}}, "teams": [{"parties": [{"partyID": "x7QsVb2C", "userIDs": ["wMbMki1r", "RfmNblQj", "ELdmWlmc"]}, {"partyID": "jR1yi2pK", "userIDs": ["LV7TDbJ6", "vdyDv6VE", "OHrXEU42"]}, {"partyID": "HKvXfdd6", "userIDs": ["SRieYQhS", "hcNvPUIO", "7tMSj3zp"]}], "teamID": "dZUt1bLn", "userIDs": ["HMh09kNq", "S6slyyBU", "Vp9dPmMC"]}, {"parties": [{"partyID": "PQb0SN05", "userIDs": ["OOSsvXpO", "l6UhiiNI", "CxR7LnIA"]}, {"partyID": "TWgq6x8a", "userIDs": ["RmKR89h4", "iWaJgZ8U", "wepU0gpW"]}, {"partyID": "pPXcSsw6", "userIDs": ["C1MbzFbH", "IMdPb6rr", "gaELZuAE"]}], "teamID": "DduJcNeB", "userIDs": ["wF7rayhX", "2cxsEiey", "DWOKcPOp"]}, {"parties": [{"partyID": "3IZG3gEz", "userIDs": ["cvlZFVf8", "eBdJRUoP", "nLk0KyaU"]}, {"partyID": "bZUTbg42", "userIDs": ["AZuwn81F", "PD9jMUin", "ZiH4gBEU"]}, {"partyID": "hWZapQ4Z", "userIDs": ["6qUhrSS9", "0BKMFKcM", "xsgLpZKH"]}], "teamID": "VqG3uX2h", "userIDs": ["x5c4qySX", "CQTDzYgS", "6aerc7Ai"]}], "textChat": false, "textChatMode": "TEAM", "ticketIDs": ["RxJCeWNb", "g02K6uAU", "U9z8rymL"], "tieTeamsSessionLifetime": false, "type": "P2P"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateGameSession' test.out

#- 50 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"Om9trg2J": {}, "m7DumBUT": {}, "tSdvXTfR": {}}' \
    > test.out 2>&1
eval_tap $? 50 'PublicQueryGameSessionsByAttributes' test.out

#- 51 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "ixhNR1tv"}' \
    > test.out 2>&1
eval_tap $? 51 'PublicSessionJoinCode' test.out

#- 52 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'jvkLzmEY' \
    > test.out 2>&1
eval_tap $? 52 'GetGameSessionByPodName' test.out

#- 53 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'XZnyKqEU' \
    > test.out 2>&1
eval_tap $? 53 'GetGameSession' test.out

#- 54 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'Ng1RHpKX' \
    --body '{"attributes": {"Le9CjQKI": {}, "jwAidTdz": {}, "7Nrx66sM": {}}, "backfillTicketID": "HB5uddjL", "clientVersion": "AFFpYg6T", "deployment": "9NbOT4kL", "fallbackClaimKeys": ["L9cEkoEb", "djdiHdW3", "XWRE2wan"], "inactiveTimeout": 3, "inviteTimeout": 30, "joinability": "FRIENDS_OF_LEADER", "matchPool": "6cLtmz0T", "maxPlayers": 79, "minPlayers": 67, "preferredClaimKeys": ["x4Mt5DCh", "6o4YiMGq", "r3YN5mk7"], "requestedRegions": ["VJQGfcTk", "ZrNx4hvg", "RgIvgHfo"], "teams": [{"parties": [{"partyID": "N35KUf6V", "userIDs": ["J34RYPuS", "qo2uSHe8", "7KUNF6bo"]}, {"partyID": "MfisAwi6", "userIDs": ["tGWd1HC6", "ZKmxSGRO", "05Eb0dvm"]}, {"partyID": "eV7ZqVa9", "userIDs": ["iCX4ENZU", "zUCNCCqU", "ntoewPsp"]}], "teamID": "2G9PCddj", "userIDs": ["UHCcHFH5", "Tvxm3G8D", "oQIGywFm"]}, {"parties": [{"partyID": "qFR085EY", "userIDs": ["5i9yQwoa", "JsLYG6zO", "HqU0rc8e"]}, {"partyID": "FWNB2TtS", "userIDs": ["aL6PsIum", "noXSEhPc", "vU1UPXzo"]}, {"partyID": "rUz5PBzh", "userIDs": ["ECNyhJN7", "Sb8LLRfE", "NJ6m1nvI"]}], "teamID": "QiaCQTRY", "userIDs": ["XCbSfpS7", "0BcD7kTJ", "qZTWk7wG"]}, {"parties": [{"partyID": "42t3ojDO", "userIDs": ["O84FYJMr", "h01dNoEa", "68HdJ7bK"]}, {"partyID": "4g08b3x7", "userIDs": ["A9IVb0OA", "tIYUdFF8", "mUanWw3O"]}, {"partyID": "tQay8jQ9", "userIDs": ["HZIyTorb", "Q1rmzZ83", "xiJ4P4ew"]}], "teamID": "WpIOEGx5", "userIDs": ["8VXQSozE", "jtGBw8EW", "k4nwFf3s"]}], "ticketIDs": ["VUMfHVnZ", "vx6NGndM", "XHawpp8X"], "tieTeamsSessionLifetime": false, "type": "P2P", "version": 66}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGameSession' test.out

#- 55 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'VHJuDvf7' \
    > test.out 2>&1
eval_tap $? 55 'DeleteGameSession' test.out

#- 56 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'J1zqt5te' \
    --body '{"attributes": {"Dqtkuc70": {}, "754lX30E": {}, "an4zkRtb": {}}, "backfillTicketID": "NEvuQYvy", "clientVersion": "2Gz4r2TB", "deployment": "QuBKADnR", "fallbackClaimKeys": ["RZdyMbTZ", "2yjyn6cY", "9Etux87Z"], "inactiveTimeout": 47, "inviteTimeout": 3, "joinability": "FRIENDS_OF_LEADER", "matchPool": "fERMubja", "maxPlayers": 83, "minPlayers": 65, "preferredClaimKeys": ["WT1YwoQx", "3COferBe", "KgqvKFkd"], "requestedRegions": ["uwJ3DqtX", "zEXgT4oc", "mSTdgDEx"], "teams": [{"parties": [{"partyID": "hPrCRuHI", "userIDs": ["a1SdiZ0i", "hltc158o", "oRTaioHP"]}, {"partyID": "2DwI85ta", "userIDs": ["YTQmZI43", "FAfZpIpJ", "4Lj0phy1"]}, {"partyID": "qZHeEJly", "userIDs": ["gkX812Q3", "3EUqAI48", "OT5nIJt6"]}], "teamID": "tnry9Wi4", "userIDs": ["Q13E2dJx", "gGG6xT4L", "zRfe5tvK"]}, {"parties": [{"partyID": "Efohl80j", "userIDs": ["4nTO11cK", "YOolLyZs", "MZO0WIza"]}, {"partyID": "1a8tUFvH", "userIDs": ["s2NWVfaj", "RUJGwGZu", "xITL6Z8l"]}, {"partyID": "QUUlo6bn", "userIDs": ["WWH1LzpN", "VDlB5E2h", "2afIxF4o"]}], "teamID": "2UU9nlXI", "userIDs": ["LY0OeFVW", "UAx1liqp", "zZTB7Tip"]}, {"parties": [{"partyID": "pzz0LxC7", "userIDs": ["Sym2uqG5", "oKXBvxg5", "DNMMUBsS"]}, {"partyID": "9LVPGGPJ", "userIDs": ["GsUthLj9", "crXwBzqe", "12ckA8N5"]}, {"partyID": "5yL2bTWG", "userIDs": ["0aKvihru", "GUUPxzgZ", "VPHiv4Zh"]}], "teamID": "dmQuckX7", "userIDs": ["fqes21kZ", "ic1OWmv2", "gyx7nhmk"]}], "ticketIDs": ["FA9DBHzl", "B5efBK3O", "1SNddFEl"], "tieTeamsSessionLifetime": true, "type": "P2P", "version": 55}' \
    > test.out 2>&1
eval_tap $? 56 'PatchUpdateGameSession' test.out

#- 57 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'OvsPdC5Q' \
    --body '{"backfillTicketID": "Gbi2tilC"}' \
    > test.out 2>&1
eval_tap $? 57 'UpdateGameSessionBackfillTicketID' test.out

#- 58 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId '4TYEQvYv' \
    > test.out 2>&1
eval_tap $? 58 'GameSessionGenerateCode' test.out

#- 59 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId '5468PjhK' \
    > test.out 2>&1
eval_tap $? 59 'PublicRevokeGameSessionCode' test.out

#- 60 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'Z2EGwO25' \
    --body '{"metadata": {"LeEYMs4a": "V1Aq8wLJ", "ZZbuq7ov": "vW3RlmLV", "8t9DpUj1": "7W1Q9TMt"}, "platformID": "EY3FudyC", "userID": "NUtpUfVx"}' \
    > test.out 2>&1
eval_tap $? 60 'PublicGameSessionInvite' test.out

#- 61 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '7ccUbwlr' \
    > test.out 2>&1
eval_tap $? 61 'JoinGameSession' test.out

#- 62 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'thCxno3Y' \
    --body '{"leaderID": "5rBhRrKI"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicPromoteGameSessionLeader' test.out

#- 63 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'ygFJ3mbE' \
    > test.out 2>&1
eval_tap $? 63 'LeaveGameSession' test.out

#- 64 PublicKickGameSessionMember
samples/cli/sample-apps Session publicKickGameSessionMember \
    --memberId 'bVLOa0Cf' \
    --namespace $AB_NAMESPACE \
    --sessionId 'Qon43UGI' \
    > test.out 2>&1
eval_tap $? 64 'PublicKickGameSessionMember' test.out

#- 65 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'HMeyIrGq' \
    > test.out 2>&1
eval_tap $? 65 'PublicGameSessionReject' test.out

#- 66 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId 'c7NYwnNg' \
    > test.out 2>&1
eval_tap $? 66 'GetSessionServerSecret' test.out

#- 67 AppendTeamGameSession
eval_tap 0 67 'AppendTeamGameSession # SKIP deprecated' test.out

#- 68 PublicGameSessionCancel
samples/cli/sample-apps Session publicGameSessionCancel \
    --namespace $AB_NAMESPACE \
    --sessionId 'VhcTLAf0' \
    --userId 'yb4nT0Rz' \
    > test.out 2>&1
eval_tap $? 68 'PublicGameSessionCancel' test.out

#- 69 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "3aN7H3rN"}' \
    > test.out 2>&1
eval_tap $? 69 'PublicPartyJoinCode' test.out

#- 70 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'd70lsosE' \
    > test.out 2>&1
eval_tap $? 70 'PublicGetParty' test.out

#- 71 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'PvH00SOl' \
    --body '{"attributes": {"R9PVblxc": {}, "UGx0Mah7": {}, "MzGpN06W": {}}, "inactiveTimeout": 61, "inviteTimeout": 43, "joinability": "FRIENDS_OF_FRIENDS", "maxPlayers": 55, "minPlayers": 72, "type": "DS", "version": 61}' \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdateParty' test.out

#- 72 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'R9LiAHLG' \
    --body '{"attributes": {"qqOoa1dc": {}, "rQ8REfJb": {}, "o2AchIdb": {}}, "inactiveTimeout": 75, "inviteTimeout": 41, "joinability": "INVITE_ONLY", "maxPlayers": 98, "minPlayers": 80, "type": "P2P", "version": 82}' \
    > test.out 2>&1
eval_tap $? 72 'PublicPatchUpdateParty' test.out

#- 73 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'A8tBKqF7' \
    > test.out 2>&1
eval_tap $? 73 'PublicGeneratePartyCode' test.out

#- 74 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'stbs302o' \
    > test.out 2>&1
eval_tap $? 74 'PublicRevokePartyCode' test.out

#- 75 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'nFzE6sju' \
    --body '{"metadata": {"rT42Ys1J": "pBRVLnsD", "hzTIRxhF": "ewlvM3tW", "Hh7KLnuM": "UfUT2h9u"}, "platformID": "S2VwUCTL", "userID": "v4qkdOqD"}' \
    > test.out 2>&1
eval_tap $? 75 'PublicPartyInvite' test.out

#- 76 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId '81SJm4KV' \
    --body '{"leaderID": "dCbicRMN"}' \
    > test.out 2>&1
eval_tap $? 76 'PublicPromotePartyLeader' test.out

#- 77 PublicReadPartySessionStorage
samples/cli/sample-apps Session publicReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId '9Ufbr9jT' \
    > test.out 2>&1
eval_tap $? 77 'PublicReadPartySessionStorage' test.out

#- 78 PublicUpdateInsertPartySessionStorageReserved
samples/cli/sample-apps Session publicUpdateInsertPartySessionStorageReserved \
    --namespace $AB_NAMESPACE \
    --partyId 'HSF4QMW8' \
    --userId 'yjgCmWHn' \
    --body '{"HExD1ZxA": {}, "4h9wjEZJ": {}, "3N2tMIPv": {}}' \
    > test.out 2>&1
eval_tap $? 78 'PublicUpdateInsertPartySessionStorageReserved' test.out

#- 79 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'GvkozOHj' \
    > test.out 2>&1
eval_tap $? 79 'PublicPartyJoin' test.out

#- 80 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'eNcxbmUG' \
    > test.out 2>&1
eval_tap $? 80 'PublicPartyLeave' test.out

#- 81 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'Wz8rv98f' \
    > test.out 2>&1
eval_tap $? 81 'PublicPartyReject' test.out

#- 82 PublicPartyCancel
samples/cli/sample-apps Session publicPartyCancel \
    --namespace $AB_NAMESPACE \
    --partyId 'juOf6syc' \
    --userId 'PmpWN1NR' \
    > test.out 2>&1
eval_tap $? 82 'PublicPartyCancel' test.out

#- 83 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'jXC0pny0' \
    --userId 'T72A2M1i' \
    > test.out 2>&1
eval_tap $? 83 'PublicPartyKick' test.out

#- 84 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"L9kwLsi6": {}, "zxxYE6RW": {}, "AvMHSrjr": {}}, "configurationName": "mvILtaRh", "inactiveTimeout": 76, "inviteTimeout": 59, "joinability": "OPEN", "maxPlayers": 82, "members": [{"ID": "jYqofEBI", "PlatformID": "mi0ZHtHG", "PlatformUserID": "Xc6RcEtj"}, {"ID": "OfuymtH4", "PlatformID": "KqZxnQew", "PlatformUserID": "Z7Vufu7V"}, {"ID": "2at3F5lx", "PlatformID": "a2seZAjG", "PlatformUserID": "PiSa49BT"}], "minPlayers": 26, "textChat": true, "type": "P2P"}' \
    > test.out 2>&1
eval_tap $? 84 'PublicCreateParty' test.out

#- 85 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    > test.out 2>&1
eval_tap $? 85 'PublicGetRecentPlayer' test.out

#- 86 PublicGetRecentTeamPlayer
samples/cli/sample-apps Session publicGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetRecentTeamPlayer' test.out

#- 87 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'KCBExEZK' \
    --body '{"lyx0VobB": {}, "HeoiEq2Y": {}, "YV1UpERm": {}}' \
    > test.out 2>&1
eval_tap $? 87 'PublicUpdateInsertSessionStorageLeader' test.out

#- 88 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'vAotoos2' \
    --userId 'h7OQDNbL' \
    --body '{"QYF3PwPV": {}, "GpElKfnN": {}, "UbIJ81Xi": {}}' \
    > test.out 2>&1
eval_tap $? 88 'PublicUpdateInsertSessionStorage' test.out

#- 89 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["pcmfLPDB", "LYJz8aRW", "C00O4Hm1"]}' \
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
    --body '{"crossplayEnabled": true, "currentPlatform": "WQtvLRKN", "data": {"Ft0ASWWY": {}, "dp5TKOkM": {}, "F8LKx2Td": {}}, "platforms": [{"name": "cVIX7mqd", "userID": "70Y2JmWv"}, {"name": "08sfsTNk", "userID": "Bc6axfbB"}, {"name": "5s7RZWfn", "userID": "GUyhY6BP"}], "roles": ["NKUdUJcW", "Ak1dTaSs", "CEB2CEcp"], "simultaneousPlatform": "Cg98zxOK"}' \
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
    --order 'jSyLKlF1' \
    --orderBy 'bVruz94z' \
    --status 'Uf0u3Q9g' \
    > test.out 2>&1
eval_tap $? 93 'PublicQueryMyGameSessions' test.out

#- 94 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'nKT7ECDn' \
    --orderBy 'gFUm1W1M' \
    --status 'AUrB5MqG' \
    > test.out 2>&1
eval_tap $? 94 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE