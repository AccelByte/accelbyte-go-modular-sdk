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
    --body '{"regionRetryMapping": {"7ratnc97": ["yUuuTHI9", "THV7ELVU", "VKd9yh2n"], "JYdyCISh": ["p5QHhNCt", "GxW2csPF", "3okiIS7D"], "mbULTzPm": ["WQV5Gl4k", "U1oIPu0F", "ILgGEFO0"]}, "regionURLMapping": ["mnqggByh", "ZYZWUMlA", "oUKbexRi"], "testGameMode": "NnOayeXd", "testRegionURLMapping": ["dq3jv9S6", "cFlWQzcz", "asqYNMs3"], "testTargetUserIDs": ["A5jhSSJv", "eJloF07L", "wzsfh4V1"]}' \
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
    --body '{"durationDays": 35}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateConfigurationAlertV1' test.out

#- 11 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 85}' \
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
    --description 'fKb1jlHX' \
    --certname 'w8611j4O' \
    --file 'tmp.dat' \
    --password 'tju0LWyF' \
    > test.out 2>&1
eval_tap $? 13 'HandleUploadXboxPFXCertificate' test.out

#- 14 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 70, "PSNSupportedPlatforms": ["AueUHwRI", "YqovcATq", "TBLv5lJh"], "SessionTitle": "v8U0EyFx", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "EclLs7CX", "XboxServiceConfigID": "inWiz4Cn", "XboxSessionTemplateName": "XXTI75tR", "XboxTitleID": "FYLXnhDr", "localizedSessionName": {"sr8SQf1Z": {}, "P1osLBpI": {}, "yVjuJxv2": {}}}, "PSNBaseUrl": "sDFa03ss", "attributes": {"ocnn6rv5": {}, "NYH3Sb9G": {}, "UpriXzK9": {}}, "autoJoin": true, "clientVersion": "YwhIeNoy", "deployment": "2BX92AIf", "disableCodeGeneration": true, "dsManualSetReady": true, "dsSource": "cpI3Ast7", "enableSecret": true, "fallbackClaimKeys": ["WAMASHaQ", "clJRvLam", "sEl4gccz"], "immutableStorage": false, "inactiveTimeout": 24, "inviteTimeout": 77, "joinability": "T2Jp0HSy", "leaderElectionGracePeriod": 100, "manualRejoin": true, "maxActiveSessions": 50, "maxPlayers": 59, "minPlayers": 66, "name": "ggo9Rd8d", "persistent": false, "preferredClaimKeys": ["Y0CaYpUb", "zcXYpzrb", "SKdDDBBM"], "requestedRegions": ["7Dr51xGS", "tuuX8XLW", "DYuS0n62"], "textChat": true, "tieTeamsSessionLifetime": false, "type": "F0KqddrY"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminCreateConfigurationTemplateV1' test.out

#- 15 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --name 'va57Spxn' \
    --offset '69' \
    --order 'BtKedsCk' \
    --orderBy 'fz1fQ1Wr' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetAllConfigurationTemplatesV1' test.out

#- 16 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'PIXFGdUH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetConfigurationTemplateV1' test.out

#- 17 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'Jtawh3mx' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 26, "PSNSupportedPlatforms": ["dMshgZSS", "yfZggopp", "0z5L1tYx"], "SessionTitle": "VnN27H6v", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "d8qydOsn", "XboxServiceConfigID": "NZQvd4rc", "XboxSessionTemplateName": "6IY78x69", "XboxTitleID": "mmLpq8xT", "localizedSessionName": {"KEPCWtxz": {}, "fXpSKXcK": {}, "EqGUKCeL": {}}}, "PSNBaseUrl": "93cy1u9P", "attributes": {"ujkkFoTK": {}, "Usq44WNG": {}, "rxJxvrGC": {}}, "autoJoin": false, "clientVersion": "piJta4uT", "deployment": "sQbWGiYb", "disableCodeGeneration": false, "dsManualSetReady": false, "dsSource": "YCxuiT0y", "enableSecret": false, "fallbackClaimKeys": ["wIaHrtle", "vrh86vs5", "135y4qxA"], "immutableStorage": true, "inactiveTimeout": 70, "inviteTimeout": 15, "joinability": "ny0w15Os", "leaderElectionGracePeriod": 87, "manualRejoin": true, "maxActiveSessions": 51, "maxPlayers": 34, "minPlayers": 27, "name": "iYy3fnNJ", "persistent": true, "preferredClaimKeys": ["aYrXVmXD", "yYVVYflA", "Dy1ZzzPU"], "requestedRegions": ["IsMC6s0F", "qnQpLa5d", "VyY30O9F"], "textChat": false, "tieTeamsSessionLifetime": false, "type": "am6AF9c6"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateConfigurationTemplateV1' test.out

#- 18 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'J6JP7ReW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteConfigurationTemplateV1' test.out

#- 19 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 'yr469Crz' \
    --namespace $AB_NAMESPACE \
    --userId 'uhIN4EPj' \
    > test.out 2>&1
eval_tap $? 19 'AdminGetMemberActiveSession' test.out

#- 20 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'tA8bLjIJ' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "LPR3IOMV"}' \
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
    --configurationName '7sP1tsJT' \
    --dsPodName 'dNT29dmr' \
    --fromTime 'iL1MrX6p' \
    --gameMode 'JuFB0G6W' \
    --isPersistent '1kPbo2WJ' \
    --isSoftDeleted 'UWcIUKgD' \
    --joinability 'iHMqg3dh' \
    --limit '21' \
    --matchPool '3iatw5yX' \
    --memberID 'ZvXL57la' \
    --offset '76' \
    --order 'QTH7Slz2' \
    --orderBy 'dR7V5fSV' \
    --sessionID 'clPX6yJm' \
    --status 'sS2V6wV4' \
    --statusV2 'kSXaB8OL' \
    --toTime 'L6wyBSPt' \
    > test.out 2>&1
eval_tap $? 23 'AdminQueryGameSessions' test.out

#- 24 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"omkKJaQH": {}, "WJZXzjLp": {}, "DS1vaTOV": {}}' \
    > test.out 2>&1
eval_tap $? 24 'AdminQueryGameSessionsByAttributes' test.out

#- 25 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["OZTfSeXH", "JTFvElhs", "gAEVipzV"]}' \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteBulkGameSessions' test.out

#- 26 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'Pd8dtGmj' \
    --body '{"ready": true}' \
    > test.out 2>&1
eval_tap $? 26 'AdminSetDSReady' test.out

#- 27 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'Ie4lMowU' \
    --namespace $AB_NAMESPACE \
    --sessionId 'AeQxBTnP' \
    --statusType '2XbCfJXZ' \
    > test.out 2>&1
eval_tap $? 27 'AdminUpdateGameSessionMember' test.out

#- 28 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '40' \
    --order 'Jw5AZpdH' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetListNativeSession' test.out

#- 29 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --joinability 'yjQpoWIr' \
    --key 'trbvcq3W' \
    --leaderID '3gtQxWBc' \
    --limit '64' \
    --memberID 'sWjAMYuc' \
    --memberStatus 'xeiMPVGf' \
    --offset '89' \
    --order 'qpAXL3dM' \
    --orderBy 'bMhXkpTW' \
    --partyID 'uLRJOyva' \
    --value 'fq7OaGpS' \
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
    --body '{"psn": {"clientId": "hm1keIru", "clientSecret": "tC5Ounp3", "scope": "2IRM8HFi"}}' \
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
    --sessionId 'whN8NKyT' \
    > test.out 2>&1
eval_tap $? 33 'AdminReadSessionStorage' test.out

#- 34 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'IViCmYAm' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteUserSessionStorage' test.out

#- 35 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'vI85uEqT' \
    --userId 'zGCYB0Lb' \
    > test.out 2>&1
eval_tap $? 35 'AdminReadUserSessionStorage' test.out

#- 36 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'RDlnOHZI' \
    > test.out 2>&1
eval_tap $? 36 'AdminQueryPlayerAttributes' test.out

#- 37 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'Zma1hZgJ' \
    > test.out 2>&1
eval_tap $? 37 'AdminGetPlayerAttributes' test.out

#- 38 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"WSnAOXxq": {}, "nMhGCzPR": {}, "19C7f5Oq": {}}, "autoJoin": false, "backfillTicketID": "ynmhNZkN", "clientVersion": "4UTiNIZ1", "configurationName": "nEI56QPA", "deployment": "xd1gOiYA", "dsSource": "keXswBNt", "fallbackClaimKeys": ["iMdvH4YC", "eUSiVZLO", "UicJsizl"], "inactiveTimeout": 75, "inviteTimeout": 70, "joinability": "mHwDBQFb", "matchPool": "kX9dCHZX", "maxPlayers": 88, "minPlayers": 54, "preferredClaimKeys": ["hhPHmJg6", "CtD7kAp4", "7snYxAe4"], "requestedRegions": ["SMfW4JUP", "UwuJk35S", "va7xNvO0"], "serverName": "r4c4BnUy", "teams": [{"UserIDs": ["qCmAZN73", "oieKtREb", "JSCNmInA"], "parties": [{"partyID": "XlZEmbgW", "userIDs": ["ZZRPpmI7", "JfO8asyv", "jgaJIQx5"]}, {"partyID": "vxvJK7kb", "userIDs": ["SybeBhS9", "gIvbrIvT", "uBCSbTpB"]}, {"partyID": "k6f0GQd6", "userIDs": ["yRfrIBu1", "ErIxm69u", "IjnbhRzA"]}]}, {"UserIDs": ["lTlZmpRj", "D6a4NFbr", "x79x42EP"], "parties": [{"partyID": "weWqgcx1", "userIDs": ["oSSdvH4T", "RIc8Os9h", "pHwbj8om"]}, {"partyID": "AdBjdjRa", "userIDs": ["CIOhpdVy", "Oyzgb1y0", "GgXIo3Qp"]}, {"partyID": "Wegu2zqm", "userIDs": ["Oa4bNFQY", "ABI01mcR", "QPWsWoOD"]}]}, {"UserIDs": ["01CKTGnr", "ioQjlGb6", "y0CzsQXi"], "parties": [{"partyID": "O7h0hdBo", "userIDs": ["r9Necd5R", "QnPhHhbj", "g78yJXZa"]}, {"partyID": "I8JWMtYD", "userIDs": ["rPb9aj3y", "6HEUuV8a", "tAaniCTB"]}, {"partyID": "36yqs69r", "userIDs": ["NdXU2cj7", "QokVHpVb", "IQpsPRIX"]}]}], "textChat": true, "ticketIDs": ["IaSVvcsU", "jL1a4A2g", "5cwd2RPz"], "tieTeamsSessionLifetime": false, "type": "uMzjKGZO"}' \
    > test.out 2>&1
eval_tap $? 38 'CreateGameSession' test.out

#- 39 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"evm48mI7": {}, "zsANAYBi": {}, "1yINtZBI": {}}' \
    > test.out 2>&1
eval_tap $? 39 'PublicQueryGameSessionsByAttributes' test.out

#- 40 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "a76dYBPX"}' \
    > test.out 2>&1
eval_tap $? 40 'PublicSessionJoinCode' test.out

#- 41 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName '0Kuknzkm' \
    > test.out 2>&1
eval_tap $? 41 'GetGameSessionByPodName' test.out

#- 42 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '1R6chFzc' \
    > test.out 2>&1
eval_tap $? 42 'GetGameSession' test.out

#- 43 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'KBMdAlRi' \
    --body '{"attributes": {"uVtbM5BJ": {}, "1ggKi7rn": {}, "sRjWjAWR": {}}, "backfillTicketID": "PS9N2NnR", "clientVersion": "PsRVlVci", "deployment": "pHTJAe8d", "fallbackClaimKeys": ["WSCTdG4l", "yWfxWlNL", "mSl11yl7"], "inactiveTimeout": 78, "inviteTimeout": 73, "joinability": "sm63OrJq", "matchPool": "8OvlT33i", "maxPlayers": 3, "minPlayers": 98, "preferredClaimKeys": ["2evt2CjG", "Bi3w2IbY", "VGjQXnlN"], "requestedRegions": ["tAnegqp5", "KToaP1Kx", "TaV37rRs"], "teams": [{"UserIDs": ["LX4WVEqd", "Zm5S1Nkh", "nKeA94Qv"], "parties": [{"partyID": "rZRz6h3V", "userIDs": ["UutRTpWt", "A1W5ay8S", "J9CBXkeK"]}, {"partyID": "Galpp8JY", "userIDs": ["1arxY9Z0", "awOThZQa", "2Pn8xhV6"]}, {"partyID": "WUO68Udv", "userIDs": ["NDimU445", "A5GHwxjv", "RhSg8pSe"]}]}, {"UserIDs": ["GxPCIAMR", "pBB3RXnt", "NtwPegMH"], "parties": [{"partyID": "TNBJbxc3", "userIDs": ["O6lFUFp1", "pGaHPD4a", "092xBUnW"]}, {"partyID": "ax14M6BU", "userIDs": ["0DVV5yQe", "bNcg83vz", "AUBUMseu"]}, {"partyID": "SOApRrbc", "userIDs": ["OBk3xsxI", "iP9awH3P", "zE4BBmuU"]}]}, {"UserIDs": ["f3bpQFen", "0Si9Ebqi", "FsM9C7OV"], "parties": [{"partyID": "92qjkoYl", "userIDs": ["yNc7oRMj", "iAzFnY26", "Pb5zpaQM"]}, {"partyID": "XQtaaRAt", "userIDs": ["PWtjHjUk", "jSgG8Qzw", "cIuTBZon"]}, {"partyID": "leGAhJKB", "userIDs": ["2pQ1lbUI", "6rvst8A1", "BZDZSwKV"]}]}], "ticketIDs": ["EbRCb35Q", "Gj3UPPv0", "7U2BErrK"], "tieTeamsSessionLifetime": false, "type": "7v74pbmn", "version": 16}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateGameSession' test.out

#- 44 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '5EpPVZOa' \
    > test.out 2>&1
eval_tap $? 44 'DeleteGameSession' test.out

#- 45 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'GmlsDLjk' \
    --body '{"attributes": {"Zq2kSxgS": {}, "aevpPNvT": {}, "xe4Xzqme": {}}, "backfillTicketID": "PCMBFvUJ", "clientVersion": "Ofay8klE", "deployment": "Ngmt0Hnp", "fallbackClaimKeys": ["jLsTHYf0", "m3dAPBax", "tYFT68j5"], "inactiveTimeout": 98, "inviteTimeout": 56, "joinability": "sKaVEwU0", "matchPool": "O0rF2JTb", "maxPlayers": 81, "minPlayers": 25, "preferredClaimKeys": ["cOM9P4S5", "QDtHGLNq", "ErsGUimc"], "requestedRegions": ["4WFZfxat", "BcO5iIQX", "OHjnKXLb"], "teams": [{"UserIDs": ["LihQKSMs", "ZukUnAd5", "Yh407Gtm"], "parties": [{"partyID": "s27S14z4", "userIDs": ["UpEwHEje", "vOFut5Yp", "ltSwYiFI"]}, {"partyID": "IK4xtYHs", "userIDs": ["1bG27Q49", "cvTq4gLR", "3UGJoL0s"]}, {"partyID": "xnohZ5uX", "userIDs": ["PvzP8kRP", "treGHBZX", "BuqAKKPm"]}]}, {"UserIDs": ["kx8Avy7v", "t1ArCVTP", "syDzTwiP"], "parties": [{"partyID": "0Qf9jAMx", "userIDs": ["6Nv0jlUF", "sQQEjASI", "v7eVXmsi"]}, {"partyID": "iJpChwgo", "userIDs": ["a2hifLqW", "VD79GcdR", "qVuPDT2f"]}, {"partyID": "mgO7q4nc", "userIDs": ["Q8dfxaOW", "rKc87jHw", "wHexjig4"]}]}, {"UserIDs": ["uUiiW1PB", "NFaVWOHZ", "b9LXJRGE"], "parties": [{"partyID": "RG1n4YKQ", "userIDs": ["yOlHSpQX", "dvzg2XP7", "YSRgJiuC"]}, {"partyID": "mSj9yBHz", "userIDs": ["P9AaV79z", "cfb1iJKt", "eB0Z2ODa"]}, {"partyID": "3a7xP7Zq", "userIDs": ["zaQTJVO8", "FqSICjTa", "TpRoLjsc"]}]}], "ticketIDs": ["IjRq9zQh", "I7N9qw0t", "g1B6aLlq"], "tieTeamsSessionLifetime": true, "type": "PipXsD4R", "version": 4}' \
    > test.out 2>&1
eval_tap $? 45 'PatchUpdateGameSession' test.out

#- 46 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'XPu4XSHh' \
    --body '{"backfillTicketID": "BxleDG78"}' \
    > test.out 2>&1
eval_tap $? 46 'UpdateGameSessionBackfillTicketID' test.out

#- 47 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'Mf2myYSk' \
    > test.out 2>&1
eval_tap $? 47 'GameSessionGenerateCode' test.out

#- 48 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId '8Fxyb2mT' \
    > test.out 2>&1
eval_tap $? 48 'PublicRevokeGameSessionCode' test.out

#- 49 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'YqSywGIh' \
    --body '{"platformID": "TodJaN84", "userID": "5O6epdQp"}' \
    > test.out 2>&1
eval_tap $? 49 'PublicGameSessionInvite' test.out

#- 50 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'Fx1Z4NIi' \
    > test.out 2>&1
eval_tap $? 50 'JoinGameSession' test.out

#- 51 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'lsFeQiRg' \
    --body '{"leaderID": "jfB4akTj"}' \
    > test.out 2>&1
eval_tap $? 51 'PublicPromoteGameSessionLeader' test.out

#- 52 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'hUYX82JP' \
    > test.out 2>&1
eval_tap $? 52 'LeaveGameSession' test.out

#- 53 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'HoqI2s0R' \
    > test.out 2>&1
eval_tap $? 53 'PublicGameSessionReject' test.out

#- 54 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId 'Vd5mMzGo' \
    > test.out 2>&1
eval_tap $? 54 'GetSessionServerSecret' test.out

#- 55 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'Oqv8L2Q5' \
    --body '{"additionalMembers": [{"partyID": "MADeZ7HA", "userIDs": ["zKwcfedh", "IKFxqw2m", "m1OXFdZw"]}, {"partyID": "FzOt4wIE", "userIDs": ["v16l18fZ", "rDyi5TGB", "wfTjzgK8"]}, {"partyID": "oxtvBQHd", "userIDs": ["ALuxFFa8", "iZNjAJhr", "7WPN6PY6"]}], "proposedTeams": [{"UserIDs": ["a3zoFEXr", "VakcRjFg", "TCvI5dOu"], "parties": [{"partyID": "9muN4zlI", "userIDs": ["Bfv1Si2U", "Bn0sZ625", "NuZXyJkp"]}, {"partyID": "WE3GRSiJ", "userIDs": ["KtKcWmq8", "p3XRiUwQ", "MKBpuasS"]}, {"partyID": "e4uAGwdA", "userIDs": ["9vO5G1nU", "ToJy9scU", "nwKRPAfO"]}]}, {"UserIDs": ["GFECAHXx", "UrcgxPiy", "AQrxasAA"], "parties": [{"partyID": "po1nME3I", "userIDs": ["1yM2cxB0", "slWTb1FC", "WDg1xnRU"]}, {"partyID": "kAxLjHKb", "userIDs": ["lewWXfF5", "Lak6FUsO", "42FzQRSw"]}, {"partyID": "whnmE0z1", "userIDs": ["NayHQtO4", "ZRiNuoSc", "06YPsBJI"]}]}, {"UserIDs": ["wikZbSLo", "SRDhyRbB", "SempbCDE"], "parties": [{"partyID": "dTYGqgu3", "userIDs": ["6Izoxp7U", "ycIpZpfw", "I8gtsaZR"]}, {"partyID": "pcmZuQ9b", "userIDs": ["wu7B7EvZ", "RH6PTYOZ", "p7EEAW4r"]}, {"partyID": "ftFRJ0dc", "userIDs": ["fvYJkS2m", "PyMwUN2X", "CgUmmNBG"]}]}], "version": 79}' \
    > test.out 2>&1
eval_tap $? 55 'AppendTeamGameSession' test.out

#- 56 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "8AQYL9VZ"}' \
    > test.out 2>&1
eval_tap $? 56 'PublicPartyJoinCode' test.out

#- 57 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'n74zMzZE' \
    > test.out 2>&1
eval_tap $? 57 'PublicGetParty' test.out

#- 58 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'Rjc4fJC7' \
    --body '{"attributes": {"VYSamEmC": {}, "5KfoXLtu": {}, "aRNslqrh": {}}, "inactiveTimeout": 66, "inviteTimeout": 95, "joinability": "j7sXoys8", "maxPlayers": 40, "minPlayers": 50, "type": "RHjmjfpT", "version": 60}' \
    > test.out 2>&1
eval_tap $? 58 'PublicUpdateParty' test.out

#- 59 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'hRCYpTb0' \
    --body '{"attributes": {"scGLt0ye": {}, "STbOqmwr": {}, "54X2SwNX": {}}, "inactiveTimeout": 58, "inviteTimeout": 82, "joinability": "jVhVe4Dj", "maxPlayers": 79, "minPlayers": 12, "type": "RzQOFLbO", "version": 41}' \
    > test.out 2>&1
eval_tap $? 59 'PublicPatchUpdateParty' test.out

#- 60 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'ZYundHca' \
    > test.out 2>&1
eval_tap $? 60 'PublicGeneratePartyCode' test.out

#- 61 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'D8DhXyKT' \
    > test.out 2>&1
eval_tap $? 61 'PublicRevokePartyCode' test.out

#- 62 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'HrxaTLMF' \
    --body '{"platformID": "FiSJJVBr", "userID": "pGknUv4j"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicPartyInvite' test.out

#- 63 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'nWGDMjfq' \
    --body '{"leaderID": "8wRfUpkN"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicPromotePartyLeader' test.out

#- 64 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId '3J3aMolx' \
    > test.out 2>&1
eval_tap $? 64 'PublicPartyJoin' test.out

#- 65 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId '8RNG4MrV' \
    > test.out 2>&1
eval_tap $? 65 'PublicPartyLeave' test.out

#- 66 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'SWA65JFJ' \
    > test.out 2>&1
eval_tap $? 66 'PublicPartyReject' test.out

#- 67 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'GPxE2JQi' \
    --userId 'Lyucsu6B' \
    > test.out 2>&1
eval_tap $? 67 'PublicPartyKick' test.out

#- 68 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"9fQd5jfi": {}, "Zf8c8Trh": {}, "3v6uBCwe": {}}, "configurationName": "gu631AYx", "inactiveTimeout": 22, "inviteTimeout": 72, "joinability": "tXcpfFwb", "maxPlayers": 71, "members": [{"ID": "oiTuIbDS", "PlatformID": "abQdcgjf", "PlatformUserID": "KtI1OzHe"}, {"ID": "QmYlpuCZ", "PlatformID": "T4ccBqqO", "PlatformUserID": "SZShmaOZ"}, {"ID": "8aq65d1v", "PlatformID": "HzPm7Xhg", "PlatformUserID": "otB6vltF"}], "minPlayers": 40, "textChat": false, "type": "1ssSSETs"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicCreateParty' test.out

#- 69 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --userId 'TxNbb3qo' \
    > test.out 2>&1
eval_tap $? 69 'PublicGetRecentPlayer' test.out

#- 70 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId '7JWUMqo9' \
    --body '{"M8MaKeqM": {}, "Ad7pSe6R": {}, "Ym6DRMXd": {}}' \
    > test.out 2>&1
eval_tap $? 70 'PublicUpdateInsertSessionStorageLeader' test.out

#- 71 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'usjtiSK6' \
    --userId 'ppBJzYoa' \
    --body '{"Nk9MMx2Y": {}, "HtqVAggj": {}, "e4KoRsiO": {}}' \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdateInsertSessionStorage' test.out

#- 72 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["76Z0hbIc", "St9ro8CV", "ZG7Bl0Yw"]}' \
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
    --body '{"crossplayEnabled": false, "currentPlatform": "TiHf9S5P", "data": {"NPEFss3N": {}, "uAMtMJgJ": {}, "9FY45gHi": {}}, "platforms": [{"name": "XNitTBLv", "userID": "xsCqq6DM"}, {"name": "W7yVwYsn", "userID": "ECvNKFTl"}, {"name": "HlQkng9s", "userID": "dssylKZc"}], "roles": ["hQZaaqrE", "E4ikd53z", "JMS1gWAD"]}' \
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
    --order '186zsV9g' \
    --orderBy 'tTFqWlyc' \
    --status 'eDiB6xnk' \
    > test.out 2>&1
eval_tap $? 76 'PublicQueryMyGameSessions' test.out

#- 77 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order '5YXTjyFn' \
    --orderBy 'khJ1SmwZ' \
    --status '5ZtjtTLk' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE