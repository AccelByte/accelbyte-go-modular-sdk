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
    --limit '32' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCanMatch", "deployment": "85BT9wlJ", "description": "k3pSxIqo", "find_match_timeout_seconds": 0, "game_mode": "BX4Ho9t0", "joinable": true, "max_delay_ms": 5, "region_expansion_range_ms": 80, "region_expansion_rate_ms": 43, "region_latency_initial_range_ms": 50, "region_latency_max_ms": 26, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 90, "min": 25, "name": "BBIzOzIA"}, {"max": 62, "min": 19, "name": "Xg4ntqK3"}, {"max": 71, "min": 8, "name": "SjW4Rbbp"}], [{"max": 25, "min": 67, "name": "kvUPv5bg"}, {"max": 34, "min": 48, "name": "y1gf4AW7"}, {"max": 71, "min": 56, "name": "ptuNN6kY"}], [{"max": 88, "min": 3, "name": "GYzInU7s"}, {"max": 46, "min": 81, "name": "42vaBemF"}, {"max": 24, "min": 39, "name": "GBbQWrTg"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 78, "role_flexing_second": 19}, "max_number": 99, "min_number": 48, "player_max_number": 96, "player_min_number": 35}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 91, "min": 67, "name": "Nf7h7qwi"}, {"max": 18, "min": 15, "name": "3FHvgqd6"}, {"max": 20, "min": 88, "name": "xY7VqzEq"}], [{"max": 58, "min": 30, "name": "jq0IcG6C"}, {"max": 34, "min": 51, "name": "kkbIYpd3"}, {"max": 15, "min": 55, "name": "LZR8Zcze"}], [{"max": 18, "min": 49, "name": "h79a8X7C"}, {"max": 87, "min": 52, "name": "EIdaj2WC"}, {"max": 46, "min": 95, "name": "x7KG7G1u"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 50, "role_flexing_second": 52}, "duration": 86, "max_number": 0, "min_number": 5, "player_max_number": 60, "player_min_number": 34}, {"combination": {"alliances": [[{"max": 21, "min": 47, "name": "bKmKFwFO"}, {"max": 49, "min": 72, "name": "wVAHmjdH"}, {"max": 98, "min": 57, "name": "GS1tkenL"}], [{"max": 71, "min": 5, "name": "Ans3eZfY"}, {"max": 17, "min": 94, "name": "6Fw6YUvI"}, {"max": 87, "min": 50, "name": "zqz3pNqu"}], [{"max": 10, "min": 20, "name": "vXP7YtL7"}, {"max": 76, "min": 100, "name": "N1urdDyv"}, {"max": 54, "min": 28, "name": "gum7TPlQ"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 19, "role_flexing_second": 14}, "duration": 80, "max_number": 14, "min_number": 90, "player_max_number": 41, "player_min_number": 93}, {"combination": {"alliances": [[{"max": 83, "min": 22, "name": "TA0EkmAL"}, {"max": 84, "min": 35, "name": "MY2WikLT"}, {"max": 40, "min": 84, "name": "Qhouxfqk"}], [{"max": 34, "min": 78, "name": "2pCAARp2"}, {"max": 80, "min": 60, "name": "6846TCC8"}, {"max": 66, "min": 49, "name": "wlhkiiHi"}], [{"max": 41, "min": 32, "name": "zzsa015f"}, {"max": 78, "min": 68, "name": "OJBCem7S"}, {"max": 74, "min": 89, "name": "43OD26Dd"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 93, "role_flexing_second": 28}, "duration": 79, "max_number": 20, "min_number": 46, "player_max_number": 39, "player_min_number": 66}], "batch_size": 26, "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 49, "flex_flat_step_range": 46, "flex_immunity_count": 60, "flex_range_max": 29, "flex_rate_ms": 54, "flex_step_max": 13, "force_authority_match": true, "initial_step_range": 9, "mmr_max": 77, "mmr_mean": 92, "mmr_min": 86, "mmr_std_dev": 40, "override_mmr_data": true, "use_bucket_mmr": true, "use_flat_flex_step": true}, "flexing_rule": [{"attribute": "HcPp94zn", "criteria": "oPBFZ68x", "duration": 58, "reference": 0.684817816618106}, {"attribute": "aS4sH6lL", "criteria": "btutMolk", "duration": 27, "reference": 0.832116435511385}, {"attribute": "gIGMj7SI", "criteria": "wCN1ClQy", "duration": 24, "reference": 0.34032460386175856}], "match_options": {"options": [{"name": "DiUTuOCY", "type": "bFlRazVh"}, {"name": "oKZ4BTxy", "type": "uqlB7w4Q"}, {"name": "77VzMHuP", "type": "ufyy03wC"}]}, "matching_rule": [{"attribute": "JRLGb4WF", "criteria": "jzjRFgNX", "reference": 0.023305479371159676}, {"attribute": "7i53OAlc", "criteria": "Jmy6zmVl", "reference": 0.5928033812303339}, {"attribute": "FUFsROJw", "criteria": "z56gGX94", "reference": 0.544689099440676}], "rebalance_enable": false, "sort_ticket": {"search_result": "none", "ticket_queue": "random"}, "sort_tickets": [{"search_result": "largestPartySize", "threshold": 60, "ticket_queue": "none"}, {"search_result": "random", "threshold": 84, "ticket_queue": "distance"}, {"search_result": "distance", "threshold": 100, "ticket_queue": "distance"}], "sub_game_modes": {"mKiieHPP": {"alliance": {"combination": {"alliances": [[{"max": 34, "min": 81, "name": "vTFRi2cj"}, {"max": 48, "min": 89, "name": "E45QtSHD"}, {"max": 48, "min": 24, "name": "r6s2PTNj"}], [{"max": 53, "min": 17, "name": "OcveX9mj"}, {"max": 32, "min": 65, "name": "Yxw0mD6b"}, {"max": 11, "min": 94, "name": "IsI5VT5D"}], [{"max": 68, "min": 48, "name": "bZcX9hGY"}, {"max": 28, "min": 84, "name": "rchbV805"}, {"max": 98, "min": 27, "name": "dr4EuvHw"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 27, "role_flexing_second": 96}, "max_number": 67, "min_number": 24, "player_max_number": 37, "player_min_number": 71}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 55, "min": 6, "name": "k9tuUfwD"}, {"max": 92, "min": 37, "name": "F9lMy4NO"}, {"max": 58, "min": 42, "name": "y3Iz0PNv"}], [{"max": 27, "min": 64, "name": "K3kVm4dX"}, {"max": 45, "min": 44, "name": "OjXIRhZz"}, {"max": 40, "min": 55, "name": "CcYifEN9"}], [{"max": 97, "min": 94, "name": "sKbSL5Nc"}, {"max": 100, "min": 33, "name": "T0X1RyY4"}, {"max": 31, "min": 63, "name": "kbFN8HqY"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 3, "role_flexing_second": 79}, "duration": 52, "max_number": 56, "min_number": 3, "player_max_number": 84, "player_min_number": 57}, {"combination": {"alliances": [[{"max": 66, "min": 91, "name": "PGIww5Jc"}, {"max": 20, "min": 7, "name": "hNiXAK54"}, {"max": 9, "min": 67, "name": "T3qEUbuk"}], [{"max": 36, "min": 29, "name": "ZggFLrgo"}, {"max": 67, "min": 57, "name": "YmagPEno"}, {"max": 76, "min": 29, "name": "fRFX5OIn"}], [{"max": 2, "min": 55, "name": "6jMzB9Y0"}, {"max": 58, "min": 66, "name": "uY1u2Kne"}, {"max": 37, "min": 64, "name": "BBI58wJ8"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 86, "role_flexing_second": 30}, "duration": 26, "max_number": 51, "min_number": 95, "player_max_number": 65, "player_min_number": 7}, {"combination": {"alliances": [[{"max": 51, "min": 95, "name": "XC0NY98B"}, {"max": 43, "min": 56, "name": "iCGs7zjW"}, {"max": 68, "min": 35, "name": "PegImAoN"}], [{"max": 58, "min": 48, "name": "HotoacI3"}, {"max": 88, "min": 79, "name": "aKouME4g"}, {"max": 39, "min": 26, "name": "26LLg3eZ"}], [{"max": 88, "min": 58, "name": "v6LzV8WW"}, {"max": 76, "min": 48, "name": "Hm4nu0ic"}, {"max": 11, "min": 98, "name": "sY378boz"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 32, "role_flexing_second": 20}, "duration": 47, "max_number": 73, "min_number": 11, "player_max_number": 51, "player_min_number": 5}], "name": "1YZT5zSr"}, "4X9LZtOn": {"alliance": {"combination": {"alliances": [[{"max": 37, "min": 37, "name": "nPJwDr1j"}, {"max": 90, "min": 62, "name": "Pr6KdwnU"}, {"max": 81, "min": 17, "name": "TAodKCUE"}], [{"max": 78, "min": 49, "name": "gUYkYdst"}, {"max": 80, "min": 22, "name": "8MJ44jtU"}, {"max": 44, "min": 16, "name": "ZgANcDvD"}], [{"max": 86, "min": 83, "name": "Ou8ek18n"}, {"max": 24, "min": 28, "name": "paEgUGCf"}, {"max": 12, "min": 36, "name": "bR6wtUdU"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 46, "role_flexing_second": 64}, "max_number": 40, "min_number": 3, "player_max_number": 15, "player_min_number": 15}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 30, "min": 19, "name": "ei5pUIXO"}, {"max": 51, "min": 66, "name": "4BJ2Csgl"}, {"max": 49, "min": 73, "name": "rBWlHKUM"}], [{"max": 3, "min": 45, "name": "2Tzuf4wc"}, {"max": 79, "min": 80, "name": "0zqXcj14"}, {"max": 100, "min": 85, "name": "H2h3iOJd"}], [{"max": 3, "min": 24, "name": "gAoYqqMs"}, {"max": 36, "min": 29, "name": "LwZnr5Qo"}, {"max": 83, "min": 42, "name": "WwNALk3g"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 60, "role_flexing_second": 91}, "duration": 3, "max_number": 51, "min_number": 21, "player_max_number": 6, "player_min_number": 22}, {"combination": {"alliances": [[{"max": 61, "min": 26, "name": "B9CGHgHK"}, {"max": 11, "min": 18, "name": "k9rzQhHq"}, {"max": 3, "min": 42, "name": "ZJUKQG3l"}], [{"max": 74, "min": 87, "name": "WPR7Jdr9"}, {"max": 21, "min": 65, "name": "EwZ4quyq"}, {"max": 54, "min": 88, "name": "FH42RuTk"}], [{"max": 50, "min": 46, "name": "LVbvxCVG"}, {"max": 53, "min": 69, "name": "ORf4CKoy"}, {"max": 8, "min": 90, "name": "kFHljCBg"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 64, "role_flexing_second": 37}, "duration": 78, "max_number": 98, "min_number": 15, "player_max_number": 2, "player_min_number": 98}, {"combination": {"alliances": [[{"max": 38, "min": 33, "name": "T7qX53wT"}, {"max": 52, "min": 85, "name": "kmBbYvJj"}, {"max": 6, "min": 36, "name": "SkzWQHGP"}], [{"max": 21, "min": 43, "name": "tG6Dj4CT"}, {"max": 42, "min": 49, "name": "4AiZhU49"}, {"max": 68, "min": 27, "name": "Ur0JdJjx"}], [{"max": 25, "min": 16, "name": "TFbYKP4M"}, {"max": 15, "min": 26, "name": "NU06JDZZ"}, {"max": 20, "min": 62, "name": "1s2kGijZ"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 66, "role_flexing_second": 14}, "duration": 51, "max_number": 31, "min_number": 69, "player_max_number": 78, "player_min_number": 61}], "name": "IbAxtfOK"}, "FeRc9hHL": {"alliance": {"combination": {"alliances": [[{"max": 20, "min": 76, "name": "hVycWigb"}, {"max": 22, "min": 92, "name": "iNIpGMIu"}, {"max": 66, "min": 8, "name": "Kz9H8wXP"}], [{"max": 58, "min": 8, "name": "rWXO6sFQ"}, {"max": 83, "min": 69, "name": "Ouzk70JJ"}, {"max": 35, "min": 91, "name": "yqPNZoQO"}], [{"max": 98, "min": 61, "name": "4YVyVCRS"}, {"max": 89, "min": 97, "name": "DvXFjXjk"}, {"max": 18, "min": 10, "name": "vdtUaoiu"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 100, "role_flexing_second": 6}, "max_number": 13, "min_number": 82, "player_max_number": 69, "player_min_number": 50}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 86, "min": 98, "name": "rmDn7NUa"}, {"max": 21, "min": 42, "name": "va3W2qqs"}, {"max": 62, "min": 90, "name": "AG3JcMUO"}], [{"max": 86, "min": 52, "name": "ALK5rJLk"}, {"max": 68, "min": 73, "name": "odkRhaue"}, {"max": 21, "min": 68, "name": "6g4fQvDp"}], [{"max": 21, "min": 61, "name": "RcFQTALa"}, {"max": 63, "min": 85, "name": "ktmQaHnv"}, {"max": 54, "min": 80, "name": "VbowkS8G"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 98, "role_flexing_second": 88}, "duration": 88, "max_number": 26, "min_number": 80, "player_max_number": 21, "player_min_number": 47}, {"combination": {"alliances": [[{"max": 65, "min": 96, "name": "73zO4Ftw"}, {"max": 56, "min": 41, "name": "d5SxEv3a"}, {"max": 57, "min": 52, "name": "B7I3toMu"}], [{"max": 69, "min": 19, "name": "H34C3opI"}, {"max": 36, "min": 93, "name": "qZuUrS5s"}, {"max": 76, "min": 29, "name": "Oys0CGR7"}], [{"max": 37, "min": 62, "name": "oS5FmcnP"}, {"max": 76, "min": 30, "name": "RtZG6Fkz"}, {"max": 84, "min": 75, "name": "X3AXCw9Y"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 85, "role_flexing_second": 47}, "duration": 7, "max_number": 63, "min_number": 78, "player_max_number": 37, "player_min_number": 42}, {"combination": {"alliances": [[{"max": 20, "min": 75, "name": "0o2TuiC9"}, {"max": 35, "min": 55, "name": "C1VaYKfU"}, {"max": 15, "min": 67, "name": "1VN9xIMX"}], [{"max": 95, "min": 13, "name": "sidzDLsj"}, {"max": 51, "min": 38, "name": "9KaxOPMi"}, {"max": 72, "min": 49, "name": "JZP1eSKA"}], [{"max": 19, "min": 95, "name": "vDz47iNE"}, {"max": 84, "min": 10, "name": "uxHoc9j2"}, {"max": 97, "min": 58, "name": "Pta6378K"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 48, "role_flexing_second": 94}, "duration": 88, "max_number": 99, "min_number": 47, "player_max_number": 76, "player_min_number": 51}], "name": "0zOGZ5K1"}}, "ticket_flexing_selection": "random", "ticket_flexing_selections": [{"selection": "random", "threshold": 50}, {"selection": "oldest", "threshold": 78}, {"selection": "random", "threshold": 68}], "use_newest_ticket_for_flexing": false}, "session_queue_timeout_seconds": 3, "social_matchmaking": true, "sub_gamemode_selection": "random", "ticket_observability_enable": false, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'QVzEIZv0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'YRSPxGUb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "Bm2joSgI", "players": [{"results": [{"attribute": "Sb361LOv", "value": 0.10264378838512533}, {"attribute": "onsFnk2d", "value": 0.05100063062811411}, {"attribute": "xU3DEea2", "value": 0.07781349109932756}], "user_id": "L9GH2Arq"}, {"results": [{"attribute": "mawq3U4r", "value": 0.422630846847705}, {"attribute": "KKSC47JU", "value": 0.9857008650706903}, {"attribute": "KtxTEAWS", "value": 0.12538278631518518}], "user_id": "M48JscoE"}, {"results": [{"attribute": "30hvgvvm", "value": 0.21731260007481756}, {"attribute": "AHf1ejxG", "value": 0.8662256108726519}, {"attribute": "5wFkcdeo", "value": 0.24990256836462554}], "user_id": "k6GIamWX"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "zBlbcQql"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "gkgk2qP0", "client_version": "lhDAJVbQ", "deployment": "QS0SR4z7", "error_code": 86, "error_message": "qKm3gs3p", "game_mode": "luFXUxpX", "is_mock": "HnC3a4Vo", "joinable": false, "match_id": "7obWmypY", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 23, "party_attributes": {"KbYkLgQZ": {}, "DtnL7zOb": {}, "UAOkFdJg": {}}, "party_id": "PiXs4TRR", "party_members": [{"extra_attributes": {"CXNKKCAk": {}, "Q9n2g0Y3": {}, "qBkYZCPV": {}}, "user_id": "a5DGK4u7"}, {"extra_attributes": {"Bob18QmR": {}, "gt9Gsg8v": {}, "917f1nVX": {}}, "user_id": "0jY269QC"}, {"extra_attributes": {"DZmuP7Kx": {}, "uJXepxlz": {}, "YsnoZE6u": {}}, "user_id": "VRPuyMJ7"}], "ticket_created_at": 17, "ticket_id": "ew5TZbY5"}, {"first_ticket_created_at": 8, "party_attributes": {"wBDmRF7b": {}, "Y3Wen7Jl": {}, "zvJEUifU": {}}, "party_id": "5hIWgThW", "party_members": [{"extra_attributes": {"Ph9omnuo": {}, "xb52KG9J": {}, "bRjTZgAQ": {}}, "user_id": "qSsK6EsC"}, {"extra_attributes": {"bHcGCgfl": {}, "dtPYVmI0": {}, "KK1X17ds": {}}, "user_id": "YiqUjWnj"}, {"extra_attributes": {"rD0BVgcT": {}, "QFgblFYn": {}, "KwHN8U0J": {}}, "user_id": "nIURJxrS"}], "ticket_created_at": 0, "ticket_id": "kXOWD2zu"}, {"first_ticket_created_at": 63, "party_attributes": {"pw05ei7h": {}, "QFxYLTPM": {}, "94nO1kb0": {}}, "party_id": "eLUWt1WA", "party_members": [{"extra_attributes": {"wJM8Jc26": {}, "7Mgm72ZK": {}, "B3n22OAI": {}}, "user_id": "eVCzsD66"}, {"extra_attributes": {"bZSsFXYP": {}, "5Btqn02X": {}, "6l5tyDFH": {}}, "user_id": "ZWswjOqN"}, {"extra_attributes": {"TtvyC9tD": {}, "PwxZ88W3": {}, "jLJBODY8": {}}, "user_id": "72QRWdG1"}], "ticket_created_at": 75, "ticket_id": "W4bS5xGe"}]}, {"matching_parties": [{"first_ticket_created_at": 39, "party_attributes": {"GMqY2K67": {}, "iZUe2cJT": {}, "ZUD8Htz6": {}}, "party_id": "Yp72mGHV", "party_members": [{"extra_attributes": {"1wrhaHR0": {}, "ccxcPF9c": {}, "F1RKsCtB": {}}, "user_id": "CVUbvMRC"}, {"extra_attributes": {"48a9bMv8": {}, "vWBBjgjd": {}, "WowNXDpm": {}}, "user_id": "LwVxjoVV"}, {"extra_attributes": {"O8MOlcSR": {}, "9SISKvPp": {}, "Plxn1sWS": {}}, "user_id": "6C2S09iU"}], "ticket_created_at": 13, "ticket_id": "WOhCETDO"}, {"first_ticket_created_at": 33, "party_attributes": {"oUKmyIEy": {}, "3ne7lN2t": {}, "Y9ENoI3K": {}}, "party_id": "nBQeau67", "party_members": [{"extra_attributes": {"RDX8mrMq": {}, "wAmXlXBU": {}, "RUvmfxlY": {}}, "user_id": "XATnTjEq"}, {"extra_attributes": {"WsdYK2Jb": {}, "9NX0vdGx": {}, "45qgIRZG": {}}, "user_id": "POmx2t8I"}, {"extra_attributes": {"wgj3GnEH": {}, "nQwV2Iih": {}, "B5yMsNgO": {}}, "user_id": "aBQ7SLVb"}], "ticket_created_at": 91, "ticket_id": "SD1nYtML"}, {"first_ticket_created_at": 23, "party_attributes": {"BJizxrmC": {}, "02IDyGwI": {}, "o0dx6YRq": {}}, "party_id": "uUQxSdRy", "party_members": [{"extra_attributes": {"SiFn5IB0": {}, "opzdQqYF": {}, "xBj3uMCq": {}}, "user_id": "0e8V3UDB"}, {"extra_attributes": {"H9k2L43S": {}, "cOa2PxXD": {}, "8RTJhHfB": {}}, "user_id": "ukyLJpjU"}, {"extra_attributes": {"x37bT9dL": {}, "xedUxW1M": {}, "23QfpuXi": {}}, "user_id": "mI0QLGet"}], "ticket_created_at": 50, "ticket_id": "0qAaitub"}]}, {"matching_parties": [{"first_ticket_created_at": 14, "party_attributes": {"NN9Z1Ofv": {}, "FAlvRX0e": {}, "cI7paDVc": {}}, "party_id": "Dvvl2pED", "party_members": [{"extra_attributes": {"Iqccjk70": {}, "WQKHB2Cu": {}, "EXnV3xtY": {}}, "user_id": "cfEQxprF"}, {"extra_attributes": {"NvV5edGY": {}, "YWWAvD8s": {}, "s4lnnuYA": {}}, "user_id": "LFShvu98"}, {"extra_attributes": {"rsxzT5XT": {}, "lkeYK0Sn": {}, "HNanSN8u": {}}, "user_id": "EXGO7omq"}], "ticket_created_at": 98, "ticket_id": "3G1LgOFx"}, {"first_ticket_created_at": 26, "party_attributes": {"KSNncLFk": {}, "axiRKYSw": {}, "adTO5iCF": {}}, "party_id": "HpfGG3Iz", "party_members": [{"extra_attributes": {"w0muwyy0": {}, "DyETXFhy": {}, "7lfTwJWn": {}}, "user_id": "OSUvjXJT"}, {"extra_attributes": {"GU4uMLlT": {}, "cRZbTOhl": {}, "3Sr3zKQT": {}}, "user_id": "KAyvgKno"}, {"extra_attributes": {"AXmcaAJm": {}, "KZIWqkuQ": {}, "n0n7gbVU": {}}, "user_id": "DUvLVslv"}], "ticket_created_at": 25, "ticket_id": "90CwhH2y"}, {"first_ticket_created_at": 88, "party_attributes": {"jyi1KCuH": {}, "2l0DVr8s": {}, "GaO7fJQU": {}}, "party_id": "JrMv87gf", "party_members": [{"extra_attributes": {"zsLCOXbz": {}, "95RO5CfW": {}, "nY7Ev7fW": {}}, "user_id": "0AlGOC7g"}, {"extra_attributes": {"eGdYVcqU": {}, "TYe36l0c": {}, "UABeOeGR": {}}, "user_id": "ftE0Rl7K"}, {"extra_attributes": {"fi4UXR7A": {}, "NFacMGja": {}, "0Qzb9wHO": {}}, "user_id": "5nlnXg5n"}], "ticket_created_at": 20, "ticket_id": "bh4NZgkG"}]}], "namespace": "RPMChOMi", "party_attributes": {"TTg6KhlQ": {}, "thyetyz9": {}, "1jOI0jTu": {}}, "party_id": "xqhIyMr8", "queued_at": 81, "region": "czug9gMy", "server_name": "B7HDt7YQ", "status": "m5VHNEfr", "ticket_id": "fZEsJ7S9", "ticket_ids": ["T2It6eO9", "bLB46vB2", "zrya0cWX"], "updated_at": "1989-04-30T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "0uW6A9KB"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID '983iTFrd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 50, "userID": "PyKqYFQG", "weight": 0.746042139192623}' \
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
    --matchIDs '5WpgFU6P' \
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
    --strategy 'VHOQ7Gj8' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'XXmWpOW8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'aV5GNLzm' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCannotMatch", "deployment": "uWTfRYMO", "description": "Mop4S6Cz", "findMatchTimeoutSeconds": 63, "joinable": true, "max_delay_ms": 93, "region_expansion_range_ms": 45, "region_expansion_rate_ms": 11, "region_latency_initial_range_ms": 6, "region_latency_max_ms": 74, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 25, "min": 72, "name": "CLGKyaYs"}, {"max": 81, "min": 20, "name": "sGEQ1EzA"}, {"max": 65, "min": 11, "name": "fPP18txp"}], [{"max": 62, "min": 77, "name": "AOebumK1"}, {"max": 0, "min": 64, "name": "YihJRZv4"}, {"max": 62, "min": 82, "name": "6L1Nbkyc"}], [{"max": 86, "min": 12, "name": "uTPSHGTU"}, {"max": 29, "min": 3, "name": "5tsoWB1e"}, {"max": 71, "min": 48, "name": "ubMpH20f"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 88, "role_flexing_second": 44}, "maxNumber": 12, "minNumber": 96, "playerMaxNumber": 34, "playerMinNumber": 54}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 80, "min": 58, "name": "qN5Qv8fL"}, {"max": 57, "min": 23, "name": "rXeu7MCj"}, {"max": 46, "min": 80, "name": "5hGgLaEP"}], [{"max": 41, "min": 0, "name": "a9qGnAqz"}, {"max": 12, "min": 49, "name": "2CaFQZNP"}, {"max": 77, "min": 69, "name": "rK1sJHB5"}], [{"max": 10, "min": 81, "name": "ImwRzalq"}, {"max": 89, "min": 28, "name": "pmEGLkss"}, {"max": 79, "min": 70, "name": "Jv4a2jZf"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 1, "role_flexing_second": 64}, "duration": 77, "max_number": 43, "min_number": 15, "player_max_number": 18, "player_min_number": 37}, {"combination": {"alliances": [[{"max": 54, "min": 19, "name": "dTyxFXpR"}, {"max": 18, "min": 55, "name": "GWwQJLxk"}, {"max": 41, "min": 69, "name": "Ib70YREc"}], [{"max": 24, "min": 34, "name": "e4sGrget"}, {"max": 74, "min": 22, "name": "FbeWZFy3"}, {"max": 30, "min": 61, "name": "5x8ZDgcy"}], [{"max": 85, "min": 58, "name": "iOHQ5G98"}, {"max": 19, "min": 44, "name": "TcO62Pz6"}, {"max": 8, "min": 1, "name": "RuYTJTY0"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 72, "role_flexing_second": 90}, "duration": 95, "max_number": 31, "min_number": 98, "player_max_number": 60, "player_min_number": 82}, {"combination": {"alliances": [[{"max": 86, "min": 36, "name": "s9i4OP1e"}, {"max": 62, "min": 63, "name": "o8jRip4S"}, {"max": 85, "min": 12, "name": "yHdiK5Qs"}], [{"max": 62, "min": 63, "name": "dqWNFHSw"}, {"max": 80, "min": 54, "name": "tXyuIrOX"}, {"max": 99, "min": 6, "name": "XcEH9iGi"}], [{"max": 61, "min": 74, "name": "WWj2lqLL"}, {"max": 19, "min": 63, "name": "ZREXkF79"}, {"max": 80, "min": 36, "name": "M0t6SMvc"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 49, "role_flexing_second": 100}, "duration": 15, "max_number": 52, "min_number": 25, "player_max_number": 19, "player_min_number": 79}], "batch_size": 86, "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 59, "flex_flat_step_range": 52, "flex_immunity_count": 36, "flex_range_max": 89, "flex_rate_ms": 39, "flex_step_max": 67, "force_authority_match": true, "initial_step_range": 63, "mmr_max": 71, "mmr_mean": 14, "mmr_min": 18, "mmr_std_dev": 64, "override_mmr_data": false, "use_bucket_mmr": true, "use_flat_flex_step": true}, "flexingRules": [{"attribute": "KeN5fSBB", "criteria": "ktb2zJjZ", "duration": 91, "reference": 0.7031181971983005}, {"attribute": "oesetCOK", "criteria": "jc2yt72N", "duration": 62, "reference": 0.2987001405475125}, {"attribute": "kgzkHahx", "criteria": "VF8sPqoA", "duration": 61, "reference": 0.4190019554711072}], "match_options": {"options": [{"name": "FnBpBZmj", "type": "AHWFb9A4"}, {"name": "0AKX8CzV", "type": "gQwOB5VY"}, {"name": "vYVg2KOS", "type": "YksmQnmI"}]}, "matchingRules": [{"attribute": "IR4znO7H", "criteria": "lMqDOX5K", "reference": 0.18354018971034647}, {"attribute": "cHYgfM3I", "criteria": "NBjBTZ6t", "reference": 0.10630425104171082}, {"attribute": "aUKGEWo5", "criteria": "7fyt8CEd", "reference": 0.4241120897410994}], "sort_ticket": {"search_result": "oldestTicketAge", "ticket_queue": "oldestTicketAge"}, "sort_tickets": [{"search_result": "largestPartySize", "threshold": 53, "ticket_queue": "none"}, {"search_result": "distance", "threshold": 97, "ticket_queue": "largestPartySize"}, {"search_result": "random", "threshold": 27, "ticket_queue": "largestPartySize"}], "sub_game_modes": {}, "ticket_flexing_selection": "pivot", "ticket_flexing_selections": [{"selection": "pivot", "threshold": 6}, {"selection": "newest", "threshold": 9}, {"selection": "oldest", "threshold": 56}], "use_newest_ticket_for_flexing": false}, "sessionQueueTimeoutSeconds": 13, "socialMatchmaking": true, "sub_gamemode_selection": "random", "ticket_observability_enable": true, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName 'vvk0BLlK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName 'uQ7XkcSK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName 'yc3xSbdh' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 22}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName 'XbP3yPM7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName 'K8RX1MVr' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "BWXlNSVA", "count": 85, "mmrMax": 0.9829445788096072, "mmrMean": 0.8182868263533245, "mmrMin": 0.6066829164808343, "mmrStdDev": 0.779153939159772}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName 'aC0jD6JH' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 63, "party_attributes": {"3EKejmes": {}, "VZhVKBzv": {}, "sY9v8W4T": {}}, "party_id": "uU58mp5X", "party_members": [{"extra_attributes": {"kUUdHdmn": {}, "cS7W6p3J": {}, "vPVT5z8w": {}}, "user_id": "f3DMvFt8"}, {"extra_attributes": {"la63T0bx": {}, "X3eJRKyq": {}, "iV0aDuCT": {}}, "user_id": "En7FOTUA"}, {"extra_attributes": {"gRukOH4y": {}, "WlQY4O2h": {}, "AJ0KpzjC": {}}, "user_id": "nrm56fcP"}], "ticket_created_at": 66, "ticket_id": "0AaBfDTn"}, {"first_ticket_created_at": 96, "party_attributes": {"TskTZdch": {}, "OyHHwRMJ": {}, "PI0UjHQ3": {}}, "party_id": "LPATG7Mp", "party_members": [{"extra_attributes": {"15SZHJFs": {}, "de8fnE6s": {}, "Yg8s7oNL": {}}, "user_id": "0hrR5LNt"}, {"extra_attributes": {"jyy4MN1t": {}, "N3lZ097A": {}, "o6511xli": {}}, "user_id": "g3RkF2oh"}, {"extra_attributes": {"U9pcb62f": {}, "ajnfwSuV": {}, "pebcWgXG": {}}, "user_id": "zR5UIs9K"}], "ticket_created_at": 23, "ticket_id": "cTk7tyFs"}, {"first_ticket_created_at": 68, "party_attributes": {"PjBZo7St": {}, "thmRdRNb": {}, "Fh1ox81Q": {}}, "party_id": "zmKT5U1c", "party_members": [{"extra_attributes": {"ffELdlMK": {}, "dX7uOGR1": {}, "Y7CYCgK6": {}}, "user_id": "4R8tE5ZX"}, {"extra_attributes": {"7hR4nn8d": {}, "kjPhhFKh": {}, "0my1HNAU": {}}, "user_id": "pRbGw7YZ"}, {"extra_attributes": {"jjfRJLgg": {}, "b8nEl8I2": {}, "xSgUP3VX": {}}, "user_id": "792eh2Av"}], "ticket_created_at": 87, "ticket_id": "mY0OWZPL"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName 'DfPYAtNx' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 58}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'Zu2X7Low' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'eeMKYWQl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName '2kvc7c96' \
    --matchID 'uwILD4VM' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["z2cdzpJF", "QvRVLtFC", "gxzBudLm"], "party_id": "511kwUqL", "user_id": "8yzqmvH7"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'UasGas0t' \
    --matchID 'jTdJzapr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'izcEaGaX' \
    --matchID 'djjhV9bF' \
    --namespace $AB_NAMESPACE \
    --userID 'LiGcixmR' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName 'F8gQjW61' \
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
    --channelName 'aSxedE5o' \
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