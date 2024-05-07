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
    --limit '29' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCanMatchOnDifferentTeam", "deployment": "7epJ6wvT", "description": "K3tIxBps", "find_match_timeout_seconds": 5, "game_mode": "1q5cEq07", "joinable": false, "max_delay_ms": 77, "region_expansion_range_ms": 82, "region_expansion_rate_ms": 70, "region_latency_initial_range_ms": 68, "region_latency_max_ms": 35, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 35, "min": 64, "name": "WhqOWeVu"}, {"max": 96, "min": 0, "name": "ksZe1kJZ"}, {"max": 43, "min": 82, "name": "IkfDLGSc"}], [{"max": 10, "min": 21, "name": "P1ICAqVQ"}, {"max": 91, "min": 63, "name": "aTfDtU16"}, {"max": 99, "min": 19, "name": "k9Fe81Mb"}], [{"max": 45, "min": 46, "name": "UUggR2OJ"}, {"max": 82, "min": 54, "name": "HgSBsBod"}, {"max": 12, "min": 71, "name": "uNrv1X7i"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 15, "role_flexing_second": 52}, "max_number": 10, "min_number": 25, "player_max_number": 31, "player_min_number": 66}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 69, "min": 41, "name": "6BtIwUnm"}, {"max": 75, "min": 2, "name": "Y7CpSFm7"}, {"max": 45, "min": 43, "name": "85MJriim"}], [{"max": 83, "min": 37, "name": "NiybqAzW"}, {"max": 93, "min": 40, "name": "gOKbzzLN"}, {"max": 83, "min": 29, "name": "zdlH7udE"}], [{"max": 2, "min": 90, "name": "5joCB7M5"}, {"max": 84, "min": 25, "name": "dk97Z1iW"}, {"max": 0, "min": 58, "name": "p08OW9Bt"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 79, "role_flexing_second": 73}, "duration": 27, "max_number": 96, "min_number": 4, "player_max_number": 86, "player_min_number": 66}, {"combination": {"alliances": [[{"max": 34, "min": 89, "name": "KZB973ek"}, {"max": 4, "min": 41, "name": "2wsboSX8"}, {"max": 55, "min": 33, "name": "4WtgEcGo"}], [{"max": 43, "min": 83, "name": "pkuTAWyJ"}, {"max": 41, "min": 97, "name": "IjZacvhM"}, {"max": 92, "min": 70, "name": "9CQ4fDnJ"}], [{"max": 70, "min": 98, "name": "rom7PX3z"}, {"max": 81, "min": 2, "name": "xuOz8Kxm"}, {"max": 20, "min": 19, "name": "xp95ytAL"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 59, "role_flexing_second": 7}, "duration": 1, "max_number": 43, "min_number": 29, "player_max_number": 93, "player_min_number": 19}, {"combination": {"alliances": [[{"max": 86, "min": 89, "name": "S6vp53Hp"}, {"max": 81, "min": 25, "name": "1OblgniY"}, {"max": 5, "min": 17, "name": "kipOQ8m2"}], [{"max": 22, "min": 20, "name": "R39ouGZb"}, {"max": 7, "min": 98, "name": "rvX2UZcg"}, {"max": 26, "min": 94, "name": "k2lLGpdw"}], [{"max": 16, "min": 45, "name": "mJ8Rb0Td"}, {"max": 16, "min": 53, "name": "2Cyv7IH4"}, {"max": 19, "min": 20, "name": "Vz7eygiw"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 20, "role_flexing_second": 79}, "duration": 42, "max_number": 3, "min_number": 82, "player_max_number": 61, "player_min_number": 10}], "batch_size": 2, "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 90, "flex_flat_step_range": 1, "flex_immunity_count": 69, "flex_range_max": 18, "flex_rate_ms": 77, "flex_step_max": 29, "force_authority_match": true, "initial_step_range": 75, "mmr_max": 4, "mmr_mean": 73, "mmr_min": 73, "mmr_std_dev": 22, "override_mmr_data": true, "use_bucket_mmr": false, "use_flat_flex_step": true}, "flexing_rule": [{"attribute": "8IAJEZ2O", "criteria": "cWAzHiyQ", "duration": 48, "reference": 0.5611590045750078}, {"attribute": "5slDitCt", "criteria": "oOyA8KJM", "duration": 2, "reference": 0.9245671796253316}, {"attribute": "Vmf6TGTA", "criteria": "NW04tN4c", "duration": 61, "reference": 0.7298974578593982}], "match_options": {"options": [{"name": "YOjtzm9l", "type": "qyixuE62"}, {"name": "Cuwk3nW5", "type": "mwOsq96V"}, {"name": "lhiFpDxm", "type": "yMzhpMk5"}]}, "matching_rule": [{"attribute": "tzdHywfh", "criteria": "3AcLN6uh", "reference": 0.21248024535610965}, {"attribute": "EkWtRgfi", "criteria": "cvcHnUeI", "reference": 0.3006303118015162}, {"attribute": "ZObEt6tR", "criteria": "MtOlqShq", "reference": 0.10544553209115082}], "rebalance_enable": true, "sort_ticket": {"search_result": "XMkSmsMh", "ticket_queue": "J3UKHJuH"}, "sort_tickets": [{"search_result": "jCGKkaih", "threshold": 100, "ticket_queue": "4lh4rGjP"}, {"search_result": "RDtxcxvp", "threshold": 33, "ticket_queue": "G5YK9F1E"}, {"search_result": "fXVO3n29", "threshold": 29, "ticket_queue": "1VgcJazZ"}], "sub_game_modes": {"ZEP2P47e": {"alliance": {"combination": {"alliances": [[{"max": 73, "min": 74, "name": "gyvXq5xy"}, {"max": 44, "min": 2, "name": "lmRtyErl"}, {"max": 48, "min": 71, "name": "7LJKOdUL"}], [{"max": 76, "min": 33, "name": "omOy3CHC"}, {"max": 17, "min": 62, "name": "G44ZUHn4"}, {"max": 99, "min": 46, "name": "pZqU81Et"}], [{"max": 49, "min": 81, "name": "sJTHvkLn"}, {"max": 69, "min": 33, "name": "xsHrVays"}, {"max": 72, "min": 54, "name": "LemVjXrc"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 6, "role_flexing_second": 71}, "max_number": 92, "min_number": 98, "player_max_number": 64, "player_min_number": 86}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 88, "min": 16, "name": "5iQXbFt9"}, {"max": 76, "min": 43, "name": "J0s11uY9"}, {"max": 30, "min": 74, "name": "zPH7R0ej"}], [{"max": 13, "min": 89, "name": "4BAAfYdE"}, {"max": 63, "min": 17, "name": "XxJvTDvM"}, {"max": 88, "min": 71, "name": "KHMGaX0H"}], [{"max": 100, "min": 43, "name": "5OoWm1Oi"}, {"max": 88, "min": 96, "name": "Ug5dUUGL"}, {"max": 19, "min": 21, "name": "HCikidrj"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 6, "role_flexing_second": 98}, "duration": 87, "max_number": 78, "min_number": 25, "player_max_number": 83, "player_min_number": 59}, {"combination": {"alliances": [[{"max": 84, "min": 11, "name": "f4qlNVs5"}, {"max": 75, "min": 75, "name": "Ew3FDSim"}, {"max": 5, "min": 44, "name": "IMFn9fW9"}], [{"max": 24, "min": 6, "name": "8iUge1LH"}, {"max": 41, "min": 59, "name": "z5V2wNbq"}, {"max": 76, "min": 18, "name": "CqtdytMA"}], [{"max": 89, "min": 35, "name": "0MCVTCHw"}, {"max": 29, "min": 81, "name": "b5J9Jm3W"}, {"max": 62, "min": 79, "name": "GN9sU144"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 81, "role_flexing_second": 60}, "duration": 56, "max_number": 17, "min_number": 57, "player_max_number": 47, "player_min_number": 90}, {"combination": {"alliances": [[{"max": 0, "min": 93, "name": "NFUAxNQ7"}, {"max": 85, "min": 42, "name": "43VroLT4"}, {"max": 87, "min": 72, "name": "brEvsrGx"}], [{"max": 9, "min": 33, "name": "9nFiCUPd"}, {"max": 54, "min": 57, "name": "MbCnEJt2"}, {"max": 1, "min": 44, "name": "8Pi90Svy"}], [{"max": 64, "min": 25, "name": "yRtk22Hl"}, {"max": 93, "min": 25, "name": "uROcDgeq"}, {"max": 100, "min": 78, "name": "uos9MU9Z"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 81, "role_flexing_second": 63}, "duration": 51, "max_number": 48, "min_number": 20, "player_max_number": 85, "player_min_number": 61}], "name": "jLXWaAH8"}, "aAUCqA9g": {"alliance": {"combination": {"alliances": [[{"max": 65, "min": 55, "name": "4OJXnGBS"}, {"max": 46, "min": 7, "name": "DFFLo3nw"}, {"max": 49, "min": 51, "name": "R9DMIvuY"}], [{"max": 9, "min": 61, "name": "b5ifjBfW"}, {"max": 89, "min": 46, "name": "EmGLDR2o"}, {"max": 48, "min": 47, "name": "U4Nta64a"}], [{"max": 35, "min": 16, "name": "UBmoRkVb"}, {"max": 65, "min": 19, "name": "3rNrOpdY"}, {"max": 90, "min": 39, "name": "sFHCHCLb"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 12, "role_flexing_second": 71}, "max_number": 43, "min_number": 0, "player_max_number": 20, "player_min_number": 73}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 76, "min": 95, "name": "TpdtrXsw"}, {"max": 54, "min": 20, "name": "6LmpJC9h"}, {"max": 83, "min": 89, "name": "FVWvxKjk"}], [{"max": 26, "min": 13, "name": "v3KPaBww"}, {"max": 9, "min": 17, "name": "tNMuKerR"}, {"max": 22, "min": 87, "name": "sqQRyEVA"}], [{"max": 15, "min": 5, "name": "EzPqzhfe"}, {"max": 75, "min": 56, "name": "P0gsbGSt"}, {"max": 83, "min": 68, "name": "LHKTbGeZ"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 20, "role_flexing_second": 48}, "duration": 41, "max_number": 100, "min_number": 58, "player_max_number": 10, "player_min_number": 89}, {"combination": {"alliances": [[{"max": 68, "min": 54, "name": "pF2SKCK7"}, {"max": 74, "min": 83, "name": "X3wEJZoF"}, {"max": 60, "min": 52, "name": "UmChFxwl"}], [{"max": 40, "min": 68, "name": "BvJS9lJi"}, {"max": 66, "min": 77, "name": "dVAbaBqF"}, {"max": 81, "min": 27, "name": "rrE3FnZp"}], [{"max": 86, "min": 99, "name": "oSIZ2xZO"}, {"max": 24, "min": 85, "name": "ngldkFUO"}, {"max": 52, "min": 9, "name": "a0RdEISE"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 77, "role_flexing_second": 81}, "duration": 76, "max_number": 41, "min_number": 65, "player_max_number": 76, "player_min_number": 82}, {"combination": {"alliances": [[{"max": 19, "min": 3, "name": "qfK11iTW"}, {"max": 87, "min": 65, "name": "YwF9amp4"}, {"max": 75, "min": 3, "name": "ZKZ6RwA2"}], [{"max": 51, "min": 39, "name": "LZfTnWXN"}, {"max": 96, "min": 26, "name": "K9YzN4JV"}, {"max": 85, "min": 77, "name": "l5U55ObE"}], [{"max": 12, "min": 90, "name": "GbM0NZOq"}, {"max": 99, "min": 14, "name": "nLAMlzZE"}, {"max": 55, "min": 23, "name": "AnDK7XZN"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 20, "role_flexing_second": 92}, "duration": 17, "max_number": 25, "min_number": 37, "player_max_number": 86, "player_min_number": 69}], "name": "vvDpAnyY"}, "1JC0Sc9b": {"alliance": {"combination": {"alliances": [[{"max": 56, "min": 75, "name": "hjzB0jNM"}, {"max": 4, "min": 33, "name": "qzfq8CWS"}, {"max": 93, "min": 10, "name": "Tscwp9b1"}], [{"max": 83, "min": 31, "name": "RTiAJPtR"}, {"max": 83, "min": 19, "name": "uc0DmbsK"}, {"max": 47, "min": 35, "name": "VgoHjpVo"}], [{"max": 46, "min": 19, "name": "ZPWESxJa"}, {"max": 50, "min": 43, "name": "bfHQJ19O"}, {"max": 88, "min": 91, "name": "fVpR7W5k"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 91, "role_flexing_second": 33}, "max_number": 63, "min_number": 53, "player_max_number": 5, "player_min_number": 61}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 51, "min": 62, "name": "6l1TW4O6"}, {"max": 20, "min": 19, "name": "4S824Ly1"}, {"max": 34, "min": 100, "name": "kc8m5hhW"}], [{"max": 57, "min": 62, "name": "O7urpZf4"}, {"max": 44, "min": 44, "name": "im9FC31j"}, {"max": 27, "min": 88, "name": "GHmEZL5I"}], [{"max": 57, "min": 30, "name": "PHtHZmQY"}, {"max": 90, "min": 67, "name": "ASxN10Io"}, {"max": 52, "min": 14, "name": "iuOyYyCN"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 5, "role_flexing_second": 82}, "duration": 2, "max_number": 75, "min_number": 40, "player_max_number": 41, "player_min_number": 100}, {"combination": {"alliances": [[{"max": 75, "min": 73, "name": "wrD9KpnP"}, {"max": 67, "min": 9, "name": "WLMKy51V"}, {"max": 2, "min": 50, "name": "CTDxpI8p"}], [{"max": 1, "min": 63, "name": "mLzCOydT"}, {"max": 66, "min": 61, "name": "0OvoY2Vu"}, {"max": 28, "min": 67, "name": "6pETYyWX"}], [{"max": 97, "min": 12, "name": "3kBWj0A5"}, {"max": 39, "min": 25, "name": "Qu9CriY7"}, {"max": 3, "min": 92, "name": "fdksGniM"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 83, "role_flexing_second": 30}, "duration": 91, "max_number": 76, "min_number": 81, "player_max_number": 27, "player_min_number": 73}, {"combination": {"alliances": [[{"max": 61, "min": 84, "name": "fg2VAaMV"}, {"max": 97, "min": 9, "name": "cZzGwQe5"}, {"max": 49, "min": 46, "name": "qdmJntlg"}], [{"max": 20, "min": 40, "name": "4TpeeMR3"}, {"max": 96, "min": 36, "name": "xfTCeoco"}, {"max": 8, "min": 33, "name": "1HIDY5JX"}], [{"max": 8, "min": 27, "name": "LjDOFzam"}, {"max": 14, "min": 65, "name": "63DuD98h"}, {"max": 58, "min": 17, "name": "pagtua2M"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 44, "role_flexing_second": 94}, "duration": 11, "max_number": 38, "min_number": 77, "player_max_number": 34, "player_min_number": 97}], "name": "Knagg0us"}}, "ticket_flexing_selection": "m0gkdKI9", "ticket_flexing_selections": [{"selection": "7ohfFIIG", "threshold": 35}, {"selection": "Im8k8gsd", "threshold": 75}, {"selection": "pPAotrLI", "threshold": 14}], "use_newest_ticket_for_flexing": false}, "session_queue_timeout_seconds": 47, "social_matchmaking": false, "sub_gamemode_selection": "ticketOrder", "ticket_observability_enable": true, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName '461msxcT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'hObdKKi8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "MiG3AADK", "players": [{"results": [{"attribute": "ZvddhJNS", "value": 0.6483637207427172}, {"attribute": "68ifvPSy", "value": 0.8515881279256308}, {"attribute": "fLydlLL9", "value": 0.28127572015415103}], "user_id": "HLirQLDg"}, {"results": [{"attribute": "kHK09t3a", "value": 0.8443547517364411}, {"attribute": "MtdsYbwu", "value": 0.0010274336129586503}, {"attribute": "J0wHanWC", "value": 0.13658493168749708}], "user_id": "uQC6oXn6"}, {"results": [{"attribute": "7rpAvrWB", "value": 0.9864799155973863}, {"attribute": "XO4N6P2E", "value": 0.5945360233616045}, {"attribute": "vdRklA4J", "value": 0.18089225159692335}], "user_id": "XCuAPKOR"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "I1rfiUvT"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "hBbP6O6z", "client_version": "QWSR80OQ", "deployment": "dJiH6vzQ", "error_code": 23, "error_message": "pHuFjh9w", "game_mode": "psUXgVCB", "is_mock": "uaHOsLIr", "joinable": true, "match_id": "o2flRaLw", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 26, "party_attributes": {"051QzwNF": {}, "E2fluYMg": {}, "mKJeoIe2": {}}, "party_id": "K90EkCIj", "party_members": [{"extra_attributes": {"rzJXuvl7": {}, "Lujj0vBy": {}, "l2AYTrnT": {}}, "user_id": "znxs6xoS"}, {"extra_attributes": {"j3W10vhb": {}, "TSMVDwIN": {}, "IFo8XS4l": {}}, "user_id": "rPjVeNc2"}, {"extra_attributes": {"K16oDgY2": {}, "7yRgocwp": {}, "jt4J8pyj": {}}, "user_id": "aE7BJ7hI"}], "ticket_created_at": 51, "ticket_id": "rxlEDgUO"}, {"first_ticket_created_at": 96, "party_attributes": {"93Up6yVa": {}, "w9iCNuOL": {}, "VuGBIAl1": {}}, "party_id": "hnBLei6C", "party_members": [{"extra_attributes": {"nyofhB3G": {}, "oUV8Eb88": {}, "iGDp3Xth": {}}, "user_id": "mKY2HJJw"}, {"extra_attributes": {"wqLuQKMR": {}, "lvqNo0Aq": {}, "Ib92DcNl": {}}, "user_id": "QlLdQ6lW"}, {"extra_attributes": {"Ccv4N7EN": {}, "MQddRr30": {}, "8QbdYDP8": {}}, "user_id": "fG6AUm79"}], "ticket_created_at": 32, "ticket_id": "Oq6cYZWN"}, {"first_ticket_created_at": 3, "party_attributes": {"Xj8FO0iv": {}, "mCmBA8cQ": {}, "3uNB9T0l": {}}, "party_id": "MwPSKQUM", "party_members": [{"extra_attributes": {"NzhKaI3s": {}, "5584EJuE": {}, "Mxs5Kmoj": {}}, "user_id": "xlYWAhQY"}, {"extra_attributes": {"1pgPqcQN": {}, "JKOepjUw": {}, "45ijz17F": {}}, "user_id": "u0qnTn6e"}, {"extra_attributes": {"Yk3prGIB": {}, "S4TZ140w": {}, "v0dnRIMc": {}}, "user_id": "XWKkPSXr"}], "ticket_created_at": 32, "ticket_id": "tugFJiYa"}]}, {"matching_parties": [{"first_ticket_created_at": 12, "party_attributes": {"PXqhJpbL": {}, "ASWdQ1pm": {}, "E1YleCl8": {}}, "party_id": "5IVnH6no", "party_members": [{"extra_attributes": {"zoiUYdwT": {}, "ckuE85h8": {}, "GqX9P7Gy": {}}, "user_id": "NNa4eigR"}, {"extra_attributes": {"3MJUKZwq": {}, "aaMdLZRT": {}, "O7O2BAiP": {}}, "user_id": "ffepGh3s"}, {"extra_attributes": {"3mJVwdom": {}, "sRXMQQXy": {}, "fjsGMrOO": {}}, "user_id": "cUHgOj8F"}], "ticket_created_at": 51, "ticket_id": "GBDqAWVw"}, {"first_ticket_created_at": 98, "party_attributes": {"E3gUoz33": {}, "sJzuuTyR": {}, "KAIyxsaP": {}}, "party_id": "oUHcJFrd", "party_members": [{"extra_attributes": {"ffqqwYOV": {}, "aAqnxkDT": {}, "1kE3MBgp": {}}, "user_id": "sJoDbiEi"}, {"extra_attributes": {"iXKVm1C1": {}, "yQh7EiTt": {}, "gdE0z21m": {}}, "user_id": "QvjN8IYF"}, {"extra_attributes": {"LW0KcZKh": {}, "biGTOqxP": {}, "6CloDG7E": {}}, "user_id": "FRX0qG4r"}], "ticket_created_at": 97, "ticket_id": "NHd6OepZ"}, {"first_ticket_created_at": 73, "party_attributes": {"TyB5XpDj": {}, "gYA2XWe0": {}, "i82Hn8YZ": {}}, "party_id": "KVfHUqTF", "party_members": [{"extra_attributes": {"q1tHWDZc": {}, "xVyW12g5": {}, "Wvf8Pv81": {}}, "user_id": "iEX7EC2C"}, {"extra_attributes": {"XeXXx4cb": {}, "Qun7FiD1": {}, "1X8VRU3I": {}}, "user_id": "otVFP9KJ"}, {"extra_attributes": {"LbCK8Mrh": {}, "n2fwIGGh": {}, "QnP2KDca": {}}, "user_id": "Kq9iSxck"}], "ticket_created_at": 90, "ticket_id": "jBKT4Q5S"}]}, {"matching_parties": [{"first_ticket_created_at": 29, "party_attributes": {"B7FIs9Ii": {}, "mvYyz1HU": {}, "rpTIvPiN": {}}, "party_id": "RR4eY3yj", "party_members": [{"extra_attributes": {"a0SGbHCK": {}, "i0guIRe5": {}, "z7FI1rmQ": {}}, "user_id": "c6rmIj8y"}, {"extra_attributes": {"1WfQOVni": {}, "dODudoRV": {}, "4zUnkDVh": {}}, "user_id": "yC9rwyS3"}, {"extra_attributes": {"97tlUgEy": {}, "0jzrHrGt": {}, "1Tq2pR83": {}}, "user_id": "z1pnEGBI"}], "ticket_created_at": 72, "ticket_id": "H6RHQr06"}, {"first_ticket_created_at": 100, "party_attributes": {"cCSi0XHY": {}, "MN01PelO": {}, "FJirJAdy": {}}, "party_id": "7IgiRDpx", "party_members": [{"extra_attributes": {"xt1JbTnG": {}, "8Ws78E5z": {}, "3wd3wCDx": {}}, "user_id": "Q56hApfG"}, {"extra_attributes": {"3lpEZMfl": {}, "fS3A5BCO": {}, "2qs1ZgaW": {}}, "user_id": "HlUVWGV4"}, {"extra_attributes": {"NLjdVnAi": {}, "s8abGWrL": {}, "GobQBaSj": {}}, "user_id": "IpyEcVrj"}], "ticket_created_at": 15, "ticket_id": "agTkPVOZ"}, {"first_ticket_created_at": 90, "party_attributes": {"jMm6NnV8": {}, "uKiKhqR9": {}, "FUyGdGcH": {}}, "party_id": "HhXCZzhM", "party_members": [{"extra_attributes": {"lBzaiXCz": {}, "OMLX3jSb": {}, "H7D23fvb": {}}, "user_id": "zEfNWOYe"}, {"extra_attributes": {"AJZBlf5U": {}, "9rgGOA54": {}, "SOSo9HaC": {}}, "user_id": "cTvEUoWn"}, {"extra_attributes": {"pRXqPXat": {}, "VlwwbFeu": {}, "YQRB36RH": {}}, "user_id": "eLPj5Hn0"}], "ticket_created_at": 72, "ticket_id": "0OHoRj0M"}]}], "namespace": "t9RuFNVE", "party_attributes": {"9KZPEsI6": {}, "CcqwabfD": {}, "EGt2fJKP": {}}, "party_id": "LSehU91w", "queued_at": 61, "region": "tFa6Ecox", "server_name": "8Z4YSwFv", "status": "25amUlQP", "ticket_id": "7Q7cZtnQ", "ticket_ids": ["130kkr29", "64OOENcK", "PMnkhpq8"], "updated_at": "1989-10-11T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "uE5MdLsv"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'ehzxst8u' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 16, "userID": "TMXFilw5", "weight": 0.2583645314860663}' \
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
    --matchIDs '6bDmKrOZ' \
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
    --strategy 'jhdRn8bp' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'J5589pTp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'Kg1PhBIU' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCanMatchOnDifferentTeam", "deployment": "saSzv7Fw", "description": "ecWc3zWe", "findMatchTimeoutSeconds": 54, "joinable": false, "max_delay_ms": 66, "region_expansion_range_ms": 12, "region_expansion_rate_ms": 84, "region_latency_initial_range_ms": 10, "region_latency_max_ms": 86, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 16, "min": 1, "name": "wpkKTLL2"}, {"max": 33, "min": 34, "name": "19IyGGxf"}, {"max": 52, "min": 93, "name": "VJP3xMLv"}], [{"max": 34, "min": 69, "name": "wcFM9qTg"}, {"max": 78, "min": 44, "name": "0qHsUaOa"}, {"max": 47, "min": 3, "name": "eAqbue0o"}], [{"max": 100, "min": 78, "name": "qQbgFDcx"}, {"max": 26, "min": 23, "name": "trmooJMi"}, {"max": 69, "min": 42, "name": "2lwb1jZf"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 8, "role_flexing_second": 83}, "maxNumber": 64, "minNumber": 10, "playerMaxNumber": 42, "playerMinNumber": 3}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 39, "min": 75, "name": "xS99oj8g"}, {"max": 73, "min": 81, "name": "zVdpyC7L"}, {"max": 6, "min": 84, "name": "yg3dFh5q"}], [{"max": 72, "min": 67, "name": "fVnVTdzv"}, {"max": 12, "min": 26, "name": "oeSSmxE9"}, {"max": 15, "min": 96, "name": "Fr3VrTtF"}], [{"max": 28, "min": 92, "name": "BIu7Rzjl"}, {"max": 26, "min": 59, "name": "THK87jSE"}, {"max": 54, "min": 82, "name": "T4BdBUdt"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 6, "role_flexing_second": 9}, "duration": 44, "max_number": 96, "min_number": 27, "player_max_number": 14, "player_min_number": 35}, {"combination": {"alliances": [[{"max": 28, "min": 43, "name": "NxF2X1je"}, {"max": 29, "min": 77, "name": "sTy6F2wu"}, {"max": 69, "min": 30, "name": "1oUHJphj"}], [{"max": 69, "min": 57, "name": "ae0WU9tC"}, {"max": 95, "min": 43, "name": "O49oVLpy"}, {"max": 72, "min": 64, "name": "HyOPmCbt"}], [{"max": 21, "min": 52, "name": "M92YHzGL"}, {"max": 80, "min": 62, "name": "na1v8zl6"}, {"max": 12, "min": 64, "name": "b0IybMAa"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 58, "role_flexing_second": 64}, "duration": 82, "max_number": 96, "min_number": 64, "player_max_number": 95, "player_min_number": 37}, {"combination": {"alliances": [[{"max": 39, "min": 74, "name": "lW1YHneL"}, {"max": 68, "min": 41, "name": "i6Duuuzp"}, {"max": 65, "min": 98, "name": "x8eS16Xp"}], [{"max": 11, "min": 42, "name": "4AVVkUiN"}, {"max": 81, "min": 65, "name": "VOihSFPB"}, {"max": 85, "min": 87, "name": "VgtCrk5y"}], [{"max": 19, "min": 57, "name": "XnQOzKGT"}, {"max": 50, "min": 48, "name": "AKrYBTBp"}, {"max": 6, "min": 52, "name": "JIuqQhvM"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 50, "role_flexing_second": 24}, "duration": 6, "max_number": 67, "min_number": 64, "player_max_number": 55, "player_min_number": 97}], "batch_size": 58, "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 51, "flex_flat_step_range": 56, "flex_immunity_count": 32, "flex_range_max": 12, "flex_rate_ms": 20, "flex_step_max": 13, "force_authority_match": false, "initial_step_range": 8, "mmr_max": 89, "mmr_mean": 38, "mmr_min": 71, "mmr_std_dev": 43, "override_mmr_data": true, "use_bucket_mmr": false, "use_flat_flex_step": true}, "flexingRules": [{"attribute": "sv4PuyxV", "criteria": "fkO6PfYm", "duration": 37, "reference": 0.11464096466353058}, {"attribute": "wGC1kjOQ", "criteria": "ZqgQ6rvH", "duration": 89, "reference": 0.6918059632822919}, {"attribute": "UxdRPORv", "criteria": "svZtSTUS", "duration": 15, "reference": 0.15202144672072626}], "match_options": {"options": [{"name": "IKqfiMhe", "type": "MYA22MFk"}, {"name": "F8N2GQbg", "type": "R4yi2jl0"}, {"name": "eWtBKNmM", "type": "jucqnsCg"}]}, "matchingRules": [{"attribute": "B3Fw6f0n", "criteria": "9lSfFD1F", "reference": 0.5147542100487645}, {"attribute": "MEhcbRNT", "criteria": "ERW3CVO5", "reference": 0.0013287078961774501}, {"attribute": "qqw4RSJ7", "criteria": "5duYK783", "reference": 0.5741470532563078}], "sort_ticket": {"search_result": "VZqTFe6p", "ticket_queue": "xLRqBKTd"}, "sort_tickets": [{"search_result": "9pr3zQpS", "threshold": 81, "ticket_queue": "0D9pPIQ8"}, {"search_result": "NHjekZwb", "threshold": 52, "ticket_queue": "xCbieLox"}, {"search_result": "qv4TDwVQ", "threshold": 39, "ticket_queue": "XWQ6GC4h"}], "sub_game_modes": {}, "ticket_flexing_selection": "EeOpKSaA", "ticket_flexing_selections": [{"selection": "e71Fvjee", "threshold": 6}, {"selection": "H6AynUgs", "threshold": 95}, {"selection": "vs8tYWRb", "threshold": 6}], "use_newest_ticket_for_flexing": true}, "sessionQueueTimeoutSeconds": 58, "socialMatchmaking": true, "sub_gamemode_selection": "random", "ticket_observability_enable": false, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName 'mAdj0W9b' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName 'VmImeOaG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName 'guSRC87m' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 21}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName 'vTQcnDCZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName 'DFlNiR4h' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "s7MUTB4f", "count": 11, "mmrMax": 0.5694478403050772, "mmrMean": 0.7567652455765634, "mmrMin": 0.1953083969381466, "mmrStdDev": 0.028265604043212322}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName 'bTB7GjKz' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 52, "party_attributes": {"NEZAno0Q": {}, "ij9RVEtf": {}, "6jgj9igF": {}}, "party_id": "X4fKIB5y", "party_members": [{"extra_attributes": {"NDjkjEe8": {}, "pWAlOS5Z": {}, "109nZUjo": {}}, "user_id": "L7ebIROl"}, {"extra_attributes": {"EhISz9NO": {}, "7gWvtcdw": {}, "dqy5EAYL": {}}, "user_id": "KGAmwLPI"}, {"extra_attributes": {"T5IyUZti": {}, "yCst7JSt": {}, "lDv8cMfb": {}}, "user_id": "tBvLcow0"}], "ticket_created_at": 7, "ticket_id": "ncVZqg9W"}, {"first_ticket_created_at": 22, "party_attributes": {"14OH2wN8": {}, "I5sXWIC3": {}, "Zp5R4Syd": {}}, "party_id": "zxheP8Yj", "party_members": [{"extra_attributes": {"JVjFnHyU": {}, "jNS9udnI": {}, "oeEoww63": {}}, "user_id": "rszr7ZKt"}, {"extra_attributes": {"DMvJ2l9b": {}, "Nm94KB97": {}, "0DUHB2dy": {}}, "user_id": "pY8WjSlG"}, {"extra_attributes": {"VzQDs4FN": {}, "iu8heECP": {}, "ePvyfASi": {}}, "user_id": "ba7mEZko"}], "ticket_created_at": 0, "ticket_id": "HoDiHkEv"}, {"first_ticket_created_at": 79, "party_attributes": {"gg4Y19lN": {}, "izILLy67": {}, "eg4LQs5t": {}}, "party_id": "hY7LQZPl", "party_members": [{"extra_attributes": {"tCGVB9Bk": {}, "oxDy85Uu": {}, "VLYASF04": {}}, "user_id": "aldk5WlX"}, {"extra_attributes": {"AEwiZRS9": {}, "LOPRCjlY": {}, "Q8WKoDWk": {}}, "user_id": "FpMHpA0v"}, {"extra_attributes": {"UuxQ9p1c": {}, "j31yVilD": {}, "uAGupxsM": {}}, "user_id": "BzORvEDS"}], "ticket_created_at": 91, "ticket_id": "74eh0Acc"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName 'hXzHJJL9' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 88}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'u6oqtaNz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'RKYjBHpd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'bJXcGVB1' \
    --matchID 'WlaPjuen' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["cOVsbHUH", "ftaEf69d", "kFUKJPc0"], "party_id": "e3acQE8R", "user_id": "AeWjDsR5"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'k1i3vyrj' \
    --matchID 'Mj8btZ9O' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'CorBZZC9' \
    --matchID 'EQ7GidIc' \
    --namespace $AB_NAMESPACE \
    --userID '32V8oQBo' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName 'KmRqhRba' \
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
    --channelName '1k1q1FiF' \
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