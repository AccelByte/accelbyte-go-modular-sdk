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
echo "1..78"

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
    --body '{"regionRetryMapping": {"35V13E7V": ["LEL59Bro", "qtNEWeDP", "qcZX703R"], "wWrO2gfZ": ["7LZRM4x0", "hhobn8Fx", "ZJFRGU7I"], "d8Cn61E2": ["AgotMRCB", "bpmV0aqp", "sXoTHNPO"]}, "regionURLMapping": ["1bNMYQJT", "MxIwmnkv", "ZSX2f6DL"], "testGameMode": "pDDFRdvr", "testRegionURLMapping": ["trrPZkah", "px0de0U2", "pbBvVqyQ"], "testTargetUserIDs": ["rubtC3L2", "9z5RVVxj", "MnP76ZVC"]}' \
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
    --body '{"durationDays": 12}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateConfigurationAlertV1' test.out

#- 11 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 100}' \
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
    --description 'sMFuxgs1' \
    --certname 'lqSW6Wcu' \
    --file 'tmp.dat' \
    --password 'RxsdDgKY' \
    > test.out 2>&1
eval_tap $? 13 'HandleUploadXboxPFXCertificate' test.out

#- 14 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 92, "PSNSupportedPlatforms": ["n1uqJlYL", "SSK8rCEv", "mre3JvxP"], "SessionTitle": "QDfKMM0m", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "vpGsgUx8", "XboxServiceConfigID": "mG3Orw9t", "XboxSessionTemplateName": "pxQlKszu", "XboxTitleID": "apwR2avC", "localizedSessionName": {"0JhQk4g7": {}, "XaS1IZ1h": {}, "KY4X0ziT": {}}}, "PSNBaseUrl": "9RD5Y8XN", "attributes": {"zqAt5NSL": {}, "q7ZoHlPL": {}, "kilta0K2": {}}, "autoJoin": true, "autoLeaveSession": true, "clientVersion": "eKoisV2s", "deployment": "TVe7VjnQ", "disableCodeGeneration": false, "dsManualSetReady": true, "dsSource": "bhkk1zR8", "enableSecret": true, "fallbackClaimKeys": ["Nj4dKk9C", "VfcTowUK", "lEBbYZfR"], "immutableStorage": false, "inactiveTimeout": 43, "inviteTimeout": 8, "joinability": "hOsPRNGf", "leaderElectionGracePeriod": 100, "manualRejoin": true, "maxActiveSessions": 16, "maxPlayers": 31, "minPlayers": 11, "name": "ojJe4OK9", "persistent": true, "preferredClaimKeys": ["wRiz5MXp", "p0YtPtf3", "AGLCrmZa"], "requestedRegions": ["TTuFO3xR", "GG91qDVq", "ikSGjHMa"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "uqHwsQed"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminCreateConfigurationTemplateV1' test.out

#- 15 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --name 'PGypvsx0' \
    --offset '90' \
    --order 'bjqOXixo' \
    --orderBy 'dyHtJrSC' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetAllConfigurationTemplatesV1' test.out

#- 16 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'b0UpKTuY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetConfigurationTemplateV1' test.out

#- 17 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'vrKW5EY8' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 50, "PSNSupportedPlatforms": ["jyelMIIb", "dWTIUfdL", "NXNq5al6"], "SessionTitle": "D3oQnSyz", "ShouldSync": false, "XboxAllowCrossPlatform": true, "XboxSandboxID": "ijTZLQEY", "XboxServiceConfigID": "asJRm0Bf", "XboxSessionTemplateName": "ppYi6T8w", "XboxTitleID": "MldLKWC2", "localizedSessionName": {"BtcUl9YK": {}, "KnIwBDpf": {}, "h4G9eNqc": {}}}, "PSNBaseUrl": "7ZD9lyqq", "attributes": {"z3ZBRmcR": {}, "ndIOFpGl": {}, "Vh8IhkQ2": {}}, "autoJoin": false, "autoLeaveSession": false, "clientVersion": "DMt0fn4k", "deployment": "paAvmGvp", "disableCodeGeneration": true, "dsManualSetReady": true, "dsSource": "GF8Vz77X", "enableSecret": true, "fallbackClaimKeys": ["0O6NLmed", "VyT0Smrn", "ZhbW7yzw"], "immutableStorage": false, "inactiveTimeout": 66, "inviteTimeout": 66, "joinability": "YeLkxlIa", "leaderElectionGracePeriod": 71, "manualRejoin": false, "maxActiveSessions": 41, "maxPlayers": 29, "minPlayers": 46, "name": "qSHeDoZ0", "persistent": true, "preferredClaimKeys": ["98xlnN2W", "FKcVk8JY", "wIrhw217"], "requestedRegions": ["p9PJN5WF", "ggOC5tES", "l8GqEQJU"], "textChat": false, "tieTeamsSessionLifetime": true, "type": "GKuYlkz1"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateConfigurationTemplateV1' test.out

#- 18 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'TvzUxdA3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteConfigurationTemplateV1' test.out

#- 19 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 'LElf5aJe' \
    --namespace $AB_NAMESPACE \
    --userId 'UTC6xAnn' \
    > test.out 2>&1
eval_tap $? 19 'AdminGetMemberActiveSession' test.out

#- 20 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'q9OHlSva' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "I4oY8zvb"}' \
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
    --configurationName 'kDi4LdyY' \
    --dsPodName 'NEWlIGlL' \
    --fromTime 'C058GJG4' \
    --gameMode 'NIheFxFS' \
    --isPersistent 'qXtM1rsJ' \
    --isSoftDeleted 'fy14oeXe' \
    --joinability 'L4AlSTHY' \
    --limit '78' \
    --matchPool 'AZ9DBLkQ' \
    --memberID 'hhU52Q62' \
    --offset '80' \
    --order 'lk0MSvAX' \
    --orderBy 'YDCJtIU7' \
    --sessionID 'aIETVEgL' \
    --status 'B2xIyjPR' \
    --statusV2 'P5DSBXPu' \
    --toTime 'NrEzkbRd' \
    > test.out 2>&1
eval_tap $? 23 'AdminQueryGameSessions' test.out

#- 24 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"C98evmqY": {}, "CDd1hcjI": {}, "JCXY8nHc": {}}' \
    > test.out 2>&1
eval_tap $? 24 'AdminQueryGameSessionsByAttributes' test.out

#- 25 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["FMyl54gr", "zhezZZoM", "ZNVhXiw4"]}' \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteBulkGameSessions' test.out

#- 26 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'o6oqw1BR' \
    --body '{"ready": false}' \
    > test.out 2>&1
eval_tap $? 26 'AdminSetDSReady' test.out

#- 27 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'gLbohIj3' \
    --namespace $AB_NAMESPACE \
    --sessionId 'c8q1neyA' \
    --statusType 'wjEwjhjq' \
    > test.out 2>&1
eval_tap $? 27 'AdminUpdateGameSessionMember' test.out

#- 28 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '10' \
    --order 'QgphXfjV' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetListNativeSession' test.out

#- 29 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --isSoftDeleted 'BDRznJHP' \
    --joinability 'K3Uo2VbR' \
    --key 'xRHabPb7' \
    --leaderID 'TkqoeQWC' \
    --limit '14' \
    --memberID 'V05X2uB7' \
    --memberStatus 'xHMAQkZi' \
    --offset '94' \
    --order 'PZso6Yy0' \
    --orderBy 'mUstXAN1' \
    --partyID 'BCCVvTpH' \
    --value '4pDcnpne' \
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
    --body '{"psn": {"clientId": "GzTk6l8I", "clientSecret": "OaQIGPEB", "scope": "ydPSPe7l"}}' \
    > test.out 2>&1
eval_tap $? 31 'AdminUpdatePlatformCredentials' test.out

#- 32 AdminDeletePlatformCredentials
samples/cli/sample-apps Session adminDeletePlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'AdminDeletePlatformCredentials' test.out

#- 33 AdminGetRecentPlayer
samples/cli/sample-apps Session adminGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --userId '4hqW0z3N' \
    > test.out 2>&1
eval_tap $? 33 'AdminGetRecentPlayer' test.out

#- 34 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'z2c2VxXV' \
    > test.out 2>&1
eval_tap $? 34 'AdminReadSessionStorage' test.out

#- 35 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'ZobCYcIi' \
    > test.out 2>&1
eval_tap $? 35 'AdminDeleteUserSessionStorage' test.out

#- 36 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'R7ucNp0D' \
    --userId 'KmXhyrjd' \
    > test.out 2>&1
eval_tap $? 36 'AdminReadUserSessionStorage' test.out

#- 37 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'cLQfelkD' \
    > test.out 2>&1
eval_tap $? 37 'AdminQueryPlayerAttributes' test.out

#- 38 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'ui6BDTLo' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetPlayerAttributes' test.out

#- 39 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"h2IbkAGS": {}, "RyW6JpKd": {}, "JRyePboW": {}}, "autoJoin": true, "backfillTicketID": "JtWuE7pb", "clientVersion": "Ejp5V69X", "configurationName": "MZhMdhOu", "deployment": "Q5qenB1r", "dsSource": "2a7J90ef", "fallbackClaimKeys": ["weDzDfLo", "Kfn23ydj", "jS4jh8cl"], "inactiveTimeout": 31, "inviteTimeout": 87, "joinability": "DmgwXkGc", "matchPool": "pYunDyxL", "maxPlayers": 100, "minPlayers": 65, "preferredClaimKeys": ["BkiXvOkf", "00YQRkHc", "f0JIVCfX"], "requestedRegions": ["xCvtmnt4", "8FyIkm2y", "tYJ0EgsL"], "serverName": "jpPfjM3t", "teams": [{"UserIDs": ["KkpqhgAQ", "6QUiMGDr", "tjxxS7fN"], "parties": [{"partyID": "IF9S1pmk", "userIDs": ["Vo1kHJc8", "TlEWobrE", "rc3Yh2R1"]}, {"partyID": "fJNSLiyu", "userIDs": ["yLuspNH8", "Xl9yf6Eh", "dHQK6swL"]}, {"partyID": "0hpWIFXy", "userIDs": ["GgJf37RN", "bryQ1K4y", "ltylz5ER"]}]}, {"UserIDs": ["Wo32myh3", "8Ee2gSTc", "zPFB1I16"], "parties": [{"partyID": "aYmDf29J", "userIDs": ["Vr9ZiQcl", "obuFAIUq", "Vwzo8dgl"]}, {"partyID": "NaU6kj29", "userIDs": ["pCvjHF45", "9oJGFCtZ", "fyBuju3o"]}, {"partyID": "zvAHtF58", "userIDs": ["rWiMPEJs", "lPE6VBNh", "IoBTmxia"]}]}, {"UserIDs": ["P9CBGFO8", "8xPsIwLJ", "OXBPSgSQ"], "parties": [{"partyID": "gaWmEhZ6", "userIDs": ["7JrreIwP", "v4YsaKOY", "UHCsCH1w"]}, {"partyID": "Nh4D3otM", "userIDs": ["ZlK6fyMh", "LlxY5DmD", "fFK4VHEr"]}, {"partyID": "1mncQ5pf", "userIDs": ["oFlFI5q1", "kpNdedBZ", "IEi7GdZD"]}]}], "textChat": true, "ticketIDs": ["nqSRpKlD", "VymRD9zI", "Qmcwe2eK"], "tieTeamsSessionLifetime": false, "type": "RpMubAZi"}' \
    > test.out 2>&1
eval_tap $? 39 'CreateGameSession' test.out

#- 40 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"HmdAFU3B": {}, "EPssXeJZ": {}, "zTK1Pz1x": {}}' \
    > test.out 2>&1
eval_tap $? 40 'PublicQueryGameSessionsByAttributes' test.out

#- 41 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "BnNwt5w1"}' \
    > test.out 2>&1
eval_tap $? 41 'PublicSessionJoinCode' test.out

#- 42 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName '3Bwu2kkN' \
    > test.out 2>&1
eval_tap $? 42 'GetGameSessionByPodName' test.out

#- 43 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'OWLelpoI' \
    > test.out 2>&1
eval_tap $? 43 'GetGameSession' test.out

#- 44 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'gWDVa72i' \
    --body '{"attributes": {"ffuKB80T": {}, "DQKPOJpT": {}, "BtVYjej4": {}}, "backfillTicketID": "21ez40Lu", "clientVersion": "NBOWMLd5", "deployment": "8fBh9A3Z", "fallbackClaimKeys": ["goFz326f", "v1NiHQci", "6dDLM3X0"], "inactiveTimeout": 60, "inviteTimeout": 59, "joinability": "aI6I3OSJ", "matchPool": "zoIDtLu7", "maxPlayers": 94, "minPlayers": 65, "preferredClaimKeys": ["9yNQfnOA", "2VNkM4J7", "z1puI4D6"], "requestedRegions": ["yZ2rYJfA", "ojYRY6x9", "GVTzSJUp"], "teams": [{"UserIDs": ["hlT82HbY", "paPVW0hb", "JPQOh0eN"], "parties": [{"partyID": "ugRJYJOq", "userIDs": ["ri1V0Gki", "qkld6Qbc", "li6Z1Z8l"]}, {"partyID": "Jg2t6Qxq", "userIDs": ["Axk65EXx", "pwgaNiQS", "0Su6mXPK"]}, {"partyID": "bRicJtFg", "userIDs": ["0KBs9epi", "j3ueHNeG", "YMFA3GaQ"]}]}, {"UserIDs": ["dFzfJwkf", "eo8av82x", "moJkXQxV"], "parties": [{"partyID": "2AkrCAR2", "userIDs": ["CLYZCqIE", "xkR4Hc7L", "JLnQWGld"]}, {"partyID": "HiX2MAM9", "userIDs": ["LTzr5H8g", "wpmmOE4j", "WA0qezXE"]}, {"partyID": "7dtfmQPk", "userIDs": ["vw5TiVqN", "S2e6ZpoX", "tik75xQu"]}]}, {"UserIDs": ["wBeVomnx", "ZIcEQfoU", "KxH3hji4"], "parties": [{"partyID": "IUgYP3z9", "userIDs": ["nr9S2WQR", "jzeAfb3L", "3eje6TQj"]}, {"partyID": "VdKiZW5w", "userIDs": ["KVU3tQr2", "U8K98Dvp", "EgIj3Z8w"]}, {"partyID": "Do1ux825", "userIDs": ["ipvxVLXi", "PmNSntnc", "62nkXRdb"]}]}], "ticketIDs": ["4t2DjZfF", "MuUL3ZwD", "gVWKqr8g"], "tieTeamsSessionLifetime": false, "type": "vA5OdCvM", "version": 97}' \
    > test.out 2>&1
eval_tap $? 44 'UpdateGameSession' test.out

#- 45 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'v1PJh3A9' \
    > test.out 2>&1
eval_tap $? 45 'DeleteGameSession' test.out

#- 46 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'gXkZ5h0O' \
    --body '{"attributes": {"dJMEIfJj": {}, "0q4PbIco": {}, "y0u3KoxQ": {}}, "backfillTicketID": "8xDaF5wK", "clientVersion": "C15HPIPL", "deployment": "lVWM7ftU", "fallbackClaimKeys": ["qUFX6TbJ", "2XHjCzu4", "NPgBUa2m"], "inactiveTimeout": 22, "inviteTimeout": 85, "joinability": "TeQDe01w", "matchPool": "XiEZxQ1c", "maxPlayers": 79, "minPlayers": 1, "preferredClaimKeys": ["02ybEHuu", "4VQTbJtr", "KX4Xzshj"], "requestedRegions": ["sblm8N1P", "fAjyONTV", "uthRcC1L"], "teams": [{"UserIDs": ["Bz321noo", "uifay5PI", "OPPdW9S2"], "parties": [{"partyID": "KnTlLeGd", "userIDs": ["kJNN2BGz", "2kZTQdVu", "T6B7yI0V"]}, {"partyID": "4jp2yYB1", "userIDs": ["4bmQfPv1", "DiJoYRVJ", "Te4U0eJR"]}, {"partyID": "NkQk1tyc", "userIDs": ["c54NV0XN", "GNVkAuSW", "IVURuu7R"]}]}, {"UserIDs": ["B5cdRyFj", "CP6RSlL5", "30u5Vc62"], "parties": [{"partyID": "J05agb2N", "userIDs": ["VBkfa4zz", "T936z7Xb", "myYHj0BV"]}, {"partyID": "kgPRZ6C9", "userIDs": ["NOR5jRMG", "XcWhFENk", "KuVqQmSs"]}, {"partyID": "NEZPRS4e", "userIDs": ["kalMYnOq", "EuOIsssn", "rvb2Im7w"]}]}, {"UserIDs": ["x75kyWfP", "measdCaZ", "yABlSsC5"], "parties": [{"partyID": "3RAscZL4", "userIDs": ["tWYprJHs", "MgRNOeop", "24cHDBEQ"]}, {"partyID": "AjOY9NgE", "userIDs": ["x2Qixz4Y", "48riOsEy", "BaXn0E4A"]}, {"partyID": "KprVAr5J", "userIDs": ["AfBUqtpJ", "fUiqxoBt", "gNMooAWj"]}]}], "ticketIDs": ["9HFBYnvU", "HwjkmU9B", "a61zFVJi"], "tieTeamsSessionLifetime": true, "type": "TCIRWZmp", "version": 56}' \
    > test.out 2>&1
eval_tap $? 46 'PatchUpdateGameSession' test.out

#- 47 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'Sdev2x0i' \
    --body '{"backfillTicketID": "BEYhuHxs"}' \
    > test.out 2>&1
eval_tap $? 47 'UpdateGameSessionBackfillTicketID' test.out

#- 48 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId '97DMR8kp' \
    > test.out 2>&1
eval_tap $? 48 'GameSessionGenerateCode' test.out

#- 49 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'G6IVTu8V' \
    > test.out 2>&1
eval_tap $? 49 'PublicRevokeGameSessionCode' test.out

#- 50 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'fcJgnFhp' \
    --body '{"platformID": "by1M4iGo", "userID": "vMEePn80"}' \
    > test.out 2>&1
eval_tap $? 50 'PublicGameSessionInvite' test.out

#- 51 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'ASnzzFFJ' \
    > test.out 2>&1
eval_tap $? 51 'JoinGameSession' test.out

#- 52 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'mxlN50xh' \
    --body '{"leaderID": "GvIKd7gG"}' \
    > test.out 2>&1
eval_tap $? 52 'PublicPromoteGameSessionLeader' test.out

#- 53 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'N5N7B8wu' \
    > test.out 2>&1
eval_tap $? 53 'LeaveGameSession' test.out

#- 54 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'hJ3BhMG6' \
    > test.out 2>&1
eval_tap $? 54 'PublicGameSessionReject' test.out

#- 55 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId 'MOF5Sx11' \
    > test.out 2>&1
eval_tap $? 55 'GetSessionServerSecret' test.out

#- 56 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'VewS83mF' \
    --body '{"additionalMembers": [{"partyID": "LzPBWWLG", "userIDs": ["PjVuNRl5", "7ekh8sRe", "UY6vgem0"]}, {"partyID": "g235NdwQ", "userIDs": ["wS0jgVLu", "WhM1nBxB", "Gsu9hJC2"]}, {"partyID": "1meGO7Dq", "userIDs": ["rqVhLufv", "Vl3YQaPk", "jH3AXlPf"]}], "proposedTeams": [{"UserIDs": ["cu5TCliU", "hUsXEDrc", "w815YL3O"], "parties": [{"partyID": "PK8JrQ3n", "userIDs": ["F5NSIvYd", "LlbYHqqa", "3prxHqNP"]}, {"partyID": "ncwE1M68", "userIDs": ["7SBcJOlQ", "5jmXZPR7", "VmLW5dZI"]}, {"partyID": "s49bcvy1", "userIDs": ["UhbP1ooZ", "2L8HBHfx", "lLB1Q6li"]}]}, {"UserIDs": ["BfV2EtFt", "TM4byjUY", "QkwgylP2"], "parties": [{"partyID": "rQNndbY4", "userIDs": ["q8jzrAYd", "S2St2j32", "QiJ3jmM9"]}, {"partyID": "R8uuIaM9", "userIDs": ["zBbvT8l9", "CpaHnKrE", "pRX5NLIS"]}, {"partyID": "xc4IYkWB", "userIDs": ["19UioAKs", "4dAZAfP5", "EA5xxXBO"]}]}, {"UserIDs": ["SHDW8mgg", "QjOzXM0A", "JxUfY19Q"], "parties": [{"partyID": "S5r1A8YQ", "userIDs": ["Q80UaalJ", "Z9vngthL", "BN7pRjOf"]}, {"partyID": "wLEimxZt", "userIDs": ["4tJHYoHP", "Kvm5ZSp7", "X3ASahtW"]}, {"partyID": "SZTYRyLC", "userIDs": ["I0LWIdBw", "JjfqACJj", "9am7hxda"]}]}], "version": 90}' \
    > test.out 2>&1
eval_tap $? 56 'AppendTeamGameSession' test.out

#- 57 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "OYGtxI1g"}' \
    > test.out 2>&1
eval_tap $? 57 'PublicPartyJoinCode' test.out

#- 58 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'dF4l9XtS' \
    > test.out 2>&1
eval_tap $? 58 'PublicGetParty' test.out

#- 59 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'cQdu5ioF' \
    --body '{"attributes": {"233eLmtF": {}, "LlgBTnNl": {}, "r6eclqCj": {}}, "inactiveTimeout": 45, "inviteTimeout": 63, "joinability": "eKdJmn4V", "maxPlayers": 25, "minPlayers": 79, "type": "pFGFw3h4", "version": 56}' \
    > test.out 2>&1
eval_tap $? 59 'PublicUpdateParty' test.out

#- 60 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'HSBpiaCx' \
    --body '{"attributes": {"3hOFod2M": {}, "eLlyZyNM": {}, "V2hksaik": {}}, "inactiveTimeout": 83, "inviteTimeout": 76, "joinability": "GCVvPEjg", "maxPlayers": 43, "minPlayers": 1, "type": "SMKen4h4", "version": 24}' \
    > test.out 2>&1
eval_tap $? 60 'PublicPatchUpdateParty' test.out

#- 61 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'X8NF7nV6' \
    > test.out 2>&1
eval_tap $? 61 'PublicGeneratePartyCode' test.out

#- 62 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId '30fcjwet' \
    > test.out 2>&1
eval_tap $? 62 'PublicRevokePartyCode' test.out

#- 63 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'ZG906AGF' \
    --body '{"platformID": "8PlwUKkZ", "userID": "VZKleUqT"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicPartyInvite' test.out

#- 64 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId '27ewLnrY' \
    --body '{"leaderID": "4JlRcFZU"}' \
    > test.out 2>&1
eval_tap $? 64 'PublicPromotePartyLeader' test.out

#- 65 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'RvQ06L9L' \
    > test.out 2>&1
eval_tap $? 65 'PublicPartyJoin' test.out

#- 66 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'JBATYwkO' \
    > test.out 2>&1
eval_tap $? 66 'PublicPartyLeave' test.out

#- 67 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'rnKRvFp2' \
    > test.out 2>&1
eval_tap $? 67 'PublicPartyReject' test.out

#- 68 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'ib5tj4rX' \
    --userId 'YNBMMZvr' \
    > test.out 2>&1
eval_tap $? 68 'PublicPartyKick' test.out

#- 69 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"5hAzmuiR": {}, "109AWdPq": {}, "y5QXafp8": {}}, "configurationName": "TtcJjMBp", "inactiveTimeout": 78, "inviteTimeout": 97, "joinability": "FDxq8SEM", "maxPlayers": 47, "members": [{"ID": "ycxyvbMi", "PlatformID": "fp5Zb96B", "PlatformUserID": "LFvM4nzg"}, {"ID": "7Bu5Wq0m", "PlatformID": "IDmTNQLx", "PlatformUserID": "3CUQ7dIe"}, {"ID": "u5RrJJR5", "PlatformID": "1t6Rov7D", "PlatformUserID": "zcqbogN8"}], "minPlayers": 13, "textChat": false, "type": "1Aug93sZ"}' \
    > test.out 2>&1
eval_tap $? 69 'PublicCreateParty' test.out

#- 70 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    > test.out 2>&1
eval_tap $? 70 'PublicGetRecentPlayer' test.out

#- 71 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'TtXscScA' \
    --body '{"G7fC78tH": {}, "rcCQnpTC": {}, "wwnGMugW": {}}' \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdateInsertSessionStorageLeader' test.out

#- 72 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'fsRThemp' \
    --userId '9U5biFv3' \
    --body '{"niRii2MD": {}, "kF65PCDl": {}, "3NSoTKcv": {}}' \
    > test.out 2>&1
eval_tap $? 72 'PublicUpdateInsertSessionStorage' test.out

#- 73 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["Z4umODsw", "dPjg7tW5", "xfL2Wtcv"]}' \
    > test.out 2>&1
eval_tap $? 73 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 74 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'PublicGetPlayerAttributes' test.out

#- 75 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": false, "currentPlatform": "PVkMq95w", "data": {"CmtkkUeY": {}, "Ymo3ECAH": {}, "yK1NtABd": {}}, "platforms": [{"name": "ANdzghZF", "userID": "R1qPcdkX"}, {"name": "cyaZnR0c", "userID": "i1Nz30AI"}, {"name": "nryAXlX4", "userID": "rP4tSENK"}], "roles": ["T7ELCtVv", "fjJJEjtD", "u0zcDtFU"], "simultaneousPlatform": "mos3EdKB"}' \
    > test.out 2>&1
eval_tap $? 75 'PublicStorePlayerAttributes' test.out

#- 76 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 76 'PublicDeletePlayerAttributes' test.out

#- 77 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'UMXjBVZ1' \
    --orderBy 'aBZ8RPHR' \
    --status '0nmncqO2' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryMyGameSessions' test.out

#- 78 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'fI1ABePt' \
    --orderBy 'b0VtJOKC' \
    --status 'UGJDXY44' \
    > test.out 2>&1
eval_tap $? 78 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE