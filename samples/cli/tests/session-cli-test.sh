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
    --body '{"regionRetryMapping": {"Uk4oV8Y8": ["MHlAHK7W", "jZxRyqtV", "T0NPP8E7"], "lgc576KE": ["c3dH2aKz", "bnsduZcf", "aUvMmdO9"], "nEnILS5p": ["0H4rYCCj", "nLw7hN55", "KpEWnKIt"]}, "regionURLMapping": ["gGWurRLz", "BTGb43oE", "53VSwjgZ"], "testGameMode": "mik8IV63", "testRegionURLMapping": ["xqSsJWFq", "c3tbMjaQ", "ICYAlzAq"], "testTargetUserIDs": ["GFKecjOm", "dL148eA8", "3V4yedyx"]}' \
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
    --body '{"durationDays": 5}' \
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
    --description 'FmIqq2Sy' \
    --certname '4B5dqsA3' \
    --file 'tmp.dat' \
    --password 'VCkPWt3K' \
    > test.out 2>&1
eval_tap $? 13 'HandleUploadXboxPFXCertificate' test.out

#- 14 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 61, "PSNSupportedPlatforms": ["7J5lyrZR", "te3uOq41", "2QHhQ4lj"], "SessionTitle": "LRphkN1r", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "bFz6r5Cx", "XboxServiceConfigID": "D0gNnOng", "XboxSessionTemplateName": "uvDELZlD", "XboxTitleID": "fCpk93mh", "localizedSessionName": {"igAEL4tp": {}, "O2ErwNsN": {}, "2VCLjBuS": {}}}, "PSNBaseUrl": "RW19FrWM", "attributes": {"pW8CJZaF": {}, "yE1q9zZl": {}, "cNNVBy8s": {}}, "autoJoin": true, "clientVersion": "nkqC7miq", "deployment": "ih1MvBkJ", "disableCodeGeneration": false, "dsManualSetReady": true, "dsSource": "n2Ty4jrW", "enableSecret": true, "fallbackClaimKeys": ["sdsexrEv", "WuSaj3d8", "J41ZAHHh"], "immutableStorage": true, "inactiveTimeout": 95, "inviteTimeout": 43, "joinability": "9Vt6OUZ1", "leaderElectionGracePeriod": 91, "maxActiveSessions": 60, "maxPlayers": 18, "minPlayers": 75, "name": "acb8e7x8", "persistent": true, "preferredClaimKeys": ["qwNcGq25", "6r3If1Ev", "vrkIUsKG"], "requestedRegions": ["XxNHy6KS", "syQYAggf", "yBhQlamS"], "textChat": false, "tieTeamsSessionLifetime": false, "type": "FlTNqE3h"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminCreateConfigurationTemplateV1' test.out

#- 15 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --name 'm7EymmUz' \
    --offset '70' \
    --order 'YBDpF6Z9' \
    --orderBy 'csU9fl0N' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetAllConfigurationTemplatesV1' test.out

#- 16 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name '1DqBOolB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetConfigurationTemplateV1' test.out

#- 17 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'Z362HFyP' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 95, "PSNSupportedPlatforms": ["qA2YtGin", "0ezIwDEy", "2xVa85rP"], "SessionTitle": "LfP521K8", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "TBmYprzk", "XboxServiceConfigID": "Qu4tdBq0", "XboxSessionTemplateName": "ZKV3dQYu", "XboxTitleID": "5eZI0jDW", "localizedSessionName": {"OMCnE8Iv": {}, "F2DyOUUG": {}, "tBcLghXU": {}}}, "PSNBaseUrl": "nNSIagZT", "attributes": {"HdTVL5QX": {}, "5baEoZVo": {}, "LLPjfhjP": {}}, "autoJoin": true, "clientVersion": "mV9uLMsO", "deployment": "IvJyyFJb", "disableCodeGeneration": false, "dsManualSetReady": true, "dsSource": "3ZB1XvEL", "enableSecret": false, "fallbackClaimKeys": ["eBeIMGcv", "C0GgJN3t", "IFEtfmat"], "immutableStorage": false, "inactiveTimeout": 96, "inviteTimeout": 76, "joinability": "PzSdiUo9", "leaderElectionGracePeriod": 24, "maxActiveSessions": 45, "maxPlayers": 7, "minPlayers": 31, "name": "5hKWWpEJ", "persistent": true, "preferredClaimKeys": ["RXRNXTxm", "gSxm30YU", "tH5NAagM"], "requestedRegions": ["Z7AUhHws", "2BKoTiSZ", "1aeahcrr"], "textChat": false, "tieTeamsSessionLifetime": true, "type": "AVsAxhbL"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateConfigurationTemplateV1' test.out

#- 18 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'FPHEefVC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteConfigurationTemplateV1' test.out

#- 19 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name '6wKNYmHu' \
    --namespace $AB_NAMESPACE \
    --userId 'ld6FyKCL' \
    > test.out 2>&1
eval_tap $? 19 'AdminGetMemberActiveSession' test.out

#- 20 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'aE6x3PZM' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "e26DC9NM"}' \
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
    --configurationName '2mG0kCJs' \
    --dsPodName 'jagwAfpN' \
    --fromTime 'VM4M14Dz' \
    --gameMode 'oEVu4dGI' \
    --isPersistent 'gbTvCjod' \
    --isSoftDeleted 'POx7t3Mt' \
    --joinability 'cly3op7x' \
    --limit '77' \
    --matchPool 'B3iGgLSg' \
    --memberID '0KCUTk83' \
    --offset '54' \
    --order 'UefNr5D9' \
    --orderBy 'apMJlZsX' \
    --sessionID 'SoKuMMZM' \
    --status 'vqCKhT2O' \
    --statusV2 'W72V3Ohb' \
    --toTime 'FmZEFI0u' \
    > test.out 2>&1
eval_tap $? 23 'AdminQueryGameSessions' test.out

#- 24 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"gaFtIEeY": {}, "UJRnzs6D": {}, "fAXOmx2S": {}}' \
    > test.out 2>&1
eval_tap $? 24 'AdminQueryGameSessionsByAttributes' test.out

#- 25 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["HgdV5lIx", "xHIV1xWl", "7zsnbabt"]}' \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteBulkGameSessions' test.out

#- 26 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'HGc0mae8' \
    --body '{"ready": true}' \
    > test.out 2>&1
eval_tap $? 26 'AdminSetDSReady' test.out

#- 27 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'sIuSluxH' \
    --namespace $AB_NAMESPACE \
    --sessionId 'd3KNSvb6' \
    --statusType 'h1l2fzHQ' \
    > test.out 2>&1
eval_tap $? 27 'AdminUpdateGameSessionMember' test.out

#- 28 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '47' \
    --order '4Sh31rib' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetListNativeSession' test.out

#- 29 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --joinability 'nCMg50tT' \
    --key 'Pz2yIFCt' \
    --leaderID 'L0jIwHti' \
    --limit '23' \
    --memberID 'o1bFGzTS' \
    --memberStatus 'cOvOU4qW' \
    --offset '35' \
    --order 'owhaL0tk' \
    --orderBy 'U7YWTzmY' \
    --partyID '3qtcuhh3' \
    --value 'yphUuAzg' \
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
    --body '{"psn": {"clientId": "GYSRBzKO", "clientSecret": "D7bdBV1j", "scope": "8DSsmP2D"}}' \
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
    --sessionId 'RV9XEa1V' \
    > test.out 2>&1
eval_tap $? 33 'AdminReadSessionStorage' test.out

#- 34 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'XiyLTtRw' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteUserSessionStorage' test.out

#- 35 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'TBXikfJg' \
    --userId 'X9ljK4sX' \
    > test.out 2>&1
eval_tap $? 35 'AdminReadUserSessionStorage' test.out

#- 36 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users '52kcNB9R' \
    > test.out 2>&1
eval_tap $? 36 'AdminQueryPlayerAttributes' test.out

#- 37 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'LX5ncjrC' \
    > test.out 2>&1
eval_tap $? 37 'AdminGetPlayerAttributes' test.out

#- 38 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"nli5Tghh": {}, "Bde6zl6x": {}, "LBa8PCts": {}}, "autoJoin": true, "backfillTicketID": "Im0GjKKm", "clientVersion": "iP77VJmf", "configurationName": "Jr9AG7KB", "deployment": "Wmi61V5d", "dsSource": "BAwc6zuz", "fallbackClaimKeys": ["gaKpgpuM", "ylriW5K6", "eGPzA0S2"], "inactiveTimeout": 19, "inviteTimeout": 51, "joinability": "A0Ykn4Mc", "matchPool": "F9y2awZA", "maxPlayers": 23, "minPlayers": 12, "preferredClaimKeys": ["lt77svoq", "nb0OoYaG", "8XNQUre8"], "requestedRegions": ["slGVPHzn", "gNk47kiW", "XEsLxbjB"], "serverName": "fwquldSV", "teams": [{"UserIDs": ["51Tcdzbj", "9kVh95EF", "wjVv1gRm"], "parties": [{"partyID": "jWyq8zRM", "userIDs": ["76Lzhz04", "8z5fVVOM", "kbQvbb9n"]}, {"partyID": "5PMrP5d3", "userIDs": ["beSMYKJB", "VWeNpheg", "P0yjAqQK"]}, {"partyID": "B9g4Rfun", "userIDs": ["mcVkfAfJ", "ns18EJnC", "lvNoTNyR"]}]}, {"UserIDs": ["iedZx811", "SJ0V57ys", "LDTaAM4k"], "parties": [{"partyID": "cZ6e6sw1", "userIDs": ["emA8QS6y", "ZOEZ34bs", "fNUTNSGF"]}, {"partyID": "VGdAiUio", "userIDs": ["1EY77Jxt", "OgJbZML7", "RIlLa9xm"]}, {"partyID": "GtkSENmR", "userIDs": ["Q5kJala9", "8Wxmg4Dc", "tVzmXPaV"]}]}, {"UserIDs": ["wXqGXDHf", "6hdKwuHb", "iJHozaQe"], "parties": [{"partyID": "ffqsWMDG", "userIDs": ["kfDeqxXs", "LNoo8kMx", "euEs7q4U"]}, {"partyID": "KyxFz2SG", "userIDs": ["LLYEAlxm", "6u9J7SfS", "xrlLi1st"]}, {"partyID": "6c5x2UH8", "userIDs": ["3RqGDrJx", "LVCYcc0v", "h6eazIET"]}]}], "textChat": true, "ticketIDs": ["8efUlFms", "cMeYO7Np", "BHWSP7YP"], "tieTeamsSessionLifetime": false, "type": "RmWoQ7BH"}' \
    > test.out 2>&1
eval_tap $? 38 'CreateGameSession' test.out

#- 39 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"ElKrtYmE": {}, "nS0ujNU2": {}, "Ia3XaGRf": {}}' \
    > test.out 2>&1
eval_tap $? 39 'PublicQueryGameSessionsByAttributes' test.out

#- 40 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "iVgYLCSk"}' \
    > test.out 2>&1
eval_tap $? 40 'PublicSessionJoinCode' test.out

#- 41 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'czc55uPe' \
    > test.out 2>&1
eval_tap $? 41 'GetGameSessionByPodName' test.out

#- 42 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'isg4pmrj' \
    > test.out 2>&1
eval_tap $? 42 'GetGameSession' test.out

#- 43 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'KErWsvYd' \
    --body '{"attributes": {"KTYQ1SMd": {}, "H7WOXDLe": {}, "V4j4HQsR": {}}, "backfillTicketID": "kaGyUpn9", "clientVersion": "VSCNJHa2", "deployment": "VccFJKoe", "fallbackClaimKeys": ["tBQ53QFp", "06N1N1Wk", "jmIFltq8"], "inactiveTimeout": 89, "inviteTimeout": 3, "joinability": "54lyGExV", "matchPool": "ryPNZxc1", "maxPlayers": 3, "minPlayers": 80, "preferredClaimKeys": ["n7eSeDIC", "jF2vkeGl", "TkhY2H7m"], "requestedRegions": ["0wgvCbCM", "xNCSx55C", "HJKMzIsL"], "teams": [{"UserIDs": ["2dfBTHbg", "LzdezyvS", "uUAjNoZa"], "parties": [{"partyID": "vk5jgW0e", "userIDs": ["ImUysrRI", "Ewz8TLBE", "7xFZZvGR"]}, {"partyID": "kHg7EZF7", "userIDs": ["nCoyBqv3", "JHzEIE4U", "EMRiDkEn"]}, {"partyID": "A7INTC4z", "userIDs": ["frfXT75A", "kZwO8Vcf", "ClbkRjOu"]}]}, {"UserIDs": ["4s3dYUsW", "DoqPMD8V", "MgqJbTy1"], "parties": [{"partyID": "CLHMx5RH", "userIDs": ["OLzdqEGk", "qMQ1ewAE", "vkKkkhfd"]}, {"partyID": "du0oA6vk", "userIDs": ["yPnupQkI", "UPUaJ7gj", "QDriWDYx"]}, {"partyID": "l9GBdWnT", "userIDs": ["Ft7Gird8", "8EJz3TdF", "KpO7lOLQ"]}]}, {"UserIDs": ["gn2XMFb1", "kHC3J6Ar", "NvofXKPc"], "parties": [{"partyID": "t2vhHLyS", "userIDs": ["FCwYL1ZA", "7g4KU910", "Pnfw6IXx"]}, {"partyID": "WZZyOZoZ", "userIDs": ["upIXyirP", "GFRy5DTD", "I0Ucd7wb"]}, {"partyID": "XI9MWrbt", "userIDs": ["TzaB5ZQ7", "SrthQvtP", "SOqZjInh"]}]}], "ticketIDs": ["aa3juhUq", "Dy5qs6ga", "JlpdXiBk"], "tieTeamsSessionLifetime": true, "type": "83wkq9vI", "version": 62}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateGameSession' test.out

#- 44 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'lLtfE94Q' \
    > test.out 2>&1
eval_tap $? 44 'DeleteGameSession' test.out

#- 45 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'hMGCtp5v' \
    --body '{"attributes": {"eewjWqKy": {}, "N1eWC4d1": {}, "3jDCDc3P": {}}, "backfillTicketID": "xBmjDU7A", "clientVersion": "Y1tZz2I8", "deployment": "6txhvzjY", "fallbackClaimKeys": ["2Enkla4n", "Cqgmxevg", "fmFbYYO6"], "inactiveTimeout": 41, "inviteTimeout": 5, "joinability": "SENj3Vc9", "matchPool": "CBC5coVl", "maxPlayers": 56, "minPlayers": 17, "preferredClaimKeys": ["wxXmyYNQ", "W6vxARHz", "8C3yOAjl"], "requestedRegions": ["lmaA9kak", "cfsoEUVd", "Pin5OzWC"], "teams": [{"UserIDs": ["kVF6uA5m", "LHfUS7oz", "KqFgfyKr"], "parties": [{"partyID": "iTKjQURZ", "userIDs": ["NIRBLSKe", "klzhpQzH", "udBO5R53"]}, {"partyID": "KWLhrLl4", "userIDs": ["QsqpNdA4", "iOt90LDl", "n1iYXjYE"]}, {"partyID": "FDsx3NfW", "userIDs": ["AH1DrLVP", "f5bQP4QC", "NzAyrL1i"]}]}, {"UserIDs": ["oyn9vMPd", "Cd4K6QWi", "JCi1Etja"], "parties": [{"partyID": "7Y4n6sti", "userIDs": ["DNabrRKq", "szTAqVka", "JXPhhQIJ"]}, {"partyID": "eZhpSJjS", "userIDs": ["USHWq720", "hvc1t61B", "XxFIyVBU"]}, {"partyID": "MbGPvB0S", "userIDs": ["iej4FKRv", "HdoEuC4o", "o3y97mb8"]}]}, {"UserIDs": ["hhryb2qd", "SCpk0AdT", "cVE0Ziue"], "parties": [{"partyID": "nx2WoE61", "userIDs": ["ZLQ0gIE4", "LFgSXvJC", "n8OCaW06"]}, {"partyID": "HF8HbIfr", "userIDs": ["3Tgk2Dxd", "PVrz5KnT", "DZBcSaVx"]}, {"partyID": "hODeCdCt", "userIDs": ["S4znZnAs", "IkCCpSl2", "2v0P6uZh"]}]}], "ticketIDs": ["WQEvfDL6", "C5vYG1EQ", "OYTrohzA"], "tieTeamsSessionLifetime": true, "type": "2qNwdteO", "version": 94}' \
    > test.out 2>&1
eval_tap $? 45 'PatchUpdateGameSession' test.out

#- 46 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'j1FX8wze' \
    --body '{"backfillTicketID": "YWZdJy5V"}' \
    > test.out 2>&1
eval_tap $? 46 'UpdateGameSessionBackfillTicketID' test.out

#- 47 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'FYVf7JLj' \
    > test.out 2>&1
eval_tap $? 47 'GameSessionGenerateCode' test.out

#- 48 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'lwcg6UNx' \
    > test.out 2>&1
eval_tap $? 48 'PublicRevokeGameSessionCode' test.out

#- 49 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'Qr6tddlf' \
    --body '{"platformID": "0Jnzw6Hf", "userID": "LWm3ZXdH"}' \
    > test.out 2>&1
eval_tap $? 49 'PublicGameSessionInvite' test.out

#- 50 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '5npzrLUd' \
    > test.out 2>&1
eval_tap $? 50 'JoinGameSession' test.out

#- 51 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'OAMp8yjA' \
    --body '{"leaderID": "JkYSJiyL"}' \
    > test.out 2>&1
eval_tap $? 51 'PublicPromoteGameSessionLeader' test.out

#- 52 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'qHHABoeH' \
    > test.out 2>&1
eval_tap $? 52 'LeaveGameSession' test.out

#- 53 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'fvuK8dOx' \
    > test.out 2>&1
eval_tap $? 53 'PublicGameSessionReject' test.out

#- 54 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId 'yaJaLX42' \
    > test.out 2>&1
eval_tap $? 54 'GetSessionServerSecret' test.out

#- 55 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'M3DIUKtO' \
    --body '{"additionalMembers": [{"partyID": "jFYTQYkg", "userIDs": ["TuQaxQGu", "Mt44zJJH", "XvUDB5ZA"]}, {"partyID": "N8i0PCEK", "userIDs": ["cMUJ9k1r", "7jShFInD", "Xrrslv5k"]}, {"partyID": "82w0lH9D", "userIDs": ["oOL5UtNX", "lzMEXlKF", "VlXX3Ky1"]}], "proposedTeams": [{"UserIDs": ["umZheI1A", "oOABRHlw", "BvLkJh4v"], "parties": [{"partyID": "6T8bm0qu", "userIDs": ["I9iCmLql", "DWMC8586", "1kTT3R8s"]}, {"partyID": "ljX1aFUj", "userIDs": ["Sbl3Cotk", "RSVyEK8g", "xm6sbGiq"]}, {"partyID": "sWSCWj3O", "userIDs": ["x7CBFkAO", "GzXC3hk7", "UBX27EOY"]}]}, {"UserIDs": ["FZERN3Va", "h3SNiWuH", "SKIEg7tc"], "parties": [{"partyID": "BF9u0b5w", "userIDs": ["WKk0KqJH", "abeHElxD", "NEMYT643"]}, {"partyID": "SelxK91v", "userIDs": ["FhrXTtHy", "XtuEmreC", "GtCkyR69"]}, {"partyID": "vt5B6dF5", "userIDs": ["tL9aXbnu", "S64x0gr5", "wQeqQwpT"]}]}, {"UserIDs": ["P1J6st9G", "Pdbt2oKf", "y30eZRgc"], "parties": [{"partyID": "eCsxZpj7", "userIDs": ["j4Z0i60d", "Eo8kliyw", "bvgjiAxy"]}, {"partyID": "OYjjQYUl", "userIDs": ["vi01LhEf", "J2tUrzd1", "y4NcufTG"]}, {"partyID": "30K7wbxm", "userIDs": ["fMSeTGce", "qHyqs9N7", "hBNkfanI"]}]}], "version": 68}' \
    > test.out 2>&1
eval_tap $? 55 'AppendTeamGameSession' test.out

#- 56 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "xB733hKY"}' \
    > test.out 2>&1
eval_tap $? 56 'PublicPartyJoinCode' test.out

#- 57 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'lroGxAt2' \
    > test.out 2>&1
eval_tap $? 57 'PublicGetParty' test.out

#- 58 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'HcdJgIhx' \
    --body '{"attributes": {"Zffe5I4h": {}, "yBriYkaN": {}, "EWdW1yPV": {}}, "inactiveTimeout": 88, "inviteTimeout": 73, "joinability": "ebt07hle", "maxPlayers": 73, "minPlayers": 39, "type": "MHDx3gWt", "version": 60}' \
    > test.out 2>&1
eval_tap $? 58 'PublicUpdateParty' test.out

#- 59 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'wpS2LTlL' \
    --body '{"attributes": {"dyvldujC": {}, "mb8gRSpH": {}, "g9TZ0PyX": {}}, "inactiveTimeout": 64, "inviteTimeout": 36, "joinability": "JyZmsh1b", "maxPlayers": 84, "minPlayers": 61, "type": "39uJq7ED", "version": 32}' \
    > test.out 2>&1
eval_tap $? 59 'PublicPatchUpdateParty' test.out

#- 60 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'lshAjNOT' \
    > test.out 2>&1
eval_tap $? 60 'PublicGeneratePartyCode' test.out

#- 61 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'PmtgihFk' \
    > test.out 2>&1
eval_tap $? 61 'PublicRevokePartyCode' test.out

#- 62 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'OOWibg0X' \
    --body '{"platformID": "9wm82FEM", "userID": "DYhOfS1W"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicPartyInvite' test.out

#- 63 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId '1QYtcEV1' \
    --body '{"leaderID": "UO6ZMO8s"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicPromotePartyLeader' test.out

#- 64 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId '0brahcWx' \
    > test.out 2>&1
eval_tap $? 64 'PublicPartyJoin' test.out

#- 65 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'hG9zJqsX' \
    > test.out 2>&1
eval_tap $? 65 'PublicPartyLeave' test.out

#- 66 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId '14FH74Yb' \
    > test.out 2>&1
eval_tap $? 66 'PublicPartyReject' test.out

#- 67 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId '2KvVPMpI' \
    --userId '49HKoGAo' \
    > test.out 2>&1
eval_tap $? 67 'PublicPartyKick' test.out

#- 68 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"iyqPVYmC": {}, "VYDamYdM": {}, "47Mt0A0G": {}}, "configurationName": "wZk2ZNxb", "inactiveTimeout": 1, "inviteTimeout": 38, "joinability": "RDFy1WJa", "maxPlayers": 22, "members": [{"ID": "d0o7z5PE", "PlatformID": "JJ0qd6BO", "PlatformUserID": "uVXU9m03"}, {"ID": "KeRFM6oz", "PlatformID": "qbDX6pGd", "PlatformUserID": "iGI0ZcPB"}, {"ID": "J0Jagogv", "PlatformID": "SnBgcSSU", "PlatformUserID": "cX6hg9f8"}], "minPlayers": 43, "textChat": true, "type": "64UBShN4"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicCreateParty' test.out

#- 69 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --userId 'hTWOPoUM' \
    > test.out 2>&1
eval_tap $? 69 'PublicGetRecentPlayer' test.out

#- 70 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'qtCKLPVp' \
    --body '{"wwQjevUk": {}, "MAZYJXaL": {}, "A4QmLRwg": {}}' \
    > test.out 2>&1
eval_tap $? 70 'PublicUpdateInsertSessionStorageLeader' test.out

#- 71 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'UgPmDxPZ' \
    --userId 'GoLyJKS9' \
    --body '{"60tUlpNx": {}, "qpt1B6Aw": {}, "QTMB6JA1": {}}' \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdateInsertSessionStorage' test.out

#- 72 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["M8uw3AA6", "vAuc8c6q", "23ETeDQM"]}' \
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
    --body '{"crossplayEnabled": false, "currentPlatform": "3JnORIKE", "data": {"S7J8QyD4": {}, "tnuiiRtY": {}, "NELwbA9q": {}}, "platforms": [{"name": "1sKcgC5R", "userID": "pIMO2iN3"}, {"name": "qpEeO5lc", "userID": "JY78wiX3"}, {"name": "GrkBoa3e", "userID": "7JyQ2q0H"}], "roles": ["3uumnpP1", "oZVQo0af", "d9LtuWSa"]}' \
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
    --order 'JlXNn0iA' \
    --orderBy 'jPWpud5a' \
    --status 'TxMhhfNt' \
    > test.out 2>&1
eval_tap $? 76 'PublicQueryMyGameSessions' test.out

#- 77 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order '3y1jpFlY' \
    --orderBy 'a53vFDvY' \
    --status 'ptOweafU' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE