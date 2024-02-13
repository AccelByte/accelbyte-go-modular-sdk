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
    --limit '86' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCanMatch", "deployment": "GL8rBkmB", "description": "jregtE8J", "find_match_timeout_seconds": 80, "game_mode": "k1N5edOt", "joinable": false, "max_delay_ms": 98, "region_expansion_range_ms": 6, "region_expansion_rate_ms": 15, "region_latency_initial_range_ms": 100, "region_latency_max_ms": 22, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 26, "min": 41, "name": "7l0fCBiC"}, {"max": 8, "min": 96, "name": "xh1C0p0B"}, {"max": 10, "min": 32, "name": "bZyCwsLk"}], [{"max": 69, "min": 61, "name": "CL6Q36Po"}, {"max": 21, "min": 16, "name": "JoUyyKBK"}, {"max": 74, "min": 81, "name": "ULxa7htO"}], [{"max": 83, "min": 5, "name": "iiLTJdyM"}, {"max": 16, "min": 66, "name": "t7E2wImX"}, {"max": 63, "min": 25, "name": "F1cDaVRg"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 19, "role_flexing_second": 8}, "max_number": 49, "min_number": 96, "player_max_number": 18, "player_min_number": 35}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 60, "min": 42, "name": "h0a1k7bj"}, {"max": 55, "min": 8, "name": "NPr8ZMVa"}, {"max": 49, "min": 11, "name": "iOuftscr"}], [{"max": 91, "min": 27, "name": "xsewxpaJ"}, {"max": 9, "min": 89, "name": "et2AmZ5U"}, {"max": 25, "min": 74, "name": "Nk3jXMAg"}], [{"max": 95, "min": 25, "name": "hW6N4KIv"}, {"max": 14, "min": 12, "name": "vpn0rQjp"}, {"max": 32, "min": 80, "name": "cfTArOqn"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 46, "role_flexing_second": 61}, "duration": 59, "max_number": 38, "min_number": 17, "player_max_number": 77, "player_min_number": 83}, {"combination": {"alliances": [[{"max": 35, "min": 11, "name": "DDO8g24k"}, {"max": 31, "min": 5, "name": "KZL21fA1"}, {"max": 24, "min": 5, "name": "sr35Fdpo"}], [{"max": 46, "min": 13, "name": "NDmUmaoN"}, {"max": 50, "min": 4, "name": "NKPNJ5Sl"}, {"max": 6, "min": 50, "name": "zQ3vSxtU"}], [{"max": 0, "min": 96, "name": "u7PCEj34"}, {"max": 41, "min": 26, "name": "U0ZyYkmb"}, {"max": 95, "min": 83, "name": "KG675AtR"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 58, "role_flexing_second": 37}, "duration": 98, "max_number": 83, "min_number": 38, "player_max_number": 36, "player_min_number": 30}, {"combination": {"alliances": [[{"max": 94, "min": 70, "name": "AQ9pU7M5"}, {"max": 35, "min": 52, "name": "6I6yV0QY"}, {"max": 30, "min": 97, "name": "UyDUk5Kp"}], [{"max": 74, "min": 4, "name": "babAhltB"}, {"max": 88, "min": 89, "name": "UKDW7y1s"}, {"max": 87, "min": 96, "name": "2qyA7o0m"}], [{"max": 31, "min": 2, "name": "Yx0oW5wA"}, {"max": 8, "min": 70, "name": "8OGRPDft"}, {"max": 100, "min": 40, "name": "N3UiHlsd"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 6, "role_flexing_second": 75}, "duration": 50, "max_number": 42, "min_number": 100, "player_max_number": 0, "player_min_number": 42}], "batch_size": 87, "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 71, "flex_flat_step_range": 51, "flex_immunity_count": 42, "flex_range_max": 15, "flex_rate_ms": 80, "flex_step_max": 92, "force_authority_match": true, "initial_step_range": 23, "mmr_max": 27, "mmr_mean": 53, "mmr_min": 49, "mmr_std_dev": 100, "override_mmr_data": true, "use_bucket_mmr": false, "use_flat_flex_step": true}, "flexing_rule": [{"attribute": "IvfZDIsA", "criteria": "sJgYL4fn", "duration": 31, "reference": 0.32173543768724133}, {"attribute": "GHIx3jgQ", "criteria": "TdToVZiU", "duration": 54, "reference": 0.11895095183986226}, {"attribute": "qydIZqks", "criteria": "O0Gxe6AI", "duration": 64, "reference": 0.17515709329374762}], "match_options": {"options": [{"name": "xFBxHQ8L", "type": "FQumWPXT"}, {"name": "kQLCHMM5", "type": "71KSG0Sz"}, {"name": "CarkJLpy", "type": "YFuAMIlt"}]}, "matching_rule": [{"attribute": "qdAtQmSg", "criteria": "u1qzzkAE", "reference": 0.17119741954239254}, {"attribute": "aBhSGa9Y", "criteria": "NpFGPL5M", "reference": 0.5579295001722391}, {"attribute": "VrB4PKWy", "criteria": "uDhFE8km", "reference": 0.7755818800997671}], "rebalance_enable": false, "sort_ticket": {"search_result": "none", "ticket_queue": "oldestTicketAge"}, "sort_tickets": [{"search_result": "largestPartySize", "threshold": 76, "ticket_queue": "distance"}, {"search_result": "oldestTicketAge", "threshold": 76, "ticket_queue": "largestPartySize"}, {"search_result": "none", "threshold": 69, "ticket_queue": "none"}], "sub_game_modes": {"NxqjDvF7": {"alliance": {"combination": {"alliances": [[{"max": 91, "min": 60, "name": "HLkao0LY"}, {"max": 63, "min": 31, "name": "1lRF6N2d"}, {"max": 26, "min": 7, "name": "VCZcgTjO"}], [{"max": 14, "min": 40, "name": "d5ENlNAN"}, {"max": 92, "min": 83, "name": "4CCEkdQg"}, {"max": 0, "min": 92, "name": "IKQSAfFk"}], [{"max": 24, "min": 67, "name": "QnT3NeAj"}, {"max": 82, "min": 33, "name": "7A2HyZAt"}, {"max": 87, "min": 59, "name": "UowzaAsy"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 50, "role_flexing_second": 85}, "max_number": 92, "min_number": 29, "player_max_number": 99, "player_min_number": 90}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 58, "min": 76, "name": "cV767wrO"}, {"max": 66, "min": 97, "name": "ZYckKAQE"}, {"max": 45, "min": 63, "name": "BzoC4qbG"}], [{"max": 33, "min": 9, "name": "9EBBuxBI"}, {"max": 39, "min": 88, "name": "oKAXFl9t"}, {"max": 58, "min": 23, "name": "Ja6BZd35"}], [{"max": 25, "min": 10, "name": "strOidaM"}, {"max": 84, "min": 39, "name": "r0ui368T"}, {"max": 48, "min": 12, "name": "HYa1qUN1"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 31, "role_flexing_second": 27}, "duration": 42, "max_number": 43, "min_number": 62, "player_max_number": 94, "player_min_number": 12}, {"combination": {"alliances": [[{"max": 20, "min": 48, "name": "B2NmutPk"}, {"max": 75, "min": 4, "name": "sHz2ErHe"}, {"max": 84, "min": 80, "name": "IJmoRpio"}], [{"max": 83, "min": 10, "name": "4zmBJyyv"}, {"max": 10, "min": 41, "name": "WFxvrRkh"}, {"max": 56, "min": 4, "name": "bKLZIHIJ"}], [{"max": 52, "min": 82, "name": "yaJJfe1S"}, {"max": 38, "min": 60, "name": "qyfjtuI3"}, {"max": 50, "min": 95, "name": "3WyVyZam"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 55, "role_flexing_second": 56}, "duration": 86, "max_number": 8, "min_number": 63, "player_max_number": 58, "player_min_number": 20}, {"combination": {"alliances": [[{"max": 84, "min": 66, "name": "amG55tEl"}, {"max": 72, "min": 50, "name": "v952u8tr"}, {"max": 52, "min": 8, "name": "9mcqLMaj"}], [{"max": 47, "min": 87, "name": "zzku2AyE"}, {"max": 55, "min": 4, "name": "JY5DMSfI"}, {"max": 54, "min": 90, "name": "4JLWx66U"}], [{"max": 39, "min": 18, "name": "K24aIl7x"}, {"max": 29, "min": 85, "name": "RaF4I0hF"}, {"max": 67, "min": 79, "name": "Gi9YoRoY"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 89, "role_flexing_second": 34}, "duration": 57, "max_number": 78, "min_number": 91, "player_max_number": 43, "player_min_number": 83}], "name": "mPspEZXf"}, "f8SvurMI": {"alliance": {"combination": {"alliances": [[{"max": 62, "min": 41, "name": "Y6xHaRCH"}, {"max": 41, "min": 18, "name": "nLkWf7FH"}, {"max": 41, "min": 66, "name": "GL3jP5Ua"}], [{"max": 46, "min": 89, "name": "P0Dk3aBb"}, {"max": 31, "min": 27, "name": "nLvCA2s2"}, {"max": 84, "min": 79, "name": "RdCYPot9"}], [{"max": 99, "min": 9, "name": "811E4ryx"}, {"max": 9, "min": 76, "name": "eDs8x8TU"}, {"max": 79, "min": 70, "name": "NbUswr7G"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 3, "role_flexing_second": 4}, "max_number": 75, "min_number": 59, "player_max_number": 46, "player_min_number": 37}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 40, "min": 92, "name": "bODllCUE"}, {"max": 76, "min": 5, "name": "zkULlWwn"}, {"max": 88, "min": 68, "name": "agIAThnI"}], [{"max": 15, "min": 59, "name": "wq6XD0gp"}, {"max": 18, "min": 62, "name": "RM2RwM0d"}, {"max": 55, "min": 92, "name": "3wWrIpM2"}], [{"max": 69, "min": 97, "name": "e2AaZol3"}, {"max": 2, "min": 64, "name": "YSQw5sNL"}, {"max": 34, "min": 70, "name": "CHLjVlyc"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 96, "role_flexing_second": 26}, "duration": 8, "max_number": 21, "min_number": 16, "player_max_number": 71, "player_min_number": 57}, {"combination": {"alliances": [[{"max": 20, "min": 57, "name": "qf33iQru"}, {"max": 53, "min": 9, "name": "vnQioRQC"}, {"max": 20, "min": 96, "name": "YORg5VSg"}], [{"max": 100, "min": 88, "name": "T4GpPvLM"}, {"max": 16, "min": 11, "name": "ygxCzD3s"}, {"max": 50, "min": 1, "name": "Iy3fHgLa"}], [{"max": 46, "min": 78, "name": "apaCOBWC"}, {"max": 45, "min": 80, "name": "3CbDvsyZ"}, {"max": 64, "min": 15, "name": "2TaJA8jH"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 41, "role_flexing_second": 50}, "duration": 45, "max_number": 56, "min_number": 9, "player_max_number": 77, "player_min_number": 18}, {"combination": {"alliances": [[{"max": 44, "min": 20, "name": "FpHiX3xa"}, {"max": 13, "min": 76, "name": "0EppKazR"}, {"max": 21, "min": 100, "name": "fW7GyzqE"}], [{"max": 55, "min": 92, "name": "BMbt8YXP"}, {"max": 49, "min": 53, "name": "pIliIowV"}, {"max": 92, "min": 53, "name": "2cMZFaQA"}], [{"max": 10, "min": 87, "name": "PzcJbOUi"}, {"max": 46, "min": 62, "name": "6LoAyYPi"}, {"max": 11, "min": 85, "name": "kjZJS3gF"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 24, "role_flexing_second": 14}, "duration": 89, "max_number": 67, "min_number": 63, "player_max_number": 95, "player_min_number": 69}], "name": "ZlpjD31d"}, "SaD7joU0": {"alliance": {"combination": {"alliances": [[{"max": 19, "min": 50, "name": "Zml0Hue5"}, {"max": 68, "min": 82, "name": "ypH1KaX4"}, {"max": 37, "min": 67, "name": "LYMXHoD1"}], [{"max": 1, "min": 55, "name": "u9LBkY6s"}, {"max": 32, "min": 53, "name": "mUERl0Oq"}, {"max": 46, "min": 23, "name": "Bzl7Dd8Q"}], [{"max": 21, "min": 78, "name": "BgTqVTJ6"}, {"max": 55, "min": 41, "name": "1JoshrLK"}, {"max": 66, "min": 8, "name": "jFs6V1j5"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 96, "role_flexing_second": 29}, "max_number": 42, "min_number": 68, "player_max_number": 20, "player_min_number": 2}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 9, "min": 90, "name": "9EYLKb36"}, {"max": 55, "min": 50, "name": "H9XCuYqX"}, {"max": 23, "min": 59, "name": "x9bpuZP7"}], [{"max": 30, "min": 70, "name": "ABrDmvxq"}, {"max": 78, "min": 57, "name": "2ZjOZ5m6"}, {"max": 79, "min": 63, "name": "zlkHJVRV"}], [{"max": 5, "min": 1, "name": "9iPirDP2"}, {"max": 66, "min": 4, "name": "Dt9jF9g5"}, {"max": 68, "min": 17, "name": "9yKM7qxp"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 53, "role_flexing_second": 13}, "duration": 81, "max_number": 59, "min_number": 79, "player_max_number": 66, "player_min_number": 21}, {"combination": {"alliances": [[{"max": 47, "min": 6, "name": "odyOrKvH"}, {"max": 31, "min": 68, "name": "L9lEIWr0"}, {"max": 60, "min": 9, "name": "WYYfYj4d"}], [{"max": 82, "min": 18, "name": "p0KgjLrL"}, {"max": 28, "min": 33, "name": "k4emZPz1"}, {"max": 57, "min": 29, "name": "2Z8Kk3Xm"}], [{"max": 49, "min": 80, "name": "X87a94sO"}, {"max": 6, "min": 55, "name": "P1Gw35AJ"}, {"max": 34, "min": 89, "name": "pwzTv8BN"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 90, "role_flexing_second": 38}, "duration": 46, "max_number": 55, "min_number": 50, "player_max_number": 8, "player_min_number": 60}, {"combination": {"alliances": [[{"max": 97, "min": 43, "name": "6oaWVOQV"}, {"max": 80, "min": 25, "name": "lYmENV2G"}, {"max": 50, "min": 66, "name": "MZfyRzHi"}], [{"max": 71, "min": 69, "name": "hSNdcYLE"}, {"max": 52, "min": 38, "name": "PqLI1yZ3"}, {"max": 79, "min": 71, "name": "D9XXW4Tc"}], [{"max": 88, "min": 85, "name": "8vmn50uW"}, {"max": 31, "min": 32, "name": "lBhgkJ1W"}, {"max": 26, "min": 60, "name": "LSHyMsT0"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 49, "role_flexing_second": 80}, "duration": 66, "max_number": 76, "min_number": 31, "player_max_number": 84, "player_min_number": 92}], "name": "GVaI9xDk"}}, "ticket_flexing_selection": "pivot", "ticket_flexing_selections": [{"selection": "newest", "threshold": 68}, {"selection": "random", "threshold": 65}, {"selection": "random", "threshold": 41}], "use_newest_ticket_for_flexing": true}, "session_queue_timeout_seconds": 24, "social_matchmaking": false, "sub_gamemode_selection": "ticketOrder", "ticket_observability_enable": true, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName '5qjW61PS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'bj3BdkBq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "rV0i6T31", "players": [{"results": [{"attribute": "JvzTHUrS", "value": 0.5642910505359728}, {"attribute": "LQQSrMKc", "value": 0.7161004677933362}, {"attribute": "p2UYMMKj", "value": 0.7877607598095401}], "user_id": "WLLxmw43"}, {"results": [{"attribute": "Lja3zYtC", "value": 0.19517490709302265}, {"attribute": "lYPfosQy", "value": 0.21256144825794576}, {"attribute": "r3QrJ5Oe", "value": 0.05338322232016324}], "user_id": "XxMEltGt"}, {"results": [{"attribute": "DZWhpOyg", "value": 0.325630597348469}, {"attribute": "MO4Cv9ph", "value": 0.8909377811100093}, {"attribute": "gBQkxnSV", "value": 0.5581222905659662}], "user_id": "GbhEsImI"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "d8SwvGuS"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "DNmu24dK", "client_version": "8t0nvMti", "deployment": "vNHtpe1c", "error_code": 76, "error_message": "jH0vPwc4", "game_mode": "LB3FUb8P", "is_mock": "nOtiUeNp", "joinable": false, "match_id": "RdwN48WV", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 69, "party_attributes": {"5sc1a7Ih": {}, "dcCjlPCL": {}, "RTV3BTUr": {}}, "party_id": "ozFikB5z", "party_members": [{"extra_attributes": {"Xn3gpJPU": {}, "0lLd9NnQ": {}, "Nc3XYKXm": {}}, "user_id": "3ZAkgLe9"}, {"extra_attributes": {"kjoEHVhF": {}, "zwESQB0Q": {}, "yMOgMmgP": {}}, "user_id": "jch4DbRv"}, {"extra_attributes": {"RpeHkob2": {}, "G18eveun": {}, "ccbBezai": {}}, "user_id": "cifauSF3"}], "ticket_created_at": 91, "ticket_id": "da3frNkJ"}, {"first_ticket_created_at": 76, "party_attributes": {"yjlDlBCV": {}, "wZhuGEWf": {}, "x9v2NxYf": {}}, "party_id": "Vsp0BL9y", "party_members": [{"extra_attributes": {"RJVQyhlF": {}, "65QPEp3q": {}, "mSC6LTvE": {}}, "user_id": "5tDplV03"}, {"extra_attributes": {"Q0B5i1zp": {}, "keVURVws": {}, "hhef27d3": {}}, "user_id": "6fyt9FTb"}, {"extra_attributes": {"ESr9CDA6": {}, "GgI9Ipgz": {}, "kbovD8LM": {}}, "user_id": "Xo2tzt2c"}], "ticket_created_at": 72, "ticket_id": "KEXEekhK"}, {"first_ticket_created_at": 67, "party_attributes": {"TEU8in3o": {}, "IQLW2Jes": {}, "ydJlFzjO": {}}, "party_id": "JDtAkdmz", "party_members": [{"extra_attributes": {"BrFTGaql": {}, "Mg132G3w": {}, "I7fwQ2Nf": {}}, "user_id": "wYlL393V"}, {"extra_attributes": {"CJxudfxW": {}, "Nmuamt7z": {}, "CKyItWqd": {}}, "user_id": "Vgw5K7KN"}, {"extra_attributes": {"w08UlxMJ": {}, "YDjHU0jc": {}, "f3yS87ti": {}}, "user_id": "GD8zMRyu"}], "ticket_created_at": 20, "ticket_id": "pFM51uGX"}]}, {"matching_parties": [{"first_ticket_created_at": 99, "party_attributes": {"MnLpCkWJ": {}, "bH0YjgXh": {}, "GChstbU8": {}}, "party_id": "pmbs4rqO", "party_members": [{"extra_attributes": {"jpRSvzdd": {}, "t4YT3tgm": {}, "Nm4ueTob": {}}, "user_id": "OSlx7RZB"}, {"extra_attributes": {"3e6c7Lex": {}, "zpBkjlUg": {}, "mfVzFBvP": {}}, "user_id": "bH8uE7qf"}, {"extra_attributes": {"rsD26UMM": {}, "zoWm9cGK": {}, "2bQa10gT": {}}, "user_id": "HHbTKu8d"}], "ticket_created_at": 4, "ticket_id": "UL72Vfe7"}, {"first_ticket_created_at": 89, "party_attributes": {"ShY2YuJd": {}, "vntpUtpE": {}, "lwOiefOl": {}}, "party_id": "I9hBHtYG", "party_members": [{"extra_attributes": {"J49JMcIP": {}, "4zpLRY9G": {}, "u0LC4Vnu": {}}, "user_id": "wpGY5W3c"}, {"extra_attributes": {"k4bcxomt": {}, "Fl7BvrWp": {}, "nlOYiAMQ": {}}, "user_id": "11mDTDgl"}, {"extra_attributes": {"oLcHCvie": {}, "zaJoNDmI": {}, "yenZHw4e": {}}, "user_id": "Une7lijo"}], "ticket_created_at": 29, "ticket_id": "9MJjNw2j"}, {"first_ticket_created_at": 59, "party_attributes": {"GWpu3lLm": {}, "EK0R1lx0": {}, "nt7ep4xT": {}}, "party_id": "IqTwNiCY", "party_members": [{"extra_attributes": {"nLu2CvBf": {}, "nLA2dtjy": {}, "0Sd4Y7im": {}}, "user_id": "6Cn0OQFu"}, {"extra_attributes": {"qM9PIVuF": {}, "SdFhmLsy": {}, "Xh5g4K6l": {}}, "user_id": "haBVQB2B"}, {"extra_attributes": {"kSCuJQMU": {}, "EungxihI": {}, "knFNyZbP": {}}, "user_id": "bT2gEE1H"}], "ticket_created_at": 35, "ticket_id": "0cwomET4"}]}, {"matching_parties": [{"first_ticket_created_at": 56, "party_attributes": {"u6vzLXLx": {}, "EerCiJ3L": {}, "XBnojSvT": {}}, "party_id": "3VKXaqLr", "party_members": [{"extra_attributes": {"xGRQC6qR": {}, "zSRjeAm0": {}, "JmNLL5OV": {}}, "user_id": "SFxLbhrv"}, {"extra_attributes": {"a7WqgJCt": {}, "xXCYzLuv": {}, "XRcbgdhb": {}}, "user_id": "EJEqLo2h"}, {"extra_attributes": {"EdO0vBe0": {}, "MDuIivJI": {}, "4f6LXu1P": {}}, "user_id": "6SZAcCzv"}], "ticket_created_at": 46, "ticket_id": "QxLIt2z6"}, {"first_ticket_created_at": 32, "party_attributes": {"6Df5JFXm": {}, "DGYRPasu": {}, "jkKHaqjQ": {}}, "party_id": "wmQ69hkq", "party_members": [{"extra_attributes": {"jB5SypJT": {}, "hz95Z6BN": {}, "roRvXaXh": {}}, "user_id": "wRqGrV53"}, {"extra_attributes": {"aq5G6H0u": {}, "jE7FANBR": {}, "KsxjCHXe": {}}, "user_id": "jVXQHjRg"}, {"extra_attributes": {"25qiYxd2": {}, "faSaFJz8": {}, "wfuORJR0": {}}, "user_id": "U84M9q2H"}], "ticket_created_at": 62, "ticket_id": "0EPKdHCk"}, {"first_ticket_created_at": 9, "party_attributes": {"Sm7Tpc7i": {}, "x86X4WNi": {}, "1ull1q9Y": {}}, "party_id": "V6zvM2zq", "party_members": [{"extra_attributes": {"VV8o7M8w": {}, "DTq6bRWd": {}, "fbiDaWb0": {}}, "user_id": "TKLNZDD3"}, {"extra_attributes": {"TDSJTrGi": {}, "R2ae2v9g": {}, "U99LbDkj": {}}, "user_id": "oVPunXpN"}, {"extra_attributes": {"nrwAAMBh": {}, "EX8Sstuw": {}, "XZq4sQW5": {}}, "user_id": "OhqscHUI"}], "ticket_created_at": 97, "ticket_id": "f5tZ6owK"}]}], "namespace": "cOrksaRW", "party_attributes": {"v5BDyOD9": {}, "Iy14xmwn": {}, "CfStkesM": {}}, "party_id": "It2vXxRi", "queued_at": 44, "region": "8vEDiK4D", "server_name": "FpTxLS4T", "status": "ICKUV4Ih", "ticket_id": "o0Cy2Fhn", "ticket_ids": ["HNsl4Krp", "uoVPC457", "qLYe90C4"], "updated_at": "1981-01-21T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "8IMniLgd"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'ApavqtOR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 66, "userID": "8j2W5D9z", "weight": 0.18058395861054488}' \
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
    --matchIDs 'eaGiPOkW' \
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
    --strategy '7It38hil' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName '94Aw2UKO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'efijCtHI' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCanMatchOnDifferentTeam", "deployment": "plgVJdvo", "description": "MlqgQavH", "findMatchTimeoutSeconds": 28, "joinable": false, "max_delay_ms": 50, "region_expansion_range_ms": 2, "region_expansion_rate_ms": 70, "region_latency_initial_range_ms": 28, "region_latency_max_ms": 34, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 15, "min": 83, "name": "DqcvC5HQ"}, {"max": 89, "min": 83, "name": "VnNMHEFN"}, {"max": 25, "min": 71, "name": "UGFxW03r"}], [{"max": 60, "min": 70, "name": "504DxJ5q"}, {"max": 96, "min": 77, "name": "ShPLGBqA"}, {"max": 13, "min": 77, "name": "fvatakWq"}], [{"max": 38, "min": 35, "name": "vHyhV5yG"}, {"max": 87, "min": 92, "name": "WtrMVpik"}, {"max": 30, "min": 21, "name": "IxCOO0jn"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 0, "role_flexing_second": 40}, "maxNumber": 50, "minNumber": 20, "playerMaxNumber": 9, "playerMinNumber": 7}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 29, "min": 72, "name": "JlXpgVbK"}, {"max": 5, "min": 62, "name": "LfpEUaTi"}, {"max": 80, "min": 11, "name": "vtmoQ0Ho"}], [{"max": 80, "min": 58, "name": "pTCenqcv"}, {"max": 62, "min": 76, "name": "m09fzBJ1"}, {"max": 97, "min": 50, "name": "NAxatk6G"}], [{"max": 68, "min": 96, "name": "2X0xxvyg"}, {"max": 62, "min": 61, "name": "TzL8m7og"}, {"max": 57, "min": 87, "name": "Uby8WRDE"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 33, "role_flexing_second": 67}, "duration": 64, "max_number": 65, "min_number": 37, "player_max_number": 27, "player_min_number": 65}, {"combination": {"alliances": [[{"max": 33, "min": 90, "name": "hZAdS9aw"}, {"max": 56, "min": 86, "name": "JnGCaPgB"}, {"max": 96, "min": 59, "name": "AxN4Z9tZ"}], [{"max": 90, "min": 64, "name": "qOBYjzPG"}, {"max": 74, "min": 96, "name": "Ymc7tKLp"}, {"max": 82, "min": 54, "name": "kll38ESm"}], [{"max": 45, "min": 22, "name": "kLkeWXIA"}, {"max": 21, "min": 84, "name": "7iqeVSgT"}, {"max": 73, "min": 37, "name": "KILVXw6I"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 9, "role_flexing_second": 73}, "duration": 88, "max_number": 16, "min_number": 41, "player_max_number": 39, "player_min_number": 53}, {"combination": {"alliances": [[{"max": 66, "min": 52, "name": "dFyT7xoE"}, {"max": 53, "min": 96, "name": "PahckLwU"}, {"max": 22, "min": 55, "name": "BHaA8fO8"}], [{"max": 95, "min": 49, "name": "jCoVZQ3u"}, {"max": 62, "min": 56, "name": "Xlyz1Aq8"}, {"max": 48, "min": 83, "name": "G1RM0xeM"}], [{"max": 15, "min": 4, "name": "8PHTL7LT"}, {"max": 8, "min": 26, "name": "ZXH9JGp3"}, {"max": 31, "min": 73, "name": "SQJ8TM88"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 88, "role_flexing_second": 61}, "duration": 91, "max_number": 63, "min_number": 29, "player_max_number": 35, "player_min_number": 28}], "batch_size": 66, "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 75, "flex_flat_step_range": 15, "flex_immunity_count": 27, "flex_range_max": 99, "flex_rate_ms": 17, "flex_step_max": 72, "force_authority_match": false, "initial_step_range": 18, "mmr_max": 90, "mmr_mean": 27, "mmr_min": 51, "mmr_std_dev": 93, "override_mmr_data": true, "use_bucket_mmr": false, "use_flat_flex_step": true}, "flexingRules": [{"attribute": "ioQAfkCD", "criteria": "mtFUETvc", "duration": 53, "reference": 0.7037370790070289}, {"attribute": "UehEI9qa", "criteria": "rzMqO4Hx", "duration": 52, "reference": 0.9360369564873974}, {"attribute": "cA2B7jfg", "criteria": "ZDM0SBSI", "duration": 39, "reference": 0.5690333717445611}], "match_options": {"options": [{"name": "HctzY4MI", "type": "JjNuZuRM"}, {"name": "fZTnK9hO", "type": "OeXBbL2I"}, {"name": "JrXKlDSK", "type": "igz0gSnQ"}]}, "matchingRules": [{"attribute": "MfPn3XIq", "criteria": "tMXkwFrA", "reference": 0.4546354098582789}, {"attribute": "7m6HtE7P", "criteria": "kORaMOgy", "reference": 0.926906255341513}, {"attribute": "Oisjwvr0", "criteria": "6iS47KXI", "reference": 0.9074175907639331}], "sort_ticket": {"search_result": "largestPartySize", "ticket_queue": "oldestTicketAge"}, "sort_tickets": [{"search_result": "random", "threshold": 25, "ticket_queue": "none"}, {"search_result": "oldestTicketAge", "threshold": 84, "ticket_queue": "random"}, {"search_result": "oldestTicketAge", "threshold": 26, "ticket_queue": "distance"}], "sub_game_modes": {}, "ticket_flexing_selection": "oldest", "ticket_flexing_selections": [{"selection": "oldest", "threshold": 4}, {"selection": "oldest", "threshold": 73}, {"selection": "newest", "threshold": 17}], "use_newest_ticket_for_flexing": true}, "sessionQueueTimeoutSeconds": 88, "socialMatchmaking": true, "sub_gamemode_selection": "ticketOrder", "ticket_observability_enable": true, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName 'cH3GeLDm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName 'LeBPzaSv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName 'N1UKbCfb' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 68}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName 'UGXfqCM9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName '0tHhgVOd' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "QlN3GM6s", "count": 39, "mmrMax": 0.10305630404826271, "mmrMean": 0.4941579093438384, "mmrMin": 0.1649152269942895, "mmrStdDev": 0.08552335429575753}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName 'P0FqCaSs' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 85, "party_attributes": {"c7z4d0h1": {}, "0zgmletH": {}, "Ehu7ZZ0j": {}}, "party_id": "BnyjdSHg", "party_members": [{"extra_attributes": {"cc1ZCW7t": {}, "kzFKvVql": {}, "V2n2MRfk": {}}, "user_id": "wIbzkN3s"}, {"extra_attributes": {"rcjhEBqy": {}, "aUIteh7O": {}, "7mE9Q26t": {}}, "user_id": "t6giXRof"}, {"extra_attributes": {"9eVfcthe": {}, "M8e4WHq2": {}, "cLfuOAtS": {}}, "user_id": "BjGT2KwM"}], "ticket_created_at": 89, "ticket_id": "DcetsJ9Z"}, {"first_ticket_created_at": 92, "party_attributes": {"vJZ2pnCJ": {}, "Qm5hxLMf": {}, "hNHonzwQ": {}}, "party_id": "55GEJTmH", "party_members": [{"extra_attributes": {"ZSPEOQoc": {}, "O8cqKwv0": {}, "ZDZOnGTb": {}}, "user_id": "buOQMPWO"}, {"extra_attributes": {"nzxRKVtS": {}, "0aqdTIfj": {}, "u8WcAgyT": {}}, "user_id": "btbseUM6"}, {"extra_attributes": {"9b4o1nrB": {}, "faKDU0QT": {}, "8STI1UPx": {}}, "user_id": "KUlAn3VS"}], "ticket_created_at": 78, "ticket_id": "IVk4WBpQ"}, {"first_ticket_created_at": 24, "party_attributes": {"cgXnbQUD": {}, "pxMa4mvJ": {}, "HBM2eZlS": {}}, "party_id": "c0XYQXIt", "party_members": [{"extra_attributes": {"0VkD0i3h": {}, "BUdHYDXS": {}, "gN8Dlqya": {}}, "user_id": "5r9qxINF"}, {"extra_attributes": {"omCMxHJC": {}, "gU8GcFMA": {}, "nM1dFfyC": {}}, "user_id": "6IhGpILd"}, {"extra_attributes": {"z6MLmWEG": {}, "GrIQuzHi": {}, "Y48BLjLe": {}}, "user_id": "TmLycb78"}], "ticket_created_at": 91, "ticket_id": "p08FGPbm"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName 'oE932wrH' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 35}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'YsDJ1abD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName '8Tsip9Hs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'O0LYxnHr' \
    --matchID '9YGgG8Mr' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["c0PRWr9u", "2UqaqBzN", "FcY3FIug"], "party_id": "8mgEsZtt", "user_id": "YctIRVPm"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName '4Ply9SLy' \
    --matchID 'VYeNb6Ra' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'b73PwQMz' \
    --matchID 'cO4rvZvh' \
    --namespace $AB_NAMESPACE \
    --userID '9e1ZOeQc' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName 'XBe2o9i7' \
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
    --channelName 'gWHgYBUM' \
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