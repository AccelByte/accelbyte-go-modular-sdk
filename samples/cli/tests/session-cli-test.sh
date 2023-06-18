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
echo "1..56"

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

#- 5 AdminGetConfigurationAlertV1
samples/cli/sample-apps Session adminGetConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetConfigurationAlertV1' test.out

#- 6 AdminUpdateConfigurationAlertV1
samples/cli/sample-apps Session adminUpdateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 40}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateConfigurationAlertV1' test.out

#- 7 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 22}' \
    > test.out 2>&1
eval_tap $? 7 'AdminCreateConfigurationAlertV1' test.out

#- 8 AdminDeleteConfigurationAlertV1
samples/cli/sample-apps Session adminDeleteConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteConfigurationAlertV1' test.out

#- 9 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 45, "PSNSupportedPlatforms": ["rhNdB10Qll7tpJJr", "E3j6wjOvb6u1ZDqe", "kJiFVIKHXQeJMrSS"], "SessionTitle": "Jcw8nOFGXxDLCcVM", "ShouldSync": false, "XboxServiceConfigID": "dIEGUcOvt8lp7t17", "XboxSessionTemplateName": "fSGqFlcY2wv3sI3n"}, "clientVersion": "2n8z7aQdQfiPhzI3", "deployment": "UHLgcXHWvqwY68w5", "dsSource": "y7doI61BUr2n3zBh", "fallbackClaimKeys": ["mc56wonUj8STIbtp", "7CWBFbeGvI5GgF92", "xbePMjGaYi5GD7El"], "inactiveTimeout": 83, "inviteTimeout": 99, "joinability": "z6kgahNRCoyQ5pIu", "maxActiveSessions": 19, "maxPlayers": 89, "minPlayers": 29, "name": "NHVntU1LAo6Ayv8H", "persistent": false, "preferredClaimKeys": ["oOTkTbk2M9Z4JBhE", "5Wocop8vI5SPaHHB", "bUoz2m27wFbGPb6d"], "requestedRegions": ["LWiwg0ZzQyBmZJQs", "P2EHATosmi45yXO3", "XvcUf728sXyCdDXZ"], "textChat": false, "type": "6IxtImUgaUnQgNVP"}' \
    > test.out 2>&1
eval_tap $? 9 'AdminCreateConfigurationTemplateV1' test.out

#- 10 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 10 'AdminGetAllConfigurationTemplatesV1' test.out

#- 11 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name '6uAIJHHgSSe7Q5K6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetConfigurationTemplateV1' test.out

#- 12 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'ljea72ETQ1lAJONx' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 82, "PSNSupportedPlatforms": ["PKabaH6yHOPzdmPB", "vQV5hqyXFJoq8wOB", "kjavUC2GqqodIqzJ"], "SessionTitle": "uJruH6QDJXnOBj2q", "ShouldSync": false, "XboxServiceConfigID": "i3EHbePdNO5HOLC3", "XboxSessionTemplateName": "f9QG4R1Q5imh2Nlr"}, "clientVersion": "egGva9Y36Wr07ev6", "deployment": "qUtQhs90ufCE0DHm", "dsSource": "e5EcARTJuzDDZROh", "fallbackClaimKeys": ["UyuD8mwEFbOnOyCv", "xrRgh6s1wKxqdxXV", "zEaFQCRGu3acddXw"], "inactiveTimeout": 71, "inviteTimeout": 32, "joinability": "3CFd54nB4yh8Kc4F", "maxActiveSessions": 49, "maxPlayers": 29, "minPlayers": 57, "name": "hi93I4y026LOE7pf", "persistent": false, "preferredClaimKeys": ["QqeeJs3VsNjHdUTW", "BOYE1oxlira1LApE", "bUarhTDNYZoduY9y"], "requestedRegions": ["PyZzB4LDMYpOjhwB", "n8vLiuIiQ4IO82BP", "RjJfNHap6SufKEJC"], "textChat": false, "type": "7ySunJzQjkVoht73"}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationTemplateV1' test.out

#- 13 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'tUUAvh5qSNNmKAp3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteConfigurationTemplateV1' test.out

#- 14 AdminGetDSMCConfiguration
samples/cli/sample-apps Session adminGetDSMCConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminGetDSMCConfiguration' test.out

#- 15 AdminSyncDSMCConfiguration
samples/cli/sample-apps Session adminSyncDSMCConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'AdminSyncDSMCConfiguration' test.out

#- 16 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName 'WSFKdwb8e2ozOwNc' \
    --dsPodName '82YEOldptxGgku0y' \
    --fromTime 'pmFAB0w1MPLNLgdz' \
    --gameMode 'aaVMFQHmC1urnjiU' \
    --isPersistent 'WGDgTYzGzo6S8DtY' \
    --isSoftDeleted 'Di0M7nZ55SMvko6s' \
    --joinability 'pFfRPVWn9vf8TolM' \
    --limit '5' \
    --matchPool 'txAQGdGMWYmoWLES' \
    --memberID 'tVXpNXWanIOe7cSp' \
    --offset '86' \
    --order '1dGHHE4S9G0KtGYy' \
    --orderBy 'qyjTGYikUNN1iQNr' \
    --sessionID 'axqxcUesbeJyZa92' \
    --status 'WLRkcxkhgBv6u69r' \
    --statusV2 'QSozil2MRijwhEPE' \
    --toTime 'ODV1h6hd58yhqss2' \
    > test.out 2>&1
eval_tap $? 16 'AdminQueryGameSessions' test.out

#- 17 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["E24tKNu5FV40W5sT", "9gQBiyV3ChOQvHWG", "YgauMklCa0WrIwVa"]}' \
    > test.out 2>&1
eval_tap $? 17 'AdminDeleteBulkGameSessions' test.out

#- 18 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'YPTGkmmkqC1kzdaD' \
    --namespace $AB_NAMESPACE \
    --sessionId 'TBxk0nmBx7XjT9WZ' \
    --statusType 'e6jtwlzaGzzlY4nn' \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateGameSessionMember' test.out

#- 19 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --joinability 'HH7pjin0cDFvVNVh' \
    --key 'A7Sg9lV6CahsBXiF' \
    --leaderID 'U98F1s8jMv1Htvnq' \
    --limit '72' \
    --memberID 'kRFEqXmIqz7Lilmw' \
    --memberStatus '2gXLkOdlkgTL3S1S' \
    --offset '91' \
    --order 'FBIzBKcv7itEbtuZ' \
    --orderBy '0lDmrLTKAnDlciv5' \
    --partyID 'ZybbrhVadLiJ85E0' \
    --value 'uy5EQBCo5IfzXp80' \
    > test.out 2>&1
eval_tap $? 19 'AdminQueryParties' test.out

#- 20 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users '7HQ6itTkBA75HGul' \
    > test.out 2>&1
eval_tap $? 20 'AdminQueryPlayerAttributes' test.out

#- 21 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'KJC4gaGuI7XETCwk' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetPlayerAttributes' test.out

#- 22 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"ialTX3EOnbF1F7eO": {}, "ZhjpsNtnNI3d9J5Z": {}, "M6SfLAU9O8ARWmtm": {}}, "backfillTicketID": "57GN2iqvCmMG8EAm", "clientVersion": "OzaWYty3aVWmKJzc", "configurationName": "Be81wC8KsoKzGvqA", "deployment": "ULPbioMwrcUQk40v", "dsSource": "qMNoFORWawofvdeJ", "fallbackClaimKeys": ["mQe8lwCqD9weJTZ6", "Kjb6NIM89mXyYcAr", "FPJxT8QKgCejQ23r"], "inactiveTimeout": 45, "inviteTimeout": 59, "joinability": "DtM8b5UXaHRF6KZj", "matchPool": "jgIb00MPcCcYKgJg", "maxPlayers": 62, "minPlayers": 92, "preferredClaimKeys": ["rBcPnZeQKcvwMSCT", "A74GcyxoCNLMJiO0", "2dGdVDRUYNx9MrBD"], "requestedRegions": ["3EMmtsOr1dmH4Ptd", "97HOjdQiWMrfIMRc", "U2r7N5wIvQkXqREf"], "serverName": "E3rTOmC7iAHlLzMV", "teams": [{"UserIDs": ["dqblyIP3UU05Lpim", "jK0YxlczlXCsXhwS", "uuQJ88QI0mcthmVI"], "parties": [{"partyID": "fYeBJ0TgqwKm00vI", "userIDs": ["F1ptIOhe4HADGVCR", "qjgjiOKDmKu9vI7D", "QScNjaco6hWAXV5l"]}, {"partyID": "crvh9scK8vo6LU2c", "userIDs": ["NtfVHQjEd6CHjl8x", "dIbhJRRezIrQu7vm", "TSMSjbijtbInpVmd"]}, {"partyID": "jTzwv6HL6KKuf1hI", "userIDs": ["2d06MkoVEkHJf8J2", "tIHVHrtotzCYYUHe", "ed0m8bd3aIwaLvgr"]}]}, {"UserIDs": ["or8LJexZed5ScMz2", "cwc3xiVAtbMBYict", "QJcN3q5OgjQoDhpp"], "parties": [{"partyID": "xQoye9TP2CoH6tdt", "userIDs": ["f3FL92AHL2JQGqeR", "8JJYgtx5ZDtfTgcI", "rUFGFLKN7QMX3i8Z"]}, {"partyID": "Wu6gGSTUQALbb3sH", "userIDs": ["SAxITWfYGHa1cCRF", "qSbPDLZ6HJXjav9k", "IGt0bzJhsqWwUV50"]}, {"partyID": "m53UDyUxzpjVRGds", "userIDs": ["uXuh0NNA2KXExziQ", "AnFuwov3lLp4G9Cy", "z72LSuBrdHaYx88D"]}]}, {"UserIDs": ["M0BMkSTUi2jKFwqH", "9NJgqdOToGJprVyk", "UhgvuQPTRW1ft9lx"], "parties": [{"partyID": "vt97z3bqDd5UpuAa", "userIDs": ["NtrK18sgmVxMjPsg", "Hme0qKVYfV3l2ahP", "RXTIkFjOKT6ioXCI"]}, {"partyID": "xI0myBc3d369YPHu", "userIDs": ["oLiX7qv15ngwI2nx", "5zhnLOoo8eYyw53M", "MNveJpvAfJ414NJ0"]}, {"partyID": "ccWaVliF9tkA1D0V", "userIDs": ["xTmlb3ULZtJVZdXL", "6rVvzmYKuignQFxH", "vYtVET5883WJ9nKe"]}]}], "textChat": false, "ticketIDs": ["2Me3GVGgyhzalhEN", "HMwFewHQx0cpkllO", "3YPeAWOx1RlKcWws"], "type": "3zfawdvMI6EASAt9"}' \
    > test.out 2>&1
eval_tap $? 22 'CreateGameSession' test.out

#- 23 PublicQueryGameSessions
samples/cli/sample-apps Session publicQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"t04mDhRNMHvwz0lx": {}, "KI0xFv0khdIByeIx": {}, "xfGyY8MVV2pXVtsa": {}}' \
    > test.out 2>&1
eval_tap $? 23 'PublicQueryGameSessions' test.out

#- 24 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "P6ArM7qBhmbUPbTw"}' \
    > test.out 2>&1
eval_tap $? 24 'PublicSessionJoinCode' test.out

#- 25 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'HqSBOdVYOhFqQ2LJ' \
    > test.out 2>&1
eval_tap $? 25 'GetGameSessionByPodName' test.out

#- 26 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'NmD7z9sitWsC69Gu' \
    > test.out 2>&1
eval_tap $? 26 'GetGameSession' test.out

#- 27 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'I89qDQzrg8FlnurX' \
    --body '{"attributes": {"wbTwntZXkl7BJdkD": {}, "r7CvwF41XunwqH6Y": {}, "SjMDU4OxJ5duV5Wd": {}}, "backfillTicketID": "Rfp3jRyUPxW319KD", "clientVersion": "rhYnJN19klYeziYS", "deployment": "gRWvxPGBO3lodUX1", "fallbackClaimKeys": ["WuvWLDV9ogvFxsuz", "YFJAXHBENVGCn5wD", "Lop31OkjnBzZayxM"], "inactiveTimeout": 49, "inviteTimeout": 92, "joinability": "TbRY8BUPT8YT9Rq8", "matchPool": "P2Y3yTSMgGmFUOQK", "maxPlayers": 53, "minPlayers": 3, "preferredClaimKeys": ["v9LCMRQcDEU63OpB", "3i2fHJn5xM0OmHyl", "2p7YPm3YYMuEFO9C"], "requestedRegions": ["gOkrr1IygyRcPN7s", "6NSma4jvseYnWwgr", "D8HuKFtdw3DnNNS7"], "teams": [{"UserIDs": ["rPvuQOgmSRPxpOyI", "803zbW82Noh6ihDI", "tWMowp8VfTKSXFxB"], "parties": [{"partyID": "47lk0L1nMKjA2vvw", "userIDs": ["vESoiMC4ve3s9tOs", "rH5l9Nm4qKK7NDxW", "KBDtKJZQ1gW3OmJR"]}, {"partyID": "A8SzVx1U6dDil8Tc", "userIDs": ["46iRHRB5CabM9PfW", "jwpMJbaD9WQztKje", "jcsn7rqmYT5BwZj7"]}, {"partyID": "rhTBDTpSzFoVNpgb", "userIDs": ["HyKusqKQFeeepEnh", "LYLBgPCmrUcMziGV", "Mhztc6RkwwFnrJpa"]}]}, {"UserIDs": ["F5ZbpuEJAD2aCmhu", "52ARLXDsuClLuSH7", "nX9FEuEUQWk6ns4T"], "parties": [{"partyID": "oAxpqKhvYbiztm2W", "userIDs": ["CQUOz7cdHtdYD5BU", "2LuiI9tlNaZlrNuT", "8bUBFUgNTJhvy2ss"]}, {"partyID": "bIzxbIQ91kPLSjON", "userIDs": ["iDNQ9sW6Vp8W0t7q", "OvpIUk7yxGZKrxTc", "lPKVusNhfAT9je6G"]}, {"partyID": "TzrfLoTsRvQStchB", "userIDs": ["m5wYzIeHRnbNdQLj", "OBf7QMv8KaJ4ZmjH", "h9wDfb0ew7w6A3gM"]}]}, {"UserIDs": ["4vs8bb3BylIKsYUx", "4vIHjxgWmtRjTMrX", "PHsoCmclvZVvfU6g"], "parties": [{"partyID": "LAXp0UWIaMkZPB4a", "userIDs": ["2s4RNCBQae0aUVIV", "DENn5lz4kmI0Cq33", "PxnFDpSQoFHdGms3"]}, {"partyID": "0W0VBhWOxDoMuvt9", "userIDs": ["zAaYHJR6jYQl9cdF", "s4xYpjW9tfccA5nu", "iE3e0DUAzUVAQ4H8"]}, {"partyID": "bh9kcAuqO18ABhgg", "userIDs": ["8eCmkeMNnkWyarUM", "izXgmv3uz9c9fL9w", "n2jk38OplrLLmgfY"]}]}], "ticketIDs": ["PkQrB5VC5GBErZhn", "Ln2QnCne4hOjrWZL", "zcI7npNFMxxz1tXH"], "type": "1GllHkZZAEva5TW2", "version": 49}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateGameSession' test.out

#- 28 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'UvtuZexE2npfD5qW' \
    > test.out 2>&1
eval_tap $? 28 'DeleteGameSession' test.out

#- 29 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'csqYS8QrJn26SVEn' \
    --body '{"attributes": {"xYhe91jjUkacQlJq": {}, "lv6obhxyHDbfg5Aj": {}, "IdmUTCPnnN897bZM": {}}, "backfillTicketID": "4hsO4LGTJlZbSEm9", "clientVersion": "243Ntmwo8dl3pxmk", "deployment": "vvF9D1y3ZbSHzbgA", "fallbackClaimKeys": ["9tL2pdHt3do1kaap", "eJXZxuDyom1BXRVX", "JKBPpHzT17RT7yYL"], "inactiveTimeout": 34, "inviteTimeout": 35, "joinability": "ATzUkxGpHRmARAxu", "matchPool": "sU8meeKAJ2j0mgPj", "maxPlayers": 57, "minPlayers": 74, "preferredClaimKeys": ["9nNyN7F6xgGdM8ck", "5QHQXChhcS4by4Xn", "5TOnmhGR62McRe4Z"], "requestedRegions": ["HCtuINvU9RDvdcNU", "YpY9d6X8Co0PIsh7", "uqVlIjlzNRvyOUZI"], "teams": [{"UserIDs": ["w4yLJQx5Zg9pSdvj", "GXhrSe5KbZMm4mdb", "cWozthvnJQBPakxu"], "parties": [{"partyID": "NYtrKYx51uWY2foH", "userIDs": ["ROv4wIxkxDO7WidN", "YeAt5wCnb2IW8AWG", "BYoQZPP9Inc3Ronr"]}, {"partyID": "emoatV80oS6GJTNX", "userIDs": ["EMImYdClOBBRNw6H", "mFZ5tMVX8TgvgMh4", "mQU9EnK9gRgh3YYQ"]}, {"partyID": "XV4f2nLrexc3QvpL", "userIDs": ["Oa5mxJim30uoTphJ", "dPPnhm8xpGJLac8n", "wp7liXClCogQYsdJ"]}]}, {"UserIDs": ["bZr5vipdY1OEEZab", "twFdVkQOXZpo6SAq", "JvGNTkpiWX5jeTRG"], "parties": [{"partyID": "q3F3ZcBmCNPbY5j8", "userIDs": ["MHXVKmznn3ffwypK", "7tuAGXsfPs90LoHT", "Y1s5MBjTibX7vqKV"]}, {"partyID": "nmKLo5RIj3suytVF", "userIDs": ["qdx5RmEklWyUROo2", "VkelpHCz0WmrQKHT", "r3OgCGxzQcgxhkPb"]}, {"partyID": "69bmEKVtUQKWgjBn", "userIDs": ["roCNKQnTJPfbEJUu", "gfkfenQy4l8jVGKg", "j6zoLqMgRR9X3T3J"]}]}, {"UserIDs": ["YSvplDFrjISKLD7B", "hRjkB6P41ZZ20eWa", "HKnu4BbWlgrfMVYj"], "parties": [{"partyID": "TbVWTkq6rZcGYo9L", "userIDs": ["74aHAyeLONbdZQUo", "5M8rJMn0RZg7AyyC", "boPxyzmsUXyS59Ms"]}, {"partyID": "NIAezeUD7LdGXm4h", "userIDs": ["viPWLbTXRWwTKOtw", "0EfwbCxMqhDUnCYx", "Cy9bMJG8GA1K0YDG"]}, {"partyID": "UfY5vLgrBX7iuiSO", "userIDs": ["fwd1SUwb2GS7vNJ1", "rikOMcMwM0vkIaZr", "6eEtEm4k1uCGVsVP"]}]}], "ticketIDs": ["1TLvGWo26noq7AGc", "cajpxq1FS3AC1G33", "kz1aJHv3jpUXNgWS"], "type": "lYK4peuTjw0h9oCO", "version": 14}' \
    > test.out 2>&1
eval_tap $? 29 'PatchUpdateGameSession' test.out

#- 30 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'dh82SwkMuwGWkI5t' \
    --body '{"backfillTicketID": "1U9vJ2U4VWGt3VbS"}' \
    > test.out 2>&1
eval_tap $? 30 'UpdateGameSessionBackfillTicketID' test.out

#- 31 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'WMMvcVsdUlvRw8EL' \
    > test.out 2>&1
eval_tap $? 31 'GameSessionGenerateCode' test.out

#- 32 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'SsJKEtaqR7gIl6Oy' \
    > test.out 2>&1
eval_tap $? 32 'PublicRevokeGameSessionCode' test.out

#- 33 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'IlPZog7G0sWdNNbQ' \
    --body '{"platformID": "MhM0hNWWKytMsfxr", "userID": "TN0IvP2pipD4MdXA"}' \
    > test.out 2>&1
eval_tap $? 33 'PublicGameSessionInvite' test.out

#- 34 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'e2pksJT21bbgyyFR' \
    > test.out 2>&1
eval_tap $? 34 'JoinGameSession' test.out

#- 35 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'u8gJkgjsSH11Jf7v' \
    > test.out 2>&1
eval_tap $? 35 'LeaveGameSession' test.out

#- 36 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'gC4DqW5GGl9yzX4l' \
    > test.out 2>&1
eval_tap $? 36 'PublicGameSessionReject' test.out

#- 37 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'A0OjMb0O2Qrapkrq' \
    --body '{"additionalMembers": [{"partyID": "zWtGSZU7gW53HSSj", "userIDs": ["yJ30sljJfKnpzBVc", "iLCN6QtV2ck8gHxo", "6KaziklYJd1DwD4y"]}, {"partyID": "IyS2fSrAirPOpwL7", "userIDs": ["E07hPsT2iQ4JNin6", "bHFE0t5izP2RRdlw", "pPWUQwrL55uIQVfU"]}, {"partyID": "AQvXSreggulyzm5B", "userIDs": ["bhpNaEytrBc78Yem", "b6HpCWcVOkEpOBIE", "MhCxEYgeeq2mIXDk"]}], "proposedTeams": [{"UserIDs": ["aUUXnmEjknMLE2xe", "V193KIL1xr4CytDb", "cyhkeektJ7lXzui6"], "parties": [{"partyID": "aKOHwGsCZZ39xINu", "userIDs": ["tyKIfneukirXdFU5", "9jMKQnSsijRjfpSP", "Vd3kaGBoyjkklxER"]}, {"partyID": "7ciNLM0M7VzFE8OD", "userIDs": ["5JRTt70uWN0pD6oq", "FP9lJTGotx3M5ynO", "BIxZJGGBWcjL1zdb"]}, {"partyID": "nErFpKYVHtQhcaps", "userIDs": ["kVqaf37r17fA27zZ", "9pWeJr6G1FxwecYF", "BibkUBYBcVttSjpq"]}]}, {"UserIDs": ["byFKnl0UuU8WV5Ru", "WQZBNYuSpZO0LnAM", "oiMLaWo9IZXcafH1"], "parties": [{"partyID": "pbhuFFb47kJOpGVB", "userIDs": ["jPE5rwrsFudp0rqq", "NLAjyfGQtmwxHFfY", "TedUQWwVnPGMEH0U"]}, {"partyID": "7A5FbDxcxNlASf6t", "userIDs": ["W3HXgpMVMHGnAzBu", "FTOKFeVCdfenIp5G", "tohgfBoICHRiTZ6K"]}, {"partyID": "w3DJ2k8pSGkzQCaN", "userIDs": ["XOruWRihsz14XzxD", "7Cx5uJ58L98j3FhO", "4kHv9XNrtceI0zZt"]}]}, {"UserIDs": ["BoUsmwpm5FEQYtek", "fj4giUs5HG57or3e", "s0Dyocy246OzFRaQ"], "parties": [{"partyID": "QGUEHmrP4s21VwSF", "userIDs": ["ygpF6bvWZJs2sDa8", "Da16TBuD0NCZX7nG", "FramFzEnW41ZsxD5"]}, {"partyID": "jqxgoVqkegkfz05Z", "userIDs": ["rdG4vxBaXdyCcj16", "2zQtK0LcWqnbrvnQ", "HMn8bbP0HVg4FfMp"]}, {"partyID": "IyIpnUul3RyBO8SD", "userIDs": ["03Rtn6iiTwN9tPto", "LnsuBAjzfekvXMeC", "7sIMEoAIfsN4PgUS"]}]}], "version": 6}' \
    > test.out 2>&1
eval_tap $? 37 'AppendTeamGameSession' test.out

#- 38 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "vuGtCCYsXbSNinHE"}' \
    > test.out 2>&1
eval_tap $? 38 'PublicPartyJoinCode' test.out

#- 39 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'GyDiT4Q1q8Om1YoU' \
    > test.out 2>&1
eval_tap $? 39 'PublicGetParty' test.out

#- 40 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'lh2CUX55zwI7qu0f' \
    --body '{"attributes": {"lVmmAxTDwOxUkIyI": {}, "u7JZx042tAYewVSw": {}, "2xZ9Ob2LczJ82wtw": {}}, "inactiveTimeout": 95, "inviteTimeout": 49, "joinability": "HW2LgYvZ5Qb0NO1F", "maxPlayers": 65, "minPlayers": 2, "type": "MPcRptHt5YjHuWOa", "version": 9}' \
    > test.out 2>&1
eval_tap $? 40 'PublicUpdateParty' test.out

#- 41 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'UH27DmQtu3CzJJ43' \
    --body '{"attributes": {"16cRR4THFaqDr9iX": {}, "Zko5L1xvvCaXEEkV": {}, "7nhIk0HPZI8UmZX1": {}}, "inactiveTimeout": 78, "inviteTimeout": 92, "joinability": "nqdTtC6KXsLcsQsf", "maxPlayers": 29, "minPlayers": 28, "type": "PxiXZBRt528JhSAX", "version": 25}' \
    > test.out 2>&1
eval_tap $? 41 'PublicPatchUpdateParty' test.out

#- 42 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'fsRnR4CblVlz0148' \
    > test.out 2>&1
eval_tap $? 42 'PublicGeneratePartyCode' test.out

#- 43 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'TnjKZEWrcgOwq62Z' \
    > test.out 2>&1
eval_tap $? 43 'PublicRevokePartyCode' test.out

#- 44 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'PF2yMuQmcMAGSrEM' \
    --body '{"platformID": "7BAShnVBkSSdcv1z", "userID": "2pKSbbnnmzQdBc4H"}' \
    > test.out 2>&1
eval_tap $? 44 'PublicPartyInvite' test.out

#- 45 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'XZpvoPZyHEbO8I6N' \
    --body '{"leaderID": "z3VLlvcx7RM570WF"}' \
    > test.out 2>&1
eval_tap $? 45 'PublicPromotePartyLeader' test.out

#- 46 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'kIcZRXK6W8tByQkE' \
    > test.out 2>&1
eval_tap $? 46 'PublicPartyJoin' test.out

#- 47 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'P8cSqoXhWuHS668W' \
    > test.out 2>&1
eval_tap $? 47 'PublicPartyLeave' test.out

#- 48 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'tlYrcJTqsTFDsrKV' \
    > test.out 2>&1
eval_tap $? 48 'PublicPartyReject' test.out

#- 49 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'BBZJ0jJJWQ8tlGP2' \
    --userId 'ZGwES8KwsjvPgKB9' \
    > test.out 2>&1
eval_tap $? 49 'PublicPartyKick' test.out

#- 50 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"TKSia3bqdPz52cTm": {}, "80WpYx50uWyM9b0U": {}, "9PsofMwwShNs9D6b": {}}, "configurationName": "jhuOjPdTxQeHcZaD", "inactiveTimeout": 63, "inviteTimeout": 4, "joinability": "cW9nBNmAriCbVKcV", "maxPlayers": 59, "members": [{"ID": "SOxwOAS9Hto0whYH", "PlatformID": "E0OMKqBLfJIICefm", "PlatformUserID": "jCjV8CMfKs9POUKS"}, {"ID": "l4sBvKl7eycpCujt", "PlatformID": "b94RlCb3Xcvb6AYm", "PlatformUserID": "dPj6Iip7FKqr9etv"}, {"ID": "M4qE1n3qy1KV2hva", "PlatformID": "mHXD95OEvZ47Q3ND", "PlatformUserID": "BceBZeSkl6Nd6iWN"}], "minPlayers": 49, "textChat": false, "type": "gnpwGbVmEGQpVSA4"}' \
    > test.out 2>&1
eval_tap $? 50 'PublicCreateParty' test.out

#- 51 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["qrLYdeSXQJgR8ZMK", "bUQAMJSkLDnUZeuE", "rQ97h7HeDg4mKjNq"]}' \
    > test.out 2>&1
eval_tap $? 51 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 52 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'PublicGetPlayerAttributes' test.out

#- 53 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": false, "currentPlatform": "arJxhoPhkABhfwDY", "data": {"zejmew6hSQlZoK1l": {}, "WzjtIZfPADXR8D8F": {}, "jC9pFLGtvYE0V7fg": {}}, "platforms": [{"name": "So5f58X8x6K9VV59", "userID": "0WOQunyGgQ5f5MkT"}, {"name": "XccpYDSubZ36pgS9", "userID": "IRoTyCSHhE4K0EiU"}, {"name": "TJeXTnyX2euJkBYA", "userID": "h7kfykBIxc5Kau1D"}], "roles": ["8D21F9HtXlKMe2DN", "1qnn5YYtmcRog4bB", "P9dnwZlYkim6J78K"]}' \
    > test.out 2>&1
eval_tap $? 53 'PublicStorePlayerAttributes' test.out

#- 54 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'PublicDeletePlayerAttributes' test.out

#- 55 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'jmsqPifutsQB35FF' \
    --orderBy 'uMEb1EuXn8LjeTk7' \
    --status 'i6Dw80gIX1NY25JC' \
    > test.out 2>&1
eval_tap $? 55 'PublicQueryMyGameSessions' test.out

#- 56 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'Z3CZ2pmoW9GexwiG' \
    --orderBy 'uJFtVIDFzRt7LBbk' \
    --status 'c61sJnzwkWcvvlFv' \
    > test.out 2>&1
eval_tap $? 56 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE