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
    --body '{"regionRetryMapping": {"g86dvrHv": ["7S1CsmNE", "Gqhc2qrU", "MMyB6ydM"], "VC6UHAyc": ["BCu4j7tw", "EBGusS40", "83lzIx5F"], "QdPSnYev": ["PeZ2ePG6", "bunWPnvC", "tNSz0QW9"]}, "regionURLMapping": ["ibJpzL2i", "aIk6D3Yv", "XM0Jww2S"], "testGameMode": "ezYvsgBb", "testRegionURLMapping": ["opOrucGl", "phWgEg6i", "ypxzBlZN"], "testTargetUserIDs": ["mubth1vt", "ZzAfGhuX", "5h1c5FQV"]}' \
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
    --body '{"durationDays": 10}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateConfigurationAlertV1' test.out

#- 11 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 90}' \
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
    --description 'p05OicMw' \
    --certname '7uzxZsNU' \
    --file 'tmp.dat' \
    --password 'bsuvgbpS' \
    > test.out 2>&1
eval_tap $? 13 'HandleUploadXboxPFXCertificate' test.out

#- 14 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 83, "PSNSupportedPlatforms": ["wpOCi1v1", "CKOh7f5U", "nKAj5G12"], "SessionTitle": "YaX8ahDA", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "ljfBgFy1", "XboxServiceConfigID": "lIP4ZYBR", "XboxSessionTemplateName": "OwCbs1Qo", "XboxTitleID": "jOMqZIB4", "localizedSessionName": {"I5djVBLW": {}, "dsdxsWrz": {}, "rkVfzjcW": {}}}, "PSNBaseUrl": "LDivyzAq", "attributes": {"qjOoq6rK": {}, "cy79cQKp": {}, "vFYeJUMy": {}}, "autoJoin": false, "clientVersion": "XXx8hbQs", "deployment": "K3XnPc0B", "disableCodeGeneration": true, "dsManualSetReady": true, "dsSource": "PszRF7hg", "enableSecret": false, "fallbackClaimKeys": ["vlknPiYG", "ifr6JDqA", "PdaV9OLy"], "immutableStorage": true, "inactiveTimeout": 9, "inviteTimeout": 35, "joinability": "a4fJis2O", "leaderElectionGracePeriod": 26, "maxActiveSessions": 24, "maxPlayers": 76, "minPlayers": 72, "name": "p7WqpLHD", "persistent": true, "preferredClaimKeys": ["lInipZXn", "B3CpVb7q", "fh45Bxlt"], "requestedRegions": ["jDQ4ibga", "yhmiEtUp", "Ai8IxoZJ"], "textChat": false, "tieTeamsSessionLifetime": false, "type": "RYNo7qmC"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminCreateConfigurationTemplateV1' test.out

#- 15 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --name '0CsJUQQU' \
    --offset '100' \
    --order 'JNRGbdGB' \
    --orderBy 'eGUAPa33' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetAllConfigurationTemplatesV1' test.out

#- 16 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'As6bsxND' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetConfigurationTemplateV1' test.out

#- 17 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'OQwqZzeW' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 18, "PSNSupportedPlatforms": ["RZ55Xgvx", "4fp3OsWV", "wcfFMQZu"], "SessionTitle": "v7LtvZe5", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "nG89gexK", "XboxServiceConfigID": "n6shm7mr", "XboxSessionTemplateName": "Ew8AFZma", "XboxTitleID": "4ezpnn4I", "localizedSessionName": {"3hOw0HaE": {}, "ybTB1yYX": {}, "7KlcvMLf": {}}}, "PSNBaseUrl": "QAMxfq6x", "attributes": {"vCK9JkJB": {}, "4zyCYcxE": {}, "LL0eIEOq": {}}, "autoJoin": true, "clientVersion": "o4KYiEEm", "deployment": "HfVXMQ9M", "disableCodeGeneration": false, "dsManualSetReady": false, "dsSource": "vHRaYRu1", "enableSecret": true, "fallbackClaimKeys": ["SL3BgNHN", "F8v0cfV9", "DAXVy1Af"], "immutableStorage": true, "inactiveTimeout": 44, "inviteTimeout": 89, "joinability": "sv8hpA6x", "leaderElectionGracePeriod": 22, "maxActiveSessions": 74, "maxPlayers": 94, "minPlayers": 81, "name": "PW3EC74n", "persistent": false, "preferredClaimKeys": ["TIDEcXbn", "fBAuR8Z8", "vr4JCaqW"], "requestedRegions": ["ScGt68RE", "zQU7UN8m", "zBZIaI1m"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "FGUNaMZW"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateConfigurationTemplateV1' test.out

#- 18 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'II2iYwAT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteConfigurationTemplateV1' test.out

#- 19 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 'kwrkaCMs' \
    --namespace $AB_NAMESPACE \
    --userId '0fVhv4WL' \
    > test.out 2>&1
eval_tap $? 19 'AdminGetMemberActiveSession' test.out

#- 20 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'wiM1eqfN' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "8lqOz76p"}' \
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
    --configurationName 'cqglR7yX' \
    --dsPodName 'vr1mIZXe' \
    --fromTime '0Q4JZKLP' \
    --gameMode 'qC10brlM' \
    --isPersistent 'iDaPrc9R' \
    --isSoftDeleted 'A76WwirN' \
    --joinability 'dSCkLuJD' \
    --limit '86' \
    --matchPool 'sJQq9pPi' \
    --memberID 'o2RoOu6K' \
    --offset '77' \
    --order 'ME8Yzyb7' \
    --orderBy 'lErZI5Ux' \
    --sessionID 'yaoJfHiS' \
    --status 'JIlW5Fan' \
    --statusV2 'BUMzJJWH' \
    --toTime 'Q3LWWHAs' \
    > test.out 2>&1
eval_tap $? 23 'AdminQueryGameSessions' test.out

#- 24 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"iVWz9QXZ": {}, "0VO3PNOV": {}, "0dSfsRtt": {}}' \
    > test.out 2>&1
eval_tap $? 24 'AdminQueryGameSessionsByAttributes' test.out

#- 25 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["5Vwjeo57", "esYyzzWq", "lk0n6no5"]}' \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteBulkGameSessions' test.out

#- 26 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'C1tV9CeZ' \
    --body '{"ready": false}' \
    > test.out 2>&1
eval_tap $? 26 'AdminSetDSReady' test.out

#- 27 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'uX4uBKTG' \
    --namespace $AB_NAMESPACE \
    --sessionId '3qaJHjPC' \
    --statusType 'xTpeKNf6' \
    > test.out 2>&1
eval_tap $? 27 'AdminUpdateGameSessionMember' test.out

#- 28 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '44' \
    --order 'FeEeaAKl' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetListNativeSession' test.out

#- 29 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --joinability 'aMd2fCzY' \
    --key 'S0rL14nB' \
    --leaderID 'VcCYQjLc' \
    --limit '64' \
    --memberID '1jtUxaNa' \
    --memberStatus 'PHghUGY5' \
    --offset '18' \
    --order 'IOwkRiJx' \
    --orderBy 'URB5tL7o' \
    --partyID 'FWiMgq3c' \
    --value '8wxvyLjZ' \
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
    --body '{"psn": {"clientId": "TpmZls8L", "clientSecret": "ZSnBF9G0", "scope": "ZyVF42VY"}}' \
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
    --sessionId '7fG8Wvwn' \
    > test.out 2>&1
eval_tap $? 33 'AdminReadSessionStorage' test.out

#- 34 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'Ev0mPwXy' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteUserSessionStorage' test.out

#- 35 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'u0GVEiJu' \
    --userId 'WLcNtZ4K' \
    > test.out 2>&1
eval_tap $? 35 'AdminReadUserSessionStorage' test.out

#- 36 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'qvWCrnbG' \
    > test.out 2>&1
eval_tap $? 36 'AdminQueryPlayerAttributes' test.out

#- 37 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'DuRVu4DZ' \
    > test.out 2>&1
eval_tap $? 37 'AdminGetPlayerAttributes' test.out

#- 38 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"WKXypUS1": {}, "h0zw1Lae": {}, "Uz9MXuk2": {}}, "autoJoin": true, "backfillTicketID": "EwBkIaBH", "clientVersion": "kLPFNkXv", "configurationName": "aOJ2HXsE", "deployment": "znX0GEw8", "dsSource": "lwwBMiHd", "fallbackClaimKeys": ["HYdrqxQw", "Ownm6SkX", "NswM4A6C"], "inactiveTimeout": 82, "inviteTimeout": 35, "joinability": "JZLd6JBY", "matchPool": "kpOhu6BN", "maxPlayers": 61, "minPlayers": 98, "preferredClaimKeys": ["cbSvtYLK", "Eu1BuDJg", "SUvfMUaG"], "requestedRegions": ["72ng3Asl", "xdQsYUc0", "l5Wn6nNK"], "serverName": "yVtHrRCD", "teams": [{"UserIDs": ["zdNnjams", "6E0biXf0", "6hOLDmjZ"], "parties": [{"partyID": "fpcwAhMs", "userIDs": ["rrCGPCIP", "rtUYAwWJ", "wJgjZoPp"]}, {"partyID": "KY94IBiB", "userIDs": ["JHYJdkb4", "sHCSUDl7", "QG25LwNT"]}, {"partyID": "cOsSGN1Q", "userIDs": ["h8aGMbML", "41ExZVbA", "NulSudLr"]}]}, {"UserIDs": ["NjARh4CH", "UKJF78eG", "XLcFv49G"], "parties": [{"partyID": "VK0BwHws", "userIDs": ["oEfIau5K", "xdJCdGBu", "4lxXtr4z"]}, {"partyID": "NWwVV3km", "userIDs": ["xFqnXyEf", "nObDPBmA", "J3DVPU3r"]}, {"partyID": "3EnVrJ9Z", "userIDs": ["e45mfsYp", "lEDx7dFE", "kxXA3Jgg"]}]}, {"UserIDs": ["u3Lzmf7A", "G9DBEbFV", "yXi3442H"], "parties": [{"partyID": "TKISouKG", "userIDs": ["qaaS97hU", "dV9mVpI2", "rSGu0sp1"]}, {"partyID": "PC2jH8pb", "userIDs": ["g0EOcZdx", "F4f6LOKI", "M9WG2BeZ"]}, {"partyID": "QZdrCjHw", "userIDs": ["jgBkeuAo", "Z2R4Zj7C", "3CRdbogC"]}]}], "textChat": false, "ticketIDs": ["KsEqw1E7", "3p9Un16a", "aWSIDczG"], "tieTeamsSessionLifetime": true, "type": "2hzfLDci"}' \
    > test.out 2>&1
eval_tap $? 38 'CreateGameSession' test.out

#- 39 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"ySnm9Cz1": {}, "RvJVkZTy": {}, "V0TnoVdK": {}}' \
    > test.out 2>&1
eval_tap $? 39 'PublicQueryGameSessionsByAttributes' test.out

#- 40 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "MP4VKzUf"}' \
    > test.out 2>&1
eval_tap $? 40 'PublicSessionJoinCode' test.out

#- 41 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName '11lBfYDl' \
    > test.out 2>&1
eval_tap $? 41 'GetGameSessionByPodName' test.out

#- 42 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'NsqWyMte' \
    > test.out 2>&1
eval_tap $? 42 'GetGameSession' test.out

#- 43 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '2zjk1nKu' \
    --body '{"attributes": {"VvErZvyD": {}, "ROoV3zbm": {}, "8UEgh15J": {}}, "backfillTicketID": "z1hN98qW", "clientVersion": "kBFBJvgk", "deployment": "QTnVwLGU", "fallbackClaimKeys": ["Ibw86xQK", "WgSWzk5l", "HUA6hEnh"], "inactiveTimeout": 98, "inviteTimeout": 82, "joinability": "xePcrrRJ", "matchPool": "UwToPQyE", "maxPlayers": 83, "minPlayers": 32, "preferredClaimKeys": ["NstVhZC9", "zVX0RLfN", "hzB25Qht"], "requestedRegions": ["fkRUjYJb", "iPfxBEVb", "QNOKFEWL"], "teams": [{"UserIDs": ["lHaqLDDq", "H5y86Xu6", "NdlCMQ65"], "parties": [{"partyID": "uRkDO0Dd", "userIDs": ["YCYF1Env", "GSXbpOxu", "00fZOf53"]}, {"partyID": "MQqZeav3", "userIDs": ["eVxMfhu0", "dED7QEqi", "A4nN3Jhw"]}, {"partyID": "vvi2hjir", "userIDs": ["6j7TvSpL", "d9lquDDq", "TR7tSKKA"]}]}, {"UserIDs": ["dF3IctoJ", "nltTdNmc", "3BMmiNsW"], "parties": [{"partyID": "Roie1aqC", "userIDs": ["0uRoVEHe", "UUPbAp2s", "C3VUVWXO"]}, {"partyID": "tDxLuIof", "userIDs": ["UfcHYwFq", "Ju90uNDv", "OsEldThE"]}, {"partyID": "l0HkMHvg", "userIDs": ["UEZ1RB2G", "DmoMxVa6", "tb918SCi"]}]}, {"UserIDs": ["JsugQk8k", "WIPu310d", "U91MJ7B0"], "parties": [{"partyID": "PT4N0LlI", "userIDs": ["da88LMQi", "3IUtbuZC", "9P0NqgwU"]}, {"partyID": "eTwBVBTj", "userIDs": ["p1FPWwpu", "42s42Ojr", "HO44tZDu"]}, {"partyID": "Oh5y8v0s", "userIDs": ["wI9jlAst", "8TABeacj", "eiLjCG2B"]}]}], "ticketIDs": ["eC4urLxk", "gnQinkxA", "4Gsyc056"], "tieTeamsSessionLifetime": true, "type": "GaeJAvH8", "version": 52}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateGameSession' test.out

#- 44 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'G2CCkign' \
    > test.out 2>&1
eval_tap $? 44 'DeleteGameSession' test.out

#- 45 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'xJZWCFDX' \
    --body '{"attributes": {"G4IpoPPy": {}, "OVvU05a4": {}, "soHuP0g4": {}}, "backfillTicketID": "XWO0i2od", "clientVersion": "uTmWlAPk", "deployment": "bUwVl7Ax", "fallbackClaimKeys": ["zudg0K60", "yVNGH7sP", "LCziqwCO"], "inactiveTimeout": 4, "inviteTimeout": 79, "joinability": "d5ypzyXE", "matchPool": "mLAAPC34", "maxPlayers": 79, "minPlayers": 85, "preferredClaimKeys": ["Y9HTAjk9", "iCjA2N8S", "FP9lGPIx"], "requestedRegions": ["D37E56Qv", "jbU4n7N7", "HW6RBZp6"], "teams": [{"UserIDs": ["EU4Lz2Dr", "mVmc4HVs", "ICn7b61c"], "parties": [{"partyID": "jFkmDmEn", "userIDs": ["b40pFGZX", "qIJbPSCd", "dGzhyuh5"]}, {"partyID": "Qpe29Lvm", "userIDs": ["P61Cj04S", "EfeDjwIT", "PcSoToom"]}, {"partyID": "JugZjo4h", "userIDs": ["1Rh3hSVS", "mOAopLNY", "IRNLLt7X"]}]}, {"UserIDs": ["3GzezcWX", "ektSV5E9", "3ErP6uBr"], "parties": [{"partyID": "Tg3eJUby", "userIDs": ["DYvFfXiF", "zW8cxuna", "UcGw09u4"]}, {"partyID": "6wYQcakp", "userIDs": ["2NwfAbrh", "SOEa5vf5", "ebO46oDD"]}, {"partyID": "fRkZXJ5q", "userIDs": ["vFNtBUtQ", "Pa9AaS7u", "aWOELreX"]}]}, {"UserIDs": ["Rta6JvuJ", "AtUoBdG9", "wUAmQ63R"], "parties": [{"partyID": "df7IYA9l", "userIDs": ["bosMz1uF", "nIj67TOu", "5ZlFtU9F"]}, {"partyID": "OsUmZXJz", "userIDs": ["lIueYOe8", "6hK8Pfd1", "LhOlkNVN"]}, {"partyID": "Gt32LPc3", "userIDs": ["ZiUtThFT", "haPFs9oE", "8cnps2xt"]}]}], "ticketIDs": ["2oKXkRCm", "NY9EOJ2G", "DbH6c4BI"], "tieTeamsSessionLifetime": true, "type": "jZHJSnhx", "version": 69}' \
    > test.out 2>&1
eval_tap $? 45 'PatchUpdateGameSession' test.out

#- 46 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'nyr9tb13' \
    --body '{"backfillTicketID": "dk0xCStq"}' \
    > test.out 2>&1
eval_tap $? 46 'UpdateGameSessionBackfillTicketID' test.out

#- 47 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'jfA2ezv6' \
    > test.out 2>&1
eval_tap $? 47 'GameSessionGenerateCode' test.out

#- 48 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'T5D2Fgke' \
    > test.out 2>&1
eval_tap $? 48 'PublicRevokeGameSessionCode' test.out

#- 49 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId '9Bm4JwrP' \
    --body '{"platformID": "ziOkI8bD", "userID": "MzpboHyW"}' \
    > test.out 2>&1
eval_tap $? 49 'PublicGameSessionInvite' test.out

#- 50 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'D3x5PVQX' \
    > test.out 2>&1
eval_tap $? 50 'JoinGameSession' test.out

#- 51 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'qrq6BDYd' \
    --body '{"leaderID": "D2PbkewF"}' \
    > test.out 2>&1
eval_tap $? 51 'PublicPromoteGameSessionLeader' test.out

#- 52 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '4NIBEutg' \
    > test.out 2>&1
eval_tap $? 52 'LeaveGameSession' test.out

#- 53 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'wWm0476b' \
    > test.out 2>&1
eval_tap $? 53 'PublicGameSessionReject' test.out

#- 54 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId 'gCQtVKCi' \
    > test.out 2>&1
eval_tap $? 54 'GetSessionServerSecret' test.out

#- 55 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '5IXfF3Ys' \
    --body '{"additionalMembers": [{"partyID": "cMM0xn8Z", "userIDs": ["JR9yay5G", "x3PB8oxa", "d79m8qYc"]}, {"partyID": "7NQGucMA", "userIDs": ["G5A5mbyU", "DOGUl87D", "gYah7RMF"]}, {"partyID": "2i5ZaJYS", "userIDs": ["XgQr1b0J", "lathiduz", "EfkaP8EC"]}], "proposedTeams": [{"UserIDs": ["iPkBhB05", "q1XL1TcB", "gCrAqzVa"], "parties": [{"partyID": "giFtnLhs", "userIDs": ["OxMl3Bmi", "H9N32xLq", "7u0oVvIa"]}, {"partyID": "pwgGaofe", "userIDs": ["iFgzLWWO", "jMtOiD3B", "3lKRZYXm"]}, {"partyID": "dWvex2gB", "userIDs": ["iqyIuljY", "H8cdHmAb", "4mIdJuc4"]}]}, {"UserIDs": ["nAvGMfIk", "WODxHOtH", "08gh3XkK"], "parties": [{"partyID": "DhPXxHmZ", "userIDs": ["RqRsiZU4", "jVG1Nwyp", "c0mqkHXQ"]}, {"partyID": "frLZbRqv", "userIDs": ["8DYz4u55", "Uz5tT517", "NBQ4jNzb"]}, {"partyID": "82UYclll", "userIDs": ["rnIQlQR4", "G7PuOJWZ", "PHZmVJOR"]}]}, {"UserIDs": ["PqCIkSCq", "yORBA86a", "7UWHlUqC"], "parties": [{"partyID": "LYu8SFnp", "userIDs": ["moixdMNf", "ouKNRDlZ", "7lUOLZxT"]}, {"partyID": "SV2lwcAR", "userIDs": ["PZkM5Mio", "6ODoPgzq", "KXEsz2n2"]}, {"partyID": "ixTNNA9d", "userIDs": ["6pR8VM5V", "UK9qaEMG", "Qltn2hDd"]}]}], "version": 25}' \
    > test.out 2>&1
eval_tap $? 55 'AppendTeamGameSession' test.out

#- 56 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "MF0Pmma0"}' \
    > test.out 2>&1
eval_tap $? 56 'PublicPartyJoinCode' test.out

#- 57 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'CYI2spfs' \
    > test.out 2>&1
eval_tap $? 57 'PublicGetParty' test.out

#- 58 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'k0blbpzF' \
    --body '{"attributes": {"QuryIMBB": {}, "4uuj3wpn": {}, "gl4M79W6": {}}, "inactiveTimeout": 1, "inviteTimeout": 47, "joinability": "3gyUdkKa", "maxPlayers": 87, "minPlayers": 47, "type": "XchkacsH", "version": 97}' \
    > test.out 2>&1
eval_tap $? 58 'PublicUpdateParty' test.out

#- 59 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'MD8YGtll' \
    --body '{"attributes": {"MzHNhwOk": {}, "m6eLqNsI": {}, "UHPVWjFv": {}}, "inactiveTimeout": 78, "inviteTimeout": 21, "joinability": "bidkhAmV", "maxPlayers": 43, "minPlayers": 43, "type": "MepMLBTv", "version": 92}' \
    > test.out 2>&1
eval_tap $? 59 'PublicPatchUpdateParty' test.out

#- 60 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'yMcQHbVW' \
    > test.out 2>&1
eval_tap $? 60 'PublicGeneratePartyCode' test.out

#- 61 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'Bbvacsnz' \
    > test.out 2>&1
eval_tap $? 61 'PublicRevokePartyCode' test.out

#- 62 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'k0phdMqi' \
    --body '{"platformID": "rXliWGlk", "userID": "qYscBNus"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicPartyInvite' test.out

#- 63 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'M8ux1m8N' \
    --body '{"leaderID": "vuSAE2QT"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicPromotePartyLeader' test.out

#- 64 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'RMx4csod' \
    > test.out 2>&1
eval_tap $? 64 'PublicPartyJoin' test.out

#- 65 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'aN55Kbt8' \
    > test.out 2>&1
eval_tap $? 65 'PublicPartyLeave' test.out

#- 66 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'MpaSEzTp' \
    > test.out 2>&1
eval_tap $? 66 'PublicPartyReject' test.out

#- 67 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'W9MiPCRQ' \
    --userId 'p9Srhr8I' \
    > test.out 2>&1
eval_tap $? 67 'PublicPartyKick' test.out

#- 68 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"eKeZsRLe": {}, "MOlTIQuQ": {}, "zgbHvIqT": {}}, "configurationName": "vnjCboUH", "inactiveTimeout": 22, "inviteTimeout": 36, "joinability": "3IzPTkDy", "maxPlayers": 68, "members": [{"ID": "9mNXAtAr", "PlatformID": "j9STeTqE", "PlatformUserID": "L835IClA"}, {"ID": "VUeZrihD", "PlatformID": "AYA8jg12", "PlatformUserID": "4bKyxSuA"}, {"ID": "A98ym2Xq", "PlatformID": "piHCu3oJ", "PlatformUserID": "cGWBrStR"}], "minPlayers": 27, "textChat": true, "type": "U1BWSHXN"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicCreateParty' test.out

#- 69 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --userId 'qpTtZW3Q' \
    > test.out 2>&1
eval_tap $? 69 'PublicGetRecentPlayer' test.out

#- 70 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'd5jdADfh' \
    --body '{"yf7EV7v3": {}, "vy0Fgc0T": {}, "0Il4CWrl": {}}' \
    > test.out 2>&1
eval_tap $? 70 'PublicUpdateInsertSessionStorageLeader' test.out

#- 71 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'lJYp3mw7' \
    --userId 'vSP7y60U' \
    --body '{"Hk59onqw": {}, "qIgkaixa": {}, "5QWJ9VAF": {}}' \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdateInsertSessionStorage' test.out

#- 72 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["6aVe6ydi", "yvwXvJaz", "HDLjBE0A"]}' \
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
    --body '{"crossplayEnabled": true, "currentPlatform": "8JhrGtm6", "data": {"u6FVZ8Q3": {}, "E4WPZC2Y": {}, "AR4ILUwJ": {}}, "platforms": [{"name": "C8wbsbil", "userID": "hZZDeTev"}, {"name": "rhWCE7Sc", "userID": "73XnEb5M"}, {"name": "F14jKZ6R", "userID": "iyhuGK6L"}], "roles": ["pJNrQU4E", "vUleMZ2V", "hIPUSewX"]}' \
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
    --order 'HJFgI98z' \
    --orderBy 'QkSD3Bys' \
    --status '0Xz7TB9U' \
    > test.out 2>&1
eval_tap $? 76 'PublicQueryMyGameSessions' test.out

#- 77 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'tObelwUZ' \
    --orderBy 'oC0gQAM1' \
    --status 'yEJ3Ns9f' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE