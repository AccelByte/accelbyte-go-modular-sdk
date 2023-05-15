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
echo "1..43"

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

#- 4 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"clientVersion": "hdg5OF4VYkYwzMQS", "deployment": "eQkbzTJVWtIUBSB8", "inactiveTimeout": 52, "inviteTimeout": 82, "joinability": "wnb0CMeHQDzoZOY3", "maxPlayers": 80, "minPlayers": 6, "name": "VNNkQOEU0N8k1h8m", "persistent": true, "persistentTTL": 52, "requestedRegions": ["W17xV8rN5DqP0E8n", "3UWHm0VrlyQiqc5P", "5WzsZJZ0F18JtUXZ"], "textChat": true, "type": "h0bTSXTc5iksBR3Y"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateConfigurationTemplateV1' test.out

#- 5 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetAllConfigurationTemplatesV1' test.out

#- 6 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name '88n7LitCP1iVgQoN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetConfigurationTemplateV1' test.out

#- 7 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'LIzB2Ft1yRMVak2Q' \
    --namespace $AB_NAMESPACE \
    --body '{"clientVersion": "xu0nKWiMTWfxrDpu", "deployment": "b4vn6blMCIIdc3Ri", "inactiveTimeout": 92, "inviteTimeout": 15, "joinability": "bGbraZWLqHFpGPTL", "maxPlayers": 23, "minPlayers": 34, "name": "2kuttEGdJ0pXh0pZ", "requestedRegions": ["9EMUQZFkG56dWg5m", "sqLFLoqlNH7oQu5I", "mqQlVHI4N5tpbCdk"], "textChat": true, "type": "HiGgZ9bqeVdWg7Jq"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateConfigurationTemplateV1' test.out

#- 8 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'w5hIsB1AIMewZ1XF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteConfigurationTemplateV1' test.out

#- 9 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName 'XbLBt3XnbEjbVutl' \
    --dsPodName 'DsUyfcXBsVB6hiKF' \
    --fromTime 'fJFcC3AKuw4V80og' \
    --gameMode 'SI4QXL69NSxZhfHA' \
    --isSoftDeleted 'SpdWMiwhu6QE5obI' \
    --joinability 'DA59nxDvCPWUjXaC' \
    --limit '51' \
    --matchPool 'dSXnfbOBm5Y9js6c' \
    --memberID 'wmho1dHXZZ4pjSA5' \
    --offset '12' \
    --order 'EIFKcgHTzxrEXyn5' \
    --orderBy 'pbv4NAH45ROaHuZL' \
    --sessionID 'PJncCH1Xei162cf7' \
    --status 'ZCqNDURiwmR2ZDGX' \
    --statusV2 'PZJqXbZzfP1XK3iP' \
    --toTime '78VQ9Z4PZFfweL5n' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryGameSessions' test.out

#- 10 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'pC7OtaVNm22gvLFu' \
    --namespace $AB_NAMESPACE \
    --sessionId 'TXwR5NYK4EeSTZuy' \
    --statusType '7S97mnVaWzAiwGz3' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateGameSessionMember' test.out

#- 11 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --joinability '7SZioOAaBrzOhywY' \
    --key 'PITZku3tdwqFXae1' \
    --leaderID '2BtgJSpVvZ9GNED8' \
    --limit '82' \
    --memberID 'hoQ0Yju7omsY2kp6' \
    --memberStatus 'YallU90fCbQyYfmR' \
    --offset '34' \
    --order 'U66cG3k82VaQjhZU' \
    --orderBy 'PAGY30kxmVPVrp9t' \
    --value 'TBV1AUsYgXfZQ7d2' \
    > test.out 2>&1
eval_tap $? 11 'AdminQueryParties' test.out

#- 12 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'T8Em5kmBJ33sDLMO' \
    > test.out 2>&1
eval_tap $? 12 'AdminQueryPlayerAttributes' test.out

#- 13 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'YY9EdwL6z9asle9Y' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetPlayerAttributes' test.out

#- 14 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"jPE5O2S4NjBehzNQ": {}, "Ha37SaVLMoYgP4Sg": {}, "1BY5T4fkBlFjV1Qg": {}}, "backfillTicketID": "o2p4SOmoJs8KENeg", "clientVersion": "BXsn3lYdiVi3eRbG", "configurationName": "PcUmlxo7hjcbFsV4", "deployment": "iouPDZZfIwumyeC8", "inactiveTimeout": 86, "inviteTimeout": 66, "joinability": "KeU2QsEbc38mEOCG", "matchPool": "0UsTB5gPHDlJCjAj", "maxPlayers": 31, "minPlayers": 17, "persistent": false, "persistentTTL": 57, "requestedRegions": ["SqI5lBrRZZFYjuwb", "Ut6Wbcxi96s7bgPx", "WybueS2LJ0BaYTxf"], "serverName": "5kOkcLoQH5KyPxHT", "teams": [{"UserIDs": ["51SMlgcNLDiQUKnE", "fOLnZIscTVIolvlf", "LAjDCOH3QX5PtjzO"], "parties": [{"partyID": "0goJ0QLSTfNLivHm", "userIDs": ["Rh7Lj543rTEDl3Le", "0HOd7x8ALYg2rjWk", "Fv8ZZqh3h0ph7DNu"]}, {"partyID": "9HIsZY3Qv5iczUW1", "userIDs": ["oh6mgnh2lV8lv8qz", "kM9FD3Xvnp0uVWV3", "qFmtdpw75dRck9O1"]}, {"partyID": "AZK5yciiQhVYfdGK", "userIDs": ["3much3Q0Od7HtRpT", "taNSrwVUjwNncwDC", "Gn8VycfvcitTmctA"]}]}, {"UserIDs": ["oaPnqKTEmGkESeue", "jXfoYpjmVbuBrrAR", "VD1UiitonxXWnO65"], "parties": [{"partyID": "ElhyBfiDKDR7LD9W", "userIDs": ["NhRfKcsUWULk5gzq", "Q1PWgfJ9LIaGhZwf", "BBVLdEftHV8Jmub1"]}, {"partyID": "YJloaIoaw41Ia0jL", "userIDs": ["h1dQy5f5hV72AGEg", "f1HIoZ6xvhBqnc7k", "FGkquYJQ9WzSRAuD"]}, {"partyID": "JjCRXU896eCMFHZP", "userIDs": ["EfiVWgDLYDw72G4F", "A9cJKsieaTw9hvvb", "YGhcXBpjhfDED0wD"]}]}, {"UserIDs": ["B3NVCo80P7VbHJIS", "iSkFZLDcuvhKzuQ6", "2y2IuMWZbykyf1fG"], "parties": [{"partyID": "vHtBiBZV347MaY96", "userIDs": ["DuJ1BqrErKGbmWNZ", "DXQvCSYSudsy3Z9K", "dEor1UACINEg7FyB"]}, {"partyID": "ruummZPYLu3bs4A6", "userIDs": ["VNgU9GUjuyCkIU2m", "By1WGgHuHFAqi6Jb", "yVmZIZ0R60iCX39K"]}, {"partyID": "2q9dNkSs9inUbAuZ", "userIDs": ["ZFioesM7fBpJB23m", "HWzmlmGHTyAxELGN", "Iz7MkIDGxOXhbxZe"]}]}], "textChat": true, "ticketIDs": ["gsMREcpm7FWBLyje", "DpTVwWpU5vU2Irwb", "Noqy1haHRs8IMr0O"], "type": "18r4ho2XcPycT0qR"}' \
    > test.out 2>&1
eval_tap $? 14 'CreateGameSession' test.out

#- 15 PublicQueryGameSessions
samples/cli/sample-apps Session publicQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"7gDvJPEZSIAyZK7i": {}, "gA0k6d0qsJOcVZx5": {}, "OlTLjGO2dZKVJCdN": {}}' \
    > test.out 2>&1
eval_tap $? 15 'PublicQueryGameSessions' test.out

#- 16 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'W4xRIKIDuC4XwgPj' \
    > test.out 2>&1
eval_tap $? 16 'GetGameSessionByPodName' test.out

#- 17 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'lrVe1t3P99jqxs7V' \
    > test.out 2>&1
eval_tap $? 17 'GetGameSession' test.out

#- 18 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'gvLQEH4tQOMtv1hO' \
    --body '{"attributes": {"QKxXeN0vBLxX1aTQ": {}, "XfGT2kyRoHVcrPJs": {}, "TlGHFIXNgrKNRAvG": {}}, "backfillTicketID": "tBUAE2YOJ6X8vYK3", "clientVersion": "D4obZ19zDokbEkNH", "deployment": "YfndVoq7hCMRQv8X", "inactiveTimeout": 46, "inviteTimeout": 0, "joinability": "crSNHShuduHMsOpX", "matchPool": "peHNMpzFqxDy8Aoe", "maxPlayers": 53, "minPlayers": 79, "requestedRegions": ["IlqSJVyEYo5b9u0H", "ekrEmlWeJYrG5xKc", "foS3WjnYeTbcq7rQ"], "teams": [{"UserIDs": ["mJwViI9wQTKQWwWU", "fiWb5RXoIwKnAIOE", "5hD3xyt0OT7igPYJ"], "parties": [{"partyID": "NEKAtSbDnxKM8221", "userIDs": ["8hcNqhkwugHvSz64", "GlAOCYmXo5UsOwm4", "czoe62W9IcneEAOR"]}, {"partyID": "CQHdVwicjAyCjcGj", "userIDs": ["AL1OS3ZBWGulKz19", "Aj5ldmJTeX7czejQ", "iIa8PgPCSBX3DQYD"]}, {"partyID": "6TpiYGk0VtddZ19h", "userIDs": ["ugOHjmuVe3BBdEez", "abFrE5l6YHiwnTdA", "mswSlGjY0GsFo9km"]}]}, {"UserIDs": ["gw0PZVUmYXVMY5ND", "s70GtBMJkGySczEB", "CnbWpES2h1Y2co4A"], "parties": [{"partyID": "0WDtv5zVpYcMvyAi", "userIDs": ["FYs61XUs8WQ6ZuND", "6CmexFNm5c5z8NWI", "GFQXzaSStHuG7MoL"]}, {"partyID": "xLtEvyjTOrbjliLA", "userIDs": ["UCPqABYbjbpRP1lV", "X0JTvCI6un1lZ81i", "QuY5zZbCKXVDi0UW"]}, {"partyID": "ejFAM8t6F3uesGlP", "userIDs": ["bmgXDsPeo4WQnKV3", "XMpfQZaXYjKWlG6o", "DlyWU52CTapl00RR"]}]}, {"UserIDs": ["9jBHKlBZhGy3mgFQ", "p0Q15yP7IpbUiEdi", "SMTJYoA8A4DsukaG"], "parties": [{"partyID": "iRtZ5WNOs005FPu0", "userIDs": ["dAeo3H6SSj38SzCZ", "uLoyPFdrYXDdHIoi", "xnPjtiNgbwsnScr2"]}, {"partyID": "A0tkgfPixBzl113S", "userIDs": ["Z3Ys7dwSYWx4sHwf", "tEEnTz8wLYvE0dBT", "ddxrsKanA8tgY191"]}, {"partyID": "uNdEkHQBn68eeEyp", "userIDs": ["AmMk3Xke6FwCHQ09", "3EcVzZCQ8vHTVnS3", "Nv18kBbWz4h2dCy2"]}]}], "ticketIDs": ["TY23iRMBJeypZK4W", "f36YaEmWQ7ZHzEKZ", "WiYPBq5n4Jr6oa89"], "type": "f5GN4kV7HyFkdL7U", "version": 86}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateGameSession' test.out

#- 19 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'EIU0z1cv0Qf1Z6fy' \
    > test.out 2>&1
eval_tap $? 19 'DeleteGameSession' test.out

#- 20 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'kVBBI2yj3UEw9yBf' \
    --body '{"attributes": {"KKCNNBH4YG6n3IR5": {}, "yJH6IoTBmXPPdkG4": {}, "t9MEo0rke818PQwb": {}}, "backfillTicketID": "r4Ue0I56QK7oMvlx", "clientVersion": "QSxJjui6RBUMbwp5", "deployment": "uD8Axw4Q6r5w8mTP", "inactiveTimeout": 33, "inviteTimeout": 51, "joinability": "2eT3VytlQuRiEiSH", "matchPool": "1EUnc6xzUU5KFBya", "maxPlayers": 30, "minPlayers": 52, "requestedRegions": ["98lAH6gFCecnx6bJ", "poq7gAfJWojAIh9k", "B6lZsLrggLiIUWEN"], "teams": [{"UserIDs": ["1UeDDNtuVfakqKk8", "4oogfDMwlvwiR2GO", "VXVGrgyhgCU5lTyf"], "parties": [{"partyID": "RwYKT6CafxrJaEmm", "userIDs": ["6Ddlw8jEOz5GnWhq", "J99UeX3XbR7AUxmr", "99KjMlT0bjLiiiT1"]}, {"partyID": "msdVpF7qKJhqD2O2", "userIDs": ["Z2eTbrdoYGx761g9", "Sy2Bim7s7LIJW0w8", "JnBc1UuQwKfhaFx6"]}, {"partyID": "D37X0eam7AhZZUgV", "userIDs": ["spkhRVINWEyNjnRw", "kYwmpPzxYcz39LQS", "UTgMQtMJtOWat6BZ"]}]}, {"UserIDs": ["4EfWlYLJ6j0LNhQA", "IqJqQeLswKaV9jWn", "ayVv3vj9qJiQTVBf"], "parties": [{"partyID": "FxCbFDscz0svP89l", "userIDs": ["LgiTQlbkmKDDQUlw", "0FASfoKANS0680MQ", "0h57KbaSXIJpciea"]}, {"partyID": "BA8EjL22HCJm5qIb", "userIDs": ["24aIOzxZsPYY5z8C", "Kn5LyySfosqlbmEv", "YV5mOL8b1FTACpdw"]}, {"partyID": "rNuHhecEfpra35vv", "userIDs": ["qv17QEiIUTXZZ8G7", "beyKBR1KutGJor8t", "jmpz7AXFEdh4v5Gj"]}]}, {"UserIDs": ["QyOeeZXPCjCjDdvH", "rCQuSpDABZp3cnnb", "I0tMQ7qhGmOXbJkB"], "parties": [{"partyID": "9fxxWMIa3yupv3AW", "userIDs": ["g15faBFohW2WSNVL", "w37EWK3jldH3fQMF", "AaviVwys7pqCMmXE"]}, {"partyID": "SXLF2Ksr6OCSXKI6", "userIDs": ["nr3iNMr5psjPsrVj", "AOtUcA7sfmEbNJPf", "E4eiIdmqqgosAHwT"]}, {"partyID": "6Tvuq7ahJdc6BtEA", "userIDs": ["Y2pzzUIvjn2PLmIp", "yRVnVPO1dkdshFXm", "mywUwt6PymKABlV1"]}]}], "ticketIDs": ["iy2JvTzHlcpFjuH1", "p54ssRUEVVjctOh7", "pLQ54PYcK4NVx6GR"], "type": "qegZqcp5TtQKJNwU", "version": 2}' \
    > test.out 2>&1
eval_tap $? 20 'PatchUpdateGameSession' test.out

#- 21 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'Spke4MsBsdKwZEHx' \
    --body '{"backfillTicketID": "T38mVw8lsdG8iqzw"}' \
    > test.out 2>&1
eval_tap $? 21 'UpdateGameSessionBackfillTicketID' test.out

#- 22 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'QEm8ErJOyhP2Et22' \
    --body '{"userID": "dZ3FIK2fBamkKDeC"}' \
    > test.out 2>&1
eval_tap $? 22 'PublicGameSessionInvite' test.out

#- 23 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'oNp0PvZjVMmOzcR3' \
    > test.out 2>&1
eval_tap $? 23 'JoinGameSession' test.out

#- 24 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'bek5GcgDDemmU4rL' \
    > test.out 2>&1
eval_tap $? 24 'LeaveGameSession' test.out

#- 25 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'H2taBg9kmLX3ZG0T' \
    > test.out 2>&1
eval_tap $? 25 'PublicGameSessionReject' test.out

#- 26 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "BB8rzO5s9qjFQGIq"}' \
    > test.out 2>&1
eval_tap $? 26 'PublicPartyJoinCode' test.out

#- 27 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'ZDcXRTYElTz9isT1' \
    > test.out 2>&1
eval_tap $? 27 'PublicGetParty' test.out

#- 28 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'OLa9q0VjwTIqVsKd' \
    --body '{"attributes": {"bjJiWXFNL7Lq7tNV": {}, "8Gn8u37FDXvgBi3k": {}, "BETSkrmecJT1jqDW": {}}, "inactiveTimeout": 27, "inviteTimeout": 46, "joinability": "yuXlgpADaoqCfOhd", "maxPlayers": 94, "minPlayers": 94, "type": "uyLuK2aqlNLAXfUf", "version": 80}' \
    > test.out 2>&1
eval_tap $? 28 'PublicUpdateParty' test.out

#- 29 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'qfjRQB2Txs2rJU7i' \
    --body '{"attributes": {"Ih6PSuvIZAadIzFD": {}, "8tUo4XKohPu1Z8dx": {}, "wDRFiCgRYJSvlvc5": {}}, "inactiveTimeout": 33, "inviteTimeout": 30, "joinability": "cKdqUjaiuDk81Bry", "maxPlayers": 90, "minPlayers": 98, "type": "BmbVEsvAaOvABgG4", "version": 17}' \
    > test.out 2>&1
eval_tap $? 29 'PublicPatchUpdateParty' test.out

#- 30 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'u9bq4whKAZYGHlco' \
    > test.out 2>&1
eval_tap $? 30 'PublicGeneratePartyCode' test.out

#- 31 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'rNS6wE8y8Sijr924' \
    > test.out 2>&1
eval_tap $? 31 'PublicRevokePartyCode' test.out

#- 32 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'TSidOnoF7aZ1PiOI' \
    --body '{"userID": "m26oNwrCCjZsrp7z"}' \
    > test.out 2>&1
eval_tap $? 32 'PublicPartyInvite' test.out

#- 33 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'vvw12hJmxp5VcqJk' \
    --body '{"leaderID": "QEwPfrnbTC3ZvA2f"}' \
    > test.out 2>&1
eval_tap $? 33 'PublicPromotePartyLeader' test.out

#- 34 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'ihZmBFpjvjYRsKDT' \
    > test.out 2>&1
eval_tap $? 34 'PublicPartyJoin' test.out

#- 35 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'cBYtR0A52VGa1kQk' \
    > test.out 2>&1
eval_tap $? 35 'PublicPartyLeave' test.out

#- 36 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'IwIESIL45aNY2to8' \
    > test.out 2>&1
eval_tap $? 36 'PublicPartyReject' test.out

#- 37 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'JQgfFVL4te4XRNae' \
    --userId 'rDmkElby0HMq23EV' \
    > test.out 2>&1
eval_tap $? 37 'PublicPartyKick' test.out

#- 38 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"umAJFFuhh6np1crj": {}, "zJYnq39MLMrq1v72": {}, "dV8DF0bMw11WZAT7": {}}, "configurationName": "yhzcUqM5KOe0RgqC", "inactiveTimeout": 62, "inviteTimeout": 56, "joinability": "IvEew3gDHAOQM719", "maxPlayers": 53, "members": [{"ID": "AmV2M92MDyLLmoZp", "PlatformID": "owy5xMH1xGG2T1Bd", "PlatformUserID": "hoYxXiY7Zj54fJsz"}, {"ID": "FDnGjaSnwFy8tFmX", "PlatformID": "kOuRyUw811pKkoYK", "PlatformUserID": "MZOa62xJosP7knNY"}, {"ID": "G8bniB1swYXFsR8i", "PlatformID": "8RuaPGkMNmGFBWeL", "PlatformUserID": "HYO7Qe789A9TdJxI"}], "minPlayers": 28, "textChat": false, "type": "9uOVlsvBFfZXenke"}' \
    > test.out 2>&1
eval_tap $? 38 'PublicCreateParty' test.out

#- 39 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 39 'PublicGetPlayerAttributes' test.out

#- 40 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": true, "data": {"E3XP4YthXSBEZPWC": {}, "TjitA7btOJJ2M7vH": {}, "aiFvTP25yiQGdSfA": {}}, "platforms": [{"name": "FtBx87YbcHsxPkSc", "userID": "ABDvNrfBgnAaANZh"}, {"name": "LASqLepDr3NoHUuy", "userID": "UvkuIpDynrVJ8VKK"}, {"name": "Vz4W7FR5qrSxQn6t", "userID": "U5YFPlggCILYMhre"}]}' \
    > test.out 2>&1
eval_tap $? 40 'PublicStorePlayerAttributes' test.out

#- 41 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'PublicDeletePlayerAttributes' test.out

#- 42 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'HbrbbhcfOE61lmZ8' \
    --orderBy '5toZS96Yyn9RGpcY' \
    --status 'V4611ku9HOtcF1kd' \
    > test.out 2>&1
eval_tap $? 42 'PublicQueryMyGameSessions' test.out

#- 43 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order '21LJJfra0gZcIXWF' \
    --orderBy 'TpiQcUcHBAmUKj5C' \
    --status '9RpzbRMCvBdpgxes' \
    > test.out 2>&1
eval_tap $? 43 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE