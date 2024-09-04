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
echo "1..98"

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

#- 3 PprofHandler
samples/cli/sample-apps Session pprofHandler \
    > test.out 2>&1
eval_tap $? 3 'PprofHandler' test.out

#- 4 AllocsHandler
samples/cli/sample-apps Session allocsHandler \
    > test.out 2>&1
eval_tap $? 4 'AllocsHandler' test.out

#- 5 BlockHandler
samples/cli/sample-apps Session blockHandler \
    > test.out 2>&1
eval_tap $? 5 'BlockHandler' test.out

#- 6 CmdlineHandler
samples/cli/sample-apps Session cmdlineHandler \
    > test.out 2>&1
eval_tap $? 6 'CmdlineHandler' test.out

#- 7 GoroutineHandler
samples/cli/sample-apps Session goroutineHandler \
    > test.out 2>&1
eval_tap $? 7 'GoroutineHandler' test.out

#- 8 HeapHandler
samples/cli/sample-apps Session heapHandler \
    > test.out 2>&1
eval_tap $? 8 'HeapHandler' test.out

#- 9 MutexHandler
samples/cli/sample-apps Session mutexHandler \
    > test.out 2>&1
eval_tap $? 9 'MutexHandler' test.out

#- 10 Profile
samples/cli/sample-apps Session profile \
    > test.out 2>&1
eval_tap $? 10 'Profile' test.out

#- 11 SymbolHandler
samples/cli/sample-apps Session symbolHandler \
    > test.out 2>&1
eval_tap $? 11 'SymbolHandler' test.out

#- 12 ThreadcreateHandler
samples/cli/sample-apps Session threadcreateHandler \
    > test.out 2>&1
eval_tap $? 12 'ThreadcreateHandler' test.out

#- 13 TraceHandler
samples/cli/sample-apps Session traceHandler \
    > test.out 2>&1
eval_tap $? 13 'TraceHandler' test.out

#- 14 GetHealthcheckInfoV1
samples/cli/sample-apps Session getHealthcheckInfoV1 \
    > test.out 2>&1
eval_tap $? 14 'GetHealthcheckInfoV1' test.out

#- 15 AdminGetLogConfig
samples/cli/sample-apps Session adminGetLogConfig \
    > test.out 2>&1
eval_tap $? 15 'AdminGetLogConfig' test.out

#- 16 AdminPatchUpdateLogConfig
samples/cli/sample-apps Session adminPatchUpdateLogConfig \
    --body '{"logLevel": "info"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminPatchUpdateLogConfig' test.out

#- 17 AdminGetDSMCConfigurationDefault
samples/cli/sample-apps Session adminGetDSMCConfigurationDefault \
    > test.out 2>&1
eval_tap $? 17 'AdminGetDSMCConfigurationDefault' test.out

#- 18 AdminListEnvironmentVariables
samples/cli/sample-apps Session adminListEnvironmentVariables \
    > test.out 2>&1
eval_tap $? 18 'AdminListEnvironmentVariables' test.out

#- 19 AdminListGlobalConfiguration
samples/cli/sample-apps Session adminListGlobalConfiguration \
    > test.out 2>&1
eval_tap $? 19 'AdminListGlobalConfiguration' test.out

#- 20 AdminUpdateGlobalConfiguration
samples/cli/sample-apps Session adminUpdateGlobalConfiguration \
    --body '{"metricExcludedNamespaces": ["V1LhS6cM", "5Ifq8LIZ", "7UKERNPM"], "regionRetryMapping": {"fB2LosKu": ["6DodtVxk", "GSUWYKwj", "EsJrXdij"], "KVBMUJGa": ["c5rBtNEU", "tyicQ7CJ", "z9owWPOg"], "CmBTUQM9": ["8NZjiht2", "wzsLP1Z6", "vv1K2gVV"]}, "regionURLMapping": ["xyYomkZC", "XapKiUGH", "CVD9CBPz"], "testGameMode": "0B7B1yqv", "testRegionURLMapping": ["E2aBrKQK", "bcip1qQS", "L2pI7ReZ"], "testTargetUserIDs": ["4cInjI5e", "RKZrdOZE", "CXPMt3xm"]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateGlobalConfiguration' test.out

#- 21 AdminDeleteGlobalConfiguration
samples/cli/sample-apps Session adminDeleteGlobalConfiguration \
    > test.out 2>&1
eval_tap $? 21 'AdminDeleteGlobalConfiguration' test.out

#- 22 AdminGetConfigurationAlertV1
samples/cli/sample-apps Session adminGetConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'AdminGetConfigurationAlertV1' test.out

#- 23 AdminUpdateConfigurationAlertV1
samples/cli/sample-apps Session adminUpdateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 15}' \
    > test.out 2>&1
eval_tap $? 23 'AdminUpdateConfigurationAlertV1' test.out

#- 24 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 23}' \
    > test.out 2>&1
eval_tap $? 24 'AdminCreateConfigurationAlertV1' test.out

#- 25 AdminDeleteConfigurationAlertV1
samples/cli/sample-apps Session adminDeleteConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteConfigurationAlertV1' test.out

#- 26 HandleUploadXboxPFXCertificate
samples/cli/sample-apps Session handleUploadXboxPFXCertificate \
    --namespace $AB_NAMESPACE \
    --description 'qaEA57CX' \
    --certname 'KXJnDhqO' \
    --file 'tmp.dat' \
    --password '29aZOhhs' \
    > test.out 2>&1
eval_tap $? 26 'HandleUploadXboxPFXCertificate' test.out

#- 27 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 6, "PSNSupportedPlatforms": ["Iv631U4C", "a4VDePgP", "QCgHYQT9"], "SessionTitle": "lNUhU52f", "ShouldSync": false, "XboxAllowCrossPlatform": true, "XboxSandboxID": "ChePSk3K", "XboxServiceConfigID": "4EVpJXUe", "XboxSessionTemplateName": "qAxnluZl", "XboxTitleID": "DKrgZDj2", "localizedSessionName": {"rjdDbIg2": {}, "Q6gfoP36": {}, "Hx4om12i": {}}}, "PSNBaseUrl": "5XdTFAv2", "appName": "wtHI02a2", "attributes": {"hHggODPa": {}, "Fm7VigEb": {}, "vxmzWbbA": {}}, "autoJoin": true, "autoLeaveSession": false, "clientVersion": "Qf0YrDTh", "customURLGRPC": "qaL0CnVi", "deployment": "HBZMrzat", "disableCodeGeneration": true, "disableResendInvite": false, "dsManualSetReady": true, "dsSource": "VmIpre9x", "enableSecret": true, "fallbackClaimKeys": ["NL8AJwB3", "wte9JeLS", "0lsRECW4"], "immutableStorage": true, "inactiveTimeout": 48, "inviteTimeout": 91, "joinability": "9lVxCH7v", "leaderElectionGracePeriod": 11, "manualRejoin": false, "maxActiveSessions": 87, "maxPlayers": 29, "minPlayers": 17, "name": "QLN43Etq", "persistent": false, "preferredClaimKeys": ["eIYjBWTa", "unetm4xV", "ousmagWj"], "requestedRegions": ["UkbbT2Du", "evCHKkgI", "O6MpFgJT"], "textChat": true, "tieTeamsSessionLifetime": false, "type": "fKmCBdtb"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminCreateConfigurationTemplateV1' test.out

#- 28 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --name 'eQzrF3Jk' \
    --offset '49' \
    --order 'D18btZux' \
    --orderBy '58sPciqb' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetAllConfigurationTemplatesV1' test.out

#- 29 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'Hf9RXA4s' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'AdminGetConfigurationTemplateV1' test.out

#- 30 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name '9pMH6Jo0' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 64, "PSNSupportedPlatforms": ["jsjWGQZD", "AuVzIjNJ", "a5EphgSW"], "SessionTitle": "OwhljrMV", "ShouldSync": false, "XboxAllowCrossPlatform": true, "XboxSandboxID": "L0dXMKbK", "XboxServiceConfigID": "QoulRLMF", "XboxSessionTemplateName": "sO2t0F7t", "XboxTitleID": "fjWNoF9X", "localizedSessionName": {"t0eLzmAZ": {}, "tRQNyfT0": {}, "NVMernBj": {}}}, "PSNBaseUrl": "3k050XSU", "appName": "2D7FQrMl", "attributes": {"QeKUM8ZW": {}, "ozPsNO7g": {}, "VQDMJssJ": {}}, "autoJoin": false, "autoLeaveSession": false, "clientVersion": "J5kORiDx", "customURLGRPC": "GYMhUNYA", "deployment": "RBJhqsl4", "disableCodeGeneration": true, "disableResendInvite": true, "dsManualSetReady": true, "dsSource": "GvgyIHTx", "enableSecret": false, "fallbackClaimKeys": ["j36w2kfz", "TPCeTP2x", "aXRQ001A"], "immutableStorage": false, "inactiveTimeout": 23, "inviteTimeout": 26, "joinability": "DDFJy9ka", "leaderElectionGracePeriod": 90, "manualRejoin": false, "maxActiveSessions": 23, "maxPlayers": 57, "minPlayers": 81, "name": "jdzIUApt", "persistent": false, "preferredClaimKeys": ["WAiIQaD1", "wcW2J1QY", "iRMRoxex"], "requestedRegions": ["nWhuaVjo", "SFrq6c2G", "LgqxlXcq"], "textChat": true, "tieTeamsSessionLifetime": false, "type": "beJRIssj"}' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateConfigurationTemplateV1' test.out

#- 31 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name '5X5YxwBB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'AdminDeleteConfigurationTemplateV1' test.out

#- 32 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 'yNZrMhJZ' \
    --namespace $AB_NAMESPACE \
    --userId 'TNL3FeIc' \
    > test.out 2>&1
eval_tap $? 32 'AdminGetMemberActiveSession' test.out

#- 33 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'kYPdRmGT' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "Hu7aKiqz"}' \
    > test.out 2>&1
eval_tap $? 33 'AdminReconcileMaxActiveSession' test.out

#- 34 AdminGetDSMCConfiguration
samples/cli/sample-apps Session adminGetDSMCConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'AdminGetDSMCConfiguration' test.out

#- 35 AdminSyncDSMCConfiguration
samples/cli/sample-apps Session adminSyncDSMCConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'AdminSyncDSMCConfiguration' test.out

#- 36 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName 'O0Ve7Fm3' \
    --dsPodName 'KG3isefq' \
    --fromTime 'p7G0DBrD' \
    --gameMode '8cLKGVTq' \
    --isPersistent 'JCK6wEM9' \
    --isSoftDeleted 'JWsgCZX6' \
    --joinability 'ROduhTUk' \
    --limit '17' \
    --matchPool 'Gs4Op4uG' \
    --memberID '5Ou9TA50' \
    --offset '17' \
    --order 'fPpB24iK' \
    --orderBy '2NvPyZQx' \
    --sessionID '8eKW76CD' \
    --status 'SkDrbKxz' \
    --statusV2 'rcBJwfll' \
    --toTime 'r3mi3I6V' \
    > test.out 2>&1
eval_tap $? 36 'AdminQueryGameSessions' test.out

#- 37 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"DjfqHfXS": {}, "3PICVnbM": {}, "3ClLeMST": {}}' \
    > test.out 2>&1
eval_tap $? 37 'AdminQueryGameSessionsByAttributes' test.out

#- 38 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["PFbj6b00", "cwXbHK9H", "GtB2x1WX"]}' \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteBulkGameSessions' test.out

#- 39 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'uzF6EMjl' \
    --body '{"ready": false}' \
    > test.out 2>&1
eval_tap $? 39 'AdminSetDSReady' test.out

#- 40 AdminKickGameSessionMember
samples/cli/sample-apps Session adminKickGameSessionMember \
    --memberId 'HD0CEE6I' \
    --namespace $AB_NAMESPACE \
    --sessionId 'h0dygdbC' \
    > test.out 2>&1
eval_tap $? 40 'AdminKickGameSessionMember' test.out

#- 41 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'CNRts2Qv' \
    --namespace $AB_NAMESPACE \
    --sessionId 'Z1wjKCt9' \
    --statusType 'RNstuNm2' \
    > test.out 2>&1
eval_tap $? 41 'AdminUpdateGameSessionMember' test.out

#- 42 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '5' \
    --order 'bkj2NC0X' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetListNativeSession' test.out

#- 43 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --isSoftDeleted 'wiybopGF' \
    --joinability '87XxZ7z8' \
    --key 'MhAzsz37' \
    --leaderID '7uWxh48Y' \
    --limit '46' \
    --memberID 'Klh8zGg2' \
    --memberStatus 'Dx5KyYCe' \
    --offset '10' \
    --order 'SeH4gSyk' \
    --orderBy 'dI7IkjMo' \
    --partyID 'WUoqzBxN' \
    --value 'mVP8MXrG' \
    > test.out 2>&1
eval_tap $? 43 'AdminQueryParties' test.out

#- 44 AdminGetPlatformCredentials
samples/cli/sample-apps Session adminGetPlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'AdminGetPlatformCredentials' test.out

#- 45 AdminUpdatePlatformCredentials
samples/cli/sample-apps Session adminUpdatePlatformCredentials \
    --namespace $AB_NAMESPACE \
    --body '{"psn": {"clientId": "P03Kluqp", "clientSecret": "b5ESgxLP", "scope": "obYMNNDI"}}' \
    > test.out 2>&1
eval_tap $? 45 'AdminUpdatePlatformCredentials' test.out

#- 46 AdminDeletePlatformCredentials
samples/cli/sample-apps Session adminDeletePlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'AdminDeletePlatformCredentials' test.out

#- 47 AdminGetRecentPlayer
samples/cli/sample-apps Session adminGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --userId 'TaTvNeKC' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetRecentPlayer' test.out

#- 48 AdminGetRecentTeamPlayer
samples/cli/sample-apps Session adminGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --userId 'sWOCSLXo' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetRecentTeamPlayer' test.out

#- 49 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'UEe2W3GT' \
    > test.out 2>&1
eval_tap $? 49 'AdminReadSessionStorage' test.out

#- 50 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'TIpv5dMH' \
    > test.out 2>&1
eval_tap $? 50 'AdminDeleteUserSessionStorage' test.out

#- 51 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'SGMQXGMI' \
    --userId 'HmSZ76Yi' \
    > test.out 2>&1
eval_tap $? 51 'AdminReadUserSessionStorage' test.out

#- 52 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'nQzjE1wY' \
    > test.out 2>&1
eval_tap $? 52 'AdminQueryPlayerAttributes' test.out

#- 53 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId '3efWXwia' \
    > test.out 2>&1
eval_tap $? 53 'AdminGetPlayerAttributes' test.out

#- 54 AdminSyncNativeSession
samples/cli/sample-apps Session adminSyncNativeSession \
    --namespace $AB_NAMESPACE \
    --userId 'ynmetHP0' \
    > test.out 2>&1
eval_tap $? 54 'AdminSyncNativeSession' test.out

#- 55 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "C9Q08WL3", "attributes": {"2TJlsQMZ": {}, "tAEbv7PW": {}, "Q9EzpzTn": {}}, "autoJoin": false, "backfillTicketID": "IqZ8OO9D", "clientVersion": "yVRbJpIf", "configurationName": "fLwQfIxm", "customURLGRPC": "VQ5pbScb", "deployment": "W29XKQkJ", "dsSource": "Rpo9BsY0", "fallbackClaimKeys": ["TPy2CDT2", "rCwAPTGF", "BPPymiqk"], "inactiveTimeout": 76, "inviteTimeout": 43, "joinability": "AHExLoEi", "matchPool": "pT0Q16XR", "maxPlayers": 50, "minPlayers": 34, "preferredClaimKeys": ["7YNZE29D", "1GLiQ1b2", "gCAnQRVc"], "requestedRegions": ["9tNcj3pN", "VuLX8DO9", "e7ngxJrZ"], "serverName": "lUslHjlm", "storage": {"leader": {"F7WCMIbw": {}, "y4D0c4S5": {}, "kijDp67A": {}}}, "teams": [{"parties": [{"partyID": "YghmGJ0k", "userIDs": ["jWo20TI1", "GzIATyde", "5yG0h9H8"]}, {"partyID": "7GVL92MI", "userIDs": ["dCKdTfeV", "9z4NQIk3", "t04DU6Xy"]}, {"partyID": "LYQvML6a", "userIDs": ["cHLy6HnB", "fKyDtVVR", "BmPnRJ3o"]}], "userIDs": ["U1SC16fV", "gbYBBcLc", "ykGzihFg"]}, {"parties": [{"partyID": "CMwQVdDX", "userIDs": ["vLFWn8uN", "W3023rhS", "2dkKG4gp"]}, {"partyID": "PQRPpqJf", "userIDs": ["3msoVmpc", "kNclntaW", "rAaUmVih"]}, {"partyID": "S8ozgP3S", "userIDs": ["aAi186wN", "oTIQbTXE", "TZyrjrsu"]}], "userIDs": ["9z4VidJo", "llXl7HZN", "wjyCjsHk"]}, {"parties": [{"partyID": "Pxp7ru9W", "userIDs": ["nzXPiZrA", "5EYZZgsf", "ybmMoJnC"]}, {"partyID": "jDZRANod", "userIDs": ["DI5a5qGi", "teTg8vA8", "ZNeTZ3FT"]}, {"partyID": "3O7IZwPZ", "userIDs": ["A535yKIT", "Xhv6Q8JY", "xoDGGJok"]}], "userIDs": ["66KNWrkB", "nZiraDiH", "by4NSeHM"]}], "textChat": false, "ticketIDs": ["3OEhpNf5", "ZTyiiBjk", "cHXsuXot"], "tieTeamsSessionLifetime": false, "type": "HGduZdSv"}' \
    > test.out 2>&1
eval_tap $? 55 'CreateGameSession' test.out

#- 56 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"EvDR5UtC": {}, "B9QH8pIe": {}, "yZlvxnhI": {}}' \
    > test.out 2>&1
eval_tap $? 56 'PublicQueryGameSessionsByAttributes' test.out

#- 57 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "K5rXjtWH"}' \
    > test.out 2>&1
eval_tap $? 57 'PublicSessionJoinCode' test.out

#- 58 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'h1ORl5Vv' \
    > test.out 2>&1
eval_tap $? 58 'GetGameSessionByPodName' test.out

#- 59 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'rIa9jmdi' \
    > test.out 2>&1
eval_tap $? 59 'GetGameSession' test.out

#- 60 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'try2b95e' \
    --body '{"attributes": {"YDMMLN7O": {}, "g7ni4Uzp": {}, "JuhdrKAC": {}}, "backfillTicketID": "lgQMOWDJ", "clientVersion": "yLyUsSEJ", "deployment": "oC4jhHgt", "fallbackClaimKeys": ["pmBwzHjA", "WHBvhYh3", "ckqMyOH4"], "inactiveTimeout": 41, "inviteTimeout": 20, "joinability": "iLfJL3af", "matchPool": "iDXCdZDv", "maxPlayers": 89, "minPlayers": 81, "preferredClaimKeys": ["KoyYK9ME", "cDlXrxlT", "s9VcYaTP"], "requestedRegions": ["qlkkDOB1", "9YGTeetR", "DbVpTAo8"], "teams": [{"parties": [{"partyID": "znt6pVBq", "userIDs": ["0UE4WDJp", "nuLsURhI", "rgNdL5jG"]}, {"partyID": "HrmNSRLm", "userIDs": ["VaVRD9Cs", "EhLvhb28", "rc8eQ7HM"]}, {"partyID": "YN0reiis", "userIDs": ["nPEdw6Ij", "rKa9L5BW", "18FAPtfv"]}], "userIDs": ["QYNo6lCb", "EnOhXVNp", "2cNyr6P0"]}, {"parties": [{"partyID": "Xyr8AmrQ", "userIDs": ["KuAugNYD", "jDPOLHv7", "lXhwCqK9"]}, {"partyID": "uPYlGSSX", "userIDs": ["Y1fD8x4B", "nC4H7D4L", "LneVolf7"]}, {"partyID": "Whu3a7VS", "userIDs": ["sl0SC6kc", "K5l9I2Bc", "Kvo6pDkL"]}], "userIDs": ["jOvqbcrg", "Esr38tV9", "GZRUI4iu"]}, {"parties": [{"partyID": "gI3SHCwu", "userIDs": ["oKnu109Y", "0bmixFNy", "HpR8VphT"]}, {"partyID": "a9FjK9bf", "userIDs": ["EewzkS5p", "dm7oDdV2", "KML54p4I"]}, {"partyID": "lhp1kNvv", "userIDs": ["Gxo26UaP", "cENqjwm9", "WbcEjaYs"]}], "userIDs": ["NXRN4CvQ", "i0Su6NgR", "8TPkm2G9"]}], "ticketIDs": ["i67RtACU", "OlnO3wX4", "tKwiJw2f"], "tieTeamsSessionLifetime": false, "type": "TbtBKzrY", "version": 78}' \
    > test.out 2>&1
eval_tap $? 60 'UpdateGameSession' test.out

#- 61 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'ecZ4L8rW' \
    > test.out 2>&1
eval_tap $? 61 'DeleteGameSession' test.out

#- 62 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '5aaLOGs7' \
    --body '{"attributes": {"FWbwUtg4": {}, "beKI4RVm": {}, "ZFh3H2KL": {}}, "backfillTicketID": "EIZwK1aQ", "clientVersion": "AqBkQp4y", "deployment": "OXHujdgi", "fallbackClaimKeys": ["kK7yUouo", "m3PLLiA7", "aZNTfOF9"], "inactiveTimeout": 28, "inviteTimeout": 9, "joinability": "0ZcZKUXL", "matchPool": "nlu4iKbE", "maxPlayers": 85, "minPlayers": 87, "preferredClaimKeys": ["3f81blnm", "KMDD4u1d", "t8aLPjmd"], "requestedRegions": ["QInOJiGX", "pYGJ7RFI", "bsECDKP9"], "teams": [{"parties": [{"partyID": "yvGgCl4F", "userIDs": ["UbVjAyyN", "eCM0s4UO", "9tCBAMWK"]}, {"partyID": "uKIsyjet", "userIDs": ["nBpaOilP", "6PNnopZi", "IV0014uF"]}, {"partyID": "iXyBRebC", "userIDs": ["DVp0wqYg", "PZBNAe1w", "RvP5ZSvL"]}], "userIDs": ["kzzEXoXx", "sdUQgISM", "7pnGHnkL"]}, {"parties": [{"partyID": "k1SCDfyb", "userIDs": ["z2tb87eI", "i46w7ev5", "rdYo71kd"]}, {"partyID": "g150hF0k", "userIDs": ["WKAwcBZ0", "xdtu80Mi", "CtaEEifz"]}, {"partyID": "3GraY2QG", "userIDs": ["GiH0ODTn", "6xVsCrjZ", "WIx4WODe"]}], "userIDs": ["bA5so8Fd", "v0SCt9ln", "Ugpykjxr"]}, {"parties": [{"partyID": "qMPO3D0w", "userIDs": ["cNBW9gkR", "vTlw45vq", "cPMbs5v9"]}, {"partyID": "dbxhklL9", "userIDs": ["jHj3sxqz", "xtCgKXyT", "zKVeFtgT"]}, {"partyID": "pBbXKWDK", "userIDs": ["Jsw9Envi", "h0PNgfbH", "B4TikjL4"]}], "userIDs": ["IRJQSCPE", "lnuqW8By", "dNPl8b2k"]}], "ticketIDs": ["ji6bJQWw", "0Hf4N9J1", "ZxBFJgwb"], "tieTeamsSessionLifetime": true, "type": "zgcclUko", "version": 95}' \
    > test.out 2>&1
eval_tap $? 62 'PatchUpdateGameSession' test.out

#- 63 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'uVYGp3Zx' \
    --body '{"backfillTicketID": "9fwM4OJi"}' \
    > test.out 2>&1
eval_tap $? 63 'UpdateGameSessionBackfillTicketID' test.out

#- 64 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'Q311IKdX' \
    > test.out 2>&1
eval_tap $? 64 'GameSessionGenerateCode' test.out

#- 65 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'v20a2rDo' \
    > test.out 2>&1
eval_tap $? 65 'PublicRevokeGameSessionCode' test.out

#- 66 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'wHgmJc56' \
    --body '{"platformID": "RXSTfn97", "userID": "uvbyAt4u"}' \
    > test.out 2>&1
eval_tap $? 66 'PublicGameSessionInvite' test.out

#- 67 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'q5hxUYFE' \
    > test.out 2>&1
eval_tap $? 67 'JoinGameSession' test.out

#- 68 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'DRcmbYGz' \
    --body '{"leaderID": "3F1Mdx4q"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicPromoteGameSessionLeader' test.out

#- 69 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'iFK3tKwU' \
    > test.out 2>&1
eval_tap $? 69 'LeaveGameSession' test.out

#- 70 PublicKickGameSessionMember
samples/cli/sample-apps Session publicKickGameSessionMember \
    --memberId 'e6yTQQ9s' \
    --namespace $AB_NAMESPACE \
    --sessionId 'iLrTNRVk' \
    > test.out 2>&1
eval_tap $? 70 'PublicKickGameSessionMember' test.out

#- 71 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'DCBq6Cwr' \
    > test.out 2>&1
eval_tap $? 71 'PublicGameSessionReject' test.out

#- 72 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId 'TD18cT1l' \
    > test.out 2>&1
eval_tap $? 72 'GetSessionServerSecret' test.out

#- 73 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '4uDTQVqT' \
    --body '{"additionalMembers": [{"partyID": "Kf1uqVun", "userIDs": ["e9srGvBH", "QhzzF7Sc", "hDtjhYWk"]}, {"partyID": "SoXP73Or", "userIDs": ["UsnfWh1f", "2jbyM9dJ", "MaInvntL"]}, {"partyID": "o2hKsSar", "userIDs": ["mrR0UJtp", "neZMwFIQ", "3wCbwgjP"]}], "proposedTeams": [{"parties": [{"partyID": "NYYcWQ4Z", "userIDs": ["DVArfhH0", "PkRpkA3R", "pT5CaC4j"]}, {"partyID": "BoRJi4AF", "userIDs": ["uF161I6A", "9wArlpz9", "rO5MurgQ"]}, {"partyID": "nMWG6Ik4", "userIDs": ["pp1F2rnO", "ObNewaZF", "96sKjvCC"]}], "userIDs": ["0osegIoh", "07qZOa61", "sP0vjvUC"]}, {"parties": [{"partyID": "BrVMiTxs", "userIDs": ["n3dY0nKR", "kE9rC6xY", "boWrMEa3"]}, {"partyID": "F8aKfa6H", "userIDs": ["ONjnqXdO", "y9c6qTjU", "UkAOItFe"]}, {"partyID": "HgFIAx05", "userIDs": ["ZvBOgBX1", "Twc0nDxi", "UaKcNYbR"]}], "userIDs": ["cu36En7j", "OBDg3Her", "H1CNaf2Q"]}, {"parties": [{"partyID": "E1AmatAd", "userIDs": ["zofWMrDf", "0fz5ErzA", "L3HlsvP1"]}, {"partyID": "Vre53Pb4", "userIDs": ["IX1y6sJX", "GFvInqKU", "8zfP7gWu"]}, {"partyID": "n6ZzdSf9", "userIDs": ["dXbBFKsm", "yQcD9Dmp", "zaav0Mdo"]}], "userIDs": ["f7nRAxvx", "TbmTFlmS", "a3iHF6Kv"]}], "version": 48}' \
    > test.out 2>&1
eval_tap $? 73 'AppendTeamGameSession' test.out

#- 74 PublicGameSessionCancel
samples/cli/sample-apps Session publicGameSessionCancel \
    --namespace $AB_NAMESPACE \
    --sessionId 'OpqgPB2r' \
    --userId 'd8f2drAk' \
    > test.out 2>&1
eval_tap $? 74 'PublicGameSessionCancel' test.out

#- 75 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "IF945eA5"}' \
    > test.out 2>&1
eval_tap $? 75 'PublicPartyJoinCode' test.out

#- 76 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId '1tJNiEj6' \
    > test.out 2>&1
eval_tap $? 76 'PublicGetParty' test.out

#- 77 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId '5MIU5Ddn' \
    --body '{"attributes": {"lKnLqWrx": {}, "ndZ05baL": {}, "6lfbyExx": {}}, "inactiveTimeout": 53, "inviteTimeout": 10, "joinability": "cERZYmB2", "maxPlayers": 9, "minPlayers": 59, "type": "uQ5wVAx6", "version": 95}' \
    > test.out 2>&1
eval_tap $? 77 'PublicUpdateParty' test.out

#- 78 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'FCdQXH9a' \
    --body '{"attributes": {"8pyxdnUZ": {}, "io6qFn0s": {}, "lJEvRS17": {}}, "inactiveTimeout": 43, "inviteTimeout": 78, "joinability": "HV0cBWfZ", "maxPlayers": 60, "minPlayers": 32, "type": "g1uHCntJ", "version": 12}' \
    > test.out 2>&1
eval_tap $? 78 'PublicPatchUpdateParty' test.out

#- 79 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'QV6Njigg' \
    > test.out 2>&1
eval_tap $? 79 'PublicGeneratePartyCode' test.out

#- 80 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'ob0ayH9R' \
    > test.out 2>&1
eval_tap $? 80 'PublicRevokePartyCode' test.out

#- 81 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'KHZQwk6k' \
    --body '{"platformID": "rgQl16E6", "userID": "Kf56N5cp"}' \
    > test.out 2>&1
eval_tap $? 81 'PublicPartyInvite' test.out

#- 82 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'SrkX4ybY' \
    --body '{"leaderID": "seFuB2aA"}' \
    > test.out 2>&1
eval_tap $? 82 'PublicPromotePartyLeader' test.out

#- 83 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'CrrRI5Zg' \
    > test.out 2>&1
eval_tap $? 83 'PublicPartyJoin' test.out

#- 84 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId '7Uwc2ggp' \
    > test.out 2>&1
eval_tap $? 84 'PublicPartyLeave' test.out

#- 85 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'ypZ9qJQZ' \
    > test.out 2>&1
eval_tap $? 85 'PublicPartyReject' test.out

#- 86 PublicPartyCancel
samples/cli/sample-apps Session publicPartyCancel \
    --namespace $AB_NAMESPACE \
    --partyId '5jB0E0o7' \
    --userId 'Y3WsJaYf' \
    > test.out 2>&1
eval_tap $? 86 'PublicPartyCancel' test.out

#- 87 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId '8HAGFtD9' \
    --userId 'xFbLgCoE' \
    > test.out 2>&1
eval_tap $? 87 'PublicPartyKick' test.out

#- 88 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"K9owBXBO": {}, "bbUlBE6J": {}, "elO95piN": {}}, "configurationName": "D41qNtT6", "inactiveTimeout": 32, "inviteTimeout": 94, "joinability": "UvJFwuG0", "maxPlayers": 48, "members": [{"ID": "v9qT2Bkm", "PlatformID": "rM32GC8H", "PlatformUserID": "njGIYbvI"}, {"ID": "xL3mdRcd", "PlatformID": "7ZJTYiWO", "PlatformUserID": "jKYeMssF"}, {"ID": "dgu4jtvJ", "PlatformID": "nvaB41UW", "PlatformUserID": "XLAPVePP"}], "minPlayers": 79, "textChat": true, "type": "Olxo90fD"}' \
    > test.out 2>&1
eval_tap $? 88 'PublicCreateParty' test.out

#- 89 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    > test.out 2>&1
eval_tap $? 89 'PublicGetRecentPlayer' test.out

#- 90 PublicGetRecentTeamPlayer
samples/cli/sample-apps Session publicGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    > test.out 2>&1
eval_tap $? 90 'PublicGetRecentTeamPlayer' test.out

#- 91 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId '80UnCfhG' \
    --body '{"Zgy6lGJf": {}, "AbJRW2tt": {}, "ZvdCNwsy": {}}' \
    > test.out 2>&1
eval_tap $? 91 'PublicUpdateInsertSessionStorageLeader' test.out

#- 92 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'YNSlIYDK' \
    --userId '4qyqGn9R' \
    --body '{"UIYOcUZB": {}, "y2hEGYYy": {}, "eqpORn93": {}}' \
    > test.out 2>&1
eval_tap $? 92 'PublicUpdateInsertSessionStorage' test.out

#- 93 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["U11bAN5t", "CDSrbwaE", "zaEEjYsT"]}' \
    > test.out 2>&1
eval_tap $? 93 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 94 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 94 'PublicGetPlayerAttributes' test.out

#- 95 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": true, "currentPlatform": "tySRnoaN", "data": {"kpfjaOq3": {}, "v0ZamZyb": {}, "LoE5ObxM": {}}, "platforms": [{"name": "WpAFDNtt", "userID": "gnjIDeKR"}, {"name": "Av3cokAL", "userID": "57qWvn7T"}, {"name": "buX7bAPL", "userID": "CdHYBCm3"}], "roles": ["A6HFf33r", "LM6KjTU4", "ZrxoT1km"], "simultaneousPlatform": "fPgviMO9"}' \
    > test.out 2>&1
eval_tap $? 95 'PublicStorePlayerAttributes' test.out

#- 96 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 96 'PublicDeletePlayerAttributes' test.out

#- 97 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'aU1GGRxB' \
    --orderBy 'KSDUrTiY' \
    --status 'rnvyaUGu' \
    > test.out 2>&1
eval_tap $? 97 'PublicQueryMyGameSessions' test.out

#- 98 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'SaHjtev1' \
    --orderBy 'NxVrG3Uo' \
    --status 'MqIF8KXV' \
    > test.out 2>&1
eval_tap $? 98 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE