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
echo "1..39"

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
    --limit '81' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCanMatchOnDifferentTeam", "deployment": "jCMS9c8q", "description": "5n2EB5hf", "find_match_timeout_seconds": 77, "game_mode": "2ONU3R8e", "joinable": false, "max_delay_ms": 77, "region_expansion_range_ms": 100, "region_expansion_rate_ms": 34, "region_latency_initial_range_ms": 23, "region_latency_max_ms": 65, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 62, "min": 19, "name": "FN0pGpHS"}, {"max": 88, "min": 55, "name": "tn9cFiI8"}, {"max": 37, "min": 1, "name": "x3Tqnz7X"}], [{"max": 43, "min": 70, "name": "Zo0fGQYn"}, {"max": 38, "min": 96, "name": "RMXj16Iu"}, {"max": 69, "min": 54, "name": "cCMiyIaP"}], [{"max": 18, "min": 12, "name": "PXi7C7lr"}, {"max": 31, "min": 74, "name": "5RgjvMtK"}, {"max": 77, "min": 81, "name": "529z6YtF"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 48, "role_flexing_second": 45}, "max_number": 55, "min_number": 50, "player_max_number": 46, "player_min_number": 100}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 25, "min": 54, "name": "ZndWtU1U"}, {"max": 23, "min": 55, "name": "a2BDI3xy"}, {"max": 19, "min": 43, "name": "N8ErTGVn"}], [{"max": 34, "min": 61, "name": "3pW33RUE"}, {"max": 72, "min": 0, "name": "PLjEtoNc"}, {"max": 62, "min": 58, "name": "j2HXnFjB"}], [{"max": 56, "min": 18, "name": "0Wq033i8"}, {"max": 26, "min": 12, "name": "kOmM4tqh"}, {"max": 56, "min": 39, "name": "OBWKdPYk"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 89, "role_flexing_second": 75}, "duration": 92, "max_number": 57, "min_number": 64, "player_max_number": 96, "player_min_number": 46}, {"combination": {"alliances": [[{"max": 77, "min": 73, "name": "RclWNXu6"}, {"max": 22, "min": 56, "name": "LWM1ez0t"}, {"max": 91, "min": 95, "name": "yLQ3bwS3"}], [{"max": 92, "min": 53, "name": "XOhRDcfG"}, {"max": 86, "min": 78, "name": "fxy4YlP7"}, {"max": 24, "min": 14, "name": "U8ESSNQL"}], [{"max": 9, "min": 1, "name": "2OyMgTdc"}, {"max": 60, "min": 43, "name": "hTc4RMMV"}, {"max": 11, "min": 36, "name": "oM3Ptx83"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 87, "role_flexing_second": 59}, "duration": 98, "max_number": 10, "min_number": 75, "player_max_number": 90, "player_min_number": 3}, {"combination": {"alliances": [[{"max": 63, "min": 76, "name": "r7PgJJtR"}, {"max": 45, "min": 78, "name": "6c9UU9Ah"}, {"max": 6, "min": 25, "name": "tJ8gMbEL"}], [{"max": 23, "min": 66, "name": "ZjoRwMSo"}, {"max": 46, "min": 69, "name": "aBQ8fzNB"}, {"max": 4, "min": 73, "name": "JN9r4pJi"}], [{"max": 95, "min": 36, "name": "BHHADL7v"}, {"max": 64, "min": 57, "name": "EfZ7Azpl"}, {"max": 95, "min": 45, "name": "c9DadWrN"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 27, "role_flexing_second": 52}, "duration": 38, "max_number": 57, "min_number": 73, "player_max_number": 18, "player_min_number": 66}], "batch_size": 40, "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 98, "flex_flat_step_range": 37, "flex_immunity_count": 89, "flex_range_max": 24, "flex_rate_ms": 86, "flex_step_max": 91, "force_authority_match": true, "initial_step_range": 54, "mmr_max": 70, "mmr_mean": 52, "mmr_min": 100, "mmr_std_dev": 46, "override_mmr_data": true, "use_bucket_mmr": false, "use_flat_flex_step": true}, "flexing_rule": [{"attribute": "cxMGHAw2", "criteria": "eqaC7nvu", "duration": 47, "reference": 0.8150584558460171}, {"attribute": "nTCfYcqS", "criteria": "2eaoapve", "duration": 42, "reference": 0.10068113351444252}, {"attribute": "dh08ka7i", "criteria": "kJGLeF32", "duration": 58, "reference": 0.44862286236205584}], "match_options": {"options": [{"name": "3bgK7srA", "type": "WWYDVAL3"}, {"name": "0wWiHMXZ", "type": "zNl4rDfm"}, {"name": "VPI0o26N", "type": "lifejPuG"}]}, "matching_rule": [{"attribute": "Os7ZmuCm", "criteria": "McpnCasz", "reference": 0.8915379343461609}, {"attribute": "nus5mNvq", "criteria": "DoJFXqYz", "reference": 0.5569843787670536}, {"attribute": "LKUoTaSw", "criteria": "AQJPizFd", "reference": 0.6242021972551847}], "rebalance_enable": true, "sort_ticket": {"search_result": "random", "ticket_queue": "distance"}, "sort_tickets": [{"search_result": "random", "threshold": 96, "ticket_queue": "largestPartySize"}, {"search_result": "random", "threshold": 67, "ticket_queue": "oldestTicketAge"}, {"search_result": "random", "threshold": 71, "ticket_queue": "largestPartySize"}], "sub_game_modes": {"OWNsriUW": {"alliance": {"combination": {"alliances": [[{"max": 54, "min": 17, "name": "eXiDlbgr"}, {"max": 38, "min": 46, "name": "JpGs5lhY"}, {"max": 18, "min": 43, "name": "mK0sunCe"}], [{"max": 55, "min": 76, "name": "ulXNlrQ2"}, {"max": 98, "min": 13, "name": "Ui9YhS5u"}, {"max": 75, "min": 54, "name": "qB0eQFMd"}], [{"max": 49, "min": 19, "name": "pkex5qfu"}, {"max": 74, "min": 13, "name": "xWodBFiD"}, {"max": 96, "min": 17, "name": "13g3ZA8N"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 87, "role_flexing_second": 83}, "max_number": 66, "min_number": 9, "player_max_number": 62, "player_min_number": 54}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 91, "min": 0, "name": "Gv9ePuuj"}, {"max": 38, "min": 6, "name": "mSUrcyxO"}, {"max": 74, "min": 74, "name": "wh7B54hU"}], [{"max": 37, "min": 12, "name": "2FjdkSS7"}, {"max": 14, "min": 42, "name": "CBhqibnI"}, {"max": 80, "min": 18, "name": "jOfD0E3n"}], [{"max": 62, "min": 50, "name": "1gsq3Uoi"}, {"max": 48, "min": 29, "name": "q0dcB1eX"}, {"max": 84, "min": 88, "name": "gSqTXx7J"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 71, "role_flexing_second": 48}, "duration": 47, "max_number": 83, "min_number": 29, "player_max_number": 2, "player_min_number": 57}, {"combination": {"alliances": [[{"max": 51, "min": 41, "name": "OBdY4Pe8"}, {"max": 19, "min": 9, "name": "ZlvqNaQl"}, {"max": 86, "min": 80, "name": "hmrFRp80"}], [{"max": 98, "min": 81, "name": "QdEIBsRW"}, {"max": 37, "min": 28, "name": "XWepIQS9"}, {"max": 67, "min": 80, "name": "TT27T1mC"}], [{"max": 68, "min": 17, "name": "Rn8GrxeX"}, {"max": 31, "min": 97, "name": "Y2VBWRmP"}, {"max": 96, "min": 67, "name": "rA8ID0Bw"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 83, "role_flexing_second": 86}, "duration": 28, "max_number": 77, "min_number": 68, "player_max_number": 93, "player_min_number": 100}, {"combination": {"alliances": [[{"max": 51, "min": 22, "name": "XqCfsY66"}, {"max": 81, "min": 80, "name": "St3rDaTJ"}, {"max": 70, "min": 33, "name": "m195taX2"}], [{"max": 87, "min": 90, "name": "o0L7wlcK"}, {"max": 38, "min": 12, "name": "GogIuoV7"}, {"max": 36, "min": 18, "name": "j86FdYH8"}], [{"max": 95, "min": 63, "name": "iuJVYA1d"}, {"max": 45, "min": 69, "name": "oup9uodx"}, {"max": 67, "min": 88, "name": "HPhyvRzz"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 93, "role_flexing_second": 31}, "duration": 69, "max_number": 91, "min_number": 20, "player_max_number": 93, "player_min_number": 93}], "name": "gtfTPVpw"}, "3SIdGgKA": {"alliance": {"combination": {"alliances": [[{"max": 27, "min": 95, "name": "KkAsVTh6"}, {"max": 24, "min": 2, "name": "38qccfS6"}, {"max": 40, "min": 58, "name": "EWY4Lo6S"}], [{"max": 72, "min": 11, "name": "J1Nkng3R"}, {"max": 97, "min": 67, "name": "LG3rRleN"}, {"max": 42, "min": 48, "name": "HGMlQiec"}], [{"max": 53, "min": 47, "name": "7vOGngY6"}, {"max": 30, "min": 91, "name": "X9Xw4rX0"}, {"max": 7, "min": 37, "name": "9LocXHuP"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 16, "role_flexing_second": 24}, "max_number": 79, "min_number": 55, "player_max_number": 26, "player_min_number": 50}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 90, "min": 9, "name": "4sXvYstw"}, {"max": 62, "min": 36, "name": "ywFNpNEb"}, {"max": 29, "min": 43, "name": "udxp3y0v"}], [{"max": 51, "min": 64, "name": "S7NJmSu3"}, {"max": 46, "min": 97, "name": "fRUWcTNF"}, {"max": 85, "min": 17, "name": "1Ta2CyMx"}], [{"max": 18, "min": 48, "name": "Pzk5pQmw"}, {"max": 50, "min": 49, "name": "1UGR9uDH"}, {"max": 46, "min": 8, "name": "yUJPeBYH"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 73, "role_flexing_second": 29}, "duration": 95, "max_number": 61, "min_number": 43, "player_max_number": 17, "player_min_number": 81}, {"combination": {"alliances": [[{"max": 83, "min": 69, "name": "gRBS59XC"}, {"max": 75, "min": 94, "name": "mCCTsxBY"}, {"max": 75, "min": 86, "name": "RK6GSosX"}], [{"max": 65, "min": 49, "name": "hNzxrCCt"}, {"max": 31, "min": 47, "name": "NJkA6hNP"}, {"max": 74, "min": 53, "name": "m0mvYswI"}], [{"max": 61, "min": 86, "name": "e61tDO0Q"}, {"max": 4, "min": 33, "name": "zVJnC3mn"}, {"max": 8, "min": 13, "name": "Jpv9tRWs"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 57, "role_flexing_second": 71}, "duration": 33, "max_number": 13, "min_number": 100, "player_max_number": 41, "player_min_number": 58}, {"combination": {"alliances": [[{"max": 90, "min": 28, "name": "ud4affDX"}, {"max": 15, "min": 2, "name": "QC6Zraic"}, {"max": 26, "min": 93, "name": "uKSszKq4"}], [{"max": 60, "min": 31, "name": "NMYx01sp"}, {"max": 5, "min": 54, "name": "5CcgnUdi"}, {"max": 65, "min": 100, "name": "kyR4LfVt"}], [{"max": 89, "min": 3, "name": "EnayElyl"}, {"max": 77, "min": 45, "name": "sHRMMYRN"}, {"max": 80, "min": 40, "name": "mdrCutK9"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 72, "role_flexing_second": 99}, "duration": 55, "max_number": 36, "min_number": 21, "player_max_number": 31, "player_min_number": 95}], "name": "9mM6MkHy"}, "Wj8OkSHm": {"alliance": {"combination": {"alliances": [[{"max": 92, "min": 18, "name": "CGkg5jth"}, {"max": 48, "min": 32, "name": "EvWowsXV"}, {"max": 97, "min": 72, "name": "rc3ctibj"}], [{"max": 80, "min": 45, "name": "sZO0Cjpc"}, {"max": 79, "min": 34, "name": "5O95S8FW"}, {"max": 59, "min": 81, "name": "IrTqB1M8"}], [{"max": 72, "min": 61, "name": "UZmcteOf"}, {"max": 75, "min": 88, "name": "tTY1V0BK"}, {"max": 88, "min": 92, "name": "A1CJow7J"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 67, "role_flexing_second": 46}, "max_number": 8, "min_number": 38, "player_max_number": 59, "player_min_number": 15}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 52, "min": 21, "name": "DapUNxa8"}, {"max": 67, "min": 66, "name": "fNlLfzba"}, {"max": 67, "min": 50, "name": "G4SW22zw"}], [{"max": 69, "min": 10, "name": "63brjfgI"}, {"max": 22, "min": 56, "name": "aZXGIZHs"}, {"max": 71, "min": 18, "name": "wOg3qBoD"}], [{"max": 19, "min": 43, "name": "t2ROeyga"}, {"max": 93, "min": 23, "name": "OeHD7FxZ"}, {"max": 72, "min": 78, "name": "BQNSQ7Bx"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 16, "role_flexing_second": 12}, "duration": 58, "max_number": 9, "min_number": 10, "player_max_number": 12, "player_min_number": 34}, {"combination": {"alliances": [[{"max": 91, "min": 82, "name": "GSxHKkJi"}, {"max": 46, "min": 0, "name": "dOjGNtur"}, {"max": 57, "min": 0, "name": "6z7vwHHx"}], [{"max": 68, "min": 71, "name": "RvGOA4O2"}, {"max": 66, "min": 97, "name": "ViXGRVW9"}, {"max": 13, "min": 53, "name": "fd5YDdNg"}], [{"max": 44, "min": 95, "name": "i3xotmQc"}, {"max": 37, "min": 57, "name": "9bFp4Hwc"}, {"max": 82, "min": 99, "name": "oP7VzCCb"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 91, "role_flexing_second": 42}, "duration": 99, "max_number": 94, "min_number": 67, "player_max_number": 69, "player_min_number": 5}, {"combination": {"alliances": [[{"max": 60, "min": 51, "name": "VdXSU8CV"}, {"max": 60, "min": 7, "name": "ilMGQvm9"}, {"max": 95, "min": 40, "name": "67sssPzD"}], [{"max": 54, "min": 79, "name": "lGXDUfY5"}, {"max": 55, "min": 32, "name": "z6TTXi9G"}, {"max": 35, "min": 73, "name": "QIit1UIV"}], [{"max": 45, "min": 58, "name": "WCvhHoMW"}, {"max": 64, "min": 89, "name": "NCpz2lHg"}, {"max": 39, "min": 13, "name": "WaMlQ3WD"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 12, "role_flexing_second": 48}, "duration": 67, "max_number": 3, "min_number": 85, "player_max_number": 48, "player_min_number": 67}], "name": "tACNOP39"}}, "ticket_flexing_selection": "random", "ticket_flexing_selections": [{"selection": "newest", "threshold": 54}, {"selection": "random", "threshold": 50}, {"selection": "pivot", "threshold": 48}], "use_newest_ticket_for_flexing": true}, "session_queue_timeout_seconds": 33, "social_matchmaking": true, "sub_gamemode_selection": "random", "ticket_observability_enable": true, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'wquzfd5c' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'FOyuAotA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "2cy9DhTe", "players": [{"results": [{"attribute": "VSLzpPM5", "value": 0.5058675525811116}, {"attribute": "nOGJyqtQ", "value": 0.531257323580512}, {"attribute": "5H1QrKs4", "value": 0.6638674426613483}], "user_id": "aMNTqKl1"}, {"results": [{"attribute": "udJJqI0J", "value": 0.7958941898285173}, {"attribute": "kD1NG4bp", "value": 0.7879776664221589}, {"attribute": "OWTDcv7y", "value": 0.044554307917737734}], "user_id": "Ou8ktMNs"}, {"results": [{"attribute": "BOhdn9f8", "value": 0.562162653524207}, {"attribute": "ewjR3M3L", "value": 0.7074788327265444}, {"attribute": "iMKDhZFB", "value": 0.3466331385996151}], "user_id": "GQRqw7Pb"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "53kWT3vS"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "qEIx3Wfb", "client_version": "e1TRQAtQ", "deployment": "IOlVAUrz", "error_code": 31, "error_message": "Ajj6OOLI", "game_mode": "Ukpke7yA", "is_mock": "vACi32Fd", "joinable": false, "match_id": "n7KFZEMi", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 16, "party_attributes": {"kmhq1wS6": {}, "wDOuROVe": {}, "nSWcGfTF": {}}, "party_id": "pUKmh2kf", "party_members": [{"extra_attributes": {"bPjZTRjT": {}, "ZUQtYRHc": {}, "wJjaOlsa": {}}, "user_id": "rwTFgmdv"}, {"extra_attributes": {"aDdRn0LS": {}, "TIPl153Q": {}, "JJkprNug": {}}, "user_id": "2vdzHvBK"}, {"extra_attributes": {"vcN6XE84": {}, "TixXXVG7": {}, "vmXGn4dI": {}}, "user_id": "jAvnAjWg"}], "ticket_created_at": 92, "ticket_id": "8Wg4Zek8"}, {"first_ticket_created_at": 13, "party_attributes": {"DcxD4vQm": {}, "Qfj5KB7m": {}, "223BUaut": {}}, "party_id": "EIo3m6i3", "party_members": [{"extra_attributes": {"oRjGuzus": {}, "duz3drFL": {}, "cc8QoJhm": {}}, "user_id": "DniCW6Dg"}, {"extra_attributes": {"CRRgc0Fz": {}, "w8VEwLDS": {}, "Wk0l4177": {}}, "user_id": "f512X9Ab"}, {"extra_attributes": {"fxiWpEv5": {}, "5CfbT03b": {}, "ocL3TzNh": {}}, "user_id": "SBYunyx9"}], "ticket_created_at": 13, "ticket_id": "LHI7wqtm"}, {"first_ticket_created_at": 88, "party_attributes": {"TghbFils": {}, "zEC94S5Y": {}, "l5DLhhUe": {}}, "party_id": "0v9o4ZYm", "party_members": [{"extra_attributes": {"HIkK0aui": {}, "ATtRrnDw": {}, "9fZnA5gf": {}}, "user_id": "bJ1gu1jU"}, {"extra_attributes": {"DpQOh4GY": {}, "LVCqUo4r": {}, "Q7hb3cfP": {}}, "user_id": "WTLtzlIg"}, {"extra_attributes": {"EHztKiAl": {}, "mgTtyKO9": {}, "tYTbZhJC": {}}, "user_id": "RNDRYIQh"}], "ticket_created_at": 8, "ticket_id": "Rc3OATv5"}]}, {"matching_parties": [{"first_ticket_created_at": 28, "party_attributes": {"fPEjPrYE": {}, "LdOXXy8X": {}, "rJZPKaU2": {}}, "party_id": "rbmNiCtA", "party_members": [{"extra_attributes": {"HhXpbDVs": {}, "4aCFI5rf": {}, "1Cj2VGeo": {}}, "user_id": "iVOp50fO"}, {"extra_attributes": {"PTELACzh": {}, "O3ehEVZg": {}, "lPMpeVAQ": {}}, "user_id": "kDgDBnj6"}, {"extra_attributes": {"rgEW4WRc": {}, "7EtERxeG": {}, "fRYPAFIf": {}}, "user_id": "xJTdQs6f"}], "ticket_created_at": 65, "ticket_id": "xaLuEKLR"}, {"first_ticket_created_at": 76, "party_attributes": {"pVcKFwQM": {}, "WTXVbAHY": {}, "lgn6qfGG": {}}, "party_id": "TpM3vmo7", "party_members": [{"extra_attributes": {"OGCHqvdE": {}, "TEvWD3NL": {}, "Msh0gsFU": {}}, "user_id": "M57hIrvV"}, {"extra_attributes": {"DRLXFbgh": {}, "3hTlzTjo": {}, "uFbAyR6H": {}}, "user_id": "IGwOpsfL"}, {"extra_attributes": {"pXKP2JqY": {}, "GgO1dn0i": {}, "eVgdKigK": {}}, "user_id": "ofP5yhJh"}], "ticket_created_at": 16, "ticket_id": "AweWWSVF"}, {"first_ticket_created_at": 15, "party_attributes": {"Mf3zd6yJ": {}, "4py38blN": {}, "Ve3rTYo8": {}}, "party_id": "QZnvI5od", "party_members": [{"extra_attributes": {"ypPScHP0": {}, "XHW7ZrzI": {}, "w1nb7WTV": {}}, "user_id": "ttSeHJTi"}, {"extra_attributes": {"P4P75Z2o": {}, "945kwyGZ": {}, "22KxIjKx": {}}, "user_id": "g6u3I8XT"}, {"extra_attributes": {"hn3ykHoq": {}, "hVWQM2Mu": {}, "cTVDo6HA": {}}, "user_id": "zbv2OMS1"}], "ticket_created_at": 54, "ticket_id": "PsiRHnrD"}]}, {"matching_parties": [{"first_ticket_created_at": 51, "party_attributes": {"s0eHQmLQ": {}, "DXf3alZ6": {}, "1a3FDG4W": {}}, "party_id": "ddlFe2Cb", "party_members": [{"extra_attributes": {"obFDWCwt": {}, "g12UQc5Y": {}, "sv174GLb": {}}, "user_id": "CMDcLGgE"}, {"extra_attributes": {"6eioDIRt": {}, "75lldkJM": {}, "bPlSqjOi": {}}, "user_id": "a3tvSz4b"}, {"extra_attributes": {"qf4U5QgP": {}, "WEn7ss1T": {}, "Y1sX50P2": {}}, "user_id": "YDipnINQ"}], "ticket_created_at": 69, "ticket_id": "2OdesIa4"}, {"first_ticket_created_at": 16, "party_attributes": {"tKBUUJKm": {}, "hQE5yf6K": {}, "PGgh4Dcy": {}}, "party_id": "wiWSbjGm", "party_members": [{"extra_attributes": {"d97v8SCs": {}, "oqvt1jWL": {}, "siJRMdMC": {}}, "user_id": "pX8RpYBp"}, {"extra_attributes": {"5rBZXQjH": {}, "A7q48OzL": {}, "FWhaiZN0": {}}, "user_id": "dizds9GD"}, {"extra_attributes": {"X9Otaa5I": {}, "dJbtobgw": {}, "ENZFp1w0": {}}, "user_id": "H5sSnGeS"}], "ticket_created_at": 45, "ticket_id": "tQGvXqzf"}, {"first_ticket_created_at": 5, "party_attributes": {"kee5tWnN": {}, "KwiXmM3p": {}, "sDOrnDt6": {}}, "party_id": "Vbdi9ybr", "party_members": [{"extra_attributes": {"1xBRmmIx": {}, "zTLYqYlW": {}, "soRFPfjO": {}}, "user_id": "CQBfaj8g"}, {"extra_attributes": {"BZbHQF0P": {}, "GbaTxauX": {}, "4XyRmA06": {}}, "user_id": "wwgJhRYm"}, {"extra_attributes": {"wf5z9XWg": {}, "kH39Ixcd": {}, "ZeLyvAod": {}}, "user_id": "7JcBeJjb"}], "ticket_created_at": 99, "ticket_id": "HevfTNVV"}]}], "namespace": "DZEMAADf", "party_attributes": {"teGVZmUS": {}, "HZIpN8Fy": {}, "pec4Jxk2": {}}, "party_id": "OzS4i7iy", "queued_at": 89, "region": "yMaqUMsu", "server_name": "0jcAeFPt", "status": "OlTb8AYa", "ticket_id": "Eog2eCSF", "ticket_ids": ["9vMNqB1G", "ZELxdeom", "ZtjkGAjy"], "updated_at": "1987-11-02T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "7SfKQ6c7"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'hrLFCyrr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 3, "userID": "ttvUCRl9", "weight": 0.7279159322763749}' \
    > test.out 2>&1
eval_tap $? 13 'UpdatePlayTimeWeight' test.out

#- 14 GetAllPartyInAllChannel
samples/cli/sample-apps Matchmaking getAllPartyInAllChannel \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'GetAllPartyInAllChannel' test.out

#- 15 BulkGetSessions
samples/cli/sample-apps Matchmaking bulkGetSessions \
    --namespace $AB_NAMESPACE \
    --matchIDs 'tSyZUVuo' \
    > test.out 2>&1
eval_tap $? 15 'BulkGetSessions' test.out

#- 16 ExportChannels
samples/cli/sample-apps Matchmaking exportChannels \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'ExportChannels' test.out

#- 17 ImportChannels
samples/cli/sample-apps Matchmaking importChannels \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'EKGBy9Us' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'YJi65iSu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'iuEvZBXg' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCanMatch", "deployment": "x6sGBaLE", "description": "47TkB1y9", "findMatchTimeoutSeconds": 91, "joinable": true, "max_delay_ms": 94, "region_expansion_range_ms": 67, "region_expansion_rate_ms": 67, "region_latency_initial_range_ms": 82, "region_latency_max_ms": 41, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 51, "min": 40, "name": "ZWlW8gEH"}, {"max": 14, "min": 95, "name": "jOgcctY7"}, {"max": 97, "min": 91, "name": "Kuiawajz"}], [{"max": 40, "min": 83, "name": "sQD6vl5Q"}, {"max": 46, "min": 93, "name": "jjzi73ZD"}, {"max": 60, "min": 15, "name": "U8oHhZCm"}], [{"max": 7, "min": 47, "name": "Syhpb4kv"}, {"max": 7, "min": 33, "name": "yKSawXy5"}, {"max": 12, "min": 59, "name": "YGrSx4MZ"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 7, "role_flexing_second": 60}, "maxNumber": 86, "minNumber": 6, "playerMaxNumber": 55, "playerMinNumber": 16}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 15, "min": 82, "name": "SLwxcLFo"}, {"max": 91, "min": 59, "name": "5tQPJbWq"}, {"max": 51, "min": 20, "name": "4QSLu2Mm"}], [{"max": 94, "min": 44, "name": "MZ8gP5aU"}, {"max": 51, "min": 4, "name": "7IqvKQ1C"}, {"max": 6, "min": 90, "name": "eZPbJNtR"}], [{"max": 1, "min": 36, "name": "Lv1TlJKi"}, {"max": 12, "min": 62, "name": "KmLIiP4S"}, {"max": 22, "min": 79, "name": "WB8gEzk3"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 64, "role_flexing_second": 84}, "duration": 38, "max_number": 89, "min_number": 45, "player_max_number": 69, "player_min_number": 9}, {"combination": {"alliances": [[{"max": 36, "min": 98, "name": "e4Ffhkmc"}, {"max": 18, "min": 33, "name": "8f2ZMt53"}, {"max": 91, "min": 41, "name": "78sr4gRT"}], [{"max": 8, "min": 96, "name": "v4OKzFpL"}, {"max": 86, "min": 12, "name": "4PFt8DqE"}, {"max": 94, "min": 66, "name": "9OEoWBDQ"}], [{"max": 59, "min": 36, "name": "m52k38WD"}, {"max": 9, "min": 52, "name": "JOwXJiI9"}, {"max": 15, "min": 48, "name": "3bGcbaIa"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 60, "role_flexing_second": 90}, "duration": 54, "max_number": 18, "min_number": 24, "player_max_number": 35, "player_min_number": 19}, {"combination": {"alliances": [[{"max": 1, "min": 12, "name": "Xaz5b4ls"}, {"max": 1, "min": 87, "name": "xjRID9GP"}, {"max": 45, "min": 6, "name": "wzqEodGG"}], [{"max": 17, "min": 20, "name": "gqtRAGBI"}, {"max": 66, "min": 55, "name": "vwJExGUo"}, {"max": 9, "min": 54, "name": "TUwAPBhl"}], [{"max": 71, "min": 55, "name": "bHA82iWq"}, {"max": 56, "min": 39, "name": "ZSBLpiRA"}, {"max": 56, "min": 13, "name": "oaPC7pxk"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 30, "role_flexing_second": 75}, "duration": 17, "max_number": 42, "min_number": 58, "player_max_number": 9, "player_min_number": 74}], "batch_size": 83, "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 27, "flex_flat_step_range": 96, "flex_immunity_count": 92, "flex_range_max": 23, "flex_rate_ms": 69, "flex_step_max": 13, "force_authority_match": true, "initial_step_range": 49, "mmr_max": 78, "mmr_mean": 21, "mmr_min": 91, "mmr_std_dev": 55, "override_mmr_data": true, "use_bucket_mmr": false, "use_flat_flex_step": true}, "flexingRules": [{"attribute": "TYEyDbbw", "criteria": "WrRn12Ao", "duration": 24, "reference": 0.6159498890935174}, {"attribute": "nbeD0cQN", "criteria": "fijQ4FNS", "duration": 25, "reference": 0.377599194011088}, {"attribute": "GDQ2BhiZ", "criteria": "EM4X47iH", "duration": 24, "reference": 0.08481820740439927}], "match_options": {"options": [{"name": "xt9maIoF", "type": "03t36sx5"}, {"name": "h0VlfhSM", "type": "rsCyTyjz"}, {"name": "EueZbnKj", "type": "GNnl3oYw"}]}, "matchingRules": [{"attribute": "MOPZ54St", "criteria": "KgNlGfMQ", "reference": 0.8717565384644875}, {"attribute": "gfx4sPs6", "criteria": "hUpQ4664", "reference": 0.8902279211754424}, {"attribute": "rAYOLAZ4", "criteria": "th7g0XXa", "reference": 0.5780786546142422}], "sort_ticket": {"search_result": "largestPartySize", "ticket_queue": "random"}, "sort_tickets": [{"search_result": "oldestTicketAge", "threshold": 16, "ticket_queue": "distance"}, {"search_result": "distance", "threshold": 66, "ticket_queue": "distance"}, {"search_result": "largestPartySize", "threshold": 78, "ticket_queue": "none"}], "sub_game_modes": {}, "ticket_flexing_selection": "newest", "ticket_flexing_selections": [{"selection": "random", "threshold": 75}, {"selection": "random", "threshold": 100}, {"selection": "pivot", "threshold": 9}], "use_newest_ticket_for_flexing": false}, "sessionQueueTimeoutSeconds": 36, "socialMatchmaking": false, "sub_gamemode_selection": "random", "ticket_observability_enable": false, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName 'IlNj3j92' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName '3GNMWFXU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName 'whpmXdYa' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 58}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName 'AemqHYBg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName '41HFKWS3' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "DPp5aGSA", "count": 8, "mmrMax": 0.21181091113049277, "mmrMean": 0.20105958939522972, "mmrMin": 0.6132220395173967, "mmrStdDev": 0.46331104902676723}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName 'GzY1FOa0' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 83, "party_attributes": {"WfBJqBT4": {}, "MxEJlHIW": {}, "3zGmvBUZ": {}}, "party_id": "hBiDl9gA", "party_members": [{"extra_attributes": {"q9vuZyAB": {}, "KDcuabBp": {}, "uWFyijJA": {}}, "user_id": "7Kd5tSPg"}, {"extra_attributes": {"Prg2ZT2N": {}, "JGSGC1lI": {}, "nxlGWhBU": {}}, "user_id": "kPJc7oXh"}, {"extra_attributes": {"HcMjXGAH": {}, "bjbBAqSC": {}, "LUrJ12Xd": {}}, "user_id": "N9Y6kXRu"}], "ticket_created_at": 61, "ticket_id": "y0Hn50nD"}, {"first_ticket_created_at": 100, "party_attributes": {"SVUQwzbx": {}, "0r2knA53": {}, "uqgUViRt": {}}, "party_id": "8mnRn9TG", "party_members": [{"extra_attributes": {"F7FMzvOe": {}, "9MFxVB50": {}, "mq8StNQX": {}}, "user_id": "X7NkD3WI"}, {"extra_attributes": {"AlFBkQLX": {}, "uyyoHlnw": {}, "SCaY8zUn": {}}, "user_id": "VDYAY9Jb"}, {"extra_attributes": {"zxhFNVee": {}, "DUqaDlys": {}, "iTIdpB3a": {}}, "user_id": "DmERBrE7"}], "ticket_created_at": 49, "ticket_id": "w6uQ1vvP"}, {"first_ticket_created_at": 10, "party_attributes": {"bdzE8paZ": {}, "ZTGnRP3z": {}, "uuLPFrmz": {}}, "party_id": "epVY0E0N", "party_members": [{"extra_attributes": {"Edl95qsF": {}, "bowI7XJ1": {}, "yNDJ0Lb9": {}}, "user_id": "Xc1lspje"}, {"extra_attributes": {"B7L2cX9a": {}, "4KG62f97": {}, "czfPjoq8": {}}, "user_id": "qN6aZ6K3"}, {"extra_attributes": {"AseEcHND": {}, "Gtv2TbqY": {}, "CYJjl6PC": {}}, "user_id": "Ppb0J16m"}], "ticket_created_at": 10, "ticket_id": "uON3DJ4M"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName '8DPrqPH0' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 5}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'YqdyFHsz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName '5cniShll' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName '7aad9Huf' \
    --matchID 'fX8f5qmq' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["qe3JptXX", "HxHYqbwd", "RaMF1yVs"], "party_id": "biyRiEuK", "user_id": "ZwnATEsb"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'm73SBhsz' \
    --matchID '4NlJlhIH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'Qyaxt55f' \
    --matchID 'it6AfN7Y' \
    --namespace $AB_NAMESPACE \
    --userID '9jKPXQOY' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName 'aVDA2kz5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'GetStatData' test.out

#- 33 SearchSessions
eval_tap 0 33 'SearchSessions # SKIP deprecated' test.out

#- 34 GetSessionHistoryDetailed
eval_tap 0 34 'GetSessionHistoryDetailed # SKIP deprecated' test.out

#- 35 PublicGetMessages
samples/cli/sample-apps Matchmaking publicGetMessages \
    > test.out 2>&1
eval_tap $? 35 'PublicGetMessages' test.out

#- 36 PublicGetAllMatchmakingChannel
samples/cli/sample-apps Matchmaking publicGetAllMatchmakingChannel \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 36 'PublicGetAllMatchmakingChannel' test.out

#- 37 PublicGetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking publicGetSingleMatchmakingChannel \
    --channelName 'Jg3V8YTo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'PublicGetSingleMatchmakingChannel' test.out

#- 38 SearchSessionsV2
eval_tap 0 38 'SearchSessionsV2 # SKIP deprecated' test.out

#- 39 VersionCheckHandler
samples/cli/sample-apps Matchmaking versionCheckHandler \
    > test.out 2>&1
eval_tap $? 39 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE