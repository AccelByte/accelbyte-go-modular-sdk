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
    --body '{"metricExcludedNamespaces": ["iJxH6qFl", "DtI1ixOU", "R4VByahr"], "regionRetryMapping": {"sL5Q1YUM": ["K5BduPpr", "6TmpucV5", "bqhFHAhg"], "w6p8uGAC": ["mfHQXpzQ", "Z6YTyX2v", "tDOYHDvq"], "ZxgD9qdN": ["Pwm807h6", "ywYE4Ylf", "VUSmBtMI"]}, "regionURLMapping": ["FEJ9lEpd", "fQuZUlBK", "4YdAdh69"], "testGameMode": "Jcb1G5oD", "testRegionURLMapping": ["N9DBcYel", "33jhLGIL", "vKZh5l4M"], "testTargetUserIDs": ["wIRlTXLg", "ENEjMIVW", "5ZGA42pY"]}' \
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
    --body '{"durationDays": 23}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationAlertV1' test.out

#- 13 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 44}' \
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
    --body '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["KICK", "UPDATE_INVITABLE_USER_TYPE", "UPDATE_JOINABLE_USER_TYPE"], "PSNServiceLabel": 87, "PSNSupportedPlatforms": ["nmJZ0UVq", "IvGkOQyi", "pBeAF58q"], "SessionTitle": "oUd5P4Cg", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "HS0TNeQ5", "XboxServiceConfigID": "5n4TL50o", "XboxSessionTemplateName": "XDkXKFKf", "XboxTitleID": "wxSpvAf9", "localizedSessionName": {"geDhRaVu": {}, "T1XMLI6J": {}, "6x1rBB5a": {}}}, "PSNBaseUrl": "TpZVvESb", "amsClaimTimeoutMinutes": 15, "appName": "IXLATwY9", "asyncProcessDSRequest": {"async": false, "timeout": 89}, "attributes": {"YbbqUxLe": {}, "lpzuTbVX": {}, "U25j2KYY": {}}, "autoJoin": true, "autoLeaveSession": true, "clientVersion": "kpyCdDJB", "customURLGRPC": "2yxz1NNF", "deployment": "yQoEWZ5f", "disableCodeGeneration": true, "disableResendInvite": false, "dsManualSetReady": true, "dsSource": "JiBKPJ3s", "enableSecret": false, "fallbackClaimKeys": ["o0wwPVwI", "lFOl4qGP", "5OM9RD7r"], "grpcSessionConfig": {"appName": "CfAHG1tj", "customURL": "1FmVvSNt", "functionFlag": 23}, "immutableStorage": true, "inactiveTimeout": 54, "inviteTimeout": 28, "joinability": "FRIENDS_OF_FRIENDS", "leaderElectionGracePeriod": 80, "manualRejoin": true, "maxActiveSessions": 28, "maxPlayers": 27, "minPlayers": 58, "name": "OKKmElGP", "persistent": false, "preferredClaimKeys": ["ilfwbC2a", "yQfmXO8C", "0kcIRITI"], "requestedRegions": ["sL33UoCQ", "yNgwt4KD", "3PtBCG3H"], "textChat": false, "textChatMode": "GAME", "tieTeamsSessionLifetime": true, "ttlHours": 33, "type": "P2P"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateConfigurationTemplateV1' test.out

#- 17 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --name 'zGvRNk7j' \
    --offset '27' \
    --order 'hctbgEoH' \
    --orderBy 'iWk5cJRD' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetAllConfigurationTemplatesV1' test.out

#- 18 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'IdFNVFOL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigurationTemplateV1' test.out

#- 19 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'JO9zUJQP' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["UPDATE_INVITABLE_USER_TYPE", "UPDATE_INVITABLE_USER_TYPE", "PROMOTE_TO_LEADER"], "PSNServiceLabel": 96, "PSNSupportedPlatforms": ["nZWHLsWE", "mzv1015N", "r21bSSbe"], "SessionTitle": "MmxZCRV7", "ShouldSync": false, "XboxAllowCrossPlatform": true, "XboxSandboxID": "OAXbjWE6", "XboxServiceConfigID": "tB9ZMqwP", "XboxSessionTemplateName": "HGITLYJ7", "XboxTitleID": "A3dsZlbL", "localizedSessionName": {"9UmVfxgA": {}, "9zuVT8ul": {}, "PuUKdZIA": {}}}, "PSNBaseUrl": "orumwoOz", "amsClaimTimeoutMinutes": 65, "appName": "fHYwELJ4", "asyncProcessDSRequest": {"async": true, "timeout": 37}, "attributes": {"1bpGfG0s": {}, "lyj7RVQa": {}, "rsnWv5b7": {}}, "autoJoin": false, "autoLeaveSession": false, "clientVersion": "ql0qX1I3", "customURLGRPC": "9VgKFqMW", "deployment": "7cazf9mA", "disableCodeGeneration": false, "disableResendInvite": true, "dsManualSetReady": false, "dsSource": "XeooLNSI", "enableSecret": true, "fallbackClaimKeys": ["JaPk0bA0", "TmGcO3oT", "q4c27Irg"], "grpcSessionConfig": {"appName": "G0Heh3Xy", "customURL": "DSDnGhml", "functionFlag": 41}, "immutableStorage": false, "inactiveTimeout": 40, "inviteTimeout": 42, "joinability": "OPEN", "leaderElectionGracePeriod": 36, "manualRejoin": false, "maxActiveSessions": 34, "maxPlayers": 20, "minPlayers": 95, "name": "LJ6jFWoo", "persistent": true, "preferredClaimKeys": ["uyOap2oq", "1IPqo30V", "gqXaIZwi"], "requestedRegions": ["mHUJSxC0", "0XGzDf9g", "gqWbhawN"], "textChat": false, "textChatMode": "GAME", "tieTeamsSessionLifetime": true, "ttlHours": 29, "type": "P2P"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'bWqjJrEw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name '97LlW18i' \
    --namespace $AB_NAMESPACE \
    --userId 'Z8TvBXIA' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'nF4v73v1' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "MDxIWA2K"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminReconcileMaxActiveSession' test.out

#- 23 AdminGetDSMCConfiguration
eval_tap 0 23 'AdminGetDSMCConfiguration # SKIP deprecated' test.out

#- 24 AdminSyncDSMCConfiguration
eval_tap 0 24 'AdminSyncDSMCConfiguration # SKIP deprecated' test.out

#- 25 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName 'wmltZBZR' \
    --dsPodName '14oeZJvq' \
    --fromTime '29oPaata' \
    --gameMode 'WPrINz5S' \
    --isPersistent 'zyDNAZ0o' \
    --isSoftDeleted 'HEAHElRa' \
    --joinability 'INVITE_ONLY' \
    --limit '51' \
    --matchPool 'Ol8zUKgR' \
    --memberID 'bijlejfa' \
    --offset '85' \
    --order 'wdpDlvOj' \
    --orderBy 'U0y4bFHe' \
    --sessionID 'abVVP3Fx' \
    --status 'FAILED_TO_REQUEST' \
    --statusV2 'FAILED_TO_REQUEST' \
    --toTime 'ZPjuPUCC' \
    > test.out 2>&1
eval_tap $? 25 'AdminQueryGameSessions' test.out

#- 26 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"YRzpZkUc": {}, "2QpW7zls": {}, "IcL3pHp7": {}}' \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["jbBmgrus", "njqtSggM", "Gnky6gMB"]}' \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId '7XKFZcEY' \
    --body '{"ready": true}' \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminUpdateDSInformation
samples/cli/sample-apps Session adminUpdateDSInformation \
    --namespace $AB_NAMESPACE \
    --sessionId 'VwcG8RlK' \
    --body '{"createdRegion": "kCmKadAa", "deployment": "qOfEf2yP", "description": "2SeM5CY3", "ip": "gSmoigch", "port": 29, "region": "Rf5P8Nm3", "serverId": "2PzmqmIG", "source": "kffFEYEo", "status": "a1WWn9uO"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateDSInformation' test.out

#- 30 AdminKickGameSessionMember
samples/cli/sample-apps Session adminKickGameSessionMember \
    --memberId '2fyoMEgD' \
    --namespace $AB_NAMESPACE \
    --sessionId '9mCiTRZP' \
    > test.out 2>&1
eval_tap $? 30 'AdminKickGameSessionMember' test.out

#- 31 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'zF0muZKY' \
    --namespace $AB_NAMESPACE \
    --sessionId 'qTZqU3f9' \
    --statusType 'whqlRti5' \
    > test.out 2>&1
eval_tap $? 31 'AdminUpdateGameSessionMember' test.out

#- 32 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '76' \
    --order 'XgcdHsOD' \
    > test.out 2>&1
eval_tap $? 32 'AdminGetListNativeSession' test.out

#- 33 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --configurationName 'XDHFhGal' \
    --fromTime '6AD0OVo1' \
    --isSoftDeleted '8IIjS0TA' \
    --joinability 'FRIENDS_OF_MEMBERS' \
    --key 'W33Zf3gZ' \
    --leaderID 'P76C57TY' \
    --limit '60' \
    --memberID 'CmZt8hgz' \
    --memberStatus 'JOINED' \
    --offset '29' \
    --order 'XG3PiJsv' \
    --orderBy '03wmOFes' \
    --partyID 'mvO9oYKl' \
    --toTime 'DbR8ejrn' \
    --value '37aM5zd8' \
    > test.out 2>&1
eval_tap $? 33 'AdminQueryParties' test.out

#- 34 AdminDeleteBulkParties
samples/cli/sample-apps Session adminDeleteBulkParties \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["qpTJcNr8", "zRxLJghQ", "kHjjskz2"]}' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteBulkParties' test.out

#- 35 AdminReadPartySessionStorage
samples/cli/sample-apps Session adminReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId '4r9BNyzt' \
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
    --body '{"psn": {"clientId": "cOKnq1F6", "clientSecret": "WF8s5zXf", "scope": "b2Wet992"}}' \
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
    --limit '52' \
    --userId 'FH4c2dW4' \
    > test.out 2>&1
eval_tap $? 41 'AdminGetRecentPlayer' test.out

#- 42 AdminGetRecentTeamPlayer
samples/cli/sample-apps Session adminGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --userId 'H9xkTGAL' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetRecentTeamPlayer' test.out

#- 43 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'Ieq89m8O' \
    > test.out 2>&1
eval_tap $? 43 'AdminReadSessionStorage' test.out

#- 44 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'C5eDN7RI' \
    > test.out 2>&1
eval_tap $? 44 'AdminDeleteUserSessionStorage' test.out

#- 45 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'f39QIwdT' \
    --userId '9pNOyIQZ' \
    > test.out 2>&1
eval_tap $? 45 'AdminReadUserSessionStorage' test.out

#- 46 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'illmO2Ad' \
    > test.out 2>&1
eval_tap $? 46 'AdminQueryPlayerAttributes' test.out

#- 47 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'SSLeGmY2' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetPlayerAttributes' test.out

#- 48 AdminSyncNativeSession
samples/cli/sample-apps Session adminSyncNativeSession \
    --namespace $AB_NAMESPACE \
    --userId '28yUfzpA' \
    > test.out 2>&1
eval_tap $? 48 'AdminSyncNativeSession' test.out

#- 49 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --resolveMaxActiveSession 'false' \
    --body '{"appName": "ZkTor3iI", "attributes": {"oRBouH7N": {}, "iWDIcUVo": {}, "PIwgJNOW": {}}, "autoJoin": false, "backfillTicketID": "RdNqlFtZ", "clientVersion": "MFQuKQBG", "configurationName": "ynE6Y4oe", "customURLGRPC": "OqsBKUMr", "deployment": "d1fmmD87", "dsSource": "ezMPn3yJ", "fallbackClaimKeys": ["9lxJYnRz", "UhhUSTfW", "SyaAfw6l"], "inactiveTimeout": 59, "inviteTimeout": 73, "joinability": "INVITE_ONLY", "matchPool": "3PtH0gau", "maxPlayers": 82, "minPlayers": 30, "preferredClaimKeys": ["Qg50DATC", "HmCYyxol", "3a5xFSCj"], "requestedRegions": ["PUTyYGaq", "eXN66HPg", "m3a83fmv"], "serverName": "wMKP0uNO", "storage": {"leader": {"hU3HGu84": {}, "YZcDobvR": {}, "CKMsy8bq": {}}}, "teams": [{"parties": [{"partyID": "2Yttv2m0", "userIDs": ["lkbRlaTv", "7jmWdcmu", "LLSkXsqG"]}, {"partyID": "GzDww0wO", "userIDs": ["9Ixha4Iq", "q8FLFvZN", "98Ce5uaO"]}, {"partyID": "P8LXAC8H", "userIDs": ["JtaJ7Le7", "DFBT8q45", "DJ14ZDlP"]}], "teamID": "ml4vqrpJ", "userIDs": ["WCXrCZb8", "xCMdkalv", "x9Cvqg86"]}, {"parties": [{"partyID": "CDGifzwB", "userIDs": ["eqG80ny0", "y65Hzuo5", "CDV64Ccc"]}, {"partyID": "mCV2QTRy", "userIDs": ["BQ4rKyJ8", "SGSbbaWl", "pjymLMlu"]}, {"partyID": "bRbpgQaa", "userIDs": ["bpUTMvfQ", "dv6GYaWY", "mAYpsCUi"]}], "teamID": "gry1iCxN", "userIDs": ["tS3Khpw6", "zJrBoNyy", "K2e2P2vF"]}, {"parties": [{"partyID": "OXGF50cM", "userIDs": ["03xvZBgS", "3WQVJXqs", "rJgSyCoX"]}, {"partyID": "Vb3bsJ7i", "userIDs": ["8qkMJkXy", "qSTf91P7", "deDv1fmG"]}, {"partyID": "TsaZ7ijQ", "userIDs": ["pqb07ugB", "wv3rw31w", "cTWHS9RU"]}], "teamID": "jsCrS5YW", "userIDs": ["1epOo2Ph", "8bLX3DSp", "OYSqrgzs"]}], "textChat": false, "textChatMode": "GAME", "ticketIDs": ["GErotcez", "fCQN7U6d", "Rsn0QF2k"], "tieTeamsSessionLifetime": false, "type": "DS"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateGameSession' test.out

#- 50 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"gu0riTWg": {}, "qp3madok": {}, "ogXDHkGK": {}}' \
    > test.out 2>&1
eval_tap $? 50 'PublicQueryGameSessionsByAttributes' test.out

#- 51 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "4OoG2Lyd"}' \
    > test.out 2>&1
eval_tap $? 51 'PublicSessionJoinCode' test.out

#- 52 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'zRHU9b9j' \
    > test.out 2>&1
eval_tap $? 52 'GetGameSessionByPodName' test.out

#- 53 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'VgqjlnRQ' \
    > test.out 2>&1
eval_tap $? 53 'GetGameSession' test.out

#- 54 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'rwXiJnw9' \
    --body '{"attributes": {"1r13f19l": {}, "5zUza5tF": {}, "x94C9Qzg": {}}, "backfillTicketID": "dxJDLP6h", "clientVersion": "Afv2HuBX", "deployment": "jfaBWNh4", "fallbackClaimKeys": ["u41d1yFG", "etgDxThK", "VohYxaoH"], "inactiveTimeout": 25, "inviteTimeout": 9, "joinability": "OPEN", "matchPool": "D0Cwz8tM", "maxPlayers": 71, "minPlayers": 93, "preferredClaimKeys": ["IbbLc56Q", "D53626lU", "Z2GCo0Jq"], "requestedRegions": ["9wTCFe5T", "rLg6GP8O", "umNiFtdb"], "teams": [{"parties": [{"partyID": "IDXAsF3h", "userIDs": ["pDgIiNWS", "MHNeQLMX", "ZtL04mVn"]}, {"partyID": "mT2SrnB7", "userIDs": ["cMH04r96", "8bjpbfFM", "jWUsVezr"]}, {"partyID": "65FcA44p", "userIDs": ["BGK3mk6D", "9FZvvZer", "6er2xTnj"]}], "teamID": "SXzMIvWR", "userIDs": ["EB4FPPhe", "in6s4udr", "OlXeAFVS"]}, {"parties": [{"partyID": "te8KtOEQ", "userIDs": ["9UXbnvvl", "NfIhdpOa", "DRrQlqBC"]}, {"partyID": "zCrXhdVP", "userIDs": ["02aSADmo", "mzI1a7fc", "lCsYjq2O"]}, {"partyID": "Bm4odIpC", "userIDs": ["uAhHrWiF", "yi0UzDLQ", "FV8UubEl"]}], "teamID": "6HMhYr6i", "userIDs": ["a5cBCfQx", "Va472CMT", "Zmxr7mpn"]}, {"parties": [{"partyID": "Rr9Q3a9D", "userIDs": ["eVBQQI4l", "PBWTLHXf", "ElW3r9IK"]}, {"partyID": "mZuGoLMv", "userIDs": ["k7wdc8gS", "51gZLJE5", "uJ9HXcHc"]}, {"partyID": "dqiNYGJV", "userIDs": ["ChxKA2Yp", "FQs9UZeO", "RMFHkh7z"]}], "teamID": "h9TI0Nip", "userIDs": ["ZS9BSL5q", "atr0JfGg", "p8LJTF23"]}], "ticketIDs": ["GfBVpSxb", "sKvvT9F7", "lNeDhG51"], "tieTeamsSessionLifetime": false, "type": "P2P", "version": 94}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGameSession' test.out

#- 55 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'lmaNUlP5' \
    > test.out 2>&1
eval_tap $? 55 'DeleteGameSession' test.out

#- 56 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'k02sTsrh' \
    --body '{"attributes": {"6E12h8pE": {}, "0mtjVEj0": {}, "1ZVlWFaI": {}}, "backfillTicketID": "bXsHbGds", "clientVersion": "1vf0Jl0y", "deployment": "lzNO1tim", "fallbackClaimKeys": ["JltnCA77", "3ABshoa9", "f6ecw02B"], "inactiveTimeout": 82, "inviteTimeout": 91, "joinability": "FRIENDS_OF_LEADER", "matchPool": "OvBjQ0R3", "maxPlayers": 16, "minPlayers": 45, "preferredClaimKeys": ["ogs8kOUv", "dCQaVKOP", "9Za3uKoS"], "requestedRegions": ["HvxqesKJ", "iQC7K80i", "zjw3NrPj"], "teams": [{"parties": [{"partyID": "cjb2OYzQ", "userIDs": ["yrlJwFbl", "yxX9yzZz", "lp5QhcI6"]}, {"partyID": "GMUxx2uo", "userIDs": ["7Wz16b1I", "moV4rrNe", "tOtafX1K"]}, {"partyID": "tCgy0Cgx", "userIDs": ["DCETBLgB", "BrRPByAF", "10DXcXVT"]}], "teamID": "eP11bRQd", "userIDs": ["TFSdeW3e", "KbSYchbb", "Rsz7rYsM"]}, {"parties": [{"partyID": "BMIwBjId", "userIDs": ["5S1wCOCd", "uKSBvwL1", "AaWR83VQ"]}, {"partyID": "Egai2dyz", "userIDs": ["4pEtvrCd", "rWm39L8j", "8oUVk3D3"]}, {"partyID": "HlDYrThK", "userIDs": ["mCO0P6pI", "uoNeJUmi", "faZFfOyv"]}], "teamID": "z3G3xyXL", "userIDs": ["iDSkEpGo", "FT0phDwO", "EDrepAyg"]}, {"parties": [{"partyID": "gpCvyCOj", "userIDs": ["Ym0ESgSN", "SqtvvdOc", "6fgfHycO"]}, {"partyID": "WSnOPBlU", "userIDs": ["iwbPg8T7", "nEDVYzK9", "BfTYcKgU"]}, {"partyID": "8x059qWr", "userIDs": ["Wsx72CW3", "nQRNrnTX", "hHTVlW4g"]}], "teamID": "CEgsLPo8", "userIDs": ["3NqNuUaK", "1biSP8NJ", "qaH6GbFD"]}], "ticketIDs": ["wpUL6k6P", "rfL2vWAP", "YtcFfXOw"], "tieTeamsSessionLifetime": true, "type": "DS", "version": 88}' \
    > test.out 2>&1
eval_tap $? 56 'PatchUpdateGameSession' test.out

#- 57 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'GQY8rMCl' \
    --body '{"backfillTicketID": "fxVQW24f"}' \
    > test.out 2>&1
eval_tap $? 57 'UpdateGameSessionBackfillTicketID' test.out

#- 58 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'MhnE1VPT' \
    > test.out 2>&1
eval_tap $? 58 'GameSessionGenerateCode' test.out

#- 59 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId '7RlvKj3B' \
    > test.out 2>&1
eval_tap $? 59 'PublicRevokeGameSessionCode' test.out

#- 60 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'De6Pb7Sm' \
    --body '{"metadata": {"3MrVGwlT": "UWpylhgK", "A4g95kor": "YOTQymwu", "thBkmxvZ": "MNxOIvVB"}, "platformID": "ZjXa4CnN", "userID": "LtnCCS60"}' \
    > test.out 2>&1
eval_tap $? 60 'PublicGameSessionInvite' test.out

#- 61 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'EBzh4Tjp' \
    > test.out 2>&1
eval_tap $? 61 'JoinGameSession' test.out

#- 62 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'MAzorumC' \
    --body '{"leaderID": "T4uk7h68"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicPromoteGameSessionLeader' test.out

#- 63 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '5CUaA5Xk' \
    > test.out 2>&1
eval_tap $? 63 'LeaveGameSession' test.out

#- 64 PublicKickGameSessionMember
samples/cli/sample-apps Session publicKickGameSessionMember \
    --memberId 'KolELuck' \
    --namespace $AB_NAMESPACE \
    --sessionId 'Ee0bBdXG' \
    > test.out 2>&1
eval_tap $? 64 'PublicKickGameSessionMember' test.out

#- 65 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'qYkwoY1Y' \
    > test.out 2>&1
eval_tap $? 65 'PublicGameSessionReject' test.out

#- 66 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId 'VczOFzvJ' \
    > test.out 2>&1
eval_tap $? 66 'GetSessionServerSecret' test.out

#- 67 AppendTeamGameSession
eval_tap 0 67 'AppendTeamGameSession # SKIP deprecated' test.out

#- 68 PublicGameSessionCancel
samples/cli/sample-apps Session publicGameSessionCancel \
    --namespace $AB_NAMESPACE \
    --sessionId 'B18hDjFk' \
    --userId 'uwdyrsW1' \
    > test.out 2>&1
eval_tap $? 68 'PublicGameSessionCancel' test.out

#- 69 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Ns2JhZfp"}' \
    > test.out 2>&1
eval_tap $? 69 'PublicPartyJoinCode' test.out

#- 70 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId '46RIU4mx' \
    > test.out 2>&1
eval_tap $? 70 'PublicGetParty' test.out

#- 71 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'LIt9ijVs' \
    --body '{"attributes": {"yJ7SsxXM": {}, "PAuV1s0s": {}, "w4qQO9zK": {}}, "inactiveTimeout": 77, "inviteTimeout": 69, "joinability": "FRIENDS_OF_LEADER", "maxPlayers": 33, "minPlayers": 70, "type": "NONE", "version": 36}' \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdateParty' test.out

#- 72 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'IyhLJvkD' \
    --body '{"attributes": {"QZ4xluwd": {}, "EZg91vd5": {}, "Z1a4SLrV": {}}, "inactiveTimeout": 8, "inviteTimeout": 80, "joinability": "INVITE_ONLY", "maxPlayers": 20, "minPlayers": 81, "type": "DS", "version": 17}' \
    > test.out 2>&1
eval_tap $? 72 'PublicPatchUpdateParty' test.out

#- 73 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'K4V2qNJx' \
    > test.out 2>&1
eval_tap $? 73 'PublicGeneratePartyCode' test.out

#- 74 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'jupYoXuT' \
    > test.out 2>&1
eval_tap $? 74 'PublicRevokePartyCode' test.out

#- 75 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'XFKKzhAS' \
    --body '{"metadata": {"f02pKB6F": "hmRHFNqQ", "6vYJ1uOm": "M8Mqe1IR", "QucFIXfq": "ceFQBpt7"}, "platformID": "12YvzAdm", "userID": "2c2sGpo4"}' \
    > test.out 2>&1
eval_tap $? 75 'PublicPartyInvite' test.out

#- 76 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'Zz58vOGA' \
    --body '{"leaderID": "K16GemoO"}' \
    > test.out 2>&1
eval_tap $? 76 'PublicPromotePartyLeader' test.out

#- 77 PublicReadPartySessionStorage
samples/cli/sample-apps Session publicReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId '7YFl5vxS' \
    > test.out 2>&1
eval_tap $? 77 'PublicReadPartySessionStorage' test.out

#- 78 PublicUpdateInsertPartySessionStorageReserved
samples/cli/sample-apps Session publicUpdateInsertPartySessionStorageReserved \
    --namespace $AB_NAMESPACE \
    --partyId '6WjktBjz' \
    --userId 'ExwXtylE' \
    --body '{"tvP7dWXq": {}, "KZ9E2vBZ": {}, "TFH215EZ": {}}' \
    > test.out 2>&1
eval_tap $? 78 'PublicUpdateInsertPartySessionStorageReserved' test.out

#- 79 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'nDKMUUVQ' \
    > test.out 2>&1
eval_tap $? 79 'PublicPartyJoin' test.out

#- 80 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId '12NijcWs' \
    > test.out 2>&1
eval_tap $? 80 'PublicPartyLeave' test.out

#- 81 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'rLWOGIaa' \
    > test.out 2>&1
eval_tap $? 81 'PublicPartyReject' test.out

#- 82 PublicPartyCancel
samples/cli/sample-apps Session publicPartyCancel \
    --namespace $AB_NAMESPACE \
    --partyId 'NWqYXO5f' \
    --userId 'M96bOuiR' \
    > test.out 2>&1
eval_tap $? 82 'PublicPartyCancel' test.out

#- 83 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'xLdRJTQs' \
    --userId 'oyRgUXZl' \
    > test.out 2>&1
eval_tap $? 83 'PublicPartyKick' test.out

#- 84 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"lc1LWCuI": {}, "ewL4xnjE": {}, "VkFp6cEp": {}}, "configurationName": "4I4mDOkl", "inactiveTimeout": 47, "inviteTimeout": 12, "joinability": "INVITE_ONLY", "maxPlayers": 73, "members": [{"ID": "rCp1W150", "PlatformID": "dn8vmtXv", "PlatformUserID": "16PkBSmj"}, {"ID": "VuMPVXAr", "PlatformID": "56EXWCAe", "PlatformUserID": "1pnSgQRR"}, {"ID": "PmgLtJGJ", "PlatformID": "e0NVA7o8", "PlatformUserID": "gkOFxcXw"}], "minPlayers": 54, "textChat": false, "type": "NONE"}' \
    > test.out 2>&1
eval_tap $? 84 'PublicCreateParty' test.out

#- 85 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    > test.out 2>&1
eval_tap $? 85 'PublicGetRecentPlayer' test.out

#- 86 PublicGetRecentTeamPlayer
samples/cli/sample-apps Session publicGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetRecentTeamPlayer' test.out

#- 87 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'uHpGqbgM' \
    --body '{"rA1SqKWv": {}, "wTFRmHV8": {}, "2BVYkM4a": {}}' \
    > test.out 2>&1
eval_tap $? 87 'PublicUpdateInsertSessionStorageLeader' test.out

#- 88 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'qcIIZg0p' \
    --userId 'ilNL6FX0' \
    --body '{"xTtVw9h2": {}, "jSt4A6xO": {}, "mkNM9pXf": {}}' \
    > test.out 2>&1
eval_tap $? 88 'PublicUpdateInsertSessionStorage' test.out

#- 89 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["ibY3Wwvv", "tE8UtwCk", "zICYEmcW"]}' \
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
    --body '{"crossplayEnabled": false, "currentPlatform": "B4hNv28a", "data": {"SRv1Ykov": {}, "QduAYNk8": {}, "VJRhw17x": {}}, "platforms": [{"name": "RubYtAwA", "userID": "QiHcDWuB"}, {"name": "1icDeoLE", "userID": "zlLY39BS"}, {"name": "uCHu51nW", "userID": "ackgKtQg"}], "roles": ["dQpSTCH5", "7mXAJOve", "vS9056q6"], "simultaneousPlatform": "zTzjwoKm"}' \
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
    --order 'FTHG7MIT' \
    --orderBy 'PzTS6qGu' \
    --status 'BUVGDDuo' \
    > test.out 2>&1
eval_tap $? 93 'PublicQueryMyGameSessions' test.out

#- 94 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'QtA7SOEV' \
    --orderBy 'Y2TG85r9' \
    --status 'RsRksAD1' \
    > test.out 2>&1
eval_tap $? 94 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE