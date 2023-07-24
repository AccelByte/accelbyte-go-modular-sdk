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
echo "1..60"

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
    --body '{"durationDays": 52}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateConfigurationAlertV1' test.out

#- 7 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 98}' \
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
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 76, "PSNSupportedPlatforms": ["d9YsSrjfUrBnYNza", "xxh2ZL3O9H3AcoaE", "FaXP5Ydzgbrdaa7E"], "SessionTitle": "ZlDOApdGZOY2nydz", "ShouldSync": true, "XboxServiceConfigID": "1IykOJlzWKJJFoti", "XboxSessionTemplateName": "Kz1QFl1R8SWGg3M6", "localizedSessionName": {"5Cn5LJp5Ruswj1m8": {}, "tuXgnS3NVK0p2XfZ": {}, "aDSrOSlkKwJaOVoc": {}}}, "PSNBaseUrl": "I9FCZdB7yAzunDpp", "autoJoin": true, "clientVersion": "dfBz9cUIYdPz2oWj", "deployment": "HieMvOZb2J7ZpGwk", "dsSource": "730QWYGDrGQjSyCj", "fallbackClaimKeys": ["pdpJ3XWSZtCL50l1", "hYBNYp9kz93233SX", "STt4rzQMlaksiR4T"], "inactiveTimeout": 83, "inviteTimeout": 74, "joinability": "prFASRXm3iwkPZYc", "maxActiveSessions": 13, "maxPlayers": 35, "minPlayers": 73, "name": "2cFE1T1u6oREVD4f", "persistent": true, "preferredClaimKeys": ["N8nlyiZfiRXfxuDA", "kggNVHWsAdgLIZV5", "eXHk4DrExgaMWKqB"], "requestedRegions": ["3BUhgcZZUNprcJMQ", "OsK3lpSUlSpUCpLH", "w45Z7OE7JyNftdMb"], "textChat": true, "tieTeamsSessionLifetime": false, "type": "drBviaPewQOgboxX"}' \
    > test.out 2>&1
eval_tap $? 9 'AdminCreateConfigurationTemplateV1' test.out

#- 10 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --name 'ye6eSEcKmA0PYN25' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 10 'AdminGetAllConfigurationTemplatesV1' test.out

#- 11 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'zhGmZoN4q0saCClU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetConfigurationTemplateV1' test.out

#- 12 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'mJs0DmsJ4oMsl4Ni' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 12, "PSNSupportedPlatforms": ["5APojLho5MTLsBeb", "x3UJl11dHS7seJef", "AVPAi24tDlkjnJIM"], "SessionTitle": "4kz44djZmgJmmhIn", "ShouldSync": true, "XboxServiceConfigID": "dm1wBqeq4HO7yIU7", "XboxSessionTemplateName": "EBPCo7ltM3SY4K6F", "localizedSessionName": {"M6gmDPEDiRTuFXNt": {}, "10wYmj3QVbwlzKF7": {}, "LO8MzxjaXH1tAKwy": {}}}, "PSNBaseUrl": "VHpBIcNr4zKviXhp", "autoJoin": false, "clientVersion": "x7r2VkLx2R7xzoKf", "deployment": "cBuVPHSKi5tvERef", "dsSource": "qcu8xUDaCXlr6YuI", "fallbackClaimKeys": ["0YqknTRujp9eYKMq", "I1SXF5H2Ms5IFq8r", "NuLBdib7WqOwJp3e"], "inactiveTimeout": 77, "inviteTimeout": 24, "joinability": "Q4pBkJpTueSrd55X", "maxActiveSessions": 22, "maxPlayers": 77, "minPlayers": 91, "name": "26c1dhHxKa0dKyD0", "persistent": true, "preferredClaimKeys": ["gHWki9wR5Nui2QDo", "B2crQUwErLX2IB7O", "iUd4I9PmdKY7iSG5"], "requestedRegions": ["D0UqHbGrgR0pyuSy", "2FH45Y1MuI3UBr3X", "7YQnC2HhIIIwq6l8"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "6Op4bDV3S299TFhq"}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationTemplateV1' test.out

#- 13 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'yCxomBTc8PaFv920' \
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
    --configurationName 'XTxw76AlTPgJhwcK' \
    --dsPodName 'QvAvsLjQOrVZ1yVd' \
    --fromTime '7d7U0ylGZHoVnzVb' \
    --gameMode 'KKvRRLdt9UPMuf0x' \
    --isPersistent 'JCxABDZJ5Fb5F3lr' \
    --isSoftDeleted 'JljxGiobMuHMzf7e' \
    --joinability 'bXXa15Ph6n0uD0SL' \
    --limit '87' \
    --matchPool 'sNlcyT1RQu9W3zLo' \
    --memberID 'ZIQLKEM9TC2BdPNT' \
    --offset '92' \
    --order '0TEMpGXrXuj5sAH7' \
    --orderBy 'VLy9OgxjCq3xpoVg' \
    --sessionID '69F2nngYbLQTJzam' \
    --status 'FPhRwqUXgDoXQGeQ' \
    --statusV2 '2DmrjX0lj6YdtRqM' \
    --toTime 'GUuVil5S6qbKhAnv' \
    > test.out 2>&1
eval_tap $? 16 'AdminQueryGameSessions' test.out

#- 17 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["RNjFV2iLQ5K0LkGH", "0vAH5HqtZuTjqcLu", "gf53802yTVDlX8jv"]}' \
    > test.out 2>&1
eval_tap $? 17 'AdminDeleteBulkGameSessions' test.out

#- 18 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'YFegUNyXGfczP8Jo' \
    --namespace $AB_NAMESPACE \
    --sessionId 'FvqKu8dlCGGuvony' \
    --statusType 'SL70mfPlIGSN1Lhu' \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateGameSessionMember' test.out

#- 19 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --joinability 'u6gSKEQU4HPjIrr3' \
    --key 'brgTVzFH9brszFC1' \
    --leaderID 'xZFWYUzx8kBo9rJp' \
    --limit '35' \
    --memberID 'naiwdv7fP5Uh9fdP' \
    --memberStatus '1EGm8AMkVkvr7FDy' \
    --offset '68' \
    --order 'gPeNKrfVV1Gb7x56' \
    --orderBy '0knBZFHjMolcK16t' \
    --partyID 'oX3GBOOCoJuQfus9' \
    --value 'FRmNDm8h9idskPK2' \
    > test.out 2>&1
eval_tap $? 19 'AdminQueryParties' test.out

#- 20 AdminGetPlatformCredentials
samples/cli/sample-apps Session adminGetPlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'AdminGetPlatformCredentials' test.out

#- 21 AdminUpdatePlatformCredentials
samples/cli/sample-apps Session adminUpdatePlatformCredentials \
    --namespace $AB_NAMESPACE \
    --body '{"psn": {"clientId": "TaG7PE224MO7wbSZ", "clientSecret": "YpLU7ZBleAcq64JZ", "scope": "lODwCu8liQ6Gayt7"}}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUpdatePlatformCredentials' test.out

#- 22 AdminDeletePlatformCredentials
samples/cli/sample-apps Session adminDeletePlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'AdminDeletePlatformCredentials' test.out

#- 23 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'sa9sLSWUfGGxMtZx' \
    > test.out 2>&1
eval_tap $? 23 'AdminQueryPlayerAttributes' test.out

#- 24 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'lbz1YKxBo5BuE0kU' \
    > test.out 2>&1
eval_tap $? 24 'AdminGetPlayerAttributes' test.out

#- 25 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"aqHIqGbjadnyFnJ9": {}, "S0XM8pa0eGAC8iuz": {}, "kChL2dSdjBeNOuAR": {}}, "autoJoin": false, "backfillTicketID": "KXUZUXP56xz1ybd4", "clientVersion": "ACilqHDcrC804f5b", "configurationName": "UVspY9J7IvMH48Ja", "deployment": "DICgZw8q3xtT8U6K", "dsSource": "blgGPpdzfBxRBR5X", "fallbackClaimKeys": ["nY5VM1YbnpuV1GyX", "70L0Od2uWgndDNC7", "3useKMYOYXeNbT8S"], "inactiveTimeout": 42, "inviteTimeout": 36, "joinability": "D8nPxeAhTBiuNVBv", "matchPool": "RhI6k8iYdP9Wbbu0", "maxPlayers": 71, "minPlayers": 22, "preferredClaimKeys": ["FKLVZOztA0PFdq3R", "eHAB0Ld8XzCkpWfH", "xxLbkYcrRtO05mmK"], "requestedRegions": ["OWxwGjf5aQ7C96XS", "CTslpWOxnMlTvkW5", "i9ELtnXglYh5ACaq"], "serverName": "6yjK0v9BQOnZTPnE", "teams": [{"UserIDs": ["kdUFx7DHuj04WMC0", "0EGJKPE6c5TBvTEs", "zDNTlk43JHPnKnFx"], "parties": [{"partyID": "MCiAOilsEsRltuhP", "userIDs": ["XaemUuxfUnzn93vc", "JFnj6rx50f0U06HE", "IeQEi01MOmHoHf3N"]}, {"partyID": "D14uB76GUuOH9Ltx", "userIDs": ["xSLKwrtRqlB9jJyK", "3nVhLSbZZPYYEQpK", "NNTcBATpEE5kshcF"]}, {"partyID": "67lRTxBstO5YOEdU", "userIDs": ["YpRL1VQK54MXvOT2", "uSOOhUWvfxVXCtbc", "qTur24VrSj0iuUFm"]}]}, {"UserIDs": ["mSwMqUA4NuC0U1nd", "oPXN9aL0FvzdBTHA", "lfDDW5o5e7OWXQLh"], "parties": [{"partyID": "6SZfTr2YbvaD8I3I", "userIDs": ["FuRhhrSPCXLW1Ocn", "S85sMeZepX2MDGgZ", "xUW2xxj53iuY9dLF"]}, {"partyID": "SUcJ5zWtJiiDHuoA", "userIDs": ["Xy4FwTxFkUxCPAgE", "Kun7FuZRsRYO9Wlz", "IRFoRGH64aGJozhi"]}, {"partyID": "C98FYLQuTYKyWnPI", "userIDs": ["yMFNYgrlzIPJETCd", "87FzYGV3ijA9rMUj", "GFowa0GkXhmGXAAG"]}]}, {"UserIDs": ["M3zRcPaOZMI8lryK", "khsXROKABo0fvK7p", "uxQFVZ2Oh1JwbmCO"], "parties": [{"partyID": "YhzwBdzuFy56UABl", "userIDs": ["NWGc48MquuPQNMxt", "RrCizRWFp691vaPo", "cuGSAUqP3WG95yYX"]}, {"partyID": "sOxfzPvqdh7dViM5", "userIDs": ["A4j3qgTd3bqwkQ7r", "r3auWLjUyr4uubDB", "FFgZ0s9JrSnujoMz"]}, {"partyID": "GwwMhufgVmj8pinv", "userIDs": ["8YgTXRPnGOCdOEs5", "Mp87RYJtGdcdpsM8", "MlSoYf6KRyuuRzEl"]}]}], "textChat": false, "ticketIDs": ["Hoy2kHhpxOvW8WFW", "uWRIPUN8NgyhO51a", "g2H8QuqcNowlYxrT"], "tieTeamsSessionLifetime": false, "type": "LIKvQNDllHJ8P27l"}' \
    > test.out 2>&1
eval_tap $? 25 'CreateGameSession' test.out

#- 26 PublicQueryGameSessions
samples/cli/sample-apps Session publicQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"wcwBoumxHQzWQ83X": {}, "gU0sD0myU8NES6Dx": {}, "qK6EhXMzScUAUi9x": {}}' \
    > test.out 2>&1
eval_tap $? 26 'PublicQueryGameSessions' test.out

#- 27 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "VlyQknehetKr2aaK"}' \
    > test.out 2>&1
eval_tap $? 27 'PublicSessionJoinCode' test.out

#- 28 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'DcGS3Jtp7e94Ygpt' \
    > test.out 2>&1
eval_tap $? 28 'GetGameSessionByPodName' test.out

#- 29 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'fnVDtqyPfcedCWgr' \
    > test.out 2>&1
eval_tap $? 29 'GetGameSession' test.out

#- 30 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'JeGCDLfzJdOK8IL2' \
    --body '{"attributes": {"yV26H3MX85IpnAvN": {}, "s323UvrHGOsG2WJq": {}, "QZKYfuW8JDdnWaP4": {}}, "backfillTicketID": "iT6rEUIsB1Xi4jzp", "clientVersion": "Hv2Y8riFc8lwAbGB", "deployment": "FhDDVeVPdZUNJGtx", "fallbackClaimKeys": ["iLEyqfXZBBdjXhxe", "kVzK6oL72udSPat5", "wxsbYK8PPHXa5a8G"], "inactiveTimeout": 52, "inviteTimeout": 39, "joinability": "DvPT6BNCBgWz1Rxk", "matchPool": "msEAMOYvjXZV5mnN", "maxPlayers": 90, "minPlayers": 47, "preferredClaimKeys": ["OUbX7gbcQn9UnsJ8", "DDwwb0yHmY9sfRGi", "Gpssk45PaqJtSVHz"], "requestedRegions": ["CM3YPFKxxktRgHMg", "8CTltVpI3DCopsRa", "6WzyAbLvvjxdf1fs"], "teams": [{"UserIDs": ["OfG462gQS9ZHDYy7", "iQeTFbBkhPumwUdt", "xJvoNh9IiCCCICW7"], "parties": [{"partyID": "0ET5a8uphKiExow8", "userIDs": ["YeViKrNpiViQDu7Y", "FZgpj2FTDSc5oAEO", "QXzAauymDeNGLbER"]}, {"partyID": "nsVdj4rVJyGE0vgq", "userIDs": ["NqbYFxS69tkHbZhe", "SiKE9DneTIkK2YGK", "LJCkMyyWgejlZ8nD"]}, {"partyID": "Czrx2vT6x8j9DYQo", "userIDs": ["p3dcOOzOYzZvkRGo", "8XrUFJZUxGXQtxU8", "4Wrl44ul75ZjoWCc"]}]}, {"UserIDs": ["kSI6FbA2hdq6M5rr", "jHzXdxg9A80Y3U6W", "JCcSeWTS8Z4ACPmG"], "parties": [{"partyID": "Xwi3e5la4x7MFlh0", "userIDs": ["WlqRpbemH6SPVNn5", "da637xXuH2MU7Cev", "cVl2qRKyJkr7QNaO"]}, {"partyID": "lrwMenqDSmtMEdh8", "userIDs": ["OZfFtp3YJvPSiFks", "OKhsFlJ14iSKctAu", "ZrJYZNsk2hoCuFuy"]}, {"partyID": "rKluWkPzK04HxJOj", "userIDs": ["UDwNamVWsdQbdzSP", "2eKFJ9ZOpIAKFD8Q", "mpFP54DiE4yQOoPn"]}]}, {"UserIDs": ["QccnKtaGSriNqbkI", "qapwReYj00XvtHwi", "DwHeLolGMi4VAseR"], "parties": [{"partyID": "f6NDyLxXunWRBdgU", "userIDs": ["xV1D41OYJXx2PYoz", "X0Q3JrbQ1syMEKZB", "yc9IwBPPB6knszfr"]}, {"partyID": "kZ5sqBvL9Kqq8jDN", "userIDs": ["C3Zv03ljVSFI2iS4", "LMNEOPxEe1tgPN8Y", "rYeaNqTxosyEPTRx"]}, {"partyID": "VHVDBApoSAMEKA4x", "userIDs": ["G7JlaNmPtyTnI5zx", "5zwgtM7lVQJf8hzT", "tWPE7sc75bknmUxy"]}]}], "ticketIDs": ["ypV7R8XONslNHP3U", "Qxe2sfAPMVq6TwZ9", "TL8RwPjK6COHrP8y"], "tieTeamsSessionLifetime": false, "type": "FU8tvrfivZ6M4SqD", "version": 46}' \
    > test.out 2>&1
eval_tap $? 30 'UpdateGameSession' test.out

#- 31 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '2FWihU0rgttobApp' \
    > test.out 2>&1
eval_tap $? 31 'DeleteGameSession' test.out

#- 32 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'pQcIJKlFACeHZVBl' \
    --body '{"attributes": {"U5HZDU41e7iVeDeQ": {}, "SY5xaCRBqPkakbhA": {}, "IbDD56A9xdElDqdN": {}}, "backfillTicketID": "hizURnK1b1ppXizK", "clientVersion": "H82QhjextyZclxif", "deployment": "qeEtbdfPS7KhJ84u", "fallbackClaimKeys": ["mRoqbNm2Euymz3k7", "buRoioMhTSrCNmwy", "Y2L8I4rrL79vuUR2"], "inactiveTimeout": 71, "inviteTimeout": 79, "joinability": "Q6OiLYYBwKTbrAMb", "matchPool": "mvkYu8UIjj8YVeAc", "maxPlayers": 44, "minPlayers": 4, "preferredClaimKeys": ["p5L4XjqyQ8aM9nvN", "oy3tYzbKfgV3Llqq", "SMWMc5MC466MeSU2"], "requestedRegions": ["W4PeLJALZLISPH46", "gVySOSAo1gnkTHfV", "AIaf46DSQFUBqFgV"], "teams": [{"UserIDs": ["a4GNK2pzHOUVMSiS", "zQF7pcxAYcMhkgK0", "TyRVglunEIb0SiqZ"], "parties": [{"partyID": "xTrXfYPpteeYPTyg", "userIDs": ["qKqyv551t1b4KVgW", "XBbIrGj36vayDmKj", "TX4hyMGFDG8BEYdE"]}, {"partyID": "OmwnMJOtWDZIbiU9", "userIDs": ["IlxKG2als2Sztjxi", "l0cQGwYCxGYGybKD", "2GKv98oc27cJIpyP"]}, {"partyID": "RD0WNSnkQs5idLu2", "userIDs": ["0NLa6RdMuZBglVm2", "Hzf5OZO2yV3yaOA8", "P4YKxX3tWdeVs3ej"]}]}, {"UserIDs": ["WTbFZZtNecioNZfH", "sig762acRvcniyQU", "AfC6T08zzWBHEJEN"], "parties": [{"partyID": "DGTgu1rJheHH19QX", "userIDs": ["gf8mEigdmdgfowtj", "kWF6CNBnZLVaeWfx", "s6iS5Ijqo5ApZbnR"]}, {"partyID": "YKY7fASZJXX0C8y2", "userIDs": ["ozcciHtcNaf4sd7O", "yAxvk4rCnJFHLdkD", "RtBw1S2OZOClbC5t"]}, {"partyID": "LEJXjyzY5MsR3vuV", "userIDs": ["0oEay1v07redigoF", "gw6rdPECW8XUuWLT", "uxNY1r0Hzxk5IEiy"]}]}, {"UserIDs": ["FJpKla9dwJmMD3K1", "D9LLSDkAjgozCBxN", "tGUPTjRcrqYl56gt"], "parties": [{"partyID": "c4i50kn23Jz53mbj", "userIDs": ["kjImyzBKmI10AndK", "0KMqWowMjzDPvLuI", "kswFTp36T8UJbS7D"]}, {"partyID": "yz7k5Ojo4nNuOVKS", "userIDs": ["5vLVnn90qDjuOglt", "1YzX0jMJohWdnA7H", "j5Q0mi1alBB61HMX"]}, {"partyID": "BFrhiuR4OhkDz9hG", "userIDs": ["3ruQSgE3oyQzyvcV", "1fK0jGUpldYGF55c", "SOXU6NOc6L0enaAz"]}]}], "ticketIDs": ["ZPAbfLZaV8ANsrii", "Kr7NbkYIn8qm95uL", "pSVzkBcpU98YcTmB"], "tieTeamsSessionLifetime": true, "type": "Zu7UyKNmzqssIMIp", "version": 6}' \
    > test.out 2>&1
eval_tap $? 32 'PatchUpdateGameSession' test.out

#- 33 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'FPKvaaqnZXB1T1dV' \
    --body '{"backfillTicketID": "WA792Wc7KvSWmyxE"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGameSessionBackfillTicketID' test.out

#- 34 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId '3siIjGTVD4eLRlSM' \
    > test.out 2>&1
eval_tap $? 34 'GameSessionGenerateCode' test.out

#- 35 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId '3vhwYxxexGbHlbFf' \
    > test.out 2>&1
eval_tap $? 35 'PublicRevokeGameSessionCode' test.out

#- 36 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'L0SQ5ivUmTSUaI0i' \
    --body '{"platformID": "Riex3ORZvTFMzdh4", "userID": "qPLYsNLuaahWsNNA"}' \
    > test.out 2>&1
eval_tap $? 36 'PublicGameSessionInvite' test.out

#- 37 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'E5iwUzmptdQv4dXr' \
    > test.out 2>&1
eval_tap $? 37 'JoinGameSession' test.out

#- 38 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'D0SjzKONYgAy3SJA' \
    --body '{"leaderID": "P6cc4Jw99lSpqN9G"}' \
    > test.out 2>&1
eval_tap $? 38 'PublicPromoteGameSessionLeader' test.out

#- 39 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'SQt0aJ7lMov1mTAc' \
    > test.out 2>&1
eval_tap $? 39 'LeaveGameSession' test.out

#- 40 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId '4dfnrVdtUuEX9KCh' \
    > test.out 2>&1
eval_tap $? 40 'PublicGameSessionReject' test.out

#- 41 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '01yWZmTKyINzZvji' \
    --body '{"additionalMembers": [{"partyID": "rTFNSQ4dWurDZXUH", "userIDs": ["QJWQYj8uD9FEmTTA", "dOVz4i3vGEIFbXXC", "TYdI7qarIbpWoC9c"]}, {"partyID": "zJK42a3hBJQSuB9O", "userIDs": ["aqaT6KTFSHa8dQZN", "2S7OmBoF3JXQgfhh", "1uBMQ7XNJkplviNt"]}, {"partyID": "qKBfKHOGCJXaE3Rq", "userIDs": ["bVsJpRyBYsbxbE92", "5FCgEob5bUKUeuwd", "c4gfxMDQViHtx0ms"]}], "proposedTeams": [{"UserIDs": ["qOPdieRGvEkjcQuC", "WWmhwoxTxyfz2KBw", "uef0zN3fdr3UvJWm"], "parties": [{"partyID": "ZzMPr5HEEN1JoWbC", "userIDs": ["UFWeq6VxnU40k8fg", "v0w4mw3LmiFpNBcR", "DBMLSelfvMfZAKNt"]}, {"partyID": "qdJzXBjtyBpqnTn6", "userIDs": ["T0k1KIVIYjl6kW2R", "d4HhvOoWi81WCZ8f", "BDtvM5O41GFh3VhA"]}, {"partyID": "xs0aTu1GoczT4qkt", "userIDs": ["ucv09dJGN6aBIuQD", "nKnmR2DeD6h4C6Sa", "0B9HzpxqoDKgSspH"]}]}, {"UserIDs": ["cWGJPzdEIlP5po4D", "1bMTZceRgaR2eTVd", "51ZYR9c8iApTdHzc"], "parties": [{"partyID": "6V7y2iM1aSPwetIs", "userIDs": ["KgANqItZhSahMMOR", "clJuMJS6NW97IjIg", "3j0oAgkWxVHG2olV"]}, {"partyID": "1WW4mo4FKz9hH0GF", "userIDs": ["W53DDtENONzfTUUE", "EoQ3CEgYpeS9nyMv", "BRZqugDnVT7ga5re"]}, {"partyID": "4DjRe3mBRy0BV6dl", "userIDs": ["vmW7lS6CFFAGO37K", "auNVzW4Ud87W8rt2", "mfhjkwsgtuFK6cFy"]}]}, {"UserIDs": ["LdQIPp46i4WBspVW", "ZDw3CjEfJNKawgJw", "vJjAVkBjkWmXzLut"], "parties": [{"partyID": "zT2G6XgLP6dwgEEx", "userIDs": ["I0Nj4zewU0lPAc9j", "Pflh5GdTgbm3FLJS", "fI3WAYuIq5GBsJNZ"]}, {"partyID": "ejucmosjbroiawLx", "userIDs": ["qjYhFK0qd5go1QnB", "Rw7BIRD7FgiWeYdA", "JfX9zuFMoIJgorXr"]}, {"partyID": "aos0W9JkQ77fxJrB", "userIDs": ["FWO1Tgt3n22BaUxW", "UDIHl5o1EMecATOK", "OKunkTvaC2gW88CE"]}]}], "version": 81}' \
    > test.out 2>&1
eval_tap $? 41 'AppendTeamGameSession' test.out

#- 42 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "oVjQXzg08AI9rZ8d"}' \
    > test.out 2>&1
eval_tap $? 42 'PublicPartyJoinCode' test.out

#- 43 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'HH5F8bIvPOnvcrzu' \
    > test.out 2>&1
eval_tap $? 43 'PublicGetParty' test.out

#- 44 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'W9Sul6sCUsOnNZBR' \
    --body '{"attributes": {"cVUfcUyCrHmtTSSr": {}, "uYMdSj3uga2UAQ57": {}, "RueBTYL4NKxFyWZF": {}}, "inactiveTimeout": 48, "inviteTimeout": 81, "joinability": "8eRDeevzMFYuMDEK", "maxPlayers": 100, "minPlayers": 53, "type": "6bZM5RSvVtg4luLK", "version": 31}' \
    > test.out 2>&1
eval_tap $? 44 'PublicUpdateParty' test.out

#- 45 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'B02H1YCq6vLU6Lf1' \
    --body '{"attributes": {"UQYJTggHKqhTjpag": {}, "ekD60SQGGiznXL7F": {}, "4QYo888QlWY5NhS8": {}}, "inactiveTimeout": 5, "inviteTimeout": 63, "joinability": "QpR7cGZbFuHovzsw", "maxPlayers": 84, "minPlayers": 29, "type": "bFwF3xW5ruTDzQSp", "version": 75}' \
    > test.out 2>&1
eval_tap $? 45 'PublicPatchUpdateParty' test.out

#- 46 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'ieAOLbQQmshqXFxf' \
    > test.out 2>&1
eval_tap $? 46 'PublicGeneratePartyCode' test.out

#- 47 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'Mj2GAaCJJH4lRo81' \
    > test.out 2>&1
eval_tap $? 47 'PublicRevokePartyCode' test.out

#- 48 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'in4JEsHIPTbiCEXv' \
    --body '{"platformID": "AXZYM8WDyJkCsjBf", "userID": "8OwMxUSfho9mbAPP"}' \
    > test.out 2>&1
eval_tap $? 48 'PublicPartyInvite' test.out

#- 49 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'htNaQx5bBsHnyhKN' \
    --body '{"leaderID": "16WCpcZgAkTvIbbo"}' \
    > test.out 2>&1
eval_tap $? 49 'PublicPromotePartyLeader' test.out

#- 50 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId '5hMk23x7xWwpR0y5' \
    > test.out 2>&1
eval_tap $? 50 'PublicPartyJoin' test.out

#- 51 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'w12CIyzbMax5r0Lx' \
    > test.out 2>&1
eval_tap $? 51 'PublicPartyLeave' test.out

#- 52 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'KeA9gooddYRxR4d4' \
    > test.out 2>&1
eval_tap $? 52 'PublicPartyReject' test.out

#- 53 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'rghRyXDZB0qaZyCM' \
    --userId 'wxP4ytNAHT0A5NL5' \
    > test.out 2>&1
eval_tap $? 53 'PublicPartyKick' test.out

#- 54 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"EYMIenLeDRNfFxu4": {}, "aBgyMQz4KzgVComd": {}, "6t0EkhcaoJ0Vwm9Y": {}}, "configurationName": "RnSUx9M9uno1bakg", "inactiveTimeout": 10, "inviteTimeout": 80, "joinability": "wUNuR4GGn9SLZR6H", "maxPlayers": 52, "members": [{"ID": "mOqDww3X25KoCouF", "PlatformID": "m8CaXezV3ye8lspW", "PlatformUserID": "0ksN0CglesndjiPO"}, {"ID": "JqLgHm9ZSGdOrI1s", "PlatformID": "OCWlzQGKs1jahbic", "PlatformUserID": "IGn1chHhaIJYSlUl"}, {"ID": "GlzziMtAjM83rD5d", "PlatformID": "uGQo0xzgSmfMkhvS", "PlatformUserID": "f1VTQPAIyGn2wD2k"}], "minPlayers": 8, "textChat": false, "type": "wJsKPEtZB0VBSHFO"}' \
    > test.out 2>&1
eval_tap $? 54 'PublicCreateParty' test.out

#- 55 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["icASoMMFf5BSbHB5", "XH2H6eQE1r7Tsins", "TXSg6VZykXKSDyqy"]}' \
    > test.out 2>&1
eval_tap $? 55 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 56 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'PublicGetPlayerAttributes' test.out

#- 57 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": false, "currentPlatform": "RIpYSCbhcPDowtWA", "data": {"Ll8TRANApYp4xL6o": {}, "NglCtwkRjVmYn1CA": {}, "tF7ACEMqWHK2lC7w": {}}, "platforms": [{"name": "NxHZNHs0b747YsDn", "userID": "siQDb3DRDtugMQgJ"}, {"name": "dlcOVy52iL2aUizq", "userID": "NeDUHNtQkqWGNOWQ"}, {"name": "HdQ6v0o88dOB6YmR", "userID": "uoO1jIWji5lMGgtY"}], "roles": ["oEWyCGvG500oTXEN", "lVnQD0jArUd9At8r", "u4anutwkkkI3UYTR"]}' \
    > test.out 2>&1
eval_tap $? 57 'PublicStorePlayerAttributes' test.out

#- 58 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'PublicDeletePlayerAttributes' test.out

#- 59 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order '3AxckdyIriCoKPD0' \
    --orderBy '06N1ngoLdQWPLCw3' \
    --status 'lKF54hP6ninheAe0' \
    > test.out 2>&1
eval_tap $? 59 'PublicQueryMyGameSessions' test.out

#- 60 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order '6LgwEGh05bjZ0V0s' \
    --orderBy 'oZ09BHv3ZpeXPvxL' \
    --status 'cC4cRiHQTwVz6Kvn' \
    > test.out 2>&1
eval_tap $? 60 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE