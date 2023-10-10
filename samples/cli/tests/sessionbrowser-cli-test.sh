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
    --gameMode 'p2dDVc5i' \
    --gameVersion 'Wbj9sleJ' \
    --joinable 'FAhA3Njd' \
    --limit '38' \
    --matchExist 'PdAPVHH2' \
    --matchId 'QicY9Cak' \
    --offset '40' \
    --serverStatus '5OWeN6v1' \
    --userId 'lDqG1tDd' \
    --sessionType 'KUTGVVWa' \
    > test.out 2>&1
eval_tap $? 2 'AdminQuerySession' test.out

#- 3 GetTotalActiveSession
samples/cli/sample-apps Sessionbrowser getTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --sessionType '8YuemiWI' \
    > test.out 2>&1
eval_tap $? 3 'GetTotalActiveSession' test.out

#- 4 GetActiveCustomGameSessions
samples/cli/sample-apps Sessionbrowser getActiveCustomGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '94' \
    --serverRegion '96sGXzWB' \
    --sessionId 'La8L70I7' \
    > test.out 2>&1
eval_tap $? 4 'GetActiveCustomGameSessions' test.out

#- 5 GetActiveMatchmakingGameSessions
samples/cli/sample-apps Sessionbrowser getActiveMatchmakingGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --matchId 'xAGLNh1Y' \
    --offset '46' \
    --serverRegion 'TTuLXZhu' \
    --sessionId '247lzJHG' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveMatchmakingGameSessions' test.out

#- 6 AdminGetSession
samples/cli/sample-apps Sessionbrowser adminGetSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'DL1KGr3h' \
    > test.out 2>&1
eval_tap $? 6 'AdminGetSession' test.out

#- 7 AdminDeleteSession
samples/cli/sample-apps Sessionbrowser adminDeleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'QbdeWW35' \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteSession' test.out

#- 8 AdminSearchSessionsV2
samples/cli/sample-apps Sessionbrowser adminSearchSessionsV2 \
    --namespace $AB_NAMESPACE \
    --channel 'gj8P9l86' \
    --deleted 'true' \
    --matchID 'fpjS39OY' \
    --partyID 'MUhzcjQE' \
    --sessionType 'zGLokElY' \
    --status 'jvGqhJ2D' \
    --userID 'M8iL6XD3' \
    --limit '65' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 8 'AdminSearchSessionsV2' test.out

#- 9 GetSessionHistoryDetailed
samples/cli/sample-apps Sessionbrowser getSessionHistoryDetailed \
    --matchID 'RmUMpZE7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetSessionHistoryDetailed' test.out

#- 10 UserQuerySession
samples/cli/sample-apps Sessionbrowser userQuerySession \
    --namespace $AB_NAMESPACE \
    --gameMode 'h5zohMRj' \
    --gameVersion 'YyUpLrPh' \
    --joinable 'wQUyDZax' \
    --limit '10' \
    --matchExist 'oRBWKZeu' \
    --matchId 'bTVow8pR' \
    --offset '23' \
    --serverStatus '8iHMpJx3' \
    --userId '5WC9j1HA' \
    --sessionType '8lykd6j6' \
    > test.out 2>&1
eval_tap $? 10 'UserQuerySession' test.out

#- 11 CreateSession
samples/cli/sample-apps Sessionbrowser createSession \
    --namespace $AB_NAMESPACE \
    --body '{"game_session_setting": {"allow_join_in_progress": true, "current_internal_player": 63, "current_player": 27, "map_name": "tzJYDiWu", "max_internal_player": 94, "max_player": 30, "mode": "ryltlDjB", "num_bot": 54, "password": "WIbIi7ty", "settings": {"2xKpEC7P": {}, "PAOSWTt4": {}, "Go5TM1MA": {}}}, "game_version": "mwgWKPuo", "namespace": "z6J3Pfjs", "session_type": "J5ktLkTN", "username": "T79Q6WxO"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateSession' test.out

#- 12 GetSessionByUserIDs
samples/cli/sample-apps Sessionbrowser getSessionByUserIDs \
    --namespace $AB_NAMESPACE \
    --userIds 'E8ucbtlR' \
    > test.out 2>&1
eval_tap $? 12 'GetSessionByUserIDs' test.out

#- 13 GetSession
samples/cli/sample-apps Sessionbrowser getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'QAH34lL8' \
    > test.out 2>&1
eval_tap $? 13 'GetSession' test.out

#- 14 UpdateSession
samples/cli/sample-apps Sessionbrowser updateSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'Doc1fNwM' \
    --body '{"game_max_player": 83}' \
    > test.out 2>&1
eval_tap $? 14 'UpdateSession' test.out

#- 15 DeleteSession
samples/cli/sample-apps Sessionbrowser deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'EGW1TboY' \
    > test.out 2>&1
eval_tap $? 15 'DeleteSession' test.out

#- 16 JoinSession
samples/cli/sample-apps Sessionbrowser joinSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'qlBkDUmH' \
    --body '{"password": "0OSRv7og"}' \
    > test.out 2>&1
eval_tap $? 16 'JoinSession' test.out

#- 17 DeleteSessionLocalDS
samples/cli/sample-apps Sessionbrowser deleteSessionLocalDS \
    --namespace $AB_NAMESPACE \
    --sessionID 'UlvM6GeW' \
    > test.out 2>&1
eval_tap $? 17 'DeleteSessionLocalDS' test.out

#- 18 AddPlayerToSession
samples/cli/sample-apps Sessionbrowser addPlayerToSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'lWG674nH' \
    --body '{"as_spectator": false, "user_id": "SpHL3jws"}' \
    > test.out 2>&1
eval_tap $? 18 'AddPlayerToSession' test.out

#- 19 RemovePlayerFromSession
samples/cli/sample-apps Sessionbrowser removePlayerFromSession \
    --namespace $AB_NAMESPACE \
    --sessionID '0KJZqR5c' \
    --userID 'eROqGtPH' \
    > test.out 2>&1
eval_tap $? 19 'RemovePlayerFromSession' test.out

#- 20 UpdateSettings
samples/cli/sample-apps Sessionbrowser updateSettings \
    --namespace $AB_NAMESPACE \
    --sessionID 'sc0Q5bO7' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateSettings' test.out

#- 21 GetRecentPlayer
samples/cli/sample-apps Sessionbrowser getRecentPlayer \
    --namespace $AB_NAMESPACE \
    --userID 'AUnE2rZG' \
    > test.out 2>&1
eval_tap $? 21 'GetRecentPlayer' test.out


rm -f "tmp.dat"

exit $EXIT_CODE