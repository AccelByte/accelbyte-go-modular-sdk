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
    --limit '32' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCanMatch", "deployment": "T9QQbDjc", "description": "bvT35GWi", "find_match_timeout_seconds": 71, "game_mode": "vr87gfzl", "joinable": false, "max_delay_ms": 46, "region_expansion_range_ms": 91, "region_expansion_rate_ms": 56, "region_latency_initial_range_ms": 47, "region_latency_max_ms": 30, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 7, "min": 95, "name": "nc6542Yo"}, {"max": 81, "min": 34, "name": "K4oyWvZP"}, {"max": 41, "min": 24, "name": "Ok62VqZl"}], [{"max": 54, "min": 0, "name": "DE83wgKt"}, {"max": 42, "min": 78, "name": "zbyQC8aQ"}, {"max": 79, "min": 19, "name": "x2xlYIjx"}], [{"max": 85, "min": 7, "name": "QK6hIXvn"}, {"max": 29, "min": 54, "name": "uoc0xzVV"}, {"max": 71, "min": 80, "name": "1esGH1Mb"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 2, "role_flexing_second": 38}, "max_number": 28, "min_number": 94, "player_max_number": 50, "player_min_number": 25}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 68, "min": 84, "name": "uO1pmf9P"}, {"max": 100, "min": 28, "name": "8LrsA7lA"}, {"max": 12, "min": 11, "name": "l9XAgIPI"}], [{"max": 81, "min": 52, "name": "dXzr7nQp"}, {"max": 21, "min": 0, "name": "4PXMw26J"}, {"max": 68, "min": 57, "name": "YUPqxXAA"}], [{"max": 31, "min": 73, "name": "ujWHLQnf"}, {"max": 66, "min": 14, "name": "Fm1EMVcp"}, {"max": 80, "min": 63, "name": "OVvo1A3T"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 47, "role_flexing_second": 70}, "duration": 79, "max_number": 21, "min_number": 63, "player_max_number": 97, "player_min_number": 5}, {"combination": {"alliances": [[{"max": 59, "min": 91, "name": "g52VahtX"}, {"max": 46, "min": 7, "name": "FNu47qex"}, {"max": 51, "min": 4, "name": "J9hJiUuI"}], [{"max": 85, "min": 79, "name": "lNl4gbj7"}, {"max": 88, "min": 37, "name": "QgO9R7ni"}, {"max": 64, "min": 17, "name": "ETp8goSI"}], [{"max": 75, "min": 29, "name": "F44QKjj5"}, {"max": 27, "min": 87, "name": "80YirryS"}, {"max": 64, "min": 35, "name": "VVO3frm0"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 90, "role_flexing_second": 19}, "duration": 68, "max_number": 78, "min_number": 20, "player_max_number": 2, "player_min_number": 56}, {"combination": {"alliances": [[{"max": 65, "min": 27, "name": "gOr41Xe6"}, {"max": 23, "min": 64, "name": "mdFh8REY"}, {"max": 92, "min": 85, "name": "IuNniRwo"}], [{"max": 98, "min": 78, "name": "fAWEvZ57"}, {"max": 38, "min": 23, "name": "4NC592EB"}, {"max": 15, "min": 54, "name": "Pc62TUi9"}], [{"max": 76, "min": 72, "name": "QSCyfheR"}, {"max": 8, "min": 9, "name": "FZwemaxS"}, {"max": 57, "min": 8, "name": "vaAeznJE"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 92, "role_flexing_second": 83}, "duration": 92, "max_number": 78, "min_number": 92, "player_max_number": 60, "player_min_number": 41}], "batch_size": 98, "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 47, "flex_flat_step_range": 63, "flex_immunity_count": 63, "flex_range_max": 64, "flex_rate_ms": 89, "flex_step_max": 24, "force_authority_match": true, "initial_step_range": 83, "mmr_max": 20, "mmr_mean": 3, "mmr_min": 70, "mmr_std_dev": 80, "override_mmr_data": true, "use_bucket_mmr": true, "use_flat_flex_step": false}, "flexing_rule": [{"attribute": "iEx2eQXO", "criteria": "CVZdHpOL", "duration": 100, "reference": 0.301049097429573}, {"attribute": "Jx5zCEFo", "criteria": "1vd9WZXr", "duration": 90, "reference": 0.5953132518101227}, {"attribute": "s6hHbFt8", "criteria": "s3WDE35V", "duration": 11, "reference": 0.7994682228618372}], "match_options": {"options": [{"name": "uIcSptoV", "type": "5O0szMXs"}, {"name": "kV1w7c4J", "type": "p5aVXCTj"}, {"name": "kFJVNojG", "type": "llXMhAhF"}]}, "matching_rule": [{"attribute": "NhWMUVdj", "criteria": "jN1ZhxTj", "reference": 0.5231837801053019}, {"attribute": "OXGL405l", "criteria": "GD9JX41n", "reference": 0.4668899162954392}, {"attribute": "xyYfL0tv", "criteria": "dZpmpfXS", "reference": 0.6517703166101517}], "rebalance_enable": true, "sort_ticket": {"search_result": "s0hGNzeB", "ticket_queue": "B4RMYNJZ"}, "sort_tickets": [{"search_result": "fgHzxd4r", "threshold": 96, "ticket_queue": "FBpNjJ2x"}, {"search_result": "UUB3i3xn", "threshold": 29, "ticket_queue": "CtkyrpNO"}, {"search_result": "4hl9UMUY", "threshold": 59, "ticket_queue": "VAV1QaZ9"}], "sub_game_modes": {"Q2bIcwvG": {"alliance": {"combination": {"alliances": [[{"max": 78, "min": 23, "name": "JWrT4WSY"}, {"max": 68, "min": 57, "name": "u6TsPQ9I"}, {"max": 20, "min": 73, "name": "fE9djL2z"}], [{"max": 89, "min": 56, "name": "MyVz8utJ"}, {"max": 64, "min": 39, "name": "yAy8M4Wu"}, {"max": 66, "min": 50, "name": "liyBxYnr"}], [{"max": 23, "min": 27, "name": "cZ22VPwh"}, {"max": 52, "min": 100, "name": "zeBB50fc"}, {"max": 38, "min": 51, "name": "aTnkCkRn"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 78, "role_flexing_second": 82}, "max_number": 85, "min_number": 17, "player_max_number": 97, "player_min_number": 3}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 1, "min": 30, "name": "Z5Mzix34"}, {"max": 8, "min": 62, "name": "svcP7cpk"}, {"max": 62, "min": 6, "name": "VSjnwmgq"}], [{"max": 31, "min": 32, "name": "0OnxLnYz"}, {"max": 4, "min": 99, "name": "gQXP7FFi"}, {"max": 69, "min": 80, "name": "PVG8wMpU"}], [{"max": 4, "min": 95, "name": "emqDRLLZ"}, {"max": 49, "min": 8, "name": "GAYtOaxz"}, {"max": 78, "min": 43, "name": "WoAGC0Em"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 6, "role_flexing_second": 33}, "duration": 44, "max_number": 50, "min_number": 0, "player_max_number": 87, "player_min_number": 55}, {"combination": {"alliances": [[{"max": 89, "min": 55, "name": "F8ASQ5oU"}, {"max": 57, "min": 60, "name": "hTcCWGqV"}, {"max": 70, "min": 46, "name": "0QUouaqt"}], [{"max": 35, "min": 73, "name": "9VaVKZmP"}, {"max": 1, "min": 73, "name": "Kmq9tSre"}, {"max": 38, "min": 89, "name": "dNCjcnYc"}], [{"max": 83, "min": 16, "name": "J4NPBuVj"}, {"max": 21, "min": 23, "name": "YosUA8XZ"}, {"max": 81, "min": 16, "name": "cVITGibw"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 64, "role_flexing_second": 70}, "duration": 90, "max_number": 82, "min_number": 61, "player_max_number": 94, "player_min_number": 57}, {"combination": {"alliances": [[{"max": 94, "min": 20, "name": "EtPize3Q"}, {"max": 68, "min": 75, "name": "PCAepf3p"}, {"max": 72, "min": 15, "name": "MY6UQ6Ru"}], [{"max": 79, "min": 19, "name": "NBn0wdrt"}, {"max": 85, "min": 7, "name": "M8yUcUiq"}, {"max": 29, "min": 91, "name": "7LB2w2EI"}], [{"max": 3, "min": 87, "name": "w8IEpHJF"}, {"max": 16, "min": 43, "name": "Mx71aHrB"}, {"max": 20, "min": 19, "name": "SVdzkJ24"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 45, "role_flexing_second": 72}, "duration": 92, "max_number": 46, "min_number": 26, "player_max_number": 44, "player_min_number": 14}], "name": "lrDVb46k"}, "EXnkvUFh": {"alliance": {"combination": {"alliances": [[{"max": 87, "min": 76, "name": "TyvHaG4m"}, {"max": 96, "min": 66, "name": "SP4ezcW9"}, {"max": 28, "min": 28, "name": "TvWQoBI6"}], [{"max": 23, "min": 25, "name": "eGpawJrC"}, {"max": 20, "min": 97, "name": "AO6qfC1v"}, {"max": 53, "min": 95, "name": "8Tv5o3PT"}], [{"max": 28, "min": 60, "name": "BRImfmaE"}, {"max": 3, "min": 52, "name": "ox5GtgWU"}, {"max": 21, "min": 13, "name": "7FnXJJAc"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 64, "role_flexing_second": 44}, "max_number": 4, "min_number": 73, "player_max_number": 36, "player_min_number": 12}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 64, "min": 7, "name": "KZmS28Tp"}, {"max": 61, "min": 53, "name": "4cE55FGO"}, {"max": 90, "min": 1, "name": "xVm2M30z"}], [{"max": 70, "min": 37, "name": "sJCz52OW"}, {"max": 75, "min": 76, "name": "KymlEU78"}, {"max": 11, "min": 67, "name": "uhe3ngC5"}], [{"max": 32, "min": 8, "name": "d8vti0uy"}, {"max": 39, "min": 66, "name": "4U8vlQsE"}, {"max": 58, "min": 63, "name": "l8iQgvin"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 69, "role_flexing_second": 85}, "duration": 72, "max_number": 29, "min_number": 65, "player_max_number": 75, "player_min_number": 20}, {"combination": {"alliances": [[{"max": 60, "min": 37, "name": "eJ1gtThJ"}, {"max": 8, "min": 99, "name": "9dmLc1bg"}, {"max": 79, "min": 8, "name": "ONmdZnQe"}], [{"max": 81, "min": 4, "name": "ZIHEuMvb"}, {"max": 73, "min": 2, "name": "6bqScwhv"}, {"max": 37, "min": 99, "name": "3tgyHyBT"}], [{"max": 85, "min": 61, "name": "ot6nZU6c"}, {"max": 61, "min": 45, "name": "3rvWTvfB"}, {"max": 84, "min": 83, "name": "x6RXELdq"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 64, "role_flexing_second": 9}, "duration": 53, "max_number": 83, "min_number": 81, "player_max_number": 90, "player_min_number": 73}, {"combination": {"alliances": [[{"max": 76, "min": 72, "name": "VTIztAcl"}, {"max": 32, "min": 33, "name": "BT1XLgxD"}, {"max": 85, "min": 17, "name": "lkQe9EIb"}], [{"max": 33, "min": 90, "name": "Loao7fvn"}, {"max": 18, "min": 74, "name": "foKzW8B5"}, {"max": 64, "min": 52, "name": "BA3lp9QH"}], [{"max": 50, "min": 27, "name": "42ZSRdNZ"}, {"max": 100, "min": 45, "name": "nr8zMFRO"}, {"max": 45, "min": 33, "name": "M9onLLgd"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 34, "role_flexing_second": 4}, "duration": 3, "max_number": 19, "min_number": 22, "player_max_number": 92, "player_min_number": 36}], "name": "WIx66yj6"}, "pGi1ZFIP": {"alliance": {"combination": {"alliances": [[{"max": 4, "min": 28, "name": "DFLSaC1B"}, {"max": 53, "min": 20, "name": "i45CdLzd"}, {"max": 44, "min": 84, "name": "PVVKypV6"}], [{"max": 24, "min": 59, "name": "hTuDXH4h"}, {"max": 11, "min": 85, "name": "6q7U25jl"}, {"max": 25, "min": 90, "name": "SJ1a4Rmk"}], [{"max": 4, "min": 0, "name": "6gTJXkjs"}, {"max": 4, "min": 35, "name": "daEeH2Sh"}, {"max": 41, "min": 66, "name": "qriXyWb5"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 66, "role_flexing_second": 46}, "max_number": 79, "min_number": 0, "player_max_number": 72, "player_min_number": 40}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 39, "min": 17, "name": "hgF7WWxD"}, {"max": 30, "min": 13, "name": "PdCm3YeE"}, {"max": 42, "min": 34, "name": "SXpgTDFh"}], [{"max": 67, "min": 95, "name": "9ycRAXK6"}, {"max": 33, "min": 28, "name": "xcYOebzd"}, {"max": 47, "min": 14, "name": "WAmDxNk2"}], [{"max": 69, "min": 75, "name": "leS3XbWx"}, {"max": 17, "min": 80, "name": "gEE6TZVU"}, {"max": 82, "min": 85, "name": "hw2LBYIC"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 12, "role_flexing_second": 26}, "duration": 10, "max_number": 70, "min_number": 3, "player_max_number": 12, "player_min_number": 52}, {"combination": {"alliances": [[{"max": 100, "min": 44, "name": "2wnOKFIq"}, {"max": 59, "min": 27, "name": "LNM3JfZI"}, {"max": 81, "min": 64, "name": "DhM7h2sR"}], [{"max": 38, "min": 52, "name": "3Jd3r0ok"}, {"max": 58, "min": 34, "name": "CeF6HNDS"}, {"max": 13, "min": 86, "name": "qcgl69de"}], [{"max": 3, "min": 31, "name": "WTZBUEWN"}, {"max": 34, "min": 93, "name": "St9tesmd"}, {"max": 53, "min": 57, "name": "uFMt3Jny"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 14, "role_flexing_second": 67}, "duration": 58, "max_number": 61, "min_number": 87, "player_max_number": 6, "player_min_number": 40}, {"combination": {"alliances": [[{"max": 91, "min": 63, "name": "Vw4UIMJF"}, {"max": 9, "min": 62, "name": "HiqwwCMo"}, {"max": 21, "min": 31, "name": "mgAuHJrG"}], [{"max": 81, "min": 18, "name": "zGGrat7Y"}, {"max": 28, "min": 13, "name": "dl3YJuvC"}, {"max": 44, "min": 25, "name": "iOSb7VG0"}], [{"max": 30, "min": 85, "name": "2FY6bQJU"}, {"max": 44, "min": 96, "name": "SwBioZGX"}, {"max": 46, "min": 44, "name": "BueMx7OZ"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 79, "role_flexing_second": 36}, "duration": 81, "max_number": 84, "min_number": 20, "player_max_number": 12, "player_min_number": 80}], "name": "jfdpBPdq"}}, "ticket_flexing_selection": "34EFAYDY", "ticket_flexing_selections": [{"selection": "ASNIkx54", "threshold": 39}, {"selection": "SGT7FLld", "threshold": 8}, {"selection": "pwpjr4Pc", "threshold": 7}], "use_newest_ticket_for_flexing": true}, "session_queue_timeout_seconds": 86, "social_matchmaking": false, "sub_gamemode_selection": "ticketOrder", "ticket_observability_enable": true, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'GESYxHGC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'EfZD666d' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "dE8EWqSb", "players": [{"results": [{"attribute": "zyFZ1ssK", "value": 0.24209551292411668}, {"attribute": "NiabmIhl", "value": 0.0730582277464441}, {"attribute": "1pvi9Rfv", "value": 0.4392432219711595}], "user_id": "Zvr9uVjd"}, {"results": [{"attribute": "mYlBc0Dx", "value": 0.8095420250786515}, {"attribute": "aPEHHj9a", "value": 0.660656148976788}, {"attribute": "YO4h2Yo5", "value": 0.17042286317238498}], "user_id": "Mpk6xPhy"}, {"results": [{"attribute": "6tQC2OAq", "value": 0.7579836803624712}, {"attribute": "TZkCSEvG", "value": 0.7562495950527791}, {"attribute": "ftoweilP", "value": 0.7890147635201529}], "user_id": "CmeQEw1P"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "7BsDoyIQ"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "5NiRtCiO", "client_version": "4lSHEVt9", "deployment": "ror1eBt4", "error_code": 60, "error_message": "QAXOrzVV", "game_mode": "4BJXv6GE", "is_mock": "a1BqQVIp", "joinable": false, "match_id": "Vj1syY7c", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 91, "party_attributes": {"tNtHDoUB": {}, "XyNr0FqJ": {}, "SNZ9j33h": {}}, "party_id": "9oLKIPEL", "party_members": [{"extra_attributes": {"N67cByFG": {}, "CQB4kujb": {}, "CdrAkIlR": {}}, "user_id": "kDoR1osK"}, {"extra_attributes": {"EmpTeKDX": {}, "BzBBbkeF": {}, "0SYixYO9": {}}, "user_id": "NXPwFQ4T"}, {"extra_attributes": {"SJbBbKDb": {}, "ytiYcfgG": {}, "cTTKXX6s": {}}, "user_id": "4xqZASDn"}], "ticket_created_at": 78, "ticket_id": "PKVXzlfX"}, {"first_ticket_created_at": 77, "party_attributes": {"XsMxHW7k": {}, "nif1UJMU": {}, "e1GyfdlG": {}}, "party_id": "mu2YaTey", "party_members": [{"extra_attributes": {"N5JqsHuQ": {}, "bv6FYZhq": {}, "WL3qen91": {}}, "user_id": "L4S7ft7G"}, {"extra_attributes": {"z2VAbrqA": {}, "hfhTOTLw": {}, "qPU8mMc1": {}}, "user_id": "VdXW6NxZ"}, {"extra_attributes": {"5Y3KC01X": {}, "2rjM5OKm": {}, "QoRiOutr": {}}, "user_id": "Fq6fjvNl"}], "ticket_created_at": 67, "ticket_id": "KKaOdw0Z"}, {"first_ticket_created_at": 95, "party_attributes": {"C0PprHi8": {}, "ZKjjV3tb": {}, "YdvhBWvI": {}}, "party_id": "eiX5ha9V", "party_members": [{"extra_attributes": {"n6ZBPn1S": {}, "oaqEFfll": {}, "iLFwXT32": {}}, "user_id": "bcXwSm0y"}, {"extra_attributes": {"q2vvRCGa": {}, "qqVBnEjJ": {}, "RjjEQoWS": {}}, "user_id": "AoOLkMaF"}, {"extra_attributes": {"wSwFtiWB": {}, "CiSd7VcP": {}, "BZ0hdQul": {}}, "user_id": "XwRbyr18"}], "ticket_created_at": 48, "ticket_id": "g5OQA2Wj"}]}, {"matching_parties": [{"first_ticket_created_at": 29, "party_attributes": {"z0mAlncT": {}, "L7ifBrtl": {}, "HhHuTIPK": {}}, "party_id": "lS9rFeQC", "party_members": [{"extra_attributes": {"MLdYhluj": {}, "YjVu8Vp9": {}, "ug7xvPlp": {}}, "user_id": "yWgUqTfk"}, {"extra_attributes": {"b6gw7AOm": {}, "AKe61QiK": {}, "zFcsjXoP": {}}, "user_id": "VSlkjb6j"}, {"extra_attributes": {"JY90MFWK": {}, "m2N9OtXb": {}, "7LJXt9Om": {}}, "user_id": "QpPlajlB"}], "ticket_created_at": 100, "ticket_id": "sChWNYli"}, {"first_ticket_created_at": 70, "party_attributes": {"MxG6uMZx": {}, "1E9wkGgw": {}, "eC0qNBIC": {}}, "party_id": "GmIzkEpW", "party_members": [{"extra_attributes": {"co5lroyn": {}, "UBTBlrDu": {}, "ORKZ3rUw": {}}, "user_id": "YHRumIYV"}, {"extra_attributes": {"S6n1XVk3": {}, "b2hZeSnt": {}, "XvwaWgJQ": {}}, "user_id": "7Yl5PU9t"}, {"extra_attributes": {"hQag7wc7": {}, "qSwrrMJ6": {}, "CKpD5cq6": {}}, "user_id": "z6WrSHB3"}], "ticket_created_at": 65, "ticket_id": "vGCUqoSa"}, {"first_ticket_created_at": 71, "party_attributes": {"XhNPFgX0": {}, "aTS85lQP": {}, "Hp9L32Tx": {}}, "party_id": "coabZxEO", "party_members": [{"extra_attributes": {"I41vmNZ8": {}, "aWoHyUUL": {}, "oMpQdQk2": {}}, "user_id": "iErbobjP"}, {"extra_attributes": {"5ujIFmO9": {}, "hQ3ujWOx": {}, "mEGfSbv7": {}}, "user_id": "sM55LrhT"}, {"extra_attributes": {"RY2WKlgG": {}, "aZO1zD8N": {}, "2pRFrVHa": {}}, "user_id": "Nz6GcqCR"}], "ticket_created_at": 19, "ticket_id": "BPtA1rof"}]}, {"matching_parties": [{"first_ticket_created_at": 49, "party_attributes": {"2JzAT2nS": {}, "2XrnVt63": {}, "99jGA3h2": {}}, "party_id": "kC6w1mVi", "party_members": [{"extra_attributes": {"heNkPFFa": {}, "HYzT9Ht2": {}, "PXeQzoFt": {}}, "user_id": "nWLfbv9U"}, {"extra_attributes": {"UYQQOmrb": {}, "U3j2Qype": {}, "SELBdMYb": {}}, "user_id": "vufmrOgO"}, {"extra_attributes": {"HlUXgHC9": {}, "9DjULTAI": {}, "IooZlKf9": {}}, "user_id": "gtMH56b7"}], "ticket_created_at": 32, "ticket_id": "n1yQdcqy"}, {"first_ticket_created_at": 48, "party_attributes": {"mrlvm8h7": {}, "a4TJGBBu": {}, "9dqI8B2Y": {}}, "party_id": "DmTm8Qaj", "party_members": [{"extra_attributes": {"tCD888Zq": {}, "LP6WQAqY": {}, "kS8P3jIz": {}}, "user_id": "WVmI7ghq"}, {"extra_attributes": {"lzXnPeh6": {}, "WO2xiiy2": {}, "paCfKrJn": {}}, "user_id": "GP9t89IA"}, {"extra_attributes": {"UazcG2Gt": {}, "sADCKWf2": {}, "WVzTQqDx": {}}, "user_id": "fCYDjv0l"}], "ticket_created_at": 12, "ticket_id": "nqhZA2ZP"}, {"first_ticket_created_at": 25, "party_attributes": {"oSPvbAh9": {}, "KYUBcLOe": {}, "RjQ2acY8": {}}, "party_id": "37sk7LNZ", "party_members": [{"extra_attributes": {"6SX2yrM9": {}, "UYZ8MR9g": {}, "vHHK1kPV": {}}, "user_id": "8AaZysO3"}, {"extra_attributes": {"ays98mAq": {}, "doAGQ6tW": {}, "cKiBNGcT": {}}, "user_id": "Gvbq9mEE"}, {"extra_attributes": {"7tjQz6kZ": {}, "obS8u1am": {}, "g09AWPr8": {}}, "user_id": "RTOoW1gb"}], "ticket_created_at": 52, "ticket_id": "GWEV2KGK"}]}], "namespace": "pDD4GPYP", "party_attributes": {"OyI4mdZg": {}, "MqrTfjne": {}, "7HKj0IPl": {}}, "party_id": "kRqKdG4z", "queued_at": 10, "region": "rzHrqEGb", "server_name": "RFNmt6hk", "status": "St0r4ixG", "ticket_id": "HyU59wn4", "ticket_ids": ["ERoJUGMM", "W4JxYQyd", "4G8yYFFD"], "updated_at": "1989-04-22T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "MkDxERlq"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID '85jDLI4z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 4, "userID": "6txnnWj7", "weight": 0.4922413498125977}' \
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
    --matchIDs 'WqR3g369' \
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
    --strategy 'BXfWIuVH' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName '2fUsORzh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName '6WpasXVl' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_player_option": "blockedPlayerCanMatch", "deployment": "x7KIOoss", "description": "uU5iKHHh", "findMatchTimeoutSeconds": 56, "joinable": true, "max_delay_ms": 97, "region_expansion_range_ms": 13, "region_expansion_rate_ms": 72, "region_latency_initial_range_ms": 46, "region_latency_max_ms": 8, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 32, "min": 54, "name": "qxy9JZxN"}, {"max": 31, "min": 36, "name": "8AxDh5H9"}, {"max": 97, "min": 9, "name": "vNAq44nQ"}], [{"max": 93, "min": 86, "name": "w0vpJDUs"}, {"max": 84, "min": 72, "name": "NbkptknP"}, {"max": 39, "min": 39, "name": "iupqAY3T"}], [{"max": 63, "min": 64, "name": "FRjdou1I"}, {"max": 37, "min": 47, "name": "AdQzVbp5"}, {"max": 39, "min": 95, "name": "c8tg9MFG"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 34, "role_flexing_second": 43}, "maxNumber": 96, "minNumber": 36, "playerMaxNumber": 20, "playerMinNumber": 31}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 54, "min": 70, "name": "CdMOuPuy"}, {"max": 91, "min": 61, "name": "PokiGg1P"}, {"max": 19, "min": 44, "name": "h6INQqdz"}], [{"max": 48, "min": 88, "name": "am3zGyDc"}, {"max": 60, "min": 52, "name": "8radh20v"}, {"max": 45, "min": 100, "name": "zRtKe8MT"}], [{"max": 66, "min": 40, "name": "YaN4XOSj"}, {"max": 29, "min": 87, "name": "qsnwdYlw"}, {"max": 80, "min": 58, "name": "gQL1sbK5"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 69, "role_flexing_second": 53}, "duration": 37, "max_number": 56, "min_number": 3, "player_max_number": 52, "player_min_number": 22}, {"combination": {"alliances": [[{"max": 30, "min": 19, "name": "rubpOeD0"}, {"max": 69, "min": 18, "name": "dM66ouUC"}, {"max": 12, "min": 45, "name": "koSCh5U4"}], [{"max": 86, "min": 37, "name": "uPK4ztW6"}, {"max": 78, "min": 61, "name": "pwLNr4Lm"}, {"max": 0, "min": 32, "name": "wBdF3UkW"}], [{"max": 51, "min": 22, "name": "01x1J0nf"}, {"max": 86, "min": 88, "name": "Jreh8zrr"}, {"max": 61, "min": 84, "name": "Gnlusobq"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 58, "role_flexing_second": 9}, "duration": 49, "max_number": 94, "min_number": 48, "player_max_number": 39, "player_min_number": 83}, {"combination": {"alliances": [[{"max": 1, "min": 20, "name": "lK0EOcvw"}, {"max": 26, "min": 65, "name": "L8GhJbEy"}, {"max": 11, "min": 68, "name": "aioxYhXL"}], [{"max": 80, "min": 19, "name": "qyRphqlY"}, {"max": 63, "min": 23, "name": "FjTmmFuO"}, {"max": 59, "min": 61, "name": "ccz1RJXp"}], [{"max": 97, "min": 1, "name": "6Ue72jJG"}, {"max": 73, "min": 49, "name": "yv33oh4z"}, {"max": 61, "min": 9, "name": "rxI8QWoa"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 59, "role_flexing_second": 90}, "duration": 40, "max_number": 18, "min_number": 16, "player_max_number": 22, "player_min_number": 59}], "batch_size": 22, "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 98, "flex_flat_step_range": 43, "flex_immunity_count": 78, "flex_range_max": 75, "flex_rate_ms": 64, "flex_step_max": 39, "force_authority_match": true, "initial_step_range": 14, "mmr_max": 26, "mmr_mean": 46, "mmr_min": 28, "mmr_std_dev": 97, "override_mmr_data": false, "use_bucket_mmr": false, "use_flat_flex_step": true}, "flexingRules": [{"attribute": "2FBnMXZl", "criteria": "G7T2pIyH", "duration": 95, "reference": 0.7797165682790016}, {"attribute": "cU3WQrKH", "criteria": "j8TdbCop", "duration": 92, "reference": 0.21487333863435432}, {"attribute": "iUR5wgmW", "criteria": "upMXnKIN", "duration": 32, "reference": 0.3735200361000529}], "match_options": {"options": [{"name": "geAQHpHV", "type": "WKNl37lX"}, {"name": "8dSh0wlr", "type": "Xs1xLXYx"}, {"name": "tTMbp1y0", "type": "r5M962lV"}]}, "matchingRules": [{"attribute": "XO2cylPj", "criteria": "I5wTGARE", "reference": 0.4202098528287145}, {"attribute": "xoWZRWGP", "criteria": "NzZi604G", "reference": 0.8718850576922972}, {"attribute": "UpMsgbzT", "criteria": "YC1urnth", "reference": 0.8390566260225826}], "sort_ticket": {"search_result": "V2n5cbCO", "ticket_queue": "YF0iOqpK"}, "sort_tickets": [{"search_result": "lrosGQW0", "threshold": 77, "ticket_queue": "qDmruOZC"}, {"search_result": "27UYXGbi", "threshold": 51, "ticket_queue": "gtkTISzd"}, {"search_result": "56GWCHzR", "threshold": 42, "ticket_queue": "VZH5ovJ8"}], "sub_game_modes": {}, "ticket_flexing_selection": "QEYilBvf", "ticket_flexing_selections": [{"selection": "3ZECElOi", "threshold": 14}, {"selection": "l2JrS6oB", "threshold": 12}, {"selection": "F46OLZHQ", "threshold": 7}], "use_newest_ticket_for_flexing": true}, "sessionQueueTimeoutSeconds": 3, "socialMatchmaking": false, "sub_gamemode_selection": "random", "ticket_observability_enable": false, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName '4s6HC9wM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName 'AgRhNewO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName 'pLF8YzIb' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 59}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName 'lAFr2XoP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName 'XZBKh4du' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "hMkOWwWG", "count": 12, "mmrMax": 0.4843774849428282, "mmrMean": 0.16706509028787075, "mmrMin": 0.1798610357558712, "mmrStdDev": 0.7994116207590309}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName 'WJOTtLYO' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 5, "party_attributes": {"MwhTD58a": {}, "WzGMxR2E": {}, "s2YZA51q": {}}, "party_id": "5n8iNYuK", "party_members": [{"extra_attributes": {"4X28M15z": {}, "IZwsiUXh": {}, "2tgc6Jj7": {}}, "user_id": "sWjsIXiu"}, {"extra_attributes": {"LNaQvj2H": {}, "7JWM8mbT": {}, "L6FWkRHW": {}}, "user_id": "gccjk1mX"}, {"extra_attributes": {"3vdkBDLx": {}, "JdesultF": {}, "XXlLuz5w": {}}, "user_id": "yKCEHJav"}], "ticket_created_at": 72, "ticket_id": "P5lJaJpm"}, {"first_ticket_created_at": 17, "party_attributes": {"sX2z0DdB": {}, "XF80fywV": {}, "Qxdq6xQY": {}}, "party_id": "hKxJLSqZ", "party_members": [{"extra_attributes": {"4SvjN4Gg": {}, "oKNMmwRn": {}, "yrdnfhYG": {}}, "user_id": "CknjFdmG"}, {"extra_attributes": {"nVhwMlKh": {}, "HDMKSKSY": {}, "oNMYVQDc": {}}, "user_id": "CvnHnXZo"}, {"extra_attributes": {"hgeZ0vE9": {}, "hoanpNpG": {}, "6r2JHKQn": {}}, "user_id": "Kr4zBqRX"}], "ticket_created_at": 65, "ticket_id": "wmO6y7OJ"}, {"first_ticket_created_at": 6, "party_attributes": {"TiKXtKZ0": {}, "vpqenseZ": {}, "b17ZCGiS": {}}, "party_id": "WZ7rFLMn", "party_members": [{"extra_attributes": {"gYltCKPd": {}, "USHEDYer": {}, "Zl92f13I": {}}, "user_id": "xEXETmt0"}, {"extra_attributes": {"i7hhKPr9": {}, "xVOEOgU5": {}, "vwT9cjXj": {}}, "user_id": "yGb9aX6z"}, {"extra_attributes": {"l60lmtOJ": {}, "4J6NBljK": {}, "uNDCxfoM": {}}, "user_id": "LJujcMKe"}], "ticket_created_at": 56, "ticket_id": "xPxjKs5Z"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName 'kJvm78K3' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 64}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName '5IV1IsqJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'wE5yD7p9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'l2Fojgh6' \
    --matchID 'e7TR6Nta' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["VQ9BPvvn", "lmwDFyF9", "yJ7PW3Xk"], "party_id": "a199eGxR", "user_id": "hvZxCtme"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'Aimg3Kzb' \
    --matchID 'O44bXilq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'BqU3Otco' \
    --matchID '9acUxyrx' \
    --namespace $AB_NAMESPACE \
    --userID 'IYbssS3X' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName 'AhhW3NJE' \
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
    --channelName 'nj9zKGZZ' \
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