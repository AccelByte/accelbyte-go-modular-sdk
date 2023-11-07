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
echo "1..74"

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
    --body '{"regionRetryMapping": {"DWUJ8Dyy": ["IwUuZLK2", "LNhrIHoa", "1Wj1HcrM"], "wIPKbbgn": ["lYa4gmAs", "ldv4lAoe", "tffTZwoa"], "QPyLIHvl": ["reV1fWwA", "WCRpMGUQ", "P0P6eUjs"]}, "regionURLMapping": ["fwo1SDIh", "CE6mJlak", "U31uOtI3"], "testGameMode": "U9i5wS77", "testRegionURLMapping": ["SHzI6xWH", "R1Ju5A00", "rc1zQJQA"], "testTargetUserIDs": ["oxmmbU4p", "r0C9EjUg", "HX4GlwXM"]}' \
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
    --body '{"durationDays": 88}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateConfigurationAlertV1' test.out

#- 11 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 84}' \
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
    --description '4eDoretv' \
    --certname 'bsKkIeva' \
    --file 'tmp.dat' \
    --password 'znoK5W26' \
    > test.out 2>&1
eval_tap $? 13 'HandleUploadXboxPFXCertificate' test.out

#- 14 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 71, "PSNSupportedPlatforms": ["vgmSgYfb", "EEbutklW", "uSAUQjaK"], "SessionTitle": "Xw2kTFW7", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "9fiR2huA", "XboxServiceConfigID": "IdMTlxqx", "XboxSessionTemplateName": "qndyZdwc", "XboxTitleID": "02M0Io3d", "localizedSessionName": {"tFxmSLj7": {}, "JF5g4S4i": {}, "B64aH1jh": {}}}, "PSNBaseUrl": "soqpCPqh", "autoJoin": true, "clientVersion": "Mpxy3pTZ", "deployment": "tsaE4egF", "disableCodeGeneration": false, "dsManualSetReady": false, "dsSource": "o66lnmDM", "fallbackClaimKeys": ["6MepBnH4", "cEa4fYuo", "H9jqkUBf"], "immutableStorage": true, "inactiveTimeout": 1, "inviteTimeout": 15, "joinability": "0r4qk6Mg", "maxActiveSessions": 65, "maxPlayers": 74, "minPlayers": 76, "name": "b2Zm4knT", "persistent": true, "preferredClaimKeys": ["rYcwzVJa", "KXjDgESG", "WhoYZcCM"], "requestedRegions": ["fC70lh6r", "DNIAxKBl", "fqV2I2UL"], "textChat": false, "tieTeamsSessionLifetime": true, "type": "qN9y7U0U"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminCreateConfigurationTemplateV1' test.out

#- 15 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --name 'T0aiggV8' \
    --offset '64' \
    --order 'l71WYycA' \
    --orderBy 'rkuQ2jua' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetAllConfigurationTemplatesV1' test.out

#- 16 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'wZPdJcjW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetConfigurationTemplateV1' test.out

#- 17 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'YuuCHaCE' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 9, "PSNSupportedPlatforms": ["0dn1qjwq", "oY3QLWhA", "pqLKhWBW"], "SessionTitle": "Yf0f7TUM", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "S2SkNKjD", "XboxServiceConfigID": "urtS4tKg", "XboxSessionTemplateName": "o1AVdFHH", "XboxTitleID": "LUtr1rDB", "localizedSessionName": {"e0xf9uzR": {}, "ymZIwPhY": {}, "1TM3ocEY": {}}}, "PSNBaseUrl": "UkaGBXl5", "autoJoin": true, "clientVersion": "XHYdWuN9", "deployment": "BqMJPRUC", "disableCodeGeneration": false, "dsManualSetReady": false, "dsSource": "UL7kn5Bi", "fallbackClaimKeys": ["NCn1Hjm6", "P0RT3qGe", "ygl2vEet"], "immutableStorage": true, "inactiveTimeout": 40, "inviteTimeout": 51, "joinability": "N6UYs2dX", "maxActiveSessions": 86, "maxPlayers": 42, "minPlayers": 74, "name": "ejBfj3oO", "persistent": true, "preferredClaimKeys": ["Loueq51d", "YJobIfq6", "86C8jH23"], "requestedRegions": ["w2c07OlR", "ZqCUC8aj", "Bk6O4uL0"], "textChat": false, "tieTeamsSessionLifetime": true, "type": "oK5IKLd3"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateConfigurationTemplateV1' test.out

#- 18 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'oCd2DC26' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteConfigurationTemplateV1' test.out

#- 19 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name '77TQagvz' \
    --namespace $AB_NAMESPACE \
    --userId 'zdW5ottL' \
    > test.out 2>&1
eval_tap $? 19 'AdminGetMemberActiveSession' test.out

#- 20 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'PrK18dPq' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "CrHp8lKB"}' \
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
    --configurationName 'noEMa96Y' \
    --dsPodName 'VnNGw0Cv' \
    --fromTime 'vqrjMIRm' \
    --gameMode 'cxwtCiFH' \
    --isPersistent 'PZbp1kQq' \
    --isSoftDeleted 'zzLTYabr' \
    --joinability 'oeFK0zhq' \
    --limit '23' \
    --matchPool 'T5ZQ0Eq7' \
    --memberID 'k89DrSrS' \
    --offset '33' \
    --order 'HKFYpjIu' \
    --orderBy 'gfWCh8C3' \
    --sessionID 'XvvhjkP0' \
    --status 'byPATkHl' \
    --statusV2 '5l8CDgSg' \
    --toTime 'A7gsI7Iz' \
    > test.out 2>&1
eval_tap $? 23 'AdminQueryGameSessions' test.out

#- 24 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"xbcRskpj": {}, "VurGndfz": {}, "KaXqQmfR": {}}' \
    > test.out 2>&1
eval_tap $? 24 'AdminQueryGameSessionsByAttributes' test.out

#- 25 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["0dzWrN06", "7VQ1Zkbr", "BiIfNSjJ"]}' \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteBulkGameSessions' test.out

#- 26 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'C79VCh6V' \
    --body '{"ready": false}' \
    > test.out 2>&1
eval_tap $? 26 'AdminSetDSReady' test.out

#- 27 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'svbdklqQ' \
    --namespace $AB_NAMESPACE \
    --sessionId 'rkI3gEEX' \
    --statusType 'KRIhvVrC' \
    > test.out 2>&1
eval_tap $? 27 'AdminUpdateGameSessionMember' test.out

#- 28 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --joinability 'W7mUYMvm' \
    --key 'o4VOKCxb' \
    --leaderID 'KIIhxybW' \
    --limit '8' \
    --memberID 'vDFzzGgk' \
    --memberStatus 'PFcQNALe' \
    --offset '33' \
    --order 'BuYyXi1Z' \
    --orderBy 'HnuBGbQU' \
    --partyID '05ylet70' \
    --value 'ygkhC9ga' \
    > test.out 2>&1
eval_tap $? 28 'AdminQueryParties' test.out

#- 29 AdminGetPlatformCredentials
samples/cli/sample-apps Session adminGetPlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'AdminGetPlatformCredentials' test.out

#- 30 AdminUpdatePlatformCredentials
samples/cli/sample-apps Session adminUpdatePlatformCredentials \
    --namespace $AB_NAMESPACE \
    --body '{"psn": {"clientId": "5srAD9og", "clientSecret": "MKjTcRdc", "scope": "9kEJouxa"}}' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdatePlatformCredentials' test.out

#- 31 AdminDeletePlatformCredentials
samples/cli/sample-apps Session adminDeletePlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'AdminDeletePlatformCredentials' test.out

#- 32 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'qqqIRLum' \
    > test.out 2>&1
eval_tap $? 32 'AdminReadSessionStorage' test.out

#- 33 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId '168WSUpa' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteUserSessionStorage' test.out

#- 34 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'MhYCcX8c' \
    --userId 'SHsmXmSy' \
    > test.out 2>&1
eval_tap $? 34 'AdminReadUserSessionStorage' test.out

#- 35 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users '3G8aOJCQ' \
    > test.out 2>&1
eval_tap $? 35 'AdminQueryPlayerAttributes' test.out

#- 36 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'JallEhEF' \
    > test.out 2>&1
eval_tap $? 36 'AdminGetPlayerAttributes' test.out

#- 37 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"nftzJdqO": {}, "fLuUprnX": {}, "YQ5FXLE7": {}}, "autoJoin": true, "backfillTicketID": "25RlMTgY", "clientVersion": "pMHe84ht", "configurationName": "bNUnl1aK", "deployment": "oBh0DR8v", "dsSource": "frNAiP6N", "fallbackClaimKeys": ["TzdW3kYz", "7CPlfSAG", "Y92zgNj9"], "inactiveTimeout": 97, "inviteTimeout": 67, "joinability": "vl9xFFAX", "matchPool": "UQHXo03C", "maxPlayers": 90, "minPlayers": 67, "preferredClaimKeys": ["txHbE6hk", "XgyK1O2F", "neEmSeeg"], "requestedRegions": ["0xW7EazZ", "1W6IqqjW", "Vs7k4wpP"], "serverName": "nHLQWj4k", "teams": [{"UserIDs": ["YDF7R5Ep", "DxKTr0Bo", "o8UqilRN"], "parties": [{"partyID": "KUhk8dmh", "userIDs": ["ZahsbFlK", "FR4KfLuu", "CuWJ52Cl"]}, {"partyID": "2EvgPpNT", "userIDs": ["R15yHqab", "xCG1Q1ae", "qpm1GBm2"]}, {"partyID": "anj2gSy3", "userIDs": ["hmMpQlqs", "cXcAzJzP", "v8U0GOyS"]}]}, {"UserIDs": ["mWWxidvM", "FxivH5V5", "BOszV3IE"], "parties": [{"partyID": "tbHUVHmm", "userIDs": ["NnFgD1SA", "HFUTq4Om", "h2bfUEgX"]}, {"partyID": "oMWr2VFj", "userIDs": ["GRqpsUDZ", "4bpJ9pqg", "AMP3czFj"]}, {"partyID": "m6QKI74I", "userIDs": ["Ou4VnJ6P", "VxaI8WRp", "hd0NcsDi"]}]}, {"UserIDs": ["4dQNo4Tx", "5HJmTuTA", "Kqdhtf05"], "parties": [{"partyID": "PHrCtAuv", "userIDs": ["0505hwdv", "e2jb3nvR", "cu8vUMZh"]}, {"partyID": "KcTTog6a", "userIDs": ["wLDiLb6c", "22iWhHth", "VuhUjenp"]}, {"partyID": "CzV4vvGX", "userIDs": ["76Dy1XhS", "9kNL3b6Q", "Fc153EhO"]}]}], "textChat": false, "ticketIDs": ["mOzk0515", "2yfonhS0", "gvPrGSsJ"], "tieTeamsSessionLifetime": true, "type": "57MRPHb6"}' \
    > test.out 2>&1
eval_tap $? 37 'CreateGameSession' test.out

#- 38 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"lUmSwfFf": {}, "Uq7QxvtD": {}, "LbBFj47c": {}}' \
    > test.out 2>&1
eval_tap $? 38 'PublicQueryGameSessionsByAttributes' test.out

#- 39 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "vVz6udkK"}' \
    > test.out 2>&1
eval_tap $? 39 'PublicSessionJoinCode' test.out

#- 40 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'CBQY8ZbC' \
    > test.out 2>&1
eval_tap $? 40 'GetGameSessionByPodName' test.out

#- 41 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'hwCOJWx9' \
    > test.out 2>&1
eval_tap $? 41 'GetGameSession' test.out

#- 42 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'UVgGOysZ' \
    --body '{"attributes": {"CGhDUvDv": {}, "eGFNWODE": {}, "7FqCK508": {}}, "backfillTicketID": "SBtJ9vw4", "clientVersion": "9F6sue2l", "deployment": "hk7rb4lq", "fallbackClaimKeys": ["lqrdGQCY", "HHIiaNoF", "sONoXozP"], "inactiveTimeout": 88, "inviteTimeout": 13, "joinability": "A5omDGsx", "matchPool": "XqzTKM8k", "maxPlayers": 74, "minPlayers": 17, "preferredClaimKeys": ["1e8NFghV", "fSsVVy5Z", "UnBPq3MR"], "requestedRegions": ["qH7lvBur", "PkcpPm1U", "laslKyoN"], "teams": [{"UserIDs": ["c8voapio", "w18KXLhG", "l9nKbpTp"], "parties": [{"partyID": "kuChJ9RS", "userIDs": ["ilSUvpS2", "6HIhBnSN", "LZPyTgSq"]}, {"partyID": "SGGHIcX9", "userIDs": ["5PChbzSQ", "AikyC5Xb", "h3NnpAtQ"]}, {"partyID": "E0khwJxr", "userIDs": ["EeQJo0a4", "HA8ftNBJ", "RRHpN8f4"]}]}, {"UserIDs": ["dnZy8yez", "9JZzARZ4", "xBc5WGnN"], "parties": [{"partyID": "DCHlgjOd", "userIDs": ["7L3qCE2u", "skTQ5a0x", "dqdyWbFc"]}, {"partyID": "u1KtBpoZ", "userIDs": ["aNhPUCTZ", "c2KVccZD", "19chDpmw"]}, {"partyID": "NblkFUh1", "userIDs": ["GwHiINzs", "a6yv1bNP", "4TBo9Xk9"]}]}, {"UserIDs": ["pVqncBj6", "YX8tJQI4", "GEYSCHHe"], "parties": [{"partyID": "NgwKEk2k", "userIDs": ["McIl33Gj", "XMxfKPxn", "ViFfQZtn"]}, {"partyID": "Z9ICRXBz", "userIDs": ["BrzR9V0Z", "GrQvsmWH", "hFyuMIrO"]}, {"partyID": "5ZYC36sY", "userIDs": ["lopIPbFz", "XEaMCQ0r", "kOfmdxJn"]}]}], "ticketIDs": ["ZsWb72Pd", "Fo6J8ksP", "oDx4Z3zL"], "tieTeamsSessionLifetime": false, "type": "2PZnkudS", "version": 21}' \
    > test.out 2>&1
eval_tap $? 42 'UpdateGameSession' test.out

#- 43 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'rsjExbUs' \
    > test.out 2>&1
eval_tap $? 43 'DeleteGameSession' test.out

#- 44 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'o6cuJ64A' \
    --body '{"attributes": {"Q3QNpErP": {}, "Dbfkld3N": {}, "MZrkBm5L": {}}, "backfillTicketID": "xhmCcfB6", "clientVersion": "JnqY6U4c", "deployment": "9FskllcK", "fallbackClaimKeys": ["y90UDz0f", "DtWXL4Oz", "bsUNgHKI"], "inactiveTimeout": 24, "inviteTimeout": 71, "joinability": "sLjWMEnJ", "matchPool": "AVhISCdG", "maxPlayers": 80, "minPlayers": 34, "preferredClaimKeys": ["PuY7VN1g", "gWUBoV5a", "sU5SIS6K"], "requestedRegions": ["V57RImm7", "PDyqOoeS", "tYoeeIBr"], "teams": [{"UserIDs": ["SEant2hu", "aUmmjc4k", "Z2pzB2HG"], "parties": [{"partyID": "VrbXRB1d", "userIDs": ["d1eaJ7GC", "dvYBGBoV", "2eDKhQrU"]}, {"partyID": "HuxoYv50", "userIDs": ["Zu3wWLjb", "K2CtXp6z", "WtoCKVmi"]}, {"partyID": "BG4hqML9", "userIDs": ["q49E4f4q", "EyRo4JQK", "Ka0jUkkx"]}]}, {"UserIDs": ["uGmz1aD8", "mSRsKOq0", "HrmFDIgm"], "parties": [{"partyID": "C7BJQDwP", "userIDs": ["ZFXLeUr9", "rEXDpWl6", "StVBFcLo"]}, {"partyID": "YAHh2Chj", "userIDs": ["gTHGTmVJ", "2CeRZTPT", "drLbUBiR"]}, {"partyID": "KpV9THpE", "userIDs": ["qkAeN6ui", "JeIyvlsk", "BHkepIjP"]}]}, {"UserIDs": ["wmwY00i3", "1JVpHbBT", "B9wBdo8w"], "parties": [{"partyID": "Iq1Xbavk", "userIDs": ["tBzsPV4L", "CwX0se0Q", "mwyOJoD8"]}, {"partyID": "vVXELZ6N", "userIDs": ["OzdWpO3l", "X2OneH6X", "w0vsjwBH"]}, {"partyID": "eOjG1RWJ", "userIDs": ["PrnyidMp", "ApR8QGgf", "KEvy6bJx"]}]}], "ticketIDs": ["D0H4joKs", "gkDAXQdb", "Itu0IzSm"], "tieTeamsSessionLifetime": false, "type": "9ZBqugW7", "version": 24}' \
    > test.out 2>&1
eval_tap $? 44 'PatchUpdateGameSession' test.out

#- 45 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'cTDttmLi' \
    --body '{"backfillTicketID": "oj8uf7e2"}' \
    > test.out 2>&1
eval_tap $? 45 'UpdateGameSessionBackfillTicketID' test.out

#- 46 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'K3iqGP8d' \
    > test.out 2>&1
eval_tap $? 46 'GameSessionGenerateCode' test.out

#- 47 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'f0Kw0zJD' \
    > test.out 2>&1
eval_tap $? 47 'PublicRevokeGameSessionCode' test.out

#- 48 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'VuUTvO95' \
    --body '{"platformID": "n9JKSzcT", "userID": "sUeS1PqP"}' \
    > test.out 2>&1
eval_tap $? 48 'PublicGameSessionInvite' test.out

#- 49 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '6ODzUjiJ' \
    > test.out 2>&1
eval_tap $? 49 'JoinGameSession' test.out

#- 50 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'xyaEYBjH' \
    --body '{"leaderID": "p2I1svwQ"}' \
    > test.out 2>&1
eval_tap $? 50 'PublicPromoteGameSessionLeader' test.out

#- 51 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'cyLgjhnM' \
    > test.out 2>&1
eval_tap $? 51 'LeaveGameSession' test.out

#- 52 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'rq1nB700' \
    > test.out 2>&1
eval_tap $? 52 'PublicGameSessionReject' test.out

#- 53 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'eEAtQzF7' \
    --body '{"additionalMembers": [{"partyID": "UbzQG7i1", "userIDs": ["U8yjo0B9", "GGUXrSBt", "JYnVoI8R"]}, {"partyID": "jN6isYds", "userIDs": ["QR0w5mrD", "8gd8Jiat", "s28dd2YI"]}, {"partyID": "VCo3Hth1", "userIDs": ["ovpWirxG", "pPYefut2", "BMwbeafk"]}], "proposedTeams": [{"UserIDs": ["hvRlzTQS", "ytZG35WD", "Z8PR9VL7"], "parties": [{"partyID": "DwWgrJ0n", "userIDs": ["0hxcIfHz", "0m5ee6yh", "VGpEK6ql"]}, {"partyID": "cu8502ZB", "userIDs": ["37qkjOW1", "EuNfwd3r", "iKgWK3KC"]}, {"partyID": "eoKnuySR", "userIDs": ["jRNsWgsh", "CeAFFh1y", "5an2TcDM"]}]}, {"UserIDs": ["XepU5F09", "HyJTmMRk", "5RKHunwJ"], "parties": [{"partyID": "okzKUEUh", "userIDs": ["FuEVjp5q", "CDSc0mtB", "5spPzKiG"]}, {"partyID": "I6gvKLS2", "userIDs": ["aF6zHtYx", "OCqmXM3r", "mJY8inyX"]}, {"partyID": "0VYWH9MS", "userIDs": ["2ZTIReuB", "WXus43SD", "mDN7TRtm"]}]}, {"UserIDs": ["SQ9Q29fm", "Lhvfi1Mb", "9WRDf4H8"], "parties": [{"partyID": "8z21YmQw", "userIDs": ["QkGz9Yus", "Tl7ygo3t", "THb5YFF8"]}, {"partyID": "H30P0q7u", "userIDs": ["E8ESihDN", "UFaIxNwG", "MhIqJV5D"]}, {"partyID": "KN38U2uQ", "userIDs": ["q0mF0CUl", "l34oy799", "6h3WRJDD"]}]}], "version": 90}' \
    > test.out 2>&1
eval_tap $? 53 'AppendTeamGameSession' test.out

#- 54 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "sJOgLuVi"}' \
    > test.out 2>&1
eval_tap $? 54 'PublicPartyJoinCode' test.out

#- 55 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'tQ19fQI1' \
    > test.out 2>&1
eval_tap $? 55 'PublicGetParty' test.out

#- 56 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'AxSiUEOw' \
    --body '{"attributes": {"6jJuGnVY": {}, "8kYWInkd": {}, "p5y6HjNt": {}}, "inactiveTimeout": 12, "inviteTimeout": 28, "joinability": "Ez8oL6rS", "maxPlayers": 2, "minPlayers": 74, "type": "udKtuEYX", "version": 37}' \
    > test.out 2>&1
eval_tap $? 56 'PublicUpdateParty' test.out

#- 57 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'JvKkdeWx' \
    --body '{"attributes": {"yq6AJCok": {}, "CHbEdf6O": {}, "FaFKsPTs": {}}, "inactiveTimeout": 8, "inviteTimeout": 75, "joinability": "tCJ9U74N", "maxPlayers": 14, "minPlayers": 46, "type": "Tn6VsScf", "version": 73}' \
    > test.out 2>&1
eval_tap $? 57 'PublicPatchUpdateParty' test.out

#- 58 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'jP0ZnZOx' \
    > test.out 2>&1
eval_tap $? 58 'PublicGeneratePartyCode' test.out

#- 59 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'Y6IyZufS' \
    > test.out 2>&1
eval_tap $? 59 'PublicRevokePartyCode' test.out

#- 60 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'ZD1Y6Fce' \
    --body '{"platformID": "1e0iZuWV", "userID": "xhy2cuvb"}' \
    > test.out 2>&1
eval_tap $? 60 'PublicPartyInvite' test.out

#- 61 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId '4xRdw755' \
    --body '{"leaderID": "z7fgRlvw"}' \
    > test.out 2>&1
eval_tap $? 61 'PublicPromotePartyLeader' test.out

#- 62 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'gSddtpft' \
    > test.out 2>&1
eval_tap $? 62 'PublicPartyJoin' test.out

#- 63 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'YSOhesOf' \
    > test.out 2>&1
eval_tap $? 63 'PublicPartyLeave' test.out

#- 64 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'AruWTHRs' \
    > test.out 2>&1
eval_tap $? 64 'PublicPartyReject' test.out

#- 65 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'tO7Kn1lU' \
    --userId 'IXbEBynM' \
    > test.out 2>&1
eval_tap $? 65 'PublicPartyKick' test.out

#- 66 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"49ftIUki": {}, "HI6KZOUR": {}, "rClLWh4F": {}}, "configurationName": "3EsMgSJ4", "inactiveTimeout": 71, "inviteTimeout": 82, "joinability": "OTHIqj50", "maxPlayers": 17, "members": [{"ID": "XHHQBRze", "PlatformID": "wIR4Al8c", "PlatformUserID": "Pz29aFDY"}, {"ID": "6rLnpcPx", "PlatformID": "wBHgjiYx", "PlatformUserID": "2jm1vp2f"}, {"ID": "1MIq69jo", "PlatformID": "eJLAvSXw", "PlatformUserID": "594SZF0f"}], "minPlayers": 99, "textChat": false, "type": "C9insfeV"}' \
    > test.out 2>&1
eval_tap $? 66 'PublicCreateParty' test.out

#- 67 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId '8BvYOypR' \
    --body '{"Rby3B0k8": {}, "M6keot55": {}, "TYMBnkoq": {}}' \
    > test.out 2>&1
eval_tap $? 67 'PublicUpdateInsertSessionStorageLeader' test.out

#- 68 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'oaIpsGw7' \
    --userId 'BBSKBjFL' \
    --body '{"NXsWOPGh": {}, "KTKHIXCd": {}, "s2z8d8m4": {}}' \
    > test.out 2>&1
eval_tap $? 68 'PublicUpdateInsertSessionStorage' test.out

#- 69 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["ZjDxbrK8", "NpU16585", "UB4JqVFl"]}' \
    > test.out 2>&1
eval_tap $? 69 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 70 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 70 'PublicGetPlayerAttributes' test.out

#- 71 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": true, "currentPlatform": "cDTsFdAA", "data": {"GgVR0mpC": {}, "PvN3Ljf1": {}, "OeimPI8o": {}}, "platforms": [{"name": "HTR4nq54", "userID": "6A2A3VXa"}, {"name": "szvicqUi", "userID": "dqABkxlU"}, {"name": "QuaDxNyH", "userID": "Wjt4SLED"}], "roles": ["D5alJVUG", "xwHpTXdo", "VRGRcuxc"]}' \
    > test.out 2>&1
eval_tap $? 71 'PublicStorePlayerAttributes' test.out

#- 72 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 72 'PublicDeletePlayerAttributes' test.out

#- 73 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order '6ShiA0Yh' \
    --orderBy 'ts4G4uYi' \
    --status 'AYTFIq52' \
    > test.out 2>&1
eval_tap $? 73 'PublicQueryMyGameSessions' test.out

#- 74 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'HFPggw6j' \
    --orderBy 'v5Ywy2tE' \
    --status 'jVJy16SI' \
    > test.out 2>&1
eval_tap $? 74 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE