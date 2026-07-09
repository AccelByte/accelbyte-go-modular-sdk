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
    'type: acceptFriendsNotif\nfriendId: zM6Mq3VX' \
    > test.out 2>&1
eval_tap $? 1 'AcceptFriendsNotif' test.out

#- 2 AcceptFriendsRequest
samples/cli/sample-apps --ws \
    'type: acceptFriendsRequest\nid: Re34KCD1\nfriendId: UlfHTDhw' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsRequest' test.out

#- 3 AcceptFriendsResponse
samples/cli/sample-apps --ws \
    'type: acceptFriendsResponse\nid: OuQe5iaw\ncode: 60' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsResponse' test.out

#- 4 BlockPlayerNotif
samples/cli/sample-apps --ws \
    'type: blockPlayerNotif\nblockedUserId: nEuROgWC\nuserId: px77W6jN' \
    > test.out 2>&1
eval_tap $? 4 'BlockPlayerNotif' test.out

#- 5 BlockPlayerRequest
samples/cli/sample-apps --ws \
    'type: blockPlayerRequest\nid: wualhGYj\nblockUserId: uTM7ZF3w\nnamespace: X8owOWmn' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerRequest' test.out

#- 6 BlockPlayerResponse
samples/cli/sample-apps --ws \
    'type: blockPlayerResponse\nid: lBhrnerW\nblockUserId: K4C762nk\ncode: 25\nnamespace: jkx9kfYo' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerResponse' test.out

#- 7 CancelFriendsNotif
samples/cli/sample-apps --ws \
    'type: cancelFriendsNotif\nuserId: rMI4fkgr' \
    > test.out 2>&1
eval_tap $? 7 'CancelFriendsNotif' test.out

#- 8 CancelFriendsRequest
samples/cli/sample-apps --ws \
    'type: cancelFriendsRequest\nid: FvhihT80\nfriendId: FrJwZ9DM' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsRequest' test.out

#- 9 CancelFriendsResponse
samples/cli/sample-apps --ws \
    'type: cancelFriendsResponse\nid: RSMSowvb\ncode: 74' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsResponse' test.out

#- 10 CancelMatchmakingRequest
samples/cli/sample-apps --ws \
    'type: cancelMatchmakingRequest\nid: tCSCPHn0\ngameMode: Q35BrwNn\nisTempParty: True' \
    > test.out 2>&1
eval_tap $? 10 'CancelMatchmakingRequest' test.out

#- 11 CancelMatchmakingResponse
samples/cli/sample-apps --ws \
    'type: cancelMatchmakingResponse\nid: 9qE3FFRE\ncode: 53' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingResponse' test.out

#- 12 ChannelChatNotif
samples/cli/sample-apps --ws \
    'type: channelChatNotif\nchannelSlug: y9QTMFax\nfrom: IDJYnAP1\npayload: NnYjApQI\nsentAt: 1987-08-05T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 12 'ChannelChatNotif' test.out

#- 13 ClientResetRequest
samples/cli/sample-apps --ws \
    'type: clientResetRequest\nnamespace: RqTrwCiU\nuserId: Ow0nuV6n' \
    > test.out 2>&1
eval_tap $? 13 'ClientResetRequest' test.out

#- 14 ConnectNotif
samples/cli/sample-apps --ws \
    'type: connectNotif\nlobbySessionID: 0jkFLv80' \
    > test.out 2>&1
eval_tap $? 14 'ConnectNotif' test.out

#- 15 DisconnectNotif
samples/cli/sample-apps --ws \
    'type: disconnectNotif\nconnectionId: BOG4wSsy\nnamespace: 8jLvFaWs' \
    > test.out 2>&1
eval_tap $? 15 'DisconnectNotif' test.out

#- 16 DsNotif
samples/cli/sample-apps --ws \
    'type: dsNotif\nalternateIps: [ZEZ7HrdR,5NXikflh,fdfogj57]\ncustomAttribute: oYt3ubtc\ndeployment: uzGRBcy6\ngameVersion: fK8Uzcfe\nimageVersion: j6xAyHL8\nip: j0dPLifM\nisOK: True\nisOverrideGameVersion: False\nlastUpdate: 9mkvWdlJ\nmatchId: yvrlnF8K\nmessage: ZB7QdZRx\nnamespace: VOz9dRBa\npodName: uyS3IYjL\nport: 81\nports: {"MN8U2Eeo":28,"wBWmfpxf":93,"tM4FuVrb":96}\nprotocol: JQsklXd8\nprovider: F83UinGo\nregion: FvCy8tGc\nsessionId: U77xq74X\nstatus: bBbRtWbw' \
    > test.out 2>&1
eval_tap $? 16 'DsNotif' test.out

#- 17 ErrorNotif
samples/cli/sample-apps --ws \
    'type: errorNotif\nmessage: TpAJ3BrD' \
    > test.out 2>&1
eval_tap $? 17 'ErrorNotif' test.out

#- 18 ExitAllChannel
samples/cli/sample-apps --ws \
    'type: exitAllChannel\nnamespace: YfWB4ApY\nuserId: ZVT8UCqK' \
    > test.out 2>&1
eval_tap $? 18 'ExitAllChannel' test.out

#- 19 FriendsStatusRequest
samples/cli/sample-apps --ws \
    'type: friendsStatusRequest\nid: 7B1POE2I' \
    > test.out 2>&1
eval_tap $? 19 'FriendsStatusRequest' test.out

#- 20 FriendsStatusResponse
samples/cli/sample-apps --ws \
    'type: friendsStatusResponse\nid: 0xuA64Y0\nactivity: [3mKcFQxN,dHUUwmmq,u8Qzo2Ic]\navailability: [ZcTwssyF,zL6kUI1j,BbSJ4Isd]\ncode: 74\nfriendIds: [V0y8QuPj,2gbpkn9Q,jlXZiW5d]\nlastSeenAt: [1971-05-22T00:00:00Z,1985-02-01T00:00:00Z,1996-12-02T00:00:00Z]' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusResponse' test.out

#- 21 GetAllSessionAttributeRequest
samples/cli/sample-apps --ws \
    'type: getAllSessionAttributeRequest\nid: dgNj1OIo' \
    > test.out 2>&1
eval_tap $? 21 'GetAllSessionAttributeRequest' test.out

#- 22 GetAllSessionAttributeResponse
samples/cli/sample-apps --ws \
    'type: getAllSessionAttributeResponse\nid: JMPqKATj\nattributes: {"XmG2pLwX":"XhumVlei","z7pldmS8":"b77hGvFC","IJeEwk0a":"0B44QHdi"}\ncode: 15' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeResponse' test.out

#- 23 GetFriendshipStatusRequest
samples/cli/sample-apps --ws \
    'type: getFriendshipStatusRequest\nid: qY6JPj3E\nfriendId: wsaKP757' \
    > test.out 2>&1
eval_tap $? 23 'GetFriendshipStatusRequest' test.out

#- 24 GetFriendshipStatusResponse
samples/cli/sample-apps --ws \
    'type: getFriendshipStatusResponse\nid: BdOLyc8G\ncode: 52\nfriendshipStatus: iqtLSsKR' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusResponse' test.out

#- 25 GetSessionAttributeRequest
samples/cli/sample-apps --ws \
    'type: getSessionAttributeRequest\nid: dHXNbmtw\nkey: LW1v8G5L' \
    > test.out 2>&1
eval_tap $? 25 'GetSessionAttributeRequest' test.out

#- 26 GetSessionAttributeResponse
samples/cli/sample-apps --ws \
    'type: getSessionAttributeResponse\nid: KR1Yx9Xq\ncode: 44\nvalue: ctgKHnhH' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeResponse' test.out

#- 27 Heartbeat
samples/cli/sample-apps --ws \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 27 'Heartbeat' test.out

#- 28 JoinDefaultChannelRequest
samples/cli/sample-apps --ws \
    'type: joinDefaultChannelRequest\nid: gLOUV4Z9' \
    > test.out 2>&1
eval_tap $? 28 'JoinDefaultChannelRequest' test.out

#- 29 JoinDefaultChannelResponse
samples/cli/sample-apps --ws \
    'type: joinDefaultChannelResponse\nid: yTittobx\nchannelSlug: wvXnyppU\ncode: 63' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelResponse' test.out

#- 30 ListIncomingFriendsRequest
samples/cli/sample-apps --ws \
    'type: listIncomingFriendsRequest\nid: 5xJnwiue' \
    > test.out 2>&1
eval_tap $? 30 'ListIncomingFriendsRequest' test.out

#- 31 ListIncomingFriendsResponse
samples/cli/sample-apps --ws \
    'type: listIncomingFriendsResponse\nid: YxAJ1Jhr\ncode: 46\nuserIds: [hzM2PvTA,17630RWt,0m3k3PLO]' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsResponse' test.out

#- 32 ListOfFriendsRequest
samples/cli/sample-apps --ws \
    'type: listOfFriendsRequest\nid: 8CrIg4UM\nfriendId: DPDO3ikN' \
    > test.out 2>&1
eval_tap $? 32 'ListOfFriendsRequest' test.out

#- 33 ListOfFriendsResponse
samples/cli/sample-apps --ws \
    'type: listOfFriendsResponse\nid: n1Ta60wl\ncode: 49\nfriendIds: [AXEd69M5,RNnBur5y,D09ogSwb]' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsResponse' test.out

#- 34 ListOnlineFriendsRequest
samples/cli/sample-apps --ws \
    'type: listOnlineFriendsRequest\nid: E1ltyKfH' \
    > test.out 2>&1
eval_tap $? 34 'ListOnlineFriendsRequest' test.out

#- 35 ListOutgoingFriendsRequest
samples/cli/sample-apps --ws \
    'type: listOutgoingFriendsRequest\nid: zYDvlr6B' \
    > test.out 2>&1
eval_tap $? 35 'ListOutgoingFriendsRequest' test.out

#- 36 ListOutgoingFriendsResponse
samples/cli/sample-apps --ws \
    'type: listOutgoingFriendsResponse\nid: qWAvKDH9\ncode: 89\nfriendIds: [nCM2jVsE,tVwUicGe,FH5IDe8t]' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsResponse' test.out

#- 37 MatchmakingNotif
samples/cli/sample-apps --ws \
    'type: matchmakingNotif\ncounterPartyMember: [AI7JpHDE,pybmDU8g,6z6RNqzU]\nmatchId: xQ4bTKdO\nmessage: 6Iatov8P\npartyMember: [IAPx5CtH,tfUPudOh,HpTGt4PM]\nreadyDuration: 66\nstatus: tMyIT5OH' \
    > test.out 2>&1
eval_tap $? 37 'MatchmakingNotif' test.out

#- 38 MessageNotif
samples/cli/sample-apps --ws \
    'type: messageNotif\nid: 4Y8DoDPZ\nfrom: hLxq7TOk\npayload: IefpOR4i\nsentAt: 1976-05-15T00:00:00Z\nto: Q8ZNXFmJ\ntopic: jrwiGFLH' \
    > test.out 2>&1
eval_tap $? 38 'MessageNotif' test.out

#- 39 MessageSessionNotif
samples/cli/sample-apps --ws \
    'type: messageSessionNotif\nid: sDnoXiZm\nfrom: QgdyCXqG\npayload: 1Cs5VE0X\nsentAt: 1990-11-28T00:00:00Z\nto: LW9Cn8qA\ntopic: Yd1P5ICJ' \
    > test.out 2>&1
eval_tap $? 39 'MessageSessionNotif' test.out

#- 40 OfflineNotificationRequest
samples/cli/sample-apps --ws \
    'type: offlineNotificationRequest\nid: t1Z87NII' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
samples/cli/sample-apps --ws \
    'type: offlineNotificationResponse\nid: u5pBrJRZ\ncode: 73' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
samples/cli/sample-apps --ws \
    'type: onlineFriends\nid: e06DeJFI\ncode: 15\nonlineFriendIds: [xwcx3Lvc,1A5wsT8H,temk9Z8Z]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
samples/cli/sample-apps --ws \
    'type: partyChatNotif\nid: xn3B8Eu0\nfrom: yZ6w92Ye\npayload: JoxjrXCF\nreceivedAt: 1991-03-02T00:00:00Z\nto: 6EepXZxk' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
samples/cli/sample-apps --ws \
    'type: partyChatRequest\nid: MvMOjGui\nfrom: XmCOvlam\npayload: VyQQ1IkU\nreceivedAt: 1976-07-09T00:00:00Z\nto: wqDWnQA3' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
samples/cli/sample-apps --ws \
    'type: partyChatResponse\nid: 0YjoRutU\ncode: 82' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
samples/cli/sample-apps --ws \
    'type: partyCreateRequest\nid: JIETZF5g' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
samples/cli/sample-apps --ws \
    'type: partyCreateResponse\nid: tgbT7HoZ\ncode: 59\ninvitationToken: MGcrXyEg\ninvitees: VsO8h95m\nleaderId: hJDwOnKH\nmembers: fCwm6e5k\npartyId: g4PH4FrJ' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
samples/cli/sample-apps --ws \
    'type: partyDataUpdateNotif\ncustomAttributes: {"kB0cSDNp":{},"9iL06Vtk":{},"P8oCX9s2":{}}\ninvitees: [MUM7AQ2z,b22KySaV,AHAvZBas]\nleader: FT53Olmu\nmembers: [CosXOMOO,DKLzoYgc,zbwv0HJ4]\nnamespace: AgTDP6pG\npartyId: IEPd4aaP\nupdatedAt: 1988-05-28T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
samples/cli/sample-apps --ws \
    'type: partyGetInvitedNotif\nfrom: pjx11FwY\ninvitationToken: NoWeijs6\npartyId: HKm5Wxmq' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
samples/cli/sample-apps --ws \
    'type: partyInfoRequest\nid: 3Nsl0MRa' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
samples/cli/sample-apps --ws \
    'type: partyInfoResponse\nid: fBVK4F8L\ncode: 55\ncustomAttributes: {"8RBqobvb":{},"B9GmlseX":{},"vWzo2hNY":{}}\ninvitationToken: 9f9QTiUh\ninvitees: 9rfKr7tI\nleaderId: RxZYdBUZ\nmembers: oIWQ10xE\npartyId: NfA3axBG' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
samples/cli/sample-apps --ws \
    'type: partyInviteNotif\ninviteeId: Un6QrVXj\ninviterId: GuKdKIsU' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
samples/cli/sample-apps --ws \
    'type: partyInviteRequest\nid: DFqpSOSB\nfriendId: kSCZZXUt' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
samples/cli/sample-apps --ws \
    'type: partyInviteResponse\nid: 5IlOD6YI\ncode: 57' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
samples/cli/sample-apps --ws \
    'type: partyJoinNotif\nuserId: 7B5FFgl5' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
samples/cli/sample-apps --ws \
    'type: partyJoinRequest\nid: 7JLEJ7sL\ninvitationToken: e6rDSnR8\npartyId: 69p5OxRu' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
samples/cli/sample-apps --ws \
    'type: partyJoinResponse\nid: 8unfBM2O\ncode: 82\ninvitationToken: yhhfTKmc\ninvitees: UrRQm2VC\nleaderId: 0gecT4uS\nmembers: rsQBfyDW\npartyId: rTiDZgIj' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
samples/cli/sample-apps --ws \
    'type: partyKickNotif\nleaderId: VBcaT6g5\npartyId: C1gzY30v\nuserId: PN3aFchR' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
samples/cli/sample-apps --ws \
    'type: partyKickRequest\nid: wVW3LKtp\nmemberId: phC8EnJ8' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
samples/cli/sample-apps --ws \
    'type: partyKickResponse\nid: vTwQTO8c\ncode: 40' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
samples/cli/sample-apps --ws \
    'type: partyLeaveNotif\nleaderId: NuRlYfEi\nuserId: tWbCXlPH' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
samples/cli/sample-apps --ws \
    'type: partyLeaveRequest\nid: FaLwe6li\nignoreUserRegistry: True' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
samples/cli/sample-apps --ws \
    'type: partyLeaveResponse\nid: wnT9G0wn\ncode: 94' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
samples/cli/sample-apps --ws \
    'type: partyPromoteLeaderRequest\nid: rRfqAELh\nnewLeaderUserId: 5E4bglTh' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
samples/cli/sample-apps --ws \
    'type: partyPromoteLeaderResponse\nid: AVx3nJpm\ncode: 7\ninvitationToken: ot7Ou16A\ninvitees: gRZiDU1P\nleaderId: v7bOcjZW\nmembers: P6atbsRY\npartyId: 3A5qrh7U' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
samples/cli/sample-apps --ws \
    'type: partyRejectNotif\nleaderId: 5qRplPbx\npartyId: iThRaZKF\nuserId: NqpvtUU3' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
samples/cli/sample-apps --ws \
    'type: partyRejectRequest\nid: H8IBl7G6\ninvitationToken: KQVFB11G\npartyId: N1BS740D' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
samples/cli/sample-apps --ws \
    'type: partyRejectResponse\nid: 51I5NDql\ncode: 70\npartyId: btAi7ch4' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
samples/cli/sample-apps --ws \
    'type: personalChatHistoryRequest\nid: ahMsLgL5\nfriendId: 5sRexRGC' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
samples/cli/sample-apps --ws \
    'type: personalChatHistoryResponse\nid: Rd1NV1QI\nchat: xtm5nYma\ncode: 36\nfriendId: WQSeOD4V' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
samples/cli/sample-apps --ws \
    'type: personalChatNotif\nid: dDkh5iRt\nfrom: Zjgg5L0S\npayload: yg9r327k\nreceivedAt: 1992-07-17T00:00:00Z\nto: XjQuvl0n' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
samples/cli/sample-apps --ws \
    'type: personalChatRequest\nid: eSKg1j3Q\nfrom: Um0CXmBV\npayload: V5VEkeFA\nreceivedAt: 1973-10-11T00:00:00Z\nto: mCDWWTTr' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
samples/cli/sample-apps --ws \
    'type: personalChatResponse\nid: pjho9yeq\ncode: 23' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RefreshTokenRequest
samples/cli/sample-apps --ws \
    'type: refreshTokenRequest\nid: T3CFokoC\ntoken: YZEFefyP' \
    > test.out 2>&1
eval_tap $? 74 'RefreshTokenRequest' test.out

#- 75 RefreshTokenResponse
samples/cli/sample-apps --ws \
    'type: refreshTokenResponse\nid: egjKewLF\ncode: 85' \
    > test.out 2>&1
eval_tap $? 75 'RefreshTokenResponse' test.out

#- 76 RejectFriendsNotif
samples/cli/sample-apps --ws \
    'type: rejectFriendsNotif\nuserId: ZOkP047K' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsNotif' test.out

#- 77 RejectFriendsRequest
samples/cli/sample-apps --ws \
    'type: rejectFriendsRequest\nid: mBp6Lu9u\nfriendId: IvJIk8Dv' \
    > test.out 2>&1
eval_tap $? 77 'RejectFriendsRequest' test.out

#- 78 RejectFriendsResponse
samples/cli/sample-apps --ws \
    'type: rejectFriendsResponse\nid: FMPlfKpQ\ncode: 83' \
    > test.out 2>&1
eval_tap $? 78 'RejectFriendsResponse' test.out

#- 79 RematchmakingNotif
samples/cli/sample-apps --ws \
    'type: rematchmakingNotif\nbanDuration: 51' \
    > test.out 2>&1
eval_tap $? 79 'RematchmakingNotif' test.out

#- 80 RequestFriendsNotif
samples/cli/sample-apps --ws \
    'type: requestFriendsNotif\nfriendId: q21wQxze' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsNotif' test.out

#- 81 RequestFriendsRequest
samples/cli/sample-apps --ws \
    'type: requestFriendsRequest\nid: ElVOVNXd\nfriendId: HsY4eTcq' \
    > test.out 2>&1
eval_tap $? 81 'RequestFriendsRequest' test.out

#- 82 RequestFriendsResponse
samples/cli/sample-apps --ws \
    'type: requestFriendsResponse\nid: cjA4wBQs\ncode: 87' \
    > test.out 2>&1
eval_tap $? 82 'RequestFriendsResponse' test.out

#- 83 SendChannelChatRequest
samples/cli/sample-apps --ws \
    'type: sendChannelChatRequest\nid: TJxnCOzo\nchannelSlug: 6jDVoF3w\npayload: nUppMyvM' \
    > test.out 2>&1
eval_tap $? 83 'SendChannelChatRequest' test.out

#- 84 SendChannelChatResponse
samples/cli/sample-apps --ws \
    'type: sendChannelChatResponse\nid: zf1FCPpx\ncode: 83' \
    > test.out 2>&1
eval_tap $? 84 'SendChannelChatResponse' test.out

#- 85 SetReadyConsentNotif
samples/cli/sample-apps --ws \
    'type: setReadyConsentNotif\nmatchId: 3ieiJKyb\nuserId: q2lxB7Yz' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentNotif' test.out

#- 86 SetReadyConsentRequest
samples/cli/sample-apps --ws \
    'type: setReadyConsentRequest\nid: YDesMaAd\nmatchId: 1QTeGFsr' \
    > test.out 2>&1
eval_tap $? 86 'SetReadyConsentRequest' test.out

#- 87 SetReadyConsentResponse
samples/cli/sample-apps --ws \
    'type: setReadyConsentResponse\nid: Vw2loxFx\ncode: 93' \
    > test.out 2>&1
eval_tap $? 87 'SetReadyConsentResponse' test.out

#- 88 SetSessionAttributeRequest
samples/cli/sample-apps --ws \
    'type: setSessionAttributeRequest\nid: MB4IwzS4\nkey: DDnBISxt\nnamespace: VPAYaRov\nvalue: nAV63iKR' \
    > test.out 2>&1
eval_tap $? 88 'SetSessionAttributeRequest' test.out

#- 89 SetSessionAttributeResponse
samples/cli/sample-apps --ws \
    'type: setSessionAttributeResponse\nid: aF3qrduz\ncode: 49' \
    > test.out 2>&1
eval_tap $? 89 'SetSessionAttributeResponse' test.out

#- 90 SetUserStatusRequest
samples/cli/sample-apps --ws \
    'type: setUserStatusRequest\nid: kQpEFMA3\nactivity: 5RVeo66X\navailability: 14' \
    > test.out 2>&1
eval_tap $? 90 'SetUserStatusRequest' test.out

#- 91 SetUserStatusResponse
samples/cli/sample-apps --ws \
    'type: setUserStatusResponse\nid: h8q2z17G\ncode: 43' \
    > test.out 2>&1
eval_tap $? 91 'SetUserStatusResponse' test.out

#- 92 ShutdownNotif
samples/cli/sample-apps --ws \
    'type: shutdownNotif\nmessage: kiw35JUW' \
    > test.out 2>&1
eval_tap $? 92 'ShutdownNotif' test.out

#- 93 SignalingP2PNotif
samples/cli/sample-apps --ws \
    'type: signalingP2PNotif\ndestinationId: TozAKJdD\nmessage: Vl9FFAL9' \
    > test.out 2>&1
eval_tap $? 93 'SignalingP2PNotif' test.out

#- 94 StartMatchmakingRequest
samples/cli/sample-apps --ws \
    'type: startMatchmakingRequest\nid: uQhdzPLt\nextraAttributes: saigFLbM\ngameMode: j7pRtzBL\npartyAttributes: {"BGt6Vgx9":{},"YRZM0JEd":{},"BztQFO9c":{}}\npriority: 37\ntempParty: N6RWGvZh' \
    > test.out 2>&1
eval_tap $? 94 'StartMatchmakingRequest' test.out

#- 95 StartMatchmakingResponse
samples/cli/sample-apps --ws \
    'type: startMatchmakingResponse\nid: yu4sv3SQ\ncode: 30' \
    > test.out 2>&1
eval_tap $? 95 'StartMatchmakingResponse' test.out

#- 96 UnblockPlayerNotif
samples/cli/sample-apps --ws \
    'type: unblockPlayerNotif\nunblockedUserId: dfLFc6eb\nuserId: 22Im994u' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerNotif' test.out

#- 97 UnblockPlayerRequest
samples/cli/sample-apps --ws \
    'type: unblockPlayerRequest\nid: Yn392bUi\nnamespace: vG6lekkK\nunblockedUserId: vWsP7yUG' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerRequest' test.out

#- 98 UnblockPlayerResponse
samples/cli/sample-apps --ws \
    'type: unblockPlayerResponse\nid: IprgS3RL\ncode: 27\nnamespace: KhWHQvfE\nunblockedUserId: c58p86IV' \
    > test.out 2>&1
eval_tap $? 98 'UnblockPlayerResponse' test.out

#- 99 UnfriendNotif
samples/cli/sample-apps --ws \
    'type: unfriendNotif\nfriendId: 2JRfHzOA' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendNotif' test.out

#- 100 UnfriendRequest
samples/cli/sample-apps --ws \
    'type: unfriendRequest\nid: 3GsyY1r5\nfriendId: QvlVKE0R' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendRequest' test.out

#- 101 UnfriendResponse
samples/cli/sample-apps --ws \
    'type: unfriendResponse\nid: fP3deedj\ncode: 66' \
    > test.out 2>&1
eval_tap $? 101 'UnfriendResponse' test.out

#- 102 UserBannedNotification
samples/cli/sample-apps --ws \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 102 'UserBannedNotification' test.out

#- 103 UserMetricRequest
samples/cli/sample-apps --ws \
    'type: userMetricRequest\nid: lAQTlFBM' \
    > test.out 2>&1
eval_tap $? 103 'UserMetricRequest' test.out

#- 104 UserMetricResponse
samples/cli/sample-apps --ws \
    'type: userMetricResponse\nid: MMgNPYBy\ncode: 62\nplayerCount: 95' \
    > test.out 2>&1
eval_tap $? 104 'UserMetricResponse' test.out

#- 105 UserStatusNotif
samples/cli/sample-apps --ws \
    'type: userStatusNotif\nactivity: ldnsnTtN\navailability: 26\nlastSeenAt: 1972-12-16T00:00:00Z\nuserId: BeJQ0Jaw' \
    > test.out 2>&1
eval_tap $? 105 'UserStatusNotif' test.out


exit $EXIT_CODE