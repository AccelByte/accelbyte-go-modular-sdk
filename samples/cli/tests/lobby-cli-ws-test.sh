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
    'type: acceptFriendsNotif\nfriendId: XGFuE3HK' \
    > test.out 2>&1
eval_tap $? 1 'AcceptFriendsNotif' test.out

#- 2 AcceptFriendsRequest
samples/cli/sample-apps --ws \
    'type: acceptFriendsRequest\nid: yInF76jv\nfriendId: aJm4NisS' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsRequest' test.out

#- 3 AcceptFriendsResponse
samples/cli/sample-apps --ws \
    'type: acceptFriendsResponse\nid: Yc2Q6BVd\ncode: 73' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsResponse' test.out

#- 4 BlockPlayerNotif
samples/cli/sample-apps --ws \
    'type: blockPlayerNotif\nblockedUserId: NIKk6gOI\nuserId: ChGZfjZe' \
    > test.out 2>&1
eval_tap $? 4 'BlockPlayerNotif' test.out

#- 5 BlockPlayerRequest
samples/cli/sample-apps --ws \
    'type: blockPlayerRequest\nid: 70bb9kN4\nblockUserId: KY5lKu2Z\nnamespace: zlwXkHUo' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerRequest' test.out

#- 6 BlockPlayerResponse
samples/cli/sample-apps --ws \
    'type: blockPlayerResponse\nid: ulCBbSYF\nblockUserId: pdrQc1lv\ncode: 7\nnamespace: 21I9xebb' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerResponse' test.out

#- 7 CancelFriendsNotif
samples/cli/sample-apps --ws \
    'type: cancelFriendsNotif\nuserId: ymbTcuKc' \
    > test.out 2>&1
eval_tap $? 7 'CancelFriendsNotif' test.out

#- 8 CancelFriendsRequest
samples/cli/sample-apps --ws \
    'type: cancelFriendsRequest\nid: EIKsV9lW\nfriendId: Y56AoCkJ' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsRequest' test.out

#- 9 CancelFriendsResponse
samples/cli/sample-apps --ws \
    'type: cancelFriendsResponse\nid: nRg5ghmV\ncode: 86' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsResponse' test.out

#- 10 CancelMatchmakingRequest
samples/cli/sample-apps --ws \
    'type: cancelMatchmakingRequest\nid: r2NzfMHW\ngameMode: TKjukO0S\nisTempParty: True' \
    > test.out 2>&1
eval_tap $? 10 'CancelMatchmakingRequest' test.out

#- 11 CancelMatchmakingResponse
samples/cli/sample-apps --ws \
    'type: cancelMatchmakingResponse\nid: f4uq40FX\ncode: 64' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingResponse' test.out

#- 12 ChannelChatNotif
samples/cli/sample-apps --ws \
    'type: channelChatNotif\nchannelSlug: 2XbXBxHj\nfrom: 2aKCTFbA\npayload: XDFMgEb7\nsentAt: 1983-11-17T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 12 'ChannelChatNotif' test.out

#- 13 ClientResetRequest
samples/cli/sample-apps --ws \
    'type: clientResetRequest\nnamespace: nPMwuTR4\nuserId: psvTkuH9' \
    > test.out 2>&1
eval_tap $? 13 'ClientResetRequest' test.out

#- 14 ConnectNotif
samples/cli/sample-apps --ws \
    'type: connectNotif\nlobbySessionID: GkxgX8Ad' \
    > test.out 2>&1
eval_tap $? 14 'ConnectNotif' test.out

#- 15 DisconnectNotif
samples/cli/sample-apps --ws \
    'type: disconnectNotif\nconnectionId: oykZXmzq\nnamespace: OdDhpvYI' \
    > test.out 2>&1
eval_tap $? 15 'DisconnectNotif' test.out

#- 16 DsNotif
samples/cli/sample-apps --ws \
    'type: dsNotif\nalternateIps: [djCVTXKe,RXbfNd5k,i2WmhJUh]\ncustomAttribute: ceerEmLL\ndeployment: xLEDPIzP\ngameVersion: Uqw8Li29\nimageVersion: VQuL2hcN\nip: RYQTMbQv\nisOK: False\nisOverrideGameVersion: True\nlastUpdate: YUJ5VgBp\nmatchId: sj6OeO4Y\nmessage: 5BOkwMtY\nnamespace: 6RTpCDHj\npodName: 7IjPtFsg\nport: 72\nports: {"s3DPdKVc":31,"P0VhHc0O":28,"FKwk2BBn":88}\nprotocol: GRVU4zuy\nprovider: FuHrsPwc\nregion: mtI8Xat2\nsessionId: CixPWiqC\nstatus: iJKySQwY' \
    > test.out 2>&1
eval_tap $? 16 'DsNotif' test.out

#- 17 ErrorNotif
samples/cli/sample-apps --ws \
    'type: errorNotif\nmessage: C8NF0Wt5' \
    > test.out 2>&1
eval_tap $? 17 'ErrorNotif' test.out

#- 18 ExitAllChannel
samples/cli/sample-apps --ws \
    'type: exitAllChannel\nnamespace: qSJUuEDw\nuserId: v615Z3WF' \
    > test.out 2>&1
eval_tap $? 18 'ExitAllChannel' test.out

#- 19 FriendsStatusRequest
samples/cli/sample-apps --ws \
    'type: friendsStatusRequest\nid: MaFfJ6SY' \
    > test.out 2>&1
eval_tap $? 19 'FriendsStatusRequest' test.out

#- 20 FriendsStatusResponse
samples/cli/sample-apps --ws \
    'type: friendsStatusResponse\nid: CWuDrfhi\nactivity: [L436gc4I,8XIRb6XW,TFNcjcKO]\navailability: [EVjzvLoX,oKudM9mH,DSOtTUA7]\ncode: 41\nfriendIds: [tta7y6QJ,wRAqaXwc,6Mstzu2A]\nlastSeenAt: [1996-09-02T00:00:00Z,1973-12-19T00:00:00Z,1985-08-27T00:00:00Z]' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusResponse' test.out

#- 21 GetAllSessionAttributeRequest
samples/cli/sample-apps --ws \
    'type: getAllSessionAttributeRequest\nid: zgFqNMYV' \
    > test.out 2>&1
eval_tap $? 21 'GetAllSessionAttributeRequest' test.out

#- 22 GetAllSessionAttributeResponse
samples/cli/sample-apps --ws \
    'type: getAllSessionAttributeResponse\nid: gTAUVYHM\nattributes: {"L729iqSY":"fEsHfXdf","K7Zkw7bQ":"UAQuEESi","dazd2Gb6":"VvOe5Ib1"}\ncode: 4' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeResponse' test.out

#- 23 GetFriendshipStatusRequest
samples/cli/sample-apps --ws \
    'type: getFriendshipStatusRequest\nid: PRJ7Ul9I\nfriendId: U3ScsELt' \
    > test.out 2>&1
eval_tap $? 23 'GetFriendshipStatusRequest' test.out

#- 24 GetFriendshipStatusResponse
samples/cli/sample-apps --ws \
    'type: getFriendshipStatusResponse\nid: IWNw10GX\ncode: 68\nfriendshipStatus: BBmpUAGD' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusResponse' test.out

#- 25 GetSessionAttributeRequest
samples/cli/sample-apps --ws \
    'type: getSessionAttributeRequest\nid: uclLSxRc\nkey: BcKBarWU' \
    > test.out 2>&1
eval_tap $? 25 'GetSessionAttributeRequest' test.out

#- 26 GetSessionAttributeResponse
samples/cli/sample-apps --ws \
    'type: getSessionAttributeResponse\nid: RisbG20p\ncode: 90\nvalue: goizRDpS' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeResponse' test.out

#- 27 Heartbeat
samples/cli/sample-apps --ws \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 27 'Heartbeat' test.out

#- 28 JoinDefaultChannelRequest
samples/cli/sample-apps --ws \
    'type: joinDefaultChannelRequest\nid: bjpOsJqj' \
    > test.out 2>&1
eval_tap $? 28 'JoinDefaultChannelRequest' test.out

#- 29 JoinDefaultChannelResponse
samples/cli/sample-apps --ws \
    'type: joinDefaultChannelResponse\nid: G9UTCcqf\nchannelSlug: RLVvJJoQ\ncode: 90' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelResponse' test.out

#- 30 ListIncomingFriendsRequest
samples/cli/sample-apps --ws \
    'type: listIncomingFriendsRequest\nid: 3SUCa4Sw' \
    > test.out 2>&1
eval_tap $? 30 'ListIncomingFriendsRequest' test.out

#- 31 ListIncomingFriendsResponse
samples/cli/sample-apps --ws \
    'type: listIncomingFriendsResponse\nid: KcCyH5zd\ncode: 55\nuserIds: [6OX9cGje,UpPJX6GV,PCbhICkh]' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsResponse' test.out

#- 32 ListOfFriendsRequest
samples/cli/sample-apps --ws \
    'type: listOfFriendsRequest\nid: gtz85aIf\nfriendId: spd0AwbW' \
    > test.out 2>&1
eval_tap $? 32 'ListOfFriendsRequest' test.out

#- 33 ListOfFriendsResponse
samples/cli/sample-apps --ws \
    'type: listOfFriendsResponse\nid: zLyBedtw\ncode: 68\nfriendIds: [FheaVeAt,jc1twUe3,92M7ZfiY]' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsResponse' test.out

#- 34 ListOnlineFriendsRequest
samples/cli/sample-apps --ws \
    'type: listOnlineFriendsRequest\nid: TL8slCiU' \
    > test.out 2>&1
eval_tap $? 34 'ListOnlineFriendsRequest' test.out

#- 35 ListOutgoingFriendsRequest
samples/cli/sample-apps --ws \
    'type: listOutgoingFriendsRequest\nid: bo1JtBKO' \
    > test.out 2>&1
eval_tap $? 35 'ListOutgoingFriendsRequest' test.out

#- 36 ListOutgoingFriendsResponse
samples/cli/sample-apps --ws \
    'type: listOutgoingFriendsResponse\nid: 0dpfBRIL\ncode: 9\nfriendIds: [MPH8fXEq,jRAnMRbQ,q47Bzwjh]' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsResponse' test.out

#- 37 MatchmakingNotif
samples/cli/sample-apps --ws \
    'type: matchmakingNotif\ncounterPartyMember: [jv4EZuA1,ojoIEgGu,GfQLX1xX]\nmatchId: TIw5JKIG\nmessage: NWJUEuN8\npartyMember: [Clg8y9r1,aqPmbKC5,tZXEFcR9]\nreadyDuration: 57\nstatus: aLbyiFFO' \
    > test.out 2>&1
eval_tap $? 37 'MatchmakingNotif' test.out

#- 38 MessageNotif
samples/cli/sample-apps --ws \
    'type: messageNotif\nid: B5oypelf\nfrom: 3zAFAdSC\npayload: p5SgOLEt\nsentAt: 1983-08-28T00:00:00Z\nto: WKTvlHY4\ntopic: RZ0blaIX' \
    > test.out 2>&1
eval_tap $? 38 'MessageNotif' test.out

#- 39 MessageSessionNotif
samples/cli/sample-apps --ws \
    'type: messageSessionNotif\nid: FuLqm1Hc\nfrom: MzRoTObL\npayload: Ypf0z1cG\nsentAt: 1974-11-08T00:00:00Z\nto: ed8Elwr7\ntopic: V74zpyrY' \
    > test.out 2>&1
eval_tap $? 39 'MessageSessionNotif' test.out

#- 40 OfflineNotificationRequest
samples/cli/sample-apps --ws \
    'type: offlineNotificationRequest\nid: JFcIyuSB' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
samples/cli/sample-apps --ws \
    'type: offlineNotificationResponse\nid: EI9ya7rM\ncode: 28' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
samples/cli/sample-apps --ws \
    'type: onlineFriends\nid: ZbFaMTjH\ncode: 23\nonlineFriendIds: [rBlHmWI7,X2tGQVmC,0NdCC6u0]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
samples/cli/sample-apps --ws \
    'type: partyChatNotif\nid: sXamMjcv\nfrom: wmW4twGW\npayload: L3SGxHcZ\nreceivedAt: 1990-11-22T00:00:00Z\nto: WNJKvUoT' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
samples/cli/sample-apps --ws \
    'type: partyChatRequest\nid: XHUwbxdo\nfrom: kQykkIPS\npayload: lRkb0Ce6\nreceivedAt: 1996-04-10T00:00:00Z\nto: D7hUIZuJ' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
samples/cli/sample-apps --ws \
    'type: partyChatResponse\nid: Bft2vAvP\ncode: 0' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
samples/cli/sample-apps --ws \
    'type: partyCreateRequest\nid: KCdCmB3p' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
samples/cli/sample-apps --ws \
    'type: partyCreateResponse\nid: TrmQcaCu\ncode: 31\ninvitationToken: O1qugE28\ninvitees: TVBKEZAC\nleaderId: H57wP7dE\nmembers: CpMlZe8d\npartyId: 6iwveUGn' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
samples/cli/sample-apps --ws \
    'type: partyDataUpdateNotif\ncustomAttributes: {"NnUn2Xm9":{},"pNLYYjOR":{},"EC6FDxbQ":{}}\ninvitees: [0ZsynJ54,DzzLFhMs,hBTnokNh]\nleader: iwzLTSIw\nmembers: [Se8D9ZQD,OHUpigzq,DH5oHSGt]\nnamespace: UoD75Z4T\npartyId: jFfuNiyf\nupdatedAt: 1980-03-07T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
samples/cli/sample-apps --ws \
    'type: partyGetInvitedNotif\nfrom: X1td96Dw\ninvitationToken: 2oDCjGFB\npartyId: Lb6mUiDI' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
samples/cli/sample-apps --ws \
    'type: partyInfoRequest\nid: EXkyoVUS' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
samples/cli/sample-apps --ws \
    'type: partyInfoResponse\nid: D6sdWLtY\ncode: 46\ncustomAttributes: {"Q6zPXYsh":{},"Rl2UzuxP":{},"KZIT7vws":{}}\ninvitationToken: Pu19ZHOq\ninvitees: WAfwW68T\nleaderId: DQiYwl08\nmembers: YZOVv1ox\npartyId: PlIhdPyc' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
samples/cli/sample-apps --ws \
    'type: partyInviteNotif\ninviteeId: 8gfiDlr8\ninviterId: OzTc0jMz' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
samples/cli/sample-apps --ws \
    'type: partyInviteRequest\nid: uEFDoVTz\nfriendId: yV7oFqtA' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
samples/cli/sample-apps --ws \
    'type: partyInviteResponse\nid: UHACzkAC\ncode: 75' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
samples/cli/sample-apps --ws \
    'type: partyJoinNotif\nuserId: 4iPobqAs' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
samples/cli/sample-apps --ws \
    'type: partyJoinRequest\nid: QJTGthNq\ninvitationToken: XQMDFsqw\npartyId: DwQuK7QV' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
samples/cli/sample-apps --ws \
    'type: partyJoinResponse\nid: FZ8lVwOy\ncode: 66\ninvitationToken: FRVU3737\ninvitees: rJOeGKn3\nleaderId: KYY1tGS2\nmembers: uo0o283e\npartyId: TLDuy4R3' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
samples/cli/sample-apps --ws \
    'type: partyKickNotif\nleaderId: J03uEl5q\npartyId: 9vMiIx8X\nuserId: AGk3yjI6' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
samples/cli/sample-apps --ws \
    'type: partyKickRequest\nid: IMkdRPlz\nmemberId: 9fmRbDHS' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
samples/cli/sample-apps --ws \
    'type: partyKickResponse\nid: yxjapNqH\ncode: 4' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
samples/cli/sample-apps --ws \
    'type: partyLeaveNotif\nleaderId: BQZQh40o\nuserId: bbMiHMwU' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
samples/cli/sample-apps --ws \
    'type: partyLeaveRequest\nid: QG0PLfVS\nignoreUserRegistry: True' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
samples/cli/sample-apps --ws \
    'type: partyLeaveResponse\nid: h3nXyosX\ncode: 99' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
samples/cli/sample-apps --ws \
    'type: partyPromoteLeaderRequest\nid: 5fZARYMQ\nnewLeaderUserId: sKN8fNkI' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
samples/cli/sample-apps --ws \
    'type: partyPromoteLeaderResponse\nid: m45Vk4Xg\ncode: 91\ninvitationToken: MNKGeeRA\ninvitees: HieI3mhC\nleaderId: oRiCkhuM\nmembers: 09R8OvZw\npartyId: uKNZ9hoE' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
samples/cli/sample-apps --ws \
    'type: partyRejectNotif\nleaderId: S8UVo6RK\npartyId: GP0r6AB5\nuserId: PVCVaWlT' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
samples/cli/sample-apps --ws \
    'type: partyRejectRequest\nid: PkcFuDAc\ninvitationToken: kJWEeJGi\npartyId: 589e3Fqn' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
samples/cli/sample-apps --ws \
    'type: partyRejectResponse\nid: mmWBKfi7\ncode: 54\npartyId: WOe5FuBB' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
samples/cli/sample-apps --ws \
    'type: personalChatHistoryRequest\nid: Ong7yCPK\nfriendId: R5SjZksl' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
samples/cli/sample-apps --ws \
    'type: personalChatHistoryResponse\nid: DSWg2KhS\nchat: 8GTFxxYR\ncode: 6\nfriendId: ag86Zyzk' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
samples/cli/sample-apps --ws \
    'type: personalChatNotif\nid: HTEsWN0I\nfrom: 0tYg1MSr\npayload: 74bxAflm\nreceivedAt: 1997-08-28T00:00:00Z\nto: ToxUIzhr' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
samples/cli/sample-apps --ws \
    'type: personalChatRequest\nid: WB2Vjkbw\nfrom: 6dBUTj5G\npayload: pjbooMmn\nreceivedAt: 1994-05-11T00:00:00Z\nto: 76FDSgqi' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
samples/cli/sample-apps --ws \
    'type: personalChatResponse\nid: wPK6JvkP\ncode: 5' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RefreshTokenRequest
samples/cli/sample-apps --ws \
    'type: refreshTokenRequest\nid: EfbHkyrL\ntoken: eNgTB2py' \
    > test.out 2>&1
eval_tap $? 74 'RefreshTokenRequest' test.out

#- 75 RefreshTokenResponse
samples/cli/sample-apps --ws \
    'type: refreshTokenResponse\nid: HCg1QnQ9\ncode: 49' \
    > test.out 2>&1
eval_tap $? 75 'RefreshTokenResponse' test.out

#- 76 RejectFriendsNotif
samples/cli/sample-apps --ws \
    'type: rejectFriendsNotif\nuserId: YqMrzSCo' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsNotif' test.out

#- 77 RejectFriendsRequest
samples/cli/sample-apps --ws \
    'type: rejectFriendsRequest\nid: mo7CME49\nfriendId: 3wGKmM2k' \
    > test.out 2>&1
eval_tap $? 77 'RejectFriendsRequest' test.out

#- 78 RejectFriendsResponse
samples/cli/sample-apps --ws \
    'type: rejectFriendsResponse\nid: Xc0yk0rM\ncode: 12' \
    > test.out 2>&1
eval_tap $? 78 'RejectFriendsResponse' test.out

#- 79 RematchmakingNotif
samples/cli/sample-apps --ws \
    'type: rematchmakingNotif\nbanDuration: 13' \
    > test.out 2>&1
eval_tap $? 79 'RematchmakingNotif' test.out

#- 80 RequestFriendsNotif
samples/cli/sample-apps --ws \
    'type: requestFriendsNotif\nfriendId: IEWmbCc3' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsNotif' test.out

#- 81 RequestFriendsRequest
samples/cli/sample-apps --ws \
    'type: requestFriendsRequest\nid: ZB6GSba6\nfriendId: 2TX2CrVE' \
    > test.out 2>&1
eval_tap $? 81 'RequestFriendsRequest' test.out

#- 82 RequestFriendsResponse
samples/cli/sample-apps --ws \
    'type: requestFriendsResponse\nid: 4r2Xs95o\ncode: 53' \
    > test.out 2>&1
eval_tap $? 82 'RequestFriendsResponse' test.out

#- 83 SendChannelChatRequest
samples/cli/sample-apps --ws \
    'type: sendChannelChatRequest\nid: 6dEW6Oj6\nchannelSlug: SPpFR9Be\npayload: qhydpKyj' \
    > test.out 2>&1
eval_tap $? 83 'SendChannelChatRequest' test.out

#- 84 SendChannelChatResponse
samples/cli/sample-apps --ws \
    'type: sendChannelChatResponse\nid: uTHDR400\ncode: 47' \
    > test.out 2>&1
eval_tap $? 84 'SendChannelChatResponse' test.out

#- 85 SetReadyConsentNotif
samples/cli/sample-apps --ws \
    'type: setReadyConsentNotif\nmatchId: jdvqmwRc\nuserId: JVmVzmIm' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentNotif' test.out

#- 86 SetReadyConsentRequest
samples/cli/sample-apps --ws \
    'type: setReadyConsentRequest\nid: TFYQe6dK\nmatchId: ntMuWiMR' \
    > test.out 2>&1
eval_tap $? 86 'SetReadyConsentRequest' test.out

#- 87 SetReadyConsentResponse
samples/cli/sample-apps --ws \
    'type: setReadyConsentResponse\nid: YHFgb0Dg\ncode: 51' \
    > test.out 2>&1
eval_tap $? 87 'SetReadyConsentResponse' test.out

#- 88 SetSessionAttributeRequest
samples/cli/sample-apps --ws \
    'type: setSessionAttributeRequest\nid: CTvTFDrW\nkey: urG3AvzZ\nnamespace: 7pL50FaB\nvalue: XyOZBLZa' \
    > test.out 2>&1
eval_tap $? 88 'SetSessionAttributeRequest' test.out

#- 89 SetSessionAttributeResponse
samples/cli/sample-apps --ws \
    'type: setSessionAttributeResponse\nid: bCKzr6ub\ncode: 40' \
    > test.out 2>&1
eval_tap $? 89 'SetSessionAttributeResponse' test.out

#- 90 SetUserStatusRequest
samples/cli/sample-apps --ws \
    'type: setUserStatusRequest\nid: 9gEWNvqw\nactivity: nEnSxVAx\navailability: 65' \
    > test.out 2>&1
eval_tap $? 90 'SetUserStatusRequest' test.out

#- 91 SetUserStatusResponse
samples/cli/sample-apps --ws \
    'type: setUserStatusResponse\nid: KPmsdARs\ncode: 100' \
    > test.out 2>&1
eval_tap $? 91 'SetUserStatusResponse' test.out

#- 92 ShutdownNotif
samples/cli/sample-apps --ws \
    'type: shutdownNotif\nmessage: lWo0vH7A' \
    > test.out 2>&1
eval_tap $? 92 'ShutdownNotif' test.out

#- 93 SignalingP2PNotif
samples/cli/sample-apps --ws \
    'type: signalingP2PNotif\ndestinationId: w3rmqoSD\nmessage: e8fOVtrE' \
    > test.out 2>&1
eval_tap $? 93 'SignalingP2PNotif' test.out

#- 94 StartMatchmakingRequest
samples/cli/sample-apps --ws \
    'type: startMatchmakingRequest\nid: m2poNW6W\nextraAttributes: dyl9A0CU\ngameMode: 1pf7hQCe\npartyAttributes: {"GSrT6oFv":{},"8a40O3iL":{},"bRoCq4Sm":{}}\npriority: 89\ntempParty: jjz1F6WW' \
    > test.out 2>&1
eval_tap $? 94 'StartMatchmakingRequest' test.out

#- 95 StartMatchmakingResponse
samples/cli/sample-apps --ws \
    'type: startMatchmakingResponse\nid: saoDCZjX\ncode: 13' \
    > test.out 2>&1
eval_tap $? 95 'StartMatchmakingResponse' test.out

#- 96 UnblockPlayerNotif
samples/cli/sample-apps --ws \
    'type: unblockPlayerNotif\nunblockedUserId: MFCDt9r6\nuserId: Q9h05Uic' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerNotif' test.out

#- 97 UnblockPlayerRequest
samples/cli/sample-apps --ws \
    'type: unblockPlayerRequest\nid: ReCWWmAK\nnamespace: afkn6Nl9\nunblockedUserId: gYRAlBhx' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerRequest' test.out

#- 98 UnblockPlayerResponse
samples/cli/sample-apps --ws \
    'type: unblockPlayerResponse\nid: UvuQt6PM\ncode: 91\nnamespace: ORzAEe3H\nunblockedUserId: ekxWohQm' \
    > test.out 2>&1
eval_tap $? 98 'UnblockPlayerResponse' test.out

#- 99 UnfriendNotif
samples/cli/sample-apps --ws \
    'type: unfriendNotif\nfriendId: Wbf5v8id' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendNotif' test.out

#- 100 UnfriendRequest
samples/cli/sample-apps --ws \
    'type: unfriendRequest\nid: nqJgg3eN\nfriendId: Ku2bMmKX' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendRequest' test.out

#- 101 UnfriendResponse
samples/cli/sample-apps --ws \
    'type: unfriendResponse\nid: MUuFw8JG\ncode: 85' \
    > test.out 2>&1
eval_tap $? 101 'UnfriendResponse' test.out

#- 102 UserBannedNotification
samples/cli/sample-apps --ws \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 102 'UserBannedNotification' test.out

#- 103 UserMetricRequest
samples/cli/sample-apps --ws \
    'type: userMetricRequest\nid: fzDuW1ef' \
    > test.out 2>&1
eval_tap $? 103 'UserMetricRequest' test.out

#- 104 UserMetricResponse
samples/cli/sample-apps --ws \
    'type: userMetricResponse\nid: nxDw0BTY\ncode: 81\nplayerCount: 56' \
    > test.out 2>&1
eval_tap $? 104 'UserMetricResponse' test.out

#- 105 UserStatusNotif
samples/cli/sample-apps --ws \
    'type: userStatusNotif\nactivity: oep3IOEd\navailability: 36\nlastSeenAt: 1985-07-01T00:00:00Z\nuserId: 0eHINCeN' \
    > test.out 2>&1
eval_tap $? 105 'UserStatusNotif' test.out


exit $EXIT_CODE