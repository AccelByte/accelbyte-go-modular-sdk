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
echo "1..30"

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
samples/cli/sample-apps Matchmaking getHealthcheckInfo \
    > test.out 2>&1
eval_tap $? 2 'GetHealthcheckInfo' test.out

#- 3 HandlerV3Healthz
samples/cli/sample-apps Matchmaking handlerV3Healthz \
    > test.out 2>&1
eval_tap $? 3 'HandlerV3Healthz' test.out

#- 4 GetAllChannelsHandler
samples/cli/sample-apps Matchmaking getAllChannelsHandler \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "bpwhD6hd", "description": "uyexROgn", "find_match_timeout_seconds": 68, "game_mode": "I7hz7DJd", "joinable": false, "max_delay_ms": 53, "rule_set": {"alliance": {"combination": {"alliances": [{"max": 68, "min": 23, "name": "H7cBzR2E"}, {"max": 18, "min": 96, "name": "8tDunSCA"}, {"max": 68, "min": 49, "name": "KRpo1qyF"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 83, "role_flexing_second": 9}, "max_number": 33, "min_number": 68, "player_max_number": 81, "player_min_number": 98}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 25, "min": 31, "name": "IBs04r7i"}, {"max": 13, "min": 2, "name": "yqkJCPI6"}, {"max": 93, "min": 2, "name": "CL6d29LT"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 98, "role_flexing_second": 24}, "duration": 28, "max_number": 90, "min_number": 99, "player_max_number": 99, "player_min_number": 79}, {"combination": {"alliances": [{"max": 0, "min": 32, "name": "DpQc3g5I"}, {"max": 20, "min": 37, "name": "AZbbHDvE"}, {"max": 43, "min": 45, "name": "LVYmFO1q"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 3, "role_flexing_second": 15}, "duration": 36, "max_number": 36, "min_number": 32, "player_max_number": 6, "player_min_number": 67}, {"combination": {"alliances": [{"max": 87, "min": 75, "name": "xpXuAhuK"}, {"max": 66, "min": 73, "name": "91Zsvyex"}, {"max": 83, "min": 7, "name": "1E9nOOMm"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 36, "role_flexing_second": 87}, "duration": 52, "max_number": 24, "min_number": 45, "player_max_number": 100, "player_min_number": 90}], "flexing_rule": [{"attribute": "PLdyugFh", "criteria": "WKEIW6L5", "duration": 16, "reference": 0.9203880161249842}, {"attribute": "jSpWF6F9", "criteria": "yGV3R6j4", "duration": 62, "reference": 0.16730936854827072}, {"attribute": "qz34mVnZ", "criteria": "7RHYX28T", "duration": 88, "reference": 0.03283659067229028}], "match_options": {"options": [{"name": "JfkVu9lC", "type": "HYtHgy1f"}, {"name": "nRs8zkPt", "type": "dTFU4aEE"}, {"name": "UKV6r0bG", "type": "A8hg8vot"}]}, "matching_rule": [{"attribute": "2M16jhLw", "criteria": "dziv43jG", "reference": 0.45008829760510505}, {"attribute": "gRgBvQIY", "criteria": "8jh9MSvn", "reference": 0.6610975241526613}, {"attribute": "kRRUS7m8", "criteria": "gJ1vTOvR", "reference": 0.7911393277089876}], "rebalance_enable": false, "sub_game_modes": {"2LCdTiza": {"alliance": {"combination": {"alliances": [{"max": 80, "min": 94, "name": "TergVC3S"}, {"max": 97, "min": 13, "name": "C4XtWU7y"}, {"max": 40, "min": 32, "name": "rHxLYwJV"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 27, "role_flexing_second": 62}, "max_number": 35, "min_number": 77, "player_max_number": 4, "player_min_number": 31}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 37, "min": 2, "name": "rdfuNv2Q"}, {"max": 14, "min": 49, "name": "MwXr7TEq"}, {"max": 63, "min": 27, "name": "CHheimBu"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 84, "role_flexing_second": 82}, "duration": 89, "max_number": 100, "min_number": 47, "player_max_number": 33, "player_min_number": 61}, {"combination": {"alliances": [{"max": 7, "min": 50, "name": "vSlsfAVt"}, {"max": 9, "min": 25, "name": "TNvYSWzi"}, {"max": 14, "min": 90, "name": "C4sLuncT"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 64, "role_flexing_second": 5}, "duration": 11, "max_number": 23, "min_number": 77, "player_max_number": 43, "player_min_number": 55}, {"combination": {"alliances": [{"max": 37, "min": 93, "name": "V0wT5sJS"}, {"max": 6, "min": 19, "name": "wKcfRVTl"}, {"max": 55, "min": 67, "name": "bKDtvdQE"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 21, "role_flexing_second": 48}, "duration": 62, "max_number": 67, "min_number": 44, "player_max_number": 100, "player_min_number": 38}], "name": "Dhnu2yS0"}, "wLsGCSzY": {"alliance": {"combination": {"alliances": [{"max": 48, "min": 28, "name": "DU8XMfd1"}, {"max": 76, "min": 85, "name": "AAqEI8Rr"}, {"max": 42, "min": 58, "name": "07wFK952"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 20, "role_flexing_second": 71}, "max_number": 66, "min_number": 78, "player_max_number": 27, "player_min_number": 10}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 58, "min": 12, "name": "TjktBocA"}, {"max": 21, "min": 28, "name": "BKWlB7YJ"}, {"max": 84, "min": 85, "name": "sw573Au2"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 83, "role_flexing_second": 68}, "duration": 58, "max_number": 28, "min_number": 31, "player_max_number": 2, "player_min_number": 96}, {"combination": {"alliances": [{"max": 63, "min": 9, "name": "BCraYU2n"}, {"max": 89, "min": 53, "name": "u5In2mxq"}, {"max": 82, "min": 94, "name": "dKxf5GZs"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 31, "role_flexing_second": 6}, "duration": 74, "max_number": 56, "min_number": 18, "player_max_number": 57, "player_min_number": 44}, {"combination": {"alliances": [{"max": 38, "min": 67, "name": "LZm700Kt"}, {"max": 76, "min": 60, "name": "GgVjtQ14"}, {"max": 91, "min": 53, "name": "ZPK5HBxP"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 42, "role_flexing_second": 20}, "duration": 79, "max_number": 2, "min_number": 12, "player_max_number": 28, "player_min_number": 51}], "name": "Jn5mHW7i"}, "qKxDPpt6": {"alliance": {"combination": {"alliances": [{"max": 73, "min": 39, "name": "2fSmWlpR"}, {"max": 77, "min": 72, "name": "BjLDNk6i"}, {"max": 10, "min": 1, "name": "tKpjmejY"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 79, "role_flexing_second": 62}, "max_number": 31, "min_number": 32, "player_max_number": 89, "player_min_number": 78}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 8, "min": 25, "name": "PiGE2Rbm"}, {"max": 60, "min": 67, "name": "PZZV5GDo"}, {"max": 60, "min": 7, "name": "4FnPXINg"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 7, "role_flexing_second": 27}, "duration": 58, "max_number": 55, "min_number": 15, "player_max_number": 17, "player_min_number": 97}, {"combination": {"alliances": [{"max": 72, "min": 79, "name": "A4og6ys6"}, {"max": 18, "min": 1, "name": "YWfcm9qz"}, {"max": 80, "min": 91, "name": "ngqHJqAp"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 65, "role_flexing_second": 60}, "duration": 30, "max_number": 74, "min_number": 80, "player_max_number": 73, "player_min_number": 8}, {"combination": {"alliances": [{"max": 45, "min": 72, "name": "pKntFK3O"}, {"max": 88, "min": 43, "name": "spixd07L"}, {"max": 36, "min": 44, "name": "Y4S96fQi"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 59, "role_flexing_second": 53}, "duration": 98, "max_number": 46, "min_number": 64, "player_max_number": 89, "player_min_number": 39}], "name": "f1CsfpYa"}}}, "session_queue_timeout_seconds": 84, "social_matchmaking": true, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel '1zTPU4GN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteChannelHandler' test.out

#- 7 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "g3BURYIj", "players": [{"results": [{"attribute": "FMzwwiTr", "value": 0.35648089579524833}, {"attribute": "xNvec9UO", "value": 0.4193395633117969}, {"attribute": "nDO5gHSy", "value": 0.8798295185871774}], "user_id": "qc96L4XB"}, {"results": [{"attribute": "UW2Cf17j", "value": 0.6977362365237033}, {"attribute": "JYoMQRFf", "value": 0.06589781880851342}, {"attribute": "nlSlXD5c", "value": 0.041797871978351164}], "user_id": "OkpAXeLt"}, {"results": [{"attribute": "lfXelelO", "value": 0.1340790502780398}, {"attribute": "k6B9sRVH", "value": 0.8304364324918244}, {"attribute": "JmCOD71n", "value": 0.2066298521928306}], "user_id": "ysK8HGff"}]}' \
    > test.out 2>&1
eval_tap $? 7 'StoreMatchResults' test.out

#- 8 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "3DciEELn"}' \
    > test.out 2>&1
eval_tap $? 8 'Rebalance' test.out

#- 9 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "kjcmXkOL", "client_version": "dFPgLCyO", "deployment": "HmQrZWKA", "error_code": 54, "error_message": "H69eZeah", "game_mode": "pBjck3E2", "joinable": true, "match_id": "nscapjVU", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 85, "party_attributes": {"L2Yi6pQG": {}, "Tbg8rEvs": {}, "IR4TIQsM": {}}, "party_id": "Z2XCiaIJ", "party_members": [{"extra_attributes": {"nF7WFg4z": {}, "9Q61HZ29": {}, "wKoWZCKp": {}}, "user_id": "TFqMsDCR"}, {"extra_attributes": {"JyiAATKU": {}, "9Idbexpx": {}, "JJdt99cq": {}}, "user_id": "h0eKrWpi"}, {"extra_attributes": {"4C2CFrCZ": {}, "4PfF5sQt": {}, "gbKMcZJm": {}}, "user_id": "HyEhmfPz"}], "ticket_created_at": 98, "ticket_id": "lwlKrIOM"}, {"first_ticket_created_at": 45, "party_attributes": {"8Nsc9pks": {}, "vSXXNsFV": {}, "ZuCYNtut": {}}, "party_id": "KReN8gQK", "party_members": [{"extra_attributes": {"NPEbzQrm": {}, "KVfufTQi": {}, "Y8ceMItp": {}}, "user_id": "uquu9MgX"}, {"extra_attributes": {"hCP41S8O": {}, "bI73AJmD": {}, "xi2tGtf8": {}}, "user_id": "Tb5cHDxZ"}, {"extra_attributes": {"e8fU6MhM": {}, "lTYVWDo7": {}, "FIujgck4": {}}, "user_id": "IJQ6ZMkG"}], "ticket_created_at": 44, "ticket_id": "vJqdjS6V"}, {"first_ticket_created_at": 6, "party_attributes": {"lVWUMlS3": {}, "GjLRcPI3": {}, "rqnTehD1": {}}, "party_id": "9lmv1dox", "party_members": [{"extra_attributes": {"PzIbVE2F": {}, "jUkGZgFO": {}, "t5EruCaL": {}}, "user_id": "gcoC9gW8"}, {"extra_attributes": {"s9MRxd9S": {}, "OceB0oIz": {}, "AOMGQC4G": {}}, "user_id": "0fRyEG7i"}, {"extra_attributes": {"oUqIs7NM": {}, "rF6VmRlh": {}, "iDIgDerc": {}}, "user_id": "xaDe5g3c"}], "ticket_created_at": 34, "ticket_id": "f1rhAhoG"}]}, {"matching_parties": [{"first_ticket_created_at": 24, "party_attributes": {"8mBaxLyA": {}, "TmyKuEtb": {}, "DTftflrQ": {}}, "party_id": "H3YUVboP", "party_members": [{"extra_attributes": {"SHm0aw7y": {}, "8Q8Fms5L": {}, "ntLmWClC": {}}, "user_id": "PqpsESIB"}, {"extra_attributes": {"lAZ7rEZd": {}, "3NAHTfmt": {}, "JHGZvIRw": {}}, "user_id": "MS1tqQjC"}, {"extra_attributes": {"Q5nxr963": {}, "d4c5UmPR": {}, "QryEpMGT": {}}, "user_id": "fUTJhNyG"}], "ticket_created_at": 14, "ticket_id": "aPduXgsS"}, {"first_ticket_created_at": 37, "party_attributes": {"k8FEtaSP": {}, "Bj3PIFLN": {}, "iiHWTzT9": {}}, "party_id": "MXGEIC8I", "party_members": [{"extra_attributes": {"BQWaLg2u": {}, "GGcO0O6J": {}, "TPyrVzBt": {}}, "user_id": "nnz7XCMt"}, {"extra_attributes": {"acBDk76T": {}, "dVWyHZF8": {}, "6keQktOp": {}}, "user_id": "Wb4gsKKF"}, {"extra_attributes": {"sVsMssJb": {}, "jCdAp67f": {}, "0ms5uZ9s": {}}, "user_id": "XXqsCSRk"}], "ticket_created_at": 12, "ticket_id": "QG06JC3x"}, {"first_ticket_created_at": 59, "party_attributes": {"X2OlK6yh": {}, "WPkQSMrE": {}, "Qsrf03rx": {}}, "party_id": "NK7fVpT8", "party_members": [{"extra_attributes": {"LUcQPbQ3": {}, "f0VfQc3o": {}, "y4uXcqQx": {}}, "user_id": "GymOXwau"}, {"extra_attributes": {"Hpw7hFwn": {}, "8563TTKL": {}, "hbcvC84B": {}}, "user_id": "C1H6psUH"}, {"extra_attributes": {"imSrECtg": {}, "oGG7xROP": {}, "qAEOIXsu": {}}, "user_id": "MJZ9Do9f"}], "ticket_created_at": 6, "ticket_id": "K5Phl8ib"}]}, {"matching_parties": [{"first_ticket_created_at": 92, "party_attributes": {"OBQTBTvf": {}, "V6wYoGdx": {}, "UVMtXCdo": {}}, "party_id": "PwsvQo86", "party_members": [{"extra_attributes": {"p6v2JgTB": {}, "8vy7mMSE": {}, "b6dlfFCc": {}}, "user_id": "mxDlBiou"}, {"extra_attributes": {"yN0XrLSE": {}, "KtqnIleY": {}, "LBVItpBx": {}}, "user_id": "dI3IzXYR"}, {"extra_attributes": {"3GnQdd9N": {}, "uYQrBgYF": {}, "xiZnKeVn": {}}, "user_id": "MbeJWeur"}], "ticket_created_at": 89, "ticket_id": "BBGjKTBp"}, {"first_ticket_created_at": 50, "party_attributes": {"C23nKBHu": {}, "xJQPV5Pc": {}, "IlLd1dGx": {}}, "party_id": "J40eWJ9f", "party_members": [{"extra_attributes": {"DBxa7GT0": {}, "8zmZdg5K": {}, "5TV8l1GK": {}}, "user_id": "moEWTj7Q"}, {"extra_attributes": {"dWa0Ddxv": {}, "qDljouFV": {}, "TttdkfXU": {}}, "user_id": "Ve10joBW"}, {"extra_attributes": {"WfLlyKov": {}, "jgitENfU": {}, "zvaPKh76": {}}, "user_id": "SoVjfra3"}], "ticket_created_at": 77, "ticket_id": "NHeCv0XB"}, {"first_ticket_created_at": 64, "party_attributes": {"Zo6p3Ksq": {}, "QqzxiDSy": {}, "u8o8vNuA": {}}, "party_id": "f0z9MJxw", "party_members": [{"extra_attributes": {"ZYHLn33s": {}, "Z2htOj1g": {}, "B5eWt2hi": {}}, "user_id": "dT6VfaXO"}, {"extra_attributes": {"KmAOswBw": {}, "F5sEe2oH": {}, "YCpuGW33": {}}, "user_id": "bNptgRnL"}, {"extra_attributes": {"5TUZfwvm": {}, "qokoimo8": {}, "JAJdh7f1": {}}, "user_id": "unBb6XmJ"}], "ticket_created_at": 23, "ticket_id": "gj7HOLPo"}]}], "namespace": "6rB6bGdm", "party_attributes": {"6wVr5Ber": {}, "eCKm4hbw": {}, "A8BDcTPx": {}}, "party_id": "yI0AdH6g", "queued_at": 65, "region": "05Yt7JGT", "server_name": "w1OV7kJJ", "status": "QY4nb4Oi", "ticket_id": "1IfeL5Uk", "updated_at": "1986-08-31T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'QueueSessionHandler' test.out

#- 10 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "DzaAUjp6"}' \
    > test.out 2>&1
eval_tap $? 10 'DequeueSessionHandler' test.out

#- 11 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'qb8PBZjE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'QuerySessionHandler' test.out

#- 12 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 50, "userID": "JrFdydSG", "weight": 0.7760123704822701}' \
    > test.out 2>&1
eval_tap $? 12 'UpdatePlayTimeWeight' test.out

#- 13 GetAllPartyInAllChannel
samples/cli/sample-apps Matchmaking getAllPartyInAllChannel \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'GetAllPartyInAllChannel' test.out

#- 14 BulkGetSessions
samples/cli/sample-apps Matchmaking bulkGetSessions \
    --namespace $AB_NAMESPACE \
    --matchIDs 'ikJQmcNH' \
    > test.out 2>&1
eval_tap $? 14 'BulkGetSessions' test.out

#- 15 ExportChannels
samples/cli/sample-apps Matchmaking exportChannels \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'ExportChannels' test.out

#- 16 ImportChannels
samples/cli/sample-apps Matchmaking importChannels \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'pzU3pT9i' \
    > test.out 2>&1
eval_tap $? 16 'ImportChannels' test.out

#- 17 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'Pj8udEmo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetSingleMatchmakingChannel' test.out

#- 18 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'UW0NDanA' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "RU37NTOk", "description": "3l1oc7m1", "findMatchTimeoutSeconds": 38, "joinable": true, "max_delay_ms": 56, "ruleSet": {"alliance": {"combination": {"alliances": [{"max": 49, "min": 76, "name": "scgLaZZl"}, {"max": 38, "min": 85, "name": "lf6vf1EQ"}, {"max": 92, "min": 75, "name": "QIWflyqE"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 0, "role_flexing_second": 71}, "maxNumber": 1, "minNumber": 3, "playerMaxNumber": 70, "playerMinNumber": 56}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 91, "min": 37, "name": "Qws5qIoK"}, {"max": 18, "min": 90, "name": "tTPRV3D3"}, {"max": 75, "min": 52, "name": "Oq62EEUO"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 45, "role_flexing_second": 33}, "duration": 0, "max_number": 55, "min_number": 71, "player_max_number": 35, "player_min_number": 0}, {"combination": {"alliances": [{"max": 67, "min": 83, "name": "7yEqVtEH"}, {"max": 10, "min": 99, "name": "eGFeKZiw"}, {"max": 99, "min": 19, "name": "JUTcBkTY"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 94, "role_flexing_second": 48}, "duration": 56, "max_number": 65, "min_number": 7, "player_max_number": 89, "player_min_number": 27}, {"combination": {"alliances": [{"max": 31, "min": 94, "name": "QhMZ5bNp"}, {"max": 73, "min": 27, "name": "JP7lgpJZ"}, {"max": 16, "min": 25, "name": "AH4QE27u"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 68, "role_flexing_second": 82}, "duration": 68, "max_number": 47, "min_number": 58, "player_max_number": 18, "player_min_number": 71}], "flexingRules": [{"attribute": "LXAqnwDJ", "criteria": "PSFfk1hx", "duration": 82, "reference": 0.7828571182140599}, {"attribute": "Mq12pgCB", "criteria": "auKlLcpc", "duration": 85, "reference": 0.2755695216016647}, {"attribute": "JWyNE5Mu", "criteria": "F1uY9VQV", "duration": 5, "reference": 0.3589713237548421}], "match_options": {"options": [{"name": "o1sVRbeJ", "type": "qNlpMl9S"}, {"name": "aQvBUmIr", "type": "uaiI1uNP"}, {"name": "xG0p5anP", "type": "bpXGWZth"}]}, "matchingRules": [{"attribute": "gAdRHahk", "criteria": "HrCEBenD", "reference": 0.12372837127858105}, {"attribute": "ISN886kW", "criteria": "8s0QxrVw", "reference": 0.23586815283327234}, {"attribute": "yjfENVp6", "criteria": "AIaCxBat", "reference": 0.3818349770638796}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 97, "socialMatchmaking": false, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchmakingChannel' test.out

#- 19 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'JGwuqeQi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'GetAllPartyInChannel' test.out

#- 20 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'slr4QpQJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'GetAllSessionsInChannel' test.out

#- 21 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'IvWqqvsJ' \
    --matchID 'OehPrxaE' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["P6l5tWlM", "cwNdXDXq", "TpqtAFUl"], "party_id": "34b0Kn8g", "user_id": "hgAcjlEg"}' \
    > test.out 2>&1
eval_tap $? 21 'AddUserIntoSessionInChannel' test.out

#- 22 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'qwwFN1jQ' \
    --matchID 'h84rxdDZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'DeleteSessionInChannel' test.out

#- 23 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'nYAYFhD0' \
    --matchID 'PnFp4r2N' \
    --namespace $AB_NAMESPACE \
    --userID '7ZzOy0f8' \
    > test.out 2>&1
eval_tap $? 23 'DeleteUserFromSessionInChannel' test.out

#- 24 SearchSessions
eval_tap 0 24 'SearchSessions # SKIP deprecated' test.out

#- 25 GetSessionHistoryDetailed
eval_tap 0 25 'GetSessionHistoryDetailed # SKIP deprecated' test.out

#- 26 PublicGetMessages
samples/cli/sample-apps Matchmaking publicGetMessages \
    > test.out 2>&1
eval_tap $? 26 'PublicGetMessages' test.out

#- 27 PublicGetAllMatchmakingChannel
samples/cli/sample-apps Matchmaking publicGetAllMatchmakingChannel \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'PublicGetAllMatchmakingChannel' test.out

#- 28 PublicGetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking publicGetSingleMatchmakingChannel \
    --channelName 'th5MvuFj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'PublicGetSingleMatchmakingChannel' test.out

#- 29 SearchSessionsV2
eval_tap 0 29 'SearchSessionsV2 # SKIP deprecated' test.out

#- 30 VersionCheckHandler
samples/cli/sample-apps Matchmaking versionCheckHandler \
    > test.out 2>&1
eval_tap $? 30 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE