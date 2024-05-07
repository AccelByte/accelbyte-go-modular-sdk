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
echo "1..80"

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
    --body '{"regionRetryMapping": {"EJuqWGnz": ["sMQBkFn3", "VHDjfPOJ", "DBhgJYV7"], "RrmKq9xA": ["YeUR4x8A", "6GUTJJfo", "Oia9AYaa"], "to4u1yl9": ["m6mg5Exs", "Zk36RwoY", "3Zvb9lJA"]}, "regionURLMapping": ["Xk23THgM", "bn0EmrQv", "di1F7LOi"], "testGameMode": "fFhRnwAx", "testRegionURLMapping": ["3TB6zZnl", "s21jStcu", "W4XLexrZ"], "testTargetUserIDs": ["HS3XsvAi", "RroKLgPz", "V7l7EO6k"]}' \
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
    --body '{"durationDays": 3}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateConfigurationAlertV1' test.out

#- 11 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 49}' \
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
    --description 'VL9bRqAz' \
    --certname 's4Trnlqb' \
    --file 'tmp.dat' \
    --password 'Cd8Wkzfp' \
    > test.out 2>&1
eval_tap $? 13 'HandleUploadXboxPFXCertificate' test.out

#- 14 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 94, "PSNSupportedPlatforms": ["NWyZeRwS", "930yaggU", "pCa8UBvz"], "SessionTitle": "vQHgNWlc", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "gFm7WRVO", "XboxServiceConfigID": "oauaCMXy", "XboxSessionTemplateName": "kLtUqbkn", "XboxTitleID": "Zzr42kk5", "localizedSessionName": {"g7UZYuXL": {}, "ScWLsZNq": {}, "fNL8CYTx": {}}}, "PSNBaseUrl": "VZBfGOic", "attributes": {"ftJQgtM8": {}, "oDrk97OT": {}, "k3JvbSZJ": {}}, "autoJoin": false, "autoLeaveSession": false, "clientVersion": "X7fSywOK", "deployment": "tlnKvRjo", "disableCodeGeneration": false, "dsManualSetReady": false, "dsSource": "DN6wkxL7", "enableSecret": true, "fallbackClaimKeys": ["nd9U64cp", "xIJHhRLj", "ZvIB5tIj"], "immutableStorage": false, "inactiveTimeout": 68, "inviteTimeout": 68, "joinability": "ory53D0g", "leaderElectionGracePeriod": 47, "manualRejoin": true, "maxActiveSessions": 18, "maxPlayers": 92, "minPlayers": 99, "name": "qeFRmqp2", "persistent": true, "preferredClaimKeys": ["fZN91Ptr", "Utn6qaY1", "yednXLZO"], "requestedRegions": ["867LQz41", "XUAUwZxB", "OL4YhlzR"], "textChat": true, "tieTeamsSessionLifetime": false, "type": "eeSdBGow"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminCreateConfigurationTemplateV1' test.out

#- 15 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --name 'YYuAPqYy' \
    --offset '63' \
    --order '5C58WtKf' \
    --orderBy 'CtmXfkVu' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetAllConfigurationTemplatesV1' test.out

#- 16 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'lT6TJHhd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetConfigurationTemplateV1' test.out

#- 17 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'MR77Qthk' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 19, "PSNSupportedPlatforms": ["08SauoEm", "D9aLQiuB", "a7TVqucr"], "SessionTitle": "iuEZEtiC", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "wMwM8X8v", "XboxServiceConfigID": "b1xRKLc4", "XboxSessionTemplateName": "GVskosBT", "XboxTitleID": "wI50raTB", "localizedSessionName": {"YvNlm2ov": {}, "h22JuVcH": {}, "zK9xMMvJ": {}}}, "PSNBaseUrl": "LNqe4s4D", "attributes": {"yNrHoykj": {}, "XrGYkMEm": {}, "ZE7cpROD": {}}, "autoJoin": true, "autoLeaveSession": true, "clientVersion": "pmQX62Wl", "deployment": "YQO4GmCf", "disableCodeGeneration": true, "dsManualSetReady": true, "dsSource": "DXR20JtH", "enableSecret": true, "fallbackClaimKeys": ["T7ex1fg2", "mOxZO2Mh", "JvX06tog"], "immutableStorage": false, "inactiveTimeout": 98, "inviteTimeout": 58, "joinability": "n2pgxEbv", "leaderElectionGracePeriod": 100, "manualRejoin": false, "maxActiveSessions": 1, "maxPlayers": 18, "minPlayers": 6, "name": "tyLAItXy", "persistent": false, "preferredClaimKeys": ["cPL7vsdG", "Lwey9lQr", "IHnGXAxw"], "requestedRegions": ["LznQeOPI", "9170cWvC", "0nac8cLX"], "textChat": false, "tieTeamsSessionLifetime": false, "type": "B9h7EgaQ"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateConfigurationTemplateV1' test.out

#- 18 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name '6MBNtZyS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteConfigurationTemplateV1' test.out

#- 19 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 'SiD4MoyQ' \
    --namespace $AB_NAMESPACE \
    --userId 'aMaV7Tpt' \
    > test.out 2>&1
eval_tap $? 19 'AdminGetMemberActiveSession' test.out

#- 20 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'qkCZ0eEH' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "bmeMoXL6"}' \
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
    --configurationName 'syXB5F28' \
    --dsPodName 'h4EbLvp0' \
    --fromTime '90IEYurW' \
    --gameMode 'pMl1OGxU' \
    --isPersistent 'mYfI6Sgu' \
    --isSoftDeleted 'oby56dF0' \
    --joinability 'SGfIQ17n' \
    --limit '15' \
    --matchPool '1xmvQwW2' \
    --memberID '7VcQfFxv' \
    --offset '25' \
    --order 'qmqpCUd5' \
    --orderBy 'n4lvI7Fh' \
    --sessionID 'U9ztzM6h' \
    --status 'V5SoCV0q' \
    --statusV2 'gesCPpXH' \
    --toTime 'LPeFNRdG' \
    > test.out 2>&1
eval_tap $? 23 'AdminQueryGameSessions' test.out

#- 24 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"FbR9m2Ks": {}, "BezTcRYB": {}, "242V2RqD": {}}' \
    > test.out 2>&1
eval_tap $? 24 'AdminQueryGameSessionsByAttributes' test.out

#- 25 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["qXI6biwh", "vWQBi5Gg", "2ZhilJ5R"]}' \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteBulkGameSessions' test.out

#- 26 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'JjBdQpzm' \
    --body '{"ready": false}' \
    > test.out 2>&1
eval_tap $? 26 'AdminSetDSReady' test.out

#- 27 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId '6cJdAQ7K' \
    --namespace $AB_NAMESPACE \
    --sessionId 'DgAMRvgR' \
    --statusType 'A5t57wvu' \
    > test.out 2>&1
eval_tap $? 27 'AdminUpdateGameSessionMember' test.out

#- 28 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '47' \
    --order 'vB7eTng8' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetListNativeSession' test.out

#- 29 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --isSoftDeleted 'hk4pxGCz' \
    --joinability '56PCz9QY' \
    --key 'BmXdUh8L' \
    --leaderID 'PGAtB2Ur' \
    --limit '70' \
    --memberID 'IQdTSnyy' \
    --memberStatus '7yZ5f2uF' \
    --offset '79' \
    --order 'M2bjEgoP' \
    --orderBy 'JAheFb6o' \
    --partyID 'BiZdJJzS' \
    --value 'r82riJqS' \
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
    --body '{"psn": {"clientId": "j6un5mDM", "clientSecret": "rl3CcuBu", "scope": "RCx7jCyT"}}' \
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
    --limit '3' \
    --userId 'pqECyvag' \
    > test.out 2>&1
eval_tap $? 33 'AdminGetRecentPlayer' test.out

#- 34 AdminGetRecentTeamPlayer
samples/cli/sample-apps Session adminGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --userId 'FxbMifdk' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetRecentTeamPlayer' test.out

#- 35 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'dpOC1fIX' \
    > test.out 2>&1
eval_tap $? 35 'AdminReadSessionStorage' test.out

#- 36 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'o5x5H1al' \
    > test.out 2>&1
eval_tap $? 36 'AdminDeleteUserSessionStorage' test.out

#- 37 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'giMi6A5e' \
    --userId '7mxG4LvR' \
    > test.out 2>&1
eval_tap $? 37 'AdminReadUserSessionStorage' test.out

#- 38 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'Y7mM5nw0' \
    > test.out 2>&1
eval_tap $? 38 'AdminQueryPlayerAttributes' test.out

#- 39 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'lWagl7uG' \
    > test.out 2>&1
eval_tap $? 39 'AdminGetPlayerAttributes' test.out

#- 40 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"dgRrwX4t": {}, "12ApNZl6": {}, "zYcgO8su": {}}, "autoJoin": true, "backfillTicketID": "Okz7xpCM", "clientVersion": "BjkAFP1E", "configurationName": "ksA575DL", "deployment": "iQEZaCTv", "dsSource": "McTpEM65", "fallbackClaimKeys": ["Fjc37q9c", "O9AaVyBI", "mPoq5HOD"], "inactiveTimeout": 1, "inviteTimeout": 7, "joinability": "GjCq4Pz9", "matchPool": "40KqSUls", "maxPlayers": 74, "minPlayers": 55, "preferredClaimKeys": ["ka5H9ZwJ", "N9aYeL85", "FnLIDyCv"], "requestedRegions": ["c3A8b9ZO", "Sp0RQ3wm", "1Ywx6uOO"], "serverName": "UbzK3G5S", "teams": [{"UserIDs": ["1lgsdYaz", "3RvGFOB0", "WB1Ct8FA"], "parties": [{"partyID": "sGFjGEaP", "userIDs": ["em1lAQz7", "FGD3pbEs", "nYSwoSjZ"]}, {"partyID": "yP9hm9uj", "userIDs": ["G82I1pkO", "f639dNKV", "PAGwNcqO"]}, {"partyID": "KDafaAeR", "userIDs": ["0O5mRg1n", "EkQPPg0P", "QXGVRQBD"]}]}, {"UserIDs": ["wVMu2uGJ", "v3H4Rmr4", "2OZvQlCy"], "parties": [{"partyID": "7PTsDyLF", "userIDs": ["yxupTTbR", "J97pMf2e", "uKTQkHNQ"]}, {"partyID": "wDZWvkJA", "userIDs": ["jdcu6iRy", "zeaNTHmw", "ua4d0fjI"]}, {"partyID": "dpfJYz0H", "userIDs": ["qZUsPLB8", "PXALc8Xb", "eYO0q3Aq"]}]}, {"UserIDs": ["lM68iU93", "8rKXPWwB", "xBGRGn5w"], "parties": [{"partyID": "0QsIJFI7", "userIDs": ["0ZsYcUUP", "JSqnlAor", "TY7nsTS7"]}, {"partyID": "lWcAldXz", "userIDs": ["05fMzkdb", "wpoiN5zX", "uvUasOJa"]}, {"partyID": "LcRH0E0B", "userIDs": ["FxfgOMdV", "jGIaSpkz", "g9mhXBU5"]}]}], "textChat": false, "ticketIDs": ["HQB1JxlI", "GQL0uuwi", "ApCXNN0K"], "tieTeamsSessionLifetime": false, "type": "9qw5T5uc"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateGameSession' test.out

#- 41 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"lPyR1quJ": {}, "1IQgmFKU": {}, "xhQvpQ3Y": {}}' \
    > test.out 2>&1
eval_tap $? 41 'PublicQueryGameSessionsByAttributes' test.out

#- 42 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "vi0eDUul"}' \
    > test.out 2>&1
eval_tap $? 42 'PublicSessionJoinCode' test.out

#- 43 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'YxiXcnJV' \
    > test.out 2>&1
eval_tap $? 43 'GetGameSessionByPodName' test.out

#- 44 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 's6DCldEO' \
    > test.out 2>&1
eval_tap $? 44 'GetGameSession' test.out

#- 45 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '7E2nIgxo' \
    --body '{"attributes": {"ZrHcrntR": {}, "b5p2vC67": {}, "PhZkJknZ": {}}, "backfillTicketID": "e0A0BgM1", "clientVersion": "IfQEVBK6", "deployment": "ALC0YhYQ", "fallbackClaimKeys": ["q28BuIA9", "xbm5AjWM", "QFqerg8D"], "inactiveTimeout": 58, "inviteTimeout": 30, "joinability": "1GHZ2UNO", "matchPool": "Ha5vJqLK", "maxPlayers": 57, "minPlayers": 6, "preferredClaimKeys": ["1i7sX3lu", "7wwxfUNj", "0nVhFQwo"], "requestedRegions": ["DZiTMzPG", "YMUJotPh", "GXNN8qZw"], "teams": [{"UserIDs": ["5eZDo4Fp", "gc14rdX1", "3xWjdeas"], "parties": [{"partyID": "WHctE7qL", "userIDs": ["L2LdidbW", "4ouUAGNy", "ZQQ8r5XZ"]}, {"partyID": "OgMk3i6K", "userIDs": ["0dD3GYuC", "KeqCO1gp", "apOBUlT6"]}, {"partyID": "ovQlXcds", "userIDs": ["GV8lXU5j", "oSb5XHag", "BlI52sE8"]}]}, {"UserIDs": ["OSp3pMHE", "GgtlsqjK", "rjVIKadC"], "parties": [{"partyID": "Jf4X82R6", "userIDs": ["s3AjFeFS", "yqCPyjFn", "5yCwg37v"]}, {"partyID": "iXAPezb9", "userIDs": ["sFv2o5Sv", "IHHuOsqq", "3wb9hLNN"]}, {"partyID": "3l2S7PRP", "userIDs": ["6mBWvkq2", "ubK5zHMA", "Nj8kTZZd"]}]}, {"UserIDs": ["Q8PpWSMZ", "8oIrsj3H", "6vX17Z1Y"], "parties": [{"partyID": "LQIH5Om8", "userIDs": ["K0hRPs9A", "wzAG15O3", "LAT12PgJ"]}, {"partyID": "2xqCRbK0", "userIDs": ["4cePr2zw", "JWZiuXHT", "OiWg8ecl"]}, {"partyID": "Mc6DgdUU", "userIDs": ["cCYt1fTE", "Wh0Yq8Sx", "yG7cbami"]}]}], "ticketIDs": ["WSVjhrqI", "g42l6DsZ", "kQHglxJe"], "tieTeamsSessionLifetime": false, "type": "OzPDwAc6", "version": 92}' \
    > test.out 2>&1
eval_tap $? 45 'UpdateGameSession' test.out

#- 46 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'YK1ryfzZ' \
    > test.out 2>&1
eval_tap $? 46 'DeleteGameSession' test.out

#- 47 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '1VNlLbeU' \
    --body '{"attributes": {"vWKlg5NK": {}, "n6qEMouX": {}, "s99Yn1Ah": {}}, "backfillTicketID": "E0foOD63", "clientVersion": "OzotgbFe", "deployment": "QznH8rnq", "fallbackClaimKeys": ["Q9sPhsqi", "vQqXKa3e", "oGTRJZgk"], "inactiveTimeout": 52, "inviteTimeout": 51, "joinability": "rxwCRByA", "matchPool": "cyqeMEsc", "maxPlayers": 20, "minPlayers": 32, "preferredClaimKeys": ["SU9NrArt", "YGWkBKE2", "ZVYs1ioj"], "requestedRegions": ["iu4UYsgo", "ZkKJdzCn", "IiiNcvwB"], "teams": [{"UserIDs": ["fHK7lZKM", "rmsu7VIK", "TctAZgG3"], "parties": [{"partyID": "ef7F9pWD", "userIDs": ["Jw9NdfTt", "oBrrqiDW", "a8k6ACfJ"]}, {"partyID": "XSuWBDPX", "userIDs": ["Qkc4NRz0", "iQZyLUit", "hsoLSsgV"]}, {"partyID": "FBTWpBD3", "userIDs": ["gJC1hFWM", "f1oL06Vk", "WEldhxMz"]}]}, {"UserIDs": ["qgON7GAN", "Hb36rIkq", "YfUYKcO3"], "parties": [{"partyID": "0TeVqjaj", "userIDs": ["npESNhiO", "2ye1QKso", "blkagQ93"]}, {"partyID": "31r4CsZp", "userIDs": ["wAFdfFDU", "8HinS45c", "4AsMVV5R"]}, {"partyID": "p8YzmHVC", "userIDs": ["6qIALk7W", "fXzaJINs", "q6eNmcKj"]}]}, {"UserIDs": ["Vpx34b96", "lbp0Rl19", "f5VBmjuI"], "parties": [{"partyID": "gYHg22Tt", "userIDs": ["NlGvsSN1", "XqsvjwNc", "UzzjqXEx"]}, {"partyID": "61aYLkkp", "userIDs": ["fT0VYPyH", "dqb1mvgO", "by6q0Qsf"]}, {"partyID": "UGZjlBgz", "userIDs": ["zU5RBbQP", "0FOCd6Pt", "VdRBLRUD"]}]}], "ticketIDs": ["bJoPKlDS", "vVV7DFK1", "9DUYlBPS"], "tieTeamsSessionLifetime": true, "type": "6uOxwsq7", "version": 41}' \
    > test.out 2>&1
eval_tap $? 47 'PatchUpdateGameSession' test.out

#- 48 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId '3a9uAwJh' \
    --body '{"backfillTicketID": "MvoP2HsS"}' \
    > test.out 2>&1
eval_tap $? 48 'UpdateGameSessionBackfillTicketID' test.out

#- 49 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId '63vrxKhF' \
    > test.out 2>&1
eval_tap $? 49 'GameSessionGenerateCode' test.out

#- 50 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'HJvzmBvh' \
    > test.out 2>&1
eval_tap $? 50 'PublicRevokeGameSessionCode' test.out

#- 51 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'sOiolpic' \
    --body '{"platformID": "0pB9yCQD", "userID": "HfuABFLU"}' \
    > test.out 2>&1
eval_tap $? 51 'PublicGameSessionInvite' test.out

#- 52 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'L3DEICJ0' \
    > test.out 2>&1
eval_tap $? 52 'JoinGameSession' test.out

#- 53 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'oZFZ2zMO' \
    --body '{"leaderID": "I1TLLuvA"}' \
    > test.out 2>&1
eval_tap $? 53 'PublicPromoteGameSessionLeader' test.out

#- 54 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'Z4Oiib12' \
    > test.out 2>&1
eval_tap $? 54 'LeaveGameSession' test.out

#- 55 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'MehqJsqs' \
    > test.out 2>&1
eval_tap $? 55 'PublicGameSessionReject' test.out

#- 56 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId 'XOXOhbCa' \
    > test.out 2>&1
eval_tap $? 56 'GetSessionServerSecret' test.out

#- 57 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '4twPFavw' \
    --body '{"additionalMembers": [{"partyID": "WNwo0Lfi", "userIDs": ["1ilSMDlN", "Zy1RlI6A", "dbs7wJa9"]}, {"partyID": "4T9M2Y86", "userIDs": ["73PHtEDp", "JqsLQWce", "ulYt4KNy"]}, {"partyID": "0zFixIK9", "userIDs": ["ed8Ihdgc", "HkAvxpHR", "81nLybMz"]}], "proposedTeams": [{"UserIDs": ["fIvJxna1", "Gvmx2ra1", "trwiUvSD"], "parties": [{"partyID": "ydu880Ic", "userIDs": ["O2gnsSNQ", "903eL7Pw", "49QVSWuf"]}, {"partyID": "nleiecXz", "userIDs": ["pCtGRd08", "b2eATFKg", "0SrNenkr"]}, {"partyID": "9ap9ngDw", "userIDs": ["C4kqk3sN", "fvxz5iv2", "Xge9EBtH"]}]}, {"UserIDs": ["NUsaypne", "hfprMa9P", "80Nr25Ge"], "parties": [{"partyID": "UsrHsnmy", "userIDs": ["zi5dPKrM", "W0PizhC8", "ahcATHx2"]}, {"partyID": "1JRxK0mm", "userIDs": ["6EkOvkwq", "fcH5aqgV", "FDT4lodH"]}, {"partyID": "jt4flpMY", "userIDs": ["0RtBteFI", "Tq6ffbBI", "HgMERJPj"]}]}, {"UserIDs": ["5WZCGvhI", "wAhvv4sE", "x8GPOtRP"], "parties": [{"partyID": "iRFOJGVD", "userIDs": ["qTQHqf0M", "9RYrNUfe", "M0vMdZqR"]}, {"partyID": "RWoeSuVC", "userIDs": ["yOYyBiX1", "H8Fl7A8G", "n4YBNXoX"]}, {"partyID": "v39kVvYi", "userIDs": ["FPihdZ4r", "SLFd3jeX", "MYc9Hrxu"]}]}], "version": 89}' \
    > test.out 2>&1
eval_tap $? 57 'AppendTeamGameSession' test.out

#- 58 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "C6pXMYo5"}' \
    > test.out 2>&1
eval_tap $? 58 'PublicPartyJoinCode' test.out

#- 59 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'Y3Goa3WS' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetParty' test.out

#- 60 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'R0diJ0RN' \
    --body '{"attributes": {"XTfzZcB7": {}, "IFFimZ9S": {}, "qM4fpBGe": {}}, "inactiveTimeout": 6, "inviteTimeout": 60, "joinability": "vUvKd2Au", "maxPlayers": 96, "minPlayers": 62, "type": "kHKDYbje", "version": 93}' \
    > test.out 2>&1
eval_tap $? 60 'PublicUpdateParty' test.out

#- 61 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'qEA3K9xM' \
    --body '{"attributes": {"9yb5JpGx": {}, "osULnDa5": {}, "OKQnRyfq": {}}, "inactiveTimeout": 22, "inviteTimeout": 22, "joinability": "xZZReLt6", "maxPlayers": 78, "minPlayers": 11, "type": "OonTVKhU", "version": 23}' \
    > test.out 2>&1
eval_tap $? 61 'PublicPatchUpdateParty' test.out

#- 62 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId '7SwD9iBs' \
    > test.out 2>&1
eval_tap $? 62 'PublicGeneratePartyCode' test.out

#- 63 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'oRYF2CBx' \
    > test.out 2>&1
eval_tap $? 63 'PublicRevokePartyCode' test.out

#- 64 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'CAovBddk' \
    --body '{"platformID": "44lB6nRz", "userID": "bwquZKzk"}' \
    > test.out 2>&1
eval_tap $? 64 'PublicPartyInvite' test.out

#- 65 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'av2SAtE5' \
    --body '{"leaderID": "gp89RBMI"}' \
    > test.out 2>&1
eval_tap $? 65 'PublicPromotePartyLeader' test.out

#- 66 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId '9ZVVL1Kh' \
    > test.out 2>&1
eval_tap $? 66 'PublicPartyJoin' test.out

#- 67 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'ePupjd4R' \
    > test.out 2>&1
eval_tap $? 67 'PublicPartyLeave' test.out

#- 68 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'VVwyzHwx' \
    > test.out 2>&1
eval_tap $? 68 'PublicPartyReject' test.out

#- 69 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'IP1xFbMP' \
    --userId 'IggA59KU' \
    > test.out 2>&1
eval_tap $? 69 'PublicPartyKick' test.out

#- 70 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"TAy5arts": {}, "7om2GZoL": {}, "izx3veij": {}}, "configurationName": "bcDsnpS1", "inactiveTimeout": 80, "inviteTimeout": 98, "joinability": "LRnentsF", "maxPlayers": 47, "members": [{"ID": "I2owuBiB", "PlatformID": "GigcaSJS", "PlatformUserID": "5O8Mo0c4"}, {"ID": "dlCs1lvQ", "PlatformID": "UMSL94cU", "PlatformUserID": "gFVX9Oe0"}, {"ID": "JnNjxFqv", "PlatformID": "BIBMkwvd", "PlatformUserID": "2YFe6Wbb"}], "minPlayers": 18, "textChat": false, "type": "Kl9y4tut"}' \
    > test.out 2>&1
eval_tap $? 70 'PublicCreateParty' test.out

#- 71 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    > test.out 2>&1
eval_tap $? 71 'PublicGetRecentPlayer' test.out

#- 72 PublicGetRecentTeamPlayer
samples/cli/sample-apps Session publicGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetRecentTeamPlayer' test.out

#- 73 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'agYcM28J' \
    --body '{"Uci8fQvo": {}, "GfpIoOUm": {}, "Adjbu4MJ": {}}' \
    > test.out 2>&1
eval_tap $? 73 'PublicUpdateInsertSessionStorageLeader' test.out

#- 74 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'i8ASZgZf' \
    --userId 'Sy1juzsA' \
    --body '{"t8Tj33Dm": {}, "1VvwSwfx": {}, "KBcS6gFT": {}}' \
    > test.out 2>&1
eval_tap $? 74 'PublicUpdateInsertSessionStorage' test.out

#- 75 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["N08YzEQC", "fU1bHjdf", "41FTahIu"]}' \
    > test.out 2>&1
eval_tap $? 75 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 76 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 76 'PublicGetPlayerAttributes' test.out

#- 77 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": true, "currentPlatform": "CbtJB7Av", "data": {"0DBunn7t": {}, "2VmgAMZr": {}, "Evia5fVz": {}}, "platforms": [{"name": "MUFp4dlv", "userID": "VQAc8k73"}, {"name": "XAwJLESQ", "userID": "IthKlCYX"}, {"name": "364E0Jo4", "userID": "SfNroIg6"}], "roles": ["lSyO1jpC", "HEl1dK6e", "T0Gh1Eed"], "simultaneousPlatform": "8hLQslok"}' \
    > test.out 2>&1
eval_tap $? 77 'PublicStorePlayerAttributes' test.out

#- 78 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 78 'PublicDeletePlayerAttributes' test.out

#- 79 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'E2C9hDdZ' \
    --orderBy 'ZHHuSxBo' \
    --status 'XF6zgdIc' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryMyGameSessions' test.out

#- 80 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'yMMWDO13' \
    --orderBy 'VG5mr6ue' \
    --status 'WOcETf5Y' \
    > test.out 2>&1
eval_tap $? 80 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE