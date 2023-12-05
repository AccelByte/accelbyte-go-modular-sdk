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
    --limit '70' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "1HiX6HpD", "description": "cGG6eAp5", "find_match_timeout_seconds": 3, "game_mode": "CKB1CMZC", "joinable": true, "max_delay_ms": 39, "region_expansion_range_ms": 57, "region_expansion_rate_ms": 10, "region_latency_initial_range_ms": 64, "region_latency_max_ms": 49, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 68, "min": 11, "name": "AmcWV1TS"}, {"max": 88, "min": 96, "name": "9SiLun3N"}, {"max": 20, "min": 3, "name": "oasji2w9"}], [{"max": 11, "min": 19, "name": "SgZA1lO1"}, {"max": 61, "min": 36, "name": "LYrHbbNQ"}, {"max": 66, "min": 10, "name": "GB5OE6i4"}], [{"max": 48, "min": 21, "name": "8g83tg63"}, {"max": 11, "min": 18, "name": "r5F0WwNX"}, {"max": 62, "min": 3, "name": "6ovR4sSs"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 42, "role_flexing_second": 64}, "max_number": 16, "min_number": 88, "player_max_number": 87, "player_min_number": 96}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 75, "min": 36, "name": "GUDQi1lr"}, {"max": 29, "min": 49, "name": "2VYkdn3c"}, {"max": 23, "min": 39, "name": "3slzXGYj"}], [{"max": 50, "min": 75, "name": "4MASMpfW"}, {"max": 31, "min": 24, "name": "PzYtzCg6"}, {"max": 5, "min": 46, "name": "1a4D4Ljr"}], [{"max": 55, "min": 59, "name": "3OquZ19G"}, {"max": 66, "min": 15, "name": "bYcXILGr"}, {"max": 31, "min": 92, "name": "512lUamB"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 21, "role_flexing_second": 56}, "duration": 22, "max_number": 15, "min_number": 36, "player_max_number": 6, "player_min_number": 14}, {"combination": {"alliances": [[{"max": 63, "min": 36, "name": "XnzWfx9M"}, {"max": 88, "min": 30, "name": "pQeMpBiQ"}, {"max": 64, "min": 73, "name": "HicHi7l0"}], [{"max": 66, "min": 18, "name": "1KbJbJ0L"}, {"max": 81, "min": 7, "name": "yr3FkakX"}, {"max": 49, "min": 94, "name": "8a2gqZ5v"}], [{"max": 26, "min": 12, "name": "AOYDraW8"}, {"max": 66, "min": 14, "name": "2eP0ZhRK"}, {"max": 20, "min": 12, "name": "CaOtO6Zi"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 80, "role_flexing_second": 78}, "duration": 76, "max_number": 89, "min_number": 9, "player_max_number": 17, "player_min_number": 49}, {"combination": {"alliances": [[{"max": 96, "min": 86, "name": "urt9cCcy"}, {"max": 26, "min": 41, "name": "bRf2nbvF"}, {"max": 77, "min": 32, "name": "Ryj3DAha"}], [{"max": 76, "min": 30, "name": "KXORLtdI"}, {"max": 22, "min": 2, "name": "Qm8PUpAQ"}, {"max": 38, "min": 17, "name": "cxyhtgeZ"}], [{"max": 22, "min": 60, "name": "g6rYtOih"}, {"max": 91, "min": 44, "name": "XHVLd2Sq"}, {"max": 20, "min": 93, "name": "LJSP7PYj"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 40, "role_flexing_second": 94}, "duration": 62, "max_number": 87, "min_number": 29, "player_max_number": 19, "player_min_number": 78}], "batch_size": 86, "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 77, "flex_flat_step_range": 36, "flex_immunity_count": 23, "flex_range_max": 37, "flex_rate_ms": 6, "flex_step_max": 48, "force_authority_match": true, "initial_step_range": 88, "mmr_max": 27, "mmr_mean": 81, "mmr_min": 73, "mmr_std_dev": 52, "override_mmr_data": false, "use_bucket_mmr": true, "use_flat_flex_step": true}, "flexing_rule": [{"attribute": "a3XyGky0", "criteria": "wjQ64cx2", "duration": 58, "reference": 0.7738581848678898}, {"attribute": "nz3u4BS4", "criteria": "suZb8tLB", "duration": 12, "reference": 0.6706410564657145}, {"attribute": "2MSe64az", "criteria": "RgXroxU6", "duration": 17, "reference": 0.29389057658774065}], "match_options": {"options": [{"name": "YwM3YfDP", "type": "GuCw7tSi"}, {"name": "MhrKCd5a", "type": "vFNquQsI"}, {"name": "1e9KiKp4", "type": "VxC6wJ3l"}]}, "matching_rule": [{"attribute": "FqVJ3KpE", "criteria": "biWNTRPb", "reference": 0.3296541515474313}, {"attribute": "wEzmeQq6", "criteria": "yfQCPu88", "reference": 0.6478238724235291}, {"attribute": "4jGRZPFQ", "criteria": "wA03Z1uo", "reference": 0.09429312295827841}], "rebalance_enable": false, "sort_ticket": {"search_result": "none", "ticket_queue": "none"}, "sort_tickets": [{"search_result": "largestPartySize", "threshold": 97, "ticket_queue": "distance"}, {"search_result": "oldestTicketAge", "threshold": 33, "ticket_queue": "oldestTicketAge"}, {"search_result": "none", "threshold": 56, "ticket_queue": "largestPartySize"}], "sub_game_modes": {"5J03TExk": {"alliance": {"combination": {"alliances": [[{"max": 82, "min": 12, "name": "Rq0MXAfG"}, {"max": 73, "min": 84, "name": "vatmbePp"}, {"max": 47, "min": 15, "name": "mhLMZMFo"}], [{"max": 74, "min": 18, "name": "JyjZquoc"}, {"max": 63, "min": 55, "name": "FWvqMP6f"}, {"max": 29, "min": 72, "name": "bjIJOhvo"}], [{"max": 90, "min": 22, "name": "FseB1V3i"}, {"max": 34, "min": 24, "name": "FYmkcMZz"}, {"max": 31, "min": 95, "name": "CY5gJPbH"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 47, "role_flexing_second": 18}, "max_number": 87, "min_number": 68, "player_max_number": 5, "player_min_number": 14}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 55, "min": 24, "name": "j6zHsiWP"}, {"max": 82, "min": 52, "name": "6ZFaVd3r"}, {"max": 80, "min": 28, "name": "JXQMeBRY"}], [{"max": 12, "min": 52, "name": "dSOIGe5n"}, {"max": 93, "min": 0, "name": "MnOMFzmQ"}, {"max": 36, "min": 4, "name": "Dxo8TkT6"}], [{"max": 31, "min": 90, "name": "qxfgRHBQ"}, {"max": 32, "min": 57, "name": "Z4MjBl3M"}, {"max": 44, "min": 51, "name": "LMsjHlVD"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 52, "role_flexing_second": 24}, "duration": 11, "max_number": 79, "min_number": 85, "player_max_number": 22, "player_min_number": 79}, {"combination": {"alliances": [[{"max": 54, "min": 69, "name": "dt3RG5X1"}, {"max": 52, "min": 74, "name": "zFDvxRxO"}, {"max": 91, "min": 8, "name": "3Rpkth8p"}], [{"max": 74, "min": 77, "name": "RvbJA6pX"}, {"max": 70, "min": 79, "name": "oG9DB6Kn"}, {"max": 60, "min": 75, "name": "CC5bOT5N"}], [{"max": 40, "min": 58, "name": "ptLOn49x"}, {"max": 26, "min": 94, "name": "FVamZ11r"}, {"max": 43, "min": 47, "name": "ZGRa7D0k"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 72, "role_flexing_second": 63}, "duration": 24, "max_number": 73, "min_number": 85, "player_max_number": 98, "player_min_number": 63}, {"combination": {"alliances": [[{"max": 51, "min": 10, "name": "TV1BjrOu"}, {"max": 44, "min": 59, "name": "9ETZrcYE"}, {"max": 80, "min": 64, "name": "Fv885d7U"}], [{"max": 27, "min": 68, "name": "HoiGg3uK"}, {"max": 28, "min": 85, "name": "1dUbDonQ"}, {"max": 49, "min": 91, "name": "3b0i9tDj"}], [{"max": 97, "min": 2, "name": "PRVzxJ1H"}, {"max": 4, "min": 43, "name": "V4fTLWnY"}, {"max": 72, "min": 62, "name": "N2NGPC6L"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 37, "role_flexing_second": 82}, "duration": 87, "max_number": 89, "min_number": 61, "player_max_number": 66, "player_min_number": 52}], "name": "laKvUexI"}, "ClAjQvNL": {"alliance": {"combination": {"alliances": [[{"max": 47, "min": 10, "name": "zBejQqBE"}, {"max": 91, "min": 81, "name": "8dsKnziA"}, {"max": 50, "min": 70, "name": "y9k9eayr"}], [{"max": 22, "min": 94, "name": "z8SIz1kC"}, {"max": 70, "min": 85, "name": "rbh9aZGB"}, {"max": 76, "min": 86, "name": "8mFowQNx"}], [{"max": 99, "min": 39, "name": "hsqpBGxL"}, {"max": 80, "min": 88, "name": "fclenwLp"}, {"max": 90, "min": 45, "name": "DZX5029B"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 93, "role_flexing_second": 19}, "max_number": 29, "min_number": 58, "player_max_number": 4, "player_min_number": 23}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 2, "min": 52, "name": "z6p8z7U0"}, {"max": 30, "min": 51, "name": "Jrp1MrwP"}, {"max": 96, "min": 61, "name": "6qlKFVYz"}], [{"max": 34, "min": 65, "name": "M5IhYcdE"}, {"max": 81, "min": 66, "name": "NQigm1UM"}, {"max": 80, "min": 72, "name": "8QoAFZGk"}], [{"max": 58, "min": 96, "name": "aJct8nts"}, {"max": 44, "min": 9, "name": "Kp4XvANm"}, {"max": 51, "min": 16, "name": "upIEeuRO"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 98, "role_flexing_second": 85}, "duration": 89, "max_number": 40, "min_number": 27, "player_max_number": 49, "player_min_number": 83}, {"combination": {"alliances": [[{"max": 52, "min": 8, "name": "mQrRi85B"}, {"max": 95, "min": 39, "name": "nbpIAQZK"}, {"max": 83, "min": 0, "name": "HyraTsUd"}], [{"max": 46, "min": 66, "name": "BZfKZhxl"}, {"max": 11, "min": 17, "name": "UcCeN5iX"}, {"max": 42, "min": 0, "name": "uWp0qg35"}], [{"max": 47, "min": 62, "name": "gD4udX8w"}, {"max": 62, "min": 56, "name": "hgR53BE8"}, {"max": 91, "min": 96, "name": "lwvFoRNR"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 76, "role_flexing_second": 35}, "duration": 10, "max_number": 25, "min_number": 71, "player_max_number": 60, "player_min_number": 45}, {"combination": {"alliances": [[{"max": 47, "min": 4, "name": "8EXmm5mZ"}, {"max": 77, "min": 83, "name": "C38hSEwW"}, {"max": 87, "min": 39, "name": "rrzbyg2p"}], [{"max": 69, "min": 20, "name": "Btn6pvQC"}, {"max": 65, "min": 52, "name": "H2ZU9vbd"}, {"max": 53, "min": 0, "name": "m9IvpG8M"}], [{"max": 8, "min": 80, "name": "kGTPvTl5"}, {"max": 3, "min": 49, "name": "cv3GN686"}, {"max": 41, "min": 69, "name": "gfeiujVg"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 29, "role_flexing_second": 81}, "duration": 77, "max_number": 34, "min_number": 0, "player_max_number": 63, "player_min_number": 38}], "name": "FW0XaqDM"}, "Ky6IRVNL": {"alliance": {"combination": {"alliances": [[{"max": 70, "min": 85, "name": "oKqAtrHq"}, {"max": 89, "min": 23, "name": "OJ5kq6C4"}, {"max": 59, "min": 98, "name": "gvEa5J5u"}], [{"max": 41, "min": 42, "name": "JyxMrUu8"}, {"max": 19, "min": 58, "name": "FpcXO8M2"}, {"max": 29, "min": 42, "name": "QO1zTrj1"}], [{"max": 3, "min": 71, "name": "7gdsYUFH"}, {"max": 22, "min": 42, "name": "wo7CJfm8"}, {"max": 68, "min": 19, "name": "XZiO8oCw"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 5, "role_flexing_second": 38}, "max_number": 17, "min_number": 1, "player_max_number": 52, "player_min_number": 50}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 98, "min": 96, "name": "3J9KpTYV"}, {"max": 11, "min": 40, "name": "88l9Ay0f"}, {"max": 68, "min": 27, "name": "xLNSCz7b"}], [{"max": 6, "min": 24, "name": "1gl7sygt"}, {"max": 44, "min": 0, "name": "juhxayRv"}, {"max": 74, "min": 85, "name": "Bkr2VNQO"}], [{"max": 23, "min": 50, "name": "HLCGQ64j"}, {"max": 80, "min": 82, "name": "teC5eTos"}, {"max": 20, "min": 37, "name": "wNwiIHkh"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 22, "role_flexing_second": 51}, "duration": 94, "max_number": 21, "min_number": 10, "player_max_number": 7, "player_min_number": 51}, {"combination": {"alliances": [[{"max": 71, "min": 28, "name": "WUCxvQAy"}, {"max": 55, "min": 98, "name": "rQwbzfaF"}, {"max": 69, "min": 4, "name": "VLYmUjex"}], [{"max": 38, "min": 19, "name": "QEX4S9b8"}, {"max": 34, "min": 65, "name": "MyRQBsJ8"}, {"max": 69, "min": 18, "name": "9hueeu0f"}], [{"max": 83, "min": 64, "name": "oega3x6u"}, {"max": 81, "min": 59, "name": "M1kEKNmj"}, {"max": 89, "min": 22, "name": "jVhsFITw"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 13, "role_flexing_second": 13}, "duration": 38, "max_number": 4, "min_number": 48, "player_max_number": 30, "player_min_number": 66}, {"combination": {"alliances": [[{"max": 56, "min": 47, "name": "ZMhpVj1C"}, {"max": 44, "min": 65, "name": "q4dXcagk"}, {"max": 73, "min": 31, "name": "R4YSyi6v"}], [{"max": 80, "min": 93, "name": "Eamib9gq"}, {"max": 5, "min": 59, "name": "ec9Kx6CD"}, {"max": 9, "min": 78, "name": "pGx7aXEZ"}], [{"max": 29, "min": 70, "name": "PL5UbSkh"}, {"max": 100, "min": 34, "name": "NWUtgi3s"}, {"max": 59, "min": 28, "name": "4XcqeO1b"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 63, "role_flexing_second": 87}, "duration": 96, "max_number": 89, "min_number": 3, "player_max_number": 90, "player_min_number": 87}], "name": "hLy2DSfV"}}, "ticket_flexing_selection": "pivot", "ticket_flexing_selections": [{"selection": "random", "threshold": 62}, {"selection": "pivot", "threshold": 70}, {"selection": "oldest", "threshold": 63}], "use_newest_ticket_for_flexing": true}, "session_queue_timeout_seconds": 69, "social_matchmaking": true, "ticket_observability_enable": false, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'qOxcMJph' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel '68WPrC8F' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "xImfmOmG", "players": [{"results": [{"attribute": "YyvFSn43", "value": 0.4787090463684688}, {"attribute": "zssevCiq", "value": 0.22076669883944067}, {"attribute": "y90w5K0M", "value": 0.8403630138745578}], "user_id": "5anBg3wu"}, {"results": [{"attribute": "dFm21YWA", "value": 0.8479957591811074}, {"attribute": "VRfWejzZ", "value": 0.1559500941787757}, {"attribute": "luc9XI40", "value": 0.923493611190062}], "user_id": "cXgEebVY"}, {"results": [{"attribute": "Q9TsAJUF", "value": 0.03856079628694287}, {"attribute": "IZBRsC5M", "value": 0.9423727428847889}, {"attribute": "74QVvaWo", "value": 0.6781883838133718}], "user_id": "A47iSbgQ"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "OrKzsvgi"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "xY4zS2Mc", "client_version": "49GAiddK", "deployment": "sf0FYKYa", "error_code": 29, "error_message": "OM0ixpVm", "game_mode": "UJJ1ytCQ", "is_mock": "DbxzaU4W", "joinable": true, "match_id": "OfQ7kfSS", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 78, "party_attributes": {"6ViSoTTu": {}, "NZRQnBpe": {}, "SUHryCdl": {}}, "party_id": "FX4SD5a6", "party_members": [{"extra_attributes": {"vkIRPKQK": {}, "XsUkomfz": {}, "Wi6tCvzq": {}}, "user_id": "MlXhbXh9"}, {"extra_attributes": {"Nm41aIYt": {}, "KEdIcc4h": {}, "yurQ7LDg": {}}, "user_id": "6547oYts"}, {"extra_attributes": {"IwBCqosu": {}, "8w6m8UFg": {}, "iU1ytkSC": {}}, "user_id": "T4OvnRvo"}], "ticket_created_at": 21, "ticket_id": "wRZEI3EX"}, {"first_ticket_created_at": 30, "party_attributes": {"XMftchxW": {}, "NnbIW1WN": {}, "wpHEHzIL": {}}, "party_id": "Uc3wWwS1", "party_members": [{"extra_attributes": {"tjRbkphO": {}, "ChKMteUh": {}, "z1VgzxTL": {}}, "user_id": "Gafxvk79"}, {"extra_attributes": {"W7FCeRgi": {}, "LPxyT0WH": {}, "SnDguFsP": {}}, "user_id": "N83z2pcF"}, {"extra_attributes": {"NoSNWEfi": {}, "qk3fbYRy": {}, "IMUsEQzM": {}}, "user_id": "dBoTFzyg"}], "ticket_created_at": 5, "ticket_id": "zlnmwBwJ"}, {"first_ticket_created_at": 64, "party_attributes": {"Fwngl9Tu": {}, "GOIGmPLX": {}, "wEcio2Ob": {}}, "party_id": "uWz3cBA2", "party_members": [{"extra_attributes": {"TtD1qJXp": {}, "a0pChEIW": {}, "ponYx1UA": {}}, "user_id": "aQ1e4I3H"}, {"extra_attributes": {"Gs9U1r4a": {}, "2KUnlQtu": {}, "kSddDZkc": {}}, "user_id": "zN1PApym"}, {"extra_attributes": {"dEbICZsi": {}, "S27oSzeq": {}, "9EabXNy7": {}}, "user_id": "fBOZkJIx"}], "ticket_created_at": 93, "ticket_id": "GAC6rFku"}]}, {"matching_parties": [{"first_ticket_created_at": 76, "party_attributes": {"njdUGO1j": {}, "YBMatAC0": {}, "FU8uRhWD": {}}, "party_id": "rU2UQfNn", "party_members": [{"extra_attributes": {"3G34Il0B": {}, "22mfZAbv": {}, "RVml8Ruh": {}}, "user_id": "hpr2uy55"}, {"extra_attributes": {"9FfYrx2n": {}, "Chqqa33f": {}, "U2ifaa0m": {}}, "user_id": "00OWLHB0"}, {"extra_attributes": {"34ksVvAP": {}, "N800Ks1h": {}, "y8c9anWy": {}}, "user_id": "AHSEFV40"}], "ticket_created_at": 85, "ticket_id": "Egssex85"}, {"first_ticket_created_at": 47, "party_attributes": {"yvz5slAs": {}, "HEYXXaQ5": {}, "pebQjWvr": {}}, "party_id": "Sdlpwuyv", "party_members": [{"extra_attributes": {"Uruv8tiC": {}, "BHDtdgAp": {}, "gkZkKV9N": {}}, "user_id": "FCCBZXVL"}, {"extra_attributes": {"9rYSvP6I": {}, "aTrmPy5i": {}, "uWZsoOkW": {}}, "user_id": "ABe3yHhH"}, {"extra_attributes": {"YxL6MOYO": {}, "7P3I4itN": {}, "RaaKspIy": {}}, "user_id": "UEyBee5I"}], "ticket_created_at": 10, "ticket_id": "oIqqwdUw"}, {"first_ticket_created_at": 37, "party_attributes": {"I2H0ZOMC": {}, "rVAvh8e0": {}, "YeeLUEkJ": {}}, "party_id": "MuH220LD", "party_members": [{"extra_attributes": {"IVTH8cFu": {}, "HegxWxzm": {}, "GQm5PmgE": {}}, "user_id": "hTXv4SSx"}, {"extra_attributes": {"7yA1bRrS": {}, "mBDhcOxr": {}, "6pgTmdj3": {}}, "user_id": "JjM2gP97"}, {"extra_attributes": {"4S2E3MEE": {}, "Lz1dBPa1": {}, "TblPnwBg": {}}, "user_id": "xFeQ5MQo"}], "ticket_created_at": 59, "ticket_id": "kzUul4tz"}]}, {"matching_parties": [{"first_ticket_created_at": 33, "party_attributes": {"P5q7dwc9": {}, "AKzu0OLg": {}, "gw84J4Vl": {}}, "party_id": "zx6mppbD", "party_members": [{"extra_attributes": {"edDHyvTn": {}, "e9fP3cRZ": {}, "HjnUxDTT": {}}, "user_id": "fGbr98Ax"}, {"extra_attributes": {"etjUf4Fm": {}, "DDJUifUE": {}, "WV9Kpp7H": {}}, "user_id": "jLnsaENL"}, {"extra_attributes": {"5KgoyguF": {}, "pcFWR42t": {}, "GU9Y7iiK": {}}, "user_id": "6wqS2auM"}], "ticket_created_at": 18, "ticket_id": "9VTTU7my"}, {"first_ticket_created_at": 91, "party_attributes": {"Ax2rIlnu": {}, "J2cEC46R": {}, "9DUvAERI": {}}, "party_id": "f0bKtMF0", "party_members": [{"extra_attributes": {"0Z9DmvMW": {}, "5ZM8mwMs": {}, "Iy04mCxL": {}}, "user_id": "k2ChRR5M"}, {"extra_attributes": {"zFxecDXE": {}, "hGfPhloK": {}, "F7uyUu21": {}}, "user_id": "J4IixPhd"}, {"extra_attributes": {"qYNkLC7x": {}, "h80Bzvir": {}, "ABzUiM8m": {}}, "user_id": "814pHLq8"}], "ticket_created_at": 12, "ticket_id": "ILNv0U2e"}, {"first_ticket_created_at": 84, "party_attributes": {"4l4qU18b": {}, "Z3Kt0cuE": {}, "g4H1GBAD": {}}, "party_id": "wN2zu2hx", "party_members": [{"extra_attributes": {"7no5dLKn": {}, "PjFGhyHO": {}, "XM7sjksd": {}}, "user_id": "wK6qhteM"}, {"extra_attributes": {"RmrpvOsA": {}, "nPgbTFf4": {}, "M6hadKLt": {}}, "user_id": "VKhenLMq"}, {"extra_attributes": {"gkbTuDnQ": {}, "dii4Kb1L": {}, "Zar58Xxg": {}}, "user_id": "VO2VIPt6"}], "ticket_created_at": 66, "ticket_id": "92GTDqXN"}]}], "namespace": "KGNp1Rzo", "party_attributes": {"vr9xvB2k": {}, "bYnKkn3Y": {}, "6RvRiAuB": {}}, "party_id": "fQCH763K", "queued_at": 65, "region": "9uTGWS1u", "server_name": "fhuZd2k4", "status": "J8sxnG58", "ticket_id": "kntBUtGm", "ticket_ids": ["uP1tysEu", "TxAzPG2S", "zwmzAW6g"], "updated_at": "1984-06-14T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "Np312G8g"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'AmnkONuO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 69, "userID": "v12SBoo2", "weight": 0.8390122575711519}' \
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
    --matchIDs '3XrKv8Dh' \
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
    --strategy 'pKK32rzx' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName '7X8R7Jhn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'jQYnjMX1' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "9IIWO5BB", "description": "wqBJEgDW", "findMatchTimeoutSeconds": 71, "joinable": true, "max_delay_ms": 9, "region_expansion_range_ms": 74, "region_expansion_rate_ms": 15, "region_latency_initial_range_ms": 54, "region_latency_max_ms": 42, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 74, "min": 15, "name": "YNL44DRg"}, {"max": 16, "min": 52, "name": "WUXhAQuP"}, {"max": 15, "min": 37, "name": "qlz02dQO"}], [{"max": 42, "min": 89, "name": "Y5hYRCBY"}, {"max": 75, "min": 17, "name": "GHBD1Gty"}, {"max": 15, "min": 39, "name": "oWXrWCTf"}], [{"max": 3, "min": 22, "name": "y7JHHoJt"}, {"max": 70, "min": 20, "name": "JQY92xa3"}, {"max": 83, "min": 86, "name": "OYtkDtRL"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 32, "role_flexing_second": 48}, "maxNumber": 92, "minNumber": 56, "playerMaxNumber": 47, "playerMinNumber": 15}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 48, "min": 31, "name": "2RvODQU1"}, {"max": 36, "min": 91, "name": "zGWIaZa5"}, {"max": 0, "min": 69, "name": "fAmad7sp"}], [{"max": 39, "min": 96, "name": "kJ3zUB9f"}, {"max": 70, "min": 91, "name": "uqKVZw9s"}, {"max": 25, "min": 7, "name": "sxLbGGbU"}], [{"max": 71, "min": 66, "name": "MmqUNJdm"}, {"max": 25, "min": 70, "name": "GPwIu1X8"}, {"max": 79, "min": 4, "name": "Idd54zLw"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 72, "role_flexing_second": 51}, "duration": 24, "max_number": 2, "min_number": 62, "player_max_number": 46, "player_min_number": 36}, {"combination": {"alliances": [[{"max": 77, "min": 99, "name": "1aN7MndM"}, {"max": 79, "min": 29, "name": "28Tkhfvs"}, {"max": 100, "min": 39, "name": "TS1HxSdT"}], [{"max": 57, "min": 95, "name": "Qbx9ZRY1"}, {"max": 31, "min": 19, "name": "hSrxos2h"}, {"max": 26, "min": 83, "name": "gu5ZkrOa"}], [{"max": 48, "min": 5, "name": "GTTX5Jom"}, {"max": 3, "min": 58, "name": "bteX57mn"}, {"max": 11, "min": 2, "name": "wNZaLU1F"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 11, "role_flexing_second": 7}, "duration": 39, "max_number": 19, "min_number": 64, "player_max_number": 89, "player_min_number": 55}, {"combination": {"alliances": [[{"max": 56, "min": 14, "name": "VlyD2stG"}, {"max": 14, "min": 31, "name": "MoyR8WsQ"}, {"max": 63, "min": 53, "name": "8nw93EUV"}], [{"max": 92, "min": 31, "name": "4jxtEXG0"}, {"max": 1, "min": 32, "name": "owrXpNtt"}, {"max": 96, "min": 19, "name": "9belu8nQ"}], [{"max": 57, "min": 82, "name": "J70iFo7I"}, {"max": 25, "min": 53, "name": "EtlfDdwe"}, {"max": 25, "min": 30, "name": "N951shmC"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 1, "role_flexing_second": 48}, "duration": 41, "max_number": 16, "min_number": 71, "player_max_number": 2, "player_min_number": 79}], "batch_size": 52, "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 8, "flex_flat_step_range": 46, "flex_immunity_count": 64, "flex_range_max": 35, "flex_rate_ms": 99, "flex_step_max": 74, "force_authority_match": true, "initial_step_range": 79, "mmr_max": 7, "mmr_mean": 91, "mmr_min": 0, "mmr_std_dev": 41, "override_mmr_data": true, "use_bucket_mmr": false, "use_flat_flex_step": false}, "flexingRules": [{"attribute": "ZVX0q2Iy", "criteria": "ER83gxf1", "duration": 11, "reference": 0.14657741522377554}, {"attribute": "hyNwPXCB", "criteria": "JW0eIlWz", "duration": 88, "reference": 0.20855866721086802}, {"attribute": "kC4aOQUL", "criteria": "EhicdDZb", "duration": 9, "reference": 0.8497881168400618}], "match_options": {"options": [{"name": "z84kJIZN", "type": "4zwE7gtR"}, {"name": "vhl6qMOR", "type": "JTNMMqZF"}, {"name": "z6YBfkA5", "type": "lz16eyNO"}]}, "matchingRules": [{"attribute": "1t7O3NzJ", "criteria": "WsfkQ1kw", "reference": 0.3527062803435992}, {"attribute": "eLwTkAnQ", "criteria": "iNyT6Qaj", "reference": 0.40379285654875363}, {"attribute": "JmTIv5tU", "criteria": "aPAFsVtu", "reference": 0.6958311623538066}], "sort_ticket": {"search_result": "random", "ticket_queue": "largestPartySize"}, "sort_tickets": [{"search_result": "largestPartySize", "threshold": 93, "ticket_queue": "largestPartySize"}, {"search_result": "distance", "threshold": 34, "ticket_queue": "none"}, {"search_result": "oldestTicketAge", "threshold": 33, "ticket_queue": "none"}], "sub_game_modes": {}, "ticket_flexing_selection": "pivot", "ticket_flexing_selections": [{"selection": "newest", "threshold": 3}, {"selection": "newest", "threshold": 80}, {"selection": "oldest", "threshold": 12}], "use_newest_ticket_for_flexing": false}, "sessionQueueTimeoutSeconds": 41, "socialMatchmaking": true, "ticket_observability_enable": true, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName '0sdcXkJF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName '7QqkC9MR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName 'ajG6qWUq' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 87}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName 'mP4By3vS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName '7qZKJGJc' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "VCvVXyBu", "count": 68, "mmrMax": 0.02057388657755488, "mmrMean": 0.2699199996864772, "mmrMin": 0.4721288548006547, "mmrStdDev": 0.12371739893244516}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName 'gi6nQqOj' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 70, "party_attributes": {"vn28ud1E": {}, "6doU1q4C": {}, "O2xMyTTj": {}}, "party_id": "VGR7IM1a", "party_members": [{"extra_attributes": {"rgAbezj3": {}, "NduaJza4": {}, "ubObWZZa": {}}, "user_id": "1jyujI6W"}, {"extra_attributes": {"F87zsiXU": {}, "zYk5L7IL": {}, "OupOURUs": {}}, "user_id": "sgAIJlpQ"}, {"extra_attributes": {"IjeADktQ": {}, "p85X4N65": {}, "J3XWxE3j": {}}, "user_id": "DcLHB3d4"}], "ticket_created_at": 73, "ticket_id": "hZwfAfz6"}, {"first_ticket_created_at": 2, "party_attributes": {"z1wQtFkV": {}, "cILmPHro": {}, "LkKqa6YL": {}}, "party_id": "QpJRV705", "party_members": [{"extra_attributes": {"PP6xT04v": {}, "QTUOF7sM": {}, "lgGS8Uu6": {}}, "user_id": "fF3rFflV"}, {"extra_attributes": {"fHH3pCsg": {}, "vqiUZah2": {}, "J8cweXGA": {}}, "user_id": "tHc435hB"}, {"extra_attributes": {"i6A4MdRR": {}, "sK4U13nf": {}, "ewjiLOi8": {}}, "user_id": "0hdBw7XN"}], "ticket_created_at": 91, "ticket_id": "071oiWbK"}, {"first_ticket_created_at": 27, "party_attributes": {"H6ZF0LoR": {}, "E3u48ADa": {}, "ch0clF5K": {}}, "party_id": "C62l3uiC", "party_members": [{"extra_attributes": {"6RWTkl6J": {}, "uTUePGN8": {}, "z6KhV3Lg": {}}, "user_id": "BGgHFa3X"}, {"extra_attributes": {"5gkk7MDk": {}, "1T2PE9qR": {}, "C0pQfw90": {}}, "user_id": "oqLEO1hf"}, {"extra_attributes": {"1UAOUSS7": {}, "1Gh6b2IV": {}, "VBtGJxQj": {}}, "user_id": "EA3g7QZe"}], "ticket_created_at": 28, "ticket_id": "10ilgpEu"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName 'iFylUyvp' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 33}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'ZAytFXLw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName '8INoEoHQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'fOyRr296' \
    --matchID 's2VXbNhi' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["Pf4cSkpy", "4Y38DiIt", "wI63iJte"], "party_id": "VTT2id12", "user_id": "mKDFMJv0"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'QJ6ep7kI' \
    --matchID 'WQuabay3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'lo6aHKao' \
    --matchID 'VLfqogJw' \
    --namespace $AB_NAMESPACE \
    --userID 'HZ80XtFf' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName 'n81GOrqU' \
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
    --channelName '1IJAL6Mi' \
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