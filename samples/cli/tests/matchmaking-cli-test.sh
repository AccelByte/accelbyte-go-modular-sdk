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
    --limit '99' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCannotMatch", "deployment": "9pLP0zqy", "description": "85Dmsrgk", "find_match_timeout_seconds": 51, "game_mode": "7umvTgM1", "joinable": false, "max_delay_ms": 34, "region_expansion_range_ms": 27, "region_expansion_rate_ms": 9, "region_latency_initial_range_ms": 96, "region_latency_max_ms": 32, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 38, "min": 60, "name": "HGY2VRK2"}, {"max": 56, "min": 85, "name": "tBm1IS2Z"}, {"max": 60, "min": 38, "name": "6LhIvPA9"}], [{"max": 18, "min": 43, "name": "A2EjVSTp"}, {"max": 50, "min": 94, "name": "qmRFLRZJ"}, {"max": 5, "min": 62, "name": "cJs58lRH"}], [{"max": 89, "min": 79, "name": "kuKBNjiX"}, {"max": 72, "min": 78, "name": "d2oueLlp"}, {"max": 8, "min": 91, "name": "hk3ar2q5"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 66, "role_flexing_second": 93}, "max_number": 42, "min_number": 68, "player_max_number": 96, "player_min_number": 86}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 66, "min": 100, "name": "Scw3qhel"}, {"max": 87, "min": 27, "name": "YvxoPAWz"}, {"max": 96, "min": 65, "name": "fnlOfxR0"}], [{"max": 51, "min": 35, "name": "C001AZ1y"}, {"max": 12, "min": 0, "name": "dtc2r4H6"}, {"max": 44, "min": 37, "name": "Vi53t3yj"}], [{"max": 75, "min": 29, "name": "uaAwbbZ7"}, {"max": 79, "min": 18, "name": "n67n8KLH"}, {"max": 49, "min": 71, "name": "m8kHeKYa"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 76, "role_flexing_second": 34}, "duration": 96, "max_number": 16, "min_number": 17, "player_max_number": 51, "player_min_number": 15}, {"combination": {"alliances": [[{"max": 38, "min": 66, "name": "ejOSTVhL"}, {"max": 7, "min": 5, "name": "AMZxaX5M"}, {"max": 52, "min": 47, "name": "LipuAYVc"}], [{"max": 1, "min": 59, "name": "iEiRHwWX"}, {"max": 87, "min": 79, "name": "BrEOWL01"}, {"max": 54, "min": 80, "name": "FoeDK5N7"}], [{"max": 61, "min": 23, "name": "LkM3LEK1"}, {"max": 69, "min": 54, "name": "IKbvAuDD"}, {"max": 61, "min": 42, "name": "eNURg3L6"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 73, "role_flexing_second": 15}, "duration": 23, "max_number": 18, "min_number": 31, "player_max_number": 40, "player_min_number": 84}, {"combination": {"alliances": [[{"max": 23, "min": 100, "name": "24AFAA4a"}, {"max": 42, "min": 58, "name": "yww0MHBh"}, {"max": 62, "min": 59, "name": "ZMo2zOGB"}], [{"max": 92, "min": 51, "name": "12Vlc3oG"}, {"max": 46, "min": 59, "name": "NH3BEurq"}, {"max": 36, "min": 22, "name": "1pPhA5SD"}], [{"max": 6, "min": 84, "name": "WXl6hQXd"}, {"max": 15, "min": 78, "name": "pM3DFLPp"}, {"max": 69, "min": 65, "name": "wAXj5mUd"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 72, "role_flexing_second": 25}, "duration": 72, "max_number": 25, "min_number": 41, "player_max_number": 90, "player_min_number": 41}], "batch_size": 18, "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 47, "flex_flat_step_range": 58, "flex_immunity_count": 42, "flex_range_max": 75, "flex_rate_ms": 93, "flex_step_max": 91, "force_authority_match": true, "initial_step_range": 22, "mmr_max": 27, "mmr_mean": 36, "mmr_min": 50, "mmr_std_dev": 77, "override_mmr_data": true, "use_bucket_mmr": false, "use_flat_flex_step": true}, "flexing_rule": [{"attribute": "LPiBYzLB", "criteria": "STDi7IV0", "duration": 88, "reference": 0.5511789785059252}, {"attribute": "Fy8SLQAC", "criteria": "WjKtLMza", "duration": 93, "reference": 0.9829807088315894}, {"attribute": "flJqlC56", "criteria": "m3HYtmAa", "duration": 62, "reference": 0.3945686169376402}], "match_options": {"options": [{"name": "K5ADgdZ7", "type": "gZ7PZB4b"}, {"name": "JHuH3JrH", "type": "XHSJcip2"}, {"name": "CWsXkzxV", "type": "S6r3Wcr3"}]}, "matching_rule": [{"attribute": "Rubq8yIc", "criteria": "NzIgsViX", "reference": 0.665947679217893}, {"attribute": "yvInLHIV", "criteria": "ssKEuAA8", "reference": 0.3107859899125288}, {"attribute": "lWVfm0j6", "criteria": "uwDozatq", "reference": 0.02042530831922018}], "rebalance_enable": true, "sort_ticket": {"search_result": "random", "ticket_queue": "oldestTicketAge"}, "sort_tickets": [{"search_result": "largestPartySize", "threshold": 29, "ticket_queue": "oldestTicketAge"}, {"search_result": "oldestTicketAge", "threshold": 14, "ticket_queue": "largestPartySize"}, {"search_result": "none", "threshold": 89, "ticket_queue": "oldestTicketAge"}], "sub_game_modes": {"KvXjARLZ": {"alliance": {"combination": {"alliances": [[{"max": 79, "min": 40, "name": "3YRuVKgV"}, {"max": 86, "min": 29, "name": "XRF4j2dX"}, {"max": 55, "min": 8, "name": "Su8RYegl"}], [{"max": 62, "min": 61, "name": "GlOWdbo9"}, {"max": 20, "min": 76, "name": "nEKi9X1p"}, {"max": 3, "min": 73, "name": "LN0UwxgM"}], [{"max": 76, "min": 47, "name": "9piYBCX2"}, {"max": 86, "min": 43, "name": "YputZsq6"}, {"max": 46, "min": 56, "name": "45ji9cyO"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 43, "role_flexing_second": 37}, "max_number": 16, "min_number": 68, "player_max_number": 79, "player_min_number": 30}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 71, "min": 1, "name": "ADQAO1P8"}, {"max": 18, "min": 85, "name": "kBJfNKnH"}, {"max": 90, "min": 79, "name": "tRCMAEIB"}], [{"max": 7, "min": 37, "name": "mW0SpgQi"}, {"max": 64, "min": 75, "name": "ykRLGSbM"}, {"max": 24, "min": 2, "name": "VEGmdF2E"}], [{"max": 89, "min": 73, "name": "4clZeOAk"}, {"max": 33, "min": 22, "name": "2SUfdCHS"}, {"max": 69, "min": 21, "name": "6JhCTB5A"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 64, "role_flexing_second": 12}, "duration": 28, "max_number": 59, "min_number": 91, "player_max_number": 97, "player_min_number": 62}, {"combination": {"alliances": [[{"max": 89, "min": 43, "name": "RWirBLTS"}, {"max": 14, "min": 100, "name": "NX6ayV2j"}, {"max": 22, "min": 63, "name": "lfMqndx7"}], [{"max": 31, "min": 82, "name": "uNiZtZ9E"}, {"max": 57, "min": 56, "name": "Y5v6bujE"}, {"max": 23, "min": 31, "name": "IS1VIbUZ"}], [{"max": 13, "min": 46, "name": "VRD505M0"}, {"max": 61, "min": 23, "name": "KuBKd3Fb"}, {"max": 4, "min": 19, "name": "NYJSwbYD"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 22, "role_flexing_second": 14}, "duration": 99, "max_number": 27, "min_number": 56, "player_max_number": 72, "player_min_number": 48}, {"combination": {"alliances": [[{"max": 84, "min": 79, "name": "eLvQfR3W"}, {"max": 55, "min": 7, "name": "TLW080Hc"}, {"max": 35, "min": 57, "name": "usqyfxAb"}], [{"max": 70, "min": 80, "name": "Y23yoF0k"}, {"max": 11, "min": 76, "name": "BThadQPt"}, {"max": 98, "min": 69, "name": "jYXeSOl2"}], [{"max": 72, "min": 88, "name": "pvQ6fR4S"}, {"max": 35, "min": 54, "name": "kBVnX8fq"}, {"max": 71, "min": 88, "name": "dzb42i8H"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 11, "role_flexing_second": 23}, "duration": 73, "max_number": 70, "min_number": 21, "player_max_number": 85, "player_min_number": 99}], "name": "E4Z0ha6Z"}, "yx6SgaLd": {"alliance": {"combination": {"alliances": [[{"max": 18, "min": 77, "name": "H22PcH9X"}, {"max": 84, "min": 48, "name": "V5BsOgLn"}, {"max": 82, "min": 56, "name": "LkfPxHaQ"}], [{"max": 23, "min": 38, "name": "L59IinZd"}, {"max": 78, "min": 32, "name": "FOqpn3oV"}, {"max": 40, "min": 58, "name": "Kek6fFBO"}], [{"max": 60, "min": 54, "name": "PdAHzjkD"}, {"max": 52, "min": 50, "name": "j3KQX8jB"}, {"max": 81, "min": 42, "name": "11tg09cI"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 5, "role_flexing_second": 74}, "max_number": 36, "min_number": 24, "player_max_number": 69, "player_min_number": 23}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 39, "min": 9, "name": "gwGmSewq"}, {"max": 18, "min": 99, "name": "TE5zSQfW"}, {"max": 100, "min": 1, "name": "UFnKAGgq"}], [{"max": 28, "min": 79, "name": "ThRHKjmF"}, {"max": 71, "min": 98, "name": "QEgCaXTv"}, {"max": 44, "min": 12, "name": "1nWHbIhA"}], [{"max": 43, "min": 93, "name": "rH8ze8qQ"}, {"max": 30, "min": 30, "name": "5IcP01O1"}, {"max": 53, "min": 93, "name": "fGEQjq4J"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 18, "role_flexing_second": 91}, "duration": 49, "max_number": 94, "min_number": 39, "player_max_number": 99, "player_min_number": 45}, {"combination": {"alliances": [[{"max": 13, "min": 82, "name": "sGC0C8xK"}, {"max": 56, "min": 6, "name": "GCnSHoCJ"}, {"max": 77, "min": 39, "name": "lGZn7bjH"}], [{"max": 32, "min": 15, "name": "f1hUx4mA"}, {"max": 1, "min": 81, "name": "0o29loOb"}, {"max": 47, "min": 80, "name": "Ip22duxu"}], [{"max": 52, "min": 48, "name": "9XI7a3bY"}, {"max": 2, "min": 87, "name": "qzjDo3BJ"}, {"max": 86, "min": 5, "name": "QguQe0B8"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 99, "role_flexing_second": 10}, "duration": 16, "max_number": 6, "min_number": 85, "player_max_number": 68, "player_min_number": 90}, {"combination": {"alliances": [[{"max": 85, "min": 85, "name": "O6REdZpA"}, {"max": 55, "min": 39, "name": "I6CAbWBP"}, {"max": 12, "min": 57, "name": "CCbJfkzg"}], [{"max": 51, "min": 0, "name": "HYg9l5K8"}, {"max": 64, "min": 36, "name": "xZ669Hca"}, {"max": 65, "min": 58, "name": "8r9V4qNF"}], [{"max": 72, "min": 29, "name": "GeAsGd2L"}, {"max": 94, "min": 16, "name": "kkFNl51g"}, {"max": 9, "min": 22, "name": "c8aEjxvk"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 87, "role_flexing_second": 59}, "duration": 61, "max_number": 33, "min_number": 43, "player_max_number": 17, "player_min_number": 40}], "name": "1nJdEnJJ"}, "FpPrZiOZ": {"alliance": {"combination": {"alliances": [[{"max": 69, "min": 7, "name": "xdK8EBlT"}, {"max": 75, "min": 14, "name": "nQdQ10Ek"}, {"max": 64, "min": 89, "name": "QZWAVhjR"}], [{"max": 8, "min": 98, "name": "w0CvGv69"}, {"max": 39, "min": 43, "name": "FGaEVHBm"}, {"max": 3, "min": 99, "name": "FcZqTDbc"}], [{"max": 67, "min": 56, "name": "N7iRVQ4N"}, {"max": 85, "min": 33, "name": "7j4HXliS"}, {"max": 88, "min": 71, "name": "DNHl1luX"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 14, "role_flexing_second": 65}, "max_number": 85, "min_number": 78, "player_max_number": 45, "player_min_number": 38}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 26, "min": 12, "name": "7euh2OFO"}, {"max": 69, "min": 100, "name": "aMziVSt1"}, {"max": 53, "min": 36, "name": "c9azK0Xk"}], [{"max": 70, "min": 73, "name": "6TWChGEh"}, {"max": 0, "min": 29, "name": "As6dnQ6m"}, {"max": 78, "min": 57, "name": "b2suteFn"}], [{"max": 27, "min": 54, "name": "CKH0MfRi"}, {"max": 65, "min": 25, "name": "Fklu8gFb"}, {"max": 43, "min": 86, "name": "Qx2falnr"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 13, "role_flexing_second": 97}, "duration": 70, "max_number": 9, "min_number": 5, "player_max_number": 6, "player_min_number": 49}, {"combination": {"alliances": [[{"max": 16, "min": 84, "name": "45vFThWG"}, {"max": 13, "min": 100, "name": "9cMhzMGF"}, {"max": 1, "min": 54, "name": "8QREjy7a"}], [{"max": 36, "min": 68, "name": "eDYcfIqq"}, {"max": 6, "min": 16, "name": "vre2wooJ"}, {"max": 16, "min": 47, "name": "ToqoGpKp"}], [{"max": 91, "min": 46, "name": "z7EEnMyx"}, {"max": 63, "min": 48, "name": "8prSVZ8W"}, {"max": 47, "min": 71, "name": "VbRTu1uO"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 29, "role_flexing_second": 78}, "duration": 99, "max_number": 44, "min_number": 71, "player_max_number": 55, "player_min_number": 95}, {"combination": {"alliances": [[{"max": 83, "min": 10, "name": "aTaJ6WGb"}, {"max": 58, "min": 99, "name": "WEdhvytX"}, {"max": 34, "min": 83, "name": "EtIXjBfi"}], [{"max": 50, "min": 50, "name": "6CvIJD7C"}, {"max": 78, "min": 67, "name": "C7CDLIiw"}, {"max": 70, "min": 76, "name": "DzK5XOnl"}], [{"max": 1, "min": 82, "name": "pJ00QhYZ"}, {"max": 53, "min": 7, "name": "ne1bqUwm"}, {"max": 63, "min": 28, "name": "atillgh5"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 43, "role_flexing_second": 86}, "duration": 18, "max_number": 83, "min_number": 100, "player_max_number": 23, "player_min_number": 13}], "name": "vymxDkaY"}}, "ticket_flexing_selection": "random", "ticket_flexing_selections": [{"selection": "random", "threshold": 98}, {"selection": "random", "threshold": 93}, {"selection": "oldest", "threshold": 30}], "use_newest_ticket_for_flexing": false}, "session_queue_timeout_seconds": 73, "social_matchmaking": true, "sub_gamemode_selection": "random", "ticket_observability_enable": true, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'Y4E6XoEl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'D71YZEae' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "Vog23Vb3", "players": [{"results": [{"attribute": "OyKKC3yv", "value": 0.258196140651752}, {"attribute": "UniSYUSc", "value": 0.6669648587881428}, {"attribute": "8icnIEVi", "value": 0.5586642578992312}], "user_id": "TROiQF0K"}, {"results": [{"attribute": "uOBlZ4e3", "value": 0.05339060096281101}, {"attribute": "VW0fRq64", "value": 0.010708553058222936}, {"attribute": "SxTjBPpS", "value": 0.8816127156805998}], "user_id": "vbM2jmeI"}, {"results": [{"attribute": "B7EULpKj", "value": 0.7468541599718936}, {"attribute": "JId8yDgJ", "value": 0.7926542112358931}, {"attribute": "oLN1eMNc", "value": 0.5885279267443583}], "user_id": "haplz3Ht"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "Y0LVl1hd"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "nZkM1RGZ", "client_version": "4AbXiFeA", "deployment": "mJ9Npj0X", "error_code": 77, "error_message": "9ZGJNmRN", "game_mode": "l9aSCdPd", "is_mock": "fWzbVFEa", "joinable": false, "match_id": "at1hfvCb", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 17, "party_attributes": {"6urwwp9M": {}, "djLmRMbq": {}, "ohmGa8y7": {}}, "party_id": "IW5xF6Wm", "party_members": [{"extra_attributes": {"gdI6L1La": {}, "VnXwxrnJ": {}, "VbCwGSYS": {}}, "user_id": "sPZiJtMu"}, {"extra_attributes": {"IPQqtSai": {}, "Kmwmd3DC": {}, "LHeeGLQk": {}}, "user_id": "fEpOc3Gk"}, {"extra_attributes": {"6JCutfyj": {}, "Hbdyhuje": {}, "RPUyv9o7": {}}, "user_id": "6VIa9jFV"}], "ticket_created_at": 10, "ticket_id": "3COHwbxJ"}, {"first_ticket_created_at": 2, "party_attributes": {"M47tvcSi": {}, "7Nw5trzQ": {}, "1N17umDU": {}}, "party_id": "mOejDqgP", "party_members": [{"extra_attributes": {"z77JD8qD": {}, "1FEQipcC": {}, "eit980AW": {}}, "user_id": "OCkgPun8"}, {"extra_attributes": {"XNiYXI7C": {}, "W8bqaxQe": {}, "UhIPmVv6": {}}, "user_id": "zCNmtwTP"}, {"extra_attributes": {"eqNNluAO": {}, "Ee3bfou8": {}, "WtgmPoTg": {}}, "user_id": "zgzrXJIK"}], "ticket_created_at": 66, "ticket_id": "LIiC4m3y"}, {"first_ticket_created_at": 80, "party_attributes": {"1Y6Jc1hl": {}, "ijrjx2eB": {}, "EfekRxop": {}}, "party_id": "YR1GIUn1", "party_members": [{"extra_attributes": {"veZHioRT": {}, "5McJTWwg": {}, "YUTdqdGQ": {}}, "user_id": "PbXkaFdb"}, {"extra_attributes": {"gdWMd1dx": {}, "JVdhhHFq": {}, "48B0M5QF": {}}, "user_id": "sGRlIhUW"}, {"extra_attributes": {"wpgCHA6z": {}, "Y94V8Acw": {}, "D5ZZamCk": {}}, "user_id": "xlI33mna"}], "ticket_created_at": 48, "ticket_id": "OiXUxG25"}]}, {"matching_parties": [{"first_ticket_created_at": 22, "party_attributes": {"lVGT04d0": {}, "zzL6R8Ua": {}, "XwiWza1y": {}}, "party_id": "7xylyQk0", "party_members": [{"extra_attributes": {"Vn2bbmLc": {}, "8C4MYz8W": {}, "FSi9HRQV": {}}, "user_id": "vwH0Mt5u"}, {"extra_attributes": {"DfNPTPnU": {}, "RdLRs8wt": {}, "LbIgLWUw": {}}, "user_id": "mwWDPKbO"}, {"extra_attributes": {"81rMelUP": {}, "kz99pWrG": {}, "7nPlV736": {}}, "user_id": "RucX08B7"}], "ticket_created_at": 17, "ticket_id": "VulhR9an"}, {"first_ticket_created_at": 57, "party_attributes": {"8TG0FRQs": {}, "idBxuMt7": {}, "2WMZETZ9": {}}, "party_id": "XKCtKQzG", "party_members": [{"extra_attributes": {"3USuMusL": {}, "m3HGsgAk": {}, "DfFZfQMW": {}}, "user_id": "4eXkcFrV"}, {"extra_attributes": {"QgeVddZr": {}, "6geIJbP9": {}, "AQGQOjuB": {}}, "user_id": "nd80cdnN"}, {"extra_attributes": {"O0E5SdJk": {}, "SdtkcE33": {}, "LCyRQXtQ": {}}, "user_id": "XcQazJP7"}], "ticket_created_at": 89, "ticket_id": "4n8IYhjB"}, {"first_ticket_created_at": 56, "party_attributes": {"u6juaPlp": {}, "x2qoLY36": {}, "2SthScJu": {}}, "party_id": "YScQNQ73", "party_members": [{"extra_attributes": {"8W1ABS7L": {}, "SO4rGOx2": {}, "oXUN6eDp": {}}, "user_id": "6cZPTJpn"}, {"extra_attributes": {"6pZZ0l4e": {}, "2GqRCST5": {}, "B4vQ146l": {}}, "user_id": "DZwBrpO1"}, {"extra_attributes": {"09gJrlWC": {}, "QiO3paLh": {}, "wZ2ly3y8": {}}, "user_id": "cfbktr9S"}], "ticket_created_at": 34, "ticket_id": "Y9RyHiQH"}]}, {"matching_parties": [{"first_ticket_created_at": 75, "party_attributes": {"Fa4jB5EQ": {}, "P1zhfDde": {}, "aufaiCKJ": {}}, "party_id": "eY4VA7Mu", "party_members": [{"extra_attributes": {"o8iteU4Z": {}, "NUUE79PA": {}, "R3tMagMs": {}}, "user_id": "K5pYo44h"}, {"extra_attributes": {"dXV3biym": {}, "Eq2DMAxM": {}, "LydmylHG": {}}, "user_id": "V8zifMSF"}, {"extra_attributes": {"FDKrAFtO": {}, "MmudoKhS": {}, "PSjpZYOw": {}}, "user_id": "KXi3u86a"}], "ticket_created_at": 89, "ticket_id": "ZaSwKSm9"}, {"first_ticket_created_at": 72, "party_attributes": {"8MsBbZnF": {}, "2GBsfMN9": {}, "fYtLuhD7": {}}, "party_id": "3cx8q0eA", "party_members": [{"extra_attributes": {"w24SQdl9": {}, "Q7c027vM": {}, "ouAtykSA": {}}, "user_id": "uLOyz1my"}, {"extra_attributes": {"f2Z8sTY8": {}, "BoSdT1Pd": {}, "m3Qw9dwH": {}}, "user_id": "Pfux5yH8"}, {"extra_attributes": {"fPCkMqWp": {}, "PRoYOgib": {}, "YWXZCXvk": {}}, "user_id": "jR2WKR3Q"}], "ticket_created_at": 93, "ticket_id": "PzsIawnP"}, {"first_ticket_created_at": 25, "party_attributes": {"Quud32FB": {}, "9slLusu7": {}, "wGDL7P7G": {}}, "party_id": "Fs9zMOW7", "party_members": [{"extra_attributes": {"SmFwqgl6": {}, "2JqhS1S2": {}, "Zbgok7ro": {}}, "user_id": "4SvNjmc5"}, {"extra_attributes": {"gMr94Sd5": {}, "vHmRBAAO": {}, "L1RQzHvE": {}}, "user_id": "7cfF8Bx9"}, {"extra_attributes": {"HOwb6Tnt": {}, "zJy69k45": {}, "noMwELJW": {}}, "user_id": "fwQqDDcN"}], "ticket_created_at": 39, "ticket_id": "EXAAzlao"}]}], "namespace": "MgAH8Bbf", "party_attributes": {"vqSvHC8Q": {}, "gqaXiDmI": {}, "grRoIWUF": {}}, "party_id": "dnFsdPPK", "queued_at": 30, "region": "j810mvJ3", "server_name": "HXsCWpUL", "status": "DTP9jqUr", "ticket_id": "gweqqiAy", "ticket_ids": ["fAq1BTO6", "CQJC2HMs", "xalGtmLP"], "updated_at": "1972-05-05T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "xYttsMzp"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'd7Uz57gl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 40, "userID": "Vrhaxo5N", "weight": 0.9822428480682165}' \
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
    --matchIDs 'MlpSf6nV' \
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
    --strategy 'Z76vfd6K' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'SXgyQeRg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'I0DOo13Q' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCanMatch", "deployment": "O8ZOEVmu", "description": "AkwWoCg1", "findMatchTimeoutSeconds": 12, "joinable": false, "max_delay_ms": 97, "region_expansion_range_ms": 68, "region_expansion_rate_ms": 99, "region_latency_initial_range_ms": 17, "region_latency_max_ms": 71, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 38, "min": 27, "name": "lj9mJkXf"}, {"max": 46, "min": 27, "name": "wmE3S44f"}, {"max": 14, "min": 6, "name": "kvIo3BEF"}], [{"max": 29, "min": 5, "name": "ByffZpQK"}, {"max": 95, "min": 42, "name": "x1jfcFfY"}, {"max": 41, "min": 18, "name": "ZbNCat4E"}], [{"max": 6, "min": 52, "name": "063TkPUB"}, {"max": 100, "min": 37, "name": "rE6UiqiP"}, {"max": 21, "min": 23, "name": "XHqvjZQn"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 7, "role_flexing_second": 38}, "maxNumber": 46, "minNumber": 34, "playerMaxNumber": 98, "playerMinNumber": 21}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 0, "min": 94, "name": "VTzlyxPC"}, {"max": 23, "min": 65, "name": "5qa8fNWU"}, {"max": 98, "min": 63, "name": "tWYyRdc3"}], [{"max": 74, "min": 24, "name": "4xvZsLna"}, {"max": 76, "min": 76, "name": "W4mycgmq"}, {"max": 17, "min": 31, "name": "wbMNZXky"}], [{"max": 89, "min": 21, "name": "PMQszzBv"}, {"max": 99, "min": 31, "name": "j7roASn7"}, {"max": 55, "min": 52, "name": "km5UseDL"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 86, "role_flexing_second": 45}, "duration": 95, "max_number": 22, "min_number": 89, "player_max_number": 47, "player_min_number": 50}, {"combination": {"alliances": [[{"max": 39, "min": 73, "name": "HWNentN6"}, {"max": 72, "min": 29, "name": "4U5hHfs7"}, {"max": 28, "min": 12, "name": "ulNF5qZF"}], [{"max": 48, "min": 53, "name": "TPZ05qgq"}, {"max": 26, "min": 4, "name": "HM7i9sTs"}, {"max": 72, "min": 77, "name": "5AXAvebI"}], [{"max": 62, "min": 49, "name": "KgWo47mx"}, {"max": 30, "min": 78, "name": "ScYfglSN"}, {"max": 74, "min": 74, "name": "wf9ccdWS"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 29, "role_flexing_second": 97}, "duration": 21, "max_number": 7, "min_number": 38, "player_max_number": 48, "player_min_number": 97}, {"combination": {"alliances": [[{"max": 69, "min": 53, "name": "ywYfCTez"}, {"max": 44, "min": 70, "name": "1N5R4Ldg"}, {"max": 47, "min": 11, "name": "JQ5IqOv7"}], [{"max": 9, "min": 24, "name": "RpDMJ2Oz"}, {"max": 40, "min": 31, "name": "QjL6nrJ7"}, {"max": 32, "min": 41, "name": "AdXDUT1z"}], [{"max": 34, "min": 48, "name": "gvnKfo2b"}, {"max": 71, "min": 56, "name": "WcGfnuwI"}, {"max": 40, "min": 56, "name": "AWz6QrmS"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 69, "role_flexing_second": 66}, "duration": 24, "max_number": 12, "min_number": 98, "player_max_number": 32, "player_min_number": 19}], "batch_size": 61, "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 52, "flex_flat_step_range": 88, "flex_immunity_count": 48, "flex_range_max": 42, "flex_rate_ms": 70, "flex_step_max": 40, "force_authority_match": false, "initial_step_range": 37, "mmr_max": 92, "mmr_mean": 6, "mmr_min": 46, "mmr_std_dev": 78, "override_mmr_data": true, "use_bucket_mmr": true, "use_flat_flex_step": true}, "flexingRules": [{"attribute": "FMCt7t61", "criteria": "qOpnpX7K", "duration": 94, "reference": 0.1909457966699608}, {"attribute": "p4ahm1ye", "criteria": "X0UuWZOA", "duration": 86, "reference": 0.48053644412325325}, {"attribute": "1XuI4mgf", "criteria": "UGtVznkb", "duration": 95, "reference": 0.07588256738583643}], "match_options": {"options": [{"name": "OGXSnDqS", "type": "uYyzYaO1"}, {"name": "IWPCwDB2", "type": "WNivfDQe"}, {"name": "w7HWQjAR", "type": "WIGjBuZd"}]}, "matchingRules": [{"attribute": "rxNWsshV", "criteria": "FlXH68vQ", "reference": 0.9152696263739271}, {"attribute": "ou8dv8ok", "criteria": "W8X54efT", "reference": 0.3973027147799614}, {"attribute": "WadFyXSe", "criteria": "g0ELSc10", "reference": 0.5345473571395482}], "sort_ticket": {"search_result": "distance", "ticket_queue": "random"}, "sort_tickets": [{"search_result": "oldestTicketAge", "threshold": 7, "ticket_queue": "random"}, {"search_result": "random", "threshold": 85, "ticket_queue": "none"}, {"search_result": "oldestTicketAge", "threshold": 15, "ticket_queue": "oldestTicketAge"}], "sub_game_modes": {}, "ticket_flexing_selection": "newest", "ticket_flexing_selections": [{"selection": "random", "threshold": 87}, {"selection": "newest", "threshold": 32}, {"selection": "pivot", "threshold": 70}], "use_newest_ticket_for_flexing": true}, "sessionQueueTimeoutSeconds": 51, "socialMatchmaking": true, "sub_gamemode_selection": "random", "ticket_observability_enable": false, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName 'xDPuZNYa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName 'cQIcRnKa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName 'lDqB4YAs' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 37}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName 'PvDSUH0W' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName 'BbBzdYRk' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "uVt5pVyT", "count": 76, "mmrMax": 0.8469121667537806, "mmrMean": 0.756881218137127, "mmrMin": 0.10792412138441154, "mmrStdDev": 0.9981939905911207}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName 'EmnhCCHu' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 96, "party_attributes": {"BDhVRAvz": {}, "CJ7AvUzO": {}, "8kQRhok5": {}}, "party_id": "hJNsplbK", "party_members": [{"extra_attributes": {"2H43hjp3": {}, "MT8tVDtv": {}, "iBKABGyJ": {}}, "user_id": "SsOYGe6z"}, {"extra_attributes": {"jVfBBtZy": {}, "8zBNyvVT": {}, "UFhH4c7U": {}}, "user_id": "t3nh5Nei"}, {"extra_attributes": {"1U9YvZa7": {}, "7NHzBLks": {}, "GfAKC204": {}}, "user_id": "W2EwGBrV"}], "ticket_created_at": 16, "ticket_id": "X22uJ4Tf"}, {"first_ticket_created_at": 89, "party_attributes": {"mHWHRUlm": {}, "DJzsP4Bd": {}, "RDUhmv5n": {}}, "party_id": "LJjMTEbH", "party_members": [{"extra_attributes": {"HNMO2bI0": {}, "GkR4niiE": {}, "7UNqn50Q": {}}, "user_id": "6G2ydVCY"}, {"extra_attributes": {"ONsOsxTA": {}, "gYYPYAxX": {}, "uL5cplWO": {}}, "user_id": "NvJbUYCR"}, {"extra_attributes": {"dkUjjVpc": {}, "r1K4KUpa": {}, "GJhNfdgW": {}}, "user_id": "AgkuSAlo"}], "ticket_created_at": 82, "ticket_id": "NNm5Rs8z"}, {"first_ticket_created_at": 63, "party_attributes": {"jqzOdXhU": {}, "gLkLi9h6": {}, "aSkxXsGL": {}}, "party_id": "bDjjgkN4", "party_members": [{"extra_attributes": {"7mxwWpaZ": {}, "vNYFhyuh": {}, "raj0qol0": {}}, "user_id": "OlQM5zEf"}, {"extra_attributes": {"esRWaFmh": {}, "llD4MVdN": {}, "ETNDRmLC": {}}, "user_id": "FX2tkkIX"}, {"extra_attributes": {"pCL6HvNr": {}, "5JUG6S8X": {}, "4vdEXxhq": {}}, "user_id": "ucUGFfN4"}], "ticket_created_at": 20, "ticket_id": "IRH65fLl"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName 'jICP3pgq' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 70}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'D5TBfuQT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'drcfEmWJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'g3qjDPZx' \
    --matchID '28mHYncT' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["8RcCSq3X", "cDPBNKu2", "VEJfWDEk"], "party_id": "uFuIe3tu", "user_id": "Y1MLxllC"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName '3lNTw9G8' \
    --matchID 'ybPJDvcZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName '67i4FFEy' \
    --matchID '0xZ2krYc' \
    --namespace $AB_NAMESPACE \
    --userID 'qDq3sqMx' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName '2TRn1coW' \
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
    --channelName 'dsiXEsJC' \
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