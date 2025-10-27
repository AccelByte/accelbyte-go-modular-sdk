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
    --body '{"logLevel": "debug"}' \
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
    --body '{"metricExcludedNamespaces": ["IXl6mnoj", "CaA2KOFj", "KbcNchTE"], "regionRetryMapping": {"DipXvLI0": ["dncfbXZv", "gN7Hr256", "G54ZTVuG"], "38fBclpG": ["Bhpwq5k6", "SSDovfK7", "VoXKxbHb"], "XEf21FZx": ["tSA8h2mt", "lT3ZcNue", "LlPv95AX"]}, "regionURLMapping": ["EaX5xRde", "f11mOX8N", "AdLOyjOw"], "testGameMode": "qW6vlRkh", "testRegionURLMapping": ["IAv16d3H", "kHuULT1d", "p5W4fPjv"], "testTargetUserIDs": ["CyvXpqx2", "aH54gcGU", "tIJrIYf9"]}' \
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
    --body '{"durationDays": 75}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationAlertV1' test.out

#- 13 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 38}' \
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
    --body '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["UPDATE_INVITABLE_USER_TYPE", "KICK", "UPDATE_INVITABLE_USER_TYPE"], "PSNServiceLabel": 23, "PSNSupportedPlatforms": ["QohysM3H", "b6Gp2Rrw", "5GrKEtP3"], "SessionTitle": "qCQEIAgo", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "Dgzt2xDU", "XboxServiceConfigID": "gRB3gXHq", "XboxSessionTemplateName": "QaTBjUtb", "XboxTitleID": "4EBItbvV", "localizedSessionName": {"h9rrAGkV": {}, "PsuTBGrb": {}, "vH0XcpCY": {}}}, "PSNBaseUrl": "5Lrb7m19", "amsClaimTimeoutMinutes": 52, "appName": "8BIX1hmR", "asyncProcessDSRequest": {"async": true, "timeout": 71}, "attributes": {"HuB8m9SE": {}, "4JyQdfEq": {}, "VmGyc4Bb": {}}, "autoJoin": false, "autoLeaveSession": false, "clientVersion": "kgQ2X1ui", "customURLGRPC": "Ec2wreFz", "deployment": "paYRiuKI", "disableCodeGeneration": true, "disableResendInvite": true, "dsManualSetReady": false, "dsSource": "txH5frnn", "enableSecret": true, "fallbackClaimKeys": ["T46ntJgF", "v7jbJAAp", "LajRJbFi"], "grpcSessionConfig": {"appName": "l32ssUtJ", "customURL": "5BzKsyTz", "functionFlag": 57}, "immutableStorage": false, "inactiveTimeout": 82, "inviteTimeout": 30, "joinability": "FRIENDS_OF_LEADER", "leaderElectionGracePeriod": 99, "manualRejoin": false, "maxActiveSessions": 78, "maxPlayers": 21, "minPlayers": 28, "name": "hF8uxlFX", "partyCodeGeneratorString": "iYomTAaI", "partyCodeLength": 20, "persistent": false, "preferredClaimKeys": ["DgLhJhu6", "frOHGDqd", "qNoi6JcU"], "requestedRegions": ["pJBCSQrN", "q7wMibVU", "x1OB4Rvv"], "textChat": false, "textChatMode": "TEAM", "tieTeamsSessionLifetime": true, "ttlHours": 8, "type": "NONE"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateConfigurationTemplateV1' test.out

#- 17 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    --name 'ER4Dt0Az' \
    --offset '21' \
    --order '1xgWZQ7c' \
    --orderBy 'KNEhzwW0' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetAllConfigurationTemplatesV1' test.out

#- 18 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'EUovKODB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigurationTemplateV1' test.out

#- 19 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'alq6NYWf' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["UPDATE_JOINABLE_USER_TYPE", "KICK", "UPDATE_JOINABLE_USER_TYPE"], "PSNServiceLabel": 70, "PSNSupportedPlatforms": ["7glXzMLo", "sD5GJxw4", "F5Ggvh6s"], "SessionTitle": "vga7vzIt", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "o8OYE4Wa", "XboxServiceConfigID": "UTi5KU6Z", "XboxSessionTemplateName": "slLBq2wT", "XboxTitleID": "MQ33kfUE", "localizedSessionName": {"H7WTwERG": {}, "jWV5a27k": {}, "HThVRzXP": {}}}, "PSNBaseUrl": "TiuD85fX", "amsClaimTimeoutMinutes": 76, "appName": "DNRfkYBD", "asyncProcessDSRequest": {"async": true, "timeout": 16}, "attributes": {"gusjJOvq": {}, "Y4kM9inW": {}, "sXxVUL36": {}}, "autoJoin": false, "autoLeaveSession": true, "clientVersion": "Tmjl6JR4", "customURLGRPC": "OMRl1sXP", "deployment": "IJtNpk67", "disableCodeGeneration": true, "disableResendInvite": false, "dsManualSetReady": true, "dsSource": "uzp8gVTa", "enableSecret": true, "fallbackClaimKeys": ["OimtCFSs", "2YVziV7w", "R3O8uuvh"], "grpcSessionConfig": {"appName": "zzL5EA8U", "customURL": "hoFoanv1", "functionFlag": 41}, "immutableStorage": true, "inactiveTimeout": 59, "inviteTimeout": 18, "joinability": "FRIENDS_OF_MEMBERS", "leaderElectionGracePeriod": 72, "manualRejoin": true, "maxActiveSessions": 71, "maxPlayers": 62, "minPlayers": 82, "name": "nSoIJYGc", "partyCodeGeneratorString": "SdnEbO1C", "partyCodeLength": 68, "persistent": true, "preferredClaimKeys": ["erdTjghL", "4BCgZbta", "nAxUg99V"], "requestedRegions": ["L5zgxD1B", "9pYJ6uJ0", "aNI5r20n"], "textChat": true, "textChatMode": "TEAM", "tieTeamsSessionLifetime": false, "ttlHours": 36, "type": "P2P"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'SexBlbDB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 'sWMx6w8P' \
    --namespace $AB_NAMESPACE \
    --userId 'KDnYeYUG' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'mRXWmlww' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "x1NXpyvu"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminReconcileMaxActiveSession' test.out

#- 23 AdminGetDSMCConfiguration
eval_tap 0 23 'AdminGetDSMCConfiguration # SKIP deprecated' test.out

#- 24 AdminSyncDSMCConfiguration
eval_tap 0 24 'AdminSyncDSMCConfiguration # SKIP deprecated' test.out

#- 25 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName '3c5C4b90' \
    --dsPodName 'Sz4M8kRa' \
    --fromTime 'IgLYNTw1' \
    --gameMode 'ldOcWJNU' \
    --isPersistent 'MMCEcCLF' \
    --isSoftDeleted 'l4cKoa1S' \
    --joinability 'FRIENDS_OF_MEMBERS' \
    --limit '60' \
    --matchPool '2DGhC696' \
    --memberID 'I013lGuh' \
    --offset '50' \
    --order 'fq67YE7N' \
    --orderBy 'CJkHGHeq' \
    --sessionID 'L4WSI5Gn' \
    --status 'AVAILABLE' \
    --statusV2 'FAILED_TO_REQUEST' \
    --toTime 'MRMTZi6G' \
    > test.out 2>&1
eval_tap $? 25 'AdminQueryGameSessions' test.out

#- 26 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"FfBPyWM8": {}, "G5tsR2zS": {}, "YvQqKKxi": {}}' \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["Ao4ITfDe", "Gs8QiLEI", "9jqW7OlW"]}' \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId '0cgPU5Ad' \
    --body '{"ready": true}' \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminUpdateDSInformation
samples/cli/sample-apps Session adminUpdateDSInformation \
    --namespace $AB_NAMESPACE \
    --sessionId 'ZWh21B9S' \
    --body '{"createdRegion": "bssUHyot", "deployment": "oTidGKZb", "description": "kbgcOTli", "ip": "CtYcwu6A", "port": 3, "region": "huF5T17x", "serverId": "9pfNCE2s", "source": "Q87hqV8e", "status": "BPRQfyaN"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateDSInformation' test.out

#- 30 AdminKickGameSessionMember
samples/cli/sample-apps Session adminKickGameSessionMember \
    --memberId 'GY2py6Ey' \
    --namespace $AB_NAMESPACE \
    --sessionId 'j3Ekacvn' \
    > test.out 2>&1
eval_tap $? 30 'AdminKickGameSessionMember' test.out

#- 31 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId '7cH66aVQ' \
    --namespace $AB_NAMESPACE \
    --sessionId 'RoVu8f0p' \
    --statusType '1BgkreAV' \
    > test.out 2>&1
eval_tap $? 31 'AdminUpdateGameSessionMember' test.out

#- 32 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '70' \
    --order 'Iejc3jpi' \
    > test.out 2>&1
eval_tap $? 32 'AdminGetListNativeSession' test.out

#- 33 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --configurationName 'AdxvCNzL' \
    --fromTime 'K2Q7kBA4' \
    --isSoftDeleted '9jDDnWV5' \
    --joinability 'FRIENDS_OF_LEADER' \
    --key 'KBQNu1YR' \
    --leaderID 'DqUKtlU4' \
    --limit '9' \
    --memberID 'L7vo2NHz' \
    --memberStatus 'DISCONNECTED' \
    --offset '46' \
    --order 'Mj63r4Hx' \
    --orderBy 'BYojk7Zw' \
    --partyID 'kKsNSI2P' \
    --toTime 'vvldnBaK' \
    --value 'lRD1f00Q' \
    > test.out 2>&1
eval_tap $? 33 'AdminQueryParties' test.out

#- 34 AdminDeleteBulkParties
samples/cli/sample-apps Session adminDeleteBulkParties \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["Dp8uidbZ", "s8bN3YPW", "HKZv5W3I"]}' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteBulkParties' test.out

#- 35 AdminReadPartySessionStorage
samples/cli/sample-apps Session adminReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId 'KeGeJr8B' \
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
    --body '{"psn": {"clientId": "MuLt0OI6", "clientSecret": "GcgrcgYE", "scope": "GZ092l7F"}}' \
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

#- 41 AdminGetRecentPlayer
samples/cli/sample-apps Session adminGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --userId 'JzLol2Sx' \
    > test.out 2>&1
eval_tap $? 41 'AdminGetRecentPlayer' test.out

#- 42 AdminGetRecentTeamPlayer
samples/cli/sample-apps Session adminGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --userId 'ln0WeJA4' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetRecentTeamPlayer' test.out

#- 43 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'aQWP9it0' \
    > test.out 2>&1
eval_tap $? 43 'AdminReadSessionStorage' test.out

#- 44 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'LAx3UF6r' \
    > test.out 2>&1
eval_tap $? 44 'AdminDeleteUserSessionStorage' test.out

#- 45 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'W34blY8C' \
    --userId 'VCvgPcFC' \
    > test.out 2>&1
eval_tap $? 45 'AdminReadUserSessionStorage' test.out

#- 46 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'hLSdSsTi' \
    > test.out 2>&1
eval_tap $? 46 'AdminQueryPlayerAttributes' test.out

#- 47 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'SdUCjvGF' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetPlayerAttributes' test.out

#- 48 AdminSyncNativeSession
samples/cli/sample-apps Session adminSyncNativeSession \
    --namespace $AB_NAMESPACE \
    --userId 'j39d9ysP' \
    > test.out 2>&1
eval_tap $? 48 'AdminSyncNativeSession' test.out

#- 49 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --resolveMaxActiveSession 'true' \
    --body '{"appName": "xUjYe1lv", "attributes": {"duQyKYCe": {}, "EX8azIQS": {}, "lGKqO56Y": {}}, "autoJoin": true, "backfillTicketID": "1B9TGjJo", "clientVersion": "A9ryLY9l", "configurationName": "SDEPbOgr", "customURLGRPC": "ZDv7LB4P", "deployment": "D3l57OT4", "dsSource": "u9JFsRug", "fallbackClaimKeys": ["l9zXc5Ev", "Ekiw29g0", "oUXGEysm"], "inactiveTimeout": 28, "inviteTimeout": 66, "joinability": "INVITE_ONLY", "matchPool": "rMDIBQOh", "maxPlayers": 78, "minPlayers": 1, "preferredClaimKeys": ["JnQ4FEK3", "jJW4xGbt", "uMKfHtmh"], "requestedRegions": ["aJzb3jYH", "MoT1fsDa", "zxijNFew"], "serverName": "g8iD5V9S", "storage": {"leader": {"0ZcStfT5": {}, "p2NUchjJ": {}, "Hdi7YYNg": {}}}, "teams": [{"parties": [{"partyID": "kQDde4SG", "userIDs": ["BZcI4Ndc", "H624XGkc", "5QOd9ttC"]}, {"partyID": "nj4UB50L", "userIDs": ["XbaYISt3", "E3BFwKWA", "s2Ccfmzp"]}, {"partyID": "P1MuDXb1", "userIDs": ["znkRzeVy", "z91vmYsr", "PzitEah2"]}], "teamID": "SmMHAm0U", "userIDs": ["oCOKDmfG", "vlooSm6P", "h2t4Vssr"]}, {"parties": [{"partyID": "i7Hw2yhq", "userIDs": ["mCFEVLnD", "n5xszHyv", "hoiBsz0R"]}, {"partyID": "9XNS59ir", "userIDs": ["Au5G7Tgf", "F8dGPgvI", "M6t49mKc"]}, {"partyID": "7Q0oe025", "userIDs": ["nWhEnkoW", "NWaqj2GQ", "tTaXyL4h"]}], "teamID": "hVInyQx5", "userIDs": ["ktu7Vcbg", "4n7GIFyo", "ZOENN0gN"]}, {"parties": [{"partyID": "dkxjCJGi", "userIDs": ["RUSVbmrI", "iC0z7Nod", "b97VNgtB"]}, {"partyID": "kN2DKkgq", "userIDs": ["rBLUPIPr", "Qq6gveC6", "ikbiZomF"]}, {"partyID": "UdCcooD6", "userIDs": ["63AHlGU7", "KhHNSMnX", "4FqGQ31F"]}], "teamID": "wsPjHhwF", "userIDs": ["63fSu6ih", "6nOGh4s1", "TpAGIOBv"]}], "textChat": true, "textChatMode": "NONE", "ticketIDs": ["JvJZT0Vz", "YyVk68dF", "ruqtUIvL"], "tieTeamsSessionLifetime": true, "type": "P2P"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateGameSession' test.out

#- 50 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"Gs1dn6i8": {}, "DF8B78iC": {}, "CGjdz4Oj": {}}' \
    > test.out 2>&1
eval_tap $? 50 'PublicQueryGameSessionsByAttributes' test.out

#- 51 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "lrZd3Zz9"}' \
    > test.out 2>&1
eval_tap $? 51 'PublicSessionJoinCode' test.out

#- 52 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'PQguUzhM' \
    > test.out 2>&1
eval_tap $? 52 'GetGameSessionByPodName' test.out

#- 53 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '6SAgfUct' \
    > test.out 2>&1
eval_tap $? 53 'GetGameSession' test.out

#- 54 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'UtfUPsGD' \
    --body '{"attributes": {"xVgWOBb8": {}, "1NSqzDzA": {}, "kOlbBkWo": {}}, "backfillTicketID": "99xVxAwN", "clientVersion": "OwHGVqYn", "deployment": "wzI6Vs4J", "fallbackClaimKeys": ["jRJBDLl3", "1YGGI1Ok", "k6keERGX"], "inactiveTimeout": 18, "inviteTimeout": 23, "joinability": "INVITE_ONLY", "matchPool": "KPy0Fzkv", "maxPlayers": 40, "minPlayers": 5, "preferredClaimKeys": ["by6AZURT", "IwtCWsFJ", "3cfOuVHa"], "requestedRegions": ["r0ZERwL0", "T9O7iyKx", "0va0REqH"], "teams": [{"parties": [{"partyID": "FFixazrt", "userIDs": ["V4TWmukb", "TrRQubZI", "VIcVtg6O"]}, {"partyID": "rZ6iYVlL", "userIDs": ["Cfkhf36T", "NuMPxTh4", "gqO0cSSd"]}, {"partyID": "GyUNY22M", "userIDs": ["6K09NZj6", "1Rsi6iWt", "pErJlqvf"]}], "teamID": "LBJ5ByLY", "userIDs": ["2pU38vyG", "u9SdA9JJ", "2x1SJM4F"]}, {"parties": [{"partyID": "ZGuibLu1", "userIDs": ["ZZ8vijZq", "rT9cFahU", "dOdgIIgV"]}, {"partyID": "3lPAjntX", "userIDs": ["NCfNQl5U", "DUFqE2JX", "50XwaCBF"]}, {"partyID": "QhgldjMF", "userIDs": ["OtFoke36", "BRIalms8", "GODnujJz"]}], "teamID": "JGlSXbD5", "userIDs": ["joQk0ZNY", "k1BFuXyA", "hGnKtfMk"]}, {"parties": [{"partyID": "TVzWWcAr", "userIDs": ["YQbZlA12", "eOmaEw5O", "UEzUYhxE"]}, {"partyID": "fkjWs5un", "userIDs": ["ZjfWIr0s", "E1z6OH9F", "Kzc2vay3"]}, {"partyID": "BFZReuDW", "userIDs": ["VjWFcu6O", "yYm3NP4r", "vabAl853"]}], "teamID": "bqfcP2Vv", "userIDs": ["0tlF6eYE", "2rjJwjFg", "7FVCXrjx"]}], "ticketIDs": ["Box1JTZp", "5PhMjiNU", "P0ll8p1m"], "tieTeamsSessionLifetime": true, "type": "P2P", "version": 48}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGameSession' test.out

#- 55 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'WyA3lxXe' \
    > test.out 2>&1
eval_tap $? 55 'DeleteGameSession' test.out

#- 56 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '57MuJSup' \
    --body '{"attributes": {"6uG8Ivp6": {}, "GcBw4cLD": {}, "IQt4bAQV": {}}, "backfillTicketID": "S7OLnq6J", "clientVersion": "5gyWVIeZ", "deployment": "rqkwjxa8", "fallbackClaimKeys": ["Uf2Ii0QI", "zasMsHUj", "z8aDOIp0"], "inactiveTimeout": 25, "inviteTimeout": 20, "joinability": "FRIENDS_OF_MEMBERS", "matchPool": "5aqACA0F", "maxPlayers": 96, "minPlayers": 26, "preferredClaimKeys": ["UlapmnOl", "1hPwVbSy", "hAMCKzWA"], "requestedRegions": ["65FGdztZ", "KlcTLoYU", "S07jKUpe"], "teams": [{"parties": [{"partyID": "8wpIxemN", "userIDs": ["l4dcVzSu", "N4wsRjR7", "A2KJe7Bi"]}, {"partyID": "GlanLp9a", "userIDs": ["JWlHHAXZ", "Ds7xstm4", "m8lNSXfn"]}, {"partyID": "5hBDsN3a", "userIDs": ["UsKJj9NB", "3R6ee6PM", "0lUZiJif"]}], "teamID": "6AyAorjv", "userIDs": ["kXXcryK8", "aULeKYSe", "0GgkIbTz"]}, {"parties": [{"partyID": "kN6pwzHz", "userIDs": ["lUgDs1SU", "BWrhikn9", "zXImGZCP"]}, {"partyID": "ftaJcjhh", "userIDs": ["0koPLVOH", "GXbFg4CA", "OfhSuyHA"]}, {"partyID": "VsqFeQIX", "userIDs": ["zYH8DCC8", "JNRnqoKT", "V83TZloX"]}], "teamID": "fCkMoIm1", "userIDs": ["vFU7NQhl", "7IO7MJXu", "oexUNWr9"]}, {"parties": [{"partyID": "gNfbEY27", "userIDs": ["ypmIXtu6", "rhGcQxt1", "zjzm8v8s"]}, {"partyID": "hAHAWERu", "userIDs": ["uUEHmuy8", "FABRoNQL", "YDRekdcE"]}, {"partyID": "U7WwtsiC", "userIDs": ["5k6iYFQC", "pnpF2JU1", "oDZXFoIl"]}], "teamID": "lC8rrnq5", "userIDs": ["KrtC1zYj", "AarwO9MP", "AXLUN57a"]}], "ticketIDs": ["liqEJMCk", "Afobi1aY", "TErx1Uit"], "tieTeamsSessionLifetime": false, "type": "P2P", "version": 11}' \
    > test.out 2>&1
eval_tap $? 56 'PatchUpdateGameSession' test.out

#- 57 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'riWOoQYe' \
    --body '{"backfillTicketID": "dWNLeiKg"}' \
    > test.out 2>&1
eval_tap $? 57 'UpdateGameSessionBackfillTicketID' test.out

#- 58 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'WzoQULgR' \
    > test.out 2>&1
eval_tap $? 58 'GameSessionGenerateCode' test.out

#- 59 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'm4JcvIs6' \
    > test.out 2>&1
eval_tap $? 59 'PublicRevokeGameSessionCode' test.out

#- 60 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'zQJ5qzpk' \
    --body '{"metadata": {"yXPL4AoD": "kR1sinLF", "077D7VGk": "179swnlt", "oH5wD3L5": "GwvzlNeN"}, "platformID": "KBS2wyrP", "userID": "XNQ3NtRx"}' \
    > test.out 2>&1
eval_tap $? 60 'PublicGameSessionInvite' test.out

#- 61 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '0iNxUA2g' \
    > test.out 2>&1
eval_tap $? 61 'JoinGameSession' test.out

#- 62 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'eTrFhYdU' \
    --body '{"leaderID": "eV5yGke8"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicPromoteGameSessionLeader' test.out

#- 63 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'rNGT79UU' \
    > test.out 2>&1
eval_tap $? 63 'LeaveGameSession' test.out

#- 64 PublicKickGameSessionMember
samples/cli/sample-apps Session publicKickGameSessionMember \
    --memberId 'hynIPZX7' \
    --namespace $AB_NAMESPACE \
    --sessionId 'az50OPHv' \
    > test.out 2>&1
eval_tap $? 64 'PublicKickGameSessionMember' test.out

#- 65 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'vuAjFExJ' \
    > test.out 2>&1
eval_tap $? 65 'PublicGameSessionReject' test.out

#- 66 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId '0RmVE6RC' \
    > test.out 2>&1
eval_tap $? 66 'GetSessionServerSecret' test.out

#- 67 AppendTeamGameSession
eval_tap 0 67 'AppendTeamGameSession # SKIP deprecated' test.out

#- 68 PublicGameSessionCancel
samples/cli/sample-apps Session publicGameSessionCancel \
    --namespace $AB_NAMESPACE \
    --sessionId 'KttEKLco' \
    --userId 'lgMxhdRT' \
    > test.out 2>&1
eval_tap $? 68 'PublicGameSessionCancel' test.out

#- 69 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "RiJVPjUe"}' \
    > test.out 2>&1
eval_tap $? 69 'PublicPartyJoinCode' test.out

#- 70 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'cQn9mrhQ' \
    > test.out 2>&1
eval_tap $? 70 'PublicGetParty' test.out

#- 71 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'RczoKtPn' \
    --body '{"attributes": {"HehxAf2z": {}, "9f39mip0": {}, "FNyz7hhk": {}}, "inactiveTimeout": 15, "inviteTimeout": 2, "joinability": "FRIENDS_OF_FRIENDS", "maxPlayers": 3, "minPlayers": 64, "type": "DS", "version": 26}' \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdateParty' test.out

#- 72 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'O7nI10gD' \
    --body '{"attributes": {"l6U6qJFb": {}, "tZQtEtzt": {}, "8HGYaOoL": {}}, "inactiveTimeout": 15, "inviteTimeout": 54, "joinability": "CLOSED", "maxPlayers": 19, "minPlayers": 56, "type": "P2P", "version": 72}' \
    > test.out 2>&1
eval_tap $? 72 'PublicPatchUpdateParty' test.out

#- 73 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'E2wD3XR1' \
    > test.out 2>&1
eval_tap $? 73 'PublicGeneratePartyCode' test.out

#- 74 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'QPcSge7S' \
    > test.out 2>&1
eval_tap $? 74 'PublicRevokePartyCode' test.out

#- 75 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'VAsv44sO' \
    --body '{"metadata": {"DMFGVxGU": "QQKUKiPV", "lkve3zQE": "g7yAAd5m", "O58ArmiY": "QkBc2Ixl"}, "platformID": "5A2eR2Wq", "userID": "fyaLjLI9"}' \
    > test.out 2>&1
eval_tap $? 75 'PublicPartyInvite' test.out

#- 76 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'Rr81hHtU' \
    --body '{"leaderID": "scmaPRs9"}' \
    > test.out 2>&1
eval_tap $? 76 'PublicPromotePartyLeader' test.out

#- 77 PublicReadPartySessionStorage
samples/cli/sample-apps Session publicReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId 'Xu1JdbeV' \
    > test.out 2>&1
eval_tap $? 77 'PublicReadPartySessionStorage' test.out

#- 78 PublicUpdateInsertPartySessionStorageReserved
samples/cli/sample-apps Session publicUpdateInsertPartySessionStorageReserved \
    --namespace $AB_NAMESPACE \
    --partyId 'FQZv1dXa' \
    --userId '6XpOaiuO' \
    --body '{"EQ5qEGTb": {}, "7NkAU0Nj": {}, "d8jdNCtH": {}}' \
    > test.out 2>&1
eval_tap $? 78 'PublicUpdateInsertPartySessionStorageReserved' test.out

#- 79 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'qFczJm8J' \
    > test.out 2>&1
eval_tap $? 79 'PublicPartyJoin' test.out

#- 80 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'KjoaySxO' \
    > test.out 2>&1
eval_tap $? 80 'PublicPartyLeave' test.out

#- 81 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId '6WFNywia' \
    > test.out 2>&1
eval_tap $? 81 'PublicPartyReject' test.out

#- 82 PublicPartyCancel
samples/cli/sample-apps Session publicPartyCancel \
    --namespace $AB_NAMESPACE \
    --partyId 'ZeLoBUBj' \
    --userId '0UUuorJr' \
    > test.out 2>&1
eval_tap $? 82 'PublicPartyCancel' test.out

#- 83 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'AQpvoZJY' \
    --userId 'BhtvHPz9' \
    > test.out 2>&1
eval_tap $? 83 'PublicPartyKick' test.out

#- 84 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"Od6td0YE": {}, "lhu5tbac": {}, "K8Ux0r7d": {}}, "configurationName": "aeZsuXAY", "inactiveTimeout": 97, "inviteTimeout": 26, "joinability": "OPEN", "maxPlayers": 80, "members": [{"ID": "kdhcpfH2", "PlatformID": "PqHFATuD", "PlatformUserID": "xIdcICyE"}, {"ID": "YZOnN2Ae", "PlatformID": "mI086Lxz", "PlatformUserID": "kbbrrEid"}, {"ID": "vxbDeuhL", "PlatformID": "SWk9r4dO", "PlatformUserID": "Tsj5WQZp"}], "minPlayers": 38, "textChat": false, "type": "NONE"}' \
    > test.out 2>&1
eval_tap $? 84 'PublicCreateParty' test.out

#- 85 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    > test.out 2>&1
eval_tap $? 85 'PublicGetRecentPlayer' test.out

#- 86 PublicGetRecentTeamPlayer
samples/cli/sample-apps Session publicGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetRecentTeamPlayer' test.out

#- 87 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'wYdqvhDi' \
    --body '{"u5fGKVKS": {}, "vqJ9MKVo": {}, "Y6Pe7CMS": {}}' \
    > test.out 2>&1
eval_tap $? 87 'PublicUpdateInsertSessionStorageLeader' test.out

#- 88 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'MQCDgJl3' \
    --userId 'PU2D7fQy' \
    --body '{"4JICmWIc": {}, "riSfy6gn": {}, "e3OccARh": {}}' \
    > test.out 2>&1
eval_tap $? 88 'PublicUpdateInsertSessionStorage' test.out

#- 89 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["Rf20Ixhu", "EWH5WBAo", "Vly4PsbC"]}' \
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
    --body '{"crossplayEnabled": false, "currentPlatform": "uGgqivqF", "data": {"w1e8v7bE": {}, "WCtAWWlU": {}, "Gw7cEMu5": {}}, "platforms": [{"name": "TBLk52wk", "userID": "AlReA5il"}, {"name": "8eeA4Ak0", "userID": "GfROODJe"}, {"name": "qYF50znW", "userID": "JC08TJLl"}], "roles": ["hmV0K3oT", "5Am8WDTQ", "4FfGshlp"], "simultaneousPlatform": "T7TWwOYq"}' \
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
    --order '1oP2qElY' \
    --orderBy 'wlZJJDD5' \
    --status 'ZrJKnffU' \
    > test.out 2>&1
eval_tap $? 93 'PublicQueryMyGameSessions' test.out

#- 94 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order '8UHR3sWF' \
    --orderBy 'y69Whamk' \
    --status 'bw2VpqY9' \
    > test.out 2>&1
eval_tap $? 94 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE