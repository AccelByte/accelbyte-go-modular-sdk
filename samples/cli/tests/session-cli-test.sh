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
echo "1..95"

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
    --body '{"logLevel": "fatal"}' \
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
    --body '{"metricExcludedNamespaces": ["9QIvNL30", "hTox63E7", "xN8OckCK"], "regionRetryMapping": {"zu8NfMe2": ["qEji0iaR", "shCPsPcP", "IKeuOgwp"], "fp3M4oNi": ["2NAO3sXu", "Ie2wJEMx", "s0GTFbCJ"], "JLso9NAJ": ["4lVyEdTe", "X6O0hnrV", "UNtmZBZd"]}, "regionURLMapping": ["YHtCAoBl", "XnsBqPei", "JnWk1dFt"], "testGameMode": "RgOXLkaS", "testRegionURLMapping": ["aOS8ABJ6", "pHHlCrBK", "aw1sO71W"], "testTargetUserIDs": ["18VSbR3P", "qXLXrDWN", "ZnIAqdCY"]}' \
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
    --body '{"durationDays": 88}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationAlertV1' test.out

#- 13 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 63}' \
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
    --body '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["UPDATE_INVITABLE_USER_TYPE", "UPDATE_JOINABLE_USER_TYPE", "UPDATE_JOINABLE_USER_TYPE"], "PSNServiceLabel": 65, "PSNSupportedPlatforms": ["O6YePOLS", "uFAfSCv1", "Bm6CRbTN"], "SessionTitle": "IMr5tNDJ", "ShouldSync": false, "XboxAllowCrossPlatform": true, "XboxSandboxID": "3AQWu6XN", "XboxServiceConfigID": "KzsMRl1V", "XboxSessionTemplateName": "uiAO9w0S", "XboxTitleID": "L7xoDKPS", "localizedSessionName": {"PqQOGdsQ": {}, "kuuhXfaj": {}, "MHsSxJV5": {}}}, "PSNBaseUrl": "YHXRlJyi", "amsClaimTimeoutMinutes": 39, "appName": "bhrUQ9AJ", "asyncProcessDSRequest": {"async": true, "timeout": 62}, "attributes": {"lkKkFYNF": {}, "40eJSyEb": {}, "V8cnd6JQ": {}}, "autoJoin": false, "autoLeaveSession": false, "clientVersion": "ZoxVp5Ur", "customURLGRPC": "AwKwub7V", "deployment": "poj0pajR", "disableCodeGeneration": true, "disableResendInvite": false, "dsManualSetReady": false, "dsSource": "uIt7Wqd1", "enableSecret": true, "fallbackClaimKeys": ["KxRYPX4a", "FyIRSyWa", "o8Vcpph6"], "grpcSessionConfig": {"appName": "ppiQ02S9", "customURL": "mgpFmKi5", "functionFlag": 96}, "immutableStorage": false, "inactiveTimeout": 72, "inviteTimeout": 66, "joinability": "INVITE_ONLY", "leaderElectionGracePeriod": 44, "manualRejoin": false, "maxActiveSessions": 18, "maxPlayers": 96, "minPlayers": 52, "name": "aS0KOcrj", "partyCodeGeneratorString": "M2J2alJY", "partyCodeLength": 82, "persistent": true, "preferredClaimKeys": ["Du1VbxTT", "p8fegzu3", "cXFsRfTJ"], "requestedRegions": ["SoeKb4W8", "SoUk9xdZ", "MGjrDrqA"], "textChat": false, "textChatMode": "NONE", "tieTeamsSessionLifetime": true, "ttlHours": 78, "type": "NONE"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateConfigurationTemplateV1' test.out

#- 17 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --name 'f7whhgeD' \
    --offset '7' \
    --order 'lKCQvi72' \
    --orderBy 'fdQCFNWe' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetAllConfigurationTemplatesV1' test.out

#- 18 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'GT27kJ45' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigurationTemplateV1' test.out

#- 19 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'Kv2rFg6J' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["UPDATE_JOINABLE_USER_TYPE", "PROMOTE_TO_LEADER", "UPDATE_INVITABLE_USER_TYPE"], "PSNServiceLabel": 33, "PSNSupportedPlatforms": ["hhqswWhZ", "UsJIT2bo", "Xt02GdhZ"], "SessionTitle": "vH92fmFv", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "Wl4sxu8M", "XboxServiceConfigID": "2GNPpPIH", "XboxSessionTemplateName": "h8GIQXyS", "XboxTitleID": "oFy88FZx", "localizedSessionName": {"bHO27XXQ": {}, "YGmJUPoL": {}, "N6s2Ln28": {}}}, "PSNBaseUrl": "pkfm7cZ1", "amsClaimTimeoutMinutes": 39, "appName": "gSFd1Amf", "asyncProcessDSRequest": {"async": false, "timeout": 45}, "attributes": {"ro88LR6Z": {}, "bCR6Bs7f": {}, "RXEk8Q83": {}}, "autoJoin": true, "autoLeaveSession": true, "clientVersion": "lq86P7PL", "customURLGRPC": "XrD18oVN", "deployment": "5SvMBgET", "disableCodeGeneration": true, "disableResendInvite": true, "dsManualSetReady": false, "dsSource": "vJlfjocC", "enableSecret": true, "fallbackClaimKeys": ["JCRAcTBR", "bJQVz53b", "sNijec79"], "grpcSessionConfig": {"appName": "nsuDoMyA", "customURL": "MxuOJpsS", "functionFlag": 21}, "immutableStorage": true, "inactiveTimeout": 7, "inviteTimeout": 59, "joinability": "FRIENDS_OF_LEADER", "leaderElectionGracePeriod": 90, "manualRejoin": true, "maxActiveSessions": 89, "maxPlayers": 15, "minPlayers": 16, "name": "aTZzRpLO", "partyCodeGeneratorString": "MrsSjLBh", "partyCodeLength": 51, "persistent": true, "preferredClaimKeys": ["SlwARrCK", "W4ifyo0T", "Liw4he9d"], "requestedRegions": ["CvM8j2NH", "aaHYfCJ4", "OJwRcETn"], "textChat": false, "textChatMode": "GAME", "tieTeamsSessionLifetime": false, "ttlHours": 20, "type": "DS"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'N2MvBJF6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 'lB6pB7xP' \
    --namespace $AB_NAMESPACE \
    --userId 'tfSRZIIw' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'PxfhU0At' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "vcui8v6P"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminReconcileMaxActiveSession' test.out

#- 23 AdminGetDSMCConfiguration
eval_tap 0 23 'AdminGetDSMCConfiguration # SKIP deprecated' test.out

#- 24 AdminSyncDSMCConfiguration
eval_tap 0 24 'AdminSyncDSMCConfiguration # SKIP deprecated' test.out

#- 25 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName 'v9jHHUwL' \
    --dsPodName 'd6jZhuIz' \
    --fromTime 'tGB3wFhC' \
    --gameMode 'fdZ5OYb5' \
    --isPersistent 'N0tyt7y9' \
    --isSoftDeleted 'bV7IUNVD' \
    --joinability 'INVITE_ONLY' \
    --limit '39' \
    --matchPool '56KKRwNl' \
    --memberID '2ph0QWeK' \
    --offset '36' \
    --order 'xlcFwO0l' \
    --orderBy 'nRnsGwHw' \
    --sessionID 'aEdscmW5' \
    --status 'AVAILABLE' \
    --statusV2 'AVAILABLE' \
    --toTime 'w8MIdCWM' \
    > test.out 2>&1
eval_tap $? 25 'AdminQueryGameSessions' test.out

#- 26 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"VjWxxZ6B": {}, "fXrJOdUf": {}, "w11LZx5Z": {}}' \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["sWwCgby6", "cV0NiP1y", "M0OUz3op"]}' \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'aNJShInb' \
    --body '{"ready": false}' \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminUpdateDSInformation
samples/cli/sample-apps Session adminUpdateDSInformation \
    --namespace $AB_NAMESPACE \
    --sessionId 'HTn8t7bw' \
    --body '{"createdRegion": "V9mrezMb", "deployment": "3mXfsGOP", "description": "iMQzPcJZ", "ip": "82GKm9A4", "port": 50, "region": "oLlUe4nD", "serverId": "IGWmBU6Y", "source": "7iKiQkHf", "status": "XfV11C4Z"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateDSInformation' test.out

#- 30 AdminKickGameSessionMember
samples/cli/sample-apps Session adminKickGameSessionMember \
    --memberId '059Y8lsO' \
    --namespace $AB_NAMESPACE \
    --sessionId 'mfNvfyKB' \
    > test.out 2>&1
eval_tap $? 30 'AdminKickGameSessionMember' test.out

#- 31 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'PogcENFX' \
    --namespace $AB_NAMESPACE \
    --sessionId 'qqwR3LnI' \
    --statusType 'pgrx1tWq' \
    > test.out 2>&1
eval_tap $? 31 'AdminUpdateGameSessionMember' test.out

#- 32 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '54' \
    --order 'qwnyMmfc' \
    > test.out 2>&1
eval_tap $? 32 'AdminGetListNativeSession' test.out

#- 33 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --configurationName 'fZBV3Mrj' \
    --fromTime 't2vy4VEi' \
    --isSoftDeleted 'rl3gz8jK' \
    --joinability 'FRIENDS_OF_FRIENDS' \
    --key '1aj4z7e8' \
    --leaderID '7u6ZXsud' \
    --limit '77' \
    --memberID 'hojAli8j' \
    --memberStatus 'DROPPED' \
    --offset '21' \
    --order 'hzM63Uf0' \
    --orderBy 'YXoV54KL' \
    --partyID 'NhcmsY9Y' \
    --toTime 'bMCOlorP' \
    --value 'VLafo5yp' \
    > test.out 2>&1
eval_tap $? 33 'AdminQueryParties' test.out

#- 34 AdminDeleteBulkParties
samples/cli/sample-apps Session adminDeleteBulkParties \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["q8ctMQYs", "ELROSs16", "c6JRMWI5"]}' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteBulkParties' test.out

#- 35 AdminReadPartySessionStorage
samples/cli/sample-apps Session adminReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId '3DtpXOKU' \
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
    --body '{"psn": {"clientId": "vLuTHOcf", "clientSecret": "AN3wTBKn", "scope": "iLH7m6iK"}}' \
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
    --limit '0' \
    --userId 'L71CqvnZ' \
    > test.out 2>&1
eval_tap $? 41 'AdminGetRecentPlayer' test.out

#- 42 AdminGetRecentTeamPlayer
samples/cli/sample-apps Session adminGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --userId 'jGsoDV9e' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetRecentTeamPlayer' test.out

#- 43 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'hHLNs2kv' \
    > test.out 2>&1
eval_tap $? 43 'AdminReadSessionStorage' test.out

#- 44 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'IZ1VYkXJ' \
    > test.out 2>&1
eval_tap $? 44 'AdminDeleteUserSessionStorage' test.out

#- 45 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'Q5810Rq3' \
    --userId 'bcHGvh8r' \
    > test.out 2>&1
eval_tap $? 45 'AdminReadUserSessionStorage' test.out

#- 46 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'JkOyKr9R' \
    > test.out 2>&1
eval_tap $? 46 'AdminQueryPlayerAttributes' test.out

#- 47 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'x0D0SaZ4' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetPlayerAttributes' test.out

#- 48 AdminSyncNativeSession
samples/cli/sample-apps Session adminSyncNativeSession \
    --namespace $AB_NAMESPACE \
    --userId 'W9JLelNA' \
    > test.out 2>&1
eval_tap $? 48 'AdminSyncNativeSession' test.out

#- 49 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --resolveMaxActiveSession 'true' \
    --body '{"appName": "KZhhMkNg", "attributes": {"VlkFRp8V": {}, "tNk5MvWc": {}, "9X3ZjAWw": {}}, "autoJoin": true, "backfillTicketID": "fGou466d", "clientVersion": "vyM3uJID", "configurationName": "mRiZAEC3", "customURLGRPC": "KvHc8GeI", "deployment": "sffwT6O1", "dsSource": "qiwGIIyA", "fallbackClaimKeys": ["5IvrEGt2", "xuOORKb1", "KR2srNL6"], "inactiveTimeout": 6, "inviteTimeout": 67, "joinability": "OPEN", "matchPool": "ITwFOkBR", "maxPlayers": 58, "minPlayers": 96, "preferredClaimKeys": ["uZVtBd7Q", "fuhFxVuV", "zrHNRh3u"], "requestedRegions": ["1FrI55dE", "i8kGfq6L", "K2wbKScM"], "serverName": "uVWTDGYL", "storage": {"leader": {"DFnDDneY": {}, "LGrzDv3D": {}, "KCzO97aO": {}}}, "teams": [{"parties": [{"partyID": "3yOmzM9k", "userIDs": ["SCpnA0uz", "Soyra40P", "6gXFQQIT"]}, {"partyID": "u2qCRHl5", "userIDs": ["UoA0VOwq", "t393scra", "gJg4KdQq"]}, {"partyID": "PMcIqVng", "userIDs": ["zDJnXuDZ", "u2LkR254", "QQRKxmhM"]}], "teamID": "WiE81yjC", "userIDs": ["xDEMFaSi", "hJ2OFMcf", "sMYQ07f2"]}, {"parties": [{"partyID": "tmb3EkHj", "userIDs": ["dM4SVQqK", "ZVNOa6GN", "E2Odj7KC"]}, {"partyID": "iIBhBCu4", "userIDs": ["Ks99FKdI", "RRHODqKA", "K5vuYvSk"]}, {"partyID": "Ug4qSm7u", "userIDs": ["RAu92Vpl", "g165enof", "NJoQItyf"]}], "teamID": "TcG1KT3J", "userIDs": ["iFoL8oLk", "fpHyW8p7", "9AWqwarG"]}, {"parties": [{"partyID": "EpmIalRG", "userIDs": ["Uk0dgfzg", "SkDwZWJy", "ZEzcNs3J"]}, {"partyID": "tIMw8hYz", "userIDs": ["KPP2eADo", "RxLcbHX2", "O1mnIV8x"]}, {"partyID": "iXC8aF9P", "userIDs": ["VG9VZd9P", "86BJhqxi", "b2gA8jJr"]}], "teamID": "XeR2s6zk", "userIDs": ["UfsspzAi", "GI49fgsm", "hFd6l1UN"]}], "textChat": true, "textChatMode": "TEAM", "ticketIDs": ["okdvaYVj", "K9Qeua2s", "yeCv8sw2"], "tieTeamsSessionLifetime": false, "type": "DS"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateGameSession' test.out

#- 50 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"lun1Hrlb": {}, "1b1VnXMX": {}, "LvNSrRcS": {}}' \
    > test.out 2>&1
eval_tap $? 50 'PublicQueryGameSessionsByAttributes' test.out

#- 51 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Nk36MxFo"}' \
    > test.out 2>&1
eval_tap $? 51 'PublicSessionJoinCode' test.out

#- 52 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName '21S9WWRi' \
    > test.out 2>&1
eval_tap $? 52 'GetGameSessionByPodName' test.out

#- 53 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'Dxzd1o7j' \
    > test.out 2>&1
eval_tap $? 53 'GetGameSession' test.out

#- 54 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'POi4T5Zo' \
    --body '{"attributes": {"bvkdgYqI": {}, "bTn4ycRZ": {}, "9yb0VKKD": {}}, "backfillTicketID": "fdEXFwf2", "clientVersion": "UWYi52j3", "deployment": "Eyu7Fl7K", "fallbackClaimKeys": ["aeYZ0sH5", "1gV3GJks", "im9DNZy1"], "inactiveTimeout": 75, "inviteTimeout": 19, "joinability": "INVITE_ONLY", "matchPool": "BhZEBjLI", "maxPlayers": 90, "minPlayers": 75, "preferredClaimKeys": ["WecHf5vs", "KKkL7xbJ", "eJ16ZkfF"], "requestedRegions": ["5HAghMqx", "MarJBBh9", "kDEMbug2"], "teams": [{"parties": [{"partyID": "Tf4H8vOW", "userIDs": ["C6BtRzcA", "FmRsVQIg", "m0750qtr"]}, {"partyID": "q9oKpGux", "userIDs": ["xuFYrWUR", "lzKafMXD", "5F4TNt8k"]}, {"partyID": "kByGqQEb", "userIDs": ["CLS6XTNq", "dON2a60V", "NwAY4OKe"]}], "teamID": "g1I7tqf0", "userIDs": ["mIMbqatE", "w3S7auBp", "3y8OLejy"]}, {"parties": [{"partyID": "N7briaX3", "userIDs": ["D82IQiXL", "3SzYwRR2", "Q3trRXXL"]}, {"partyID": "zTvag6HA", "userIDs": ["NKcqPE0U", "T9FVuefe", "TuQR8fRn"]}, {"partyID": "6wNps0H4", "userIDs": ["ym4lYLEk", "ylEoNs7U", "QLupYBxR"]}], "teamID": "HXnrLyaR", "userIDs": ["WJ04k8Yi", "90HWljIq", "J9GZ7Jx3"]}, {"parties": [{"partyID": "Ce0ct9HZ", "userIDs": ["a5FPlYdU", "9n2x3Vgg", "TLMCL1AD"]}, {"partyID": "PdG6LOz7", "userIDs": ["eZSHhBB0", "x85NCB6S", "zCDXy97S"]}, {"partyID": "66lEZGFA", "userIDs": ["XHsNzql1", "IDhpNB04", "ENdtMzdO"]}], "teamID": "EHWhqVj4", "userIDs": ["V1AwAabZ", "5DfIUKM3", "tqJhUcXl"]}], "ticketIDs": ["VqXGYvdh", "4P6yeW6z", "4Jxlbsab"], "tieTeamsSessionLifetime": false, "type": "DS", "version": 18}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGameSession' test.out

#- 55 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'hVMz8Gjh' \
    > test.out 2>&1
eval_tap $? 55 'DeleteGameSession' test.out

#- 56 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'dcr8yQZR' \
    --body '{"attributes": {"9kTUQaoh": {}, "sFaeErRD": {}, "Mzd7R4DP": {}}, "backfillTicketID": "7n0ch8Jj", "clientVersion": "kZab94sc", "deployment": "paV5G22r", "fallbackClaimKeys": ["kEmyWOm5", "ojIyUTvZ", "6gNRGWAF"], "inactiveTimeout": 14, "inviteTimeout": 46, "joinability": "OPEN", "matchPool": "pZZlwKUd", "maxPlayers": 6, "minPlayers": 61, "preferredClaimKeys": ["IIGwkRlO", "bcxZaXdR", "CvE7oX4c"], "requestedRegions": ["sOdWwnZD", "TZc1pUkF", "QCPK6eUF"], "teams": [{"parties": [{"partyID": "TiK6XOn2", "userIDs": ["oAKs6w2u", "RbSWMYDU", "vQPexh7S"]}, {"partyID": "RRHTfmiB", "userIDs": ["4A6Rmffq", "9qB6SpxO", "XkmsqvIb"]}, {"partyID": "xtTY6ayT", "userIDs": ["kJiD8Z5h", "fsBFnkGf", "dnLPj1cD"]}], "teamID": "yKpGnlDP", "userIDs": ["yyM22JtU", "2FNrG8gT", "GXpBC2Tu"]}, {"parties": [{"partyID": "9DVWHm4N", "userIDs": ["rA07ptsA", "JixBj1Oz", "TBF3UOLX"]}, {"partyID": "dHXba6ox", "userIDs": ["tumrnwGf", "gAyHI37z", "65IM6dID"]}, {"partyID": "Ci3poibI", "userIDs": ["N6MntiNS", "VoYtCrBG", "1hM32zrs"]}], "teamID": "i02S6olN", "userIDs": ["iK6pXpqj", "TMBvBeuv", "elcccnJI"]}, {"parties": [{"partyID": "rk6XxaAV", "userIDs": ["qxWHvWOp", "Llw0DO0r", "Gsxn3l31"]}, {"partyID": "XoPFBSUv", "userIDs": ["A4KYyt1z", "qFZCAZ54", "PPxUyCLJ"]}, {"partyID": "awiKr8TU", "userIDs": ["AH5CkIUS", "d03Z0kpA", "rYNlwafb"]}], "teamID": "fCc4hTbL", "userIDs": ["gKFIZkuw", "mzAzB54U", "YEJyFl2Q"]}], "ticketIDs": ["M5XyC30L", "g4Wjxf4P", "Cvgjz7n3"], "tieTeamsSessionLifetime": false, "type": "DS", "version": 8}' \
    > test.out 2>&1
eval_tap $? 56 'PatchUpdateGameSession' test.out

#- 57 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId '4p4WbIpw' \
    --body '{"backfillTicketID": "0m7KliAP"}' \
    > test.out 2>&1
eval_tap $? 57 'UpdateGameSessionBackfillTicketID' test.out

#- 58 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'u6usf17U' \
    > test.out 2>&1
eval_tap $? 58 'GameSessionGenerateCode' test.out

#- 59 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'YQL9Md9L' \
    > test.out 2>&1
eval_tap $? 59 'PublicRevokeGameSessionCode' test.out

#- 60 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'CbOeXVVU' \
    --body '{"metadata": {"ga1ECDvh": "Y1g7XKrD", "XuqkBoAf": "APlBDYCC", "LsMczexv": "amtsbY5l"}, "platformID": "lc2Xy4ON", "userID": "BSncdGk6"}' \
    > test.out 2>&1
eval_tap $? 60 'PublicGameSessionInvite' test.out

#- 61 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'UG1TxlFa' \
    > test.out 2>&1
eval_tap $? 61 'JoinGameSession' test.out

#- 62 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'ZREb0ThI' \
    --body '{"leaderID": "xnlGIX5J"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicPromoteGameSessionLeader' test.out

#- 63 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'vbvHoo9D' \
    > test.out 2>&1
eval_tap $? 63 'LeaveGameSession' test.out

#- 64 PublicKickGameSessionMember
samples/cli/sample-apps Session publicKickGameSessionMember \
    --memberId 'UPAouwkp' \
    --namespace $AB_NAMESPACE \
    --sessionId '87ou6Ct0' \
    > test.out 2>&1
eval_tap $? 64 'PublicKickGameSessionMember' test.out

#- 65 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'BDglcOQ9' \
    > test.out 2>&1
eval_tap $? 65 'PublicGameSessionReject' test.out

#- 66 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId 'IRVr2iZ9' \
    > test.out 2>&1
eval_tap $? 66 'GetSessionServerSecret' test.out

#- 67 AppendTeamGameSession
eval_tap 0 67 'AppendTeamGameSession # SKIP deprecated' test.out

#- 68 PublicGameSessionCancel
samples/cli/sample-apps Session publicGameSessionCancel \
    --namespace $AB_NAMESPACE \
    --sessionId 'oOFPZV49' \
    --userId 'iMFgD9P2' \
    > test.out 2>&1
eval_tap $? 68 'PublicGameSessionCancel' test.out

#- 69 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "6j9OU15I"}' \
    > test.out 2>&1
eval_tap $? 69 'PublicPartyJoinCode' test.out

#- 70 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'jKSI93LH' \
    > test.out 2>&1
eval_tap $? 70 'PublicGetParty' test.out

#- 71 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'Pa2IUzXr' \
    --body '{"attributes": {"oehfyxab": {}, "3tN2rDKD": {}, "A7HF8zU0": {}}, "inactiveTimeout": 28, "inviteTimeout": 38, "joinability": "FRIENDS_OF_LEADER", "maxPlayers": 26, "minPlayers": 1, "type": "NONE", "version": 77}' \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdateParty' test.out

#- 72 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'ZekvF6DL' \
    --body '{"attributes": {"kzYT2Tgm": {}, "3cg3En5r": {}, "Ux3gTHPA": {}}, "inactiveTimeout": 56, "inviteTimeout": 7, "joinability": "FRIENDS_OF_MEMBERS", "maxPlayers": 36, "minPlayers": 51, "type": "NONE", "version": 60}' \
    > test.out 2>&1
eval_tap $? 72 'PublicPatchUpdateParty' test.out

#- 73 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'i8UnZZxl' \
    > test.out 2>&1
eval_tap $? 73 'PublicGeneratePartyCode' test.out

#- 74 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'qR62s0Yx' \
    > test.out 2>&1
eval_tap $? 74 'PublicRevokePartyCode' test.out

#- 75 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'W7VrAbkF' \
    --body '{"metadata": {"Bw4bNSPf": "iFaXnAQl", "bPPo3FP3": "zErEVhU9", "3lgkZqpv": "hFn6MjUP"}, "platformID": "vA26Gbvc", "userID": "UlUajfq0"}' \
    > test.out 2>&1
eval_tap $? 75 'PublicPartyInvite' test.out

#- 76 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'cmnYD1EK' \
    --body '{"leaderID": "QvzHItQI"}' \
    > test.out 2>&1
eval_tap $? 76 'PublicPromotePartyLeader' test.out

#- 77 PublicReadPartySessionStorage
samples/cli/sample-apps Session publicReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId 'E8aprMsr' \
    > test.out 2>&1
eval_tap $? 77 'PublicReadPartySessionStorage' test.out

#- 78 PublicUpdateInsertPartySessionStorage
samples/cli/sample-apps Session publicUpdateInsertPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId '7aid5aAP' \
    --userId 'LvimB14W' \
    --body '{"BGZ1i2RM": {}, "kMSNs3ao": {}, "1bQws1eY": {}}' \
    > test.out 2>&1
eval_tap $? 78 'PublicUpdateInsertPartySessionStorage' test.out

#- 79 PublicUpdateInsertPartySessionStorageReserved
samples/cli/sample-apps Session publicUpdateInsertPartySessionStorageReserved \
    --namespace $AB_NAMESPACE \
    --partyId 'L1B3CETo' \
    --userId 'gFEe1pTF' \
    --body '{"9HFx1Bfr": {}, "EsDIbtj8": {}, "cOJLPB8H": {}}' \
    > test.out 2>&1
eval_tap $? 79 'PublicUpdateInsertPartySessionStorageReserved' test.out

#- 80 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'ldbNHnpY' \
    > test.out 2>&1
eval_tap $? 80 'PublicPartyJoin' test.out

#- 81 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'i5nBxgfr' \
    > test.out 2>&1
eval_tap $? 81 'PublicPartyLeave' test.out

#- 82 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'FCSf74zC' \
    > test.out 2>&1
eval_tap $? 82 'PublicPartyReject' test.out

#- 83 PublicPartyCancel
samples/cli/sample-apps Session publicPartyCancel \
    --namespace $AB_NAMESPACE \
    --partyId 's2UKv5Zx' \
    --userId '6tfSg6Cj' \
    > test.out 2>&1
eval_tap $? 83 'PublicPartyCancel' test.out

#- 84 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'h27OlhFU' \
    --userId 'yAcgdUnK' \
    > test.out 2>&1
eval_tap $? 84 'PublicPartyKick' test.out

#- 85 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"2iLSzkr4": {}, "LZY2AX5K": {}, "PkzmGbkd": {}}, "configurationName": "NwwwhIpW", "inactiveTimeout": 81, "inviteTimeout": 13, "joinability": "FRIENDS_OF_FRIENDS", "maxPlayers": 59, "members": [{"ID": "wXKGJWso", "PlatformID": "gbyATHse", "PlatformUserID": "2JrEc1zp"}, {"ID": "HD3NMuGy", "PlatformID": "JzIJKBBG", "PlatformUserID": "NA4B60hh"}, {"ID": "KcFYoNkC", "PlatformID": "xaVYKxCn", "PlatformUserID": "Ow8TAON5"}], "minPlayers": 47, "textChat": true, "type": "NONE"}' \
    > test.out 2>&1
eval_tap $? 85 'PublicCreateParty' test.out

#- 86 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetRecentPlayer' test.out

#- 87 PublicGetRecentTeamPlayer
samples/cli/sample-apps Session publicGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    > test.out 2>&1
eval_tap $? 87 'PublicGetRecentTeamPlayer' test.out

#- 88 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'BODWAiMK' \
    --body '{"nvYqwWKo": {}, "Shc5Hhwf": {}, "9kEtkTaZ": {}}' \
    > test.out 2>&1
eval_tap $? 88 'PublicUpdateInsertSessionStorageLeader' test.out

#- 89 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'hGLVhpHK' \
    --userId 'mRYJpbpy' \
    --body '{"V0p09keM": {}, "2a6ugGRq": {}, "5WHNcQGQ": {}}' \
    > test.out 2>&1
eval_tap $? 89 'PublicUpdateInsertSessionStorage' test.out

#- 90 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["Np1NiqiM", "0HRxIxTY", "VXEnnB9S"]}' \
    > test.out 2>&1
eval_tap $? 90 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 91 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 91 'PublicGetPlayerAttributes' test.out

#- 92 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": true, "currentPlatform": "nMlicPMG", "data": {"9lckeDhZ": {}, "kFkyxwG6": {}, "ZrqnQwAp": {}}, "platforms": [{"name": "ZOnqOSpU", "userID": "7SBW0zQy"}, {"name": "ENHL4gFr", "userID": "RHWTUVSm"}, {"name": "631N0UwM", "userID": "RnwB9Hrk"}], "roles": ["Yp4XWRPl", "EDZNRlVH", "R8479NZL"], "simultaneousPlatform": "iqBee1q6"}' \
    > test.out 2>&1
eval_tap $? 92 'PublicStorePlayerAttributes' test.out

#- 93 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 93 'PublicDeletePlayerAttributes' test.out

#- 94 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'DkRtM1Xf' \
    --orderBy 'lhZnr8zs' \
    --status '1qS1e3HL' \
    > test.out 2>&1
eval_tap $? 94 'PublicQueryMyGameSessions' test.out

#- 95 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'FR4ChUt5' \
    --orderBy 'Y5AN49E9' \
    --status 'tJhpMkvd' \
    > test.out 2>&1
eval_tap $? 95 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE