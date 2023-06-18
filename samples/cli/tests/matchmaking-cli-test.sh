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
    --limit '93' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "5vso4mplzT6NsCg8", "description": "IgBucI9wsmX74CT6", "find_match_timeout_seconds": 21, "game_mode": "ahl4o8B0AFK6mnBg", "joinable": false, "max_delay_ms": 18, "region_expansion_range_ms": 12, "region_expansion_rate_ms": 96, "region_latency_initial_range_ms": 74, "region_latency_max_ms": 27, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 71, "min": 87, "name": "Z8tWwKOaWi7V2Itv"}, {"max": 72, "min": 2, "name": "dxDtm7xGTmdeOZuu"}, {"max": 92, "min": 94, "name": "OIsCOKrLLwO0VUIt"}], [{"max": 45, "min": 78, "name": "ox5aI7UJ73Xv5xib"}, {"max": 24, "min": 57, "name": "1GfqaAgA1HslSjmG"}, {"max": 70, "min": 45, "name": "bbdsyYzyxBGgZ2Eu"}], [{"max": 66, "min": 57, "name": "ouYInueJlOakTA65"}, {"max": 75, "min": 53, "name": "Ljzwv6O6bJSq9Tua"}, {"max": 31, "min": 40, "name": "6GQfFy7vlOUdJWyw"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 68, "role_flexing_second": 35}, "max_number": 37, "min_number": 9, "player_max_number": 45, "player_min_number": 68}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 23, "min": 82, "name": "6eOqCFv44F44NM1b"}, {"max": 71, "min": 72, "name": "wVZKQr1i43v0bWqC"}, {"max": 37, "min": 57, "name": "vojsga5shWaLnWn8"}], [{"max": 24, "min": 0, "name": "wZng8kdFnXPwflQo"}, {"max": 58, "min": 3, "name": "XlK4IrVyDYOsWW0s"}, {"max": 85, "min": 42, "name": "IyR0X5aEa3tRv0BT"}], [{"max": 34, "min": 2, "name": "zEoVoNgTQp0x1D23"}, {"max": 90, "min": 22, "name": "vhopVPB8LO65ahAC"}, {"max": 39, "min": 96, "name": "moZWP36pMKx878PH"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 23, "role_flexing_second": 33}, "duration": 29, "max_number": 76, "min_number": 45, "player_max_number": 72, "player_min_number": 56}, {"combination": {"alliances": [[{"max": 51, "min": 32, "name": "m1fD1u9MaeqmzoT8"}, {"max": 2, "min": 4, "name": "SZvtY9oIvaaMSnIt"}, {"max": 0, "min": 22, "name": "ba2G8eNXXPz5Q2JU"}], [{"max": 84, "min": 17, "name": "uud4yIivHe3EuJmj"}, {"max": 78, "min": 19, "name": "9EFWw8yz0Y5nxQjN"}, {"max": 0, "min": 78, "name": "E88Z88nU9qOM4vlG"}], [{"max": 65, "min": 53, "name": "Ro9f7pITA8HWTvyS"}, {"max": 91, "min": 50, "name": "Pk5ZeHZTIpnMc19o"}, {"max": 46, "min": 11, "name": "iakGLz9MsHum6FkW"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 44, "role_flexing_second": 30}, "duration": 40, "max_number": 28, "min_number": 71, "player_max_number": 83, "player_min_number": 76}, {"combination": {"alliances": [[{"max": 11, "min": 53, "name": "iT8EjTtBQOr2FEUe"}, {"max": 27, "min": 6, "name": "fRet6AfQmHKMGdv1"}, {"max": 11, "min": 67, "name": "rNQN6BBVn3Ka3QFW"}], [{"max": 100, "min": 54, "name": "hJ3QZi0DbeZV6aIM"}, {"max": 84, "min": 91, "name": "QYPHk3qyy6qhFRbu"}, {"max": 41, "min": 84, "name": "I9VP2EddISJYVSZ1"}], [{"max": 79, "min": 29, "name": "kgZWoShSKVRytapk"}, {"max": 96, "min": 49, "name": "1m3kRCGPLfxT6EsE"}, {"max": 69, "min": 29, "name": "3ln4eJ43Nye6B9iw"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 52, "role_flexing_second": 16}, "duration": 35, "max_number": 97, "min_number": 41, "player_max_number": 91, "player_min_number": 27}], "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 10, "flex_flat_step_range": 2, "flex_immunity_count": 11, "flex_range_max": 58, "flex_rate_ms": 28, "flex_step_max": 94, "force_authority_match": false, "initial_step_range": 61, "mmr_max": 45, "mmr_mean": 20, "mmr_min": 77, "mmr_std_dev": 38, "override_mmr_data": true, "use_bucket_mmr": false, "use_flat_flex_step": true}, "flexing_rule": [{"attribute": "2yyl1p2T15qz5017", "criteria": "rEaHzdFCBuTP9Ea8", "duration": 56, "reference": 0.9678582448603816}, {"attribute": "uNklTIuvxEW9RmCs", "criteria": "NZJqwNKgNDwaAFas", "duration": 12, "reference": 0.9244798891749002}, {"attribute": "w0pvAxTrUp5IuuXQ", "criteria": "8dSWHVDCzEqNLRN9", "duration": 5, "reference": 0.6624948782915702}], "match_options": {"options": [{"name": "lcnUAUcPPDDPhpKe", "type": "jsqyAufuEM3KWop0"}, {"name": "zV1OhUIBecdIT0yH", "type": "4Ez7SaLwAar3JljA"}, {"name": "TwHQCmcf8AXMSLMF", "type": "4G0zoytPNTc8Xehu"}]}, "matching_rule": [{"attribute": "rdJEfHBhSkGIxiTv", "criteria": "eA1MNOBAtIGqMIX6", "reference": 0.41131445234139696}, {"attribute": "VvgBdTWJ1x78NINC", "criteria": "QeiJM7hPbfZ4QVkx", "reference": 0.002197977040105825}, {"attribute": "cUZxTlV8XuXtjxxT", "criteria": "Udajfr58n2bRI9ob", "reference": 0.5482045034980833}], "rebalance_enable": false, "sub_game_modes": {"o4dwNLAF9i5ljhbm": {"alliance": {"combination": {"alliances": [[{"max": 95, "min": 0, "name": "pT6bsMILrNcpSHZO"}, {"max": 100, "min": 56, "name": "Uq5rvn3K99wh5d4P"}, {"max": 0, "min": 91, "name": "Kd9OStYR9UD3yeQ3"}], [{"max": 8, "min": 74, "name": "JlV62mf40SEgzBmQ"}, {"max": 49, "min": 43, "name": "nWkvouZIN7sTF8dy"}, {"max": 45, "min": 50, "name": "cptffcXWimou1nAD"}], [{"max": 59, "min": 95, "name": "xTbVTCGLOraCmN89"}, {"max": 2, "min": 91, "name": "0PS92tjYAWtkiv0V"}, {"max": 75, "min": 97, "name": "ylkTndGrXRyg0AK1"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 59, "role_flexing_second": 82}, "max_number": 95, "min_number": 87, "player_max_number": 88, "player_min_number": 14}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 77, "min": 29, "name": "J2GiU0wVFXhJPXCS"}, {"max": 22, "min": 42, "name": "SAgdGFTUxf8Rm53x"}, {"max": 10, "min": 36, "name": "8S5kj5113Qv0Urm1"}], [{"max": 98, "min": 82, "name": "DGWcv7zQMBO8sKB1"}, {"max": 37, "min": 31, "name": "pCYJ8LY3lADkbnkq"}, {"max": 27, "min": 91, "name": "zQnyyV9HWThJtc0z"}], [{"max": 75, "min": 23, "name": "3XNaheEDB25usG8L"}, {"max": 27, "min": 30, "name": "alMURDWXI22WXO3T"}, {"max": 85, "min": 65, "name": "X03ckSGif0RNFRtn"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 29, "role_flexing_second": 55}, "duration": 94, "max_number": 29, "min_number": 34, "player_max_number": 86, "player_min_number": 63}, {"combination": {"alliances": [[{"max": 14, "min": 14, "name": "11AB1ksa0NufYxNt"}, {"max": 52, "min": 48, "name": "0XtSm2H1JFPsot44"}, {"max": 88, "min": 2, "name": "ISyFILyNDb3yKjzT"}], [{"max": 30, "min": 61, "name": "DZEEs4yc2DTEf3La"}, {"max": 10, "min": 55, "name": "s5krnBirxGYWX5Y9"}, {"max": 90, "min": 90, "name": "0YsZ3oEkvxloqGQx"}], [{"max": 74, "min": 31, "name": "hdu4EgISb5JuYvk1"}, {"max": 24, "min": 21, "name": "X61QkVnlhidrDr4b"}, {"max": 14, "min": 58, "name": "HsqFB7CAx4PEwvdi"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 50, "role_flexing_second": 9}, "duration": 5, "max_number": 16, "min_number": 90, "player_max_number": 14, "player_min_number": 27}, {"combination": {"alliances": [[{"max": 84, "min": 17, "name": "DV5X3RK5PBaSPg7z"}, {"max": 57, "min": 63, "name": "EBhJRIIpOMwODU92"}, {"max": 53, "min": 82, "name": "f3cnHr5DnmptlI30"}], [{"max": 54, "min": 84, "name": "yS3LmIdGGdhVHtIf"}, {"max": 29, "min": 96, "name": "lkiNj8uJnF6iCs3w"}, {"max": 74, "min": 39, "name": "CX9nQmR2lutCvsYd"}], [{"max": 42, "min": 66, "name": "OU8k8K1IC0CEYDeI"}, {"max": 68, "min": 34, "name": "zfdg6d6YPTkezhZe"}, {"max": 77, "min": 49, "name": "X0hJYANj6XkFc1z3"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 20, "role_flexing_second": 91}, "duration": 67, "max_number": 75, "min_number": 50, "player_max_number": 63, "player_min_number": 17}], "name": "TmcxhzoVBL2x0N1Q"}, "LUXBhJwdhSnOsQA1": {"alliance": {"combination": {"alliances": [[{"max": 97, "min": 9, "name": "hRaWcpJ1TQ2T0A8M"}, {"max": 79, "min": 87, "name": "pAMLt1v5082PhuAG"}, {"max": 13, "min": 9, "name": "k32BPkwdqSJO1XMF"}], [{"max": 9, "min": 46, "name": "XMkN6c2aaFe20vZc"}, {"max": 59, "min": 46, "name": "RXzhx9zMJQjdJfwn"}, {"max": 100, "min": 23, "name": "oS8E2MCbF72AwGLJ"}], [{"max": 59, "min": 39, "name": "HSpZa8ia8e6xbtfk"}, {"max": 59, "min": 62, "name": "PO9KjtVtC1nogX7x"}, {"max": 85, "min": 91, "name": "3fFY7koscNTGsFJK"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 74, "role_flexing_second": 22}, "max_number": 41, "min_number": 90, "player_max_number": 67, "player_min_number": 16}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 74, "min": 46, "name": "t0RMByQQdJgf8gZo"}, {"max": 100, "min": 1, "name": "CP0uym487Kqy52PP"}, {"max": 96, "min": 93, "name": "J5WBO2DSgUXaS2iv"}], [{"max": 63, "min": 46, "name": "bGR6OwPGcx2swxxl"}, {"max": 12, "min": 36, "name": "SNQTxq46tDGK5ewF"}, {"max": 77, "min": 74, "name": "JDDAnqRCOLlIgxqN"}], [{"max": 34, "min": 54, "name": "3EKpGBEuzhk0lJrV"}, {"max": 16, "min": 10, "name": "GWONLrt9wSObzb5O"}, {"max": 65, "min": 60, "name": "GXcwx9w2ATGUkU7c"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 37, "role_flexing_second": 6}, "duration": 1, "max_number": 75, "min_number": 86, "player_max_number": 34, "player_min_number": 79}, {"combination": {"alliances": [[{"max": 84, "min": 56, "name": "CpUzFJw6OhAYpIo2"}, {"max": 4, "min": 85, "name": "ibhqCqrBseVd9wSX"}, {"max": 99, "min": 23, "name": "8rq4iE5Tj4TTgOTC"}], [{"max": 0, "min": 14, "name": "PCqtkzNfW6ajz8w3"}, {"max": 34, "min": 24, "name": "8shwzd916zj06gEQ"}, {"max": 29, "min": 8, "name": "ecFhyi1VCJNuEiTA"}], [{"max": 12, "min": 59, "name": "IHnJ64K3POtG0jMV"}, {"max": 83, "min": 40, "name": "GKiqn3cCxndlzEz3"}, {"max": 42, "min": 66, "name": "RECdKA4Z9EEwo279"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 74, "role_flexing_second": 95}, "duration": 98, "max_number": 63, "min_number": 58, "player_max_number": 94, "player_min_number": 11}, {"combination": {"alliances": [[{"max": 18, "min": 1, "name": "Ok5P9ZjQR3ZRTwgI"}, {"max": 58, "min": 78, "name": "JvLVmqWmVoau1NM2"}, {"max": 51, "min": 4, "name": "DzJKafem9bhOIqHC"}], [{"max": 37, "min": 78, "name": "PG4OZ6qSfS2biSWo"}, {"max": 40, "min": 78, "name": "cP5GkHpaXQY6fcVV"}, {"max": 71, "min": 34, "name": "A86QFoXBlDDMx5GJ"}], [{"max": 15, "min": 79, "name": "sNzOFZsLr44qWial"}, {"max": 17, "min": 79, "name": "T8FAkQttwAW3lNSw"}, {"max": 3, "min": 48, "name": "RvwTX5WNtONTdOHh"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 42, "role_flexing_second": 40}, "duration": 65, "max_number": 28, "min_number": 81, "player_max_number": 77, "player_min_number": 1}], "name": "GKergSSRfMNuOq07"}, "IbJdkHoDhqOypBgS": {"alliance": {"combination": {"alliances": [[{"max": 2, "min": 71, "name": "8maJexKKVCTqtMu9"}, {"max": 21, "min": 62, "name": "gfjdR4Jf3cLt683Q"}, {"max": 64, "min": 75, "name": "28gORBjGJmq3lkAz"}], [{"max": 10, "min": 12, "name": "WwElvMu19SokdmL5"}, {"max": 99, "min": 58, "name": "slKbQE4MKh3jknEl"}, {"max": 25, "min": 37, "name": "mci1PosYmfrRE9zD"}], [{"max": 0, "min": 13, "name": "MgyzXmp7QfjFa94f"}, {"max": 87, "min": 82, "name": "NcdAkajjCoMksE20"}, {"max": 73, "min": 91, "name": "UfY2uaZEtfZamfhF"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 91, "role_flexing_second": 78}, "max_number": 11, "min_number": 11, "player_max_number": 51, "player_min_number": 95}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 6, "min": 42, "name": "5kvaqVpbIDz7BTFd"}, {"max": 27, "min": 96, "name": "vdfUljTtpSJrm4PO"}, {"max": 55, "min": 100, "name": "RrYGq9fpDEwXefbc"}], [{"max": 88, "min": 29, "name": "wej9K4zlfYUi5LLX"}, {"max": 59, "min": 84, "name": "BwJivvC2163laSbz"}, {"max": 81, "min": 95, "name": "ZpPwuPZX4H5GZR0m"}], [{"max": 39, "min": 91, "name": "gkuXptrYnNBS8o00"}, {"max": 77, "min": 58, "name": "ahDufdDHxowygwKK"}, {"max": 27, "min": 49, "name": "fkmuygmEdRG2IfdJ"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 98, "role_flexing_second": 30}, "duration": 74, "max_number": 4, "min_number": 63, "player_max_number": 23, "player_min_number": 53}, {"combination": {"alliances": [[{"max": 62, "min": 99, "name": "u3zRxitiO65z1cPl"}, {"max": 10, "min": 61, "name": "2qcOwmvRpCTx4zOA"}, {"max": 99, "min": 40, "name": "iMD51SQjhJE56Kwx"}], [{"max": 93, "min": 60, "name": "t7DjEGW3dHGzcxoS"}, {"max": 80, "min": 51, "name": "mJHEuY0xi1zFssWE"}, {"max": 22, "min": 9, "name": "dNKfbGFGtFawgu0M"}], [{"max": 68, "min": 59, "name": "p0FXvWL2KXDjOjfc"}, {"max": 3, "min": 82, "name": "atLpBvShmSlFPDj4"}, {"max": 78, "min": 91, "name": "fdgVMrDfuJGEZErG"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 34, "role_flexing_second": 3}, "duration": 0, "max_number": 84, "min_number": 44, "player_max_number": 46, "player_min_number": 82}, {"combination": {"alliances": [[{"max": 19, "min": 87, "name": "Sv1oNnhDSXePbj7D"}, {"max": 91, "min": 44, "name": "SBYii74L7z1m1muY"}, {"max": 1, "min": 54, "name": "m6FYwLnb42kBC6OJ"}], [{"max": 98, "min": 28, "name": "n4JHpw7MqgGlTObV"}, {"max": 54, "min": 45, "name": "LlMzuObzcXSmMesU"}, {"max": 5, "min": 80, "name": "pwuo5HYJxuPMkt1v"}], [{"max": 99, "min": 22, "name": "63jQ5UhfWh0VuJcc"}, {"max": 80, "min": 11, "name": "dV0gU1IKDlA1QGxt"}, {"max": 42, "min": 16, "name": "wk0LCk0jFAe7PywM"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 25, "role_flexing_second": 12}, "duration": 7, "max_number": 9, "min_number": 75, "player_max_number": 59, "player_min_number": 53}], "name": "Ua69BkC4vmlbyFb8"}}, "use_newest_ticket_for_flexing": false}, "session_queue_timeout_seconds": 6, "social_matchmaking": false, "ticket_observability_enable": true, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'XTpMNNq59BHqNt7O' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'IVNL3lNZPv2g3q7J' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "A1RCr0oHBXB8gmHW", "players": [{"results": [{"attribute": "7mJG2dzDv6xf4Mlx", "value": 0.13484330964954583}, {"attribute": "Er2GGRaMjcNdDNyI", "value": 0.7123915258157009}, {"attribute": "GB2zKzWRktAgN9TL", "value": 0.5313611378616092}], "user_id": "XWSUyBFZu2Lfoe7L"}, {"results": [{"attribute": "sHpsdW8jLKYgUMzD", "value": 0.8991539560905706}, {"attribute": "FmG4xPrYoY4O0f2Z", "value": 0.051217578324408874}, {"attribute": "h4MJemUi7ziEpHAC", "value": 0.5149717624008607}], "user_id": "HLTR0nZTuPX8acPB"}, {"results": [{"attribute": "jHT9fecTdCaZCSNT", "value": 0.43679648819556094}, {"attribute": "2YcEnF6qRcicB8uk", "value": 0.2846223545076514}, {"attribute": "tPrYEBMkZlsgORmE", "value": 0.785369841166554}], "user_id": "pYIlqIM3AoFqSh7J"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "4R3bzfh6cgo1hueq"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "0Ir95oHzqCITio2o", "client_version": "GjBMOY0AMUD1gytD", "deployment": "kjLe4sTkqoC3VO52", "error_code": 19, "error_message": "Fmem9e842k7tc9JN", "game_mode": "xC3OrXOBnctzdf1s", "is_mock": "qCHqZW4bBPZNw5iH", "joinable": true, "match_id": "ernch8XiS0UB1n1E", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 97, "party_attributes": {"LUQWJ6FWMhX9fBzs": {}, "SLtNyJkJ34Nejczy": {}, "hUjrI0bBDOWrNHFz": {}}, "party_id": "F1hkucwNxQ0olWuG", "party_members": [{"extra_attributes": {"BUIX4XhyYBYNQX05": {}, "4EyxcLKXbFPXeuzy": {}, "n32jDpfTTgXzD6vw": {}}, "user_id": "HdVOGQsTYGOIpJce"}, {"extra_attributes": {"T03iS0lMUPbwCxyS": {}, "NrZD7lqk9tFisOdS": {}, "TW1TnNMrbOTLWhd2": {}}, "user_id": "Tv1DM5J8p7R5ucnw"}, {"extra_attributes": {"8v4Wh1MFIKsUsECT": {}, "gFc6uzFiTk986FmO": {}, "wr93WdDUE6vh6QNM": {}}, "user_id": "WzvASELUKrqQMliX"}], "ticket_created_at": 55, "ticket_id": "Xh6uppiaZ6cXZeK7"}, {"first_ticket_created_at": 34, "party_attributes": {"VUDes1oOJUi604Wh": {}, "WbDD7TaXoQuHhC57": {}, "0rVZdK2izdXX1yTf": {}}, "party_id": "Tfz5Yz4R34diDdDB", "party_members": [{"extra_attributes": {"acflLF2rpSUvzIgL": {}, "znL3tXpUFzAdwZ3s": {}, "GdCOwANJ3BOb8iKD": {}}, "user_id": "ggWJ2roXDq47llPY"}, {"extra_attributes": {"k3iVjNvpFIPX80HD": {}, "TYHKxec1GWMqGiKx": {}, "zhCDeOJaHViSx6MN": {}}, "user_id": "o1HQedaG8IM41BIk"}, {"extra_attributes": {"vylf4LI9C9M0odch": {}, "MLzBV3RsFjrsxbzC": {}, "Ts2hlot1yT7ElBkM": {}}, "user_id": "oWy1CUmdDo1YLDeT"}], "ticket_created_at": 21, "ticket_id": "XdCYholRC3E5WyBd"}, {"first_ticket_created_at": 39, "party_attributes": {"cRyzTjHIQmBvk2yX": {}, "Uyz8MKE0APxt4mDO": {}, "ijdSyvkpiVV5vWhl": {}}, "party_id": "0SauqhtCMaORlx2Y", "party_members": [{"extra_attributes": {"6Kkg25faT2PpMJsM": {}, "Bwe6YOVCE4HYt7yQ": {}, "qYrw2EifNYfr2jAw": {}}, "user_id": "L7pkDW0WKrZPBVQ8"}, {"extra_attributes": {"OASjV63BdLOH2tv4": {}, "lxxDowVCw21CFqwQ": {}, "K44jG1k53ecH7sOG": {}}, "user_id": "sYawnhEpaTaTpZXo"}, {"extra_attributes": {"XFhFqxXRmbxjdOk6": {}, "pOtCLEXsEQpH4LG4": {}, "v5orhZdsIugYT7hz": {}}, "user_id": "BZRwT7TY6a3tgRPt"}], "ticket_created_at": 2, "ticket_id": "LzBB4sY4H9c6qqiK"}]}, {"matching_parties": [{"first_ticket_created_at": 2, "party_attributes": {"qYscXpaoJjtxPSFd": {}, "KsYDxFpt0KqSK1Jo": {}, "XlYDGvlNaxPdwXBq": {}}, "party_id": "VGpX8jAPJXKNfzqw", "party_members": [{"extra_attributes": {"OQzodQPnb9wsg5Iq": {}, "jXMoqIkvkirSIhJb": {}, "IfqSMWxdPEWjzCDz": {}}, "user_id": "7cTGMqq2VX7TywDQ"}, {"extra_attributes": {"G9PPAyztbDgwzimy": {}, "i1R9eLQVk0nDd2Gl": {}, "yU6HLMQMhlyXvgCy": {}}, "user_id": "Phv7xHvjOyHl9z1p"}, {"extra_attributes": {"Fy9aFjxSORf7lBOn": {}, "98Jg7SIxzIZZqaNS": {}, "wJ4tjVeolSQuLidJ": {}}, "user_id": "QyFdm8uks1CqCelA"}], "ticket_created_at": 44, "ticket_id": "wJjNjWLuFYuTYfG8"}, {"first_ticket_created_at": 79, "party_attributes": {"viTP7Nf8DzbId3EG": {}, "UTDHAAIvFjIEk1LQ": {}, "Uv0A2PMy6conRlBN": {}}, "party_id": "E8IUM2cPri0G6V8z", "party_members": [{"extra_attributes": {"hEVzvYTMuxRxvXCM": {}, "VZ7ygsfFXakJUCXT": {}, "mFgFGjLlp6yp96Ux": {}}, "user_id": "n1ynKN4ZF2NX5S31"}, {"extra_attributes": {"gFSWYyXnqKXqx6Do": {}, "AJNWc7jj3NFlxMeg": {}, "TQeSc76fkboJaTZy": {}}, "user_id": "pz3nIzVraWZsXMtf"}, {"extra_attributes": {"hzMx7WATezrlLmJN": {}, "XK0QsAfFP9rmqAIU": {}, "YEaPnldziO8akB6M": {}}, "user_id": "fJdNSDZiMjHXlAam"}], "ticket_created_at": 0, "ticket_id": "QaFvh2E974MX9NVt"}, {"first_ticket_created_at": 20, "party_attributes": {"2s2clrtrtSXJ3gbn": {}, "itLht0upAXf2miFk": {}, "Ti1R9awA2myYARdN": {}}, "party_id": "dgBlYyr8Y68S9Bbb", "party_members": [{"extra_attributes": {"u4mStUmec07baBaX": {}, "2gyWde3ICYSm1gQw": {}, "Eoa3DQNNq7eCmHvb": {}}, "user_id": "Expkq53Nk7CkZI42"}, {"extra_attributes": {"iRw2WQq9VL4Fi9sd": {}, "CABG1FvAPTpxeOSX": {}, "yKg0NvlSghoYCUma": {}}, "user_id": "LDal6P64iik9BxLx"}, {"extra_attributes": {"Y0AbNWM7UP8cjb4s": {}, "yTxlak5lUUTfYVQK": {}, "87RrdfKxITtaVKQL": {}}, "user_id": "Ud5WyTEbuoQl0p1S"}], "ticket_created_at": 90, "ticket_id": "Dcf9CES2CsIP7TUG"}]}, {"matching_parties": [{"first_ticket_created_at": 93, "party_attributes": {"8BduOjgVGmYUvE1R": {}, "Z0M92H4t41KNzH5N": {}, "NhDAluF1S3idr1vW": {}}, "party_id": "L6LMpmnqtCvjAkxI", "party_members": [{"extra_attributes": {"ARk8FggmNwFwt2sX": {}, "GUkdnxhqAJx0yO3k": {}, "EG4ywS53XyJUtu4X": {}}, "user_id": "W0o8M4opM4KffCR2"}, {"extra_attributes": {"DLbT8T40VYJcDrF2": {}, "WpS4FFTBTlpK0EMo": {}, "L7wqYPWm4rmS6RGO": {}}, "user_id": "o2APwOTXAd87RPLp"}, {"extra_attributes": {"PlNpaLqpkam0dn4Y": {}, "dgWdTfp9wSmXnhKR": {}, "cpZ9AOBiKXN75TvP": {}}, "user_id": "eTog7gZZQdrVs84C"}], "ticket_created_at": 31, "ticket_id": "JdI0O64sI1orT80I"}, {"first_ticket_created_at": 93, "party_attributes": {"36tPOGWxxNWvA9qg": {}, "oAfsWYJbgVBGMFTz": {}, "DXdVbquJ7qu9e6yf": {}}, "party_id": "3iX5Wd734lnEDY8O", "party_members": [{"extra_attributes": {"sZV51HPHy21eFbAT": {}, "PdWl7Pt8BL47Ibq9": {}, "klCNcSw8S6XIeZrk": {}}, "user_id": "kV2UYvh1hVSmwwiC"}, {"extra_attributes": {"O3eziCh74AhNx60E": {}, "2wT6151dzIkxjbRX": {}, "8FClIeeNkPpru43K": {}}, "user_id": "dltjLLCFQP2iy21n"}, {"extra_attributes": {"58DzjWs6uWGYVREx": {}, "4Iih6Pz4hXfNUznp": {}, "n93CEkNeYLG9U9uY": {}}, "user_id": "88RhkMfNDOvmVP30"}], "ticket_created_at": 76, "ticket_id": "HgQK9Md6i4RZUgI1"}, {"first_ticket_created_at": 15, "party_attributes": {"hQqH61z5a40o2UpW": {}, "jf2Q4vwC4QQyPRLI": {}, "0BApVeLFCC8HufJS": {}}, "party_id": "icgTJ7vQ6VsSkmdQ", "party_members": [{"extra_attributes": {"scDwerB0hesWtKMK": {}, "6KuDCXZYh4iK0ge5": {}, "Tx91PVEOJf4PIFfX": {}}, "user_id": "5842VxepLHv2ZTTB"}, {"extra_attributes": {"iaCjmcxZlKFJwuEk": {}, "72F62RfYYKdHTF2l": {}, "bNvLd4KOaeJaMv1N": {}}, "user_id": "rMOKSmXecOGlad5v"}, {"extra_attributes": {"FxY5vp5ETXdaDt5a": {}, "eFWGPBm2Q1f2vBEK": {}, "UjkxPBa6iipNSnkg": {}}, "user_id": "gU5Xr5R9czc7tobg"}], "ticket_created_at": 95, "ticket_id": "a5Z4KgoqhC7diHMn"}]}], "namespace": "8GrIGErPpTOyhDbO", "party_attributes": {"BXaFORjISrPiLPnZ": {}, "HAXZRZYwqpSInhZf": {}, "uiIUvwitwnsiZBD1": {}}, "party_id": "pkJYTKvlqwEeqd76", "queued_at": 74, "region": "6zt7cZPk6PEDOTiM", "server_name": "jZHSzx4fY0P6xWm5", "status": "8b7rJkXJVDZhMUUw", "ticket_id": "vdo6rYYvFl4UIyLC", "updated_at": "1973-12-02T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "v4xFJNMI467mBSv0"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'mt9T1p3cOQpNAthh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 30, "userID": "kmzxHUGQdBCI6zeJ", "weight": 0.11234251890259683}' \
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
    --matchIDs 'fNsgWHQsxuNaPeQs' \
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
    --strategy 'KaRgtJ4wYSphUr0G' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'DwIRGnUpulSI4931' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'wCoZI71HMkqDQrsd' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "vixC3CPlq3IKQ8qt", "description": "EcJwzGBMecnxxdJe", "findMatchTimeoutSeconds": 43, "joinable": true, "max_delay_ms": 25, "region_expansion_range_ms": 41, "region_expansion_rate_ms": 8, "region_latency_initial_range_ms": 71, "region_latency_max_ms": 1, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 43, "min": 11, "name": "36FDiFcDM7zusTYL"}, {"max": 47, "min": 90, "name": "DKM6Q1n4G8Wc67Og"}, {"max": 33, "min": 57, "name": "19oqx6y7CDuLSuYl"}], [{"max": 26, "min": 10, "name": "w3U5meL00fF3LfgB"}, {"max": 91, "min": 21, "name": "S8BHYDJ5tsYWmhm5"}, {"max": 95, "min": 19, "name": "6wO65VmfzBAsJ8gg"}], [{"max": 56, "min": 36, "name": "pNnj7BKuzJ3BZsuL"}, {"max": 62, "min": 41, "name": "mz1ZlpIMCw9Loguk"}, {"max": 27, "min": 41, "name": "jIcv6ywDNgfieK45"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 59, "role_flexing_second": 71}, "maxNumber": 33, "minNumber": 39, "playerMaxNumber": 29, "playerMinNumber": 93}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 67, "min": 61, "name": "CGVjeI0kU3ilIBcZ"}, {"max": 17, "min": 72, "name": "PAGczihLhwYMpmpq"}, {"max": 81, "min": 83, "name": "o8lipN9Y4YlxkbAH"}], [{"max": 12, "min": 94, "name": "qg3R8hC6T6IoKScq"}, {"max": 17, "min": 66, "name": "eRXPEWRd4WZalpns"}, {"max": 99, "min": 44, "name": "qcdWcdTV7lsXWHbz"}], [{"max": 52, "min": 68, "name": "rbfHhIPcFhLFpXcz"}, {"max": 32, "min": 6, "name": "HqdhgIRkmeYnInXh"}, {"max": 16, "min": 57, "name": "HUYUZ1pIeSYIlwCJ"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 30, "role_flexing_second": 48}, "duration": 59, "max_number": 89, "min_number": 35, "player_max_number": 19, "player_min_number": 21}, {"combination": {"alliances": [[{"max": 39, "min": 77, "name": "YWa2cGUOyhbEAhMY"}, {"max": 48, "min": 95, "name": "xfRsMgekjVvN9p0G"}, {"max": 52, "min": 55, "name": "rDkbg0x7RW7XFme1"}], [{"max": 52, "min": 1, "name": "70q6ya3FvnRbhnIL"}, {"max": 83, "min": 48, "name": "1KvtwsHANjttrT2C"}, {"max": 12, "min": 66, "name": "MvvlzPgp7EbQraPN"}], [{"max": 85, "min": 48, "name": "C1NPj79Jd8x2rl2y"}, {"max": 51, "min": 23, "name": "atdgz25IEzWNVINC"}, {"max": 81, "min": 81, "name": "jSdFVnjWF9r4U9R2"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 48, "role_flexing_second": 75}, "duration": 61, "max_number": 85, "min_number": 45, "player_max_number": 84, "player_min_number": 28}, {"combination": {"alliances": [[{"max": 32, "min": 68, "name": "5OapRfa08hRbFVwb"}, {"max": 88, "min": 63, "name": "lFOy1pajtdo0oVFQ"}, {"max": 45, "min": 56, "name": "oJE73lJY7fiX0crV"}], [{"max": 93, "min": 67, "name": "Gy7H41rPIpNp4eFf"}, {"max": 24, "min": 68, "name": "bK4v1zK8iec0XYmb"}, {"max": 93, "min": 94, "name": "Z5DqaI12Yu4ifkX8"}], [{"max": 89, "min": 97, "name": "w1r5lJVY8FNV3zuB"}, {"max": 92, "min": 84, "name": "gowOjWh7Hms5p4hk"}, {"max": 65, "min": 73, "name": "gb9PqOyMFLz1nnEs"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 54, "role_flexing_second": 69}, "duration": 21, "max_number": 25, "min_number": 100, "player_max_number": 29, "player_min_number": 86}], "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 23, "flex_flat_step_range": 69, "flex_immunity_count": 73, "flex_range_max": 7, "flex_rate_ms": 8, "flex_step_max": 45, "force_authority_match": false, "initial_step_range": 98, "mmr_max": 49, "mmr_mean": 85, "mmr_min": 32, "mmr_std_dev": 5, "override_mmr_data": true, "use_bucket_mmr": false, "use_flat_flex_step": false}, "flexingRules": [{"attribute": "lgJxLPwDkyisFUC8", "criteria": "KEpCHy5rPlUYIPMr", "duration": 90, "reference": 0.5202368119887166}, {"attribute": "jdMJWOA90MSeC1zZ", "criteria": "3CagKQrNBGkstZb2", "duration": 99, "reference": 0.6668464795714149}, {"attribute": "YpUGejB2fvVHMz2E", "criteria": "95nkoGfPSKfHYWfd", "duration": 15, "reference": 0.8950356914607438}], "match_options": {"options": [{"name": "HQtOLosLIOtLhkqv", "type": "iE1U8mC52wNTAfVV"}, {"name": "PuPjJ2jx7xCMdwhs", "type": "KLgpD34h3NfpQSys"}, {"name": "KAvPPlPZPGjn6E8r", "type": "G55T3ij4pRH0ZCKH"}]}, "matchingRules": [{"attribute": "34bi2Fr2EqCYGXr5", "criteria": "gIfiNhL8TvvaGiJb", "reference": 0.7396606273034815}, {"attribute": "8DKAki20MPXeUFqy", "criteria": "9l9Uix75ZCO63NsG", "reference": 0.5566080671770336}, {"attribute": "jAR3bX9qhYXBwIvp", "criteria": "B3Q9G6aLspuJJBTs", "reference": 0.7466260792258674}], "sub_game_modes": {}, "use_newest_ticket_for_flexing": false}, "sessionQueueTimeoutSeconds": 24, "socialMatchmaking": true, "ticket_observability_enable": false, "use_sub_gamemode": false}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
samples/cli/sample-apps Matchmaking cleanAllMocks \
    --channelName 'etSqsselVxeggf1N' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
samples/cli/sample-apps Matchmaking getAllMockMatches \
    --channelName 'ONwogIVaiaK6JI3u' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
samples/cli/sample-apps Matchmaking getMockMatchesByTimestamp \
    --channelName 'PI1LCtsIZRCqy8XP' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 51}' \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
samples/cli/sample-apps Matchmaking getAllMockTickets \
    --channelName 'Oct6o9zg63kJXSCQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
samples/cli/sample-apps Matchmaking createMockTickets \
    --channelName 'muTKbotB4Zw0H4sC' \
    --namespace $AB_NAMESPACE \
    --body '{"attribute_name": "zTiUytuGQYZYzuCs", "count": 22, "mmrMax": 0.04081409783191159, "mmrMean": 0.10381456753604468, "mmrMin": 0.9876164657039217, "mmrStdDev": 0.6276348525879222}' \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
samples/cli/sample-apps Matchmaking bulkCreateMockTickets \
    --channelName '88NpgJ84ii0uAgrb' \
    --namespace $AB_NAMESPACE \
    --body '[{"first_ticket_created_at": 31, "party_attributes": {"CDtHaJMjXiRimlbz": {}, "XSUKPo5L3joCTjib": {}, "xee8wMxlgaOovR0P": {}}, "party_id": "1DXY7m7tJMRMPkP0", "party_members": [{"extra_attributes": {"B1YUK5vC6KRV31Ha": {}, "tACU1HN1EORvDszh": {}, "h0jGSGaMgTtd1pKh": {}}, "user_id": "5HrWRUOUSS5e3Vf8"}, {"extra_attributes": {"MWkPF94mJwQJKXc4": {}, "x1l6SMHAzIAq9fyj": {}, "LGPc1tkC5fSjwOi5": {}}, "user_id": "EFRwUdyhwsNyZ5lZ"}, {"extra_attributes": {"Q0hGi3jPjM8wOXvZ": {}, "1XX8ECwmqE5blDNu": {}, "wNzFvVIKgCRr7qoW": {}}, "user_id": "hRvh0hCJqb1gITiT"}], "ticket_created_at": 86, "ticket_id": "8kiSS102DTu0AGXG"}, {"first_ticket_created_at": 82, "party_attributes": {"Jghp1PEwRXV7FPWE": {}, "PHdC8aSI4LXjhPH8": {}, "4qDhE8lS65aYLc0v": {}}, "party_id": "xz6HzJAMlH6uumPi", "party_members": [{"extra_attributes": {"vw7FhIUh93uAjOEM": {}, "Q3O7wgtkB1Y8sLZI": {}, "4TIh75GF7wp2JqRp": {}}, "user_id": "A1mGO2Cx4pCV6RO4"}, {"extra_attributes": {"7f77duhIguM5zNwH": {}, "vViJzmIOHp4sUr7r": {}, "UKOHMFPyLFFryMj8": {}}, "user_id": "8mBa7Z8efjIaNFKq"}, {"extra_attributes": {"uiClHV3dXthohd8Y": {}, "byVcnIeG1HNBDX8E": {}, "PCTVo1NH1HEcpVUo": {}}, "user_id": "jlbm2m7cUWMFYzm4"}], "ticket_created_at": 27, "ticket_id": "ebYFYLz2yNf36L7R"}, {"first_ticket_created_at": 69, "party_attributes": {"3MF7fvCeeFpBc9SG": {}, "scXDPbA6xCsMPOkj": {}, "6wn2u3drUgNns7C1": {}}, "party_id": "fjpoKSJmV94aBpfw", "party_members": [{"extra_attributes": {"9bsBeOnDPuYRDExD": {}, "UEs4AV7iOv9y5HE9": {}, "LRaaOxeWfIf8yg7f": {}}, "user_id": "roJlD7iy2ISRxLIi"}, {"extra_attributes": {"nbBHFzUSdZdAQquy": {}, "96ILKyO12FsStegS": {}, "R7BaNEo0SQLMBBYb": {}}, "user_id": "z9JgMP7boJu4nTQy"}, {"extra_attributes": {"KcBxaHUPIQvotHQY": {}, "8zzMnSq6KsMZKpJB": {}, "vhZqdNwtyAY6cNSz": {}}, "user_id": "jrL5L8A1rFztVZPj"}], "ticket_created_at": 42, "ticket_id": "nE2ae3Fpr3clT6cc"}]' \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
samples/cli/sample-apps Matchmaking getMockTicketsByTimestamp \
    --channelName 'EueaS8Neus0sZeCi' \
    --namespace $AB_NAMESPACE \
    --body '{"timestamp_after": 31}' \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'JwoHjzgmEGErdqUB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'Bd3CgTsBH35f4Cct' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'QYKOAkrCYb5ZHwoN' \
    --matchID 'Ch4v6LpaGQarpO7p' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["QVEAmC6NU1ha43qa", "PPKU9SVIzHTAAlnE", "jFlJZ7cVj5A69Jjd"], "party_id": "9S9Qv0sZsAskapI6", "user_id": "Gqp5bzFSI5iP7IBR"}' \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'HyoQnHGP5Crv1Mhn' \
    --matchID 'nYOgU4xF4X2hL1W1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName '7nu7MVFmkChtuuPa' \
    --matchID 'YeolmBsoZmaPzZFc' \
    --namespace $AB_NAMESPACE \
    --userID '3bHWOdCgV6babMSt' \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
samples/cli/sample-apps Matchmaking getStatData \
    --channelName 'TZQCVXjo4gy0PHU2' \
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
    --channelName 'tSMfPi8WlRMGxNR3' \
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