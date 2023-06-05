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
    --gameMode 'UvB0xFeBMb7NyEwd' \
    --gameVersion 'sirLNeulfaKj1wvu' \
    --joinable 'MvIHDhEtTyAUmoxt' \
    --limit '22' \
    --matchExist 'ccgaEQsm2gsJNOtj' \
    --matchId 'TC5enaQca1Wnq4IW' \
    --offset '12' \
    --serverStatus '3h7uH0L8IPSDGqJA' \
    --userId 'Jf8byWszhRBs29az' \
    --sessionType 'ZBuhdOYBUQUfdYu5' \
    > test.out 2>&1
eval_tap $? 2 'AdminQuerySession' test.out

#- 3 GetTotalActiveSession
samples/cli/sample-apps Sessionbrowser getTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --sessionType 'rxRIzqJyyTxrQmYU' \
    > test.out 2>&1
eval_tap $? 3 'GetTotalActiveSession' test.out

#- 4 GetActiveCustomGameSessions
samples/cli/sample-apps Sessionbrowser getActiveCustomGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '6' \
    --serverRegion 'wWYuMWY4PGcQymuE' \
    --sessionId 'Er0Lo46oAA0ktSaG' \
    > test.out 2>&1
eval_tap $? 4 'GetActiveCustomGameSessions' test.out

#- 5 GetActiveMatchmakingGameSessions
samples/cli/sample-apps Sessionbrowser getActiveMatchmakingGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --matchId 'Ppm6wzFvt8bYXzmS' \
    --offset '87' \
    --serverRegion '25cC7kDa6PaN92Fw' \
    --sessionId 'Q2BS4WebRWEzTKpk' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveMatchmakingGameSessions' test.out

#- 6 AdminGetSession
samples/cli/sample-apps Sessionbrowser adminGetSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'a9lBOy8Fei0tdF0k' \
    > test.out 2>&1
eval_tap $? 6 'AdminGetSession' test.out

#- 7 AdminDeleteSession
samples/cli/sample-apps Sessionbrowser adminDeleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'yZiRpVVLFG1tdwzU' \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteSession' test.out

#- 8 AdminSearchSessionsV2
samples/cli/sample-apps Sessionbrowser adminSearchSessionsV2 \
    --namespace $AB_NAMESPACE \
    --channel 'AgveKVnCJXN02Nec' \
    --deleted 'true' \
    --matchID 'e5eOeoIcmh6cZcNw' \
    --partyID 'mbapgLeCPVOPk17l' \
    --sessionType '3jlnVVgLFSTZO6sS' \
    --status 'VjjH86zh63jUyskw' \
    --userID 'ncPv2lXotXPXcPjL' \
    --limit '98' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 8 'AdminSearchSessionsV2' test.out

#- 9 GetSessionHistoryDetailed
samples/cli/sample-apps Sessionbrowser getSessionHistoryDetailed \
    --matchID 'fdotgAiLYSQeW3Ao' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetSessionHistoryDetailed' test.out

#- 10 UserQuerySession
samples/cli/sample-apps Sessionbrowser userQuerySession \
    --namespace $AB_NAMESPACE \
    --gameMode 'C4pQNrcvxKi7rTwa' \
    --gameVersion 'ACC6lcxnNU3rVQLv' \
    --joinable '88cuT4RFVDU2h47o' \
    --limit '36' \
    --matchExist 'rPqQbBVhbbSDZJ8Q' \
    --matchId 'jdwVhNCEMZbbjguz' \
    --offset '55' \
    --serverStatus 'xP2lQg4jdbSCI1Ia' \
    --userId '94XUIPJt38mUF9ZK' \
    --sessionType 'CqBray6oDmbghZdn' \
    > test.out 2>&1
eval_tap $? 10 'UserQuerySession' test.out

#- 11 CreateSession
samples/cli/sample-apps Sessionbrowser createSession \
    --namespace $AB_NAMESPACE \
    --body '{"game_session_setting": {"allow_join_in_progress": false, "current_internal_player": 39, "current_player": 19, "map_name": "YhsyzFnFOf01EpSm", "max_internal_player": 29, "max_player": 34, "mode": "yURs1zu3TXxVya6g", "num_bot": 9, "password": "wjZRq0lYacrjLec2", "settings": {"9jalqivZzb5Y9tQw": {}, "eRMnaI4aOSCkibZN": {}, "IB9XEDvGSnr5ZooU": {}}}, "game_version": "aFuaJF3pctNOSf3k", "namespace": "wOHegxuMwqp747DZ", "session_type": "gT0X4ESkXdRJb5VQ", "username": "pbZoWUJhcVbRHrvh"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateSession' test.out

#- 12 GetSessionByUserIDs
samples/cli/sample-apps Sessionbrowser getSessionByUserIDs \
    --namespace $AB_NAMESPACE \
    --userIds 'cEAjRJWzGczUBW34' \
    > test.out 2>&1
eval_tap $? 12 'GetSessionByUserIDs' test.out

#- 13 GetSession
samples/cli/sample-apps Sessionbrowser getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'cy5fKf05fRWPHoKf' \
    > test.out 2>&1
eval_tap $? 13 'GetSession' test.out

#- 14 UpdateSession
samples/cli/sample-apps Sessionbrowser updateSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'zTT79XnURxCvQToQ' \
    --body '{"game_max_player": 15}' \
    > test.out 2>&1
eval_tap $? 14 'UpdateSession' test.out

#- 15 DeleteSession
samples/cli/sample-apps Sessionbrowser deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'IiFgIOeNTuF9NNRh' \
    > test.out 2>&1
eval_tap $? 15 'DeleteSession' test.out

#- 16 JoinSession
samples/cli/sample-apps Sessionbrowser joinSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'sOXfseQ5AJwlePum' \
    --body '{"password": "72LuAKJOjzs4lmoT"}' \
    > test.out 2>&1
eval_tap $? 16 'JoinSession' test.out

#- 17 DeleteSessionLocalDS
samples/cli/sample-apps Sessionbrowser deleteSessionLocalDS \
    --namespace $AB_NAMESPACE \
    --sessionID '2O7Nti08Gep9ry1t' \
    > test.out 2>&1
eval_tap $? 17 'DeleteSessionLocalDS' test.out

#- 18 AddPlayerToSession
samples/cli/sample-apps Sessionbrowser addPlayerToSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'l51HvqJlJizw73GV' \
    --body '{"as_spectator": true, "user_id": "wePTNTJEo1oMKE6Q"}' \
    > test.out 2>&1
eval_tap $? 18 'AddPlayerToSession' test.out

#- 19 RemovePlayerFromSession
samples/cli/sample-apps Sessionbrowser removePlayerFromSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'y9kh1pM5e19u04zS' \
    --userID 'Aq5oNVIT3xZFBGdV' \
    > test.out 2>&1
eval_tap $? 19 'RemovePlayerFromSession' test.out

#- 20 UpdateSettings
samples/cli/sample-apps Sessionbrowser updateSettings \
    --namespace $AB_NAMESPACE \
    --sessionID 't5MapSrdIfszKoq6' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateSettings' test.out

#- 21 GetRecentPlayer
samples/cli/sample-apps Sessionbrowser getRecentPlayer \
    --namespace $AB_NAMESPACE \
    --userID 'E3qIGdJsPkONAyV9' \
    > test.out 2>&1
eval_tap $? 21 'GetRecentPlayer' test.out


rm -f "tmp.dat"

exit $EXIT_CODE