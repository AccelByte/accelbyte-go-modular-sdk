#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Code generated. DO NOT EDIT.

# Meta:
# - random seed: 256
# - template file: cli_test_ws.j2

# Instructions:
# - Run the Justice SDK Mock Server first before running this script.

export AB_BASE_URL="http://127.0.0.1:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"

export JUSTICE_BASE_URL="$AB_BASE_URL"
export APP_CLIENT_ID="$AB_CLIENT_ID"
export APP_CLIENT_SECRET="$AB_CLIENT_SECRET"

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
echo "1..1"

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

#- 2 AcceptFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsNotif\nfriendId: GMhwrHLtElnbYoRH' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: xcf3tQa2ewXjJmB8\nfriendId: o8rbejYxeNp1ybyN' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: g0cQNtX8sGkNYpoO\ncode: 7' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: O6h9NQyaoMziSHWe\nuserId: lW8oQloBv2HboXVA' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: bsmuKNpWCz8ueB3r\nblockUserId: WIotVcQCtPaABk0F\nnamespace: c1GDExrQZCNCZEHA' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: tIeKaqGf7epyFH9s\nblockUserId: J21zEelRpmhFy1kw\ncode: 48\nnamespace: tKPlTEXCdL1JnP4s' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: qMcvzlSnX2FOrvRR' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: xXui3hg0jIl8Byg7\nfriendId: EB9aD1MgxgAUrnaV' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: ahJgqXL16RIsAJVF\ncode: 7' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: 3IUmtUX7wvDVJZD9\ngameMode: 0ITVlpKbsphrHcKV\nisTempParty: True' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: XjeYRXAzkWgRcB9T\ncode: 65' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: GYqQKWxuRCIelGTT\nfrom: af8s4ZDD9VTVbaxq\npayload: ZKxDD4cuiT5gEBOl\nsentAt: jyUlvFzzbcBnIkUI' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: 2re7IJymA5eaQW6B\nuserId: vV7yLkjADXi36Lhy' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionId: 3qu9T0moP2ia6QaC' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: Qe4At8NzXES6taYz\nnamespace: EqAZOllFgNpPqoRD' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [O2Tvo2tAudumt77t,1IQFDKqwU1mmTw9n,8McA0GbWt04yLYmX]\ncustomAttribute: dWhfX6jj65qceh5v\ndeployment: eihIF2wxy6MPBjTv\ngameVersion: eUDwMOnxS13dWAMs\nimageVersion: bvkA4D3g3J9XQ5f3\nip: iZOUf8ZyWE3UdJga\nisOK: False\nisOverrideGameVersion: True\nlastUpdate: DiOYyu9qVevRGPLY\nmatchId: OCLyEkYshJL1fgUp\nmessage: mzEU39VJkJZ8PjBV\nnamespace: ukz9rlC2jsiUMLq6\npodName: GwkkT5GNVFYh3Ndw\nport: 55\nports: {"HKrFo7CgJkqzbK5B":14,"o2dPC8a9QJncvaNe":47,"aTl5o4AFwpqfholi":93}\nprotocol: YaTubFaeLInwUaDh\nprovider: JsanRvNn5MKqmdil\nregion: PiQGMbQ5PBetqEK2\nsessionId: VgE5KdiSdRWI8YqW\nstatus: cPxpzkPeRDFpi1FC' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: L9doHls4QuJ15ezc' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: ufUR9yveRGgEuiIc\nuserId: UoPkth4818eTRJDz' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: pEiVoq3pETE3BBDP' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: lrw4DXol06HuQT2Y\nactivity: [IcttDaKj4H0AbK9d,l6hTUVCjWQRfDumW,jBzMRttdZZDVvsdO]\navailability: [1,7,43]\ncode: 41\nfriendIds: [t2chwv0bA2FU4A8D,Sgz6OC2HJJbAzCrZ,6ZS11uwG3LyR6VtE]\nlastSeenAt: [90d24UiMKuqCAaYp,C2Ls0kY8vp9fyGf2,SdhdgG0HEZ4tWWod]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: MHKU4rYK7lAvfVWs' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: NRUTztUeu8ktvtIU\nattributes: {"4hwQfl8XDO3gSqwX":"VZW6qRzMJiBRvKNG","MdCQ7mI3MlVvbQyf":"tX5JIEOrlW4TMgCD","YTBaN55QFLmPWjh7":"DSWreUuoOXptzoQa"}\ncode: 94' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: L2Vj2aHhKcxPbA5H\nfriendId: 6i2Uew3xSRQU9pAm' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: pLl7sk8MkyawP1GV\ncode: 91\nfriendshipStatus: 7tGikixnuW48qmZ4' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: Koq7C4tqXb0GaM7a\nkey: e91aNglVWJwtECAu' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: vCkeDnzxq4AbnXh7\ncode: 56\nvalue: v8jGQuvxtmY7SuSA' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: 8FKRyXP1GZPjtDet' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: msGFM0BfsMrDxXql\nchannelSlug: Zvfd5Ijpw4Mp9iN8\ncode: 25' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: wDf5aaVrn3VUnnzq' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: uGTOUCCXGsRF2Xbq\ncode: 58\nuserIds: [XvibFypYw467ib1C,GkJqKw9UX7iGldUI,8qKtl2EmpTXrwNKn]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: jfHkKeU8hkc8gV89\nfriendId: 2mkYyAda4YJ8WpS9' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: RmMcBNRzDTnmNGO9\ncode: 36\nfriendIds: [fNpAag1gqmWiBDW4,j0cneSgkxVQ9NLcU,ugyjsnNA47CiYVaU]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: TPLYqbevj9ECNyZE' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: IWvrxYh8lAWgWpqt' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: AfSnIWGtQVbkQbr3\ncode: 41\nfriendIds: [adoP6hLnOCDAF4t0,oyv7KIBg8BbqAOEv,o0ydU0aHIsBEOy4Q]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [b0NQ6QyXjfy1Kaew,EpP43rxmx3gkSEEI,pzsWUb7ewvWKFLFK]\nmatchId: yjTPQgzhaKYTJlIM\nmessage: 3Z8MO9prFusDzCEZ\npartyMember: [J4uJbU3MwcEnmPaz,eOGkF3eXqZSNrzpQ,3HTcwoEZALBB6SId]\nreadyDuration: 42\nstatus: 5q1nIN79QyW4tOGV' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: yCtWMrlJ90eKjmGN\nfrom: eYaPCyaO0lMT2ckb\npayload: 36wsMyK0C11XP7WK\nsentAt: 55\nto: MEXxkTVfJHtsvUGA\ntopic: tHKjhvmpYE57fmfn' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: TUbUPmzJDVkTDZte' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: JDDV2pyJr8zPjD3q\ncode: 76' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: ThDGynEJR43eIBjI\ncode: 57\nonlineFriendIds: [E0HAoD02RvV6HqqK,YkFkO9UTZHjlKKtG,0tLrpNyjoGfCX5mM]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: LKFciJlifadkbozN\nfrom: 2QxoNav1TuyscpzC\npayload: XiMhcZsgGVxcuhNp\nreceivedAt: 14\nto: GnwQ15Zn4FMeXe8W' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: pkNTKvNqAggkRF0g\nfrom: 6WS1rA67Mhbdukw7\npayload: 4BOPyLYAZvvfp0xi\nreceivedAt: 33\nto: JEQAWwaY9vWl4Vzi' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: b4sUT0dVbhrcQTgg\ncode: 67' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: hKq8R3zbNCfJ8xwc' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: T9dZOpvTVlSEr5dR\ncode: 80\ninvitationToken: D8HHOwcrDCvpVQj0\ninvitees: QvQcn7BAQ9Z6MlsG\nleaderId: W4I81ymWgD4Vrdkl\nmembers: UGp4fI1XkYXX46yT\npartyId: 7qEbdPoBoWBbSmGj' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"c8pIUAhaxCP2z4dK":{},"BsqN9TtE2lRElcaw":{},"BM8IXJrHuZdcYJha":{}}\ninvitees: [cJmNJve0vNcqWb4F,cQUrW7dYWuAxc4qW,JlGnDF7vGCy0uQzd]\nleader: iR5oK6qVzhaq1AvS\nmembers: [bSaFw7WIgU5id3TM,47pqrM8Yid2oQgD3,CqfUtKxOuO4b81r9]\nnamespace: VjAf8ZeZ3Nm9gR4E\npartyId: ATji6ozcrnAqQqoE\nupdatedAt: 61' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: ueEOms0yK7Z3qVAy\ninvitationToken: V0VXRLtYIlkZLIYA\npartyId: DWPqwOpXiEvqEbo5' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: hhqCK0B1HQk1uhih' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: 6IWlYLoVcWkF1cuN\ncode: 46\ncustomAttributes: {"BcG8ZOyVBwP1DDnt":{},"hVqLfd8fHdxPpeaj":{},"lB4w5nrt99nOjev6":{}}\ninvitationToken: 0gnNljz9Xc20LHol\ninvitees: b54PagAgC1wFg64S\nleaderId: 70uYtziN0oUl0Q6i\nmembers: h0CnZfRf7dSpCqjn\npartyId: pWkm5l0RtPyz19m5' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: CRPhxx5utjDwKKqN\ninviterId: 9k35JNy8ikTmwLlW' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: OofrZ06Ay7OHF8X9\nfriendId: exumK9dRVTVCzjKr' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: lWV0ewFJIpKihlKD\ncode: 2' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: VyT3oEaKQOfWN3pQ' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: s5hwVlwH4D4toMmv\ninvitationToken: YS7nrmQvuCgJhaoW\npartyId: R37n61yHpseH0r3h' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: 6sEJqPwUpi3otXZ3\ncode: 72\ninvitationToken: j0cMlebfk7aiGw2z\ninvitees: Tfe7BEAN03V0rFUM\nleaderId: V7oOZzigzIghMqVB\nmembers: TwaopEEw2z67p3rX\npartyId: mR6wDviGVcoJbF2G' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: zQGjCu93WiQwMDhC\npartyId: KvJ6MnHQp88Jxf1e\nuserId: AgMkU61pTn8Af7V6' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: kOAtxTtHTbHiNo6G\nmemberId: HaQyrMlaSHUhlaCS' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: m3RKsOsOsrgea2ZV\ncode: 57' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: XZzwbtzSDlpYFUJW\nuserId: 4FEMohChrx1yJ18q' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: mqm18APFsrtJOFeZ\nignoreUserRegistry: False' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: pjBzgDY2ofWgKsPs\ncode: 37' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: igrg615juG5119hX\nnewLeaderUserId: SpHwWNFDdJ81mtQZ' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: 9phUqygah7fcbnlx\ncode: 94\ninvitationToken: qIgTWVhrAZhprCoY\ninvitees: rFpIKCfuCL6XdgDe\nleaderId: lMxuEYvHks43xKh6\nmembers: LjtDywl3WgktgoAe\npartyId: 3kvc6qFzTqArCwPx' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: IbxGWKXYfzDXEPWg\npartyId: BrsqHRRwbtSwXNbk\nuserId: qcZIhGdO5GdmZpv2' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: Q2IdClsN1Mk6FrCT\ninvitationToken: crYzPeEov0K9S5lX\npartyId: qN3o7tLrWHEo8es8' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: yZf1a10GAVNRCvH9\ncode: 48\npartyId: lm27lSEpnlJxuS88' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: GtyOSdHpYw9uIRiA\nfriendId: h3lBfEl7s9OnjBhV' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: MIquy3vKuBkMUxUx\nchat: kM4Ryuxq5WKNG4Ba\ncode: 79\nfriendId: pEKUVmonckgFe6m3' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: trXQURcZqLWjQvlg\nfrom: 6Jmmwc6RG4k2sspP\npayload: jOdx5lNHI9SLJcJt\nreceivedAt: 25\nto: 15IBJfrcsjGPvriW' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: x5vQqZ8W1DxC2RpO\nfrom: vF2R9xj5VHiJktWY\npayload: PZz1fI6rJad8QeNf\nreceivedAt: 72\nto: d8UEyuKCo6oCTPyR' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: G08XWKsnO1oFyLXE\ncode: 40' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: kxCq5rplLt2FCl5M' \
    > test.out 2>&1
eval_tap $? 74 'RejectFriendsNotif' test.out

#- 75 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: INzbujAub6nACVOw\nfriendId: vQRpnKSvVuKqvj60' \
    > test.out 2>&1
eval_tap $? 75 'RejectFriendsRequest' test.out

#- 76 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: Tp046YI42GFgQBfm\ncode: 91' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsResponse' test.out

#- 77 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 59' \
    > test.out 2>&1
eval_tap $? 77 'RematchmakingNotif' test.out

#- 78 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: 1DgVC6NHvIGu6c3J' \
    > test.out 2>&1
eval_tap $? 78 'RequestFriendsNotif' test.out

#- 79 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: YrW2h4YlcVSNQkcK\nfriendId: JSJDBklUC0EIuann' \
    > test.out 2>&1
eval_tap $? 79 'RequestFriendsRequest' test.out

#- 80 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: 4ggbjtgFuAN6tjmN\ncode: 6' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsResponse' test.out

#- 81 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: jfXo0jCM0X0amV4j\nchannelSlug: iBIKWOYhLSkC4UvZ\npayload: 2nWpm5WIjDdgI3uz' \
    > test.out 2>&1
eval_tap $? 81 'SendChannelChatRequest' test.out

#- 82 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: lUeStUckWBeQHX8x\ncode: 27' \
    > test.out 2>&1
eval_tap $? 82 'SendChannelChatResponse' test.out

#- 83 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: EWU1lH6JI7o6bnlP\nuserId: k7SpagTatFWkkfaQ' \
    > test.out 2>&1
eval_tap $? 83 'SetReadyConsentNotif' test.out

#- 84 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: P3KbrxZ8TMb6j7JM\nmatchId: 0nWBSAbeilisRNUW' \
    > test.out 2>&1
eval_tap $? 84 'SetReadyConsentRequest' test.out

#- 85 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: 3yth7DmmbqqVtwxW\ncode: 72' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentResponse' test.out

#- 86 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: 4eH0d2uUC9qraVkT\nkey: o6SVdOILfcxHDWgh\nnamespace: kj1hEJJ7to4c2G3p\nvalue: YZCt58pDBkhV0wI7' \
    > test.out 2>&1
eval_tap $? 86 'SetSessionAttributeRequest' test.out

#- 87 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: eLBtqrvl1hr3OkwH\ncode: 75' \
    > test.out 2>&1
eval_tap $? 87 'SetSessionAttributeResponse' test.out

#- 88 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: Y2kt0VVQT1g23Qd5\nactivity: SOAOaInqWt4XwptB\navailability: 26' \
    > test.out 2>&1
eval_tap $? 88 'SetUserStatusRequest' test.out

#- 89 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: IuPvpW7HozL0oP4O\ncode: 88' \
    > test.out 2>&1
eval_tap $? 89 'SetUserStatusResponse' test.out

#- 90 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: pulnXAWmMcSdhWBw' \
    > test.out 2>&1
eval_tap $? 90 'ShutdownNotif' test.out

#- 91 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: eTVmU5YI4CDEQH9a\nmessage: 4T9kFLVVYEsWJUQA' \
    > test.out 2>&1
eval_tap $? 91 'SignalingP2PNotif' test.out

#- 92 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: Ao1zVHy6A3w8rY7T\nextraAttributes: YbRbntDwHT5amPNm\ngameMode: uz82QJGaflsW5vXI\npartyAttributes: {"YWNCK6cW90T9g0dl":{},"uRx6jlrJp06bBvTz":{},"xpAGuwVusGwFTvhj":{}}\npriority: 86\ntempParty: 3oZd944qHhTU097K' \
    > test.out 2>&1
eval_tap $? 92 'StartMatchmakingRequest' test.out

#- 93 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: xNeDDRImJGKuKpYj\ncode: 55' \
    > test.out 2>&1
eval_tap $? 93 'StartMatchmakingResponse' test.out

#- 94 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: 4akoAAIv824HtEYI\nuserId: duNlMndLLG4oMtvE' \
    > test.out 2>&1
eval_tap $? 94 'UnblockPlayerNotif' test.out

#- 95 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: UVD96OVYj5KDLLrx\nnamespace: YSJcsTVTaXePXSz7\nunblockedUserId: mo6I0hQN4JLrdk86' \
    > test.out 2>&1
eval_tap $? 95 'UnblockPlayerRequest' test.out

#- 96 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: YKvi7ZFtwoEMoFix\ncode: 99\nnamespace: iT8OZuUUFL7IQTwp\nunblockedUserId: ORjrWaUckRKE8TGT' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerResponse' test.out

#- 97 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: PF3PeZvOxzmaUJgV' \
    > test.out 2>&1
eval_tap $? 97 'UnfriendNotif' test.out

#- 98 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: Nty6TfTeS2A8FOS1\nfriendId: V79bShLznAKEI7Ig' \
    > test.out 2>&1
eval_tap $? 98 'UnfriendRequest' test.out

#- 99 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: m6Abkox1gX3WX0J8\ncode: 97' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendResponse' test.out

#- 100 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 100 'UserBannedNotification' test.out

#- 101 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: sYW0sXke4OKxNAMP' \
    > test.out 2>&1
eval_tap $? 101 'UserMetricRequest' test.out

#- 102 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: ZvW2FTkSzBRH1KlV\ncode: 81\nplayerCount: 7' \
    > test.out 2>&1
eval_tap $? 102 'UserMetricResponse' test.out

#- 103 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: g85Chahlh0UY4mEs\navailability: 11\nlastSeenAt: PY3hTHkyAfI8Iq0p\nuserId: hWHxoX2joaEU2WOc' \
    > test.out 2>&1
eval_tap $? 103 'UserStatusNotif' test.out


rm -f "tmp.dat"

exit $EXIT_CODE