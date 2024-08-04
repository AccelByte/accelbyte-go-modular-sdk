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
echo "1..85"

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
    --body '{"metricExcludedNamespaces": ["iqMjm3DU", "fy9FyQIc", "278p5TOr"], "regionRetryMapping": {"vSWTx7fz": ["zSXlVuab", "NdPackel", "rTENWhnh"], "81hWUp3I": ["LJzjJpPg", "DOtHm1Tr", "Wt7EaDZ9"], "GBBDVdoX": ["lqWvMUCz", "14ujSsid", "wjPHMItj"]}, "regionURLMapping": ["kH3u2iuJ", "dzJioNEn", "kSUzNPYn"], "testGameMode": "NSpRsyqR", "testRegionURLMapping": ["K7FV1dh3", "OBYegjVR", "9YBd8idt"], "testTargetUserIDs": ["Oay40GXf", "bybhilfj", "nJPBRR8K"]}' \
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
    --body '{"durationDays": 51}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationAlertV1' test.out

#- 13 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 46}' \
    > test.out 2>&1
eval_tap $? 13 'AdminCreateConfigurationAlertV1' test.out

#- 14 AdminDeleteConfigurationAlertV1
samples/cli/sample-apps Session adminDeleteConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteConfigurationAlertV1' test.out

#- 15 HandleUploadXboxPFXCertificate
samples/cli/sample-apps Session handleUploadXboxPFXCertificate \
    --namespace $AB_NAMESPACE \
    --description 'fzNQf64e' \
    --certname 'QXecAQM1' \
    --file 'tmp.dat' \
    --password 'pF3eSvFb' \
    > test.out 2>&1
eval_tap $? 15 'HandleUploadXboxPFXCertificate' test.out

#- 16 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 8, "PSNSupportedPlatforms": ["JDx4NRiP", "mO8nph37", "jZRnPzvL"], "SessionTitle": "gNlx9YZD", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "nkv1vsxP", "XboxServiceConfigID": "vYP5hn4J", "XboxSessionTemplateName": "ItBP5dch", "XboxTitleID": "qxyoNhUS", "localizedSessionName": {"O5LcgvbL": {}, "6qz5kw9s": {}, "5PE06Ray": {}}}, "PSNBaseUrl": "AadoMBMz", "appName": "Koh9N5sl", "attributes": {"2ZLw4cQJ": {}, "OePx8s8P": {}, "snNeWN3E": {}}, "autoJoin": true, "autoLeaveSession": false, "clientVersion": "T1UY9vJh", "customURLGRPC": "Yc4cFqaV", "deployment": "2lxmxRWO", "disableCodeGeneration": false, "disableResendInvite": false, "dsManualSetReady": true, "dsSource": "F7BqNHGa", "enableSecret": false, "fallbackClaimKeys": ["kogITpdx", "4GsO2nrg", "H2exp8WE"], "immutableStorage": true, "inactiveTimeout": 95, "inviteTimeout": 54, "joinability": "bgFGBEai", "leaderElectionGracePeriod": 26, "manualRejoin": false, "maxActiveSessions": 16, "maxPlayers": 7, "minPlayers": 23, "name": "opClvAqg", "persistent": true, "preferredClaimKeys": ["iS1EHscq", "BtCyU04T", "7aYmxC76"], "requestedRegions": ["CN8xFIGm", "6gx2XVt9", "VdxCt1Vc"], "textChat": true, "tieTeamsSessionLifetime": false, "type": "MB3UFsFz"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateConfigurationTemplateV1' test.out

#- 17 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    --name 'IZGAZNQk' \
    --offset '69' \
    --order '715N0LYW' \
    --orderBy 'pEV76gjA' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetAllConfigurationTemplatesV1' test.out

#- 18 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'EQ9plJ0D' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigurationTemplateV1' test.out

#- 19 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'oEEtKq9d' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 69, "PSNSupportedPlatforms": ["YF8D6THQ", "dfVp5Azl", "mnwxOsWk"], "SessionTitle": "5lGWSCpC", "ShouldSync": false, "XboxAllowCrossPlatform": true, "XboxSandboxID": "B1aSVdFP", "XboxServiceConfigID": "Qq3UKVEP", "XboxSessionTemplateName": "ARvfxBAa", "XboxTitleID": "I09Rb7uf", "localizedSessionName": {"celkVbaN": {}, "Cg01XZgG": {}, "uriOAnNY": {}}}, "PSNBaseUrl": "EeOUyRUF", "appName": "Fav9yQwx", "attributes": {"rYSiigtL": {}, "JgIuY8Kr": {}, "DoNH20o5": {}}, "autoJoin": false, "autoLeaveSession": false, "clientVersion": "ToARulpL", "customURLGRPC": "wBP419Oi", "deployment": "Z7YCWYm5", "disableCodeGeneration": false, "disableResendInvite": false, "dsManualSetReady": true, "dsSource": "DE8IpKmE", "enableSecret": false, "fallbackClaimKeys": ["n6xHY5Kn", "wciwfksk", "ZB7YZ1F2"], "immutableStorage": true, "inactiveTimeout": 73, "inviteTimeout": 51, "joinability": "uNsNCcP6", "leaderElectionGracePeriod": 42, "manualRejoin": false, "maxActiveSessions": 26, "maxPlayers": 96, "minPlayers": 62, "name": "qt0NNpkQ", "persistent": true, "preferredClaimKeys": ["LNhuPS8I", "DD1wQqTf", "hKjcxba7"], "requestedRegions": ["dD2Wnj0V", "yw75UCNg", "EOKX2cdE"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "hYrIhkQ9"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'oqv44NeF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 'bWhDYttC' \
    --namespace $AB_NAMESPACE \
    --userId 'VxDZHhlL' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'ThFbIMOp' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "CaAJBjOC"}' \
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
    --configurationName 'sxtWiZM5' \
    --dsPodName 'qR9XCHri' \
    --fromTime 'q8AIOQy1' \
    --gameMode 'F9thEMKJ' \
    --isPersistent '2YmqtmoG' \
    --isSoftDeleted 'szVSM1vI' \
    --joinability 'zmVdObPx' \
    --limit '78' \
    --matchPool 'jjMaGTvs' \
    --memberID '68DURKAe' \
    --offset '66' \
    --order 'j7Ch26pq' \
    --orderBy '3MgEbLqO' \
    --sessionID 'HyyGq4QY' \
    --status 'T53TB0HX' \
    --statusV2 'jcfAJfve' \
    --toTime 'wPYq3fgu' \
    > test.out 2>&1
eval_tap $? 25 'AdminQueryGameSessions' test.out

#- 26 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"aTe70JJp": {}, "qnX71bUb": {}, "uZXxdGcY": {}}' \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["Qb7Fv2QF", "oIT9FRxs", "pcYH5fsE"]}' \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'USFfeTL9' \
    --body '{"ready": false}' \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'woBs53RT' \
    --namespace $AB_NAMESPACE \
    --sessionId 'ig9IAWe2' \
    --statusType 'MYksdFAx' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateGameSessionMember' test.out

#- 30 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '80' \
    --order 'C7NktMZG' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetListNativeSession' test.out

#- 31 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --isSoftDeleted 'M277fmSy' \
    --joinability 'JWD4eJZg' \
    --key 'PvmksWcV' \
    --leaderID 'AlF1zZk4' \
    --limit '48' \
    --memberID 'mSeYiY6C' \
    --memberStatus 'FKfjkmC2' \
    --offset '27' \
    --order '1mrMTuzd' \
    --orderBy 'yRWF2hpE' \
    --partyID 'ezajEuvz' \
    --value 'Spx3X2zz' \
    > test.out 2>&1
eval_tap $? 31 'AdminQueryParties' test.out

#- 32 AdminGetPlatformCredentials
samples/cli/sample-apps Session adminGetPlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'AdminGetPlatformCredentials' test.out

#- 33 AdminUpdatePlatformCredentials
samples/cli/sample-apps Session adminUpdatePlatformCredentials \
    --namespace $AB_NAMESPACE \
    --body '{"psn": {"clientId": "5JlHAjoW", "clientSecret": "vxeXB6xU", "scope": "4hZK5qnj"}}' \
    > test.out 2>&1
eval_tap $? 33 'AdminUpdatePlatformCredentials' test.out

#- 34 AdminDeletePlatformCredentials
samples/cli/sample-apps Session adminDeletePlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'AdminDeletePlatformCredentials' test.out

#- 35 AdminGetRecentPlayer
samples/cli/sample-apps Session adminGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --userId 'QBjuEJPt' \
    > test.out 2>&1
eval_tap $? 35 'AdminGetRecentPlayer' test.out

#- 36 AdminGetRecentTeamPlayer
samples/cli/sample-apps Session adminGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --userId 'rzoWE1DN' \
    > test.out 2>&1
eval_tap $? 36 'AdminGetRecentTeamPlayer' test.out

#- 37 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId '3Oc3TRvb' \
    > test.out 2>&1
eval_tap $? 37 'AdminReadSessionStorage' test.out

#- 38 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'JWtRyIRo' \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteUserSessionStorage' test.out

#- 39 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'rDlDAUqV' \
    --userId 'xPijOnWn' \
    > test.out 2>&1
eval_tap $? 39 'AdminReadUserSessionStorage' test.out

#- 40 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'WspWqN4D' \
    > test.out 2>&1
eval_tap $? 40 'AdminQueryPlayerAttributes' test.out

#- 41 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'c4gUOwjr' \
    > test.out 2>&1
eval_tap $? 41 'AdminGetPlayerAttributes' test.out

#- 42 AdminSyncNativeSession
samples/cli/sample-apps Session adminSyncNativeSession \
    --namespace $AB_NAMESPACE \
    --userId 'gR0tQCud' \
    > test.out 2>&1
eval_tap $? 42 'AdminSyncNativeSession' test.out

#- 43 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "oko8D3dD", "attributes": {"0rTVVfuI": {}, "HZN2Pg3o": {}, "31dbpr2h": {}}, "autoJoin": true, "backfillTicketID": "aK5gharD", "clientVersion": "TGtBtFrT", "configurationName": "iMFBmdLg", "customURLGRPC": "7CiWvmhp", "deployment": "eAtnSy4q", "dsSource": "TGL5oWsO", "fallbackClaimKeys": ["RSLVyr5e", "oaN0uUCg", "08xijzRr"], "inactiveTimeout": 79, "inviteTimeout": 98, "joinability": "xFH1vEvB", "matchPool": "Yq7BN9g3", "maxPlayers": 7, "minPlayers": 83, "preferredClaimKeys": ["v9UFG8Xo", "W1rvtepL", "D67oVz38"], "requestedRegions": ["NNfpGvba", "0LAHWk2K", "uipiiWua"], "serverName": "5glGjS5c", "storage": {"leader": {"PPzwy0y2": {}, "Q5W7KYSL": {}, "EpQsCWYF": {}}}, "teams": [{"UserIDs": ["nSWwmIhb", "3DC8ciKp", "CDM5ZXZ3"], "parties": [{"partyID": "bP05rilb", "userIDs": ["Qkcx5sci", "YFws9skH", "mKHncnAq"]}, {"partyID": "h61ESaUT", "userIDs": ["18JWxgRc", "VzrzT0Zu", "V8mwLavo"]}, {"partyID": "taf2YHTp", "userIDs": ["IGsxRflW", "JTLhtVwl", "A8SwN3KF"]}]}, {"UserIDs": ["ZGRt00C3", "aRdvOmrX", "wzwqJpvW"], "parties": [{"partyID": "tnY69Foa", "userIDs": ["mc3eXMrq", "qBfCIUiA", "o0eUZFpV"]}, {"partyID": "eaUYXDZa", "userIDs": ["nIcdoQeh", "ISqh8ljF", "5fH9MlIf"]}, {"partyID": "7qWih3Qh", "userIDs": ["2p7n5lk0", "Mj7ppqOt", "xYyxr3RP"]}]}, {"UserIDs": ["BjE9ENuu", "rhjAYmUN", "YTQLt4Je"], "parties": [{"partyID": "AvhJjsI1", "userIDs": ["3y29emaf", "bTU5FY9g", "4uygnCUm"]}, {"partyID": "JxwMpiNA", "userIDs": ["64ec29KW", "jY8F1seT", "u4BZLhL0"]}, {"partyID": "ZFqiax72", "userIDs": ["Hmi7i6cd", "5chlSVyY", "tR3Xny1x"]}]}], "textChat": true, "ticketIDs": ["vvnddyu3", "CWLK8OUC", "Ttxurx52"], "tieTeamsSessionLifetime": false, "type": "ffNoYMEO"}' \
    > test.out 2>&1
eval_tap $? 43 'CreateGameSession' test.out

#- 44 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"LxQWXC67": {}, "qwSS1mLD": {}, "DB8N5wik": {}}' \
    > test.out 2>&1
eval_tap $? 44 'PublicQueryGameSessionsByAttributes' test.out

#- 45 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "vVf8ZsUx"}' \
    > test.out 2>&1
eval_tap $? 45 'PublicSessionJoinCode' test.out

#- 46 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'yN9IiCfm' \
    > test.out 2>&1
eval_tap $? 46 'GetGameSessionByPodName' test.out

#- 47 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'GTQBInNE' \
    > test.out 2>&1
eval_tap $? 47 'GetGameSession' test.out

#- 48 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'WJ1rdWGn' \
    --body '{"attributes": {"fq6Egqfj": {}, "S94rFnPX": {}, "OEiwsVrL": {}}, "backfillTicketID": "UxXWRX4p", "clientVersion": "XzVPOYOe", "deployment": "unvzBtbl", "fallbackClaimKeys": ["55HlNbkc", "gsX6d3iC", "djDd14XI"], "inactiveTimeout": 18, "inviteTimeout": 13, "joinability": "0TpwEPYI", "matchPool": "VeCYpEt7", "maxPlayers": 0, "minPlayers": 99, "preferredClaimKeys": ["fKorjD2u", "bpTWbKzr", "ZZ5ZTWUy"], "requestedRegions": ["KKjYHGAf", "J4JyE2Lo", "eNFGX8y9"], "teams": [{"UserIDs": ["xfMTIfWI", "Lbw0fRWK", "Hq21nJNH"], "parties": [{"partyID": "Ci9oYifz", "userIDs": ["7F5RCt5z", "5chQTKwY", "aBITYhcG"]}, {"partyID": "3SqzKOVV", "userIDs": ["u0nfATL9", "yd0K2xqB", "g0Xbf7U0"]}, {"partyID": "Vr5SVdtM", "userIDs": ["3tUe21i6", "S4eDQM6j", "5Jle8jNo"]}]}, {"UserIDs": ["CtmkPQ9l", "PliKEir7", "ODy3wEqR"], "parties": [{"partyID": "FpaIj614", "userIDs": ["DVwWloEV", "tgDRdf8g", "EPMSLw7G"]}, {"partyID": "BecVGL31", "userIDs": ["ixSxriZV", "MhgJje45", "giknNsUb"]}, {"partyID": "kzX35bMT", "userIDs": ["3F76N43L", "PPRq7uND", "rLqSRDJC"]}]}, {"UserIDs": ["KZgzbJ2p", "N4mtctbq", "j6Q8KnBm"], "parties": [{"partyID": "dvGSXtaW", "userIDs": ["rXwXXMV5", "jkuraAfL", "b9pFHjBn"]}, {"partyID": "Pj6zUuPe", "userIDs": ["fzXL7pOw", "e7ElWXPe", "CccmPnMf"]}, {"partyID": "TdSJMQgm", "userIDs": ["GoyLceLl", "j9GW5Rk3", "u1no9vWC"]}]}], "ticketIDs": ["SsS8aqoF", "jezaUGCj", "bXi6FITD"], "tieTeamsSessionLifetime": true, "type": "tnBPwqyS", "version": 4}' \
    > test.out 2>&1
eval_tap $? 48 'UpdateGameSession' test.out

#- 49 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'EDsMNsWk' \
    > test.out 2>&1
eval_tap $? 49 'DeleteGameSession' test.out

#- 50 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'djrNoIMY' \
    --body '{"attributes": {"qnzKdu7M": {}, "8Pyq3TPZ": {}, "gDRKSEoc": {}}, "backfillTicketID": "83r8uamR", "clientVersion": "6hKo7CDR", "deployment": "qCDZl1qX", "fallbackClaimKeys": ["JdpDx1wR", "fXCWBED9", "MXL3Npvm"], "inactiveTimeout": 1, "inviteTimeout": 64, "joinability": "1FJI2rrX", "matchPool": "ml4IOH8k", "maxPlayers": 87, "minPlayers": 29, "preferredClaimKeys": ["xusPKmtQ", "yQN95xps", "t0bk8U4U"], "requestedRegions": ["GvEN09Nl", "I9pgatB8", "PUiFQGAT"], "teams": [{"UserIDs": ["9jMUtJ1E", "pRn9FaHU", "2qS4VmY8"], "parties": [{"partyID": "a0KDb2WF", "userIDs": ["UoYEoiVn", "OmktqpCG", "thurqxTF"]}, {"partyID": "b8DeIqrV", "userIDs": ["jDYtNac2", "3iSUNF1O", "baWpFduG"]}, {"partyID": "CgXBi1rY", "userIDs": ["XG7n1FwQ", "qQB6OUKm", "9Jbc4B9w"]}]}, {"UserIDs": ["sVSTK5tp", "A79oIBZI", "beJ0B3E3"], "parties": [{"partyID": "5xt4kcNT", "userIDs": ["WXnt4VPm", "7YnnTecs", "WEaIlESJ"]}, {"partyID": "p6LIPVmf", "userIDs": ["HGuKDl94", "QKhlTKAB", "ql4QAdEb"]}, {"partyID": "pXoprH2y", "userIDs": ["LWyaU19M", "kyI3Qsua", "krFxdz09"]}]}, {"UserIDs": ["QcErZTKt", "q5MuoUpS", "A0jj9CIZ"], "parties": [{"partyID": "7SERZs3d", "userIDs": ["JdpqF3jP", "6qQBt1n0", "S2aunj4U"]}, {"partyID": "C8w68sso", "userIDs": ["1Z25IHSj", "aXB0ZYth", "hMtFMMhk"]}, {"partyID": "7ANkAQH3", "userIDs": ["KK71eeXZ", "XkL9tNN5", "QkULE5C2"]}]}], "ticketIDs": ["Fisa7U9u", "mK21Y8st", "ZYl8Gj7g"], "tieTeamsSessionLifetime": true, "type": "fOWkKyuf", "version": 85}' \
    > test.out 2>&1
eval_tap $? 50 'PatchUpdateGameSession' test.out

#- 51 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'l4IV1X4n' \
    --body '{"backfillTicketID": "jIphLT2G"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdateGameSessionBackfillTicketID' test.out

#- 52 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'lRXQmSVh' \
    > test.out 2>&1
eval_tap $? 52 'GameSessionGenerateCode' test.out

#- 53 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId '1NJWaQTU' \
    > test.out 2>&1
eval_tap $? 53 'PublicRevokeGameSessionCode' test.out

#- 54 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'a2QdpJLI' \
    --body '{"platformID": "qScGJnua", "userID": "0vMG6AoW"}' \
    > test.out 2>&1
eval_tap $? 54 'PublicGameSessionInvite' test.out

#- 55 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '8QC5fqBm' \
    > test.out 2>&1
eval_tap $? 55 'JoinGameSession' test.out

#- 56 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'nr1KE9VL' \
    --body '{"leaderID": "neFazR8w"}' \
    > test.out 2>&1
eval_tap $? 56 'PublicPromoteGameSessionLeader' test.out

#- 57 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'B8FApQ4m' \
    > test.out 2>&1
eval_tap $? 57 'LeaveGameSession' test.out

#- 58 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'waaYSihv' \
    > test.out 2>&1
eval_tap $? 58 'PublicGameSessionReject' test.out

#- 59 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId '7eR6EWY8' \
    > test.out 2>&1
eval_tap $? 59 'GetSessionServerSecret' test.out

#- 60 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'beuIKN14' \
    --body '{"additionalMembers": [{"partyID": "4F5L3eJX", "userIDs": ["1lHokInq", "2i8gBxuF", "7bDB6BdP"]}, {"partyID": "zrdAfQmc", "userIDs": ["ki87sp7s", "FVUvHS3V", "htNLHSk9"]}, {"partyID": "1Yp2yS2r", "userIDs": ["hZauvclH", "SYDH6Jid", "xQMOu2AQ"]}], "proposedTeams": [{"UserIDs": ["6haTOwda", "Ub5jJ4eD", "BuGHuTeN"], "parties": [{"partyID": "ZeGL6SZ7", "userIDs": ["InWSXNtU", "jj2lUyNy", "2Ll2pfkz"]}, {"partyID": "S0yrwWTq", "userIDs": ["GeE3EcvF", "olmgWfI3", "CbubYmWm"]}, {"partyID": "xTj1OWuj", "userIDs": ["TZBzIJMf", "ff6rdGJp", "bb60PDwJ"]}]}, {"UserIDs": ["DzePAIay", "ST8MNDDb", "pHIVJik8"], "parties": [{"partyID": "DtGb3iEF", "userIDs": ["KrAOyqgp", "2PxR1g4t", "5hyhC67E"]}, {"partyID": "7mQqSU98", "userIDs": ["FhSr5aU0", "DJbfZUU0", "AxNqwHoX"]}, {"partyID": "TWVKKpG8", "userIDs": ["QxHcGXpR", "KdXIN37T", "LPmg7eER"]}]}, {"UserIDs": ["HbXrGTRj", "mHR2BaLY", "sgKXcb6X"], "parties": [{"partyID": "KbcnrzmP", "userIDs": ["gpDWcF86", "21AABGSk", "hsOMEhkF"]}, {"partyID": "rxC0fC0n", "userIDs": ["obeVl62H", "qBwRmXMS", "xV6NkI5q"]}, {"partyID": "yxqj0N9e", "userIDs": ["2gWidgVl", "RNsZs5kz", "zdVmXYWX"]}]}], "version": 89}' \
    > test.out 2>&1
eval_tap $? 60 'AppendTeamGameSession' test.out

#- 61 PublicGameSessionCancel
samples/cli/sample-apps Session publicGameSessionCancel \
    --namespace $AB_NAMESPACE \
    --sessionId 'iyEDs0xm' \
    --userId '9XscPeOe' \
    > test.out 2>&1
eval_tap $? 61 'PublicGameSessionCancel' test.out

#- 62 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "TCB1qQTl"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicPartyJoinCode' test.out

#- 63 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'xrJiA5Ps' \
    > test.out 2>&1
eval_tap $? 63 'PublicGetParty' test.out

#- 64 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'NL0eXqxv' \
    --body '{"attributes": {"CpwEoUm9": {}, "aYCFGq9e": {}, "74VvKPT2": {}}, "inactiveTimeout": 17, "inviteTimeout": 30, "joinability": "PAugXZMf", "maxPlayers": 91, "minPlayers": 93, "type": "TwYQzMbO", "version": 80}' \
    > test.out 2>&1
eval_tap $? 64 'PublicUpdateParty' test.out

#- 65 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'XzdtlhxV' \
    --body '{"attributes": {"80b0I5H3": {}, "ROI5HtPi": {}, "rSQRr5vE": {}}, "inactiveTimeout": 8, "inviteTimeout": 46, "joinability": "SS8gUnEN", "maxPlayers": 80, "minPlayers": 22, "type": "xnK3cdFa", "version": 27}' \
    > test.out 2>&1
eval_tap $? 65 'PublicPatchUpdateParty' test.out

#- 66 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId '8ygHpH8d' \
    > test.out 2>&1
eval_tap $? 66 'PublicGeneratePartyCode' test.out

#- 67 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'UeZ5URGD' \
    > test.out 2>&1
eval_tap $? 67 'PublicRevokePartyCode' test.out

#- 68 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'Rxpd3OB4' \
    --body '{"platformID": "BEGkNVul", "userID": "J5WtCyJV"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicPartyInvite' test.out

#- 69 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'zWgYFMQy' \
    --body '{"leaderID": "6RMHsFcw"}' \
    > test.out 2>&1
eval_tap $? 69 'PublicPromotePartyLeader' test.out

#- 70 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'BCxuvVPV' \
    > test.out 2>&1
eval_tap $? 70 'PublicPartyJoin' test.out

#- 71 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'DU5w6tcr' \
    > test.out 2>&1
eval_tap $? 71 'PublicPartyLeave' test.out

#- 72 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'R8e1QqB0' \
    > test.out 2>&1
eval_tap $? 72 'PublicPartyReject' test.out

#- 73 PublicPartyCancel
samples/cli/sample-apps Session publicPartyCancel \
    --namespace $AB_NAMESPACE \
    --partyId 'NkRmegVv' \
    --userId 'KpNKoYzX' \
    > test.out 2>&1
eval_tap $? 73 'PublicPartyCancel' test.out

#- 74 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'o0rNHGB4' \
    --userId '3Pw5MYFz' \
    > test.out 2>&1
eval_tap $? 74 'PublicPartyKick' test.out

#- 75 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"xq4fN61C": {}, "M02e3ZEg": {}, "7cjJd198": {}}, "configurationName": "5uB84dDZ", "inactiveTimeout": 68, "inviteTimeout": 97, "joinability": "Tc7OgGso", "maxPlayers": 52, "members": [{"ID": "NXteAHJq", "PlatformID": "exFPDAGw", "PlatformUserID": "0GRiU0nb"}, {"ID": "5LUldbvh", "PlatformID": "psYODzNu", "PlatformUserID": "DpBROh1f"}, {"ID": "A3nHqmlI", "PlatformID": "QBNY9r9v", "PlatformUserID": "HZDcKuJs"}], "minPlayers": 69, "textChat": true, "type": "uuxeuEoP"}' \
    > test.out 2>&1
eval_tap $? 75 'PublicCreateParty' test.out

#- 76 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    > test.out 2>&1
eval_tap $? 76 'PublicGetRecentPlayer' test.out

#- 77 PublicGetRecentTeamPlayer
samples/cli/sample-apps Session publicGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    > test.out 2>&1
eval_tap $? 77 'PublicGetRecentTeamPlayer' test.out

#- 78 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'BIybH0gG' \
    --body '{"rxeGaci4": {}, "kqAKm21O": {}, "vPxooWFR": {}}' \
    > test.out 2>&1
eval_tap $? 78 'PublicUpdateInsertSessionStorageLeader' test.out

#- 79 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'qMuonsLr' \
    --userId 'eluLTkEZ' \
    --body '{"9DcIL2HL": {}, "ePm0fHmi": {}, "8Z4PVSbY": {}}' \
    > test.out 2>&1
eval_tap $? 79 'PublicUpdateInsertSessionStorage' test.out

#- 80 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["2UU87fKd", "CEGBn28l", "AqCEeLVf"]}' \
    > test.out 2>&1
eval_tap $? 80 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 81 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 81 'PublicGetPlayerAttributes' test.out

#- 82 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": true, "currentPlatform": "rOEM1PnL", "data": {"tibH6qXI": {}, "UuBQ2mLs": {}, "s8tvizUR": {}}, "platforms": [{"name": "Hx0z5Iwu", "userID": "uL04kntK"}, {"name": "K3KMm8Qx", "userID": "BkCPL87J"}, {"name": "P03ITBcz", "userID": "MUvtJs87"}], "roles": ["KPiHEv7e", "cFbZ1MI3", "tPF2F8m5"], "simultaneousPlatform": "JINtcQMt"}' \
    > test.out 2>&1
eval_tap $? 82 'PublicStorePlayerAttributes' test.out

#- 83 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 83 'PublicDeletePlayerAttributes' test.out

#- 84 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'Bw3AmxGJ' \
    --orderBy 'Iz2RcIbF' \
    --status 'LDhJq0UV' \
    > test.out 2>&1
eval_tap $? 84 'PublicQueryMyGameSessions' test.out

#- 85 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'iF3EdajZ' \
    --orderBy '2TTUN888' \
    --status 'qnkb8UOf' \
    > test.out 2>&1
eval_tap $? 85 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE