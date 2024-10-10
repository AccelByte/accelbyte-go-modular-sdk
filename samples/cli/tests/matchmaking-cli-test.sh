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
    --limit '80' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCannotMatch", "deployment": "4XL0CsWK", "description": "gHDQedaY", "find_match_timeout_seconds": 50, "game_mode": "3isJm8tM", "joinable": false, "max_delay_ms": 84, "region_expansion_range_ms": 35, "region_expansion_rate_ms": 5, "region_latency_initial_range_ms": 99, "region_latency_max_ms": 70, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 37, "min": 35, "name": "xPPiKBnh"}, {"max": 43, "min": 34, "name": "9hEzox6A"}, {"max": 21, "min": 92, "name": "1gCy92Hv"}], [{"max": 20, "min": 84, "name": "yLlw21Hi"}, {"max": 90, "min": 89, "name": "7wLiiAh5"}, {"max": 71, "min": 78, "name": "M8pG3vqG"}], [{"max": 22, "min": 89, "name": "oC8B6vJX"}, {"max": 44, "min": 81, "name": "0Q7TySR8"}, {"max": 16, "min": 95, "name": "4OVIE3Kw"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 39, "role_flexing_second": 10}, "max_number": 33, "min_number": 53, "player_max_number": 68, "player_min_number": 72}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 25, "min": 6, "name": "9FTE1fZn"}, {"max": 13, "min": 96, "name": "qvJLkAD3"}, {"max": 60, "min": 76, "name": "uHyb256q"}], [{"max": 50, "min": 86, "name": "6dQe7xfz"}, {"max": 90, "min": 6, "name": "ULNOLYS3"}, {"max": 22, "min": 82, "name": "jL1WswTm"}], [{"max": 47, "min": 57, "name": "IwIObpPe"}, {"max": 66, "min": 29, "name": "QJjTBOUQ"}, {"max": 31, "min": 52, "name": "wXHTVVPa"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 26, "role_flexing_second": 85}, "duration": 8, "max_number": 24, "min_number": 34, "player_max_number": 65, "player_min_number": 45}, {"combination": {"alliances": [[{"max": 35, "min": 79, "name": "gkvOBvdH"}, {"max": 6, "min": 99, "name": "irS0KOUG"}, {"max": 78, "min": 58, "name": "6w0reY49"}], [{"max": 68, "min": 60, "name": "5ESRqAOU"}, {"max": 49, "min": 45, "name": "QD6TSA6N"}, {"max": 28, "min": 97, "name": "5bhY8XtH"}], [{"max": 78, "min": 94, "name": "PY1pz8Hy"}, {"max": 94, "min": 29, "name": "MYetYc2P"}, {"max": 6, "min": 43, "name": "dMsKylRl"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 91, "role_flexing_second": 78}, "duration": 28, "max_number": 1, "min_number": 65, "player_max_number": 96, "player_min_number": 47}, {"combination": {"alliances": [[{"max": 77, "min": 70, "name": "JXYyWX2H"}, {"max": 23, "min": 94, "name": "vqpUIjGP"}, {"max": 93, "min": 68, "name": "wPlVDkO9"}], [{"max": 92, "min": 14, "name": "Z2q9eWRE"}, {"max": 67, "min": 28, "name": "jPQBsoe2"}, {"max": 13, "min": 60, "name": "ChWgD2sf"}], [{"max": 40, "min": 16, "name": "AZvGnceq"}, {"max": 23, "min": 44, "name": "UIS7Gm7D"}, {"max": 62, "min": 44, "name": "wy26s7fO"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 3, "role_flexing_second": 94}, "duration": 1, "max_number": 40, "min_number": 4, "player_max_number": 32, "player_min_number": 89}], "batch_size": 34, "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 9, "flex_flat_step_range": 49, "flex_immunity_count": 97, "flex_range_max": 12, "flex_rate_ms": 60, "flex_step_max": 36, "force_authority_match": false, "initial_step_range": 37, "mmr_max": 34, "mmr_mean": 78, "mmr_min": 88, "mmr_std_dev": 3, "override_mmr_data": false, "use_bucket_mmr": false, "use_flat_flex_step": false}, "flexing_rule": [{"attribute": "n9d7RKrK", "criteria": "0kiseh8a", "duration": 90, "reference": 0.019492099433441767}, {"attribute": "SM7jrLzI", "criteria": "0EpmNzRx", "duration": 72, "reference": 0.6809850351940363}, {"attribute": "5LukqW48", "criteria": "yOHfBFsP", "duration": 57, "reference": 0.18574933499159696}], "match_options": {"options": [{"name": "OQ7BmNmW", "type": "Wuw65aw4"}, {"name": "f1LjrHkq", "type": "EQxkYYP3"}, {"name": "JKLg47SO", "type": "Ph6JbJFM"}]}, "matching_rule": [{"attribute": "COllERWt", "criteria": "QnwakFTz", "reference": 0.7067030561802025}, {"attribute": "2Fj2VZjm", "criteria": "rrm2O7Zs", "reference": 0.5810329847738743}, {"attribute": "Ro07bl7N", "criteria": "pN34Ebx9", "reference": 0.6862525514569159}], "rebalance_enable": true, "sort_ticket": {"search_result": "xurnU5CB", "ticket_queue": "Q7vZPyQx"}, "sort_tickets": [{"search_result": "TDzGCjHF", "threshold": 78, "ticket_queue": "E0rtoZM2"}, {"search_result": "aZwRV6LH", "threshold": 85, "ticket_queue": "7ihQJVu0"}, {"search_result": "ziL2B0RC", "threshold": 26, "ticket_queue": "2Kf6Juiu"}], "sub_game_modes": {"8oZOpOhw": {"alliance": {"combination": {"alliances": [[{"max": 67, "min": 46, "name": "MOHgOOu2"}, {"max": 57, "min": 18, "name": "UQnEv25r"}, {"max": 47, "min": 1, "name": "ewsFQsIH"}], [{"max": 57, "min": 42, "name": "rasodln9"}, {"max": 35, "min": 70, "name": "0ScGMvdV"}, {"max": 31, "min": 57, "name": "HWWEWNwy"}], [{"max": 78, "min": 1, "name": "pzAb5ZHp"}, {"max": 78, "min": 23, "name": "1siaGUHf"}, {"max": 82, "min": 6, "name": "zOX1fo2I"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 84, "role_flexing_second": 94}, "max_number": 81, "min_number": 86, "player_max_number": 69, "player_min_number": 97}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 21, "min": 18, "name": "dwJqhBHi"}, {"max": 24, "min": 74, "name": "CsSJFgEq"}, {"max": 58, "min": 6, "name": "1cWCFvoB"}], [{"max": 36, "min": 8, "name": "zG2dYwgk"}, {"max": 45, "min": 25, "name": "6HKUFaLk"}, {"max": 0, "min": 100, "name": "QZDdI3wQ"}], [{"max": 29, "min": 32, "name": "eLKQ8ZMJ"}, {"max": 15, "min": 77, "name": "NANDHQNJ"}, {"max": 99, "min": 9, "name": "GGH33EcD"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 79, "role_flexing_second": 91}, "duration": 5, "max_number": 40, "min_number": 54, "player_max_number": 90, "player_min_number": 70}, {"combination": {"alliances": [[{"max": 93, "min": 6, "name": "7zhyHPtp"}, {"max": 7, "min": 45, "name": "SuujT2TH"}, {"max": 98, "min": 58, "name": "2mmmd1CA"}], [{"max": 11, "min": 83, "name": "wyq6S9k6"}, {"max": 24, "min": 34, "name": "H5l5WqVz"}, {"max": 66, "min": 13, "name": "zQgUao7L"}], [{"max": 92, "min": 17, "name": "loppKnfg"}, {"max": 48, "min": 19, "name": "5Mv0Yhv6"}, {"max": 64, "min": 1, "name": "6tyLRBKZ"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 11, "role_flexing_second": 7}, "duration": 84, "max_number": 56, "min_number": 88, "player_max_number": 74, "player_min_number": 18}, {"combination": {"alliances": [[{"max": 40, "min": 76, "name": "EhR6XMEw"}, {"max": 47, "min": 71, "name": "WDs3AA58"}, {"max": 7, "min": 66, "name": "pNFeqR1f"}], [{"max": 91, "min": 62, "name": "BJqpgoKU"}, {"max": 16, "min": 49, "name": "2GizyxH3"}, {"max": 46, "min": 56, "name": "UuM6IQGH"}], [{"max": 62, "min": 100, "name": "Qg5ucayN"}, {"max": 96, "min": 45, "name": "ShQ09u7W"}, {"max": 10, "min": 16, "name": "KaPtYKxQ"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 54, "role_flexing_second": 94}, "duration": 6, "max_number": 20, "min_number": 92, "player_max_number": 22, "player_min_number": 69}], "name": "ftD5AU2X"}, "banHAP5p": {"alliance": {"combination": {"alliances": [[{"max": 77, "min": 46, "name": "CBN25dff"}, {"max": 30, "min": 82, "name": "XrWuDtKx"}, {"max": 19, "min": 48, "name": "HSmcZfCJ"}], [{"max": 91, "min": 10, "name": "EVS3SsQ6"}, {"max": 12, "min": 59, "name": "byIeWDYz"}, {"max": 84, "min": 41, "name": "4LDNel3F"}], [{"max": 13, "min": 100, "name": "gdrsBHIA"}, {"max": 95, "min": 47, "name": "PpjXZeyw"}, {"max": 78, "min": 12, "name": "lt8tWPD9"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 83, "role_flexing_second": 64}, "max_number": 13, "min_number": 94, "player_max_number": 39, "player_min_number": 14}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 7, "min": 26, "name": "KaKGVSoU"}, {"max": 88, "min": 57, "name": "h9cwhPLJ"}, {"max": 56, "min": 89, "name": "55hXpKKe"}], [{"max": 24, "min": 76, "name": "RxsS7XAj"}, {"max": 33, "min": 36, "name": "TJleo6tW"}, {"max": 4, "min": 34, "name": "loun4dOX"}], [{"max": 77, "min": 96, "name": "YGyfIDIo"}, {"max": 46, "min": 7, "name": "pr5zDxL1"}, {"max": 0, "min": 7, "name": "NlsTvpwc"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 23, "role_flexing_second": 20}, "duration": 92, "max_number": 29, "min_number": 46, "player_max_number": 77, "player_min_number": 45}, {"combination": {"alliances": [[{"max": 45, "min": 59, "name": "jnXpRdqq"}, {"max": 25, "min": 28, "name": "ZA03KUSd"}, {"max": 98, "min": 64, "name": "XiLND8mC"}], [{"max": 48, "min": 37, "name": "8fMk1HuY"}, {"max": 87, "min": 18, "name": "6yUy25rg"}, {"max": 32, "min": 83, "name": "mGNwfhoh"}], [{"max": 14, "min": 59, "name": "OXyf3ARd"}, {"max": 14, "min": 85, "name": "LVujfFUD"}, {"max": 89, "min": 3, "name": "5dMN033D"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 71, "role_flexing_second": 53}, "duration": 56, "max_number": 44, "min_number": 28, "player_max_number": 65, "player_min_number": 86}, {"combination": {"alliances": [[{"max": 63, "min": 87, "name": "VNjeYj1C"}, {"max": 7, "min": 27, "name": "FhJ9e093"}, {"max": 67, "min": 5, "name": "1QHp71m7"}], [{"max": 98, "min": 9, "name": "Dr5Tdnn7"}, {"max": 98, "min": 90, "name": "MqfoE03f"}, {"max": 4, "min": 27, "name": "opvm2u5D"}], [{"max": 9, "min": 26, "name": "WIHFWiFH"}, {"max": 91, "min": 72, "name": "Zn9u7RMT"}, {"max": 31, "min": 35, "name": "uKd4WWJv"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 3, "role_flexing_second": 28}, "duration": 25, "max_number": 91, "min_number": 38, "player_max_number": 41, "player_min_number": 30}], "name": "K2RLnaSd"}, "GpkZ4epc": {"alliance": {"combination": {"alliances": [[{"max": 58, "min": 6, "name": "eVjfIlBe"}, {"max": 62, "min": 22, "name": "FzSL55dO"}, {"max": 19, "min": 24, "name": "zte2318Z"}], [{"max": 59, "min": 56, "name": "jExXjzc4"}, {"max": 1, "min": 79, "name": "xdsE3d14"}, {"max": 15, "min": 7, "name": "n0TEcvgQ"}], [{"max": 10, "min": 69, "name": "psk9N1Ej"}, {"max": 90, "min": 63, "name": "Tib3IsCK"}, {"max": 100, "min": 97, "name": "g2p4bKeX"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 62, "role_flexing_second": 13}, "max_number": 95, "min_number": 55, "player_max_number": 0, "player_min_number": 93}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 42, "min": 68, "name": "xAfTKN0e"}, {"max": 9, "min": 54, "name": "mameq8Qk"}, {"max": 37, "min": 76, "name": "aJPzD33m"}], [{"max": 21, "min": 15, "name": "yItc96ij"}, {"max": 38, "min": 90, "name": "9OXjoOwI"}, {"max": 74, "min": 67, "name": "gdurMemB"}], [{"max": 64, "min": 42, "name": "v5q2ZWCC"}, {"max": 67, "min": 38, "name": "M6yfyx4L"}, {"max": 8, "min": 64, "name": "zjrfdGWu"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 76, "role_flexing_second": 50}, "duration": 100, "max_number": 98, "min_number": 32, "player_max_number": 9, "player_min_number": 64}, {"combination": {"alliances": [[{"max": 31, "min": 47, "name": "dcm1OPS3"}, {"max": 22, "min": 55, "name": "TGchJjX4"}, {"max": 18, "min": 7, "name": "RiXVAiXr"}], [{"max": 55, "min": 79, "name": "xzqQ4kv8"}, {"max": 37, "min": 8, "name": "Zz0CTvNJ"}, {"max": 93, "min": 94, "name": "phGgMC54"}], [{"max": 14, "min": 90, "name": "Iova68AS"}, {"max": 83, "min": 75, "name": "5ncFFGqe"}, {"max": 2, "min": 51, "name": "yoaY1OOn"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 42, "role_flexing_second": 98}, "duration": 89, "max_number": 90, "min_number": 73, "player_max_number": 64, "player_min_number": 34}, {"combination": {"alliances": [[{"max": 51, "min": 55, "name": "tby3Au2C"}, {"max": 37, "min": 100, "name": "kAPGVFsD"}, {"max": 65, "min": 56, "name": "cB1kTrj3"}], [{"max": 30, "min": 12, "name": "7w1Rt8CN"}, {"max": 4, "min": 55, "name": "nzlbMUxj"}, {"max": 85, "min": 38, "name": "fZZrWzxy"}], [{"max": 76, "min": 14, "name": "vFbt8lND"}, {"max": 8, "min": 18, "name": "8bSQIxjY"}, {"max": 15, "min": 33, "name": "QrOkiSxF"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 53, "role_flexing_second": 54}, "duration": 71, "max_number": 61, "min_number": 69, "player_max_number": 43, "player_min_number": 52}], "name": "qC8G3JzT"}}, "ticket_flexing_selection": "mEh7Vj8Q", "ticket_flexing_selections": [{"selection": "stymtyvD", "threshold": 79}, {"selection": "5V7cdaIP", "threshold": 9}, {"selection": "XMH9nNYV", "threshold": 84}], "use_newest_ticket_for_flexing": false}, "session_queue_timeout_seconds": 97, "social_matchmaking": true, "sub_gamemode_selection": "ticketOrder", "ticket_observability_enable": false, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'XKe6yHin' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'tMwEOddt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "8IjPXdSk", "players": [{"results": [{"attribute": "Ab7IWIIu", "value": 0.5580507749965556}, {"attribute": "2O2DJXy0", "value": 0.08152684139896349}, {"attribute": "PWd4OH4E", "value": 0.9420247921166928}], "user_id": "TuMQTyFL"}, {"results": [{"attribute": "3DVjrWyc", "value": 0.601063847342335}, {"attribute": "k1b11DWZ", "value": 0.0937465524719231}, {"attribute": "ptlHCzsB", "value": 0.34244097411228247}], "user_id": "whu8PTv5"}, {"results": [{"attribute": "5Ov1FML6", "value": 0.1189635495652136}, {"attribute": "09bnEa8A", "value": 0.7923452373726115}, {"attribute": "W3k75vQV", "value": 0.3568937103615859}], "user_id": "hnliY3Qj"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "Z4aGUUyN"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "rf1Ktn8v", "client_version": "nUHEZVk2", "deployment": "MBVa34LV", "error_code": 77, "error_message": "dPndAH9l", "game_mode": "wnjJbyjA", "is_mock": "DqmzlGre", "joinable": false, "match_id": "z6aY2V14", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 47, "party_attributes": {"hpDjXKQy": {}, "VKDHwiUm": {}, "zASEKTvY": {}}, "party_id": "rHeXZiYI", "party_members": [{"extra_attributes": {"9fqUSc4Z": {}, "AvrCqdxa": {}, "wgo48PDW": {}}, "user_id": "mHxqAoYH"}, {"extra_attributes": {"NKxosZhK": {}, "dUJVkN0f": {}, "czw4pF8e": {}}, "user_id": "BEyKpGtv"}, {"extra_attributes": {"dPnCvPZ1": {}, "Rmw0k5TH": {}, "pKsDv1vR": {}}, "user_id": "ZYX32dFg"}], "ticket_created_at": 85, "ticket_id": "VMBIcovq"}, {"first_ticket_created_at": 25, "party_attributes": {"8speKL9V": {}, "ioUV6F44": {}, "S1Ka1MiG": {}}, "party_id": "xYzgkoik", "party_members": [{"extra_attributes": {"TMk5ajmd": {}, "Vx5j3xl6": {}, "LMzzz65Y": {}}, "user_id": "9yzOf3Js"}, {"extra_attributes": {"WcgBrZkp": {}, "kSCS5RiU": {}, "xVQOAqDA": {}}, "user_id": "gJLmpzZY"}, {"extra_attributes": {"c2Yr5fiT": {}, "D44BD8ki": {}, "PpIZgU4k": {}}, "user_id": "WWGruRxS"}], "ticket_created_at": 0, "ticket_id": "pTNOw6Pu"}, {"first_ticket_created_at": 17, "party_attributes": {"WbjbeqAi": {}, "DeJfU5jq": {}, "ULBknGvK": {}}, "party_id": "cXrTGKqh", "party_members": [{"extra_attributes": {"FlWYl2Fe": {}, "0ne3O63e": {}, "Qpq3oTDT": {}}, "user_id": "L0xelzul"}, {"extra_attributes": {"bCUQ7DYs": {}, "o5vUbLg4": {}, "IZVvo6gS": {}}, "user_id": "9hTbUpf8"}, {"extra_attributes": {"oR0yngfj": {}, "JR5guGNS": {}, "Be4wCq2W": {}}, "user_id": "rby4oxwX"}], "ticket_created_at": 44, "ticket_id": "L4LhE7Cu"}]}, {"matching_parties": [{"first_ticket_created_at": 74, "party_attributes": {"0Mjpos4D": {}, "hseCc2tm": {}, "bP77xVly": {}}, "party_id": "gc9XT8BI", "party_members": [{"extra_attributes": {"zRklF0po": {}, "oKhPNah7": {}, "XpwoKAHw": {}}, "user_id": "5tZffiIA"}, {"extra_attributes": {"1IC4immm": {}, "ihxeO3LR": {}, "SrVjuHUl": {}}, "user_id": "tOTT0Sfa"}, {"extra_attributes": {"sH6koZcb": {}, "4nmOjXkR": {}, "p8C7hR0s": {}}, "user_id": "1la1WBXg"}], "ticket_created_at": 56, "ticket_id": "JnlO0Vnj"}, {"first_ticket_created_at": 31, "party_attributes": {"iepWMUuY": {}, "P2qgQ7wl": {}, "5uxhG7cJ": {}}, "party_id": "9fOunZMH", "party_members": [{"extra_attributes": {"Gb4BJvey": {}, "S0Gu4KLH": {}, "H0hPYPvV": {}}, "user_id": "w81BiEiZ"}, {"extra_attributes": {"d7jO1R1p": {}, "ZnWiTg3K": {}, "IhOdo1GW": {}}, "user_id": "JVtWkflx"}, {"extra_attributes": {"H2kxCgjG": {}, "c0cKNniJ": {}, "WCt4SGMt": {}}, "user_id": "jKmKJEz4"}], "ticket_created_at": 79, "ticket_id": "RkCYs05O"}, {"first_ticket_created_at": 45, "party_attributes": {"McO8Ww2m": {}, "JjXYRA8e": {}, "wMINJcoP": {}}, "party_id": "WXMg6aJt", "party_members": [{"extra_attributes": {"IwfFchNK": {}, "WCTj6pLW": {}, "7WuLA0jk": {}}, "user_id": "mY8FWKf4"}, {"extra_attributes": {"wosuG26j": {}, "KgoIv7kb": {}, "7gg1zR9Y": {}}, "user_id": "hLQks80d"}, {"extra_attributes": {"vQ0n9GUM": {}, "1XK0l8Pj": {}, "lgUcKuUL": {}}, "user_id": "x2TGUCyT"}], "ticket_created_at": 2, "ticket_id": "n0hFkjXI"}]}, {"matching_parties": [{"first_ticket_created_at": 55, "party_attributes": {"FZ7eRbQ4": {}, "RzAq5pdy": {}, "spd3AptI": {}}, "party_id": "XKKTODfp", "party_members": [{"extra_attributes": {"TWLxMBqT": {}, "1wGqPXqZ": {}, "97E0fhtL": {}}, "user_id": "y44OT16g"}, {"extra_attributes": {"Mqy8RL1P": {}, "IRInmEFO": {}, "caCCv9bL": {}}, "user_id": "Wxiv7QBt"}, {"extra_attributes": {"hsY6PMAZ": {}, "5K3lvGh0": {}, "rf808pza": {}}, "user_id": "zx4AM3vr"}], "ticket_created_at": 16, "ticket_id": "PbmcTlVI"}, {"first_ticket_created_at": 86, "party_attributes": {"dNSjwozy": {}, "119ysAfs": {}, "42RuU9J1": {}}, "party_id": "IhuTazPl", "party_members": [{"extra_attributes": {"bgocYaqy": {}, "XCCb5sll": {}, "DVvoKkNy": {}}, "user_id": "T8rICFrq"}, {"extra_attributes": {"JGUVDMW4": {}, "9hOyHqDp": {}, "P4pX2GW6": {}}, "user_id": "wj0qSpts"}, {"extra_attributes": {"yFSmwJfO": {}, "sQHIJ4LX": {}, "MNIVVfev": {}}, "user_id": "LLVnHfT8"}], "ticket_created_at": 59, "ticket_id": "9N1NVktN"}, {"first_ticket_created_at": 82, "party_attributes": {"8EVCQzfJ": {}, "tsCWOSl0": {}, "4ND6VKRF": {}}, "party_id": "11Zhr41k", "party_members": [{"extra_attributes": {"yUhCt2t5": {}, "w9JMgKzW": {}, "ND0Enwup": {}}, "user_id": "VMKY13kh"}, {"extra_attributes": {"QXbMO3R4": {}, "GYZTHixx": {}, "dC3su7zh": {}}, "user_id": "cFRhuT2v"}, {"extra_attributes": {"mp6JVtyD": {}, "IIceCIFF": {}, "palOpBxg": {}}, "user_id": "7TNrc11i"}], "ticket_created_at": 58, "ticket_id": "LjPexl4d"}]}], "namespace": "FgXxTjMY", "party_attributes": {"axuS8kmR": {}, "ioUMPwzJ": {}, "LscqXcnN": {}}, "party_id": "H9rUNK64", "queued_at": 59, "region": "fL710dnr", "server_name": "mH8t5T6B", "status": "F014UXhz", "ticket_id": "ywNLoZBb", "ticket_ids": ["NcBcREJY", "KrlOkX6Y", "cmmWz8mB"], "updated_at": "1978-04-12T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "hhe4nghh"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'VM58Lm1X' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 1, "userID": "FNYk9AX1", "weight": 0.33097969712750575}' \
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
    --matchIDs 'C1RKZKCd' \
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
    --strategy 'wqtqpYE5' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'VXaVOcSn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName '5uUDPcNf' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCannotMatch", "deployment": "AC4E1ajr", "description": "gmpVqa4F", "findMatchTimeoutSeconds": 75, "joinable": true, "max_delay_ms": 88, "region_expansion_range_ms": 50, "region_expansion_rate_ms": 83, "region_latency_initial_range_ms": 61, "region_latency_max_ms": 38, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 49, "min": 54, "name": "mW8lxvki"}, {"max": 97, "min": 29, "name": "mH0Z980X"}, {"max": 21, "min": 43, "name": "4QvFqWel"}], [{"max": 69, "min": 52, "name": "uge3yQfj"}, {"max": 47, "min": 45, "name": "L5tOY4Tb"}, {"max": 63, "min": 99, "name": "EponDPjY"}], [{"max": 29, "min": 95, "name": "pwMNVK31"}, {"max": 89, "min": 59, "name": "u4nq0YJK"}, {"max": 14, "min": 94, "name": "DDYEAk2g"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 59, "role_flexing_second": 28}, "maxNumber": 41, "minNumber": 19, "playerMaxNumber": 42, "playerMinNumber": 92}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 87, "min": 56, "name": "7XwIzzKB"}, {"max": 41, "min": 71, "name": "pR7UtOb0"}, {"max": 94, "min": 84, "name": "xtyBEfDr"}], [{"max": 15, "min": 43, "name": "enAvObP9"}, {"max": 49, "min": 35, "name": "TfQswB36"}, {"max": 92, "min": 43, "name": "xclucirk"}], [{"max": 81, "min": 67, "name": "n88UgbsQ"}, {"max": 87, "min": 35, "name": "OPiX4XBb"}, {"max": 58, "min": 48, "name": "rlH3aDay"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 99, "role_flexing_second": 59}, "duration": 56, "max_number": 58, "min_number": 27, "player_max_number": 81, "player_min_number": 16}, {"combination": {"alliances": [[{"max": 93, "min": 51, "name": "3xul6aQ8"}, {"max": 79, "min": 90, "name": "ShcA2qTD"}, {"max": 88, "min": 30, "name": "DaiAK5W6"}], [{"max": 93, "min": 97, "name": "VYezIK0w"}, {"max": 24, "min": 44, "name": "OO774kKd"}, {"max": 98, "min": 62, "name": "f1RUBNv1"}], [{"max": 57, "min": 67, "name": "MH5cJS3f"}, {"max": 14, "min": 52, "name": "W9hYHXAc"}, {"max": 13, "min": 13, "name": "sAOS0sz3"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 6, "role_flexing_second": 93}, "duration": 3, "max_number": 21, "min_number": 51, "player_max_number": 62, "player_min_number": 14}, {"combination": {"alliances": [[{"max": 64, "min": 15, "name": "khmKU0uj"}, {"max": 35, "min": 2, "name": "81Tp8Dm1"}, {"max": 30, "min": 25, "name": "ZPbp54MQ"}], [{"max": 94, "min": 55, "name": "w1MIBc4M"}, {"max": 39, "min": 9, "name": "5cim0yOx"}, {"max": 100, "min": 68, "name": "QKrVcs0a"}], [{"max": 79, "min": 39, "name": "IKZ6QOh8"}, {"max": 59, "min": 41, "name": "T41QYyTH"}, {"max": 36, "min": 41, "name": "jnK6TMu2"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 59, "role_flexing_second": 96}, "duration": 53, "max_number": 80, "min_number": 11, "player_max_number": 6, "player_min_number": 13}], "batch_size": 72, "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 5, "flex_flat_step_range": 89, "flex_immunity_count": 70, "flex_range_max": 29, "flex_rate_ms": 44, "flex_step_max": 57, "force_authority_match": true, "initial_step_range": 81, "mmr_max": 81, "mmr_mean": 40, "mmr_min": 84, "mmr_std_dev": 72, "override_mmr_data": true, "use_bucket_mmr": false, "use_flat_flex_step": true}, "flexingRules": [{"attribute": "DnU0KriU", "criteria": "WoXQCtPT", "duration": 62, "reference": 0.15450562163820913}, {"attribute": "VB4JwdD1", "criteria": "oY10toK3", "duration": 89, "reference": 0.9724007381699225}, {"attribute": "QcJvB1Gy", "criteria": "Nj9MjFj1", "duration": 44, "reference": 0.11890151617266043}], "match_options": {"options": [{"name": "o9cXFnNa", "type": "sjNR0S8X"}, {"name": "rRRdEsEV", "type": "ghd60IWJ"}, {"name": "9CoZ1PkE", "type": "ZbZlUtIP"}]}, "matchingRules": [{"attribute": "Ksya2rYX", "criteria": "ypLzM6OP", "reference": 0.42630511216192746}, {"attribute": "ABg9dM5d", "criteria": "d2uoyPAX", "reference": 0.30003647230743347}, {"attribute": "s4d2OUpm", "criteria": "m3MQNtnL", "reference": 0.2637344863930232}], "sort_ticket": {"search_result": "XuWu1ZnX", "ticket_queue": "7vqpetiq"}, "sort_tickets": [{"search_result": "ShBNvPLV", "threshold": 57, "ticket_queue": "DylC0oHK"}, {"search_result": "vU9IR027", "threshold": 8, "ticket_queue": "WY1Xfhsx"}, {"search_result": "gCeudeaZ", "threshold": 16, "ticket_queue": "3wlKGJr3"}], "sub_game_modes": {}, "ticket_flexing_selection": "1ATXNtXz", "ticket_flexing_selections": [{"selection": "6uXmPjZY", "threshold": 80}, {"selection": "Fi47jQf6", "threshold": 29}, {"selection": "VVmI94eK", "threshold": 65}], "use_newest_ticket_for_flexing": false}, "sessionQueueTimeoutSeconds": 48, "socialMatchmaking": true, "sub_gamemode_selection": "ticketOrder", "ticket_observability_enable": true, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName 'iMwbrpzl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName 'ftixdIPZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName 'XQzlKc14' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 48}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName 'b3Wu3uHo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName 'ERlvEkjn' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "5EhzKsfo", "count": 75, "mmrMax": 0.3563603237522772, "mmrMean": 0.86955086194411, "mmrMin": 0.7152362001826142, "mmrStdDev": 0.03511822054734526}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName 'fc1Ky3FN' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 41, "party_attributes": {"gRzf5Bcs": {}, "HB9323GA": {}, "Pmsrl49f": {}}, "party_id": "20p0LrUl", "party_members": [{"extra_attributes": {"0fObaRrh": {}, "PTOP7p0g": {}, "sxge8QpT": {}}, "user_id": "qKE7R4Q8"}, {"extra_attributes": {"BpFaF87E": {}, "3tIQ12i5": {}, "e135GshI": {}}, "user_id": "ps0aYvzO"}, {"extra_attributes": {"yoOCPtGv": {}, "3M678oSK": {}, "X5VvrUgY": {}}, "user_id": "xRwzxxSj"}], "ticket_created_at": 34, "ticket_id": "9I6Sd1Wh"}, {"first_ticket_created_at": 82, "party_attributes": {"N3DHJ9nE": {}, "R9dz9zW9": {}, "m3wZF9JL": {}}, "party_id": "IbLwhWXZ", "party_members": [{"extra_attributes": {"id3erqcn": {}, "uNzSsmfw": {}, "YZD5gBlx": {}}, "user_id": "pVXZ1SfS"}, {"extra_attributes": {"C7B83IqC": {}, "vbMxRHsb": {}, "7d6vS6ms": {}}, "user_id": "YZBbFKIu"}, {"extra_attributes": {"pj3suIzi": {}, "jJ4S7BpM": {}, "kV3A6TqV": {}}, "user_id": "jv0l2gJh"}], "ticket_created_at": 41, "ticket_id": "LlyBlJSc"}, {"first_ticket_created_at": 2, "party_attributes": {"D3UhgOPp": {}, "j8Enctat": {}, "CbdZPeDk": {}}, "party_id": "3ISW2Unh", "party_members": [{"extra_attributes": {"8uQW3rLX": {}, "duxvq5Yt": {}, "f8kQJerh": {}}, "user_id": "HbGW5uAq"}, {"extra_attributes": {"HAomOH21": {}, "R7suiU9q": {}, "yx9AjZkI": {}}, "user_id": "qaVlGN34"}, {"extra_attributes": {"ACtcEJqY": {}, "qoNYOjfc": {}, "cyCPdWJz": {}}, "user_id": "M7LB8fPT"}], "ticket_created_at": 7, "ticket_id": "DQVotiX3"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName '445ATvDX' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 62}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'mqsnyNrG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'oNnPZaxg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'doKbTO8Z' \
    --matchID 'iPGBNb8k' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["a5g2vY5D", "YLiYPeQg", "FqYLwcgJ"], "party_id": "2RuAGRRU", "user_id": "xaB2oyZo"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName '72fvjgJF' \
    --matchID 'NxNu34MZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'u7UF0ooC' \
    --matchID 'xPl6p1Xv' \
    --namespace $AB_NAMESPACE \
    --userID 'WzXV8WNH' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName 'YZJjtnYd' \
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
    --channelName 'NUJgZCCq' \
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