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
    --body '{"metricExcludedNamespaces": ["SbGZ6GDA", "5oibm3yD", "a0DsVy7J"], "regionRetryMapping": {"xrgyXjZu": ["V4mYH5eq", "VY1gGX2s", "yWTxY4xS"], "YDAiLIkc": ["qJuj2NFW", "RRTgDc5Y", "Biep4we6"], "fd3jsPrF": ["SHRmKGMP", "rBWN2IIe", "thyCekc3"]}, "regionURLMapping": ["Ze80l7ki", "4ZqKOH7d", "wlLcSvDv"], "testGameMode": "C133WKpq", "testRegionURLMapping": ["ThlTioK7", "CsIxRWE2", "vLSviP5m"], "testTargetUserIDs": ["uHdMgHjf", "YjDVxmzY", "kr7Nv1VQ"]}' \
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
    --body '{"durationDays": 16}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationAlertV1' test.out

#- 13 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 34}' \
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
    --body '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["KICK", "KICK", "PROMOTE_TO_LEADER"], "PSNServiceLabel": 50, "PSNSupportedPlatforms": ["YCeWlAZi", "0RckMsru", "lyanmZvp"], "SessionTitle": "N2MOJyLG", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "K7ldRSoD", "XboxServiceConfigID": "6xc2JEDg", "XboxSessionTemplateName": "MNgLzBPf", "XboxTitleID": "S5lN6CWR", "activePlatforms": ["NhcFlrnS", "xKl4wDO2", "RPluauXy"], "localizedSessionName": {"dRgoaDB1": {}, "YUVsTmPL": {}, "iELEmDXh": {}}}, "PSNBaseUrl": "GuLVnOY9", "amsClaimTimeoutMinutes": 14, "appName": "ImmfFBJC", "asyncProcessDSRequest": {"async": false, "timeout": 56}, "attributes": {"vxZdTvwk": {}, "2HIvvHb5": {}, "jruXoRiR": {}}, "autoJoin": true, "autoLeaveSession": false, "clientVersion": "PalDaAOR", "customURLGRPC": "A9pnhz7l", "deployment": "uBzYXIyp", "disableCodeGeneration": false, "disableResendInvite": false, "dsManualSetReady": false, "dsSource": "FKkg9gVF", "enableSecret": true, "fallbackClaimKeys": ["SRIL9bMV", "YN46JTyp", "dkXB1KTb"], "grpcSessionConfig": {"appName": "2KNWMOGC", "customURL": "jtAq0yPu", "functionFlag": 71}, "immutableStorage": false, "inactiveTimeout": 88, "inviteTimeout": 68, "joinability": "FRIENDS_OF_FRIENDS", "leaderElectionGracePeriod": 20, "manualRejoin": true, "maxActiveSessions": 39, "maxPlayers": 53, "minPlayers": 56, "name": "PHDICkSG", "partyCodeGeneratorString": "9OZyU4CE", "partyCodeLength": 59, "persistent": false, "preferredClaimKeys": ["0krcHdaU", "kuz3P4kN", "CY4fEx98"], "requestedRegions": ["V1Vqu0BK", "e5Ih0moI", "7JqBk8ht"], "textChat": false, "textChatMode": "NONE", "tieTeamsSessionLifetime": true, "ttlHours": 47, "type": "NONE"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateConfigurationTemplateV1' test.out

#- 17 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --name 'Y54wBBKE' \
    --offset '56' \
    --order 'd3FjPqlU' \
    --orderBy '9HXf2Jg1' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetAllConfigurationTemplatesV1' test.out

#- 18 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'OG86tn0f' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigurationTemplateV1' test.out

#- 19 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name '12DCWlJZ' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["PROMOTE_TO_LEADER", "PROMOTE_TO_LEADER", "UPDATE_JOINABLE_USER_TYPE"], "PSNServiceLabel": 37, "PSNSupportedPlatforms": ["zERwu3r3", "zcHRx5jP", "LLyA01CZ"], "SessionTitle": "481Q8QWv", "ShouldSync": false, "XboxAllowCrossPlatform": true, "XboxSandboxID": "Tgi3Jt1E", "XboxServiceConfigID": "C2824rus", "XboxSessionTemplateName": "QEDuwkjE", "XboxTitleID": "f8TDXj2c", "activePlatforms": ["9urMPuN6", "NFwrxw00", "yDFnA6R0"], "localizedSessionName": {"rycbQErh": {}, "JuYpqVxg": {}, "tC59l3Bb": {}}}, "PSNBaseUrl": "i3VNSo0n", "amsClaimTimeoutMinutes": 12, "appName": "UeKXWdRx", "asyncProcessDSRequest": {"async": false, "timeout": 28}, "attributes": {"NXs6ibiD": {}, "TY61gvLq": {}, "dVvVp51F": {}}, "autoJoin": true, "autoLeaveSession": false, "clientVersion": "mg7glfrE", "customURLGRPC": "xWAD4TSC", "deployment": "QPYub5nY", "disableCodeGeneration": false, "disableResendInvite": false, "dsManualSetReady": false, "dsSource": "jdX3Gn7k", "enableSecret": true, "fallbackClaimKeys": ["qUYyKt64", "gsKJPiXX", "AI07dmXE"], "grpcSessionConfig": {"appName": "Ho8PYCtc", "customURL": "KsAWaFNp", "functionFlag": 31}, "immutableStorage": false, "inactiveTimeout": 96, "inviteTimeout": 30, "joinability": "CLOSED", "leaderElectionGracePeriod": 24, "manualRejoin": true, "maxActiveSessions": 71, "maxPlayers": 67, "minPlayers": 27, "name": "NysoWs66", "partyCodeGeneratorString": "OEeokB9N", "partyCodeLength": 96, "persistent": false, "preferredClaimKeys": ["JKneaQvl", "FHaZbI9q", "fCnG9PTZ"], "requestedRegions": ["23Uae6iR", "fhHvo0cW", "CmOGtA8G"], "textChat": true, "textChatMode": "TEAM", "tieTeamsSessionLifetime": true, "ttlHours": 46, "type": "P2P"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'rYBab08U' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 'xKmu1tJT' \
    --namespace $AB_NAMESPACE \
    --userId '1i829y96' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'aQFb2Dsq' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "WVRELcBJ"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminReconcileMaxActiveSession' test.out

#- 23 AdminGetDSMCConfiguration
eval_tap 0 23 'AdminGetDSMCConfiguration # SKIP deprecated' test.out

#- 24 AdminSyncDSMCConfiguration
eval_tap 0 24 'AdminSyncDSMCConfiguration # SKIP deprecated' test.out

#- 25 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName 'l1w96sRy' \
    --dsPodName 'MvdhAqQL' \
    --fromTime '4bVdeLd3' \
    --gameMode 'm4Ijo1cE' \
    --isPersistent 'oUDBroZr' \
    --isSoftDeleted 'N5bMRXDc' \
    --joinability 'OPEN' \
    --limit '24' \
    --matchPool 'bXOQqboq' \
    --memberID 'tSuUHYaz' \
    --offset '90' \
    --order 'uKzFWTjp' \
    --orderBy 'QiGbfdZK' \
    --sessionID 'FgxoUilW' \
    --status 'AVAILABLE' \
    --statusV2 'REQUESTED' \
    --toTime 'SehOplHh' \
    > test.out 2>&1
eval_tap $? 25 'AdminQueryGameSessions' test.out

#- 26 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"2FT2nWDW": {}, "QBJQtw2X": {}, "FMrtN0NK": {}}' \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["hoc7ONq2", "4ROkMlxV", "lDu7GN5z"]}' \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'BqosZZxZ' \
    --body '{"ready": true}' \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminUpdateDSInformation
samples/cli/sample-apps Session adminUpdateDSInformation \
    --namespace $AB_NAMESPACE \
    --sessionId 'WEB8WzDc' \
    --body '{"createdRegion": "WkCUCMLI", "deployment": "5eATypc4", "description": "AL7eiFTa", "ip": "WMeiY5Xi", "port": 8, "region": "E8d0F9Zu", "serverId": "EdyKgwaI", "source": "XQaA0p9v", "status": "ENDED"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateDSInformation' test.out

#- 30 AdminKickGameSessionMember
samples/cli/sample-apps Session adminKickGameSessionMember \
    --memberId 'dqTjZDek' \
    --namespace $AB_NAMESPACE \
    --sessionId '4PuM5FE8' \
    > test.out 2>&1
eval_tap $? 30 'AdminKickGameSessionMember' test.out

#- 31 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'Z3nrRpUC' \
    --namespace $AB_NAMESPACE \
    --sessionId 'g3zVGoVx' \
    --statusType '92qQCYVF' \
    > test.out 2>&1
eval_tap $? 31 'AdminUpdateGameSessionMember' test.out

#- 32 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '4' \
    --order 'qRt05yEk' \
    > test.out 2>&1
eval_tap $? 32 'AdminGetListNativeSession' test.out

#- 33 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --configurationName 'JIHkC1Nv' \
    --fromTime 'Zwkz9nz1' \
    --isSoftDeleted 'YDCeIZFU' \
    --joinability 'INVITE_ONLY' \
    --key 'HGwpJ6G0' \
    --leaderID 'dcNKRSXv' \
    --limit '12' \
    --memberID '491D5vZe' \
    --memberStatus 'TIMEOUT' \
    --offset '40' \
    --order 'YXPyowfd' \
    --orderBy 'gZYhmPAz' \
    --partyID 'adgRqa5U' \
    --toTime 'eJ3IRnZG' \
    --value 'bOCpz1hd' \
    > test.out 2>&1
eval_tap $? 33 'AdminQueryParties' test.out

#- 34 AdminDeleteBulkParties
samples/cli/sample-apps Session adminDeleteBulkParties \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["FzAxm37T", "Onz3O2d1", "VLcFKxL7"]}' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteBulkParties' test.out

#- 35 AdminReadPartySessionStorage
samples/cli/sample-apps Session adminReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId 'KvsBXKjM' \
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
    --body '{"psn": {"clientId": "RiXcMYtR", "clientSecret": "w8PXWMhc", "scope": "ZUiWByOu"}}' \
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
    --description 'IYUcxmBR' \
    --file 'tmp.dat' \
    --password '4KNW2LL9' \
    > test.out 2>&1
eval_tap $? 41 'AdminUploadPlatformCredentials' test.out

#- 42 AdminGetRecentPlayer
samples/cli/sample-apps Session adminGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --userId 'aBhU7Tyn' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetRecentPlayer' test.out

#- 43 AdminGetRecentTeamPlayer
samples/cli/sample-apps Session adminGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --userId 'BePduiEk' \
    > test.out 2>&1
eval_tap $? 43 'AdminGetRecentTeamPlayer' test.out

#- 44 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'kpCwRjvZ' \
    > test.out 2>&1
eval_tap $? 44 'AdminReadSessionStorage' test.out

#- 45 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'i5fWn378' \
    > test.out 2>&1
eval_tap $? 45 'AdminDeleteUserSessionStorage' test.out

#- 46 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'i6RShFQ0' \
    --userId '6kxQawDL' \
    > test.out 2>&1
eval_tap $? 46 'AdminReadUserSessionStorage' test.out

#- 47 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'DScOlj21' \
    > test.out 2>&1
eval_tap $? 47 'AdminQueryPlayerAttributes' test.out

#- 48 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'fw6dsK0A' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetPlayerAttributes' test.out

#- 49 AdminSyncNativeSession
samples/cli/sample-apps Session adminSyncNativeSession \
    --namespace $AB_NAMESPACE \
    --userId 'dJCgTDdl' \
    > test.out 2>&1
eval_tap $? 49 'AdminSyncNativeSession' test.out

#- 50 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --resolveMaxActiveSession 'false' \
    --body '{"appName": "2nCvlqUp", "attributes": {"8Q5kQ2Hz": {}, "CWOBJESR": {}, "5nyIrzmt": {}}, "autoJoin": true, "backfillTicketID": "cLcJ5Mab", "clientVersion": "ShkP0XvE", "configurationName": "IHvaUgZm", "customURLGRPC": "EE4SlWns", "deployment": "GxCezxJm", "dsSource": "e3TINNfM", "fallbackClaimKeys": ["mv9ZKRQM", "8J3Sq4WM", "gcA6Hl4W"], "inactiveTimeout": 33, "inviteTimeout": 34, "joinability": "FRIENDS_OF_LEADER", "matchPool": "hSRbReTR", "maxPlayers": 27, "minPlayers": 8, "password": "26x6MILD", "preferredClaimKeys": ["60QgL5A7", "PHQ2U489", "riZLBEmq"], "requestedRegions": ["sCHBTDUS", "92tjQKB3", "oTEkMguQ"], "serverName": "lODgMcsp", "storage": {"leader": {"jgnXKQkL": {}, "6dkGtfkc": {}, "u9SjT5jA": {}}}, "teams": [{"parties": [{"partyID": "ghl4WySD", "userIDs": ["L0V01lie", "vRtoWCkd", "EVi5F5q5"]}, {"partyID": "1lPGr4oy", "userIDs": ["qKpjFyQl", "KstJ6PwY", "DnDO1nEA"]}, {"partyID": "xJPLn8Y6", "userIDs": ["5CwsBzVp", "y6Ld2RbV", "95YePH8V"]}], "teamID": "rbTBmGCy", "userIDs": ["5ClO12rJ", "wNrCWJNr", "nM3ZSark"]}, {"parties": [{"partyID": "4VI6YEYr", "userIDs": ["FRLs3YZG", "Ad12KMKL", "nNqg9ndY"]}, {"partyID": "OlqZc2CF", "userIDs": ["UNm1iu39", "6D8ItN28", "2PjCjaz9"]}, {"partyID": "31YRJ5jD", "userIDs": ["qblZ2GpD", "QYz3ldWo", "PKj83cFq"]}], "teamID": "XQyRtC3m", "userIDs": ["wpjhYQzZ", "dUdy6O1J", "03enc9hJ"]}, {"parties": [{"partyID": "ZuJtVpnb", "userIDs": ["KTZOU9Pu", "gl6BGv2w", "SJC0EKwY"]}, {"partyID": "zf31l4Am", "userIDs": ["3Xccbewu", "uY9PCq8m", "4OgBKgar"]}, {"partyID": "P6c5C8rU", "userIDs": ["90nEigAS", "vCqkK02x", "dcdsy2kf"]}], "teamID": "nKnJj4WD", "userIDs": ["nVSz4Jix", "E1evf18c", "QyIqiAhI"]}], "textChat": true, "textChatMode": "GAME_AND_TEAM", "ticketIDs": ["mxvr0HUy", "CQxLwlpo", "UNcu4GV4"], "tieTeamsSessionLifetime": false, "type": "DS"}' \
    > test.out 2>&1
eval_tap $? 50 'CreateGameSession' test.out

#- 51 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"RlwIeB3B": {}, "kziR9A31": {}, "1sjU1Oz4": {}}' \
    > test.out 2>&1
eval_tap $? 51 'PublicQueryGameSessionsByAttributes' test.out

#- 52 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "NFJwXDYY"}' \
    > test.out 2>&1
eval_tap $? 52 'PublicSessionJoinCode' test.out

#- 53 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'xtbDq573' \
    > test.out 2>&1
eval_tap $? 53 'GetGameSessionByPodName' test.out

#- 54 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'g5Zp0G8L' \
    > test.out 2>&1
eval_tap $? 54 'GetGameSession' test.out

#- 55 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'v8cptFwZ' \
    --body '{"attributes": {"NGipnnbA": {}, "LE8XHc8s": {}, "Fb4yXkHE": {}}, "backfillTicketID": "Ky6L3YM8", "clientVersion": "LuMtGWIJ", "deployment": "UGdHgV4Q", "fallbackClaimKeys": ["nnJrlSi2", "poDBcGqY", "VCeACCjr"], "inactiveTimeout": 50, "inviteTimeout": 72, "joinability": "INVITE_ONLY", "matchPool": "otlY4qdJ", "maxPlayers": 47, "minPlayers": 48, "password": "vM9JCmOu", "preferredClaimKeys": ["l5LACxOE", "N8r7JiVV", "TohNRm2l"], "requestedRegions": ["YO9yhOfa", "DBhiVqkY", "qtbHi3sp"], "teams": [{"parties": [{"partyID": "bwghDwNv", "userIDs": ["2MZvYfap", "Nkd231jL", "VC4G2cbO"]}, {"partyID": "v1LJmpHJ", "userIDs": ["a3kVvyg2", "dx6c2wpw", "z0WqfNko"]}, {"partyID": "V3cp24Nz", "userIDs": ["EWKcUNZE", "wwalzAzL", "sJAyPe72"]}], "teamID": "qbm4Tb88", "userIDs": ["q7f037WO", "ez0MfGhB", "Z9leoR4q"]}, {"parties": [{"partyID": "dQ3WQ33i", "userIDs": ["iBcrQmhu", "BAV2Fhbj", "GF38FcLq"]}, {"partyID": "t0e7WsER", "userIDs": ["zW14YpRI", "kDYNpTcn", "ts8u3ur4"]}, {"partyID": "EjosatRx", "userIDs": ["9tqdfs2I", "zVek1Oh6", "8lpCVrr5"]}], "teamID": "2Wwjs9GY", "userIDs": ["feLlrq4f", "ErTBomK0", "HocvaY4F"]}, {"parties": [{"partyID": "uq1NLDN7", "userIDs": ["xai4hLwE", "q86WpFPp", "vfZxGCQd"]}, {"partyID": "FDeh3yg2", "userIDs": ["Z4Oa45fa", "qQzAaxug", "9GMjxXrh"]}, {"partyID": "9KrATDUW", "userIDs": ["KheKTyei", "J4w6Z38x", "I3dRPoXa"]}], "teamID": "YAUvwJg0", "userIDs": ["3NghQMRC", "CiSWiEqv", "JqwTEQWJ"]}], "ticketIDs": ["jVINnodP", "vNz8TvJJ", "fl8wvKkZ"], "tieTeamsSessionLifetime": true, "type": "P2P", "version": 48}' \
    > test.out 2>&1
eval_tap $? 55 'UpdateGameSession' test.out

#- 56 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'dtm7oRgp' \
    > test.out 2>&1
eval_tap $? 56 'DeleteGameSession' test.out

#- 57 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '6rZiR2ml' \
    --body '{"attributes": {"osU30BPX": {}, "8ITyDaXE": {}, "bFGATr8l": {}}, "backfillTicketID": "lx5x8yKS", "clientVersion": "Yj4x0jZM", "deployment": "MzmYfIMU", "fallbackClaimKeys": ["AjyWpATU", "ktTNsR1h", "6GDQaKwD"], "inactiveTimeout": 49, "inviteTimeout": 63, "joinability": "OPEN", "matchPool": "H68Se8GO", "maxPlayers": 46, "minPlayers": 50, "password": "2kyjlKlQ", "preferredClaimKeys": ["3pUBVmJy", "F0uzme18", "VlafqCHb"], "requestedRegions": ["yc8g2wSR", "e8ttS0M6", "MfBb63ml"], "teams": [{"parties": [{"partyID": "bhm1kgtV", "userIDs": ["mlK9mh0j", "gZmRsJ2w", "qRbN7GxI"]}, {"partyID": "0ASpWjMV", "userIDs": ["OWKjqDBB", "739KQw2l", "hPbYhb4A"]}, {"partyID": "d6iSA3ef", "userIDs": ["sDzHmq71", "jxG9Qxfo", "YrcSKtNW"]}], "teamID": "lNBENmG9", "userIDs": ["xM4Oi2pt", "uBPhsjpB", "tfNHwdOr"]}, {"parties": [{"partyID": "MERuXKXZ", "userIDs": ["4KTHZ9hT", "RJCL3Uzi", "n7WGgUMb"]}, {"partyID": "XQ3mQcjd", "userIDs": ["68hNjD0E", "qw2JdKlm", "MvH9oBP2"]}, {"partyID": "zmpjGlX2", "userIDs": ["MlfHv0og", "WKJkP8BH", "5YpidG2F"]}], "teamID": "9RLqXeby", "userIDs": ["iUluDlJU", "Lq3vsf4m", "7v8mAqiw"]}, {"parties": [{"partyID": "PnKjHBYR", "userIDs": ["6M6Uoxl7", "IFxhJR5F", "lyDb82o0"]}, {"partyID": "EmrFw8uE", "userIDs": ["qH5AqXfW", "N5kI7e3W", "4xS8aIPz"]}, {"partyID": "4Rp8s7BJ", "userIDs": ["cdoBGMFI", "sBxSGpeu", "IgfsPxtN"]}], "teamID": "nsxQCg8F", "userIDs": ["LAQhwmd9", "qo1nMKf3", "OHZvnbG6"]}], "ticketIDs": ["hpOKJ0hn", "NtQDLChM", "Iy7mTogc"], "tieTeamsSessionLifetime": false, "type": "NONE", "version": 6}' \
    > test.out 2>&1
eval_tap $? 57 'PatchUpdateGameSession' test.out

#- 58 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'VbEaKlz5' \
    --body '{"backfillTicketID": "0dyAzOBj"}' \
    > test.out 2>&1
eval_tap $? 58 'UpdateGameSessionBackfillTicketID' test.out

#- 59 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId '7UHJ1UJY' \
    > test.out 2>&1
eval_tap $? 59 'GameSessionGenerateCode' test.out

#- 60 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'YC5sMCey' \
    > test.out 2>&1
eval_tap $? 60 'PublicRevokeGameSessionCode' test.out

#- 61 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId '4avV1K8s' \
    --body '{"metadata": {"POEULCer": "sPUqtJTV", "GdA1UxbM": "n0xZIgwF", "sjxWHTy1": "UNX8PxhQ"}, "platformID": "l4bkg1jL", "userID": "gYnOGD73"}' \
    > test.out 2>&1
eval_tap $? 61 'PublicGameSessionInvite' test.out

#- 62 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'xZEwcF8O' \
    --body '{"password": "Rni94w7b"}' \
    > test.out 2>&1
eval_tap $? 62 'JoinGameSession' test.out

#- 63 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'BP11Hgp8' \
    --body '{"leaderID": "i133xp1u"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicPromoteGameSessionLeader' test.out

#- 64 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'Tn5ZbyQr' \
    > test.out 2>&1
eval_tap $? 64 'LeaveGameSession' test.out

#- 65 PublicKickGameSessionMember
samples/cli/sample-apps Session publicKickGameSessionMember \
    --memberId 'lNMnoGZi' \
    --namespace $AB_NAMESPACE \
    --sessionId '0NgivEIH' \
    > test.out 2>&1
eval_tap $? 65 'PublicKickGameSessionMember' test.out

#- 66 PublicGetGameSessionPassword
samples/cli/sample-apps Session publicGetGameSessionPassword \
    --namespace $AB_NAMESPACE \
    --sessionId '4F7ziwq6' \
    > test.out 2>&1
eval_tap $? 66 'PublicGetGameSessionPassword' test.out

#- 67 PublicUpdateGameSessionPassword
samples/cli/sample-apps Session publicUpdateGameSessionPassword \
    --namespace $AB_NAMESPACE \
    --sessionId 'YReZ0QZV' \
    --body '{"newPassword": "u8n0J6yG"}' \
    > test.out 2>&1
eval_tap $? 67 'PublicUpdateGameSessionPassword' test.out

#- 68 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId '6lzCGmPD' \
    > test.out 2>&1
eval_tap $? 68 'PublicGameSessionReject' test.out

#- 69 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId 'KAaM5X1W' \
    > test.out 2>&1
eval_tap $? 69 'GetSessionServerSecret' test.out

#- 70 AppendTeamGameSession
eval_tap 0 70 'AppendTeamGameSession # SKIP deprecated' test.out

#- 71 PublicGameSessionCancel
samples/cli/sample-apps Session publicGameSessionCancel \
    --namespace $AB_NAMESPACE \
    --sessionId 'COhvvOx6' \
    --userId 'clRBgx9d' \
    > test.out 2>&1
eval_tap $? 71 'PublicGameSessionCancel' test.out

#- 72 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "uX2wyX1I"}' \
    > test.out 2>&1
eval_tap $? 72 'PublicPartyJoinCode' test.out

#- 73 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'OKWJRoi5' \
    > test.out 2>&1
eval_tap $? 73 'PublicGetParty' test.out

#- 74 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'pPQz8L6Q' \
    --body '{"attributes": {"UNstD0Rz": {}, "YwYqPWFe": {}, "9V5PTCdd": {}}, "inactiveTimeout": 2, "inviteTimeout": 7, "joinability": "FRIENDS_OF_MEMBERS", "maxPlayers": 65, "minPlayers": 66, "password": "DUW4yF1T", "type": "P2P", "version": 29}' \
    > test.out 2>&1
eval_tap $? 74 'PublicUpdateParty' test.out

#- 75 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'e0v0bOmQ' \
    --body '{"attributes": {"7RwYlXLw": {}, "LZYVyRas": {}, "bIUBfUzn": {}}, "inactiveTimeout": 5, "inviteTimeout": 88, "joinability": "OPEN", "maxPlayers": 57, "minPlayers": 30, "password": "0yirI4XA", "type": "DS", "version": 28}' \
    > test.out 2>&1
eval_tap $? 75 'PublicPatchUpdateParty' test.out

#- 76 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId '8txM31za' \
    > test.out 2>&1
eval_tap $? 76 'PublicGeneratePartyCode' test.out

#- 77 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'GSvW9810' \
    > test.out 2>&1
eval_tap $? 77 'PublicRevokePartyCode' test.out

#- 78 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'tfzzaBIy' \
    --body '{"metadata": {"gNyjm6pI": "UKIC5vwb", "3eFqX9KZ": "V3yI2759", "BQQssTFg": "wlY6XkAn"}, "platformID": "rvNIxu7X", "userID": "1IUwDdeH"}' \
    > test.out 2>&1
eval_tap $? 78 'PublicPartyInvite' test.out

#- 79 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'o3SgJDiU' \
    --body '{"leaderID": "1mhYeNyp"}' \
    > test.out 2>&1
eval_tap $? 79 'PublicPromotePartyLeader' test.out

#- 80 PublicGetPartyPassword
samples/cli/sample-apps Session publicGetPartyPassword \
    --namespace $AB_NAMESPACE \
    --partyId 'RU3KKunZ' \
    > test.out 2>&1
eval_tap $? 80 'PublicGetPartyPassword' test.out

#- 81 PublicUpdatePartyPassword
samples/cli/sample-apps Session publicUpdatePartyPassword \
    --namespace $AB_NAMESPACE \
    --partyId 'EtoIeVqe' \
    --body '{"newPassword": "9d18MUb9"}' \
    > test.out 2>&1
eval_tap $? 81 'PublicUpdatePartyPassword' test.out

#- 82 PublicReadPartySessionStorage
samples/cli/sample-apps Session publicReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId 'E0JL9qo1' \
    > test.out 2>&1
eval_tap $? 82 'PublicReadPartySessionStorage' test.out

#- 83 PublicUpdateInsertPartySessionStorage
samples/cli/sample-apps Session publicUpdateInsertPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId '362wXJBl' \
    --userId 'NO2xyKii' \
    --body '{"KDVRM1AK": {}, "yJy7wyaq": {}, "1MyQvw5e": {}}' \
    > test.out 2>&1
eval_tap $? 83 'PublicUpdateInsertPartySessionStorage' test.out

#- 84 PublicUpdateInsertPartySessionStorageReserved
samples/cli/sample-apps Session publicUpdateInsertPartySessionStorageReserved \
    --namespace $AB_NAMESPACE \
    --partyId 'p0ctinqf' \
    --userId 'SR859wAF' \
    --body '{"SYhYZdpJ": {}, "rPiT9Pwn": {}, "O8TBKvMW": {}}' \
    > test.out 2>&1
eval_tap $? 84 'PublicUpdateInsertPartySessionStorageReserved' test.out

#- 85 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'l0UxMEls' \
    --body '{"password": "ac5qIHnR"}' \
    > test.out 2>&1
eval_tap $? 85 'PublicPartyJoin' test.out

#- 86 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId '75LrMzxG' \
    > test.out 2>&1
eval_tap $? 86 'PublicPartyLeave' test.out

#- 87 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'S5eR4mZI' \
    > test.out 2>&1
eval_tap $? 87 'PublicPartyReject' test.out

#- 88 PublicPartyCancel
samples/cli/sample-apps Session publicPartyCancel \
    --namespace $AB_NAMESPACE \
    --partyId 'dng4EWHN' \
    --userId 'aNRcnhRK' \
    > test.out 2>&1
eval_tap $? 88 'PublicPartyCancel' test.out

#- 89 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'KAzQQMwt' \
    --userId 'UYOXSKQl' \
    > test.out 2>&1
eval_tap $? 89 'PublicPartyKick' test.out

#- 90 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"JJVdE9Y2": {}, "XSW18TiJ": {}, "GS74woqd": {}}, "configurationName": "CO0zvbaM", "inactiveTimeout": 50, "inviteTimeout": 79, "joinability": "FRIENDS_OF_FRIENDS", "maxPlayers": 98, "members": [{"ID": "god0qnoJ", "PlatformID": "TPoveBUn", "PlatformUserID": "BjnTY5cC"}, {"ID": "KmiPrIx7", "PlatformID": "kTsmV7RF", "PlatformUserID": "8KbPZe31"}, {"ID": "U732p3qu", "PlatformID": "4boIogRw", "PlatformUserID": "ob2o3v1m"}], "minPlayers": 27, "password": "7yx0Nry7", "textChat": true, "type": "DS"}' \
    > test.out 2>&1
eval_tap $? 90 'PublicCreateParty' test.out

#- 91 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    > test.out 2>&1
eval_tap $? 91 'PublicGetRecentPlayer' test.out

#- 92 PublicGetRecentTeamPlayer
samples/cli/sample-apps Session publicGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    > test.out 2>&1
eval_tap $? 92 'PublicGetRecentTeamPlayer' test.out

#- 93 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'KQT34gLY' \
    --body '{"KEujw7aG": {}, "AJXjb1K6": {}, "9HU4S7sQ": {}}' \
    > test.out 2>&1
eval_tap $? 93 'PublicUpdateInsertSessionStorageLeader' test.out

#- 94 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'QJY2dROt' \
    --userId 'oP0EpAeI' \
    --body '{"yWfbFN1F": {}, "khlg4FVq": {}, "hQuuc5Zg": {}}' \
    > test.out 2>&1
eval_tap $? 94 'PublicUpdateInsertSessionStorage' test.out

#- 95 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["V0yfSXPt", "4Tun1ovF", "Afj5ryTw"]}' \
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
    --body '{"crossplayEnabled": true, "currentPlatform": "7DvDFSxU", "data": {"l19zezKZ": {}, "SEtfKXTe": {}, "mpHgwsQY": {}}, "platforms": [{"name": "GAJODA1e", "userID": "7aZrKFok"}, {"name": "KrJpI4Aw", "userID": "p5N82VwF"}, {"name": "wmeQOKXC", "userID": "qPVXseah"}], "roles": ["EOVtP6GI", "YtHzmfMP", "1CwSSNRY"], "simultaneousPlatform": "yurK8cJY"}' \
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
    --order 'MOfYwSBt' \
    --orderBy 'do4qNKoW' \
    --status 'HMxWVGGU' \
    > test.out 2>&1
eval_tap $? 99 'PublicQueryMyGameSessions' test.out

#- 100 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'ju4DGn2v' \
    --orderBy 'rNsuNiIu' \
    --status 'hfHv8WvE' \
    > test.out 2>&1
eval_tap $? 100 'PublicQueryMyParties' test.out

#- 101 PublicReplaceSessionStorageLeaderV2
samples/cli/sample-apps Session publicReplaceSessionStorageLeaderV2 \
    --namespace $AB_NAMESPACE \
    --sessionId 'I233lnYn' \
    --body '{"lAJclJmw": {}, "BREVICcx": {}, "w33HgZpM": {}}' \
    > test.out 2>&1
eval_tap $? 101 'PublicReplaceSessionStorageLeaderV2' test.out

#- 102 PublicUpdateInsertSessionStorageLeaderV2
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeaderV2 \
    --namespace $AB_NAMESPACE \
    --sessionId 'Cd0ovlkT' \
    --body '{"wBRYeH1t": {}, "49qbnjMt": {}, "JfGHEyOa": {}}' \
    > test.out 2>&1
eval_tap $? 102 'PublicUpdateInsertSessionStorageLeaderV2' test.out

#- 103 PublicReplaceSessionStorageUserV2
samples/cli/sample-apps Session publicReplaceSessionStorageUserV2 \
    --namespace $AB_NAMESPACE \
    --sessionId 're42YhHM' \
    --userId 'ZE9wHnxa' \
    --body '{"mAODdxGR": {}, "YXihELuR": {}, "TvdIFh1C": {}}' \
    > test.out 2>&1
eval_tap $? 103 'PublicReplaceSessionStorageUserV2' test.out

#- 104 PublicUpdateInsertSessionStorageUserV2
samples/cli/sample-apps Session publicUpdateInsertSessionStorageUserV2 \
    --namespace $AB_NAMESPACE \
    --sessionId 'LcMHrQME' \
    --userId 'g2GobVvs' \
    --body '{"nilZ5SmJ": {}, "SDBgm6Kk": {}, "8PD7DaJT": {}}' \
    > test.out 2>&1
eval_tap $? 104 'PublicUpdateInsertSessionStorageUserV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE