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
    --limit '2' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCanMatchOnDifferentTeam", "deployment": "Z4Tvra3c", "description": "ML0lDXKS", "find_match_timeout_seconds": 78, "game_mode": "HseSpisp", "joinable": true, "max_delay_ms": 62, "region_expansion_range_ms": 22, "region_expansion_rate_ms": 50, "region_latency_initial_range_ms": 16, "region_latency_max_ms": 83, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 92, "min": 78, "name": "3fn27et9"}, {"max": 31, "min": 87, "name": "6lkZI5qk"}, {"max": 41, "min": 25, "name": "LDfhsjuM"}], [{"max": 76, "min": 87, "name": "evUHd04e"}, {"max": 64, "min": 45, "name": "lVBvFYQg"}, {"max": 8, "min": 55, "name": "nw2Qd0cU"}], [{"max": 48, "min": 33, "name": "EAvcJCUf"}, {"max": 82, "min": 11, "name": "1vhwTNaS"}, {"max": 71, "min": 69, "name": "NaDsrCif"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 3, "role_flexing_second": 45}, "max_number": 16, "min_number": 95, "player_max_number": 98, "player_min_number": 54}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 82, "min": 88, "name": "uK2EvmYB"}, {"max": 56, "min": 83, "name": "qvPLSabC"}, {"max": 27, "min": 70, "name": "tn0E74Xt"}], [{"max": 17, "min": 49, "name": "rztWPVKj"}, {"max": 44, "min": 45, "name": "l7B4tbgP"}, {"max": 55, "min": 58, "name": "mzzyHFT7"}], [{"max": 54, "min": 21, "name": "x4Obrqg7"}, {"max": 17, "min": 62, "name": "A51dE8Hw"}, {"max": 15, "min": 36, "name": "ZCJjx1fo"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 36, "role_flexing_second": 51}, "duration": 36, "max_number": 4, "min_number": 61, "player_max_number": 81, "player_min_number": 37}, {"combination": {"alliances": [[{"max": 13, "min": 54, "name": "QPUQQkvd"}, {"max": 69, "min": 68, "name": "FD07U1hs"}, {"max": 67, "min": 66, "name": "MH8maOD7"}], [{"max": 3, "min": 87, "name": "pJarKFCo"}, {"max": 18, "min": 10, "name": "7v91vYL6"}, {"max": 71, "min": 39, "name": "WwZKC5U9"}], [{"max": 71, "min": 33, "name": "ZoXG83GY"}, {"max": 79, "min": 12, "name": "yIn0p356"}, {"max": 46, "min": 3, "name": "yDmT8S70"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 25, "role_flexing_second": 53}, "duration": 40, "max_number": 51, "min_number": 79, "player_max_number": 24, "player_min_number": 60}, {"combination": {"alliances": [[{"max": 76, "min": 75, "name": "drlVfnzM"}, {"max": 70, "min": 34, "name": "cEteIf1k"}, {"max": 5, "min": 52, "name": "58TNu1iO"}], [{"max": 85, "min": 61, "name": "m7X2xOvs"}, {"max": 21, "min": 31, "name": "1rnA562l"}, {"max": 36, "min": 24, "name": "YtkKFn4w"}], [{"max": 91, "min": 1, "name": "hqlnRVK2"}, {"max": 25, "min": 37, "name": "JiSCmEp9"}, {"max": 91, "min": 72, "name": "1NKEEAml"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 83, "role_flexing_second": 3}, "duration": 73, "max_number": 26, "min_number": 82, "player_max_number": 35, "player_min_number": 14}], "batch_size": 55, "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 86, "flex_flat_step_range": 8, "flex_immunity_count": 12, "flex_range_max": 94, "flex_rate_ms": 68, "flex_step_max": 20, "force_authority_match": false, "initial_step_range": 23, "mmr_max": 67, "mmr_mean": 22, "mmr_min": 49, "mmr_std_dev": 82, "override_mmr_data": true, "use_bucket_mmr": false, "use_flat_flex_step": true}, "flexing_rule": [{"attribute": "1sedwnzt", "criteria": "dty1rml4", "duration": 38, "reference": 0.08259938301700054}, {"attribute": "QNRZB7n1", "criteria": "htuqzAyX", "duration": 80, "reference": 0.7172628065380198}, {"attribute": "arkUphR5", "criteria": "nQCLQWYu", "duration": 38, "reference": 0.49517455911929587}], "match_options": {"options": [{"name": "0zAliWwF", "type": "uMCfLINs"}, {"name": "RLkvuwST", "type": "ByrWwoY9"}, {"name": "YLCY2Et3", "type": "Kz0Cp4ni"}]}, "matching_rule": [{"attribute": "HYmEW4oC", "criteria": "q2wJvBmV", "reference": 0.2297956519876898}, {"attribute": "T4nIn5Et", "criteria": "QWSjQ1Lp", "reference": 0.054778328680014754}, {"attribute": "ilThA7QQ", "criteria": "vjRQZSL5", "reference": 0.7427237576967636}], "rebalance_enable": false, "sort_ticket": {"search_result": "pmGrZ4n1", "ticket_queue": "Tt2SSJCY"}, "sort_tickets": [{"search_result": "evcyJ19S", "threshold": 36, "ticket_queue": "gFLSAMsj"}, {"search_result": "aNoRx971", "threshold": 95, "ticket_queue": "gvgCZjAy"}, {"search_result": "Iw6dfeTw", "threshold": 37, "ticket_queue": "J38C0M8O"}], "sub_game_modes": {"lw0kaF6Q": {"alliance": {"combination": {"alliances": [[{"max": 71, "min": 22, "name": "BQjR1mOE"}, {"max": 65, "min": 11, "name": "ac5hR5yF"}, {"max": 58, "min": 84, "name": "szq7jXgn"}], [{"max": 78, "min": 51, "name": "7VSfdNRA"}, {"max": 84, "min": 71, "name": "o6NXDlgS"}, {"max": 99, "min": 87, "name": "tGBPLrHk"}], [{"max": 67, "min": 44, "name": "ZdoZ7Z4r"}, {"max": 38, "min": 51, "name": "tPR2ziTp"}, {"max": 47, "min": 22, "name": "amBzfqPk"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 89, "role_flexing_second": 48}, "max_number": 47, "min_number": 55, "player_max_number": 31, "player_min_number": 75}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 5, "min": 40, "name": "W6eOfJ8B"}, {"max": 33, "min": 36, "name": "FUd7wMvI"}, {"max": 91, "min": 54, "name": "4J9DQV7q"}], [{"max": 70, "min": 85, "name": "pNV96BVx"}, {"max": 47, "min": 38, "name": "zchR2w3I"}, {"max": 86, "min": 90, "name": "gkhQ8pqJ"}], [{"max": 6, "min": 81, "name": "EFcXHYti"}, {"max": 5, "min": 77, "name": "ujFb5DpQ"}, {"max": 36, "min": 27, "name": "ITzpSPUd"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 15, "role_flexing_second": 14}, "duration": 22, "max_number": 31, "min_number": 86, "player_max_number": 93, "player_min_number": 21}, {"combination": {"alliances": [[{"max": 54, "min": 96, "name": "gZkabPVn"}, {"max": 28, "min": 93, "name": "SoEAIGFy"}, {"max": 92, "min": 66, "name": "WuwoFRah"}], [{"max": 95, "min": 61, "name": "E7LbU9bH"}, {"max": 59, "min": 56, "name": "3ATAVCOf"}, {"max": 95, "min": 25, "name": "SvVJyqT1"}], [{"max": 76, "min": 55, "name": "N5x92cXj"}, {"max": 51, "min": 60, "name": "4RiYx5EJ"}, {"max": 74, "min": 47, "name": "6Aa0wErK"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 2, "role_flexing_second": 99}, "duration": 63, "max_number": 96, "min_number": 28, "player_max_number": 79, "player_min_number": 25}, {"combination": {"alliances": [[{"max": 28, "min": 6, "name": "7iP3JCmF"}, {"max": 75, "min": 32, "name": "kdEKgQrh"}, {"max": 8, "min": 51, "name": "balN8KLA"}], [{"max": 5, "min": 53, "name": "kGwd3wgS"}, {"max": 18, "min": 22, "name": "ceeWlZBg"}, {"max": 41, "min": 26, "name": "f7EDPZnW"}], [{"max": 89, "min": 53, "name": "8vnRGnoH"}, {"max": 85, "min": 65, "name": "zkgJV0OY"}, {"max": 70, "min": 98, "name": "mPxVNXiW"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 2, "role_flexing_second": 86}, "duration": 98, "max_number": 90, "min_number": 96, "player_max_number": 69, "player_min_number": 71}], "name": "kG1PUiTA"}, "HplO3Ddi": {"alliance": {"combination": {"alliances": [[{"max": 13, "min": 78, "name": "KIRxVBjQ"}, {"max": 66, "min": 37, "name": "yYOpg5uA"}, {"max": 74, "min": 22, "name": "M0vJeXfE"}], [{"max": 59, "min": 57, "name": "K5TAvMsj"}, {"max": 54, "min": 90, "name": "cCuWv0H9"}, {"max": 38, "min": 98, "name": "0KhbVC2v"}], [{"max": 23, "min": 39, "name": "pTyhGNAq"}, {"max": 27, "min": 42, "name": "yOomgD48"}, {"max": 21, "min": 97, "name": "vieFIaOa"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 77, "role_flexing_second": 83}, "max_number": 10, "min_number": 46, "player_max_number": 31, "player_min_number": 99}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 86, "min": 6, "name": "74GYdfBs"}, {"max": 31, "min": 65, "name": "T5p1tNlr"}, {"max": 27, "min": 8, "name": "Hb8quvDm"}], [{"max": 69, "min": 13, "name": "c7l8S645"}, {"max": 46, "min": 37, "name": "xiJdpIBs"}, {"max": 52, "min": 72, "name": "MFAyWxRQ"}], [{"max": 66, "min": 91, "name": "KI5K4pGW"}, {"max": 63, "min": 22, "name": "5oOjoXFM"}, {"max": 6, "min": 58, "name": "XWzgmBJj"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 35, "role_flexing_second": 22}, "duration": 78, "max_number": 94, "min_number": 18, "player_max_number": 97, "player_min_number": 20}, {"combination": {"alliances": [[{"max": 74, "min": 95, "name": "tIVwh6yS"}, {"max": 75, "min": 41, "name": "QSjalQFJ"}, {"max": 72, "min": 34, "name": "I3n7heyW"}], [{"max": 89, "min": 48, "name": "AkPRRE4Z"}, {"max": 82, "min": 1, "name": "ohHS5MrY"}, {"max": 21, "min": 73, "name": "NGDzNRz6"}], [{"max": 6, "min": 77, "name": "2NG4T05d"}, {"max": 44, "min": 69, "name": "zF5UZ1IN"}, {"max": 30, "min": 4, "name": "p8D7mix8"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 5, "role_flexing_second": 52}, "duration": 76, "max_number": 90, "min_number": 99, "player_max_number": 56, "player_min_number": 32}, {"combination": {"alliances": [[{"max": 97, "min": 35, "name": "cQnwL7qv"}, {"max": 76, "min": 90, "name": "NoxJONuw"}, {"max": 20, "min": 56, "name": "RJttM0bJ"}], [{"max": 3, "min": 6, "name": "FeaCx1SH"}, {"max": 29, "min": 43, "name": "ICu6w1PU"}, {"max": 30, "min": 34, "name": "aA00lG8z"}], [{"max": 33, "min": 84, "name": "5ocv7jv2"}, {"max": 46, "min": 26, "name": "LCGPKT8c"}, {"max": 4, "min": 56, "name": "2vWJHetq"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 53, "role_flexing_second": 85}, "duration": 68, "max_number": 58, "min_number": 34, "player_max_number": 27, "player_min_number": 8}], "name": "lbLMEhzu"}, "9njQdhBI": {"alliance": {"combination": {"alliances": [[{"max": 17, "min": 28, "name": "lVXJPcRZ"}, {"max": 49, "min": 6, "name": "8qa3jgcH"}, {"max": 96, "min": 74, "name": "JDnejfgy"}], [{"max": 85, "min": 44, "name": "Leg1gqUT"}, {"max": 13, "min": 73, "name": "D1lJRq4M"}, {"max": 33, "min": 91, "name": "mAuGFcyo"}], [{"max": 76, "min": 27, "name": "rl9vjn7m"}, {"max": 17, "min": 52, "name": "TkbQL0Yt"}, {"max": 82, "min": 71, "name": "FjeOadvB"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 55, "role_flexing_second": 8}, "max_number": 43, "min_number": 99, "player_max_number": 99, "player_min_number": 46}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 59, "min": 9, "name": "2yvTeLqQ"}, {"max": 54, "min": 34, "name": "GtkGzWxC"}, {"max": 10, "min": 65, "name": "mA9BXlAF"}], [{"max": 81, "min": 80, "name": "iQz7V2CH"}, {"max": 28, "min": 74, "name": "Ph4jflHe"}, {"max": 18, "min": 69, "name": "k3fL4Nwa"}], [{"max": 5, "min": 36, "name": "HKPtxAvv"}, {"max": 23, "min": 66, "name": "Q6kEPT8V"}, {"max": 31, "min": 71, "name": "W1CCTZJT"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 33, "role_flexing_second": 6}, "duration": 65, "max_number": 96, "min_number": 55, "player_max_number": 82, "player_min_number": 1}, {"combination": {"alliances": [[{"max": 35, "min": 69, "name": "Pont87gL"}, {"max": 41, "min": 94, "name": "ZcrZPm9p"}, {"max": 10, "min": 41, "name": "U3oDY64X"}], [{"max": 12, "min": 36, "name": "hPgQtG3l"}, {"max": 5, "min": 90, "name": "pARNnOoE"}, {"max": 59, "min": 98, "name": "9iyrwlAg"}], [{"max": 80, "min": 85, "name": "qAzvHDb7"}, {"max": 41, "min": 89, "name": "UasuP5KB"}, {"max": 27, "min": 69, "name": "TyCtfn7A"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 0, "role_flexing_second": 47}, "duration": 90, "max_number": 73, "min_number": 94, "player_max_number": 25, "player_min_number": 61}, {"combination": {"alliances": [[{"max": 80, "min": 46, "name": "setubvHi"}, {"max": 50, "min": 64, "name": "OK6rkUQG"}, {"max": 61, "min": 8, "name": "FsTjQUPA"}], [{"max": 94, "min": 9, "name": "N7w7iC7T"}, {"max": 11, "min": 38, "name": "WDckpgVq"}, {"max": 32, "min": 80, "name": "DFxsexFC"}], [{"max": 51, "min": 47, "name": "Hp3TJI5l"}, {"max": 7, "min": 83, "name": "jZ7ZT4fh"}, {"max": 74, "min": 95, "name": "OJc9rFUD"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 1, "role_flexing_second": 22}, "duration": 12, "max_number": 8, "min_number": 92, "player_max_number": 42, "player_min_number": 53}], "name": "7VjcPG4Y"}}, "ticket_flexing_selection": "EzEEg06Y", "ticket_flexing_selections": [{"selection": "JpjzXrin", "threshold": 53}, {"selection": "0MezkmUc", "threshold": 33}, {"selection": "FNQl2hlT", "threshold": 22}], "use_newest_ticket_for_flexing": true}, "session_queue_timeout_seconds": 82, "social_matchmaking": false, "sub_gamemode_selection": "ticketOrder", "ticket_observability_enable": true, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'URwBhDo0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel '8BWVGhLH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "zqw0RByZ", "players": [{"results": [{"attribute": "a5Y0pvG6", "value": 0.7207153527858621}, {"attribute": "rlGcLYX5", "value": 0.3842046110601718}, {"attribute": "4YTiReJY", "value": 0.18583434623371575}], "user_id": "AwDXx46v"}, {"results": [{"attribute": "3G1jRRCy", "value": 0.9980900086328384}, {"attribute": "BDxJwEP2", "value": 0.053217892954935064}, {"attribute": "Ckv5vhed", "value": 0.24746827201747945}], "user_id": "9X6YPHoy"}, {"results": [{"attribute": "I4bW8l7P", "value": 0.9327927628591586}, {"attribute": "RCmy5Wxq", "value": 0.027808886003631295}, {"attribute": "8eJcdR2Z", "value": 0.5450116092494249}], "user_id": "0eJIHLSy"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "drJIjOWQ"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "21dNdxu1", "client_version": "fue6SRdc", "deployment": "lwWKV6gS", "error_code": 51, "error_message": "yKgGZkhr", "game_mode": "ODyZQw6A", "is_mock": "UAbg4TI2", "joinable": true, "match_id": "19Xwq3IY", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 82, "party_attributes": {"QUpNZLOM": {}, "61FVVX2w": {}, "TOLFXM3n": {}}, "party_id": "cKeS0tQS", "party_members": [{"extra_attributes": {"QVkJghFb": {}, "TR00hxVZ": {}, "xNgoPh4L": {}}, "user_id": "jK7jmwjg"}, {"extra_attributes": {"bLhfiDxm": {}, "TYNyq0Xa": {}, "uWbAVTmB": {}}, "user_id": "ycAHsby1"}, {"extra_attributes": {"Y8NDBu4f": {}, "zzftyApf": {}, "ZzM3Gnyg": {}}, "user_id": "WtaRkmUL"}], "ticket_created_at": 45, "ticket_id": "IlcKWPJv"}, {"first_ticket_created_at": 52, "party_attributes": {"cvEEUUWN": {}, "F8FAzc04": {}, "ItDIocMO": {}}, "party_id": "BXZSEcVD", "party_members": [{"extra_attributes": {"XyqXdT6Q": {}, "dCOba4x6": {}, "BxOSzIpP": {}}, "user_id": "fgjFJTUK"}, {"extra_attributes": {"rLPFAQwo": {}, "OMU85F0P": {}, "xM8lUHNH": {}}, "user_id": "FMHJhZnT"}, {"extra_attributes": {"mjuujdRh": {}, "rfu6mK5g": {}, "w09pfSn7": {}}, "user_id": "9JlPOIzJ"}], "ticket_created_at": 92, "ticket_id": "cNVg2skf"}, {"first_ticket_created_at": 36, "party_attributes": {"fZ1GdnlX": {}, "IcfQ0474": {}, "nXlGj6nM": {}}, "party_id": "EdRepPvg", "party_members": [{"extra_attributes": {"su7rRQV9": {}, "rYvQSQdO": {}, "jugrTJCS": {}}, "user_id": "R6n7yMoF"}, {"extra_attributes": {"zS5nftQ7": {}, "FY4Xn8O3": {}, "7yFDnfwR": {}}, "user_id": "z8uztnEd"}, {"extra_attributes": {"zVUASnTu": {}, "Gt5Qi2cf": {}, "ROveOniH": {}}, "user_id": "ykl4IGF3"}], "ticket_created_at": 77, "ticket_id": "86O5pkN3"}]}, {"matching_parties": [{"first_ticket_created_at": 11, "party_attributes": {"1OP40JGJ": {}, "tKP4wj70": {}, "UCPSYDe7": {}}, "party_id": "aE8AQmaX", "party_members": [{"extra_attributes": {"y9LjVKxa": {}, "DYxp5cws": {}, "RZ6b7aHB": {}}, "user_id": "nV4CRD9x"}, {"extra_attributes": {"vxUb6Q9w": {}, "exsW7y3P": {}, "Hq533chD": {}}, "user_id": "I9KPOHB8"}, {"extra_attributes": {"ofkBEn6T": {}, "pVj8R07M": {}, "AVSubHxj": {}}, "user_id": "Lz1aMj12"}], "ticket_created_at": 12, "ticket_id": "8cXd2wI9"}, {"first_ticket_created_at": 62, "party_attributes": {"JgVyLmbw": {}, "BhBdrt0G": {}, "Tb1afLn5": {}}, "party_id": "pRPzeDxh", "party_members": [{"extra_attributes": {"JeZX6FLp": {}, "Ku231R54": {}, "6BQ0qFea": {}}, "user_id": "kekNPc68"}, {"extra_attributes": {"KLcqPJSL": {}, "qyq5FmUm": {}, "uYUiGain": {}}, "user_id": "dfvT7B2V"}, {"extra_attributes": {"D3v6P2b9": {}, "Y3u1V7iO": {}, "iFaGMJIC": {}}, "user_id": "rQomD0Ae"}], "ticket_created_at": 55, "ticket_id": "6ZMb8pxK"}, {"first_ticket_created_at": 83, "party_attributes": {"jAtCT7fy": {}, "89ex2vP5": {}, "VkgnOv1S": {}}, "party_id": "13aeR1ps", "party_members": [{"extra_attributes": {"jwjjDOZx": {}, "UjYyMTaV": {}, "uJifq18M": {}}, "user_id": "swcbjACP"}, {"extra_attributes": {"nPXhzUjs": {}, "i6WSkxYi": {}, "3GVSdUhk": {}}, "user_id": "q54Cf5KA"}, {"extra_attributes": {"oChjpeut": {}, "HicQDJQs": {}, "VDGTKTVH": {}}, "user_id": "IS5OWRIN"}], "ticket_created_at": 56, "ticket_id": "xWmFTK4M"}]}, {"matching_parties": [{"first_ticket_created_at": 8, "party_attributes": {"ETu21GYH": {}, "e1TXj39H": {}, "gVLF1oLo": {}}, "party_id": "Mkxn84ZH", "party_members": [{"extra_attributes": {"QjzrNM5t": {}, "Dl5NLty3": {}, "HIdswkDk": {}}, "user_id": "Sv3gcTQJ"}, {"extra_attributes": {"yUJWVOdS": {}, "XaYQH2CA": {}, "Egi8CBhL": {}}, "user_id": "vBh6ZT8s"}, {"extra_attributes": {"fjlPnd2q": {}, "46Q7Z8Dl": {}, "luFRQnhh": {}}, "user_id": "D0siPSg4"}], "ticket_created_at": 92, "ticket_id": "2G6qHMr3"}, {"first_ticket_created_at": 26, "party_attributes": {"dt7jQtN7": {}, "YzDOYUfi": {}, "bTlwPvjA": {}}, "party_id": "iniahAc0", "party_members": [{"extra_attributes": {"neTCAkLw": {}, "7GCaF8rd": {}, "FtkTIqNu": {}}, "user_id": "exsbXNAT"}, {"extra_attributes": {"olmSB7uJ": {}, "Xu6XMnIX": {}, "lh6kLXlf": {}}, "user_id": "06UmwBOn"}, {"extra_attributes": {"eh0BeSnM": {}, "SFGkbTBA": {}, "RSb5y9HR": {}}, "user_id": "R1ls4Rp9"}], "ticket_created_at": 17, "ticket_id": "V7YGPpGj"}, {"first_ticket_created_at": 7, "party_attributes": {"0wmr1cAP": {}, "v3nVuXgZ": {}, "CqOM2Hrh": {}}, "party_id": "0wY9VkCK", "party_members": [{"extra_attributes": {"jDKfJbWc": {}, "SAbvtklt": {}, "V57lY2C2": {}}, "user_id": "Uzkg6hqv"}, {"extra_attributes": {"vGasc4RC": {}, "j4OIrn8T": {}, "7TSv40pz": {}}, "user_id": "CqSArBOI"}, {"extra_attributes": {"d0bvnPXV": {}, "09B72E5L": {}, "KCrJcyrF": {}}, "user_id": "LEHsYbfd"}], "ticket_created_at": 30, "ticket_id": "1uhDeIuu"}]}], "namespace": "xEXUa9in", "party_attributes": {"AguVDRb1": {}, "jZWPZ5na": {}, "ivv8xbXC": {}}, "party_id": "ZDxmUPOu", "queued_at": 87, "region": "IA1rTVev", "server_name": "cNrOalaJ", "status": "q7erErUi", "ticket_id": "mEFqTb2i", "ticket_ids": ["ELNuHmvL", "aCbz8eMn", "pMF4ijp3"], "updated_at": "1975-04-30T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "giSY32Io"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'B6YPmMtt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 26, "userID": "lXHEuSPs", "weight": 0.12333968187856525}' \
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
    --matchIDs 'BS2bYoOD' \
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
    --strategy '7HRzSs2V' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'Iv4ZS95R' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'uSlf7iVZ' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCannotMatch", "deployment": "yzm3YA19", "description": "WRqcrn6F", "findMatchTimeoutSeconds": 5, "joinable": false, "max_delay_ms": 28, "region_expansion_range_ms": 26, "region_expansion_rate_ms": 30, "region_latency_initial_range_ms": 90, "region_latency_max_ms": 85, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 35, "min": 42, "name": "irAwBAWo"}, {"max": 81, "min": 1, "name": "m4XcVALO"}, {"max": 40, "min": 91, "name": "JgQVgxge"}], [{"max": 99, "min": 22, "name": "nc8fklW2"}, {"max": 35, "min": 27, "name": "RPQhCACk"}, {"max": 54, "min": 82, "name": "lLyo2nSU"}], [{"max": 42, "min": 12, "name": "jXFb8yAa"}, {"max": 50, "min": 97, "name": "siE7a4xm"}, {"max": 7, "min": 22, "name": "ib7lwABi"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 4, "role_flexing_second": 3}, "maxNumber": 52, "minNumber": 4, "playerMaxNumber": 18, "playerMinNumber": 99}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 49, "min": 40, "name": "UlahySjJ"}, {"max": 83, "min": 87, "name": "5U3hPIBQ"}, {"max": 2, "min": 3, "name": "7Zt56Cxo"}], [{"max": 41, "min": 14, "name": "7Rlf2Zpx"}, {"max": 87, "min": 7, "name": "RFyJ7ohY"}, {"max": 94, "min": 55, "name": "pmv6Ujeu"}], [{"max": 68, "min": 94, "name": "IIqDFiNq"}, {"max": 99, "min": 100, "name": "ZM0bz4LD"}, {"max": 44, "min": 47, "name": "J2WvrdR2"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 94, "role_flexing_second": 40}, "duration": 33, "max_number": 57, "min_number": 76, "player_max_number": 82, "player_min_number": 71}, {"combination": {"alliances": [[{"max": 8, "min": 91, "name": "9TBebB8i"}, {"max": 7, "min": 21, "name": "4iULzS3f"}, {"max": 3, "min": 82, "name": "ytreQS7Z"}], [{"max": 17, "min": 12, "name": "MvSJNJR5"}, {"max": 87, "min": 40, "name": "2XZ6Peim"}, {"max": 16, "min": 21, "name": "pLh9vP6f"}], [{"max": 1, "min": 90, "name": "x8t35dMM"}, {"max": 52, "min": 71, "name": "4JS9Ukih"}, {"max": 26, "min": 55, "name": "J80adm84"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 89, "role_flexing_second": 63}, "duration": 85, "max_number": 75, "min_number": 57, "player_max_number": 46, "player_min_number": 17}, {"combination": {"alliances": [[{"max": 48, "min": 2, "name": "XhDorfA3"}, {"max": 60, "min": 55, "name": "JzueltF4"}, {"max": 23, "min": 48, "name": "azSiKED3"}], [{"max": 32, "min": 90, "name": "8Y8qVPBu"}, {"max": 35, "min": 87, "name": "HBhxHPwp"}, {"max": 7, "min": 67, "name": "Uuqrr46d"}], [{"max": 43, "min": 94, "name": "7h5R01tR"}, {"max": 2, "min": 31, "name": "OtYnh9St"}, {"max": 56, "min": 100, "name": "j3BEkQqi"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 35, "role_flexing_second": 88}, "duration": 32, "max_number": 100, "min_number": 58, "player_max_number": 40, "player_min_number": 37}], "batch_size": 11, "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 44, "flex_flat_step_range": 50, "flex_immunity_count": 15, "flex_range_max": 16, "flex_rate_ms": 62, "flex_step_max": 47, "force_authority_match": false, "initial_step_range": 38, "mmr_max": 33, "mmr_mean": 80, "mmr_min": 9, "mmr_std_dev": 1, "override_mmr_data": false, "use_bucket_mmr": false, "use_flat_flex_step": false}, "flexingRules": [{"attribute": "PlSAwqck", "criteria": "bJBaygHw", "duration": 85, "reference": 0.8211513839258813}, {"attribute": "i14eG1t9", "criteria": "jxipjWCp", "duration": 79, "reference": 0.5871982826182862}, {"attribute": "PsY4s29Y", "criteria": "zRVzFI8L", "duration": 95, "reference": 0.8341351569300502}], "match_options": {"options": [{"name": "Ok95VxKa", "type": "TAMDZaGo"}, {"name": "gX1qQq0P", "type": "IZFY21Wk"}, {"name": "mUtpnSGy", "type": "JehLeCyY"}]}, "matchingRules": [{"attribute": "GDkkTZQL", "criteria": "Zilk1G1R", "reference": 0.8005286765201414}, {"attribute": "KjvkId61", "criteria": "8qLUUirM", "reference": 0.504571884144351}, {"attribute": "cfEIeh7s", "criteria": "yJ5KGBaC", "reference": 0.5724060820784701}], "sort_ticket": {"search_result": "a9NbzQJx", "ticket_queue": "p74GUfxP"}, "sort_tickets": [{"search_result": "wEhgElXA", "threshold": 11, "ticket_queue": "bPXPAEXU"}, {"search_result": "JQcUS4yR", "threshold": 55, "ticket_queue": "T6sW8TYF"}, {"search_result": "e8RvgyEi", "threshold": 50, "ticket_queue": "YGAaP284"}], "sub_game_modes": {}, "ticket_flexing_selection": "ieexJXjF", "ticket_flexing_selections": [{"selection": "atSipd7N", "threshold": 93}, {"selection": "9wSZHFSm", "threshold": 1}, {"selection": "ELEoRtOb", "threshold": 98}], "use_newest_ticket_for_flexing": true}, "sessionQueueTimeoutSeconds": 26, "socialMatchmaking": true, "sub_gamemode_selection": "random", "ticket_observability_enable": false, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName 'tlYeCPzI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName 'ItJbcKIo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName 'Ehbi0AsR' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 65}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName 'h2UuriMk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName 'gwC60Vix' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "kH1KfA5G", "count": 93, "mmrMax": 0.1539653269940784, "mmrMean": 0.12601637048555214, "mmrMin": 0.734218847105174, "mmrStdDev": 0.810137637392981}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName 'rc7loNXO' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 14, "party_attributes": {"SswLjgmY": {}, "o9wDv5QP": {}, "h87AMw0i": {}}, "party_id": "HV94YARY", "party_members": [{"extra_attributes": {"3bYS0OwB": {}, "LoQUuUpL": {}, "NvUpjMBD": {}}, "user_id": "o2ykL6ZI"}, {"extra_attributes": {"W3sfCGpK": {}, "1gighaVH": {}, "3AetlIX1": {}}, "user_id": "MppXi1WG"}, {"extra_attributes": {"KyLqIbCS": {}, "ws37y5Om": {}, "nDNaZ5dt": {}}, "user_id": "7JzfIIkk"}], "ticket_created_at": 42, "ticket_id": "2qKSCccr"}, {"first_ticket_created_at": 48, "party_attributes": {"ESIwSGxR": {}, "fUa4knZp": {}, "xkC1HvtK": {}}, "party_id": "q8V8YZXh", "party_members": [{"extra_attributes": {"SUjp6GPr": {}, "AaDETHDt": {}, "Da4FZhMm": {}}, "user_id": "HtqVl6Ps"}, {"extra_attributes": {"swp09h6U": {}, "MSQlFqCm": {}, "Eq8ntZHZ": {}}, "user_id": "hU4zWwZS"}, {"extra_attributes": {"p1F5M9TI": {}, "keiRZ91U": {}, "bb8VYYbx": {}}, "user_id": "0udZcdXj"}], "ticket_created_at": 99, "ticket_id": "OwBKawyc"}, {"first_ticket_created_at": 67, "party_attributes": {"PO2yEN7O": {}, "DZSXeoS3": {}, "kfXHNEWv": {}}, "party_id": "0HLFz5ce", "party_members": [{"extra_attributes": {"I79ZmFCj": {}, "VxSO073b": {}, "t5BGsr9c": {}}, "user_id": "EyOxIEtY"}, {"extra_attributes": {"W25Zv21H": {}, "UZgZkYRV": {}, "QNUozwiZ": {}}, "user_id": "eQyzAwMB"}, {"extra_attributes": {"eA96y2Rc": {}, "mExgBTYF": {}, "XtBKKpfb": {}}, "user_id": "waBORS3X"}], "ticket_created_at": 99, "ticket_id": "zcNF1byS"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName '0nCeHEyA' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 40}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'cCBQraOT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'RbvABRlc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'KbMvYXbF' \
    --matchID 'LLHcWjw9' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["ufNae3vX", "PzoYF4ij", "q7o04nb2"], "party_id": "mjxf45hE", "user_id": "PhBI8Jh4"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'FCdg0BIX' \
    --matchID 'pxZXA43Y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'NdQNBjGU' \
    --matchID 'HN7AZWo9' \
    --namespace $AB_NAMESPACE \
    --userID 'XnmlMt94' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName 'tCFH3Gxp' \
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
    --channelName 'locJT5he' \
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