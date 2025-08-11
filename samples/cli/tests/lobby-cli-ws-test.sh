#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Code generated. DO NOT EDIT.

# Meta:
# - random seed: 256
# - template file: 

# Instructions:
# - Run the Justice SDK Mock Server first before running this script.

export AB_BASE_URL="http://127.0.0.1:8000"
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
echo "1..105"

#- 1 AcceptFriendsNotif
samples/cli/sample-apps --ws \
    'type: acceptFriendsNotif\nfriendId: WThLK3iL' \
    > test.out 2>&1
eval_tap $? 1 'AcceptFriendsNotif' test.out

#- 2 AcceptFriendsRequest
samples/cli/sample-apps --ws \
    'type: acceptFriendsRequest\nid: KTmP2W7a\nfriendId: NMVnZzUP' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsRequest' test.out

#- 3 AcceptFriendsResponse
samples/cli/sample-apps --ws \
    'type: acceptFriendsResponse\nid: jaqOKJHV\ncode: 1' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsResponse' test.out

#- 4 BlockPlayerNotif
samples/cli/sample-apps --ws \
    'type: blockPlayerNotif\nblockedUserId: Yusv1fUJ\nuserId: dr8IJcMz' \
    > test.out 2>&1
eval_tap $? 4 'BlockPlayerNotif' test.out

#- 5 BlockPlayerRequest
samples/cli/sample-apps --ws \
    'type: blockPlayerRequest\nid: Maei26uI\nblockUserId: sb3dWaVy\nnamespace: g8L6La9o' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerRequest' test.out

#- 6 BlockPlayerResponse
samples/cli/sample-apps --ws \
    'type: blockPlayerResponse\nid: GwiXgU1J\nblockUserId: tQ412eFV\ncode: 70\nnamespace: j1nb7J3X' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerResponse' test.out

#- 7 CancelFriendsNotif
samples/cli/sample-apps --ws \
    'type: cancelFriendsNotif\nuserId: 9nqk4GXh' \
    > test.out 2>&1
eval_tap $? 7 'CancelFriendsNotif' test.out

#- 8 CancelFriendsRequest
samples/cli/sample-apps --ws \
    'type: cancelFriendsRequest\nid: 7wTS03h4\nfriendId: cjYYxOaN' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsRequest' test.out

#- 9 CancelFriendsResponse
samples/cli/sample-apps --ws \
    'type: cancelFriendsResponse\nid: KT4x0YAD\ncode: 18' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsResponse' test.out

#- 10 CancelMatchmakingRequest
samples/cli/sample-apps --ws \
    'type: cancelMatchmakingRequest\nid: A6ziWL29\ngameMode: wE6BiTiK\nisTempParty: False' \
    > test.out 2>&1
eval_tap $? 10 'CancelMatchmakingRequest' test.out

#- 11 CancelMatchmakingResponse
samples/cli/sample-apps --ws \
    'type: cancelMatchmakingResponse\nid: werkykz5\ncode: 14' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingResponse' test.out

#- 12 ChannelChatNotif
samples/cli/sample-apps --ws \
    'type: channelChatNotif\nchannelSlug: fJwiehHE\nfrom: GinXm27S\npayload: pTcO1nnp\nsentAt: 1996-06-18T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 12 'ChannelChatNotif' test.out

#- 13 ClientResetRequest
samples/cli/sample-apps --ws \
    'type: clientResetRequest\nnamespace: OHu7Ap0H\nuserId: OwX5SCxk' \
    > test.out 2>&1
eval_tap $? 13 'ClientResetRequest' test.out

#- 14 ConnectNotif
samples/cli/sample-apps --ws \
    'type: connectNotif\nlobbySessionID: 9ftabUgg' \
    > test.out 2>&1
eval_tap $? 14 'ConnectNotif' test.out

#- 15 DisconnectNotif
samples/cli/sample-apps --ws \
    'type: disconnectNotif\nconnectionId: 7YSyX18T\nnamespace: 0wG87DoS' \
    > test.out 2>&1
eval_tap $? 15 'DisconnectNotif' test.out

#- 16 DsNotif
samples/cli/sample-apps --ws \
    'type: dsNotif\nalternateIps: [4cfTkcEt,iHs5bc5X,ZCzJmzm3]\ncustomAttribute: kM4CCIpg\ndeployment: 32NhDweD\ngameVersion: nYhY3XXj\nimageVersion: JjyTins9\nip: XmN3WS9p\nisOK: False\nisOverrideGameVersion: True\nlastUpdate: 4zPw3Eiw\nmatchId: CAzw45FB\nmessage: 3RCzOSIm\nnamespace: QQoO4AhQ\npodName: akShzXxx\nport: 18\nports: {"NjEzkO1v":59,"O7t6CUvs":75,"SMxpVjfP":34}\nprotocol: EBV3oyCa\nprovider: q0E5FgGr\nregion: EficqtqO\nsessionId: aWXI6ekA\nstatus: 6sM6n4Ar' \
    > test.out 2>&1
eval_tap $? 16 'DsNotif' test.out

#- 17 ErrorNotif
samples/cli/sample-apps --ws \
    'type: errorNotif\nmessage: UCMfyx1E' \
    > test.out 2>&1
eval_tap $? 17 'ErrorNotif' test.out

#- 18 ExitAllChannel
samples/cli/sample-apps --ws \
    'type: exitAllChannel\nnamespace: 9d4uOCIL\nuserId: AJy0ZmID' \
    > test.out 2>&1
eval_tap $? 18 'ExitAllChannel' test.out

#- 19 FriendsStatusRequest
samples/cli/sample-apps --ws \
    'type: friendsStatusRequest\nid: M7VvyNMD' \
    > test.out 2>&1
eval_tap $? 19 'FriendsStatusRequest' test.out

#- 20 FriendsStatusResponse
samples/cli/sample-apps --ws \
    'type: friendsStatusResponse\nid: VQAW0ZSI\nactivity: [jHjZxD1Y,0wckGtGS,4B2Og9p2]\navailability: [yvMXR0c0,2X9NII6n,G4L1jpmw]\ncode: 41\nfriendIds: [Mvii5ZMA,9hfNuoPj,WmBI0lEW]\nlastSeenAt: [1993-02-24T00:00:00Z,1993-05-21T00:00:00Z,1981-08-10T00:00:00Z]' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusResponse' test.out

#- 21 GetAllSessionAttributeRequest
samples/cli/sample-apps --ws \
    'type: getAllSessionAttributeRequest\nid: dzMI5Wp3' \
    > test.out 2>&1
eval_tap $? 21 'GetAllSessionAttributeRequest' test.out

#- 22 GetAllSessionAttributeResponse
samples/cli/sample-apps --ws \
    'type: getAllSessionAttributeResponse\nid: E7Het9ah\nattributes: {"KFs1yvvV":"HLjO7F6a","IWRiSQac":"28fUMM3o","iTBUuNjV":"6zFSKjo5"}\ncode: 59' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeResponse' test.out

#- 23 GetFriendshipStatusRequest
samples/cli/sample-apps --ws \
    'type: getFriendshipStatusRequest\nid: oqGt0iwk\nfriendId: 49a5VzJX' \
    > test.out 2>&1
eval_tap $? 23 'GetFriendshipStatusRequest' test.out

#- 24 GetFriendshipStatusResponse
samples/cli/sample-apps --ws \
    'type: getFriendshipStatusResponse\nid: nUXoBPiF\ncode: 74\nfriendshipStatus: oaDIOdMA' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusResponse' test.out

#- 25 GetSessionAttributeRequest
samples/cli/sample-apps --ws \
    'type: getSessionAttributeRequest\nid: xX9we2vp\nkey: PxMx5uXJ' \
    > test.out 2>&1
eval_tap $? 25 'GetSessionAttributeRequest' test.out

#- 26 GetSessionAttributeResponse
samples/cli/sample-apps --ws \
    'type: getSessionAttributeResponse\nid: 9k2hxVRI\ncode: 50\nvalue: DZiGiL9X' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeResponse' test.out

#- 27 Heartbeat
samples/cli/sample-apps --ws \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 27 'Heartbeat' test.out

#- 28 JoinDefaultChannelRequest
samples/cli/sample-apps --ws \
    'type: joinDefaultChannelRequest\nid: 7RXGArhe' \
    > test.out 2>&1
eval_tap $? 28 'JoinDefaultChannelRequest' test.out

#- 29 JoinDefaultChannelResponse
samples/cli/sample-apps --ws \
    'type: joinDefaultChannelResponse\nid: Xs7IjQoT\nchannelSlug: vHlgAqYT\ncode: 24' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelResponse' test.out

#- 30 ListIncomingFriendsRequest
samples/cli/sample-apps --ws \
    'type: listIncomingFriendsRequest\nid: UO6RyKIs' \
    > test.out 2>&1
eval_tap $? 30 'ListIncomingFriendsRequest' test.out

#- 31 ListIncomingFriendsResponse
samples/cli/sample-apps --ws \
    'type: listIncomingFriendsResponse\nid: YcVwBd6U\ncode: 26\nuserIds: [H2FHggdH,bLSk1cQ6,Z9Glnd3x]' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsResponse' test.out

#- 32 ListOfFriendsRequest
samples/cli/sample-apps --ws \
    'type: listOfFriendsRequest\nid: 4FsuA0lT\nfriendId: S736hugG' \
    > test.out 2>&1
eval_tap $? 32 'ListOfFriendsRequest' test.out

#- 33 ListOfFriendsResponse
samples/cli/sample-apps --ws \
    'type: listOfFriendsResponse\nid: Gv4jzCID\ncode: 70\nfriendIds: [2RD0PKfl,nwA4e2OW,pF0wubcr]' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsResponse' test.out

#- 34 ListOnlineFriendsRequest
samples/cli/sample-apps --ws \
    'type: listOnlineFriendsRequest\nid: ZDVkHU2l' \
    > test.out 2>&1
eval_tap $? 34 'ListOnlineFriendsRequest' test.out

#- 35 ListOutgoingFriendsRequest
samples/cli/sample-apps --ws \
    'type: listOutgoingFriendsRequest\nid: NAMgws1x' \
    > test.out 2>&1
eval_tap $? 35 'ListOutgoingFriendsRequest' test.out

#- 36 ListOutgoingFriendsResponse
samples/cli/sample-apps --ws \
    'type: listOutgoingFriendsResponse\nid: rP9VnCHK\ncode: 81\nfriendIds: [gIm27R9B,K8ZY6lnt,PacuYiIZ]' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsResponse' test.out

#- 37 MatchmakingNotif
samples/cli/sample-apps --ws \
    'type: matchmakingNotif\ncounterPartyMember: [kPYPY0z1,axVvQEnw,RL8weRci]\nmatchId: Gz8rxftE\nmessage: VP4RQ7qb\npartyMember: [XkFqg9rh,W5U7kXIf,2Ou90qib]\nreadyDuration: 84\nstatus: De5UkSAG' \
    > test.out 2>&1
eval_tap $? 37 'MatchmakingNotif' test.out

#- 38 MessageNotif
samples/cli/sample-apps --ws \
    'type: messageNotif\nid: 9dbJaE6e\nfrom: QzJU7l2H\npayload: HMPVPmsk\nsentAt: 1979-05-10T00:00:00Z\nto: tth4GToM\ntopic: m08gdNbE' \
    > test.out 2>&1
eval_tap $? 38 'MessageNotif' test.out

#- 39 MessageSessionNotif
samples/cli/sample-apps --ws \
    'type: messageSessionNotif\nid: 7ci8EpJ0\nfrom: 46d7uYa3\npayload: q3osMvUm\nsentAt: 1998-07-19T00:00:00Z\nto: 3OJTyLhQ\ntopic: cmk68gxD' \
    > test.out 2>&1
eval_tap $? 39 'MessageSessionNotif' test.out

#- 40 OfflineNotificationRequest
samples/cli/sample-apps --ws \
    'type: offlineNotificationRequest\nid: KE93MIgU' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
samples/cli/sample-apps --ws \
    'type: offlineNotificationResponse\nid: XhjsySjA\ncode: 54' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
samples/cli/sample-apps --ws \
    'type: onlineFriends\nid: SehmPFIM\ncode: 19\nonlineFriendIds: [TMoR0AlV,wvYmDM9Y,2CMSxadV]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
samples/cli/sample-apps --ws \
    'type: partyChatNotif\nid: QhKCt99D\nfrom: H5IBvfMv\npayload: t1P1Zhma\nreceivedAt: 1971-05-11T00:00:00Z\nto: x9CqLJNq' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
samples/cli/sample-apps --ws \
    'type: partyChatRequest\nid: 0uDYwKf7\nfrom: JBP3XEMs\npayload: E28jr0Tb\nreceivedAt: 1997-01-10T00:00:00Z\nto: odSMLfY6' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
samples/cli/sample-apps --ws \
    'type: partyChatResponse\nid: Y7IZe6y1\ncode: 62' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
samples/cli/sample-apps --ws \
    'type: partyCreateRequest\nid: 0cj1ZvOE' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
samples/cli/sample-apps --ws \
    'type: partyCreateResponse\nid: Rq9MNm5z\ncode: 11\ninvitationToken: pUqZHME7\ninvitees: JQq5rXvM\nleaderId: EgN0NZuj\nmembers: pqV7uBYA\npartyId: Rjmt8veG' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
samples/cli/sample-apps --ws \
    'type: partyDataUpdateNotif\ncustomAttributes: {"PDVOW4sb":{},"F1VGK7xO":{},"4JwChGXE":{}}\ninvitees: [Wa4Ld7j6,Rm8TdUFW,sCNdAApH]\nleader: QYjWFQGW\nmembers: [0Oi3OfoL,ig55ZK0p,5X8NvgjE]\nnamespace: idjbJvTU\npartyId: x7D6Dx55\nupdatedAt: 1996-02-06T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
samples/cli/sample-apps --ws \
    'type: partyGetInvitedNotif\nfrom: mKpnEMqd\ninvitationToken: S1K5BYbQ\npartyId: OcAWiGX8' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
samples/cli/sample-apps --ws \
    'type: partyInfoRequest\nid: lNfjMRhR' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
samples/cli/sample-apps --ws \
    'type: partyInfoResponse\nid: sFqBG8PK\ncode: 69\ncustomAttributes: {"8wBvh7uh":{},"efbeviuR":{},"gDLVRAjz":{}}\ninvitationToken: GMOWAnmb\ninvitees: amhYVZ5M\nleaderId: 41nc04aj\nmembers: O4XuYRN8\npartyId: 7qqJlPo0' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
samples/cli/sample-apps --ws \
    'type: partyInviteNotif\ninviteeId: UoWF1TRm\ninviterId: sdIqqokX' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
samples/cli/sample-apps --ws \
    'type: partyInviteRequest\nid: 51RzFLjq\nfriendId: dcQ0qU9d' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
samples/cli/sample-apps --ws \
    'type: partyInviteResponse\nid: 1URKs8mw\ncode: 45' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
samples/cli/sample-apps --ws \
    'type: partyJoinNotif\nuserId: JGQawOcb' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
samples/cli/sample-apps --ws \
    'type: partyJoinRequest\nid: UCpeeNsl\ninvitationToken: TiGvhrNd\npartyId: n5ODIf4x' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
samples/cli/sample-apps --ws \
    'type: partyJoinResponse\nid: FRRN6hSb\ncode: 58\ninvitationToken: IgBxk8jg\ninvitees: YwrcoJGZ\nleaderId: d2v7Q2Rc\nmembers: biLHwD2e\npartyId: EuaRVCLt' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
samples/cli/sample-apps --ws \
    'type: partyKickNotif\nleaderId: lEVtOsBW\npartyId: lUcVoVj2\nuserId: AaA4oaPT' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
samples/cli/sample-apps --ws \
    'type: partyKickRequest\nid: lROXZbsW\nmemberId: hT76WFoG' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
samples/cli/sample-apps --ws \
    'type: partyKickResponse\nid: bJyl9WXT\ncode: 44' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
samples/cli/sample-apps --ws \
    'type: partyLeaveNotif\nleaderId: SqtjsB52\nuserId: Sblo99OF' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
samples/cli/sample-apps --ws \
    'type: partyLeaveRequest\nid: UeIRKTA5\nignoreUserRegistry: False' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
samples/cli/sample-apps --ws \
    'type: partyLeaveResponse\nid: C3yLDirq\ncode: 36' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
samples/cli/sample-apps --ws \
    'type: partyPromoteLeaderRequest\nid: jG4mXV5Y\nnewLeaderUserId: 2wJeV3xj' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
samples/cli/sample-apps --ws \
    'type: partyPromoteLeaderResponse\nid: h4gGiCBi\ncode: 31\ninvitationToken: iIMm0sOY\ninvitees: qUpWs8sO\nleaderId: tugDQIfT\nmembers: bp0uyuTC\npartyId: 9ag8V8th' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
samples/cli/sample-apps --ws \
    'type: partyRejectNotif\nleaderId: L6MjDysZ\npartyId: yATJPmnt\nuserId: iPU96KqY' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
samples/cli/sample-apps --ws \
    'type: partyRejectRequest\nid: 6dUAD4NZ\ninvitationToken: 7rJnFul0\npartyId: t75HJpwS' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
samples/cli/sample-apps --ws \
    'type: partyRejectResponse\nid: X0biVguM\ncode: 27\npartyId: csqZ4Y5F' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
samples/cli/sample-apps --ws \
    'type: personalChatHistoryRequest\nid: RDgzkcct\nfriendId: v0t0M7NM' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
samples/cli/sample-apps --ws \
    'type: personalChatHistoryResponse\nid: w0MNSukg\nchat: vzAE003F\ncode: 93\nfriendId: YefyuAaW' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
samples/cli/sample-apps --ws \
    'type: personalChatNotif\nid: CDyDzfdP\nfrom: P7Pxavxx\npayload: THhDTCmC\nreceivedAt: 1987-05-27T00:00:00Z\nto: ALVJD9xT' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
samples/cli/sample-apps --ws \
    'type: personalChatRequest\nid: YuQIskuw\nfrom: 3gSo71j5\npayload: NAGdBow5\nreceivedAt: 1986-09-02T00:00:00Z\nto: FftVtmZj' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
samples/cli/sample-apps --ws \
    'type: personalChatResponse\nid: 1ySgFc9D\ncode: 63' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RefreshTokenRequest
samples/cli/sample-apps --ws \
    'type: refreshTokenRequest\nid: yTyQmeFi\ntoken: fksPZMLB' \
    > test.out 2>&1
eval_tap $? 74 'RefreshTokenRequest' test.out

#- 75 RefreshTokenResponse
samples/cli/sample-apps --ws \
    'type: refreshTokenResponse\nid: oTo4JsOR\ncode: 81' \
    > test.out 2>&1
eval_tap $? 75 'RefreshTokenResponse' test.out

#- 76 RejectFriendsNotif
samples/cli/sample-apps --ws \
    'type: rejectFriendsNotif\nuserId: kKKKyz7y' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsNotif' test.out

#- 77 RejectFriendsRequest
samples/cli/sample-apps --ws \
    'type: rejectFriendsRequest\nid: vJmBSThI\nfriendId: 4LMJjnZf' \
    > test.out 2>&1
eval_tap $? 77 'RejectFriendsRequest' test.out

#- 78 RejectFriendsResponse
samples/cli/sample-apps --ws \
    'type: rejectFriendsResponse\nid: MipoMhVD\ncode: 97' \
    > test.out 2>&1
eval_tap $? 78 'RejectFriendsResponse' test.out

#- 79 RematchmakingNotif
samples/cli/sample-apps --ws \
    'type: rematchmakingNotif\nbanDuration: 89' \
    > test.out 2>&1
eval_tap $? 79 'RematchmakingNotif' test.out

#- 80 RequestFriendsNotif
samples/cli/sample-apps --ws \
    'type: requestFriendsNotif\nfriendId: RFDqIUQ7' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsNotif' test.out

#- 81 RequestFriendsRequest
samples/cli/sample-apps --ws \
    'type: requestFriendsRequest\nid: 5ZZYVNHO\nfriendId: UvY0R0wo' \
    > test.out 2>&1
eval_tap $? 81 'RequestFriendsRequest' test.out

#- 82 RequestFriendsResponse
samples/cli/sample-apps --ws \
    'type: requestFriendsResponse\nid: q6L5mXzo\ncode: 1' \
    > test.out 2>&1
eval_tap $? 82 'RequestFriendsResponse' test.out

#- 83 SendChannelChatRequest
samples/cli/sample-apps --ws \
    'type: sendChannelChatRequest\nid: 3cOqarM0\nchannelSlug: lGHb4JEl\npayload: 95vKvv0o' \
    > test.out 2>&1
eval_tap $? 83 'SendChannelChatRequest' test.out

#- 84 SendChannelChatResponse
samples/cli/sample-apps --ws \
    'type: sendChannelChatResponse\nid: 7zxXkZPW\ncode: 49' \
    > test.out 2>&1
eval_tap $? 84 'SendChannelChatResponse' test.out

#- 85 SetReadyConsentNotif
samples/cli/sample-apps --ws \
    'type: setReadyConsentNotif\nmatchId: uC9tThum\nuserId: xrCvC354' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentNotif' test.out

#- 86 SetReadyConsentRequest
samples/cli/sample-apps --ws \
    'type: setReadyConsentRequest\nid: nzliTWuL\nmatchId: kHIZEVMD' \
    > test.out 2>&1
eval_tap $? 86 'SetReadyConsentRequest' test.out

#- 87 SetReadyConsentResponse
samples/cli/sample-apps --ws \
    'type: setReadyConsentResponse\nid: gMRZ68VI\ncode: 34' \
    > test.out 2>&1
eval_tap $? 87 'SetReadyConsentResponse' test.out

#- 88 SetSessionAttributeRequest
samples/cli/sample-apps --ws \
    'type: setSessionAttributeRequest\nid: 8gYAat9d\nkey: jM2gmWWH\nnamespace: edCRuKj4\nvalue: uUBG9lOs' \
    > test.out 2>&1
eval_tap $? 88 'SetSessionAttributeRequest' test.out

#- 89 SetSessionAttributeResponse
samples/cli/sample-apps --ws \
    'type: setSessionAttributeResponse\nid: hZPPjZuM\ncode: 57' \
    > test.out 2>&1
eval_tap $? 89 'SetSessionAttributeResponse' test.out

#- 90 SetUserStatusRequest
samples/cli/sample-apps --ws \
    'type: setUserStatusRequest\nid: hD3Ftq7U\nactivity: pqMb34cI\navailability: 77' \
    > test.out 2>&1
eval_tap $? 90 'SetUserStatusRequest' test.out

#- 91 SetUserStatusResponse
samples/cli/sample-apps --ws \
    'type: setUserStatusResponse\nid: UDadfU1p\ncode: 93' \
    > test.out 2>&1
eval_tap $? 91 'SetUserStatusResponse' test.out

#- 92 ShutdownNotif
samples/cli/sample-apps --ws \
    'type: shutdownNotif\nmessage: viQjGdQr' \
    > test.out 2>&1
eval_tap $? 92 'ShutdownNotif' test.out

#- 93 SignalingP2PNotif
samples/cli/sample-apps --ws \
    'type: signalingP2PNotif\ndestinationId: OzW1EKKr\nmessage: EtTSzxZ0' \
    > test.out 2>&1
eval_tap $? 93 'SignalingP2PNotif' test.out

#- 94 StartMatchmakingRequest
samples/cli/sample-apps --ws \
    'type: startMatchmakingRequest\nid: fSZ86idK\nextraAttributes: OOap8Hg9\ngameMode: TdnieFkD\npartyAttributes: {"o94xkWA6":{},"qsevN4mU":{},"xUz8Skzy":{}}\npriority: 20\ntempParty: kxCrJwco' \
    > test.out 2>&1
eval_tap $? 94 'StartMatchmakingRequest' test.out

#- 95 StartMatchmakingResponse
samples/cli/sample-apps --ws \
    'type: startMatchmakingResponse\nid: 4NUP7C54\ncode: 50' \
    > test.out 2>&1
eval_tap $? 95 'StartMatchmakingResponse' test.out

#- 96 UnblockPlayerNotif
samples/cli/sample-apps --ws \
    'type: unblockPlayerNotif\nunblockedUserId: HJjQ5qpl\nuserId: ur7K34o3' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerNotif' test.out

#- 97 UnblockPlayerRequest
samples/cli/sample-apps --ws \
    'type: unblockPlayerRequest\nid: jlRqBdud\nnamespace: 9vPhKyPC\nunblockedUserId: nm7Y7IfW' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerRequest' test.out

#- 98 UnblockPlayerResponse
samples/cli/sample-apps --ws \
    'type: unblockPlayerResponse\nid: ksYkly9w\ncode: 92\nnamespace: vScXy9Kw\nunblockedUserId: U7JfRQ5r' \
    > test.out 2>&1
eval_tap $? 98 'UnblockPlayerResponse' test.out

#- 99 UnfriendNotif
samples/cli/sample-apps --ws \
    'type: unfriendNotif\nfriendId: Xjsd8qaO' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendNotif' test.out

#- 100 UnfriendRequest
samples/cli/sample-apps --ws \
    'type: unfriendRequest\nid: AFX0X7CA\nfriendId: DKQIIRvU' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendRequest' test.out

#- 101 UnfriendResponse
samples/cli/sample-apps --ws \
    'type: unfriendResponse\nid: r3yqNRao\ncode: 61' \
    > test.out 2>&1
eval_tap $? 101 'UnfriendResponse' test.out

#- 102 UserBannedNotification
samples/cli/sample-apps --ws \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 102 'UserBannedNotification' test.out

#- 103 UserMetricRequest
samples/cli/sample-apps --ws \
    'type: userMetricRequest\nid: 880weyIo' \
    > test.out 2>&1
eval_tap $? 103 'UserMetricRequest' test.out

#- 104 UserMetricResponse
samples/cli/sample-apps --ws \
    'type: userMetricResponse\nid: L1UCRnOW\ncode: 52\nplayerCount: 1' \
    > test.out 2>&1
eval_tap $? 104 'UserMetricResponse' test.out

#- 105 UserStatusNotif
samples/cli/sample-apps --ws \
    'type: userStatusNotif\nactivity: f4ozgR07\navailability: 35\nlastSeenAt: 1978-08-26T00:00:00Z\nuserId: IiLrnnUT' \
    > test.out 2>&1
eval_tap $? 105 'UserStatusNotif' test.out


exit $EXIT_CODE