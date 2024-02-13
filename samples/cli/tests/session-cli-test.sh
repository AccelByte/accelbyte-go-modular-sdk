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
    --body '{"regionRetryMapping": {"7VF9jQxr": ["DXiTiUPq", "q0QCmldK", "kKh9wx03"], "Ra8ndS7W": ["Zye2Lc59", "0fsPzgbv", "u7GMJmKK"], "ZhLLpu6s": ["rPTzje2y", "3ZSLxkpC", "YdFktCnY"]}, "regionURLMapping": ["YCj2FJYV", "hU8FVny6", "Y4ye8KFU"], "testGameMode": "MesmsPym", "testRegionURLMapping": ["vkdN0OVr", "Rvt6yuHr", "xegohjgW"], "testTargetUserIDs": ["Dy7sGKeq", "OfKfpKDU", "NTueIEgA"]}' \
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
    --body '{"durationDays": 2}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateConfigurationAlertV1' test.out

#- 11 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 27}' \
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
    --description 'ZIIyakq1' \
    --certname 'zGqiwNl7' \
    --file 'tmp.dat' \
    --password 'YarUpuvq' \
    > test.out 2>&1
eval_tap $? 13 'HandleUploadXboxPFXCertificate' test.out

#- 14 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 71, "PSNSupportedPlatforms": ["O2rlr77P", "MyUIFu5a", "rXSWFGXP"], "SessionTitle": "6yn6YAAi", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "rx0p1D7Z", "XboxServiceConfigID": "SY2UH1b2", "XboxSessionTemplateName": "EEI793kR", "XboxTitleID": "4ZeDoApi", "localizedSessionName": {"SQsQIRNP": {}, "OR0DjXwh": {}, "fQhYz3Fe": {}}}, "PSNBaseUrl": "UHwcNvre", "attributes": {"yCShuqDa": {}, "KC3gkJ41": {}, "fSrFUQup": {}}, "autoJoin": false, "clientVersion": "748iYEnx", "deployment": "itZwHrt4", "disableCodeGeneration": false, "dsManualSetReady": false, "dsSource": "ER0yruWf", "enableSecret": false, "fallbackClaimKeys": ["BstJ2zcJ", "ySdqcTRD", "iWlvBjiW"], "immutableStorage": false, "inactiveTimeout": 82, "inviteTimeout": 94, "joinability": "H39r4wTS", "leaderElectionGracePeriod": 99, "manualRejoin": false, "maxActiveSessions": 47, "maxPlayers": 49, "minPlayers": 54, "name": "KcDmQslT", "persistent": false, "preferredClaimKeys": ["whzILJtq", "AMQHJ2A0", "hd6sOvLK"], "requestedRegions": ["tarYKtns", "BmnSrvhv", "LhSudwTU"], "textChat": true, "tieTeamsSessionLifetime": false, "type": "UbclcEGz"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminCreateConfigurationTemplateV1' test.out

#- 15 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --name 'lUk6Kn4X' \
    --offset '5' \
    --order 'hCPtIl5T' \
    --orderBy '0gZgH3el' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetAllConfigurationTemplatesV1' test.out

#- 16 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'IKOsuBgG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetConfigurationTemplateV1' test.out

#- 17 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'Z6BsHhOD' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 20, "PSNSupportedPlatforms": ["ITQfVbMy", "wosa7zIg", "yme1UMDF"], "SessionTitle": "KKsfKXrP", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "Z53NCIq2", "XboxServiceConfigID": "yPDfm6N1", "XboxSessionTemplateName": "jlxArWKk", "XboxTitleID": "bMI2MdZm", "localizedSessionName": {"dZiYeRwN": {}, "Pvwt8G4f": {}, "7pdIiVOX": {}}}, "PSNBaseUrl": "uG86cBcw", "attributes": {"x1UaQGJr": {}, "Y1fvWCNt": {}, "QRbo2SyU": {}}, "autoJoin": false, "clientVersion": "oHU2JVG9", "deployment": "yDANAGNZ", "disableCodeGeneration": true, "dsManualSetReady": true, "dsSource": "n6VAhzVx", "enableSecret": false, "fallbackClaimKeys": ["iezJIoOM", "usDi3IUt", "5fIBUQzJ"], "immutableStorage": false, "inactiveTimeout": 84, "inviteTimeout": 40, "joinability": "LtYj0diH", "leaderElectionGracePeriod": 22, "manualRejoin": false, "maxActiveSessions": 79, "maxPlayers": 14, "minPlayers": 95, "name": "WNDymwFE", "persistent": true, "preferredClaimKeys": ["SrkFd1qf", "UKq6DEYV", "lZi8N5RX"], "requestedRegions": ["v39T2LCw", "tukyrLZW", "dzWOKcZN"], "textChat": false, "tieTeamsSessionLifetime": true, "type": "oMIf2RAi"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateConfigurationTemplateV1' test.out

#- 18 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name '4oOOWDwT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteConfigurationTemplateV1' test.out

#- 19 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name '29PUcnQA' \
    --namespace $AB_NAMESPACE \
    --userId 'aTtdjJdy' \
    > test.out 2>&1
eval_tap $? 19 'AdminGetMemberActiveSession' test.out

#- 20 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'e2aBscXY' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "NCP8OceQ"}' \
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
    --configurationName 'VO3RXMzr' \
    --dsPodName '12xCZ1q4' \
    --fromTime 'AnOLbWvY' \
    --gameMode 'sMcDRp3S' \
    --isPersistent 'InVX7jpK' \
    --isSoftDeleted 'yZTQ9cxY' \
    --joinability '9MhjnGWO' \
    --limit '34' \
    --matchPool 'ieC5j7Uo' \
    --memberID 'nauIdSSL' \
    --offset '85' \
    --order 'WcoNAfhJ' \
    --orderBy 'gEKX5z9a' \
    --sessionID 'vGziW9V1' \
    --status 's8RrDAQx' \
    --statusV2 '4n7boN0S' \
    --toTime 'e4JIjWlV' \
    > test.out 2>&1
eval_tap $? 23 'AdminQueryGameSessions' test.out

#- 24 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"4bKiVnio": {}, "uiwoVuSU": {}, "zGtqT1mS": {}}' \
    > test.out 2>&1
eval_tap $? 24 'AdminQueryGameSessionsByAttributes' test.out

#- 25 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["O1naZplt", "JDaATglM", "EwJMRx4w"]}' \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteBulkGameSessions' test.out

#- 26 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'ugsjQa1o' \
    --body '{"ready": false}' \
    > test.out 2>&1
eval_tap $? 26 'AdminSetDSReady' test.out

#- 27 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'TSWnsEOU' \
    --namespace $AB_NAMESPACE \
    --sessionId 'uMHmv9yg' \
    --statusType 'VnukCJwp' \
    > test.out 2>&1
eval_tap $? 27 'AdminUpdateGameSessionMember' test.out

#- 28 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '97' \
    --order 'wGURagym' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetListNativeSession' test.out

#- 29 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --isSoftDeleted 'xFWq8JGj' \
    --joinability 'Ut7o34Ci' \
    --key 'kOltHpZm' \
    --leaderID 'iGzd3lzg' \
    --limit '89' \
    --memberID 'djAUw5px' \
    --memberStatus 'CEkXPraM' \
    --offset '79' \
    --order 'gxTkAmwC' \
    --orderBy 'v7VRIsWF' \
    --partyID '5ruJKjuk' \
    --value 'MU5Vkv4n' \
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
    --body '{"psn": {"clientId": "cLYfeG5Y", "clientSecret": "7wu7hy0t", "scope": "3aDGL2db"}}' \
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
    --sessionId 'uSGAJplk' \
    > test.out 2>&1
eval_tap $? 33 'AdminReadSessionStorage' test.out

#- 34 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'k9WuGchM' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteUserSessionStorage' test.out

#- 35 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId '5jV8E3ig' \
    --userId 'LVU4KT87' \
    > test.out 2>&1
eval_tap $? 35 'AdminReadUserSessionStorage' test.out

#- 36 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'PYMbMz3j' \
    > test.out 2>&1
eval_tap $? 36 'AdminQueryPlayerAttributes' test.out

#- 37 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'nFyOs2YW' \
    > test.out 2>&1
eval_tap $? 37 'AdminGetPlayerAttributes' test.out

#- 38 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"1OptA0Xi": {}, "gAfNeExz": {}, "O6wUrxO9": {}}, "autoJoin": false, "backfillTicketID": "zwXh4yFY", "clientVersion": "gLQda8ke", "configurationName": "KrkAuEkU", "deployment": "RqQRzOii", "dsSource": "ovXz9rGA", "fallbackClaimKeys": ["tQn8v8bB", "qQg1cZzo", "pLz2LZXO"], "inactiveTimeout": 99, "inviteTimeout": 40, "joinability": "ZwKDgzjC", "matchPool": "r9ity40i", "maxPlayers": 58, "minPlayers": 52, "preferredClaimKeys": ["sSIlulT3", "oFbqti6D", "USvWOeVr"], "requestedRegions": ["zpj4d72o", "By1xwe2j", "vVaVUs3j"], "serverName": "auiwVDIs", "teams": [{"UserIDs": ["4M0irNEL", "1hzV7nF7", "HToxBURG"], "parties": [{"partyID": "jYeiazDm", "userIDs": ["dLVDJ8WO", "lYWoN8Xk", "yjQ7fIAp"]}, {"partyID": "ozQoSjvX", "userIDs": ["94wAdMEe", "ddIJI1sF", "DzpOg3Av"]}, {"partyID": "ZzdGtojO", "userIDs": ["8CBT1gld", "pdjIficx", "tgX2NJf2"]}]}, {"UserIDs": ["CpEMAxnE", "SPD9aZMn", "ADq91fX9"], "parties": [{"partyID": "rHGFpGrL", "userIDs": ["qyovuKd0", "BxyDAxUF", "TXO0wF0K"]}, {"partyID": "pBuXEMTa", "userIDs": ["1D4luQFp", "Svq2FJ10", "4KwQrvLq"]}, {"partyID": "WujQJKwN", "userIDs": ["fDQtm1FM", "T40bbiku", "92VraQr3"]}]}, {"UserIDs": ["1L8O8v0z", "hhWLr1TW", "xNxvsyqh"], "parties": [{"partyID": "RdLtgQmY", "userIDs": ["bUJF5mSp", "Q7B8gtSc", "cUkp6IDY"]}, {"partyID": "8UtBmcKh", "userIDs": ["QuHWPT6V", "Z80DfKJA", "fVCJpXVs"]}, {"partyID": "tpv4GGla", "userIDs": ["ELwKs1zX", "t9pBF5YV", "SNT2FCWh"]}]}], "textChat": false, "ticketIDs": ["9H22Upks", "K078fYs5", "E4Vp1Mk8"], "tieTeamsSessionLifetime": true, "type": "wGcolEhI"}' \
    > test.out 2>&1
eval_tap $? 38 'CreateGameSession' test.out

#- 39 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"5AnHrQeZ": {}, "bVfklK38": {}, "p7kMhgHB": {}}' \
    > test.out 2>&1
eval_tap $? 39 'PublicQueryGameSessionsByAttributes' test.out

#- 40 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "nCVomvCw"}' \
    > test.out 2>&1
eval_tap $? 40 'PublicSessionJoinCode' test.out

#- 41 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'mKiU3LNX' \
    > test.out 2>&1
eval_tap $? 41 'GetGameSessionByPodName' test.out

#- 42 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'Iby442JV' \
    > test.out 2>&1
eval_tap $? 42 'GetGameSession' test.out

#- 43 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'YmXTWpnm' \
    --body '{"attributes": {"DAY0zycT": {}, "TMp2HVIO": {}, "spjWl980": {}}, "backfillTicketID": "ZkPobdAO", "clientVersion": "F6Ii9qxc", "deployment": "VRH7BU9b", "fallbackClaimKeys": ["wsGDd0Dj", "xpAgNyvq", "7jGKndZZ"], "inactiveTimeout": 78, "inviteTimeout": 34, "joinability": "99qoR5qZ", "matchPool": "xuqbAJKg", "maxPlayers": 58, "minPlayers": 52, "preferredClaimKeys": ["lKVvZ7YM", "U7BlGiIr", "Jm8ghKlx"], "requestedRegions": ["bgVck9bd", "Mm1CbAMy", "4vz0iqeI"], "teams": [{"UserIDs": ["YK4wwJv7", "jcjZaoqh", "Nu812UXi"], "parties": [{"partyID": "9JuZljaB", "userIDs": ["z4PF6Us5", "ODLTt46t", "ErQJYnoR"]}, {"partyID": "zTX2U89y", "userIDs": ["FVlvh2wZ", "E0jh48SQ", "3XCjelGe"]}, {"partyID": "VmdMhrTu", "userIDs": ["wmKRor4R", "19yUfV94", "km2LRGiK"]}]}, {"UserIDs": ["ddOknsG8", "wxozroG2", "qeGwwaNt"], "parties": [{"partyID": "LYcFDE5p", "userIDs": ["yWqV661G", "JlVACGLe", "33ExIxHq"]}, {"partyID": "iNagzpZs", "userIDs": ["8Gwgx48c", "S6v01WVZ", "eVl67GWv"]}, {"partyID": "iDli1wog", "userIDs": ["CctPoP8X", "5bvn8ulc", "OK0qQlli"]}]}, {"UserIDs": ["BaoSZTUN", "uTJscG6D", "FJcC4LGu"], "parties": [{"partyID": "119yWp9P", "userIDs": ["bNLiTytp", "KvpeSyLo", "Fvaed4K4"]}, {"partyID": "SBTXYG4J", "userIDs": ["Nlt1kCwM", "fesEvBvf", "AFqocBUz"]}, {"partyID": "2rSgycNn", "userIDs": ["efoA4I4K", "nrbE3PW0", "N8lpfJGv"]}]}], "ticketIDs": ["N6BkhmH8", "TKO1YHd5", "Ne6Jj2QX"], "tieTeamsSessionLifetime": true, "type": "3pz07B5E", "version": 16}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateGameSession' test.out

#- 44 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'mXaZbFU9' \
    > test.out 2>&1
eval_tap $? 44 'DeleteGameSession' test.out

#- 45 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'N2CzEM9Z' \
    --body '{"attributes": {"vlAufQ4P": {}, "gmD9VIUk": {}, "A1CqmgsQ": {}}, "backfillTicketID": "moJLFpbU", "clientVersion": "sKUG4vy5", "deployment": "mIShnlWu", "fallbackClaimKeys": ["5vcQRYTj", "k1GMWtts", "KzaXMzfo"], "inactiveTimeout": 78, "inviteTimeout": 72, "joinability": "S9JhbSPb", "matchPool": "P8A5PbRU", "maxPlayers": 54, "minPlayers": 69, "preferredClaimKeys": ["cWAKEP2W", "XBvTmyPA", "BjIUQHgf"], "requestedRegions": ["LjFtP2Cy", "WTTxJK04", "UEEzdrgP"], "teams": [{"UserIDs": ["nsx5J9eu", "m9AEFxg5", "gdPkK5Yf"], "parties": [{"partyID": "TvBh8JGt", "userIDs": ["QMPAm3me", "LPS3CF95", "HKq61MnT"]}, {"partyID": "0cPTv4vJ", "userIDs": ["MNopZnF7", "imgFgq2N", "OjxfWbl2"]}, {"partyID": "hWF4JinO", "userIDs": ["5er0i2UG", "0CCsjQzH", "33ptvWYp"]}]}, {"UserIDs": ["ZKuNkzeI", "mo7kQbzV", "MssgGFXs"], "parties": [{"partyID": "Ap2sNkgW", "userIDs": ["ZBVlyshU", "OeuAGDUH", "XBSbI6PE"]}, {"partyID": "AZFHGmhU", "userIDs": ["4d7tKTK9", "l0e3XbxM", "vBzSEQtm"]}, {"partyID": "hnbK06KN", "userIDs": ["u3ntkLWz", "bBeZK73A", "Pbjal6tj"]}]}, {"UserIDs": ["uBsDHfg5", "mvphGph0", "eEE7YvNJ"], "parties": [{"partyID": "DFYHhcYi", "userIDs": ["6EslEEEF", "wdx4zJQJ", "pXDLIved"]}, {"partyID": "G2TZMnY2", "userIDs": ["GJlLCPW6", "dgswZRUB", "8trQRIWi"]}, {"partyID": "98d3ptSk", "userIDs": ["lH0d7FDD", "q1Hlhr72", "sOWNrsM3"]}]}], "ticketIDs": ["mTyygq66", "6inHxQoP", "y8sNpjgx"], "tieTeamsSessionLifetime": true, "type": "briVZwEY", "version": 0}' \
    > test.out 2>&1
eval_tap $? 45 'PatchUpdateGameSession' test.out

#- 46 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'HpEhshP5' \
    --body '{"backfillTicketID": "mhHPPdFl"}' \
    > test.out 2>&1
eval_tap $? 46 'UpdateGameSessionBackfillTicketID' test.out

#- 47 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId '3veYzFvY' \
    > test.out 2>&1
eval_tap $? 47 'GameSessionGenerateCode' test.out

#- 48 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'gukBTLlT' \
    > test.out 2>&1
eval_tap $? 48 'PublicRevokeGameSessionCode' test.out

#- 49 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'k5luPm9e' \
    --body '{"platformID": "8xBMs6FY", "userID": "Jfz6WmSy"}' \
    > test.out 2>&1
eval_tap $? 49 'PublicGameSessionInvite' test.out

#- 50 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'AflX0kDZ' \
    > test.out 2>&1
eval_tap $? 50 'JoinGameSession' test.out

#- 51 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'jdZd3CU2' \
    --body '{"leaderID": "0bgBVMub"}' \
    > test.out 2>&1
eval_tap $? 51 'PublicPromoteGameSessionLeader' test.out

#- 52 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'zlxTFkxv' \
    > test.out 2>&1
eval_tap $? 52 'LeaveGameSession' test.out

#- 53 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId '8GD9dYlH' \
    > test.out 2>&1
eval_tap $? 53 'PublicGameSessionReject' test.out

#- 54 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId 'z75wrSag' \
    > test.out 2>&1
eval_tap $? 54 'GetSessionServerSecret' test.out

#- 55 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '2n2WKky3' \
    --body '{"additionalMembers": [{"partyID": "21GYvKGK", "userIDs": ["9TF7ppFg", "Xo0be3nc", "Cc4oJddG"]}, {"partyID": "K87Qmn4S", "userIDs": ["h1AOlHfO", "K0I5cCY3", "pU30mjkm"]}, {"partyID": "EpaRULrC", "userIDs": ["jCTkT3tD", "FWy16yUo", "zd6nfkVv"]}], "proposedTeams": [{"UserIDs": ["KZLVRgh5", "r2OWFRaX", "ywMwHThS"], "parties": [{"partyID": "jttYtHVp", "userIDs": ["bIh5Y8km", "VDeDKvWK", "tKbzYW36"]}, {"partyID": "GkOpEiAf", "userIDs": ["jJzUPYre", "22jBgr88", "k7Tfm6sY"]}, {"partyID": "BpMv66zR", "userIDs": ["KGVUmnXc", "JFgOyJe8", "BUVSrNEL"]}]}, {"UserIDs": ["P8DK9ljD", "1N8RQOXX", "WUJOT3ah"], "parties": [{"partyID": "thOqe6GU", "userIDs": ["Gn2y3tGn", "IAclpoDc", "AekHoo2X"]}, {"partyID": "iDjLxoQ6", "userIDs": ["cG7s40FU", "K5TQM8g3", "GGZr2of4"]}, {"partyID": "LJKtOQR7", "userIDs": ["pWPRK2Tl", "AGSt2wRb", "iNQ8SWg2"]}]}, {"UserIDs": ["smr9Y7py", "rV3xjMvN", "LFy0wvj6"], "parties": [{"partyID": "nOe3ZiuR", "userIDs": ["AxEif5Ck", "eez8Cr2N", "5y3ipcf1"]}, {"partyID": "2ROhLKvc", "userIDs": ["5YiPVUA0", "wkOoLufb", "3PrjC7JN"]}, {"partyID": "BN5CQUxR", "userIDs": ["zaLdvEuG", "DFFyO5sc", "UZMKMeW5"]}]}], "version": 90}' \
    > test.out 2>&1
eval_tap $? 55 'AppendTeamGameSession' test.out

#- 56 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "EBCepJQg"}' \
    > test.out 2>&1
eval_tap $? 56 'PublicPartyJoinCode' test.out

#- 57 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'HLqLrhKT' \
    > test.out 2>&1
eval_tap $? 57 'PublicGetParty' test.out

#- 58 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'DYtldMOT' \
    --body '{"attributes": {"eL7wDcf3": {}, "MoagqeCp": {}, "E2pAKdjJ": {}}, "inactiveTimeout": 28, "inviteTimeout": 8, "joinability": "vQVCZ11i", "maxPlayers": 100, "minPlayers": 5, "type": "GaWc9hEK", "version": 45}' \
    > test.out 2>&1
eval_tap $? 58 'PublicUpdateParty' test.out

#- 59 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'vhL33vtY' \
    --body '{"attributes": {"CNRYyvXT": {}, "o8XEqZiW": {}, "FlQqdYmY": {}}, "inactiveTimeout": 69, "inviteTimeout": 58, "joinability": "bsKDQLh0", "maxPlayers": 82, "minPlayers": 75, "type": "zShqHk0o", "version": 1}' \
    > test.out 2>&1
eval_tap $? 59 'PublicPatchUpdateParty' test.out

#- 60 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'j1MAQ323' \
    > test.out 2>&1
eval_tap $? 60 'PublicGeneratePartyCode' test.out

#- 61 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'FoE4AowL' \
    > test.out 2>&1
eval_tap $? 61 'PublicRevokePartyCode' test.out

#- 62 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'r9D1ASQd' \
    --body '{"platformID": "sBWaGD3y", "userID": "jKrxim5H"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicPartyInvite' test.out

#- 63 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'dKFXxD0x' \
    --body '{"leaderID": "vFlxbwMb"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicPromotePartyLeader' test.out

#- 64 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'D7LXf2Dy' \
    > test.out 2>&1
eval_tap $? 64 'PublicPartyJoin' test.out

#- 65 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'nbpdkLOI' \
    > test.out 2>&1
eval_tap $? 65 'PublicPartyLeave' test.out

#- 66 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'WV4X3u0F' \
    > test.out 2>&1
eval_tap $? 66 'PublicPartyReject' test.out

#- 67 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId '6kvZMiG9' \
    --userId 'rd54bXya' \
    > test.out 2>&1
eval_tap $? 67 'PublicPartyKick' test.out

#- 68 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"1A6HyCO4": {}, "tqahNs7C": {}, "YQjs8Yc9": {}}, "configurationName": "NwzqZ5Jo", "inactiveTimeout": 85, "inviteTimeout": 34, "joinability": "v34zvHfo", "maxPlayers": 43, "members": [{"ID": "eZ0yxpgx", "PlatformID": "2YtdexnW", "PlatformUserID": "kTGyFOSh"}, {"ID": "bUDyoANS", "PlatformID": "0E0ijjDq", "PlatformUserID": "AUNlSQY3"}, {"ID": "8AeHChhx", "PlatformID": "KduCHCly", "PlatformUserID": "AKPjB3kg"}], "minPlayers": 98, "textChat": false, "type": "BjCvOvIF"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicCreateParty' test.out

#- 69 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --userId 'reLOQMVu' \
    > test.out 2>&1
eval_tap $? 69 'PublicGetRecentPlayer' test.out

#- 70 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId '9LNTmZmN' \
    --body '{"6XTTXiLQ": {}, "KBIPUr03": {}, "EaIzy0Mc": {}}' \
    > test.out 2>&1
eval_tap $? 70 'PublicUpdateInsertSessionStorageLeader' test.out

#- 71 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'NtvPiQSo' \
    --userId 'UBwUJEk6' \
    --body '{"QmjlxuLk": {}, "IvlvPu7s": {}, "0Jc6oRLd": {}}' \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdateInsertSessionStorage' test.out

#- 72 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["aaseaRvr", "d6alMGsu", "NFs6EHpi"]}' \
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
    --body '{"crossplayEnabled": false, "currentPlatform": "q3oUbShL", "data": {"6Kuc2SVB": {}, "riVyryAa": {}, "PjWkkZQk": {}}, "platforms": [{"name": "tXQ8xnin", "userID": "Nmg5imTO"}, {"name": "mPTpLORb", "userID": "77mckuVW"}, {"name": "rVh48pe4", "userID": "5ch8W3aP"}], "roles": ["NyHoEZUu", "wOnKcFkJ", "Es1GgVne"]}' \
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
    --order 'HvbPTYIv' \
    --orderBy 'xz4UeiaA' \
    --status '7idpSh5w' \
    > test.out 2>&1
eval_tap $? 76 'PublicQueryMyGameSessions' test.out

#- 77 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 't4085cjx' \
    --orderBy 'hTJoeweS' \
    --status 'vVUYKkjP' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE