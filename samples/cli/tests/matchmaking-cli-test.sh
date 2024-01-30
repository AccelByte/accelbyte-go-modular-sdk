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
    --limit '73' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCanMatch", "deployment": "YkERJp8r", "description": "8UEcOqEw", "find_match_timeout_seconds": 89, "game_mode": "k34Cy0BC", "joinable": false, "max_delay_ms": 70, "region_expansion_range_ms": 97, "region_expansion_rate_ms": 83, "region_latency_initial_range_ms": 100, "region_latency_max_ms": 2, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 37, "min": 63, "name": "5UNyadlF"}, {"max": 53, "min": 62, "name": "kDSc8KPf"}, {"max": 84, "min": 87, "name": "kDWTiTdt"}], [{"max": 4, "min": 28, "name": "rIl5pCGu"}, {"max": 26, "min": 77, "name": "05fv4LXE"}, {"max": 35, "min": 30, "name": "ie7zvWuU"}], [{"max": 70, "min": 23, "name": "BXt6hoZp"}, {"max": 23, "min": 45, "name": "U6wTGYyj"}, {"max": 48, "min": 50, "name": "BStZj5OM"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 81, "role_flexing_second": 84}, "max_number": 24, "min_number": 66, "player_max_number": 92, "player_min_number": 74}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 80, "min": 3, "name": "AYRhnBKg"}, {"max": 32, "min": 5, "name": "qtd8fMUk"}, {"max": 43, "min": 61, "name": "7ethS3hL"}], [{"max": 0, "min": 77, "name": "nZtDshdj"}, {"max": 20, "min": 83, "name": "exeNAqrl"}, {"max": 5, "min": 75, "name": "T0f1ew0v"}], [{"max": 46, "min": 53, "name": "efOOCtXd"}, {"max": 69, "min": 9, "name": "CreoCNCf"}, {"max": 5, "min": 22, "name": "ow7iO8CS"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 40, "role_flexing_second": 15}, "duration": 55, "max_number": 97, "min_number": 64, "player_max_number": 59, "player_min_number": 65}, {"combination": {"alliances": [[{"max": 60, "min": 36, "name": "sNcjh8es"}, {"max": 26, "min": 40, "name": "hyc5nEol"}, {"max": 73, "min": 80, "name": "KtVD5nTU"}], [{"max": 7, "min": 32, "name": "7ThLTHZ7"}, {"max": 53, "min": 74, "name": "pW1tngqh"}, {"max": 33, "min": 21, "name": "Gor2qBDz"}], [{"max": 33, "min": 56, "name": "EHQkDZk2"}, {"max": 62, "min": 1, "name": "a6lhBC2Q"}, {"max": 72, "min": 90, "name": "XyGB1t5F"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 56, "role_flexing_second": 84}, "duration": 25, "max_number": 79, "min_number": 9, "player_max_number": 51, "player_min_number": 33}, {"combination": {"alliances": [[{"max": 71, "min": 10, "name": "MeDlTMyt"}, {"max": 30, "min": 30, "name": "23SpoOgi"}, {"max": 65, "min": 76, "name": "WvIbDGsN"}], [{"max": 85, "min": 59, "name": "HmMTfSAO"}, {"max": 100, "min": 39, "name": "5jCKWRWk"}, {"max": 46, "min": 40, "name": "gRh7nviV"}], [{"max": 21, "min": 79, "name": "v7MTcgO7"}, {"max": 15, "min": 79, "name": "TAP9vlEp"}, {"max": 24, "min": 5, "name": "v8pY6HwJ"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 88, "role_flexing_second": 0}, "duration": 60, "max_number": 10, "min_number": 8, "player_max_number": 94, "player_min_number": 96}], "batch_size": 12, "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 70, "flex_flat_step_range": 8, "flex_immunity_count": 29, "flex_range_max": 69, "flex_rate_ms": 77, "flex_step_max": 82, "force_authority_match": false, "initial_step_range": 33, "mmr_max": 31, "mmr_mean": 83, "mmr_min": 28, "mmr_std_dev": 64, "override_mmr_data": false, "use_bucket_mmr": true, "use_flat_flex_step": false}, "flexing_rule": [{"attribute": "T9zOVXKk", "criteria": "syNEtX9c", "duration": 86, "reference": 0.3597432343675112}, {"attribute": "HmL0vE5L", "criteria": "cvpGqAUY", "duration": 44, "reference": 0.9972015836664616}, {"attribute": "Rtz8pOSF", "criteria": "t97R9r6m", "duration": 76, "reference": 0.36698982158752647}], "match_options": {"options": [{"name": "vFAOtxy4", "type": "1DwDBKkW"}, {"name": "sMcxHte5", "type": "oAjx9Och"}, {"name": "iFiMpnhC", "type": "vw3B7cbf"}]}, "matching_rule": [{"attribute": "TuRd6BCe", "criteria": "Z3c2M0H4", "reference": 0.34003763950582244}, {"attribute": "T5c53UoS", "criteria": "2m4ZZzHC", "reference": 0.17683035186680207}, {"attribute": "4vbHIBHm", "criteria": "WhdG4uKx", "reference": 0.8677824587187355}], "rebalance_enable": false, "sort_ticket": {"search_result": "distance", "ticket_queue": "random"}, "sort_tickets": [{"search_result": "random", "threshold": 77, "ticket_queue": "distance"}, {"search_result": "random", "threshold": 70, "ticket_queue": "largestPartySize"}, {"search_result": "none", "threshold": 56, "ticket_queue": "oldestTicketAge"}], "sub_game_modes": {"J0pcWdel": {"alliance": {"combination": {"alliances": [[{"max": 72, "min": 5, "name": "KRf9CwY7"}, {"max": 2, "min": 91, "name": "hQSTcvRA"}, {"max": 82, "min": 100, "name": "JZUZQaNu"}], [{"max": 32, "min": 26, "name": "8C9eyfPR"}, {"max": 57, "min": 17, "name": "1sPlzk2a"}, {"max": 61, "min": 58, "name": "JTPC0gnE"}], [{"max": 14, "min": 91, "name": "Cx1KDNtR"}, {"max": 41, "min": 54, "name": "hzliyfKs"}, {"max": 3, "min": 6, "name": "KHY9J81t"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 52, "role_flexing_second": 27}, "max_number": 62, "min_number": 100, "player_max_number": 72, "player_min_number": 73}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 57, "min": 14, "name": "eu0vQvBh"}, {"max": 86, "min": 22, "name": "ctOnZ9h4"}, {"max": 24, "min": 70, "name": "sr390Jvp"}], [{"max": 75, "min": 10, "name": "bvwDlg2O"}, {"max": 76, "min": 6, "name": "pDGODskl"}, {"max": 60, "min": 61, "name": "FGHaprK7"}], [{"max": 59, "min": 87, "name": "QVeODsrM"}, {"max": 25, "min": 83, "name": "WAmsq6lR"}, {"max": 12, "min": 41, "name": "1NysVtx6"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 27, "role_flexing_second": 64}, "duration": 50, "max_number": 84, "min_number": 54, "player_max_number": 92, "player_min_number": 12}, {"combination": {"alliances": [[{"max": 56, "min": 3, "name": "vqXowNeM"}, {"max": 20, "min": 31, "name": "z1VVUTog"}, {"max": 34, "min": 50, "name": "fNGOiLTw"}], [{"max": 59, "min": 55, "name": "0YLCcTVL"}, {"max": 15, "min": 23, "name": "nmgv1YL1"}, {"max": 57, "min": 96, "name": "CSmNFIA0"}], [{"max": 22, "min": 41, "name": "hPtfmvW8"}, {"max": 53, "min": 55, "name": "DaHXSoWL"}, {"max": 66, "min": 39, "name": "31dFpxOX"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 53, "role_flexing_second": 57}, "duration": 43, "max_number": 11, "min_number": 9, "player_max_number": 27, "player_min_number": 50}, {"combination": {"alliances": [[{"max": 80, "min": 37, "name": "KvzHrzys"}, {"max": 70, "min": 87, "name": "E9sWo8Tc"}, {"max": 54, "min": 23, "name": "7sF9oZsC"}], [{"max": 89, "min": 60, "name": "jUdZcBHB"}, {"max": 92, "min": 68, "name": "PPsgoLRi"}, {"max": 19, "min": 34, "name": "io3EgFuk"}], [{"max": 69, "min": 98, "name": "JrRoQObT"}, {"max": 30, "min": 69, "name": "zFHNQt3s"}, {"max": 9, "min": 43, "name": "Qrgq2Xam"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 48, "role_flexing_second": 68}, "duration": 75, "max_number": 40, "min_number": 27, "player_max_number": 40, "player_min_number": 91}], "name": "1nBMYBy3"}, "zwBNvFlc": {"alliance": {"combination": {"alliances": [[{"max": 57, "min": 62, "name": "egmQyKRv"}, {"max": 9, "min": 75, "name": "TMlb4yZ5"}, {"max": 90, "min": 35, "name": "u0oQj48G"}], [{"max": 97, "min": 57, "name": "bUTSmI8Q"}, {"max": 93, "min": 32, "name": "rpXu7XFf"}, {"max": 17, "min": 90, "name": "81ut22O3"}], [{"max": 81, "min": 20, "name": "Bgmt7pcD"}, {"max": 41, "min": 92, "name": "9aX4gC66"}, {"max": 3, "min": 90, "name": "V8Z6oBhh"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 74, "role_flexing_second": 26}, "max_number": 16, "min_number": 84, "player_max_number": 78, "player_min_number": 31}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 61, "min": 20, "name": "cdXILGBg"}, {"max": 64, "min": 78, "name": "pOLgVkNm"}, {"max": 35, "min": 47, "name": "crLvdQ3g"}], [{"max": 95, "min": 81, "name": "Kc57kEpy"}, {"max": 6, "min": 93, "name": "bTmE8yku"}, {"max": 86, "min": 66, "name": "w2ZnyZFu"}], [{"max": 46, "min": 26, "name": "Sc2aspKm"}, {"max": 97, "min": 23, "name": "gdt3yNAh"}, {"max": 67, "min": 70, "name": "4I9CZBWg"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 4, "role_flexing_second": 63}, "duration": 68, "max_number": 38, "min_number": 38, "player_max_number": 22, "player_min_number": 89}, {"combination": {"alliances": [[{"max": 16, "min": 31, "name": "89l6PP3G"}, {"max": 45, "min": 88, "name": "lXWTalE1"}, {"max": 56, "min": 33, "name": "R8S2JtTP"}], [{"max": 34, "min": 92, "name": "ZRglmeKN"}, {"max": 26, "min": 99, "name": "MzYB4Drl"}, {"max": 10, "min": 94, "name": "Qk18eqg8"}], [{"max": 24, "min": 60, "name": "qNV6gxMG"}, {"max": 60, "min": 59, "name": "rdVmsOs4"}, {"max": 2, "min": 51, "name": "KNPMX0bs"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 33, "role_flexing_second": 5}, "duration": 1, "max_number": 80, "min_number": 93, "player_max_number": 28, "player_min_number": 67}, {"combination": {"alliances": [[{"max": 26, "min": 31, "name": "RRwpfAOG"}, {"max": 60, "min": 85, "name": "bX62f5d3"}, {"max": 58, "min": 62, "name": "ArYjNaSW"}], [{"max": 82, "min": 30, "name": "DekFIJeD"}, {"max": 24, "min": 70, "name": "DSeKG90x"}, {"max": 30, "min": 65, "name": "BNLRl6zo"}], [{"max": 1, "min": 30, "name": "vv5NXqP2"}, {"max": 38, "min": 0, "name": "ab59LZch"}, {"max": 29, "min": 43, "name": "dukPDQA2"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 61, "role_flexing_second": 25}, "duration": 88, "max_number": 82, "min_number": 79, "player_max_number": 82, "player_min_number": 35}], "name": "dufRPrQN"}, "EjR6nKeK": {"alliance": {"combination": {"alliances": [[{"max": 71, "min": 1, "name": "0ECnWEG4"}, {"max": 2, "min": 27, "name": "vbC99a2P"}, {"max": 54, "min": 19, "name": "hcmsyVEO"}], [{"max": 99, "min": 28, "name": "nZmQNmDQ"}, {"max": 50, "min": 1, "name": "PEX2GnMb"}, {"max": 96, "min": 54, "name": "5npWcYhq"}], [{"max": 76, "min": 66, "name": "nyb0NZ0q"}, {"max": 21, "min": 62, "name": "EE8qN8YQ"}, {"max": 26, "min": 47, "name": "6nikYwie"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 5, "role_flexing_second": 69}, "max_number": 21, "min_number": 70, "player_max_number": 29, "player_min_number": 5}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 8, "min": 62, "name": "c8OcIULZ"}, {"max": 36, "min": 96, "name": "9FdwKX8X"}, {"max": 25, "min": 87, "name": "DgnewWNh"}], [{"max": 96, "min": 46, "name": "KqFAmgvq"}, {"max": 21, "min": 88, "name": "jlWKJ8yG"}, {"max": 30, "min": 31, "name": "DUDLYrPv"}], [{"max": 71, "min": 98, "name": "5Jswumco"}, {"max": 27, "min": 56, "name": "bBA17Hzh"}, {"max": 30, "min": 81, "name": "wF5pzUE6"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 88, "role_flexing_second": 79}, "duration": 21, "max_number": 97, "min_number": 25, "player_max_number": 84, "player_min_number": 8}, {"combination": {"alliances": [[{"max": 98, "min": 65, "name": "JYCFoK6w"}, {"max": 55, "min": 32, "name": "zCVQHHBM"}, {"max": 78, "min": 60, "name": "HU16L5CT"}], [{"max": 28, "min": 68, "name": "q2lMdTwM"}, {"max": 65, "min": 100, "name": "5HBKeSFL"}, {"max": 13, "min": 53, "name": "3wY7cbat"}], [{"max": 19, "min": 79, "name": "CptGBzoE"}, {"max": 72, "min": 20, "name": "pakKENxi"}, {"max": 54, "min": 42, "name": "bm4mqyLe"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 5, "role_flexing_second": 96}, "duration": 11, "max_number": 40, "min_number": 83, "player_max_number": 75, "player_min_number": 76}, {"combination": {"alliances": [[{"max": 35, "min": 20, "name": "EhZO6dVY"}, {"max": 99, "min": 16, "name": "6d1PoZ2o"}, {"max": 84, "min": 62, "name": "bDucUwqT"}], [{"max": 93, "min": 91, "name": "KpHB9JRq"}, {"max": 37, "min": 92, "name": "ZxX0HTjn"}, {"max": 39, "min": 17, "name": "nQuYvn6r"}], [{"max": 60, "min": 50, "name": "F4v1bBJB"}, {"max": 25, "min": 89, "name": "UIBpJjpc"}, {"max": 91, "min": 38, "name": "77s6Ez23"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 13, "role_flexing_second": 16}, "duration": 93, "max_number": 40, "min_number": 19, "player_max_number": 44, "player_min_number": 66}], "name": "FbBV2rjg"}}, "ticket_flexing_selection": "pivot", "ticket_flexing_selections": [{"selection": "oldest", "threshold": 83}, {"selection": "newest", "threshold": 24}, {"selection": "oldest", "threshold": 52}], "use_newest_ticket_for_flexing": false}, "session_queue_timeout_seconds": 28, "social_matchmaking": true, "sub_gamemode_selection": "random", "ticket_observability_enable": true, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'a4uqSvRM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'NraI1UoF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "qAgvbuMn", "players": [{"results": [{"attribute": "JMLFRLQS", "value": 0.6685146007284303}, {"attribute": "fBaslCS3", "value": 0.8785677304584742}, {"attribute": "CEayqwTX", "value": 0.6226688905963702}], "user_id": "v6YpFW8A"}, {"results": [{"attribute": "IxnsgYnt", "value": 0.3412568973744342}, {"attribute": "mP4AQv75", "value": 0.30949825187546565}, {"attribute": "APgMjmD0", "value": 0.6856893739964695}], "user_id": "cBBbss75"}, {"results": [{"attribute": "UEugOlbN", "value": 0.12246110079351913}, {"attribute": "U5ZkUBdq", "value": 0.022665935272737636}, {"attribute": "iVOtoSnY", "value": 0.7481860830197746}], "user_id": "vqjqQ3DN"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "stOXMFlB"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "rmxAjTyl", "client_version": "s0GmXNww", "deployment": "mLl1agWS", "error_code": 14, "error_message": "hr5cAjZy", "game_mode": "piFCmz9A", "is_mock": "PKXwxQtz", "joinable": true, "match_id": "f7kMKaDi", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 100, "party_attributes": {"yM16OG5P": {}, "vdkDKjEG": {}, "Ar3T9Dcc": {}}, "party_id": "lc3hTBle", "party_members": [{"extra_attributes": {"ntTLQ7UN": {}, "LrEKbnNg": {}, "Luy2bmPh": {}}, "user_id": "YRk19H3k"}, {"extra_attributes": {"vJFdzH8P": {}, "8nXwiahC": {}, "2LNKxYfP": {}}, "user_id": "yTY0BRR1"}, {"extra_attributes": {"H7c5fHJy": {}, "zrSRJxO5": {}, "jxjMxTuL": {}}, "user_id": "Vvwiq5m1"}], "ticket_created_at": 61, "ticket_id": "Tf7BFNOI"}, {"first_ticket_created_at": 16, "party_attributes": {"Cv8bo8wM": {}, "opjIxZqq": {}, "sP3tuDUe": {}}, "party_id": "j17RHNdc", "party_members": [{"extra_attributes": {"UELqQHMn": {}, "CnRiDMeu": {}, "fxwtVCuM": {}}, "user_id": "w3RtW5BX"}, {"extra_attributes": {"oDfuAbKP": {}, "bcjpxF2h": {}, "I3DUF8oL": {}}, "user_id": "JzeI1uUK"}, {"extra_attributes": {"6e4VZQ3C": {}, "Zne80pUy": {}, "jFJBVkWh": {}}, "user_id": "UfKISS5G"}], "ticket_created_at": 59, "ticket_id": "XZgtTob4"}, {"first_ticket_created_at": 50, "party_attributes": {"nOfX1Hov": {}, "y0o9GTrk": {}, "KhPyufGX": {}}, "party_id": "5mQMXx4a", "party_members": [{"extra_attributes": {"gDT3eAG9": {}, "RbjMB5A8": {}, "VuKMcQrF": {}}, "user_id": "rLtxUbBg"}, {"extra_attributes": {"mcMDVrvh": {}, "fn7J0O73": {}, "lZHiiTtU": {}}, "user_id": "GmIz9MEp"}, {"extra_attributes": {"Z8ySY3Wk": {}, "5DFkyMtt": {}, "eZOQDG9p": {}}, "user_id": "bPrcCfXk"}], "ticket_created_at": 6, "ticket_id": "93Wjbv2F"}]}, {"matching_parties": [{"first_ticket_created_at": 80, "party_attributes": {"ZEs5V6uF": {}, "fLhjltaT": {}, "zGdBmo9J": {}}, "party_id": "HQMvMQSW", "party_members": [{"extra_attributes": {"URTRHP9g": {}, "hFRUDeX0": {}, "s8454uGb": {}}, "user_id": "wNXO1neE"}, {"extra_attributes": {"wfaINIWL": {}, "XGfhap8j": {}, "tLjwoo4V": {}}, "user_id": "DSsAogZB"}, {"extra_attributes": {"AYalm4w6": {}, "xOwyfppG": {}, "73RVBkab": {}}, "user_id": "SG1OmNJA"}], "ticket_created_at": 4, "ticket_id": "gn0fVnjs"}, {"first_ticket_created_at": 48, "party_attributes": {"wEGYuNuE": {}, "HiiwfH8M": {}, "eVwT1ZLU": {}}, "party_id": "FeCkTUTi", "party_members": [{"extra_attributes": {"1zWsxRBN": {}, "O9wRJ641": {}, "4V9fSjJp": {}}, "user_id": "TiEP8aPP"}, {"extra_attributes": {"RUQnVZm9": {}, "WyNqkzRt": {}, "oTop9z9g": {}}, "user_id": "EWU28hRg"}, {"extra_attributes": {"adEMD7Rt": {}, "1mv0e2Fj": {}, "BdNAhOSd": {}}, "user_id": "hRWr39DF"}], "ticket_created_at": 26, "ticket_id": "v6vhFpvn"}, {"first_ticket_created_at": 84, "party_attributes": {"24hu11Qm": {}, "J2rChLZa": {}, "KcScjaBA": {}}, "party_id": "LANzfqKf", "party_members": [{"extra_attributes": {"SknnH29x": {}, "7kzTNVR7": {}, "q4dKNM3N": {}}, "user_id": "uAG3dH1e"}, {"extra_attributes": {"ueUvzXrA": {}, "LC9cxsnc": {}, "ggo9QL67": {}}, "user_id": "PcSaRUYr"}, {"extra_attributes": {"OpheP32g": {}, "nBg6cie0": {}, "3SaYQ3Ta": {}}, "user_id": "kRFyBJ6h"}], "ticket_created_at": 68, "ticket_id": "t05Ki4Ct"}]}, {"matching_parties": [{"first_ticket_created_at": 77, "party_attributes": {"U2QTidp0": {}, "7qu0piTZ": {}, "LGpY8wO1": {}}, "party_id": "t5TMLcSm", "party_members": [{"extra_attributes": {"fmykWtSW": {}, "Pt6dPVfu": {}, "2ECA4Evd": {}}, "user_id": "tftqCYg8"}, {"extra_attributes": {"uv2o5C2r": {}, "nCsrM1Lc": {}, "kz7lfQnF": {}}, "user_id": "6Ah9RPNu"}, {"extra_attributes": {"ZUyar4pY": {}, "nWdeckBg": {}, "ahkmseng": {}}, "user_id": "eUszyjA7"}], "ticket_created_at": 64, "ticket_id": "mSA5wfSw"}, {"first_ticket_created_at": 35, "party_attributes": {"WwT4eqJT": {}, "uEaNbys7": {}, "hVmmQyS2": {}}, "party_id": "CAqh6ORE", "party_members": [{"extra_attributes": {"2rAnzH4M": {}, "r15paQMb": {}, "p2OtZQUg": {}}, "user_id": "BOv8o7Op"}, {"extra_attributes": {"0kZ3oats": {}, "LeD04unE": {}, "nYb37Q7R": {}}, "user_id": "BDs9ZFp3"}, {"extra_attributes": {"cPzoLbf2": {}, "qflnfWMX": {}, "FTqO5Tlt": {}}, "user_id": "OEamc5Cf"}], "ticket_created_at": 63, "ticket_id": "cjZeXyzk"}, {"first_ticket_created_at": 47, "party_attributes": {"HJC0oQj1": {}, "IA2MRCWX": {}, "DWFfckvc": {}}, "party_id": "HkpQhN9C", "party_members": [{"extra_attributes": {"4n1UEAAy": {}, "XcH1naEl": {}, "SiWGe8ss": {}}, "user_id": "8UHH4DwW"}, {"extra_attributes": {"UYDZ5RYY": {}, "mApB31XT": {}, "YCnm72v2": {}}, "user_id": "GjDdCcIo"}, {"extra_attributes": {"xCHpXNaf": {}, "62R2qjkG": {}, "mLCcShoB": {}}, "user_id": "IwZ7J7kH"}], "ticket_created_at": 3, "ticket_id": "pRyZQQrF"}]}], "namespace": "hc4XefEX", "party_attributes": {"6h9igUeT": {}, "HAOTG0hG": {}, "nyOaEps8": {}}, "party_id": "pb0GIWbs", "queued_at": 2, "region": "YttIWkwn", "server_name": "C9Gylv7H", "status": "mKLWGd3F", "ticket_id": "gfPs4nDB", "ticket_ids": ["8SJcXjhY", "KpVsN7qM", "vsj4ICOh"], "updated_at": "1973-11-30T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "GkJzouT9"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'jLknoL8h' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 40, "userID": "1nf62RKA", "weight": 0.024650926732699197}' \
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
    --matchIDs '2FEY0Olh' \
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
    --strategy 'ioiP9S00' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName '9a9UmLSW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'EwsbZx5C' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCanMatchOnDifferentTeam", "deployment": "u5mghgpi", "description": "UDvKZD7B", "findMatchTimeoutSeconds": 8, "joinable": false, "max_delay_ms": 1, "region_expansion_range_ms": 50, "region_expansion_rate_ms": 43, "region_latency_initial_range_ms": 25, "region_latency_max_ms": 59, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 12, "min": 75, "name": "VcGZpQy0"}, {"max": 0, "min": 94, "name": "a59Ie52R"}, {"max": 52, "min": 32, "name": "maccLw9q"}], [{"max": 35, "min": 35, "name": "LwsxtZgt"}, {"max": 22, "min": 49, "name": "Q91tfg8u"}, {"max": 22, "min": 19, "name": "MSbGdydS"}], [{"max": 15, "min": 43, "name": "7dxgDDSw"}, {"max": 75, "min": 58, "name": "Os97JNIR"}, {"max": 74, "min": 59, "name": "c7oFYECk"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 78, "role_flexing_second": 70}, "maxNumber": 41, "minNumber": 59, "playerMaxNumber": 57, "playerMinNumber": 81}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 26, "min": 32, "name": "U6fgSknE"}, {"max": 81, "min": 100, "name": "5uw8MTDA"}, {"max": 1, "min": 83, "name": "QlW4HJOA"}], [{"max": 33, "min": 33, "name": "rjXNbZBe"}, {"max": 42, "min": 11, "name": "1Dx8TdRU"}, {"max": 9, "min": 37, "name": "FahPxVQU"}], [{"max": 66, "min": 18, "name": "SX6pW4JO"}, {"max": 25, "min": 35, "name": "8zDBSOmK"}, {"max": 85, "min": 99, "name": "VZdNuVyS"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 25, "role_flexing_second": 92}, "duration": 90, "max_number": 67, "min_number": 29, "player_max_number": 1, "player_min_number": 17}, {"combination": {"alliances": [[{"max": 25, "min": 36, "name": "4eE6vBeL"}, {"max": 27, "min": 12, "name": "qUp5T9us"}, {"max": 59, "min": 28, "name": "U1qgonT5"}], [{"max": 47, "min": 95, "name": "peSJJTmV"}, {"max": 42, "min": 41, "name": "i7ayKx8n"}, {"max": 43, "min": 86, "name": "bZY0rHmz"}], [{"max": 59, "min": 55, "name": "2Z1yKMVR"}, {"max": 94, "min": 96, "name": "0TOZaGhH"}, {"max": 47, "min": 53, "name": "BkeHoPFe"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 73, "role_flexing_second": 86}, "duration": 64, "max_number": 29, "min_number": 80, "player_max_number": 57, "player_min_number": 78}, {"combination": {"alliances": [[{"max": 81, "min": 55, "name": "QgKkTTY5"}, {"max": 22, "min": 21, "name": "rAkeo0Oe"}, {"max": 78, "min": 33, "name": "Z7SxyEAl"}], [{"max": 6, "min": 28, "name": "1gisZwtV"}, {"max": 55, "min": 70, "name": "6GHeapC0"}, {"max": 38, "min": 25, "name": "GmqSTUmJ"}], [{"max": 99, "min": 33, "name": "7jKKD3H0"}, {"max": 10, "min": 81, "name": "AgFFmAX4"}, {"max": 35, "min": 26, "name": "RK0hkupY"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 88, "role_flexing_second": 23}, "duration": 19, "max_number": 53, "min_number": 17, "player_max_number": 37, "player_min_number": 40}], "batch_size": 95, "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 31, "flex_flat_step_range": 13, "flex_immunity_count": 95, "flex_range_max": 81, "flex_rate_ms": 97, "flex_step_max": 93, "force_authority_match": true, "initial_step_range": 46, "mmr_max": 40, "mmr_mean": 46, "mmr_min": 8, "mmr_std_dev": 56, "override_mmr_data": false, "use_bucket_mmr": false, "use_flat_flex_step": true}, "flexingRules": [{"attribute": "510KpoZL", "criteria": "I9uPi8OI", "duration": 64, "reference": 0.6455319472764663}, {"attribute": "7SeyQ1gF", "criteria": "5PJ43Ron", "duration": 41, "reference": 0.21504662454337553}, {"attribute": "MXPwiVj0", "criteria": "0hdZsO7X", "duration": 70, "reference": 0.40255562195349814}], "match_options": {"options": [{"name": "xGZaGqcp", "type": "rEfcpilo"}, {"name": "nezic87J", "type": "wjtGZFNY"}, {"name": "Rx0dKUGS", "type": "hsb555Qd"}]}, "matchingRules": [{"attribute": "K7JINrjx", "criteria": "s67VjFEc", "reference": 0.808869041026378}, {"attribute": "jnAjRM6J", "criteria": "7MTv4iwU", "reference": 0.7124918175463235}, {"attribute": "tzdCO4Pl", "criteria": "wpeji7t0", "reference": 0.2458902699764045}], "sort_ticket": {"search_result": "none", "ticket_queue": "distance"}, "sort_tickets": [{"search_result": "largestPartySize", "threshold": 8, "ticket_queue": "none"}, {"search_result": "largestPartySize", "threshold": 90, "ticket_queue": "distance"}, {"search_result": "distance", "threshold": 95, "ticket_queue": "none"}], "sub_game_modes": {}, "ticket_flexing_selection": "oldest", "ticket_flexing_selections": [{"selection": "oldest", "threshold": 98}, {"selection": "newest", "threshold": 26}, {"selection": "pivot", "threshold": 76}], "use_newest_ticket_for_flexing": false}, "sessionQueueTimeoutSeconds": 44, "socialMatchmaking": true, "sub_gamemode_selection": "ticketOrder", "ticket_observability_enable": true, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName 'JK2lrdU6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName 'EiDjf6tD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName 'ZSeBgg0P' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 21}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName '3bRlKrYx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName 'zCSYrXv3' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "O9I2r9jk", "count": 67, "mmrMax": 0.9260943995619234, "mmrMean": 0.42006976668775053, "mmrMin": 0.28863019349308117, "mmrStdDev": 0.6581669788924503}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName '3Di9lAL9' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 43, "party_attributes": {"xCyzvk8p": {}, "p7tBcQO0": {}, "J5KKxCT4": {}}, "party_id": "ZUv1cu5K", "party_members": [{"extra_attributes": {"1LqFISml": {}, "RJSx6BxR": {}, "TbWKpvc9": {}}, "user_id": "9RhxhhZE"}, {"extra_attributes": {"xUfQ437V": {}, "4FJXiQgA": {}, "2nupbIbl": {}}, "user_id": "IuQLtkmS"}, {"extra_attributes": {"MmeZVx2r": {}, "ypQmv5xH": {}, "XjNeuGZH": {}}, "user_id": "ayJpAdfX"}], "ticket_created_at": 37, "ticket_id": "40ESWNGm"}, {"first_ticket_created_at": 20, "party_attributes": {"3e41PrCY": {}, "1gHsYF2b": {}, "aYpmpKcb": {}}, "party_id": "BWn5c3Ss", "party_members": [{"extra_attributes": {"TSpqSQJp": {}, "TiVPwTKK": {}, "tGiQ2Gun": {}}, "user_id": "nTdx84MB"}, {"extra_attributes": {"C0fyv0mo": {}, "JnqkpvjL": {}, "ywnJB1Ty": {}}, "user_id": "mCAI3sYF"}, {"extra_attributes": {"aBWCQ8Qw": {}, "kSnHxZx5": {}, "gBLE9Cng": {}}, "user_id": "UofOXZby"}], "ticket_created_at": 93, "ticket_id": "yjbAlf8Q"}, {"first_ticket_created_at": 5, "party_attributes": {"6n1v1SWf": {}, "iTll7O8p": {}, "wUeq7ER2": {}}, "party_id": "wV1XYqyF", "party_members": [{"extra_attributes": {"kjSLOXgE": {}, "JMyutDFP": {}, "nqkAZ4Du": {}}, "user_id": "qZbrTcQq"}, {"extra_attributes": {"wq2ursG3": {}, "R81L5SgM": {}, "blhtl72G": {}}, "user_id": "1o1QoWZ2"}, {"extra_attributes": {"ATyFqKuW": {}, "ARLi964H": {}, "xO7iyxDn": {}}, "user_id": "ZOkmz0oy"}], "ticket_created_at": 89, "ticket_id": "Qfc9FVf3"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName 'NPWU2CGg' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 48}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName '3JJL4PUF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'lI5ZZZYi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'wy10dfSN' \
    --matchID 'YVbCyxG4' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["eG1lOVfR", "xMcjTn6C", "f998TfSX"], "party_id": "2ja9TTWx", "user_id": "86ft95X8"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'rEk2eQsZ' \
    --matchID 'YZthJT1r' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName '8WMmxeLG' \
    --matchID 'muwnBt3p' \
    --namespace $AB_NAMESPACE \
    --userID 'zKYMWJg5' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName 'EERZhp6y' \
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
    --channelName 'AJb1G0BY' \
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