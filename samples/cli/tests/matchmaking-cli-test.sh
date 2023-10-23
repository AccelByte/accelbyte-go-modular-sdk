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
    --limit '43' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "7hbaUpdZ", "description": "U5eOEZHl", "find_match_timeout_seconds": 10, "game_mode": "G6dtev1Y", "joinable": false, "max_delay_ms": 5, "region_expansion_range_ms": 48, "region_expansion_rate_ms": 14, "region_latency_initial_range_ms": 29, "region_latency_max_ms": 93, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 93, "min": 50, "name": "BG3WAEdh"}, {"max": 86, "min": 90, "name": "ul7ue9Ag"}, {"max": 39, "min": 80, "name": "v157aNwz"}], [{"max": 95, "min": 73, "name": "r9dnRBBz"}, {"max": 33, "min": 75, "name": "YDphDRc9"}, {"max": 41, "min": 79, "name": "wwq56ojA"}], [{"max": 53, "min": 69, "name": "8PoZtmgw"}, {"max": 49, "min": 11, "name": "VHIM5abM"}, {"max": 52, "min": 10, "name": "n1VHZoeM"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 33, "role_flexing_second": 74}, "max_number": 94, "min_number": 14, "player_max_number": 47, "player_min_number": 84}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 72, "min": 69, "name": "64RlgDxD"}, {"max": 8, "min": 58, "name": "MgMVxKfy"}, {"max": 2, "min": 72, "name": "X0mUjWYC"}], [{"max": 75, "min": 59, "name": "ldjwQV7k"}, {"max": 21, "min": 42, "name": "62ArCNrB"}, {"max": 38, "min": 63, "name": "FK2drDjW"}], [{"max": 46, "min": 3, "name": "x3B0rSHq"}, {"max": 82, "min": 20, "name": "lZVtE4KX"}, {"max": 6, "min": 48, "name": "gYfKxFn4"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 94, "role_flexing_second": 46}, "duration": 1, "max_number": 88, "min_number": 100, "player_max_number": 91, "player_min_number": 73}, {"combination": {"alliances": [[{"max": 52, "min": 90, "name": "Oi6VvWoN"}, {"max": 33, "min": 34, "name": "GgXA4G6j"}, {"max": 24, "min": 66, "name": "21XLqiqL"}], [{"max": 85, "min": 98, "name": "qX9z4Mjd"}, {"max": 99, "min": 48, "name": "3ovXmTbg"}, {"max": 61, "min": 75, "name": "nC0ZCCaL"}], [{"max": 63, "min": 63, "name": "znwsOlx1"}, {"max": 6, "min": 48, "name": "ScPnu50G"}, {"max": 91, "min": 44, "name": "VIvfPyAT"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 38, "role_flexing_second": 0}, "duration": 25, "max_number": 23, "min_number": 63, "player_max_number": 45, "player_min_number": 16}, {"combination": {"alliances": [[{"max": 48, "min": 40, "name": "M6iLfaOt"}, {"max": 73, "min": 47, "name": "o6vPPu4w"}, {"max": 25, "min": 83, "name": "yZ9tIz9U"}], [{"max": 47, "min": 39, "name": "NZOvO4lp"}, {"max": 97, "min": 88, "name": "dsjTAeUk"}, {"max": 77, "min": 78, "name": "7fNQMcKI"}], [{"max": 39, "min": 87, "name": "8pCc3JHN"}, {"max": 51, "min": 66, "name": "nx5DGCKP"}, {"max": 36, "min": 28, "name": "soZAPvI2"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 78, "role_flexing_second": 65}, "duration": 17, "max_number": 63, "min_number": 56, "player_max_number": 3, "player_min_number": 19}], "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 16, "flex_flat_step_range": 20, "flex_immunity_count": 40, "flex_range_max": 62, "flex_rate_ms": 27, "flex_step_max": 75, "force_authority_match": true, "initial_step_range": 97, "mmr_max": 92, "mmr_mean": 67, "mmr_min": 4, "mmr_std_dev": 43, "override_mmr_data": false, "use_bucket_mmr": true, "use_flat_flex_step": true}, "flexing_rule": [{"attribute": "9xy7p5VN", "criteria": "raCn56zw", "duration": 42, "reference": 0.5721476601377342}, {"attribute": "HLi89qly", "criteria": "aH2NMiYn", "duration": 5, "reference": 0.5845693224929979}, {"attribute": "kHEV0XdG", "criteria": "XAmL7418", "duration": 58, "reference": 0.09143712889051148}], "match_options": {"options": [{"name": "NUHfOrnX", "type": "2mz2u48p"}, {"name": "IqjTOjIw", "type": "4paJ0Ma9"}, {"name": "AvuA8ey7", "type": "qoYkpy8y"}]}, "matching_rule": [{"attribute": "Szhgevat", "criteria": "mf2xzjKW", "reference": 0.5482075141003414}, {"attribute": "AMOhY4OF", "criteria": "U7D5vU9J", "reference": 0.2692216823939323}, {"attribute": "7qimqtv2", "criteria": "41TiVQck", "reference": 0.9303843275186571}], "rebalance_enable": true, "sub_game_modes": {"mS2f1wqc": {"alliance": {"combination": {"alliances": [[{"max": 77, "min": 35, "name": "G4sYCUQd"}, {"max": 14, "min": 41, "name": "o92rLBM3"}, {"max": 72, "min": 88, "name": "G6qCCzVh"}], [{"max": 30, "min": 0, "name": "vQWvEjhv"}, {"max": 83, "min": 60, "name": "Y72XBhIL"}, {"max": 89, "min": 39, "name": "IwKBdhJl"}], [{"max": 41, "min": 3, "name": "qBxhYwEL"}, {"max": 10, "min": 57, "name": "3c3Evm8W"}, {"max": 55, "min": 35, "name": "u7LZSiIU"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 52, "role_flexing_second": 59}, "max_number": 74, "min_number": 59, "player_max_number": 46, "player_min_number": 58}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 15, "min": 93, "name": "5HpqDfFZ"}, {"max": 23, "min": 26, "name": "TNDU7zBe"}, {"max": 71, "min": 1, "name": "qX2DbKUN"}], [{"max": 82, "min": 16, "name": "xKxpUUbn"}, {"max": 41, "min": 22, "name": "3a7tPwta"}, {"max": 44, "min": 88, "name": "Dvt3lADK"}], [{"max": 76, "min": 82, "name": "ZWYNJVHx"}, {"max": 23, "min": 13, "name": "b7jmBwJp"}, {"max": 41, "min": 64, "name": "RmhFiq2F"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 89, "role_flexing_second": 61}, "duration": 3, "max_number": 55, "min_number": 71, "player_max_number": 20, "player_min_number": 95}, {"combination": {"alliances": [[{"max": 46, "min": 5, "name": "fDV6muDW"}, {"max": 47, "min": 15, "name": "6DxudbjY"}, {"max": 93, "min": 88, "name": "kzWV6k06"}], [{"max": 98, "min": 92, "name": "wDD6eIXA"}, {"max": 37, "min": 39, "name": "UPaTt3hp"}, {"max": 48, "min": 17, "name": "Yc69fHTj"}], [{"max": 0, "min": 8, "name": "KrZZdM0A"}, {"max": 50, "min": 88, "name": "dsfswlFk"}, {"max": 3, "min": 35, "name": "BhE4VbZv"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 73, "role_flexing_second": 76}, "duration": 10, "max_number": 7, "min_number": 98, "player_max_number": 43, "player_min_number": 82}, {"combination": {"alliances": [[{"max": 89, "min": 38, "name": "M20lFZc4"}, {"max": 63, "min": 70, "name": "pe4xrgop"}, {"max": 28, "min": 2, "name": "NU6HjJi0"}], [{"max": 35, "min": 97, "name": "IvILwdAD"}, {"max": 98, "min": 85, "name": "8Ewj4tLG"}, {"max": 26, "min": 10, "name": "bQVuR5QO"}], [{"max": 42, "min": 44, "name": "OBWJP0Dn"}, {"max": 81, "min": 56, "name": "bLYKOdDO"}, {"max": 42, "min": 55, "name": "vjtCOS9V"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 97, "role_flexing_second": 8}, "duration": 9, "max_number": 27, "min_number": 57, "player_max_number": 66, "player_min_number": 53}], "name": "ZEU1lhww"}, "x79HsBU6": {"alliance": {"combination": {"alliances": [[{"max": 17, "min": 45, "name": "p1snCagB"}, {"max": 97, "min": 68, "name": "1jHk61yx"}, {"max": 35, "min": 21, "name": "aVxCPDlw"}], [{"max": 5, "min": 21, "name": "U4Tyld42"}, {"max": 9, "min": 90, "name": "HGX0Nmbj"}, {"max": 59, "min": 13, "name": "xqJuHo6A"}], [{"max": 21, "min": 72, "name": "Tn9eAIkf"}, {"max": 89, "min": 5, "name": "4Sn4my5E"}, {"max": 95, "min": 76, "name": "cxxLMtHD"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 25, "role_flexing_second": 97}, "max_number": 78, "min_number": 75, "player_max_number": 63, "player_min_number": 64}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 36, "min": 19, "name": "GgQX2vlb"}, {"max": 56, "min": 6, "name": "ZUd1eDrJ"}, {"max": 75, "min": 59, "name": "k4LYw6KS"}], [{"max": 61, "min": 90, "name": "ooZ8YhCs"}, {"max": 34, "min": 11, "name": "oz8gQcLr"}, {"max": 2, "min": 9, "name": "PPi6L1zi"}], [{"max": 84, "min": 73, "name": "FlN96mFN"}, {"max": 19, "min": 54, "name": "ibcdEzAp"}, {"max": 57, "min": 83, "name": "oMZGxPvn"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 96, "role_flexing_second": 32}, "duration": 90, "max_number": 58, "min_number": 100, "player_max_number": 97, "player_min_number": 66}, {"combination": {"alliances": [[{"max": 43, "min": 88, "name": "jJMRNnVp"}, {"max": 61, "min": 52, "name": "Oa1T5iDJ"}, {"max": 9, "min": 76, "name": "rFis9ipu"}], [{"max": 84, "min": 50, "name": "iQBuGb8J"}, {"max": 100, "min": 69, "name": "VxnYhQGW"}, {"max": 96, "min": 75, "name": "BG6Fggxa"}], [{"max": 36, "min": 23, "name": "hLxjVT6G"}, {"max": 34, "min": 82, "name": "AwDRbPuJ"}, {"max": 11, "min": 30, "name": "HFZQQQ7I"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 62, "role_flexing_second": 83}, "duration": 61, "max_number": 81, "min_number": 14, "player_max_number": 18, "player_min_number": 64}, {"combination": {"alliances": [[{"max": 65, "min": 6, "name": "hnWCNLMh"}, {"max": 32, "min": 61, "name": "l1AeKc5P"}, {"max": 50, "min": 1, "name": "yRwdD9fL"}], [{"max": 23, "min": 93, "name": "plVMZ5um"}, {"max": 94, "min": 8, "name": "QsLID4xc"}, {"max": 56, "min": 96, "name": "0f4YxYhU"}], [{"max": 51, "min": 4, "name": "xXW3xVyH"}, {"max": 52, "min": 13, "name": "dqAmD3BA"}, {"max": 1, "min": 99, "name": "LpAreyY3"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 67, "role_flexing_second": 28}, "duration": 48, "max_number": 86, "min_number": 89, "player_max_number": 37, "player_min_number": 96}], "name": "GXmrmQWz"}, "oZFN9CLM": {"alliance": {"combination": {"alliances": [[{"max": 27, "min": 62, "name": "xYT9W05N"}, {"max": 63, "min": 36, "name": "Z22R9n9i"}, {"max": 47, "min": 89, "name": "FkDHcl1p"}], [{"max": 5, "min": 1, "name": "dm4mxRfZ"}, {"max": 5, "min": 69, "name": "O87TWOmz"}, {"max": 63, "min": 88, "name": "RgRRICB0"}], [{"max": 53, "min": 77, "name": "DBAqtbRh"}, {"max": 44, "min": 70, "name": "WPsCxgDF"}, {"max": 10, "min": 90, "name": "SDKkgPvy"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 24, "role_flexing_second": 30}, "max_number": 22, "min_number": 26, "player_max_number": 79, "player_min_number": 24}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 21, "min": 92, "name": "GKHSK6SP"}, {"max": 96, "min": 43, "name": "rnrE9ysK"}, {"max": 68, "min": 84, "name": "TOFmuH2P"}], [{"max": 19, "min": 60, "name": "O9jsk3hd"}, {"max": 97, "min": 9, "name": "dGgAZZ7T"}, {"max": 85, "min": 48, "name": "o520ThIX"}], [{"max": 90, "min": 53, "name": "HX9EevEf"}, {"max": 78, "min": 18, "name": "r53hyOfa"}, {"max": 9, "min": 100, "name": "LtrMx5ny"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 39, "role_flexing_second": 86}, "duration": 6, "max_number": 87, "min_number": 52, "player_max_number": 84, "player_min_number": 84}, {"combination": {"alliances": [[{"max": 15, "min": 34, "name": "Ji4y5VLU"}, {"max": 26, "min": 43, "name": "JLCfmyya"}, {"max": 37, "min": 18, "name": "EUNaecdv"}], [{"max": 68, "min": 11, "name": "OBm0JjUH"}, {"max": 100, "min": 97, "name": "HLBGkZmv"}, {"max": 49, "min": 96, "name": "lUt4h3ue"}], [{"max": 34, "min": 93, "name": "dZaGGwbO"}, {"max": 19, "min": 57, "name": "5wI3kQLV"}, {"max": 14, "min": 100, "name": "ROQRqsBV"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 31, "role_flexing_second": 42}, "duration": 32, "max_number": 74, "min_number": 41, "player_max_number": 68, "player_min_number": 38}, {"combination": {"alliances": [[{"max": 96, "min": 94, "name": "0wlwhlra"}, {"max": 90, "min": 27, "name": "MiEl9RzV"}, {"max": 46, "min": 42, "name": "KezrF3CT"}], [{"max": 19, "min": 93, "name": "8Ib6vOp6"}, {"max": 99, "min": 30, "name": "GiGdoY3S"}, {"max": 68, "min": 14, "name": "8TfJOBac"}], [{"max": 22, "min": 41, "name": "HdMa6Old"}, {"max": 52, "min": 50, "name": "z6qqOvCl"}, {"max": 89, "min": 21, "name": "YMi0iDVj"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 15, "role_flexing_second": 80}, "duration": 20, "max_number": 41, "min_number": 71, "player_max_number": 22, "player_min_number": 66}], "name": "p9sFTeHW"}}, "use_newest_ticket_for_flexing": true}, "session_queue_timeout_seconds": 22, "social_matchmaking": true, "ticket_observability_enable": true, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'l7Nll9I8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'YEEa28GL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "gYHG1vL9", "players": [{"results": [{"attribute": "3F7zO3Z5", "value": 0.40577871951891065}, {"attribute": "soLioPBK", "value": 0.8108167337340708}, {"attribute": "oawm6tOr", "value": 0.8566435978252611}], "user_id": "2popEnc4"}, {"results": [{"attribute": "OP8orEXo", "value": 0.6169346176385706}, {"attribute": "CzGPplA4", "value": 0.29697994506353775}, {"attribute": "cU3I7keR", "value": 0.24318641801055907}], "user_id": "0aDQwiGc"}, {"results": [{"attribute": "9vSmA4ri", "value": 0.17038574730027467}, {"attribute": "cqVkSUq0", "value": 0.648261354472433}, {"attribute": "cpIznHB9", "value": 0.13948179658719073}], "user_id": "RVVRe0Wa"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "kW6FY1my"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "wmyGqyyl", "client_version": "TcaysSI7", "deployment": "k75fAsHK", "error_code": 17, "error_message": "BkV9AV58", "game_mode": "LyDRaBYM", "is_mock": "tKM3koKV", "joinable": false, "match_id": "Pd8ZDDKF", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 5, "party_attributes": {"TZzXS0ZY": {}, "TJStuG6S": {}, "cN0BZOFc": {}}, "party_id": "lODkrKKf", "party_members": [{"extra_attributes": {"QwqNdrMT": {}, "EuKr9W5X": {}, "VTji9ak5": {}}, "user_id": "ee1VAHeE"}, {"extra_attributes": {"TEOcuIfi": {}, "LfdMoA5W": {}, "77mMjJZy": {}}, "user_id": "020XyfJF"}, {"extra_attributes": {"LE8jFNht": {}, "WhwhoTMJ": {}, "u3LKYYtX": {}}, "user_id": "PvuWTESo"}], "ticket_created_at": 49, "ticket_id": "Z0v6rqZt"}, {"first_ticket_created_at": 76, "party_attributes": {"FgbtaFz0": {}, "OXsvg9Ei": {}, "PoOXm7gM": {}}, "party_id": "iOX1yCk0", "party_members": [{"extra_attributes": {"OVbz4ej3": {}, "8R93RSgr": {}, "5xyUeARH": {}}, "user_id": "I8avcoFT"}, {"extra_attributes": {"rQYwpM9N": {}, "obXdY2F2": {}, "4V3tkOFt": {}}, "user_id": "I1qYPyvs"}, {"extra_attributes": {"EiVVkzz1": {}, "VF3V8noG": {}, "kcxKXBMk": {}}, "user_id": "lMrOlCA4"}], "ticket_created_at": 85, "ticket_id": "1C3OOaPA"}, {"first_ticket_created_at": 27, "party_attributes": {"a5WZXgPB": {}, "Lki4opMB": {}, "IVXYxLIz": {}}, "party_id": "b91iEAAM", "party_members": [{"extra_attributes": {"DLWngRhl": {}, "rBfUXbBK": {}, "sLLFGZYl": {}}, "user_id": "2fSxOYxa"}, {"extra_attributes": {"T3fZ54Dw": {}, "kpT5nB0w": {}, "UhgtN9mo": {}}, "user_id": "t5CNuHIM"}, {"extra_attributes": {"SqQ3VthD": {}, "r3IMyZnG": {}, "PO6nIJha": {}}, "user_id": "A6ohdEw7"}], "ticket_created_at": 50, "ticket_id": "eFQQ4bE3"}]}, {"matching_parties": [{"first_ticket_created_at": 27, "party_attributes": {"j3nr3hbn": {}, "WlowHDef": {}, "j02WXEfQ": {}}, "party_id": "vPz4SMub", "party_members": [{"extra_attributes": {"DkfU1sJL": {}, "CE2qU6KQ": {}, "xIZK9ezx": {}}, "user_id": "OGgxsTbu"}, {"extra_attributes": {"u30w6lal": {}, "NL3C3zkN": {}, "MdnlgNpD": {}}, "user_id": "O9oJWJ5Z"}, {"extra_attributes": {"9bdYpM56": {}, "c1iuVet1": {}, "hbhQmIwM": {}}, "user_id": "CUHroJin"}], "ticket_created_at": 83, "ticket_id": "0XlvKBmW"}, {"first_ticket_created_at": 9, "party_attributes": {"FKu3cKX6": {}, "VFojburB": {}, "XVbZWLfU": {}}, "party_id": "6C8b140R", "party_members": [{"extra_attributes": {"aTzNANeM": {}, "WU5JZvIA": {}, "AfMd616P": {}}, "user_id": "jOoIkUbj"}, {"extra_attributes": {"YJTuTLrF": {}, "Hi07ijuK": {}, "EfHoMq6n": {}}, "user_id": "NN5LSKE5"}, {"extra_attributes": {"bfWOqnlz": {}, "TZTZd2vG": {}, "RYDTuaOD": {}}, "user_id": "RrsBoOSz"}], "ticket_created_at": 100, "ticket_id": "qyeDGZ1t"}, {"first_ticket_created_at": 76, "party_attributes": {"YZpktiLz": {}, "y3ItuwU7": {}, "uK0TqfHD": {}}, "party_id": "o1BfFvwJ", "party_members": [{"extra_attributes": {"A0kSLwvi": {}, "5Gtvqv0V": {}, "5qhCzMYg": {}}, "user_id": "ATeaNdz9"}, {"extra_attributes": {"R7DZaZ45": {}, "nBS6KGtp": {}, "eQRuoknn": {}}, "user_id": "kE8t7PzB"}, {"extra_attributes": {"hkBcVh4r": {}, "NG54LV8p": {}, "gBqoLVYS": {}}, "user_id": "kJ77a5mJ"}], "ticket_created_at": 65, "ticket_id": "RGZJl6Lc"}]}, {"matching_parties": [{"first_ticket_created_at": 45, "party_attributes": {"GF2bx1m2": {}, "SLykMN9r": {}, "T6LT2wWc": {}}, "party_id": "9T305tll", "party_members": [{"extra_attributes": {"Vdw4wy0G": {}, "a1i0Dum1": {}, "j79s6DSo": {}}, "user_id": "KXrLdL7n"}, {"extra_attributes": {"pmySNqn9": {}, "4lrlPHTR": {}, "RXqc8EZh": {}}, "user_id": "LmLjkSVf"}, {"extra_attributes": {"5R0dwl9Y": {}, "HR5N0Ahq": {}, "GwZ1lQXK": {}}, "user_id": "gZols3Fp"}], "ticket_created_at": 34, "ticket_id": "Ld0GStkY"}, {"first_ticket_created_at": 76, "party_attributes": {"roIW4KY8": {}, "wyaBuh0i": {}, "A10b9uBG": {}}, "party_id": "M6ueSkBY", "party_members": [{"extra_attributes": {"6oeiTv2A": {}, "wRXEwU1E": {}, "iEPVobrr": {}}, "user_id": "hRhjbAjv"}, {"extra_attributes": {"FOp4awGz": {}, "EkXLA8DV": {}, "j4rTOoqq": {}}, "user_id": "bLVdeZB5"}, {"extra_attributes": {"J2zMurQX": {}, "XiboQ8fK": {}, "iThWrEqd": {}}, "user_id": "CqsrKz3A"}], "ticket_created_at": 41, "ticket_id": "hm0aOmAf"}, {"first_ticket_created_at": 76, "party_attributes": {"XeHjesM5": {}, "m4G6Q0NS": {}, "BXYS3Djd": {}}, "party_id": "gRk3g41V", "party_members": [{"extra_attributes": {"0f7pzYAJ": {}, "h9qOrOtQ": {}, "aKkc0bbN": {}}, "user_id": "L24u2loF"}, {"extra_attributes": {"DCU6vohm": {}, "DypIDzTO": {}, "jHM8MCpK": {}}, "user_id": "2RAUBLvQ"}, {"extra_attributes": {"ctc5tRxf": {}, "lVEUHRTO": {}, "ml2FSPVv": {}}, "user_id": "ZmzuQHUO"}], "ticket_created_at": 64, "ticket_id": "buxG08X7"}]}], "namespace": "bX9xnWSo", "party_attributes": {"1dSK1fH9": {}, "KU3nHS97": {}, "qzuMxMDY": {}}, "party_id": "pbVjB0Ho", "queued_at": 52, "region": "MNTjO7E0", "server_name": "5V72NFUE", "status": "3HukBUjo", "ticket_id": "2smQFmPt", "ticket_ids": ["7BzX33lb", "I88YlRAC", "rM62KZjd"], "updated_at": "1984-05-27T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "kSjEy1AK"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'PCiPzGTf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 4, "userID": "U7whesiK", "weight": 0.9702031815422875}' \
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
    --matchIDs 'YqdjfuvQ' \
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
    --strategy 'Ow6Qo7LN' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'xBwAOblw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'Agt22C9A' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "yKmvagCj", "description": "Kf9OG6bX", "findMatchTimeoutSeconds": 34, "joinable": false, "max_delay_ms": 70, "region_expansion_range_ms": 35, "region_expansion_rate_ms": 80, "region_latency_initial_range_ms": 82, "region_latency_max_ms": 5, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 43, "min": 27, "name": "ai0GqfSR"}, {"max": 71, "min": 43, "name": "r7YvZrFM"}, {"max": 53, "min": 13, "name": "2BDmpwAR"}], [{"max": 37, "min": 47, "name": "tPTtIfPQ"}, {"max": 56, "min": 19, "name": "OvexBYSI"}, {"max": 3, "min": 46, "name": "hPlwcTgk"}], [{"max": 11, "min": 95, "name": "MB56QJkq"}, {"max": 71, "min": 95, "name": "BPVhGZZJ"}, {"max": 11, "min": 42, "name": "dIJ92yHi"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 90, "role_flexing_second": 36}, "maxNumber": 82, "minNumber": 74, "playerMaxNumber": 38, "playerMinNumber": 68}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 0, "min": 18, "name": "PNfPdvPF"}, {"max": 36, "min": 46, "name": "pMUHd5xa"}, {"max": 86, "min": 46, "name": "T94i4iq2"}], [{"max": 91, "min": 25, "name": "FKZnzkrR"}, {"max": 38, "min": 43, "name": "45FfXKUW"}, {"max": 89, "min": 30, "name": "Gwtthn0w"}], [{"max": 47, "min": 25, "name": "2Qo9GJum"}, {"max": 76, "min": 70, "name": "BTn9XN3A"}, {"max": 96, "min": 6, "name": "TokXElcM"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 28, "role_flexing_second": 30}, "duration": 82, "max_number": 28, "min_number": 36, "player_max_number": 6, "player_min_number": 46}, {"combination": {"alliances": [[{"max": 2, "min": 3, "name": "i6ci377s"}, {"max": 59, "min": 76, "name": "CoGTNliE"}, {"max": 91, "min": 39, "name": "BOjcxz82"}], [{"max": 34, "min": 28, "name": "twifSoqU"}, {"max": 29, "min": 7, "name": "0Z3mb3We"}, {"max": 90, "min": 97, "name": "94mbJHbA"}], [{"max": 80, "min": 92, "name": "7BeyIqcH"}, {"max": 39, "min": 71, "name": "IVQPWnDQ"}, {"max": 5, "min": 12, "name": "QSGdm9zy"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 64, "role_flexing_second": 24}, "duration": 100, "max_number": 4, "min_number": 4, "player_max_number": 53, "player_min_number": 45}, {"combination": {"alliances": [[{"max": 35, "min": 3, "name": "8Y5Wj0E5"}, {"max": 72, "min": 64, "name": "MKdrEv9h"}, {"max": 41, "min": 13, "name": "rxqZBrgm"}], [{"max": 11, "min": 96, "name": "rRl6v5X2"}, {"max": 98, "min": 41, "name": "C0GqMKRb"}, {"max": 38, "min": 77, "name": "grEDUmHo"}], [{"max": 29, "min": 7, "name": "LPqWXZqv"}, {"max": 37, "min": 57, "name": "hugCTXTm"}, {"max": 36, "min": 16, "name": "orY0wT9j"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 78, "role_flexing_second": 25}, "duration": 68, "max_number": 19, "min_number": 40, "player_max_number": 90, "player_min_number": 39}], "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 91, "flex_flat_step_range": 49, "flex_immunity_count": 7, "flex_range_max": 11, "flex_rate_ms": 41, "flex_step_max": 21, "force_authority_match": false, "initial_step_range": 39, "mmr_max": 97, "mmr_mean": 22, "mmr_min": 98, "mmr_std_dev": 11, "override_mmr_data": true, "use_bucket_mmr": false, "use_flat_flex_step": true}, "flexingRules": [{"attribute": "U96bzIU1", "criteria": "5TxIWHBX", "duration": 93, "reference": 0.6147452916550199}, {"attribute": "Axk7zQoT", "criteria": "ywfs64Ix", "duration": 91, "reference": 0.18005628393656137}, {"attribute": "Eokef4Rz", "criteria": "USq4aphw", "duration": 78, "reference": 0.5100822707796968}], "match_options": {"options": [{"name": "dWrz2gr8", "type": "KJ125U7U"}, {"name": "Bq0gkwZ2", "type": "EBfiKNNi"}, {"name": "ZTv7Udfo", "type": "CsQt7JUR"}]}, "matchingRules": [{"attribute": "sLLfMbgG", "criteria": "WSs8VuNr", "reference": 0.14579447330148698}, {"attribute": "wUvS69ND", "criteria": "rTSw8f8v", "reference": 0.667061859830598}, {"attribute": "GDLf5s1N", "criteria": "WU1uZzW3", "reference": 0.5984959451552103}], "sub_game_modes": {}, "use_newest_ticket_for_flexing": true}, "sessionQueueTimeoutSeconds": 60, "socialMatchmaking": true, "ticket_observability_enable": true, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName 'hb2BCttu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName 'pf6GXtmP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName 'pYoCa8Os' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 90}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName 'TkahQGbz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName 'RjcgRACp' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "4lqTrNFY", "count": 35, "mmrMax": 0.59733410360892, "mmrMean": 0.5208538081155576, "mmrMin": 0.14806986411149714, "mmrStdDev": 0.375397060466898}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName 'jCPePewP' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 98, "party_attributes": {"2n8Arg9H": {}, "eoVlUDpe": {}, "H95B1NjP": {}}, "party_id": "Ozhhh293", "party_members": [{"extra_attributes": {"poD37lwW": {}, "CVsboiqW": {}, "DOxECHgC": {}}, "user_id": "l01UboK4"}, {"extra_attributes": {"A1Huwd8T": {}, "IRzsCPxq": {}, "ZqnkVhPG": {}}, "user_id": "JhslcByV"}, {"extra_attributes": {"kNpk3njT": {}, "gqEFxqyS": {}, "zTzrz9Dc": {}}, "user_id": "htMv2jBA"}], "ticket_created_at": 50, "ticket_id": "3uVbH4yh"}, {"first_ticket_created_at": 51, "party_attributes": {"ibjF4aER": {}, "f8ADfDL2": {}, "kJQW3ECM": {}}, "party_id": "EHtVu9Qf", "party_members": [{"extra_attributes": {"GC0E8sM1": {}, "cSxlgtWw": {}, "P3szEmHY": {}}, "user_id": "FFWkNh7v"}, {"extra_attributes": {"x7BqaJiX": {}, "Zvr6Ghqc": {}, "an09xcyA": {}}, "user_id": "kXqWheTv"}, {"extra_attributes": {"pnc8nfgi": {}, "D5s6DooA": {}, "Y9FrjFjg": {}}, "user_id": "43LM8dve"}], "ticket_created_at": 33, "ticket_id": "CXOwxEAz"}, {"first_ticket_created_at": 87, "party_attributes": {"eiGRrhAz": {}, "MXt5STve": {}, "9pEk1ZmP": {}}, "party_id": "lzfs8ei2", "party_members": [{"extra_attributes": {"7Y39IGhw": {}, "mIOKrrYk": {}, "i6FYXAkg": {}}, "user_id": "wNM87M4M"}, {"extra_attributes": {"gm4GpBHq": {}, "NPPIEZhs": {}, "rmtLXjo7": {}}, "user_id": "wHeMMgg7"}, {"extra_attributes": {"2kOZFk8T": {}, "XYLZV6Wk": {}, "clApn4H1": {}}, "user_id": "O0yhsSMN"}], "ticket_created_at": 96, "ticket_id": "qTTVCxYD"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName 'nMX2X6dz' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 47}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'y7oGT6zJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName '0Bt1f2mu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'tBkwCQah' \
    --matchID 'Ac0bJyc8' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["pL2CBWi1", "fnqUOU27", "94jDG80F"], "party_id": "Grmgmzth", "user_id": "Uk3R2gIA"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'dHzv1XgT' \
    --matchID '0HyhJdIY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'qCVHroQM' \
    --matchID 'dIU6Grtd' \
    --namespace $AB_NAMESPACE \
    --userID '74oQ3VOU' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName '9XaTFQBl' \
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
    --channelName 'HjOJiqF8' \
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