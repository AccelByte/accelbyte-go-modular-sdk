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
    --limit '72' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "fEUF5V5xXC40W0OW", "description": "tiIeAr8Wkug9iAwi", "find_match_timeout_seconds": 6, "game_mode": "jvWQPUJgZBDUSx2Z", "joinable": true, "max_delay_ms": 75, "region_expansion_range_ms": 41, "region_expansion_rate_ms": 44, "region_latency_initial_range_ms": 58, "region_latency_max_ms": 78, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 44, "min": 35, "name": "2neXBQkVx9wZVy6G"}, {"max": 12, "min": 21, "name": "ZriudMHsOx6spmys"}, {"max": 23, "min": 72, "name": "x25RskItDId5SZYV"}], [{"max": 45, "min": 65, "name": "ExCzolEwoRfMEbku"}, {"max": 68, "min": 80, "name": "zyUKMuNG2iialWwx"}, {"max": 31, "min": 87, "name": "CtXizCHi4XDZ3pbJ"}], [{"max": 67, "min": 69, "name": "TueRP9SiOJdOSbMx"}, {"max": 28, "min": 62, "name": "s1mFH16l578lNb5k"}, {"max": 10, "min": 39, "name": "vNpnJOPrghilYBMi"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 78, "role_flexing_second": 84}, "max_number": 94, "min_number": 0, "player_max_number": 31, "player_min_number": 59}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 10, "min": 16, "name": "sRxDTuqhDIBmUvNu"}, {"max": 26, "min": 64, "name": "ZG8kjvN8WOPMvaTC"}, {"max": 14, "min": 49, "name": "26Pb25mNm9ki4iBJ"}], [{"max": 81, "min": 75, "name": "2UVIGkTZbEWTrslk"}, {"max": 3, "min": 68, "name": "8scLCFtXkmAXP4yR"}, {"max": 48, "min": 87, "name": "VtPi0cziO2CVPjXk"}], [{"max": 17, "min": 58, "name": "MJPXlLvYsYdTcO8w"}, {"max": 51, "min": 25, "name": "OEl9maNUOljeilh7"}, {"max": 35, "min": 13, "name": "BJInytyyV3Gysmwj"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 32, "role_flexing_second": 47}, "duration": 19, "max_number": 54, "min_number": 79, "player_max_number": 27, "player_min_number": 78}, {"combination": {"alliances": [[{"max": 82, "min": 92, "name": "yakQ4wBqFneQQoxf"}, {"max": 49, "min": 35, "name": "IFF0jX5vUCzgG5rn"}, {"max": 34, "min": 18, "name": "vFVaN92sryYnPOJF"}], [{"max": 73, "min": 89, "name": "2wClCQyBGLRa6gIm"}, {"max": 15, "min": 8, "name": "iZA6Kr3aCUylZiyw"}, {"max": 4, "min": 70, "name": "CFgJAdTaymMPiAPF"}], [{"max": 84, "min": 53, "name": "ebqCMmxxSU1CYuhb"}, {"max": 50, "min": 26, "name": "XBIdulAt9uCi5zRn"}, {"max": 45, "min": 52, "name": "E4hpXRCQZfsHwmyT"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 82, "role_flexing_second": 27}, "duration": 97, "max_number": 85, "min_number": 67, "player_max_number": 32, "player_min_number": 82}, {"combination": {"alliances": [[{"max": 91, "min": 81, "name": "S77eY6yFXLUzLvY1"}, {"max": 16, "min": 3, "name": "FUhXImlL3Qyudyut"}, {"max": 2, "min": 16, "name": "Ehw5HHmK8lSwyfJh"}], [{"max": 19, "min": 64, "name": "HK7F0nkYL4iGrLoo"}, {"max": 78, "min": 20, "name": "CrBkagh3bydfYf6k"}, {"max": 17, "min": 30, "name": "m8MegRyxQmSuPFtq"}], [{"max": 9, "min": 12, "name": "2dcBxaULUBlyNKZS"}, {"max": 49, "min": 91, "name": "9LDD25x5V6jpKuUT"}, {"max": 72, "min": 20, "name": "1KvhToyEVUT9GD5q"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 63, "role_flexing_second": 3}, "duration": 97, "max_number": 1, "min_number": 24, "player_max_number": 39, "player_min_number": 55}], "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 2, "flex_flat_step_range": 42, "flex_immunity_count": 83, "flex_range_max": 48, "flex_rate_ms": 39, "flex_step_max": 72, "force_authority_match": true, "initial_step_range": 35, "mmr_max": 11, "mmr_mean": 64, "mmr_min": 47, "mmr_std_dev": 80, "override_mmr_data": false, "use_bucket_mmr": true, "use_flat_flex_step": true}, "flexing_rule": [{"attribute": "v0fMQM5ONIr4Mi4H", "criteria": "QcbE8kLyeaOoLG5y", "duration": 88, "reference": 0.2691319571888712}, {"attribute": "52KQfqZHXP0lWfZr", "criteria": "v9n4LCeiAFo30Uex", "duration": 45, "reference": 0.4134417130081597}, {"attribute": "eVDhyYriDbzFV07O", "criteria": "wSFZDSJUnd1w0AZd", "duration": 99, "reference": 0.9343906975382539}], "match_options": {"options": [{"name": "9uw49854HEbZFggG", "type": "pHVTr4ahVxGLibnQ"}, {"name": "esHuOpkbVXpFbfgp", "type": "5m1YfC354zu0U0Q8"}, {"name": "C0Cv9yvK2zSPJGsq", "type": "LNWwYE7bUF0Vi0UU"}]}, "matching_rule": [{"attribute": "NgHKzM7srICP2Ro2", "criteria": "NvenrvKWq7HBsORS", "reference": 0.860780198530674}, {"attribute": "0dGxCsbBOVFFFAwh", "criteria": "mZLgmcQfdicRKqtL", "reference": 0.8221025838090834}, {"attribute": "QSJ2BXI7G3yIUDBw", "criteria": "MRW0nTw5AwVHDdV6", "reference": 0.16383836899975068}], "rebalance_enable": true, "sub_game_modes": {"TwUfBMRkssP708lJ": {"alliance": {"combination": {"alliances": [[{"max": 13, "min": 75, "name": "8tnlBAO8mLSJLHOR"}, {"max": 32, "min": 26, "name": "dlzKEYO5iJ13Blv6"}, {"max": 63, "min": 58, "name": "wxAZNetN5z8Mn1Ou"}], [{"max": 80, "min": 66, "name": "dgyEXQsDI18Kykzb"}, {"max": 89, "min": 40, "name": "xRY5bFEjejaTqwOW"}, {"max": 94, "min": 63, "name": "TcZQ5Rr7NBTBfzrV"}], [{"max": 63, "min": 82, "name": "i6pBkSBCAkDX7dqz"}, {"max": 95, "min": 31, "name": "8Hjh7xSA44AgPrNA"}, {"max": 70, "min": 66, "name": "TqUskJSW8ZOGUwMV"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 75, "role_flexing_second": 63}, "max_number": 34, "min_number": 50, "player_max_number": 49, "player_min_number": 60}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 13, "min": 94, "name": "8hq4cqq7r3PmLsoA"}, {"max": 10, "min": 69, "name": "Go8EyOXBYQjTFDxy"}, {"max": 70, "min": 45, "name": "4M86dTreCdrVUs9P"}], [{"max": 20, "min": 90, "name": "wbezeKpX11aS8zIl"}, {"max": 56, "min": 47, "name": "gw4ORlHip8Nbbhnf"}, {"max": 21, "min": 50, "name": "PbKDslT1fupMW3EZ"}], [{"max": 34, "min": 74, "name": "7znjMggYSAVQqgvY"}, {"max": 90, "min": 29, "name": "FDqWtPPc4qT00sU6"}, {"max": 23, "min": 61, "name": "QDyr7SzTyPRyEd2x"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 97, "role_flexing_second": 98}, "duration": 67, "max_number": 40, "min_number": 36, "player_max_number": 87, "player_min_number": 92}, {"combination": {"alliances": [[{"max": 47, "min": 63, "name": "Q89bT77BYo6Vgbgq"}, {"max": 68, "min": 100, "name": "q6hWXejmP0Ol8B31"}, {"max": 84, "min": 86, "name": "2eKwdFkHKEjFVstz"}], [{"max": 91, "min": 43, "name": "34Js4BJaguzy6fS9"}, {"max": 8, "min": 89, "name": "piwHhstp7GNb3xgr"}, {"max": 74, "min": 23, "name": "fbTC9puC5F8yuiBb"}], [{"max": 21, "min": 32, "name": "76kRrrXezYjDI0Kt"}, {"max": 53, "min": 21, "name": "wZvfEJ1IEFlcLxM8"}, {"max": 5, "min": 96, "name": "PyGkrivxTAu6nEE5"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 37, "role_flexing_second": 91}, "duration": 16, "max_number": 65, "min_number": 100, "player_max_number": 67, "player_min_number": 28}, {"combination": {"alliances": [[{"max": 87, "min": 11, "name": "5HIlyLxrAFNt877D"}, {"max": 61, "min": 59, "name": "wmFzkR8lPqGxMIKd"}, {"max": 21, "min": 62, "name": "jBrwGRvielxHSTlQ"}], [{"max": 74, "min": 36, "name": "oZsd4Ns3Fxadxjy9"}, {"max": 49, "min": 8, "name": "LsLKliWxbbUMxlIR"}, {"max": 77, "min": 88, "name": "2ga8MNRSYaXSE0ta"}], [{"max": 3, "min": 67, "name": "70KEAXB2AgjNSHDL"}, {"max": 55, "min": 18, "name": "ROD2FEbXv1yAfEfZ"}, {"max": 12, "min": 64, "name": "h7W372No9htc5cWT"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 82, "role_flexing_second": 24}, "duration": 37, "max_number": 1, "min_number": 96, "player_max_number": 8, "player_min_number": 6}], "name": "VFus4P77tPvLFGxU"}, "WyCfpFjaAC4QBTb7": {"alliance": {"combination": {"alliances": [[{"max": 79, "min": 76, "name": "lgXyy67vV58eibep"}, {"max": 12, "min": 100, "name": "27s3IozM4rkmhleP"}, {"max": 50, "min": 31, "name": "ipdJAGUrypx5WU3N"}], [{"max": 91, "min": 43, "name": "9BNUJbg7vY8jq7e2"}, {"max": 75, "min": 26, "name": "88Rb6AUP5tRoySdw"}, {"max": 93, "min": 51, "name": "ccZ6CmsPvZY1NKfS"}], [{"max": 46, "min": 60, "name": "QLR7AglSFo7CkCfx"}, {"max": 93, "min": 66, "name": "h85L21YzGles5tOl"}, {"max": 78, "min": 33, "name": "vu2bwWUWVOPD6mN6"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 49, "role_flexing_second": 6}, "max_number": 45, "min_number": 71, "player_max_number": 23, "player_min_number": 14}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 19, "min": 75, "name": "bAZyovxzSyhhOLCJ"}, {"max": 25, "min": 91, "name": "Fxc3B6JMAFvmiYm7"}, {"max": 69, "min": 98, "name": "UCOs8YaIH0BlpcZw"}], [{"max": 74, "min": 40, "name": "y5KbMgBFWOkkSrnb"}, {"max": 73, "min": 75, "name": "aMX0tqDTT3mHPw0P"}, {"max": 22, "min": 55, "name": "iLr1dr9bVXr008st"}], [{"max": 88, "min": 29, "name": "LNM1lcFjDfVjsV33"}, {"max": 87, "min": 25, "name": "wI4cP0wjoUdacluP"}, {"max": 99, "min": 29, "name": "OXFE51gFPMQpbyCV"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 26, "role_flexing_second": 44}, "duration": 78, "max_number": 20, "min_number": 89, "player_max_number": 19, "player_min_number": 67}, {"combination": {"alliances": [[{"max": 61, "min": 27, "name": "JG9WSNoZYbi7O11C"}, {"max": 29, "min": 7, "name": "qssYoIm7DfRHZ4XS"}, {"max": 10, "min": 93, "name": "jKGX9l4RPbJXAzr8"}], [{"max": 15, "min": 57, "name": "Co04cLTQrDA9l88t"}, {"max": 6, "min": 45, "name": "nAGP6r9oziQBPFGt"}, {"max": 43, "min": 69, "name": "iNOXurkSEdlQd5TQ"}], [{"max": 63, "min": 75, "name": "UwdSCXt8AaH0Tb6T"}, {"max": 54, "min": 63, "name": "mQtoodMO4hEdXa9Y"}, {"max": 15, "min": 20, "name": "Vs7CvtpgZKuZpG4F"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 51, "role_flexing_second": 15}, "duration": 39, "max_number": 54, "min_number": 68, "player_max_number": 87, "player_min_number": 39}, {"combination": {"alliances": [[{"max": 100, "min": 39, "name": "DWxDQOwAeSoV9HYw"}, {"max": 31, "min": 54, "name": "nXbLSulhAVyDpxAr"}, {"max": 49, "min": 28, "name": "mtIP47l5dhFSHiCL"}], [{"max": 49, "min": 51, "name": "dU2S7eY6IRwzIDhb"}, {"max": 98, "min": 25, "name": "GyEGIiQtbmjVCsXl"}, {"max": 67, "min": 4, "name": "jH3w4twxB2PM2aWj"}], [{"max": 55, "min": 34, "name": "ZnvyH4XpxndJjd9u"}, {"max": 29, "min": 80, "name": "OqNOiqFcL9ZzgTGk"}, {"max": 50, "min": 45, "name": "BLIIe5q06sWqnupy"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 24, "role_flexing_second": 99}, "duration": 64, "max_number": 79, "min_number": 92, "player_max_number": 20, "player_min_number": 94}], "name": "wEtMOPMEqH7us678"}, "ROH4kLLuU0F3W3Qm": {"alliance": {"combination": {"alliances": [[{"max": 68, "min": 4, "name": "rUdvx60VXpyPfpwc"}, {"max": 22, "min": 93, "name": "ue0VvQwcjT2t4kpQ"}, {"max": 6, "min": 95, "name": "cTLH4UQ1MMxdAPAH"}], [{"max": 28, "min": 79, "name": "9sIuF3ZfSIZskONZ"}, {"max": 35, "min": 68, "name": "3tbLYBNGo11GNxGt"}, {"max": 78, "min": 67, "name": "ZNWcdkaz3ZQrbA1l"}], [{"max": 63, "min": 48, "name": "URrDRPkGn5RNFwzu"}, {"max": 17, "min": 45, "name": "lRWYPFnLKHp2ldid"}, {"max": 50, "min": 19, "name": "dpBL9mqT7WaeOVrK"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 56, "role_flexing_second": 2}, "max_number": 91, "min_number": 20, "player_max_number": 15, "player_min_number": 89}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 71, "min": 68, "name": "7nPcRWkmxX1tX88u"}, {"max": 25, "min": 99, "name": "jXChUkQTXNkPOos1"}, {"max": 69, "min": 16, "name": "9mgonPRBMFMzmjbr"}], [{"max": 41, "min": 39, "name": "O4N7aNE1j7zYHVmP"}, {"max": 37, "min": 41, "name": "QuoWokYBLnL9fMG1"}, {"max": 91, "min": 80, "name": "MYI8o5SlV78c1hwS"}], [{"max": 64, "min": 54, "name": "TxIHkOSeiGDZm5JR"}, {"max": 46, "min": 56, "name": "2Q85HFELcorqQEsI"}, {"max": 80, "min": 61, "name": "EY3JJnZeVSZADsHO"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 87, "role_flexing_second": 20}, "duration": 54, "max_number": 63, "min_number": 37, "player_max_number": 39, "player_min_number": 93}, {"combination": {"alliances": [[{"max": 28, "min": 46, "name": "8ClIS7DYjXj8a0Du"}, {"max": 29, "min": 15, "name": "2rd2ZKeZM3hAmWqR"}, {"max": 98, "min": 60, "name": "z37AJdgNqhl2Fnj6"}], [{"max": 5, "min": 26, "name": "71eiyw0iC3sselCv"}, {"max": 74, "min": 21, "name": "TWdjUde1bU6PC5vv"}, {"max": 42, "min": 81, "name": "Bki14hZqnMugrvAK"}], [{"max": 54, "min": 19, "name": "uKg65N6K0datF2U9"}, {"max": 41, "min": 27, "name": "vc0wcYPXlTiMSwSc"}, {"max": 57, "min": 43, "name": "HzM5T5IxGPCsHoLp"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 11, "role_flexing_second": 92}, "duration": 12, "max_number": 27, "min_number": 80, "player_max_number": 96, "player_min_number": 99}, {"combination": {"alliances": [[{"max": 6, "min": 66, "name": "BVjBLP05Kma4qvTc"}, {"max": 28, "min": 63, "name": "1WCQnWWigLmAPFN3"}, {"max": 19, "min": 73, "name": "uC5Z1Pv1JA8H61Tq"}], [{"max": 50, "min": 73, "name": "4S1oEHksnLy343Lo"}, {"max": 90, "min": 70, "name": "ylNesSQ1Tq7utnbn"}, {"max": 65, "min": 99, "name": "61Tc3niuoNYGFX0k"}], [{"max": 17, "min": 91, "name": "OR7wEwVYM5XxqRWF"}, {"max": 77, "min": 33, "name": "4UriVKaQUtZSlQQL"}, {"max": 26, "min": 30, "name": "07GnlLjaYKkuZzhQ"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 0, "role_flexing_second": 19}, "duration": 21, "max_number": 100, "min_number": 22, "player_max_number": 65, "player_min_number": 9}], "name": "6pBiW0Dzqf8hR2vF"}}, "use_newest_ticket_for_flexing": true}, "session_queue_timeout_seconds": 65, "social_matchmaking": false, "ticket_observability_enable": false, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'okS7n0iZ3cSRG5fO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'IcgXov7MJPXG4NAB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "s7gCDKRXpjCIqIF4", "players": [{"results": [{"attribute": "cMIBR8GP4u0iyKll", "value": 0.139414785520379}, {"attribute": "oB5tjdjFQ2M1BFap", "value": 0.3505043715417375}, {"attribute": "T5ghi2Hohg5wsWjI", "value": 0.13639599785077872}], "user_id": "OqxmjqJNlvY6sbPm"}, {"results": [{"attribute": "FFLlhnIKB1g9Px7o", "value": 0.3855023955515139}, {"attribute": "vMtzie4kRkbMg5Ie", "value": 0.25198983569427136}, {"attribute": "6gMBgN4HtnwbFl5S", "value": 0.7024506157290303}], "user_id": "qHpX49pbb4rbpI7h"}, {"results": [{"attribute": "CfXwNdLCVvrdhl4n", "value": 0.33164487953448596}, {"attribute": "CNKZkrhrpwnSOPbC", "value": 0.17369968656501433}, {"attribute": "tW5BpsXsBsps0b9o", "value": 0.4501822915398963}], "user_id": "pz6YodJoacnLv5wZ"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "SXJa1LcwtRFZwsNn"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "7LND6l3K8WvaJwr5", "client_version": "y8FxBLhoKz9GVnnL", "deployment": "wqJ2hJA1twmkjQcR", "error_code": 31, "error_message": "K64yeNbLVMe2lwwB", "game_mode": "1bMKEgjWIRTzUax7", "is_mock": "w2Q3EcQ0c5PEAEk7", "joinable": true, "match_id": "k3VlEDo5XEaIJtmG", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 19, "party_attributes": {"QCRpeNa9U8JRfK3L": {}, "2MMS2z4juaLnYaFG": {}, "M7tWOkiAiLpWOq9O": {}}, "party_id": "BxtAxKWc1FzZgITL", "party_members": [{"extra_attributes": {"Bzf8K7fDbUm8IulJ": {}, "5Nqs9eqKKUiMsuPt": {}, "9JvYzLNPfIHFmVWN": {}}, "user_id": "zpjOHVxljYTlIxah"}, {"extra_attributes": {"tM8nmDvhLDUlVu9c": {}, "JeFHcGj1fe1kLt1k": {}, "aDa7AUat8xyv8uJ1": {}}, "user_id": "DUYknVuCmMGO74yL"}, {"extra_attributes": {"9eVzwc4c9K4JnHsY": {}, "mCxxZpp5ri3SaKEd": {}, "S9All9LG8GHKOW9M": {}}, "user_id": "Cga0pLq5fR1ViwOq"}], "ticket_created_at": 3, "ticket_id": "gW7HZEF80YgRJW05"}, {"first_ticket_created_at": 88, "party_attributes": {"SxQEvZo3F7oUG7gc": {}, "l2ecmB8klCqDY59I": {}, "XVMrvEYX1gj4eOcR": {}}, "party_id": "qCKZ48Gtt3t7iAyC", "party_members": [{"extra_attributes": {"RMxnFSCaCqRxYJAs": {}, "an3bnzGJhJytruxQ": {}, "jM0KMjQzSceL7bPt": {}}, "user_id": "JgeKpjVFnRylyzqn"}, {"extra_attributes": {"SOidCGVMbwcsaLGw": {}, "mtsAhnS35fuuCGie": {}, "wuvyR73ufe71HEaF": {}}, "user_id": "J759agrCTCQEr5aj"}, {"extra_attributes": {"g5eCSJVFMk2hvrn3": {}, "x9WTfl4BCuwbemsB": {}, "tAOTRD1bFbI79ITb": {}}, "user_id": "OIjA65BPD836EWWL"}], "ticket_created_at": 65, "ticket_id": "mgVGF8dEvKFVwey9"}, {"first_ticket_created_at": 77, "party_attributes": {"ChG6wcS21fR1aruN": {}, "Ih4vYc258daAo9M2": {}, "SI7A8lKY88cJDUuW": {}}, "party_id": "r3q2G6p9rKOG6xn9", "party_members": [{"extra_attributes": {"WHAUOOyK93BQHO1B": {}, "yM6KEjapZGNNdcFx": {}, "CuHg9kh83FHaHqhg": {}}, "user_id": "y1RTR9g1uHZ6yoOj"}, {"extra_attributes": {"HCLzETsENJbwn0HG": {}, "5pq1mARx0q0LyCYe": {}, "K69soVbU9TxvRC0r": {}}, "user_id": "NLYQidYC1hA7UUq8"}, {"extra_attributes": {"QZSe2ujhdOVilt8G": {}, "9FcpxFJqHXYQA3rk": {}, "8VVqDKO2es8NbmsV": {}}, "user_id": "KtvQgDqWblfZRCpO"}], "ticket_created_at": 24, "ticket_id": "p2O0zIQAaU1N37zm"}]}, {"matching_parties": [{"first_ticket_created_at": 59, "party_attributes": {"iY1nVJZUr4HzN3cw": {}, "gAh4VzeT3JCUdznu": {}, "kOgtIPcIptjV6FFe": {}}, "party_id": "Zv9t08UIDu7ymrdg", "party_members": [{"extra_attributes": {"DBDUR97xmtZlky0F": {}, "CPMUG8gOB8FgK8hG": {}, "je99WdzC7vcEEkQk": {}}, "user_id": "LX630rCeeSR2tyy4"}, {"extra_attributes": {"h7f6SZwy2FzWyQH1": {}, "0rRN73qhMk0h5TcG": {}, "9uWzGN5KduBMzDIs": {}}, "user_id": "kVPvAqVUgzOLouTC"}, {"extra_attributes": {"SHSTuHuCoGUURvXV": {}, "OPdmWBOYF9HLlA7i": {}, "MuB5kWWXh0PLsKj8": {}}, "user_id": "EhoK5LXEMBWEItzc"}], "ticket_created_at": 27, "ticket_id": "zVGhSG5dh5q5UFPi"}, {"first_ticket_created_at": 8, "party_attributes": {"XIZlBINqPn9InsL5": {}, "4Xe0QnDNM2dNcARq": {}, "IUCbF6Tog7bk77rg": {}}, "party_id": "1N5rhjl3cf5HEToe", "party_members": [{"extra_attributes": {"VEpHchVGp38QDZR9": {}, "MZcR7OaMCKxrxqdI": {}, "ram6gSrMfKEA4AUQ": {}}, "user_id": "89kz4nvzRZpJ8TTj"}, {"extra_attributes": {"a9BNdzIHsBonFpB6": {}, "WnP9tPwB3SoqBy6J": {}, "c4ZDtZOJqZ3hhftV": {}}, "user_id": "TvE3kI6OYegYDCpv"}, {"extra_attributes": {"LCV472jgxIhQtxvj": {}, "nbYJqdgjiiwClXFy": {}, "YKwW90BfBpxv59Ja": {}}, "user_id": "Fjnx9YiY7o866TKD"}], "ticket_created_at": 66, "ticket_id": "4R0XxJgfSJlJFZDh"}, {"first_ticket_created_at": 40, "party_attributes": {"2mx6AnfleDFmgUAr": {}, "E5nI7RnIFR71nmn4": {}, "HIxi17aYwRZ9WLxC": {}}, "party_id": "2OZ2NbseUxTBcbIk", "party_members": [{"extra_attributes": {"trUGghl9wutzJqyf": {}, "5n2dVDA04uhvGouM": {}, "X6VaQKsRGJu3povL": {}}, "user_id": "hT7PzVEXkSLw6EaD"}, {"extra_attributes": {"Pf1oFZxaDlNyyOkO": {}, "AdFcHrHvst8C21Ta": {}, "moPYNMquceykIreD": {}}, "user_id": "AIaP472FC2GmvG41"}, {"extra_attributes": {"fiRBjxWBxAGT7Y1U": {}, "4oT3JOfI846EJAD7": {}, "X1aaS2Dmlzz1XSaG": {}}, "user_id": "HhafClvdsQODDm9P"}], "ticket_created_at": 56, "ticket_id": "n1gqCNEDPmVPJJIf"}]}, {"matching_parties": [{"first_ticket_created_at": 46, "party_attributes": {"uAfgsmxaB8SwRkOM": {}, "CYnlc5eQsZj3jJET": {}, "CaA0LVdDGqsbFd9K": {}}, "party_id": "cgSia44TF9DhjyJc", "party_members": [{"extra_attributes": {"ocBpvtmTK05Opyrw": {}, "YLT0VrFWWCZVqZZP": {}, "pEBc1lWOGhed0VBN": {}}, "user_id": "nErMU2Yo77Ein4uZ"}, {"extra_attributes": {"OWN8lL4cZrIv2EcW": {}, "HhWIn7v0KeEJQov6": {}, "JQiE6zcfeGbhLfOP": {}}, "user_id": "J7d0TU21oykUQgUb"}, {"extra_attributes": {"PKBVEALuaB7ezPvG": {}, "aDeTPRH0yt4jmy6K": {}, "UueKB3LpAkTgDUfH": {}}, "user_id": "Op1DDDSpnvFB6tDf"}], "ticket_created_at": 60, "ticket_id": "FE6GgEf3810fCevp"}, {"first_ticket_created_at": 33, "party_attributes": {"pqJADYBNIekqLoz6": {}, "DxQ6pPwt9CTlPyya": {}, "33fqUPzI3VD1TrjR": {}}, "party_id": "jDsMYNgHDuXAGIZw", "party_members": [{"extra_attributes": {"8HF6Mu3Z0VI7Edql": {}, "A2RuWVsGyPr02mRL": {}, "LBmUKLf3ocEBmlTp": {}}, "user_id": "OStOIWr1U9wH9hNB"}, {"extra_attributes": {"ahdDl4MZ2EbReDVG": {}, "9AQEiv4NO2gv5ICp": {}, "U2bF8JvMNUzBuVC1": {}}, "user_id": "OIMsU6fBcDDiO1hq"}, {"extra_attributes": {"QmPkf8b5ZCcdd7te": {}, "1kQdJxTwo2lPIc2S": {}, "tqiyZulAPUr1uCnn": {}}, "user_id": "vXfmfv8rXjjexW4f"}], "ticket_created_at": 3, "ticket_id": "tT76si3u4NEaML8m"}, {"first_ticket_created_at": 100, "party_attributes": {"HJWTFSFWadHMe8jm": {}, "gHgMgIU8Fjw6IWwu": {}, "YerOBkcgSIghE5Z6": {}}, "party_id": "L3oJkRA3OwEo8PWM", "party_members": [{"extra_attributes": {"fpvT99rxDFZr1pdF": {}, "jestlCWXVj5J73ME": {}, "15MWAiDAmE0wAGen": {}}, "user_id": "fpj0kpVURkI3n4Jn"}, {"extra_attributes": {"Exugv59jhZ1Jgc3S": {}, "tnj3IVnSoIwKlzkd": {}, "SjMkgJqrsD9pq0F7": {}}, "user_id": "42R6you1jWPrRtwv"}, {"extra_attributes": {"IBN4OQC9AFLz518C": {}, "BlnmsnUdAnpBrs9x": {}, "gt0s5KVadyRrSqKU": {}}, "user_id": "yzzhGEFLiONF4wfD"}], "ticket_created_at": 37, "ticket_id": "DctTu0siy6dyyfXC"}]}], "namespace": "2KkcD7EePEsi0uit", "party_attributes": {"DZnTzFFhlvWhSBNN": {}, "6CMep3E1FviNKByp": {}, "iaHDd9kVL6fOJzxJ": {}}, "party_id": "nnDFmYvmeOygK21t", "queued_at": 40, "region": "joal6BnYGnpUcwxV", "server_name": "tRsbLh4RANnSibAu", "status": "xJJe2MCHMMa5VCnG", "ticket_id": "ZRXTMoLijyUkl4Ry", "updated_at": "1989-09-22T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "54uUV3DKT7uGlV72"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'KQ6lH105Kxz4BUVQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 29, "userID": "jlNgA8NiSONeV7mT", "weight": 0.12629193623939505}' \
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
    --matchIDs 's778RXxZ1waKebtI' \
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
    --strategy 'G6rZcGFijFJXNr0B' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'eo4AwfawY639Q6E0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'bgfJ8akBxa0OhNRZ' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "qz7dgx9Z1pG0jJyy", "description": "YqBqrLCr4Mkkd7Io", "findMatchTimeoutSeconds": 40, "joinable": true, "max_delay_ms": 19, "region_expansion_range_ms": 24, "region_expansion_rate_ms": 87, "region_latency_initial_range_ms": 3, "region_latency_max_ms": 76, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 69, "min": 85, "name": "vbrStawS3lH8zEo8"}, {"max": 65, "min": 19, "name": "mKTODB3SjeFEjlgo"}, {"max": 82, "min": 48, "name": "LMNYaWxd5aGieJIV"}], [{"max": 41, "min": 84, "name": "h2ZLhyxbjigs3RdZ"}, {"max": 12, "min": 81, "name": "BakAhaV0x8hPPzlU"}, {"max": 55, "min": 93, "name": "z7DchoAIlg6Rt6US"}], [{"max": 86, "min": 3, "name": "yzPdEgHrt39LuxBC"}, {"max": 21, "min": 69, "name": "s5ROuzLh4CZi2TZG"}, {"max": 99, "min": 79, "name": "xCkYrRFAVJgwDsE3"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 43, "role_flexing_second": 96}, "maxNumber": 34, "minNumber": 21, "playerMaxNumber": 50, "playerMinNumber": 21}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 65, "min": 26, "name": "K5KDTfa9OXgaMRDF"}, {"max": 93, "min": 6, "name": "79N5eP4UpnCRcf43"}, {"max": 58, "min": 15, "name": "CT0tuMfKpPZDk1nB"}], [{"max": 64, "min": 59, "name": "orYIUPSS1jPByLI5"}, {"max": 39, "min": 65, "name": "yYKKhfQ2wwsyTsTu"}, {"max": 25, "min": 24, "name": "Tev00A0MGWErIbI1"}], [{"max": 66, "min": 51, "name": "LMYr1AsXZ4ASAJYO"}, {"max": 66, "min": 64, "name": "B5Blf62VETfpwbo8"}, {"max": 55, "min": 33, "name": "P6PCHQBUn4PJWtJr"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 19, "role_flexing_second": 24}, "duration": 84, "max_number": 80, "min_number": 97, "player_max_number": 52, "player_min_number": 35}, {"combination": {"alliances": [[{"max": 92, "min": 17, "name": "e1GLdugaVEszu623"}, {"max": 60, "min": 4, "name": "41Qxdtl7CUPCLAwh"}, {"max": 43, "min": 59, "name": "nUkeBZmfiVV0rgGq"}], [{"max": 23, "min": 56, "name": "zBZLw90DDq4M8lmL"}, {"max": 36, "min": 3, "name": "BEQ2ABlxHBDjk4k5"}, {"max": 12, "min": 10, "name": "y55lUlH58MgYKTTc"}], [{"max": 38, "min": 90, "name": "YLCXxm44tnQUvIxP"}, {"max": 3, "min": 97, "name": "05ZB6B3xiYMfQwR1"}, {"max": 52, "min": 3, "name": "YAk8AGg56cl7hbhy"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 63, "role_flexing_second": 64}, "duration": 33, "max_number": 27, "min_number": 72, "player_max_number": 43, "player_min_number": 3}, {"combination": {"alliances": [[{"max": 5, "min": 81, "name": "vZxx0mphtlKAk1RW"}, {"max": 43, "min": 35, "name": "ouoBE8TRqc97L4AH"}, {"max": 87, "min": 18, "name": "ioRi0DN6EPbn36SA"}], [{"max": 5, "min": 85, "name": "vyqsjIpq9xc06MmS"}, {"max": 40, "min": 73, "name": "eaHhdOVzA8oLd3I4"}, {"max": 16, "min": 12, "name": "TBUFznGT4E80qKx5"}], [{"max": 75, "min": 61, "name": "BxqZUlqJnB3w6TH3"}, {"max": 68, "min": 77, "name": "EUK1uU09eRc0PGyE"}, {"max": 68, "min": 79, "name": "Bwj822zFaK8PQoHr"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 45, "role_flexing_second": 88}, "duration": 53, "max_number": 34, "min_number": 13, "player_max_number": 46, "player_min_number": 6}], "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 54, "flex_flat_step_range": 65, "flex_immunity_count": 87, "flex_range_max": 62, "flex_rate_ms": 20, "flex_step_max": 50, "force_authority_match": false, "initial_step_range": 5, "mmr_max": 14, "mmr_mean": 85, "mmr_min": 17, "mmr_std_dev": 88, "override_mmr_data": false, "use_bucket_mmr": true, "use_flat_flex_step": false}, "flexingRules": [{"attribute": "FVHdHlilVxyqwdlN", "criteria": "26v65JLXfcOkwerm", "duration": 27, "reference": 0.7068862714613828}, {"attribute": "L6Mu8FNHtquwx5q5", "criteria": "nUZgTRpOtdnR9Hlf", "duration": 95, "reference": 0.28230520693155636}, {"attribute": "eQ7sLHrCY5UTEXxq", "criteria": "7G9NGB02qVRDVzdT", "duration": 68, "reference": 0.7195097375010754}], "match_options": {"options": [{"name": "pf3LXhwKBh8MOZVs", "type": "9Bh6XQmWavr1yfJX"}, {"name": "0j4XFuyszboNg2xw", "type": "X9MFATVo12HNbIPW"}, {"name": "eRpW7byEkmcgWxco", "type": "PMAvDHwl3tJMtVKI"}]}, "matchingRules": [{"attribute": "q7i2J5Hb502RsuFL", "criteria": "0oIFpld4Q27zr012", "reference": 0.1917589777210993}, {"attribute": "D1IS3Y1kh1ZvVyUQ", "criteria": "wLn9dPmCaIRlTdPd", "reference": 0.32836741115846435}, {"attribute": "HNIXoObOzTJ4irAx", "criteria": "SMTWqyzHpvMFfx0m", "reference": 0.9588723901124159}], "sub_game_modes": {}, "use_newest_ticket_for_flexing": true}, "sessionQueueTimeoutSeconds": 48, "socialMatchmaking": true, "ticket_observability_enable": false, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName 'HCLxvSJsSTZYHIO5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName 'SfmJFeOVjy8X3dJv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName 'Mb7dlAKPuJBXfL5j' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 83}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName 'yxCYqVJNBj3PD2RL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName 'fBJKQEOs7clJdGXQ' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "6fmHYOnJF9lpUUYR", "count": 20, "mmrMax": 0.15659746667224583, "mmrMean": 0.928083838909567, "mmrMin": 0.3810977397275269, "mmrStdDev": 0.8668188494503718}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName '876ZW4Zq5yXef7Iw' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 87, "party_attributes": {"rqueUPOxgF9CAAUl": {}, "fVnaL4V6JiK4j65W": {}, "rhtZK8dlBrLiFqIa": {}}, "party_id": "Pg46yoxiKv8Qv5W2", "party_members": [{"extra_attributes": {"4uKmZV3GgJEQzYRb": {}, "GGbVONySJBtNxVEu": {}, "vp5DETpzcMP9C8q3": {}}, "user_id": "lw3LogRG7q9ROTj4"}, {"extra_attributes": {"Q3Cmq2qQG324ZsA9": {}, "ro15yp7XZNynX6Pj": {}, "l1LwpZdyEVdLAV2G": {}}, "user_id": "79k55LWWXiTeXyKc"}, {"extra_attributes": {"MaheKfU1v4fStGdW": {}, "QLSChKIYGP35ufOF": {}, "SmdWOA0RbQ8mwEY3": {}}, "user_id": "t9zZVonl7LdInsZ7"}], "ticket_created_at": 79, "ticket_id": "Ax7uofVUtyWlieCL"}, {"first_ticket_created_at": 80, "party_attributes": {"JXGvVfnRg1opqVTo": {}, "5arHydPz9wUisf95": {}, "a9M9aVIbK680meix": {}}, "party_id": "yvfyQHCnMEBKY89n", "party_members": [{"extra_attributes": {"UenQOljdSXWQUhUu": {}, "MlLfAtO6nNUp1iwu": {}, "AEiZmsIaFSmzToSr": {}}, "user_id": "wSd8xpD1QlamCunB"}, {"extra_attributes": {"iRYg8DUXec1NnnFR": {}, "AvUXuRpYJP5bdMTn": {}, "GIffniliMd1jUd6z": {}}, "user_id": "592XATvpz7Ta3GK2"}, {"extra_attributes": {"muhn8utT0EiyjoBr": {}, "gPLpDN6eqrbSjj9n": {}, "aFk75FZyICwhz7Nt": {}}, "user_id": "qlylCwXYf5NVeR5T"}], "ticket_created_at": 6, "ticket_id": "itranpiHGT9iTCIK"}, {"first_ticket_created_at": 47, "party_attributes": {"KuJbiYLz4DELadmG": {}, "w0pccfvQ15apuNvV": {}, "Lgz0vhHAVlJdHpeA": {}}, "party_id": "KFbu2tVyB94xP1nM", "party_members": [{"extra_attributes": {"jACyBKpYkYW1Yvfc": {}, "P3odrlCYN2zXK76i": {}, "wQADgbu3xnnTEcnQ": {}}, "user_id": "LgQ53aVwUoCuCEPl"}, {"extra_attributes": {"fXWMTZtHHQPrMNcW": {}, "KPgs5LMAPIiDWLTI": {}, "ZkL0gBaGORQAilgP": {}}, "user_id": "kjXvcpbTO32JvMBM"}, {"extra_attributes": {"b9Q2pbksPJCnu5Rb": {}, "udiUHiarULEzRACj": {}, "Oic7Fam3ueCuBP6K": {}}, "user_id": "fgnMfdYeBn8tgRng"}], "ticket_created_at": 69, "ticket_id": "zZtLNQNfHoGcagWa"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName 'k2v4QV6IhjkfF1r8' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 80}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'ZftfwsPCn2R4ijeH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'jHROaSKX1tQAGCfm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'QiXwM3jC8m8saTLF' \
    --matchID '1eoTCE2isJ3TzLGq' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["VFXKE3mgGFKWvVaw", "fMqNk4uoWiksZtpF", "g6SNipXvNNuq0eyY"], "party_id": "BEzi8dTFJVLxG2K1", "user_id": "aptxOZqJxkqe5T5p"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'wiSOPueZbRt9SEpa' \
    --matchID 'OW2ql4aQ5jaWEu84' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'JBJNtho7G5Wwz4po' \
    --matchID 'X4dsB1iAE4dISHKC' \
    --namespace $AB_NAMESPACE \
    --userID 'V5aHgoUCD7NgJV99' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName 'fBXry3OPwOQFaVnQ' \
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
    --channelName 'ZdrUDMdFSGALF3PE' \
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