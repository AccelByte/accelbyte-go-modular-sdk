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
    --limit '50' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "KJgChKWa", "description": "j01hCfFx", "find_match_timeout_seconds": 12, "game_mode": "WoCgSYW1", "joinable": true, "max_delay_ms": 39, "region_expansion_range_ms": 55, "region_expansion_rate_ms": 22, "region_latency_initial_range_ms": 9, "region_latency_max_ms": 69, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 12, "min": 82, "name": "opBCDjTC"}, {"max": 22, "min": 50, "name": "LzHy8SUm"}, {"max": 88, "min": 31, "name": "9umtUOYL"}], [{"max": 83, "min": 15, "name": "yKK1cqMa"}, {"max": 39, "min": 7, "name": "TIKU3eDV"}, {"max": 57, "min": 11, "name": "EjB4hAiu"}], [{"max": 40, "min": 78, "name": "4Cugeb9S"}, {"max": 19, "min": 70, "name": "CFmqx4Ce"}, {"max": 25, "min": 68, "name": "JCF1DEqj"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 16, "role_flexing_second": 82}, "max_number": 6, "min_number": 52, "player_max_number": 14, "player_min_number": 92}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 35, "min": 37, "name": "r6ux1Tle"}, {"max": 100, "min": 83, "name": "7r2kHfrU"}, {"max": 77, "min": 25, "name": "yEJUvXQB"}], [{"max": 25, "min": 77, "name": "81GGqd0p"}, {"max": 31, "min": 49, "name": "Mu2OSMsS"}, {"max": 55, "min": 46, "name": "pMgsqZoL"}], [{"max": 11, "min": 44, "name": "YjO3IfVI"}, {"max": 99, "min": 27, "name": "kDnvBX4V"}, {"max": 73, "min": 54, "name": "3D6kNPq1"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 21, "role_flexing_second": 18}, "duration": 12, "max_number": 20, "min_number": 74, "player_max_number": 19, "player_min_number": 12}, {"combination": {"alliances": [[{"max": 4, "min": 48, "name": "BrM13s7X"}, {"max": 36, "min": 50, "name": "8g3MVMhy"}, {"max": 74, "min": 58, "name": "N7L10DcU"}], [{"max": 18, "min": 2, "name": "geOrPSY7"}, {"max": 73, "min": 56, "name": "0wHXSHId"}, {"max": 3, "min": 73, "name": "iI0QOZo1"}], [{"max": 19, "min": 53, "name": "IyQgv0za"}, {"max": 77, "min": 61, "name": "8AN8zN2w"}, {"max": 12, "min": 8, "name": "VrQKOmHZ"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 34, "role_flexing_second": 20}, "duration": 46, "max_number": 46, "min_number": 42, "player_max_number": 96, "player_min_number": 94}, {"combination": {"alliances": [[{"max": 11, "min": 35, "name": "RAdBZiZG"}, {"max": 65, "min": 39, "name": "grfKce1V"}, {"max": 65, "min": 4, "name": "dOCSSMoT"}], [{"max": 84, "min": 14, "name": "seUKlfn8"}, {"max": 89, "min": 30, "name": "DgTPt4qa"}, {"max": 25, "min": 76, "name": "FdtAKaNN"}], [{"max": 12, "min": 98, "name": "XHBStXaF"}, {"max": 87, "min": 48, "name": "mAiuLaK7"}, {"max": 64, "min": 89, "name": "ggiAxvXY"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 59, "role_flexing_second": 76}, "duration": 76, "max_number": 89, "min_number": 15, "player_max_number": 95, "player_min_number": 93}], "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 58, "flex_flat_step_range": 26, "flex_immunity_count": 46, "flex_range_max": 13, "flex_rate_ms": 91, "flex_step_max": 26, "force_authority_match": true, "initial_step_range": 44, "mmr_max": 42, "mmr_mean": 4, "mmr_min": 76, "mmr_std_dev": 53, "override_mmr_data": false, "use_bucket_mmr": false, "use_flat_flex_step": false}, "flexing_rule": [{"attribute": "zdkmObwz", "criteria": "mGLsHdRd", "duration": 85, "reference": 0.6338745441340757}, {"attribute": "RBm9G3g8", "criteria": "O1hXct1s", "duration": 23, "reference": 0.20646003045598638}, {"attribute": "EyqrCdu3", "criteria": "stZzjaZ2", "duration": 61, "reference": 0.8038021418202869}], "match_options": {"options": [{"name": "gcJ1cgQb", "type": "ndjBtMGP"}, {"name": "ZNzNdY3e", "type": "nU2UOTxH"}, {"name": "azAde4IC", "type": "rNTHbahR"}]}, "matching_rule": [{"attribute": "KaUdmWC5", "criteria": "K57Dyg0d", "reference": 0.527799111268332}, {"attribute": "icoPLgOf", "criteria": "FO5Zu1Ss", "reference": 0.4211548364261952}, {"attribute": "Tv32AWug", "criteria": "HvCLR69e", "reference": 0.03780319463103443}], "rebalance_enable": true, "sub_game_modes": {"ZTMTqp1s": {"alliance": {"combination": {"alliances": [[{"max": 59, "min": 34, "name": "vjRAolw0"}, {"max": 84, "min": 14, "name": "AmNrG249"}, {"max": 59, "min": 7, "name": "9kmQj8Pv"}], [{"max": 69, "min": 89, "name": "6FgEgkGf"}, {"max": 97, "min": 73, "name": "HRpPbyc4"}, {"max": 26, "min": 57, "name": "uy7DBS9v"}], [{"max": 88, "min": 88, "name": "p6zdciKe"}, {"max": 53, "min": 94, "name": "UyZA6y2K"}, {"max": 85, "min": 88, "name": "neI2MmcS"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 76, "role_flexing_second": 2}, "max_number": 97, "min_number": 51, "player_max_number": 39, "player_min_number": 67}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 24, "min": 12, "name": "3Gs3POQU"}, {"max": 68, "min": 56, "name": "KJZJenGQ"}, {"max": 4, "min": 83, "name": "Ha3ttx7O"}], [{"max": 66, "min": 94, "name": "6wsbaRuh"}, {"max": 7, "min": 98, "name": "sBldyiNi"}, {"max": 57, "min": 79, "name": "oFqVoici"}], [{"max": 100, "min": 18, "name": "n1ewrGfH"}, {"max": 48, "min": 81, "name": "KAtCI9Um"}, {"max": 73, "min": 84, "name": "mXupglyZ"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 35, "role_flexing_second": 78}, "duration": 91, "max_number": 23, "min_number": 89, "player_max_number": 24, "player_min_number": 74}, {"combination": {"alliances": [[{"max": 73, "min": 80, "name": "KXFmWWuT"}, {"max": 63, "min": 14, "name": "2Xxtvdn6"}, {"max": 87, "min": 72, "name": "9XbpR5Q8"}], [{"max": 11, "min": 90, "name": "kh4jPVPj"}, {"max": 41, "min": 89, "name": "qKSHQsj1"}, {"max": 96, "min": 18, "name": "BznFtu6g"}], [{"max": 72, "min": 0, "name": "M29DUvwu"}, {"max": 58, "min": 37, "name": "654I9VGj"}, {"max": 96, "min": 82, "name": "wmj9nPc3"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 8, "role_flexing_second": 53}, "duration": 12, "max_number": 95, "min_number": 40, "player_max_number": 48, "player_min_number": 79}, {"combination": {"alliances": [[{"max": 50, "min": 4, "name": "CZRQY14B"}, {"max": 76, "min": 21, "name": "ICiIA71c"}, {"max": 5, "min": 17, "name": "3B69Ftua"}], [{"max": 99, "min": 33, "name": "x3Uo0sPL"}, {"max": 3, "min": 64, "name": "FqFXhJ2L"}, {"max": 46, "min": 29, "name": "scxDiXr9"}], [{"max": 17, "min": 0, "name": "V286kM6h"}, {"max": 75, "min": 54, "name": "jytp5m72"}, {"max": 96, "min": 18, "name": "JUPaKF56"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 60, "role_flexing_second": 62}, "duration": 0, "max_number": 62, "min_number": 35, "player_max_number": 14, "player_min_number": 19}], "name": "rpKIvS6d"}, "xE9BO71c": {"alliance": {"combination": {"alliances": [[{"max": 45, "min": 3, "name": "YN1cLlMH"}, {"max": 93, "min": 88, "name": "MNewYJXP"}, {"max": 24, "min": 33, "name": "sBP2CWZt"}], [{"max": 29, "min": 27, "name": "XSMZihlv"}, {"max": 5, "min": 95, "name": "jaYF6cJN"}, {"max": 45, "min": 13, "name": "B7kAU3DO"}], [{"max": 60, "min": 52, "name": "0s18vh6Q"}, {"max": 77, "min": 19, "name": "YyY1ydme"}, {"max": 20, "min": 41, "name": "xSKAvkYj"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 27, "role_flexing_second": 94}, "max_number": 97, "min_number": 70, "player_max_number": 24, "player_min_number": 26}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 38, "min": 3, "name": "jV7GWPmX"}, {"max": 56, "min": 85, "name": "iARnZdHS"}, {"max": 1, "min": 91, "name": "Ukz2gx7v"}], [{"max": 21, "min": 4, "name": "PeeyjSHe"}, {"max": 17, "min": 58, "name": "jf8AfKp1"}, {"max": 61, "min": 27, "name": "K1Q13Nr7"}], [{"max": 24, "min": 47, "name": "D3np0tmQ"}, {"max": 73, "min": 78, "name": "AC0MQbVQ"}, {"max": 77, "min": 96, "name": "feAltOJ6"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 7, "role_flexing_second": 21}, "duration": 81, "max_number": 8, "min_number": 9, "player_max_number": 14, "player_min_number": 20}, {"combination": {"alliances": [[{"max": 65, "min": 70, "name": "fJQHzZ7P"}, {"max": 44, "min": 45, "name": "z8nUB4yf"}, {"max": 20, "min": 72, "name": "8HvKgQIH"}], [{"max": 39, "min": 75, "name": "4Bnn8ROS"}, {"max": 43, "min": 0, "name": "vT9wa2RV"}, {"max": 96, "min": 66, "name": "5VWTf9Qk"}], [{"max": 54, "min": 17, "name": "QE7FXSrN"}, {"max": 30, "min": 87, "name": "nHUJhnT0"}, {"max": 86, "min": 79, "name": "1pDQ9ctr"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 49, "role_flexing_second": 55}, "duration": 72, "max_number": 15, "min_number": 87, "player_max_number": 3, "player_min_number": 60}, {"combination": {"alliances": [[{"max": 13, "min": 52, "name": "Y5NYWu2L"}, {"max": 26, "min": 57, "name": "J2hUGjpA"}, {"max": 72, "min": 72, "name": "uxXP1L3W"}], [{"max": 95, "min": 84, "name": "cUe7omc9"}, {"max": 81, "min": 55, "name": "cNaHiT1K"}, {"max": 3, "min": 96, "name": "G8ATMUV2"}], [{"max": 35, "min": 49, "name": "K0LzfeJ0"}, {"max": 87, "min": 68, "name": "WWWuamUT"}, {"max": 57, "min": 8, "name": "6ny0a4Zu"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 98, "role_flexing_second": 64}, "duration": 9, "max_number": 15, "min_number": 98, "player_max_number": 68, "player_min_number": 21}], "name": "2XRGxaGU"}, "URhrypKu": {"alliance": {"combination": {"alliances": [[{"max": 55, "min": 73, "name": "c9xZ4w5y"}, {"max": 97, "min": 18, "name": "TYEETzkl"}, {"max": 32, "min": 13, "name": "2QFZY8kX"}], [{"max": 1, "min": 73, "name": "hefaXsXY"}, {"max": 17, "min": 57, "name": "2j4PCoSN"}, {"max": 75, "min": 77, "name": "cCj0tUpv"}], [{"max": 54, "min": 19, "name": "7LWanrQO"}, {"max": 3, "min": 83, "name": "7Uk91MsF"}, {"max": 10, "min": 54, "name": "2SKhuQkn"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 49, "role_flexing_second": 99}, "max_number": 75, "min_number": 96, "player_max_number": 13, "player_min_number": 72}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 79, "min": 48, "name": "MN4FTEGu"}, {"max": 74, "min": 67, "name": "fkWbHcY6"}, {"max": 80, "min": 79, "name": "P0XF55ka"}], [{"max": 69, "min": 16, "name": "OoHn3ydR"}, {"max": 74, "min": 92, "name": "Li8dcQYH"}, {"max": 52, "min": 28, "name": "2fC7DKAf"}], [{"max": 66, "min": 15, "name": "0smb3Y1y"}, {"max": 99, "min": 86, "name": "T8YhI9G1"}, {"max": 16, "min": 83, "name": "GS1TykHi"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 46, "role_flexing_second": 0}, "duration": 51, "max_number": 88, "min_number": 53, "player_max_number": 72, "player_min_number": 27}, {"combination": {"alliances": [[{"max": 73, "min": 37, "name": "rPjev4Ox"}, {"max": 19, "min": 91, "name": "ZvhhtS72"}, {"max": 72, "min": 81, "name": "Mc23FUi7"}], [{"max": 65, "min": 91, "name": "SVoRRM2u"}, {"max": 97, "min": 95, "name": "pa4nT07M"}, {"max": 56, "min": 34, "name": "Mxdhwa4z"}], [{"max": 78, "min": 2, "name": "Tl3SQGMg"}, {"max": 55, "min": 10, "name": "FMKftuer"}, {"max": 62, "min": 76, "name": "oNx8wlxx"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 10, "role_flexing_second": 86}, "duration": 44, "max_number": 41, "min_number": 82, "player_max_number": 68, "player_min_number": 45}, {"combination": {"alliances": [[{"max": 31, "min": 99, "name": "A65MhpkD"}, {"max": 64, "min": 60, "name": "0SJw7mgg"}, {"max": 22, "min": 27, "name": "RC5ijrkO"}], [{"max": 34, "min": 3, "name": "uvqtTNAs"}, {"max": 69, "min": 85, "name": "K3en7dpA"}, {"max": 26, "min": 60, "name": "OaKevD9r"}], [{"max": 16, "min": 46, "name": "dRqAJ2NR"}, {"max": 54, "min": 31, "name": "ctBj5R3P"}, {"max": 9, "min": 67, "name": "KtN1CAVy"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 34, "role_flexing_second": 69}, "duration": 95, "max_number": 72, "min_number": 62, "player_max_number": 7, "player_min_number": 54}], "name": "FsSIi7Rg"}}, "use_newest_ticket_for_flexing": true}, "session_queue_timeout_seconds": 34, "social_matchmaking": true, "ticket_observability_enable": true, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'bBRa6p1p' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'cQY4JsoV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "IzA4Ph3Q", "players": [{"results": [{"attribute": "4uwgCO8a", "value": 0.2488372755903666}, {"attribute": "RQkeWN8g", "value": 0.5111704759722084}, {"attribute": "FRI1T0NL", "value": 0.33107473468013304}], "user_id": "HCtT8EpN"}, {"results": [{"attribute": "DcSBX1pN", "value": 0.023158086236796604}, {"attribute": "rCqFjQNJ", "value": 0.0749279762265399}, {"attribute": "U3dSPuyw", "value": 0.42060773588149303}], "user_id": "w0YwALNg"}, {"results": [{"attribute": "RBtuwqjb", "value": 0.3003937757503711}, {"attribute": "hl7rBG6p", "value": 0.43276127749277216}, {"attribute": "YXZ05kOm", "value": 0.9133459345611319}], "user_id": "HJ7oaBvI"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "cdu14p4q"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "8PldiAEM", "client_version": "23S5caiU", "deployment": "UOLUOUvr", "error_code": 29, "error_message": "dWHVBhcy", "game_mode": "axtH0ATn", "is_mock": "ErUZcjpV", "joinable": true, "match_id": "zKjx4YlU", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 96, "party_attributes": {"20IuVqwg": {}, "sN6jJvZl": {}, "9A0lSb9y": {}}, "party_id": "unMw7D75", "party_members": [{"extra_attributes": {"9uYUgZ4l": {}, "VErmD1Es": {}, "h3pi1l0t": {}}, "user_id": "ybWPK8V7"}, {"extra_attributes": {"YRyAwhSy": {}, "OzX8NgiY": {}, "PbSzfIxg": {}}, "user_id": "1u8fVzVD"}, {"extra_attributes": {"Hi22pk9Z": {}, "KkKzoSGx": {}, "Z9gOeha9": {}}, "user_id": "9z2Vzv5T"}], "ticket_created_at": 70, "ticket_id": "swlGcaUR"}, {"first_ticket_created_at": 9, "party_attributes": {"DKskpLpY": {}, "FwemZljZ": {}, "FDOKQbij": {}}, "party_id": "kkxmywEp", "party_members": [{"extra_attributes": {"gsOwUENA": {}, "6RnxVu09": {}, "qejZgLCc": {}}, "user_id": "cw1YuEjc"}, {"extra_attributes": {"kzxG0PRd": {}, "5NXkhaFv": {}, "5PhGgcOW": {}}, "user_id": "Z0i6wQSQ"}, {"extra_attributes": {"G7GcDUNz": {}, "Mj4gaHy7": {}, "eJ7oc6kT": {}}, "user_id": "mIYSvxN5"}], "ticket_created_at": 84, "ticket_id": "sJdbT4Eo"}, {"first_ticket_created_at": 37, "party_attributes": {"cP9xgwxn": {}, "bWEuFgli": {}, "Q6FVqb3e": {}}, "party_id": "4VarLwOy", "party_members": [{"extra_attributes": {"oIKQSDz3": {}, "I9S0Dl7r": {}, "WxUslCfX": {}}, "user_id": "GZJysPj4"}, {"extra_attributes": {"srTYZdvk": {}, "IpfhDs7Z": {}, "kmiq2Vvy": {}}, "user_id": "gsx5MaAy"}, {"extra_attributes": {"8ikyeVMK": {}, "dbHznxnA": {}, "5pjdRbs5": {}}, "user_id": "lBQAg5QL"}], "ticket_created_at": 61, "ticket_id": "rQdee2AV"}]}, {"matching_parties": [{"first_ticket_created_at": 32, "party_attributes": {"BW93e096": {}, "G06tOrhm": {}, "ZbuAdKvm": {}}, "party_id": "qTsakLpv", "party_members": [{"extra_attributes": {"EEf7W1TV": {}, "KoMkcfI8": {}, "TYYtVxRh": {}}, "user_id": "MLv9j1NH"}, {"extra_attributes": {"BNbFsyEf": {}, "W6MDBdKF": {}, "484T4IRt": {}}, "user_id": "SpgE9eJU"}, {"extra_attributes": {"E0LoBI9z": {}, "VLsAPCBd": {}, "1VLFpVIU": {}}, "user_id": "Yz6sfXR4"}], "ticket_created_at": 39, "ticket_id": "y1Dv1lcM"}, {"first_ticket_created_at": 84, "party_attributes": {"TWAJW9Yw": {}, "0jpIoYnM": {}, "8yCWkp5e": {}}, "party_id": "58NPjAYQ", "party_members": [{"extra_attributes": {"rGEVcuac": {}, "MSckNLZN": {}, "7kXQ5cDT": {}}, "user_id": "ePaGtq9e"}, {"extra_attributes": {"ZrXyaWZX": {}, "ATBX0MRY": {}, "nowSx8GD": {}}, "user_id": "lKZ70I6C"}, {"extra_attributes": {"ahowVAEk": {}, "BgXJgC5N": {}, "XiGHt7kO": {}}, "user_id": "fxSSIpm7"}], "ticket_created_at": 99, "ticket_id": "TLgtQChN"}, {"first_ticket_created_at": 80, "party_attributes": {"PLxTiEop": {}, "5SyIT8x1": {}, "DfookLxd": {}}, "party_id": "1IrpBzVW", "party_members": [{"extra_attributes": {"ex4zB5JE": {}, "uK8MYqM9": {}, "jBekS35N": {}}, "user_id": "TDHSwEGy"}, {"extra_attributes": {"9rLChPJv": {}, "byrxQLGf": {}, "eoMzcwE2": {}}, "user_id": "6d5s4kQQ"}, {"extra_attributes": {"UcG9uTWR": {}, "TmC5cgCT": {}, "CrcQzvJb": {}}, "user_id": "Pk4SrKMv"}], "ticket_created_at": 52, "ticket_id": "ljsqxATM"}]}, {"matching_parties": [{"first_ticket_created_at": 100, "party_attributes": {"bqBCJn8D": {}, "rrfTfavU": {}, "JXoc2QE8": {}}, "party_id": "qPURcIl9", "party_members": [{"extra_attributes": {"mWihPExH": {}, "YE4NUP5Z": {}, "JuYnhL6C": {}}, "user_id": "D7LBvxH0"}, {"extra_attributes": {"Od6bZ2tB": {}, "NqllecbO": {}, "wApBASNX": {}}, "user_id": "9DWpN8FL"}, {"extra_attributes": {"kdsN1S4C": {}, "vCPo8bfp": {}, "o5VGV8iH": {}}, "user_id": "6pKXmDuy"}], "ticket_created_at": 1, "ticket_id": "6v4jIZ3D"}, {"first_ticket_created_at": 54, "party_attributes": {"G9XHUZji": {}, "hrwgmm15": {}, "4c3sab5P": {}}, "party_id": "6rHKMNoz", "party_members": [{"extra_attributes": {"mmeb7NCY": {}, "J9vwhhEG": {}, "h38cSXZk": {}}, "user_id": "4qBDTJRH"}, {"extra_attributes": {"2Sz7fJZc": {}, "rOUs1IdS": {}, "oCYh6o4p": {}}, "user_id": "ClUoLeex"}, {"extra_attributes": {"Dro3Pavh": {}, "D763DpRH": {}, "ux5OcvLh": {}}, "user_id": "nFZmFYZ2"}], "ticket_created_at": 56, "ticket_id": "tFAsF1qq"}, {"first_ticket_created_at": 93, "party_attributes": {"KFHLTWRe": {}, "zZ0pQqfH": {}, "a4RXa83q": {}}, "party_id": "t3RwaWoe", "party_members": [{"extra_attributes": {"FWC5OFiT": {}, "aWXykWut": {}, "7UiZB5JF": {}}, "user_id": "ORHrQpHT"}, {"extra_attributes": {"dheas5Wy": {}, "Xw84AQQF": {}, "RczB39cl": {}}, "user_id": "6nIJQoXM"}, {"extra_attributes": {"zO98QbWN": {}, "38NEUgLK": {}, "WQExD5vi": {}}, "user_id": "rLOVDuhB"}], "ticket_created_at": 89, "ticket_id": "u7mVAKfl"}]}], "namespace": "IclQc2lO", "party_attributes": {"TPdqD87X": {}, "XDuuet6K": {}, "6MN0IRE7": {}}, "party_id": "sqvBMVuh", "queued_at": 30, "region": "FwLlZffw", "server_name": "Tbbn8nW8", "status": "aZJdjuya", "ticket_id": "PgPGE245", "ticket_ids": ["K9DEhN9Q", "29sxMW8F", "oSMMkWfg"], "updated_at": "1983-04-27T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "tNgBuh3s"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'nT4oaifP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 83, "userID": "bPTMcnr5", "weight": 0.32477246572549834}' \
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
    --matchIDs 'kBwAJoOP' \
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
    --strategy 'J5pPUjVm' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'fDtjdoG8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'Qg1V3TSj' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "KSMvVQaO", "description": "gUM7EF3M", "findMatchTimeoutSeconds": 10, "joinable": true, "max_delay_ms": 19, "region_expansion_range_ms": 93, "region_expansion_rate_ms": 55, "region_latency_initial_range_ms": 88, "region_latency_max_ms": 4, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 7, "min": 32, "name": "NJInfWyR"}, {"max": 20, "min": 33, "name": "ANnoSC6M"}, {"max": 58, "min": 75, "name": "FP8mfVIK"}], [{"max": 39, "min": 0, "name": "GVivncxL"}, {"max": 17, "min": 48, "name": "p3u5U3Yx"}, {"max": 5, "min": 22, "name": "5CENG7Cm"}], [{"max": 48, "min": 48, "name": "OdzzNbZU"}, {"max": 12, "min": 46, "name": "p4yFPDEO"}, {"max": 63, "min": 8, "name": "sNo3Daaw"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 71, "role_flexing_second": 28}, "maxNumber": 52, "minNumber": 65, "playerMaxNumber": 33, "playerMinNumber": 85}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 15, "min": 86, "name": "yL1lygbA"}, {"max": 78, "min": 51, "name": "4hHvQBus"}, {"max": 82, "min": 19, "name": "ER7T5xlB"}], [{"max": 33, "min": 85, "name": "davMvX8O"}, {"max": 6, "min": 89, "name": "RekD9Bwc"}, {"max": 7, "min": 12, "name": "qtGUBmtk"}], [{"max": 38, "min": 53, "name": "R2QlJpJc"}, {"max": 89, "min": 85, "name": "yZSYcZiB"}, {"max": 44, "min": 92, "name": "VY3qMYvU"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 75, "role_flexing_second": 43}, "duration": 85, "max_number": 17, "min_number": 91, "player_max_number": 78, "player_min_number": 19}, {"combination": {"alliances": [[{"max": 40, "min": 41, "name": "nHMukZXN"}, {"max": 90, "min": 89, "name": "rp6P5J22"}, {"max": 6, "min": 22, "name": "JjSYCKtH"}], [{"max": 42, "min": 38, "name": "4HAU7pxO"}, {"max": 65, "min": 13, "name": "PqNPibZi"}, {"max": 13, "min": 32, "name": "6NA21ex2"}], [{"max": 45, "min": 66, "name": "SzsvGCcH"}, {"max": 77, "min": 15, "name": "iCpOr4A4"}, {"max": 66, "min": 59, "name": "PxXj9bGK"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 73, "role_flexing_second": 93}, "duration": 89, "max_number": 98, "min_number": 26, "player_max_number": 85, "player_min_number": 37}, {"combination": {"alliances": [[{"max": 45, "min": 45, "name": "73EUeNza"}, {"max": 52, "min": 96, "name": "0CZAsFM7"}, {"max": 34, "min": 48, "name": "2jFNIbsK"}], [{"max": 85, "min": 42, "name": "w6U5sFMD"}, {"max": 33, "min": 21, "name": "B37TV9Ml"}, {"max": 20, "min": 34, "name": "nmhscvpE"}], [{"max": 77, "min": 84, "name": "oyXN74Tz"}, {"max": 64, "min": 97, "name": "Ic8OyNQ1"}, {"max": 32, "min": 50, "name": "oSgIEF0M"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 8, "role_flexing_second": 2}, "duration": 8, "max_number": 0, "min_number": 9, "player_max_number": 86, "player_min_number": 58}], "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 12, "flex_flat_step_range": 63, "flex_immunity_count": 26, "flex_range_max": 9, "flex_rate_ms": 72, "flex_step_max": 81, "force_authority_match": true, "initial_step_range": 51, "mmr_max": 48, "mmr_mean": 85, "mmr_min": 58, "mmr_std_dev": 33, "override_mmr_data": false, "use_bucket_mmr": false, "use_flat_flex_step": true}, "flexingRules": [{"attribute": "OgItfdYN", "criteria": "vksYU5gY", "duration": 38, "reference": 0.3221902441654454}, {"attribute": "ZKKbH3gh", "criteria": "bWSu7jsA", "duration": 25, "reference": 0.8900734574658391}, {"attribute": "kfaDDuJL", "criteria": "A3LhpSup", "duration": 29, "reference": 0.295625672174182}], "match_options": {"options": [{"name": "UE5REMIH", "type": "v0dUk8p6"}, {"name": "ZPQgATVj", "type": "9stRLZXq"}, {"name": "tx5bQVLJ", "type": "MyWAiMe8"}]}, "matchingRules": [{"attribute": "haLTYBy4", "criteria": "O16hXQLt", "reference": 0.2095136112608259}, {"attribute": "ZPWbAHjM", "criteria": "NJWDo3zf", "reference": 0.9875994889098517}, {"attribute": "6oS7onVM", "criteria": "gRsfHlPP", "reference": 0.7467455997907557}], "sub_game_modes": {}, "use_newest_ticket_for_flexing": true}, "sessionQueueTimeoutSeconds": 59, "socialMatchmaking": false, "ticket_observability_enable": false, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName 'RCIm0jK4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName 'q4i2nOQW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName 'gvz0naM8' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 64}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName 'x8ejoj5S' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName 'FZDjMAFV' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "AfoQG69X", "count": 48, "mmrMax": 0.5642938521722252, "mmrMean": 0.5797848091141098, "mmrMin": 0.9788091077742486, "mmrStdDev": 0.2809683031368321}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName 'GkGp3N5W' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 41, "party_attributes": {"cILOBvcv": {}, "lry7BIqe": {}, "ZcOADimm": {}}, "party_id": "oIqBoRWf", "party_members": [{"extra_attributes": {"no05EBBs": {}, "P8ajLmrN": {}, "CONrJY8J": {}}, "user_id": "UIETnVes"}, {"extra_attributes": {"yhObh1Nh": {}, "bMUe7031": {}, "UthxqY3P": {}}, "user_id": "71RO9FKE"}, {"extra_attributes": {"pB4wcWJe": {}, "sRwVjywK": {}, "rhrX3WsK": {}}, "user_id": "H9ZHzaD9"}], "ticket_created_at": 36, "ticket_id": "1dy0Lnp4"}, {"first_ticket_created_at": 59, "party_attributes": {"BPyS0WbQ": {}, "dVtc4gjE": {}, "Eh6g0t6E": {}}, "party_id": "mYx2vaqq", "party_members": [{"extra_attributes": {"MbbfHruo": {}, "dIp6dqTt": {}, "d5840B3M": {}}, "user_id": "CKPhM23n"}, {"extra_attributes": {"ZV7rKG25": {}, "eBE5g5SJ": {}, "TGQT7OVX": {}}, "user_id": "yyT4UiQ6"}, {"extra_attributes": {"6OAbKzcU": {}, "ZpHTUGQT": {}, "CQGSxMxC": {}}, "user_id": "kkq5TieX"}], "ticket_created_at": 86, "ticket_id": "M5gUWuCe"}, {"first_ticket_created_at": 85, "party_attributes": {"eIuaxHZD": {}, "Lm9U98xL": {}, "OawO24Md": {}}, "party_id": "gPswNBWY", "party_members": [{"extra_attributes": {"ZPFjQyeB": {}, "yTCypHuN": {}, "T1C6QZP7": {}}, "user_id": "00bAdaI6"}, {"extra_attributes": {"KImy601F": {}, "lQ9vYqAW": {}, "1jvTHSsC": {}}, "user_id": "vPJ70sSA"}, {"extra_attributes": {"mEiKBkTN": {}, "tZ3QUTag": {}, "Gj65hr9p": {}}, "user_id": "088RJvLm"}], "ticket_created_at": 35, "ticket_id": "kh2aXNAF"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName '2mj1LmDB' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 6}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'wnDUXjTc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'RmnIgYrJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'kx2BgBz3' \
    --matchID 'l2hrETXq' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["RAoIUndn", "EKEyMo51", "8yQSYvlJ"], "party_id": "Hiu1AgWv", "user_id": "EjGtdlq6"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'lSJ9Op9l' \
    --matchID '8gHuVjAe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'ovDIfHI1' \
    --matchID 'iK2QYYkb' \
    --namespace $AB_NAMESPACE \
    --userID 'a3sMoHTk' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName 'IhK0BDro' \
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
    --channelName 'qQi5pLy0' \
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