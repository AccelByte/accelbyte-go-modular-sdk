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
    --gameMode 'PSexZN2j8InwSzUL' \
    --gameVersion 'bZxZCXIH70CiEF46' \
    --joinable '2r85p4zMVrG4UyCm' \
    --limit '61' \
    --matchExist 'xmmM4Lmu7jmHLXK7' \
    --matchId 'bwb47oBPFQTmmHxC' \
    --offset '60' \
    --serverStatus 'q6B9m180oaejvdiR' \
    --userId 'xSi3O9hMv0hIp3P2' \
    --sessionType 'xFrkEUzT5KgbattN' \
    > test.out 2>&1
eval_tap $? 2 'AdminQuerySession' test.out

#- 3 GetTotalActiveSession
samples/cli/sample-apps Sessionbrowser getTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --sessionType 'yNFHevFtwLvjhrWW' \
    > test.out 2>&1
eval_tap $? 3 'GetTotalActiveSession' test.out

#- 4 GetActiveCustomGameSessions
samples/cli/sample-apps Sessionbrowser getActiveCustomGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '71' \
    --serverRegion 'oTk8qaN3i9i3DG8x' \
    --sessionId 'qsFG6BvJaMVMUDsi' \
    > test.out 2>&1
eval_tap $? 4 'GetActiveCustomGameSessions' test.out

#- 5 GetActiveMatchmakingGameSessions
samples/cli/sample-apps Sessionbrowser getActiveMatchmakingGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --matchId 'akTU1TaJxns0T5GH' \
    --offset '59' \
    --serverRegion 'iZt2lIMpikkd237P' \
    --sessionId 'iB6Smnt1ebqoKclr' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveMatchmakingGameSessions' test.out

#- 6 AdminGetSession
samples/cli/sample-apps Sessionbrowser adminGetSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'HM64RxS2Ad52b0DN' \
    > test.out 2>&1
eval_tap $? 6 'AdminGetSession' test.out

#- 7 AdminDeleteSession
samples/cli/sample-apps Sessionbrowser adminDeleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'aHtSyfB4nbtCAYvH' \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteSession' test.out

#- 8 AdminSearchSessionsV2
samples/cli/sample-apps Sessionbrowser adminSearchSessionsV2 \
    --namespace $AB_NAMESPACE \
    --channel 'Ra31TWvkX1EP1UDj' \
    --deleted 'true' \
    --matchID '5WAbqEj56RmgkQjh' \
    --partyID 'CFcT5ok5jPz7b8dX' \
    --sessionType 'WGeo47F9T2fT5fUD' \
    --status 'H73OSYo63zfgf4lN' \
    --userID 'S1FaaDO2onEyPNeT' \
    --limit '17' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 8 'AdminSearchSessionsV2' test.out

#- 9 GetSessionHistoryDetailed
samples/cli/sample-apps Sessionbrowser getSessionHistoryDetailed \
    --matchID 'B12Hrb0nFfkJYZGW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetSessionHistoryDetailed' test.out

#- 10 UserQuerySession
samples/cli/sample-apps Sessionbrowser userQuerySession \
    --namespace $AB_NAMESPACE \
    --gameMode 'LSzy6kGDf1sigNWF' \
    --gameVersion 'AKFwvtGcaSjQRXNY' \
    --joinable 'YHtsC1LLibzZ9Tn4' \
    --limit '73' \
    --matchExist '6bKEQofHWihKgnCO' \
    --matchId 'ydEdtpNFItylZaOy' \
    --offset '27' \
    --serverStatus 'ZtxcyVYwZ9yHlr4V' \
    --userId 'P0g4w9EkIraiCfvf' \
    --sessionType 'KGEkZkTrM7JrCb8T' \
    > test.out 2>&1
eval_tap $? 10 'UserQuerySession' test.out

#- 11 CreateSession
samples/cli/sample-apps Sessionbrowser createSession \
    --namespace $AB_NAMESPACE \
    --body '{"game_session_setting": {"allow_join_in_progress": true, "current_internal_player": 15, "current_player": 48, "map_name": "juOtx8yJC3Qj2MKI", "max_internal_player": 13, "max_player": 37, "mode": "q90XWkP4hjWD91pR", "num_bot": 35, "password": "RM6Se1mnFBHvxzsf", "settings": {"4kdVL8Ujokhr798J": {}, "Q6mJlx9tIGZGeqMe": {}, "7UYjYXhYgQxVpCJl": {}}}, "game_version": "KiNHMtTQo75S1eyV", "namespace": "kMn2pAsgN4RowOBJ", "session_type": "P1Aan98MfYemPwvJ", "username": "fa1IXVAkCwiUoEzA"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateSession' test.out

#- 12 GetSessionByUserIDs
samples/cli/sample-apps Sessionbrowser getSessionByUserIDs \
    --namespace $AB_NAMESPACE \
    --userIds 'od7gqkBH8ByiBGcB' \
    > test.out 2>&1
eval_tap $? 12 'GetSessionByUserIDs' test.out

#- 13 GetSession
samples/cli/sample-apps Sessionbrowser getSession \
    --namespace $AB_NAMESPACE \
    --sessionID '4WJJxLyKF6MaOvcw' \
    > test.out 2>&1
eval_tap $? 13 'GetSession' test.out

#- 14 UpdateSession
samples/cli/sample-apps Sessionbrowser updateSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'k1gHNfaqBhkL7w6j' \
    --body '{"game_max_player": 72}' \
    > test.out 2>&1
eval_tap $? 14 'UpdateSession' test.out

#- 15 DeleteSession
samples/cli/sample-apps Sessionbrowser deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'QQRoY4AVeRue24li' \
    > test.out 2>&1
eval_tap $? 15 'DeleteSession' test.out

#- 16 JoinSession
samples/cli/sample-apps Sessionbrowser joinSession \
    --namespace $AB_NAMESPACE \
    --sessionID '3sVCUvQRg2eQ6fOR' \
    --body '{"password": "BH9OWu0b7WGNEypD"}' \
    > test.out 2>&1
eval_tap $? 16 'JoinSession' test.out

#- 17 DeleteSessionLocalDS
samples/cli/sample-apps Sessionbrowser deleteSessionLocalDS \
    --namespace $AB_NAMESPACE \
    --sessionID 'i65MXNo6oEDVZc0Z' \
    > test.out 2>&1
eval_tap $? 17 'DeleteSessionLocalDS' test.out

#- 18 AddPlayerToSession
samples/cli/sample-apps Sessionbrowser addPlayerToSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'U6nf13u5ig7SWCaM' \
    --body '{"as_spectator": true, "user_id": "kRmN1gIODYRlzqOL"}' \
    > test.out 2>&1
eval_tap $? 18 'AddPlayerToSession' test.out

#- 19 RemovePlayerFromSession
samples/cli/sample-apps Sessionbrowser removePlayerFromSession \
    --namespace $AB_NAMESPACE \
    --sessionID '3jQ6suIc4cw5FqHl' \
    --userID 'uINvc0i8kKrQz3aV' \
    > test.out 2>&1
eval_tap $? 19 'RemovePlayerFromSession' test.out

#- 20 UpdateSettings
samples/cli/sample-apps Sessionbrowser updateSettings \
    --namespace $AB_NAMESPACE \
    --sessionID 'v9OXvP9yP9un9dSA' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateSettings' test.out

#- 21 GetRecentPlayer
samples/cli/sample-apps Sessionbrowser getRecentPlayer \
    --namespace $AB_NAMESPACE \
    --userID 'EstxxcZr9UV097uo' \
    > test.out 2>&1
eval_tap $? 21 'GetRecentPlayer' test.out


rm -f "tmp.dat"

exit $EXIT_CODE