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
    --body '{"regionRetryMapping": {"8Em8Q4nW": ["2dkxtKjP", "ZQg6Xi9m", "ZC67PEja"], "aHp1236L": ["rbXThyJW", "B169x5mK", "wRhQooXZ"], "V7egiT70": ["qprQKYA6", "qWfa1dDb", "9sOJtpky"]}, "regionURLMapping": ["7REKAK1t", "Fbz2Tz7E", "tuKMnw5P"], "testGameMode": "RUGNpj4h", "testRegionURLMapping": ["4q6VpkEq", "uuYmk0kK", "4VQRxOJR"], "testTargetUserIDs": ["CBQTjQf3", "bFyIQUt5", "FmFsx3JY"]}' \
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
    --body '{"durationDays": 44}' \
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
    --description 'x1KVv6GU' \
    --certname '49Rw2G0P' \
    --file 'tmp.dat' \
    --password 'Gv8F4k4t' \
    > test.out 2>&1
eval_tap $? 13 'HandleUploadXboxPFXCertificate' test.out

#- 14 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 78, "PSNSupportedPlatforms": ["LxjAZApv", "G9CZur68", "tPBMhHXz"], "SessionTitle": "sZcoMkHP", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "fSg2KezD", "XboxServiceConfigID": "GlkCL4LJ", "XboxSessionTemplateName": "EKsW4ZMg", "XboxTitleID": "gj3EB51r", "localizedSessionName": {"1TDlrEmz": {}, "xbnIh9IG": {}, "LMEkQkLq": {}}}, "PSNBaseUrl": "GvzRz5y9", "attributes": {"6QY6Sfi6": {}, "D6oeCwor": {}, "ExHCwYfJ": {}}, "autoJoin": true, "clientVersion": "254RM5Ft", "deployment": "dlaKvHQY", "disableCodeGeneration": true, "dsManualSetReady": false, "dsSource": "LJcBlSRw", "enableSecret": true, "fallbackClaimKeys": ["hauvHWwG", "59c15lWP", "zN1oa5iZ"], "immutableStorage": false, "inactiveTimeout": 17, "inviteTimeout": 68, "joinability": "umV6C1cP", "leaderElectionGracePeriod": 41, "manualRejoin": false, "maxActiveSessions": 30, "maxPlayers": 73, "minPlayers": 38, "name": "8JPFje0T", "persistent": true, "preferredClaimKeys": ["ygayWOi6", "TfOEAspS", "T1zfvnRn"], "requestedRegions": ["uyCUgkPk", "YHewNaAG", "vdiATwgT"], "textChat": false, "tieTeamsSessionLifetime": false, "type": "4G7ann8P"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminCreateConfigurationTemplateV1' test.out

#- 15 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --name '9l7bl9uq' \
    --offset '22' \
    --order 'JXiu2q0q' \
    --orderBy 'G8YHDH2H' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetAllConfigurationTemplatesV1' test.out

#- 16 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'srcIiKM0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetConfigurationTemplateV1' test.out

#- 17 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'qUbdXW5d' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 50, "PSNSupportedPlatforms": ["oTzl4eFX", "uALq0L3m", "XlI7k8zh"], "SessionTitle": "dSlFfgvD", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "2z8Mpvxr", "XboxServiceConfigID": "eTUKFo0p", "XboxSessionTemplateName": "IiDXvmwe", "XboxTitleID": "H9oRByVj", "localizedSessionName": {"Ak2h5VPP": {}, "467ttVDe": {}, "F7r25hjN": {}}}, "PSNBaseUrl": "5fT5M6fs", "attributes": {"tjsmk72N": {}, "KpSDp8jn": {}, "O0gKOOWn": {}}, "autoJoin": false, "clientVersion": "bZFP2tAy", "deployment": "yodruvD6", "disableCodeGeneration": false, "dsManualSetReady": false, "dsSource": "pQgy9cZC", "enableSecret": false, "fallbackClaimKeys": ["AIowjrBf", "9zxSNUty", "AaLivh0A"], "immutableStorage": false, "inactiveTimeout": 92, "inviteTimeout": 69, "joinability": "MfmFiBCe", "leaderElectionGracePeriod": 0, "manualRejoin": false, "maxActiveSessions": 3, "maxPlayers": 65, "minPlayers": 98, "name": "Mz8z1vhu", "persistent": false, "preferredClaimKeys": ["e7C2B80f", "GvSbxqQB", "v0mbnQtE"], "requestedRegions": ["99hM11xH", "e60rA2Xf", "5TJxQ9Co"], "textChat": false, "tieTeamsSessionLifetime": false, "type": "hoHROpsb"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateConfigurationTemplateV1' test.out

#- 18 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'Awp40HxL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteConfigurationTemplateV1' test.out

#- 19 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 'e6pR46Hk' \
    --namespace $AB_NAMESPACE \
    --userId 'rXUtRWwO' \
    > test.out 2>&1
eval_tap $? 19 'AdminGetMemberActiveSession' test.out

#- 20 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'EOU4CbUA' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "TpPdNkot"}' \
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
    --configurationName 'hZyojBIs' \
    --dsPodName '4t5HOydo' \
    --fromTime 'qqDFwS1M' \
    --gameMode 'vxn0KodS' \
    --isPersistent '02685vn3' \
    --isSoftDeleted 'V9urdRa0' \
    --joinability '6DGDdDKc' \
    --limit '3' \
    --matchPool '34iS64Ld' \
    --memberID 'rxPuPzXi' \
    --offset '30' \
    --order 'RxDFy9TO' \
    --orderBy 'xVsV28W3' \
    --sessionID '8DhmNcp8' \
    --status 'ZvTBOu7j' \
    --statusV2 '4OeNkzE9' \
    --toTime '3SLaTLc4' \
    > test.out 2>&1
eval_tap $? 23 'AdminQueryGameSessions' test.out

#- 24 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"aPqEZFFG": {}, "GIKvLPOP": {}, "NR0do55N": {}}' \
    > test.out 2>&1
eval_tap $? 24 'AdminQueryGameSessionsByAttributes' test.out

#- 25 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["VghvJbyv", "4RAAms9z", "5I6hnAnX"]}' \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteBulkGameSessions' test.out

#- 26 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'GbnVhBay' \
    --body '{"ready": true}' \
    > test.out 2>&1
eval_tap $? 26 'AdminSetDSReady' test.out

#- 27 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'KOgS4mrT' \
    --namespace $AB_NAMESPACE \
    --sessionId 'uHGZJxi1' \
    --statusType 'iSTY7Uh8' \
    > test.out 2>&1
eval_tap $? 27 'AdminUpdateGameSessionMember' test.out

#- 28 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '34' \
    --order 'aWWWBlfx' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetListNativeSession' test.out

#- 29 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --isSoftDeleted 'v1yCCDd0' \
    --joinability 'nCfcUvhP' \
    --key 'w1mgBxpB' \
    --leaderID 'BK6nhM5A' \
    --limit '68' \
    --memberID '9RBpBuV1' \
    --memberStatus 'k2oQuW4J' \
    --offset '82' \
    --order 'TV2e3R8O' \
    --orderBy 'ophZY2OD' \
    --partyID '4nAoLV7z' \
    --value 'vxf1zUDG' \
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
    --body '{"psn": {"clientId": "EjmbDpaW", "clientSecret": "vIwbbI1i", "scope": "NlGKw3Ma"}}' \
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
    --limit '46' \
    --userId 'GzjgkWoS' \
    > test.out 2>&1
eval_tap $? 33 'AdminGetRecentPlayer' test.out

#- 34 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'kajCXs83' \
    > test.out 2>&1
eval_tap $? 34 'AdminReadSessionStorage' test.out

#- 35 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'LPEyUeTB' \
    > test.out 2>&1
eval_tap $? 35 'AdminDeleteUserSessionStorage' test.out

#- 36 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'V8Bo8djU' \
    --userId 'E2ePJf09' \
    > test.out 2>&1
eval_tap $? 36 'AdminReadUserSessionStorage' test.out

#- 37 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users '1i7ZrNXp' \
    > test.out 2>&1
eval_tap $? 37 'AdminQueryPlayerAttributes' test.out

#- 38 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'N2UHPiic' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetPlayerAttributes' test.out

#- 39 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"HVPXt0E4": {}, "eDNLjCWu": {}, "qp0golaL": {}}, "autoJoin": true, "backfillTicketID": "2tyAXjln", "clientVersion": "4dmk3Phq", "configurationName": "UsFLuJk2", "deployment": "xQ9EyKOd", "dsSource": "CsW0ZHjU", "fallbackClaimKeys": ["gBtkFuJX", "WAaB015E", "jNmYq0wg"], "inactiveTimeout": 16, "inviteTimeout": 17, "joinability": "dwnCsQyU", "matchPool": "5tSF1ckm", "maxPlayers": 91, "minPlayers": 83, "preferredClaimKeys": ["XDh1rZJo", "DYP7401i", "eDZgs2PT"], "requestedRegions": ["Os0nA0uD", "FNpDhiw0", "IUewvol1"], "serverName": "ltMiOFn5", "teams": [{"UserIDs": ["puO3UADE", "GHibdOme", "svEqeEPr"], "parties": [{"partyID": "3bVU2P48", "userIDs": ["g4w1LfUX", "PgSlC7qX", "R3M9Xn0a"]}, {"partyID": "pVub7FQU", "userIDs": ["ENoIeH3c", "8qh8zXDZ", "deZ7cyyM"]}, {"partyID": "dykmbI1a", "userIDs": ["oYHaq6kY", "3d12JQxa", "tuMlzrEi"]}]}, {"UserIDs": ["DpnJa917", "pZCHlCJD", "oZecjY11"], "parties": [{"partyID": "JGl6jZjp", "userIDs": ["BErxeWtf", "2hxzJF9U", "6yt1zdEt"]}, {"partyID": "3b8hb6Fl", "userIDs": ["tVinPhdh", "7BCgGpwL", "VIAGs6nN"]}, {"partyID": "4KiFmys7", "userIDs": ["Wr2dsLnX", "qmdMttsf", "5k1lWtb2"]}]}, {"UserIDs": ["0d8I6lUH", "I20zBDQh", "azqSShHG"], "parties": [{"partyID": "za7ARaX6", "userIDs": ["3zzaH1zz", "2vUUtXR5", "eBdtdnKu"]}, {"partyID": "GgNFjBUB", "userIDs": ["AtKkFUzP", "KqGvF6n3", "LjJRxVU5"]}, {"partyID": "gzOKzopT", "userIDs": ["j4wglzUH", "5QQ64YvO", "0GFMWBSZ"]}]}], "textChat": false, "ticketIDs": ["j0qFzVVn", "ZjkYE6HQ", "jzx14mlf"], "tieTeamsSessionLifetime": true, "type": "9tes5FvB"}' \
    > test.out 2>&1
eval_tap $? 39 'CreateGameSession' test.out

#- 40 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"cO4SBxA8": {}, "8pCczSw4": {}, "zmJf6sU8": {}}' \
    > test.out 2>&1
eval_tap $? 40 'PublicQueryGameSessionsByAttributes' test.out

#- 41 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "J2FgXYZi"}' \
    > test.out 2>&1
eval_tap $? 41 'PublicSessionJoinCode' test.out

#- 42 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'w7wAsOKK' \
    > test.out 2>&1
eval_tap $? 42 'GetGameSessionByPodName' test.out

#- 43 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'uL070RWO' \
    > test.out 2>&1
eval_tap $? 43 'GetGameSession' test.out

#- 44 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'gBiDlTE9' \
    --body '{"attributes": {"KA9JBTJs": {}, "9NSP1qxP": {}, "FESJg82l": {}}, "backfillTicketID": "0nBN5hk7", "clientVersion": "Puq5LmOc", "deployment": "KCT30S3I", "fallbackClaimKeys": ["di0lggoT", "6n8syra9", "bwkdqsz3"], "inactiveTimeout": 82, "inviteTimeout": 85, "joinability": "z3X3Zhqv", "matchPool": "1XKxCPUP", "maxPlayers": 31, "minPlayers": 97, "preferredClaimKeys": ["6rgiUbXv", "ZFGLmkzV", "XVSQ35uX"], "requestedRegions": ["POH0JHdC", "eKnVuNwF", "vUlAiaMP"], "teams": [{"UserIDs": ["xT7ibp6C", "JXOpX7EC", "JDokcvDN"], "parties": [{"partyID": "tsJyyD8B", "userIDs": ["rrlCOe4y", "UbJqzuoT", "CPpZU7GK"]}, {"partyID": "hPToGvia", "userIDs": ["6XGKgasC", "10H462Ml", "ZvEoDJEU"]}, {"partyID": "SvfeEoQD", "userIDs": ["FaX8d8RA", "44X8xFSk", "cXynqLpb"]}]}, {"UserIDs": ["H4i2cOzS", "c0LukEHd", "IbftXpcg"], "parties": [{"partyID": "I5MWRdan", "userIDs": ["3uI4Lrsm", "6IdV6OEZ", "CLoBpQEx"]}, {"partyID": "9Jjli2vC", "userIDs": ["7o8tXwZq", "K7LLsip7", "8eA3F9bC"]}, {"partyID": "qcwpgIFu", "userIDs": ["PtU8m5Sk", "rYvXo5lc", "3LnOw6Z7"]}]}, {"UserIDs": ["J56DiC57", "S97FfeVI", "s6ckYaFn"], "parties": [{"partyID": "HFCzgMea", "userIDs": ["IKWkYxVA", "glnCAatj", "HGWjGCru"]}, {"partyID": "0unZQJmq", "userIDs": ["FBNPoGgG", "FIw0dq0Q", "jXQrOCuK"]}, {"partyID": "gP1qdAUA", "userIDs": ["rI8qFq21", "f86oJ1dF", "1tAKNBaQ"]}]}], "ticketIDs": ["Z2Hr23DQ", "gI7HQ8Ee", "9G53bEM6"], "tieTeamsSessionLifetime": true, "type": "tOI4wWFq", "version": 19}' \
    > test.out 2>&1
eval_tap $? 44 'UpdateGameSession' test.out

#- 45 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '1zCWmPGh' \
    > test.out 2>&1
eval_tap $? 45 'DeleteGameSession' test.out

#- 46 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'wntI6sbD' \
    --body '{"attributes": {"eBCgA5YK": {}, "ICSALfkV": {}, "4f0rGwGY": {}}, "backfillTicketID": "Hdj21APC", "clientVersion": "taH8zV2w", "deployment": "j6fzSbwk", "fallbackClaimKeys": ["urYqnDgi", "GU9z7gXx", "S8wJdCEZ"], "inactiveTimeout": 13, "inviteTimeout": 79, "joinability": "asIbhLz8", "matchPool": "yevXImbR", "maxPlayers": 92, "minPlayers": 14, "preferredClaimKeys": ["jaAR8E2I", "n29fCBsH", "5xjVyIqd"], "requestedRegions": ["BKgov0O8", "wnx7Oayy", "vNUl10XO"], "teams": [{"UserIDs": ["1MMjR2qX", "qs74EgJP", "d7fbyD4f"], "parties": [{"partyID": "aZKm4qNK", "userIDs": ["aqsTlBhR", "HRBR3gfq", "dVIflw5d"]}, {"partyID": "v2KHvluo", "userIDs": ["2SlwaI43", "TPyThOOz", "lLGrYatL"]}, {"partyID": "VCxCLKWD", "userIDs": ["v40KkQkV", "2wWOc2bu", "Fn7xZcvu"]}]}, {"UserIDs": ["jew3eSOh", "8xeXQCTn", "6JJQS8dl"], "parties": [{"partyID": "6IMfxe5q", "userIDs": ["0Svdggp8", "l2fodrJJ", "a31kgQfe"]}, {"partyID": "XYbAub1d", "userIDs": ["mIY0hyXk", "Ay2nSVqW", "pxHQJw7m"]}, {"partyID": "uHdeqUNn", "userIDs": ["0B46Jo9M", "5w9mDPsJ", "Glpzd6Iy"]}]}, {"UserIDs": ["6pwb9jGr", "SVnIq1bf", "vbG7gjw8"], "parties": [{"partyID": "BjvwpOKR", "userIDs": ["i2fEbQ0P", "UhImPacX", "ioyDVqOR"]}, {"partyID": "jsoWjupo", "userIDs": ["OZiAN98k", "EDE76l9Z", "uhKyYyO9"]}, {"partyID": "pk4YEYZe", "userIDs": ["uANeBfRu", "stZCkK1J", "smgWmyIB"]}]}], "ticketIDs": ["Mg9WLbWc", "560rBk0F", "SREWeHhG"], "tieTeamsSessionLifetime": true, "type": "KVAJuCA1", "version": 36}' \
    > test.out 2>&1
eval_tap $? 46 'PatchUpdateGameSession' test.out

#- 47 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'TJifQgi0' \
    --body '{"backfillTicketID": "TyKsz8Ww"}' \
    > test.out 2>&1
eval_tap $? 47 'UpdateGameSessionBackfillTicketID' test.out

#- 48 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId '9E82UfW4' \
    > test.out 2>&1
eval_tap $? 48 'GameSessionGenerateCode' test.out

#- 49 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'NNJBGxPS' \
    > test.out 2>&1
eval_tap $? 49 'PublicRevokeGameSessionCode' test.out

#- 50 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'dYb5WJAB' \
    --body '{"platformID": "fpm5dxb9", "userID": "G4j9N2lh"}' \
    > test.out 2>&1
eval_tap $? 50 'PublicGameSessionInvite' test.out

#- 51 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'gRlGXgBF' \
    > test.out 2>&1
eval_tap $? 51 'JoinGameSession' test.out

#- 52 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'KwKh3onU' \
    --body '{"leaderID": "LHIT1RTL"}' \
    > test.out 2>&1
eval_tap $? 52 'PublicPromoteGameSessionLeader' test.out

#- 53 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'UHWIxaww' \
    > test.out 2>&1
eval_tap $? 53 'LeaveGameSession' test.out

#- 54 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'WSSeBPwT' \
    > test.out 2>&1
eval_tap $? 54 'PublicGameSessionReject' test.out

#- 55 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId 'L4eDaJxd' \
    > test.out 2>&1
eval_tap $? 55 'GetSessionServerSecret' test.out

#- 56 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'My53xqw6' \
    --body '{"additionalMembers": [{"partyID": "qCcvCvA9", "userIDs": ["K0PvnEbU", "mYyCsQOd", "RlpTqjKU"]}, {"partyID": "zWYUULNB", "userIDs": ["Lg4sIJ56", "xq1VXYAN", "sYyqD6xW"]}, {"partyID": "zWVB7ExN", "userIDs": ["61li4aoe", "3mbH4498", "wKyp06Ow"]}], "proposedTeams": [{"UserIDs": ["JnJ5fGag", "T1gb40XL", "XFEVqddI"], "parties": [{"partyID": "4714RjTt", "userIDs": ["MtAKTwt1", "sablyJdo", "UNI3K5DN"]}, {"partyID": "Qsfjigl4", "userIDs": ["f3SnhyB6", "7fYtIyiJ", "DEcl8X2n"]}, {"partyID": "0peWWbef", "userIDs": ["87m8EQ78", "rpBgti2f", "pfcSrBVR"]}]}, {"UserIDs": ["MGZ89vZV", "bmsd7Whw", "cFgQ8LzQ"], "parties": [{"partyID": "VWdsFuAg", "userIDs": ["NQQKKFcD", "wJDFi0Ll", "Drnzumum"]}, {"partyID": "lhEuYKPK", "userIDs": ["JpO3QM0K", "VyUAxfTp", "GZwGch7z"]}, {"partyID": "BgxdoU5v", "userIDs": ["AsMNuJiC", "TaYj8PjM", "AngZ8E3x"]}]}, {"UserIDs": ["iXrIEoYl", "zEeh7psL", "D5bd9jHT"], "parties": [{"partyID": "0F0t6pPr", "userIDs": ["CJ3KnIWY", "NWBu5wBd", "MApvzDVT"]}, {"partyID": "No1UCum7", "userIDs": ["Bw8P61AY", "AOEUlhWn", "fStCtOai"]}, {"partyID": "wBIXUo8a", "userIDs": ["ohV5K5TD", "z94Ztw6L", "pqNUVMhF"]}]}], "version": 92}' \
    > test.out 2>&1
eval_tap $? 56 'AppendTeamGameSession' test.out

#- 57 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "au3KzGnM"}' \
    > test.out 2>&1
eval_tap $? 57 'PublicPartyJoinCode' test.out

#- 58 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'NkF6eLxk' \
    > test.out 2>&1
eval_tap $? 58 'PublicGetParty' test.out

#- 59 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'aMwZRtvr' \
    --body '{"attributes": {"Q0jEiqI6": {}, "rk0lca0u": {}, "vLfoIZ1c": {}}, "inactiveTimeout": 90, "inviteTimeout": 51, "joinability": "Ry9IF2ts", "maxPlayers": 8, "minPlayers": 85, "type": "k915xsuQ", "version": 79}' \
    > test.out 2>&1
eval_tap $? 59 'PublicUpdateParty' test.out

#- 60 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'ei5NtDiW' \
    --body '{"attributes": {"psmfF8FZ": {}, "WwTIRdFw": {}, "rOGcBXCR": {}}, "inactiveTimeout": 10, "inviteTimeout": 62, "joinability": "kdYHKrmI", "maxPlayers": 35, "minPlayers": 30, "type": "4UO3BPDX", "version": 15}' \
    > test.out 2>&1
eval_tap $? 60 'PublicPatchUpdateParty' test.out

#- 61 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'z1pcLCXu' \
    > test.out 2>&1
eval_tap $? 61 'PublicGeneratePartyCode' test.out

#- 62 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'TpLIklVA' \
    > test.out 2>&1
eval_tap $? 62 'PublicRevokePartyCode' test.out

#- 63 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'eNDQkiOe' \
    --body '{"platformID": "UgoYCmuy", "userID": "zwNuzXw1"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicPartyInvite' test.out

#- 64 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId '5SQu17iA' \
    --body '{"leaderID": "D7ZaC3z5"}' \
    > test.out 2>&1
eval_tap $? 64 'PublicPromotePartyLeader' test.out

#- 65 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'nCIMmIG3' \
    > test.out 2>&1
eval_tap $? 65 'PublicPartyJoin' test.out

#- 66 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'UakoTXoq' \
    > test.out 2>&1
eval_tap $? 66 'PublicPartyLeave' test.out

#- 67 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'ohrgBTV4' \
    > test.out 2>&1
eval_tap $? 67 'PublicPartyReject' test.out

#- 68 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'ehJcuFAq' \
    --userId 'hcqELUC8' \
    > test.out 2>&1
eval_tap $? 68 'PublicPartyKick' test.out

#- 69 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"Fp2F7yv9": {}, "2e8fa0GJ": {}, "P630WnZ0": {}}, "configurationName": "iolujBNh", "inactiveTimeout": 18, "inviteTimeout": 90, "joinability": "kWv3HE7H", "maxPlayers": 71, "members": [{"ID": "FEW8qjiV", "PlatformID": "x5978heK", "PlatformUserID": "FMkCy0DX"}, {"ID": "xTENpzjG", "PlatformID": "nAWgBXLR", "PlatformUserID": "LlUP3a9k"}, {"ID": "NXKUQqCr", "PlatformID": "BTALpxET", "PlatformUserID": "hWdAYDVe"}], "minPlayers": 94, "textChat": true, "type": "7MLCkk8C"}' \
    > test.out 2>&1
eval_tap $? 69 'PublicCreateParty' test.out

#- 70 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    > test.out 2>&1
eval_tap $? 70 'PublicGetRecentPlayer' test.out

#- 71 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId '2fYeoUjP' \
    --body '{"IezvdmVe": {}, "uNdfeQk4": {}, "LU3QV8tA": {}}' \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdateInsertSessionStorageLeader' test.out

#- 72 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId '2G5ZSZG5' \
    --userId 'ewlecw0Z' \
    --body '{"D3KrM6Zn": {}, "EJiAPP4G": {}, "6BEuLFIP": {}}' \
    > test.out 2>&1
eval_tap $? 72 'PublicUpdateInsertSessionStorage' test.out

#- 73 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["L0kUvftQ", "2fgOZ9Sx", "f7LE0f5h"]}' \
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
    --body '{"crossplayEnabled": true, "currentPlatform": "h4CMXKX6", "data": {"G36GysYX": {}, "IPjRwSiJ": {}, "5tZ1VG87": {}}, "platforms": [{"name": "W1vsdPko", "userID": "ONUhOW9O"}, {"name": "OSQUjblM", "userID": "WmOzqnTr"}, {"name": "irQmGQmD", "userID": "gwh7sIbv"}], "roles": ["rZ5FOLts", "IrIUO1m3", "zz2vilV3"]}' \
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
    --order 'lILErPaI' \
    --orderBy '0D61NCYJ' \
    --status '6yMKHT0C' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryMyGameSessions' test.out

#- 78 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'RlMSWEjo' \
    --orderBy 'alMkyLt3' \
    --status '7x2k0w2C' \
    > test.out 2>&1
eval_tap $? 78 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE