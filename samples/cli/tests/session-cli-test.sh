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
echo "1..56"

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
samples/cli/sample-apps Session getHealthcheckInfo \
    > test.out 2>&1
eval_tap $? 2 'GetHealthcheckInfo' test.out

#- 3 GetHealthcheckInfoV1
samples/cli/sample-apps Session getHealthcheckInfoV1 \
    > test.out 2>&1
eval_tap $? 3 'GetHealthcheckInfoV1' test.out

#- 4 AdminGetDSMCConfigurationDefault
samples/cli/sample-apps Session adminGetDSMCConfigurationDefault \
    > test.out 2>&1
eval_tap $? 4 'AdminGetDSMCConfigurationDefault' test.out

#- 5 AdminGetConfigurationAlertV1
samples/cli/sample-apps Session adminGetConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetConfigurationAlertV1' test.out

#- 6 AdminUpdateConfigurationAlertV1
samples/cli/sample-apps Session adminUpdateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 31}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateConfigurationAlertV1' test.out

#- 7 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 87}' \
    > test.out 2>&1
eval_tap $? 7 'AdminCreateConfigurationAlertV1' test.out

#- 8 AdminDeleteConfigurationAlertV1
samples/cli/sample-apps Session adminDeleteConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteConfigurationAlertV1' test.out

#- 9 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 42, "PSNSupportedPlatforms": ["8Ual8dxmxG5QrYzD", "SKYM0IyKPc4ufUXt", "IcAr662ydAPEixqn"], "SessionTitle": "QluVoheNSrRJgtGV", "ShouldSync": false, "XboxServiceConfigID": "YWxYjMicUGr1ASju", "XboxSessionTemplateName": "NeNDIPFCtiurjh2V"}, "clientVersion": "qyMvSLCFFeqbxudL", "deployment": "vGjonQeeZ28dLM3o", "dsSource": "xPNq01X2huDesFzs", "fallbackClaimKeys": ["JMe18DutKA3BCGlU", "iNuHerqTbOCZzbXq", "WfpGrP4VxHjbTXrk"], "inactiveTimeout": 31, "inviteTimeout": 94, "joinability": "EvtS6KKiFs7JGCJc", "maxActiveSessions": 98, "maxPlayers": 3, "minPlayers": 67, "name": "0ePs7BNrUhtq9Ng1", "persistent": true, "preferredClaimKeys": ["5Dx1eLv9cSzLWyeF", "1pe7GAB0LrZo9k9V", "5GlV9ryttr7cyhWu"], "requestedRegions": ["0w32lOJ0c0PSkfLH", "O1txa3xGtuzzg8Fw", "sMhWHHzgl4HYzXkn"], "textChat": false, "type": "sUc0rlzjHCKfN7hT"}' \
    > test.out 2>&1
eval_tap $? 9 'AdminCreateConfigurationTemplateV1' test.out

#- 10 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 10 'AdminGetAllConfigurationTemplatesV1' test.out

#- 11 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'xjABDxqPdwPNn9jY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetConfigurationTemplateV1' test.out

#- 12 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'y6KuOskm9pLbYhtD' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 51, "PSNSupportedPlatforms": ["bKwDET5DNF3Exjcg", "x8K2nY1oilRxt2Vk", "Q5RfKwo4j8WmlAgt"], "SessionTitle": "GtUZOeZu9D6BupXj", "ShouldSync": false, "XboxServiceConfigID": "mz0U0qam1QDmRhOF", "XboxSessionTemplateName": "sDNYMJl9un1Akato"}, "clientVersion": "iCcWEXI6BPFS4J48", "deployment": "Xqzl8jKTVXoKA9DY", "dsSource": "6NLlFIxfRMk71Sf5", "fallbackClaimKeys": ["S9c0ra7BvaFRHSJ6", "hxshxVN5nobzHsIz", "Cb17urFCIpKhRe02"], "inactiveTimeout": 98, "inviteTimeout": 46, "joinability": "Toi5oSuynmeIzzLK", "maxActiveSessions": 39, "maxPlayers": 15, "minPlayers": 17, "name": "59BqaKvUvqhcVzX8", "persistent": false, "preferredClaimKeys": ["6ApkXZ9Xi1ylG4k3", "MUqfOYeHiKhwWzpU", "MqHiprifAaTuqZV8"], "requestedRegions": ["coAzQE3CQarnGAMw", "nx2obezieuWHYRff", "cIqJ036ohwoElROp"], "textChat": false, "type": "3kPgw7sm5scIDEUS"}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationTemplateV1' test.out

#- 13 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'h95U59vzwTlNKspU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteConfigurationTemplateV1' test.out

#- 14 AdminGetDSMCConfiguration
samples/cli/sample-apps Session adminGetDSMCConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminGetDSMCConfiguration' test.out

#- 15 AdminSyncDSMCConfiguration
samples/cli/sample-apps Session adminSyncDSMCConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'AdminSyncDSMCConfiguration' test.out

#- 16 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName 'drwNESoUET3T6O0k' \
    --dsPodName 'KAnRMgncBWgGC9xw' \
    --fromTime 'VMjCEEDRsqCNkVOQ' \
    --gameMode 'vN1VpXehTt8IARBj' \
    --isPersistent 'HiBIe5wzcCpE1VbA' \
    --isSoftDeleted 'wrcTAYj4PE5H5zHU' \
    --joinability 'PMA7tixOqQzKgVdR' \
    --limit '93' \
    --matchPool 'uewSH1p7wpvcwt2S' \
    --memberID 'swsYO2ioPho9vjEa' \
    --offset '83' \
    --order 'N5kHuz9gnnnC5Zqw' \
    --orderBy '4aJ6Y0oQzOdYg96c' \
    --sessionID 't0NTUsK4E6juMWaT' \
    --status 'xjRgv2jMF7fM52WC' \
    --statusV2 'RZsihJ7kTVgM8eAk' \
    --toTime 'DAtX7F0TZmmN1fRX' \
    > test.out 2>&1
eval_tap $? 16 'AdminQueryGameSessions' test.out

#- 17 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["mblHVIN5fOvKiXOk", "trRIjNjq5NS682dY", "0iYY1FQcJJjHbLuE"]}' \
    > test.out 2>&1
eval_tap $? 17 'AdminDeleteBulkGameSessions' test.out

#- 18 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'C2BjIfEp8BMy1XTh' \
    --namespace $AB_NAMESPACE \
    --sessionId 'B9y6d52Pdgg39F4s' \
    --statusType 'Wdezam0QHXEkTpry' \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateGameSessionMember' test.out

#- 19 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --joinability 'qpsvVVPMsRIybHe9' \
    --key 'Ay2mn7qTQMOx7m9E' \
    --leaderID 'C9MWV6QWiFMkhONM' \
    --limit '91' \
    --memberID '3Qtq7SBm5XbBVZ4B' \
    --memberStatus 'OeJU0qf2gMs8NoVL' \
    --offset '52' \
    --order 'q4nSAYYo1usqgsUN' \
    --orderBy 'LWHXWqsHAMqIwjtT' \
    --partyID 'VAvkB8UrPKhPpZh8' \
    --value 'PHN9q9pu00hpW43n' \
    > test.out 2>&1
eval_tap $? 19 'AdminQueryParties' test.out

#- 20 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'DeKBUAryKCP9F6NV' \
    > test.out 2>&1
eval_tap $? 20 'AdminQueryPlayerAttributes' test.out

#- 21 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'Zzsas0gL2ALqirld' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetPlayerAttributes' test.out

#- 22 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"M2gwKFFFIIcSiKvg": {}, "v8hNqEaLbXlUevt9": {}, "6XrUxipGw9KBggJK": {}}, "backfillTicketID": "MkXsT1HPTu5NUDoN", "clientVersion": "YeypvVLfsHQx4GAw", "configurationName": "nGDB1ny2O8Tw3XWJ", "deployment": "34u8UltjGDOOaQGC", "dsSource": "5GMcMODm4VKF1KUB", "fallbackClaimKeys": ["LRmveH33krtYSSpM", "tpihP12Vl5CTQMv6", "QpmgTXZA80gvAIV3"], "inactiveTimeout": 26, "inviteTimeout": 22, "joinability": "SCxafstgW9IjTN4v", "matchPool": "B729YJGBwDlscp07", "maxPlayers": 52, "minPlayers": 26, "preferredClaimKeys": ["xU9fMwnSO5SjRUlS", "hCHdKASANO99yRjm", "rMvKU7gPHKCV3jW5"], "requestedRegions": ["utQ5hcGgvtTg7vhF", "ao5XIiYoos7LRiwV", "ELPv663bVy5jf79Y"], "serverName": "teKzYYcUQgevax28", "teams": [{"UserIDs": ["9Y76LgGOJWneBdQ9", "cPOMNXLSBkyumrB4", "im9fcokjAcyuKngv"], "parties": [{"partyID": "xgOnFfVBsLd5sql6", "userIDs": ["ZLUduHGFaou1qzFl", "O0lnoU75oBZQlYmY", "vYkcK8WBBFUdHiT5"]}, {"partyID": "fMHG3ogPoyuHF3Nj", "userIDs": ["cdK1xdoF0VLhkibg", "sN8wz3oPsSi84CgC", "gckKmlIbCLM8FtEt"]}, {"partyID": "fiFfEq5TqLk4kvLz", "userIDs": ["qzVAPgWjYfs4sy8B", "v2WXJCknAjDCbUUT", "DbJnpXBd7IzRvUgM"]}]}, {"UserIDs": ["BtoNmqTPM7Y1LIA0", "39iqNA3HlWdAdMEa", "arolLkvQbyJxxlv1"], "parties": [{"partyID": "1VpZ78TKQbJzvrml", "userIDs": ["SdlLDNYw0VJQIr33", "dGVYErSy7XMBXwap", "pP2PAwWU9RMXGDm6"]}, {"partyID": "GwSLlBjJRjYwKjDS", "userIDs": ["qyZMmjg9qEQSCCYD", "UNYIIe6ZxeQENiTA", "8utDgw3s9B7Lk23T"]}, {"partyID": "3kmYGWNWnwThCZmE", "userIDs": ["jGvdyMkRKdMyufA5", "s7pHcmNDwxL8ZoSH", "5BoJ2iJx4VJjHmtV"]}]}, {"UserIDs": ["o4EcqL3CQf4kL9kt", "cD7xVPBfD6lN7tHr", "UaxfmQxDrmz5iGIF"], "parties": [{"partyID": "tTPBMgvhn5WlKpNX", "userIDs": ["ry1diAMTVagMNEc2", "RGfcFhDgChCttgyw", "than2DZtxv7vvbtg"]}, {"partyID": "WkDCSJVkZPQHqxdD", "userIDs": ["ugZPgnPl9cw3Wkpo", "aVaqTx26LEnBnp2H", "76pWkdr9mrmK8pi5"]}, {"partyID": "BP1DOJRcZBCHxykb", "userIDs": ["0eLdGCl2bqW8ikMv", "gOvQbjkgtosn5hcK", "S7LyRhLAiUUOeziJ"]}]}], "textChat": false, "ticketIDs": ["s934fIr30ThJfZs0", "wK4FMd73x4aWT2wM", "qFRdnbzfmTkJB5Ne"], "type": "IPN9vfM29B9Y0Yor"}' \
    > test.out 2>&1
eval_tap $? 22 'CreateGameSession' test.out

#- 23 PublicQueryGameSessions
samples/cli/sample-apps Session publicQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"f7FLXfX3X6731F0Q": {}, "f773OMcMvS0nuMnZ": {}, "GoSq0VJCnCgE2ZPQ": {}}' \
    > test.out 2>&1
eval_tap $? 23 'PublicQueryGameSessions' test.out

#- 24 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "7jtwj11P3106j4mO"}' \
    > test.out 2>&1
eval_tap $? 24 'PublicSessionJoinCode' test.out

#- 25 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'Ps8pxRcvHifo3nhA' \
    > test.out 2>&1
eval_tap $? 25 'GetGameSessionByPodName' test.out

#- 26 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'jkVvDvh0rwkN94yc' \
    > test.out 2>&1
eval_tap $? 26 'GetGameSession' test.out

#- 27 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '7wMHTsSgysrEBELk' \
    --body '{"attributes": {"kwf3q0810WX5v3At": {}, "FJz9leg1OKFHKW4t": {}, "kcdqmFqjgW3A5r1E": {}}, "backfillTicketID": "RtZraVjMvMEGZijE", "clientVersion": "AVH1RK5EZ3jDpIK9", "deployment": "kaR0f939J2d30XEu", "fallbackClaimKeys": ["0CLCztaOywKp0f9s", "GGW9yZkaZJCOxKjb", "e5SgB4JDLa2GZmf7"], "inactiveTimeout": 88, "inviteTimeout": 33, "joinability": "h0uFFvgAAo5akgCs", "matchPool": "i9WCRUsu0gCGRNiT", "maxPlayers": 68, "minPlayers": 26, "preferredClaimKeys": ["IOaaH0cXHNHQQEKG", "AfShoNz53eDulZBI", "XNrpAZjiOAQJnDw9"], "requestedRegions": ["ZhqZgaqpubz0ItUT", "iQ0jyUkjgMP2U2SM", "FB9EGzVlOWOVwIek"], "teams": [{"UserIDs": ["DMu5usUecwzQU4uJ", "UhDSQL0kfLk8Hokg", "PMY8F1cdvOvkYteB"], "parties": [{"partyID": "SECHcJNpFpPTwoDj", "userIDs": ["7qIhLGp9lYnAT9ea", "uKgw8M3uJOtlkdBc", "AQtVTNesnE8NlVw3"]}, {"partyID": "S3w3D9lktaWFNal5", "userIDs": ["1zLD3t4fzT5Tc6Ie", "zEPQS0KNDTWK5CgJ", "yoEOH1Fvmkbids5B"]}, {"partyID": "QRQrKyRY7p4ojNV3", "userIDs": ["PoeoMu7eC5khkI3V", "PO8aYL5W6Wfb8Ni0", "cxhbkK8hN6JWNQgF"]}]}, {"UserIDs": ["ZPSoKPf70vZJY37q", "dhq3Uh0VfkRxFQjy", "9hS2krCXpE7T6a3f"], "parties": [{"partyID": "1ATyOEED2bBMXjcH", "userIDs": ["f2bozomspYEgIPiU", "O5UqykSRUTUgjri7", "2eBwshA8B09SIFSt"]}, {"partyID": "KsQLWTUW3FB2mng1", "userIDs": ["gbKpVjPjAvXNg6F2", "bCnkXhXGC7qlGp8r", "ZPDKzAyMlX7oyxq1"]}, {"partyID": "hhBls9deGP6P66qD", "userIDs": ["nxDX8orEAb5HCmFv", "2L9nNYTxDOrSzAtA", "Ecaus4pHUh3lcR9e"]}]}, {"UserIDs": ["lR5N9mfHdtoXl8eM", "MHthJbTPMDjR8fxt", "YiaP5bP5oog6ekVh"], "parties": [{"partyID": "gjhVXUQux42uleqC", "userIDs": ["MXRRzqarmFXBDz41", "9H11MFMD0OD24oAM", "0ohWdL0ddYLPlYhP"]}, {"partyID": "VmOOWee4SB6Y35zH", "userIDs": ["umRFaoTEVBlgPFSE", "L6S50KgRm79zpPko", "IKtD7smnYvMyrfSS"]}, {"partyID": "N1ba4yfQp2H3kMQE", "userIDs": ["AWUjxESeiP8Suu5M", "S6sGQxx5auqnfl7O", "wj6pn4uNJ6VZwvOV"]}]}], "ticketIDs": ["RI97ja0tRRCT8wVQ", "f0AEVMSP6gznyvh1", "SZLGUq5JjxnVhG9N"], "type": "uigjgEly9rWkZBgH", "version": 61}' \
    > test.out 2>&1
eval_tap $? 27 'UpdateGameSession' test.out

#- 28 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'LJPJWUt8buMGtBQF' \
    > test.out 2>&1
eval_tap $? 28 'DeleteGameSession' test.out

#- 29 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'QOIU3K0IIwHVS77r' \
    --body '{"attributes": {"P7UNYME6uzBiQemH": {}, "KryEBdQM5LNCaYsA": {}, "fYHVuLD71rAQqtog": {}}, "backfillTicketID": "fMXFduKqDeWJe9DS", "clientVersion": "f8Uxqr53rqqccJHm", "deployment": "445pApJ9tCsdq6cB", "fallbackClaimKeys": ["XbWTex1WfmVdBFwC", "TeWIDaPhaUhfJqHE", "2CNuzFJdnQQp4t8E"], "inactiveTimeout": 96, "inviteTimeout": 34, "joinability": "PPLZK9bkQ9Pa9rMn", "matchPool": "dUEkAsiSJuW22noY", "maxPlayers": 93, "minPlayers": 47, "preferredClaimKeys": ["tBkKwmx8OQDbdgPw", "dfoc37yDkX7fe3h6", "jvlwPG4uuQPaTjXv"], "requestedRegions": ["u1DqShvtnFrW7OHt", "7CYdXPp0k2BnY3pH", "3UDGg1EZp9JiJoUA"], "teams": [{"UserIDs": ["UVnLRS9pYaG5h0Rr", "mWVQq8WQrgbWKBBn", "RGCDQ445V5wr3Kxz"], "parties": [{"partyID": "pZZ8trUBP2cVktPh", "userIDs": ["KONZtCmv6F49MbKI", "SeoGdgvzjQthAezF", "2tPjXQ8SyD7TvwbK"]}, {"partyID": "bIhpu3gff7hkSDrr", "userIDs": ["ZX9Lnt8IblqsrMRk", "lXSbjaX5nc86joxY", "f35plvXKllvgpLqJ"]}, {"partyID": "9hsmnFUQ1Zgw9WIg", "userIDs": ["cdH6kjHJP0sYYLid", "i4q96Cu1GO9aYxoh", "K8iLM093RFU2gXs7"]}]}, {"UserIDs": ["vwcjcQR5ACkpgRVE", "w6agnQFnDHGGSoDx", "aVVUNxQwUBFIaF0f"], "parties": [{"partyID": "bBEupBiZ9I6Fu0gr", "userIDs": ["Yb5BwQKTpthLFKD6", "5GiwPHV2XkOI1Fan", "kX82bPdn0r7CVS4M"]}, {"partyID": "GppUApnEPDga55yL", "userIDs": ["Md8rbmHUmiRefdAI", "D7VbWuuqaWc9p4RP", "L24EffXKZHedZXtj"]}, {"partyID": "X6NxnWDlSsuk67Kn", "userIDs": ["njpFJj8lVc9NWzsD", "xoI121XtCc2lwXdL", "RYPXv0gNbE0bcvwU"]}]}, {"UserIDs": ["KpT2x09xNawU6meb", "RafAKgMDBckO4Uc0", "fOK7wMfzFlVeokbR"], "parties": [{"partyID": "LezJBBY4CRtyLjwC", "userIDs": ["5lOknSWau9ieVONu", "WnEho3Zdqptcjs8m", "9Dv680OswMva6chk"]}, {"partyID": "1jOgrB0KI3U7JWGP", "userIDs": ["3HLan4Sv7LJsrR7O", "SQYvouIGMlyY4fh2", "hR9GeciE1F9PfS2P"]}, {"partyID": "GqKXjZXhaLmIHmmj", "userIDs": ["R1isrwilWEkgZ9U9", "EQCC4Sip83lm8F9J", "uBA0MdiuonZNjuUj"]}]}], "ticketIDs": ["fd8p9Gk7BRDsAXNq", "7tUq05nGofja0xSp", "1lbKn9mlxfEVscp4"], "type": "MYkfGGPRITL7rVjp", "version": 83}' \
    > test.out 2>&1
eval_tap $? 29 'PatchUpdateGameSession' test.out

#- 30 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'H8Q7n7rgkgJvvUON' \
    --body '{"backfillTicketID": "DiWytuGXnDnbuEt1"}' \
    > test.out 2>&1
eval_tap $? 30 'UpdateGameSessionBackfillTicketID' test.out

#- 31 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'rToulXqEwZEgMehT' \
    > test.out 2>&1
eval_tap $? 31 'GameSessionGenerateCode' test.out

#- 32 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'zuVAOZ9o8jA95msS' \
    > test.out 2>&1
eval_tap $? 32 'PublicRevokeGameSessionCode' test.out

#- 33 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'wt3ZRBr3Snw7P2eb' \
    --body '{"platformID": "vs01TUoUDRgiGuoh", "userID": "NlYwwezsllwOWm6Y"}' \
    > test.out 2>&1
eval_tap $? 33 'PublicGameSessionInvite' test.out

#- 34 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'lOkX1P7e7o3n6hHz' \
    > test.out 2>&1
eval_tap $? 34 'JoinGameSession' test.out

#- 35 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'UKXZlxhH3CmiTm6T' \
    > test.out 2>&1
eval_tap $? 35 'LeaveGameSession' test.out

#- 36 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'BUFSi6CIRTBgSJEa' \
    > test.out 2>&1
eval_tap $? 36 'PublicGameSessionReject' test.out

#- 37 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'oUcp3TJUviqvn0pS' \
    --body '{"additionalMembers": [{"partyID": "H31ew9AtvHMzJKva", "userIDs": ["lA9hsvKADxZoRQPQ", "uQppIqaB6BVOnGof", "uoSMw0Qeww385I2v"]}, {"partyID": "Xb8JDFKD7WGccEBs", "userIDs": ["irLIKIYowfpAxQ8o", "BPfHJv9RVWxChNLC", "jDO1mYfhhiLsiJBn"]}, {"partyID": "fJ8VliZipJGUHBwJ", "userIDs": ["SqO9OqG3pDShG1wE", "36XxrQuEqVOFSI9P", "D1atH7Q29snNaylu"]}], "proposedTeams": [{"UserIDs": ["PMkP1CrnyQcK9EF1", "4jcvtkbUu9WMFhn0", "5asrqhn9mkhz82ab"], "parties": [{"partyID": "1kEfmx1fhZUuCW6r", "userIDs": ["Ngtt6edjw3ZM4pbR", "5jlA6TSFIYZ0EEha", "jOXmdSkdEmlzr9Xw"]}, {"partyID": "skCabP4obY8H7HXJ", "userIDs": ["Hw9iYQBHcwlqNZd6", "6alZvV0GVgW5t2MT", "YnjIPyIJoPlbxo0R"]}, {"partyID": "bqPo1Kqz5g17FMar", "userIDs": ["1dg0FcTwZtepBQot", "xajpm3qS4uVfE5a5", "gOVtHMUtE5xZL5Ar"]}]}, {"UserIDs": ["zTF2uNBVnlkwCS6v", "oxiY4HcpwwwtnN5R", "JFKFYcJQEQskLHRx"], "parties": [{"partyID": "KPHAynCuvQzW12dA", "userIDs": ["wJZH7sTmE4MJt8uk", "qYcHx3wsrUzUkvW0", "5VaqNh4mnhwAPHMy"]}, {"partyID": "viDspvmk9riYGglA", "userIDs": ["i6D2DDYCMVj6MHQA", "EgKqdi0eFlDtFu5J", "NjQ5PSELlpOouQQr"]}, {"partyID": "tusHSlNKFZpX5R3t", "userIDs": ["G8fm1NB72ZRdZbou", "sT3n2PNmWgJfU7Rb", "gvYucFSm7V1uJGBN"]}]}, {"UserIDs": ["Yt9BUnU43OPLZkIK", "9VtM8G3uKdy69zn7", "obAYxQDVkDyiAvJQ"], "parties": [{"partyID": "SuNGme3RFRlw2yyX", "userIDs": ["xrNiV0R7ngPf6qto", "jrnl2iJVUP7crDM4", "zoly7vxs57UIG9JF"]}, {"partyID": "fJzUMnkiJJjB7DYF", "userIDs": ["EoPj2WsdQj1oPY6z", "JSPvDJXhKlm1Dvld", "LwYtNBVQ0zkUC37i"]}, {"partyID": "yGAakZKdQnrEkhHn", "userIDs": ["vjatibgC87QweQft", "zix3E1FG5ngjqkwj", "P5mz8lNhXdYhlKCK"]}]}], "version": 87}' \
    > test.out 2>&1
eval_tap $? 37 'AppendTeamGameSession' test.out

#- 38 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "EWe82pD7FkDXuz17"}' \
    > test.out 2>&1
eval_tap $? 38 'PublicPartyJoinCode' test.out

#- 39 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'mLpgBTmmFWFYTmsb' \
    > test.out 2>&1
eval_tap $? 39 'PublicGetParty' test.out

#- 40 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId '2uAE2TtAAFwqGgmo' \
    --body '{"attributes": {"8IaPrpEBq8PmBm7a": {}, "qH02qQyJFwRRviYb": {}, "QGTIe7mairfPsGKe": {}}, "inactiveTimeout": 7, "inviteTimeout": 26, "joinability": "ePk1Vk3jxoRa2VBH", "maxPlayers": 53, "minPlayers": 88, "type": "GoRsVq6XG9XEUInH", "version": 57}' \
    > test.out 2>&1
eval_tap $? 40 'PublicUpdateParty' test.out

#- 41 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'OLqdnIqErw75dKg6' \
    --body '{"attributes": {"rSPWlcLoVSOICPqa": {}, "Dwp445flrBXgDoN8": {}, "YGSMw6v4PNYai84n": {}}, "inactiveTimeout": 11, "inviteTimeout": 19, "joinability": "L2um7KTpAbMi3nMR", "maxPlayers": 32, "minPlayers": 5, "type": "5T9w6d9DIBsGNG0S", "version": 64}' \
    > test.out 2>&1
eval_tap $? 41 'PublicPatchUpdateParty' test.out

#- 42 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'l9TeydKxVWfFYUJW' \
    > test.out 2>&1
eval_tap $? 42 'PublicGeneratePartyCode' test.out

#- 43 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId '34d8pfNoJB7fOsku' \
    > test.out 2>&1
eval_tap $? 43 'PublicRevokePartyCode' test.out

#- 44 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'NQEo4MV3BIigVEvU' \
    --body '{"platformID": "7dhv5gc5KiVNlV1D", "userID": "PS2XFKf8Zp6rGMmR"}' \
    > test.out 2>&1
eval_tap $? 44 'PublicPartyInvite' test.out

#- 45 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'IhvOfKK0x5VfSAlG' \
    --body '{"leaderID": "W1owZgbA8bcDlnYT"}' \
    > test.out 2>&1
eval_tap $? 45 'PublicPromotePartyLeader' test.out

#- 46 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'Vigb7yVjVitFxmoN' \
    > test.out 2>&1
eval_tap $? 46 'PublicPartyJoin' test.out

#- 47 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'uGzGCUFbGrADn3FH' \
    > test.out 2>&1
eval_tap $? 47 'PublicPartyLeave' test.out

#- 48 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'bCngKMNXuHHRPC9p' \
    > test.out 2>&1
eval_tap $? 48 'PublicPartyReject' test.out

#- 49 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId '8rqpCVdb7HGOv2VG' \
    --userId 'jj64mNkyPq67jp00' \
    > test.out 2>&1
eval_tap $? 49 'PublicPartyKick' test.out

#- 50 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"m2cEXVNCjbnrwv69": {}, "Rn9bvym0rCzxmaWG": {}, "k1g38sZLSCWvAm37": {}}, "configurationName": "4HH7UytL8MLm7p7T", "inactiveTimeout": 86, "inviteTimeout": 43, "joinability": "A5QCYvf4V5MRYBiu", "maxPlayers": 1, "members": [{"ID": "NrvRBlCnQsF4Xgf8", "PlatformID": "0tuGKyVG2sa3dXMn", "PlatformUserID": "5BYH04iCpeuWPOWX"}, {"ID": "PSvTogxMvCyQaoiZ", "PlatformID": "Kvux3qOhfR2RqUCk", "PlatformUserID": "BE8DDZSgL0mqKijj"}, {"ID": "xukvr9SOofZINZSy", "PlatformID": "jVd667Ohcekwuxaw", "PlatformUserID": "Kq7KmyhvYPBQxKHn"}], "minPlayers": 42, "textChat": true, "type": "pgLkAPi5Cx6vgKuE"}' \
    > test.out 2>&1
eval_tap $? 50 'PublicCreateParty' test.out

#- 51 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["mCZ0Ztj7WQnMmJAc", "mUd2gsbgdKR14YLQ", "ch5MX1GBxxzXuPji"]}' \
    > test.out 2>&1
eval_tap $? 51 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 52 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'PublicGetPlayerAttributes' test.out

#- 53 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": true, "currentPlatform": "TOKOXN4jnjVw70Sf", "data": {"JM91ymKyRtKM5AoV": {}, "yUELtT7iWSEmmlX3": {}, "hTemKpO7VscutGL1": {}}, "platforms": [{"name": "u9lAImqGDw3wAGtO", "userID": "72QHdXL9Jv23gp3E"}, {"name": "R6gT0ftXKhrvHT7i", "userID": "uC375llfpQdFviR3"}, {"name": "l5XfjdLIwVaD77Da", "userID": "ckjeX7VEl9RGElAe"}], "roles": ["w8GtsVySzDK7V82p", "Ok3nSDro2kErCIUV", "HcIwjOJycmFqlPIL"]}' \
    > test.out 2>&1
eval_tap $? 53 'PublicStorePlayerAttributes' test.out

#- 54 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'PublicDeletePlayerAttributes' test.out

#- 55 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'hRj3wPRciv8cK73p' \
    --orderBy 'xXg5wy8S5xYRmeUi' \
    --status 'SBJtcv8l4fjsYgTf' \
    > test.out 2>&1
eval_tap $? 55 'PublicQueryMyGameSessions' test.out

#- 56 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'hwoNTIJfgyriChGb' \
    --orderBy 'pTUtTZMHaP5G0t7Y' \
    --status 'PA04nanKqlmNmP9M' \
    > test.out 2>&1
eval_tap $? 56 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE