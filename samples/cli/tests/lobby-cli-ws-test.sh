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
    'type: acceptFriendsNotif\nfriendId: ENwUipzaRSVr1TKZ' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: kO1GDS0fsmjGRVFW\nfriendId: DonCTwrGYaOl7Mv4' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: yedU14xzVv25cMr8\ncode: 10' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: FyiQtW6cO4Z51FTh\nuserId: DQ8xWBlIQo9U8ujg' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: VsShYfp39MNcWMnT\nblockUserId: KWEGck7Rs48vSfTf\nnamespace: HR2sxwWCradl2mm6' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: 9DgxF5yb4gkpWHRC\nblockUserId: 9WLR4x0D2hkR1XfI\ncode: 5\nnamespace: JoUewTKVNsrWh9y6' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: 8x0zykH9Ws8Toqli' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: CwmaO1C1Y2z1SYfq\nfriendId: PwLe3k8MpQpYDh0F' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: wH8FlE6c8BexNDW6\ncode: 56' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: terbpIu0p8b0cICT\ngameMode: iIjNq9EvL9o6MCzt\nisTempParty: True' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: NJssa5o4O1DbDyqE\ncode: 65' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: xet1ffOA5GIYY1e8\nfrom: OOEmZZADgOybO9pS\npayload: 7WmrqnTSQmQL7tXU\nsentAt: TW8cOY5bubgKK533' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: sGVtFTPLtU5XdSXd\nuserId: Z6zbHZeIu9rzKRsX' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionId: kTl9QyIs71L573E9' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: UYvXBTRhkGpLfehS\nnamespace: rL1G3jWXGVkFcsDA' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [gn1bO1q8BzHzG8kp,7BUWLp0MtApCgXQk,jEXRi4TM1FfYly21]\ncustomAttribute: 8CyQmQbbDHE8idBM\ndeployment: NU9sCNXxXGZfVCC4\ngameVersion: yjIp6Z1aCd07wJzy\nimageVersion: 8rPuXKDc4y0bCO79\nip: BCe7ptv8N8mgTzes\nisOK: True\nisOverrideGameVersion: False\nlastUpdate: ePvnzNLGg6G57J7M\nmatchId: 0og5nPWvWZRAt2Jy\nmessage: 0faq7yugBk37UIVz\nnamespace: LJMfXFgDnPJ1r3e7\npodName: KI54Iu5ksqKNurTy\nport: 9\nports: {"Zjs7ccC2XLUd8U6g":92,"iTAiLBEv61B2k4Qk":85,"YT5A3M7djWdpUarY":88}\nprotocol: i5fx1vxIIfO5RxB5\nprovider: 6yEADv95MNSX9bAN\nregion: Avm7eruVq5goengs\nsessionId: 0C4UjRT5U6oTib8H\nstatus: 9Jqouc3wl6yE7ORz' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: fP9CTXb02qee6HFo' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: vEbI8SvpfmLqQrFm\nuserId: Upw2cYtMb0HRUATf' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: heN0uBA630y7rRfH' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: kuyQpTE4sbahXzQ6\nactivity: [Vxiu4quQUnIxLl7x,ArUwmoScwAluzlyX,e8ULMh2vVRpVllef]\navailability: [99,35,88]\ncode: 14\nfriendIds: [WgSrHHJJuRwhrKCv,wRx0zfz0PJFTQrDU,AuI8lY9u6aYcUEmE]\nlastSeenAt: [1EP5n8t3jDUfnsph,93LB53S0Yd5AoA1h,qGvquLTkyWizTylR]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: xywv7MY65kXVejsc' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: 0r2WvAT7qCoI2oeP\nattributes: {"k6SDsj5zJocb4dEt":"EdLIzH6OnChIgtDF","TyiEk3327jQWGujJ":"FNuUuuV1WHPIY68v","Oab9CqxJdLlN6U4c":"LKJmMaQZAICG8K1A"}\ncode: 61' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: fjtgmMERBDhBRu3p\nfriendId: rYeLiAA93X9Fw3hH' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: 5v8MvXIMNJNbVxWu\ncode: 69\nfriendshipStatus: daYFPlVJIkdnAtNj' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: YLJIK38JqDj0tqyj\nkey: 2nyibhUGMasrFez8' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: wCCGm41o5YmDPa19\ncode: 2\nvalue: tqaK2lNYeImmifPv' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: 3NxMiz1diXNyXFht' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: B2eVhWkCNLJYzfwa\nchannelSlug: GpOcEzZr6ueyNQ4D\ncode: 9' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: r6gVDvHhNNFG1HXK' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: DvSGqfcof85PdqFr\ncode: 94\nuserIds: [k2VhXWWymPMGHHpw,jUVSlLIaH4g9DwAq,r9Sy9wHWA1vHQCjt]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: YFHyf6BCUoBaOGeK\nfriendId: 0OpmblKza2WP27Qa' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: 3mAYoQHnl7uhwufc\ncode: 99\nfriendIds: [yzHataiwTpoMfzq3,7O8qV1MocHncFhUI,q929IkXe0Hj3o4Ch]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: iqzREvWQjSX53BAh' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: QBv9MkDGZZrvy0lZ' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: TtLd9k7lggC8fCwP\ncode: 35\nfriendIds: [f1kmhadrV8xhe0rn,1aSHowjJWQAcBA2n,nT150HKhmXcchILm]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [mFBwsT9lDInGy5sF,nvgEUxPcJrwZ5Bt4,8ZkFtm5Z9OuP3YHv]\nmatchId: O7sNXaCVfQSkYoJF\nmessage: ngm8Ys2o30hJJsaV\npartyMember: [9G420gSxdzhozlM4,d6CZlQXRVYmeYn4o,u0SG2ZC7tbKy9YMT]\nreadyDuration: 97\nstatus: obvJpI3EjqEEGarv' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: 8vwTdelQHduXa4IF\nfrom: o4OdySWzJxv5KhyN\npayload: YHfiF0qGxl05CtxB\nsentAt: 84\nto: TlsnvIENufsMoMVj\ntopic: THznw7DWgGL2FTSB' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: IDAqCFlV7fKsAMKy' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: Su5JC4rEJ0hWXfjY\ncode: 99' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: jUDJzWukUg2vms9K\ncode: 4\nonlineFriendIds: [LO8NrUT5ZGXfreQv,q0YlNVSKNnD6skWY,CA1mRYIoLrtPMtRd]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: Gdz4BJZht0wLvQEM\nfrom: TDcLeW56tE5G1jeg\npayload: mAu9bWxwv24lYk6z\nreceivedAt: 77\nto: eMDNaLrAyrjMUODj' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: eK3MF6Ig6Sj5FYPE\nfrom: lr80sAu2HuYRlAzP\npayload: gSIqFqKYDPOZE2F1\nreceivedAt: 98\nto: 74luzIp91m6u7kd4' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: cnO6qMncPYJSVHnZ\ncode: 81' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: 00UeOKB2ygjE8Wi9' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: uvX75tZqA19YhPdG\ncode: 95\ninvitationToken: ZEXoILrEbU6pPrA2\ninvitees: XBuphpYNHfiCMRxV\nleaderId: gHgvsJHEvDRNzZyx\nmembers: rnOueKQYZbcBu7Hq\npartyId: 0A7R58OG5WJQmNWz' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"3Z9uIaoqbR2qtfDu":{},"xM4BdDHDqJMByqBe":{},"zvw5Q2Pfw3wV7fdg":{}}\ninvitees: [AvKkDA55QUf6oMPQ,lnQgdcZrswRmHmO9,hM2hrna9T1DFDXOM]\nleader: aHiNWiSeR7TrQoON\nmembers: [IpaZtzpoil2pnBtZ,F2bASU2n8DNd6kQa,AmFTcMFEbah0lhaF]\nnamespace: 8Dui4dTJnFj8WTCP\npartyId: koQbrOOeIbfuqI4E\nupdatedAt: 15' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: F5GRpm14HblHST3m\ninvitationToken: z2jJHM6dbgJJXVX7\npartyId: O94W2GU1unpZzxGX' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: 88pUlYwaS0nBuSHi' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: WYThUa8mZzSJiLjL\ncode: 53\ncustomAttributes: {"y2SF4zUFBCZ6LT0v":{},"rnX6yPHzKRVo5fnf":{},"tvF7nta9vBaC8ofb":{}}\ninvitationToken: g1O694tkNhCmIM0k\ninvitees: 0ocKW7AbThxsaz6j\nleaderId: n0vov91RvQk73SDn\nmembers: heFWci2Ikj0NRZI2\npartyId: NoO6qRd9lbI2sy3j' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: GSbZSXUSXttKrhEF\ninviterId: 1OIzphbR3a2DjbYx' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: mCQh52RxrMnKju0G\nfriendId: PXYQMksIxGL6lMAm' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: t0GwMVRrOkoXY6VH\ncode: 28' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: itLHUxUDWkjy5CqK' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: KV1llfNn8yh0rqfc\ninvitationToken: Oi84fpAgrj0J8mpH\npartyId: 4gDzGDavV4qQkS22' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: BhjAsRwH4BW6xgPS\ncode: 96\ninvitationToken: AeN1oZr1fR7AU12F\ninvitees: GMQ4GwLMFeFdZQKc\nleaderId: iHRMvwwBWRQgtOEf\nmembers: LB53ko6cr2FHfNz4\npartyId: PwZqiT0poLW2x4DZ' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: 1N0A4y5qAfxmOPbW\npartyId: UPSplJmO7LAM2jIO\nuserId: mLZ3CRczZZHXYIc1' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: bRQHevrsg32HAvyV\nmemberId: AiHVy73MSbT2GmLC' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: EJ1dwor1k5TLLJ48\ncode: 92' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: jK4V8P80wT5PYBVM\nuserId: uhLF932e5qdwRp30' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: WKfKdfPq0EeDCkHL\nignoreUserRegistry: True' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: hLC7ll8MRSR9UJPj\ncode: 8' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: kdlGhciqXrUr3LyT\nnewLeaderUserId: 9HDABN4Ui2h9WgjQ' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: Ap3F0Vu3Zx2G7puX\ncode: 58\ninvitationToken: f8B0DTz5bOMXPn7e\ninvitees: lHGCq5OzwaHKJfdf\nleaderId: 6HYr3AvGPQC09h5K\nmembers: c6ruJPGcMf5iGTgY\npartyId: HREIPkO1bwv6WNCH' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: 2XEBSRwqtlU3t7DO\npartyId: bXaPGLYNWXHm5y4y\nuserId: fArO7pBLar3W4quf' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: BRT1rAUNyUSh9QH2\ninvitationToken: k1jMI9dBH2KOr4W4\npartyId: XdrCgvZhlbgZtXWV' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: u1hroriGMCmqcyAF\ncode: 87\npartyId: 3dQ2UZn29374TZGE' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: 4d9HK7UOj76krbVp\nfriendId: dhsQMRgvMIvzYQIe' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: IOV82LwqBfWfPOfP\nchat: I1o3rNElPDMbU2ax\ncode: 60\nfriendId: 9iTh2WfJUHRAeWiv' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: 72U2NkyeMqp64C2B\nfrom: WpDL79zUqVjMtOWt\npayload: AB0BYm8bZOqcWO8s\nreceivedAt: 37\nto: 66ROc6A0x8gLw1ww' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: 0loznVlmfN4RReCa\nfrom: ecfYnUbVmIBTBAHN\npayload: 49vyQZPOe4sPVJ0q\nreceivedAt: 36\nto: 5FK2PmN15D1OG5M0' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: qZtFPFt7Vf30gB74\ncode: 78' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: prFkD7HhJUcMwIbi' \
    > test.out 2>&1
eval_tap $? 74 'RejectFriendsNotif' test.out

#- 75 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: deaSkuyHhxZ5bpPk\nfriendId: AvcDLpHgfFezZGWh' \
    > test.out 2>&1
eval_tap $? 75 'RejectFriendsRequest' test.out

#- 76 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: Vvx6YaQzVkKDHI7R\ncode: 46' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsResponse' test.out

#- 77 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 22' \
    > test.out 2>&1
eval_tap $? 77 'RematchmakingNotif' test.out

#- 78 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: qtSJai06tzthvNUk' \
    > test.out 2>&1
eval_tap $? 78 'RequestFriendsNotif' test.out

#- 79 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: KfyJWZ1Qqbu3U3fZ\nfriendId: uqJQceLAfNzCyVIg' \
    > test.out 2>&1
eval_tap $? 79 'RequestFriendsRequest' test.out

#- 80 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: WCdzOwwV9drKCRSi\ncode: 93' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsResponse' test.out

#- 81 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: eGJHhRFfTos6EN9i\nchannelSlug: KA6pmIUaED2oDlMC\npayload: Sz3ERHsOj0GtT7Hv' \
    > test.out 2>&1
eval_tap $? 81 'SendChannelChatRequest' test.out

#- 82 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: WY8AyxN5gKqT8K63\ncode: 66' \
    > test.out 2>&1
eval_tap $? 82 'SendChannelChatResponse' test.out

#- 83 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: wuR6ZPLZLul6Ho3B\nuserId: qmpgUqeLLnuAE3X4' \
    > test.out 2>&1
eval_tap $? 83 'SetReadyConsentNotif' test.out

#- 84 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: zaKD6MZETfn5HfOZ\nmatchId: Xg50AOTwUgUUEENr' \
    > test.out 2>&1
eval_tap $? 84 'SetReadyConsentRequest' test.out

#- 85 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: 8Y81rtmy3tmt4Gyc\ncode: 94' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentResponse' test.out

#- 86 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: kOr8jBDQLzzsU32W\nkey: NiXUfflpsdAJpWVP\nnamespace: Go06pFzVFEkmJCEV\nvalue: 1mwXELmNsxWKe6nk' \
    > test.out 2>&1
eval_tap $? 86 'SetSessionAttributeRequest' test.out

#- 87 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: 6sPdC6VPZtJviRDU\ncode: 33' \
    > test.out 2>&1
eval_tap $? 87 'SetSessionAttributeResponse' test.out

#- 88 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: K4jlKRTlQm37TuSS\nactivity: ZsUELd81Xq82Kcdb\navailability: 3' \
    > test.out 2>&1
eval_tap $? 88 'SetUserStatusRequest' test.out

#- 89 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: AF7sFFuGwCDPepDS\ncode: 58' \
    > test.out 2>&1
eval_tap $? 89 'SetUserStatusResponse' test.out

#- 90 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: K3mnwYhLEAisppkt' \
    > test.out 2>&1
eval_tap $? 90 'ShutdownNotif' test.out

#- 91 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: RhCuTX6JumFWqc4b\nmessage: 33bFuYdXWXTCmIzb' \
    > test.out 2>&1
eval_tap $? 91 'SignalingP2PNotif' test.out

#- 92 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: gSyt1ACDaOynYQBH\nextraAttributes: fDbYNEOVgRoitzRM\ngameMode: 0Yt2J6qGkj0PAiFc\npartyAttributes: {"OpO239CCazAgeXRd":{},"avoOeUwnqg4QY1r1":{},"1ZEFrvjlHmvibo94":{}}\npriority: 94\ntempParty: Y2SUl8g1iIeROMAz' \
    > test.out 2>&1
eval_tap $? 92 'StartMatchmakingRequest' test.out

#- 93 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: dkb7z7ALsCFkkix6\ncode: 38' \
    > test.out 2>&1
eval_tap $? 93 'StartMatchmakingResponse' test.out

#- 94 SystemComponentsStatus
samples/cli/sample-apps --wsModeStandalone \
    'type: systemComponentsStatus\ncomponents: {"8q1sGfIxwBSpYmhY":true,"TcHhZmAGxvP4mnQG":false,"SBBaogNTBCk9PcJY":false}' \
    > test.out 2>&1
eval_tap $? 94 'SystemComponentsStatus' test.out

#- 95 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: iv0V5IxwmwuhyEqK\nuserId: U0MWUHdmvARnNvK2' \
    > test.out 2>&1
eval_tap $? 95 'UnblockPlayerNotif' test.out

#- 96 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: CJFdzU7e1yHtoYJP\nnamespace: RA8Mzy0xluBItTWQ\nunblockedUserId: i1FYUPnF3RCwhvxm' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerRequest' test.out

#- 97 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: pMgYGq2yQCk7rkSZ\ncode: 47\nnamespace: UtOq2jCmgFiTimYp\nunblockedUserId: 09x9OzAoNx0oryij' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerResponse' test.out

#- 98 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: 0ZRb5QzqsVKXYtaF' \
    > test.out 2>&1
eval_tap $? 98 'UnfriendNotif' test.out

#- 99 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: wickbHyOsYRgUuIW\nfriendId: LysuC5o4CoplkLcq' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendRequest' test.out

#- 100 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: 3eP2rA3OH6FYLcIM\ncode: 86' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendResponse' test.out

#- 101 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 101 'UserBannedNotification' test.out

#- 102 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: RflXP35pc0pj4uog' \
    > test.out 2>&1
eval_tap $? 102 'UserMetricRequest' test.out

#- 103 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: vY1tcUjp1tIeSSYt\ncode: 64\nplayerCount: 2' \
    > test.out 2>&1
eval_tap $? 103 'UserMetricResponse' test.out

#- 104 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: 8IDAQ95B3XicvuuY\navailability: 79\nlastSeenAt: WtkFzmt4EX7kIxuD\nuserId: AoKl4HasxJs8St5a' \
    > test.out 2>&1
eval_tap $? 104 'UserStatusNotif' test.out


rm -f "tmp.dat"

exit $EXIT_CODE