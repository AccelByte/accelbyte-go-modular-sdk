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
echo "1..90"

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
    --body '{"metricExcludedNamespaces": ["LMvHvcKB", "JTQoiIxs", "4sAqCOf9"], "regionRetryMapping": {"7qjoAG4A": ["SfNRfpjA", "xHloin9e", "XlZjRCd7"], "fJo7rzzH": ["ugPuEHeg", "SPEyaRto", "1eSnYTfV"], "JDBR4cqq": ["l9NKonQ6", "gORUg1bJ", "A7rjyGt9"]}, "regionURLMapping": ["ejD6nsC4", "WCYmtyil", "ZHE4W6wo"], "testGameMode": "1QbTXswH", "testRegionURLMapping": ["XIvziRAX", "pNZAHurn", "6F9521aa"], "testTargetUserIDs": ["S10y3XxR", "ZtDBDrao", "pLqae9QD"]}' \
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
    --body '{"durationDays": 44}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationAlertV1' test.out

#- 13 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 61}' \
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
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 12, "PSNSupportedPlatforms": ["yXLa3nNC", "CsdkX6Nj", "iZEQsrD7"], "SessionTitle": "RQJ11fAB", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "IlAUzMmZ", "XboxServiceConfigID": "7CyNKQGY", "XboxSessionTemplateName": "nqaiWSIR", "XboxTitleID": "HuDSseHp", "localizedSessionName": {"ohHizURP": {}, "nUZjZTf3": {}, "UK7FNOvS": {}}}, "PSNBaseUrl": "28U8dhSy", "appName": "xY7XJX81", "attributes": {"83QmWNCA": {}, "v1tN7Ssj": {}, "CCU1rntG": {}}, "autoJoin": true, "autoLeaveSession": true, "clientVersion": "2gQ2qhAm", "customURLGRPC": "BQ7SfbsK", "deployment": "OGKQ64Co", "disableCodeGeneration": false, "disableResendInvite": false, "dsManualSetReady": false, "dsSource": "wmUW8QhZ", "enableSecret": false, "fallbackClaimKeys": ["LFPJONph", "S55SYuzi", "4bgcsEp1"], "grpcSessionConfig": {"appName": "rKJoJAdB", "customURL": "OlZZs5GN", "functionFlag": 84}, "immutableStorage": false, "inactiveTimeout": 35, "inviteTimeout": 89, "joinability": "Ap2Bd9vd", "leaderElectionGracePeriod": 85, "manualRejoin": true, "maxActiveSessions": 0, "maxPlayers": 45, "minPlayers": 76, "name": "dpmfHOCA", "persistent": false, "preferredClaimKeys": ["rLR5feOY", "Gt5q7M7g", "YDzlxWd4"], "requestedRegions": ["8gdfBWhC", "j6Q5UFCh", "dpqlH6m5"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "uoyOceux"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateConfigurationTemplateV1' test.out

#- 17 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --name 'N9LbV66i' \
    --offset '15' \
    --order 'nnEseMop' \
    --orderBy 'zhAgj8cu' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetAllConfigurationTemplatesV1' test.out

#- 18 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'NvcIs99p' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigurationTemplateV1' test.out

#- 19 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'BF6Tgfxx' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 78, "PSNSupportedPlatforms": ["p97aEZWD", "yGLnhwhL", "WUXmFn2i"], "SessionTitle": "LqWCcQv6", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "kZfYpntf", "XboxServiceConfigID": "zQhS2Vvb", "XboxSessionTemplateName": "p3VGPz95", "XboxTitleID": "nMYP371d", "localizedSessionName": {"FQ1ebXYB": {}, "Db830n1Y": {}, "oOSX52QD": {}}}, "PSNBaseUrl": "iGAdjweX", "appName": "y4ZJRXPF", "attributes": {"hmlLiBhX": {}, "5D1KPQRt": {}, "gafKsv5X": {}}, "autoJoin": true, "autoLeaveSession": true, "clientVersion": "5PZfJSTn", "customURLGRPC": "qYp2qblV", "deployment": "AH80sNU9", "disableCodeGeneration": true, "disableResendInvite": true, "dsManualSetReady": false, "dsSource": "SUvYBPCf", "enableSecret": false, "fallbackClaimKeys": ["P3QmmU7J", "DPfMFw0d", "W8RG6fRa"], "grpcSessionConfig": {"appName": "5Jw57HyY", "customURL": "TFkEbaes", "functionFlag": 8}, "immutableStorage": false, "inactiveTimeout": 11, "inviteTimeout": 92, "joinability": "C6UvFLtA", "leaderElectionGracePeriod": 59, "manualRejoin": false, "maxActiveSessions": 2, "maxPlayers": 83, "minPlayers": 98, "name": "cY60ZYWO", "persistent": true, "preferredClaimKeys": ["66IbVLKK", "03lUAi4Q", "Rdm89v1G"], "requestedRegions": ["b0D9RoF6", "z0e994U4", "KTPO4Jac"], "textChat": false, "tieTeamsSessionLifetime": false, "type": "43xUsfYL"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'Ij9eddHa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 'b8YaFBsQ' \
    --namespace $AB_NAMESPACE \
    --userId 'iYflgmaZ' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'i3E5ivVG' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "1JaNB2Ca"}' \
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
    --configurationName 'uaWpcmNf' \
    --dsPodName 'cLP1QqEa' \
    --fromTime 'qi8J9j4M' \
    --gameMode 'yUR75ttQ' \
    --isPersistent 'gJSR0dTa' \
    --isSoftDeleted 'X6LrMOT8' \
    --joinability 'YdTwl0Se' \
    --limit '61' \
    --matchPool 'MjYVDXFu' \
    --memberID '3N36esAp' \
    --offset '98' \
    --order 'QWh4VtU4' \
    --orderBy 'KwpVV0oH' \
    --sessionID 'VxbWdwPb' \
    --status '5v1hKIlv' \
    --statusV2 'tj9q6dJ4' \
    --toTime 'mnsJzrD6' \
    > test.out 2>&1
eval_tap $? 25 'AdminQueryGameSessions' test.out

#- 26 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"dsM4iH3H": {}, "6JFm6qtg": {}, "PxaXAn6A": {}}' \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["CtWdjerc", "qr0xvhuV", "PvjTlgqf"]}' \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'cwlf7a4i' \
    --body '{"ready": false}' \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminKickGameSessionMember
samples/cli/sample-apps Session adminKickGameSessionMember \
    --memberId 'IMY0TXEC' \
    --namespace $AB_NAMESPACE \
    --sessionId 'yatkBng4' \
    > test.out 2>&1
eval_tap $? 29 'AdminKickGameSessionMember' test.out

#- 30 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'KahEAxEI' \
    --namespace $AB_NAMESPACE \
    --sessionId 'JhbMfGM9' \
    --statusType 'sJyERnA9' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateGameSessionMember' test.out

#- 31 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '87' \
    --order 'yEDATdbI' \
    > test.out 2>&1
eval_tap $? 31 'AdminGetListNativeSession' test.out

#- 32 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --isSoftDeleted 'uFOpbOPt' \
    --joinability 'VKWdK5w5' \
    --key '1HGahuBE' \
    --leaderID 'cq66QdKF' \
    --limit '9' \
    --memberID 'L6VjfnWo' \
    --memberStatus 'cEQyJbiJ' \
    --offset '76' \
    --order 'k7Wk4zGd' \
    --orderBy 'UryZRH13' \
    --partyID 'hdKoXu6n' \
    --value 'AupvUQAm' \
    > test.out 2>&1
eval_tap $? 32 'AdminQueryParties' test.out

#- 33 AdminDeleteBulkParties
samples/cli/sample-apps Session adminDeleteBulkParties \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["UP7ojMCb", "kQcA9mRE", "lv1KKfNK"]}' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteBulkParties' test.out

#- 34 AdminGetPlatformCredentials
samples/cli/sample-apps Session adminGetPlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'AdminGetPlatformCredentials' test.out

#- 35 AdminUpdatePlatformCredentials
samples/cli/sample-apps Session adminUpdatePlatformCredentials \
    --namespace $AB_NAMESPACE \
    --body '{"psn": {"clientId": "u0v0jFy4", "clientSecret": "LBrTE581", "scope": "4fwXlG3q"}}' \
    > test.out 2>&1
eval_tap $? 35 'AdminUpdatePlatformCredentials' test.out

#- 36 AdminDeletePlatformCredentials
samples/cli/sample-apps Session adminDeletePlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 36 'AdminDeletePlatformCredentials' test.out

#- 37 AdminDeletePlatformCredentialsByPlatformId
samples/cli/sample-apps Session adminDeletePlatformCredentialsByPlatformId \
    --namespace $AB_NAMESPACE \
    --platformId 'PSN' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeletePlatformCredentialsByPlatformId' test.out

#- 38 AdminSyncPlatformCredentials
samples/cli/sample-apps Session adminSyncPlatformCredentials \
    --namespace $AB_NAMESPACE \
    --platformId 'XBOX' \
    > test.out 2>&1
eval_tap $? 38 'AdminSyncPlatformCredentials' test.out

#- 39 AdminGetRecentPlayer
samples/cli/sample-apps Session adminGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --userId 'Soq3AP3g' \
    > test.out 2>&1
eval_tap $? 39 'AdminGetRecentPlayer' test.out

#- 40 AdminGetRecentTeamPlayer
samples/cli/sample-apps Session adminGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --userId '0EMzqank' \
    > test.out 2>&1
eval_tap $? 40 'AdminGetRecentTeamPlayer' test.out

#- 41 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'bZdDKnxX' \
    > test.out 2>&1
eval_tap $? 41 'AdminReadSessionStorage' test.out

#- 42 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'H2yw5bfQ' \
    > test.out 2>&1
eval_tap $? 42 'AdminDeleteUserSessionStorage' test.out

#- 43 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'UV02Qm91' \
    --userId 'k7R6nLY6' \
    > test.out 2>&1
eval_tap $? 43 'AdminReadUserSessionStorage' test.out

#- 44 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'LQGO6xds' \
    > test.out 2>&1
eval_tap $? 44 'AdminQueryPlayerAttributes' test.out

#- 45 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'Sx1iiz65' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetPlayerAttributes' test.out

#- 46 AdminSyncNativeSession
samples/cli/sample-apps Session adminSyncNativeSession \
    --namespace $AB_NAMESPACE \
    --userId 'lPQtGPZf' \
    > test.out 2>&1
eval_tap $? 46 'AdminSyncNativeSession' test.out

#- 47 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "sXkPO3qj", "attributes": {"DNKqa2hY": {}, "ZL9iVWkp": {}, "oxnBDzmy": {}}, "autoJoin": false, "backfillTicketID": "nQCeJgNC", "clientVersion": "xdRPoC6d", "configurationName": "cncwh1nO", "customURLGRPC": "CnHE3T46", "deployment": "7NUMuvT6", "dsSource": "3yW7lLZ3", "fallbackClaimKeys": ["OPfWKUty", "dvkeAHvW", "yJCQNJNh"], "inactiveTimeout": 91, "inviteTimeout": 39, "joinability": "kBFUE2nu", "matchPool": "bZkTG5xe", "maxPlayers": 20, "minPlayers": 96, "preferredClaimKeys": ["1BIsc8Am", "SKbHXL1r", "SHURA1i1"], "requestedRegions": ["1z43Ihqd", "T6b9x8yu", "6i3KtcqM"], "serverName": "l7NawWtU", "storage": {"leader": {"hcTud6uo": {}, "YXJLb2dJ": {}, "02Bq6NYb": {}}}, "teams": [{"parties": [{"partyID": "LYRZxFS3", "userIDs": ["haELuSOr", "M3Osdmp7", "ColA8X5d"]}, {"partyID": "hi5e4JXE", "userIDs": ["963hEUqN", "CxTXfJYL", "VZBPaiqp"]}, {"partyID": "QwtSunLv", "userIDs": ["E0O5fZKg", "nm6nWz3F", "2JuMv42b"]}], "userIDs": ["NCipXx5W", "wiYjqJD9", "2sjjwcrl"]}, {"parties": [{"partyID": "hnxlcBYJ", "userIDs": ["DbEb2iSA", "oJrMc5mh", "pWMCrI1s"]}, {"partyID": "eZqPjpn9", "userIDs": ["eINY0wCu", "5FvLBCx1", "QQk1hW7c"]}, {"partyID": "rZ99BiT1", "userIDs": ["St9f802b", "LpU235Kn", "wAWphkH1"]}], "userIDs": ["mziwOirx", "rGrPHzZs", "UnaHo9EX"]}, {"parties": [{"partyID": "CohFQ9n7", "userIDs": ["wMVtL4xC", "lWy9TneK", "BC582edN"]}, {"partyID": "HcXYEUOL", "userIDs": ["z0qgF16d", "DPECXqRU", "2cgZVzgC"]}, {"partyID": "x3mbyCyY", "userIDs": ["gl4xyPCu", "dSUT2gNl", "YJkQgNuD"]}], "userIDs": ["QVwwfCKr", "ZxFaZY5L", "Z6KwdH9w"]}], "textChat": false, "ticketIDs": ["4DpZ2nmr", "iPzMpJZl", "SxP4AJT8"], "tieTeamsSessionLifetime": true, "type": "huYBinBx"}' \
    > test.out 2>&1
eval_tap $? 47 'CreateGameSession' test.out

#- 48 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"s3YAoJCM": {}, "kpFIN1fX": {}, "dMBc6RF6": {}}' \
    > test.out 2>&1
eval_tap $? 48 'PublicQueryGameSessionsByAttributes' test.out

#- 49 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "IlDdLe5H"}' \
    > test.out 2>&1
eval_tap $? 49 'PublicSessionJoinCode' test.out

#- 50 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'BfBPh3aR' \
    > test.out 2>&1
eval_tap $? 50 'GetGameSessionByPodName' test.out

#- 51 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'yMPRVKzr' \
    > test.out 2>&1
eval_tap $? 51 'GetGameSession' test.out

#- 52 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'nz6JgBrC' \
    --body '{"attributes": {"89hrRBl2": {}, "D9AVAIbj": {}, "0vYHT6uz": {}}, "backfillTicketID": "wGF84NFg", "clientVersion": "xHo8FkTX", "deployment": "zSiV9wAZ", "fallbackClaimKeys": ["4eOqNHAx", "stWnq0aB", "aXC2nSiO"], "inactiveTimeout": 32, "inviteTimeout": 47, "joinability": "3daAnC4L", "matchPool": "mwE4T7iP", "maxPlayers": 68, "minPlayers": 26, "preferredClaimKeys": ["RF49xCHW", "dWkz9CH5", "je0qNcsH"], "requestedRegions": ["FxcQpL1u", "WYpCLQ1e", "fvDDpWlp"], "teams": [{"parties": [{"partyID": "egXn16FE", "userIDs": ["WMk46TKA", "xtXLFIHn", "eaWPW7u6"]}, {"partyID": "g0mkNYwE", "userIDs": ["0BXVGevq", "dLLDSBS9", "kOPEVG79"]}, {"partyID": "bjVdNFIH", "userIDs": ["zHsNgb2K", "8ja9IIYi", "0Zcxk4wG"]}], "userIDs": ["9qA9VdX4", "VZiWXE9a", "JF9W4KDM"]}, {"parties": [{"partyID": "HzX2Ikyz", "userIDs": ["4s9J9jfM", "iKwwdUU3", "WGH5ssoi"]}, {"partyID": "10RJ0h0z", "userIDs": ["TcFQKj7X", "WZbY1f23", "kY6DJQlB"]}, {"partyID": "uZqluye0", "userIDs": ["gdcPoOk5", "aREUHFjt", "j8IRe7qn"]}], "userIDs": ["X37wImzW", "EBUoBcmI", "7vbYK7ov"]}, {"parties": [{"partyID": "dNO8EAS9", "userIDs": ["iWgenpuo", "x3meyLjF", "EyvoX64j"]}, {"partyID": "2vfG7UHV", "userIDs": ["XgVtsYgT", "4BbxcyBo", "uwceW5Ue"]}, {"partyID": "6ibP0SIB", "userIDs": ["63bk4Rco", "7rpT2nxj", "vmHCJmvm"]}], "userIDs": ["pWK9SWG9", "jUwwvESA", "3oxC2nqw"]}], "ticketIDs": ["fQLvuIIC", "tKjCfJLa", "EoTtQL3K"], "tieTeamsSessionLifetime": true, "type": "Fd60gOn0", "version": 19}' \
    > test.out 2>&1
eval_tap $? 52 'UpdateGameSession' test.out

#- 53 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'rFVHNcf5' \
    > test.out 2>&1
eval_tap $? 53 'DeleteGameSession' test.out

#- 54 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'V0Cfo2gi' \
    --body '{"attributes": {"p9xzTEFi": {}, "mnqMjUcU": {}, "ikaWCWPD": {}}, "backfillTicketID": "P4NjTZhz", "clientVersion": "dfPJezV8", "deployment": "TGJCBNVx", "fallbackClaimKeys": ["QADDCZcr", "BMsYadL7", "8hmONfeP"], "inactiveTimeout": 75, "inviteTimeout": 51, "joinability": "tEbo4vfO", "matchPool": "xdP6Rs7g", "maxPlayers": 10, "minPlayers": 7, "preferredClaimKeys": ["mQ5x8wq8", "X2Vv2aN6", "W2RGBvuT"], "requestedRegions": ["iyZLpAd1", "Y5JM1xHs", "Xn51MBny"], "teams": [{"parties": [{"partyID": "I1WKQI5r", "userIDs": ["gyhV0uSh", "W8AHCJlA", "QMnkvdLn"]}, {"partyID": "fbD9Srhf", "userIDs": ["2EhCS5ax", "UMngQZ6V", "GGxV1Rmy"]}, {"partyID": "VAglmCtx", "userIDs": ["oOMPe3om", "LvfOZRIT", "PC1OddaA"]}], "userIDs": ["lBXFOChB", "kx3G1BOW", "FVj7pfH1"]}, {"parties": [{"partyID": "xv7dKwoA", "userIDs": ["jct3HjOn", "B1y9qefv", "yAvC7CDD"]}, {"partyID": "zthYhNPp", "userIDs": ["eNPGkh16", "yi6T9p1x", "UnQLQqwJ"]}, {"partyID": "CMyr7qHh", "userIDs": ["sXacN3b2", "dzzSsi5f", "ngE9NhFG"]}], "userIDs": ["X7cyhhzM", "V0py35s8", "L2K5jExh"]}, {"parties": [{"partyID": "Wt0pQy1V", "userIDs": ["NDm2sdPp", "B8kue0AB", "AVDeH7im"]}, {"partyID": "UuN45nh0", "userIDs": ["pJ6TJP7W", "vfMR3V0p", "iF8HYPqA"]}, {"partyID": "NDVr4eS7", "userIDs": ["zguIqKcJ", "nt2gKVER", "WnWF7A41"]}], "userIDs": ["IYSfDwIv", "EuvObIII", "Wrso6PNi"]}], "ticketIDs": ["I658Fk1t", "Kpqcmmr7", "PBByNHwb"], "tieTeamsSessionLifetime": true, "type": "iN7nGUJZ", "version": 16}' \
    > test.out 2>&1
eval_tap $? 54 'PatchUpdateGameSession' test.out

#- 55 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'sTmBRalV' \
    --body '{"backfillTicketID": "10ki09rP"}' \
    > test.out 2>&1
eval_tap $? 55 'UpdateGameSessionBackfillTicketID' test.out

#- 56 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId '26icij4l' \
    > test.out 2>&1
eval_tap $? 56 'GameSessionGenerateCode' test.out

#- 57 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId '5Fp3V16S' \
    > test.out 2>&1
eval_tap $? 57 'PublicRevokeGameSessionCode' test.out

#- 58 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'cbCfQziE' \
    --body '{"metadata": {"mOLiw1sU": "LEaaOSrz", "iODPY4dJ": "jVSg2DlD", "x0CqU1Lp": "nGPrpsnD"}, "platformID": "kOEo0Tie", "userID": "Uts39ZMg"}' \
    > test.out 2>&1
eval_tap $? 58 'PublicGameSessionInvite' test.out

#- 59 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'IRqRVjw9' \
    > test.out 2>&1
eval_tap $? 59 'JoinGameSession' test.out

#- 60 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'mSON9YN2' \
    --body '{"leaderID": "SXJN1Vmp"}' \
    > test.out 2>&1
eval_tap $? 60 'PublicPromoteGameSessionLeader' test.out

#- 61 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'fczL6obw' \
    > test.out 2>&1
eval_tap $? 61 'LeaveGameSession' test.out

#- 62 PublicKickGameSessionMember
samples/cli/sample-apps Session publicKickGameSessionMember \
    --memberId 'XTqDXCY9' \
    --namespace $AB_NAMESPACE \
    --sessionId 'YhDmRSR9' \
    > test.out 2>&1
eval_tap $? 62 'PublicKickGameSessionMember' test.out

#- 63 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'qTwpUfUF' \
    > test.out 2>&1
eval_tap $? 63 'PublicGameSessionReject' test.out

#- 64 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId 'PLZoEeLW' \
    > test.out 2>&1
eval_tap $? 64 'GetSessionServerSecret' test.out

#- 65 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'sXrCzJcZ' \
    --body '{"additionalMembers": [{"partyID": "NAMSg3xK", "userIDs": ["Cy5mlLKT", "xde7LiO0", "j8nI0cZG"]}, {"partyID": "UgpkKnem", "userIDs": ["z0aQatnx", "oPPrCqNl", "QceBTdAP"]}, {"partyID": "NAvs4xwz", "userIDs": ["ENqAFtTl", "usX3Ph7D", "Ihgp4Llf"]}], "proposedTeams": [{"parties": [{"partyID": "F653A5UX", "userIDs": ["Cmna58Ch", "jFBroQTY", "zlPBqpDc"]}, {"partyID": "3jfnYBRz", "userIDs": ["ODxE3rfZ", "iTcMhwhG", "1fA9tLD9"]}, {"partyID": "NS6Ye8rd", "userIDs": ["IENiB0SH", "rqLJ5Umz", "SWubzqvV"]}], "userIDs": ["mzV3ngEo", "w8QnIDQr", "g3NHdEVl"]}, {"parties": [{"partyID": "Abvm8ZLh", "userIDs": ["ithTeJxh", "ENL7DQ2V", "Twd8XBCA"]}, {"partyID": "kl9mfObP", "userIDs": ["iHttNuHl", "GVd9OOJG", "Xf1ZkVax"]}, {"partyID": "xcOjddt6", "userIDs": ["HYl5G83M", "CeTvc2os", "yxCZTcj7"]}], "userIDs": ["LnWzDfTX", "BVhhFLgW", "YT3OQxJu"]}, {"parties": [{"partyID": "gqSTStyy", "userIDs": ["vvpxMsqN", "ldnN9MI0", "2DKJe5gU"]}, {"partyID": "m5KT7QKV", "userIDs": ["PnP4Ztjj", "LQlDPHAV", "3IRGoP4J"]}, {"partyID": "UaBMmXcW", "userIDs": ["7ohABGrV", "OGGYlvEB", "CHTlJCUz"]}], "userIDs": ["5mgbQqfK", "HZv9EzKS", "LxJCz4x5"]}], "version": 20}' \
    > test.out 2>&1
eval_tap $? 65 'AppendTeamGameSession' test.out

#- 66 PublicGameSessionCancel
samples/cli/sample-apps Session publicGameSessionCancel \
    --namespace $AB_NAMESPACE \
    --sessionId 'w9JrlY6f' \
    --userId 'LLAqnYju' \
    > test.out 2>&1
eval_tap $? 66 'PublicGameSessionCancel' test.out

#- 67 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "bi5pgLt3"}' \
    > test.out 2>&1
eval_tap $? 67 'PublicPartyJoinCode' test.out

#- 68 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId '5JC3xKdW' \
    > test.out 2>&1
eval_tap $? 68 'PublicGetParty' test.out

#- 69 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'hWfjtQf8' \
    --body '{"attributes": {"7AfCHElc": {}, "WcDw2zj7": {}, "OyAyd5is": {}}, "inactiveTimeout": 97, "inviteTimeout": 48, "joinability": "VPEQtbcy", "maxPlayers": 66, "minPlayers": 32, "type": "L3egyeyv", "version": 69}' \
    > test.out 2>&1
eval_tap $? 69 'PublicUpdateParty' test.out

#- 70 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'FUMPXbLP' \
    --body '{"attributes": {"AQ6JPshr": {}, "K8S18V1z": {}, "s4BrAMIS": {}}, "inactiveTimeout": 90, "inviteTimeout": 99, "joinability": "VfIYBuZD", "maxPlayers": 96, "minPlayers": 45, "type": "rmWFcmAd", "version": 91}' \
    > test.out 2>&1
eval_tap $? 70 'PublicPatchUpdateParty' test.out

#- 71 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'Z1vLI16q' \
    > test.out 2>&1
eval_tap $? 71 'PublicGeneratePartyCode' test.out

#- 72 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'QNIBt9dI' \
    > test.out 2>&1
eval_tap $? 72 'PublicRevokePartyCode' test.out

#- 73 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'n8eEmaNl' \
    --body '{"metadata": {"Uwdktiwx": "ZgsdBvvM", "CzqnRmNA": "u4z5bsfS", "ZjsnfiYy": "0bNSu6po"}, "platformID": "BnQQ72ha", "userID": "co3odBmk"}' \
    > test.out 2>&1
eval_tap $? 73 'PublicPartyInvite' test.out

#- 74 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'F39YKFg8' \
    --body '{"leaderID": "fk4r2Q8u"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicPromotePartyLeader' test.out

#- 75 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId '9s0fHGxA' \
    > test.out 2>&1
eval_tap $? 75 'PublicPartyJoin' test.out

#- 76 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'EnaeIeR8' \
    > test.out 2>&1
eval_tap $? 76 'PublicPartyLeave' test.out

#- 77 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId '0ohNTajt' \
    > test.out 2>&1
eval_tap $? 77 'PublicPartyReject' test.out

#- 78 PublicPartyCancel
samples/cli/sample-apps Session publicPartyCancel \
    --namespace $AB_NAMESPACE \
    --partyId 'cfiRpIbz' \
    --userId 'dS8dJgCh' \
    > test.out 2>&1
eval_tap $? 78 'PublicPartyCancel' test.out

#- 79 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'PNe3gjiQ' \
    --userId 'DghgbAHN' \
    > test.out 2>&1
eval_tap $? 79 'PublicPartyKick' test.out

#- 80 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"wvqZFSs2": {}, "43Hbysb5": {}, "BwBhv5Q5": {}}, "configurationName": "lRleeSPd", "inactiveTimeout": 13, "inviteTimeout": 19, "joinability": "1ra4yAZy", "maxPlayers": 29, "members": [{"ID": "cRoARh9y", "PlatformID": "kx1lQLM4", "PlatformUserID": "NHTySDe0"}, {"ID": "PzesH0lR", "PlatformID": "RVPiNunf", "PlatformUserID": "OLmSNRei"}, {"ID": "LiRbENdP", "PlatformID": "73YK2mYR", "PlatformUserID": "v9IZqdYB"}], "minPlayers": 69, "textChat": false, "type": "QvQaNi5p"}' \
    > test.out 2>&1
eval_tap $? 80 'PublicCreateParty' test.out

#- 81 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    > test.out 2>&1
eval_tap $? 81 'PublicGetRecentPlayer' test.out

#- 82 PublicGetRecentTeamPlayer
samples/cli/sample-apps Session publicGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    > test.out 2>&1
eval_tap $? 82 'PublicGetRecentTeamPlayer' test.out

#- 83 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId '1Lv3Rmd9' \
    --body '{"UT4CmPRj": {}, "QRhHK10A": {}, "W0iZlo4S": {}}' \
    > test.out 2>&1
eval_tap $? 83 'PublicUpdateInsertSessionStorageLeader' test.out

#- 84 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'n35t8Nhi' \
    --userId '4j1tFSDD' \
    --body '{"4Nge0VR5": {}, "5Gd4hdtb": {}, "rJU6VBeK": {}}' \
    > test.out 2>&1
eval_tap $? 84 'PublicUpdateInsertSessionStorage' test.out

#- 85 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["2WZLPtnu", "FHlIqT7l", "Ifj8Lhuc"]}' \
    > test.out 2>&1
eval_tap $? 85 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 86 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 86 'PublicGetPlayerAttributes' test.out

#- 87 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": false, "currentPlatform": "a406ZfJH", "data": {"tkd2FDqk": {}, "JEil949U": {}, "73KqQHXy": {}}, "platforms": [{"name": "mry94dPg", "userID": "ipRKMFHn"}, {"name": "F8sYTHNp", "userID": "X0Qil0TH"}, {"name": "9s39KSEb", "userID": "q520zSuD"}], "roles": ["OvHeGdkC", "w5FUito6", "4aGeEOYi"], "simultaneousPlatform": "lRGWd6P6"}' \
    > test.out 2>&1
eval_tap $? 87 'PublicStorePlayerAttributes' test.out

#- 88 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 88 'PublicDeletePlayerAttributes' test.out

#- 89 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order '2KY8qppx' \
    --orderBy 'LTGw81FL' \
    --status 'A9CJqsND' \
    > test.out 2>&1
eval_tap $? 89 'PublicQueryMyGameSessions' test.out

#- 90 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'FuUdzdRD' \
    --orderBy 'UvA6HUny' \
    --status 'XlKKl72I' \
    > test.out 2>&1
eval_tap $? 90 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE