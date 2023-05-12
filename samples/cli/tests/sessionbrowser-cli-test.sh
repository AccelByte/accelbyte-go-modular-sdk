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
    --gameMode 'QtfNKdyZNJMwMiFg' \
    --gameVersion '4A9bujj1PXUs2BoY' \
    --joinable 'XaEl7SuYswzbQQot' \
    --limit '94' \
    --matchExist 'zpPjXlUb5fTB9GQV' \
    --matchId 'WYSvRLXiny5ah8iy' \
    --offset '88' \
    --serverStatus 'Bl5I7OqWxwLYK99x' \
    --userId 'F06kHajyzaFtPv5d' \
    --sessionType 'EYBBJjct8wfrx5lo' \
    > test.out 2>&1
eval_tap $? 2 'AdminQuerySession' test.out

#- 3 GetTotalActiveSession
samples/cli/sample-apps Sessionbrowser getTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --sessionType 'BLzJITkRTbYmsEe5' \
    > test.out 2>&1
eval_tap $? 3 'GetTotalActiveSession' test.out

#- 4 GetActiveCustomGameSessions
samples/cli/sample-apps Sessionbrowser getActiveCustomGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '5' \
    --serverRegion '4qhKY8WHEfxqbtcp' \
    --sessionId 'euhERIBobrJ5IVCn' \
    > test.out 2>&1
eval_tap $? 4 'GetActiveCustomGameSessions' test.out

#- 5 GetActiveMatchmakingGameSessions
samples/cli/sample-apps Sessionbrowser getActiveMatchmakingGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --matchId 'iBtzjFzHveOdddEj' \
    --offset '37' \
    --serverRegion '7aU9QwPz7yEi9WCy' \
    --sessionId 'egpNoxMNgkKYxfG5' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveMatchmakingGameSessions' test.out

#- 6 AdminGetSession
samples/cli/sample-apps Sessionbrowser adminGetSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'FlOVL6z1OedzGXTj' \
    > test.out 2>&1
eval_tap $? 6 'AdminGetSession' test.out

#- 7 AdminDeleteSession
samples/cli/sample-apps Sessionbrowser adminDeleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'xxvhIH1Z8Owv3j11' \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteSession' test.out

#- 8 AdminSearchSessionsV2
samples/cli/sample-apps Sessionbrowser adminSearchSessionsV2 \
    --namespace $AB_NAMESPACE \
    --channel 'YTlg8ki1Ltf0gHgo' \
    --deleted 'true' \
    --matchID 'G9lT45KnOSmtCu7G' \
    --partyID 'oMS1RhsADKapi5Xh' \
    --sessionType 'Lnoa7o5gZptJAHdi' \
    --status 'V8x0LSQT1v48TvZP' \
    --userID 'JL5RrisRbAo5e7kT' \
    --limit '80' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 8 'AdminSearchSessionsV2' test.out

#- 9 GetSessionHistoryDetailed
samples/cli/sample-apps Sessionbrowser getSessionHistoryDetailed \
    --matchID 'l0a6dHpE4sujrt6p' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetSessionHistoryDetailed' test.out

#- 10 UserQuerySession
samples/cli/sample-apps Sessionbrowser userQuerySession \
    --namespace $AB_NAMESPACE \
    --gameMode 'gSj8ggfUtKTqHnnh' \
    --gameVersion 'sZAikJd94CBdwSZw' \
    --joinable 'vlYM7wreTyemVmis' \
    --limit '97' \
    --matchExist 'QZTqrkFNDTb6Vxgw' \
    --matchId 't9BcVHzucPmxtwXl' \
    --offset '45' \
    --serverStatus 'U2YM0WnyLBUZfWXf' \
    --userId 'k8fpsg3aW1x4gYvR' \
    --sessionType '56XwRgEWA5E2NoaC' \
    > test.out 2>&1
eval_tap $? 10 'UserQuerySession' test.out

#- 11 CreateSession
samples/cli/sample-apps Sessionbrowser createSession \
    --namespace $AB_NAMESPACE \
    --body '{"game_session_setting": {"allow_join_in_progress": true, "current_internal_player": 71, "current_player": 21, "map_name": "HCJw8aznwE5m0aV4", "max_internal_player": 62, "max_player": 36, "mode": "zJK4FpDy5dAVywQg", "num_bot": 17, "password": "ChjXQy0iXpewaz58", "settings": {"4CMUXbrscfeE7DJK": {}, "VapoldK7yx2nVxUn": {}, "WYmGFxtMkhgVQwBI": {}}}, "game_version": "FwV1kf67fN9bp3Rd", "namespace": "jJtVRwf4vVCJtb3W", "session_type": "JK0AkAI5ThaAFowj", "username": "ayWK8SUqIp6ss8ky"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateSession' test.out

#- 12 GetSessionByUserIDs
samples/cli/sample-apps Sessionbrowser getSessionByUserIDs \
    --namespace $AB_NAMESPACE \
    --userIds 'qJQ9LN4qcAf23n0D' \
    > test.out 2>&1
eval_tap $? 12 'GetSessionByUserIDs' test.out

#- 13 GetSession
samples/cli/sample-apps Sessionbrowser getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'lnzVJ24p5FqCXe5f' \
    > test.out 2>&1
eval_tap $? 13 'GetSession' test.out

#- 14 UpdateSession
samples/cli/sample-apps Sessionbrowser updateSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'hPAJsJ9zTdMuFMrg' \
    --body '{"game_max_player": 59}' \
    > test.out 2>&1
eval_tap $? 14 'UpdateSession' test.out

#- 15 DeleteSession
samples/cli/sample-apps Sessionbrowser deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'pxPJ6tmBmoSYwoij' \
    > test.out 2>&1
eval_tap $? 15 'DeleteSession' test.out

#- 16 JoinSession
samples/cli/sample-apps Sessionbrowser joinSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'NRfy506EdnAX0FkZ' \
    --body '{"password": "jifdTfNIkSmWOdWZ"}' \
    > test.out 2>&1
eval_tap $? 16 'JoinSession' test.out

#- 17 DeleteSessionLocalDS
samples/cli/sample-apps Sessionbrowser deleteSessionLocalDS \
    --namespace $AB_NAMESPACE \
    --sessionID 'YbfrQx5BfTKpJKCk' \
    > test.out 2>&1
eval_tap $? 17 'DeleteSessionLocalDS' test.out

#- 18 AddPlayerToSession
samples/cli/sample-apps Sessionbrowser addPlayerToSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'ItHKduJB1zaaJ93R' \
    --body '{"as_spectator": false, "user_id": "XFKUPiReV97K6xvw"}' \
    > test.out 2>&1
eval_tap $? 18 'AddPlayerToSession' test.out

#- 19 RemovePlayerFromSession
samples/cli/sample-apps Sessionbrowser removePlayerFromSession \
    --namespace $AB_NAMESPACE \
    --sessionID '6hAFf2ZtlFdJBsgs' \
    --userID 'vHUAqmwwzDeCGU1W' \
    > test.out 2>&1
eval_tap $? 19 'RemovePlayerFromSession' test.out

#- 20 UpdateSettings
samples/cli/sample-apps Sessionbrowser updateSettings \
    --namespace $AB_NAMESPACE \
    --sessionID 'laCpWoXYsHP19VYW' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateSettings' test.out

#- 21 GetRecentPlayer
samples/cli/sample-apps Sessionbrowser getRecentPlayer \
    --namespace $AB_NAMESPACE \
    --userID 'yqqvDwUwtlNCGaxW' \
    > test.out 2>&1
eval_tap $? 21 'GetRecentPlayer' test.out


rm -f "tmp.dat"

exit $EXIT_CODE