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
    'type: acceptFriendsNotif\nfriendId: k65JXjdm' \
    > test.out 2>&1
eval_tap $? 1 'AcceptFriendsNotif' test.out

#- 2 AcceptFriendsRequest
samples/cli/sample-apps --ws \
    'type: acceptFriendsRequest\nid: AGQn3jER\nfriendId: 2nftamiX' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsRequest' test.out

#- 3 AcceptFriendsResponse
samples/cli/sample-apps --ws \
    'type: acceptFriendsResponse\nid: SllNybl9\ncode: 65' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsResponse' test.out

#- 4 BlockPlayerNotif
samples/cli/sample-apps --ws \
    'type: blockPlayerNotif\nblockedUserId: v52Fe2iD\nuserId: FTE75IZ9' \
    > test.out 2>&1
eval_tap $? 4 'BlockPlayerNotif' test.out

#- 5 BlockPlayerRequest
samples/cli/sample-apps --ws \
    'type: blockPlayerRequest\nid: Rxrc4m44\nblockUserId: xWh3Nu7n\nnamespace: 6FulEbNF' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerRequest' test.out

#- 6 BlockPlayerResponse
samples/cli/sample-apps --ws \
    'type: blockPlayerResponse\nid: lRHcqpuX\nblockUserId: t9gqNa7u\ncode: 88\nnamespace: vdlUUL6v' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerResponse' test.out

#- 7 CancelFriendsNotif
samples/cli/sample-apps --ws \
    'type: cancelFriendsNotif\nuserId: dp219xP7' \
    > test.out 2>&1
eval_tap $? 7 'CancelFriendsNotif' test.out

#- 8 CancelFriendsRequest
samples/cli/sample-apps --ws \
    'type: cancelFriendsRequest\nid: CbCiHLHd\nfriendId: MihYNkjC' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsRequest' test.out

#- 9 CancelFriendsResponse
samples/cli/sample-apps --ws \
    'type: cancelFriendsResponse\nid: gXXe3C39\ncode: 49' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsResponse' test.out

#- 10 CancelMatchmakingRequest
samples/cli/sample-apps --ws \
    'type: cancelMatchmakingRequest\nid: YYFVosDu\ngameMode: qJuayQZg\nisTempParty: False' \
    > test.out 2>&1
eval_tap $? 10 'CancelMatchmakingRequest' test.out

#- 11 CancelMatchmakingResponse
samples/cli/sample-apps --ws \
    'type: cancelMatchmakingResponse\nid: HCd5h7aB\ncode: 80' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingResponse' test.out

#- 12 ChannelChatNotif
samples/cli/sample-apps --ws \
    'type: channelChatNotif\nchannelSlug: f3uh1ceg\nfrom: 4KdIcwzW\npayload: JbAIzxlM\nsentAt: 1989-05-07T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 12 'ChannelChatNotif' test.out

#- 13 ClientResetRequest
samples/cli/sample-apps --ws \
    'type: clientResetRequest\nnamespace: T9uYK6Oe\nuserId: wGVFOp8Q' \
    > test.out 2>&1
eval_tap $? 13 'ClientResetRequest' test.out

#- 14 ConnectNotif
samples/cli/sample-apps --ws \
    'type: connectNotif\nlobbySessionID: R9s1dcgs' \
    > test.out 2>&1
eval_tap $? 14 'ConnectNotif' test.out

#- 15 DisconnectNotif
samples/cli/sample-apps --ws \
    'type: disconnectNotif\nconnectionId: rpAt1rTA\nnamespace: 9RDD8YZj' \
    > test.out 2>&1
eval_tap $? 15 'DisconnectNotif' test.out

#- 16 DsNotif
samples/cli/sample-apps --ws \
    'type: dsNotif\nalternateIps: [myOh6LDE,HqXDDW7J,Po7GVglr]\ncustomAttribute: WDoSCVt8\ndeployment: cAB16GUV\ngameVersion: M7cni8Qq\nimageVersion: U0F0pMqP\nip: BVtagjkl\nisOK: True\nisOverrideGameVersion: True\nlastUpdate: xUHoXrm4\nmatchId: Tamz0kOF\nmessage: eQCkhBug\nnamespace: mMaBIRD3\npodName: 5UUicPVC\nport: 86\nports: {"IWy0UM1Y":75,"UGWARYc6":44,"0QwMUcqY":71}\nprotocol: n9wvkC2W\nprovider: P71LlKHh\nregion: LdCOOGSz\nsessionId: bUorDbjo\nstatus: Lxpl41Pn' \
    > test.out 2>&1
eval_tap $? 16 'DsNotif' test.out

#- 17 ErrorNotif
samples/cli/sample-apps --ws \
    'type: errorNotif\nmessage: 1q9b97Ig' \
    > test.out 2>&1
eval_tap $? 17 'ErrorNotif' test.out

#- 18 ExitAllChannel
samples/cli/sample-apps --ws \
    'type: exitAllChannel\nnamespace: 8CLppddX\nuserId: c7DR2Ugw' \
    > test.out 2>&1
eval_tap $? 18 'ExitAllChannel' test.out

#- 19 FriendsStatusRequest
samples/cli/sample-apps --ws \
    'type: friendsStatusRequest\nid: QT6sxtaL' \
    > test.out 2>&1
eval_tap $? 19 'FriendsStatusRequest' test.out

#- 20 FriendsStatusResponse
samples/cli/sample-apps --ws \
    'type: friendsStatusResponse\nid: BmjQim9T\nactivity: [iZki3h5Q,vwQBslVz,wFXiL6qO]\navailability: [hENDD8il,5fS05Prs,u33fN4qm]\ncode: 40\nfriendIds: [A4t6p3CL,76Uh8hgd,AmiW6Qit]\nlastSeenAt: [1983-01-17T00:00:00Z,1990-06-15T00:00:00Z,1986-06-12T00:00:00Z]' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusResponse' test.out

#- 21 GetAllSessionAttributeRequest
samples/cli/sample-apps --ws \
    'type: getAllSessionAttributeRequest\nid: oAzipQkV' \
    > test.out 2>&1
eval_tap $? 21 'GetAllSessionAttributeRequest' test.out

#- 22 GetAllSessionAttributeResponse
samples/cli/sample-apps --ws \
    'type: getAllSessionAttributeResponse\nid: YjDwJgqP\nattributes: {"n6XSNpq2":"BAeR6QaP","UBNVKSMF":"A86sgS98","Si5ZYIGI":"N440gJBo"}\ncode: 35' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeResponse' test.out

#- 23 GetFriendshipStatusRequest
samples/cli/sample-apps --ws \
    'type: getFriendshipStatusRequest\nid: yLbqHjRX\nfriendId: fYTrkOSs' \
    > test.out 2>&1
eval_tap $? 23 'GetFriendshipStatusRequest' test.out

#- 24 GetFriendshipStatusResponse
samples/cli/sample-apps --ws \
    'type: getFriendshipStatusResponse\nid: O7yvmMLn\ncode: 25\nfriendshipStatus: ZFE6rWle' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusResponse' test.out

#- 25 GetSessionAttributeRequest
samples/cli/sample-apps --ws \
    'type: getSessionAttributeRequest\nid: L9mBEU6u\nkey: m6Cdh2Ez' \
    > test.out 2>&1
eval_tap $? 25 'GetSessionAttributeRequest' test.out

#- 26 GetSessionAttributeResponse
samples/cli/sample-apps --ws \
    'type: getSessionAttributeResponse\nid: ybs0bVDY\ncode: 32\nvalue: WdxNChbc' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeResponse' test.out

#- 27 Heartbeat
samples/cli/sample-apps --ws \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 27 'Heartbeat' test.out

#- 28 JoinDefaultChannelRequest
samples/cli/sample-apps --ws \
    'type: joinDefaultChannelRequest\nid: 62jxxlRu' \
    > test.out 2>&1
eval_tap $? 28 'JoinDefaultChannelRequest' test.out

#- 29 JoinDefaultChannelResponse
samples/cli/sample-apps --ws \
    'type: joinDefaultChannelResponse\nid: vGYUNr1C\nchannelSlug: XOgmhlM1\ncode: 52' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelResponse' test.out

#- 30 ListIncomingFriendsRequest
samples/cli/sample-apps --ws \
    'type: listIncomingFriendsRequest\nid: WIMBtDTG' \
    > test.out 2>&1
eval_tap $? 30 'ListIncomingFriendsRequest' test.out

#- 31 ListIncomingFriendsResponse
samples/cli/sample-apps --ws \
    'type: listIncomingFriendsResponse\nid: hkL2E96x\ncode: 25\nuserIds: [OOFdfo5n,UM7CaxgF,t05CbJ2u]' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsResponse' test.out

#- 32 ListOfFriendsRequest
samples/cli/sample-apps --ws \
    'type: listOfFriendsRequest\nid: zIJeO0qP\nfriendId: hBYhx3yw' \
    > test.out 2>&1
eval_tap $? 32 'ListOfFriendsRequest' test.out

#- 33 ListOfFriendsResponse
samples/cli/sample-apps --ws \
    'type: listOfFriendsResponse\nid: 0BE2yvz8\ncode: 64\nfriendIds: [di5Ne2t2,sNVcoI2S,WIhfmlK8]' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsResponse' test.out

#- 34 ListOnlineFriendsRequest
samples/cli/sample-apps --ws \
    'type: listOnlineFriendsRequest\nid: hZIZUcMw' \
    > test.out 2>&1
eval_tap $? 34 'ListOnlineFriendsRequest' test.out

#- 35 ListOutgoingFriendsRequest
samples/cli/sample-apps --ws \
    'type: listOutgoingFriendsRequest\nid: 3WMVSNXG' \
    > test.out 2>&1
eval_tap $? 35 'ListOutgoingFriendsRequest' test.out

#- 36 ListOutgoingFriendsResponse
samples/cli/sample-apps --ws \
    'type: listOutgoingFriendsResponse\nid: 992JL4Fh\ncode: 6\nfriendIds: [PzCVreYE,jo8nbTDf,ImZndOwO]' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsResponse' test.out

#- 37 MatchmakingNotif
samples/cli/sample-apps --ws \
    'type: matchmakingNotif\ncounterPartyMember: [sMcIbweZ,mJ1tIphl,2LekQgR4]\nmatchId: FSulw8f5\nmessage: YMz8j4yi\npartyMember: [0jMyLWGH,3hG6Sr6A,pldqJUW8]\nreadyDuration: 40\nstatus: aijSdm4k' \
    > test.out 2>&1
eval_tap $? 37 'MatchmakingNotif' test.out

#- 38 MessageNotif
samples/cli/sample-apps --ws \
    'type: messageNotif\nid: xuozYlnk\nfrom: wZ2RSCPz\npayload: hmtTaLjF\nsentAt: 1992-11-30T00:00:00Z\nto: Xj23JkUX\ntopic: VhbbnwZJ' \
    > test.out 2>&1
eval_tap $? 38 'MessageNotif' test.out

#- 39 MessageSessionNotif
samples/cli/sample-apps --ws \
    'type: messageSessionNotif\nid: Kspf299g\nfrom: YyRII7En\npayload: LaXBhJTv\nsentAt: 1975-08-02T00:00:00Z\nto: bvgOSl7T\ntopic: 7Tgk2O9M' \
    > test.out 2>&1
eval_tap $? 39 'MessageSessionNotif' test.out

#- 40 OfflineNotificationRequest
samples/cli/sample-apps --ws \
    'type: offlineNotificationRequest\nid: Tu55JjVD' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
samples/cli/sample-apps --ws \
    'type: offlineNotificationResponse\nid: 0aejMih6\ncode: 80' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
samples/cli/sample-apps --ws \
    'type: onlineFriends\nid: Hl9RPyev\ncode: 22\nonlineFriendIds: [Mb3lEXQx,rqK5ZQlI,yKqqEz5A]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
samples/cli/sample-apps --ws \
    'type: partyChatNotif\nid: hZoJ82mq\nfrom: jpYtT5v1\npayload: AJIG6vTf\nreceivedAt: 1978-01-24T00:00:00Z\nto: z6ipMS5v' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
samples/cli/sample-apps --ws \
    'type: partyChatRequest\nid: 7Od07D6K\nfrom: pVJFuEcX\npayload: 6NnHMofd\nreceivedAt: 1980-09-12T00:00:00Z\nto: caPkfFJJ' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
samples/cli/sample-apps --ws \
    'type: partyChatResponse\nid: b1OBaS7U\ncode: 35' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
samples/cli/sample-apps --ws \
    'type: partyCreateRequest\nid: 6M7CL5sq' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
samples/cli/sample-apps --ws \
    'type: partyCreateResponse\nid: TIGbvnTV\ncode: 4\ninvitationToken: bo0ijeUg\ninvitees: GyiVCUqM\nleaderId: Q9vSDFeU\nmembers: Q24kwgvT\npartyId: w28xBw9I' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
samples/cli/sample-apps --ws \
    'type: partyDataUpdateNotif\ncustomAttributes: {"BFJYFiWU":{},"CJHASkTL":{},"UxSHcNX4":{}}\ninvitees: [3WM1M9Co,DFjlz4lZ,CoUDnFuV]\nleader: 4db1FCYN\nmembers: [VcQjZeYx,SMvf6xIa,CMXPm3UH]\nnamespace: E5yUWTcE\npartyId: ojfz2ydQ\nupdatedAt: 1982-03-10T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
samples/cli/sample-apps --ws \
    'type: partyGetInvitedNotif\nfrom: oOrSpCi7\ninvitationToken: CyebJmf5\npartyId: UXpbXHW1' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
samples/cli/sample-apps --ws \
    'type: partyInfoRequest\nid: qnlefWOa' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
samples/cli/sample-apps --ws \
    'type: partyInfoResponse\nid: i8Me0SJU\ncode: 30\ncustomAttributes: {"AFIvShQG":{},"3ygGE9vJ":{},"JbitRb3x":{}}\ninvitationToken: NbQ5hArh\ninvitees: O95IsgdF\nleaderId: vyPLsyA2\nmembers: W6tZBriA\npartyId: uhnEGPFF' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
samples/cli/sample-apps --ws \
    'type: partyInviteNotif\ninviteeId: K7g0JbQO\ninviterId: KhbwubKg' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
samples/cli/sample-apps --ws \
    'type: partyInviteRequest\nid: f4sIsFtw\nfriendId: 9lFzAifb' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
samples/cli/sample-apps --ws \
    'type: partyInviteResponse\nid: aTMyLd33\ncode: 19' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
samples/cli/sample-apps --ws \
    'type: partyJoinNotif\nuserId: 6L5HSlzL' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
samples/cli/sample-apps --ws \
    'type: partyJoinRequest\nid: mvtOpPk4\ninvitationToken: FeUN2KmW\npartyId: QtHQrkDY' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
samples/cli/sample-apps --ws \
    'type: partyJoinResponse\nid: MxBd9cPx\ncode: 3\ninvitationToken: 4nOMjCDT\ninvitees: 81D10ALe\nleaderId: zqvh9Z1b\nmembers: YruIg25e\npartyId: omCecYhz' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
samples/cli/sample-apps --ws \
    'type: partyKickNotif\nleaderId: FI6P2mk4\npartyId: T2edkrQo\nuserId: i7ZvwjuF' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
samples/cli/sample-apps --ws \
    'type: partyKickRequest\nid: 3ynJ8eWp\nmemberId: HJZirk3N' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
samples/cli/sample-apps --ws \
    'type: partyKickResponse\nid: VzxCwmyw\ncode: 50' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
samples/cli/sample-apps --ws \
    'type: partyLeaveNotif\nleaderId: zt2gdNtA\nuserId: 8VAhCVsL' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
samples/cli/sample-apps --ws \
    'type: partyLeaveRequest\nid: dqJNp8lX\nignoreUserRegistry: False' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
samples/cli/sample-apps --ws \
    'type: partyLeaveResponse\nid: iFt9Y45i\ncode: 58' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
samples/cli/sample-apps --ws \
    'type: partyPromoteLeaderRequest\nid: 28ynPqx8\nnewLeaderUserId: IhbT1YHk' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
samples/cli/sample-apps --ws \
    'type: partyPromoteLeaderResponse\nid: HPzUuwqS\ncode: 63\ninvitationToken: 0SAm8GfW\ninvitees: cRcDiJig\nleaderId: Jxvqubjk\nmembers: 9PWJDvCo\npartyId: 6nyTqqsJ' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
samples/cli/sample-apps --ws \
    'type: partyRejectNotif\nleaderId: RF1RB28n\npartyId: nc08LQXt\nuserId: dxyk3W9F' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
samples/cli/sample-apps --ws \
    'type: partyRejectRequest\nid: 5614NOL8\ninvitationToken: U5Hhgk6H\npartyId: mzHY7pSN' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
samples/cli/sample-apps --ws \
    'type: partyRejectResponse\nid: zOsAueor\ncode: 21\npartyId: AdWwNH4f' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
samples/cli/sample-apps --ws \
    'type: personalChatHistoryRequest\nid: 6MMiZohw\nfriendId: wfsCrX5d' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
samples/cli/sample-apps --ws \
    'type: personalChatHistoryResponse\nid: fPG2Dzuw\nchat: YkGPqzCY\ncode: 21\nfriendId: gJsn5mrb' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
samples/cli/sample-apps --ws \
    'type: personalChatNotif\nid: EMKBELSw\nfrom: roeN5460\npayload: eOCa877F\nreceivedAt: 1999-03-22T00:00:00Z\nto: BvVD7829' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
samples/cli/sample-apps --ws \
    'type: personalChatRequest\nid: QbEgvLNk\nfrom: g04DcBVG\npayload: CiDZh3RS\nreceivedAt: 1993-10-31T00:00:00Z\nto: kLCq5tgu' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
samples/cli/sample-apps --ws \
    'type: personalChatResponse\nid: cG9mNGqM\ncode: 10' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RefreshTokenRequest
samples/cli/sample-apps --ws \
    'type: refreshTokenRequest\nid: Vv94M4bI\ntoken: Mspvwz5e' \
    > test.out 2>&1
eval_tap $? 74 'RefreshTokenRequest' test.out

#- 75 RefreshTokenResponse
samples/cli/sample-apps --ws \
    'type: refreshTokenResponse\nid: 71NKTAXJ\ncode: 13' \
    > test.out 2>&1
eval_tap $? 75 'RefreshTokenResponse' test.out

#- 76 RejectFriendsNotif
samples/cli/sample-apps --ws \
    'type: rejectFriendsNotif\nuserId: IdIiOCKa' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsNotif' test.out

#- 77 RejectFriendsRequest
samples/cli/sample-apps --ws \
    'type: rejectFriendsRequest\nid: FsC6qFt4\nfriendId: ZcVGVdJ1' \
    > test.out 2>&1
eval_tap $? 77 'RejectFriendsRequest' test.out

#- 78 RejectFriendsResponse
samples/cli/sample-apps --ws \
    'type: rejectFriendsResponse\nid: SqaNbGHd\ncode: 93' \
    > test.out 2>&1
eval_tap $? 78 'RejectFriendsResponse' test.out

#- 79 RematchmakingNotif
samples/cli/sample-apps --ws \
    'type: rematchmakingNotif\nbanDuration: 16' \
    > test.out 2>&1
eval_tap $? 79 'RematchmakingNotif' test.out

#- 80 RequestFriendsNotif
samples/cli/sample-apps --ws \
    'type: requestFriendsNotif\nfriendId: bx4klnZE' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsNotif' test.out

#- 81 RequestFriendsRequest
samples/cli/sample-apps --ws \
    'type: requestFriendsRequest\nid: 9LPyEDqP\nfriendId: LlCMHZtF' \
    > test.out 2>&1
eval_tap $? 81 'RequestFriendsRequest' test.out

#- 82 RequestFriendsResponse
samples/cli/sample-apps --ws \
    'type: requestFriendsResponse\nid: vfazD0eZ\ncode: 29' \
    > test.out 2>&1
eval_tap $? 82 'RequestFriendsResponse' test.out

#- 83 SendChannelChatRequest
samples/cli/sample-apps --ws \
    'type: sendChannelChatRequest\nid: nVQw5xS3\nchannelSlug: OIWsmWky\npayload: fEtdeApN' \
    > test.out 2>&1
eval_tap $? 83 'SendChannelChatRequest' test.out

#- 84 SendChannelChatResponse
samples/cli/sample-apps --ws \
    'type: sendChannelChatResponse\nid: 5r1bEqYO\ncode: 24' \
    > test.out 2>&1
eval_tap $? 84 'SendChannelChatResponse' test.out

#- 85 SetReadyConsentNotif
samples/cli/sample-apps --ws \
    'type: setReadyConsentNotif\nmatchId: 38ALW5AJ\nuserId: MROwV68L' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentNotif' test.out

#- 86 SetReadyConsentRequest
samples/cli/sample-apps --ws \
    'type: setReadyConsentRequest\nid: bDtEjdzc\nmatchId: 6P25Rxj0' \
    > test.out 2>&1
eval_tap $? 86 'SetReadyConsentRequest' test.out

#- 87 SetReadyConsentResponse
samples/cli/sample-apps --ws \
    'type: setReadyConsentResponse\nid: cOuA3ano\ncode: 89' \
    > test.out 2>&1
eval_tap $? 87 'SetReadyConsentResponse' test.out

#- 88 SetSessionAttributeRequest
samples/cli/sample-apps --ws \
    'type: setSessionAttributeRequest\nid: 6biSKhVx\nkey: GDiHIlVe\nnamespace: FfEVm0uP\nvalue: mhbWwITd' \
    > test.out 2>&1
eval_tap $? 88 'SetSessionAttributeRequest' test.out

#- 89 SetSessionAttributeResponse
samples/cli/sample-apps --ws \
    'type: setSessionAttributeResponse\nid: tJA5NAbM\ncode: 28' \
    > test.out 2>&1
eval_tap $? 89 'SetSessionAttributeResponse' test.out

#- 90 SetUserStatusRequest
samples/cli/sample-apps --ws \
    'type: setUserStatusRequest\nid: SGnamojS\nactivity: T0zqlee8\navailability: 60' \
    > test.out 2>&1
eval_tap $? 90 'SetUserStatusRequest' test.out

#- 91 SetUserStatusResponse
samples/cli/sample-apps --ws \
    'type: setUserStatusResponse\nid: DhZCYnv5\ncode: 52' \
    > test.out 2>&1
eval_tap $? 91 'SetUserStatusResponse' test.out

#- 92 ShutdownNotif
samples/cli/sample-apps --ws \
    'type: shutdownNotif\nmessage: 54jBQJNd' \
    > test.out 2>&1
eval_tap $? 92 'ShutdownNotif' test.out

#- 93 SignalingP2PNotif
samples/cli/sample-apps --ws \
    'type: signalingP2PNotif\ndestinationId: heLR7poS\nmessage: HAbF5fl8' \
    > test.out 2>&1
eval_tap $? 93 'SignalingP2PNotif' test.out

#- 94 StartMatchmakingRequest
samples/cli/sample-apps --ws \
    'type: startMatchmakingRequest\nid: kSEBkeUZ\nextraAttributes: ZJbUlNBl\ngameMode: JO0w9sR1\npartyAttributes: {"ySxWsaAc":{},"UFGwBzuL":{},"sKQMThkv":{}}\npriority: 61\ntempParty: Glln8ZTt' \
    > test.out 2>&1
eval_tap $? 94 'StartMatchmakingRequest' test.out

#- 95 StartMatchmakingResponse
samples/cli/sample-apps --ws \
    'type: startMatchmakingResponse\nid: ABWb63uP\ncode: 19' \
    > test.out 2>&1
eval_tap $? 95 'StartMatchmakingResponse' test.out

#- 96 UnblockPlayerNotif
samples/cli/sample-apps --ws \
    'type: unblockPlayerNotif\nunblockedUserId: v5IDDFkK\nuserId: T1qaE9b2' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerNotif' test.out

#- 97 UnblockPlayerRequest
samples/cli/sample-apps --ws \
    'type: unblockPlayerRequest\nid: RqHWVl3q\nnamespace: aOqCwWOJ\nunblockedUserId: SAizVa2s' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerRequest' test.out

#- 98 UnblockPlayerResponse
samples/cli/sample-apps --ws \
    'type: unblockPlayerResponse\nid: MexvlzQs\ncode: 46\nnamespace: aMKnTghb\nunblockedUserId: ew22GJyx' \
    > test.out 2>&1
eval_tap $? 98 'UnblockPlayerResponse' test.out

#- 99 UnfriendNotif
samples/cli/sample-apps --ws \
    'type: unfriendNotif\nfriendId: PXF10h4s' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendNotif' test.out

#- 100 UnfriendRequest
samples/cli/sample-apps --ws \
    'type: unfriendRequest\nid: owGQzzJU\nfriendId: MYColhhi' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendRequest' test.out

#- 101 UnfriendResponse
samples/cli/sample-apps --ws \
    'type: unfriendResponse\nid: frPavRN3\ncode: 57' \
    > test.out 2>&1
eval_tap $? 101 'UnfriendResponse' test.out

#- 102 UserBannedNotification
samples/cli/sample-apps --ws \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 102 'UserBannedNotification' test.out

#- 103 UserMetricRequest
samples/cli/sample-apps --ws \
    'type: userMetricRequest\nid: SMLj3vlT' \
    > test.out 2>&1
eval_tap $? 103 'UserMetricRequest' test.out

#- 104 UserMetricResponse
samples/cli/sample-apps --ws \
    'type: userMetricResponse\nid: VbYKQEqi\ncode: 90\nplayerCount: 81' \
    > test.out 2>&1
eval_tap $? 104 'UserMetricResponse' test.out

#- 105 UserStatusNotif
samples/cli/sample-apps --ws \
    'type: userStatusNotif\nactivity: TaOzBT03\navailability: 47\nlastSeenAt: 1971-01-19T00:00:00Z\nuserId: W2uwNw4J' \
    > test.out 2>&1
eval_tap $? 105 'UserStatusNotif' test.out


exit $EXIT_CODE