#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Code generated. DO NOT EDIT.

# Meta:
# - random seed: 256
# - template file: cli_test.j2

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
echo "1..43"

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

#- 4 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"clientVersion": "V9Hx0oyH", "deployment": "JguBMwm7", "inactiveTimeout": 49, "inviteTimeout": 80, "joinability": "YAYW7rFb", "maxPlayers": 74, "minPlayers": 97, "name": "vjs3IW3H", "persistent": false, "persistentTTL": 97, "requestedRegions": ["q0JQwpZz", "yFUqb4Nu", "9EFumEdb"], "textChat": true, "type": "3mlYXfAd"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateConfigurationTemplateV1' test.out

#- 5 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetAllConfigurationTemplatesV1' test.out

#- 6 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'YkWd3yxX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetConfigurationTemplateV1' test.out

#- 7 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'I1IDi7ZG' \
    --namespace $AB_NAMESPACE \
    --body '{"clientVersion": "1IVdZH4U", "deployment": "JluYHGqN", "inactiveTimeout": 32, "inviteTimeout": 25, "joinability": "jM9DYonk", "maxPlayers": 99, "minPlayers": 42, "name": "6WPPMmRh", "requestedRegions": ["6S3yaJCm", "SMhpXDY9", "jDLo5LF4"], "textChat": false, "type": "RDo8xyog"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateConfigurationTemplateV1' test.out

#- 8 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'JSgU8vsi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteConfigurationTemplateV1' test.out

#- 9 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName 'pzkOIHQn' \
    --dsPodName 'w2fAl6gw' \
    --fromTime 'YjfhK7Pb' \
    --gameMode 'U5YZFaBY' \
    --isSoftDeleted 'h3ZMkAgZ' \
    --joinability 'acsvzSex' \
    --limit '45' \
    --matchPool 'vtIrovBj' \
    --memberID 'Knkj2Z4h' \
    --offset '57' \
    --order 'GmHOhMvS' \
    --orderBy '4zFhTe1d' \
    --sessionID 'gcHODpkd' \
    --status '1OOGikX2' \
    --statusV2 'ISooqgyl' \
    --toTime 'QZJ7acpV' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryGameSessions' test.out

#- 10 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'q5mWW5rw' \
    --namespace $AB_NAMESPACE \
    --sessionId 'ATzzHHrJ' \
    --statusType '7HXvIfiv' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateGameSessionMember' test.out

#- 11 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --joinability 'nacHsupH' \
    --key '2CnD1Nyw' \
    --leaderID 'Dp3HUnjI' \
    --limit '93' \
    --memberID 'vXODk7k3' \
    --memberStatus 'JYXZPeB3' \
    --offset '80' \
    --order 'chiKVg1v' \
    --orderBy 'Cyn9N4xO' \
    --value 'FTtcvaVM' \
    > test.out 2>&1
eval_tap $? 11 'AdminQueryParties' test.out

#- 12 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'IjpStOfK' \
    > test.out 2>&1
eval_tap $? 12 'AdminQueryPlayerAttributes' test.out

#- 13 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'vzuDkFde' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetPlayerAttributes' test.out

#- 14 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"3Sk1oaxP": {}, "Xaphxgpk": {}, "t9m7bnVw": {}}, "backfillTicketID": "9O1Ucvna", "clientVersion": "eMeXFlg0", "configurationName": "RkGO5pY2", "deployment": "bvwULNda", "inactiveTimeout": 51, "inviteTimeout": 53, "joinability": "VDBoxP7K", "matchPool": "oTn1ALYs", "maxPlayers": 85, "minPlayers": 16, "persistent": true, "persistentTTL": 23, "requestedRegions": ["pF5i1R4E", "GCalC4ox", "D5F7TO2z"], "serverName": "Ip4pSI3s", "teams": [{"UserIDs": ["OE4pnWGk", "x1kXzyp8", "ioD5oUKe"], "parties": [{"partyID": "4eJst7AN", "userIDs": ["JYmHuHuq", "XAVCE543", "bNq9E8ds"]}, {"partyID": "V2Ph0Z3E", "userIDs": ["apJ4ctjw", "l7QhfRiX", "14i4cEEU"]}, {"partyID": "xX1D6d0V", "userIDs": ["0KQeqopb", "BZip9j4i", "UskyeFFj"]}]}, {"UserIDs": ["dGhuQcQB", "XsZhi4kM", "FTbDMKeW"], "parties": [{"partyID": "8kuLBCBU", "userIDs": ["jhXkj5b8", "QzwTZNID", "9jqGuBjt"]}, {"partyID": "utAp48wI", "userIDs": ["mqSUKPez", "IJMPptqx", "TVuo9alM"]}, {"partyID": "N8xNKBOE", "userIDs": ["R41bGmxl", "BqWdHwVL", "N8Iw9EJO"]}]}, {"UserIDs": ["pNWx1ysN", "EQVi6DaW", "Kru70z9Z"], "parties": [{"partyID": "BGUK2DYG", "userIDs": ["g4See15q", "RD3sBFT6", "jDZy65in"]}, {"partyID": "D0xhzVku", "userIDs": ["zE2CfBgh", "oixbTaVk", "twFFwcPl"]}, {"partyID": "AqxmGkUJ", "userIDs": ["caf3D3cw", "vOywV4qG", "07d0Pi0T"]}]}], "textChat": true, "ticketIDs": ["vstZuu8T", "ixTADtXt", "DfcMi47Z"], "type": "WDvHN7cL"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateGameSession' test.out

#- 15 PublicQueryGameSessions
samples/cli/sample-apps Session publicQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"PzxDx8F8": {}, "tb0TX2VM": {}, "mcOyqxoh": {}}' \
    > test.out 2>&1
eval_tap $? 15 'PublicQueryGameSessions' test.out

#- 16 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'fSs4DUhb' \
    > test.out 2>&1
eval_tap $? 16 'GetGameSessionByPodName' test.out

#- 17 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'DrQlX7Vp' \
    > test.out 2>&1
eval_tap $? 17 'GetGameSession' test.out

#- 18 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'zvwUpuxQ' \
    --body '{"attributes": {"QsBUXMAi": {}, "GRQ84jOc": {}, "XWRrlZdW": {}}, "backfillTicketID": "ZfV7hhaE", "clientVersion": "Ze5ktSkW", "deployment": "NtDTiGbU", "inactiveTimeout": 49, "inviteTimeout": 38, "joinability": "d2nYHt7Y", "matchPool": "hE9tdLmA", "maxPlayers": 22, "minPlayers": 67, "requestedRegions": ["WBONy7Nr", "ciqruE6p", "bCmRvivp"], "teams": [{"UserIDs": ["P0hriJkc", "nKZkvr7e", "CRv4aZxR"], "parties": [{"partyID": "c4qv0ghi", "userIDs": ["BkVHw9ML", "Nz88yQdF", "qHW5GnAa"]}, {"partyID": "GsKcSLHO", "userIDs": ["Xl2yjoj5", "vZIeJ49a", "Vv9mVXnN"]}, {"partyID": "rtuJTtyX", "userIDs": ["jr5uEgED", "KHIQsDub", "lVw9q1SE"]}]}, {"UserIDs": ["Ri9PmW3l", "Pt9so4WP", "P0xrkxzb"], "parties": [{"partyID": "nkWdbyTW", "userIDs": ["7qCLvXrQ", "St6h64W6", "ypLDgosY"]}, {"partyID": "mt6Xwq8f", "userIDs": ["mtHzQRgG", "N0iApSwj", "BCan7prY"]}, {"partyID": "cLfvuZ5q", "userIDs": ["XdsyhVdk", "dml2c2Ag", "gc9MaQZd"]}]}, {"UserIDs": ["JQDPvwfA", "j2VvxApq", "t1cm3Rmp"], "parties": [{"partyID": "Wl111U4h", "userIDs": ["xiUaYru0", "uRI8vnW0", "6NWI8pyp"]}, {"partyID": "JvvOQP7J", "userIDs": ["MGo6rgol", "QzKawePs", "kq8ytKRY"]}, {"partyID": "ozaSAcAA", "userIDs": ["X7SKo1XR", "XfurREpp", "v0SKzQCB"]}]}], "ticketIDs": ["vsP9kcwy", "YW1GE40U", "NF4mwdB2"], "type": "sbGDl744", "version": 92}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateGameSession' test.out

#- 19 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '5PuiwgPd' \
    > test.out 2>&1
eval_tap $? 19 'DeleteGameSession' test.out

#- 20 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'gKzZbWSZ' \
    --body '{"attributes": {"8cONG4qa": {}, "1jwOz7sz": {}, "0IVdJruV": {}}, "backfillTicketID": "aDl8zzue", "clientVersion": "SNAB5vZp", "deployment": "p6AWCQqA", "inactiveTimeout": 45, "inviteTimeout": 70, "joinability": "gJQ6p6Jt", "matchPool": "hq1fJKYz", "maxPlayers": 37, "minPlayers": 65, "requestedRegions": ["oj2H1PB1", "LkicWZjE", "JhbkLwfO"], "teams": [{"UserIDs": ["tJvROx5N", "hRCdOL6f", "ZoOdO4lY"], "parties": [{"partyID": "4tYBRMmF", "userIDs": ["PCtjLoFo", "UnUrdlVR", "FPrave5R"]}, {"partyID": "3W4tcReN", "userIDs": ["LgBh4dpY", "dcnZu0kF", "0BiAHJuy"]}, {"partyID": "BAsPh3Tr", "userIDs": ["UV2FtW1F", "8Y6A8PGr", "uRWfnKEJ"]}]}, {"UserIDs": ["NqL3O65r", "z7HoEXux", "PrJ5JZov"], "parties": [{"partyID": "nU1TqTYh", "userIDs": ["eM8GMuG0", "6d0JtrAr", "LbHBhs5k"]}, {"partyID": "zs39y7xX", "userIDs": ["FHkOq26m", "maBP5zvj", "dHzrGxUR"]}, {"partyID": "4W0yqENa", "userIDs": ["LnP46zqx", "ogpGdwBT", "OZJ0J425"]}]}, {"UserIDs": ["TJGc8dZ4", "xfLjskm1", "qOJJdS5C"], "parties": [{"partyID": "UILup9kV", "userIDs": ["p1JDMRQw", "xEhSZNxO", "AIZ3fBkv"]}, {"partyID": "0UE2GtE3", "userIDs": ["4mHmBNFi", "HqZlekab", "uRCis1q2"]}, {"partyID": "K9RB3tFx", "userIDs": ["2RkzACQx", "4pHrshy1", "T6aEdyS2"]}]}], "ticketIDs": ["bvzLlwSq", "5h8md0EP", "GKD6668P"], "type": "ZcHMHEHa", "version": 73}' \
    > test.out 2>&1
eval_tap $? 20 'PatchUpdateGameSession' test.out

#- 21 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'etL2nbK4' \
    --body '{"backfillTicketID": "LAvui2pl"}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateGameSessionBackfillTicketID' test.out

#- 22 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'CadJwbXC' \
    --body '{"userID": "fPk5MhA3"}' \
    > test.out 2>&1
eval_tap $? 22 'PublicGameSessionInvite' test.out

#- 23 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'b43X6GLT' \
    > test.out 2>&1
eval_tap $? 23 'JoinGameSession' test.out

#- 24 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'VZm8E4LG' \
    > test.out 2>&1
eval_tap $? 24 'LeaveGameSession' test.out

#- 25 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'jZhpttqe' \
    > test.out 2>&1
eval_tap $? 25 'PublicGameSessionReject' test.out

#- 26 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "865PnVCD"}' \
    > test.out 2>&1
eval_tap $? 26 'PublicPartyJoinCode' test.out

#- 27 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId '4uSeVqiJ' \
    > test.out 2>&1
eval_tap $? 27 'PublicGetParty' test.out

#- 28 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'UaYsLWXm' \
    --body '{"attributes": {"1pNHkGth": {}, "aM6XlS8H": {}, "S2hupAo6": {}}, "inactiveTimeout": 100, "inviteTimeout": 51, "joinability": "9G2tS3bm", "maxPlayers": 50, "minPlayers": 87, "type": "4gMxtmOd", "version": 33}' \
    > test.out 2>&1
eval_tap $? 28 'PublicUpdateParty' test.out

#- 29 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId '2XCAY5L0' \
    --body '{"attributes": {"jqhuZX8m": {}, "BaS1fdLN": {}, "dSnac3L0": {}}, "inactiveTimeout": 25, "inviteTimeout": 80, "joinability": "hIXm6mP1", "maxPlayers": 89, "minPlayers": 43, "type": "mezRr9zn", "version": 2}' \
    > test.out 2>&1
eval_tap $? 29 'PublicPatchUpdateParty' test.out

#- 30 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'ETNlaLTL' \
    > test.out 2>&1
eval_tap $? 30 'PublicGeneratePartyCode' test.out

#- 31 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'H7l6RlGm' \
    > test.out 2>&1
eval_tap $? 31 'PublicRevokePartyCode' test.out

#- 32 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId '94lce2rx' \
    --body '{"userID": "iR02EU6R"}' \
    > test.out 2>&1
eval_tap $? 32 'PublicPartyInvite' test.out

#- 33 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'CxKB9dxD' \
    --body '{"leaderID": "znKmMNJy"}' \
    > test.out 2>&1
eval_tap $? 33 'PublicPromotePartyLeader' test.out

#- 34 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId '7UT4j8ac' \
    > test.out 2>&1
eval_tap $? 34 'PublicPartyJoin' test.out

#- 35 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'mggSi83u' \
    > test.out 2>&1
eval_tap $? 35 'PublicPartyLeave' test.out

#- 36 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'snNp5tGX' \
    > test.out 2>&1
eval_tap $? 36 'PublicPartyReject' test.out

#- 37 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId '5olwaQcX' \
    --userId 'EMEUllEE' \
    > test.out 2>&1
eval_tap $? 37 'PublicPartyKick' test.out

#- 38 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"gk92j3Ze": {}, "CWvvLOAq": {}, "pa47V9MH": {}}, "configurationName": "rjqHo1X2", "inactiveTimeout": 65, "inviteTimeout": 26, "joinability": "aQYWwsEp", "maxPlayers": 81, "members": [{"ID": "OwqiRft7", "PlatformID": "HTPOsFBw", "PlatformUserID": "trYF9igI"}, {"ID": "68kIlNlz", "PlatformID": "8SqUve2o", "PlatformUserID": "969cY937"}, {"ID": "66tiD8Gn", "PlatformID": "5cLJOuG0", "PlatformUserID": "lsPnwR9Z"}], "minPlayers": 85, "textChat": true, "type": "f3HcRZD0"}' \
    > test.out 2>&1
eval_tap $? 38 'PublicCreateParty' test.out

#- 39 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 39 'PublicGetPlayerAttributes' test.out

#- 40 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": true, "data": {"8l9QVlPH": {}, "8fbwAXNs": {}, "UwWywfMT": {}}, "platforms": [{"name": "aGF4gJl9", "userID": "RR5nAQBu"}, {"name": "CHugrm8J", "userID": "ZyExEAdv"}, {"name": "LsSWOsHp", "userID": "UoB1MwrW"}]}' \
    > test.out 2>&1
eval_tap $? 40 'PublicStorePlayerAttributes' test.out

#- 41 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'PublicDeletePlayerAttributes' test.out

#- 42 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order '2njWUaQn' \
    --orderBy '8NreFMkT' \
    --status 'd09ywcDK' \
    > test.out 2>&1
eval_tap $? 42 'PublicQueryMyGameSessions' test.out

#- 43 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'E7fEnJju' \
    --orderBy 'Gmv804jp' \
    --status 'EJDYc0Ot' \
    > test.out 2>&1
eval_tap $? 43 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE