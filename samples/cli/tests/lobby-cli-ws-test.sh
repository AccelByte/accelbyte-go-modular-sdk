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
    'type: acceptFriendsNotif\nfriendId: AUwTwfbl' \
    > test.out 2>&1
eval_tap $? 1 'AcceptFriendsNotif' test.out

#- 2 AcceptFriendsRequest
samples/cli/sample-apps --ws \
    'type: acceptFriendsRequest\nid: AvYRYC3O\nfriendId: wwZTGj3w' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsRequest' test.out

#- 3 AcceptFriendsResponse
samples/cli/sample-apps --ws \
    'type: acceptFriendsResponse\nid: Fn5set46\ncode: 20' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsResponse' test.out

#- 4 BlockPlayerNotif
samples/cli/sample-apps --ws \
    'type: blockPlayerNotif\nblockedUserId: ip61H9q6\nuserId: rWJNPjNM' \
    > test.out 2>&1
eval_tap $? 4 'BlockPlayerNotif' test.out

#- 5 BlockPlayerRequest
samples/cli/sample-apps --ws \
    'type: blockPlayerRequest\nid: 4U6RxKtb\nblockUserId: RPTTI1Ji\nnamespace: jK2H9Yf3' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerRequest' test.out

#- 6 BlockPlayerResponse
samples/cli/sample-apps --ws \
    'type: blockPlayerResponse\nid: rrU3LnA5\nblockUserId: beEH6OsJ\ncode: 32\nnamespace: OnkHwY91' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerResponse' test.out

#- 7 CancelFriendsNotif
samples/cli/sample-apps --ws \
    'type: cancelFriendsNotif\nuserId: ZUE9lvR3' \
    > test.out 2>&1
eval_tap $? 7 'CancelFriendsNotif' test.out

#- 8 CancelFriendsRequest
samples/cli/sample-apps --ws \
    'type: cancelFriendsRequest\nid: vDR8oBNw\nfriendId: 41CIVp9V' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsRequest' test.out

#- 9 CancelFriendsResponse
samples/cli/sample-apps --ws \
    'type: cancelFriendsResponse\nid: w8BysnuX\ncode: 71' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsResponse' test.out

#- 10 CancelMatchmakingRequest
samples/cli/sample-apps --ws \
    'type: cancelMatchmakingRequest\nid: 2DGU95KY\ngameMode: jbLmAl2H\nisTempParty: False' \
    > test.out 2>&1
eval_tap $? 10 'CancelMatchmakingRequest' test.out

#- 11 CancelMatchmakingResponse
samples/cli/sample-apps --ws \
    'type: cancelMatchmakingResponse\nid: CRoEhlVx\ncode: 95' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingResponse' test.out

#- 12 ChannelChatNotif
samples/cli/sample-apps --ws \
    'type: channelChatNotif\nchannelSlug: TFh6ER70\nfrom: pvVEnIhm\npayload: nk6Ucstx\nsentAt: 1997-06-20T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 12 'ChannelChatNotif' test.out

#- 13 ClientResetRequest
samples/cli/sample-apps --ws \
    'type: clientResetRequest\nnamespace: MRKDVU5D\nuserId: Z7l8ioQU' \
    > test.out 2>&1
eval_tap $? 13 'ClientResetRequest' test.out

#- 14 ConnectNotif
samples/cli/sample-apps --ws \
    'type: connectNotif\nlobbySessionID: zwIK64Lc' \
    > test.out 2>&1
eval_tap $? 14 'ConnectNotif' test.out

#- 15 DisconnectNotif
samples/cli/sample-apps --ws \
    'type: disconnectNotif\nconnectionId: MhPSE8f7\nnamespace: 1nriIzwq' \
    > test.out 2>&1
eval_tap $? 15 'DisconnectNotif' test.out

#- 16 DsNotif
samples/cli/sample-apps --ws \
    'type: dsNotif\nalternateIps: [X7jncDbx,LvQs1AlN,rnRodPMp]\ncustomAttribute: 1PfGGYoK\ndeployment: dCQDLST1\ngameVersion: rGYaHMgv\nimageVersion: 7kSlBYJF\nip: bflBJAQV\nisOK: True\nisOverrideGameVersion: False\nlastUpdate: siVupCjS\nmatchId: yHN5gZ9L\nmessage: EoV0IECZ\nnamespace: ywn9cSp5\npodName: wef1YEOR\nport: 53\nports: {"M7ikUCi1":74,"ptyo9TFP":16,"BQB9UhsA":37}\nprotocol: mrLdtTKz\nprovider: oEUvAfY2\nregion: 5iAXMvC2\nsessionId: 5ZuKA0TK\nstatus: CkyAaw95' \
    > test.out 2>&1
eval_tap $? 16 'DsNotif' test.out

#- 17 ErrorNotif
samples/cli/sample-apps --ws \
    'type: errorNotif\nmessage: R9kQfvt3' \
    > test.out 2>&1
eval_tap $? 17 'ErrorNotif' test.out

#- 18 ExitAllChannel
samples/cli/sample-apps --ws \
    'type: exitAllChannel\nnamespace: hlSjoOUE\nuserId: mSgBOuSe' \
    > test.out 2>&1
eval_tap $? 18 'ExitAllChannel' test.out

#- 19 FriendsStatusRequest
samples/cli/sample-apps --ws \
    'type: friendsStatusRequest\nid: EyolWRrj' \
    > test.out 2>&1
eval_tap $? 19 'FriendsStatusRequest' test.out

#- 20 FriendsStatusResponse
samples/cli/sample-apps --ws \
    'type: friendsStatusResponse\nid: u3PW933J\nactivity: [c8APaBdB,XNZ5b0dn,DFMEpK9r]\navailability: [hwY7GlX6,d3OmD45Q,zhvJ1kSK]\ncode: 46\nfriendIds: [pKxvQYF3,RDnp9Lme,qp2CAnEZ]\nlastSeenAt: [1990-08-30T00:00:00Z,1980-10-29T00:00:00Z,1997-05-13T00:00:00Z]' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusResponse' test.out

#- 21 GetAllSessionAttributeRequest
samples/cli/sample-apps --ws \
    'type: getAllSessionAttributeRequest\nid: 27s7vbtq' \
    > test.out 2>&1
eval_tap $? 21 'GetAllSessionAttributeRequest' test.out

#- 22 GetAllSessionAttributeResponse
samples/cli/sample-apps --ws \
    'type: getAllSessionAttributeResponse\nid: Yy3XXaj8\nattributes: {"HKmoEC5v":"qFvtw0Vl","iOei10FR":"MhZDjbXl","1hp3CqcQ":"61Zfj7UD"}\ncode: 67' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeResponse' test.out

#- 23 GetFriendshipStatusRequest
samples/cli/sample-apps --ws \
    'type: getFriendshipStatusRequest\nid: SEJMiAzf\nfriendId: kZGjvrSa' \
    > test.out 2>&1
eval_tap $? 23 'GetFriendshipStatusRequest' test.out

#- 24 GetFriendshipStatusResponse
samples/cli/sample-apps --ws \
    'type: getFriendshipStatusResponse\nid: lByIShZB\ncode: 84\nfriendshipStatus: mnOlb7YA' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusResponse' test.out

#- 25 GetSessionAttributeRequest
samples/cli/sample-apps --ws \
    'type: getSessionAttributeRequest\nid: 4MHe9poB\nkey: HzIsqEZr' \
    > test.out 2>&1
eval_tap $? 25 'GetSessionAttributeRequest' test.out

#- 26 GetSessionAttributeResponse
samples/cli/sample-apps --ws \
    'type: getSessionAttributeResponse\nid: FixXKnbv\ncode: 45\nvalue: IbIPrm2z' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeResponse' test.out

#- 27 Heartbeat
samples/cli/sample-apps --ws \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 27 'Heartbeat' test.out

#- 28 JoinDefaultChannelRequest
samples/cli/sample-apps --ws \
    'type: joinDefaultChannelRequest\nid: d0fmLxLX' \
    > test.out 2>&1
eval_tap $? 28 'JoinDefaultChannelRequest' test.out

#- 29 JoinDefaultChannelResponse
samples/cli/sample-apps --ws \
    'type: joinDefaultChannelResponse\nid: 7UiAUfXI\nchannelSlug: MMr3hLzj\ncode: 8' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelResponse' test.out

#- 30 ListIncomingFriendsRequest
samples/cli/sample-apps --ws \
    'type: listIncomingFriendsRequest\nid: GVlCksOc' \
    > test.out 2>&1
eval_tap $? 30 'ListIncomingFriendsRequest' test.out

#- 31 ListIncomingFriendsResponse
samples/cli/sample-apps --ws \
    'type: listIncomingFriendsResponse\nid: HycHZfDb\ncode: 30\nuserIds: [3DXJRm3I,hK0PmStw,aZ912eEX]' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsResponse' test.out

#- 32 ListOfFriendsRequest
samples/cli/sample-apps --ws \
    'type: listOfFriendsRequest\nid: O01RABk5\nfriendId: MMs45oor' \
    > test.out 2>&1
eval_tap $? 32 'ListOfFriendsRequest' test.out

#- 33 ListOfFriendsResponse
samples/cli/sample-apps --ws \
    'type: listOfFriendsResponse\nid: 5N6qnMbm\ncode: 78\nfriendIds: [0qd1eRff,akOzyLI8,Yzvcxoyl]' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsResponse' test.out

#- 34 ListOnlineFriendsRequest
samples/cli/sample-apps --ws \
    'type: listOnlineFriendsRequest\nid: S3Fypvsl' \
    > test.out 2>&1
eval_tap $? 34 'ListOnlineFriendsRequest' test.out

#- 35 ListOutgoingFriendsRequest
samples/cli/sample-apps --ws \
    'type: listOutgoingFriendsRequest\nid: snDckedl' \
    > test.out 2>&1
eval_tap $? 35 'ListOutgoingFriendsRequest' test.out

#- 36 ListOutgoingFriendsResponse
samples/cli/sample-apps --ws \
    'type: listOutgoingFriendsResponse\nid: Ydbj1WHs\ncode: 94\nfriendIds: [LOyfV2CP,rCcsTV1g,eB1VTShE]' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsResponse' test.out

#- 37 MatchmakingNotif
samples/cli/sample-apps --ws \
    'type: matchmakingNotif\ncounterPartyMember: [x3S1sMvJ,a5ftdoWG,9qvgEnK7]\nmatchId: gJZxJ4IP\nmessage: wX4y3kdK\npartyMember: [Scsd5duL,CDMojxu0,Sn3T4a7B]\nreadyDuration: 23\nstatus: c2uaVIEh' \
    > test.out 2>&1
eval_tap $? 37 'MatchmakingNotif' test.out

#- 38 MessageNotif
samples/cli/sample-apps --ws \
    'type: messageNotif\nid: qrPO8qcn\nfrom: qiEUepEj\npayload: yJTUiH4a\nsentAt: 1987-09-08T00:00:00Z\nto: adoP6Ujh\ntopic: zKgpnxdA' \
    > test.out 2>&1
eval_tap $? 38 'MessageNotif' test.out

#- 39 MessageSessionNotif
samples/cli/sample-apps --ws \
    'type: messageSessionNotif\nid: uBQx5LVG\nfrom: J9SnbEMh\npayload: rWAyTpGk\nsentAt: 1980-08-29T00:00:00Z\nto: 4kav74Nj\ntopic: UMX3BITF' \
    > test.out 2>&1
eval_tap $? 39 'MessageSessionNotif' test.out

#- 40 OfflineNotificationRequest
samples/cli/sample-apps --ws \
    'type: offlineNotificationRequest\nid: plpWYF5p' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
samples/cli/sample-apps --ws \
    'type: offlineNotificationResponse\nid: TQAkJeFH\ncode: 13' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
samples/cli/sample-apps --ws \
    'type: onlineFriends\nid: GOtYJIk1\ncode: 4\nonlineFriendIds: [464fpMTE,Mx5yirb4,HXKmJp4e]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
samples/cli/sample-apps --ws \
    'type: partyChatNotif\nid: mvfBc6Bt\nfrom: lzEDhWjL\npayload: uJBgEqZs\nreceivedAt: 1981-12-28T00:00:00Z\nto: GZgQBSGq' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
samples/cli/sample-apps --ws \
    'type: partyChatRequest\nid: Owl3JCuO\nfrom: bJrlIDur\npayload: wDVG8W6a\nreceivedAt: 1999-09-22T00:00:00Z\nto: 2oC0EJlx' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
samples/cli/sample-apps --ws \
    'type: partyChatResponse\nid: UV0Ah65d\ncode: 28' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
samples/cli/sample-apps --ws \
    'type: partyCreateRequest\nid: q2VmbbiS' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
samples/cli/sample-apps --ws \
    'type: partyCreateResponse\nid: oDxROUPb\ncode: 41\ninvitationToken: IvxLzOMA\ninvitees: KKmwXrge\nleaderId: 7g78HBeT\nmembers: cezMJFyV\npartyId: g7CVX9Qz' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
samples/cli/sample-apps --ws \
    'type: partyDataUpdateNotif\ncustomAttributes: {"XdLQfIqw":{},"GJAWJJPW":{},"btXiCNTg":{}}\ninvitees: [hRik5qJb,4DR4G9kd,gZR4fNwP]\nleader: C7Rw04Hj\nmembers: [VDuAX277,MgDM6PZI,8XlxRbHR]\nnamespace: YvlHxtlr\npartyId: 159k5kc3\nupdatedAt: 1997-10-06T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
samples/cli/sample-apps --ws \
    'type: partyGetInvitedNotif\nfrom: aCE3e9Om\ninvitationToken: PPUZ7qhg\npartyId: 2Z2rbT0Z' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
samples/cli/sample-apps --ws \
    'type: partyInfoRequest\nid: CIfhBPhb' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
samples/cli/sample-apps --ws \
    'type: partyInfoResponse\nid: C9ZTPJiZ\ncode: 2\ncustomAttributes: {"Gbgrswmi":{},"v9g4X9gq":{},"ly79tT9W":{}}\ninvitationToken: oRshj2K6\ninvitees: cVxQy5X9\nleaderId: VFj49adP\nmembers: 8R1EwnL3\npartyId: M5c63r8X' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
samples/cli/sample-apps --ws \
    'type: partyInviteNotif\ninviteeId: Mjv77erM\ninviterId: C9p6ax2C' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
samples/cli/sample-apps --ws \
    'type: partyInviteRequest\nid: 4x2tI6mV\nfriendId: Xevy9vKm' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
samples/cli/sample-apps --ws \
    'type: partyInviteResponse\nid: 2NyDuui4\ncode: 29' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
samples/cli/sample-apps --ws \
    'type: partyJoinNotif\nuserId: NELWRUFl' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
samples/cli/sample-apps --ws \
    'type: partyJoinRequest\nid: qeLBBv4M\ninvitationToken: UAaR8IXD\npartyId: i7pkOJby' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
samples/cli/sample-apps --ws \
    'type: partyJoinResponse\nid: hFSjhXl6\ncode: 51\ninvitationToken: yLhpdQvB\ninvitees: d0eGGw8g\nleaderId: 1rTjHeLH\nmembers: pg13qvOJ\npartyId: y4uMgky0' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
samples/cli/sample-apps --ws \
    'type: partyKickNotif\nleaderId: GNpFK2ZF\npartyId: 7fMl18EL\nuserId: Ekbv1ggk' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
samples/cli/sample-apps --ws \
    'type: partyKickRequest\nid: l6MEyGq3\nmemberId: 5qjkviSf' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
samples/cli/sample-apps --ws \
    'type: partyKickResponse\nid: WQoeEjhU\ncode: 62' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
samples/cli/sample-apps --ws \
    'type: partyLeaveNotif\nleaderId: xqbgDjSH\nuserId: XrdGW8OZ' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
samples/cli/sample-apps --ws \
    'type: partyLeaveRequest\nid: nODifVoW\nignoreUserRegistry: False' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
samples/cli/sample-apps --ws \
    'type: partyLeaveResponse\nid: HDJDlIAl\ncode: 8' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
samples/cli/sample-apps --ws \
    'type: partyPromoteLeaderRequest\nid: WHpiLheW\nnewLeaderUserId: svOC5Tpj' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
samples/cli/sample-apps --ws \
    'type: partyPromoteLeaderResponse\nid: PaQdZM9X\ncode: 95\ninvitationToken: NE9M346Z\ninvitees: A6ckJVLM\nleaderId: DscaJiPy\nmembers: vHOdHi6t\npartyId: nzDGhxmW' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
samples/cli/sample-apps --ws \
    'type: partyRejectNotif\nleaderId: 7XO63I41\npartyId: Z2Ojrmfo\nuserId: 8coXu1BC' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
samples/cli/sample-apps --ws \
    'type: partyRejectRequest\nid: mweytNu8\ninvitationToken: xmBSxAeR\npartyId: 06GteVxt' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
samples/cli/sample-apps --ws \
    'type: partyRejectResponse\nid: lFOJRAvm\ncode: 70\npartyId: T8CQGF1p' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
samples/cli/sample-apps --ws \
    'type: personalChatHistoryRequest\nid: UIHJMDw8\nfriendId: SI7QwcSh' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
samples/cli/sample-apps --ws \
    'type: personalChatHistoryResponse\nid: cKSkAK2m\nchat: 2OrpDulq\ncode: 8\nfriendId: MUx5EiOH' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
samples/cli/sample-apps --ws \
    'type: personalChatNotif\nid: yIbUtUWv\nfrom: GtZ9t7Dk\npayload: g2uBQ1uY\nreceivedAt: 1991-08-11T00:00:00Z\nto: HbNnmxdO' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
samples/cli/sample-apps --ws \
    'type: personalChatRequest\nid: vvm2J7Ph\nfrom: ahSFDNhk\npayload: ZQx7woDp\nreceivedAt: 1994-08-11T00:00:00Z\nto: 9EqSEb9M' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
samples/cli/sample-apps --ws \
    'type: personalChatResponse\nid: 12sxWOXk\ncode: 43' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RefreshTokenRequest
samples/cli/sample-apps --ws \
    'type: refreshTokenRequest\nid: qO1uCkwI\ntoken: iJOfJJH8' \
    > test.out 2>&1
eval_tap $? 74 'RefreshTokenRequest' test.out

#- 75 RefreshTokenResponse
samples/cli/sample-apps --ws \
    'type: refreshTokenResponse\nid: kcp7cV3e\ncode: 77' \
    > test.out 2>&1
eval_tap $? 75 'RefreshTokenResponse' test.out

#- 76 RejectFriendsNotif
samples/cli/sample-apps --ws \
    'type: rejectFriendsNotif\nuserId: pOM9NV36' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsNotif' test.out

#- 77 RejectFriendsRequest
samples/cli/sample-apps --ws \
    'type: rejectFriendsRequest\nid: 9tJUfJ2S\nfriendId: FY4rT7p1' \
    > test.out 2>&1
eval_tap $? 77 'RejectFriendsRequest' test.out

#- 78 RejectFriendsResponse
samples/cli/sample-apps --ws \
    'type: rejectFriendsResponse\nid: 1t3cCeqv\ncode: 26' \
    > test.out 2>&1
eval_tap $? 78 'RejectFriendsResponse' test.out

#- 79 RematchmakingNotif
samples/cli/sample-apps --ws \
    'type: rematchmakingNotif\nbanDuration: 86' \
    > test.out 2>&1
eval_tap $? 79 'RematchmakingNotif' test.out

#- 80 RequestFriendsNotif
samples/cli/sample-apps --ws \
    'type: requestFriendsNotif\nfriendId: w1ovpK6o' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsNotif' test.out

#- 81 RequestFriendsRequest
samples/cli/sample-apps --ws \
    'type: requestFriendsRequest\nid: JCcjAEyZ\nfriendId: Lfr3KMvO' \
    > test.out 2>&1
eval_tap $? 81 'RequestFriendsRequest' test.out

#- 82 RequestFriendsResponse
samples/cli/sample-apps --ws \
    'type: requestFriendsResponse\nid: ul0MZ1C0\ncode: 5' \
    > test.out 2>&1
eval_tap $? 82 'RequestFriendsResponse' test.out

#- 83 SendChannelChatRequest
samples/cli/sample-apps --ws \
    'type: sendChannelChatRequest\nid: l66Z6pqi\nchannelSlug: b4r4We2P\npayload: p6KvGKwf' \
    > test.out 2>&1
eval_tap $? 83 'SendChannelChatRequest' test.out

#- 84 SendChannelChatResponse
samples/cli/sample-apps --ws \
    'type: sendChannelChatResponse\nid: SaYpV86s\ncode: 38' \
    > test.out 2>&1
eval_tap $? 84 'SendChannelChatResponse' test.out

#- 85 SetReadyConsentNotif
samples/cli/sample-apps --ws \
    'type: setReadyConsentNotif\nmatchId: ZhnMSmNs\nuserId: OOUg66QI' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentNotif' test.out

#- 86 SetReadyConsentRequest
samples/cli/sample-apps --ws \
    'type: setReadyConsentRequest\nid: QkFuxbpt\nmatchId: iMi4Nj8B' \
    > test.out 2>&1
eval_tap $? 86 'SetReadyConsentRequest' test.out

#- 87 SetReadyConsentResponse
samples/cli/sample-apps --ws \
    'type: setReadyConsentResponse\nid: WPJAJocQ\ncode: 81' \
    > test.out 2>&1
eval_tap $? 87 'SetReadyConsentResponse' test.out

#- 88 SetSessionAttributeRequest
samples/cli/sample-apps --ws \
    'type: setSessionAttributeRequest\nid: 4UcwNNuE\nkey: 4MvSCoM9\nnamespace: COPaypcX\nvalue: K7jpV4SS' \
    > test.out 2>&1
eval_tap $? 88 'SetSessionAttributeRequest' test.out

#- 89 SetSessionAttributeResponse
samples/cli/sample-apps --ws \
    'type: setSessionAttributeResponse\nid: bCTGn76W\ncode: 14' \
    > test.out 2>&1
eval_tap $? 89 'SetSessionAttributeResponse' test.out

#- 90 SetUserStatusRequest
samples/cli/sample-apps --ws \
    'type: setUserStatusRequest\nid: s2H8ACrI\nactivity: 51kUEMaR\navailability: 70' \
    > test.out 2>&1
eval_tap $? 90 'SetUserStatusRequest' test.out

#- 91 SetUserStatusResponse
samples/cli/sample-apps --ws \
    'type: setUserStatusResponse\nid: OFL25nb2\ncode: 31' \
    > test.out 2>&1
eval_tap $? 91 'SetUserStatusResponse' test.out

#- 92 ShutdownNotif
samples/cli/sample-apps --ws \
    'type: shutdownNotif\nmessage: cksq3dWV' \
    > test.out 2>&1
eval_tap $? 92 'ShutdownNotif' test.out

#- 93 SignalingP2PNotif
samples/cli/sample-apps --ws \
    'type: signalingP2PNotif\ndestinationId: hxTEm60f\nmessage: ngsLr9k3' \
    > test.out 2>&1
eval_tap $? 93 'SignalingP2PNotif' test.out

#- 94 StartMatchmakingRequest
samples/cli/sample-apps --ws \
    'type: startMatchmakingRequest\nid: 6vVjNt6U\nextraAttributes: OIuBhphp\ngameMode: bQyIaAhU\npartyAttributes: {"XW4YbEPD":{},"ogOvrMoc":{},"ghJMllO5":{}}\npriority: 68\ntempParty: R8RmIoKa' \
    > test.out 2>&1
eval_tap $? 94 'StartMatchmakingRequest' test.out

#- 95 StartMatchmakingResponse
samples/cli/sample-apps --ws \
    'type: startMatchmakingResponse\nid: 8rW76L2G\ncode: 45' \
    > test.out 2>&1
eval_tap $? 95 'StartMatchmakingResponse' test.out

#- 96 UnblockPlayerNotif
samples/cli/sample-apps --ws \
    'type: unblockPlayerNotif\nunblockedUserId: 7uOSDIGm\nuserId: kp4D9IEf' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerNotif' test.out

#- 97 UnblockPlayerRequest
samples/cli/sample-apps --ws \
    'type: unblockPlayerRequest\nid: wZRYaaWs\nnamespace: qJIPObX7\nunblockedUserId: mV7D6dZx' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerRequest' test.out

#- 98 UnblockPlayerResponse
samples/cli/sample-apps --ws \
    'type: unblockPlayerResponse\nid: 51Pk98eU\ncode: 55\nnamespace: CuskAdsj\nunblockedUserId: 6dYLTQ6g' \
    > test.out 2>&1
eval_tap $? 98 'UnblockPlayerResponse' test.out

#- 99 UnfriendNotif
samples/cli/sample-apps --ws \
    'type: unfriendNotif\nfriendId: 7vNGsHBS' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendNotif' test.out

#- 100 UnfriendRequest
samples/cli/sample-apps --ws \
    'type: unfriendRequest\nid: a8NnvuYl\nfriendId: 3G0HvOOp' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendRequest' test.out

#- 101 UnfriendResponse
samples/cli/sample-apps --ws \
    'type: unfriendResponse\nid: KToviN29\ncode: 45' \
    > test.out 2>&1
eval_tap $? 101 'UnfriendResponse' test.out

#- 102 UserBannedNotification
samples/cli/sample-apps --ws \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 102 'UserBannedNotification' test.out

#- 103 UserMetricRequest
samples/cli/sample-apps --ws \
    'type: userMetricRequest\nid: NUdTz3o6' \
    > test.out 2>&1
eval_tap $? 103 'UserMetricRequest' test.out

#- 104 UserMetricResponse
samples/cli/sample-apps --ws \
    'type: userMetricResponse\nid: RvyYwrD1\ncode: 49\nplayerCount: 99' \
    > test.out 2>&1
eval_tap $? 104 'UserMetricResponse' test.out

#- 105 UserStatusNotif
samples/cli/sample-apps --ws \
    'type: userStatusNotif\nactivity: rnbjvvYH\navailability: 64\nlastSeenAt: 1992-06-17T00:00:00Z\nuserId: vUeRv6VP' \
    > test.out 2>&1
eval_tap $? 105 'UserStatusNotif' test.out


exit $EXIT_CODE