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
echo "1..76"

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
    --body '{"regionRetryMapping": {"9twsWNQq": ["eHvW8Eu8", "QtFdQtkF", "Eei6WmeB"], "arV1feOy": ["spTxtqrg", "TV3pw4B6", "hWWQyPCe"], "kCpuu4F5": ["TgqzJbtd", "Jtuvl1YS", "5h7YRYBa"]}, "regionURLMapping": ["fdEL0jff", "UclLcgpV", "RgtAlH98"], "testGameMode": "ijgjLokM", "testRegionURLMapping": ["I6lcNjx1", "qBcge6bU", "SctlTKt4"], "testTargetUserIDs": ["23YTwODZ", "8wKi8czq", "cXBEaoDN"]}' \
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
    --body '{"durationDays": 70}' \
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
    --description 'eaPcyTya' \
    --certname 'MW3EBDw7' \
    --file 'tmp.dat' \
    --password 'bgXAZO7H' \
    > test.out 2>&1
eval_tap $? 13 'HandleUploadXboxPFXCertificate' test.out

#- 14 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 4, "PSNSupportedPlatforms": ["uwj9VW9j", "aobUoT7z", "o7V3SP9l"], "SessionTitle": "rWMCOsZB", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "zx4kSvMR", "XboxServiceConfigID": "8d8JLTCV", "XboxSessionTemplateName": "hSqT0leh", "XboxTitleID": "B2gvWClg", "localizedSessionName": {"TF8t4Jwp": {}, "dIyBoL29": {}, "qCUALfXf": {}}}, "PSNBaseUrl": "2uV8Kqui", "attributes": {"65mbF3Br": {}, "mLxXY0rC": {}, "u2KviSPE": {}}, "autoJoin": false, "clientVersion": "DEPY4du7", "deployment": "ZJw37bC6", "disableCodeGeneration": false, "dsManualSetReady": false, "dsSource": "MRSnmfRF", "enableSecret": false, "fallbackClaimKeys": ["WZG7jXid", "jzZfhX88", "0URnWcJl"], "immutableStorage": false, "inactiveTimeout": 43, "inviteTimeout": 71, "joinability": "tKNTj7N8", "leaderElectionGracePeriod": 38, "maxActiveSessions": 47, "maxPlayers": 76, "minPlayers": 58, "name": "dt0RlcOB", "persistent": true, "preferredClaimKeys": ["y4g5GGer", "ASCHIV40", "ldjNj27K"], "requestedRegions": ["xqT1jg4u", "RV3Cpzfl", "IDBNdHol"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "LYU7LzpG"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminCreateConfigurationTemplateV1' test.out

#- 15 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --name 'jlAxPf3D' \
    --offset '10' \
    --order 'SVygGTMH' \
    --orderBy 'LFMajExR' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetAllConfigurationTemplatesV1' test.out

#- 16 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'BVp8ogqr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetConfigurationTemplateV1' test.out

#- 17 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name '4ZfVosq2' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 24, "PSNSupportedPlatforms": ["EFDZP0a6", "7LT7MbmD", "vhJFAJIb"], "SessionTitle": "PANNBf2u", "ShouldSync": false, "XboxAllowCrossPlatform": true, "XboxSandboxID": "QGBg5C7a", "XboxServiceConfigID": "8wRfwI0T", "XboxSessionTemplateName": "8pNEO6dJ", "XboxTitleID": "9VmHE4n1", "localizedSessionName": {"xuF5Sxi7": {}, "vcLGgF0F": {}, "341MA4EW": {}}}, "PSNBaseUrl": "jlPP2Qdf", "attributes": {"xJXwFp9w": {}, "rckZ3sju": {}, "7aMMS9jU": {}}, "autoJoin": false, "clientVersion": "C7YEIgzr", "deployment": "owMJDHUx", "disableCodeGeneration": true, "dsManualSetReady": true, "dsSource": "Icyh7fHL", "enableSecret": true, "fallbackClaimKeys": ["ns9xxDQg", "0qyVm4IJ", "CfDxeuCx"], "immutableStorage": false, "inactiveTimeout": 96, "inviteTimeout": 38, "joinability": "7rpPqAOP", "leaderElectionGracePeriod": 68, "maxActiveSessions": 31, "maxPlayers": 50, "minPlayers": 79, "name": "NoHccukg", "persistent": false, "preferredClaimKeys": ["eeZZ4fik", "LVfMJr37", "gNQzc7Aq"], "requestedRegions": ["H2Nx243j", "XPtWEpYo", "OWbCmdri"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "fju4igc4"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateConfigurationTemplateV1' test.out

#- 18 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'lDQHmNYr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteConfigurationTemplateV1' test.out

#- 19 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 'xKpFPuxa' \
    --namespace $AB_NAMESPACE \
    --userId 'dKXUDbcP' \
    > test.out 2>&1
eval_tap $? 19 'AdminGetMemberActiveSession' test.out

#- 20 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'TuN64G8S' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "YuUODs62"}' \
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
    --configurationName 'c81EbWaW' \
    --dsPodName 'BBW4ucmA' \
    --fromTime 'z1unBeDE' \
    --gameMode 'f16ZNcyE' \
    --isPersistent 'o0Yw9WOB' \
    --isSoftDeleted '42Mrf6Ia' \
    --joinability 'ACHua0pi' \
    --limit '6' \
    --matchPool 'sxzyFMkY' \
    --memberID '1yJYWLxa' \
    --offset '100' \
    --order 'XfWLecTq' \
    --orderBy 'e6sZb7Rg' \
    --sessionID 'GaB9c4QA' \
    --status 'll4kh76P' \
    --statusV2 '14aWD7gA' \
    --toTime 'JyBvCscG' \
    > test.out 2>&1
eval_tap $? 23 'AdminQueryGameSessions' test.out

#- 24 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"mdZsduJg": {}, "1NFgEER9": {}, "UmSh4ggU": {}}' \
    > test.out 2>&1
eval_tap $? 24 'AdminQueryGameSessionsByAttributes' test.out

#- 25 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["m68or2yf", "feAgOnfH", "ugrpt9Sx"]}' \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteBulkGameSessions' test.out

#- 26 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'N3GoKkwI' \
    --body '{"ready": true}' \
    > test.out 2>&1
eval_tap $? 26 'AdminSetDSReady' test.out

#- 27 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'mQCH6ybC' \
    --namespace $AB_NAMESPACE \
    --sessionId 'R2EEumTW' \
    --statusType 'cuPehyAU' \
    > test.out 2>&1
eval_tap $? 27 'AdminUpdateGameSessionMember' test.out

#- 28 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --joinability 'YtOGP37A' \
    --key 'e7MnNWwQ' \
    --leaderID '3auB4vAg' \
    --limit '44' \
    --memberID 'qvCK2YdD' \
    --memberStatus 'ntXQGvMx' \
    --offset '29' \
    --order 'Pnvpi7j6' \
    --orderBy 'vB2lrErv' \
    --partyID '8WiwmMJ0' \
    --value 'KLSfaWYb' \
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
    --body '{"psn": {"clientId": "YbmCrw7K", "clientSecret": "lK7dFMK2", "scope": "Ry2gqinP"}}' \
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
    --sessionId 'RElUx8zA' \
    > test.out 2>&1
eval_tap $? 32 'AdminReadSessionStorage' test.out

#- 33 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'FygiSLpL' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteUserSessionStorage' test.out

#- 34 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'TjxouAzA' \
    --userId 'd0c6Lj9g' \
    > test.out 2>&1
eval_tap $? 34 'AdminReadUserSessionStorage' test.out

#- 35 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users '2m4XsiXw' \
    > test.out 2>&1
eval_tap $? 35 'AdminQueryPlayerAttributes' test.out

#- 36 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'GG3KPbzM' \
    > test.out 2>&1
eval_tap $? 36 'AdminGetPlayerAttributes' test.out

#- 37 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"e8o87hUq": {}, "e5OgvcPl": {}, "GrVBkGHK": {}}, "autoJoin": false, "backfillTicketID": "8WWKyH4L", "clientVersion": "5ODTUXZu", "configurationName": "gN2wWDc1", "deployment": "h9bJkWw6", "dsSource": "lnz4E9pu", "fallbackClaimKeys": ["jPM7mrIJ", "vnH3Gm3s", "wSIOaIR1"], "inactiveTimeout": 18, "inviteTimeout": 68, "joinability": "EwZGdmNE", "matchPool": "U8URd9uS", "maxPlayers": 85, "minPlayers": 38, "preferredClaimKeys": ["UZRG9UUD", "y5Qgn9vy", "p5A5Lh2x"], "requestedRegions": ["u6RWq1iA", "0RVU1Jlr", "7coLnpjD"], "serverName": "skMnSJfO", "teams": [{"UserIDs": ["vr9Rr5o7", "lHLhSm0K", "oeHIyiOY"], "parties": [{"partyID": "1fa0lJvU", "userIDs": ["DDcsN0G7", "gK56Dnot", "Z42EUOhv"]}, {"partyID": "nREUmBDM", "userIDs": ["VC7y0q3M", "Leke7TrJ", "1K2gpZhY"]}, {"partyID": "aMaPI4VO", "userIDs": ["zq2it4zW", "yftFdjbr", "vN9nvGKS"]}]}, {"UserIDs": ["p3PsK0Fx", "Yd9tSuVc", "a8bOvEiV"], "parties": [{"partyID": "4lXtRvyN", "userIDs": ["5QpZLGEm", "M867hGBP", "1eAGPGYd"]}, {"partyID": "LTyfb7D6", "userIDs": ["lWvZpbhn", "tgiZCnVQ", "wIVeUJsw"]}, {"partyID": "MNN4kTI2", "userIDs": ["9AYHhfOV", "XzBnsgRT", "ymJvAjY4"]}]}, {"UserIDs": ["IkOj7KV6", "Fg7GjRG9", "JnroG8oD"], "parties": [{"partyID": "CMEps7dv", "userIDs": ["gQvkqV7z", "0GF1I7NL", "zYE5b7dZ"]}, {"partyID": "F6RQcOkl", "userIDs": ["A0EdOzDd", "h3fqHHOU", "2mTgcvMo"]}, {"partyID": "jNrwhE0T", "userIDs": ["edqdh2Lu", "iLfaJaot", "yWaA6Hg3"]}]}], "textChat": true, "ticketIDs": ["oP9cy8qg", "cDFmHNTY", "sp0ycWBA"], "tieTeamsSessionLifetime": true, "type": "qbm28tcl"}' \
    > test.out 2>&1
eval_tap $? 37 'CreateGameSession' test.out

#- 38 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"R3TwmUi4": {}, "tsguYTrv": {}, "yDyB7n8X": {}}' \
    > test.out 2>&1
eval_tap $? 38 'PublicQueryGameSessionsByAttributes' test.out

#- 39 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "l296oNT3"}' \
    > test.out 2>&1
eval_tap $? 39 'PublicSessionJoinCode' test.out

#- 40 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'ECMXyg6Q' \
    > test.out 2>&1
eval_tap $? 40 'GetGameSessionByPodName' test.out

#- 41 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'XNsuTqyz' \
    > test.out 2>&1
eval_tap $? 41 'GetGameSession' test.out

#- 42 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'TRlSVffs' \
    --body '{"attributes": {"7JozHLgX": {}, "Ah5KAJ1k": {}, "FIg5GEpr": {}}, "backfillTicketID": "vwuPQqFD", "clientVersion": "53nosRoT", "deployment": "3a0CluC0", "fallbackClaimKeys": ["TQGuDy2b", "iTTgoy8d", "XteYmqTN"], "inactiveTimeout": 14, "inviteTimeout": 48, "joinability": "BNm7O3G2", "matchPool": "bz2xCjzh", "maxPlayers": 92, "minPlayers": 78, "preferredClaimKeys": ["fQFFrhsz", "DZprk7hq", "pdp7bVzP"], "requestedRegions": ["li9MTEq3", "QGszgWxX", "QpRLktz7"], "teams": [{"UserIDs": ["1LxK78En", "RZZTSv7p", "LvGWukNX"], "parties": [{"partyID": "ShsETNeH", "userIDs": ["0gzOBjVb", "nuKYYB75", "C8bEFE2K"]}, {"partyID": "4syd6Z4X", "userIDs": ["P5p68hhr", "KLGPW0Cm", "pnjMRcz2"]}, {"partyID": "mGVyF9aU", "userIDs": ["ClJsQe4t", "KddsrvOf", "XbjrXEqQ"]}]}, {"UserIDs": ["Gh1IDFWg", "GsdU0qtW", "2OaAxpjY"], "parties": [{"partyID": "G4ZFO9pm", "userIDs": ["4xjQv0jH", "ADs4A0oN", "lRpZNUG4"]}, {"partyID": "VsIS22DR", "userIDs": ["Bif73Oy8", "D1po4coo", "6CabCpU2"]}, {"partyID": "HcCxpMhO", "userIDs": ["UpREz4eB", "k3Cbyxm7", "cordwzKe"]}]}, {"UserIDs": ["IyLt39Lz", "hfp8jlQT", "R9DIRwfp"], "parties": [{"partyID": "f1MYkYnx", "userIDs": ["3ebkXwDP", "z7p8ghzs", "GFPti69z"]}, {"partyID": "uuvymzZP", "userIDs": ["BU2lXIGn", "fJYrC7Dp", "bQIKbvuH"]}, {"partyID": "Dbi2RLiH", "userIDs": ["k8JLq1q9", "b4cmz4Hr", "jtS5tJjH"]}]}], "ticketIDs": ["SeEIiaCB", "3AL7mmsH", "xULwkVf6"], "tieTeamsSessionLifetime": false, "type": "m01Nki3a", "version": 0}' \
    > test.out 2>&1
eval_tap $? 42 'UpdateGameSession' test.out

#- 43 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'W5bdMbBT' \
    > test.out 2>&1
eval_tap $? 43 'DeleteGameSession' test.out

#- 44 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'fDrwL85M' \
    --body '{"attributes": {"S1Kbomok": {}, "dQna46ys": {}, "EY9FyQpK": {}}, "backfillTicketID": "W1zsoPzs", "clientVersion": "Oklqo0zW", "deployment": "yU9Th7Nu", "fallbackClaimKeys": ["2C1bcX5G", "xfvXqyZk", "iOKpItZQ"], "inactiveTimeout": 19, "inviteTimeout": 81, "joinability": "SbIp0HCc", "matchPool": "9vEtd1l4", "maxPlayers": 21, "minPlayers": 84, "preferredClaimKeys": ["f5knPF0M", "ckigpTNB", "FJOHIipi"], "requestedRegions": ["4D0skozK", "6r5tddTc", "8JPOSfhE"], "teams": [{"UserIDs": ["6aod0fHS", "RN0xo9ua", "1IsBS2bz"], "parties": [{"partyID": "vkLCbEOg", "userIDs": ["g9w9kGOZ", "6leP4mcK", "Ae7RqEJ1"]}, {"partyID": "k6vpi66K", "userIDs": ["tFY0YRLB", "8DdZaBCn", "0RfUeGdS"]}, {"partyID": "mriynJWT", "userIDs": ["2uj1DN10", "1503AgqC", "hTEEoYZ8"]}]}, {"UserIDs": ["dhkHb27s", "pN4kyYFz", "BV5fvPmo"], "parties": [{"partyID": "cD5JThdJ", "userIDs": ["O9nojhyu", "DsdDnSym", "kFfMxdsU"]}, {"partyID": "KRr6TFlH", "userIDs": ["WVo2IXx2", "Sep4Ieae", "sqbsHZ4V"]}, {"partyID": "9zMUiUY7", "userIDs": ["WSTc3GZe", "cxWwJ5PX", "rXBnui1x"]}]}, {"UserIDs": ["xgcVMg7Y", "vFoZFlQB", "7AAPCWor"], "parties": [{"partyID": "uyBOanmg", "userIDs": ["qUTkQkhK", "ybZo2XSV", "cuVp4SXr"]}, {"partyID": "amGUsgDZ", "userIDs": ["SonC2J1E", "Qt8YZqez", "CPxBugfq"]}, {"partyID": "iI1bGNXd", "userIDs": ["k0ohaAFF", "6m8Uecu8", "GmW9QqSv"]}]}], "ticketIDs": ["Ed4eYHcX", "6RFQQrfy", "qEUlv9Rh"], "tieTeamsSessionLifetime": true, "type": "FpifS2W4", "version": 32}' \
    > test.out 2>&1
eval_tap $? 44 'PatchUpdateGameSession' test.out

#- 45 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId '4p4bvfNK' \
    --body '{"backfillTicketID": "SyrwILNT"}' \
    > test.out 2>&1
eval_tap $? 45 'UpdateGameSessionBackfillTicketID' test.out

#- 46 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'nrB1e6gG' \
    > test.out 2>&1
eval_tap $? 46 'GameSessionGenerateCode' test.out

#- 47 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'ZjURY6Dt' \
    > test.out 2>&1
eval_tap $? 47 'PublicRevokeGameSessionCode' test.out

#- 48 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'Sk2qYvyD' \
    --body '{"platformID": "GJOTotLF", "userID": "TDKHMbgA"}' \
    > test.out 2>&1
eval_tap $? 48 'PublicGameSessionInvite' test.out

#- 49 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'gH7MLgVS' \
    > test.out 2>&1
eval_tap $? 49 'JoinGameSession' test.out

#- 50 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'SmhB9A7s' \
    --body '{"leaderID": "YpIt46L4"}' \
    > test.out 2>&1
eval_tap $? 50 'PublicPromoteGameSessionLeader' test.out

#- 51 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'Krpt6TsB' \
    > test.out 2>&1
eval_tap $? 51 'LeaveGameSession' test.out

#- 52 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'UoTinlRZ' \
    > test.out 2>&1
eval_tap $? 52 'PublicGameSessionReject' test.out

#- 53 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId 'Rid9h5Sc' \
    > test.out 2>&1
eval_tap $? 53 'GetSessionServerSecret' test.out

#- 54 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'zF7xyqvz' \
    --body '{"additionalMembers": [{"partyID": "cweM7Aqb", "userIDs": ["ToFLaNwE", "5hamG6s0", "DZ7CnR7p"]}, {"partyID": "Sbd7rtJs", "userIDs": ["SZKkyXd5", "mVK3K4T5", "VesVjVNv"]}, {"partyID": "4QY99L2I", "userIDs": ["ERkRClG8", "JiRALzUJ", "DWduJIMo"]}], "proposedTeams": [{"UserIDs": ["dmvkFAlZ", "AYDIQS5j", "GvIpOtal"], "parties": [{"partyID": "rtIOd0aR", "userIDs": ["THxW9dj9", "VANbxqcZ", "SkaVZ2UJ"]}, {"partyID": "nqU4guZk", "userIDs": ["Nfael6nB", "78RKLf3f", "R6BHEmtP"]}, {"partyID": "5tH6JeOP", "userIDs": ["lyHo87CD", "nRnGPQSX", "O7tbHCm7"]}]}, {"UserIDs": ["hnJwaQyu", "UzELxCn4", "HmgIp4IM"], "parties": [{"partyID": "VlnPhnRe", "userIDs": ["hjq8MB1m", "Zpj4gFga", "lngb1KuD"]}, {"partyID": "78e1ZVD6", "userIDs": ["aDURbaeQ", "bD822le9", "3RJPCJuB"]}, {"partyID": "7BzTFoBR", "userIDs": ["1EEcu7Mz", "uMxXyn76", "NdUckGvb"]}]}, {"UserIDs": ["LEzd0R4C", "DUgEAGNW", "rgc4ElW0"], "parties": [{"partyID": "uhqDe9CS", "userIDs": ["80nOLHyL", "iCP3HLd5", "Aa5x5wOL"]}, {"partyID": "13LmazFT", "userIDs": ["td19Oibd", "4BCu6X7e", "nlBXeNQu"]}, {"partyID": "cqZwfgIW", "userIDs": ["7sK7WhLd", "g0B1uVNy", "um6nuIXb"]}]}], "version": 63}' \
    > test.out 2>&1
eval_tap $? 54 'AppendTeamGameSession' test.out

#- 55 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "WOhsw0iD"}' \
    > test.out 2>&1
eval_tap $? 55 'PublicPartyJoinCode' test.out

#- 56 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId '02VDlARS' \
    > test.out 2>&1
eval_tap $? 56 'PublicGetParty' test.out

#- 57 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'c0gi9Wz9' \
    --body '{"attributes": {"3LMo2TWR": {}, "3Fib5R29": {}, "ASUzDuem": {}}, "inactiveTimeout": 55, "inviteTimeout": 19, "joinability": "nHzdX0vC", "maxPlayers": 17, "minPlayers": 80, "type": "O9XHgrbg", "version": 34}' \
    > test.out 2>&1
eval_tap $? 57 'PublicUpdateParty' test.out

#- 58 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'c9QD55Z3' \
    --body '{"attributes": {"P0wQZqzg": {}, "KMe3mmnh": {}, "yw9QgCxf": {}}, "inactiveTimeout": 51, "inviteTimeout": 50, "joinability": "2wHvs0NA", "maxPlayers": 79, "minPlayers": 92, "type": "78kbhw7j", "version": 48}' \
    > test.out 2>&1
eval_tap $? 58 'PublicPatchUpdateParty' test.out

#- 59 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'ovcdIksE' \
    > test.out 2>&1
eval_tap $? 59 'PublicGeneratePartyCode' test.out

#- 60 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'akL5yT4m' \
    > test.out 2>&1
eval_tap $? 60 'PublicRevokePartyCode' test.out

#- 61 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'NUfH2NYn' \
    --body '{"platformID": "MfyBHHQU", "userID": "RjoHIVsK"}' \
    > test.out 2>&1
eval_tap $? 61 'PublicPartyInvite' test.out

#- 62 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'YjlbP52V' \
    --body '{"leaderID": "T1VZtvo5"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicPromotePartyLeader' test.out

#- 63 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'XQXFk6dK' \
    > test.out 2>&1
eval_tap $? 63 'PublicPartyJoin' test.out

#- 64 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'sBZeb5an' \
    > test.out 2>&1
eval_tap $? 64 'PublicPartyLeave' test.out

#- 65 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId '8IHooJra' \
    > test.out 2>&1
eval_tap $? 65 'PublicPartyReject' test.out

#- 66 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'OPCfZE9U' \
    --userId 'EZbnNBaI' \
    > test.out 2>&1
eval_tap $? 66 'PublicPartyKick' test.out

#- 67 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"RFwIUw6n": {}, "fXzpC2Xy": {}, "nHrBomd3": {}}, "configurationName": "0QB1rIoV", "inactiveTimeout": 24, "inviteTimeout": 83, "joinability": "fzP1NqL1", "maxPlayers": 71, "members": [{"ID": "JynSCysF", "PlatformID": "a5dUtbHn", "PlatformUserID": "F8fysdmo"}, {"ID": "F3zUltw3", "PlatformID": "gHtBHdho", "PlatformUserID": "aVaDuRgA"}, {"ID": "yfKamsaI", "PlatformID": "NbuaBtUs", "PlatformUserID": "32tSiGkB"}], "minPlayers": 23, "textChat": true, "type": "lf9LQIQB"}' \
    > test.out 2>&1
eval_tap $? 67 'PublicCreateParty' test.out

#- 68 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --userId 'MOmxPrgA' \
    --limit '6' \
    > test.out 2>&1
eval_tap $? 68 'PublicGetRecentPlayer' test.out

#- 69 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'ygARq8eD' \
    --body '{"93DCdz2O": {}, "5F2cIN9U": {}, "TjzCV00h": {}}' \
    > test.out 2>&1
eval_tap $? 69 'PublicUpdateInsertSessionStorageLeader' test.out

#- 70 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'eO1JbdxV' \
    --userId 'WkGd8NKg' \
    --body '{"jutjbSNu": {}, "jfCISBDR": {}, "jZNEiEKy": {}}' \
    > test.out 2>&1
eval_tap $? 70 'PublicUpdateInsertSessionStorage' test.out

#- 71 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["PO4bPY7H", "wpSbgBDB", "weYfmOMj"]}' \
    > test.out 2>&1
eval_tap $? 71 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 72 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 72 'PublicGetPlayerAttributes' test.out

#- 73 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": false, "currentPlatform": "s77HWZMm", "data": {"dvfVsyKr": {}, "LKovDzLM": {}, "R8uJjfoV": {}}, "platforms": [{"name": "dUmc4OUo", "userID": "0zvqhoy2"}, {"name": "h4KX53lS", "userID": "u9gpT7UQ"}, {"name": "WFMX4Kg2", "userID": "rUxtbDW6"}], "roles": ["qPomLAIV", "k2uDKHug", "HidcrYFt"]}' \
    > test.out 2>&1
eval_tap $? 73 'PublicStorePlayerAttributes' test.out

#- 74 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'PublicDeletePlayerAttributes' test.out

#- 75 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'ct53rIjy' \
    --orderBy '1Vzfi3ZJ' \
    --status '4vydGtdZ' \
    > test.out 2>&1
eval_tap $? 75 'PublicQueryMyGameSessions' test.out

#- 76 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'wg1VfDCf' \
    --orderBy 'lJmIOgEc' \
    --status 'ktH5ocSe' \
    > test.out 2>&1
eval_tap $? 76 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE