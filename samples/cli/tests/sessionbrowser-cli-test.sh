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
    --gameMode 'axu0f3nt' \
    --gameVersion 'oKlLZPbV' \
    --joinable 'nnE1SYBI' \
    --limit '6' \
    --matchExist 'tGOLSRTk' \
    --matchId 'xl0PuZDh' \
    --offset '58' \
    --serverStatus 'CVkhGml2' \
    --userId 'puv0diNC' \
    --sessionType 'c3CwSQ2D' \
    > test.out 2>&1
eval_tap $? 2 'AdminQuerySession' test.out

#- 3 GetTotalActiveSession
samples/cli/sample-apps Sessionbrowser getTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --sessionType 'Vcj7XyWK' \
    > test.out 2>&1
eval_tap $? 3 'GetTotalActiveSession' test.out

#- 4 GetActiveCustomGameSessions
samples/cli/sample-apps Sessionbrowser getActiveCustomGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '22' \
    --serverRegion '0asJTqPF' \
    --sessionId '2GKr922W' \
    > test.out 2>&1
eval_tap $? 4 'GetActiveCustomGameSessions' test.out

#- 5 GetActiveMatchmakingGameSessions
samples/cli/sample-apps Sessionbrowser getActiveMatchmakingGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --matchId 'F4o6vYPl' \
    --offset '64' \
    --serverRegion '2wqK9wl6' \
    --sessionId 'ILl13iGA' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveMatchmakingGameSessions' test.out

#- 6 AdminGetSession
samples/cli/sample-apps Sessionbrowser adminGetSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'x0K8tDPg' \
    > test.out 2>&1
eval_tap $? 6 'AdminGetSession' test.out

#- 7 AdminDeleteSession
samples/cli/sample-apps Sessionbrowser adminDeleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'JHA6xxNy' \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteSession' test.out

#- 8 AdminSearchSessionsV2
samples/cli/sample-apps Sessionbrowser adminSearchSessionsV2 \
    --namespace $AB_NAMESPACE \
    --channel 'bELGcw5z' \
    --deleted 'true' \
    --matchID 'gnGopVhA' \
    --partyID 'EOUBvn5y' \
    --sessionType 'HUCfirrV' \
    --status 'sP3vF6xC' \
    --userID 'oIDVWV6M' \
    --limit '65' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 8 'AdminSearchSessionsV2' test.out

#- 9 GetSessionHistoryDetailed
samples/cli/sample-apps Sessionbrowser getSessionHistoryDetailed \
    --matchID 'LpyyTfkN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetSessionHistoryDetailed' test.out

#- 10 UserQuerySession
samples/cli/sample-apps Sessionbrowser userQuerySession \
    --namespace $AB_NAMESPACE \
    --gameMode 'sVfPWnL8' \
    --gameVersion 'CR9V1YL0' \
    --joinable 'XIJEN9N0' \
    --limit '12' \
    --matchExist 'xUiHvzJl' \
    --matchId 'UnyRGEUs' \
    --offset '20' \
    --serverStatus 'YXTvXg5g' \
    --userId 'ZhojQM1G' \
    --sessionType 'OWUyY5nw' \
    > test.out 2>&1
eval_tap $? 10 'UserQuerySession' test.out

#- 11 CreateSession
samples/cli/sample-apps Sessionbrowser createSession \
    --namespace $AB_NAMESPACE \
    --body '{"game_session_setting": {"allow_join_in_progress": false, "current_internal_player": 26, "current_player": 45, "map_name": "M46WrPI9", "max_internal_player": 36, "max_player": 91, "mode": "dg6umHCl", "num_bot": 56, "password": "R4wD577c", "settings": {"7391P2IM": {}, "JZPjyGjP": {}, "KtRD33aA": {}}}, "game_version": "p09NfLUC", "namespace": "dYMplau1", "session_type": "9Y5bM793", "username": "aBl0MgeV"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateSession' test.out

#- 12 GetSessionByUserIDs
samples/cli/sample-apps Sessionbrowser getSessionByUserIDs \
    --namespace $AB_NAMESPACE \
    --userIds 'NzycFzT0' \
    > test.out 2>&1
eval_tap $? 12 'GetSessionByUserIDs' test.out

#- 13 GetSession
samples/cli/sample-apps Sessionbrowser getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'vEZ3zcBo' \
    > test.out 2>&1
eval_tap $? 13 'GetSession' test.out

#- 14 UpdateSession
samples/cli/sample-apps Sessionbrowser updateSession \
    --namespace $AB_NAMESPACE \
    --sessionID 't4uNvjsO' \
    --body '{"game_max_player": 70}' \
    > test.out 2>&1
eval_tap $? 14 'UpdateSession' test.out

#- 15 DeleteSession
samples/cli/sample-apps Sessionbrowser deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 's0ycCVZn' \
    > test.out 2>&1
eval_tap $? 15 'DeleteSession' test.out

#- 16 JoinSession
samples/cli/sample-apps Sessionbrowser joinSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'qmn8bCTQ' \
    --body '{"password": "XtRnVZll"}' \
    > test.out 2>&1
eval_tap $? 16 'JoinSession' test.out

#- 17 DeleteSessionLocalDS
samples/cli/sample-apps Sessionbrowser deleteSessionLocalDS \
    --namespace $AB_NAMESPACE \
    --sessionID 'MfcFloGK' \
    > test.out 2>&1
eval_tap $? 17 'DeleteSessionLocalDS' test.out

#- 18 AddPlayerToSession
samples/cli/sample-apps Sessionbrowser addPlayerToSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'LKS0YPB5' \
    --body '{"as_spectator": true, "user_id": "j4EbUX9m"}' \
    > test.out 2>&1
eval_tap $? 18 'AddPlayerToSession' test.out

#- 19 RemovePlayerFromSession
samples/cli/sample-apps Sessionbrowser removePlayerFromSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'xpyl6QDy' \
    --userID 'sEcWpwFT' \
    > test.out 2>&1
eval_tap $? 19 'RemovePlayerFromSession' test.out

#- 20 UpdateSettings
samples/cli/sample-apps Sessionbrowser updateSettings \
    --namespace $AB_NAMESPACE \
    --sessionID '0EdEKRnb' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateSettings' test.out

#- 21 GetRecentPlayer
samples/cli/sample-apps Sessionbrowser getRecentPlayer \
    --namespace $AB_NAMESPACE \
    --userID 'Cs2rqRmJ' \
    > test.out 2>&1
eval_tap $? 21 'GetRecentPlayer' test.out


rm -f "tmp.dat"

exit $EXIT_CODE