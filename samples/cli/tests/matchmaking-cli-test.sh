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
    --limit '72' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "R7B0P4um", "description": "ePvB3BWY", "find_match_timeout_seconds": 62, "game_mode": "OVPUN4NH", "joinable": false, "max_delay_ms": 17, "region_expansion_range_ms": 38, "region_expansion_rate_ms": 100, "region_latency_initial_range_ms": 47, "region_latency_max_ms": 75, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 66, "min": 95, "name": "ijgBoMQF"}, {"max": 68, "min": 13, "name": "YyZzYF5n"}, {"max": 7, "min": 90, "name": "2p9lcmHz"}], [{"max": 96, "min": 82, "name": "PGoztm4s"}, {"max": 51, "min": 60, "name": "k7WZGaNU"}, {"max": 73, "min": 64, "name": "FkdEZOEi"}], [{"max": 93, "min": 73, "name": "ohhkN6kV"}, {"max": 0, "min": 87, "name": "QwvlAD5t"}, {"max": 3, "min": 29, "name": "qxtU1Vwc"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 95, "role_flexing_second": 64}, "max_number": 75, "min_number": 32, "player_max_number": 59, "player_min_number": 31}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 86, "min": 31, "name": "Rh83paMT"}, {"max": 5, "min": 15, "name": "mJCIY4qT"}, {"max": 33, "min": 98, "name": "cVp8KcUT"}], [{"max": 94, "min": 92, "name": "wWmHqeeA"}, {"max": 34, "min": 86, "name": "OxUJvOG2"}, {"max": 10, "min": 81, "name": "5ymYFm5h"}], [{"max": 63, "min": 91, "name": "v2sWrqnS"}, {"max": 79, "min": 69, "name": "AIdanVPl"}, {"max": 66, "min": 91, "name": "KaCpsWIE"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 38, "role_flexing_second": 57}, "duration": 0, "max_number": 9, "min_number": 90, "player_max_number": 55, "player_min_number": 50}, {"combination": {"alliances": [[{"max": 71, "min": 31, "name": "vyOePJ0u"}, {"max": 17, "min": 48, "name": "ZFTIndQF"}, {"max": 93, "min": 39, "name": "sioklQpl"}], [{"max": 79, "min": 38, "name": "6KowToja"}, {"max": 41, "min": 42, "name": "tDtrPXLV"}, {"max": 53, "min": 38, "name": "ycGmfqp8"}], [{"max": 91, "min": 4, "name": "wKhEIDTs"}, {"max": 65, "min": 39, "name": "HNMf7gEg"}, {"max": 53, "min": 93, "name": "ekSUN3V9"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 11, "role_flexing_second": 34}, "duration": 9, "max_number": 53, "min_number": 28, "player_max_number": 52, "player_min_number": 42}, {"combination": {"alliances": [[{"max": 62, "min": 18, "name": "GJR7FdCB"}, {"max": 50, "min": 79, "name": "TTDWCOx7"}, {"max": 18, "min": 6, "name": "pzAJUoXE"}], [{"max": 79, "min": 66, "name": "chUOfEcf"}, {"max": 64, "min": 89, "name": "a6s2qazr"}, {"max": 61, "min": 89, "name": "GtQMKefI"}], [{"max": 37, "min": 51, "name": "FadBRiAl"}, {"max": 28, "min": 12, "name": "E0Pm11Vd"}, {"max": 73, "min": 76, "name": "vEagraAb"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 75, "role_flexing_second": 8}, "duration": 50, "max_number": 95, "min_number": 48, "player_max_number": 44, "player_min_number": 99}], "batch_size": 76, "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 28, "flex_flat_step_range": 46, "flex_immunity_count": 90, "flex_range_max": 24, "flex_rate_ms": 34, "flex_step_max": 22, "force_authority_match": true, "initial_step_range": 72, "mmr_max": 88, "mmr_mean": 52, "mmr_min": 52, "mmr_std_dev": 3, "override_mmr_data": false, "use_bucket_mmr": false, "use_flat_flex_step": true}, "flexing_rule": [{"attribute": "u347WSut", "criteria": "6BaWvoMC", "duration": 40, "reference": 0.40851188354655266}, {"attribute": "EImUll0v", "criteria": "YEWZcoOW", "duration": 58, "reference": 0.9487217723727838}, {"attribute": "4TNCPQ4E", "criteria": "zSPCXGjK", "duration": 39, "reference": 0.06473326826451953}], "match_options": {"options": [{"name": "dBBF2Nbl", "type": "SebiOkpZ"}, {"name": "B45h5JKO", "type": "9XjwRCBu"}, {"name": "WZuEmsal", "type": "0Q3y46Yx"}]}, "matching_rule": [{"attribute": "2bX9B2z6", "criteria": "jvFB0K6w", "reference": 0.38871208151603354}, {"attribute": "LAgF0cP4", "criteria": "YN5DyOqc", "reference": 0.3200138848557421}, {"attribute": "8lVDFN8m", "criteria": "OQkkInu6", "reference": 0.850171206543707}], "rebalance_enable": false, "sort_ticket": {"search_result": "largestPartySize", "ticket_queue": "distance"}, "sort_tickets": [{"search_result": "none", "threshold": 93, "ticket_queue": "oldestTicketAge"}, {"search_result": "none", "threshold": 28, "ticket_queue": "none"}, {"search_result": "none", "threshold": 2, "ticket_queue": "largestPartySize"}], "sub_game_modes": {"R7VctSMR": {"alliance": {"combination": {"alliances": [[{"max": 21, "min": 49, "name": "gbRSxJj0"}, {"max": 82, "min": 58, "name": "1GnNmYs8"}, {"max": 39, "min": 53, "name": "PskWqotB"}], [{"max": 45, "min": 8, "name": "ciI76VN4"}, {"max": 68, "min": 56, "name": "lDfyMc0h"}, {"max": 30, "min": 79, "name": "gsmtpxG9"}], [{"max": 31, "min": 14, "name": "gkrcDGqP"}, {"max": 71, "min": 2, "name": "SyeJy4W1"}, {"max": 9, "min": 43, "name": "Y6jPiCoP"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 2, "role_flexing_second": 47}, "max_number": 6, "min_number": 7, "player_max_number": 25, "player_min_number": 0}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 82, "min": 51, "name": "0zYz056v"}, {"max": 70, "min": 24, "name": "S73Wl2TF"}, {"max": 18, "min": 20, "name": "Q95O2K1G"}], [{"max": 98, "min": 20, "name": "toAJT5SD"}, {"max": 10, "min": 27, "name": "xxS6xzQK"}, {"max": 31, "min": 27, "name": "mJ9mdHlU"}], [{"max": 55, "min": 86, "name": "frZrkD5k"}, {"max": 0, "min": 100, "name": "otDL7bIR"}, {"max": 98, "min": 66, "name": "BUTzN6xc"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 74, "role_flexing_second": 7}, "duration": 41, "max_number": 64, "min_number": 17, "player_max_number": 47, "player_min_number": 21}, {"combination": {"alliances": [[{"max": 32, "min": 42, "name": "2kdPlfq2"}, {"max": 88, "min": 79, "name": "4evQci5M"}, {"max": 28, "min": 100, "name": "EnEy0mmU"}], [{"max": 41, "min": 100, "name": "8gpGRxNV"}, {"max": 20, "min": 23, "name": "91qBTUsn"}, {"max": 22, "min": 99, "name": "u6317KnP"}], [{"max": 7, "min": 76, "name": "GEvMdE2D"}, {"max": 26, "min": 24, "name": "IZBrlvY8"}, {"max": 36, "min": 46, "name": "wS8rOth4"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 0, "role_flexing_second": 93}, "duration": 77, "max_number": 46, "min_number": 56, "player_max_number": 62, "player_min_number": 80}, {"combination": {"alliances": [[{"max": 83, "min": 57, "name": "zMMUFJsh"}, {"max": 10, "min": 29, "name": "jXqaEI2Y"}, {"max": 46, "min": 18, "name": "WQtVDyx6"}], [{"max": 92, "min": 40, "name": "dFV9tKeI"}, {"max": 84, "min": 20, "name": "tXpVJ7EF"}, {"max": 0, "min": 11, "name": "OhvLHkoa"}], [{"max": 14, "min": 7, "name": "h38P37un"}, {"max": 19, "min": 83, "name": "dylhxKhb"}, {"max": 81, "min": 42, "name": "AobG8rEF"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 17, "role_flexing_second": 6}, "duration": 93, "max_number": 0, "min_number": 51, "player_max_number": 0, "player_min_number": 91}], "name": "nCdQnyLo"}, "JGITZb6R": {"alliance": {"combination": {"alliances": [[{"max": 53, "min": 77, "name": "A2qPsBZk"}, {"max": 40, "min": 0, "name": "2R0fWg9x"}, {"max": 25, "min": 30, "name": "IF2NAHz3"}], [{"max": 40, "min": 64, "name": "bIB6W54q"}, {"max": 47, "min": 53, "name": "4o9pOSor"}, {"max": 45, "min": 62, "name": "8k8S6OuF"}], [{"max": 75, "min": 30, "name": "L29xL9ew"}, {"max": 79, "min": 57, "name": "fNiFN4PX"}, {"max": 13, "min": 53, "name": "6DfLU4GJ"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 26, "role_flexing_second": 73}, "max_number": 39, "min_number": 29, "player_max_number": 90, "player_min_number": 17}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 17, "min": 89, "name": "vvyu3UkR"}, {"max": 9, "min": 18, "name": "4hDEgsYC"}, {"max": 45, "min": 18, "name": "CKT1zozc"}], [{"max": 42, "min": 97, "name": "MXfQJehH"}, {"max": 84, "min": 64, "name": "fUGi4aG9"}, {"max": 92, "min": 9, "name": "l8FcByFx"}], [{"max": 39, "min": 42, "name": "W55o1Xax"}, {"max": 79, "min": 30, "name": "Iae3uTbT"}, {"max": 59, "min": 2, "name": "0LONSXG5"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 86, "role_flexing_second": 29}, "duration": 29, "max_number": 15, "min_number": 32, "player_max_number": 30, "player_min_number": 53}, {"combination": {"alliances": [[{"max": 30, "min": 91, "name": "6JvVYi87"}, {"max": 95, "min": 87, "name": "gllby2bU"}, {"max": 48, "min": 95, "name": "gMpBGj1J"}], [{"max": 94, "min": 5, "name": "AO7yeaSn"}, {"max": 17, "min": 99, "name": "t7n4IVTu"}, {"max": 72, "min": 2, "name": "TV15jVOP"}], [{"max": 1, "min": 14, "name": "OLRqNNVh"}, {"max": 81, "min": 66, "name": "XdvyCurd"}, {"max": 21, "min": 40, "name": "SlWBELsU"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 73, "role_flexing_second": 13}, "duration": 91, "max_number": 58, "min_number": 27, "player_max_number": 44, "player_min_number": 62}, {"combination": {"alliances": [[{"max": 57, "min": 6, "name": "1jxxcZFn"}, {"max": 11, "min": 19, "name": "45naksfJ"}, {"max": 82, "min": 68, "name": "1Scog3Hl"}], [{"max": 57, "min": 73, "name": "WG6HmiRm"}, {"max": 76, "min": 61, "name": "Eh1j3tY6"}, {"max": 36, "min": 45, "name": "2zNyGfLT"}], [{"max": 44, "min": 64, "name": "45t6I2O5"}, {"max": 78, "min": 50, "name": "oaqsUzIs"}, {"max": 52, "min": 13, "name": "SHb6PmNK"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 81, "role_flexing_second": 62}, "duration": 52, "max_number": 77, "min_number": 66, "player_max_number": 66, "player_min_number": 51}], "name": "efADhBkk"}, "GT9MFx9y": {"alliance": {"combination": {"alliances": [[{"max": 74, "min": 6, "name": "54dPhswV"}, {"max": 10, "min": 81, "name": "hJBGl8H8"}, {"max": 21, "min": 6, "name": "dbtmI7xr"}], [{"max": 70, "min": 58, "name": "g9CYAGPz"}, {"max": 47, "min": 99, "name": "DX3mV6If"}, {"max": 38, "min": 45, "name": "3JpfXFYa"}], [{"max": 12, "min": 73, "name": "BZd39gdp"}, {"max": 78, "min": 40, "name": "5eXz6jJr"}, {"max": 67, "min": 2, "name": "IeYjacIw"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 6, "role_flexing_second": 31}, "max_number": 5, "min_number": 58, "player_max_number": 52, "player_min_number": 87}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 55, "min": 44, "name": "ex1FL9ZH"}, {"max": 56, "min": 85, "name": "bOWmLONA"}, {"max": 6, "min": 76, "name": "arboIKDR"}], [{"max": 24, "min": 20, "name": "FpxIaXcv"}, {"max": 73, "min": 37, "name": "n0mJQ2ZZ"}, {"max": 21, "min": 57, "name": "Q7zgd1tD"}], [{"max": 24, "min": 83, "name": "gcTMMWTj"}, {"max": 2, "min": 52, "name": "aWIKZHS7"}, {"max": 76, "min": 27, "name": "Lxxf2hXT"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 22, "role_flexing_second": 54}, "duration": 88, "max_number": 30, "min_number": 70, "player_max_number": 0, "player_min_number": 78}, {"combination": {"alliances": [[{"max": 21, "min": 96, "name": "pUU4nQGG"}, {"max": 2, "min": 57, "name": "tMfKjJIB"}, {"max": 98, "min": 28, "name": "Pko1WFN1"}], [{"max": 9, "min": 1, "name": "6Rul8N92"}, {"max": 27, "min": 75, "name": "dkKWkeGX"}, {"max": 42, "min": 26, "name": "FI3jMeIx"}], [{"max": 3, "min": 24, "name": "9ZqxZbpA"}, {"max": 44, "min": 29, "name": "wqnPwnMR"}, {"max": 44, "min": 41, "name": "2wm9MFZy"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 70, "role_flexing_second": 89}, "duration": 1, "max_number": 65, "min_number": 32, "player_max_number": 40, "player_min_number": 52}, {"combination": {"alliances": [[{"max": 47, "min": 57, "name": "jTHn4AVd"}, {"max": 74, "min": 24, "name": "Op18ueJ5"}, {"max": 90, "min": 35, "name": "yTtPEr9z"}], [{"max": 4, "min": 96, "name": "bqkTkyf6"}, {"max": 18, "min": 85, "name": "INVQTgCy"}, {"max": 79, "min": 29, "name": "vuWIFhil"}], [{"max": 87, "min": 15, "name": "k5tEGZ9E"}, {"max": 64, "min": 4, "name": "WQPwhQwA"}, {"max": 28, "min": 3, "name": "1Yvl9L4C"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 41, "role_flexing_second": 68}, "duration": 88, "max_number": 43, "min_number": 48, "player_max_number": 16, "player_min_number": 72}], "name": "NNUffBBN"}}, "ticket_flexing_selection": "pivot", "ticket_flexing_selections": [{"selection": "newest", "threshold": 1}, {"selection": "newest", "threshold": 76}, {"selection": "oldest", "threshold": 77}], "use_newest_ticket_for_flexing": false}, "session_queue_timeout_seconds": 100, "social_matchmaking": true, "ticket_observability_enable": true, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'lyUniGpn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel '2uKapkAz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "1iOVvh1n", "players": [{"results": [{"attribute": "NxnFRnDd", "value": 0.293948907721747}, {"attribute": "R5BNnNQD", "value": 0.6793407321124362}, {"attribute": "8RAXe8lI", "value": 0.6624985443384518}], "user_id": "a5Z078Pq"}, {"results": [{"attribute": "THi5XIw5", "value": 0.28865026647627423}, {"attribute": "nhuswmoa", "value": 0.8567652000515249}, {"attribute": "CLgMSrsl", "value": 0.27644251071903403}], "user_id": "3ir3qkvG"}, {"results": [{"attribute": "oALtOOK4", "value": 0.8311885049376038}, {"attribute": "D5DGYQDx", "value": 0.7964021881423813}, {"attribute": "ketiTBF6", "value": 0.940765815415976}], "user_id": "mGgBzdgx"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "iXqDfOHV"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "tmnjctMP", "client_version": "GmlfAPJZ", "deployment": "Sp8Y4fwW", "error_code": 11, "error_message": "0w3vQE5G", "game_mode": "66MlnpAo", "is_mock": "YG5D3rvl", "joinable": false, "match_id": "1cT32B5Q", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 20, "party_attributes": {"gwy2yjwj": {}, "gkx6688Y": {}, "6dxn6vSw": {}}, "party_id": "iaqMtCLh", "party_members": [{"extra_attributes": {"4ASLMChe": {}, "9CtAHb4O": {}, "GA1Zh4Fj": {}}, "user_id": "sMPK7Aro"}, {"extra_attributes": {"pVBrveXU": {}, "xBiSwUYD": {}, "JwVSOl9v": {}}, "user_id": "hWYOt3ck"}, {"extra_attributes": {"lPfxW0GN": {}, "0c0pd4cu": {}, "8lVhzLSn": {}}, "user_id": "WjlLaalr"}], "ticket_created_at": 87, "ticket_id": "S9SbJoIt"}, {"first_ticket_created_at": 12, "party_attributes": {"UeFqA0ZX": {}, "Vgb6DzNh": {}, "FP4CRilt": {}}, "party_id": "oHHkdJIw", "party_members": [{"extra_attributes": {"p8HX78cy": {}, "QCUauVMe": {}, "xQp5B5Kd": {}}, "user_id": "sZDtswsP"}, {"extra_attributes": {"ByIR8oZF": {}, "HyN7ZqGp": {}, "9pu68Xgm": {}}, "user_id": "V8rZwdcd"}, {"extra_attributes": {"5198ro7O": {}, "MMoDhcIM": {}, "7MNylAua": {}}, "user_id": "iHgdRFml"}], "ticket_created_at": 39, "ticket_id": "kZ4QFvxu"}, {"first_ticket_created_at": 49, "party_attributes": {"u2nIN4eg": {}, "wAYxX0AA": {}, "onLtlpbh": {}}, "party_id": "spfUGv3N", "party_members": [{"extra_attributes": {"GsIaD56L": {}, "OdBRLYLo": {}, "E2Tdjvui": {}}, "user_id": "ve81Pa0k"}, {"extra_attributes": {"qQLpbZSR": {}, "mLnkQgke": {}, "kLaOF1TE": {}}, "user_id": "SmisoHmg"}, {"extra_attributes": {"PO6tF8zD": {}, "qP2aZX1t": {}, "FZYUUP4X": {}}, "user_id": "oqFTYJgv"}], "ticket_created_at": 59, "ticket_id": "4thDDotn"}]}, {"matching_parties": [{"first_ticket_created_at": 18, "party_attributes": {"Gsht7Zkz": {}, "A6LSLR5O": {}, "a0AYtJjk": {}}, "party_id": "04ikfgAa", "party_members": [{"extra_attributes": {"4HtsdC5J": {}, "97FmrdFo": {}, "WIaT1cJa": {}}, "user_id": "vrck6DY4"}, {"extra_attributes": {"ENTHofVa": {}, "3etYeHsN": {}, "13sTCHRT": {}}, "user_id": "nK0cQkHF"}, {"extra_attributes": {"ONQr2uhV": {}, "daIT5rYY": {}, "iCvO2lHZ": {}}, "user_id": "xUQpLu7q"}], "ticket_created_at": 47, "ticket_id": "mNg3rZ98"}, {"first_ticket_created_at": 77, "party_attributes": {"sTshu6U9": {}, "GMfmPrln": {}, "MlPK7Kqc": {}}, "party_id": "3NVDs80b", "party_members": [{"extra_attributes": {"TmSM72cB": {}, "ZbIEvHNs": {}, "kRbvnyIG": {}}, "user_id": "NrHzPis4"}, {"extra_attributes": {"BNTF5tb4": {}, "TRwxeuIP": {}, "q705bm4B": {}}, "user_id": "SDfpjo1d"}, {"extra_attributes": {"H1gOTBDR": {}, "hJWjfGRY": {}, "nHmrPFCB": {}}, "user_id": "fPFnj88X"}], "ticket_created_at": 59, "ticket_id": "25KuGFsL"}, {"first_ticket_created_at": 49, "party_attributes": {"jm01yggb": {}, "FJb8U9lS": {}, "x8FbNIrm": {}}, "party_id": "eDmzoBeG", "party_members": [{"extra_attributes": {"3d7bESZm": {}, "J70dF6mA": {}, "r4YyygIv": {}}, "user_id": "fnYEuynH"}, {"extra_attributes": {"IYfc3LCs": {}, "kbu6080F": {}, "gOcRfgNm": {}}, "user_id": "tlFjuLD0"}, {"extra_attributes": {"oSDnPQw5": {}, "x58DRLRv": {}, "XWP84R81": {}}, "user_id": "zmX65t87"}], "ticket_created_at": 71, "ticket_id": "z1g1Q6gV"}]}, {"matching_parties": [{"first_ticket_created_at": 72, "party_attributes": {"mR4eipsM": {}, "IWqUWS0a": {}, "CGV04GNu": {}}, "party_id": "pUsqqljd", "party_members": [{"extra_attributes": {"NZ54tGE8": {}, "Dyg2qHqs": {}, "QXXeTOoL": {}}, "user_id": "VjOcxo9Z"}, {"extra_attributes": {"aNZIaHSX": {}, "YtkByIKz": {}, "55giTJ6o": {}}, "user_id": "m5IUETFr"}, {"extra_attributes": {"HtVKSxDP": {}, "r4qfxIww": {}, "S4Vc2t85": {}}, "user_id": "Nw54Sq41"}], "ticket_created_at": 97, "ticket_id": "rDyLNoI2"}, {"first_ticket_created_at": 30, "party_attributes": {"gwGMmzk6": {}, "wiJAgBoK": {}, "qpyccQnb": {}}, "party_id": "6lukNkfd", "party_members": [{"extra_attributes": {"FGPAoUzY": {}, "JSfe6j9F": {}, "4UJ8NSwk": {}}, "user_id": "UAZGbYB8"}, {"extra_attributes": {"2a86ToAA": {}, "hnfaINNd": {}, "OLujessQ": {}}, "user_id": "Ctp07mzK"}, {"extra_attributes": {"2GTFAFT9": {}, "yxRbLsgP": {}, "JKOHpGM5": {}}, "user_id": "9E3jx5gj"}], "ticket_created_at": 85, "ticket_id": "NdbEffTT"}, {"first_ticket_created_at": 51, "party_attributes": {"bqsygUeH": {}, "EOl5oE7x": {}, "c60d15fO": {}}, "party_id": "manapmPJ", "party_members": [{"extra_attributes": {"4adjSzG4": {}, "kGZYYSZK": {}, "AmjahRxI": {}}, "user_id": "a0m65U2a"}, {"extra_attributes": {"O3Kmfgtb": {}, "mJ94NsgV": {}, "HZO6fZHy": {}}, "user_id": "zvObTNkj"}, {"extra_attributes": {"vd0qvi9v": {}, "5v71wWsY": {}, "mX23lIlK": {}}, "user_id": "Bpl2oGWG"}], "ticket_created_at": 94, "ticket_id": "DvlavXpB"}]}], "namespace": "Idmhuvn1", "party_attributes": {"5FaxeYXG": {}, "gi3YPROB": {}, "0ytTPWzq": {}}, "party_id": "HXImTeHO", "queued_at": 27, "region": "Y9pGLhG3", "server_name": "zksKmX9d", "status": "TJxZNntx", "ticket_id": "Co8cM3Fe", "ticket_ids": ["QT1A0Zjv", "9Rk2bZNn", "Ofg9grFG"], "updated_at": "1995-08-25T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "OFVfPlqq"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'pmjAK7zM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 89, "userID": "WHWSHHz4", "weight": 0.6481823573921811}' \
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
    --matchIDs 'V2AZCZxX' \
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
    --strategy '9XmMXgVX' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'vnOOrXWV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'K9uCGKsF' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "6ZUcHgSI", "description": "vt0lNQ8q", "findMatchTimeoutSeconds": 84, "joinable": true, "max_delay_ms": 80, "region_expansion_range_ms": 26, "region_expansion_rate_ms": 53, "region_latency_initial_range_ms": 16, "region_latency_max_ms": 5, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 90, "min": 11, "name": "l8lS8zhs"}, {"max": 55, "min": 76, "name": "WvdBC0iQ"}, {"max": 81, "min": 90, "name": "Cra1dLWC"}], [{"max": 94, "min": 25, "name": "O38Mrnij"}, {"max": 86, "min": 45, "name": "PRNxelrX"}, {"max": 30, "min": 33, "name": "lqiTRHRf"}], [{"max": 74, "min": 18, "name": "ncsO21LO"}, {"max": 70, "min": 9, "name": "71kwZkup"}, {"max": 60, "min": 67, "name": "NwvhplEL"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 72, "role_flexing_second": 35}, "maxNumber": 96, "minNumber": 38, "playerMaxNumber": 31, "playerMinNumber": 30}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 69, "min": 22, "name": "BL4wXg6i"}, {"max": 93, "min": 65, "name": "FIkJiR7D"}, {"max": 28, "min": 60, "name": "k318f6C3"}], [{"max": 61, "min": 36, "name": "dg5Ck0Kt"}, {"max": 95, "min": 61, "name": "g7pFK7ZG"}, {"max": 53, "min": 73, "name": "HqyrqUcM"}], [{"max": 86, "min": 37, "name": "6S74jCma"}, {"max": 24, "min": 36, "name": "I1vLEarA"}, {"max": 34, "min": 8, "name": "zAMaryMs"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 55, "role_flexing_second": 91}, "duration": 37, "max_number": 91, "min_number": 86, "player_max_number": 21, "player_min_number": 11}, {"combination": {"alliances": [[{"max": 11, "min": 85, "name": "kgBpVqW1"}, {"max": 26, "min": 44, "name": "Gv7pBDWQ"}, {"max": 46, "min": 4, "name": "vdGa0OwK"}], [{"max": 79, "min": 22, "name": "ohVJXCzP"}, {"max": 67, "min": 14, "name": "vZbuCbqL"}, {"max": 9, "min": 84, "name": "0RswrWwx"}], [{"max": 72, "min": 78, "name": "tdEI069i"}, {"max": 49, "min": 77, "name": "xyOuCHb5"}, {"max": 24, "min": 40, "name": "6jTp5ujW"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 15, "role_flexing_second": 46}, "duration": 42, "max_number": 42, "min_number": 33, "player_max_number": 79, "player_min_number": 6}, {"combination": {"alliances": [[{"max": 12, "min": 27, "name": "69pOBjKq"}, {"max": 7, "min": 14, "name": "IWV8BBpQ"}, {"max": 66, "min": 91, "name": "x8p2SEid"}], [{"max": 4, "min": 83, "name": "ksGC9YVd"}, {"max": 9, "min": 64, "name": "TlbWgQXJ"}, {"max": 80, "min": 33, "name": "CbVR3ymN"}], [{"max": 77, "min": 97, "name": "1ftjKzMu"}, {"max": 7, "min": 40, "name": "MSnwEZnR"}, {"max": 4, "min": 77, "name": "ggaRipIO"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 40, "role_flexing_second": 3}, "duration": 92, "max_number": 64, "min_number": 20, "player_max_number": 36, "player_min_number": 9}], "batch_size": 59, "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 69, "flex_flat_step_range": 99, "flex_immunity_count": 73, "flex_range_max": 36, "flex_rate_ms": 32, "flex_step_max": 53, "force_authority_match": true, "initial_step_range": 35, "mmr_max": 30, "mmr_mean": 43, "mmr_min": 13, "mmr_std_dev": 30, "override_mmr_data": true, "use_bucket_mmr": false, "use_flat_flex_step": false}, "flexingRules": [{"attribute": "8NpVRLFM", "criteria": "EzpSgTaj", "duration": 84, "reference": 0.7178527049586411}, {"attribute": "nISVjlK1", "criteria": "0WutDQ4s", "duration": 94, "reference": 0.20989456018225083}, {"attribute": "iVIxTy55", "criteria": "xCOw847z", "duration": 66, "reference": 0.037154284780270164}], "match_options": {"options": [{"name": "x3yZ2Xtg", "type": "5Fi9RNby"}, {"name": "fLwezjcc", "type": "yL268AmQ"}, {"name": "IKEY5SaO", "type": "bMdyetDc"}]}, "matchingRules": [{"attribute": "nYza4Idp", "criteria": "tfcpNAcS", "reference": 0.6934657554736893}, {"attribute": "hDtsbXfI", "criteria": "hm0sgp6u", "reference": 0.4148749297330896}, {"attribute": "2mZ1fwqj", "criteria": "PXtbSU49", "reference": 0.5930956235028373}], "sort_ticket": {"search_result": "random", "ticket_queue": "largestPartySize"}, "sort_tickets": [{"search_result": "distance", "threshold": 23, "ticket_queue": "oldestTicketAge"}, {"search_result": "none", "threshold": 68, "ticket_queue": "oldestTicketAge"}, {"search_result": "distance", "threshold": 98, "ticket_queue": "distance"}], "sub_game_modes": {}, "ticket_flexing_selection": "newest", "ticket_flexing_selections": [{"selection": "pivot", "threshold": 4}, {"selection": "newest", "threshold": 18}, {"selection": "random", "threshold": 8}], "use_newest_ticket_for_flexing": true}, "sessionQueueTimeoutSeconds": 0, "socialMatchmaking": true, "ticket_observability_enable": true, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName 'uhSiOMLc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName 'mh9b16Tn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName 'WdLP9dHi' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 12}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName '2JCCWKal' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName 'Q8iLOkNt' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "YHOBaBeM", "count": 82, "mmrMax": 0.9426348920414588, "mmrMean": 0.2638351886790168, "mmrMin": 0.007585871659901877, "mmrStdDev": 0.35651349537505594}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName 'bS4xXpOD' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 8, "party_attributes": {"zNTG9VHT": {}, "D3HJZQRu": {}, "3DEZcctc": {}}, "party_id": "vjWaGJ75", "party_members": [{"extra_attributes": {"dIDJaHqv": {}, "JMOjQaOk": {}, "7sWrD8RP": {}}, "user_id": "wXKvHbLA"}, {"extra_attributes": {"rO4uOiRR": {}, "oU5tBUZq": {}, "trDt6qbl": {}}, "user_id": "soWCqcnN"}, {"extra_attributes": {"oBqxWY10": {}, "pMwexqz0": {}, "Pj3Rs1Du": {}}, "user_id": "JHjPCL8k"}], "ticket_created_at": 51, "ticket_id": "pXGGOKH9"}, {"first_ticket_created_at": 3, "party_attributes": {"IBcFp6xl": {}, "WQDqiPvZ": {}, "1aU6BrTO": {}}, "party_id": "DeO0asSJ", "party_members": [{"extra_attributes": {"QNMduZZd": {}, "lYUS13bG": {}, "UE4qiMtx": {}}, "user_id": "OUAU4vEz"}, {"extra_attributes": {"KZo5Kof0": {}, "ZNsZ5BMw": {}, "kmd5BX1Z": {}}, "user_id": "d5z0czid"}, {"extra_attributes": {"GV9dNclK": {}, "DhHwbaBm": {}, "HrjCGPYU": {}}, "user_id": "ytmwqWwh"}], "ticket_created_at": 62, "ticket_id": "rRy3mE1n"}, {"first_ticket_created_at": 69, "party_attributes": {"CkDfVNSw": {}, "2Mgz3im4": {}, "NA7sDQMN": {}}, "party_id": "pwk9rCQZ", "party_members": [{"extra_attributes": {"KD9CaYnd": {}, "hgxuaIdC": {}, "s67oWCnJ": {}}, "user_id": "vQTOIBLo"}, {"extra_attributes": {"7E6rOCrG": {}, "XAUH59Up": {}, "wlMLqVvA": {}}, "user_id": "pIBhXgzX"}, {"extra_attributes": {"r0Ag85SS": {}, "uN2bsqFl": {}, "1RvGoAtr": {}}, "user_id": "CKjZ0QCt"}], "ticket_created_at": 37, "ticket_id": "qpnZ3kgW"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName 'LH7ES2j8' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 61}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'dpl92XW4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName '395sqtlG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'qCJNZAhH' \
    --matchID 'vTIqAHXN' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["xbqkTjgp", "u9ubXWSN", "odNregT5"], "party_id": "6jbjufSh", "user_id": "QGVD5Cmj"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'A5xB6XD9' \
    --matchID 'A8nSnFl4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'MBOR7PFN' \
    --matchID 'v8HKDyGm' \
    --namespace $AB_NAMESPACE \
    --userID '76MJRrej' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName 'eXkjbf3o' \
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
    --channelName 'oEusG0ET' \
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