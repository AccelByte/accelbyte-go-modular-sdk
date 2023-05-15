#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Code generated. DO NOT EDIT.

# Meta:
# - random seed: 256
# - template file: cli_test.j2

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
echo "1..30"

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
    --limit '76' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "Kk1ld702HoN3Pe7x", "description": "AeiaYNKkoF3PWXkN", "find_match_timeout_seconds": 80, "game_mode": "SKq6ILYUNiJQPe9Q", "joinable": true, "max_delay_ms": 53, "rule_set": {"alliance": {"combination": {"alliances": [{"max": 92, "min": 23, "name": "njpBOzos79ah5yO2"}, {"max": 39, "min": 88, "name": "CduZ3PJh8wRbrB60"}, {"max": 68, "min": 26, "name": "iNZJmExMWvLSv2pH"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 55, "role_flexing_second": 6}, "max_number": 38, "min_number": 71, "player_max_number": 89, "player_min_number": 99}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 59, "min": 12, "name": "0LwuXVge75tsgi1j"}, {"max": 79, "min": 87, "name": "vFPDVUEMphLkMicr"}, {"max": 25, "min": 36, "name": "GZwxrzlveJNaQqhu"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 72, "role_flexing_second": 13}, "duration": 42, "max_number": 82, "min_number": 29, "player_max_number": 95, "player_min_number": 20}, {"combination": {"alliances": [{"max": 97, "min": 89, "name": "gDYBAXqy25S3Wa8N"}, {"max": 60, "min": 14, "name": "Zz39wXZvuvQURaTr"}, {"max": 59, "min": 96, "name": "tnquj68MANHwJ1a1"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 67, "role_flexing_second": 15}, "duration": 98, "max_number": 94, "min_number": 45, "player_max_number": 16, "player_min_number": 21}, {"combination": {"alliances": [{"max": 88, "min": 61, "name": "dQhEWcZATJvq2qXL"}, {"max": 30, "min": 76, "name": "7bGPZAe9YqUWSQn1"}, {"max": 62, "min": 93, "name": "PQHdYp0EvY8SCgIO"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 2, "role_flexing_second": 29}, "duration": 24, "max_number": 54, "min_number": 89, "player_max_number": 44, "player_min_number": 13}], "flexing_rule": [{"attribute": "WdqAg6ZSPp4aZ4CT", "criteria": "gzgDNfrtJ3VkJoSX", "duration": 26, "reference": 0.42454404302233695}, {"attribute": "AyS4gE1Xpkj90KGh", "criteria": "w3FiGdYMQOIltcp0", "duration": 21, "reference": 0.17764219644357937}, {"attribute": "0vNiiu1jT6wc6l4S", "criteria": "Y6ZlhmY9oLcrobr1", "duration": 97, "reference": 0.7049066976299665}], "match_options": {"options": [{"name": "wBnI9iAKIGrI1Dln", "type": "QIqOIugNhAGFN613"}, {"name": "qGzbK6c8eANNUTka", "type": "l0OIeg1H24PIdaGY"}, {"name": "fJkHoz0W10RQ0bZf", "type": "i1vPpkUoZmpEro0g"}]}, "matching_rule": [{"attribute": "J95djeMoBGvdCcPA", "criteria": "JMtC6Fu1CxYhYf4J", "reference": 0.18641708850340466}, {"attribute": "DnIUvkayV2rNAuf8", "criteria": "nDCrif1Qx6XtZDUM", "reference": 0.013936924955016528}, {"attribute": "qMSLW3dGr4ILGUCh", "criteria": "7fh1Wbc8jm8Mym3L", "reference": 0.1861239540870986}], "rebalance_enable": true, "sub_game_modes": {"hT34qRvMSr9EZu1v": {"alliance": {"combination": {"alliances": [{"max": 22, "min": 84, "name": "WuA4FpOii4KETM5a"}, {"max": 17, "min": 29, "name": "3haLvTPTrGaxkEyd"}, {"max": 41, "min": 78, "name": "7VIZ6MjbOVMnMNXv"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 99, "role_flexing_second": 0}, "max_number": 84, "min_number": 43, "player_max_number": 46, "player_min_number": 100}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 1, "min": 27, "name": "YQl2QCoGPjLW5toE"}, {"max": 78, "min": 46, "name": "R8P6180fDlOpgyud"}, {"max": 93, "min": 4, "name": "psYTDTGBP8grEYOA"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 79, "role_flexing_second": 74}, "duration": 39, "max_number": 62, "min_number": 63, "player_max_number": 83, "player_min_number": 10}, {"combination": {"alliances": [{"max": 38, "min": 74, "name": "DRgSwhfYQoa0Z9HM"}, {"max": 88, "min": 23, "name": "6NWmm1LaOjN1DWzr"}, {"max": 2, "min": 57, "name": "Emth8uafJtoG7byv"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 88, "role_flexing_second": 89}, "duration": 82, "max_number": 54, "min_number": 21, "player_max_number": 36, "player_min_number": 46}, {"combination": {"alliances": [{"max": 63, "min": 52, "name": "OU7tx0F9FwUG6tTi"}, {"max": 10, "min": 9, "name": "EtbKLkMDqGYb82lU"}, {"max": 36, "min": 80, "name": "p46xBKDcKmpIipTU"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 32, "role_flexing_second": 15}, "duration": 91, "max_number": 99, "min_number": 73, "player_max_number": 62, "player_min_number": 29}], "name": "ezDUrLWCJKcQz8XR"}, "Kbt2wDcUbIYi2yUf": {"alliance": {"combination": {"alliances": [{"max": 55, "min": 35, "name": "Y6oY1isCCZbYapMn"}, {"max": 12, "min": 22, "name": "RpncxdYi1RoVNrCB"}, {"max": 6, "min": 79, "name": "pQmaIaqlO3mcMpgK"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 36, "role_flexing_second": 55}, "max_number": 77, "min_number": 64, "player_max_number": 66, "player_min_number": 80}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 54, "min": 55, "name": "bWTB5cn5OETDrlri"}, {"max": 31, "min": 60, "name": "bvU6bJE2kAlPpm6J"}, {"max": 98, "min": 56, "name": "GDyBQJUgZGOEamZP"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 32, "role_flexing_second": 51}, "duration": 2, "max_number": 100, "min_number": 99, "player_max_number": 63, "player_min_number": 17}, {"combination": {"alliances": [{"max": 37, "min": 1, "name": "6KtiQDvNDBsTO1Kg"}, {"max": 79, "min": 4, "name": "ZJc1RngpJ9yZjIhZ"}, {"max": 11, "min": 4, "name": "rI0faXGUjosrJZy6"}], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 61, "role_flexing_second": 66}, "duration": 35, "max_number": 38, "min_number": 54, "player_max_number": 95, "player_min_number": 19}, {"combination": {"alliances": [{"max": 85, "min": 77, "name": "jdJLTeIbZWPyoyvn"}, {"max": 68, "min": 15, "name": "ZZAP60dr8zKAIc2T"}, {"max": 80, "min": 5, "name": "uxahHyvsahFLUxF3"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 81, "role_flexing_second": 81}, "duration": 99, "max_number": 33, "min_number": 27, "player_max_number": 79, "player_min_number": 84}], "name": "30JAhotTUesdaO6N"}, "RQldAU8QVNFmt03j": {"alliance": {"combination": {"alliances": [{"max": 73, "min": 23, "name": "CaNwIwpdhCRPHuGr"}, {"max": 68, "min": 68, "name": "eqtLirHSHLKHs8MN"}, {"max": 79, "min": 65, "name": "nA8i1gHlkKKqJcHF"}], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 11, "role_flexing_second": 82}, "max_number": 54, "min_number": 100, "player_max_number": 44, "player_min_number": 28}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 84, "min": 3, "name": "IzGOoPuMvyzZsQio"}, {"max": 87, "min": 32, "name": "odXX0DkDXfjSuWlz"}, {"max": 36, "min": 67, "name": "kU6ve6g3sQcLMCFM"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 83, "role_flexing_second": 28}, "duration": 0, "max_number": 3, "min_number": 76, "player_max_number": 61, "player_min_number": 86}, {"combination": {"alliances": [{"max": 47, "min": 23, "name": "PGuAQTcI3jWWf0Cs"}, {"max": 37, "min": 90, "name": "wTZ6FnPUrvTVWXr1"}, {"max": 33, "min": 70, "name": "1A722YSICCCcJCPA"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 82, "role_flexing_second": 21}, "duration": 40, "max_number": 69, "min_number": 21, "player_max_number": 10, "player_min_number": 28}, {"combination": {"alliances": [{"max": 82, "min": 83, "name": "j77XbvDudoYthLOa"}, {"max": 33, "min": 47, "name": "HVC7wmT3KTh9A29a"}, {"max": 72, "min": 29, "name": "NFygwUqtqgGmuVQL"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 97, "role_flexing_second": 67}, "duration": 29, "max_number": 99, "min_number": 82, "player_max_number": 63, "player_min_number": 88}], "name": "FE1Dg1SscnFV7h6E"}}}, "session_queue_timeout_seconds": 4, "social_matchmaking": true, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'i0Zm1OlMp2qBxS2f' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'DeleteChannelHandler' test.out

#- 7 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "b23KABqutpWbLaSc", "players": [{"results": [{"attribute": "n2hJG8eG5Vn6tgxS", "value": 0.04256809540049544}, {"attribute": "M9iCsxTXiaBqlejc", "value": 0.2682349122279236}, {"attribute": "5LNs8O6VS7ukvuSI", "value": 0.4483303582964766}], "user_id": "DqHjO3YqFVRWezOX"}, {"results": [{"attribute": "dXqads9OKFWfnh2D", "value": 0.9400178178495974}, {"attribute": "FtaU4lG64SM1zZy6", "value": 0.2550937939968102}, {"attribute": "FKs80fMI21doIyrL", "value": 0.5749806851656751}], "user_id": "UYmqYf2HaPMu0DXf"}, {"results": [{"attribute": "AAoDRUePrEa5s4Uf", "value": 0.6788000598392885}, {"attribute": "GsVJ7Aa1EHX6xMDo", "value": 0.7214952957326612}, {"attribute": "6cYqChDFN7h6nzde", "value": 0.1796685738291176}], "user_id": "FS8kHYw8rrnGSHVo"}]}' \
    > test.out 2>&1
eval_tap $? 7 'StoreMatchResults' test.out

#- 8 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "F2114aRy3t1BGMQ8"}' \
    > test.out 2>&1
eval_tap $? 8 'Rebalance' test.out

#- 9 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "AHiM3ypsedJaPWGW", "client_version": "Yepvffy5vVMjQD58", "deployment": "bRoChZqVHAow1ChS", "error_code": 13, "error_message": "szZzrlc6fi1cF0l9", "game_mode": "z4ZvT3w0rAJBbhZW", "joinable": false, "match_id": "tDlEb5oa4eoUAces", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 68, "party_attributes": {"7FMHb74UeZOKS3v5": {}, "asGjbxQF055tyuWe": {}, "4nhvcc6NAKGJosB1": {}}, "party_id": "TPVFhVMd5kBUnmsA", "party_members": [{"extra_attributes": {"URMQlJG7bltnovRv": {}, "SztqJwOC0fAhWXrn": {}, "MYD0D4jFP2fziNPj": {}}, "user_id": "NwIqR64UKyY9wtya"}, {"extra_attributes": {"sxbDbrQ3BJACgu9K": {}, "KY9a48ckoVuxsHfz": {}, "hdSR2YtLZNnd14XK": {}}, "user_id": "zJtqIRsP7InvlgHo"}, {"extra_attributes": {"FOuPEjNG61X7ltgv": {}, "NJcaAkK9u3wZRSZu": {}, "4BqqLfRDownCvQOZ": {}}, "user_id": "auQ71v5YX5ZAH1bh"}], "ticket_created_at": 82, "ticket_id": "Hq11Y3Id9EUI5Ygc"}, {"first_ticket_created_at": 11, "party_attributes": {"Eqcnuc6uQImvRSdl": {}, "sEw1nw0skfLdDBMq": {}, "Jcwuo2OOFG6gxGNF": {}}, "party_id": "Gfx7v7Z8LoTIkdxD", "party_members": [{"extra_attributes": {"pfBUIpUsrXfRmSup": {}, "2qXih4MyyGPfceAH": {}, "Cdr7U9xPeD1SF3B0": {}}, "user_id": "JYZQavXJMAszb9i4"}, {"extra_attributes": {"U4ODsEu9x01uEmWv": {}, "4QVrdgej4w8ijAlo": {}, "o9xhJs6jW3jKrDpx": {}}, "user_id": "GJKNkMkOZp0yJEwZ"}, {"extra_attributes": {"c3qjVbWGyMyGxd0S": {}, "CBLTo9W36WMt8oT8": {}, "SCg1YFDWN34CHJFO": {}}, "user_id": "EUMRzvigCJFiJr9f"}], "ticket_created_at": 39, "ticket_id": "PNPsuscRukj1QHPc"}, {"first_ticket_created_at": 46, "party_attributes": {"OBVJ2K4EyxiXTI55": {}, "t3kc9uLRdmbQXiHs": {}, "jJN9Rar2zswFwpgV": {}}, "party_id": "Plni2ENWnnTQwDBN", "party_members": [{"extra_attributes": {"Kzqmks0Zw1FMDVG4": {}, "QJQ6sUyWaAVza1Ke": {}, "7mGfuyKYPtQiKSKW": {}}, "user_id": "Xtu0apVYNoRjNabs"}, {"extra_attributes": {"opDBldmNMlcn1Aqf": {}, "sb61VaV0TGoupfxj": {}, "MoHeFjID275m6b5L": {}}, "user_id": "zGI2dST0cmfIQnRC"}, {"extra_attributes": {"Hqu9pbap8sKTOZzN": {}, "8SjJeGGfiYW9WTRQ": {}, "LycNg0kaU5eJGYkg": {}}, "user_id": "AoXbxoXZXOzDbOOe"}], "ticket_created_at": 42, "ticket_id": "TGrJul9ueqkiHue8"}]}, {"matching_parties": [{"first_ticket_created_at": 77, "party_attributes": {"8aR4IqJwzqifUnhc": {}, "AXUIN3BpkTp3NYC0": {}, "FM4R4obkkFjExMUw": {}}, "party_id": "fQWWwXnLMAfT4eIX", "party_members": [{"extra_attributes": {"7bczyks6RClcvy80": {}, "HJWTNXAYqIvBSjuW": {}, "L7sZXG19OAqltj6T": {}}, "user_id": "1yAGr73EXz77nTkg"}, {"extra_attributes": {"b8RBdAhKiwCZJ7ZQ": {}, "sOCJrtjaWpAPImwV": {}, "Bsag4IqSPUrZmlqJ": {}}, "user_id": "uBMrbhZbNtQ3rlPl"}, {"extra_attributes": {"cIsQFBJC3DeSYMZC": {}, "EOcCLeLyqShTivLm": {}, "XrmxDHwdhvDK0gkq": {}}, "user_id": "3b86JfNJ0VpDGCbL"}], "ticket_created_at": 44, "ticket_id": "QAbqC3NCz3d9wyTT"}, {"first_ticket_created_at": 75, "party_attributes": {"wMz0Xj2pFsqY3EjW": {}, "GH8makzQRs02ctMM": {}, "qghr5t0G6jMqsfGc": {}}, "party_id": "GDbZMisL4NuGDEbX", "party_members": [{"extra_attributes": {"0RWBeS4PlDd4nlxF": {}, "FHsXxGU17dg8y4UJ": {}, "3CbIPD1HRLCpSS4Y": {}}, "user_id": "eYYVRvrbZEKSskJJ"}, {"extra_attributes": {"4rDr0EU2fhRuVYft": {}, "pMZWGYEsX8hs1Kmh": {}, "8uiSzrIq1hoh6AFH": {}}, "user_id": "004W8nIXShHsJzM1"}, {"extra_attributes": {"g4yp6BTSf9ijP8lr": {}, "joHFNAkYKfw8XdFz": {}, "KkKBYJAjY8tK7DLJ": {}}, "user_id": "xAWOQzcXZIqZNf50"}], "ticket_created_at": 20, "ticket_id": "SaMdB5Zg78ZRdZ8n"}, {"first_ticket_created_at": 71, "party_attributes": {"Aqbovd9zwd4zR4Qv": {}, "r5jeWfoTBsCEcFUS": {}, "dJQI4QyG3BPyX0ho": {}}, "party_id": "2ph204ihIZtbQfMp", "party_members": [{"extra_attributes": {"Dmkir906os1jsVtn": {}, "UhIrUbxRE9CJkFUc": {}, "wuHiEnS0CJUCLkpV": {}}, "user_id": "XVfFeNMAVCo0Cy7L"}, {"extra_attributes": {"Dv9Qdc6dliQ9IM2u": {}, "BxvCMPNWRwUZxuxo": {}, "XcyNscTyKWEgLYfo": {}}, "user_id": "OejBUVkgYYR5bvcw"}, {"extra_attributes": {"Ds3jZ2vmGhzBF5Um": {}, "z6IAsfzgrcW2OQD2": {}, "kPuJIuVx1K3A7n84": {}}, "user_id": "6ajtuQt4VJjK4Nnb"}], "ticket_created_at": 85, "ticket_id": "nu9sudMwDKg2XqVU"}]}, {"matching_parties": [{"first_ticket_created_at": 0, "party_attributes": {"GfFF9iB8WxKUXuj6": {}, "Bc0fIyDhmyjG1qfh": {}, "KT09vyhCuFvCtMNx": {}}, "party_id": "86TTBJWvlhzvRDZk", "party_members": [{"extra_attributes": {"c9A9oeVtMeFhkoOC": {}, "njlzSqZ7LeO2T24P": {}, "CdRPJ1WEusZ16njI": {}}, "user_id": "ABrqbSfPpCpAy7SR"}, {"extra_attributes": {"NBjIeiMHT37sbwrs": {}, "7SXnR7YfZy8k8zQx": {}, "WurweRHb4sIu30E4": {}}, "user_id": "qL6wKwsQxud1BVdh"}, {"extra_attributes": {"BQUPVCHlLvs6b4C9": {}, "boqPWkK15ZZoSIgX": {}, "rc9hVFARPjbME7XJ": {}}, "user_id": "LkCmk6l4wY5gMjr3"}], "ticket_created_at": 58, "ticket_id": "CXVLBYL0ICG3E4ww"}, {"first_ticket_created_at": 88, "party_attributes": {"L7Ev0wNKcWi4TBCy": {}, "muV4Vd2tMahqsy1G": {}, "kRpmIRRvDRQS18Du": {}}, "party_id": "8qkV3OQ38674wizB", "party_members": [{"extra_attributes": {"tD1S7eA2xd3il76F": {}, "UdaiWUPl7KKqV4Vk": {}, "IJyxSWqpwI6t4oDC": {}}, "user_id": "Vrk7AxSMFjDOmE3F"}, {"extra_attributes": {"3XDACQhYmZ7nkC5D": {}, "muYmvd2o8gVMO8AE": {}, "QP8PvVbsG6qc2uXi": {}}, "user_id": "8gp3T8MGHZVHMoZh"}, {"extra_attributes": {"wTqRbVp0r3OiildJ": {}, "TN18EuQF0kkjkJ23": {}, "E0givzZW70ISB8b0": {}}, "user_id": "l6ylcOWIeoyC3XXT"}], "ticket_created_at": 50, "ticket_id": "mVybmBGFXNtJzahJ"}, {"first_ticket_created_at": 11, "party_attributes": {"QzoE5t5iOXe6ps9D": {}, "HfHnUfv4DfWl9TXM": {}, "eWuzlhbwfjncIBid": {}}, "party_id": "DVUfE1Iawhm9X3W0", "party_members": [{"extra_attributes": {"Ocnr0teJzZtJXkPm": {}, "k3nw0JciQz72zG3h": {}, "1vAPThr3srrFupue": {}}, "user_id": "lhfgmFwvKffOoyoR"}, {"extra_attributes": {"JXFyaNNByVZEPenP": {}, "pYsgWvRDBW3oF8XX": {}, "YnhtvMLXn0CDnoyL": {}}, "user_id": "ON2ZMRxWVYxkugCK"}, {"extra_attributes": {"g9csnEZbPTI2N1b7": {}, "GdBU1uZep466nfRt": {}, "NNKcOlJGYU7aY5yJ": {}}, "user_id": "oOM7IFquxNw6FhSL"}], "ticket_created_at": 72, "ticket_id": "OuUvd4Gq7j5igDtm"}]}], "namespace": "9ZFwvbd6oSydFB0G", "party_attributes": {"vdO5ltVokCtBGYGe": {}, "GKg6OR6ZcuM98DkH": {}, "rnjuhtsropplL0B7": {}}, "party_id": "opy2aADZKGd4XdnH", "queued_at": 55, "region": "MzRZWfI99PsWksHo", "server_name": "WJrnUX2ZTAHkWvYg", "status": "VP06KQtvdKnDaG0A", "ticket_id": "x1aYyE9Vzg9O0035", "updated_at": "1975-06-22T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 9 'QueueSessionHandler' test.out

#- 10 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "0k4dvWAvdi13AFe1"}' \
    > test.out 2>&1
eval_tap $? 10 'DequeueSessionHandler' test.out

#- 11 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'HvyWDDgg3TvAB0AW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'QuerySessionHandler' test.out

#- 12 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 63, "userID": "codvHfmVcRntjb66", "weight": 0.2072774159868721}' \
    > test.out 2>&1
eval_tap $? 12 'UpdatePlayTimeWeight' test.out

#- 13 GetAllPartyInAllChannel
samples/cli/sample-apps Matchmaking getAllPartyInAllChannel \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'GetAllPartyInAllChannel' test.out

#- 14 BulkGetSessions
samples/cli/sample-apps Matchmaking bulkGetSessions \
    --namespace $AB_NAMESPACE \
    --matchIDs 'PFdJ5cecTHiblefF' \
    > test.out 2>&1
eval_tap $? 14 'BulkGetSessions' test.out

#- 15 ExportChannels
samples/cli/sample-apps Matchmaking exportChannels \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'ExportChannels' test.out

#- 16 ImportChannels
samples/cli/sample-apps Matchmaking importChannels \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy 'jrcOAiypOEPPZEU1' \
    > test.out 2>&1
eval_tap $? 16 'ImportChannels' test.out

#- 17 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName '2B8EZ7uFZg6dLy6q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetSingleMatchmakingChannel' test.out

#- 18 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'nVJCR7ONg1moVXwz' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "B2gH2UDG65mRtPsO", "description": "FAcBOS8F9rZQlSnG", "findMatchTimeoutSeconds": 41, "joinable": true, "max_delay_ms": 100, "ruleSet": {"alliance": {"combination": {"alliances": [{"max": 59, "min": 6, "name": "PWrk9L4SCbvIry06"}, {"max": 69, "min": 50, "name": "cb2Jn633RMX9A2Jb"}, {"max": 7, "min": 33, "name": "8NPLwM95s5CBicI4"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 40, "role_flexing_second": 53}, "maxNumber": 85, "minNumber": 45, "playerMaxNumber": 5, "playerMinNumber": 39}, "alliance_flexing_rule": [{"combination": {"alliances": [{"max": 54, "min": 74, "name": "NONqZcGK0JLNeczc"}, {"max": 64, "min": 92, "name": "k2S7l6m5wQVVmSYL"}, {"max": 43, "min": 20, "name": "50eb83RlA3G90Yn0"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 29, "role_flexing_second": 7}, "duration": 57, "max_number": 77, "min_number": 70, "player_max_number": 45, "player_min_number": 4}, {"combination": {"alliances": [{"max": 74, "min": 25, "name": "20SnFBkIbPy91Kdr"}, {"max": 59, "min": 94, "name": "zLL152ve00WLHYSt"}, {"max": 33, "min": 85, "name": "tKbE56YN6CYkP2rF"}], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 2, "role_flexing_second": 100}, "duration": 65, "max_number": 90, "min_number": 64, "player_max_number": 19, "player_min_number": 71}, {"combination": {"alliances": [{"max": 62, "min": 27, "name": "orrNwjpGnTOYab0V"}, {"max": 81, "min": 6, "name": "OTu6onDudzDoJfnk"}, {"max": 36, "min": 7, "name": "RkgJuOIsryRS6SbQ"}], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 94, "role_flexing_second": 9}, "duration": 62, "max_number": 92, "min_number": 58, "player_max_number": 35, "player_min_number": 1}], "flexingRules": [{"attribute": "kzrF5rPuHQbk4jMg", "criteria": "L1H7hvQetUD43FS8", "duration": 9, "reference": 0.3960336678565467}, {"attribute": "vdpT2azpd7c2fGXJ", "criteria": "2TTxO3WR0uylu55S", "duration": 4, "reference": 0.1739438636633741}, {"attribute": "HYVtQT8Eas0rj7Ys", "criteria": "4TopL16y8uhTJENV", "duration": 10, "reference": 0.849178266811367}], "match_options": {"options": [{"name": "GhmndL7iSb7h20KH", "type": "fepMym7PswxoUb9y"}, {"name": "Dhc0uNqGxxGLjLG1", "type": "J80mf3KiLTEFFXYg"}, {"name": "ygAN6dpxhy7jAqvH", "type": "nioC5hE0fz1xd6Ih"}]}, "matchingRules": [{"attribute": "bCmhS2MM8Hl6UaXl", "criteria": "Y8DtETwCa5niPpUl", "reference": 0.7042469148775312}, {"attribute": "SofSYfumrjll7jqL", "criteria": "cWS0uQUpReivqyzl", "reference": 0.5795170283654485}, {"attribute": "z8PcwbvbynpN5h2p", "criteria": "kvU3LdMa5kKwjywj", "reference": 0.010898394526548394}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 9, "socialMatchmaking": true, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateMatchmakingChannel' test.out

#- 19 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'fPiuFr2Lu4pkE3DE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'GetAllPartyInChannel' test.out

#- 20 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'spKmzLSYVq92yXe8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'GetAllSessionsInChannel' test.out

#- 21 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'artf5T1zU8LW3HFG' \
    --matchID 'MMrq03wJLf2rb0M9' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["BR2lf7nOJm15dIuG", "ajcUwG52sPGRo5pF", "Wi0yzOpgvtkuW2wQ"], "party_id": "yP78asagwEzsEBQl", "user_id": "bYDM0FkkkyKfCMUm"}' \
    > test.out 2>&1
eval_tap $? 21 'AddUserIntoSessionInChannel' test.out

#- 22 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'AdiQBgWHdgO2V8pF' \
    --matchID 'kIIJIDPdYqPWVGfK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'DeleteSessionInChannel' test.out

#- 23 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName '8CizB9XTPuds2PsS' \
    --matchID 'AFaHnxDP4QMHmMnc' \
    --namespace $AB_NAMESPACE \
    --userID 'fhaeuYV4x9Mwz2kO' \
    > test.out 2>&1
eval_tap $? 23 'DeleteUserFromSessionInChannel' test.out

#- 24 SearchSessions
eval_tap 0 24 'SearchSessions # SKIP deprecated' test.out

#- 25 GetSessionHistoryDetailed
eval_tap 0 25 'GetSessionHistoryDetailed # SKIP deprecated' test.out

#- 26 PublicGetMessages
samples/cli/sample-apps Matchmaking publicGetMessages \
    > test.out 2>&1
eval_tap $? 26 'PublicGetMessages' test.out

#- 27 PublicGetAllMatchmakingChannel
samples/cli/sample-apps Matchmaking publicGetAllMatchmakingChannel \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'PublicGetAllMatchmakingChannel' test.out

#- 28 PublicGetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking publicGetSingleMatchmakingChannel \
    --channelName 'LYbBk345phsoT1Cw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'PublicGetSingleMatchmakingChannel' test.out

#- 29 SearchSessionsV2
eval_tap 0 29 'SearchSessionsV2 # SKIP deprecated' test.out

#- 30 VersionCheckHandler
samples/cli/sample-apps Matchmaking versionCheckHandler \
    > test.out 2>&1
eval_tap $? 30 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE