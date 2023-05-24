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
    'type: acceptFriendsNotif\nfriendId: Ga1igAfIoPm4DT5t' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: NxYdti6HJAu4XROJ\nfriendId: hOaMfZBJqWVB0rFX' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: xEXY2f8ZDA0oGq4U\ncode: 14' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: pafioWxONlcknCHC\nuserId: 9IBKtWgysIlhaepV' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: Bh4EtOJYlsRGPaxi\nblockUserId: MubtSWqj03oLbVg7\nnamespace: 37RhU6KDJe9jjZ3X' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: xGuNIBclxcp3E8WL\nblockUserId: LhiRSlkQktDPPBBq\ncode: 31\nnamespace: JzkXCsbwO8YkMRV7' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: k8EnTT5JoT63RrLR' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: hteoR7OOl6I21HxS\nfriendId: qjtaDGPQBENNc08b' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: 9h3ClvXFYTLrFQaQ\ncode: 22' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: mMVMggDBCp3YWf1r\ngameMode: NeDzXFmopgFuWR3m\nisTempParty: False' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: 56BzVNmxc3cGckWC\ncode: 13' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: RWftMv3zq2Sg6sDP\nfrom: zcgoG5BMHXVVb29T\npayload: SrzlOZOjTQuU8pT0\nsentAt: eMAKJqmqb08Yh6rC' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: AfZ03Lelu2kTYYIO\nuserId: 6brvjigMLbGGVdoS' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionId: 9TbX4M9MrbXVbWOn' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: 742NdzvYMqH7IeJH\nnamespace: ZMjdFM0tkk2owDv5' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [OnXOZt8cNuTCbpi2,O23J53fUo2yVNVhm,NGZX8cRHOqIHl0rB]\ncustomAttribute: EATkTZMn8ARrdj0c\ndeployment: 3wzMsBCxuO6HTMoP\ngameVersion: HVAll2KRgmlmyEOe\nimageVersion: TFzEvrafAizph8Dd\nip: L225nNWOdialHWPe\nisOK: False\nisOverrideGameVersion: False\nlastUpdate: iy7Iyr15O9FGNSBq\nmatchId: h1jFMU7lFkHqlBK0\nmessage: 94EkDn7zXE7HJuT3\nnamespace: y7auq5Z3OI4KbNLU\npodName: FOMySBcGTuOU2dVI\nport: 64\nports: {"LNdKnXBlQ5ODjDoF":73,"PbkhL1sVKXduXYUS":48,"YfqXbkk1BRtSCJ2M":58}\nprotocol: iDlQoLlvfdzOxbLF\nprovider: MTtxv39CmXHLirB2\nregion: J6zfHmB1F8HqFq1E\nsessionId: YY5GmjFlUIsiQQnK\nstatus: Yq3DxVBYVCbrwACF' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: jTqFc2x60u84ymU5' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: rfEL4kkx4Lqa1CK1\nuserId: 0a6RSKFo6m0C7yQY' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: aFAHkftOUlzr4Dwv' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: SCrTNO3WlV5w8U1W\nactivity: [BhiU5GzANb41Rzza,foSWNxAoTu2n6JiW,mG61SL6Cv7IUSVhw]\navailability: [6,77,94]\ncode: 12\nfriendIds: [n6Q5u5jaNVZFhfgV,QvwQUCBNXGdGeziP,hR4CHgrxpkO9VmGP]\nlastSeenAt: [5r6jfrKrFu9XhJEs,JzyHG5fd1mqoFTNm,Vbhfv9XCCnRYKWPB]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: YTq9vz5BM8W1xuST' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: VbHF2WER6YsaxL2c\nattributes: {"cQqH8S5kfOOQERq2":"hDq9w0XrQhTUoVZC","HzNMg8bYG4r4bCqP":"IUImWjF7jpTwGRFr","GjY7OLYf66uiJQ4F":"LVxEYSx3tG1IiGZn"}\ncode: 36' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: vHbLt2c53LHqrnBs\nfriendId: Dvm08ZSZbRzFHZNg' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: MDl39qjZcp83QTYp\ncode: 11\nfriendshipStatus: cCOOZS0nCrsopiTj' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: tItPKfXGbhDI0LrV\nkey: wRKdm9XQb9ZFg3YP' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: bvuEsQhft2ZOqaIi\ncode: 24\nvalue: xocchFG5qkELasb4' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: cqCeouOAYIRq9mDw' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: tqTdeVPH35Nd9gLQ\nchannelSlug: z7Bantp8JtPA4lkU\ncode: 48' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: gdA6QwsWwQL6eiQZ' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: bxJHv6mocjNsnpff\ncode: 61\nuserIds: [OYO1khqZCA6ON2nb,9mnx5PHTdSO6xmB3,R3XmJxhhKPt7VBuZ]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: cje4OKzz9Fy0Gkgu\nfriendId: 3DyXx3dtjjLts8yW' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: URtNmaAQDN2Qnj8m\ncode: 34\nfriendIds: [G3HoCJvsELY8PKI8,YXYXM1H2DDy5NGlb,2BYcM86eBCgcRebx]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: xOLHuiX7WEvDMgNk' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: kxUjNsf26trgz6kT' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: j38NkjTFDDknlV9u\ncode: 24\nfriendIds: [0kj47KThFtY48At5,Z3RC04ysg8gQy2On,tiUbzofYTNAduL9s]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [FgexZQV5cGycm3g8,TfDug6uFbVnG54De,auPPkCAVXxcyPt8K]\nmatchId: A1JXCuoiN35V6fgm\nmessage: jUZ2tzZbaeUObsvZ\npartyMember: [u8ZbcYkTOuHawM4L,yKjzgFFpukxYHU5C,feFylJZh1vLp3TEK]\nreadyDuration: 92\nstatus: 6RqzHP11Jg6HFlNP' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: eXQeGYpRitmZ5X6c\nfrom: XJumZaVODIEqhIYm\npayload: 9Vjf0iOe4rDdpC52\nsentAt: 61\nto: hWY8wox4z3EXmvhQ\ntopic: tgtP7mnTXBm8ViWt' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: DUWB0E9LYABGaE3U' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: bj52Hs4qyYfJv272\ncode: 19' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: umVdmN1e20ijBbCQ\ncode: 100\nonlineFriendIds: [wm1k10vDtOMAWg7Y,j1nF7LNkO9LxyTgR,sGnRSXDYVMPiyf8s]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: cduMlEHtWRDlLOPt\nfrom: QhKxWqe7RnBGxkkO\npayload: htIepdDZCYMNu9yj\nreceivedAt: 53\nto: mTDGW8cbPgJYc7IS' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: l8TGy0UG0nC4uxHc\nfrom: DKKCn2gfevQAIh3S\npayload: QGfhFXULUAgWuwCc\nreceivedAt: 78\nto: kocbYpnQzHxpdSTQ' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: PFvNWNfPoQo4iKbi\ncode: 30' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: ptcWpwZjKzAuhQy8' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: hyZct7Kd2GaSX5pT\ncode: 96\ninvitationToken: CZHgqp5GvNjAoTR7\ninvitees: xDlS4IkY2mY5jOl5\nleaderId: lGsAqghEJxqXZfpN\nmembers: SxnC4yhuTfWzXsmk\npartyId: k89Lwp0dY3RFQhj6' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"1vczXLStzV3mmidF":{},"pwMoL6i4Tfcd7s7M":{},"xweaqAza7fNk4Ayr":{}}\ninvitees: [1a3kG9OdKPBlxpEq,egOwE6pWwBLAHqQG,itqN3VieFfwOlrSq]\nleader: xAm2fl3ADnOLIRHx\nmembers: [Rs7qa7UDTykTPBXV,9Sbg7ccmSgnJzgxT,0LFvtx4ogC72BInI]\nnamespace: JHcZbBvAdVLqxsl7\npartyId: JhTTu3pfv4OkIUqL\nupdatedAt: 64' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: Zk8sCsSf7DbwtG3R\ninvitationToken: gsFU01zgFWNcatlT\npartyId: frThdgi36pbmMlnK' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: cTzDo8AjL0vIU3En' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: oNDdIxfetBtH3xFc\ncode: 90\ncustomAttributes: {"4OhrDoLqoHodPXQf":{},"tvkwENmbdkR5N69U":{},"vZRCvZI0q84QMvUz":{}}\ninvitationToken: pyeueO0FshnpAdPP\ninvitees: cYJGF7RXETkt57Q0\nleaderId: UgSeK2slnzoCfwxv\nmembers: lVk3jJ2RYUHaIEZu\npartyId: Z6OHAuQEGP3qAbuL' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: HiGC1N1rzalrWk4I\ninviterId: 2N5eZQs6F15WGjTC' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: 4DGC73PO8et7DeN6\nfriendId: 7gLonrSs8RjY1WZj' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: VL8FJN5bKfpzbxv0\ncode: 13' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: 23f6gPtKBKVXF37Q' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: CYTJTdLH1TkXeUNd\ninvitationToken: mMlGSBkpe9y5uYTb\npartyId: MgZnG53IZAdZAFsj' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: gTVldJyZUIJygWA9\ncode: 4\ninvitationToken: 300yjSo7ob4oyZ4c\ninvitees: wKDiuuwYp4V5ktfE\nleaderId: sL7ae7LfmAzhqRuP\nmembers: Olgyh7S3aMGVzZ3y\npartyId: NBuydh7ZmOH1JCVr' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: wBKL7wlIPcyD0gJe\npartyId: k2Si5zbfi5bQIQD7\nuserId: GA96z1tOwHr0Bw3b' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: YGnEJcPOjWaoxo47\nmemberId: BueA3bYDx86McP1b' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: unj993Meb53lCQy2\ncode: 82' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: t9TusT371NFKdFbv\nuserId: DpctgmUhxlcmaxtv' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: x8Z55cMO1YS3rUAk\nignoreUserRegistry: False' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: jFfdxqJ6XCWueaDx\ncode: 64' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: VU3lpU3fwRxo0khk\nnewLeaderUserId: 8DCYwwBP12epMoOv' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: eQQtDFDfdw6l0FLO\ncode: 9\ninvitationToken: ZAT7nAf4gGJRsrsh\ninvitees: JBAskxqQ4M0c17eg\nleaderId: 4O40Rk1p9MLuw9ih\nmembers: o3yKp8ZXrargvsQD\npartyId: GmkvjxROxtLZ8tVo' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: XHBcuXB9L3HMHbWZ\npartyId: 6MOJPgfLEI5DQ4Oz\nuserId: tJ2kQ2MI5LTHh01W' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: Sd62GllooOtXBJ38\ninvitationToken: 9guuxbnW2P0Z4w6j\npartyId: ub4G0jDOWtwBRq1N' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: 4CqiKYmMMChlFbLI\ncode: 1\npartyId: goWVAvGpygweEFYc' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: 9CmUbDgNIo60qIaG\nfriendId: sgr5dVFpTvxTl5cx' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: 1rZng6eQ8FCDZ4na\nchat: a1k2znifGL1uO99J\ncode: 0\nfriendId: d5Mh8PmNctXVAhlz' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: tiLlZi5hCZFTMEN7\nfrom: Q5DMevGa2e9R93AM\npayload: yPt5i3DNOfqeZTlx\nreceivedAt: 55\nto: tIP1rGg7vk2kIWcb' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: 2AcOj5ZezigRtYrZ\nfrom: gWld7p4egHBKHhYo\npayload: yoOgoEtUsKSyueMA\nreceivedAt: 38\nto: GWraUpqQkA5anHJU' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: iey3BXIy0S7a0cBt\ncode: 3' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: T8NXXELua2P751Sq' \
    > test.out 2>&1
eval_tap $? 74 'RejectFriendsNotif' test.out

#- 75 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: 5t5v7NUi0dn6UPGt\nfriendId: t3P0YqO6jnk72BQH' \
    > test.out 2>&1
eval_tap $? 75 'RejectFriendsRequest' test.out

#- 76 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: PtW6njIZ5pGaRaU5\ncode: 27' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsResponse' test.out

#- 77 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 8' \
    > test.out 2>&1
eval_tap $? 77 'RematchmakingNotif' test.out

#- 78 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: YI49KlaoyCTZfhVO' \
    > test.out 2>&1
eval_tap $? 78 'RequestFriendsNotif' test.out

#- 79 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: HW7v5bny294wGW9i\nfriendId: kdhVkRgSr00oVvmc' \
    > test.out 2>&1
eval_tap $? 79 'RequestFriendsRequest' test.out

#- 80 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: 2sdFhx39bq1OoxAI\ncode: 44' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsResponse' test.out

#- 81 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: p2ewSTv0LRb8ivSY\nchannelSlug: WjLUVJpjSwKgO7G8\npayload: n8RwQY7FkLRH5m6t' \
    > test.out 2>&1
eval_tap $? 81 'SendChannelChatRequest' test.out

#- 82 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: aQnHkGlFRUITZ0jV\ncode: 58' \
    > test.out 2>&1
eval_tap $? 82 'SendChannelChatResponse' test.out

#- 83 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: KyYITyqM5gEU6ZCH\nuserId: vgezTVZYkfkvpkFx' \
    > test.out 2>&1
eval_tap $? 83 'SetReadyConsentNotif' test.out

#- 84 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: 8jFZvidhhzaj5lv3\nmatchId: y6TgFiOVpGQmj5ij' \
    > test.out 2>&1
eval_tap $? 84 'SetReadyConsentRequest' test.out

#- 85 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: Q6xBNjAllVSAbHfA\ncode: 35' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentResponse' test.out

#- 86 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: dMXr8Mr4VmcLiH49\nkey: bCt5ioQ6NmgN4Pv6\nnamespace: 5b3tKmc1drLf217N\nvalue: jSkGCsSuhbgfY3Qn' \
    > test.out 2>&1
eval_tap $? 86 'SetSessionAttributeRequest' test.out

#- 87 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: IxCLajx41XK5ti09\ncode: 2' \
    > test.out 2>&1
eval_tap $? 87 'SetSessionAttributeResponse' test.out

#- 88 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: ea5Ou41coXNQAnJx\nactivity: AxUXvUApOjC0uCyu\navailability: 33' \
    > test.out 2>&1
eval_tap $? 88 'SetUserStatusRequest' test.out

#- 89 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: fYHLU0NOwHIIMUGg\ncode: 43' \
    > test.out 2>&1
eval_tap $? 89 'SetUserStatusResponse' test.out

#- 90 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: CbRaJe2oUlDA1XEW' \
    > test.out 2>&1
eval_tap $? 90 'ShutdownNotif' test.out

#- 91 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: oN5CRS4R5lHcokmW\nmessage: Nai12jZ0DNOnYisV' \
    > test.out 2>&1
eval_tap $? 91 'SignalingP2PNotif' test.out

#- 92 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: NPxocQkBzIaYFSXZ\nextraAttributes: qGRqMLbyEWnohZwy\ngameMode: aYu1iLAswREhE2MJ\npartyAttributes: {"3Q4zZ0LwofrqXhzA":{},"W8PiBccClPpdi4ZW":{},"zgOBEeJQLkJcYPVG":{}}\npriority: 31\ntempParty: LXx7uPQhQfVtGpzp' \
    > test.out 2>&1
eval_tap $? 92 'StartMatchmakingRequest' test.out

#- 93 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: rmsd7PKBBRrEoKfN\ncode: 52' \
    > test.out 2>&1
eval_tap $? 93 'StartMatchmakingResponse' test.out

#- 94 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: mzzfJt9tZrd1Q9nc\nuserId: 84xXWe2R3L0y8rLE' \
    > test.out 2>&1
eval_tap $? 94 'UnblockPlayerNotif' test.out

#- 95 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: ZHZQB9WsbcHbvHYW\nnamespace: AzrluEwD77v2yHcO\nunblockedUserId: DC9lFL89TyueRrPo' \
    > test.out 2>&1
eval_tap $? 95 'UnblockPlayerRequest' test.out

#- 96 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: YdNatmoEB5xgvmMx\ncode: 68\nnamespace: YKvG2zg0r5keg7AN\nunblockedUserId: ljdTsL9sqStiYMHZ' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerResponse' test.out

#- 97 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: vLrkbXnGz76pm4Sx' \
    > test.out 2>&1
eval_tap $? 97 'UnfriendNotif' test.out

#- 98 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: ggMwQDf3BXZ7Ize6\nfriendId: 30jYGmxODVAK7lUh' \
    > test.out 2>&1
eval_tap $? 98 'UnfriendRequest' test.out

#- 99 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: uO5q306RnTdPf46D\ncode: 97' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendResponse' test.out

#- 100 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 100 'UserBannedNotification' test.out

#- 101 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: qorp1r2tpprvTrmj' \
    > test.out 2>&1
eval_tap $? 101 'UserMetricRequest' test.out

#- 102 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: IQtUspuwHQMctY1Q\ncode: 20\nplayerCount: 36' \
    > test.out 2>&1
eval_tap $? 102 'UserMetricResponse' test.out

#- 103 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: Xuc7Q9wQYjiuINAa\navailability: 11\nlastSeenAt: cPPNuHqv4X7MW5Bg\nuserId: 5Oln2S5e6kr0XQkl' \
    > test.out 2>&1
eval_tap $? 103 'UserStatusNotif' test.out


rm -f "tmp.dat"

exit $EXIT_CODE