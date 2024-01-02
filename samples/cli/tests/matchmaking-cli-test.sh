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
    --limit '26' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCanMatchOnDifferentTeam", "deployment": "FrbqgeAD", "description": "nJGutoz5", "find_match_timeout_seconds": 27, "game_mode": "ErE3uPQi", "joinable": false, "max_delay_ms": 34, "region_expansion_range_ms": 25, "region_expansion_rate_ms": 47, "region_latency_initial_range_ms": 2, "region_latency_max_ms": 30, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 73, "min": 73, "name": "jqBqJITO"}, {"max": 12, "min": 54, "name": "0m6VQnpK"}, {"max": 44, "min": 32, "name": "iJqiG9lj"}], [{"max": 73, "min": 27, "name": "qEpgkrQ8"}, {"max": 15, "min": 5, "name": "wYCACpZY"}, {"max": 10, "min": 31, "name": "XrOiyq9F"}], [{"max": 48, "min": 54, "name": "MfcHeaLl"}, {"max": 11, "min": 54, "name": "oxctDdR9"}, {"max": 82, "min": 48, "name": "quhdd064"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 1, "role_flexing_second": 13}, "max_number": 76, "min_number": 52, "player_max_number": 68, "player_min_number": 62}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 12, "min": 72, "name": "UxcC046Y"}, {"max": 98, "min": 6, "name": "TcJhbLAv"}, {"max": 47, "min": 8, "name": "0in0vKnr"}], [{"max": 92, "min": 23, "name": "zUHsQUGU"}, {"max": 23, "min": 3, "name": "SZAZWuAo"}, {"max": 82, "min": 67, "name": "xPASZYPK"}], [{"max": 20, "min": 16, "name": "AExyCfC6"}, {"max": 30, "min": 42, "name": "uTEdrv0r"}, {"max": 27, "min": 97, "name": "Ex8wkNIZ"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 49, "role_flexing_second": 38}, "duration": 42, "max_number": 66, "min_number": 34, "player_max_number": 4, "player_min_number": 77}, {"combination": {"alliances": [[{"max": 17, "min": 52, "name": "EfM5HJ0O"}, {"max": 23, "min": 6, "name": "zNXhiHCB"}, {"max": 62, "min": 39, "name": "vUcCLKGD"}], [{"max": 84, "min": 54, "name": "J8FKu61G"}, {"max": 77, "min": 37, "name": "jeRFBShg"}, {"max": 35, "min": 31, "name": "J3mSeTGb"}], [{"max": 54, "min": 53, "name": "kZy22IA2"}, {"max": 92, "min": 70, "name": "XogtVo1N"}, {"max": 84, "min": 37, "name": "ypmsAQaa"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 12, "role_flexing_second": 43}, "duration": 92, "max_number": 32, "min_number": 78, "player_max_number": 42, "player_min_number": 52}, {"combination": {"alliances": [[{"max": 72, "min": 60, "name": "lY5X7BPt"}, {"max": 60, "min": 20, "name": "9ixBioMG"}, {"max": 46, "min": 24, "name": "5v2jRdre"}], [{"max": 71, "min": 15, "name": "VSGDjKPy"}, {"max": 79, "min": 43, "name": "2fpDn6Pd"}, {"max": 67, "min": 72, "name": "rpYfJlKM"}], [{"max": 66, "min": 45, "name": "zXJmOxPN"}, {"max": 69, "min": 72, "name": "6G08jJ8A"}, {"max": 97, "min": 1, "name": "HpUz1sVz"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 66, "role_flexing_second": 99}, "duration": 7, "max_number": 56, "min_number": 29, "player_max_number": 7, "player_min_number": 28}], "batch_size": 62, "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 77, "flex_flat_step_range": 7, "flex_immunity_count": 3, "flex_range_max": 43, "flex_rate_ms": 97, "flex_step_max": 58, "force_authority_match": true, "initial_step_range": 46, "mmr_max": 32, "mmr_mean": 18, "mmr_min": 46, "mmr_std_dev": 58, "override_mmr_data": true, "use_bucket_mmr": false, "use_flat_flex_step": false}, "flexing_rule": [{"attribute": "cNjgrAsw", "criteria": "jMgaowbi", "duration": 52, "reference": 0.08128687879003882}, {"attribute": "aaiIsoCG", "criteria": "FjV3bwXT", "duration": 28, "reference": 0.6827203652414995}, {"attribute": "TzcEVkOU", "criteria": "70j9O7Kz", "duration": 6, "reference": 0.23649978421243267}], "match_options": {"options": [{"name": "HagmScE3", "type": "ElKdfiIS"}, {"name": "AMVSQRPR", "type": "IosvzAmx"}, {"name": "Vd1Wr9P4", "type": "2tfXg9TF"}]}, "matching_rule": [{"attribute": "P6nNxzN9", "criteria": "Y8V2bJSb", "reference": 0.5023763999871586}, {"attribute": "8EbXGbJZ", "criteria": "S12VFwQi", "reference": 0.4598709367551277}, {"attribute": "xOjyvBAw", "criteria": "ZMUsKYfr", "reference": 0.4339746355492978}], "rebalance_enable": true, "sort_ticket": {"search_result": "oldestTicketAge", "ticket_queue": "random"}, "sort_tickets": [{"search_result": "largestPartySize", "threshold": 6, "ticket_queue": "none"}, {"search_result": "distance", "threshold": 53, "ticket_queue": "distance"}, {"search_result": "none", "threshold": 63, "ticket_queue": "oldestTicketAge"}], "sub_game_modes": {"3sgy28Bl": {"alliance": {"combination": {"alliances": [[{"max": 37, "min": 12, "name": "WNo3xuuN"}, {"max": 87, "min": 43, "name": "O6c2m0Dy"}, {"max": 21, "min": 18, "name": "PrT3nir1"}], [{"max": 76, "min": 60, "name": "oEVPn4pL"}, {"max": 16, "min": 47, "name": "98IOqrKP"}, {"max": 47, "min": 6, "name": "t7oeyFda"}], [{"max": 59, "min": 27, "name": "KFmNlBiG"}, {"max": 36, "min": 82, "name": "W9704HPp"}, {"max": 26, "min": 20, "name": "jadxw1oG"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 17, "role_flexing_second": 43}, "max_number": 68, "min_number": 21, "player_max_number": 90, "player_min_number": 0}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 69, "min": 14, "name": "ZviUbfcY"}, {"max": 31, "min": 36, "name": "TXEy3W0X"}, {"max": 78, "min": 52, "name": "t2SfKLIA"}], [{"max": 80, "min": 65, "name": "m92gMftV"}, {"max": 21, "min": 24, "name": "VCiMPmeT"}, {"max": 36, "min": 95, "name": "DYrFHq6B"}], [{"max": 49, "min": 62, "name": "d9TGhR4v"}, {"max": 38, "min": 5, "name": "VUljdfFI"}, {"max": 31, "min": 45, "name": "BECUwANK"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 62, "role_flexing_second": 57}, "duration": 43, "max_number": 85, "min_number": 29, "player_max_number": 78, "player_min_number": 46}, {"combination": {"alliances": [[{"max": 14, "min": 91, "name": "ONDjgfgY"}, {"max": 59, "min": 97, "name": "b5wc8lvU"}, {"max": 17, "min": 71, "name": "TLRajgd1"}], [{"max": 1, "min": 69, "name": "rVQYF68u"}, {"max": 64, "min": 76, "name": "T22gMj8w"}, {"max": 64, "min": 98, "name": "1ALznqWN"}], [{"max": 68, "min": 46, "name": "D8ELekrp"}, {"max": 21, "min": 63, "name": "jxkEZvJy"}, {"max": 63, "min": 32, "name": "FxnY2lfK"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 14, "role_flexing_second": 89}, "duration": 44, "max_number": 23, "min_number": 39, "player_max_number": 98, "player_min_number": 46}, {"combination": {"alliances": [[{"max": 13, "min": 71, "name": "g6me1JqR"}, {"max": 20, "min": 64, "name": "XuB4qeFW"}, {"max": 100, "min": 81, "name": "k7CvwMny"}], [{"max": 96, "min": 96, "name": "kmzt8By9"}, {"max": 97, "min": 65, "name": "jH1nbpCy"}, {"max": 13, "min": 58, "name": "OIoyPurv"}], [{"max": 44, "min": 63, "name": "pywfeJcy"}, {"max": 42, "min": 0, "name": "jJfxzdst"}, {"max": 78, "min": 83, "name": "v6IJSGpK"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 92, "role_flexing_second": 83}, "duration": 89, "max_number": 78, "min_number": 7, "player_max_number": 56, "player_min_number": 27}], "name": "IkMhYFGU"}, "PWhuNimP": {"alliance": {"combination": {"alliances": [[{"max": 93, "min": 89, "name": "qy4oqyCA"}, {"max": 43, "min": 87, "name": "huCWH3Ez"}, {"max": 26, "min": 23, "name": "FyCFsTEb"}], [{"max": 77, "min": 63, "name": "uVAViWwD"}, {"max": 12, "min": 45, "name": "uwE0T11p"}, {"max": 44, "min": 9, "name": "DczD1S1S"}], [{"max": 62, "min": 1, "name": "xF5hSoDx"}, {"max": 98, "min": 14, "name": "VxSgosM7"}, {"max": 62, "min": 85, "name": "D8EK1HCS"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 93, "role_flexing_second": 98}, "max_number": 93, "min_number": 99, "player_max_number": 22, "player_min_number": 82}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 85, "min": 82, "name": "QgfehSAW"}, {"max": 32, "min": 96, "name": "6cJIU4kv"}, {"max": 3, "min": 47, "name": "xTi2p4BJ"}], [{"max": 6, "min": 25, "name": "KT0EZib5"}, {"max": 47, "min": 80, "name": "XqhpTBHT"}, {"max": 63, "min": 15, "name": "5otI5Kgn"}], [{"max": 16, "min": 76, "name": "3fPAeLQJ"}, {"max": 44, "min": 14, "name": "B6eGBAZs"}, {"max": 8, "min": 82, "name": "umJrlYg2"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 0, "role_flexing_second": 47}, "duration": 78, "max_number": 73, "min_number": 97, "player_max_number": 15, "player_min_number": 30}, {"combination": {"alliances": [[{"max": 98, "min": 83, "name": "8tZQYphI"}, {"max": 43, "min": 36, "name": "UpG0y87g"}, {"max": 18, "min": 96, "name": "bCkkOFHk"}], [{"max": 50, "min": 0, "name": "CWHavAqh"}, {"max": 12, "min": 56, "name": "KMYmAKWi"}, {"max": 60, "min": 10, "name": "7aKxXZH6"}], [{"max": 20, "min": 86, "name": "8mRX5voM"}, {"max": 91, "min": 55, "name": "ZegCymX9"}, {"max": 83, "min": 95, "name": "6wupgQmb"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 76, "role_flexing_second": 3}, "duration": 77, "max_number": 59, "min_number": 40, "player_max_number": 57, "player_min_number": 59}, {"combination": {"alliances": [[{"max": 63, "min": 54, "name": "OIIlbRh6"}, {"max": 62, "min": 49, "name": "8b0VyPvH"}, {"max": 81, "min": 22, "name": "2Gp6aA0Q"}], [{"max": 38, "min": 55, "name": "3T6EZGIE"}, {"max": 3, "min": 14, "name": "PaQ0T41X"}, {"max": 5, "min": 83, "name": "l2Di2ZXL"}], [{"max": 25, "min": 85, "name": "HVRBxck1"}, {"max": 78, "min": 60, "name": "9Vjcotrc"}, {"max": 5, "min": 16, "name": "uDOlt7wv"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 9, "role_flexing_second": 58}, "duration": 46, "max_number": 84, "min_number": 43, "player_max_number": 78, "player_min_number": 40}], "name": "Jr5mLYC2"}, "kXrkMGE3": {"alliance": {"combination": {"alliances": [[{"max": 72, "min": 23, "name": "uM3TP7lV"}, {"max": 29, "min": 62, "name": "tgyogqGK"}, {"max": 99, "min": 52, "name": "daX0jtjr"}], [{"max": 85, "min": 76, "name": "rhjPaFXe"}, {"max": 18, "min": 2, "name": "xYpGokpp"}, {"max": 99, "min": 98, "name": "JIxCCv7a"}], [{"max": 69, "min": 84, "name": "NQsQj20w"}, {"max": 70, "min": 1, "name": "0MwkzYyl"}, {"max": 48, "min": 75, "name": "El1PaxqU"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 62, "role_flexing_second": 66}, "max_number": 48, "min_number": 27, "player_max_number": 38, "player_min_number": 39}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 41, "min": 60, "name": "waLwMg3B"}, {"max": 97, "min": 34, "name": "YLcTjlvk"}, {"max": 38, "min": 7, "name": "yJeeMlJQ"}], [{"max": 98, "min": 15, "name": "AH2tnibo"}, {"max": 16, "min": 80, "name": "7iU6hNYo"}, {"max": 83, "min": 26, "name": "0gaQQ2WD"}], [{"max": 23, "min": 72, "name": "EAPtWM2j"}, {"max": 63, "min": 41, "name": "WEkrOE2O"}, {"max": 18, "min": 91, "name": "gTzCmyG7"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 26, "role_flexing_second": 71}, "duration": 62, "max_number": 5, "min_number": 7, "player_max_number": 73, "player_min_number": 82}, {"combination": {"alliances": [[{"max": 31, "min": 46, "name": "IsLAw40L"}, {"max": 44, "min": 6, "name": "8iC7sm7q"}, {"max": 0, "min": 88, "name": "X4khkuBY"}], [{"max": 77, "min": 32, "name": "AUcPdQ6T"}, {"max": 88, "min": 100, "name": "iR7St68g"}, {"max": 5, "min": 71, "name": "XN0OZUHR"}], [{"max": 3, "min": 21, "name": "WagWzcAu"}, {"max": 40, "min": 78, "name": "2Vdcg78v"}, {"max": 57, "min": 99, "name": "MXDiOPKI"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 0, "role_flexing_second": 14}, "duration": 66, "max_number": 19, "min_number": 65, "player_max_number": 57, "player_min_number": 37}, {"combination": {"alliances": [[{"max": 65, "min": 77, "name": "UFSdFtt9"}, {"max": 80, "min": 66, "name": "SqGcjwX2"}, {"max": 36, "min": 4, "name": "70k9wWnB"}], [{"max": 98, "min": 41, "name": "eKYtSYc7"}, {"max": 45, "min": 15, "name": "YYrWJxwz"}, {"max": 91, "min": 23, "name": "0gMNzW8s"}], [{"max": 14, "min": 19, "name": "XB5NMLvf"}, {"max": 31, "min": 73, "name": "Js8FxF7s"}, {"max": 43, "min": 22, "name": "kosOAbq1"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 83, "role_flexing_second": 22}, "duration": 72, "max_number": 4, "min_number": 21, "player_max_number": 7, "player_min_number": 5}], "name": "AQXXsp6m"}}, "ticket_flexing_selection": "random", "ticket_flexing_selections": [{"selection": "newest", "threshold": 47}, {"selection": "oldest", "threshold": 38}, {"selection": "oldest", "threshold": 10}], "use_newest_ticket_for_flexing": true}, "session_queue_timeout_seconds": 63, "social_matchmaking": false, "ticket_observability_enable": false, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'aZT9ryIg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'hUbw4tkR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "ze9Kqt0Y", "players": [{"results": [{"attribute": "hX8aWt2e", "value": 0.6437793456519978}, {"attribute": "ZJRIfJXE", "value": 0.40165407785420515}, {"attribute": "f5x4pNmO", "value": 0.8023365627771961}], "user_id": "Z0mS9s7b"}, {"results": [{"attribute": "8UrUdmbx", "value": 0.9601560911489442}, {"attribute": "Dq7RATx7", "value": 0.5081221775881634}, {"attribute": "kLMhCT9d", "value": 0.21090817352659386}], "user_id": "cyn6sxik"}, {"results": [{"attribute": "s9cfViCK", "value": 0.1726873819700555}, {"attribute": "iEE322bU", "value": 0.404347906947201}, {"attribute": "8v8SJboy", "value": 0.36103065958240876}], "user_id": "7tJB4Zyg"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "l3cK8aK9"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "XfuANmUO", "client_version": "oDnlJbcM", "deployment": "TrgDFVrq", "error_code": 8, "error_message": "xOWud1E2", "game_mode": "RlAlJGmf", "is_mock": "Ae5ocGDs", "joinable": true, "match_id": "DJHSIY5D", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 59, "party_attributes": {"5AeFlqv2": {}, "F7gJUduR": {}, "pUDNXnR8": {}}, "party_id": "uCdU6W0S", "party_members": [{"extra_attributes": {"N2tT3Avp": {}, "4KCJ2HFi": {}, "fTjyZTuJ": {}}, "user_id": "nB3YPhjr"}, {"extra_attributes": {"QuJiyWqX": {}, "bZBVbbkh": {}, "ALr3imoO": {}}, "user_id": "mrVehUdR"}, {"extra_attributes": {"BYMyMvP9": {}, "p1y1G2X1": {}, "XPbRpltB": {}}, "user_id": "82T0iLXd"}], "ticket_created_at": 62, "ticket_id": "miDNK0Sr"}, {"first_ticket_created_at": 96, "party_attributes": {"vu6G3gsS": {}, "aGfv6LyF": {}, "UCUalwtl": {}}, "party_id": "QNsUCMK5", "party_members": [{"extra_attributes": {"CU4zsXh8": {}, "g1cW2FRt": {}, "yUfNkjnK": {}}, "user_id": "BdJTnFzF"}, {"extra_attributes": {"9cb19qk8": {}, "LrMintgB": {}, "twLgBx7e": {}}, "user_id": "39SyDSWr"}, {"extra_attributes": {"FlBVYY4x": {}, "VsgFAeTc": {}, "qqprwkmG": {}}, "user_id": "gwI56Ch6"}], "ticket_created_at": 93, "ticket_id": "43TwtLhu"}, {"first_ticket_created_at": 27, "party_attributes": {"H3fuD9x9": {}, "VXJixebF": {}, "LVI4ub6t": {}}, "party_id": "Zs53zj4F", "party_members": [{"extra_attributes": {"QyYWI1Nk": {}, "pT2zgvGw": {}, "yV8N3j46": {}}, "user_id": "2kKPpwTs"}, {"extra_attributes": {"uUl5HT4j": {}, "KC2EiEUX": {}, "woZ7mc8v": {}}, "user_id": "jsepjC6I"}, {"extra_attributes": {"PzfLvOaJ": {}, "ajzg33y0": {}, "RCDn1WhS": {}}, "user_id": "P6TXlxtB"}], "ticket_created_at": 79, "ticket_id": "hzx6fCLw"}]}, {"matching_parties": [{"first_ticket_created_at": 27, "party_attributes": {"Wk1AnJ8D": {}, "hwwE7ByB": {}, "0ZfAuGPl": {}}, "party_id": "OjeNWXkV", "party_members": [{"extra_attributes": {"k4B8NSKS": {}, "ap5iY3UT": {}, "HOKcfkut": {}}, "user_id": "jUmVc992"}, {"extra_attributes": {"B64iyQqO": {}, "1OPQtOSV": {}, "y0X3aLIO": {}}, "user_id": "xTi4rX4Z"}, {"extra_attributes": {"IMlhXy4t": {}, "sBh8fTW9": {}, "yyoTqBIf": {}}, "user_id": "DazbfreH"}], "ticket_created_at": 32, "ticket_id": "kocLtbr2"}, {"first_ticket_created_at": 8, "party_attributes": {"x00QJbxZ": {}, "eiDVXuF1": {}, "PHBWcJEG": {}}, "party_id": "OEETa3PK", "party_members": [{"extra_attributes": {"sG29OJ1R": {}, "M6euvzyi": {}, "HxBK9W3W": {}}, "user_id": "Zcr0tbAt"}, {"extra_attributes": {"cHDURkv4": {}, "sp819Xmz": {}, "miDbxgQ8": {}}, "user_id": "51N9t8zB"}, {"extra_attributes": {"AbSXXPRN": {}, "sDrOLfG4": {}, "wcLF7g46": {}}, "user_id": "xflrCj0c"}], "ticket_created_at": 91, "ticket_id": "kXplvsT5"}, {"first_ticket_created_at": 63, "party_attributes": {"i3D5spie": {}, "JOYUoDAN": {}, "SOxehVgY": {}}, "party_id": "RlmHhMEl", "party_members": [{"extra_attributes": {"Uza7cxgg": {}, "nE9lpkQC": {}, "r1oxRGNM": {}}, "user_id": "E96JnZ1p"}, {"extra_attributes": {"kU7DIsJd": {}, "RM7xRvQu": {}, "Ej7DNEV0": {}}, "user_id": "ZVXo8Tzh"}, {"extra_attributes": {"IZSTSzk9": {}, "msAG2GPH": {}, "jcresAaK": {}}, "user_id": "7KZoApUE"}], "ticket_created_at": 59, "ticket_id": "jqkhyIXS"}]}, {"matching_parties": [{"first_ticket_created_at": 68, "party_attributes": {"WKwMztWR": {}, "eUatpce6": {}, "hEJVfw3g": {}}, "party_id": "9PMCjjtk", "party_members": [{"extra_attributes": {"KkgaB0Mv": {}, "aUxiaqAW": {}, "e6w9broB": {}}, "user_id": "MmDIAd6i"}, {"extra_attributes": {"dLNtZwGt": {}, "D2A9Dha8": {}, "DMPW3qjo": {}}, "user_id": "7cFi9nvj"}, {"extra_attributes": {"j5NiDCT6": {}, "bae57hEx": {}, "fSWmhkTa": {}}, "user_id": "YXv7Pe2H"}], "ticket_created_at": 47, "ticket_id": "CMDBfLd1"}, {"first_ticket_created_at": 8, "party_attributes": {"aLYX5hxf": {}, "CSYU1ueg": {}, "XskedF41": {}}, "party_id": "CeRMu8KQ", "party_members": [{"extra_attributes": {"S4hGqWGY": {}, "XLXutQf9": {}, "le9mYndN": {}}, "user_id": "wNrLnBoa"}, {"extra_attributes": {"OBJiJZWB": {}, "S8VEvU0Q": {}, "jSrGS3tg": {}}, "user_id": "ip0NzVP0"}, {"extra_attributes": {"zPF7np0m": {}, "3FRETSHk": {}, "aMBg70aC": {}}, "user_id": "1XyxkOCc"}], "ticket_created_at": 78, "ticket_id": "FSNa4ap6"}, {"first_ticket_created_at": 85, "party_attributes": {"HyITUNQG": {}, "u84i8KCS": {}, "aTmEn695": {}}, "party_id": "0uPw73AG", "party_members": [{"extra_attributes": {"TbrF4uRv": {}, "5og0fbm8": {}, "91ZJtBQ9": {}}, "user_id": "B7KJUthY"}, {"extra_attributes": {"tLvQ5CIN": {}, "4pfKnwFO": {}, "YRwwsZ21": {}}, "user_id": "bGMRmJ4G"}, {"extra_attributes": {"J1lru5eL": {}, "IcGptddl": {}, "AOJlBdQW": {}}, "user_id": "jcioBObv"}], "ticket_created_at": 0, "ticket_id": "ZglUKy5I"}]}], "namespace": "JBsIyAlA", "party_attributes": {"UC1Gsfo3": {}, "fcerC2re": {}, "vCW1ATLU": {}}, "party_id": "dxUGqjip", "queued_at": 84, "region": "lyJiOxW1", "server_name": "BRpiO9g8", "status": "MiLjumSX", "ticket_id": "4TXOvZAg", "ticket_ids": ["LXJaFArj", "MuDh8eiU", "LGg065l9"], "updated_at": "1978-09-27T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "yQlc9XzT"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID '5A6lCJFw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 94, "userID": "5VmEr3d2", "weight": 0.5904325928534709}' \
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
    --matchIDs 'V0qzSyuz' \
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
    --strategy '4YdqAHWG' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName '6kxgaQWk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'eCPPXGgk' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCannotMatch", "deployment": "xPablmiw", "description": "FTmYYwTY", "findMatchTimeoutSeconds": 3, "joinable": false, "max_delay_ms": 61, "region_expansion_range_ms": 0, "region_expansion_rate_ms": 24, "region_latency_initial_range_ms": 51, "region_latency_max_ms": 91, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 38, "min": 52, "name": "AmScSxol"}, {"max": 16, "min": 26, "name": "X4kow1r8"}, {"max": 89, "min": 62, "name": "mmblyNIs"}], [{"max": 15, "min": 27, "name": "I8KRF9ED"}, {"max": 92, "min": 62, "name": "hq0QRMk1"}, {"max": 30, "min": 55, "name": "aQ0UQO1v"}], [{"max": 38, "min": 44, "name": "kWt630bz"}, {"max": 93, "min": 37, "name": "Jm1Eo7ZY"}, {"max": 16, "min": 8, "name": "Nos78FY2"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 67, "role_flexing_second": 96}, "maxNumber": 98, "minNumber": 38, "playerMaxNumber": 80, "playerMinNumber": 23}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 35, "min": 0, "name": "TzSytbaB"}, {"max": 54, "min": 80, "name": "6h7IEPdc"}, {"max": 20, "min": 66, "name": "a2RIydk8"}], [{"max": 34, "min": 89, "name": "kWaIG4ta"}, {"max": 84, "min": 84, "name": "gOXf2sib"}, {"max": 7, "min": 53, "name": "pKaC9XF4"}], [{"max": 50, "min": 10, "name": "sxVTDmf3"}, {"max": 71, "min": 47, "name": "7PqT7dq5"}, {"max": 71, "min": 56, "name": "0k2XjgJt"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 15, "role_flexing_second": 9}, "duration": 88, "max_number": 26, "min_number": 22, "player_max_number": 36, "player_min_number": 54}, {"combination": {"alliances": [[{"max": 31, "min": 87, "name": "UXbkp0vo"}, {"max": 3, "min": 21, "name": "nV52wiEp"}, {"max": 39, "min": 37, "name": "vR88y8WZ"}], [{"max": 85, "min": 24, "name": "6BgHU93H"}, {"max": 67, "min": 25, "name": "H3eIbVmu"}, {"max": 37, "min": 68, "name": "pg1Z2Jz1"}], [{"max": 30, "min": 38, "name": "eVI29T7J"}, {"max": 4, "min": 27, "name": "mjPMskLj"}, {"max": 66, "min": 20, "name": "m7S7M0Yf"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 69, "role_flexing_second": 20}, "duration": 53, "max_number": 24, "min_number": 79, "player_max_number": 36, "player_min_number": 57}, {"combination": {"alliances": [[{"max": 17, "min": 72, "name": "d8XwDncb"}, {"max": 93, "min": 83, "name": "QRx6zI7b"}, {"max": 70, "min": 22, "name": "D1ue8mzv"}], [{"max": 2, "min": 32, "name": "IuZnfj8Z"}, {"max": 7, "min": 55, "name": "O5NqY97w"}, {"max": 36, "min": 25, "name": "OXPY4mAQ"}], [{"max": 40, "min": 23, "name": "hsUhNiSy"}, {"max": 67, "min": 14, "name": "9hopExF0"}, {"max": 52, "min": 87, "name": "TaJgujv2"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 17, "role_flexing_second": 57}, "duration": 7, "max_number": 78, "min_number": 68, "player_max_number": 37, "player_min_number": 100}], "batch_size": 24, "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 55, "flex_flat_step_range": 68, "flex_immunity_count": 3, "flex_range_max": 88, "flex_rate_ms": 13, "flex_step_max": 31, "force_authority_match": false, "initial_step_range": 53, "mmr_max": 16, "mmr_mean": 78, "mmr_min": 17, "mmr_std_dev": 48, "override_mmr_data": true, "use_bucket_mmr": false, "use_flat_flex_step": true}, "flexingRules": [{"attribute": "HTHNapMj", "criteria": "UAzPeagq", "duration": 5, "reference": 0.34768734867092044}, {"attribute": "zmnlVPE4", "criteria": "IDNyDB5y", "duration": 51, "reference": 0.4670314330037526}, {"attribute": "rPhM4zYs", "criteria": "VYivGvA9", "duration": 33, "reference": 0.5252564093999917}], "match_options": {"options": [{"name": "yMR7eovM", "type": "ep0LEepE"}, {"name": "gGMUkQqQ", "type": "2JKYYcQ5"}, {"name": "FaSLkujg", "type": "UvegaRfN"}]}, "matchingRules": [{"attribute": "wQCpwMBS", "criteria": "RT9yLWlH", "reference": 0.8175177503718688}, {"attribute": "VfTsaGEj", "criteria": "WuQepLaQ", "reference": 0.06039966244700268}, {"attribute": "MXooUcjN", "criteria": "sFddTUBy", "reference": 0.8053606266603138}], "sort_ticket": {"search_result": "oldestTicketAge", "ticket_queue": "distance"}, "sort_tickets": [{"search_result": "distance", "threshold": 82, "ticket_queue": "distance"}, {"search_result": "oldestTicketAge", "threshold": 51, "ticket_queue": "random"}, {"search_result": "oldestTicketAge", "threshold": 56, "ticket_queue": "oldestTicketAge"}], "sub_game_modes": {}, "ticket_flexing_selection": "oldest", "ticket_flexing_selections": [{"selection": "pivot", "threshold": 26}, {"selection": "newest", "threshold": 38}, {"selection": "oldest", "threshold": 63}], "use_newest_ticket_for_flexing": false}, "sessionQueueTimeoutSeconds": 47, "socialMatchmaking": true, "ticket_observability_enable": true, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName 'Fh3IRX8k' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName 'LvKNE9yb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName 'RjO5Sauf' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 20}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName 'RLJbzW0D' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName 'cHswgNy4' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "duLoHIaN", "count": 27, "mmrMax": 0.7084356276518675, "mmrMean": 0.9563393335106778, "mmrMin": 0.8456707893688438, "mmrStdDev": 0.5036066447145181}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName 'om3IRr4w' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 66, "party_attributes": {"p3HhHi5p": {}, "NdlUj1i5": {}, "v9TOduwk": {}}, "party_id": "6AXhaAK4", "party_members": [{"extra_attributes": {"Irlfie46": {}, "dF3DChiO": {}, "DRbf1R79": {}}, "user_id": "KowAaE99"}, {"extra_attributes": {"huk3LmXi": {}, "qguKNrW8": {}, "LqamCu9A": {}}, "user_id": "pR9xAEZE"}, {"extra_attributes": {"L28QNn3a": {}, "b3sEAmHG": {}, "lRdDEq5R": {}}, "user_id": "aRtWzn5i"}], "ticket_created_at": 52, "ticket_id": "OQN3gL1c"}, {"first_ticket_created_at": 30, "party_attributes": {"TUIqNCNl": {}, "xxrEmXPa": {}, "40lylMp1": {}}, "party_id": "npdIURh5", "party_members": [{"extra_attributes": {"q5lrBfCk": {}, "o17Q06gS": {}, "9mvBFzoA": {}}, "user_id": "U0xMmv21"}, {"extra_attributes": {"JBOZdThJ": {}, "7dEoTyrm": {}, "LPLMVYzr": {}}, "user_id": "jp4xcMho"}, {"extra_attributes": {"6IcT3okJ": {}, "VsmfvbAp": {}, "nLNlM2fD": {}}, "user_id": "8Q5XJFhN"}], "ticket_created_at": 63, "ticket_id": "YaqwX1eI"}, {"first_ticket_created_at": 50, "party_attributes": {"Urn39Nfg": {}, "5hwo7uqe": {}, "lZsoPu3U": {}}, "party_id": "j4Y1cgiM", "party_members": [{"extra_attributes": {"QpCWwQ6z": {}, "vSTWN5DN": {}, "pvgVvul8": {}}, "user_id": "sLsui9ON"}, {"extra_attributes": {"uzegiU6W": {}, "v5JBafuT": {}, "SgKeOq3z": {}}, "user_id": "zadTmfbm"}, {"extra_attributes": {"0UZwgsDK": {}, "ZFtO0zef": {}, "p3NrWYXQ": {}}, "user_id": "1nDQTvRx"}], "ticket_created_at": 78, "ticket_id": "IPQ3Nso3"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName '42BIMyjb' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 40}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'RK7Q4z15' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'pyx3op4M' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 't6yv56jJ' \
    --matchID 'Kfrl86GZ' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["USelPwSX", "gp2Ty2dV", "3stJJ2jD"], "party_id": "lO2d1iTK", "user_id": "jVY1Faq2"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'Rbjles36' \
    --matchID 'SqtnY9Uu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'bEGAAzeb' \
    --matchID '2aJfP6Hc' \
    --namespace $AB_NAMESPACE \
    --userID 'AlBUbANK' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName '2hX0crHy' \
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
    --channelName 'w8HCQNeX' \
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