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
    --limit '33' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "XLjaMaje", "description": "fSgWN7ux", "find_match_timeout_seconds": 45, "game_mode": "tSokf6AR", "joinable": false, "max_delay_ms": 46, "region_expansion_range_ms": 53, "region_expansion_rate_ms": 48, "region_latency_initial_range_ms": 53, "region_latency_max_ms": 84, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 80, "min": 7, "name": "pI2RFgQ0"}, {"max": 15, "min": 0, "name": "iv3RDTsH"}, {"max": 40, "min": 38, "name": "NuXf5ukx"}], [{"max": 41, "min": 25, "name": "3rFWwiTT"}, {"max": 22, "min": 25, "name": "BqjS9VAj"}, {"max": 17, "min": 83, "name": "Se7pOZCP"}], [{"max": 78, "min": 40, "name": "HyrJPsPc"}, {"max": 26, "min": 88, "name": "yweZte6m"}, {"max": 97, "min": 17, "name": "f0Wdhhi5"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 99, "role_flexing_second": 20}, "max_number": 73, "min_number": 57, "player_max_number": 45, "player_min_number": 90}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 27, "min": 98, "name": "IOACUokM"}, {"max": 43, "min": 99, "name": "CI8k73sH"}, {"max": 70, "min": 77, "name": "z4DKiABf"}], [{"max": 75, "min": 84, "name": "uBTxJyNn"}, {"max": 28, "min": 63, "name": "83CF3GPH"}, {"max": 84, "min": 46, "name": "hAJF1Y5u"}], [{"max": 40, "min": 16, "name": "nuDGsir4"}, {"max": 29, "min": 47, "name": "OMW0XXSn"}, {"max": 27, "min": 8, "name": "RIZyqeBh"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 56, "role_flexing_second": 27}, "duration": 17, "max_number": 59, "min_number": 74, "player_max_number": 24, "player_min_number": 87}, {"combination": {"alliances": [[{"max": 24, "min": 83, "name": "Ji7Z1hxF"}, {"max": 32, "min": 81, "name": "DqcbO3VE"}, {"max": 42, "min": 67, "name": "C79jb0b5"}], [{"max": 78, "min": 92, "name": "69KMaD2Q"}, {"max": 17, "min": 94, "name": "ePDaDbgr"}, {"max": 43, "min": 66, "name": "LBn3P6mN"}], [{"max": 1, "min": 2, "name": "AMRF4E1C"}, {"max": 56, "min": 69, "name": "S26vyMW7"}, {"max": 43, "min": 44, "name": "fySIp7Wg"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 35, "role_flexing_second": 11}, "duration": 47, "max_number": 92, "min_number": 96, "player_max_number": 72, "player_min_number": 15}, {"combination": {"alliances": [[{"max": 68, "min": 83, "name": "nOpMqnHG"}, {"max": 42, "min": 99, "name": "ktnzaL5x"}, {"max": 22, "min": 82, "name": "ar6putxe"}], [{"max": 11, "min": 24, "name": "t2twRqsM"}, {"max": 21, "min": 61, "name": "K8zWlpdo"}, {"max": 88, "min": 14, "name": "OAlQhwnv"}], [{"max": 26, "min": 47, "name": "LWYdV1UJ"}, {"max": 56, "min": 99, "name": "7COkJXmG"}, {"max": 4, "min": 40, "name": "UCzw9zq9"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 56, "role_flexing_second": 52}, "duration": 61, "max_number": 62, "min_number": 44, "player_max_number": 56, "player_min_number": 91}], "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 1, "flex_flat_step_range": 43, "flex_immunity_count": 61, "flex_range_max": 20, "flex_rate_ms": 43, "flex_step_max": 58, "force_authority_match": true, "initial_step_range": 42, "mmr_max": 64, "mmr_mean": 100, "mmr_min": 69, "mmr_std_dev": 55, "override_mmr_data": false, "use_bucket_mmr": false, "use_flat_flex_step": false}, "flexing_rule": [{"attribute": "Ru2oURpx", "criteria": "OvyPeXtn", "duration": 13, "reference": 0.5492630778689139}, {"attribute": "DMaEOPNj", "criteria": "ReG2ZO65", "duration": 67, "reference": 0.3093398475571606}, {"attribute": "GzltBp7T", "criteria": "V8xl3FNO", "duration": 28, "reference": 0.4301152551354035}], "match_options": {"options": [{"name": "zkIDe40I", "type": "oH16i1BB"}, {"name": "ySxyAJFx", "type": "1q2Dzmcb"}, {"name": "EX9XU3lh", "type": "4rPLlug5"}]}, "matching_rule": [{"attribute": "uWm5rgY6", "criteria": "gNgYHVwe", "reference": 0.2877894818267944}, {"attribute": "ucPdTMF4", "criteria": "d9wlO3pY", "reference": 0.9201551835732231}, {"attribute": "3q6QMgJp", "criteria": "rQc6idIl", "reference": 0.6846215122671564}], "rebalance_enable": true, "sub_game_modes": {"h8J4ohHe": {"alliance": {"combination": {"alliances": [[{"max": 76, "min": 68, "name": "MsW1sJ8w"}, {"max": 22, "min": 64, "name": "cDs11JrX"}, {"max": 85, "min": 22, "name": "u4nJrvNd"}], [{"max": 11, "min": 100, "name": "ewRSxuhg"}, {"max": 23, "min": 3, "name": "g8zbOHc5"}, {"max": 84, "min": 68, "name": "Dnef3xyC"}], [{"max": 46, "min": 11, "name": "KGIk397I"}, {"max": 64, "min": 0, "name": "nVzGQCQy"}, {"max": 46, "min": 98, "name": "cyR5PIW7"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 8, "role_flexing_second": 46}, "max_number": 39, "min_number": 41, "player_max_number": 41, "player_min_number": 71}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 36, "min": 9, "name": "B6HkdaWS"}, {"max": 15, "min": 73, "name": "CGfKjw1r"}, {"max": 86, "min": 81, "name": "VhUXx5XO"}], [{"max": 80, "min": 46, "name": "VK2kwHT9"}, {"max": 70, "min": 96, "name": "OWAah5Rm"}, {"max": 45, "min": 65, "name": "DQsmusff"}], [{"max": 53, "min": 80, "name": "mIVlsr78"}, {"max": 57, "min": 23, "name": "pXedf9pj"}, {"max": 82, "min": 81, "name": "5YkKAufy"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 19, "role_flexing_second": 37}, "duration": 100, "max_number": 9, "min_number": 15, "player_max_number": 77, "player_min_number": 55}, {"combination": {"alliances": [[{"max": 39, "min": 41, "name": "0E1FHZxX"}, {"max": 91, "min": 31, "name": "lj9RFmYy"}, {"max": 95, "min": 0, "name": "snE3f2wp"}], [{"max": 68, "min": 87, "name": "3ZaXqFUn"}, {"max": 41, "min": 57, "name": "oFyAud1Z"}, {"max": 1, "min": 39, "name": "afX8eu6p"}], [{"max": 89, "min": 99, "name": "81Ny0hzn"}, {"max": 76, "min": 60, "name": "qSIzorln"}, {"max": 78, "min": 95, "name": "M1EBOy0X"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 99, "role_flexing_second": 32}, "duration": 20, "max_number": 50, "min_number": 19, "player_max_number": 45, "player_min_number": 46}, {"combination": {"alliances": [[{"max": 79, "min": 83, "name": "LBMUOFa0"}, {"max": 27, "min": 22, "name": "Vt5O17vf"}, {"max": 87, "min": 85, "name": "YSlyObgq"}], [{"max": 63, "min": 41, "name": "HBswxLQl"}, {"max": 36, "min": 54, "name": "AtMJVlTm"}, {"max": 50, "min": 98, "name": "1VNrZKsx"}], [{"max": 74, "min": 76, "name": "nNTm9ZzE"}, {"max": 32, "min": 9, "name": "XVTwx0lz"}, {"max": 78, "min": 23, "name": "qzxfRTq7"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 60, "role_flexing_second": 18}, "duration": 86, "max_number": 38, "min_number": 93, "player_max_number": 45, "player_min_number": 79}], "name": "y0dBz8DR"}, "l2GOTjaE": {"alliance": {"combination": {"alliances": [[{"max": 1, "min": 43, "name": "rUEIdGnT"}, {"max": 8, "min": 56, "name": "SJslV8fB"}, {"max": 19, "min": 47, "name": "yp3bWRmr"}], [{"max": 51, "min": 72, "name": "qWAdnpbs"}, {"max": 41, "min": 97, "name": "9lYpVzn0"}, {"max": 88, "min": 82, "name": "RrCrP24X"}], [{"max": 46, "min": 76, "name": "7t7ang76"}, {"max": 98, "min": 3, "name": "plQ3ySmG"}, {"max": 39, "min": 100, "name": "HSZrxaxG"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 61, "role_flexing_second": 70}, "max_number": 88, "min_number": 90, "player_max_number": 11, "player_min_number": 30}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 47, "min": 97, "name": "tYYtWyNL"}, {"max": 20, "min": 57, "name": "mnExCIAA"}, {"max": 85, "min": 54, "name": "MHNsAh4J"}], [{"max": 41, "min": 97, "name": "j9Exlu59"}, {"max": 55, "min": 28, "name": "LU5xevuD"}, {"max": 95, "min": 76, "name": "LLmSwWbc"}], [{"max": 32, "min": 25, "name": "v1pNZbHh"}, {"max": 31, "min": 56, "name": "Q8yOTI3i"}, {"max": 55, "min": 1, "name": "JjK83GJQ"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 24, "role_flexing_second": 88}, "duration": 8, "max_number": 13, "min_number": 4, "player_max_number": 60, "player_min_number": 11}, {"combination": {"alliances": [[{"max": 5, "min": 74, "name": "FX6ATths"}, {"max": 82, "min": 85, "name": "POc8fYD6"}, {"max": 38, "min": 48, "name": "BBG8J0JY"}], [{"max": 30, "min": 53, "name": "Zb0nH42G"}, {"max": 87, "min": 16, "name": "IIlsjpmZ"}, {"max": 72, "min": 11, "name": "b7LX40zk"}], [{"max": 43, "min": 38, "name": "NB9kDRcr"}, {"max": 37, "min": 1, "name": "4hBEXYmB"}, {"max": 89, "min": 89, "name": "DAs3LRKl"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 20, "role_flexing_second": 96}, "duration": 67, "max_number": 65, "min_number": 40, "player_max_number": 12, "player_min_number": 1}, {"combination": {"alliances": [[{"max": 63, "min": 50, "name": "2lic1QWw"}, {"max": 4, "min": 35, "name": "EZ6rKf9B"}, {"max": 63, "min": 3, "name": "Qr4FSsiI"}], [{"max": 82, "min": 53, "name": "6fQak4dO"}, {"max": 90, "min": 43, "name": "CcOqGwVB"}, {"max": 80, "min": 82, "name": "avHKfYSF"}], [{"max": 8, "min": 58, "name": "rbPrgDhW"}, {"max": 3, "min": 9, "name": "DRKxCqlm"}, {"max": 19, "min": 81, "name": "hbDKHawt"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 54, "role_flexing_second": 26}, "duration": 53, "max_number": 84, "min_number": 52, "player_max_number": 9, "player_min_number": 19}], "name": "2uZoglFP"}, "MdrzQUJM": {"alliance": {"combination": {"alliances": [[{"max": 3, "min": 8, "name": "JHvYBQBG"}, {"max": 21, "min": 42, "name": "hVQ0VyZM"}, {"max": 91, "min": 57, "name": "JalA5Y4J"}], [{"max": 72, "min": 97, "name": "2o1lNID8"}, {"max": 6, "min": 8, "name": "AewUePGm"}, {"max": 62, "min": 42, "name": "wuiGMqo6"}], [{"max": 88, "min": 53, "name": "n2VvLqMW"}, {"max": 51, "min": 83, "name": "Z1xKenmo"}, {"max": 75, "min": 65, "name": "UHyrSTux"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 13, "role_flexing_second": 38}, "max_number": 16, "min_number": 60, "player_max_number": 71, "player_min_number": 22}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 67, "min": 26, "name": "K2HFi32t"}, {"max": 62, "min": 74, "name": "2LJ8xl3g"}, {"max": 16, "min": 89, "name": "ulHXQy9S"}], [{"max": 62, "min": 97, "name": "MeK0BURU"}, {"max": 1, "min": 28, "name": "qtdiriFD"}, {"max": 39, "min": 4, "name": "5bn2d2kV"}], [{"max": 4, "min": 48, "name": "cO9SJzOA"}, {"max": 62, "min": 45, "name": "kT3aGyAN"}, {"max": 20, "min": 74, "name": "b6rt7lkS"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 62, "role_flexing_second": 87}, "duration": 9, "max_number": 12, "min_number": 38, "player_max_number": 64, "player_min_number": 60}, {"combination": {"alliances": [[{"max": 81, "min": 18, "name": "WXlzX8AN"}, {"max": 11, "min": 95, "name": "FKWBQKA6"}, {"max": 10, "min": 27, "name": "KG4SsWxp"}], [{"max": 40, "min": 40, "name": "gl6KdIJw"}, {"max": 42, "min": 36, "name": "tEVEqUOu"}, {"max": 14, "min": 2, "name": "aJgWc7xK"}], [{"max": 41, "min": 99, "name": "moPEr7dT"}, {"max": 35, "min": 46, "name": "Vovg0T5q"}, {"max": 85, "min": 18, "name": "2SLEBAwk"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 67, "role_flexing_second": 31}, "duration": 70, "max_number": 35, "min_number": 4, "player_max_number": 95, "player_min_number": 64}, {"combination": {"alliances": [[{"max": 2, "min": 60, "name": "QKiUhzzf"}, {"max": 51, "min": 80, "name": "S00b0F7t"}, {"max": 98, "min": 70, "name": "aRMJRuI9"}], [{"max": 38, "min": 82, "name": "YmTnNbCR"}, {"max": 46, "min": 73, "name": "A3nxJZIf"}, {"max": 9, "min": 37, "name": "rNMM8Fdu"}], [{"max": 94, "min": 37, "name": "SFqg5sHn"}, {"max": 20, "min": 59, "name": "OqYiIeAB"}, {"max": 11, "min": 92, "name": "A2ZAkteo"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 90, "role_flexing_second": 65}, "duration": 52, "max_number": 61, "min_number": 33, "player_max_number": 74, "player_min_number": 48}], "name": "IxQApy2h"}}, "use_newest_ticket_for_flexing": false}, "session_queue_timeout_seconds": 22, "social_matchmaking": true, "ticket_observability_enable": false, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'O4YbR012' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel '11XKOd3o' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "dfWGlcKW", "players": [{"results": [{"attribute": "lK6vUMEf", "value": 0.3353617341495142}, {"attribute": "zDnmNpKr", "value": 0.4486169786616444}, {"attribute": "A0UfiPpM", "value": 0.5702987710675587}], "user_id": "l5XYClrP"}, {"results": [{"attribute": "kaNKwIYY", "value": 0.8633438636656277}, {"attribute": "PlZGIJzk", "value": 0.40700935533248195}, {"attribute": "fpWJKpqF", "value": 0.6694978719982752}], "user_id": "QOTljzRY"}, {"results": [{"attribute": "OMPXY8HH", "value": 0.22776512169941154}, {"attribute": "QpddTQIU", "value": 0.6098940388568513}, {"attribute": "KOtGrRls", "value": 0.8297101599820533}], "user_id": "7UOk4lud"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "vhKjW1Ch"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "DaS7bT1P", "client_version": "60ZKDzXO", "deployment": "WWZ7KrDe", "error_code": 86, "error_message": "4qLjeThs", "game_mode": "Bt5a0geM", "is_mock": "gYtK97eD", "joinable": false, "match_id": "roA6ArP0", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 45, "party_attributes": {"ioojrISS": {}, "jUOkoqSz": {}, "yY47luFY": {}}, "party_id": "LrT6HWIT", "party_members": [{"extra_attributes": {"TXiTxJus": {}, "Ad5TgLs5": {}, "wtnVms5H": {}}, "user_id": "qBFHk5pm"}, {"extra_attributes": {"RZW6vDak": {}, "l1EXiu29": {}, "9VzdToIT": {}}, "user_id": "d7ylndae"}, {"extra_attributes": {"P5IUsQzU": {}, "I2TSFDWR": {}, "zpio8jcL": {}}, "user_id": "PeK2Vca5"}], "ticket_created_at": 74, "ticket_id": "fzrRTEHQ"}, {"first_ticket_created_at": 26, "party_attributes": {"9jKtGtbL": {}, "65TIvTuA": {}, "WNYnQAnS": {}}, "party_id": "CNR8aiNR", "party_members": [{"extra_attributes": {"OsFUguuT": {}, "pA1GYIA2": {}, "4G5A4Bv9": {}}, "user_id": "4ipbX1ZZ"}, {"extra_attributes": {"BWA7fPcF": {}, "wISyJfTi": {}, "Z6YEKOXP": {}}, "user_id": "rX1rnEhf"}, {"extra_attributes": {"QrEVOhpw": {}, "yppZOMG2": {}, "y1KcmL42": {}}, "user_id": "4UL1bP3k"}], "ticket_created_at": 99, "ticket_id": "VQS636TG"}, {"first_ticket_created_at": 97, "party_attributes": {"dyTbnLlC": {}, "vVKZDcTQ": {}, "0v7REJiR": {}}, "party_id": "8B6x0jvu", "party_members": [{"extra_attributes": {"077xqfsS": {}, "7Z7LYupB": {}, "1CQFHqAg": {}}, "user_id": "CscR0iBP"}, {"extra_attributes": {"o6HzUFHe": {}, "mr5xAvGP": {}, "BqGSdm8j": {}}, "user_id": "HJeVtgzM"}, {"extra_attributes": {"3cp5VZmC": {}, "8kKOuJsu": {}, "Vsf1PFnO": {}}, "user_id": "vFb5C0Og"}], "ticket_created_at": 18, "ticket_id": "8qaANvJL"}]}, {"matching_parties": [{"first_ticket_created_at": 95, "party_attributes": {"2c299tsw": {}, "PDyLT17L": {}, "T1IckveO": {}}, "party_id": "SHmU6X6g", "party_members": [{"extra_attributes": {"ZnOBggHm": {}, "txtvcZh1": {}, "Bsgx919w": {}}, "user_id": "J34bq80U"}, {"extra_attributes": {"LbWq0FxX": {}, "mf30d9ds": {}, "hMPaZlxY": {}}, "user_id": "eXiWTuoZ"}, {"extra_attributes": {"G0xDMY2o": {}, "IwcnBnUz": {}, "gdPPF5LE": {}}, "user_id": "49Lv0Qe3"}], "ticket_created_at": 85, "ticket_id": "Od81G6Ch"}, {"first_ticket_created_at": 18, "party_attributes": {"VR0z0ClE": {}, "LmjRZnAb": {}, "UguDlL8r": {}}, "party_id": "qEZzbALa", "party_members": [{"extra_attributes": {"JINZCB5e": {}, "AdKcXY13": {}, "akRuMXC2": {}}, "user_id": "Pp65FcGd"}, {"extra_attributes": {"WHV5qaDp": {}, "4UPD7sW6": {}, "4Fo1IQzP": {}}, "user_id": "B0IG6wn1"}, {"extra_attributes": {"VwDhr1w5": {}, "6Z3H9Icv": {}, "qFQjWouy": {}}, "user_id": "R8BB8J1I"}], "ticket_created_at": 80, "ticket_id": "YYQXGxKY"}, {"first_ticket_created_at": 60, "party_attributes": {"YD91Zmje": {}, "mfthWJIG": {}, "rz2fMkpR": {}}, "party_id": "7EUKo0kd", "party_members": [{"extra_attributes": {"yvJjv7yy": {}, "vkyvchNy": {}, "iNydCd82": {}}, "user_id": "tIMxwrkx"}, {"extra_attributes": {"Xk5HCaoq": {}, "1MnMqIWf": {}, "3cUhz4wP": {}}, "user_id": "km8viunv"}, {"extra_attributes": {"KBWzHUnD": {}, "LtNGEliQ": {}, "o1W6sNGQ": {}}, "user_id": "SkvVGLfg"}], "ticket_created_at": 53, "ticket_id": "DsUgG6Cz"}]}, {"matching_parties": [{"first_ticket_created_at": 41, "party_attributes": {"5u6MZB8a": {}, "BRx5OwYh": {}, "7dp5EMms": {}}, "party_id": "Z1wFDBYz", "party_members": [{"extra_attributes": {"YL9AOTn1": {}, "shIIWmQf": {}, "4KfBaU7I": {}}, "user_id": "9XRt6VjL"}, {"extra_attributes": {"X3qkqssa": {}, "JZ89DPEn": {}, "RPNuBnTw": {}}, "user_id": "lmcpmc7O"}, {"extra_attributes": {"PEb0r66w": {}, "fJso8MDT": {}, "jcXAR29j": {}}, "user_id": "ngvLYSst"}], "ticket_created_at": 98, "ticket_id": "EbC4aMqm"}, {"first_ticket_created_at": 94, "party_attributes": {"rI8BD709": {}, "xSKXF4NX": {}, "G9oTsTq7": {}}, "party_id": "zdzDnVf7", "party_members": [{"extra_attributes": {"OHRTbVuT": {}, "TJRQDS53": {}, "8ot2EKzk": {}}, "user_id": "1VLeilgR"}, {"extra_attributes": {"poWv00Nq": {}, "H8a86tk2": {}, "ytFtOyoo": {}}, "user_id": "0YbMR4h8"}, {"extra_attributes": {"VsVtR80H": {}, "0TWmeTsV": {}, "xQLVm898": {}}, "user_id": "9ZIrAine"}], "ticket_created_at": 92, "ticket_id": "AOeb9D0I"}, {"first_ticket_created_at": 10, "party_attributes": {"KzUACYfB": {}, "aKUsHBTA": {}, "TCxi7MUx": {}}, "party_id": "E0G6UVkz", "party_members": [{"extra_attributes": {"1mP2uAKj": {}, "fKscU8S1": {}, "R2DXmva1": {}}, "user_id": "waGCzdld"}, {"extra_attributes": {"FdZr4GVB": {}, "Gsb3p6J7": {}, "HpB01GoY": {}}, "user_id": "jNvtYmBg"}, {"extra_attributes": {"Asl2tiaa": {}, "RoeINyOG": {}, "M83NLYgb": {}}, "user_id": "X0fdJZUc"}], "ticket_created_at": 77, "ticket_id": "l0WWEeyl"}]}], "namespace": "rYuxWT79", "party_attributes": {"NBGK9JPO": {}, "gE1hZTBM": {}, "TpVEPi1I": {}}, "party_id": "lH5fwYXA", "queued_at": 61, "region": "YpBapdbp", "server_name": "bwTWUCl0", "status": "OmQFe6x7", "ticket_id": "T91b17FN", "ticket_ids": ["nrcrYVPb", "q0knEk0g", "8BbvGSxa"], "updated_at": "1983-06-25T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "QeazHs64"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'ybiq8vXL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 52, "userID": "cRO53vp0", "weight": 0.41858658846526253}' \
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
    --matchIDs 'dAwEvu6m' \
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
    --strategy 'xzd9CQjm' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'ROOF9n8U' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName '7P0270zk' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "fFFHJBcH", "description": "JLGVMW1r", "findMatchTimeoutSeconds": 91, "joinable": false, "max_delay_ms": 58, "region_expansion_range_ms": 3, "region_expansion_rate_ms": 71, "region_latency_initial_range_ms": 92, "region_latency_max_ms": 81, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 47, "min": 33, "name": "OmKyP4Y7"}, {"max": 8, "min": 92, "name": "cjzq8fu9"}, {"max": 59, "min": 26, "name": "GuopRwic"}], [{"max": 6, "min": 59, "name": "gmiLvwgC"}, {"max": 51, "min": 100, "name": "UaPLT6G2"}, {"max": 14, "min": 67, "name": "gFFRJaIc"}], [{"max": 95, "min": 65, "name": "zwkcaYVA"}, {"max": 71, "min": 54, "name": "DA0kikOQ"}, {"max": 60, "min": 16, "name": "BBbJQA5u"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 89, "role_flexing_second": 29}, "maxNumber": 99, "minNumber": 58, "playerMaxNumber": 0, "playerMinNumber": 3}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 53, "min": 92, "name": "bz0VJA3H"}, {"max": 96, "min": 28, "name": "ZY9Zm5CJ"}, {"max": 74, "min": 31, "name": "hNL9404B"}], [{"max": 32, "min": 17, "name": "fuRMBgfm"}, {"max": 65, "min": 95, "name": "DAj0Tvz5"}, {"max": 99, "min": 33, "name": "yM1cZhin"}], [{"max": 82, "min": 32, "name": "O25kHAFm"}, {"max": 73, "min": 64, "name": "cwxaH6iT"}, {"max": 10, "min": 2, "name": "t2PKNe8W"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 89, "role_flexing_second": 26}, "duration": 89, "max_number": 18, "min_number": 10, "player_max_number": 7, "player_min_number": 82}, {"combination": {"alliances": [[{"max": 28, "min": 70, "name": "YyA7Zxel"}, {"max": 47, "min": 99, "name": "rI9iAJp7"}, {"max": 4, "min": 17, "name": "rDndmUGD"}], [{"max": 36, "min": 99, "name": "OkhVMuvV"}, {"max": 61, "min": 30, "name": "DVVxlFg1"}, {"max": 25, "min": 64, "name": "wq0sCZIW"}], [{"max": 14, "min": 83, "name": "DEilYuJM"}, {"max": 32, "min": 1, "name": "oh6kWRK8"}, {"max": 96, "min": 0, "name": "aAatcJu3"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 95, "role_flexing_second": 61}, "duration": 86, "max_number": 54, "min_number": 68, "player_max_number": 22, "player_min_number": 80}, {"combination": {"alliances": [[{"max": 42, "min": 59, "name": "ryAtaWNF"}, {"max": 78, "min": 47, "name": "t5rMBndM"}, {"max": 19, "min": 63, "name": "DYxt8us4"}], [{"max": 55, "min": 81, "name": "aHq2OISe"}, {"max": 44, "min": 93, "name": "XdpIiv88"}, {"max": 84, "min": 84, "name": "6Mkouk7i"}], [{"max": 52, "min": 64, "name": "Yx9XIjB5"}, {"max": 23, "min": 12, "name": "gycvTVbR"}, {"max": 15, "min": 52, "name": "3HX1wmEP"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 6, "role_flexing_second": 45}, "duration": 99, "max_number": 31, "min_number": 31, "player_max_number": 3, "player_min_number": 43}], "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 31, "flex_flat_step_range": 60, "flex_immunity_count": 35, "flex_range_max": 83, "flex_rate_ms": 14, "flex_step_max": 13, "force_authority_match": false, "initial_step_range": 66, "mmr_max": 87, "mmr_mean": 21, "mmr_min": 61, "mmr_std_dev": 96, "override_mmr_data": false, "use_bucket_mmr": true, "use_flat_flex_step": true}, "flexingRules": [{"attribute": "574ridFo", "criteria": "iEX9KQe8", "duration": 39, "reference": 0.04917344628855602}, {"attribute": "ss4qVuFn", "criteria": "y7OA8wau", "duration": 61, "reference": 0.4263604272638165}, {"attribute": "RIkd6RRe", "criteria": "eDGBtDs3", "duration": 0, "reference": 0.437991522387256}], "match_options": {"options": [{"name": "uStD7WOA", "type": "Qfn4IrVZ"}, {"name": "Hv68ItA1", "type": "cqySPG8c"}, {"name": "CnY9Kn5e", "type": "5HXUyz93"}]}, "matchingRules": [{"attribute": "jXT6e1Tp", "criteria": "YHMC2HEq", "reference": 0.6034490980258772}, {"attribute": "hLRFmsss", "criteria": "YDVFd8lj", "reference": 0.6434709133076344}, {"attribute": "kQD7rnwk", "criteria": "ceDUiwlE", "reference": 0.5942780107216298}], "sub_game_modes": {}, "use_newest_ticket_for_flexing": true}, "sessionQueueTimeoutSeconds": 53, "socialMatchmaking": true, "ticket_observability_enable": true, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName 'f79olI81' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName 'G37VDSRa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName '3wyt5gHP' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 80}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName 'UnhpLDOU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName 'JiBI4iFT' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "mvoabm5C", "count": 24, "mmrMax": 0.6422574789524902, "mmrMean": 0.5157076511212643, "mmrMin": 0.6473766741509969, "mmrStdDev": 0.7978939232906929}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName 'I0Tm5gPP' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 96, "party_attributes": {"vZ9IN1NJ": {}, "WsmIVXSV": {}, "LsCtBZui": {}}, "party_id": "AHXEBXrZ", "party_members": [{"extra_attributes": {"RFEDjxK5": {}, "Qp2fZgku": {}, "gUAnL32X": {}}, "user_id": "q8nr8RUF"}, {"extra_attributes": {"HXpgFs7I": {}, "Ibm25SM3": {}, "DxO7MBZS": {}}, "user_id": "tSNmFq7X"}, {"extra_attributes": {"uEeDfAVY": {}, "fL2vvOjl": {}, "CEqY91WV": {}}, "user_id": "J0zAz6YA"}], "ticket_created_at": 76, "ticket_id": "uhuVCmiL"}, {"first_ticket_created_at": 94, "party_attributes": {"jwUb5E6v": {}, "SftsMlAU": {}, "VFqzSw1h": {}}, "party_id": "3qYI5q1g", "party_members": [{"extra_attributes": {"2xMc88Gj": {}, "R3hJVe8i": {}, "6bi6GzVd": {}}, "user_id": "35Z6gn4b"}, {"extra_attributes": {"Bk7GJdGy": {}, "PJJgnATz": {}, "RwxMhe4w": {}}, "user_id": "xeBRVmI0"}, {"extra_attributes": {"WEhYYDJy": {}, "ao3s1ivL": {}, "K0lT5oXP": {}}, "user_id": "ZnN1rmbY"}], "ticket_created_at": 3, "ticket_id": "Jmgsfnua"}, {"first_ticket_created_at": 39, "party_attributes": {"pTZE7Vk5": {}, "JOhSsnz9": {}, "0NHYUMcG": {}}, "party_id": "BoxPMdOr", "party_members": [{"extra_attributes": {"mKvmLBED": {}, "StDg5rmq": {}, "Vg0mf8e6": {}}, "user_id": "4WE48J3f"}, {"extra_attributes": {"5lom3FfM": {}, "3abO9oTn": {}, "2Z226SIK": {}}, "user_id": "wDFihsxI"}, {"extra_attributes": {"rvZK4LRz": {}, "nBXHdBDD": {}, "vD49CRqA": {}}, "user_id": "7hg0lTUL"}], "ticket_created_at": 19, "ticket_id": "8X4zSdJ0"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName 'P1J1B7Gt' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 33}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'l0Ep1blC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'dx2ybvpY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName '8ZvRXy2i' \
    --matchID '53Sny332' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["BoyhLQeo", "Zru3Vbpm", "FdJ6FUup"], "party_id": "uZenOJtR", "user_id": "Iou4ajhi"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'gWktvb1E' \
    --matchID 'cau9QQZn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'NXqjtr8a' \
    --matchID 'OIA8huX4' \
    --namespace $AB_NAMESPACE \
    --userID 'uEUNX19X' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName '4hjzx9pr' \
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
    --channelName 'Y7PHSpqj' \
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