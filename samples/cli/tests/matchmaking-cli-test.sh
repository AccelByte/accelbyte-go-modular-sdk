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
    --limit '78' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "95J8UySE", "description": "LrEJkFfC", "find_match_timeout_seconds": 88, "game_mode": "CaGxBhxr", "joinable": false, "max_delay_ms": 35, "region_expansion_range_ms": 34, "region_expansion_rate_ms": 84, "region_latency_initial_range_ms": 12, "region_latency_max_ms": 8, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 26, "min": 69, "name": "pVPoCVSq"}, {"max": 75, "min": 56, "name": "C8IfacLw"}, {"max": 38, "min": 94, "name": "TeXOrHpZ"}], [{"max": 13, "min": 80, "name": "Vd6APeTG"}, {"max": 70, "min": 37, "name": "vsH5IWzv"}, {"max": 78, "min": 64, "name": "pMwumSfE"}], [{"max": 82, "min": 17, "name": "vBRBB4ed"}, {"max": 51, "min": 43, "name": "1pw5EWbo"}, {"max": 47, "min": 21, "name": "5BoNYfC9"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 34, "role_flexing_second": 22}, "max_number": 63, "min_number": 55, "player_max_number": 39, "player_min_number": 15}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 90, "min": 19, "name": "owd5GvOV"}, {"max": 40, "min": 3, "name": "q6ImLkJt"}, {"max": 2, "min": 50, "name": "y57Y2qnb"}], [{"max": 16, "min": 24, "name": "m0gqjIn7"}, {"max": 45, "min": 8, "name": "ez43zLKD"}, {"max": 41, "min": 30, "name": "AGl1E59z"}], [{"max": 40, "min": 58, "name": "rfLONi9z"}, {"max": 22, "min": 94, "name": "0GQUs73C"}, {"max": 15, "min": 76, "name": "TlT9tbBj"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 53, "role_flexing_second": 77}, "duration": 45, "max_number": 67, "min_number": 38, "player_max_number": 42, "player_min_number": 60}, {"combination": {"alliances": [[{"max": 98, "min": 2, "name": "PjnL6L3r"}, {"max": 28, "min": 15, "name": "IACil97T"}, {"max": 51, "min": 40, "name": "S4IkJFdN"}], [{"max": 83, "min": 56, "name": "wTQ6N7rW"}, {"max": 87, "min": 67, "name": "uWd8XcI8"}, {"max": 76, "min": 24, "name": "ALP6MWbj"}], [{"max": 79, "min": 85, "name": "gPPwwaiZ"}, {"max": 44, "min": 43, "name": "2gmdGV5t"}, {"max": 23, "min": 41, "name": "CnJk2C7z"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 24, "role_flexing_second": 63}, "duration": 84, "max_number": 82, "min_number": 13, "player_max_number": 84, "player_min_number": 9}, {"combination": {"alliances": [[{"max": 44, "min": 70, "name": "mzXrjQG6"}, {"max": 15, "min": 51, "name": "eBhXb8JI"}, {"max": 8, "min": 77, "name": "6w8iUdAj"}], [{"max": 62, "min": 18, "name": "YDlnE9P9"}, {"max": 13, "min": 50, "name": "J1Nlc393"}, {"max": 92, "min": 48, "name": "XPxIOfc8"}], [{"max": 8, "min": 36, "name": "pHEf00h7"}, {"max": 59, "min": 68, "name": "BuzoFdCW"}, {"max": 39, "min": 69, "name": "jiTXSnC3"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 28, "role_flexing_second": 77}, "duration": 92, "max_number": 69, "min_number": 40, "player_max_number": 19, "player_min_number": 100}], "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 63, "flex_flat_step_range": 91, "flex_immunity_count": 73, "flex_range_max": 15, "flex_rate_ms": 52, "flex_step_max": 4, "force_authority_match": false, "initial_step_range": 20, "mmr_max": 84, "mmr_mean": 18, "mmr_min": 76, "mmr_std_dev": 32, "override_mmr_data": true, "use_bucket_mmr": false, "use_flat_flex_step": true}, "flexing_rule": [{"attribute": "HmhKDMgO", "criteria": "aAxxNhAj", "duration": 30, "reference": 0.04118081039849997}, {"attribute": "4MgIS9FA", "criteria": "racL0tw9", "duration": 83, "reference": 0.4457434236682327}, {"attribute": "FX1ZGcyg", "criteria": "JJm5PhjZ", "duration": 10, "reference": 0.17776187371684882}], "match_options": {"options": [{"name": "ZfNPNvUR", "type": "YZeBdQRP"}, {"name": "mhIfzO9N", "type": "mxclerWy"}, {"name": "EFOGeb6V", "type": "qe5JsmsS"}]}, "matching_rule": [{"attribute": "MWEkghSx", "criteria": "DEYPsa1H", "reference": 0.3990497794744383}, {"attribute": "kxP6OZKZ", "criteria": "7MocnNJz", "reference": 0.8102665956121284}, {"attribute": "X9YtIG5b", "criteria": "jCvlhN6T", "reference": 0.4727753486441466}], "rebalance_enable": false, "sub_game_modes": {"ypWCFQoN": {"alliance": {"combination": {"alliances": [[{"max": 97, "min": 91, "name": "9w4eRSHn"}, {"max": 55, "min": 15, "name": "5gYh00Ib"}, {"max": 72, "min": 55, "name": "Ybrj6One"}], [{"max": 81, "min": 45, "name": "cxibEauH"}, {"max": 55, "min": 82, "name": "kOQWtpTy"}, {"max": 11, "min": 88, "name": "GuZxuANZ"}], [{"max": 90, "min": 39, "name": "ekTOV6cH"}, {"max": 97, "min": 65, "name": "HyvLpSSf"}, {"max": 19, "min": 45, "name": "E9HqHpc4"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 58, "role_flexing_second": 2}, "max_number": 83, "min_number": 5, "player_max_number": 88, "player_min_number": 36}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 60, "min": 88, "name": "7KFQq8HO"}, {"max": 14, "min": 47, "name": "UkhteYTR"}, {"max": 31, "min": 70, "name": "09qNmsXy"}], [{"max": 21, "min": 28, "name": "AkzGPJIS"}, {"max": 21, "min": 42, "name": "u1LTVOaH"}, {"max": 74, "min": 38, "name": "j7YmBNQ3"}], [{"max": 30, "min": 56, "name": "EuxSrvul"}, {"max": 73, "min": 52, "name": "vRmSPmZz"}, {"max": 82, "min": 25, "name": "SH9xYgs2"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 75, "role_flexing_second": 46}, "duration": 48, "max_number": 12, "min_number": 46, "player_max_number": 37, "player_min_number": 81}, {"combination": {"alliances": [[{"max": 50, "min": 29, "name": "GrvmXi1a"}, {"max": 59, "min": 3, "name": "PcT57kkS"}, {"max": 24, "min": 28, "name": "tYKWCp7X"}], [{"max": 71, "min": 71, "name": "kyCzO59g"}, {"max": 18, "min": 60, "name": "8cdwDow2"}, {"max": 11, "min": 87, "name": "RVcizj7L"}], [{"max": 76, "min": 86, "name": "kq60tluJ"}, {"max": 31, "min": 17, "name": "eYf0bvUK"}, {"max": 31, "min": 69, "name": "3zMciH60"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 87, "role_flexing_second": 77}, "duration": 43, "max_number": 19, "min_number": 43, "player_max_number": 75, "player_min_number": 62}, {"combination": {"alliances": [[{"max": 76, "min": 26, "name": "xF0I7oHR"}, {"max": 42, "min": 35, "name": "ZNHxdZn7"}, {"max": 26, "min": 40, "name": "DEfTIofW"}], [{"max": 71, "min": 59, "name": "wsqwzQtU"}, {"max": 54, "min": 30, "name": "GXLYEp0s"}, {"max": 21, "min": 60, "name": "qJhhO1oL"}], [{"max": 55, "min": 17, "name": "IhIxrDq8"}, {"max": 71, "min": 73, "name": "KWZBhHen"}, {"max": 59, "min": 60, "name": "EJ12rSff"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 54, "role_flexing_second": 45}, "duration": 75, "max_number": 91, "min_number": 88, "player_max_number": 10, "player_min_number": 45}], "name": "G8Sqou9G"}, "hJrKensY": {"alliance": {"combination": {"alliances": [[{"max": 12, "min": 73, "name": "lx4LvG4y"}, {"max": 35, "min": 63, "name": "6nc0zWqy"}, {"max": 51, "min": 9, "name": "2jVgPqgW"}], [{"max": 82, "min": 85, "name": "gqn4aK9D"}, {"max": 3, "min": 45, "name": "KCXEY6hC"}, {"max": 63, "min": 48, "name": "YqN17scj"}], [{"max": 50, "min": 76, "name": "0UkcXf0A"}, {"max": 59, "min": 21, "name": "C4k8Daqm"}, {"max": 46, "min": 71, "name": "RZCphKrl"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 77, "role_flexing_second": 100}, "max_number": 77, "min_number": 20, "player_max_number": 72, "player_min_number": 50}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 59, "min": 4, "name": "qSSOWaXm"}, {"max": 36, "min": 3, "name": "DhpCDOjQ"}, {"max": 76, "min": 52, "name": "89pefnzN"}], [{"max": 58, "min": 72, "name": "qtMBKhBG"}, {"max": 98, "min": 36, "name": "6QtbdF9m"}, {"max": 51, "min": 6, "name": "295vNvPo"}], [{"max": 54, "min": 1, "name": "J6pjFGeF"}, {"max": 100, "min": 29, "name": "otxenTTa"}, {"max": 37, "min": 3, "name": "yZ1HgApS"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 3, "role_flexing_second": 58}, "duration": 40, "max_number": 23, "min_number": 33, "player_max_number": 4, "player_min_number": 42}, {"combination": {"alliances": [[{"max": 41, "min": 6, "name": "zwTltvtk"}, {"max": 99, "min": 26, "name": "tAAj9z2e"}, {"max": 39, "min": 62, "name": "sKXMqHET"}], [{"max": 83, "min": 29, "name": "HcfVjgYx"}, {"max": 20, "min": 26, "name": "j8yHleG7"}, {"max": 88, "min": 47, "name": "6KGYaZNE"}], [{"max": 90, "min": 46, "name": "T19NfyWY"}, {"max": 27, "min": 73, "name": "BwbljzBE"}, {"max": 51, "min": 83, "name": "4XWR0vkO"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 20, "role_flexing_second": 22}, "duration": 44, "max_number": 6, "min_number": 58, "player_max_number": 60, "player_min_number": 63}, {"combination": {"alliances": [[{"max": 84, "min": 66, "name": "czdMHqcw"}, {"max": 14, "min": 95, "name": "gAiCmRqe"}, {"max": 12, "min": 5, "name": "Xl3eOt1X"}], [{"max": 89, "min": 33, "name": "D8VrdUOf"}, {"max": 57, "min": 35, "name": "V3nCKvO7"}, {"max": 57, "min": 56, "name": "pylv2MAv"}], [{"max": 77, "min": 26, "name": "SV1gMVb7"}, {"max": 5, "min": 4, "name": "s1PJN2lI"}, {"max": 36, "min": 53, "name": "uCX64NRo"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 6, "role_flexing_second": 32}, "duration": 65, "max_number": 49, "min_number": 90, "player_max_number": 65, "player_min_number": 83}], "name": "AYDvhvp4"}, "ql8TnyVt": {"alliance": {"combination": {"alliances": [[{"max": 95, "min": 21, "name": "wXjU8yCL"}, {"max": 17, "min": 39, "name": "NHiB5uTq"}, {"max": 18, "min": 17, "name": "cmZzSwNJ"}], [{"max": 67, "min": 94, "name": "X6hxWOXc"}, {"max": 77, "min": 86, "name": "CJWOM10j"}, {"max": 50, "min": 29, "name": "NNT7XMNF"}], [{"max": 36, "min": 51, "name": "XrTlZRKI"}, {"max": 52, "min": 71, "name": "vZ1Ik0LF"}, {"max": 72, "min": 30, "name": "U8gfNxEb"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 80, "role_flexing_second": 14}, "max_number": 78, "min_number": 89, "player_max_number": 17, "player_min_number": 75}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 46, "min": 36, "name": "QoF3oKON"}, {"max": 17, "min": 76, "name": "YVo8xC55"}, {"max": 89, "min": 49, "name": "MWm3rTIb"}], [{"max": 75, "min": 17, "name": "s51LDcTx"}, {"max": 85, "min": 86, "name": "BEqyqaWJ"}, {"max": 46, "min": 56, "name": "xgwOjCa2"}], [{"max": 96, "min": 33, "name": "JOfngijq"}, {"max": 11, "min": 72, "name": "mmBDkCQN"}, {"max": 73, "min": 27, "name": "iau0xUDV"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 3, "role_flexing_second": 79}, "duration": 90, "max_number": 33, "min_number": 43, "player_max_number": 19, "player_min_number": 89}, {"combination": {"alliances": [[{"max": 86, "min": 23, "name": "LQgPkiM7"}, {"max": 70, "min": 55, "name": "idB0aUFi"}, {"max": 23, "min": 24, "name": "4svar7kI"}], [{"max": 71, "min": 21, "name": "OAqd4NAC"}, {"max": 61, "min": 18, "name": "oxlOCuHv"}, {"max": 93, "min": 51, "name": "4ka7gqA1"}], [{"max": 58, "min": 45, "name": "25QheWCY"}, {"max": 21, "min": 64, "name": "tarmHLnR"}, {"max": 8, "min": 35, "name": "Yfr7RduC"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 19, "role_flexing_second": 59}, "duration": 31, "max_number": 32, "min_number": 87, "player_max_number": 79, "player_min_number": 56}, {"combination": {"alliances": [[{"max": 68, "min": 44, "name": "Z3uHcGSe"}, {"max": 7, "min": 28, "name": "JhPn7BO5"}, {"max": 75, "min": 2, "name": "s87SDJip"}], [{"max": 62, "min": 35, "name": "Zl4a5uFG"}, {"max": 9, "min": 67, "name": "aYmyNkLF"}, {"max": 0, "min": 98, "name": "Ne19Dp7H"}], [{"max": 35, "min": 41, "name": "6h4P2PMD"}, {"max": 96, "min": 50, "name": "upIvHDxK"}, {"max": 88, "min": 7, "name": "18LiUQoD"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 18, "role_flexing_second": 42}, "duration": 50, "max_number": 34, "min_number": 34, "player_max_number": 64, "player_min_number": 81}], "name": "hBmzAzr3"}}, "use_newest_ticket_for_flexing": false}, "session_queue_timeout_seconds": 74, "social_matchmaking": false, "ticket_observability_enable": true, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'SWN7QddR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'DGU7Ncs8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "Z1yowgTs", "players": [{"results": [{"attribute": "cwOrviOF", "value": 0.11233127294913003}, {"attribute": "RxEPpmGr", "value": 0.3042156232673515}, {"attribute": "fSgQ2JGx", "value": 0.3998252578678486}], "user_id": "5EQ3seKz"}, {"results": [{"attribute": "wMWCJ5aF", "value": 0.7050526866887181}, {"attribute": "l1wynkaa", "value": 0.7696747501367397}, {"attribute": "DrUQBtrN", "value": 0.8972118339456766}], "user_id": "5T17r9uH"}, {"results": [{"attribute": "lYtltmRT", "value": 0.9640752468861423}, {"attribute": "BGep2A4G", "value": 0.9064331704539148}, {"attribute": "E9TvUSsZ", "value": 0.7359529054912911}], "user_id": "Z1HnuA0Y"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "ydvkMZ9w"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "8uaWpk2k", "client_version": "vVXezbtP", "deployment": "CksYvNX1", "error_code": 80, "error_message": "HTtNcpwV", "game_mode": "bBbXJNAo", "is_mock": "oPkfDdnX", "joinable": false, "match_id": "wr8C0QKU", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 60, "party_attributes": {"VxD5T7j3": {}, "0xalrFQ6": {}, "hP63h33P": {}}, "party_id": "Mw8ZsNXT", "party_members": [{"extra_attributes": {"1Pz86eVn": {}, "l7uqjxKQ": {}, "Zb71POlH": {}}, "user_id": "lKRLj8d1"}, {"extra_attributes": {"qeWvXl71": {}, "Feb4cBrb": {}, "Zjjlr4Yf": {}}, "user_id": "RjWnBpmP"}, {"extra_attributes": {"BSJU4vUb": {}, "dhLPAAYn": {}, "pxlt2OL0": {}}, "user_id": "Xo3LtyF0"}], "ticket_created_at": 53, "ticket_id": "dZIyDD6k"}, {"first_ticket_created_at": 80, "party_attributes": {"6UUqyFQL": {}, "9Vxf5aR3": {}, "HVB3hezm": {}}, "party_id": "ff946e1C", "party_members": [{"extra_attributes": {"WCAY2Wni": {}, "4gjCsGyt": {}, "6ZmBzfLk": {}}, "user_id": "SRNDTV33"}, {"extra_attributes": {"ACkeGblz": {}, "Gy3eHGuF": {}, "BhXcoVki": {}}, "user_id": "UiXebXCU"}, {"extra_attributes": {"HMIlBcm3": {}, "WmLrBt3e": {}, "rMdSvUyd": {}}, "user_id": "4h99zDCY"}], "ticket_created_at": 86, "ticket_id": "Sw8yGEqV"}, {"first_ticket_created_at": 61, "party_attributes": {"Gx1oOkiX": {}, "Is9LZtff": {}, "cTRh0SQQ": {}}, "party_id": "SRW26SYp", "party_members": [{"extra_attributes": {"K9D8R9Rp": {}, "S6oClhG4": {}, "ryhezQ9c": {}}, "user_id": "BykG5vC9"}, {"extra_attributes": {"UMeJhv7W": {}, "8bDUPj6t": {}, "1nhfPns2": {}}, "user_id": "poINFUJl"}, {"extra_attributes": {"tGgjmmoe": {}, "mWJfALPM": {}, "pun7SpFl": {}}, "user_id": "KXSifWNH"}], "ticket_created_at": 96, "ticket_id": "mWtvcUfZ"}]}, {"matching_parties": [{"first_ticket_created_at": 84, "party_attributes": {"ehMbvmBq": {}, "xNFQDaWQ": {}, "cvt05vQK": {}}, "party_id": "5f75fC8R", "party_members": [{"extra_attributes": {"Kq3y6V0S": {}, "ZzFXoCSc": {}, "Nff5654X": {}}, "user_id": "lhjMBhj6"}, {"extra_attributes": {"AVbpMCMo": {}, "AbtHxaa9": {}, "IuFzSRXD": {}}, "user_id": "2FYeFdz1"}, {"extra_attributes": {"23rPmsJv": {}, "QWVz81vk": {}, "Wb8CrX2a": {}}, "user_id": "XD0vi51z"}], "ticket_created_at": 26, "ticket_id": "NpnDprI8"}, {"first_ticket_created_at": 13, "party_attributes": {"6dVws7gf": {}, "el2Ks9A4": {}, "D7IiCG3g": {}}, "party_id": "igYvqV6B", "party_members": [{"extra_attributes": {"wdmGMYbF": {}, "QgcyDq3S": {}, "TuINRhjd": {}}, "user_id": "6tgpihoz"}, {"extra_attributes": {"k4D0nMQf": {}, "Z0bkvNSi": {}, "VRCxyceu": {}}, "user_id": "1jp2RlTp"}, {"extra_attributes": {"D2lVEEaN": {}, "6DGKbmDc": {}, "21CRZWhZ": {}}, "user_id": "rS24UUTh"}], "ticket_created_at": 62, "ticket_id": "Y3xPFWhI"}, {"first_ticket_created_at": 38, "party_attributes": {"5kGCEBHE": {}, "WRQXQ8Qm": {}, "uksWsAqT": {}}, "party_id": "ln54WrOR", "party_members": [{"extra_attributes": {"cbAM68jF": {}, "gjn8OicH": {}, "gDryn3cG": {}}, "user_id": "Z5xcwkZQ"}, {"extra_attributes": {"yDEma6Sn": {}, "OLUcORDx": {}, "mPAIE4hO": {}}, "user_id": "app3O1mC"}, {"extra_attributes": {"x0zjyuPY": {}, "c8shbQx0": {}, "dvsTCpXY": {}}, "user_id": "RPet6Joc"}], "ticket_created_at": 46, "ticket_id": "dM80PCJQ"}]}, {"matching_parties": [{"first_ticket_created_at": 51, "party_attributes": {"dFADqRwI": {}, "Q73NolAk": {}, "rd1LT11P": {}}, "party_id": "DGBN0tbj", "party_members": [{"extra_attributes": {"XjcMqkU7": {}, "r1z2s9M2": {}, "diJKVbVY": {}}, "user_id": "2m6Dm91S"}, {"extra_attributes": {"8FIb6ioW": {}, "PSXCvYHe": {}, "ixl19YRx": {}}, "user_id": "7dbe6P0V"}, {"extra_attributes": {"SQGuAg4x": {}, "pp7S3CmW": {}, "53VFtjmk": {}}, "user_id": "ob2L5S81"}], "ticket_created_at": 38, "ticket_id": "fxALa1FI"}, {"first_ticket_created_at": 34, "party_attributes": {"Ws5QVqIh": {}, "o5g3p6cx": {}, "K1leQrKB": {}}, "party_id": "cKGFymxN", "party_members": [{"extra_attributes": {"uWD7ZIqA": {}, "8eP9qgtj": {}, "pArOPWAZ": {}}, "user_id": "hv7jJJzT"}, {"extra_attributes": {"qweGS9bs": {}, "LExy3mWS": {}, "vQjFmYUX": {}}, "user_id": "DMcpBZ7G"}, {"extra_attributes": {"9Gd51b5q": {}, "dp1GtQzn": {}, "ZXfBf7rs": {}}, "user_id": "SjIfZswk"}], "ticket_created_at": 29, "ticket_id": "SQO5X81e"}, {"first_ticket_created_at": 77, "party_attributes": {"E84eV4nE": {}, "bWpQGoax": {}, "4qPaRvB8": {}}, "party_id": "pqiYmUsZ", "party_members": [{"extra_attributes": {"2sGBORda": {}, "fsBzQLRZ": {}, "ZBIYxKpq": {}}, "user_id": "lH9pOZg1"}, {"extra_attributes": {"vXMBkfNN": {}, "qlP1Gtls": {}, "zLEwozn1": {}}, "user_id": "kcoJ6q2V"}, {"extra_attributes": {"WzTIoH8P": {}, "INoijU2N": {}, "e6TDJUka": {}}, "user_id": "FsBLSRL3"}], "ticket_created_at": 97, "ticket_id": "ZWrn8NBG"}]}], "namespace": "jC9YmrmE", "party_attributes": {"CvlZNPf0": {}, "bpC3WHkM": {}, "aAG2etHO": {}}, "party_id": "CWXfQTV3", "queued_at": 79, "region": "KzJ1PTJ9", "server_name": "1EBuIlcZ", "status": "3iJGZUtG", "ticket_id": "3u6uCgYL", "ticket_ids": ["EKi73yLh", "N5ruRq0B", "HSXmrWKA"], "updated_at": "1972-10-25T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "s45v3OxN"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'OUNmWgLk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 60, "userID": "XbKKL2eN", "weight": 0.02489695692667515}' \
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
    --matchIDs '6oI7qmrj' \
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
    --strategy 'REDmOnBm' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName '64ZM17Ea' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'pmJvELIW' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "Ri3rfEPD", "description": "xpL5Iiig", "findMatchTimeoutSeconds": 24, "joinable": false, "max_delay_ms": 48, "region_expansion_range_ms": 47, "region_expansion_rate_ms": 40, "region_latency_initial_range_ms": 77, "region_latency_max_ms": 1, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 54, "min": 82, "name": "65BKwNxt"}, {"max": 2, "min": 21, "name": "cc10qNNs"}, {"max": 21, "min": 42, "name": "8qFEEI7C"}], [{"max": 52, "min": 40, "name": "j9cHiwE6"}, {"max": 44, "min": 21, "name": "8aKQbpcr"}, {"max": 93, "min": 87, "name": "p9mkYvCc"}], [{"max": 67, "min": 51, "name": "7AOmL8Zr"}, {"max": 78, "min": 51, "name": "NkYxZG55"}, {"max": 77, "min": 14, "name": "Md9mtDax"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 98, "role_flexing_second": 5}, "maxNumber": 46, "minNumber": 7, "playerMaxNumber": 8, "playerMinNumber": 88}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 17, "min": 62, "name": "FRkW2P4q"}, {"max": 97, "min": 22, "name": "lo4wqwlZ"}, {"max": 70, "min": 29, "name": "UMlfpfG0"}], [{"max": 94, "min": 23, "name": "1ylhemfi"}, {"max": 24, "min": 86, "name": "vTwDmHkZ"}, {"max": 4, "min": 44, "name": "5Guf41p1"}], [{"max": 84, "min": 14, "name": "9L3um03C"}, {"max": 71, "min": 18, "name": "BfYPvKXC"}, {"max": 15, "min": 12, "name": "efEqA0oz"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 76, "role_flexing_second": 85}, "duration": 2, "max_number": 2, "min_number": 83, "player_max_number": 69, "player_min_number": 89}, {"combination": {"alliances": [[{"max": 85, "min": 33, "name": "wnTsD5ts"}, {"max": 53, "min": 34, "name": "74iycTLt"}, {"max": 0, "min": 45, "name": "x1NRF826"}], [{"max": 42, "min": 90, "name": "9OtDHrRh"}, {"max": 72, "min": 15, "name": "2rDWkW2I"}, {"max": 49, "min": 20, "name": "vIgBloXY"}], [{"max": 79, "min": 23, "name": "HGxcsHpL"}, {"max": 29, "min": 37, "name": "KsK0kObt"}, {"max": 22, "min": 72, "name": "d42NNTnS"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 47, "role_flexing_second": 86}, "duration": 55, "max_number": 20, "min_number": 12, "player_max_number": 14, "player_min_number": 73}, {"combination": {"alliances": [[{"max": 26, "min": 11, "name": "d0QcjoZr"}, {"max": 36, "min": 12, "name": "08JL8GqD"}, {"max": 3, "min": 45, "name": "04yI2zy6"}], [{"max": 73, "min": 30, "name": "taFEVznC"}, {"max": 66, "min": 3, "name": "0IfOM0wx"}, {"max": 25, "min": 55, "name": "po1IqFiK"}], [{"max": 16, "min": 41, "name": "6nJRQsWP"}, {"max": 6, "min": 62, "name": "x00GQI1y"}, {"max": 19, "min": 10, "name": "6k4pIGys"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 37, "role_flexing_second": 91}, "duration": 37, "max_number": 59, "min_number": 61, "player_max_number": 54, "player_min_number": 85}], "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 41, "flex_flat_step_range": 8, "flex_immunity_count": 37, "flex_range_max": 84, "flex_rate_ms": 88, "flex_step_max": 79, "force_authority_match": false, "initial_step_range": 16, "mmr_max": 39, "mmr_mean": 84, "mmr_min": 25, "mmr_std_dev": 19, "override_mmr_data": true, "use_bucket_mmr": true, "use_flat_flex_step": true}, "flexingRules": [{"attribute": "6Xs7piTj", "criteria": "K14hjlNh", "duration": 23, "reference": 0.32529959195502955}, {"attribute": "qYqPFmXu", "criteria": "pozgYm1A", "duration": 77, "reference": 0.7445501582247429}, {"attribute": "7tTI1yOc", "criteria": "8ojLvTlj", "duration": 98, "reference": 0.6763873426736056}], "match_options": {"options": [{"name": "dzQmiBML", "type": "OZdSBBPI"}, {"name": "k7hN94EI", "type": "gitYZpvV"}, {"name": "1awLCh6K", "type": "MfQXYqiA"}]}, "matchingRules": [{"attribute": "OTsVdZ9z", "criteria": "1ZmzO9gs", "reference": 0.7951382568748045}, {"attribute": "KcP2aLpr", "criteria": "n4vaUYfE", "reference": 0.06552720296073289}, {"attribute": "KViKlUlq", "criteria": "RfoRn92i", "reference": 0.7042902339110122}], "sub_game_modes": {}, "use_newest_ticket_for_flexing": false}, "sessionQueueTimeoutSeconds": 86, "socialMatchmaking": true, "ticket_observability_enable": true, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName 'EX6N7QX7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName 'PcheNiKU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName '1jRWSYeV' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 83}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName 'fatuhYsg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName 'hXT87RA1' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "8pqAv98m", "count": 7, "mmrMax": 0.24357767368891392, "mmrMean": 0.8002287951247188, "mmrMin": 0.2512304402602906, "mmrStdDev": 0.873129953057748}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName '8Qbkclgn' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 33, "party_attributes": {"IaOXIB5B": {}, "8yX7jApo": {}, "QORfoVwb": {}}, "party_id": "zOmEF9MO", "party_members": [{"extra_attributes": {"jFrD78O8": {}, "b0YWkrKs": {}, "l0ATBatc": {}}, "user_id": "z5WiaTs0"}, {"extra_attributes": {"GjJFMuaL": {}, "tNpPvQ60": {}, "hvYkwPB2": {}}, "user_id": "rixUW41H"}, {"extra_attributes": {"odPhngxO": {}, "Xsc96Wa3": {}, "b5W0WVSv": {}}, "user_id": "I0mc6Ldr"}], "ticket_created_at": 52, "ticket_id": "Q8ysGKN5"}, {"first_ticket_created_at": 43, "party_attributes": {"YNXvjvG7": {}, "nj0wxPkp": {}, "L1CDe8U6": {}}, "party_id": "Yx5kH9Vy", "party_members": [{"extra_attributes": {"6iKWOInF": {}, "3TCe6Te5": {}, "FHJ6F32F": {}}, "user_id": "mjgTAFll"}, {"extra_attributes": {"3tSWEXVg": {}, "6bHKYGOa": {}, "n4MOK6BP": {}}, "user_id": "mGaxhItQ"}, {"extra_attributes": {"zsBiKG4z": {}, "sSFJSm29": {}, "aeaXKFfv": {}}, "user_id": "60F6b3VU"}], "ticket_created_at": 19, "ticket_id": "BEK5YqbP"}, {"first_ticket_created_at": 58, "party_attributes": {"0BP3I1Lo": {}, "AS3l7bb2": {}, "SKyhfKWy": {}}, "party_id": "REL9Feks", "party_members": [{"extra_attributes": {"Z0oFlRDS": {}, "MSJZqF7O": {}, "fWXTj3cW": {}}, "user_id": "k9gh94Jp"}, {"extra_attributes": {"Q6amMeUF": {}, "ywjpKBUH": {}, "OVc89Sy0": {}}, "user_id": "4DUk4Pnk"}, {"extra_attributes": {"Ggz4ZfRm": {}, "q1nWTB9N": {}, "GO5BF51n": {}}, "user_id": "bOdYtLG6"}], "ticket_created_at": 55, "ticket_id": "jIswWOg8"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName 'rPbxH6TK' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 42}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'omIV6zpm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'znyXEVow' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName '4oH6B4hS' \
    --matchID 'WATHjfPO' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["q5f5SmQL", "FI1JZV4Y", "YgfQjSkT"], "party_id": "3ssVAUDB", "user_id": "ELPwHSJK"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'nSew3eIN' \
    --matchID 'l4IHugS0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'nuK3yvB6' \
    --matchID 'fSiYVdSW' \
    --namespace $AB_NAMESPACE \
    --userID 'mSSwczWa' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName 'X7vNFBlt' \
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
    --channelName 'q8gSxl2D' \
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