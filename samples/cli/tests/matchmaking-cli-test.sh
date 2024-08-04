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
    --limit '45' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCanMatch", "deployment": "9Ffdbitg", "description": "gVqGla5Y", "find_match_timeout_seconds": 88, "game_mode": "6kXsjwBN", "joinable": false, "max_delay_ms": 53, "region_expansion_range_ms": 68, "region_expansion_rate_ms": 9, "region_latency_initial_range_ms": 69, "region_latency_max_ms": 6, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 64, "min": 64, "name": "tFmsI2VR"}, {"max": 90, "min": 9, "name": "tQyR2BlB"}, {"max": 14, "min": 25, "name": "X6W8KiAW"}], [{"max": 86, "min": 90, "name": "jQsXPdYJ"}, {"max": 74, "min": 53, "name": "Wa28IRMH"}, {"max": 7, "min": 49, "name": "qqg3gggk"}], [{"max": 43, "min": 24, "name": "leezdZDP"}, {"max": 20, "min": 9, "name": "RKUa8mVA"}, {"max": 89, "min": 79, "name": "lJr3QEq1"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 56, "role_flexing_second": 0}, "max_number": 28, "min_number": 98, "player_max_number": 4, "player_min_number": 91}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 14, "min": 69, "name": "U36xV0VE"}, {"max": 87, "min": 53, "name": "uoO6Vs3m"}, {"max": 40, "min": 68, "name": "ei7m3y5w"}], [{"max": 54, "min": 76, "name": "XnRu2r8l"}, {"max": 32, "min": 83, "name": "aOu2pKKT"}, {"max": 17, "min": 59, "name": "nKgGsYjh"}], [{"max": 29, "min": 4, "name": "uHgkYmkO"}, {"max": 69, "min": 63, "name": "QJ4NUW1U"}, {"max": 47, "min": 19, "name": "w9NMAAWW"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 76, "role_flexing_second": 14}, "duration": 25, "max_number": 33, "min_number": 89, "player_max_number": 37, "player_min_number": 24}, {"combination": {"alliances": [[{"max": 70, "min": 67, "name": "YOWIuDwZ"}, {"max": 6, "min": 67, "name": "AKkTwtgn"}, {"max": 56, "min": 70, "name": "zN3sXcjZ"}], [{"max": 49, "min": 53, "name": "7cpkFztu"}, {"max": 70, "min": 88, "name": "y73Ti3Rr"}, {"max": 65, "min": 1, "name": "lbFL3VR3"}], [{"max": 49, "min": 23, "name": "PwrohbVQ"}, {"max": 49, "min": 28, "name": "wcRBFnJE"}, {"max": 8, "min": 9, "name": "aRDlGtHM"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 63, "role_flexing_second": 26}, "duration": 91, "max_number": 54, "min_number": 92, "player_max_number": 57, "player_min_number": 66}, {"combination": {"alliances": [[{"max": 96, "min": 18, "name": "GJN0BfcN"}, {"max": 54, "min": 67, "name": "kIseHAl9"}, {"max": 64, "min": 73, "name": "BpYuZbB9"}], [{"max": 65, "min": 26, "name": "TiulZ2lz"}, {"max": 73, "min": 90, "name": "CQVXanP4"}, {"max": 24, "min": 76, "name": "juYcDHFp"}], [{"max": 30, "min": 89, "name": "J7PJbJoX"}, {"max": 55, "min": 12, "name": "l4gZU646"}, {"max": 6, "min": 97, "name": "blvdjyHM"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 83, "role_flexing_second": 22}, "duration": 71, "max_number": 39, "min_number": 88, "player_max_number": 33, "player_min_number": 11}], "batch_size": 70, "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 62, "flex_flat_step_range": 96, "flex_immunity_count": 11, "flex_range_max": 35, "flex_rate_ms": 77, "flex_step_max": 16, "force_authority_match": true, "initial_step_range": 58, "mmr_max": 40, "mmr_mean": 27, "mmr_min": 21, "mmr_std_dev": 33, "override_mmr_data": false, "use_bucket_mmr": true, "use_flat_flex_step": false}, "flexing_rule": [{"attribute": "ODmbE1Bq", "criteria": "VQSusCj2", "duration": 12, "reference": 0.019649328961683366}, {"attribute": "LWBwV8Zh", "criteria": "XcsyifYP", "duration": 72, "reference": 0.9070714562517874}, {"attribute": "KWHFAETd", "criteria": "KHwEvtYA", "duration": 48, "reference": 0.6345105740188737}], "match_options": {"options": [{"name": "UQQRYDF6", "type": "alfgKztP"}, {"name": "zPvspQjT", "type": "DNffiayL"}, {"name": "Kj6Q0BHl", "type": "ERKL5dbd"}]}, "matching_rule": [{"attribute": "MYaAzw1F", "criteria": "MutIE5K8", "reference": 0.16020585140798393}, {"attribute": "QQSpCNJg", "criteria": "XuwSdSi9", "reference": 0.29581808768600426}, {"attribute": "0aevAGBJ", "criteria": "7d0arfZx", "reference": 0.7115040574722812}], "rebalance_enable": false, "sort_ticket": {"search_result": "eTUfpw1W", "ticket_queue": "dww7ujol"}, "sort_tickets": [{"search_result": "HdGQed6k", "threshold": 86, "ticket_queue": "Emr584Kk"}, {"search_result": "lYi10j6Q", "threshold": 39, "ticket_queue": "Ep5JZPu3"}, {"search_result": "80KUg3D9", "threshold": 72, "ticket_queue": "KJ6Y3a80"}], "sub_game_modes": {"7CQUiKrI": {"alliance": {"combination": {"alliances": [[{"max": 64, "min": 19, "name": "U3mpVtqq"}, {"max": 21, "min": 72, "name": "3jPF6kfD"}, {"max": 51, "min": 59, "name": "eGPQt1mK"}], [{"max": 48, "min": 36, "name": "cDK6ewvI"}, {"max": 8, "min": 77, "name": "XhPcuS2Y"}, {"max": 39, "min": 95, "name": "ovXegtYl"}], [{"max": 56, "min": 95, "name": "VjzJNJ4o"}, {"max": 1, "min": 39, "name": "DQGcx0xI"}, {"max": 20, "min": 41, "name": "Kq4tx7ah"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 80, "role_flexing_second": 41}, "max_number": 10, "min_number": 34, "player_max_number": 32, "player_min_number": 3}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 85, "min": 14, "name": "6AYMrbAx"}, {"max": 97, "min": 28, "name": "3BpxpGGA"}, {"max": 38, "min": 78, "name": "H8yBnT58"}], [{"max": 57, "min": 39, "name": "A4kIzxDI"}, {"max": 38, "min": 65, "name": "unxvZhTu"}, {"max": 86, "min": 22, "name": "vcvgjATR"}], [{"max": 98, "min": 58, "name": "9goADyrO"}, {"max": 86, "min": 78, "name": "ms0uQBAX"}, {"max": 68, "min": 62, "name": "wnXA2Her"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 28, "role_flexing_second": 31}, "duration": 55, "max_number": 70, "min_number": 71, "player_max_number": 40, "player_min_number": 87}, {"combination": {"alliances": [[{"max": 82, "min": 89, "name": "Xvf5x3iC"}, {"max": 94, "min": 38, "name": "c5OuwRsm"}, {"max": 30, "min": 69, "name": "ttueXTok"}], [{"max": 48, "min": 85, "name": "sw9lgtiY"}, {"max": 90, "min": 59, "name": "0rKKcDl5"}, {"max": 54, "min": 12, "name": "xRzTLmwZ"}], [{"max": 29, "min": 98, "name": "o7bIMbOY"}, {"max": 62, "min": 11, "name": "gejEvqWd"}, {"max": 5, "min": 66, "name": "L9tzDb3a"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 47, "role_flexing_second": 83}, "duration": 54, "max_number": 93, "min_number": 48, "player_max_number": 85, "player_min_number": 10}, {"combination": {"alliances": [[{"max": 22, "min": 74, "name": "7fUEC8zW"}, {"max": 88, "min": 42, "name": "U0xXH5fZ"}, {"max": 47, "min": 23, "name": "1Cx7w0my"}], [{"max": 84, "min": 92, "name": "1AJas8V0"}, {"max": 65, "min": 24, "name": "Q2wZHWwG"}, {"max": 50, "min": 60, "name": "8ZXIpHme"}], [{"max": 92, "min": 36, "name": "EOAfvTvy"}, {"max": 30, "min": 65, "name": "UMYF0WG1"}, {"max": 22, "min": 2, "name": "QOL9IeEU"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 59, "role_flexing_second": 33}, "duration": 55, "max_number": 81, "min_number": 23, "player_max_number": 69, "player_min_number": 79}], "name": "AN2xDu79"}, "OdBqZBKq": {"alliance": {"combination": {"alliances": [[{"max": 73, "min": 34, "name": "tljsp69C"}, {"max": 7, "min": 72, "name": "XjGffr38"}, {"max": 37, "min": 19, "name": "r5c34xqG"}], [{"max": 15, "min": 72, "name": "tQqOfOFm"}, {"max": 68, "min": 91, "name": "VGDBJo4c"}, {"max": 74, "min": 28, "name": "KK8IRi7q"}], [{"max": 17, "min": 74, "name": "0yw3Vxqb"}, {"max": 58, "min": 40, "name": "6CQmc99G"}, {"max": 30, "min": 81, "name": "Bdd2sfp7"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 55, "role_flexing_second": 50}, "max_number": 22, "min_number": 56, "player_max_number": 98, "player_min_number": 80}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 84, "min": 33, "name": "5A4SDZDl"}, {"max": 34, "min": 98, "name": "bhO3uZvf"}, {"max": 96, "min": 35, "name": "rHaO7u28"}], [{"max": 80, "min": 96, "name": "LCzLg2QX"}, {"max": 66, "min": 11, "name": "UtxHxKlf"}, {"max": 25, "min": 50, "name": "EqWHK8U5"}], [{"max": 53, "min": 94, "name": "95wXa7Xm"}, {"max": 24, "min": 57, "name": "aY2g9I5k"}, {"max": 76, "min": 57, "name": "AuxyvpnW"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 7, "role_flexing_second": 65}, "duration": 95, "max_number": 83, "min_number": 78, "player_max_number": 76, "player_min_number": 23}, {"combination": {"alliances": [[{"max": 89, "min": 75, "name": "v046HvWR"}, {"max": 3, "min": 52, "name": "zdYVjcmA"}, {"max": 46, "min": 76, "name": "4NosmLvJ"}], [{"max": 9, "min": 79, "name": "0ce2SrLo"}, {"max": 22, "min": 57, "name": "AfwEAn1W"}, {"max": 86, "min": 6, "name": "n7mE99rr"}], [{"max": 92, "min": 72, "name": "z53MIXJH"}, {"max": 95, "min": 5, "name": "e0wmbcHw"}, {"max": 4, "min": 52, "name": "hmB4dbne"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 1, "role_flexing_second": 58}, "duration": 85, "max_number": 71, "min_number": 33, "player_max_number": 70, "player_min_number": 59}, {"combination": {"alliances": [[{"max": 69, "min": 59, "name": "OUSPpYW2"}, {"max": 85, "min": 21, "name": "Gs1QOMsy"}, {"max": 6, "min": 42, "name": "JiRwm6UX"}], [{"max": 94, "min": 61, "name": "4wSj9sDk"}, {"max": 65, "min": 69, "name": "N5ngZ8qU"}, {"max": 56, "min": 57, "name": "52m9Voib"}], [{"max": 27, "min": 53, "name": "gfzRCjWv"}, {"max": 22, "min": 27, "name": "tGWsbzRQ"}, {"max": 70, "min": 72, "name": "EKirVWA9"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 30, "role_flexing_second": 56}, "duration": 82, "max_number": 84, "min_number": 72, "player_max_number": 32, "player_min_number": 93}], "name": "Ac6eMAkO"}, "pK5GUycX": {"alliance": {"combination": {"alliances": [[{"max": 94, "min": 64, "name": "t9i5hrNm"}, {"max": 53, "min": 13, "name": "L70f8lQw"}, {"max": 55, "min": 60, "name": "h337wKHj"}], [{"max": 46, "min": 7, "name": "AB8lw3KK"}, {"max": 59, "min": 24, "name": "2lgY0LK7"}, {"max": 30, "min": 88, "name": "L06P9k6s"}], [{"max": 81, "min": 67, "name": "XpijkZVk"}, {"max": 100, "min": 77, "name": "EOBxEGw3"}, {"max": 18, "min": 33, "name": "o2BG99lH"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 50, "role_flexing_second": 93}, "max_number": 65, "min_number": 62, "player_max_number": 1, "player_min_number": 47}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 16, "min": 86, "name": "aEKfmTNc"}, {"max": 35, "min": 95, "name": "MkQfJRFL"}, {"max": 87, "min": 34, "name": "NL8pHK3L"}], [{"max": 66, "min": 37, "name": "tGqBEoW9"}, {"max": 43, "min": 58, "name": "A5CdVhBM"}, {"max": 2, "min": 29, "name": "IxtEPsIY"}], [{"max": 10, "min": 97, "name": "hz5BloTp"}, {"max": 25, "min": 74, "name": "X1rJrTRx"}, {"max": 41, "min": 22, "name": "JLvJX5JK"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 80, "role_flexing_second": 93}, "duration": 86, "max_number": 51, "min_number": 21, "player_max_number": 84, "player_min_number": 14}, {"combination": {"alliances": [[{"max": 87, "min": 85, "name": "PWdOgyzO"}, {"max": 57, "min": 11, "name": "WLm14xX6"}, {"max": 15, "min": 76, "name": "DhazR8Ky"}], [{"max": 88, "min": 27, "name": "DpGUTI0n"}, {"max": 87, "min": 94, "name": "pWOLyfIu"}, {"max": 68, "min": 97, "name": "bfoziMQg"}], [{"max": 20, "min": 98, "name": "xEfsYofW"}, {"max": 66, "min": 12, "name": "lO8rcYRO"}, {"max": 71, "min": 73, "name": "9UkBSuxd"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 63, "role_flexing_second": 11}, "duration": 40, "max_number": 8, "min_number": 98, "player_max_number": 19, "player_min_number": 57}, {"combination": {"alliances": [[{"max": 92, "min": 42, "name": "Z05A0lWB"}, {"max": 65, "min": 97, "name": "PNfszmdg"}, {"max": 72, "min": 64, "name": "AeQSlsT0"}], [{"max": 1, "min": 6, "name": "bkaPYC7A"}, {"max": 31, "min": 4, "name": "4Mxqc82O"}, {"max": 52, "min": 99, "name": "DrobDrPA"}], [{"max": 2, "min": 94, "name": "qIUd7IPD"}, {"max": 74, "min": 43, "name": "98Wj5c7P"}, {"max": 53, "min": 79, "name": "fwi6aj1r"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 83, "role_flexing_second": 12}, "duration": 31, "max_number": 79, "min_number": 51, "player_max_number": 89, "player_min_number": 4}], "name": "EyZvDx2n"}}, "ticket_flexing_selection": "z7yrX2k1", "ticket_flexing_selections": [{"selection": "llneeNzL", "threshold": 43}, {"selection": "HfFVzDCy", "threshold": 80}, {"selection": "JjhAteH9", "threshold": 89}], "use_newest_ticket_for_flexing": true}, "session_queue_timeout_seconds": 31, "social_matchmaking": false, "sub_gamemode_selection": "random", "ticket_observability_enable": false, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'Z81EY02m' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'M2iaOFoq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "JfERfoGe", "players": [{"results": [{"attribute": "AHQw0hLp", "value": 0.781755594793003}, {"attribute": "rembj0Pr", "value": 0.8188488502035091}, {"attribute": "Bj9wiVaS", "value": 0.35192639077435073}], "user_id": "dkY99Qef"}, {"results": [{"attribute": "A2PqBiYF", "value": 0.8113699976526931}, {"attribute": "yLxT7f37", "value": 0.11283936855429122}, {"attribute": "lAqOXsdx", "value": 0.18565486879902648}], "user_id": "vjV77h4F"}, {"results": [{"attribute": "j2tFiTW3", "value": 0.9876204586924949}, {"attribute": "V9mXML4G", "value": 0.05472042004713529}, {"attribute": "ehPeoYWo", "value": 0.6239688565066273}], "user_id": "u3D2xZoI"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "EFYAENWG"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "OWAgqALj", "client_version": "QkdBSMlZ", "deployment": "VM1Xk6Zq", "error_code": 19, "error_message": "SR9WTAPu", "game_mode": "OrmErp4D", "is_mock": "jEspMP2F", "joinable": true, "match_id": "HznoqfrA", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 37, "party_attributes": {"byntSkyt": {}, "ZwyIGRZR": {}, "aOOPKtqg": {}}, "party_id": "Ghp9qOGR", "party_members": [{"extra_attributes": {"debS6U2M": {}, "illmBhFx": {}, "2nzFIufz": {}}, "user_id": "ECvd8dTy"}, {"extra_attributes": {"ybYSOeXE": {}, "BQtv1qx2": {}, "hzEGTrBR": {}}, "user_id": "IDWgD2mF"}, {"extra_attributes": {"kLnpurfG": {}, "9nuLbjPZ": {}, "sfBPJz16": {}}, "user_id": "vw2VjITM"}], "ticket_created_at": 10, "ticket_id": "mYmSSBDW"}, {"first_ticket_created_at": 91, "party_attributes": {"m9rkJkBi": {}, "UBOfWEsX": {}, "crpFqnAv": {}}, "party_id": "AyO8GHAq", "party_members": [{"extra_attributes": {"CSHa7nkZ": {}, "I2suUuWG": {}, "pFKXiLJ0": {}}, "user_id": "9afhTIwh"}, {"extra_attributes": {"p6QEJ8qh": {}, "0ct5LpWO": {}, "9wBQwNCp": {}}, "user_id": "abvld3vC"}, {"extra_attributes": {"YHpjN3G1": {}, "VLmt0qRZ": {}, "hiJzFc47": {}}, "user_id": "92MTMdug"}], "ticket_created_at": 68, "ticket_id": "mykUxVOD"}, {"first_ticket_created_at": 48, "party_attributes": {"gdH4fbnu": {}, "9rOfgY3M": {}, "xAlfcQtJ": {}}, "party_id": "Shp1wf9l", "party_members": [{"extra_attributes": {"IUGfrp11": {}, "GqYBWjCy": {}, "2riLnn0Y": {}}, "user_id": "rShBfZoo"}, {"extra_attributes": {"6ZMfM53y": {}, "Pj3rehLN": {}, "UdMacxlX": {}}, "user_id": "gOgtynq6"}, {"extra_attributes": {"KwjixcvK": {}, "wx4VaYbU": {}, "uEg1N1TW": {}}, "user_id": "pIAXTXcZ"}], "ticket_created_at": 81, "ticket_id": "QHpkzo5Y"}]}, {"matching_parties": [{"first_ticket_created_at": 23, "party_attributes": {"doBeP0zb": {}, "U2pHa4TL": {}, "GdW0LJ9p": {}}, "party_id": "NC76zBxh", "party_members": [{"extra_attributes": {"gm7JTYzu": {}, "hoUmKgNG": {}, "xv0SxrVW": {}}, "user_id": "Ycb1h1za"}, {"extra_attributes": {"S8PkguQx": {}, "pl0dS8qk": {}, "YNMhixpG": {}}, "user_id": "ckUTNr32"}, {"extra_attributes": {"eJRaZxOi": {}, "kob315Mo": {}, "O1cSFjM5": {}}, "user_id": "MVwGZJWy"}], "ticket_created_at": 28, "ticket_id": "dtjH1c34"}, {"first_ticket_created_at": 62, "party_attributes": {"XVOiSEm5": {}, "eG8PLWzA": {}, "Zo1E55yn": {}}, "party_id": "s2O84ium", "party_members": [{"extra_attributes": {"pqb0AoiJ": {}, "fFtmkS4K": {}, "BlcvrpJW": {}}, "user_id": "iRM8uBrM"}, {"extra_attributes": {"4nzb57uo": {}, "7uxuhZ3p": {}, "g6pmK7RD": {}}, "user_id": "0oxkKSii"}, {"extra_attributes": {"wuBW3fBK": {}, "cci48JiD": {}, "K3RXg0Tr": {}}, "user_id": "q0ryGagz"}], "ticket_created_at": 79, "ticket_id": "GoU2ypRo"}, {"first_ticket_created_at": 6, "party_attributes": {"mjJlBs4M": {}, "rWLt7lKM": {}, "Rel9QsJC": {}}, "party_id": "pR3U2fmx", "party_members": [{"extra_attributes": {"4SfYmAmc": {}, "xNMPrN8v": {}, "fea5kRk5": {}}, "user_id": "K6CAcxOq"}, {"extra_attributes": {"skfABUie": {}, "SPlwKSfM": {}, "q0xL4LNt": {}}, "user_id": "RBaoiBW2"}, {"extra_attributes": {"Mw82UOTZ": {}, "skxCCYgU": {}, "ajFtitFL": {}}, "user_id": "1vA4Zebp"}], "ticket_created_at": 42, "ticket_id": "1F99dK9E"}]}, {"matching_parties": [{"first_ticket_created_at": 76, "party_attributes": {"0oyP7tIl": {}, "suzjKsWl": {}, "RQuLJE4M": {}}, "party_id": "qLBm3bfV", "party_members": [{"extra_attributes": {"3yV1svKu": {}, "g0M6b0y5": {}, "3IOk9DyS": {}}, "user_id": "HLhucEUL"}, {"extra_attributes": {"bTzoCPks": {}, "fQyoNaqc": {}, "c3dLmaBm": {}}, "user_id": "wBVeaFBg"}, {"extra_attributes": {"CkJvcrbW": {}, "lSCYjlwT": {}, "iBNsqBii": {}}, "user_id": "zndQ3eGn"}], "ticket_created_at": 86, "ticket_id": "qR4eXjYq"}, {"first_ticket_created_at": 96, "party_attributes": {"NmYFX3GG": {}, "iZXLW0ky": {}, "9SvCxJdL": {}}, "party_id": "08ZpaC6R", "party_members": [{"extra_attributes": {"iL1zTNx0": {}, "WTRZde6A": {}, "nPIEbkh4": {}}, "user_id": "GghG5WA5"}, {"extra_attributes": {"FiYZuV2o": {}, "5zDWRXAM": {}, "ePMoqRaW": {}}, "user_id": "giVQ95Fs"}, {"extra_attributes": {"MfE1s88x": {}, "2ZplpnZy": {}, "IJSOGWjN": {}}, "user_id": "AhwG7i5z"}], "ticket_created_at": 33, "ticket_id": "W0J393WV"}, {"first_ticket_created_at": 56, "party_attributes": {"gN5Iq3pu": {}, "7739oGvj": {}, "J1pOVjdq": {}}, "party_id": "tPmdKNya", "party_members": [{"extra_attributes": {"1yENGTco": {}, "ysiQFi7G": {}, "RCCJ3kT3": {}}, "user_id": "lueB2knt"}, {"extra_attributes": {"lM3OWskT": {}, "rLB9TrZp": {}, "0wIczaSz": {}}, "user_id": "yvi7E9Bl"}, {"extra_attributes": {"DKWQAtlM": {}, "zL7eGWAm": {}, "wtEODJ7W": {}}, "user_id": "GQOc9b0l"}], "ticket_created_at": 47, "ticket_id": "A20R0ZKo"}]}], "namespace": "v9xkzEOT", "party_attributes": {"BgIj2YsD": {}, "1wuZnIxX": {}, "P7JGeLlK": {}}, "party_id": "gUpE3mZo", "queued_at": 64, "region": "CkxxRr5l", "server_name": "ZR18SLVT", "status": "ZO4buX26", "ticket_id": "RZhuhIbW", "ticket_ids": ["ldcGWAQx", "KmuoAx1c", "8XnmaK8D"], "updated_at": "1993-11-04T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "wzEuBA2l"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'Lvha9uxR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 34, "userID": "Dx49WTRb", "weight": 0.21128090297084734}' \
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
    --matchIDs 'pghE8B5x' \
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
    --strategy 'Zv7nYZG1' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'oMsk9wlz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'QSCK8mN3' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCannotMatch", "deployment": "UCZfKygC", "description": "tjkA9j1m", "findMatchTimeoutSeconds": 30, "joinable": true, "max_delay_ms": 26, "region_expansion_range_ms": 22, "region_expansion_rate_ms": 26, "region_latency_initial_range_ms": 45, "region_latency_max_ms": 77, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 34, "min": 51, "name": "2v8Hhlj9"}, {"max": 53, "min": 87, "name": "mKykMAym"}, {"max": 66, "min": 46, "name": "5ln7m6MQ"}], [{"max": 12, "min": 63, "name": "3gadGrYz"}, {"max": 60, "min": 87, "name": "FIsX04ut"}, {"max": 85, "min": 96, "name": "FXRacAJL"}], [{"max": 43, "min": 75, "name": "cFhTcQuu"}, {"max": 23, "min": 74, "name": "a0lTeESN"}, {"max": 23, "min": 49, "name": "NE6xR10O"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 24, "role_flexing_second": 45}, "maxNumber": 19, "minNumber": 67, "playerMaxNumber": 89, "playerMinNumber": 2}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 40, "min": 45, "name": "5rnwPwvL"}, {"max": 29, "min": 15, "name": "GlMMrAhK"}, {"max": 97, "min": 36, "name": "YrDqltxt"}], [{"max": 28, "min": 45, "name": "nHVer74X"}, {"max": 9, "min": 79, "name": "PN5j2mRn"}, {"max": 53, "min": 94, "name": "nYu9yg5V"}], [{"max": 80, "min": 42, "name": "aDcMiAfm"}, {"max": 58, "min": 21, "name": "lmF6c9K5"}, {"max": 2, "min": 5, "name": "r6KdBCzf"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 47, "role_flexing_second": 41}, "duration": 39, "max_number": 54, "min_number": 76, "player_max_number": 75, "player_min_number": 84}, {"combination": {"alliances": [[{"max": 21, "min": 89, "name": "fp5Nsfma"}, {"max": 81, "min": 66, "name": "kJ5HhXhG"}, {"max": 37, "min": 85, "name": "AeZbGdAY"}], [{"max": 72, "min": 69, "name": "dIR7PuLQ"}, {"max": 38, "min": 55, "name": "srd86DkV"}, {"max": 76, "min": 41, "name": "IHG207M6"}], [{"max": 22, "min": 23, "name": "KTuCyyA7"}, {"max": 46, "min": 1, "name": "dl9kY4nE"}, {"max": 34, "min": 26, "name": "EUKlNdVs"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 19, "role_flexing_second": 7}, "duration": 42, "max_number": 59, "min_number": 98, "player_max_number": 86, "player_min_number": 68}, {"combination": {"alliances": [[{"max": 38, "min": 80, "name": "1NMry5M1"}, {"max": 42, "min": 96, "name": "MzS9i3xy"}, {"max": 86, "min": 79, "name": "d5g8MuAV"}], [{"max": 59, "min": 38, "name": "juYHCtwX"}, {"max": 64, "min": 87, "name": "MVR5bhz4"}, {"max": 33, "min": 72, "name": "A6Nqm2GJ"}], [{"max": 14, "min": 76, "name": "Q8xMSAGI"}, {"max": 78, "min": 17, "name": "b9zTP8h9"}, {"max": 89, "min": 95, "name": "0sIUIuGR"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 85, "role_flexing_second": 94}, "duration": 99, "max_number": 33, "min_number": 82, "player_max_number": 2, "player_min_number": 75}], "batch_size": 35, "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 8, "flex_flat_step_range": 36, "flex_immunity_count": 13, "flex_range_max": 61, "flex_rate_ms": 46, "flex_step_max": 95, "force_authority_match": true, "initial_step_range": 55, "mmr_max": 87, "mmr_mean": 64, "mmr_min": 36, "mmr_std_dev": 58, "override_mmr_data": false, "use_bucket_mmr": false, "use_flat_flex_step": false}, "flexingRules": [{"attribute": "PCUalpfZ", "criteria": "MoH0dKpQ", "duration": 71, "reference": 0.18407566356008032}, {"attribute": "btyvdwS3", "criteria": "NRLntBse", "duration": 4, "reference": 0.8745520984739097}, {"attribute": "7yVavAg9", "criteria": "g5bf1e9Y", "duration": 85, "reference": 0.7892544629759967}], "match_options": {"options": [{"name": "qxiZTJAo", "type": "zn4Y25bO"}, {"name": "YnZ9Favh", "type": "LINZkSIs"}, {"name": "a2LyHzEV", "type": "PVsOWxux"}]}, "matchingRules": [{"attribute": "TVceXm7k", "criteria": "OPSydtrd", "reference": 0.3187782528862154}, {"attribute": "N0KRlWkg", "criteria": "acJbm28l", "reference": 0.08218730715581812}, {"attribute": "5HIqqmx9", "criteria": "YUkdLrD6", "reference": 0.7446629101712813}], "sort_ticket": {"search_result": "BMDzcN4g", "ticket_queue": "nTzAfSZP"}, "sort_tickets": [{"search_result": "bxcv2tiF", "threshold": 30, "ticket_queue": "z1GXFlTy"}, {"search_result": "0oHl2lwy", "threshold": 67, "ticket_queue": "WHUqMUsG"}, {"search_result": "F9T48Plb", "threshold": 97, "ticket_queue": "1E2gEIy3"}], "sub_game_modes": {}, "ticket_flexing_selection": "lVf0bpzr", "ticket_flexing_selections": [{"selection": "UxPWHvAA", "threshold": 27}, {"selection": "0HVQXGe5", "threshold": 3}, {"selection": "OnUeevbX", "threshold": 19}], "use_newest_ticket_for_flexing": true}, "sessionQueueTimeoutSeconds": 76, "socialMatchmaking": false, "sub_gamemode_selection": "random", "ticket_observability_enable": false, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName '5k9pXzod' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName 'F6rX4lAh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName 'KY8nNgdQ' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 75}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName 'TSV4n70v' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName 'q5UUzWHf' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "FNK6is7A", "count": 6, "mmrMax": 0.3485097552696259, "mmrMean": 0.03336409714580646, "mmrMin": 0.4518104501875695, "mmrStdDev": 0.9505501163503991}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName 'sso8PZSX' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 96, "party_attributes": {"Vfw4jGhp": {}, "JwQZGVf8": {}, "wjESXq7T": {}}, "party_id": "etUb3Dh8", "party_members": [{"extra_attributes": {"X94ovieI": {}, "Ib4jXOy1": {}, "XErl0Olz": {}}, "user_id": "sHoSpmTH"}, {"extra_attributes": {"ZAQ1zANr": {}, "JYX0qEFk": {}, "GYEgpBN0": {}}, "user_id": "KpFL69Jn"}, {"extra_attributes": {"gEe2thbF": {}, "2Q83l7RS": {}, "oalozScl": {}}, "user_id": "k1CfT508"}], "ticket_created_at": 20, "ticket_id": "Y5KE9yoQ"}, {"first_ticket_created_at": 36, "party_attributes": {"ObYjeJfp": {}, "eDvlwOBC": {}, "3cphIXr0": {}}, "party_id": "PwDYlkSh", "party_members": [{"extra_attributes": {"ln6cuwND": {}, "J93DIKpj": {}, "z3Dyz1yB": {}}, "user_id": "SNoj9TUA"}, {"extra_attributes": {"x8QnqGgq": {}, "v9uvf6bg": {}, "In9H4wXR": {}}, "user_id": "C1v2aj07"}, {"extra_attributes": {"bJyFVwGe": {}, "SRiinMKl": {}, "pCq34ouv": {}}, "user_id": "xIdZjeCf"}], "ticket_created_at": 55, "ticket_id": "7C46CccZ"}, {"first_ticket_created_at": 38, "party_attributes": {"g4OIbDoW": {}, "1O5Rpn9d": {}, "5nll8ftX": {}}, "party_id": "BllorjCE", "party_members": [{"extra_attributes": {"JT9TDFuc": {}, "N2s3seyE": {}, "wJgCHMCz": {}}, "user_id": "1L4fcuXN"}, {"extra_attributes": {"oaDwOIXO": {}, "PdzGLR5v": {}, "IRNgmhzM": {}}, "user_id": "B9MdC8Fc"}, {"extra_attributes": {"ZP6TS8Ub": {}, "u0YCVaIT": {}, "9TokvZuq": {}}, "user_id": "4TNaqZ0F"}], "ticket_created_at": 90, "ticket_id": "119Ggr8L"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName '4BqXe2m2' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 35}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'Z7QNB7GS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'I3R7KsZP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'N2kVo7J3' \
    --matchID 'mogD5TEg' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["wRwIR799", "sijeHzwq", "bJPvv5Qc"], "party_id": "1imzPIUq", "user_id": "7zWTpcp4"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'XJYJJzuH' \
    --matchID 'trfAy0Tv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'I01Fg7xa' \
    --matchID 'zFb4X0Mu' \
    --namespace $AB_NAMESPACE \
    --userID 'lPkiveJ1' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName 'WrLZzfvv' \
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
    --channelName 'unqlG5Dx' \
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