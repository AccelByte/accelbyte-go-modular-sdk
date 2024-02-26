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
echo "1..77"

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

#- 4 AdminGetDSMCConfigurationDefault
samples/cli/sample-apps Session adminGetDSMCConfigurationDefault \
    > test.out 2>&1
eval_tap $? 4 'AdminGetDSMCConfigurationDefault' test.out

#- 5 AdminListEnvironmentVariables
samples/cli/sample-apps Session adminListEnvironmentVariables \
    > test.out 2>&1
eval_tap $? 5 'AdminListEnvironmentVariables' test.out

#- 6 AdminListGlobalConfiguration
samples/cli/sample-apps Session adminListGlobalConfiguration \
    > test.out 2>&1
eval_tap $? 6 'AdminListGlobalConfiguration' test.out

#- 7 AdminUpdateGlobalConfiguration
samples/cli/sample-apps Session adminUpdateGlobalConfiguration \
    --body '{"regionRetryMapping": {"ekwFaMUn": ["N7PqvOgu", "z3W3ifXn", "98OhMtkt"], "D7SiBWwq": ["zR2wFxQf", "aF1uZmqV", "yLesqkEz"], "MryhoktS": ["dlKhohUn", "q8lnAEAH", "9ZdZQyyy"]}, "regionURLMapping": ["RyoGI551", "N9Yu5KZk", "AAKn6u7q"], "testGameMode": "GTdty7ny", "testRegionURLMapping": ["8OApSMsj", "HCADPgQy", "JFY5q5Oi"], "testTargetUserIDs": ["jTUOw87M", "VNpTlWsp", "FPZ7bGvw"]}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateGlobalConfiguration' test.out

#- 8 AdminDeleteGlobalConfiguration
samples/cli/sample-apps Session adminDeleteGlobalConfiguration \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteGlobalConfiguration' test.out

#- 9 AdminGetConfigurationAlertV1
samples/cli/sample-apps Session adminGetConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetConfigurationAlertV1' test.out

#- 10 AdminUpdateConfigurationAlertV1
samples/cli/sample-apps Session adminUpdateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 69}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateConfigurationAlertV1' test.out

#- 11 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 17}' \
    > test.out 2>&1
eval_tap $? 11 'AdminCreateConfigurationAlertV1' test.out

#- 12 AdminDeleteConfigurationAlertV1
samples/cli/sample-apps Session adminDeleteConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteConfigurationAlertV1' test.out

#- 13 HandleUploadXboxPFXCertificate
samples/cli/sample-apps Session handleUploadXboxPFXCertificate \
    --namespace $AB_NAMESPACE \
    --description 'dAhttC6D' \
    --certname 'ZG5Rcx9V' \
    --file 'tmp.dat' \
    --password 'aawdkiyt' \
    > test.out 2>&1
eval_tap $? 13 'HandleUploadXboxPFXCertificate' test.out

#- 14 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 14, "PSNSupportedPlatforms": ["BC9T4m8K", "giQXoqkh", "y1bhlnVI"], "SessionTitle": "HvA6Y6dp", "ShouldSync": false, "XboxAllowCrossPlatform": true, "XboxSandboxID": "jdEBRKXw", "XboxServiceConfigID": "v3PcRz9E", "XboxSessionTemplateName": "amibc5FC", "XboxTitleID": "BJsSNxN1", "localizedSessionName": {"ijBSHfNQ": {}, "9DVX2ojY": {}, "XRVSt722": {}}}, "PSNBaseUrl": "Z6xAy2sx", "attributes": {"JyFLDZzD": {}, "pw5FXSOB": {}, "QSxwnrzi": {}}, "autoJoin": false, "clientVersion": "q66TrnK8", "deployment": "senIyTsd", "disableCodeGeneration": false, "dsManualSetReady": false, "dsSource": "ORLyuveZ", "enableSecret": true, "fallbackClaimKeys": ["eNwcubIF", "z8dbz03w", "lixr9dQI"], "immutableStorage": false, "inactiveTimeout": 67, "inviteTimeout": 44, "joinability": "JzAtNR4J", "leaderElectionGracePeriod": 88, "manualRejoin": false, "maxActiveSessions": 61, "maxPlayers": 40, "minPlayers": 21, "name": "WUAfkjM3", "persistent": true, "preferredClaimKeys": ["OxWm48O3", "RRcXPt3l", "2QRjNM00"], "requestedRegions": ["HKJrakpk", "3HiyaWqR", "yDfjVw5Z"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "rYXhmT30"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminCreateConfigurationTemplateV1' test.out

#- 15 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --name 'fGvdYWoZ' \
    --offset '82' \
    --order 'UnGCB1hv' \
    --orderBy 'GG43JZ27' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetAllConfigurationTemplatesV1' test.out

#- 16 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'ZAAwKKz3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetConfigurationTemplateV1' test.out

#- 17 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'cF7VruU5' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 21, "PSNSupportedPlatforms": ["zjsnRY7l", "l6Xn8OWr", "Dy5eZL8F"], "SessionTitle": "RPhwevbG", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "aKX2o7n8", "XboxServiceConfigID": "R6YcWzAK", "XboxSessionTemplateName": "oGBIvMR1", "XboxTitleID": "MH2GNrIh", "localizedSessionName": {"OpW1ibQi": {}, "d4JsrVdO": {}, "KweOY1KK": {}}}, "PSNBaseUrl": "iq5i05Dl", "attributes": {"ZpY5UN5b": {}, "Ri6hk7B6": {}, "FUeOXBE2": {}}, "autoJoin": false, "clientVersion": "k18h4isc", "deployment": "cmsBLh1r", "disableCodeGeneration": true, "dsManualSetReady": false, "dsSource": "RnB3hbjU", "enableSecret": true, "fallbackClaimKeys": ["9PTzDh4m", "ZKgdDtqr", "09D40kyU"], "immutableStorage": true, "inactiveTimeout": 80, "inviteTimeout": 39, "joinability": "zHgnf0D5", "leaderElectionGracePeriod": 41, "manualRejoin": false, "maxActiveSessions": 66, "maxPlayers": 98, "minPlayers": 9, "name": "kgDiJBiy", "persistent": true, "preferredClaimKeys": ["ivPJNGd5", "L1UXOY1v", "PUTOvNnM"], "requestedRegions": ["JjF5pbJK", "KSR4csOs", "8nQUX0nt"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "7IywdSre"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateConfigurationTemplateV1' test.out

#- 18 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'L8jVMITw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteConfigurationTemplateV1' test.out

#- 19 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 'pno3BFuj' \
    --namespace $AB_NAMESPACE \
    --userId 'LpH1R7HI' \
    > test.out 2>&1
eval_tap $? 19 'AdminGetMemberActiveSession' test.out

#- 20 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'MolT3Dfa' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "1kkxbYtl"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminReconcileMaxActiveSession' test.out

#- 21 AdminGetDSMCConfiguration
samples/cli/sample-apps Session adminGetDSMCConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminGetDSMCConfiguration' test.out

#- 22 AdminSyncDSMCConfiguration
samples/cli/sample-apps Session adminSyncDSMCConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'AdminSyncDSMCConfiguration' test.out

#- 23 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName 'F3O7TguX' \
    --dsPodName 'zrCIlHEs' \
    --fromTime '4R8r4aRC' \
    --gameMode 'F04onsoU' \
    --isPersistent 'OoMqsEqr' \
    --isSoftDeleted 'KT53qO6x' \
    --joinability 'RdDJBbq3' \
    --limit '24' \
    --matchPool 'YRuhCoYK' \
    --memberID 'amfu16Jm' \
    --offset '80' \
    --order 'FdbYSb5l' \
    --orderBy 'Cp73r36Y' \
    --sessionID 'rQKMo2VS' \
    --status 'PtSvcAEU' \
    --statusV2 'MYMPNPRl' \
    --toTime 'I7oobb0e' \
    > test.out 2>&1
eval_tap $? 23 'AdminQueryGameSessions' test.out

#- 24 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"ujWTogqy": {}, "qlPcvgnu": {}, "6sCdE47x": {}}' \
    > test.out 2>&1
eval_tap $? 24 'AdminQueryGameSessionsByAttributes' test.out

#- 25 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["FUyjfCSw", "JYMYaBgL", "jTKaKgKI"]}' \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteBulkGameSessions' test.out

#- 26 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'b0C9jXNe' \
    --body '{"ready": false}' \
    > test.out 2>&1
eval_tap $? 26 'AdminSetDSReady' test.out

#- 27 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'z3FOYrXB' \
    --namespace $AB_NAMESPACE \
    --sessionId 'TAyBI20L' \
    --statusType 'b86F034W' \
    > test.out 2>&1
eval_tap $? 27 'AdminUpdateGameSessionMember' test.out

#- 28 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '80' \
    --order 'uu4UYRn9' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetListNativeSession' test.out

#- 29 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --isSoftDeleted 'b8fDcNxE' \
    --joinability '0z6VGLbf' \
    --key 'zXgqvvqH' \
    --leaderID 'YYLZb3Y8' \
    --limit '36' \
    --memberID 'H9rNHpi3' \
    --memberStatus '6D5vzPuP' \
    --offset '4' \
    --order 'wJGtepPQ' \
    --orderBy 'nxnbgWub' \
    --partyID 'KupqSC43' \
    --value 'oHnZKL4b' \
    > test.out 2>&1
eval_tap $? 29 'AdminQueryParties' test.out

#- 30 AdminGetPlatformCredentials
samples/cli/sample-apps Session adminGetPlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'AdminGetPlatformCredentials' test.out

#- 31 AdminUpdatePlatformCredentials
samples/cli/sample-apps Session adminUpdatePlatformCredentials \
    --namespace $AB_NAMESPACE \
    --body '{"psn": {"clientId": "mpvtaQeu", "clientSecret": "ehia33Tx", "scope": "mWUQAAG9"}}' \
    > test.out 2>&1
eval_tap $? 31 'AdminUpdatePlatformCredentials' test.out

#- 32 AdminDeletePlatformCredentials
samples/cli/sample-apps Session adminDeletePlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'AdminDeletePlatformCredentials' test.out

#- 33 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'FW4S6qQ4' \
    > test.out 2>&1
eval_tap $? 33 'AdminReadSessionStorage' test.out

#- 34 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'wzYx8fm7' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteUserSessionStorage' test.out

#- 35 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'pEVxxPFM' \
    --userId 'jPrLRxKI' \
    > test.out 2>&1
eval_tap $? 35 'AdminReadUserSessionStorage' test.out

#- 36 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'hrozopz4' \
    > test.out 2>&1
eval_tap $? 36 'AdminQueryPlayerAttributes' test.out

#- 37 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId '1gzJFkuH' \
    > test.out 2>&1
eval_tap $? 37 'AdminGetPlayerAttributes' test.out

#- 38 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"XpLZd5jT": {}, "63N3Fq9N": {}, "fYKijHLm": {}}, "autoJoin": false, "backfillTicketID": "5bu7tclq", "clientVersion": "SsAH6RUV", "configurationName": "Twicjxgu", "deployment": "KJerFQBD", "dsSource": "1ASJSpL6", "fallbackClaimKeys": ["arutxCj3", "n1gby2v5", "OKFG8Eo4"], "inactiveTimeout": 78, "inviteTimeout": 7, "joinability": "cnD2anOc", "matchPool": "QpMmy0C2", "maxPlayers": 77, "minPlayers": 8, "preferredClaimKeys": ["xzrFOeuS", "te8qVNUW", "X7FYa0FH"], "requestedRegions": ["qkZvRKqh", "Mn8ubuyC", "HbBAISQG"], "serverName": "5ZJ1D9mE", "teams": [{"UserIDs": ["mMySVDTv", "iqjDsVgw", "pybNuYdk"], "parties": [{"partyID": "SJPAF1V3", "userIDs": ["537Itx5X", "tSW3BRuh", "KSZbfjRh"]}, {"partyID": "TIMINRUJ", "userIDs": ["1GuEkLNp", "SkC0yewi", "ruQr8wJs"]}, {"partyID": "xuBajeX7", "userIDs": ["lfl1ggDT", "fwDI2zq3", "Qf4zdsAf"]}]}, {"UserIDs": ["tcIqaVeH", "eWwiU8nd", "u5Yjz1Dl"], "parties": [{"partyID": "HJiBRHrJ", "userIDs": ["4AfKNifs", "iUkWvmC5", "IiqoxvwP"]}, {"partyID": "nspRLzdl", "userIDs": ["Bluwvquj", "Bj9ninmJ", "5hmGpYXf"]}, {"partyID": "m2Uvr1y3", "userIDs": ["r7ACpqPk", "kVoazUuN", "18mhmpk0"]}]}, {"UserIDs": ["0vt6UAak", "nw0mRepb", "wIeP1KxF"], "parties": [{"partyID": "grTMB3ZP", "userIDs": ["dqoJykxS", "VwfEMznp", "o7EbtJ9f"]}, {"partyID": "Ps0hT699", "userIDs": ["vnIQAM5N", "bW9TZ4AE", "hsW2LyL3"]}, {"partyID": "Y1ifXvLR", "userIDs": ["ya9bmrEQ", "WfTkjhcZ", "ZAOVHF0G"]}]}], "textChat": true, "ticketIDs": ["BBksfDcS", "vW0GyKcZ", "F4J9t3u3"], "tieTeamsSessionLifetime": true, "type": "Ugm50Rof"}' \
    > test.out 2>&1
eval_tap $? 38 'CreateGameSession' test.out

#- 39 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"PU1CwmDQ": {}, "o0wfAiST": {}, "JW3QaiwY": {}}' \
    > test.out 2>&1
eval_tap $? 39 'PublicQueryGameSessionsByAttributes' test.out

#- 40 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "722Dx6lU"}' \
    > test.out 2>&1
eval_tap $? 40 'PublicSessionJoinCode' test.out

#- 41 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName '5sjadyOo' \
    > test.out 2>&1
eval_tap $? 41 'GetGameSessionByPodName' test.out

#- 42 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'wVr0drd1' \
    > test.out 2>&1
eval_tap $? 42 'GetGameSession' test.out

#- 43 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'B2dOzisi' \
    --body '{"attributes": {"ZVo26wpr": {}, "CSzvsFdi": {}, "GJuPyYd0": {}}, "backfillTicketID": "VWBtmtfw", "clientVersion": "WMhlj3TJ", "deployment": "PNMo2Jrv", "fallbackClaimKeys": ["VH7YdMZl", "TjEmX3Rn", "LEf1g5go"], "inactiveTimeout": 12, "inviteTimeout": 96, "joinability": "PS9ceQIY", "matchPool": "nZIjvta8", "maxPlayers": 95, "minPlayers": 15, "preferredClaimKeys": ["LNlmtFnG", "egjjfCF7", "16h8RCOn"], "requestedRegions": ["kaamHReG", "76CvweAq", "dMO8337U"], "teams": [{"UserIDs": ["Qd1yMHkL", "lDK4TpcF", "RUNZA5BT"], "parties": [{"partyID": "WtK2W9SW", "userIDs": ["L6k8LdeN", "HRtekMDU", "yM14Kd0Z"]}, {"partyID": "ZsZXiRuM", "userIDs": ["rdUhFkp4", "iRyBVjF1", "K0QrO31z"]}, {"partyID": "ZYmVqlJp", "userIDs": ["F9lDBXnN", "s8ORa6oo", "ZOF8QrLo"]}]}, {"UserIDs": ["si28Hqwk", "wDBOzBZm", "YBclF84N"], "parties": [{"partyID": "BWhDIpqj", "userIDs": ["FVkT2Or1", "r4X52Dxh", "LY8aQboy"]}, {"partyID": "bi6QLmSc", "userIDs": ["p6cO60V4", "bm3jS6rn", "6O7TAC7B"]}, {"partyID": "B3lci42u", "userIDs": ["Dm2oRRiJ", "Ut8SqrXd", "iEaPvYEH"]}]}, {"UserIDs": ["jRcCT3Zk", "xBxLHQMQ", "wTKAwXTb"], "parties": [{"partyID": "bhfxsZnH", "userIDs": ["5Wt9l79H", "9LD6Ks6H", "H0fSK6Cz"]}, {"partyID": "mZCZTziy", "userIDs": ["15xIhZKr", "9kOHRzH3", "0Mwe8Qjt"]}, {"partyID": "39KrONjj", "userIDs": ["yZWRH0d5", "YI441ojz", "F6VMatFf"]}]}], "ticketIDs": ["StBa28wQ", "WepQHad4", "2JnDzuQy"], "tieTeamsSessionLifetime": true, "type": "MtdcUqZJ", "version": 89}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateGameSession' test.out

#- 44 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'CgSkDqDQ' \
    > test.out 2>&1
eval_tap $? 44 'DeleteGameSession' test.out

#- 45 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '9SE0ixvh' \
    --body '{"attributes": {"yvNXoFdE": {}, "xYq1v8I4": {}, "BACleHJg": {}}, "backfillTicketID": "kXSOy7Ek", "clientVersion": "eGGNpbfw", "deployment": "a6tLiJg4", "fallbackClaimKeys": ["7cczpQ2j", "icHqq8u2", "R7WQK2ux"], "inactiveTimeout": 70, "inviteTimeout": 12, "joinability": "LES3R2eu", "matchPool": "4j9OUsgx", "maxPlayers": 64, "minPlayers": 41, "preferredClaimKeys": ["uak5Tafw", "vQVEs2mV", "38Tc4OG7"], "requestedRegions": ["ncvNhjjY", "qfOHhHDq", "NAvg9vFk"], "teams": [{"UserIDs": ["NhxSUygv", "R271aakB", "E4nj8gzf"], "parties": [{"partyID": "QfBE5OtX", "userIDs": ["zs6RPbGY", "r83wn8eK", "XUP1c3X9"]}, {"partyID": "6CiVP9St", "userIDs": ["LqVWYkOK", "zuyNXk7w", "deXZJCyC"]}, {"partyID": "ZO8vT4xV", "userIDs": ["H5hAiIll", "sziu78fd", "Iz0IcIRd"]}]}, {"UserIDs": ["xRrRFHp5", "R0WDpMEv", "N55FnMz6"], "parties": [{"partyID": "IHcqa0jm", "userIDs": ["h0jurrfD", "MR8HPOSu", "fR1eaW37"]}, {"partyID": "octtjNNs", "userIDs": ["aQuvKZu3", "h5itDstT", "pBwreMJ8"]}, {"partyID": "Z4z2icjo", "userIDs": ["AzYGNG1Q", "SDNLHTCf", "bmMP0ZB3"]}]}, {"UserIDs": ["cOaN4ieq", "GcgOi6tM", "nTBoYzFr"], "parties": [{"partyID": "nhn0lwkU", "userIDs": ["5FKNkd0e", "0K3RSSL0", "PGZhv2JN"]}, {"partyID": "rPdil39d", "userIDs": ["7aQKbU4u", "eI4GtR2I", "onyg3oT7"]}, {"partyID": "IfcEt3n6", "userIDs": ["xfqScP6n", "8ngMtKwv", "GLxduO7N"]}]}], "ticketIDs": ["g12nLP43", "ELhWUuyD", "q3gnzKLV"], "tieTeamsSessionLifetime": false, "type": "5VHUl7NK", "version": 12}' \
    > test.out 2>&1
eval_tap $? 45 'PatchUpdateGameSession' test.out

#- 46 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'lOnhX7Ol' \
    --body '{"backfillTicketID": "n88KIOhg"}' \
    > test.out 2>&1
eval_tap $? 46 'UpdateGameSessionBackfillTicketID' test.out

#- 47 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'wnUjwriD' \
    > test.out 2>&1
eval_tap $? 47 'GameSessionGenerateCode' test.out

#- 48 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'V8qMEocJ' \
    > test.out 2>&1
eval_tap $? 48 'PublicRevokeGameSessionCode' test.out

#- 49 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'rVAmc8XT' \
    --body '{"platformID": "vbJifcdF", "userID": "toMk1yeD"}' \
    > test.out 2>&1
eval_tap $? 49 'PublicGameSessionInvite' test.out

#- 50 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'mMa2T9r4' \
    > test.out 2>&1
eval_tap $? 50 'JoinGameSession' test.out

#- 51 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'eEtbFtcY' \
    --body '{"leaderID": "NYTUxldQ"}' \
    > test.out 2>&1
eval_tap $? 51 'PublicPromoteGameSessionLeader' test.out

#- 52 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'usRA4F8q' \
    > test.out 2>&1
eval_tap $? 52 'LeaveGameSession' test.out

#- 53 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'lU8KlFhW' \
    > test.out 2>&1
eval_tap $? 53 'PublicGameSessionReject' test.out

#- 54 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId 'xn0mYxcg' \
    > test.out 2>&1
eval_tap $? 54 'GetSessionServerSecret' test.out

#- 55 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'gl1gVFnp' \
    --body '{"additionalMembers": [{"partyID": "bA3bhtmr", "userIDs": ["R5ieU4pb", "fM4OVjtU", "GIyibxr9"]}, {"partyID": "pqMeHATB", "userIDs": ["W39eehQR", "49JvX9De", "BDWuou39"]}, {"partyID": "8jPeiCdw", "userIDs": ["YABEeOa1", "KF34qBpj", "BI7PoQnN"]}], "proposedTeams": [{"UserIDs": ["adQcKCy6", "P0zPPgcE", "Xsp93Qrb"], "parties": [{"partyID": "GHCtXIbY", "userIDs": ["E9XkraXO", "KghaKzy8", "ynPykDZl"]}, {"partyID": "rbBCweBi", "userIDs": ["O0KLXAU8", "Fs9iiZSK", "bmHURyT5"]}, {"partyID": "QDoERseH", "userIDs": ["1aB01PVX", "r1HagHq8", "bi8oBOcc"]}]}, {"UserIDs": ["6Z94gVGf", "M9IzzhFG", "2i9O8Rqh"], "parties": [{"partyID": "VaQAFPnj", "userIDs": ["AvJfUgbc", "z6fSpHSn", "XNlkgxJc"]}, {"partyID": "hGDLaCgH", "userIDs": ["oR0zhX9c", "acwvvC54", "LPuiU3KQ"]}, {"partyID": "dxinTQN9", "userIDs": ["gH998pgX", "C3Yv0Xpy", "rrQbavIx"]}]}, {"UserIDs": ["bbAmEF1c", "favtY02R", "GEmAzPms"], "parties": [{"partyID": "JZyukHTc", "userIDs": ["pVUi762I", "eqxI75et", "s8njtkw9"]}, {"partyID": "Q0y1IrJp", "userIDs": ["w4jMvcpj", "0evk0xzy", "q5AhKoTb"]}, {"partyID": "JSQF1fgo", "userIDs": ["knIoIEZc", "d7RK7mcG", "OO3oOfBo"]}]}], "version": 94}' \
    > test.out 2>&1
eval_tap $? 55 'AppendTeamGameSession' test.out

#- 56 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "WCq6uBf4"}' \
    > test.out 2>&1
eval_tap $? 56 'PublicPartyJoinCode' test.out

#- 57 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'ge4igul8' \
    > test.out 2>&1
eval_tap $? 57 'PublicGetParty' test.out

#- 58 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'Qk1nC7tb' \
    --body '{"attributes": {"4NNmV6WX": {}, "IHbcibQr": {}, "TKJAhQYd": {}}, "inactiveTimeout": 99, "inviteTimeout": 7, "joinability": "1IfS9shj", "maxPlayers": 25, "minPlayers": 56, "type": "ccZaKRiC", "version": 0}' \
    > test.out 2>&1
eval_tap $? 58 'PublicUpdateParty' test.out

#- 59 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'fjf3OW91' \
    --body '{"attributes": {"F32z91X2": {}, "1D5GyTH6": {}, "tFBCvc2Z": {}}, "inactiveTimeout": 81, "inviteTimeout": 2, "joinability": "AVGulfoO", "maxPlayers": 76, "minPlayers": 16, "type": "ORQDwgSo", "version": 20}' \
    > test.out 2>&1
eval_tap $? 59 'PublicPatchUpdateParty' test.out

#- 60 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'pH7LQRZD' \
    > test.out 2>&1
eval_tap $? 60 'PublicGeneratePartyCode' test.out

#- 61 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'DxisN2QW' \
    > test.out 2>&1
eval_tap $? 61 'PublicRevokePartyCode' test.out

#- 62 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'Vzy0zfSQ' \
    --body '{"platformID": "U8r2mbZ6", "userID": "pCHxFg1Q"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicPartyInvite' test.out

#- 63 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId '8taz47vW' \
    --body '{"leaderID": "WTLOz9Bp"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicPromotePartyLeader' test.out

#- 64 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'IUldKyE0' \
    > test.out 2>&1
eval_tap $? 64 'PublicPartyJoin' test.out

#- 65 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'wTjDXCTG' \
    > test.out 2>&1
eval_tap $? 65 'PublicPartyLeave' test.out

#- 66 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'Wnr8PqQD' \
    > test.out 2>&1
eval_tap $? 66 'PublicPartyReject' test.out

#- 67 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'F5bFpt0L' \
    --userId 'RgqcOZtk' \
    > test.out 2>&1
eval_tap $? 67 'PublicPartyKick' test.out

#- 68 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"5KLdqTyi": {}, "AMYnxqCB": {}, "5molWLx2": {}}, "configurationName": "kctvDZUo", "inactiveTimeout": 63, "inviteTimeout": 4, "joinability": "eihePA83", "maxPlayers": 95, "members": [{"ID": "u5A1OUhA", "PlatformID": "hTpi6iNe", "PlatformUserID": "YouKttrY"}, {"ID": "yodtIwrQ", "PlatformID": "B7W2raLF", "PlatformUserID": "zuLgUgD2"}, {"ID": "OtzFlNxD", "PlatformID": "6Y2OIbJb", "PlatformUserID": "l5T4v81I"}], "minPlayers": 46, "textChat": false, "type": "IM2VXKal"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicCreateParty' test.out

#- 69 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --userId 'FGcMsA77' \
    > test.out 2>&1
eval_tap $? 69 'PublicGetRecentPlayer' test.out

#- 70 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 's3gWiD5a' \
    --body '{"SX7VpjiQ": {}, "YiIL8p9d": {}, "3SfJV4DE": {}}' \
    > test.out 2>&1
eval_tap $? 70 'PublicUpdateInsertSessionStorageLeader' test.out

#- 71 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'uT9IOvtn' \
    --userId 'iSeZ2zay' \
    --body '{"vYEUhDve": {}, "4BAXfuh0": {}, "lUBK3LbJ": {}}' \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdateInsertSessionStorage' test.out

#- 72 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["hY1OPjep", "7bMHiAa1", "jyIewTsC"]}' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 73 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 73 'PublicGetPlayerAttributes' test.out

#- 74 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": true, "currentPlatform": "KoopvYy4", "data": {"0Bes7JGR": {}, "XvwCMHT5": {}, "VFiOtEOw": {}}, "platforms": [{"name": "2T2xOIti", "userID": "e023TXHN"}, {"name": "uOVNI7mm", "userID": "SYe9XAw4"}, {"name": "P43htK6g", "userID": "aXZ22Bhy"}], "roles": ["Y0dZG4My", "D3MCeytv", "YCZC4tYK"]}' \
    > test.out 2>&1
eval_tap $? 74 'PublicStorePlayerAttributes' test.out

#- 75 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 75 'PublicDeletePlayerAttributes' test.out

#- 76 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order '9jREzzMx' \
    --orderBy 'ILp8CcL3' \
    --status 'wc5NSKnN' \
    > test.out 2>&1
eval_tap $? 76 'PublicQueryMyGameSessions' test.out

#- 77 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'ccDlGLw5' \
    --orderBy 'j5ipHjoV' \
    --status 'icMeMuk1' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE