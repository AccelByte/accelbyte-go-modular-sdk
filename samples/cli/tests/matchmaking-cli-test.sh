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
    --limit '44' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCanMatch", "deployment": "vElyPlqU", "description": "xYBTNCKh", "find_match_timeout_seconds": 91, "game_mode": "6pXgBJ5b", "joinable": false, "max_delay_ms": 29, "region_expansion_range_ms": 33, "region_expansion_rate_ms": 33, "region_latency_initial_range_ms": 33, "region_latency_max_ms": 87, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 96, "min": 21, "name": "DPKcIV6X"}, {"max": 39, "min": 86, "name": "0FjQ2tYD"}, {"max": 48, "min": 27, "name": "ohgWoVHJ"}], [{"max": 89, "min": 63, "name": "QcFr4Cd1"}, {"max": 19, "min": 53, "name": "zW34BL8n"}, {"max": 18, "min": 10, "name": "8mMzSYnA"}], [{"max": 3, "min": 75, "name": "B5eYqMCJ"}, {"max": 18, "min": 71, "name": "d2faU98x"}, {"max": 51, "min": 2, "name": "woQ2toeV"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 100, "role_flexing_second": 97}, "max_number": 98, "min_number": 99, "player_max_number": 48, "player_min_number": 51}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 39, "min": 17, "name": "Hx63MEZm"}, {"max": 65, "min": 14, "name": "rJNVEsNg"}, {"max": 14, "min": 20, "name": "HpZ4HWE3"}], [{"max": 68, "min": 66, "name": "NmZGx7f9"}, {"max": 10, "min": 58, "name": "oSKckybQ"}, {"max": 29, "min": 86, "name": "109OCVw0"}], [{"max": 1, "min": 17, "name": "N0TOl4Nz"}, {"max": 55, "min": 91, "name": "crxo0ls8"}, {"max": 14, "min": 73, "name": "iKF2tWOb"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 71, "role_flexing_second": 21}, "duration": 90, "max_number": 94, "min_number": 1, "player_max_number": 84, "player_min_number": 41}, {"combination": {"alliances": [[{"max": 62, "min": 56, "name": "gHIQXNXz"}, {"max": 94, "min": 24, "name": "NngPVtZz"}, {"max": 92, "min": 77, "name": "6JLClWw9"}], [{"max": 91, "min": 43, "name": "vIsmAMCW"}, {"max": 89, "min": 41, "name": "wRm3x5Ik"}, {"max": 73, "min": 33, "name": "KxS69fzj"}], [{"max": 51, "min": 79, "name": "eDayTatZ"}, {"max": 46, "min": 41, "name": "gItIqCGN"}, {"max": 31, "min": 15, "name": "LEKj34Dn"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 62, "role_flexing_second": 64}, "duration": 67, "max_number": 49, "min_number": 96, "player_max_number": 80, "player_min_number": 86}, {"combination": {"alliances": [[{"max": 74, "min": 48, "name": "BkBQvVZ3"}, {"max": 62, "min": 53, "name": "XQShxqVk"}, {"max": 34, "min": 90, "name": "Fz8egx2s"}], [{"max": 99, "min": 61, "name": "9XsjSLn2"}, {"max": 12, "min": 61, "name": "tvGjTJDM"}, {"max": 19, "min": 10, "name": "SoVrUPz9"}], [{"max": 74, "min": 24, "name": "9wQ7Qz3d"}, {"max": 94, "min": 91, "name": "k7viUGP0"}, {"max": 63, "min": 34, "name": "BOE0HZlA"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 26, "role_flexing_second": 19}, "duration": 17, "max_number": 31, "min_number": 47, "player_max_number": 9, "player_min_number": 12}], "batch_size": 89, "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 86, "flex_flat_step_range": 84, "flex_immunity_count": 66, "flex_range_max": 39, "flex_rate_ms": 37, "flex_step_max": 36, "force_authority_match": true, "initial_step_range": 34, "mmr_max": 79, "mmr_mean": 38, "mmr_min": 77, "mmr_std_dev": 39, "override_mmr_data": false, "use_bucket_mmr": true, "use_flat_flex_step": true}, "flexing_rule": [{"attribute": "H1vBySNb", "criteria": "r9JH0Bah", "duration": 13, "reference": 0.7888768128239994}, {"attribute": "HzhWAE0R", "criteria": "iH8HKf9f", "duration": 35, "reference": 0.5770455757988542}, {"attribute": "Jr5oJp1b", "criteria": "e2JFIQDU", "duration": 65, "reference": 0.5265302079979804}], "match_options": {"options": [{"name": "gVJu5vrr", "type": "h608BBYU"}, {"name": "Hb7wAllR", "type": "toYh45p5"}, {"name": "kODYvap3", "type": "NjWbXTv4"}]}, "matching_rule": [{"attribute": "41eguS0O", "criteria": "eEYCOxb3", "reference": 0.6850486077853725}, {"attribute": "sBUD2kbA", "criteria": "h4zeOF1A", "reference": 0.014756840924068593}, {"attribute": "iZSDU2oX", "criteria": "TQf4PvPH", "reference": 0.14655569978543814}], "rebalance_enable": true, "sort_ticket": {"search_result": "scCsF9vZ", "ticket_queue": "Xw80u90j"}, "sort_tickets": [{"search_result": "5lrGPeFW", "threshold": 89, "ticket_queue": "34iAJcsI"}, {"search_result": "xBmdfZx6", "threshold": 54, "ticket_queue": "w9mLxRcq"}, {"search_result": "NDRiv8kI", "threshold": 37, "ticket_queue": "OH2yKMYv"}], "sub_game_modes": {"r6KaLZWP": {"alliance": {"combination": {"alliances": [[{"max": 1, "min": 7, "name": "JqwubDqc"}, {"max": 96, "min": 31, "name": "sWSeFR3J"}, {"max": 44, "min": 25, "name": "XDdMO9cw"}], [{"max": 20, "min": 47, "name": "zIgJ8MSX"}, {"max": 49, "min": 79, "name": "lx9X03EH"}, {"max": 70, "min": 62, "name": "hGMkZ5iq"}], [{"max": 51, "min": 19, "name": "3Zk7VO7F"}, {"max": 80, "min": 49, "name": "d44CKNpk"}, {"max": 20, "min": 49, "name": "PfH3mJMo"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 78, "role_flexing_second": 88}, "max_number": 32, "min_number": 33, "player_max_number": 18, "player_min_number": 39}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 58, "min": 77, "name": "bEmJaGJS"}, {"max": 92, "min": 59, "name": "DcwMxX5j"}, {"max": 91, "min": 89, "name": "lCgPu8a6"}], [{"max": 1, "min": 42, "name": "gwgK2jPu"}, {"max": 44, "min": 66, "name": "dsHO9Un9"}, {"max": 38, "min": 5, "name": "nYfj3vZx"}], [{"max": 13, "min": 94, "name": "8XEPXZIh"}, {"max": 12, "min": 82, "name": "4Xa2GzYA"}, {"max": 3, "min": 17, "name": "0Ug5VQ4t"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 47, "role_flexing_second": 33}, "duration": 87, "max_number": 4, "min_number": 7, "player_max_number": 18, "player_min_number": 30}, {"combination": {"alliances": [[{"max": 43, "min": 88, "name": "RvvMtYji"}, {"max": 18, "min": 54, "name": "ttwaC1wl"}, {"max": 63, "min": 70, "name": "qKhQ6LEH"}], [{"max": 33, "min": 58, "name": "dRCfp3N9"}, {"max": 68, "min": 10, "name": "kmKxjOx7"}, {"max": 75, "min": 25, "name": "fdRBLF5O"}], [{"max": 74, "min": 55, "name": "Gr4urdYz"}, {"max": 0, "min": 20, "name": "HUICrOCv"}, {"max": 33, "min": 24, "name": "KXiMEiTL"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 32, "role_flexing_second": 98}, "duration": 35, "max_number": 100, "min_number": 81, "player_max_number": 94, "player_min_number": 30}, {"combination": {"alliances": [[{"max": 82, "min": 3, "name": "FrX1eipt"}, {"max": 0, "min": 56, "name": "pb0YFWi7"}, {"max": 43, "min": 78, "name": "c5lQJOlr"}], [{"max": 27, "min": 77, "name": "vg5E7pYm"}, {"max": 31, "min": 65, "name": "AIiZQnGj"}, {"max": 25, "min": 73, "name": "0p2XCS5T"}], [{"max": 16, "min": 4, "name": "ahAOSgW0"}, {"max": 33, "min": 33, "name": "dphMBPHU"}, {"max": 34, "min": 90, "name": "yAd5q5V9"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 90, "role_flexing_second": 26}, "duration": 41, "max_number": 44, "min_number": 13, "player_max_number": 98, "player_min_number": 29}], "name": "ZlRUBcRy"}, "uPaTnbNF": {"alliance": {"combination": {"alliances": [[{"max": 53, "min": 76, "name": "kYuKuz2Q"}, {"max": 55, "min": 47, "name": "4DmEYROK"}, {"max": 7, "min": 86, "name": "zEgFz2W8"}], [{"max": 56, "min": 11, "name": "JuxBZp2q"}, {"max": 86, "min": 20, "name": "Lyl7qaUD"}, {"max": 63, "min": 18, "name": "mtk9wdZd"}], [{"max": 60, "min": 8, "name": "mx5NuNWX"}, {"max": 84, "min": 79, "name": "F3YXrfog"}, {"max": 86, "min": 67, "name": "qpId2fAb"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 46, "role_flexing_second": 72}, "max_number": 7, "min_number": 73, "player_max_number": 20, "player_min_number": 65}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 64, "min": 33, "name": "wuDKI9bK"}, {"max": 96, "min": 0, "name": "ZdyMlbxZ"}, {"max": 92, "min": 63, "name": "qjZwN9N3"}], [{"max": 15, "min": 19, "name": "Cq6VVAGS"}, {"max": 19, "min": 38, "name": "58gMudm6"}, {"max": 44, "min": 20, "name": "wrPAsP4I"}], [{"max": 17, "min": 98, "name": "RslyuwhY"}, {"max": 72, "min": 31, "name": "pCyOKsr9"}, {"max": 83, "min": 17, "name": "xGIzxddl"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 24, "role_flexing_second": 23}, "duration": 82, "max_number": 73, "min_number": 43, "player_max_number": 86, "player_min_number": 45}, {"combination": {"alliances": [[{"max": 13, "min": 11, "name": "DPNS0Ukq"}, {"max": 66, "min": 12, "name": "sFeqPEIg"}, {"max": 49, "min": 69, "name": "qHPvDP4i"}], [{"max": 80, "min": 86, "name": "46cucbWD"}, {"max": 13, "min": 84, "name": "G6Swb0rU"}, {"max": 2, "min": 67, "name": "phU9oLjq"}], [{"max": 97, "min": 8, "name": "q1nursne"}, {"max": 41, "min": 5, "name": "KvPMRMRm"}, {"max": 24, "min": 53, "name": "ZQfBv7In"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 84, "role_flexing_second": 30}, "duration": 85, "max_number": 18, "min_number": 35, "player_max_number": 45, "player_min_number": 17}, {"combination": {"alliances": [[{"max": 0, "min": 93, "name": "qmWxIMVC"}, {"max": 15, "min": 18, "name": "mEFQdsYy"}, {"max": 21, "min": 17, "name": "0Cd8Pjkr"}], [{"max": 11, "min": 16, "name": "fPubvfgl"}, {"max": 35, "min": 66, "name": "utyaaOvh"}, {"max": 91, "min": 67, "name": "VD5DsjTL"}], [{"max": 29, "min": 73, "name": "YHtqzDz2"}, {"max": 43, "min": 79, "name": "kVvIbdGc"}, {"max": 57, "min": 33, "name": "EpN3FojV"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 38, "role_flexing_second": 73}, "duration": 56, "max_number": 10, "min_number": 67, "player_max_number": 58, "player_min_number": 19}], "name": "Mm60cYXC"}, "B2lPEtO5": {"alliance": {"combination": {"alliances": [[{"max": 36, "min": 13, "name": "O4D77KGK"}, {"max": 33, "min": 90, "name": "0RRTzYYz"}, {"max": 59, "min": 3, "name": "CvlZQDfu"}], [{"max": 46, "min": 9, "name": "SkSyriHY"}, {"max": 60, "min": 91, "name": "RhLteS6T"}, {"max": 57, "min": 69, "name": "h7FPWBJn"}], [{"max": 70, "min": 68, "name": "zKzzrJUU"}, {"max": 73, "min": 5, "name": "ikZDUPXr"}, {"max": 31, "min": 74, "name": "94oF0aeI"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 21, "role_flexing_second": 82}, "max_number": 87, "min_number": 29, "player_max_number": 28, "player_min_number": 13}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 51, "min": 74, "name": "nSoIyneQ"}, {"max": 79, "min": 53, "name": "3Pl8cc3R"}, {"max": 28, "min": 71, "name": "mG7eo1LF"}], [{"max": 60, "min": 38, "name": "nhz9xshw"}, {"max": 92, "min": 39, "name": "btywpM4K"}, {"max": 97, "min": 51, "name": "8c6UwE5D"}], [{"max": 91, "min": 89, "name": "s4HuxfU2"}, {"max": 88, "min": 12, "name": "SiOZ989q"}, {"max": 30, "min": 93, "name": "jsfxMYOn"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 91, "role_flexing_second": 37}, "duration": 97, "max_number": 1, "min_number": 81, "player_max_number": 14, "player_min_number": 84}, {"combination": {"alliances": [[{"max": 26, "min": 37, "name": "HoroNVuO"}, {"max": 19, "min": 75, "name": "ivWHlJ3Z"}, {"max": 48, "min": 8, "name": "iPjfnG3R"}], [{"max": 43, "min": 6, "name": "HkpxMiMF"}, {"max": 71, "min": 5, "name": "QYpnfPA4"}, {"max": 72, "min": 36, "name": "2UiNfP0m"}], [{"max": 76, "min": 82, "name": "znHpmL3S"}, {"max": 1, "min": 10, "name": "vzksmWfX"}, {"max": 70, "min": 87, "name": "kS9dNmTL"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 45, "role_flexing_second": 63}, "duration": 85, "max_number": 34, "min_number": 27, "player_max_number": 33, "player_min_number": 27}, {"combination": {"alliances": [[{"max": 15, "min": 74, "name": "sSf03Xx8"}, {"max": 91, "min": 69, "name": "7aGTSiaW"}, {"max": 38, "min": 87, "name": "stTr1r6L"}], [{"max": 55, "min": 62, "name": "xRBtZusY"}, {"max": 2, "min": 80, "name": "Yqhy3c0P"}, {"max": 24, "min": 88, "name": "SpxEsXTJ"}], [{"max": 52, "min": 57, "name": "o7Pvpqai"}, {"max": 77, "min": 63, "name": "jZ00dQ3x"}, {"max": 79, "min": 26, "name": "cVBFawl0"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 21, "role_flexing_second": 23}, "duration": 71, "max_number": 23, "min_number": 22, "player_max_number": 31, "player_min_number": 54}], "name": "8BewT4Vk"}}, "ticket_flexing_selection": "6CwacbCf", "ticket_flexing_selections": [{"selection": "GkOfUnvy", "threshold": 28}, {"selection": "3g9Mb4Gu", "threshold": 92}, {"selection": "O7nnsAmZ", "threshold": 33}], "use_newest_ticket_for_flexing": false}, "session_queue_timeout_seconds": 75, "social_matchmaking": false, "sub_gamemode_selection": "ticketOrder", "ticket_observability_enable": true, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'iMP92ft9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'e7TueOVm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "nlh3Qu4K", "players": [{"results": [{"attribute": "NN4ZrNpR", "value": 0.2774277066868571}, {"attribute": "4AUiZSlV", "value": 0.870874645549883}, {"attribute": "n1Y2IiQv", "value": 0.7435441781193017}], "user_id": "YUXQBKpi"}, {"results": [{"attribute": "J1sUnuAc", "value": 0.601764189395453}, {"attribute": "BlwmbFRD", "value": 0.7427223727074399}, {"attribute": "gohqUi7o", "value": 0.6317948452677357}], "user_id": "JikgDjCu"}, {"results": [{"attribute": "LsvfJe4e", "value": 0.047647882460114754}, {"attribute": "q4yoYJ46", "value": 0.8414381047905746}, {"attribute": "XnN8VkA7", "value": 0.9930523460716125}], "user_id": "FbZqcCiV"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "3dWy8aDo"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "vqJNDOIc", "client_version": "84NN2vzJ", "deployment": "8LyRilAv", "error_code": 72, "error_message": "MFiVXg43", "game_mode": "hTmKnSZm", "is_mock": "YUnAfX3k", "joinable": false, "match_id": "QcfxxEpP", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 96, "party_attributes": {"sN1Qii8K": {}, "rOql5SBk": {}, "8AeO80DN": {}}, "party_id": "rGCOmkNi", "party_members": [{"extra_attributes": {"a90cDSvM": {}, "Ldqlv0zb": {}, "5lT45Owq": {}}, "user_id": "yW1BKh2u"}, {"extra_attributes": {"kaTvlI2F": {}, "40rDlat3": {}, "nATz9328": {}}, "user_id": "0gbxumx0"}, {"extra_attributes": {"YvOfZBpP": {}, "7lwObZNz": {}, "GeuIav4h": {}}, "user_id": "EaygW926"}], "ticket_created_at": 26, "ticket_id": "GJOHZCCF"}, {"first_ticket_created_at": 38, "party_attributes": {"zaEYSAuG": {}, "wiRYHzkd": {}, "tX7asLQl": {}}, "party_id": "qjwKPyuh", "party_members": [{"extra_attributes": {"9lMpCx0X": {}, "DX6JxnKk": {}, "nqHlv11O": {}}, "user_id": "sLISUOp4"}, {"extra_attributes": {"wy8Ry1SK": {}, "OyLN9C4S": {}, "1IPhPzze": {}}, "user_id": "0Wnl6piv"}, {"extra_attributes": {"mVX5AM4n": {}, "6UouZeFX": {}, "G1QuQKCC": {}}, "user_id": "1RwyYtzg"}], "ticket_created_at": 68, "ticket_id": "q3F6rbZM"}, {"first_ticket_created_at": 51, "party_attributes": {"MEDYIoBt": {}, "JbHvK1vE": {}, "s73WND7V": {}}, "party_id": "w5klNWgw", "party_members": [{"extra_attributes": {"Y7xlzbqw": {}, "gZscwgHh": {}, "1Ng7ATgt": {}}, "user_id": "t2ZJobvm"}, {"extra_attributes": {"BjYjuhsT": {}, "9TNXV1Zf": {}, "pu0JKarn": {}}, "user_id": "42VNXcYB"}, {"extra_attributes": {"ZjH1VW86": {}, "h6H3a1HF": {}, "N4PzZ1rr": {}}, "user_id": "8byOsVjo"}], "ticket_created_at": 75, "ticket_id": "hE03HSwP"}]}, {"matching_parties": [{"first_ticket_created_at": 71, "party_attributes": {"2rOVxZFv": {}, "7KavetXk": {}, "f2ePCTJB": {}}, "party_id": "WEkJ5PVe", "party_members": [{"extra_attributes": {"av7B4H3H": {}, "MVuf4rb8": {}, "rMXWcbz6": {}}, "user_id": "unRkWL9G"}, {"extra_attributes": {"cgU0mvza": {}, "dhEVdy1g": {}, "Iu4QtUfl": {}}, "user_id": "OiaBhJbX"}, {"extra_attributes": {"aDtNQ1Oo": {}, "F75UlW1N": {}, "xFmL23Vt": {}}, "user_id": "wKjHzmiX"}], "ticket_created_at": 14, "ticket_id": "4sufqitj"}, {"first_ticket_created_at": 66, "party_attributes": {"vutBI58a": {}, "naQSt9i8": {}, "2IV6HoxN": {}}, "party_id": "H8uVXYcm", "party_members": [{"extra_attributes": {"bvZFzC7f": {}, "BSgX2wVZ": {}, "sWhLfQ9W": {}}, "user_id": "078Z60xW"}, {"extra_attributes": {"UwVgUKge": {}, "RaLwpGkh": {}, "zHl7JAGc": {}}, "user_id": "1fM8kBCN"}, {"extra_attributes": {"oUCHelzt": {}, "UNbf6GJq": {}, "1xoXrj0L": {}}, "user_id": "u8NOZgfZ"}], "ticket_created_at": 68, "ticket_id": "3EBr5aFX"}, {"first_ticket_created_at": 35, "party_attributes": {"brLOyzNl": {}, "iVNOMdJ1": {}, "WeJPceRf": {}}, "party_id": "ohYpADM8", "party_members": [{"extra_attributes": {"9kcmq6j7": {}, "R0mhADQ8": {}, "SVR17uGE": {}}, "user_id": "BYf6d9Kr"}, {"extra_attributes": {"detCYwRL": {}, "2hruqSCz": {}, "0rWbn03R": {}}, "user_id": "l5bc1jBx"}, {"extra_attributes": {"D9uPmIw8": {}, "KEFGe5rW": {}, "CemCH7oz": {}}, "user_id": "wMnnW7Xz"}], "ticket_created_at": 85, "ticket_id": "JATNlnqd"}]}, {"matching_parties": [{"first_ticket_created_at": 60, "party_attributes": {"UrJdeqKk": {}, "FISLAyF2": {}, "Dr5LDmmU": {}}, "party_id": "DS4O8bTr", "party_members": [{"extra_attributes": {"JoQOpcgD": {}, "up8Xy96T": {}, "nUfh9E7u": {}}, "user_id": "F0an56kz"}, {"extra_attributes": {"Q1lqeI2w": {}, "yrCLEzdB": {}, "oZR5rpH5": {}}, "user_id": "drSnl7tP"}, {"extra_attributes": {"dlJysRcq": {}, "tyNOQyhg": {}, "osz15a9q": {}}, "user_id": "7Mlo4AfJ"}], "ticket_created_at": 77, "ticket_id": "MFSU2541"}, {"first_ticket_created_at": 69, "party_attributes": {"iEaneIFV": {}, "HG0xREe7": {}, "iZB9rukq": {}}, "party_id": "0slZ0yQ0", "party_members": [{"extra_attributes": {"rEyBDGZc": {}, "1E0wd2g0": {}, "aJO5npq8": {}}, "user_id": "WgfdstRY"}, {"extra_attributes": {"zaadFq8I": {}, "rsB9MfwW": {}, "9d8JGEde": {}}, "user_id": "0I9xDZ4w"}, {"extra_attributes": {"zO1GVMHk": {}, "PXbjMK1G": {}, "XxVeaYrd": {}}, "user_id": "VeCsTgYM"}], "ticket_created_at": 74, "ticket_id": "aVAF9phP"}, {"first_ticket_created_at": 34, "party_attributes": {"v1gQ0KL3": {}, "UwkGdhD4": {}, "p6nTbq5e": {}}, "party_id": "8ae1rcnN", "party_members": [{"extra_attributes": {"PbhEq7eU": {}, "PE6Eog1c": {}, "ZS4pqZPi": {}}, "user_id": "EYZJgDb3"}, {"extra_attributes": {"keGj5r65": {}, "sq6sB5VF": {}, "n3r4QKc4": {}}, "user_id": "corviaqw"}, {"extra_attributes": {"eqHC0kbj": {}, "VWxn7I78": {}, "uVxmP1bz": {}}, "user_id": "dfuaSdjf"}], "ticket_created_at": 89, "ticket_id": "8cpyZQcl"}]}], "namespace": "PBGQhkJ5", "party_attributes": {"xiUdjjYS": {}, "8HjXSo2N": {}, "EpKHmUN5": {}}, "party_id": "rp5xNl0P", "queued_at": 23, "region": "hQiJpPKl", "server_name": "o91tecTG", "status": "ZBRZKLBz", "ticket_id": "iZNF3c8Z", "ticket_ids": ["6aOzTs7l", "kqiBbQtS", "YYxqLRph"], "updated_at": "1993-02-17T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "RYjC7ELM"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'kfHuw4eN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 73, "userID": "NuPWgQw5", "weight": 0.5563530270675328}' \
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
    --matchIDs 'EdmUnRop' \
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
    --strategy '75wiFSuV' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'tPb7LYHD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'vlkDZ9yb' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCanMatch", "deployment": "5Jugi5uH", "description": "8sM9Nnl8", "findMatchTimeoutSeconds": 68, "joinable": true, "max_delay_ms": 75, "region_expansion_range_ms": 19, "region_expansion_rate_ms": 98, "region_latency_initial_range_ms": 33, "region_latency_max_ms": 90, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 64, "min": 40, "name": "dQ3b3q74"}, {"max": 99, "min": 68, "name": "OEfsMCdG"}, {"max": 60, "min": 0, "name": "SIZzUwkj"}], [{"max": 46, "min": 54, "name": "SJZsMtJE"}, {"max": 39, "min": 92, "name": "dpqRwy8n"}, {"max": 72, "min": 99, "name": "8zxsS7JH"}], [{"max": 61, "min": 56, "name": "XwRgvWUY"}, {"max": 54, "min": 93, "name": "ET8w1iM9"}, {"max": 32, "min": 34, "name": "W9gJNQvr"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 87, "role_flexing_second": 10}, "maxNumber": 69, "minNumber": 78, "playerMaxNumber": 21, "playerMinNumber": 47}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 4, "min": 18, "name": "z5EZppLF"}, {"max": 2, "min": 11, "name": "Bgkq4Akb"}, {"max": 84, "min": 23, "name": "BKEjXSUd"}], [{"max": 35, "min": 29, "name": "okVUDxWK"}, {"max": 25, "min": 73, "name": "P97DAUuJ"}, {"max": 48, "min": 58, "name": "EQtxYNOb"}], [{"max": 33, "min": 37, "name": "590Iyi8W"}, {"max": 11, "min": 63, "name": "bF7oUrCZ"}, {"max": 44, "min": 78, "name": "gSYvf7DQ"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 39, "role_flexing_second": 6}, "duration": 89, "max_number": 76, "min_number": 62, "player_max_number": 54, "player_min_number": 54}, {"combination": {"alliances": [[{"max": 29, "min": 70, "name": "CybMXEdt"}, {"max": 3, "min": 71, "name": "ksOldIdt"}, {"max": 51, "min": 16, "name": "PHRz1Kby"}], [{"max": 26, "min": 84, "name": "wr2DTmbr"}, {"max": 51, "min": 89, "name": "5KeuTcjy"}, {"max": 17, "min": 35, "name": "z1ISqn9c"}], [{"max": 37, "min": 62, "name": "ZkIpNb3O"}, {"max": 64, "min": 1, "name": "cxTzsEss"}, {"max": 5, "min": 84, "name": "TIj1KTTt"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 99, "role_flexing_second": 90}, "duration": 100, "max_number": 17, "min_number": 4, "player_max_number": 75, "player_min_number": 33}, {"combination": {"alliances": [[{"max": 64, "min": 63, "name": "wiHi5iB9"}, {"max": 23, "min": 27, "name": "ReqgFgq9"}, {"max": 63, "min": 67, "name": "PUCyYq0M"}], [{"max": 97, "min": 38, "name": "xaWzo3eK"}, {"max": 17, "min": 43, "name": "1lmMJXWu"}, {"max": 13, "min": 19, "name": "6eYZAO2o"}], [{"max": 40, "min": 2, "name": "8aDWeDRv"}, {"max": 90, "min": 39, "name": "eGK3uImV"}, {"max": 42, "min": 33, "name": "qpfQhtSY"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 85, "role_flexing_second": 76}, "duration": 66, "max_number": 41, "min_number": 62, "player_max_number": 43, "player_min_number": 74}], "batch_size": 75, "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 21, "flex_flat_step_range": 78, "flex_immunity_count": 65, "flex_range_max": 60, "flex_rate_ms": 91, "flex_step_max": 80, "force_authority_match": true, "initial_step_range": 91, "mmr_max": 29, "mmr_mean": 71, "mmr_min": 78, "mmr_std_dev": 71, "override_mmr_data": false, "use_bucket_mmr": true, "use_flat_flex_step": false}, "flexingRules": [{"attribute": "K308GuZf", "criteria": "qC1wI98n", "duration": 6, "reference": 0.9220044845658683}, {"attribute": "w1TBJemZ", "criteria": "KUbPcjwQ", "duration": 99, "reference": 0.6650268859639815}, {"attribute": "BTmBnjRX", "criteria": "pjQn9haM", "duration": 27, "reference": 0.6996732688609332}], "match_options": {"options": [{"name": "9eH435wH", "type": "ocZYWWPN"}, {"name": "AUIl3mGa", "type": "bXvrBJtL"}, {"name": "AG8u5wVe", "type": "lxkPGtcD"}]}, "matchingRules": [{"attribute": "58FNDR5C", "criteria": "OMpPTegb", "reference": 0.5379140571815415}, {"attribute": "5wCnEoZD", "criteria": "uwbciJOB", "reference": 0.33187484360499564}, {"attribute": "NU9usvMj", "criteria": "hjQc22Lw", "reference": 0.1655933409010274}], "sort_ticket": {"search_result": "RGvrxuac", "ticket_queue": "7ZJxb0Dm"}, "sort_tickets": [{"search_result": "2y3Hmskh", "threshold": 58, "ticket_queue": "VQxcHcDS"}, {"search_result": "2861fssB", "threshold": 60, "ticket_queue": "Ve8iOlmi"}, {"search_result": "6NYkfW8y", "threshold": 4, "ticket_queue": "0LMHVkMk"}], "sub_game_modes": {}, "ticket_flexing_selection": "qYXIPmCw", "ticket_flexing_selections": [{"selection": "RT48h5jq", "threshold": 70}, {"selection": "rpugU4FJ", "threshold": 21}, {"selection": "HXJaThkP", "threshold": 96}], "use_newest_ticket_for_flexing": true}, "sessionQueueTimeoutSeconds": 94, "socialMatchmaking": false, "sub_gamemode_selection": "random", "ticket_observability_enable": true, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName 'VwU37KgO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName 'Mw0ObdmT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName 'AUFzRTB4' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 98}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName '1QaMKD67' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName 'VjscZl52' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "IaRA2QHE", "count": 82, "mmrMax": 0.8511985012554942, "mmrMean": 0.44030447637215997, "mmrMin": 0.6858783845010689, "mmrStdDev": 0.6279570039396251}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName '1ovbAO22' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 69, "party_attributes": {"hoWclzC5": {}, "u9Iuoawt": {}, "Y6PSL7N5": {}}, "party_id": "lIve1Xf0", "party_members": [{"extra_attributes": {"o5a5uVip": {}, "9u44NREI": {}, "s55JxNp3": {}}, "user_id": "AgfIlrkU"}, {"extra_attributes": {"VfwoDuNo": {}, "G8UeYzO9": {}, "7PqNcOe7": {}}, "user_id": "C5Jk66dc"}, {"extra_attributes": {"XvDBnoKF": {}, "MaxeNbXY": {}, "S9tihcck": {}}, "user_id": "P3ficCyB"}], "ticket_created_at": 85, "ticket_id": "0HrA5Rmd"}, {"first_ticket_created_at": 46, "party_attributes": {"u43W8TGM": {}, "fWlx7HiK": {}, "KQuV7Izx": {}}, "party_id": "5xBvmy6Q", "party_members": [{"extra_attributes": {"wqxRlwSt": {}, "3E1cSMTH": {}, "C8kco59d": {}}, "user_id": "hWBZcKWu"}, {"extra_attributes": {"eKoyfmDQ": {}, "4V4CjdCY": {}, "AKI7CaNV": {}}, "user_id": "TikAPOjg"}, {"extra_attributes": {"lzA3BGUh": {}, "8TocF19Q": {}, "2vzgFhnu": {}}, "user_id": "h8UZXhdB"}], "ticket_created_at": 81, "ticket_id": "b283SnrL"}, {"first_ticket_created_at": 100, "party_attributes": {"i7MrazKc": {}, "c0nrhjH0": {}, "E4zvZMRL": {}}, "party_id": "bvdgNDoy", "party_members": [{"extra_attributes": {"j0BSYeMg": {}, "K3M2JEMg": {}, "fty2AMJN": {}}, "user_id": "Yqe1PFwG"}, {"extra_attributes": {"6hj2d7Bk": {}, "LwmX23uC": {}, "hnmNJ0PQ": {}}, "user_id": "zdz6qRn4"}, {"extra_attributes": {"BXDj9xFC": {}, "XLx3GnkY": {}, "zAPDFI6x": {}}, "user_id": "X1Do3haE"}], "ticket_created_at": 84, "ticket_id": "qyOzfP23"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName '8wx6TBf8' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 5}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName '24lIBnQj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'dYTvSUTQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'CUmeS3H8' \
    --matchID 'GGeAOJCK' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["CEjolIt6", "20Vp1h9a", "4UeWC04H"], "party_id": "NdwWizsP", "user_id": "pqHsqCAb"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'zn9fVxhj' \
    --matchID 'UlmQAbff' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'Z25oH2ED' \
    --matchID 'Y2MLnjpV' \
    --namespace $AB_NAMESPACE \
    --userID 'MkbUT1MV' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName 'bpf6Ssam' \
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
    --channelName '61GD1NGl' \
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