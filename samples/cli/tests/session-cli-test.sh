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
    --body '{"metricExcludedNamespaces": ["L944LpSx", "YC7wUxpL", "gm2nBNN5"], "regionRetryMapping": {"G1aqCf8h": ["rL8tx27e", "mXZb4wZk", "92t07l4L"], "KfNaRXEE": ["rnugsCos", "W5ko4lwi", "CzwulWiV"], "KuiqUl4M": ["L02V3U2K", "eZf2POgd", "SmqzbuEn"]}, "regionURLMapping": ["ufgUw9yV", "4Yl26ket", "pMTsRXLd"], "testGameMode": "bH2e7Mw5", "testRegionURLMapping": ["09gQGc1I", "ww6U3joP", "hX1mzaLc"], "testTargetUserIDs": ["AL4ZluGp", "OWL5CKb6", "Tbqtypvb"]}' \
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
    --body '{"durationDays": 28}' \
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
    --body '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["PROMOTE_TO_LEADER", "KICK", "KICK"], "PSNServiceLabel": 69, "PSNSupportedPlatforms": ["4KgLUUQW", "n7LkAFed", "VawttNOq"], "SessionTitle": "ZwlGdINH", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "t7xwPOhu", "XboxServiceConfigID": "uZv6lLYP", "XboxSessionTemplateName": "4cCA3JI3", "XboxTitleID": "BHx9J5CP", "localizedSessionName": {"G6G5V2xI": {}, "uTbaS8xO": {}, "4gx47S8w": {}}}, "PSNBaseUrl": "s3fyAsVH", "amsClaimTimeoutMinutes": 58, "appName": "D7VOClcx", "asyncProcessDSRequest": {"async": false, "timeout": 33}, "attributes": {"GaZNnPYI": {}, "4nBFwWSz": {}, "p3m6uwzp": {}}, "autoJoin": false, "autoLeaveSession": true, "clientVersion": "Djub9Dxh", "customURLGRPC": "krNAGiXl", "deployment": "Za2BNmiu", "disableCodeGeneration": true, "disableResendInvite": false, "dsManualSetReady": true, "dsSource": "FXOCikax", "enableSecret": false, "fallbackClaimKeys": ["x2sKVsRk", "dC03gIsw", "CwZRyQ3y"], "grpcSessionConfig": {"appName": "wmNlk65a", "customURL": "pjnWyUvI", "functionFlag": 30}, "immutableStorage": true, "inactiveTimeout": 87, "inviteTimeout": 63, "joinability": "INVITE_ONLY", "leaderElectionGracePeriod": 55, "manualRejoin": true, "maxActiveSessions": 88, "maxPlayers": 71, "minPlayers": 26, "name": "eD3AOW8E", "partyCodeGeneratorString": "8u3nRYN9", "partyCodeLength": 75, "persistent": false, "preferredClaimKeys": ["94CP1OMz", "iMwbn4fY", "IkukZhxC"], "requestedRegions": ["EsiLMqdf", "39SYVgBW", "TrwGPQSG"], "textChat": false, "textChatMode": "TEAM", "tieTeamsSessionLifetime": false, "ttlHours": 17, "type": "DS"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateConfigurationTemplateV1' test.out

#- 17 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --name 'aKuPtm0O' \
    --offset '61' \
    --order 'czo3kFUp' \
    --orderBy 'Td5TGRYN' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetAllConfigurationTemplatesV1' test.out

#- 18 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'ZyRerocz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigurationTemplateV1' test.out

#- 19 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'GtrSUJXd' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["UPDATE_JOINABLE_USER_TYPE", "PROMOTE_TO_LEADER", "PROMOTE_TO_LEADER"], "PSNServiceLabel": 62, "PSNSupportedPlatforms": ["Gul4Szxz", "Tk8O9KzI", "rzuJlhIZ"], "SessionTitle": "A2dDSegI", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "336sfYBa", "XboxServiceConfigID": "97XNhUjC", "XboxSessionTemplateName": "WRWMRclL", "XboxTitleID": "ph6uOsiR", "localizedSessionName": {"qMmstf4D": {}, "hmS5fiaA": {}, "Ys0VPITT": {}}}, "PSNBaseUrl": "YaCfNFbW", "amsClaimTimeoutMinutes": 3, "appName": "mZbot9NQ", "asyncProcessDSRequest": {"async": true, "timeout": 16}, "attributes": {"Nb9NBZVV": {}, "MtcN8SQj": {}, "E5emwf2l": {}}, "autoJoin": false, "autoLeaveSession": true, "clientVersion": "4ADe50ve", "customURLGRPC": "IegpuGXo", "deployment": "w8yykXMx", "disableCodeGeneration": true, "disableResendInvite": true, "dsManualSetReady": false, "dsSource": "cMX70vMr", "enableSecret": true, "fallbackClaimKeys": ["mgZASlZG", "KIMxUgYl", "DbL7eDIR"], "grpcSessionConfig": {"appName": "izUo8diE", "customURL": "4T2rJjUE", "functionFlag": 28}, "immutableStorage": false, "inactiveTimeout": 95, "inviteTimeout": 45, "joinability": "OPEN", "leaderElectionGracePeriod": 83, "manualRejoin": false, "maxActiveSessions": 55, "maxPlayers": 61, "minPlayers": 84, "name": "VE3mJFIX", "partyCodeGeneratorString": "X3mwh7Ho", "partyCodeLength": 42, "persistent": false, "preferredClaimKeys": ["koMh1gBQ", "HitnMKtJ", "EHtCDs8K"], "requestedRegions": ["iPrjykoR", "30Hn1uuT", "snbVwRFa"], "textChat": true, "textChatMode": "NONE", "tieTeamsSessionLifetime": true, "ttlHours": 22, "type": "NONE"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name '3eF8Dsl0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 'W8mFA6Rl' \
    --namespace $AB_NAMESPACE \
    --userId 'NL8eijmQ' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'CQsSr7rf' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "DmzqHHuQ"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminReconcileMaxActiveSession' test.out

#- 23 AdminGetDSMCConfiguration
eval_tap 0 23 'AdminGetDSMCConfiguration # SKIP deprecated' test.out

#- 24 AdminSyncDSMCConfiguration
eval_tap 0 24 'AdminSyncDSMCConfiguration # SKIP deprecated' test.out

#- 25 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName 'KMpahatc' \
    --dsPodName 'a1Xh0Igk' \
    --fromTime '09RPXMdJ' \
    --gameMode 'DKyxLCWe' \
    --isPersistent '7dJiswAY' \
    --isSoftDeleted '78mJmZy7' \
    --joinability 'FRIENDS_OF_MEMBERS' \
    --limit '12' \
    --matchPool 'iAQAq0dB' \
    --memberID '6F6G9cGm' \
    --offset '81' \
    --order 'da8njBBH' \
    --orderBy 'qthIZa5P' \
    --sessionID '6QUaYXkZ' \
    --status 'REQUESTED' \
    --statusV2 'AVAILABLE' \
    --toTime 'vVcog4DE' \
    > test.out 2>&1
eval_tap $? 25 'AdminQueryGameSessions' test.out

#- 26 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"rCLnCAzg": {}, "60EbNY7r": {}, "N971NDxa": {}}' \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["BOhMACrF", "yeyx1Skd", "XN6tFQz3"]}' \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'HQzBO6qH' \
    --body '{"ready": false}' \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminUpdateDSInformation
samples/cli/sample-apps Session adminUpdateDSInformation \
    --namespace $AB_NAMESPACE \
    --sessionId 'M54QFeZn' \
    --body '{"createdRegion": "0KlzH4Ja", "deployment": "ixIMmYkp", "description": "hQq39tsa", "ip": "YdME2mGB", "port": 67, "region": "PFBwJjOA", "serverId": "mtmxI4UG", "source": "OlXVfrU4", "status": "4x8AxvvH"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateDSInformation' test.out

#- 30 AdminKickGameSessionMember
samples/cli/sample-apps Session adminKickGameSessionMember \
    --memberId 'cZhGD6fi' \
    --namespace $AB_NAMESPACE \
    --sessionId 'XuNCNiIS' \
    > test.out 2>&1
eval_tap $? 30 'AdminKickGameSessionMember' test.out

#- 31 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId '2dTSjg4c' \
    --namespace $AB_NAMESPACE \
    --sessionId '7KlXHn5S' \
    --statusType '3BFpodiq' \
    > test.out 2>&1
eval_tap $? 31 'AdminUpdateGameSessionMember' test.out

#- 32 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '0' \
    --order 'uovqmEdz' \
    > test.out 2>&1
eval_tap $? 32 'AdminGetListNativeSession' test.out

#- 33 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --configurationName 'AY5qHnHX' \
    --fromTime 'f0rMS2yj' \
    --isSoftDeleted 'jvdYJtcW' \
    --joinability 'FRIENDS_OF_LEADER' \
    --key 'rl42EvYv' \
    --leaderID 'A2a0XuUr' \
    --limit '42' \
    --memberID 'HCDTwlu9' \
    --memberStatus 'TIMEOUT' \
    --offset '73' \
    --order 'jr9TLZCz' \
    --orderBy 'ZsnHiJI7' \
    --partyID 'TFnGdl3t' \
    --toTime '1IoDJsgI' \
    --value 'kQRboPlm' \
    > test.out 2>&1
eval_tap $? 33 'AdminQueryParties' test.out

#- 34 AdminDeleteBulkParties
samples/cli/sample-apps Session adminDeleteBulkParties \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["L6FG94PG", "ZNAxR8Cn", "q6P2iSf2"]}' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteBulkParties' test.out

#- 35 AdminReadPartySessionStorage
samples/cli/sample-apps Session adminReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId 'giHdhpqP' \
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
    --body '{"psn": {"clientId": "2id1WDfb", "clientSecret": "qhczLa7k", "scope": "LqgRwJC6"}}' \
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
    --description 'NxM4EegZ' \
    --file 'tmp.dat' \
    --password 'BY6X1lhk' \
    > test.out 2>&1
eval_tap $? 41 'AdminUploadPlatformCredentials' test.out

#- 42 AdminGetRecentPlayer
samples/cli/sample-apps Session adminGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --userId '1Y9NHeea' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetRecentPlayer' test.out

#- 43 AdminGetRecentTeamPlayer
samples/cli/sample-apps Session adminGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --userId 'RzAhp3Ve' \
    > test.out 2>&1
eval_tap $? 43 'AdminGetRecentTeamPlayer' test.out

#- 44 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'h7j1Bohm' \
    > test.out 2>&1
eval_tap $? 44 'AdminReadSessionStorage' test.out

#- 45 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'B1fj1RzG' \
    > test.out 2>&1
eval_tap $? 45 'AdminDeleteUserSessionStorage' test.out

#- 46 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'uTEOGM4p' \
    --userId 'AVCDFtVz' \
    > test.out 2>&1
eval_tap $? 46 'AdminReadUserSessionStorage' test.out

#- 47 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users '0DVXhLou' \
    > test.out 2>&1
eval_tap $? 47 'AdminQueryPlayerAttributes' test.out

#- 48 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'bs1irJrb' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetPlayerAttributes' test.out

#- 49 AdminSyncNativeSession
samples/cli/sample-apps Session adminSyncNativeSession \
    --namespace $AB_NAMESPACE \
    --userId 'kBaXCYNy' \
    > test.out 2>&1
eval_tap $? 49 'AdminSyncNativeSession' test.out

#- 50 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --resolveMaxActiveSession 'false' \
    --body '{"appName": "bD3jaSgM", "attributes": {"MVxRodcI": {}, "f8o9GT1l": {}, "TJyUVzZD": {}}, "autoJoin": true, "backfillTicketID": "OFQYlXDD", "clientVersion": "xkkGMPEQ", "configurationName": "R1MEamgC", "customURLGRPC": "WiimwQvo", "deployment": "JhcYl9tJ", "dsSource": "6cVrxmgw", "fallbackClaimKeys": ["eYejq5AU", "aDsj59Ml", "xFNxpO0F"], "inactiveTimeout": 89, "inviteTimeout": 31, "joinability": "INVITE_ONLY", "matchPool": "Cjasx802", "maxPlayers": 72, "minPlayers": 55, "preferredClaimKeys": ["jJ3g84uV", "E0YSFSGR", "M9Xpzcot"], "requestedRegions": ["6zGR81KA", "MJVziSzA", "iYveC6OS"], "serverName": "1IdbaLrX", "storage": {"leader": {"irB3toZf": {}, "wGZkoReq": {}, "nHKgI3sw": {}}}, "teams": [{"parties": [{"partyID": "256jYv88", "userIDs": ["LtG23zwm", "SCO8syKO", "9rUdiMP6"]}, {"partyID": "yv9RgSTd", "userIDs": ["4CgNMDPS", "1DliF0PF", "1G4PPqoS"]}, {"partyID": "i7hS87IT", "userIDs": ["NEQICKOu", "q3V0Qpnn", "lD49QPbh"]}], "teamID": "txWLIM3X", "userIDs": ["fnz8EzbL", "fjxyQGJ8", "jofwS9wB"]}, {"parties": [{"partyID": "A4Yevq5a", "userIDs": ["KEDolCg6", "t7nRgVne", "tYanovhW"]}, {"partyID": "UzfEE7c0", "userIDs": ["48pdkLfM", "zLcABoX8", "rQ1Px73N"]}, {"partyID": "KZlO0iKY", "userIDs": ["OibJhz4E", "wlLLaCCq", "Ua69e5qp"]}], "teamID": "h1OSeCCf", "userIDs": ["iPm0ORcN", "XAq3rxhE", "iwHv2rsQ"]}, {"parties": [{"partyID": "7KJadSzs", "userIDs": ["SX8ufQYg", "8cZbtTU8", "orL0jv1A"]}, {"partyID": "xjXtyWNo", "userIDs": ["6VRHeUk8", "LrsTCquA", "sZLjEzYN"]}, {"partyID": "9vzFjgQv", "userIDs": ["hFYqnxz1", "10Cd1RfY", "ThQV801l"]}], "teamID": "8uTyxwOx", "userIDs": ["pq2YRy1i", "WdLmzH0t", "4gaiBc26"]}], "textChat": true, "textChatMode": "TEAM", "ticketIDs": ["rd4S27lV", "8xZppxwh", "vageyvZL"], "tieTeamsSessionLifetime": true, "type": "NONE"}' \
    > test.out 2>&1
eval_tap $? 50 'CreateGameSession' test.out

#- 51 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"dUkLJuNT": {}, "iwuMwwhG": {}, "vF7HKPZr": {}}' \
    > test.out 2>&1
eval_tap $? 51 'PublicQueryGameSessionsByAttributes' test.out

#- 52 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "k5qV7IeP"}' \
    > test.out 2>&1
eval_tap $? 52 'PublicSessionJoinCode' test.out

#- 53 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName '10vClKpr' \
    > test.out 2>&1
eval_tap $? 53 'GetGameSessionByPodName' test.out

#- 54 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'yXNUOT3w' \
    > test.out 2>&1
eval_tap $? 54 'GetGameSession' test.out

#- 55 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'd3xNMOXe' \
    --body '{"attributes": {"Ox7YZnyL": {}, "SZLqJYln": {}, "U8znYO5X": {}}, "backfillTicketID": "i61PGNfS", "clientVersion": "evNft0ls", "deployment": "om88gUjJ", "fallbackClaimKeys": ["qhjiOzxR", "Cc85DNaV", "6hGcgtIY"], "inactiveTimeout": 20, "inviteTimeout": 72, "joinability": "INVITE_ONLY", "matchPool": "rVRQpF6n", "maxPlayers": 5, "minPlayers": 14, "preferredClaimKeys": ["H1E5FXLp", "2ZPfxdOw", "Pp1hpQJT"], "requestedRegions": ["zSh9raKz", "LeTEpZVC", "ibZj9F1j"], "teams": [{"parties": [{"partyID": "zZQmUA9H", "userIDs": ["XIru6HBY", "mA7UybtX", "KWLMNkCR"]}, {"partyID": "7Ur4STZS", "userIDs": ["AfKCuqGG", "a8qWWO2r", "IJgoSt8t"]}, {"partyID": "s7fQ9FCR", "userIDs": ["8MQAwbCy", "Q7Oy8txg", "rLp13rNW"]}], "teamID": "Z0OKUbQS", "userIDs": ["OgmGbzPu", "ezgDxvYv", "LiFqshPn"]}, {"parties": [{"partyID": "YBAfzV92", "userIDs": ["ACHpVEgb", "zPgblq6M", "yjfoRKlg"]}, {"partyID": "qvaLYapw", "userIDs": ["6vnOMnom", "K6Efdudb", "MmMVg3w5"]}, {"partyID": "mgV1GmCh", "userIDs": ["Jt79k5WR", "CVyRJMAC", "Av7naxwZ"]}], "teamID": "nacmFVeN", "userIDs": ["m4h4Rjs3", "vc6sv4Tx", "N1w452HU"]}, {"parties": [{"partyID": "PQv8iCIQ", "userIDs": ["gVTleH0v", "rNewf0AI", "hcOfn7jk"]}, {"partyID": "auov9rqw", "userIDs": ["qIIySqQe", "UUdVx664", "DjZkXxPw"]}, {"partyID": "kDexAnKs", "userIDs": ["QRP7t9d8", "LnEsg3T4", "iAYjkAPy"]}], "teamID": "oFXjVVhx", "userIDs": ["GLMdetiP", "iVNwqvSE", "Ow8H1sPh"]}], "ticketIDs": ["oKC6lCzA", "WGPRs8Ck", "rr6ESpXA"], "tieTeamsSessionLifetime": false, "type": "P2P", "version": 4}' \
    > test.out 2>&1
eval_tap $? 55 'UpdateGameSession' test.out

#- 56 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '1QnE4YQB' \
    > test.out 2>&1
eval_tap $? 56 'DeleteGameSession' test.out

#- 57 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'XoAN51mU' \
    --body '{"attributes": {"JPn1UhbX": {}, "FOXRPisM": {}, "PrGa1E2t": {}}, "backfillTicketID": "AjXeKXnc", "clientVersion": "XEARDtSf", "deployment": "YZqQYD5p", "fallbackClaimKeys": ["D4GT9Ja4", "vtqgWpFA", "9y7sftzm"], "inactiveTimeout": 19, "inviteTimeout": 66, "joinability": "FRIENDS_OF_MEMBERS", "matchPool": "uEXb3W7X", "maxPlayers": 53, "minPlayers": 25, "preferredClaimKeys": ["bg9RJqUC", "c5UKvGPd", "ecXGvh5s"], "requestedRegions": ["N9xJZamw", "2vVZEWu5", "wGVd4zNC"], "teams": [{"parties": [{"partyID": "eOxqgEdA", "userIDs": ["JXa0AQoH", "nvYLLDsA", "Qux2Dhi4"]}, {"partyID": "sgfYSUem", "userIDs": ["wQE513TL", "ncMaoo0L", "zYShaIrO"]}, {"partyID": "L82hvjwZ", "userIDs": ["5Fyn0BGl", "lFCf3jvb", "wXWxGaRg"]}], "teamID": "qHO2pnCT", "userIDs": ["FxMsKqE7", "Unr8sLbh", "agQ8plsn"]}, {"parties": [{"partyID": "ywFG3bJO", "userIDs": ["WJYSR5Eo", "rRkmmxoo", "BiBZESsR"]}, {"partyID": "VSldT8vb", "userIDs": ["7sdYnLam", "NtB2NZEI", "mDuSQENq"]}, {"partyID": "HtERgVhv", "userIDs": ["6dwCtraM", "2kwycqNh", "qC1mqXMh"]}], "teamID": "bfygZj8c", "userIDs": ["A3epy7Cy", "udetMfoT", "bjEofNsB"]}, {"parties": [{"partyID": "Zux9ac9W", "userIDs": ["YeeFld1G", "NvPtRhCV", "W3BTxhfw"]}, {"partyID": "PHoW5WAB", "userIDs": ["PHvPjpVC", "LDQsr5eD", "Qtnz2BU7"]}, {"partyID": "mFdweBeG", "userIDs": ["jhjo5fC9", "Z9odZbvJ", "tnjNYmOp"]}], "teamID": "esPq3FiG", "userIDs": ["PT3kh91J", "yH7szyvb", "SDhEaBF4"]}], "ticketIDs": ["IUKhP6db", "ilaQAn9o", "EkuCWeND"], "tieTeamsSessionLifetime": true, "type": "DS", "version": 47}' \
    > test.out 2>&1
eval_tap $? 57 'PatchUpdateGameSession' test.out

#- 58 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'xsL099WD' \
    --body '{"backfillTicketID": "GuqV41OC"}' \
    > test.out 2>&1
eval_tap $? 58 'UpdateGameSessionBackfillTicketID' test.out

#- 59 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'YViRQj1f' \
    > test.out 2>&1
eval_tap $? 59 'GameSessionGenerateCode' test.out

#- 60 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'l4Hk6URA' \
    > test.out 2>&1
eval_tap $? 60 'PublicRevokeGameSessionCode' test.out

#- 61 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'PllPRCZN' \
    --body '{"metadata": {"vvOeaeOr": "4Kyaz7y1", "tdyEPHwv": "n8nIyniv", "EIIB99LY": "4MsOMhin"}, "platformID": "wMT7QweX", "userID": "ax6eGron"}' \
    > test.out 2>&1
eval_tap $? 61 'PublicGameSessionInvite' test.out

#- 62 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'aBh4EXDW' \
    > test.out 2>&1
eval_tap $? 62 'JoinGameSession' test.out

#- 63 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'UWk29nFF' \
    --body '{"leaderID": "W2sVveug"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicPromoteGameSessionLeader' test.out

#- 64 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'PQFeTEpV' \
    > test.out 2>&1
eval_tap $? 64 'LeaveGameSession' test.out

#- 65 PublicKickGameSessionMember
samples/cli/sample-apps Session publicKickGameSessionMember \
    --memberId '6hFD1LcD' \
    --namespace $AB_NAMESPACE \
    --sessionId 'JREeN1xo' \
    > test.out 2>&1
eval_tap $? 65 'PublicKickGameSessionMember' test.out

#- 66 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'PfS7Myhm' \
    > test.out 2>&1
eval_tap $? 66 'PublicGameSessionReject' test.out

#- 67 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId 'noZSS5Xh' \
    > test.out 2>&1
eval_tap $? 67 'GetSessionServerSecret' test.out

#- 68 AppendTeamGameSession
eval_tap 0 68 'AppendTeamGameSession # SKIP deprecated' test.out

#- 69 PublicGameSessionCancel
samples/cli/sample-apps Session publicGameSessionCancel \
    --namespace $AB_NAMESPACE \
    --sessionId 'JBfbYha5' \
    --userId '7VSkGkR6' \
    > test.out 2>&1
eval_tap $? 69 'PublicGameSessionCancel' test.out

#- 70 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "eqD2YaPW"}' \
    > test.out 2>&1
eval_tap $? 70 'PublicPartyJoinCode' test.out

#- 71 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId '4jdswktd' \
    > test.out 2>&1
eval_tap $? 71 'PublicGetParty' test.out

#- 72 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'LhlSIFsL' \
    --body '{"attributes": {"n6YQ8WrA": {}, "lFds9S2G": {}, "G6DmiLm0": {}}, "inactiveTimeout": 71, "inviteTimeout": 26, "joinability": "INVITE_ONLY", "maxPlayers": 1, "minPlayers": 60, "type": "P2P", "version": 59}' \
    > test.out 2>&1
eval_tap $? 72 'PublicUpdateParty' test.out

#- 73 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId '6slmkxJc' \
    --body '{"attributes": {"lWRV2Opc": {}, "TgXCgtww": {}, "TF6ILTdx": {}}, "inactiveTimeout": 43, "inviteTimeout": 71, "joinability": "FRIENDS_OF_FRIENDS", "maxPlayers": 64, "minPlayers": 45, "type": "P2P", "version": 21}' \
    > test.out 2>&1
eval_tap $? 73 'PublicPatchUpdateParty' test.out

#- 74 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'yoMjiDzi' \
    > test.out 2>&1
eval_tap $? 74 'PublicGeneratePartyCode' test.out

#- 75 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'nEEDSpeg' \
    > test.out 2>&1
eval_tap $? 75 'PublicRevokePartyCode' test.out

#- 76 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'IvzHMX3y' \
    --body '{"metadata": {"zGQPigeN": "9e1diVJ0", "PqHcmlvk": "gJvbzBUf", "Ihw3D1pE": "54Ih3d6c"}, "platformID": "9W1Xrx4N", "userID": "WYCT4GKQ"}' \
    > test.out 2>&1
eval_tap $? 76 'PublicPartyInvite' test.out

#- 77 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId '9XxeNejO' \
    --body '{"leaderID": "WNY4Nxi3"}' \
    > test.out 2>&1
eval_tap $? 77 'PublicPromotePartyLeader' test.out

#- 78 PublicReadPartySessionStorage
samples/cli/sample-apps Session publicReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId 'RIBvVh3f' \
    > test.out 2>&1
eval_tap $? 78 'PublicReadPartySessionStorage' test.out

#- 79 PublicUpdateInsertPartySessionStorage
samples/cli/sample-apps Session publicUpdateInsertPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId 'y6UZlFKV' \
    --userId '46031H7z' \
    --body '{"5ncbZTpt": {}, "UyFjmGFk": {}, "1kl7E3Y6": {}}' \
    > test.out 2>&1
eval_tap $? 79 'PublicUpdateInsertPartySessionStorage' test.out

#- 80 PublicUpdateInsertPartySessionStorageReserved
samples/cli/sample-apps Session publicUpdateInsertPartySessionStorageReserved \
    --namespace $AB_NAMESPACE \
    --partyId 'efqFZCZY' \
    --userId '06tOPigk' \
    --body '{"xJV9pcSH": {}, "Hn4jgCjA": {}, "yhgTDaGS": {}}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateInsertPartySessionStorageReserved' test.out

#- 81 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'IKAVc6GS' \
    > test.out 2>&1
eval_tap $? 81 'PublicPartyJoin' test.out

#- 82 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'JdVvxqfW' \
    > test.out 2>&1
eval_tap $? 82 'PublicPartyLeave' test.out

#- 83 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'rlCuR4xP' \
    > test.out 2>&1
eval_tap $? 83 'PublicPartyReject' test.out

#- 84 PublicPartyCancel
samples/cli/sample-apps Session publicPartyCancel \
    --namespace $AB_NAMESPACE \
    --partyId 'GkjQwjhs' \
    --userId 'hiINo8dc' \
    > test.out 2>&1
eval_tap $? 84 'PublicPartyCancel' test.out

#- 85 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'sxiUqmiX' \
    --userId 'oAltL4Qr' \
    > test.out 2>&1
eval_tap $? 85 'PublicPartyKick' test.out

#- 86 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"3apov9C1": {}, "Ic3MJ2z5": {}, "x9goPMke": {}}, "configurationName": "PC8WGQwC", "inactiveTimeout": 43, "inviteTimeout": 32, "joinability": "INVITE_ONLY", "maxPlayers": 93, "members": [{"ID": "I9T2IRDi", "PlatformID": "xJ878xtV", "PlatformUserID": "rZBBhOHC"}, {"ID": "ZrJWRmM9", "PlatformID": "cNtLTfiU", "PlatformUserID": "lAUQEdFH"}, {"ID": "8QpVvreu", "PlatformID": "CpQym46A", "PlatformUserID": "m4t1ZejO"}], "minPlayers": 29, "textChat": false, "type": "DS"}' \
    > test.out 2>&1
eval_tap $? 86 'PublicCreateParty' test.out

#- 87 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    > test.out 2>&1
eval_tap $? 87 'PublicGetRecentPlayer' test.out

#- 88 PublicGetRecentTeamPlayer
samples/cli/sample-apps Session publicGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    > test.out 2>&1
eval_tap $? 88 'PublicGetRecentTeamPlayer' test.out

#- 89 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId '7mqFoxVr' \
    --body '{"evreH5z7": {}, "Fb3wMn6O": {}, "78Mf3fOE": {}}' \
    > test.out 2>&1
eval_tap $? 89 'PublicUpdateInsertSessionStorageLeader' test.out

#- 90 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'ev1tjlsT' \
    --userId 'pJHp37PW' \
    --body '{"Qb3nx8Ib": {}, "jmwQbNE6": {}, "PjGlJgnA": {}}' \
    > test.out 2>&1
eval_tap $? 90 'PublicUpdateInsertSessionStorage' test.out

#- 91 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["ZlEacBE9", "UiRZAX77", "iluBo3i0"]}' \
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
    --body '{"crossplayEnabled": false, "currentPlatform": "0Y7cOTWn", "data": {"eygqEp0l": {}, "DJJ0dorF": {}, "mkRdjbIo": {}}, "platforms": [{"name": "9kfOWT00", "userID": "y7uD4ScG"}, {"name": "1EhDdtZV", "userID": "7HRi4NAe"}, {"name": "7GGzYBTV", "userID": "ZWqYsTsj"}], "roles": ["KlvEQ4kF", "6LsenAvj", "1lhVaR7j"], "simultaneousPlatform": "5dN17EKa"}' \
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
    --order 'W119xPGz' \
    --orderBy 'CIGvRS6x' \
    --status 'joT8z3kZ' \
    > test.out 2>&1
eval_tap $? 95 'PublicQueryMyGameSessions' test.out

#- 96 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'QWqJHz3m' \
    --orderBy 'IDvNRcQL' \
    --status 'GdtbDeAP' \
    > test.out 2>&1
eval_tap $? 96 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE