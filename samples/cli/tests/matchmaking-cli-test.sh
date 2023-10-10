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
    --limit '36' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "cXbIgh6N", "description": "HjAamHOV", "find_match_timeout_seconds": 69, "game_mode": "TMOD6Qcs", "joinable": true, "max_delay_ms": 10, "region_expansion_range_ms": 60, "region_expansion_rate_ms": 26, "region_latency_initial_range_ms": 30, "region_latency_max_ms": 41, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 10, "min": 62, "name": "3iBf5qwJ"}, {"max": 91, "min": 90, "name": "hgQ2Usni"}, {"max": 75, "min": 23, "name": "FFXrz8sR"}], [{"max": 45, "min": 73, "name": "v4dwRnj1"}, {"max": 39, "min": 42, "name": "iUj4h1F9"}, {"max": 41, "min": 4, "name": "jjHkD3Ie"}], [{"max": 38, "min": 43, "name": "IgnqBO8z"}, {"max": 29, "min": 37, "name": "GREbT57V"}, {"max": 12, "min": 76, "name": "RPsHWC32"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 5, "role_flexing_second": 31}, "max_number": 62, "min_number": 20, "player_max_number": 56, "player_min_number": 33}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 60, "min": 39, "name": "ratEQXri"}, {"max": 75, "min": 86, "name": "UH2oVQRm"}, {"max": 85, "min": 25, "name": "blruRhSz"}], [{"max": 88, "min": 51, "name": "sQOBaRF3"}, {"max": 58, "min": 44, "name": "F8Gxn23D"}, {"max": 24, "min": 90, "name": "ZxGyVut0"}], [{"max": 49, "min": 18, "name": "CPVfUUIu"}, {"max": 92, "min": 95, "name": "FinWajpl"}, {"max": 4, "min": 17, "name": "L8wiKI33"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 59, "role_flexing_second": 72}, "duration": 4, "max_number": 91, "min_number": 16, "player_max_number": 1, "player_min_number": 41}, {"combination": {"alliances": [[{"max": 40, "min": 59, "name": "bgPm5cD5"}, {"max": 53, "min": 40, "name": "w7Eybkng"}, {"max": 43, "min": 26, "name": "DYt2h2QX"}], [{"max": 72, "min": 20, "name": "o1u96c4D"}, {"max": 98, "min": 84, "name": "qwhGxEwE"}, {"max": 59, "min": 21, "name": "gWS8U5ZO"}], [{"max": 13, "min": 22, "name": "IsWgJdEY"}, {"max": 93, "min": 23, "name": "QdlUQ6rX"}, {"max": 0, "min": 57, "name": "sqlYH7Xs"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 51, "role_flexing_second": 3}, "duration": 4, "max_number": 47, "min_number": 97, "player_max_number": 31, "player_min_number": 40}, {"combination": {"alliances": [[{"max": 11, "min": 88, "name": "guT6HTuQ"}, {"max": 6, "min": 45, "name": "2rNSLgFC"}, {"max": 51, "min": 14, "name": "5Y8j2SM7"}], [{"max": 44, "min": 39, "name": "SNmz60FC"}, {"max": 70, "min": 38, "name": "wB1oQRUK"}, {"max": 54, "min": 31, "name": "sR5NlDUH"}], [{"max": 54, "min": 53, "name": "dK8bsCzd"}, {"max": 80, "min": 42, "name": "45H2rzdv"}, {"max": 95, "min": 16, "name": "UgVDEklT"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 26, "role_flexing_second": 90}, "duration": 73, "max_number": 93, "min_number": 77, "player_max_number": 89, "player_min_number": 3}], "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 62, "flex_flat_step_range": 0, "flex_immunity_count": 37, "flex_range_max": 35, "flex_rate_ms": 51, "flex_step_max": 39, "force_authority_match": false, "initial_step_range": 38, "mmr_max": 14, "mmr_mean": 85, "mmr_min": 10, "mmr_std_dev": 80, "override_mmr_data": true, "use_bucket_mmr": false, "use_flat_flex_step": true}, "flexing_rule": [{"attribute": "5mO2ecbR", "criteria": "pVNIOjKv", "duration": 35, "reference": 0.8759141331973962}, {"attribute": "MUvYqp1y", "criteria": "XyCUMgfU", "duration": 74, "reference": 0.6756438521034587}, {"attribute": "YygdSZLl", "criteria": "Q82PeUuR", "duration": 6, "reference": 0.6487448867691673}], "match_options": {"options": [{"name": "zCdHTr9G", "type": "UCvdARq1"}, {"name": "GiD2c9xo", "type": "T3n4fmGv"}, {"name": "hqcQGy4f", "type": "8lCF5ayt"}]}, "matching_rule": [{"attribute": "GrrCbuym", "criteria": "qNyEB1Li", "reference": 0.7886114136330041}, {"attribute": "awlKL3M9", "criteria": "Btq7dzOD", "reference": 0.6659054252673362}, {"attribute": "lddF2LXW", "criteria": "z9QfFzKD", "reference": 0.22916995960965614}], "rebalance_enable": false, "sub_game_modes": {"Vtb0SRz0": {"alliance": {"combination": {"alliances": [[{"max": 42, "min": 17, "name": "bJr67vKU"}, {"max": 8, "min": 18, "name": "tI2I7vCs"}, {"max": 19, "min": 3, "name": "JgK5kIzF"}], [{"max": 41, "min": 73, "name": "0HZKL4Dc"}, {"max": 73, "min": 14, "name": "sINMmKVW"}, {"max": 60, "min": 8, "name": "kdx3k03A"}], [{"max": 42, "min": 7, "name": "1DzJWCP5"}, {"max": 7, "min": 64, "name": "akpHjYMZ"}, {"max": 18, "min": 46, "name": "SSKUvqRn"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 77, "role_flexing_second": 7}, "max_number": 0, "min_number": 81, "player_max_number": 66, "player_min_number": 72}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 10, "min": 78, "name": "mYz1Q6D8"}, {"max": 82, "min": 92, "name": "sVmEwSI6"}, {"max": 74, "min": 28, "name": "J6aZglKj"}], [{"max": 50, "min": 62, "name": "8CsbRQRT"}, {"max": 69, "min": 2, "name": "mBxu4zrA"}, {"max": 75, "min": 100, "name": "JJjyMpwu"}], [{"max": 94, "min": 53, "name": "ayFqlfmx"}, {"max": 91, "min": 54, "name": "OS0e2Yvk"}, {"max": 13, "min": 18, "name": "dcvdPS2S"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 91, "role_flexing_second": 51}, "duration": 18, "max_number": 9, "min_number": 0, "player_max_number": 84, "player_min_number": 13}, {"combination": {"alliances": [[{"max": 38, "min": 94, "name": "Mgdqj86o"}, {"max": 69, "min": 21, "name": "tW2XizPk"}, {"max": 78, "min": 45, "name": "6c13aEm3"}], [{"max": 56, "min": 56, "name": "ZbPtNeK1"}, {"max": 85, "min": 74, "name": "hCq27RIM"}, {"max": 15, "min": 44, "name": "C8l3qQsb"}], [{"max": 64, "min": 74, "name": "bq4XCC78"}, {"max": 43, "min": 60, "name": "DxAgIjih"}, {"max": 93, "min": 79, "name": "Ta5lYsX3"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 49, "role_flexing_second": 92}, "duration": 86, "max_number": 33, "min_number": 83, "player_max_number": 8, "player_min_number": 76}, {"combination": {"alliances": [[{"max": 46, "min": 55, "name": "sp4EHiwc"}, {"max": 97, "min": 0, "name": "suolhwM2"}, {"max": 14, "min": 81, "name": "1IYNR9d4"}], [{"max": 15, "min": 21, "name": "r6IsQV8c"}, {"max": 58, "min": 30, "name": "7PH9uCyL"}, {"max": 12, "min": 62, "name": "v1TEkQQu"}], [{"max": 76, "min": 99, "name": "2EBseU9k"}, {"max": 99, "min": 1, "name": "tQQex8sV"}, {"max": 84, "min": 1, "name": "gBcDqqAe"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 10, "role_flexing_second": 41}, "duration": 54, "max_number": 56, "min_number": 80, "player_max_number": 66, "player_min_number": 92}], "name": "mamwqGZN"}, "UMauaUEq": {"alliance": {"combination": {"alliances": [[{"max": 61, "min": 30, "name": "rKMk4azz"}, {"max": 99, "min": 64, "name": "5iZzZF8H"}, {"max": 60, "min": 7, "name": "G77USxYk"}], [{"max": 25, "min": 86, "name": "W5yHZbqV"}, {"max": 29, "min": 78, "name": "HZ6Kovp3"}, {"max": 82, "min": 41, "name": "v7dyLqd6"}], [{"max": 3, "min": 88, "name": "sSwyqOBj"}, {"max": 87, "min": 53, "name": "Qtiv3TRl"}, {"max": 6, "min": 93, "name": "5RkYXQXv"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 52, "role_flexing_second": 27}, "max_number": 87, "min_number": 67, "player_max_number": 45, "player_min_number": 14}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 61, "min": 64, "name": "haM33SAf"}, {"max": 49, "min": 14, "name": "wp0Sf8FG"}, {"max": 69, "min": 5, "name": "jQxPLO3i"}], [{"max": 66, "min": 61, "name": "Ytq7PFjR"}, {"max": 31, "min": 40, "name": "H56YyjUD"}, {"max": 70, "min": 98, "name": "CgC6onYZ"}], [{"max": 87, "min": 38, "name": "FeSREAq9"}, {"max": 97, "min": 99, "name": "hHtuPdyE"}, {"max": 22, "min": 7, "name": "1hZnWmSR"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 96, "role_flexing_second": 47}, "duration": 78, "max_number": 29, "min_number": 25, "player_max_number": 46, "player_min_number": 16}, {"combination": {"alliances": [[{"max": 84, "min": 60, "name": "kAl0LvHN"}, {"max": 28, "min": 100, "name": "L0iFsiPh"}, {"max": 46, "min": 18, "name": "QY5Dgs8x"}], [{"max": 64, "min": 60, "name": "sb9jzBN1"}, {"max": 30, "min": 80, "name": "UhOVZ5Gy"}, {"max": 98, "min": 20, "name": "xxn8QLNH"}], [{"max": 62, "min": 58, "name": "n12pJxlA"}, {"max": 25, "min": 43, "name": "4pWQw4ZH"}, {"max": 44, "min": 59, "name": "6WWWd3dI"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 33, "role_flexing_second": 59}, "duration": 89, "max_number": 10, "min_number": 29, "player_max_number": 45, "player_min_number": 3}, {"combination": {"alliances": [[{"max": 23, "min": 54, "name": "l4DlcSWa"}, {"max": 43, "min": 39, "name": "WSjFrh8c"}, {"max": 5, "min": 22, "name": "VmdiOksb"}], [{"max": 41, "min": 25, "name": "RdmOzwfT"}, {"max": 53, "min": 36, "name": "WecSposT"}, {"max": 7, "min": 90, "name": "0tRGIdg8"}], [{"max": 54, "min": 80, "name": "S3Yc242f"}, {"max": 29, "min": 53, "name": "aPDIitrH"}, {"max": 30, "min": 17, "name": "VuKzE2zH"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 0, "role_flexing_second": 35}, "duration": 64, "max_number": 96, "min_number": 65, "player_max_number": 37, "player_min_number": 53}], "name": "9IP5zUkU"}, "7qL2uvuM": {"alliance": {"combination": {"alliances": [[{"max": 72, "min": 41, "name": "7yzAbGzH"}, {"max": 18, "min": 96, "name": "hYjKGWZG"}, {"max": 90, "min": 56, "name": "jZDpz9AO"}], [{"max": 97, "min": 66, "name": "kSNF390h"}, {"max": 8, "min": 40, "name": "ELRqEnq9"}, {"max": 85, "min": 43, "name": "IUo58t3r"}], [{"max": 77, "min": 25, "name": "CtgR9lsu"}, {"max": 78, "min": 31, "name": "ue441F7b"}, {"max": 34, "min": 1, "name": "w56npCnW"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 83, "role_flexing_second": 30}, "max_number": 96, "min_number": 4, "player_max_number": 28, "player_min_number": 26}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 75, "min": 16, "name": "x0W2PHnd"}, {"max": 12, "min": 86, "name": "LleHp8kS"}, {"max": 56, "min": 92, "name": "K9CcaruG"}], [{"max": 33, "min": 73, "name": "YaHEHnye"}, {"max": 67, "min": 95, "name": "UotbsLZU"}, {"max": 23, "min": 45, "name": "UfAy1nzM"}], [{"max": 30, "min": 87, "name": "gx46cLmw"}, {"max": 18, "min": 93, "name": "6Vgaq94w"}, {"max": 88, "min": 9, "name": "UxW3MJxI"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 31, "role_flexing_second": 27}, "duration": 65, "max_number": 86, "min_number": 30, "player_max_number": 97, "player_min_number": 13}, {"combination": {"alliances": [[{"max": 100, "min": 48, "name": "0bFCjJ8v"}, {"max": 55, "min": 28, "name": "TZxr4Zcs"}, {"max": 83, "min": 90, "name": "bbOonBaj"}], [{"max": 25, "min": 57, "name": "jGUmoqJH"}, {"max": 76, "min": 14, "name": "YZ1pYDD4"}, {"max": 39, "min": 33, "name": "Kx2yMg5K"}], [{"max": 34, "min": 71, "name": "nDbXnTRu"}, {"max": 46, "min": 45, "name": "OnfDPBYU"}, {"max": 76, "min": 37, "name": "SAUrUXll"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 84, "role_flexing_second": 50}, "duration": 83, "max_number": 2, "min_number": 83, "player_max_number": 65, "player_min_number": 6}, {"combination": {"alliances": [[{"max": 50, "min": 42, "name": "Pruf76nU"}, {"max": 94, "min": 65, "name": "i5ldnzR4"}, {"max": 9, "min": 67, "name": "iArsC9Xp"}], [{"max": 3, "min": 66, "name": "9g9NUWpv"}, {"max": 50, "min": 37, "name": "H3L7k2DM"}, {"max": 9, "min": 32, "name": "KtquG9Is"}], [{"max": 89, "min": 87, "name": "Uj9Qoq2O"}, {"max": 76, "min": 75, "name": "1KdBdoTq"}, {"max": 87, "min": 70, "name": "wRAw07Tw"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 31, "role_flexing_second": 80}, "duration": 71, "max_number": 87, "min_number": 11, "player_max_number": 68, "player_min_number": 66}], "name": "j29cvEoc"}}, "use_newest_ticket_for_flexing": true}, "session_queue_timeout_seconds": 42, "social_matchmaking": false, "ticket_observability_enable": true, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'GWnMhPrb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'OLUbK7Js' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "s0TaeRrs", "players": [{"results": [{"attribute": "5cyhBtRh", "value": 0.5316986258022509}, {"attribute": "nXkC24E2", "value": 0.19764570974799622}, {"attribute": "j1R0dQZ8", "value": 0.4412331903425012}], "user_id": "AemcA8q9"}, {"results": [{"attribute": "YiFsa97W", "value": 0.9286929093588235}, {"attribute": "zmcQnQnX", "value": 0.21191718806606696}, {"attribute": "a61HNK8A", "value": 0.5284890733614861}], "user_id": "zNlptawo"}, {"results": [{"attribute": "eHb2KkUM", "value": 0.40818304183826426}, {"attribute": "d3ZnSjaU", "value": 0.21139477106917037}, {"attribute": "5PeYgMjV", "value": 0.2283050912061615}], "user_id": "LhgiRgJT"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "27f85ydW"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "aHnvFn8Z", "client_version": "0KO3Apnk", "deployment": "vhIhUgNW", "error_code": 8, "error_message": "j8OVbNwE", "game_mode": "ReWObL9G", "is_mock": "QqHSy5W9", "joinable": false, "match_id": "19JEb4Q9", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 5, "party_attributes": {"YNGHMTkK": {}, "6dq5uFfO": {}, "FqZB0EdF": {}}, "party_id": "S8U4r9xk", "party_members": [{"extra_attributes": {"3obgQkhN": {}, "1PkYd7IL": {}, "qr2BqpfV": {}}, "user_id": "krpofagX"}, {"extra_attributes": {"AHhjCuZX": {}, "hor7Ky6W": {}, "I7FaQ0uK": {}}, "user_id": "muNq9Rla"}, {"extra_attributes": {"oBl4EhB4": {}, "FUtoIzX2": {}, "fl3B3pcC": {}}, "user_id": "XLAANGcq"}], "ticket_created_at": 98, "ticket_id": "v1lhh68x"}, {"first_ticket_created_at": 60, "party_attributes": {"rwH29TFX": {}, "zsCRjwrR": {}, "32hyeGmO": {}}, "party_id": "vTCkrQBP", "party_members": [{"extra_attributes": {"42wfkINx": {}, "AD2H7HQC": {}, "4Gm064Kk": {}}, "user_id": "rYLgsMFP"}, {"extra_attributes": {"UO96E3vT": {}, "kvRN4lW2": {}, "ePrQ5b5W": {}}, "user_id": "w7k3LhGi"}, {"extra_attributes": {"GpaaSLf1": {}, "8i2shmgr": {}, "enGDc7DG": {}}, "user_id": "HRZ9QGNA"}], "ticket_created_at": 97, "ticket_id": "KRLRCni2"}, {"first_ticket_created_at": 2, "party_attributes": {"oX6K442G": {}, "Eo8sdTfd": {}, "tATXQQLw": {}}, "party_id": "3Av2pX5C", "party_members": [{"extra_attributes": {"N9i9NRLK": {}, "hNKoiTz9": {}, "DroZDDmL": {}}, "user_id": "Ais2E2yS"}, {"extra_attributes": {"DzaqRKSP": {}, "mC1jwdSG": {}, "PFXk0cyu": {}}, "user_id": "JAeVxgt6"}, {"extra_attributes": {"JVkKWCS0": {}, "Zgd81gJP": {}, "gv3QeOJK": {}}, "user_id": "kFfji8Zg"}], "ticket_created_at": 23, "ticket_id": "la01AmiX"}]}, {"matching_parties": [{"first_ticket_created_at": 93, "party_attributes": {"VMF290tp": {}, "BLMHj9aL": {}, "SkzFFRNT": {}}, "party_id": "EMb23caE", "party_members": [{"extra_attributes": {"eFThWLrg": {}, "6UO0U31x": {}, "cbgIxtkf": {}}, "user_id": "suFhcArp"}, {"extra_attributes": {"CvQcL0nd": {}, "bdkvY04q": {}, "nGcdYeBT": {}}, "user_id": "JjDNUV7R"}, {"extra_attributes": {"rvm1cN6S": {}, "aohY7IMT": {}, "5GT5XoEY": {}}, "user_id": "fClYZsNq"}], "ticket_created_at": 10, "ticket_id": "syClH0EC"}, {"first_ticket_created_at": 61, "party_attributes": {"tvkufMoJ": {}, "HM5YN2S3": {}, "HEw0FrCH": {}}, "party_id": "mY5Jrzwk", "party_members": [{"extra_attributes": {"6W4qyOAu": {}, "7g01B7oE": {}, "QgJEHmuP": {}}, "user_id": "Frumc45d"}, {"extra_attributes": {"mImBNLrU": {}, "NX7m036R": {}, "KttmtgbR": {}}, "user_id": "nPefrYXZ"}, {"extra_attributes": {"GP2QD4RF": {}, "GtKQ4l2x": {}, "KOKVdLfF": {}}, "user_id": "wZaDKgvc"}], "ticket_created_at": 95, "ticket_id": "EIabTxNm"}, {"first_ticket_created_at": 65, "party_attributes": {"KEugN7iA": {}, "3btz6F0g": {}, "sGRFJsOS": {}}, "party_id": "2B1eKz53", "party_members": [{"extra_attributes": {"qeGM9FMP": {}, "OuCkzLoI": {}, "MOvUfjxv": {}}, "user_id": "2WoqupQm"}, {"extra_attributes": {"o41ZSuRr": {}, "mHcDY85A": {}, "RMT2lvUi": {}}, "user_id": "BWl0tRvj"}, {"extra_attributes": {"JWiaUrJJ": {}, "O7yv07oh": {}, "9bR9xPgZ": {}}, "user_id": "HDVCwSLB"}], "ticket_created_at": 67, "ticket_id": "qoC7Xch3"}]}, {"matching_parties": [{"first_ticket_created_at": 68, "party_attributes": {"03k2FkrQ": {}, "ivaOJ5EI": {}, "UAZtWsne": {}}, "party_id": "V7LoXKI6", "party_members": [{"extra_attributes": {"I0DtmlSY": {}, "JkMu8BzR": {}, "oV2RgauE": {}}, "user_id": "N7CtMnEC"}, {"extra_attributes": {"jFXIXcLL": {}, "fEId0q15": {}, "Od8h4GgF": {}}, "user_id": "k5AxzJTp"}, {"extra_attributes": {"WPDuv0MM": {}, "vlQW0ap9": {}, "fKujxyl0": {}}, "user_id": "FtODqpit"}], "ticket_created_at": 81, "ticket_id": "cyuzZZVJ"}, {"first_ticket_created_at": 40, "party_attributes": {"GSs0pMPi": {}, "MCkerujC": {}, "WEvCMTz3": {}}, "party_id": "I9dZiVuS", "party_members": [{"extra_attributes": {"DyQpHlG0": {}, "ORAnntyh": {}, "458BUq76": {}}, "user_id": "Ou4zJwzD"}, {"extra_attributes": {"V89DESWE": {}, "3dnMbfup": {}, "OPMbPzht": {}}, "user_id": "BKP6A5dX"}, {"extra_attributes": {"0W1ej63L": {}, "bw1ureAG": {}, "PgoDL82L": {}}, "user_id": "I4CMJGfd"}], "ticket_created_at": 11, "ticket_id": "DGTLTAM4"}, {"first_ticket_created_at": 85, "party_attributes": {"a8IEgPgx": {}, "tGlE6zq4": {}, "X8AWyB6e": {}}, "party_id": "xY9rwqYP", "party_members": [{"extra_attributes": {"sm7l3Ut2": {}, "MVkIyJFM": {}, "9tAOZgJQ": {}}, "user_id": "KPUjVP73"}, {"extra_attributes": {"fUsXzbtB": {}, "FfCulWeU": {}, "M6dtmamH": {}}, "user_id": "FQsiuTE9"}, {"extra_attributes": {"CAvd9RYJ": {}, "hPnp3cjo": {}, "dEqfqSBq": {}}, "user_id": "DAIZzI2e"}], "ticket_created_at": 70, "ticket_id": "qkjYvaLV"}]}], "namespace": "acv2dDEY", "party_attributes": {"1vAiDptn": {}, "Z4DK221W": {}, "rmTumB8y": {}}, "party_id": "A1eY8Tr5", "queued_at": 27, "region": "sEPlL9YU", "server_name": "6IzEECKO", "status": "2RTc6Rie", "ticket_id": "ClR1hwnW", "ticket_ids": ["r0CWeHrs", "ka4GjDHk", "YDLvSr4t"], "updated_at": "1991-12-07T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "zrY9XvFR"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID '0YmtAx75' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 90, "userID": "241Pw35x", "weight": 0.9252909602222303}' \
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
    --matchIDs '83cizmLV' \
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
    --strategy 'BaPge19J' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'Lqd8Py9U' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'aLMaa9Hm' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "PajPP6Ro", "description": "FdJ4rRIn", "findMatchTimeoutSeconds": 11, "joinable": false, "max_delay_ms": 52, "region_expansion_range_ms": 46, "region_expansion_rate_ms": 31, "region_latency_initial_range_ms": 44, "region_latency_max_ms": 89, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 84, "min": 19, "name": "hvyVg5PV"}, {"max": 83, "min": 34, "name": "uLDcMKSj"}, {"max": 49, "min": 87, "name": "NpYZk6u0"}], [{"max": 83, "min": 55, "name": "AHo4xOwt"}, {"max": 86, "min": 42, "name": "LehB1emV"}, {"max": 12, "min": 81, "name": "uzVSXSE8"}], [{"max": 42, "min": 34, "name": "7ahxdqPm"}, {"max": 49, "min": 71, "name": "zzOtxVvW"}, {"max": 91, "min": 28, "name": "YhU0Xb1i"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 48, "role_flexing_second": 45}, "maxNumber": 70, "minNumber": 56, "playerMaxNumber": 33, "playerMinNumber": 0}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 94, "min": 48, "name": "1neMGxaf"}, {"max": 26, "min": 94, "name": "CDNkH1EZ"}, {"max": 78, "min": 100, "name": "YofMDPod"}], [{"max": 41, "min": 63, "name": "nNhVVzLw"}, {"max": 91, "min": 77, "name": "pu6gogG5"}, {"max": 59, "min": 20, "name": "Ht8LTeO9"}], [{"max": 57, "min": 34, "name": "1QacC0EF"}, {"max": 54, "min": 49, "name": "5Ll0YU6l"}, {"max": 20, "min": 22, "name": "1Ma93ctF"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 65, "role_flexing_second": 74}, "duration": 19, "max_number": 55, "min_number": 33, "player_max_number": 90, "player_min_number": 61}, {"combination": {"alliances": [[{"max": 55, "min": 91, "name": "KO8nhxWd"}, {"max": 12, "min": 17, "name": "SzNeL1Ny"}, {"max": 3, "min": 26, "name": "m2pcmPLO"}], [{"max": 52, "min": 75, "name": "8vCnwfXZ"}, {"max": 23, "min": 87, "name": "jWR0YEmS"}, {"max": 87, "min": 75, "name": "dkk72v3w"}], [{"max": 2, "min": 26, "name": "6tLn4fzl"}, {"max": 66, "min": 84, "name": "U6lvwKGw"}, {"max": 65, "min": 78, "name": "WoLnnbJE"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 56, "role_flexing_second": 17}, "duration": 68, "max_number": 6, "min_number": 12, "player_max_number": 53, "player_min_number": 2}, {"combination": {"alliances": [[{"max": 87, "min": 11, "name": "7zTMXLHT"}, {"max": 7, "min": 69, "name": "PKgcp7hp"}, {"max": 15, "min": 32, "name": "S4wJI128"}], [{"max": 68, "min": 84, "name": "Yt9rIgdr"}, {"max": 47, "min": 35, "name": "EXYm8Xoq"}, {"max": 90, "min": 19, "name": "dKX5sAn3"}], [{"max": 60, "min": 18, "name": "SL6zhBUa"}, {"max": 83, "min": 18, "name": "10vpCtJ3"}, {"max": 7, "min": 100, "name": "zB7nfoCS"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 0, "role_flexing_second": 67}, "duration": 13, "max_number": 73, "min_number": 17, "player_max_number": 45, "player_min_number": 17}], "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 54, "flex_flat_step_range": 2, "flex_immunity_count": 28, "flex_range_max": 3, "flex_rate_ms": 35, "flex_step_max": 96, "force_authority_match": false, "initial_step_range": 63, "mmr_max": 19, "mmr_mean": 16, "mmr_min": 29, "mmr_std_dev": 92, "override_mmr_data": true, "use_bucket_mmr": true, "use_flat_flex_step": true}, "flexingRules": [{"attribute": "Of9zxx2T", "criteria": "g5fem4dq", "duration": 76, "reference": 0.34053421687856766}, {"attribute": "P40XZL7N", "criteria": "oNe0LduW", "duration": 79, "reference": 0.6836526125813304}, {"attribute": "MTSugUzb", "criteria": "leQ3jLAK", "duration": 74, "reference": 0.01812842154040961}], "match_options": {"options": [{"name": "fxRZ3gws", "type": "Sc7OF3VO"}, {"name": "TBMwWhNM", "type": "BNeSh0zI"}, {"name": "kaPseuGb", "type": "PGDo8MIS"}]}, "matchingRules": [{"attribute": "jVahI5kx", "criteria": "NHdNExSK", "reference": 0.9412505342123332}, {"attribute": "9G62D1XJ", "criteria": "EbLYCQTC", "reference": 0.8253413551605404}, {"attribute": "rLQfygmr", "criteria": "2c01jyxy", "reference": 0.7157260823890247}], "sub_game_modes": {}, "use_newest_ticket_for_flexing": true}, "sessionQueueTimeoutSeconds": 58, "socialMatchmaking": true, "ticket_observability_enable": false, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName 'QRry6axO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName 'D3KVz6K1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName 'zh2NfIfy' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 38}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName 'mNrdCm7K' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName 'K2zyhg8m' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "XnSEnUx7", "count": 62, "mmrMax": 0.017891726337018965, "mmrMean": 0.6403810670147922, "mmrMin": 0.3674052898240535, "mmrStdDev": 0.9195426452167722}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName 'Yr1OqfPD' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 87, "party_attributes": {"08ScCE6i": {}, "ckxJDSLZ": {}, "2exiPVsY": {}}, "party_id": "nBXE4CCQ", "party_members": [{"extra_attributes": {"ypGjprWx": {}, "EJHqrtun": {}, "vtIp9kWa": {}}, "user_id": "eQB4feyZ"}, {"extra_attributes": {"497jLhbo": {}, "8oArIOhk": {}, "c25NcTD2": {}}, "user_id": "fLV8V8SH"}, {"extra_attributes": {"5ZLxlwmy": {}, "M6uWF2uU": {}, "KjSMzl1Z": {}}, "user_id": "cSAMRz2a"}], "ticket_created_at": 62, "ticket_id": "UpA8bps5"}, {"first_ticket_created_at": 70, "party_attributes": {"cYsKG3f4": {}, "ToiIjsGQ": {}, "2Fi9VwpA": {}}, "party_id": "PW9ShuFE", "party_members": [{"extra_attributes": {"EDY5nyzD": {}, "WafFYTet": {}, "QWttftFV": {}}, "user_id": "OSJed8zb"}, {"extra_attributes": {"J1qgpRGp": {}, "cZ9uEHgM": {}, "lToWrAls": {}}, "user_id": "pAxPCIyU"}, {"extra_attributes": {"Qa5bRbWo": {}, "h8nwQbMD": {}, "mfqkcg84": {}}, "user_id": "Wut7QX4y"}], "ticket_created_at": 66, "ticket_id": "vaSkc0nu"}, {"first_ticket_created_at": 94, "party_attributes": {"4lPJrnhE": {}, "WA9se2ls": {}, "RFvks3Pt": {}}, "party_id": "bw7mkP74", "party_members": [{"extra_attributes": {"qlABDvvx": {}, "P1vVgOGh": {}, "hXKjJy9A": {}}, "user_id": "akXXWdrI"}, {"extra_attributes": {"j3cUEBB8": {}, "VQzFPfrQ": {}, "zmTxcZRy": {}}, "user_id": "QOwL49jM"}, {"extra_attributes": {"3z5ZwbkR": {}, "snLxsWt8": {}, "AOqxEL1C": {}}, "user_id": "nd6F55i1"}], "ticket_created_at": 13, "ticket_id": "ATqKNEbE"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName '6HD6LC1z' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 78}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'hgJNNACN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'wMiO2dKl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'YPXkzMc3' \
    --matchID 'rQb8ft3K' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["HM78HhZE", "1azObGdT", "j4xonear"], "party_id": "IZ8oLcBp", "user_id": "McuYncgE"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'XtDBtgcG' \
    --matchID 'ZBRSGZqN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'Iv5PmdnM' \
    --matchID '5MWLFRzU' \
    --namespace $AB_NAMESPACE \
    --userID 'NP3lHkGq' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName 'zvY2xyYF' \
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
    --channelName 'OX6clgqm' \
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