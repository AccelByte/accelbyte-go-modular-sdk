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
echo "1..87"

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
    --body '{"logLevel": "info"}' \
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
    --body '{"metricExcludedNamespaces": ["NTHV7Ep3", "YkaSRLmu", "TrKGxRTS"], "regionRetryMapping": {"LyQhvpFo": ["CDWQFaiL", "TVaYPtHi", "MHcQmEPU"], "wxGNby6D": ["6ul6t99o", "l1VAzkV2", "lKguWHU0"], "c3Otwwve": ["TJc0tTSS", "ZXVaUL55", "0y57WDL1"]}, "regionURLMapping": ["jL6ATORZ", "TDhGfLb0", "pww1jdEg"], "testGameMode": "6Thi6Yyi", "testRegionURLMapping": ["ArlKWiWB", "rPBj3KyC", "JppUKnvX"], "testTargetUserIDs": ["rciKcUk6", "5CX7ZAFt", "QZkswx4c"]}' \
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
    --body '{"durationDays": 69}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationAlertV1' test.out

#- 13 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 60}' \
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
    --description 'v3UfqC1Y' \
    --certname 'wlvijuRe' \
    --file 'tmp.dat' \
    --password 'HhiabTnq' \
    > test.out 2>&1
eval_tap $? 15 'HandleUploadXboxPFXCertificate' test.out

#- 16 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 40, "PSNSupportedPlatforms": ["bNtffnrf", "1GSejqNA", "ynoCnNCn"], "SessionTitle": "IvBj92c3", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "ykPAvzWS", "XboxServiceConfigID": "lXqNHIBY", "XboxSessionTemplateName": "f6K4Ko0w", "XboxTitleID": "MdxjpzQm", "localizedSessionName": {"ZGUXHW46": {}, "aCSJlcMX": {}, "nVmEShqA": {}}}, "PSNBaseUrl": "Y7ly8CJc", "appName": "iseUWl6P", "attributes": {"1d0daC6v": {}, "RUrlpzwF": {}, "zKT3ZIpM": {}}, "autoJoin": false, "autoLeaveSession": false, "clientVersion": "8Rvhi69D", "customURLGRPC": "efbBmrQ6", "deployment": "GxPhvj3P", "disableCodeGeneration": false, "disableResendInvite": true, "dsManualSetReady": true, "dsSource": "xDNwWshY", "enableSecret": true, "fallbackClaimKeys": ["UzGFtczf", "Mqv15YBa", "yMm2Y8bX"], "grpcSessionConfig": {"appName": "yUmJAXD6", "customURL": "7hBwf9HF", "functionFlag": 25}, "immutableStorage": false, "inactiveTimeout": 65, "inviteTimeout": 49, "joinability": "EBZ33c0F", "leaderElectionGracePeriod": 43, "manualRejoin": false, "maxActiveSessions": 63, "maxPlayers": 17, "minPlayers": 64, "name": "RPu7xAdA", "persistent": false, "preferredClaimKeys": ["Dzg87qfX", "swqjFqqB", "3jKXf5fa"], "requestedRegions": ["0RCAOu8g", "CqrfRh5l", "4YqFRDfv"], "textChat": false, "tieTeamsSessionLifetime": false, "type": "MTYaRYYM"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateConfigurationTemplateV1' test.out

#- 17 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --name 'iHvsaAeQ' \
    --offset '20' \
    --order 'fa0IEJEk' \
    --orderBy 'f9WwglE9' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetAllConfigurationTemplatesV1' test.out

#- 18 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'KOn8L4KA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigurationTemplateV1' test.out

#- 19 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'ALp3gvv8' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 65, "PSNSupportedPlatforms": ["QNzfbafV", "eXdxv4Gk", "9K2slrBJ"], "SessionTitle": "M3XWc5wz", "ShouldSync": false, "XboxAllowCrossPlatform": true, "XboxSandboxID": "aTDENXot", "XboxServiceConfigID": "RHtNT3ay", "XboxSessionTemplateName": "MUCtN1SB", "XboxTitleID": "mpbMpJnB", "localizedSessionName": {"AMRnsGdB": {}, "kfD0Yads": {}, "5STr8c96": {}}}, "PSNBaseUrl": "UJ7y9XvK", "appName": "1UMLDscf", "attributes": {"cOkxQV92": {}, "Cmvb1WxJ": {}, "hsBeymTZ": {}}, "autoJoin": true, "autoLeaveSession": false, "clientVersion": "f5T53Wen", "customURLGRPC": "1eVzdzE4", "deployment": "6FMySikN", "disableCodeGeneration": false, "disableResendInvite": true, "dsManualSetReady": false, "dsSource": "PEU3KlhM", "enableSecret": false, "fallbackClaimKeys": ["oiEAb3R9", "QCZt7IkL", "9VgPwsai"], "grpcSessionConfig": {"appName": "SyXRSoGK", "customURL": "npjpZyoN", "functionFlag": 38}, "immutableStorage": true, "inactiveTimeout": 26, "inviteTimeout": 30, "joinability": "DNMq0kip", "leaderElectionGracePeriod": 46, "manualRejoin": false, "maxActiveSessions": 85, "maxPlayers": 97, "minPlayers": 11, "name": "HRNvlRu6", "persistent": false, "preferredClaimKeys": ["scdHvsDR", "SvkSs6yy", "og9ln3Nm"], "requestedRegions": ["S6yKWmL8", "NSioDzrC", "nT1sijHc"], "textChat": false, "tieTeamsSessionLifetime": false, "type": "AO6Fk7W6"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'qIRBIl3y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name '5oM8QuPg' \
    --namespace $AB_NAMESPACE \
    --userId 'ARF6ZlRz' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'PnUnLK6a' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "FngJWI1N"}' \
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
    --configurationName '3PGEFX1S' \
    --dsPodName 'zfHocmEo' \
    --fromTime 'z1aw4jPD' \
    --gameMode 'jGaWw7WZ' \
    --isPersistent 's9Ckx0Zw' \
    --isSoftDeleted 'jjVgQW19' \
    --joinability 'Db8hy26o' \
    --limit '93' \
    --matchPool 'SRCdfykn' \
    --memberID 'Yhb6iFtY' \
    --offset '84' \
    --order 'KiZW696d' \
    --orderBy 'ktO8EqNU' \
    --sessionID 'VyW4NEEk' \
    --status 'PmUUsl5h' \
    --statusV2 'bxUr2OQe' \
    --toTime 'w8MpKWDv' \
    > test.out 2>&1
eval_tap $? 25 'AdminQueryGameSessions' test.out

#- 26 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"Oh8ibU1o": {}, "1V8P2cRu": {}, "T0Ru0MZu": {}}' \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["uVwTI4Ev", "YTSNvHZC", "zTG8WYbY"]}' \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'TeDMepxt' \
    --body '{"ready": false}' \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminKickGameSessionMember
samples/cli/sample-apps Session adminKickGameSessionMember \
    --memberId 'wB7ucIym' \
    --namespace $AB_NAMESPACE \
    --sessionId 'IYaVO3qn' \
    > test.out 2>&1
eval_tap $? 29 'AdminKickGameSessionMember' test.out

#- 30 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'DKG2CB5o' \
    --namespace $AB_NAMESPACE \
    --sessionId 'XZTz6VDG' \
    --statusType 'CjeDnH4B' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateGameSessionMember' test.out

#- 31 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '56' \
    --order 'oQ33PATu' \
    > test.out 2>&1
eval_tap $? 31 'AdminGetListNativeSession' test.out

#- 32 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --isSoftDeleted 'EkvXyxTG' \
    --joinability 'ZlflUUw0' \
    --key 'eJlULnZS' \
    --leaderID 'RMXkqjWv' \
    --limit '56' \
    --memberID 'UZRMP98F' \
    --memberStatus 'EXk9Jsea' \
    --offset '95' \
    --order '6sVYciau' \
    --orderBy 'iVUp4XQf' \
    --partyID 'J2jqGpXq' \
    --value 'dWLaMQLS' \
    > test.out 2>&1
eval_tap $? 32 'AdminQueryParties' test.out

#- 33 AdminGetPlatformCredentials
samples/cli/sample-apps Session adminGetPlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'AdminGetPlatformCredentials' test.out

#- 34 AdminUpdatePlatformCredentials
samples/cli/sample-apps Session adminUpdatePlatformCredentials \
    --namespace $AB_NAMESPACE \
    --body '{"psn": {"clientId": "0S8paisS", "clientSecret": "yuZPZqwJ", "scope": "A9sFDA6K"}}' \
    > test.out 2>&1
eval_tap $? 34 'AdminUpdatePlatformCredentials' test.out

#- 35 AdminDeletePlatformCredentials
samples/cli/sample-apps Session adminDeletePlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'AdminDeletePlatformCredentials' test.out

#- 36 AdminGetRecentPlayer
samples/cli/sample-apps Session adminGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --userId 'lRbgga2Z' \
    > test.out 2>&1
eval_tap $? 36 'AdminGetRecentPlayer' test.out

#- 37 AdminGetRecentTeamPlayer
samples/cli/sample-apps Session adminGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --userId 'ATqmKNYl' \
    > test.out 2>&1
eval_tap $? 37 'AdminGetRecentTeamPlayer' test.out

#- 38 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'gzmAKRXh' \
    > test.out 2>&1
eval_tap $? 38 'AdminReadSessionStorage' test.out

#- 39 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'OfyIR3cL' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteUserSessionStorage' test.out

#- 40 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'XSEaQjoZ' \
    --userId 'qVdn4UNN' \
    > test.out 2>&1
eval_tap $? 40 'AdminReadUserSessionStorage' test.out

#- 41 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'ff1nzDRq' \
    > test.out 2>&1
eval_tap $? 41 'AdminQueryPlayerAttributes' test.out

#- 42 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'LO0CnSY3' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetPlayerAttributes' test.out

#- 43 AdminSyncNativeSession
samples/cli/sample-apps Session adminSyncNativeSession \
    --namespace $AB_NAMESPACE \
    --userId 'kSeb0jRD' \
    > test.out 2>&1
eval_tap $? 43 'AdminSyncNativeSession' test.out

#- 44 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "Mhxumnhp", "attributes": {"x8kiaox3": {}, "ctIa7eEK": {}, "6U58guaE": {}}, "autoJoin": false, "backfillTicketID": "XSxxosI1", "clientVersion": "z4nDe1Kt", "configurationName": "u0CsGmHX", "customURLGRPC": "XSitwPeI", "deployment": "ws5e1B4c", "dsSource": "bsbkqTJU", "fallbackClaimKeys": ["ocKLtb8R", "XH8wU1Yk", "lDgysmCI"], "inactiveTimeout": 21, "inviteTimeout": 44, "joinability": "FfahvZ7B", "matchPool": "zYXzSA0z", "maxPlayers": 37, "minPlayers": 10, "preferredClaimKeys": ["ZhJ3VoWu", "ehl2IgcP", "tnBuvIBE"], "requestedRegions": ["I9UMWRpq", "60BnK6UA", "yeFl0Rnr"], "serverName": "L1VYtiqR", "storage": {"leader": {"6yUyLvlZ": {}, "JSyAsUAH": {}, "QdW8YquX": {}}}, "teams": [{"parties": [{"partyID": "n8pfYR1M", "userIDs": ["a2mcufVr", "NensECzV", "2hLnqg2r"]}, {"partyID": "7vfgu1YH", "userIDs": ["OaYiB03h", "Kijfm32P", "2AfHL5uo"]}, {"partyID": "N3mWz1MF", "userIDs": ["WED3akP5", "SFzBnGkF", "NbT32jqq"]}], "userIDs": ["6A5ib1cM", "dJeRkg9u", "mXwNJroQ"]}, {"parties": [{"partyID": "pKmywYrD", "userIDs": ["uv31nM8b", "Ek7GNMLO", "eyo38SbY"]}, {"partyID": "7eaJI6qF", "userIDs": ["NzmdWsdc", "lYslTu37", "CyVX6ijR"]}, {"partyID": "gakDmmTg", "userIDs": ["VVavZdlA", "djHVk8AF", "R7kiYySl"]}], "userIDs": ["KhlbIsc0", "lPzCSgy8", "pJ992fE1"]}, {"parties": [{"partyID": "PjA0EaCr", "userIDs": ["EeKVBgZu", "4V4iP48v", "rKPtNmjN"]}, {"partyID": "tL0HDDoq", "userIDs": ["1eqp85fL", "REaPvGA1", "U0arCX98"]}, {"partyID": "opAeIwPp", "userIDs": ["nXZfyNDM", "fXC8mqrL", "YkjVr2cH"]}], "userIDs": ["IO5LNqnX", "Nn0BDMRu", "Uwdh7352"]}], "textChat": true, "ticketIDs": ["gTearmaA", "W0z2JpIt", "xf9LxUcq"], "tieTeamsSessionLifetime": false, "type": "b4VwKgFD"}' \
    > test.out 2>&1
eval_tap $? 44 'CreateGameSession' test.out

#- 45 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"0SRo4acy": {}, "GODuP5KT": {}, "hxYnbnUS": {}}' \
    > test.out 2>&1
eval_tap $? 45 'PublicQueryGameSessionsByAttributes' test.out

#- 46 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "xv98D3Yo"}' \
    > test.out 2>&1
eval_tap $? 46 'PublicSessionJoinCode' test.out

#- 47 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'a0aw6cDU' \
    > test.out 2>&1
eval_tap $? 47 'GetGameSessionByPodName' test.out

#- 48 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'Nwh7sRrB' \
    > test.out 2>&1
eval_tap $? 48 'GetGameSession' test.out

#- 49 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'is61Cx77' \
    --body '{"attributes": {"buGnB8nQ": {}, "wF79Q9o2": {}, "ImY5IvAx": {}}, "backfillTicketID": "HSi0pEae", "clientVersion": "TwTqYaLb", "deployment": "iHyy7zXe", "fallbackClaimKeys": ["WtJmXfp0", "uO1noN3l", "yAxQm05R"], "inactiveTimeout": 92, "inviteTimeout": 5, "joinability": "lZ2ro0Jr", "matchPool": "FKDeYAf5", "maxPlayers": 56, "minPlayers": 16, "preferredClaimKeys": ["4JyjOkK1", "ae177j2N", "r5FHxpSh"], "requestedRegions": ["p6HTdyKD", "15F1NYDQ", "Rwp3ifq6"], "teams": [{"parties": [{"partyID": "xzirIyzD", "userIDs": ["NJ9S5ZqU", "zQrquDbf", "Bs11QWLW"]}, {"partyID": "KKxrdjtT", "userIDs": ["mZwa2kCu", "sJMboumV", "Oiz495Nr"]}, {"partyID": "H0MET7D0", "userIDs": ["UV71VbcX", "Ow5DvobR", "9i12J7wy"]}], "userIDs": ["Qo7IY13O", "gAGyzaLM", "eBhemVpv"]}, {"parties": [{"partyID": "r4i7COb3", "userIDs": ["boyJkCsJ", "Vk58ZIMV", "n2gQXQwk"]}, {"partyID": "uyhgSpm4", "userIDs": ["FQuufbY5", "L8yNlbGd", "HItA6KNf"]}, {"partyID": "Mf8sHg06", "userIDs": ["ivZwxjTr", "ft6HItXL", "gAxUkrul"]}], "userIDs": ["PTmpDi50", "oN28jjTw", "wDJL6Syd"]}, {"parties": [{"partyID": "WKOgWjvD", "userIDs": ["v6UVrdFy", "7ZU6vg6h", "A7xeYlIY"]}, {"partyID": "0uV1cpSH", "userIDs": ["ts1WOyR4", "RYdxALRc", "Wfs5nevi"]}, {"partyID": "hs6FB9A1", "userIDs": ["sfDt5L8x", "4GRGqaB0", "0xHsBbsK"]}], "userIDs": ["91zuKfZE", "HNqSUqfn", "rKuXFK9K"]}], "ticketIDs": ["8467psNV", "tey3NrTU", "mjmH46yV"], "tieTeamsSessionLifetime": true, "type": "GFGqw7cJ", "version": 18}' \
    > test.out 2>&1
eval_tap $? 49 'UpdateGameSession' test.out

#- 50 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'DPjycsQm' \
    > test.out 2>&1
eval_tap $? 50 'DeleteGameSession' test.out

#- 51 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'vgI31OPT' \
    --body '{"attributes": {"Q8ltCtRF": {}, "550cme89": {}, "NOgXkU2w": {}}, "backfillTicketID": "gELs56Er", "clientVersion": "QDy0MlVN", "deployment": "opfjcyR6", "fallbackClaimKeys": ["tNzLKfsQ", "7376B8nn", "taShA4YP"], "inactiveTimeout": 11, "inviteTimeout": 54, "joinability": "cXTfAixC", "matchPool": "epxx3x9m", "maxPlayers": 5, "minPlayers": 39, "preferredClaimKeys": ["cDfbrYXR", "3RC0QLuo", "hhdfowEu"], "requestedRegions": ["F634RUtH", "SQCYPX19", "L1niGucA"], "teams": [{"parties": [{"partyID": "QSQ8g0Ta", "userIDs": ["8saZe7oG", "TgZ4sxKl", "Js6VAMNd"]}, {"partyID": "X5Ja9HVA", "userIDs": ["X3VoT5rY", "ti5hJcoe", "bDxtZGqc"]}, {"partyID": "vLzRxOfK", "userIDs": ["r6UEh3ps", "LMNRjKXr", "ToACaMlL"]}], "userIDs": ["0uD3zxBP", "4f8xWbgE", "7TBsxNPR"]}, {"parties": [{"partyID": "P15jKbIR", "userIDs": ["KUsMa30Q", "dcEpLmtV", "49xWPHah"]}, {"partyID": "2T0mJpmq", "userIDs": ["A5s5r2Iu", "1W6AmEJj", "DNfnwAHK"]}, {"partyID": "wkTAnB0Q", "userIDs": ["f4tdYe9f", "9VS1yRY4", "k5vh30wL"]}], "userIDs": ["6HOvGNyc", "u9SQBZyD", "KKJKELQY"]}, {"parties": [{"partyID": "1nN54QqB", "userIDs": ["DCQiGjhv", "eYa2cUfv", "W6UirIbv"]}, {"partyID": "7mIJd5XN", "userIDs": ["FFhE9J9S", "tWKLVlRk", "Ip2DsE6n"]}, {"partyID": "VQpT1dnk", "userIDs": ["LToUUJB1", "OqVC2hzb", "6kvDWXxB"]}], "userIDs": ["FHBjMfV1", "vssZDSGd", "llhgECl9"]}], "ticketIDs": ["wi9tfCdy", "iGhXag5i", "zHlN2NNX"], "tieTeamsSessionLifetime": true, "type": "S1yCRnVd", "version": 47}' \
    > test.out 2>&1
eval_tap $? 51 'PatchUpdateGameSession' test.out

#- 52 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId '2YwVJEkj' \
    --body '{"backfillTicketID": "asKCRPSW"}' \
    > test.out 2>&1
eval_tap $? 52 'UpdateGameSessionBackfillTicketID' test.out

#- 53 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'PzNbEY7i' \
    > test.out 2>&1
eval_tap $? 53 'GameSessionGenerateCode' test.out

#- 54 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'CEhagUQ3' \
    > test.out 2>&1
eval_tap $? 54 'PublicRevokeGameSessionCode' test.out

#- 55 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'XqzdFKIW' \
    --body '{"platformID": "pKn96fBP", "userID": "4LtiWhCu"}' \
    > test.out 2>&1
eval_tap $? 55 'PublicGameSessionInvite' test.out

#- 56 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'V74hwIPs' \
    > test.out 2>&1
eval_tap $? 56 'JoinGameSession' test.out

#- 57 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'Ll6cRpjS' \
    --body '{"leaderID": "31x2xGIj"}' \
    > test.out 2>&1
eval_tap $? 57 'PublicPromoteGameSessionLeader' test.out

#- 58 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'HSZzrbrO' \
    > test.out 2>&1
eval_tap $? 58 'LeaveGameSession' test.out

#- 59 PublicKickGameSessionMember
samples/cli/sample-apps Session publicKickGameSessionMember \
    --memberId '0GTCy4YD' \
    --namespace $AB_NAMESPACE \
    --sessionId 'crv0OGiG' \
    > test.out 2>&1
eval_tap $? 59 'PublicKickGameSessionMember' test.out

#- 60 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'ex1SGy8t' \
    > test.out 2>&1
eval_tap $? 60 'PublicGameSessionReject' test.out

#- 61 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId 'mKZDTvRu' \
    > test.out 2>&1
eval_tap $? 61 'GetSessionServerSecret' test.out

#- 62 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'q8dzkZdM' \
    --body '{"additionalMembers": [{"partyID": "QuDYabBm", "userIDs": ["oZj8iDgX", "WMkzqQ14", "aoGYGk9O"]}, {"partyID": "zhNQrpVW", "userIDs": ["rXyPIw73", "4HRBNuum", "kcKO8H7G"]}, {"partyID": "4EzleWAM", "userIDs": ["oS9ukn3u", "gQmVUmju", "5AH2TbPL"]}], "proposedTeams": [{"parties": [{"partyID": "g3BGf6IF", "userIDs": ["GqlTdx5M", "II9himvs", "Ag4i564Q"]}, {"partyID": "5suK0AbH", "userIDs": ["8Jqy9E5Q", "lkUZPYDO", "XyeBCaXF"]}, {"partyID": "0JNoUV0i", "userIDs": ["VTJaLdUV", "ei09ELIK", "iB2KCFXS"]}], "userIDs": ["VMa1Mn9m", "K1QsliNw", "WxJTM4DE"]}, {"parties": [{"partyID": "cgpogaAL", "userIDs": ["mjVESOxe", "bv2ELwG2", "nKhXfCfR"]}, {"partyID": "H2UjbXb6", "userIDs": ["gzlTZ4Wv", "ukeGZSVF", "9S0oW8f4"]}, {"partyID": "SZeSIXEu", "userIDs": ["Uu9SBCfg", "921dlalh", "HrQKfpVa"]}], "userIDs": ["lvuZ2CTY", "ebxhD7oh", "YLmPJL3l"]}, {"parties": [{"partyID": "vygpa3o7", "userIDs": ["2yVrTSdm", "GcawnXG0", "vHClaNhf"]}, {"partyID": "1sq9PB9w", "userIDs": ["DH5fE7Je", "UP3eXW5g", "fbnzzW9j"]}, {"partyID": "NFkNbzkr", "userIDs": ["9sRjO2gN", "9bKcduh0", "TbaXFIq8"]}], "userIDs": ["GBTPIa3t", "3fkhDPI0", "lRcwq6HV"]}], "version": 26}' \
    > test.out 2>&1
eval_tap $? 62 'AppendTeamGameSession' test.out

#- 63 PublicGameSessionCancel
samples/cli/sample-apps Session publicGameSessionCancel \
    --namespace $AB_NAMESPACE \
    --sessionId 'lItOkn2E' \
    --userId '6lNKYtUJ' \
    > test.out 2>&1
eval_tap $? 63 'PublicGameSessionCancel' test.out

#- 64 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "mPWdPt8A"}' \
    > test.out 2>&1
eval_tap $? 64 'PublicPartyJoinCode' test.out

#- 65 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'A8y5IgmV' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetParty' test.out

#- 66 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'Jfh96t9E' \
    --body '{"attributes": {"2XeJZ1KH": {}, "Jk2mXiQU": {}, "SyftjwqX": {}}, "inactiveTimeout": 70, "inviteTimeout": 75, "joinability": "GemBeRoO", "maxPlayers": 81, "minPlayers": 83, "type": "Jw6CkwYn", "version": 55}' \
    > test.out 2>&1
eval_tap $? 66 'PublicUpdateParty' test.out

#- 67 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'OvHxRS8g' \
    --body '{"attributes": {"R6I8G16m": {}, "nkJw6E03": {}, "zO1HELCx": {}}, "inactiveTimeout": 11, "inviteTimeout": 79, "joinability": "qDu4mBlI", "maxPlayers": 96, "minPlayers": 71, "type": "CqRDVnvW", "version": 28}' \
    > test.out 2>&1
eval_tap $? 67 'PublicPatchUpdateParty' test.out

#- 68 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'ZpjrbhxP' \
    > test.out 2>&1
eval_tap $? 68 'PublicGeneratePartyCode' test.out

#- 69 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId '7xJmqPiZ' \
    > test.out 2>&1
eval_tap $? 69 'PublicRevokePartyCode' test.out

#- 70 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'gQ7JDILN' \
    --body '{"platformID": "78lWIVyM", "userID": "BL1Mm0F2"}' \
    > test.out 2>&1
eval_tap $? 70 'PublicPartyInvite' test.out

#- 71 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'b7wDz9Np' \
    --body '{"leaderID": "hPwOArcU"}' \
    > test.out 2>&1
eval_tap $? 71 'PublicPromotePartyLeader' test.out

#- 72 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'M3219EYf' \
    > test.out 2>&1
eval_tap $? 72 'PublicPartyJoin' test.out

#- 73 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'yAXDHJiZ' \
    > test.out 2>&1
eval_tap $? 73 'PublicPartyLeave' test.out

#- 74 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId '1RNPCEs2' \
    > test.out 2>&1
eval_tap $? 74 'PublicPartyReject' test.out

#- 75 PublicPartyCancel
samples/cli/sample-apps Session publicPartyCancel \
    --namespace $AB_NAMESPACE \
    --partyId 'ofUWJk4e' \
    --userId 'wIBpfqoZ' \
    > test.out 2>&1
eval_tap $? 75 'PublicPartyCancel' test.out

#- 76 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'tlGjSY8c' \
    --userId '9HAD04uV' \
    > test.out 2>&1
eval_tap $? 76 'PublicPartyKick' test.out

#- 77 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"d9YQWMjo": {}, "SsZr6qvJ": {}, "6xBoXfE0": {}}, "configurationName": "avW1uwCh", "inactiveTimeout": 13, "inviteTimeout": 14, "joinability": "Rk9YnPqA", "maxPlayers": 10, "members": [{"ID": "R6Br9h0M", "PlatformID": "Ey0ox28i", "PlatformUserID": "WQWRrJPj"}, {"ID": "d9SrExzd", "PlatformID": "MzW5M3Cb", "PlatformUserID": "a64hhBlZ"}, {"ID": "c7bHLIDG", "PlatformID": "EbqQEidD", "PlatformUserID": "QxHOyIOp"}], "minPlayers": 56, "textChat": true, "type": "naYOyQZr"}' \
    > test.out 2>&1
eval_tap $? 77 'PublicCreateParty' test.out

#- 78 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    > test.out 2>&1
eval_tap $? 78 'PublicGetRecentPlayer' test.out

#- 79 PublicGetRecentTeamPlayer
samples/cli/sample-apps Session publicGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    > test.out 2>&1
eval_tap $? 79 'PublicGetRecentTeamPlayer' test.out

#- 80 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'OGGus3le' \
    --body '{"EIEM3Pr6": {}, "e7yOJ6F6": {}, "3OCPt1vZ": {}}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateInsertSessionStorageLeader' test.out

#- 81 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId '141gpVU6' \
    --userId 'MC2syuJi' \
    --body '{"MFxF54gq": {}, "oUZRiUB0": {}, "veVY6W2l": {}}' \
    > test.out 2>&1
eval_tap $? 81 'PublicUpdateInsertSessionStorage' test.out

#- 82 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["3J5uBNlP", "NeqaLGsJ", "Lvh7qHsX"]}' \
    > test.out 2>&1
eval_tap $? 82 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 83 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 83 'PublicGetPlayerAttributes' test.out

#- 84 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": false, "currentPlatform": "xBJErArV", "data": {"ZFFw5cv3": {}, "SaG7c7V4": {}, "EQ6EyPtl": {}}, "platforms": [{"name": "FsVf63Fi", "userID": "TZ3t2VMz"}, {"name": "cyqQim0B", "userID": "Mwf274hl"}, {"name": "YfIeSBxS", "userID": "fzVb2A2g"}], "roles": ["p2mIoQhu", "WGiZopJD", "HDyVDYaz"], "simultaneousPlatform": "u1KpGL1r"}' \
    > test.out 2>&1
eval_tap $? 84 'PublicStorePlayerAttributes' test.out

#- 85 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 85 'PublicDeletePlayerAttributes' test.out

#- 86 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'GRbzbB8D' \
    --orderBy 'HzIgv3Kx' \
    --status 'MUVCJtZz' \
    > test.out 2>&1
eval_tap $? 86 'PublicQueryMyGameSessions' test.out

#- 87 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'M1YsutFJ' \
    --orderBy 'MrsMtuOM' \
    --status 'MpXQ1Gif' \
    > test.out 2>&1
eval_tap $? 87 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE