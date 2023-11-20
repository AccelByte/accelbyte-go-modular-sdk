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
    --limit '35' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "u47mfqJ6", "description": "gwJbrVII", "find_match_timeout_seconds": 93, "game_mode": "HVWKQWm7", "joinable": true, "max_delay_ms": 29, "region_expansion_range_ms": 68, "region_expansion_rate_ms": 13, "region_latency_initial_range_ms": 96, "region_latency_max_ms": 88, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 10, "min": 88, "name": "LJ3oEqwu"}, {"max": 23, "min": 34, "name": "t3kQp4Wx"}, {"max": 47, "min": 17, "name": "v8UifxPH"}], [{"max": 55, "min": 78, "name": "AuMPKMoH"}, {"max": 23, "min": 15, "name": "EkQctk2K"}, {"max": 64, "min": 99, "name": "mLrZtdZS"}], [{"max": 28, "min": 13, "name": "C4BKM4lP"}, {"max": 58, "min": 9, "name": "9f35gYW4"}, {"max": 82, "min": 16, "name": "efeD4fiL"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 47, "role_flexing_second": 56}, "max_number": 61, "min_number": 20, "player_max_number": 67, "player_min_number": 31}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 29, "min": 33, "name": "2miKl0A9"}, {"max": 77, "min": 16, "name": "xfO1yeLr"}, {"max": 1, "min": 10, "name": "CKmuVXsI"}], [{"max": 21, "min": 54, "name": "5uSlXMNu"}, {"max": 96, "min": 28, "name": "PFKtuaTs"}, {"max": 94, "min": 18, "name": "qG16bYRP"}], [{"max": 98, "min": 40, "name": "IUlWgY7s"}, {"max": 31, "min": 40, "name": "uEnHqcum"}, {"max": 75, "min": 42, "name": "2JwPSU7T"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 5, "role_flexing_second": 11}, "duration": 33, "max_number": 71, "min_number": 91, "player_max_number": 78, "player_min_number": 99}, {"combination": {"alliances": [[{"max": 2, "min": 33, "name": "OqRMNA8D"}, {"max": 52, "min": 82, "name": "7bmdf0AI"}, {"max": 90, "min": 41, "name": "EFLLqurY"}], [{"max": 22, "min": 76, "name": "EHVKDBNf"}, {"max": 92, "min": 12, "name": "Z0X0Tnmr"}, {"max": 42, "min": 59, "name": "Sr9dxOhS"}], [{"max": 35, "min": 41, "name": "7S4klfXN"}, {"max": 62, "min": 71, "name": "CpBMaXUs"}, {"max": 30, "min": 80, "name": "cskHDM30"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 84, "role_flexing_second": 53}, "duration": 61, "max_number": 87, "min_number": 60, "player_max_number": 58, "player_min_number": 77}, {"combination": {"alliances": [[{"max": 50, "min": 36, "name": "jHXJlZbf"}, {"max": 50, "min": 1, "name": "iHdA5pA6"}, {"max": 58, "min": 9, "name": "WDOenpXQ"}], [{"max": 54, "min": 38, "name": "bppATXYW"}, {"max": 72, "min": 48, "name": "llMFdszT"}, {"max": 6, "min": 12, "name": "z7TtiIYD"}], [{"max": 59, "min": 56, "name": "EEx12iox"}, {"max": 57, "min": 50, "name": "Wp5ETvFg"}, {"max": 89, "min": 5, "name": "EPb8ESG3"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 31, "role_flexing_second": 72}, "duration": 56, "max_number": 87, "min_number": 60, "player_max_number": 36, "player_min_number": 66}], "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 71, "flex_flat_step_range": 41, "flex_immunity_count": 23, "flex_range_max": 11, "flex_rate_ms": 73, "flex_step_max": 78, "force_authority_match": true, "initial_step_range": 4, "mmr_max": 4, "mmr_mean": 53, "mmr_min": 7, "mmr_std_dev": 13, "override_mmr_data": false, "use_bucket_mmr": false, "use_flat_flex_step": false}, "flexing_rule": [{"attribute": "SZ1QnixC", "criteria": "JzvMt499", "duration": 15, "reference": 0.8561010632304584}, {"attribute": "ECZ7kbBl", "criteria": "erVspnUD", "duration": 63, "reference": 0.7084852327033915}, {"attribute": "sskAdNkm", "criteria": "HuuWwOnK", "duration": 96, "reference": 0.2359831145455944}], "match_options": {"options": [{"name": "Kc9DLJlu", "type": "kJmNQtAW"}, {"name": "OeqtPYqW", "type": "VFXJSOT0"}, {"name": "E631PPEc", "type": "B6Zsd4ib"}]}, "matching_rule": [{"attribute": "wKq9lGdV", "criteria": "1apaeTwk", "reference": 0.9034831525189826}, {"attribute": "RcQdcsaU", "criteria": "605LIWXK", "reference": 0.23040567218805663}, {"attribute": "O8IKwNGg", "criteria": "yZpkcBxd", "reference": 0.2747502953489872}], "rebalance_enable": false, "sub_game_modes": {"uoKphxaJ": {"alliance": {"combination": {"alliances": [[{"max": 24, "min": 10, "name": "1bte1oRZ"}, {"max": 5, "min": 15, "name": "ZbaQHqzC"}, {"max": 44, "min": 33, "name": "n2eA369i"}], [{"max": 7, "min": 5, "name": "vUHiHzUF"}, {"max": 91, "min": 89, "name": "Ad4fAzbp"}, {"max": 22, "min": 2, "name": "6WNM4Vpz"}], [{"max": 22, "min": 37, "name": "efz6L6dW"}, {"max": 88, "min": 77, "name": "ZROFoqBc"}, {"max": 76, "min": 73, "name": "ddx68SsI"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 6, "role_flexing_second": 46}, "max_number": 26, "min_number": 10, "player_max_number": 83, "player_min_number": 94}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 37, "min": 8, "name": "4626HfPG"}, {"max": 45, "min": 5, "name": "4LAVc7RX"}, {"max": 4, "min": 100, "name": "MLNXuv6Z"}], [{"max": 25, "min": 35, "name": "zGs4kTc0"}, {"max": 5, "min": 50, "name": "cmwi9Xw5"}, {"max": 57, "min": 7, "name": "Sfp1nkY2"}], [{"max": 98, "min": 14, "name": "t5opszhT"}, {"max": 59, "min": 27, "name": "mcHm0gql"}, {"max": 51, "min": 43, "name": "k6NY5xfH"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 50, "role_flexing_second": 19}, "duration": 89, "max_number": 97, "min_number": 84, "player_max_number": 43, "player_min_number": 20}, {"combination": {"alliances": [[{"max": 50, "min": 19, "name": "KdikpCHa"}, {"max": 7, "min": 99, "name": "UuVLmJhS"}, {"max": 42, "min": 72, "name": "9MmCvIfy"}], [{"max": 66, "min": 38, "name": "uiafSfPN"}, {"max": 56, "min": 84, "name": "X6UUigTA"}, {"max": 100, "min": 10, "name": "iKsd0c1C"}], [{"max": 3, "min": 70, "name": "1XIk7SDv"}, {"max": 95, "min": 18, "name": "cFNYjc12"}, {"max": 70, "min": 18, "name": "4q0EnmIq"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 33, "role_flexing_second": 71}, "duration": 24, "max_number": 11, "min_number": 91, "player_max_number": 8, "player_min_number": 65}, {"combination": {"alliances": [[{"max": 95, "min": 10, "name": "jrY8UG7k"}, {"max": 44, "min": 8, "name": "hGGFFmtA"}, {"max": 25, "min": 48, "name": "8irAI8az"}], [{"max": 27, "min": 60, "name": "P0pObdQa"}, {"max": 46, "min": 24, "name": "8YP150Cb"}, {"max": 80, "min": 62, "name": "81uvyn9L"}], [{"max": 45, "min": 12, "name": "MDtjCg3w"}, {"max": 47, "min": 44, "name": "6r5PVzu4"}, {"max": 46, "min": 44, "name": "ARLiqle3"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 82, "role_flexing_second": 18}, "duration": 32, "max_number": 52, "min_number": 51, "player_max_number": 98, "player_min_number": 69}], "name": "Ojt4l2qq"}, "atDTClY9": {"alliance": {"combination": {"alliances": [[{"max": 78, "min": 56, "name": "2FJQ4W1S"}, {"max": 68, "min": 97, "name": "sV5AFxhI"}, {"max": 66, "min": 76, "name": "0QRDqU3d"}], [{"max": 87, "min": 74, "name": "d93SmDqH"}, {"max": 86, "min": 96, "name": "FYou0ZOS"}, {"max": 89, "min": 42, "name": "RL0c8tVq"}], [{"max": 11, "min": 41, "name": "LOyCrlwz"}, {"max": 67, "min": 54, "name": "CbJbeY95"}, {"max": 3, "min": 55, "name": "WG90qxqT"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 74, "role_flexing_second": 6}, "max_number": 42, "min_number": 23, "player_max_number": 10, "player_min_number": 12}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 7, "min": 62, "name": "6hLzABgh"}, {"max": 82, "min": 80, "name": "gIdCzJqE"}, {"max": 20, "min": 42, "name": "oZi4vniu"}], [{"max": 11, "min": 8, "name": "IexDwSyv"}, {"max": 10, "min": 42, "name": "HdDQIFfJ"}, {"max": 97, "min": 1, "name": "cI03S81c"}], [{"max": 96, "min": 36, "name": "7FY8GNH4"}, {"max": 33, "min": 94, "name": "7cmRYzoP"}, {"max": 25, "min": 23, "name": "SATop4GC"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 71, "role_flexing_second": 9}, "duration": 72, "max_number": 44, "min_number": 20, "player_max_number": 84, "player_min_number": 49}, {"combination": {"alliances": [[{"max": 41, "min": 0, "name": "BkjMJ7f8"}, {"max": 77, "min": 83, "name": "TdMH0kH5"}, {"max": 92, "min": 10, "name": "9XvxnO5l"}], [{"max": 73, "min": 69, "name": "3QG8VhFe"}, {"max": 47, "min": 64, "name": "Juakr9Ks"}, {"max": 37, "min": 26, "name": "Xktm0vNY"}], [{"max": 70, "min": 30, "name": "Z5ww6Roi"}, {"max": 17, "min": 78, "name": "v1worWjH"}, {"max": 11, "min": 13, "name": "oO58jgL0"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 54, "role_flexing_second": 34}, "duration": 88, "max_number": 35, "min_number": 92, "player_max_number": 55, "player_min_number": 91}, {"combination": {"alliances": [[{"max": 39, "min": 21, "name": "XVbgGBzF"}, {"max": 53, "min": 37, "name": "5f87pKmW"}, {"max": 79, "min": 34, "name": "0bI9ZSPt"}], [{"max": 62, "min": 11, "name": "fvxsg1xg"}, {"max": 98, "min": 66, "name": "lXoiNwwP"}, {"max": 11, "min": 87, "name": "bPiYwg5S"}], [{"max": 73, "min": 0, "name": "jH0Vmu1p"}, {"max": 17, "min": 22, "name": "lnJV1iIY"}, {"max": 14, "min": 48, "name": "kbArjhOY"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 45, "role_flexing_second": 38}, "duration": 0, "max_number": 0, "min_number": 44, "player_max_number": 45, "player_min_number": 79}], "name": "iFiJmm2v"}, "YE8PHmu4": {"alliance": {"combination": {"alliances": [[{"max": 6, "min": 77, "name": "CWvjNWjB"}, {"max": 29, "min": 36, "name": "s8IgY4c3"}, {"max": 66, "min": 32, "name": "8nHWOX03"}], [{"max": 69, "min": 29, "name": "12jSQSDh"}, {"max": 65, "min": 70, "name": "Xv5wRCsG"}, {"max": 11, "min": 29, "name": "GUtmXOpI"}], [{"max": 63, "min": 85, "name": "sBrsKfMX"}, {"max": 100, "min": 3, "name": "QpgsFNO9"}, {"max": 84, "min": 4, "name": "FxORxchq"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 36, "role_flexing_second": 1}, "max_number": 100, "min_number": 55, "player_max_number": 45, "player_min_number": 72}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 81, "min": 89, "name": "63XerErX"}, {"max": 42, "min": 83, "name": "kOj3krrW"}, {"max": 72, "min": 74, "name": "0KOQqwAr"}], [{"max": 96, "min": 48, "name": "YcabEbdg"}, {"max": 79, "min": 30, "name": "XJ82U9w0"}, {"max": 31, "min": 50, "name": "bYT29Iou"}], [{"max": 76, "min": 85, "name": "0yc8zRvF"}, {"max": 10, "min": 26, "name": "NWqYC9vb"}, {"max": 18, "min": 8, "name": "w930A7g6"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 35, "role_flexing_second": 48}, "duration": 86, "max_number": 46, "min_number": 7, "player_max_number": 93, "player_min_number": 16}, {"combination": {"alliances": [[{"max": 33, "min": 100, "name": "v2feRdjY"}, {"max": 29, "min": 2, "name": "5Il3xYOv"}, {"max": 59, "min": 38, "name": "I2VFUflE"}], [{"max": 74, "min": 7, "name": "w6sWngIZ"}, {"max": 18, "min": 7, "name": "N25hPkBR"}, {"max": 14, "min": 47, "name": "7SYusZDG"}], [{"max": 43, "min": 53, "name": "II0DvU5n"}, {"max": 54, "min": 57, "name": "SqQrNMcU"}, {"max": 24, "min": 67, "name": "xSlNOHJP"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 4, "role_flexing_second": 71}, "duration": 82, "max_number": 27, "min_number": 96, "player_max_number": 17, "player_min_number": 71}, {"combination": {"alliances": [[{"max": 24, "min": 74, "name": "jVEJdq5O"}, {"max": 46, "min": 34, "name": "KaXGWpX2"}, {"max": 78, "min": 31, "name": "yMuML16d"}], [{"max": 50, "min": 97, "name": "spc3E6GY"}, {"max": 68, "min": 89, "name": "8eOY4Xc5"}, {"max": 15, "min": 7, "name": "hVueovnt"}], [{"max": 95, "min": 62, "name": "ylWhp6vM"}, {"max": 13, "min": 81, "name": "sqPdUdRV"}, {"max": 30, "min": 1, "name": "5VYxkRWJ"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 21, "role_flexing_second": 47}, "duration": 69, "max_number": 86, "min_number": 33, "player_max_number": 31, "player_min_number": 12}], "name": "S4rarhz5"}}, "use_newest_ticket_for_flexing": false}, "session_queue_timeout_seconds": 27, "social_matchmaking": false, "ticket_observability_enable": false, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'DZeR6r1o' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'GXejWACD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "Pk1ZDiUm", "players": [{"results": [{"attribute": "LGPOLrea", "value": 0.5900082293321623}, {"attribute": "YyWFhfdt", "value": 0.07149174879751463}, {"attribute": "qLc4kRVg", "value": 0.24533895770710923}], "user_id": "a3eNvnkA"}, {"results": [{"attribute": "HMdtAcGP", "value": 0.6029424856578419}, {"attribute": "McDDplkU", "value": 0.022539466186728863}, {"attribute": "kK891DNR", "value": 0.9178346532907967}], "user_id": "HSKVcKhA"}, {"results": [{"attribute": "0sjKHEKC", "value": 0.5513083910330803}, {"attribute": "r5o7JYnY", "value": 0.08939570939534369}, {"attribute": "wGvdwK3p", "value": 0.6412785323092541}], "user_id": "IZUzOzgV"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "al2Y0Pay"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "HxIHcmmh", "client_version": "KRDvx6oY", "deployment": "3DwFoOA3", "error_code": 70, "error_message": "nTxJkfbo", "game_mode": "7nvAAP50", "is_mock": "d9ozKznM", "joinable": true, "match_id": "Y9donIkC", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 54, "party_attributes": {"iJ4UNApD": {}, "zspsR1Vn": {}, "HLIrGttp": {}}, "party_id": "ax9dJANv", "party_members": [{"extra_attributes": {"Txmlhs4M": {}, "JCUPwPop": {}, "sBWhU2BX": {}}, "user_id": "hi3bzhGd"}, {"extra_attributes": {"Ll8COuIH": {}, "9AwfngGO": {}, "VvQyZGtX": {}}, "user_id": "l2q9dv6S"}, {"extra_attributes": {"3uvZQWnz": {}, "WDPYx3t6": {}, "bfBbvm6C": {}}, "user_id": "sygJMNuu"}], "ticket_created_at": 65, "ticket_id": "Pmd4oTSl"}, {"first_ticket_created_at": 11, "party_attributes": {"0kT7Lt6A": {}, "URIQSQFf": {}, "qZBAcnMx": {}}, "party_id": "yOrLRX6F", "party_members": [{"extra_attributes": {"ULmipetu": {}, "tPPoc9tS": {}, "JQmqeOgn": {}}, "user_id": "bfb7IHKa"}, {"extra_attributes": {"8NtOeYsC": {}, "7RtQkdJx": {}, "LfsZ2RI6": {}}, "user_id": "znpPbBot"}, {"extra_attributes": {"fuovrU0P": {}, "EMj1vcz5": {}, "wV6hCf45": {}}, "user_id": "jj8fGlnR"}], "ticket_created_at": 2, "ticket_id": "um16nKHl"}, {"first_ticket_created_at": 75, "party_attributes": {"zobO5JyF": {}, "D4FZVH1Y": {}, "FJzHxRPG": {}}, "party_id": "TPrpSek2", "party_members": [{"extra_attributes": {"m2GClbnX": {}, "ONn7fMVu": {}, "GaX7qrLI": {}}, "user_id": "RHsw4HNw"}, {"extra_attributes": {"1MGGbepF": {}, "s9pCffrT": {}, "RTNigGW8": {}}, "user_id": "kvUBeBTW"}, {"extra_attributes": {"nHXmHDLQ": {}, "DkRCqYPA": {}, "3cR6PIxK": {}}, "user_id": "F7oyfTGF"}], "ticket_created_at": 18, "ticket_id": "AyOfmU8L"}]}, {"matching_parties": [{"first_ticket_created_at": 70, "party_attributes": {"3Q2980Qd": {}, "1J6s1IzE": {}, "T3T9kcnW": {}}, "party_id": "WUX6TOqC", "party_members": [{"extra_attributes": {"oCiwgbcH": {}, "42jid16l": {}, "wkxd5uae": {}}, "user_id": "S2FGfZTs"}, {"extra_attributes": {"FuhobmZo": {}, "xdil6GzN": {}, "B408yvlC": {}}, "user_id": "9GZTgqb0"}, {"extra_attributes": {"eTzqvex4": {}, "nmO1cWuH": {}, "JB7HojVw": {}}, "user_id": "zY6AqRf1"}], "ticket_created_at": 73, "ticket_id": "NxE2scAk"}, {"first_ticket_created_at": 59, "party_attributes": {"nBVaNW5r": {}, "EXEUmMzW": {}, "HiG7fEFx": {}}, "party_id": "zD9IiAPW", "party_members": [{"extra_attributes": {"fVtvgGMm": {}, "xM8Wn6lr": {}, "dl20CPUO": {}}, "user_id": "dz6hUFWF"}, {"extra_attributes": {"QtMoEULJ": {}, "L95shphV": {}, "sCV4otuX": {}}, "user_id": "sQ0iwmz4"}, {"extra_attributes": {"hiW8npVW": {}, "woaSpoyk": {}, "Cx8QU6YX": {}}, "user_id": "xv9t3rNG"}], "ticket_created_at": 40, "ticket_id": "E37Xzx2B"}, {"first_ticket_created_at": 49, "party_attributes": {"W1kAtJJX": {}, "f5AE5biZ": {}, "7dwuZ51J": {}}, "party_id": "pRG9lP0f", "party_members": [{"extra_attributes": {"2nQcAqm9": {}, "8xXO7loL": {}, "4JlVXKfa": {}}, "user_id": "rtDR1DDi"}, {"extra_attributes": {"TkS85g58": {}, "1CTMEAR6": {}, "OmUDHpo2": {}}, "user_id": "QMDrzs9j"}, {"extra_attributes": {"vJmuy36x": {}, "MExrPGQV": {}, "HwtCsYK5": {}}, "user_id": "RTl3wiBO"}], "ticket_created_at": 31, "ticket_id": "Wcbp3EH8"}]}, {"matching_parties": [{"first_ticket_created_at": 74, "party_attributes": {"UKrv4e3A": {}, "gp7U3vcX": {}, "0EGFPnkm": {}}, "party_id": "IiMmsEk7", "party_members": [{"extra_attributes": {"99IOM61z": {}, "Kl7ji4s3": {}, "Vbf1kD72": {}}, "user_id": "t0V5cH15"}, {"extra_attributes": {"UzmTruTR": {}, "1eKECH80": {}, "dm6s13c9": {}}, "user_id": "cIwI191M"}, {"extra_attributes": {"kGFeOBx5": {}, "Pjw4KZTT": {}, "z20ib2y5": {}}, "user_id": "Ud4T5zkp"}], "ticket_created_at": 63, "ticket_id": "rPEv9wAH"}, {"first_ticket_created_at": 1, "party_attributes": {"c8QF1MCA": {}, "D7aT7Qiz": {}, "RPxdojL7": {}}, "party_id": "LBLbcRoX", "party_members": [{"extra_attributes": {"aTSv9WRz": {}, "Xe4sIOcZ": {}, "ux9doeUJ": {}}, "user_id": "7J1tLiJM"}, {"extra_attributes": {"JyUbDRiz": {}, "GtOhJq3I": {}, "Q3hHRtRN": {}}, "user_id": "rp1ZArgH"}, {"extra_attributes": {"9H7mHygi": {}, "RTYroFCV": {}, "td2gqyJY": {}}, "user_id": "7J15f9mX"}], "ticket_created_at": 79, "ticket_id": "1I8pNEHV"}, {"first_ticket_created_at": 99, "party_attributes": {"tbl9JvnR": {}, "YnfMaDV9": {}, "QpeiwryP": {}}, "party_id": "ykf1vcBv", "party_members": [{"extra_attributes": {"5odr9eM2": {}, "Ptx5o55X": {}, "aV0yMKnX": {}}, "user_id": "P6PUUOGz"}, {"extra_attributes": {"vJYglMNX": {}, "OYVfAhzA": {}, "NZnZY3uk": {}}, "user_id": "39bN6l2e"}, {"extra_attributes": {"kmgAANPW": {}, "17XqHxgn": {}, "Tp9DSt3Y": {}}, "user_id": "OCgRugwq"}], "ticket_created_at": 40, "ticket_id": "1x663rFg"}]}], "namespace": "FLfQRh9E", "party_attributes": {"5SxdrSAl": {}, "7zpgqDff": {}, "eFNESVPA": {}}, "party_id": "x9hmeTGh", "queued_at": 53, "region": "3FuhIrvW", "server_name": "jos3D5O1", "status": "cHGPlgU5", "ticket_id": "PwEEiCIE", "ticket_ids": ["GzHRkhdG", "ryaXbsvs", "jJ7s0UDJ"], "updated_at": "1976-03-01T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "T89AFxAh"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'WusoYCTt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 10, "userID": "isH1nVdf", "weight": 0.7526768203384387}' \
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
    --matchIDs 'Jh6OEBsH' \
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
    --strategy '2C58LKuV' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'CTf0dNIS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'g7orUTDI' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "tFGNIzxL", "description": "Uf4oPfsy", "findMatchTimeoutSeconds": 42, "joinable": true, "max_delay_ms": 52, "region_expansion_range_ms": 16, "region_expansion_rate_ms": 21, "region_latency_initial_range_ms": 40, "region_latency_max_ms": 15, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 6, "min": 82, "name": "xEhWGUmC"}, {"max": 18, "min": 2, "name": "PctNASI6"}, {"max": 26, "min": 90, "name": "tmyZZkGS"}], [{"max": 39, "min": 36, "name": "8GO9sjZq"}, {"max": 100, "min": 84, "name": "GS1Pwr0j"}, {"max": 58, "min": 15, "name": "b5aXkGK7"}], [{"max": 78, "min": 45, "name": "VJN2V2qk"}, {"max": 41, "min": 0, "name": "ifqaZiKz"}, {"max": 34, "min": 68, "name": "w2XivZ8Y"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 62, "role_flexing_second": 74}, "maxNumber": 82, "minNumber": 62, "playerMaxNumber": 72, "playerMinNumber": 8}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 74, "min": 66, "name": "unI9DjlS"}, {"max": 80, "min": 29, "name": "xFzUo14f"}, {"max": 66, "min": 14, "name": "UjVL1lFJ"}], [{"max": 62, "min": 25, "name": "FMmLu1hc"}, {"max": 54, "min": 3, "name": "HIOmvdlg"}, {"max": 3, "min": 55, "name": "4Ocxn3kN"}], [{"max": 35, "min": 38, "name": "7bFwwgtM"}, {"max": 61, "min": 27, "name": "fQgQzLxA"}, {"max": 62, "min": 78, "name": "EShWTOUs"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 59, "role_flexing_second": 93}, "duration": 4, "max_number": 15, "min_number": 48, "player_max_number": 58, "player_min_number": 81}, {"combination": {"alliances": [[{"max": 77, "min": 41, "name": "9jFgqiTZ"}, {"max": 76, "min": 77, "name": "6Oz1KTGU"}, {"max": 50, "min": 27, "name": "PjYhKL6x"}], [{"max": 66, "min": 91, "name": "uZlcDkAa"}, {"max": 49, "min": 34, "name": "4x79Afjh"}, {"max": 34, "min": 98, "name": "a6ShgVrT"}], [{"max": 80, "min": 80, "name": "JFBXyPdQ"}, {"max": 61, "min": 55, "name": "EOoIn7zj"}, {"max": 52, "min": 11, "name": "vrVk6nNf"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 85, "role_flexing_second": 85}, "duration": 86, "max_number": 58, "min_number": 33, "player_max_number": 7, "player_min_number": 91}, {"combination": {"alliances": [[{"max": 55, "min": 56, "name": "tlD3axTB"}, {"max": 59, "min": 71, "name": "2UnzC11Q"}, {"max": 23, "min": 88, "name": "5jjjqjct"}], [{"max": 93, "min": 24, "name": "V6Q2Ty0a"}, {"max": 77, "min": 66, "name": "NAIEf09B"}, {"max": 24, "min": 64, "name": "Wu1lreAz"}], [{"max": 9, "min": 75, "name": "NyVIaxzq"}, {"max": 100, "min": 78, "name": "iD2CyNOw"}, {"max": 66, "min": 44, "name": "otG4576M"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 23, "role_flexing_second": 83}, "duration": 79, "max_number": 33, "min_number": 10, "player_max_number": 36, "player_min_number": 76}], "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 25, "flex_flat_step_range": 47, "flex_immunity_count": 45, "flex_range_max": 87, "flex_rate_ms": 40, "flex_step_max": 79, "force_authority_match": false, "initial_step_range": 0, "mmr_max": 5, "mmr_mean": 56, "mmr_min": 89, "mmr_std_dev": 83, "override_mmr_data": false, "use_bucket_mmr": false, "use_flat_flex_step": true}, "flexingRules": [{"attribute": "pF6XvdUe", "criteria": "47mpZaXB", "duration": 54, "reference": 0.5825463025739803}, {"attribute": "WTJeCBbD", "criteria": "XalmVI6A", "duration": 82, "reference": 0.4954890062140095}, {"attribute": "lnqWXKWu", "criteria": "iHRB5o64", "duration": 97, "reference": 0.9967530851162991}], "match_options": {"options": [{"name": "aOKcXEXG", "type": "VdmsXfky"}, {"name": "oqhjb8gt", "type": "hqrGoX75"}, {"name": "FPB0Lgk9", "type": "C7YiOfzn"}]}, "matchingRules": [{"attribute": "tvgddzEC", "criteria": "Xb57H0lZ", "reference": 0.24367893283594966}, {"attribute": "1VlpWP4p", "criteria": "3zbX4Ycr", "reference": 0.8750768123118173}, {"attribute": "nAFgcowU", "criteria": "YGB3o47b", "reference": 0.8024521010694103}], "sub_game_modes": {}, "use_newest_ticket_for_flexing": false}, "sessionQueueTimeoutSeconds": 83, "socialMatchmaking": true, "ticket_observability_enable": false, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName 'lQxPdl2y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName '0MFNkyiS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName 'IxAFL7FI' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 33}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName 'aBBpcZdE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName 'XgEtwHG5' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "jm5LRfaw", "count": 46, "mmrMax": 0.45878517237747685, "mmrMean": 0.12951411406400903, "mmrMin": 0.23042595754092765, "mmrStdDev": 0.623745706850238}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName 'XaJO9zRM' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 80, "party_attributes": {"DhCZwdNI": {}, "qO7PU3ru": {}, "wugE4JuU": {}}, "party_id": "FyZD1FB7", "party_members": [{"extra_attributes": {"s7j9KvO1": {}, "mZHt7xeS": {}, "Z5KWmv6L": {}}, "user_id": "Q5N0Ysv7"}, {"extra_attributes": {"V41ABv0n": {}, "rwKchjSG": {}, "LyMX8Mqf": {}}, "user_id": "kxQ7GTUz"}, {"extra_attributes": {"qd1UEinW": {}, "xXmh76hu": {}, "QGykHrRp": {}}, "user_id": "8RpeG2WP"}], "ticket_created_at": 66, "ticket_id": "bGzYgsTE"}, {"first_ticket_created_at": 23, "party_attributes": {"QloBu07K": {}, "Gc9fi2vR": {}, "ZnZU09uB": {}}, "party_id": "xWj0QXLK", "party_members": [{"extra_attributes": {"cuvTgrpM": {}, "RzLz3OsC": {}, "eFuiEaFf": {}}, "user_id": "5ZOS0gv2"}, {"extra_attributes": {"i9GsEWY7": {}, "Y5XmmTrc": {}, "UV6yMJFN": {}}, "user_id": "o1yJD7Sm"}, {"extra_attributes": {"Ox6NzKuE": {}, "bbVctko9": {}, "Ye5ZjpNs": {}}, "user_id": "p4Wz1Cxf"}], "ticket_created_at": 37, "ticket_id": "svNZ6r21"}, {"first_ticket_created_at": 70, "party_attributes": {"0qZSANXx": {}, "B0Dm7GHo": {}, "aYEEoxpF": {}}, "party_id": "prmAejHs", "party_members": [{"extra_attributes": {"yZzLFIqi": {}, "bP6Jlgwx": {}, "Mzlf0SJu": {}}, "user_id": "BzTVb8UP"}, {"extra_attributes": {"XRLDb1pe": {}, "lx4P1x4m": {}, "So5K02Vy": {}}, "user_id": "CoU2z8ys"}, {"extra_attributes": {"9zrR4VjF": {}, "YjlfYXni": {}, "Uvldi1ls": {}}, "user_id": "6SBTE5DE"}], "ticket_created_at": 15, "ticket_id": "MfvyNiha"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName 'aMWhjbAO' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 3}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'FuudhGny' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'mVuvypvP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'abfv5kWz' \
    --matchID 'O3JnB3xB' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["z3l5zv19", "tyKKC2Sc", "a11DU543"], "party_id": "F0xRbsNQ", "user_id": "opQYvnEx"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName '8e2Hf1PB' \
    --matchID 'pMxdRdkn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'Dg7e8hAY' \
    --matchID 'bIJsJpHM' \
    --namespace $AB_NAMESPACE \
    --userID 'Qdbby6kT' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName 'mW2Za5IP' \
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
    --channelName '8LGPpfBK' \
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