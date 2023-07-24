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
    --limit '15' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "f0UGb2Zqze8tM5Sb", "description": "rj477DZWat1Hnt8D", "find_match_timeout_seconds": 55, "game_mode": "6yjQS3sAv0bDcl5G", "joinable": false, "max_delay_ms": 5, "region_expansion_range_ms": 69, "region_expansion_rate_ms": 97, "region_latency_initial_range_ms": 54, "region_latency_max_ms": 81, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 96, "min": 99, "name": "tZcVX2QgYB5Z7YL5"}, {"max": 14, "min": 53, "name": "qatFQEdgm5y49RfK"}, {"max": 27, "min": 59, "name": "lUcC5fixDMtswSvN"}], [{"max": 57, "min": 58, "name": "BnzTsloFSfD3X2He"}, {"max": 66, "min": 69, "name": "PhBLNGuRwpA9yObi"}, {"max": 25, "min": 83, "name": "hjXCbSwgBChSnVV5"}], [{"max": 16, "min": 19, "name": "KS4BvsN2Vt2WqS5g"}, {"max": 5, "min": 16, "name": "rX0bdhfqAqbGjOSr"}, {"max": 1, "min": 40, "name": "23WETp1kjQlfTzAg"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 43, "role_flexing_second": 34}, "max_number": 26, "min_number": 43, "player_max_number": 68, "player_min_number": 94}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 36, "min": 88, "name": "9t2KYwO0IgtIvjPT"}, {"max": 26, "min": 38, "name": "Qu1sWBrnNnojJQQ6"}, {"max": 53, "min": 0, "name": "wYIrTAZ6fYm9aIWr"}], [{"max": 12, "min": 26, "name": "sW9lcpps2hZg9vZx"}, {"max": 59, "min": 55, "name": "wOpaYcwOubVZOTyu"}, {"max": 74, "min": 83, "name": "4iUdBXIgjzehqs4S"}], [{"max": 14, "min": 93, "name": "mXiSTKchs6PJKorK"}, {"max": 79, "min": 24, "name": "26vAJxDH7VWMiZYW"}, {"max": 72, "min": 50, "name": "M1ZLr6m1YvuLVG8P"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 78, "role_flexing_second": 61}, "duration": 98, "max_number": 48, "min_number": 8, "player_max_number": 22, "player_min_number": 40}, {"combination": {"alliances": [[{"max": 8, "min": 6, "name": "gs3yApGu5E7CRGdg"}, {"max": 42, "min": 98, "name": "SuB5bHGcMtOz0qMq"}, {"max": 2, "min": 77, "name": "xHOH2CYhRUhqgYHc"}], [{"max": 33, "min": 8, "name": "n6OlzKBtg3HERavY"}, {"max": 10, "min": 99, "name": "2Oi1pzuIMaXlwMea"}, {"max": 75, "min": 70, "name": "QvMJ7qwGeDRxP89u"}], [{"max": 50, "min": 2, "name": "xpL11zXJgRw5tQTD"}, {"max": 96, "min": 63, "name": "QB11WSYSvxGcL0rm"}, {"max": 30, "min": 23, "name": "VhqVXPu3C3pRGlU8"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 22, "role_flexing_second": 85}, "duration": 61, "max_number": 75, "min_number": 4, "player_max_number": 86, "player_min_number": 24}, {"combination": {"alliances": [[{"max": 9, "min": 53, "name": "8z4F1dn1VglVKDOW"}, {"max": 20, "min": 22, "name": "rpYbGAKqLcttjcWm"}, {"max": 41, "min": 21, "name": "zeFBC70CZvxIAcrF"}], [{"max": 40, "min": 23, "name": "6Oo0CydCAIjRMZGm"}, {"max": 60, "min": 98, "name": "GibEQJuDtnoxs9Su"}, {"max": 66, "min": 4, "name": "Z2mDBDs1NEt0cAHF"}], [{"max": 84, "min": 95, "name": "yRDyFo6EHomwUkLv"}, {"max": 68, "min": 54, "name": "tLcmBUVns9NmXpGk"}, {"max": 3, "min": 16, "name": "YlFD0qv8kxuXNSep"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 27, "role_flexing_second": 50}, "duration": 29, "max_number": 45, "min_number": 76, "player_max_number": 63, "player_min_number": 62}], "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 53, "flex_flat_step_range": 17, "flex_immunity_count": 49, "flex_range_max": 64, "flex_rate_ms": 29, "flex_step_max": 87, "force_authority_match": true, "initial_step_range": 63, "mmr_max": 61, "mmr_mean": 43, "mmr_min": 92, "mmr_std_dev": 94, "override_mmr_data": false, "use_bucket_mmr": true, "use_flat_flex_step": false}, "flexing_rule": [{"attribute": "jajIQ8VM1y8KlxTh", "criteria": "4oVPAJUybiTL5Cqo", "duration": 73, "reference": 0.9204096449690581}, {"attribute": "6AceDEOPPMedTb1o", "criteria": "vwcr28nSIsdsAqbi", "duration": 66, "reference": 0.5591929613661724}, {"attribute": "THfBlD4725IGirP6", "criteria": "zY0tgUkynttbiNPk", "duration": 69, "reference": 0.223372103326822}], "match_options": {"options": [{"name": "wYdPn8X1BF3iIzQF", "type": "lTvDVAoX1l1RsWmj"}, {"name": "EJg8UMkmWEDLHuFL", "type": "oUIyPldwdNXIhN7k"}, {"name": "Xc7FSZmN0qBmJ8dD", "type": "2cqKaAnn2a96Oika"}]}, "matching_rule": [{"attribute": "l58lxGLUKfLCQbs7", "criteria": "D3x2CY1aEL2N5xGl", "reference": 0.8431277012514378}, {"attribute": "hC0Jjk65vLL9bFKo", "criteria": "o4q1pGRzbUn8Qka9", "reference": 0.09830781873862449}, {"attribute": "ocdrKVZ3u4qL44d3", "criteria": "75FJwkGRA9VVzlwF", "reference": 0.07994273503108829}], "rebalance_enable": false, "sub_game_modes": {"1y1kE5UGsOl9l5FI": {"alliance": {"combination": {"alliances": [[{"max": 35, "min": 95, "name": "mXQHoSCXB5PulBdL"}, {"max": 43, "min": 69, "name": "5nZjpax7vspPEeIu"}, {"max": 51, "min": 24, "name": "J0c6s3Zf0zELm8Cg"}], [{"max": 91, "min": 92, "name": "F2spevQ5YYoMp2b0"}, {"max": 38, "min": 72, "name": "AcYYWunvpvuRQlb9"}, {"max": 53, "min": 24, "name": "JC3BavEFRbzSmh0B"}], [{"max": 55, "min": 32, "name": "s8VtRfYsHsKZ7ViP"}, {"max": 16, "min": 32, "name": "gdUQsw14rOJOzHPJ"}, {"max": 75, "min": 84, "name": "xNR8zqeT6ohCNZqx"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 8, "role_flexing_second": 18}, "max_number": 73, "min_number": 33, "player_max_number": 27, "player_min_number": 46}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 15, "min": 54, "name": "sfY5csNLTG4y97fT"}, {"max": 29, "min": 39, "name": "xoKyMsRislrpZdtz"}, {"max": 69, "min": 37, "name": "GQVxsU04Bhv9EYJ3"}], [{"max": 99, "min": 13, "name": "F3EbxdMnW3DDRn9V"}, {"max": 78, "min": 16, "name": "t6NsKFtZU7hB6nrU"}, {"max": 24, "min": 80, "name": "FQ4IQZBelUoc96mM"}], [{"max": 45, "min": 90, "name": "c4D9ahBqTxfYFcXo"}, {"max": 52, "min": 76, "name": "UWJhW8xF2Lrywe78"}, {"max": 90, "min": 21, "name": "dq8OYwOKchsmOlst"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 68, "role_flexing_second": 38}, "duration": 7, "max_number": 30, "min_number": 61, "player_max_number": 24, "player_min_number": 4}, {"combination": {"alliances": [[{"max": 15, "min": 18, "name": "rEoPZh0QHn4YTE64"}, {"max": 87, "min": 84, "name": "JkDf40nfjviAAJOy"}, {"max": 13, "min": 83, "name": "FykWaTjjMSDvjTCA"}], [{"max": 83, "min": 76, "name": "cci56ShFaG46NWfY"}, {"max": 53, "min": 94, "name": "gz6syFEnYtAtnb0Y"}, {"max": 74, "min": 45, "name": "rSRRo25KjYbhWyky"}], [{"max": 37, "min": 98, "name": "adXjsahxk1jKGJdi"}, {"max": 39, "min": 42, "name": "XZIG5hpA7RO8INKY"}, {"max": 11, "min": 85, "name": "wgQLNg2EIGnECk06"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 55, "role_flexing_second": 12}, "duration": 32, "max_number": 65, "min_number": 84, "player_max_number": 51, "player_min_number": 15}, {"combination": {"alliances": [[{"max": 14, "min": 94, "name": "Y9w11MkTNx9l5WxW"}, {"max": 20, "min": 57, "name": "PRl8DLBZrV40y4th"}, {"max": 70, "min": 40, "name": "WGIV67iDQYcDbhUq"}], [{"max": 76, "min": 37, "name": "Wb3D5imrmW3Mj0Kz"}, {"max": 45, "min": 34, "name": "eUzk9v1DhEyWSzWq"}, {"max": 80, "min": 18, "name": "aZWXm6voZmXOt7SJ"}], [{"max": 96, "min": 49, "name": "xcOXsDwDuxNIuIu6"}, {"max": 69, "min": 30, "name": "rooRXhWoxcBdyDkX"}, {"max": 18, "min": 42, "name": "89pQBXa4SBWdQfab"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 10, "role_flexing_second": 63}, "duration": 55, "max_number": 49, "min_number": 98, "player_max_number": 34, "player_min_number": 59}], "name": "LjqRlD8sACKPSN9O"}, "nyoJGxnJM2ukH70p": {"alliance": {"combination": {"alliances": [[{"max": 24, "min": 84, "name": "ds93ladCmPOmQH27"}, {"max": 71, "min": 77, "name": "AguiJIx3fNwxCenX"}, {"max": 28, "min": 57, "name": "3e4wTcrdKhdYpHTH"}], [{"max": 85, "min": 27, "name": "r61JrlklE8d6iVfn"}, {"max": 68, "min": 7, "name": "FeA4ccwXaBshjS8V"}, {"max": 99, "min": 13, "name": "0QTwopkibMNa7vy7"}], [{"max": 40, "min": 1, "name": "k2CfYmL73b673ziA"}, {"max": 9, "min": 95, "name": "aAiwFgkvAh7enOZn"}, {"max": 17, "min": 62, "name": "iL3vfk9rEcK9GUo9"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 51, "role_flexing_second": 51}, "max_number": 61, "min_number": 8, "player_max_number": 21, "player_min_number": 35}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 39, "min": 75, "name": "sNLVYG2LPtHOgBJr"}, {"max": 59, "min": 7, "name": "bPCc3KknCS1uBCmu"}, {"max": 80, "min": 37, "name": "HBwMGrFhg5bFHQwa"}], [{"max": 5, "min": 10, "name": "wRODvCkCpLzhZOTJ"}, {"max": 35, "min": 18, "name": "DDt7IhzClpbTiZdu"}, {"max": 84, "min": 94, "name": "qrsz6Gf1ZDEwFy4x"}], [{"max": 26, "min": 2, "name": "AEBj0QHn7dLwz5dJ"}, {"max": 49, "min": 17, "name": "uzgDxWsjlLkKW1n5"}, {"max": 6, "min": 84, "name": "PgQLfMt51rY2Dcpt"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 60, "role_flexing_second": 14}, "duration": 11, "max_number": 49, "min_number": 34, "player_max_number": 69, "player_min_number": 12}, {"combination": {"alliances": [[{"max": 95, "min": 83, "name": "0jsQjizqHOvhr7k5"}, {"max": 72, "min": 36, "name": "hcFcyBSibLXXxDIH"}, {"max": 7, "min": 39, "name": "FQv1X5tuld4pZo8K"}], [{"max": 16, "min": 52, "name": "sMY4xSp8e1a3LiyJ"}, {"max": 18, "min": 10, "name": "UneWmzuHOmh35gB8"}, {"max": 95, "min": 19, "name": "rovW1VMINASTPMdp"}], [{"max": 30, "min": 86, "name": "cTw7RuBg0QXUhKg1"}, {"max": 49, "min": 99, "name": "e8sSQEiImgOAIpvL"}, {"max": 1, "min": 97, "name": "zO26ec3JE81ksKNa"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 64, "role_flexing_second": 14}, "duration": 72, "max_number": 55, "min_number": 35, "player_max_number": 6, "player_min_number": 32}, {"combination": {"alliances": [[{"max": 24, "min": 94, "name": "ahqtz5tCKEBsTMUQ"}, {"max": 86, "min": 81, "name": "VbHxjUigdRYvZzcR"}, {"max": 78, "min": 51, "name": "xHaeQzsTIgJEUc7F"}], [{"max": 3, "min": 84, "name": "gYHCRT6AwxKjJEgr"}, {"max": 92, "min": 7, "name": "Obp6sGLXAJA6pIkU"}, {"max": 92, "min": 53, "name": "0KJLe00lci6Mt9XO"}], [{"max": 20, "min": 0, "name": "XQOZ6Ccx3vZ8hOw4"}, {"max": 76, "min": 11, "name": "lc0iKTj3rGR0RhKa"}, {"max": 64, "min": 62, "name": "F7DinQRLOVo8H94j"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 93, "role_flexing_second": 20}, "duration": 27, "max_number": 5, "min_number": 81, "player_max_number": 27, "player_min_number": 47}], "name": "VeilIxwGhVpeOBJ6"}, "jtV683Gf0DyS4Kcn": {"alliance": {"combination": {"alliances": [[{"max": 27, "min": 21, "name": "X2AxEFgf1dFX0FMf"}, {"max": 13, "min": 13, "name": "QvDH1luITZnY428x"}, {"max": 63, "min": 21, "name": "U5CTRcbGx5S5gUjd"}], [{"max": 73, "min": 94, "name": "dKNbKNkfQkOn68aF"}, {"max": 3, "min": 11, "name": "2FxjKC9mqXiBPYHW"}, {"max": 46, "min": 71, "name": "8rStBCUiVRz733KN"}], [{"max": 49, "min": 23, "name": "CrT4uXvj6Tgex8dA"}, {"max": 74, "min": 70, "name": "dLFEWZ4tK3DXIRvm"}, {"max": 4, "min": 56, "name": "m0pMEVqgrGqGugXm"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 58, "role_flexing_second": 23}, "max_number": 90, "min_number": 55, "player_max_number": 69, "player_min_number": 84}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 42, "min": 63, "name": "1fNdsduvG2PbjHSO"}, {"max": 32, "min": 0, "name": "eVUlSZURoDl7zliD"}, {"max": 44, "min": 94, "name": "JWQllgVf4Aa8jwxn"}], [{"max": 14, "min": 25, "name": "iAGar9c3Xabukk2N"}, {"max": 78, "min": 28, "name": "6KHDl2w6Vfn1FRNl"}, {"max": 88, "min": 12, "name": "Ig1zLe4TH1aJIiR8"}], [{"max": 80, "min": 25, "name": "pQX4GI57ni34X4A9"}, {"max": 49, "min": 63, "name": "W47D0FalVw1F4zcF"}, {"max": 33, "min": 88, "name": "1oRwj7JvxoHCG9qi"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 31, "role_flexing_second": 85}, "duration": 78, "max_number": 40, "min_number": 28, "player_max_number": 82, "player_min_number": 18}, {"combination": {"alliances": [[{"max": 87, "min": 100, "name": "nEZG2t1VTRhERv37"}, {"max": 65, "min": 27, "name": "2a1UQQ0ZPXiu8AiX"}, {"max": 2, "min": 100, "name": "e97r0Lo82AXawlAg"}], [{"max": 56, "min": 2, "name": "bj6d9swsp2XHdqtO"}, {"max": 56, "min": 85, "name": "sWwRMRxa3KRbMbf3"}, {"max": 0, "min": 33, "name": "eacHZZrGTyO1Ce8d"}], [{"max": 74, "min": 100, "name": "A6T1cbPnyeOVdoLU"}, {"max": 86, "min": 36, "name": "VWTrr935QmluSWak"}, {"max": 48, "min": 39, "name": "JdijQQTrAlWuwQYN"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 9, "role_flexing_second": 30}, "duration": 96, "max_number": 32, "min_number": 72, "player_max_number": 49, "player_min_number": 4}, {"combination": {"alliances": [[{"max": 12, "min": 75, "name": "xL9d946FgJZpf1Nv"}, {"max": 3, "min": 28, "name": "8qtBioG7orq9PIBo"}, {"max": 42, "min": 44, "name": "vLqNwKyFLBSF3UBP"}], [{"max": 99, "min": 79, "name": "ce3INRZoMyFNbwVP"}, {"max": 10, "min": 50, "name": "gVpPzTyeMPgyJenO"}, {"max": 74, "min": 97, "name": "ax60C0NHo55LPBMG"}], [{"max": 7, "min": 64, "name": "uQqJyaJG6DaxmKj3"}, {"max": 6, "min": 18, "name": "SMOIHstv8fMtNHpQ"}, {"max": 94, "min": 25, "name": "XCDHTEzgZcrWVco0"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 58, "role_flexing_second": 31}, "duration": 99, "max_number": 35, "min_number": 65, "player_max_number": 57, "player_min_number": 9}], "name": "feVqIuauZEoq8PpD"}}, "use_newest_ticket_for_flexing": true}, "session_queue_timeout_seconds": 97, "social_matchmaking": false, "ticket_observability_enable": false, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'TYHHAY3ac8FkpEtS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'kNsaHYyJZVLCG1FI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "BkVb2jZslYEOdSPk", "players": [{"results": [{"attribute": "Hiep0J9aBiZhlblU", "value": 0.4625523829065663}, {"attribute": "qZ9qhZIOkwlqDK22", "value": 0.3853206280441245}, {"attribute": "aujMhfrcQZosh1pG", "value": 0.09434728579630614}], "user_id": "tm8IWx7kiVYTJQTs"}, {"results": [{"attribute": "NePFrDxM6E6WLWPK", "value": 0.6816766714383095}, {"attribute": "3X2zDtoo9QIpLyWy", "value": 0.03586109418941141}, {"attribute": "Nn9ziNVIbft3LEVd", "value": 0.9429656168303656}], "user_id": "MCSs1iwBdp2pngZD"}, {"results": [{"attribute": "dZTcfA9Fb7O7FJBK", "value": 0.21432859394065162}, {"attribute": "1BaZkImngY70Immn", "value": 0.4423210320046338}, {"attribute": "fDf21eKca0upSXt8", "value": 0.5317060903911216}], "user_id": "EnrmgVAFhGbUt2uj"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "8z2YYtNK582w5KVG"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "4jMUuhe3kOZF9s6v", "client_version": "5mjvpuRkDvMEZQ9J", "deployment": "2IQ3mP5DmESWaeBN", "error_code": 44, "error_message": "WaZxOrANBllv01TQ", "game_mode": "WwwX8oDOBe1Huuxx", "is_mock": "xCb2v3x3zWJYgP1c", "joinable": false, "match_id": "xiQ35gGSJD5FgKng", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 70, "party_attributes": {"D2zKTkANgLoxmbvz": {}, "le1qBFTKVp0lZ8K8": {}, "EkarH6c9goudC059": {}}, "party_id": "sYeD1ObpdYX98Ech", "party_members": [{"extra_attributes": {"2xiO61c18hi4gzMp": {}, "6qmbGlytaTkcQMBu": {}, "zLJdZPX5JXhRN93g": {}}, "user_id": "5tAhjBqg9RJMD5i0"}, {"extra_attributes": {"iHGOh4fObgzBabRW": {}, "dsT02y0Y1vXU5VCM": {}, "oZih0MzpXyn6Q3VJ": {}}, "user_id": "zY5O8NkWpj81ZMMZ"}, {"extra_attributes": {"wwqD6RSp9OS0Qzpl": {}, "DAHh7mXGKBgCfEbw": {}, "eaPJVU2phK09QkzZ": {}}, "user_id": "CV5FaWTwjhQTtajj"}], "ticket_created_at": 62, "ticket_id": "eCaC4KI9xSkCICfb"}, {"first_ticket_created_at": 75, "party_attributes": {"de3Enp78PU5JyzpU": {}, "mzh7CA0rbhQTJQt2": {}, "I3AlzVhtpMiIPCiQ": {}}, "party_id": "FoCLaco0E4VGWoGM", "party_members": [{"extra_attributes": {"YyQtDJNcYl6AWJdm": {}, "yfNiEZX4mU8zG1aS": {}, "lSu6XRChCfexvuvX": {}}, "user_id": "Jdam5z655sTHEBX1"}, {"extra_attributes": {"HXrJpZTC0PrNdksT": {}, "ELn7n9unt2xTa9uM": {}, "SkA5oAc6cahFaJjt": {}}, "user_id": "1449uJt6vwgVHKjM"}, {"extra_attributes": {"NPJaZW1BHAKvJGdr": {}, "K8VmPTKj7fhIBxp5": {}, "mtFQbFghUabb3NUd": {}}, "user_id": "WT47fz4TRe5wrSkY"}], "ticket_created_at": 87, "ticket_id": "yGH9LCiZZNVxXtn7"}, {"first_ticket_created_at": 41, "party_attributes": {"n29p4V1FdbOo4ksF": {}, "d8TA4fp069a5JKPZ": {}, "U2MxOoTsRst1sdc0": {}}, "party_id": "zZzOLQpSY3QnKjgH", "party_members": [{"extra_attributes": {"tbSIWPYjri5wXHGj": {}, "niJGEo5PJQZUHZkK": {}, "keADjwcnst1agJD8": {}}, "user_id": "kcESY8N5IqX6FNEn"}, {"extra_attributes": {"eiS3pc2NiVXDiIY9": {}, "e9PsPE9qAUx5SJUD": {}, "NlBwjMDhWCwqLDVM": {}}, "user_id": "MzDjkNjZUdPWizPM"}, {"extra_attributes": {"yNvWYXvb210j2W1R": {}, "OLyd2o92mIkwoAVe": {}, "JwyMGF4QDVlg8kFm": {}}, "user_id": "KsMHG5n2mD47Bvwz"}], "ticket_created_at": 68, "ticket_id": "rM0I18KhUhKJDitq"}]}, {"matching_parties": [{"first_ticket_created_at": 82, "party_attributes": {"4UNhxTZ1MuduY3jl": {}, "AGBhAISgwQOtrpfe": {}, "it8niSn5Di3z0TON": {}}, "party_id": "ipH4BtQJ2LqbziOo", "party_members": [{"extra_attributes": {"T8MFPQW9hRxHAI46": {}, "7f23o2Pd6muGdywr": {}, "doqUKUOr10jPGYqL": {}}, "user_id": "ie4Nd2nZxeDTXKPQ"}, {"extra_attributes": {"HPQqKSdx6WROf9pT": {}, "iefsS8ct3sDvBzRj": {}, "ly6HuakyxZcEkO8h": {}}, "user_id": "39csBMn9reW92Ub2"}, {"extra_attributes": {"VfqfgcYrbZE0Pjcu": {}, "ct72k5Ge0JyfPYRn": {}, "iWIqDDWkD2mpOJt8": {}}, "user_id": "Fj8A5K0HzNgrt8Lp"}], "ticket_created_at": 45, "ticket_id": "1BvbBGf1rtLIALzr"}, {"first_ticket_created_at": 97, "party_attributes": {"91faAdbB4OYsJwmU": {}, "DOzDh1BRjpBpMuXL": {}, "J1V1Qc6rNc2brERZ": {}}, "party_id": "abGTvqbndV3eYI51", "party_members": [{"extra_attributes": {"H6PtmdtURMX8lP9j": {}, "EOLtrnMBfpKaP7gD": {}, "QHXHbRCfsx7sXXpN": {}}, "user_id": "ixZMSb7rgQaZoomY"}, {"extra_attributes": {"sirWlauxLH87ZQpS": {}, "Ul9Pp2wrfjtSJfkC": {}, "fKRZUnaro78C2oLN": {}}, "user_id": "WkI6Rv1Q0uhZRPF7"}, {"extra_attributes": {"9FOB01kLJvf6vBYA": {}, "X5dyMRSGpFWW4dgi": {}, "Im54qC1hfEYT6qnO": {}}, "user_id": "eGbwodOvL4YWG9Ue"}], "ticket_created_at": 81, "ticket_id": "B0CQldp4msR0cDVy"}, {"first_ticket_created_at": 6, "party_attributes": {"kz170FgF54UG77HX": {}, "x5NI8SHoWibCd3Wk": {}, "Zi3vV1IDPICy2PyM": {}}, "party_id": "YsvTk0jFnXZlWdn5", "party_members": [{"extra_attributes": {"H9FwhkMlRjWa8xP2": {}, "RrXAOfs1sqWdsBYM": {}, "McbN2iI75kE9dGJZ": {}}, "user_id": "YgUrDqxLuMdTKWzW"}, {"extra_attributes": {"hhf6MSsUiliwv5TO": {}, "b7uScpzC4R8rCrfz": {}, "aq9RiV1Y2VdZ1osO": {}}, "user_id": "ZkKH0ZVBMLFjcdTg"}, {"extra_attributes": {"FGXDk0iCrVICmTkN": {}, "hiY67JpVYIntXHSZ": {}, "kJy3CpMwvtIdUA72": {}}, "user_id": "csJU4g9eUyiuxc99"}], "ticket_created_at": 97, "ticket_id": "dWAlvp1SWLbiP3PL"}]}, {"matching_parties": [{"first_ticket_created_at": 63, "party_attributes": {"7FNrmvuHiNfC6GCF": {}, "t1Jec0HToni6D8DX": {}, "3NyU8Fs2ce2qutH1": {}}, "party_id": "AW2xXAKPAyEjEBUO", "party_members": [{"extra_attributes": {"P4zAELM1utKbalfE": {}, "qDltb0mGCOOM6b02": {}, "bJBfVHoPhKWiJwCn": {}}, "user_id": "8r0T07AQ2577XVty"}, {"extra_attributes": {"ZjS3KF81zEJ8yjq4": {}, "dp1PfC46qaHgpWs0": {}, "StDqBWdguHDI7OPL": {}}, "user_id": "ltfpJyK7Vtd0xJ7T"}, {"extra_attributes": {"m6CTgnhKJ16QCenr": {}, "8G3xHxlkKv4sZNMi": {}, "AlKd9T4aEchntLze": {}}, "user_id": "Rbbf7KtoI1KA44QP"}], "ticket_created_at": 58, "ticket_id": "6UPO7C4j1RnMRKAd"}, {"first_ticket_created_at": 10, "party_attributes": {"IUiGe7IjnyhLYA6Z": {}, "iRq0iUg0biFOoddU": {}, "hRXPJUHYgrKUg6zn": {}}, "party_id": "KFAhUZWuQpITSLLY", "party_members": [{"extra_attributes": {"sQyT8MmVLF3rNyx7": {}, "kQTQgHfxJ4pT8hFV": {}, "E0boyb8FzY06QXPq": {}}, "user_id": "bNUc0L4gu1dhOUCg"}, {"extra_attributes": {"EnkTZAqrS7m4huyR": {}, "534S7a7tz4i8va7K": {}, "ngQQx8LbR04QmU9M": {}}, "user_id": "CaMk07nOFbUv1FtV"}, {"extra_attributes": {"E34t0i0tkrbSTx08": {}, "JT5PKrGkcUOaihSA": {}, "fwcofFSgmUw4KKSr": {}}, "user_id": "if2AY8cNDAenxpNz"}], "ticket_created_at": 27, "ticket_id": "WiZhMTfPZCRhBK49"}, {"first_ticket_created_at": 25, "party_attributes": {"k8kg4xK52U0VoBbB": {}, "5bq8NYF8ocFE0acU": {}, "wKcSBJuPuoPj1LCw": {}}, "party_id": "1x6rQwkWN5TZF5Pu", "party_members": [{"extra_attributes": {"awvlUE7bEJwrdnuJ": {}, "FuqgRz8N4Ie6qxvN": {}, "joliz0wZEXacfV1F": {}}, "user_id": "31FnSax7hO21hpDg"}, {"extra_attributes": {"3b2Ba5Q8aNMzKo8U": {}, "Ep1kYDPArQGu9sV1": {}, "fOyJBKCV5lvtvwkO": {}}, "user_id": "pHrg5k4q5gH79ohi"}, {"extra_attributes": {"iQSOO9Ib6NZztHhJ": {}, "woWZsZwhSouYcyzR": {}, "vxdIAmgrsKPVCqHU": {}}, "user_id": "iSDq7xr8xTqSMf9b"}], "ticket_created_at": 57, "ticket_id": "uceoQbtxTeL5eNFB"}]}], "namespace": "s3HK1vqFeziCMvFN", "party_attributes": {"RKofWXV8CwH348QS": {}, "wK05owRgzCnBoNHp": {}, "RlXxTtgCvgRJhaGT": {}}, "party_id": "Ti2Bqz3HRwSY6eUL", "queued_at": 10, "region": "TtbDAoNTs0wgPMZC", "server_name": "NFDTRiXjRxE67cGZ", "status": "aWZwo3w5wqbMQQtS", "ticket_id": "zGvNUvLp4s5GvguA", "updated_at": "1992-07-20T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "uQ714vdHhmRjo8lp"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID '5AJW7BG4ycy0Pfli' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 17, "userID": "qiuvF0wljFRc1M4Q", "weight": 0.6504152669633598}' \
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
    --matchIDs 'GIuWfqHhzxdGRSYC' \
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
    --strategy 'bYFe9QRpv68Ejpjw' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'eRL5UPPVJZteXA4F' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'X5NmVc4jWFztjO9w' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "IJmoZP812v1IdLjO", "description": "GLwJNYjymeGIu4tB", "findMatchTimeoutSeconds": 92, "joinable": false, "max_delay_ms": 83, "region_expansion_range_ms": 74, "region_expansion_rate_ms": 81, "region_latency_initial_range_ms": 2, "region_latency_max_ms": 49, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 87, "min": 5, "name": "7ePKejff7gGrMWDq"}, {"max": 16, "min": 15, "name": "EG14QlJ0LLmQxQZf"}, {"max": 84, "min": 85, "name": "w6xdvVEbAf9UyUjJ"}], [{"max": 99, "min": 96, "name": "JzkXGfkI35jPWszp"}, {"max": 58, "min": 51, "name": "gjqjGhOmALd9exJo"}, {"max": 90, "min": 81, "name": "15HCFkGdp4XkECpH"}], [{"max": 22, "min": 6, "name": "cFZA8prSvLoXNkwQ"}, {"max": 38, "min": 25, "name": "VGBPUlpFRM8a8O9K"}, {"max": 44, "min": 51, "name": "jBfLPiYQXLhTNGe1"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 21, "role_flexing_second": 7}, "maxNumber": 8, "minNumber": 32, "playerMaxNumber": 56, "playerMinNumber": 59}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 5, "min": 37, "name": "866zYOYqdahqo2Lo"}, {"max": 85, "min": 48, "name": "xUOsS5LmdkK9K62R"}, {"max": 64, "min": 22, "name": "KXAmQyZmxMwENlLe"}], [{"max": 50, "min": 17, "name": "T5g6SLYW1XFr5Yaj"}, {"max": 30, "min": 91, "name": "6CvsRBSGL5gk38u3"}, {"max": 33, "min": 100, "name": "BZIg1CHS54raY4ip"}], [{"max": 52, "min": 1, "name": "Y5XvdJDJu6fm9c6m"}, {"max": 42, "min": 2, "name": "ulz7MQpEEw1wmKzc"}, {"max": 59, "min": 1, "name": "cQQZXUp8irrfoxcQ"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 18, "role_flexing_second": 36}, "duration": 77, "max_number": 1, "min_number": 44, "player_max_number": 89, "player_min_number": 17}, {"combination": {"alliances": [[{"max": 62, "min": 39, "name": "M5NlotSjl6xj8S9Z"}, {"max": 54, "min": 91, "name": "DSN7vpbOWbBx6Bez"}, {"max": 59, "min": 45, "name": "Vr1rnSgGFfTriJC2"}], [{"max": 65, "min": 86, "name": "gNHYJmK9TPejFDwS"}, {"max": 57, "min": 3, "name": "wgOlX8oLPZKuSS94"}, {"max": 53, "min": 10, "name": "xQMGZaUOtfnv5JLl"}], [{"max": 31, "min": 65, "name": "qaAFqQ6xQWx3u7xc"}, {"max": 28, "min": 10, "name": "3Y6LMGIX8JJkwcQq"}, {"max": 17, "min": 26, "name": "zKdh3UlZc5d3gXii"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 86, "role_flexing_second": 18}, "duration": 50, "max_number": 32, "min_number": 76, "player_max_number": 24, "player_min_number": 10}, {"combination": {"alliances": [[{"max": 44, "min": 87, "name": "Zm9JsvP4tuBwOf2x"}, {"max": 22, "min": 4, "name": "Z4PYjVyVklFW8c7Q"}, {"max": 35, "min": 72, "name": "IRkEY9mMRyeOgVqv"}], [{"max": 29, "min": 35, "name": "c1NurwByauPXogoq"}, {"max": 0, "min": 75, "name": "dbtSak58T4mPDNRX"}, {"max": 61, "min": 90, "name": "75VYUu3to5mJrd6v"}], [{"max": 68, "min": 94, "name": "7NPCouroO3dIsJVc"}, {"max": 80, "min": 77, "name": "PPKmAn4j10ziNWnm"}, {"max": 70, "min": 70, "name": "RDExTGtXZJk0LAeE"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 67, "role_flexing_second": 56}, "duration": 38, "max_number": 51, "min_number": 24, "player_max_number": 44, "player_min_number": 30}], "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 55, "flex_flat_step_range": 10, "flex_immunity_count": 97, "flex_range_max": 22, "flex_rate_ms": 65, "flex_step_max": 56, "force_authority_match": false, "initial_step_range": 83, "mmr_max": 7, "mmr_mean": 84, "mmr_min": 82, "mmr_std_dev": 70, "override_mmr_data": false, "use_bucket_mmr": false, "use_flat_flex_step": true}, "flexingRules": [{"attribute": "NM3WWgZLPt8MRI1m", "criteria": "eIcfagzHYE3sRLLx", "duration": 74, "reference": 0.8271886528090766}, {"attribute": "hX7MoPLPvjU9xC7l", "criteria": "GLp5GFg9TxruTkA0", "duration": 75, "reference": 0.9735527348561156}, {"attribute": "fqziw6m8UAu5cFP8", "criteria": "c3JIPw3xleoiwaiM", "duration": 0, "reference": 0.4189361434171577}], "match_options": {"options": [{"name": "Czw4gOI9ZwZOHbDe", "type": "P1a3WNvGAYxz0HUF"}, {"name": "E8JooIXj0XeDJQ36", "type": "1BOJ0ld5NXo3VKE2"}, {"name": "3aSjKUEt6GwubsAW", "type": "UJozXlRKP59NrarG"}]}, "matchingRules": [{"attribute": "rXug2vzXH7pwXO9n", "criteria": "mic2CFo3U2lvL3ha", "reference": 0.34094751607543217}, {"attribute": "bqxJZLhtYla0nYHy", "criteria": "0Cb92W7tFeG7Ze8z", "reference": 0.02011027910746399}, {"attribute": "WpVoOVR1MEQbglxW", "criteria": "6fJsiep1nOcRHS9P", "reference": 0.6927358437262443}], "sub_game_modes": {}, "use_newest_ticket_for_flexing": true}, "sessionQueueTimeoutSeconds": 45, "socialMatchmaking": true, "ticket_observability_enable": true, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName 'nKEzC3dpx9JDJNwW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName '1RXOaOzSqj2CPWfX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName 'UJnnM4XMSY26vlek' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 18}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName 'uek9bQgJWIPLCOc4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName 'LNsifRL50GFAHCnt' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "yuVfUfuCrigveVje", "count": 0, "mmrMax": 0.2473457029900077, "mmrMean": 0.6932983018856224, "mmrMin": 0.7805386358379117, "mmrStdDev": 0.695176446886693}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName 'cisw5sRHDdkGF0Bx' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 64, "party_attributes": {"p9NHBGa6Cmh4LLzU": {}, "fFCDwyh31bRi8YBs": {}, "SCuRr9HID1mWDJ2L": {}}, "party_id": "SbJyKlj6hIaSqUIr", "party_members": [{"extra_attributes": {"HtMMQDNfPRkx07h9": {}, "AUmXA79NT77YF5Jh": {}, "c59vJTvb34Cn3Ts2": {}}, "user_id": "hF4JWozDYeWqRUW5"}, {"extra_attributes": {"XT8f0a89qIMTterr": {}, "qAkFzSza7RSIojXP": {}, "9p5aIlKndlQ2PPZh": {}}, "user_id": "MEAEbjKX2OTGeRGr"}, {"extra_attributes": {"i8E390YwDyxbublG": {}, "yF7M0jGxoy9h5NgO": {}, "qtJuWi1BSDe1hUys": {}}, "user_id": "9akSEL1iUxqkkdEM"}], "ticket_created_at": 50, "ticket_id": "20mbbElLbXidonHY"}, {"first_ticket_created_at": 11, "party_attributes": {"vqAyF2J8ZGMazuNt": {}, "fTFB6QZyKKndEy2I": {}, "SpVN48awya26tK87": {}}, "party_id": "4Fq6VQEqZOboKxhQ", "party_members": [{"extra_attributes": {"gx6qMijMIN26b53v": {}, "3sHnfVT7YODUBoYD": {}, "R3BbVD7adLeqaL9K": {}}, "user_id": "qVQZ9bbVu1PRHFqA"}, {"extra_attributes": {"Pvqb96cZbPtsy0cj": {}, "xkSuV9x0vbvPgkKX": {}, "MQqBWsfYepj7zq8q": {}}, "user_id": "Gmqv9N45zBQlmdT1"}, {"extra_attributes": {"MOEBEnDVmqp8u4li": {}, "na7EKEwYPYPbtH65": {}, "fg3elNIH7EZuCRlE": {}}, "user_id": "VLbCW7o66LVe3Tas"}], "ticket_created_at": 0, "ticket_id": "g0wGUbVLbirQCCvH"}, {"first_ticket_created_at": 6, "party_attributes": {"LeVrqTA7x21bPZzn": {}, "dLpHd5yiiaMRrrjh": {}, "0a3hohlYqpB46Hcw": {}}, "party_id": "sbvhEUwQcyuTn1fQ", "party_members": [{"extra_attributes": {"f6cTKXD5idUSEorN": {}, "5UWKZlkyfgwGzqlq": {}, "Dakl2PwdgFDX3u1l": {}}, "user_id": "vun7TqRnOm9Yk2JY"}, {"extra_attributes": {"daztkWPN2K7sD6Zt": {}, "ktgtXllkZjZfd6w9": {}, "MkJKiVEq5okXxhOb": {}}, "user_id": "Q7TSxyazMA1qPRLZ"}, {"extra_attributes": {"QZvMarTrOO04V7z8": {}, "VeGvRvbmSyroaXsO": {}, "yKGUbhHe7aQlix1K": {}}, "user_id": "aOvLrspOqQbRXrve"}], "ticket_created_at": 22, "ticket_id": "v7O2TmtTBZOWBJTR"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName 'fPyEuvtd5UWc5zO8' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 46}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'PtkpgAd7wkorFYMG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'ZmzmSFen3ZeK9XQ9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'fsk8yY4LkKxAtO71' \
    --matchID 'rLVH67MaUw9b7MCr' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["WcAhZ4Gk590VvObN", "OZGLhtvjYZjo9Yp6", "o5LDMNVynGGfaX09"], "party_id": "JF3hSdZPyOLXV6KD", "user_id": "IGFyXk8UiymKxZQj"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'FViLaNnf9MEmIUg2' \
    --matchID 'wieS4TYoFC7CBALI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'f8EyJhHiUQSNZFs7' \
    --matchID 'th1w5mnxPR5u4sWE' \
    --namespace $AB_NAMESPACE \
    --userID 'r2qQ05urJcJ9ibNk' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName 'L7hY3Ac9ykYBtJpv' \
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
    --channelName 'G29nlgpBIz3cuO4r' \
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