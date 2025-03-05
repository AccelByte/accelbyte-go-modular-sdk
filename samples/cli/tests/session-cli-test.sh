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
    --body '{"metricExcludedNamespaces": ["xKZoXmyI", "g8QMnVte", "yAp0mXzJ"], "regionRetryMapping": {"vycuHSpS": ["mdpBFzqE", "HlQPIS7m", "3rrkYzXZ"], "88oQHRU9": ["5CWWmgJS", "1wNRt8lG", "LdS35LsI"], "3Y5zctAD": ["xXRtaZMV", "zDoUTuJj", "vj7dRwNp"]}, "regionURLMapping": ["eBWnUDDd", "4eeH319t", "uXJSNnz7"], "testGameMode": "rbJcbs0y", "testRegionURLMapping": ["cCeozRVs", "Eqmo6Ezm", "o8tWEvIe"], "testTargetUserIDs": ["IhedOsfC", "yvxzO6FD", "xOEA6n4t"]}' \
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
    --body '{"durationDays": 14}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationAlertV1' test.out

#- 13 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 54}' \
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
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 99, "PSNSupportedPlatforms": ["NGrE0MQZ", "vqr96xyh", "I0PX8uuD"], "SessionTitle": "u9KufIwD", "ShouldSync": false, "XboxAllowCrossPlatform": true, "XboxSandboxID": "5hL3XVFu", "XboxServiceConfigID": "pCrSgGBV", "XboxSessionTemplateName": "jWY01EFC", "XboxTitleID": "vdY6fLGF", "localizedSessionName": {"b2TGcPlk": {}, "sCl13fOJ": {}, "ENBJmeSd": {}}}, "PSNBaseUrl": "qRgGlCpa", "appName": "ObaElfhK", "asyncProcessDSRequest": {"async": false, "timeout": 51}, "attributes": {"3yXwtuBO": {}, "M2lmozNn": {}, "mBUfa43s": {}}, "autoJoin": true, "autoLeaveSession": true, "clientVersion": "MxC0WzA5", "customURLGRPC": "HZSM9xHy", "deployment": "ieaBlVFD", "disableCodeGeneration": true, "disableResendInvite": false, "dsManualSetReady": true, "dsSource": "As367IKb", "enableSecret": false, "fallbackClaimKeys": ["62Xmwjx2", "lv9YMTa8", "6T3e6ckz"], "grpcSessionConfig": {"appName": "3nuBi8kH", "customURL": "pike4UjB", "functionFlag": 45}, "immutableStorage": false, "inactiveTimeout": 94, "inviteTimeout": 23, "joinability": "hBYDnP2G", "leaderElectionGracePeriod": 67, "manualRejoin": true, "maxActiveSessions": 20, "maxPlayers": 26, "minPlayers": 66, "name": "8lFBp4ms", "persistent": false, "preferredClaimKeys": ["VKTUsPCk", "vZdkVRVt", "op4FoYZn"], "requestedRegions": ["BqolAQcp", "4V6p2OJ0", "7Af5mNdU"], "textChat": true, "textChatMode": "GAME", "tieTeamsSessionLifetime": true, "ttlHours": 24, "type": "23B0mnZz"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateConfigurationTemplateV1' test.out

#- 17 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --name 'uA9d5aKC' \
    --offset '96' \
    --order 'MBWmplJv' \
    --orderBy 'djxjtNMp' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetAllConfigurationTemplatesV1' test.out

#- 18 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'Kz1vGRl8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigurationTemplateV1' test.out

#- 19 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'Az6oSZBH' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 66, "PSNSupportedPlatforms": ["uRq3k6nw", "X9BQhdB9", "rzH9e8tX"], "SessionTitle": "fX1S5AQh", "ShouldSync": false, "XboxAllowCrossPlatform": true, "XboxSandboxID": "jg2P4oDc", "XboxServiceConfigID": "6SaMRLus", "XboxSessionTemplateName": "JfPL5WIG", "XboxTitleID": "6w86Siht", "localizedSessionName": {"NO8Eh5vq": {}, "cBlOHtUB": {}, "lkK0DPAI": {}}}, "PSNBaseUrl": "p9zJHrcO", "appName": "c332pSd7", "asyncProcessDSRequest": {"async": true, "timeout": 27}, "attributes": {"r3LnkhZ0": {}, "HV63mG5a": {}, "wMTK6WQl": {}}, "autoJoin": false, "autoLeaveSession": false, "clientVersion": "SkshaZzm", "customURLGRPC": "4Qs0cZKj", "deployment": "UlL1ZJsp", "disableCodeGeneration": true, "disableResendInvite": true, "dsManualSetReady": false, "dsSource": "rJrg4vC6", "enableSecret": true, "fallbackClaimKeys": ["CUWKFKrb", "zMFm4ZXO", "YR7HVd0B"], "grpcSessionConfig": {"appName": "wPIbOnAP", "customURL": "ruLjmeaY", "functionFlag": 59}, "immutableStorage": true, "inactiveTimeout": 13, "inviteTimeout": 58, "joinability": "PpTsB2ix", "leaderElectionGracePeriod": 30, "manualRejoin": true, "maxActiveSessions": 94, "maxPlayers": 28, "minPlayers": 7, "name": "IHmliNxr", "persistent": true, "preferredClaimKeys": ["0qhtN7EZ", "m1NofBf1", "v9aAHQZN"], "requestedRegions": ["BhRgitdV", "viQOtPq1", "mmDBoStX"], "textChat": false, "textChatMode": "NONE", "tieTeamsSessionLifetime": false, "ttlHours": 52, "type": "eoGkjQw6"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'GYgll0Ii' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name '92M0cK55' \
    --namespace $AB_NAMESPACE \
    --userId 'IapG3O1c' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'xeXRfZHI' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "0Ua26cor"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminReconcileMaxActiveSession' test.out

#- 23 AdminGetDSMCConfiguration
eval_tap 0 23 'AdminGetDSMCConfiguration # SKIP deprecated' test.out

#- 24 AdminSyncDSMCConfiguration
eval_tap 0 24 'AdminSyncDSMCConfiguration # SKIP deprecated' test.out

#- 25 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName 'gO0gcXVr' \
    --dsPodName 'EMHQbDOo' \
    --fromTime 'bfw3Jyeh' \
    --gameMode 'DLpd2KXb' \
    --isPersistent 'kj9zDnIO' \
    --isSoftDeleted 'qMwNIWop' \
    --joinability 'c4yZLxea' \
    --limit '14' \
    --matchPool 'BwciQKtq' \
    --memberID 'NU6d0dNx' \
    --offset '57' \
    --order 'KF3lohQ3' \
    --orderBy '8VIco2m0' \
    --sessionID 'quOU4bG2' \
    --status 'kopXXDWX' \
    --statusV2 'MDgZXOCR' \
    --toTime 'TERGzYyE' \
    > test.out 2>&1
eval_tap $? 25 'AdminQueryGameSessions' test.out

#- 26 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"C8g9Y7ZG": {}, "Bmj2nlFw": {}, "EaNLylcb": {}}' \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["cPBUSc1V", "4fXq0dbm", "vRT0ZHcL"]}' \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId '7Xo1MMC6' \
    --body '{"ready": false}' \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminUpdateDSInformation
samples/cli/sample-apps Session adminUpdateDSInformation \
    --namespace $AB_NAMESPACE \
    --sessionId 'lujf5FNl' \
    --body '{"createdRegion": "LFBboHXS", "deployment": "1H9Bk3BZ", "description": "kcrOB7Lf", "ip": "m27CQrci", "port": 64, "region": "wPx0apiV", "serverId": "KrbMRLUJ", "source": "CLIjMiSq", "status": "6oWD7MMg"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateDSInformation' test.out

#- 30 AdminKickGameSessionMember
samples/cli/sample-apps Session adminKickGameSessionMember \
    --memberId 'L5zlDAXH' \
    --namespace $AB_NAMESPACE \
    --sessionId 'C96rMFAg' \
    > test.out 2>&1
eval_tap $? 30 'AdminKickGameSessionMember' test.out

#- 31 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId '2wyWeMS6' \
    --namespace $AB_NAMESPACE \
    --sessionId '0RuPsZnq' \
    --statusType 'zmUSwEeD' \
    > test.out 2>&1
eval_tap $? 31 'AdminUpdateGameSessionMember' test.out

#- 32 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '48' \
    --order 'oI6jtFyA' \
    > test.out 2>&1
eval_tap $? 32 'AdminGetListNativeSession' test.out

#- 33 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --fromTime 'eI69bxXz' \
    --isSoftDeleted 'Jl9FIGXF' \
    --joinability 'sPNzcG4A' \
    --key 'vrLq9fsX' \
    --leaderID 'KgJ2gKe0' \
    --limit '67' \
    --memberID 'G9UUN63i' \
    --memberStatus '1D9n0gx4' \
    --offset '23' \
    --order 'Whs58VLd' \
    --orderBy 'NzYByGi2' \
    --partyID 'NAfwqX6k' \
    --toTime 'Z5r2ClNF' \
    --value 'YHJWD6zq' \
    > test.out 2>&1
eval_tap $? 33 'AdminQueryParties' test.out

#- 34 AdminDeleteBulkParties
samples/cli/sample-apps Session adminDeleteBulkParties \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["Q532HnVT", "djh2Ie6x", "ip8oyQa2"]}' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteBulkParties' test.out

#- 35 AdminReadPartySessionStorage
samples/cli/sample-apps Session adminReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId '0Lx6nfv8' \
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
    --body '{"psn": {"clientId": "tD5x7c2j", "clientSecret": "FZSmFl6I", "scope": "Ww8qWyUB"}}' \
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
    --limit '81' \
    --userId '3fGgHsg7' \
    > test.out 2>&1
eval_tap $? 41 'AdminGetRecentPlayer' test.out

#- 42 AdminGetRecentTeamPlayer
samples/cli/sample-apps Session adminGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --userId '2MNSj6Sm' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetRecentTeamPlayer' test.out

#- 43 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'ZSkQ1qur' \
    > test.out 2>&1
eval_tap $? 43 'AdminReadSessionStorage' test.out

#- 44 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'bVLUkhEy' \
    > test.out 2>&1
eval_tap $? 44 'AdminDeleteUserSessionStorage' test.out

#- 45 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'ngm3W0t5' \
    --userId 'ZSuK3RBn' \
    > test.out 2>&1
eval_tap $? 45 'AdminReadUserSessionStorage' test.out

#- 46 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'YQhXqeED' \
    > test.out 2>&1
eval_tap $? 46 'AdminQueryPlayerAttributes' test.out

#- 47 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'ugYA2w1r' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetPlayerAttributes' test.out

#- 48 AdminSyncNativeSession
samples/cli/sample-apps Session adminSyncNativeSession \
    --namespace $AB_NAMESPACE \
    --userId '9VmuGkVS' \
    > test.out 2>&1
eval_tap $? 48 'AdminSyncNativeSession' test.out

#- 49 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "lvvMVVli", "attributes": {"3nelP5Wa": {}, "XnQWMsbl": {}, "8bTXI3on": {}}, "autoJoin": false, "backfillTicketID": "vlK7Iw9O", "clientVersion": "8ocIHfR6", "configurationName": "WDNgdX50", "customURLGRPC": "R2Hvq50K", "deployment": "cPBTXQBm", "dsSource": "gY7JCeZD", "fallbackClaimKeys": ["ZdG00qGb", "Rd8HAGZy", "mD3DQWiK"], "inactiveTimeout": 83, "inviteTimeout": 20, "joinability": "sN7SdOvr", "matchPool": "WuNFw5h7", "maxPlayers": 61, "minPlayers": 21, "preferredClaimKeys": ["UVUBU9qi", "PduAGVqV", "dRhHqXR1"], "requestedRegions": ["9obxqeI7", "8NovaZS0", "xvQQDQEF"], "serverName": "T4c3wyaH", "storage": {"leader": {"qrleFeGj": {}, "fZDCpeOg": {}, "0O2Tdtj9": {}}}, "teams": [{"parties": [{"partyID": "vw07Qbeq", "userIDs": ["5dboHc80", "7aBkEIEe", "ZgVJL2Ho"]}, {"partyID": "et0UE7Xx", "userIDs": ["4PFZkwAM", "p69QZWIQ", "SYcLwimH"]}, {"partyID": "PcWcukig", "userIDs": ["cXOQBUhh", "yPfeF6pz", "xBId0f5Q"]}], "teamID": "o1DdTTbW", "userIDs": ["BcnR15wj", "aKgVmi9d", "RWjGMLQe"]}, {"parties": [{"partyID": "Y2IPG03J", "userIDs": ["7g6UHxZh", "WScfE59m", "anfqGhEc"]}, {"partyID": "TJsvgVk8", "userIDs": ["Bo6EtgYJ", "Gq4YdPIG", "YL2JVDnE"]}, {"partyID": "gqDwETrl", "userIDs": ["2DMK2lfz", "WdQS7tH5", "07pfR68f"]}], "teamID": "T4FrXGxR", "userIDs": ["UibaNKJ8", "VguQKERh", "UnayDQgk"]}, {"parties": [{"partyID": "JqLHUBmG", "userIDs": ["sX53Zkav", "RvwtC92O", "Oy7Gh2fL"]}, {"partyID": "uKYvX0r2", "userIDs": ["GCBJcs1n", "jzQnKtP1", "WsbqSVl9"]}, {"partyID": "KkryHV0K", "userIDs": ["mPDqeLnG", "RsKhnaU7", "ZAmnmGrs"]}], "teamID": "OCddkoyW", "userIDs": ["kCqyJ0Fk", "tfbrhRwV", "Ah5irCld"]}], "textChat": true, "textChatMode": "TEAM", "ticketIDs": ["8j8Of5fs", "UDfPCRvZ", "eQfbNXmA"], "tieTeamsSessionLifetime": false, "type": "BJsWQnAM"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateGameSession' test.out

#- 50 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"Jyif3JSG": {}, "zoEfvB2y": {}, "8sx9BbVk": {}}' \
    > test.out 2>&1
eval_tap $? 50 'PublicQueryGameSessionsByAttributes' test.out

#- 51 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "JR2XNu0r"}' \
    > test.out 2>&1
eval_tap $? 51 'PublicSessionJoinCode' test.out

#- 52 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 't4x33c0G' \
    > test.out 2>&1
eval_tap $? 52 'GetGameSessionByPodName' test.out

#- 53 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'oQQxJNz0' \
    > test.out 2>&1
eval_tap $? 53 'GetGameSession' test.out

#- 54 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'AeVchmDr' \
    --body '{"attributes": {"umQjaCOn": {}, "njZJ6jPH": {}, "LJKmEX4r": {}}, "backfillTicketID": "rTFwOAq4", "clientVersion": "j0M7ajPm", "deployment": "Xhr4JH09", "fallbackClaimKeys": ["tOu2mB2K", "YgcmylSN", "EEB14XYc"], "inactiveTimeout": 77, "inviteTimeout": 35, "joinability": "Bx2RleX9", "matchPool": "9DRL5Ql5", "maxPlayers": 51, "minPlayers": 81, "preferredClaimKeys": ["FSHTfRU4", "sZEbCdxS", "LPCRIJr0"], "requestedRegions": ["nVj3AJqc", "rv7HJCWD", "d1fvVm3U"], "teams": [{"parties": [{"partyID": "WbripXiL", "userIDs": ["Fl7DFDmK", "tT3JvRa2", "Glm8zbAg"]}, {"partyID": "IR5ZlQsg", "userIDs": ["ucPDropU", "QgfkFLj5", "fmkogNy1"]}, {"partyID": "FoBVYblb", "userIDs": ["K402mv1i", "hIdBsZif", "SO6CQAnw"]}], "teamID": "ygFk4ln5", "userIDs": ["JnhttpEM", "rlmQol0Z", "GzNDsv09"]}, {"parties": [{"partyID": "dlzLDJkl", "userIDs": ["u0NacQGU", "LkYjN71U", "fWoNSq5g"]}, {"partyID": "O0j73NtQ", "userIDs": ["D3l0qbYB", "InocBRjO", "RfG8ZPFe"]}, {"partyID": "AJDPY7gA", "userIDs": ["8nC5yv9O", "Xj2nE6mr", "VDHY57tL"]}], "teamID": "69CHeIzc", "userIDs": ["sLDzWuYc", "x3ssT2TD", "xpxLqqfQ"]}, {"parties": [{"partyID": "RZUSsVEO", "userIDs": ["9gR7Ggd9", "4uguXH1B", "1rrzaq9n"]}, {"partyID": "uezMq27K", "userIDs": ["8BQM0v32", "IbbmEO4F", "BDjbKmbB"]}, {"partyID": "Uncm5tXA", "userIDs": ["B7utttDS", "GzHbOWJi", "59PBIjMJ"]}], "teamID": "NVvfrstB", "userIDs": ["c0K6fxpM", "S4vQTiPw", "XDj348kJ"]}], "ticketIDs": ["MLkGqesH", "BSpZk3Z4", "l1miBsHg"], "tieTeamsSessionLifetime": true, "type": "3PrLOUqQ", "version": 82}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGameSession' test.out

#- 55 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '1u0FaXMW' \
    > test.out 2>&1
eval_tap $? 55 'DeleteGameSession' test.out

#- 56 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '8N2VwKV4' \
    --body '{"attributes": {"SoaRsjCg": {}, "6y0dBvTH": {}, "RHTs8SHS": {}}, "backfillTicketID": "CQiBYJWG", "clientVersion": "zZR5J8lW", "deployment": "WvxlMmfJ", "fallbackClaimKeys": ["tFaVyORz", "e7OpZi0y", "Gz9oHYZr"], "inactiveTimeout": 70, "inviteTimeout": 51, "joinability": "YA9koqHV", "matchPool": "cmbnNKhc", "maxPlayers": 41, "minPlayers": 35, "preferredClaimKeys": ["LlhwZvZB", "KSxcZlp9", "A2oTUu9T"], "requestedRegions": ["yqLlnVi1", "hg6MVTJu", "m02E4oT6"], "teams": [{"parties": [{"partyID": "KNHkifc0", "userIDs": ["GGSPCUEo", "cYgk2gOg", "zAPcCeBk"]}, {"partyID": "edKcL52F", "userIDs": ["Nv8Q5fdW", "L9q7Lj2P", "L6e1dz1U"]}, {"partyID": "bOAmNiyH", "userIDs": ["MFb8t52j", "J2esRuBl", "zs4KDysi"]}], "teamID": "wo7WioRh", "userIDs": ["8uZbX4M7", "ves4iMe2", "j8pgR1T1"]}, {"parties": [{"partyID": "6wNPqjib", "userIDs": ["NjgTnAfr", "N2wOy0aJ", "dVqj3kH2"]}, {"partyID": "QSOXb85O", "userIDs": ["2y3zsHWb", "JQhnB3Oc", "RSY26Qmr"]}, {"partyID": "JyY8QRQY", "userIDs": ["vjBowydz", "vGExDzy1", "fWKcjvZ2"]}], "teamID": "cFodi83a", "userIDs": ["3W4okRFP", "H4kcdHId", "kkWtKfmj"]}, {"parties": [{"partyID": "YEneYBTK", "userIDs": ["omAA1za8", "lf9RrtYb", "kePEsHaA"]}, {"partyID": "RVrwklPX", "userIDs": ["MDF0CkNX", "4fnqnls0", "zAGJoB2Y"]}, {"partyID": "8ZOze6hO", "userIDs": ["hxb0k3sY", "Uc4ZTuJQ", "RV4n3g51"]}], "teamID": "RwqZ1DFS", "userIDs": ["ou8IcMuL", "hI8DhSVk", "WLnpSOo0"]}], "ticketIDs": ["qwyftBQ9", "LGFGwphm", "n9I38tnl"], "tieTeamsSessionLifetime": true, "type": "aI8jeVBq", "version": 93}' \
    > test.out 2>&1
eval_tap $? 56 'PatchUpdateGameSession' test.out

#- 57 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'UcOOF413' \
    --body '{"backfillTicketID": "j7NKHbPj"}' \
    > test.out 2>&1
eval_tap $? 57 'UpdateGameSessionBackfillTicketID' test.out

#- 58 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'PRlxLtvd' \
    > test.out 2>&1
eval_tap $? 58 'GameSessionGenerateCode' test.out

#- 59 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'znZCqOfS' \
    > test.out 2>&1
eval_tap $? 59 'PublicRevokeGameSessionCode' test.out

#- 60 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'ziY21lXl' \
    --body '{"metadata": {"SHtBXowQ": "FiNSR6hw", "m92oAvXP": "Op7Wcv8J", "N3doXikP": "seDG8qTi"}, "platformID": "UKuNT3xR", "userID": "ZleHIDBu"}' \
    > test.out 2>&1
eval_tap $? 60 'PublicGameSessionInvite' test.out

#- 61 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'VyERWFgj' \
    > test.out 2>&1
eval_tap $? 61 'JoinGameSession' test.out

#- 62 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'L6XydaE5' \
    --body '{"leaderID": "pT6R7fSV"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicPromoteGameSessionLeader' test.out

#- 63 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '9qZUX8ZO' \
    > test.out 2>&1
eval_tap $? 63 'LeaveGameSession' test.out

#- 64 PublicKickGameSessionMember
samples/cli/sample-apps Session publicKickGameSessionMember \
    --memberId 'Ztpoh9Uw' \
    --namespace $AB_NAMESPACE \
    --sessionId 'orShuRZj' \
    > test.out 2>&1
eval_tap $? 64 'PublicKickGameSessionMember' test.out

#- 65 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'BiFDNVmb' \
    > test.out 2>&1
eval_tap $? 65 'PublicGameSessionReject' test.out

#- 66 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId '0RnhCZhF' \
    > test.out 2>&1
eval_tap $? 66 'GetSessionServerSecret' test.out

#- 67 AppendTeamGameSession
eval_tap 0 67 'AppendTeamGameSession # SKIP deprecated' test.out

#- 68 PublicGameSessionCancel
samples/cli/sample-apps Session publicGameSessionCancel \
    --namespace $AB_NAMESPACE \
    --sessionId 'L8Rw2ZHe' \
    --userId 'Y9QytLty' \
    > test.out 2>&1
eval_tap $? 68 'PublicGameSessionCancel' test.out

#- 69 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "JRhZ1W0Z"}' \
    > test.out 2>&1
eval_tap $? 69 'PublicPartyJoinCode' test.out

#- 70 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'nXxN3T8B' \
    > test.out 2>&1
eval_tap $? 70 'PublicGetParty' test.out

#- 71 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId '31iIIY0J' \
    --body '{"attributes": {"uscrZUYX": {}, "9AXIkIRb": {}, "syZuskgX": {}}, "inactiveTimeout": 84, "inviteTimeout": 99, "joinability": "tkPnuN0c", "maxPlayers": 56, "minPlayers": 7, "type": "dvZMN0No", "version": 69}' \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdateParty' test.out

#- 72 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'KGQ5mVIy' \
    --body '{"attributes": {"xTfvbJqW": {}, "gCL7qxju": {}, "JhB4KSe3": {}}, "inactiveTimeout": 29, "inviteTimeout": 4, "joinability": "LFvdeFhk", "maxPlayers": 67, "minPlayers": 50, "type": "qiIayY8n", "version": 84}' \
    > test.out 2>&1
eval_tap $? 72 'PublicPatchUpdateParty' test.out

#- 73 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'mUY5jHrh' \
    > test.out 2>&1
eval_tap $? 73 'PublicGeneratePartyCode' test.out

#- 74 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'wghHabLD' \
    > test.out 2>&1
eval_tap $? 74 'PublicRevokePartyCode' test.out

#- 75 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'XfKZO9EN' \
    --body '{"metadata": {"9UfHsO0X": "Zl6YEUus", "UAAqUnFE": "fG52ohTH", "IRKlH6PZ": "CyYFdPca"}, "platformID": "R7ZOKeQv", "userID": "AtHMTF6k"}' \
    > test.out 2>&1
eval_tap $? 75 'PublicPartyInvite' test.out

#- 76 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'EPoK8Qrm' \
    --body '{"leaderID": "NGRhwHxr"}' \
    > test.out 2>&1
eval_tap $? 76 'PublicPromotePartyLeader' test.out

#- 77 PublicReadPartySessionStorage
samples/cli/sample-apps Session publicReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId 'MLOZCpQ9' \
    > test.out 2>&1
eval_tap $? 77 'PublicReadPartySessionStorage' test.out

#- 78 PublicUpdateInsertPartySessionStorageReserved
samples/cli/sample-apps Session publicUpdateInsertPartySessionStorageReserved \
    --namespace $AB_NAMESPACE \
    --partyId 'nhf6LncO' \
    --userId 'YikHNt71' \
    --body '{"yfuTzELF": {}, "V92TxWhx": {}, "IHv9GTMI": {}}' \
    > test.out 2>&1
eval_tap $? 78 'PublicUpdateInsertPartySessionStorageReserved' test.out

#- 79 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'ssAr099D' \
    > test.out 2>&1
eval_tap $? 79 'PublicPartyJoin' test.out

#- 80 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'y2cv2pP0' \
    > test.out 2>&1
eval_tap $? 80 'PublicPartyLeave' test.out

#- 81 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'klpNjU1X' \
    > test.out 2>&1
eval_tap $? 81 'PublicPartyReject' test.out

#- 82 PublicPartyCancel
samples/cli/sample-apps Session publicPartyCancel \
    --namespace $AB_NAMESPACE \
    --partyId 'thFla586' \
    --userId 'SckDWsuC' \
    > test.out 2>&1
eval_tap $? 82 'PublicPartyCancel' test.out

#- 83 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'FBBSUAuo' \
    --userId 'grfM5zDl' \
    > test.out 2>&1
eval_tap $? 83 'PublicPartyKick' test.out

#- 84 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"tGI2U4YW": {}, "3FwG315o": {}, "xvxzJlka": {}}, "configurationName": "zC8Y7K4O", "inactiveTimeout": 75, "inviteTimeout": 89, "joinability": "HGkRma5K", "maxPlayers": 22, "members": [{"ID": "llPIyuqY", "PlatformID": "QY2xTL2a", "PlatformUserID": "iobHJvY4"}, {"ID": "vjd5ybRB", "PlatformID": "FiNmljiq", "PlatformUserID": "oLD3AtD6"}, {"ID": "9JMDgda4", "PlatformID": "4WOAythP", "PlatformUserID": "B8A8OmIW"}], "minPlayers": 87, "textChat": false, "type": "5VLWik8t"}' \
    > test.out 2>&1
eval_tap $? 84 'PublicCreateParty' test.out

#- 85 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    > test.out 2>&1
eval_tap $? 85 'PublicGetRecentPlayer' test.out

#- 86 PublicGetRecentTeamPlayer
samples/cli/sample-apps Session publicGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetRecentTeamPlayer' test.out

#- 87 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'KuRyntBQ' \
    --body '{"82coAN3q": {}, "15aawriI": {}, "KutgoLAA": {}}' \
    > test.out 2>&1
eval_tap $? 87 'PublicUpdateInsertSessionStorageLeader' test.out

#- 88 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId '1FCZQieN' \
    --userId 'nQQg8zLk' \
    --body '{"ezcMxD1G": {}, "cSu0FYuo": {}, "Dn3Otde7": {}}' \
    > test.out 2>&1
eval_tap $? 88 'PublicUpdateInsertSessionStorage' test.out

#- 89 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["0rwmqA70", "b2bANlvH", "n0U4YU3I"]}' \
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
    --body '{"crossplayEnabled": false, "currentPlatform": "NYw7FGIy", "data": {"0DjiZ4gO": {}, "AJh4u0U5": {}, "PCQx437i": {}}, "platforms": [{"name": "cYbw3c9t", "userID": "NOkSxhEs"}, {"name": "BOc1BaXn", "userID": "Os64iuSX"}, {"name": "TydHKM1O", "userID": "uEyzFJUP"}], "roles": ["ojQmOaXy", "4p93hkEs", "koBUVSn5"], "simultaneousPlatform": "r6fbbK8e"}' \
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
    --order 'k8GWoxiG' \
    --orderBy 'lgKWbzac' \
    --status '5svhjYEU' \
    > test.out 2>&1
eval_tap $? 93 'PublicQueryMyGameSessions' test.out

#- 94 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order '5yhgNQwl' \
    --orderBy 'QsmghhFG' \
    --status 'FteQq1LK' \
    > test.out 2>&1
eval_tap $? 94 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE