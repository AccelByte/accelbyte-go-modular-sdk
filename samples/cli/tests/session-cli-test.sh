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
    --body '{"metricExcludedNamespaces": ["uvU0VKF0", "DPOvmkAI", "dx4vcxqY"], "regionRetryMapping": {"HaKNXE4C": ["kKLC08HY", "zo63WMe5", "Jj8DK62g"], "1kkybwQ3": ["ptW7o8AJ", "vLsd0mgT", "z2rAHsKi"], "96T4jhVE": ["YQBuTdt9", "Znu1WDEw", "tHO9bFNb"]}, "regionURLMapping": ["QvkQp3Rg", "izrplntm", "iU3qxZZr"], "testGameMode": "SXwmxmnZ", "testRegionURLMapping": ["Mo2WnHkM", "wjDW1i6h", "KhakusqQ"], "testTargetUserIDs": ["1NX3V6XJ", "DouY2fQ7", "g0QHceWI"]}' \
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
    --body '{"durationDays": 19}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationAlertV1' test.out

#- 13 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 29}' \
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
    --body '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["UPDATE_INVITABLE_USER_TYPE", "UPDATE_JOINABLE_USER_TYPE", "PROMOTE_TO_LEADER"], "PSNServiceLabel": 9, "PSNSupportedPlatforms": ["zpHoiZxY", "ESSMoJUL", "LlwmeA4A"], "SessionTitle": "1vzUnP4j", "ShouldSync": false, "XboxAllowCrossPlatform": true, "XboxSandboxID": "hvJUkG6r", "XboxServiceConfigID": "yjsM9S9d", "XboxSessionTemplateName": "hivwB6NX", "XboxTitleID": "EIq4469m", "localizedSessionName": {"zJUONRuo": {}, "Q0SQCcRK": {}, "eSPEFPJX": {}}}, "PSNBaseUrl": "0hpvKn7i", "amsClaimTimeoutMinutes": 58, "appName": "XxybS1AN", "asyncProcessDSRequest": {"async": true, "timeout": 39}, "attributes": {"N1m8DmW5": {}, "eeSAWQwg": {}, "y7BD2UwZ": {}}, "autoJoin": true, "autoLeaveSession": true, "clientVersion": "Rj59pksx", "customURLGRPC": "f6i2YazW", "deployment": "KYa5VN93", "disableCodeGeneration": true, "disableResendInvite": false, "dsManualSetReady": true, "dsSource": "1lYdCDW0", "enableSecret": false, "fallbackClaimKeys": ["OFpv2IY3", "HBQOkn2Z", "evK8QzTN"], "grpcSessionConfig": {"appName": "taZ0WiAq", "customURL": "DgceyQZy", "functionFlag": 72}, "immutableStorage": true, "inactiveTimeout": 26, "inviteTimeout": 98, "joinability": "FxqPy9nq", "leaderElectionGracePeriod": 86, "manualRejoin": false, "maxActiveSessions": 78, "maxPlayers": 16, "minPlayers": 21, "name": "s5f96BLO", "persistent": false, "preferredClaimKeys": ["vHAx6dt6", "T1O4Surj", "6inqVNFF"], "requestedRegions": ["W8d9XQbq", "OhEwUO8H", "kRYi4N5e"], "textChat": true, "textChatMode": "NONE", "tieTeamsSessionLifetime": true, "ttlHours": 75, "type": "1cb6fdFq"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateConfigurationTemplateV1' test.out

#- 17 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --name 'lzfhJBsr' \
    --offset '21' \
    --order '9Hfakrpv' \
    --orderBy 'Afq8UKxs' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetAllConfigurationTemplatesV1' test.out

#- 18 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name '2wi6xgAo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigurationTemplateV1' test.out

#- 19 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'stGiBar4' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["PROMOTE_TO_LEADER", "UPDATE_JOINABLE_USER_TYPE", "UPDATE_JOINABLE_USER_TYPE"], "PSNServiceLabel": 6, "PSNSupportedPlatforms": ["AriKMbvQ", "U54frHlP", "mDP0nHJm"], "SessionTitle": "dEqCagYh", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "ycZIyQmc", "XboxServiceConfigID": "8aDSyHTl", "XboxSessionTemplateName": "OElcog6Y", "XboxTitleID": "cZOByQ0V", "localizedSessionName": {"T3mOCUZK": {}, "DOaqXS5b": {}, "n5c2EsT6": {}}}, "PSNBaseUrl": "NPPdc1MV", "amsClaimTimeoutMinutes": 16, "appName": "ASYBPdRk", "asyncProcessDSRequest": {"async": true, "timeout": 22}, "attributes": {"iS7lxBF9": {}, "KQwAvB55": {}, "Ris5WDEl": {}}, "autoJoin": true, "autoLeaveSession": true, "clientVersion": "CgUDPBYy", "customURLGRPC": "t8YSwyBk", "deployment": "yJeTrfuF", "disableCodeGeneration": false, "disableResendInvite": false, "dsManualSetReady": true, "dsSource": "sRisvCUm", "enableSecret": false, "fallbackClaimKeys": ["mibAznBq", "FpNkO58S", "KZuafcxb"], "grpcSessionConfig": {"appName": "N4VT8Is7", "customURL": "946c2kyO", "functionFlag": 80}, "immutableStorage": true, "inactiveTimeout": 53, "inviteTimeout": 92, "joinability": "zpR76TVq", "leaderElectionGracePeriod": 46, "manualRejoin": true, "maxActiveSessions": 46, "maxPlayers": 39, "minPlayers": 97, "name": "XdQsYhJ0", "persistent": true, "preferredClaimKeys": ["EUuiusP4", "4RaDeSwK", "pA1tt5iE"], "requestedRegions": ["MprFF88J", "A9KgNuuW", "gH6w3asy"], "textChat": true, "textChatMode": "GAME", "tieTeamsSessionLifetime": true, "ttlHours": 52, "type": "JphOFE7s"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'OTqGMmqt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 'SGKylOHT' \
    --namespace $AB_NAMESPACE \
    --userId 'rqN3uI9x' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'RIS8cgvP' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "6RbEm6Al"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminReconcileMaxActiveSession' test.out

#- 23 AdminGetDSMCConfiguration
eval_tap 0 23 'AdminGetDSMCConfiguration # SKIP deprecated' test.out

#- 24 AdminSyncDSMCConfiguration
eval_tap 0 24 'AdminSyncDSMCConfiguration # SKIP deprecated' test.out

#- 25 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName 'j0cj9qEP' \
    --dsPodName '7BqTV4AN' \
    --fromTime '7x9uHcZb' \
    --gameMode 'Kw2lLv48' \
    --isPersistent 'K7Cl1tBQ' \
    --isSoftDeleted '7mmOr16e' \
    --joinability 'JCfZHiui' \
    --limit '67' \
    --matchPool 'PnWCF1bd' \
    --memberID 'OCuHbltU' \
    --offset '86' \
    --order 'wtmY2Ewf' \
    --orderBy 'YXb1kcuL' \
    --sessionID 'HA09eyUd' \
    --status 'BKeY3JoC' \
    --statusV2 'm8QoC4y4' \
    --toTime 'lGSVOlee' \
    > test.out 2>&1
eval_tap $? 25 'AdminQueryGameSessions' test.out

#- 26 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"fZjeToAc": {}, "ZqniWTtx": {}, "6AXcgRyg": {}}' \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["lLKeoXmf", "FB3o0amP", "1LsMXs7i"]}' \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'kIyQFCgz' \
    --body '{"ready": true}' \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminUpdateDSInformation
samples/cli/sample-apps Session adminUpdateDSInformation \
    --namespace $AB_NAMESPACE \
    --sessionId 'kvL9MSAx' \
    --body '{"createdRegion": "Ftgx5Bkq", "deployment": "CNXyFipX", "description": "tbuKA4qh", "ip": "aZBad6IG", "port": 43, "region": "pZyIEixt", "serverId": "WxYP7JLf", "source": "U5qtgl7A", "status": "puqgQtp0"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateDSInformation' test.out

#- 30 AdminKickGameSessionMember
samples/cli/sample-apps Session adminKickGameSessionMember \
    --memberId 'W5RceKfS' \
    --namespace $AB_NAMESPACE \
    --sessionId '6komJCGS' \
    > test.out 2>&1
eval_tap $? 30 'AdminKickGameSessionMember' test.out

#- 31 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 's9lGksdG' \
    --namespace $AB_NAMESPACE \
    --sessionId 'WklJrAJn' \
    --statusType 'x49y9suX' \
    > test.out 2>&1
eval_tap $? 31 'AdminUpdateGameSessionMember' test.out

#- 32 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '50' \
    --order 'he1awpzQ' \
    > test.out 2>&1
eval_tap $? 32 'AdminGetListNativeSession' test.out

#- 33 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --fromTime 'gDEAS6hf' \
    --isSoftDeleted 'q1hq7lqL' \
    --joinability 'PpwONzJP' \
    --key 'UHU8yt68' \
    --leaderID 'ZnwMiXDv' \
    --limit '45' \
    --memberID 'w5WsDtFp' \
    --memberStatus 'F3DxU6ri' \
    --offset '91' \
    --order '89Ib8bHx' \
    --orderBy '9d56PGXe' \
    --partyID 'zjaE0mWa' \
    --toTime 'iavP42ce' \
    --value 'dlKtSLXE' \
    > test.out 2>&1
eval_tap $? 33 'AdminQueryParties' test.out

#- 34 AdminDeleteBulkParties
samples/cli/sample-apps Session adminDeleteBulkParties \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["shcfGVLO", "e1wzu78O", "poRxstlD"]}' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteBulkParties' test.out

#- 35 AdminReadPartySessionStorage
samples/cli/sample-apps Session adminReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId 'RWDpIFDb' \
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
    --body '{"psn": {"clientId": "C5AI6hj6", "clientSecret": "Ye5XUr2P", "scope": "lN8bMmGX"}}' \
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
    --limit '28' \
    --userId 'cI3cmxzt' \
    > test.out 2>&1
eval_tap $? 41 'AdminGetRecentPlayer' test.out

#- 42 AdminGetRecentTeamPlayer
samples/cli/sample-apps Session adminGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --userId 'iaeQk3Ru' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetRecentTeamPlayer' test.out

#- 43 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'POPGT5Ii' \
    > test.out 2>&1
eval_tap $? 43 'AdminReadSessionStorage' test.out

#- 44 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'JpWn4USD' \
    > test.out 2>&1
eval_tap $? 44 'AdminDeleteUserSessionStorage' test.out

#- 45 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'Mrie1mLM' \
    --userId 'hg19Vhwe' \
    > test.out 2>&1
eval_tap $? 45 'AdminReadUserSessionStorage' test.out

#- 46 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'tv1QCzyQ' \
    > test.out 2>&1
eval_tap $? 46 'AdminQueryPlayerAttributes' test.out

#- 47 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'N5yvJupp' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetPlayerAttributes' test.out

#- 48 AdminSyncNativeSession
samples/cli/sample-apps Session adminSyncNativeSession \
    --namespace $AB_NAMESPACE \
    --userId 'UfZkbvwk' \
    > test.out 2>&1
eval_tap $? 48 'AdminSyncNativeSession' test.out

#- 49 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --resolveMaxActiveSession 'false' \
    --body '{"appName": "QKtExGNB", "attributes": {"o8ywaUcD": {}, "vId4OeuR": {}, "w3sZTisL": {}}, "autoJoin": false, "backfillTicketID": "UhSNaZie", "clientVersion": "9LxxaHQb", "configurationName": "AcJKpXnj", "customURLGRPC": "SlmqereH", "deployment": "V8e3AEFl", "dsSource": "rhPSEk49", "fallbackClaimKeys": ["vDUbkrzK", "H3L6niUS", "V3QCw1gn"], "inactiveTimeout": 61, "inviteTimeout": 84, "joinability": "VCZ6M1Tm", "matchPool": "6w5jdatD", "maxPlayers": 99, "minPlayers": 64, "preferredClaimKeys": ["3pSJdZJf", "9BTHIQaQ", "0hExXVpn"], "requestedRegions": ["pmvsk3AE", "pKTT6e3h", "HqNjMcED"], "serverName": "S1iz9NN9", "storage": {"leader": {"04HhhAvP": {}, "CKTcUVtY": {}, "DhGDYmYC": {}}}, "teams": [{"parties": [{"partyID": "peB3P55d", "userIDs": ["emGZOSvX", "qeaFJQC9", "CqQejPOY"]}, {"partyID": "FTRDhXMN", "userIDs": ["7mkhBoTB", "IUKQmKYl", "O5cdMHXT"]}, {"partyID": "WFLbf6RW", "userIDs": ["N3ajvq8v", "cMvBvRFr", "8kuFQ4UA"]}], "teamID": "mOBshdk4", "userIDs": ["NsFnUwUu", "Dljs7crj", "rJwlUxO4"]}, {"parties": [{"partyID": "Cwj3ko5L", "userIDs": ["UNNWmMJR", "iyTJUb8V", "3ZuW3JUL"]}, {"partyID": "K7ODptnu", "userIDs": ["CohUTFeH", "as5SULEX", "UhURMwng"]}, {"partyID": "6tyvfbIK", "userIDs": ["s6vdBntm", "wfHRAmYj", "IIybXYh4"]}], "teamID": "GvDBLHvx", "userIDs": ["he47Qh2j", "gX6o4VP3", "69ZcIMOi"]}, {"parties": [{"partyID": "YJi6ggCV", "userIDs": ["qG7oTR2Q", "KvNNvq1k", "D6s1rQ38"]}, {"partyID": "qJeyj8fH", "userIDs": ["H752qRze", "qJ9UHSd1", "W2fBHkcw"]}, {"partyID": "FbqEGafR", "userIDs": ["PhTYEtPm", "pu6fQQGi", "1F2Ogv94"]}], "teamID": "MmKokfC1", "userIDs": ["jQjPDn5u", "AJlOm4Si", "pTO95pId"]}], "textChat": true, "textChatMode": "TEAM", "ticketIDs": ["8rJXN4yE", "NBmxwCOM", "2kqLj5PO"], "tieTeamsSessionLifetime": false, "type": "u1U1rpmE"}' \
    > test.out 2>&1
eval_tap $? 49 'CreateGameSession' test.out

#- 50 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"U1v9cAHj": {}, "3ZIfRiWt": {}, "e4m9GV9f": {}}' \
    > test.out 2>&1
eval_tap $? 50 'PublicQueryGameSessionsByAttributes' test.out

#- 51 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "4rfxCUCx"}' \
    > test.out 2>&1
eval_tap $? 51 'PublicSessionJoinCode' test.out

#- 52 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'dbPzdG4D' \
    > test.out 2>&1
eval_tap $? 52 'GetGameSessionByPodName' test.out

#- 53 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'rrOUX9cT' \
    > test.out 2>&1
eval_tap $? 53 'GetGameSession' test.out

#- 54 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'm72kBwD4' \
    --body '{"attributes": {"F9PCZ8Hy": {}, "1xeL8w7r": {}, "vNxmKlub": {}}, "backfillTicketID": "NmybPhnz", "clientVersion": "75eaz9Wl", "deployment": "Oawxfe8F", "fallbackClaimKeys": ["Ou4VCXEj", "wHiTs3UP", "0Y3fRgvw"], "inactiveTimeout": 73, "inviteTimeout": 49, "joinability": "uDu4qkwL", "matchPool": "WngwEpox", "maxPlayers": 69, "minPlayers": 26, "preferredClaimKeys": ["X7r2bsaJ", "61l5Ism5", "YiaU8fFR"], "requestedRegions": ["55aDcQR7", "TXlH3rca", "5SCzoIji"], "teams": [{"parties": [{"partyID": "umxgc8FZ", "userIDs": ["PxBsVdI7", "l8OEpL4C", "UMkg5i8V"]}, {"partyID": "pJSOSaMI", "userIDs": ["njpVZ9HA", "YjqwvsDx", "PYmYS2Gz"]}, {"partyID": "3kR10P2A", "userIDs": ["OmPzVYAl", "Veyi6H7M", "e8Wi00tK"]}], "teamID": "zPFaEfvN", "userIDs": ["s89gtuKL", "GFK9rfgc", "ogqF6WYk"]}, {"parties": [{"partyID": "VJb3rboL", "userIDs": ["bFIbf44r", "Ph8BumGW", "ICK3XvAE"]}, {"partyID": "2w76KIhk", "userIDs": ["iPh4AHGX", "5JOjuGSb", "6wBjfmtu"]}, {"partyID": "uKQ7VsG5", "userIDs": ["AP8sqHmb", "GDQjkku5", "Z9idF5h7"]}], "teamID": "KKq6nndN", "userIDs": ["0b7pzOn1", "gKhKkV30", "smQxrQgQ"]}, {"parties": [{"partyID": "959fHlDP", "userIDs": ["jEILuTIg", "egftmRIW", "LQkGoxzb"]}, {"partyID": "NbdQPpzc", "userIDs": ["qeYRLYgq", "zb16UOAl", "iWeAb7KD"]}, {"partyID": "TN0JANMc", "userIDs": ["nZGna9ol", "5V8vVcr8", "JfpEfIwt"]}], "teamID": "R2QQWRKD", "userIDs": ["E0hpVt21", "pgUby8Sk", "ofsPkBal"]}], "ticketIDs": ["eo9FJDhB", "jktL6Eiy", "26xB1G4D"], "tieTeamsSessionLifetime": true, "type": "LV5cYDEA", "version": 36}' \
    > test.out 2>&1
eval_tap $? 54 'UpdateGameSession' test.out

#- 55 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '5oNoYr54' \
    > test.out 2>&1
eval_tap $? 55 'DeleteGameSession' test.out

#- 56 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'HI47Lb6C' \
    --body '{"attributes": {"S0XeqP6U": {}, "ZyUuBIAm": {}, "9jb5Zaia": {}}, "backfillTicketID": "mDguJckS", "clientVersion": "ABpZ5wr6", "deployment": "pcGJCv7M", "fallbackClaimKeys": ["NOxclOMQ", "Wg7KoeSL", "QLUtvyTL"], "inactiveTimeout": 45, "inviteTimeout": 17, "joinability": "RXXVeErC", "matchPool": "4CxBfo3B", "maxPlayers": 29, "minPlayers": 16, "preferredClaimKeys": ["2cWwVlOO", "non0DoZ0", "g9HwH2lY"], "requestedRegions": ["YU8EMK5b", "mQnvcUQb", "Jx0Q4P5W"], "teams": [{"parties": [{"partyID": "YmLNOOSJ", "userIDs": ["ZBftRpyk", "RiBwMf2l", "nYCCblTp"]}, {"partyID": "Su1Xrfr6", "userIDs": ["W3zVAsxh", "iMqp3L4M", "k6rnGows"]}, {"partyID": "klTo7po8", "userIDs": ["yFHIpB7Y", "c6lzFmJU", "Ma3poa6f"]}], "teamID": "cpnnXnEs", "userIDs": ["q46l53Np", "vJUiNuSq", "FofDLz4S"]}, {"parties": [{"partyID": "4Snh8HLk", "userIDs": ["PfnEHSRa", "83snjM77", "nsLc0Wzp"]}, {"partyID": "wUS7CWJN", "userIDs": ["wmwvjy8F", "QUNrWrTx", "14DptfuO"]}, {"partyID": "U6e1Onkq", "userIDs": ["AMFhJair", "NkbuZtez", "KvDi8Huf"]}], "teamID": "cmnqj4j7", "userIDs": ["GscYLkLV", "w3PQk1Md", "PyYUyq1h"]}, {"parties": [{"partyID": "tCmgvAcv", "userIDs": ["Y6KtZwvN", "i5eCWiY2", "p5E0cwqb"]}, {"partyID": "N1X8hHk2", "userIDs": ["6cpnFGPM", "yDXwnsDi", "CvsFTUzP"]}, {"partyID": "PxuWLQT8", "userIDs": ["5Rbg767o", "VhfA39ve", "gmzWzz3r"]}], "teamID": "hxT7UFZY", "userIDs": ["pWTpeQoX", "icZGWn3f", "ecG2qtZK"]}], "ticketIDs": ["vIJ9fpsN", "JyVfUOHN", "j2uqJhei"], "tieTeamsSessionLifetime": false, "type": "xiRPXpAO", "version": 64}' \
    > test.out 2>&1
eval_tap $? 56 'PatchUpdateGameSession' test.out

#- 57 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'fkTfykb5' \
    --body '{"backfillTicketID": "aM1zOTt6"}' \
    > test.out 2>&1
eval_tap $? 57 'UpdateGameSessionBackfillTicketID' test.out

#- 58 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'VwsGJyKY' \
    > test.out 2>&1
eval_tap $? 58 'GameSessionGenerateCode' test.out

#- 59 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'QAOCnDoY' \
    > test.out 2>&1
eval_tap $? 59 'PublicRevokeGameSessionCode' test.out

#- 60 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'g55mcEqZ' \
    --body '{"metadata": {"POkv1yhO": "CZRMhcb2", "ecONYX9z": "IX4Q6Deg", "JZ9nywx7": "HDqP0jB7"}, "platformID": "6r1SfYhs", "userID": "QO63HDoB"}' \
    > test.out 2>&1
eval_tap $? 60 'PublicGameSessionInvite' test.out

#- 61 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'fYUv9JqW' \
    > test.out 2>&1
eval_tap $? 61 'JoinGameSession' test.out

#- 62 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId '4MtS0igR' \
    --body '{"leaderID": "c7COgGk5"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicPromoteGameSessionLeader' test.out

#- 63 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'L6j5ql3h' \
    > test.out 2>&1
eval_tap $? 63 'LeaveGameSession' test.out

#- 64 PublicKickGameSessionMember
samples/cli/sample-apps Session publicKickGameSessionMember \
    --memberId '4QGb8MMS' \
    --namespace $AB_NAMESPACE \
    --sessionId '61u4ZCPx' \
    > test.out 2>&1
eval_tap $? 64 'PublicKickGameSessionMember' test.out

#- 65 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'ORqxE27l' \
    > test.out 2>&1
eval_tap $? 65 'PublicGameSessionReject' test.out

#- 66 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId 'YYgwjnAr' \
    > test.out 2>&1
eval_tap $? 66 'GetSessionServerSecret' test.out

#- 67 AppendTeamGameSession
eval_tap 0 67 'AppendTeamGameSession # SKIP deprecated' test.out

#- 68 PublicGameSessionCancel
samples/cli/sample-apps Session publicGameSessionCancel \
    --namespace $AB_NAMESPACE \
    --sessionId 'lPBj4muR' \
    --userId 'Afklxd4s' \
    > test.out 2>&1
eval_tap $? 68 'PublicGameSessionCancel' test.out

#- 69 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "vsHuSyxG"}' \
    > test.out 2>&1
eval_tap $? 69 'PublicPartyJoinCode' test.out

#- 70 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'uoHxJoB8' \
    > test.out 2>&1
eval_tap $? 70 'PublicGetParty' test.out

#- 71 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'ScqegWbD' \
    --body '{"attributes": {"A7NZh6I3": {}, "S1AVe5Rh": {}, "J2S2ZJ5d": {}}, "inactiveTimeout": 44, "inviteTimeout": 25, "joinability": "PzaGdAQc", "maxPlayers": 60, "minPlayers": 85, "type": "mH8uVn3Z", "version": 33}' \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdateParty' test.out

#- 72 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId '75FuKDI5' \
    --body '{"attributes": {"OLSlvPaz": {}, "P0aXLVvl": {}, "t8whyzlI": {}}, "inactiveTimeout": 17, "inviteTimeout": 54, "joinability": "QbQtFblx", "maxPlayers": 50, "minPlayers": 57, "type": "ZIV9NBcy", "version": 43}' \
    > test.out 2>&1
eval_tap $? 72 'PublicPatchUpdateParty' test.out

#- 73 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'F5eJy2LA' \
    > test.out 2>&1
eval_tap $? 73 'PublicGeneratePartyCode' test.out

#- 74 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'wJeAXePN' \
    > test.out 2>&1
eval_tap $? 74 'PublicRevokePartyCode' test.out

#- 75 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'ZYkPDD4C' \
    --body '{"metadata": {"GchcrIuB": "fD6MWu1U", "QJVdS9mT": "7VmUhJLU", "rforXv19": "9tQ4D21Y"}, "platformID": "dVZvFpAd", "userID": "GQQ5ylJR"}' \
    > test.out 2>&1
eval_tap $? 75 'PublicPartyInvite' test.out

#- 76 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId '4yiR2NL3' \
    --body '{"leaderID": "SUlu4xJC"}' \
    > test.out 2>&1
eval_tap $? 76 'PublicPromotePartyLeader' test.out

#- 77 PublicReadPartySessionStorage
samples/cli/sample-apps Session publicReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId 'pF7oheQ1' \
    > test.out 2>&1
eval_tap $? 77 'PublicReadPartySessionStorage' test.out

#- 78 PublicUpdateInsertPartySessionStorageReserved
samples/cli/sample-apps Session publicUpdateInsertPartySessionStorageReserved \
    --namespace $AB_NAMESPACE \
    --partyId '2b2QWrPo' \
    --userId 'Ui5JOVjl' \
    --body '{"1lUuhDKR": {}, "oxBpfshl": {}, "HRRoDcfU": {}}' \
    > test.out 2>&1
eval_tap $? 78 'PublicUpdateInsertPartySessionStorageReserved' test.out

#- 79 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'YkcQ7ooY' \
    > test.out 2>&1
eval_tap $? 79 'PublicPartyJoin' test.out

#- 80 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'edSDgOTF' \
    > test.out 2>&1
eval_tap $? 80 'PublicPartyLeave' test.out

#- 81 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'HB7sNxOT' \
    > test.out 2>&1
eval_tap $? 81 'PublicPartyReject' test.out

#- 82 PublicPartyCancel
samples/cli/sample-apps Session publicPartyCancel \
    --namespace $AB_NAMESPACE \
    --partyId 'asvzLj5d' \
    --userId 'puS6L1Xi' \
    > test.out 2>&1
eval_tap $? 82 'PublicPartyCancel' test.out

#- 83 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'TkGqhdBz' \
    --userId 'zfvTcNqd' \
    > test.out 2>&1
eval_tap $? 83 'PublicPartyKick' test.out

#- 84 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"3OsFqxMT": {}, "je0RSj7j": {}, "p26BCh7G": {}}, "configurationName": "XgjZZvfW", "inactiveTimeout": 79, "inviteTimeout": 49, "joinability": "RR7DLheD", "maxPlayers": 30, "members": [{"ID": "duJULtTl", "PlatformID": "QLEwurTX", "PlatformUserID": "EUS2sDpI"}, {"ID": "OmuElU8f", "PlatformID": "8bhcqj0s", "PlatformUserID": "yA1mqXxU"}, {"ID": "3wUtTkm1", "PlatformID": "JrWGf2an", "PlatformUserID": "txnKso99"}], "minPlayers": 19, "textChat": true, "type": "QIoKMfWN"}' \
    > test.out 2>&1
eval_tap $? 84 'PublicCreateParty' test.out

#- 85 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    > test.out 2>&1
eval_tap $? 85 'PublicGetRecentPlayer' test.out

#- 86 PublicGetRecentTeamPlayer
samples/cli/sample-apps Session publicGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetRecentTeamPlayer' test.out

#- 87 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId '0Mc2x1d5' \
    --body '{"vlv5ZXCp": {}, "qRlkHvAc": {}, "DyOwUGPr": {}}' \
    > test.out 2>&1
eval_tap $? 87 'PublicUpdateInsertSessionStorageLeader' test.out

#- 88 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'Z5RfTuZi' \
    --userId 'dD5KveCc' \
    --body '{"XHZPEZaB": {}, "dPA7Mb2O": {}, "foCW2GvB": {}}' \
    > test.out 2>&1
eval_tap $? 88 'PublicUpdateInsertSessionStorage' test.out

#- 89 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["upSJ10Eo", "P4jGxEb9", "AAXCRCrf"]}' \
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
    --body '{"crossplayEnabled": false, "currentPlatform": "NRnCa1Zs", "data": {"KQx9Ga9s": {}, "ZFwCGOaS": {}, "y5XMp3hr": {}}, "platforms": [{"name": "ATtbksbi", "userID": "dLa1kdOk"}, {"name": "BPU1oya6", "userID": "uVej8Ihg"}, {"name": "wyUr8iVD", "userID": "V6U0NYTx"}], "roles": ["AeL2OTsG", "E90hqna6", "H7PEfIp2"], "simultaneousPlatform": "9SymxcMr"}' \
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
    --order 'JgDGQZlR' \
    --orderBy 'o7FuWx20' \
    --status 'AWYLOMaS' \
    > test.out 2>&1
eval_tap $? 93 'PublicQueryMyGameSessions' test.out

#- 94 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'k9MVYOnW' \
    --orderBy 'veeJyEeS' \
    --status 'mmaAgEXE' \
    > test.out 2>&1
eval_tap $? 94 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE