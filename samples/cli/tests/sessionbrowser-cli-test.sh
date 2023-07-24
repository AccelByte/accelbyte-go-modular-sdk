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
echo "1..21"

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

#- 2 AdminQuerySession
samples/cli/sample-apps Sessionbrowser adminQuerySession \
    --namespace $AB_NAMESPACE \
    --gameMode 'RQSXwm65gIUy5Ht3' \
    --gameVersion 'hoD28QLdyhmtxxhx' \
    --joinable '3KmcKuRzRsLbraiW' \
    --limit '19' \
    --matchExist 'jxKOq8gBDJH9Iv9w' \
    --matchId 'Ggis5wYITwAKr6F1' \
    --offset '29' \
    --serverStatus '0qjqwgSUl6PJyXEf' \
    --userId 'SmG5wkA847oX83ZC' \
    --sessionType 'uQHDYvRhzniXBjJN' \
    > test.out 2>&1
eval_tap $? 2 'AdminQuerySession' test.out

#- 3 GetTotalActiveSession
samples/cli/sample-apps Sessionbrowser getTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --sessionType 'ZFBQ8nRTl8kQmMmE' \
    > test.out 2>&1
eval_tap $? 3 'GetTotalActiveSession' test.out

#- 4 GetActiveCustomGameSessions
samples/cli/sample-apps Sessionbrowser getActiveCustomGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '16' \
    --serverRegion 'RdXou4m0m2L5k3O1' \
    --sessionId 'VKAWUSbCTmpF5E4d' \
    > test.out 2>&1
eval_tap $? 4 'GetActiveCustomGameSessions' test.out

#- 5 GetActiveMatchmakingGameSessions
samples/cli/sample-apps Sessionbrowser getActiveMatchmakingGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --matchId 'JFhO7dt7Mk76Rsw6' \
    --offset '93' \
    --serverRegion 'W2XIKA6utFoRjAOX' \
    --sessionId 'HA09HyZ86qunSwb1' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveMatchmakingGameSessions' test.out

#- 6 AdminGetSession
samples/cli/sample-apps Sessionbrowser adminGetSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'adJrmh9myqtGp5C5' \
    > test.out 2>&1
eval_tap $? 6 'AdminGetSession' test.out

#- 7 AdminDeleteSession
samples/cli/sample-apps Sessionbrowser adminDeleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'Ov1W5S7B9J8mQ5pS' \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteSession' test.out

#- 8 AdminSearchSessionsV2
samples/cli/sample-apps Sessionbrowser adminSearchSessionsV2 \
    --namespace $AB_NAMESPACE \
    --channel 'sba5sjce7Dgg8Pr1' \
    --deleted 'false' \
    --matchID '5CqSiZ7uSqh3Xpj7' \
    --partyID '58JwsdFvMkwA4BwL' \
    --sessionType 'PWRif20hq4AfIINT' \
    --status 'XFxV3BxuPIAsgrcm' \
    --userID 'gWwGXeyzrUP096tS' \
    --limit '73' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 8 'AdminSearchSessionsV2' test.out

#- 9 GetSessionHistoryDetailed
samples/cli/sample-apps Sessionbrowser getSessionHistoryDetailed \
    --matchID 'oEkl1E2xoTioJkVw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetSessionHistoryDetailed' test.out

#- 10 UserQuerySession
samples/cli/sample-apps Sessionbrowser userQuerySession \
    --namespace $AB_NAMESPACE \
    --gameMode 't16NDvOS1LXhDeqd' \
    --gameVersion 'ZU1ycvrQVwe2zYoP' \
    --joinable 'tV3UKQzRQIJUHSzH' \
    --limit '68' \
    --matchExist 'kX71YaYwF3DgX0Uq' \
    --matchId 'yFRinAVfEdesnDIB' \
    --offset '78' \
    --serverStatus 'SvAykpsb18mO5acu' \
    --userId '00NuV5BZi2NbHpD6' \
    --sessionType 'WSmZNcZKBDpILjJH' \
    > test.out 2>&1
eval_tap $? 10 'UserQuerySession' test.out

#- 11 CreateSession
samples/cli/sample-apps Sessionbrowser createSession \
    --namespace $AB_NAMESPACE \
    --body '{"game_session_setting": {"allow_join_in_progress": false, "current_internal_player": 1, "current_player": 64, "map_name": "UF38e5InTlmd7xpF", "max_internal_player": 46, "max_player": 63, "mode": "Bk9Tp8Rofg3IGbRI", "num_bot": 24, "password": "ujHR8g4nXVqpAteg", "settings": {"3wXXaNn6dpXjmIzJ": {}, "dFs403lLYWr0KSQb": {}, "JUDpFRwt3tM2xXQg": {}}}, "game_version": "l800ayRXBwyL7jSs", "namespace": "WEw8fBDPEpFSndOe", "session_type": "nWn7MVcwxtqfmxM8", "username": "DgpN3pCNn6Q28YnL"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateSession' test.out

#- 12 GetSessionByUserIDs
samples/cli/sample-apps Sessionbrowser getSessionByUserIDs \
    --namespace $AB_NAMESPACE \
    --userIds 'r71KYw61ervMenPE' \
    > test.out 2>&1
eval_tap $? 12 'GetSessionByUserIDs' test.out

#- 13 GetSession
samples/cli/sample-apps Sessionbrowser getSession \
    --namespace $AB_NAMESPACE \
    --sessionID '1GkFwHGwPumja0He' \
    > test.out 2>&1
eval_tap $? 13 'GetSession' test.out

#- 14 UpdateSession
samples/cli/sample-apps Sessionbrowser updateSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'vt3sETReZxDv20Fy' \
    --body '{"game_max_player": 25}' \
    > test.out 2>&1
eval_tap $? 14 'UpdateSession' test.out

#- 15 DeleteSession
samples/cli/sample-apps Sessionbrowser deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'xuMNAP0WzXy0B8wA' \
    > test.out 2>&1
eval_tap $? 15 'DeleteSession' test.out

#- 16 JoinSession
samples/cli/sample-apps Sessionbrowser joinSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'YDN21YxKO7HBbo4A' \
    --body '{"password": "H3QOfM748odV9cBL"}' \
    > test.out 2>&1
eval_tap $? 16 'JoinSession' test.out

#- 17 DeleteSessionLocalDS
samples/cli/sample-apps Sessionbrowser deleteSessionLocalDS \
    --namespace $AB_NAMESPACE \
    --sessionID 'b2aSAraqtFCSmUhH' \
    > test.out 2>&1
eval_tap $? 17 'DeleteSessionLocalDS' test.out

#- 18 AddPlayerToSession
samples/cli/sample-apps Sessionbrowser addPlayerToSession \
    --namespace $AB_NAMESPACE \
    --sessionID '5UcjouvjTqyofSok' \
    --body '{"as_spectator": false, "user_id": "v6tYXmJgSdn1ySM9"}' \
    > test.out 2>&1
eval_tap $? 18 'AddPlayerToSession' test.out

#- 19 RemovePlayerFromSession
samples/cli/sample-apps Sessionbrowser removePlayerFromSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'OpwUjE4rn8Dxxul8' \
    --userID 'WP7NkK7kDe0H3UJH' \
    > test.out 2>&1
eval_tap $? 19 'RemovePlayerFromSession' test.out

#- 20 UpdateSettings
samples/cli/sample-apps Sessionbrowser updateSettings \
    --namespace $AB_NAMESPACE \
    --sessionID 'n2WPSwMtMOxNQ5zL' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateSettings' test.out

#- 21 GetRecentPlayer
samples/cli/sample-apps Sessionbrowser getRecentPlayer \
    --namespace $AB_NAMESPACE \
    --userID '3BBqg65y9kQiTkbh' \
    > test.out 2>&1
eval_tap $? 21 'GetRecentPlayer' test.out


rm -f "tmp.dat"

exit $EXIT_CODE