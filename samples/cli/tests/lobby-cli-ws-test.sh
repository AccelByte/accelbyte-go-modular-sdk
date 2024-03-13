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
    'type: acceptFriendsNotif\nfriendId: FhyK6LbP' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: BrQglZFA\nfriendId: K1N5ndlZ' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: gFlQW2Xa\ncode: 48' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: BOYfEwM8\nuserId: SvhyXWBE' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: aEYBkYuG\nblockUserId: H331MGVK\nnamespace: GH2zfL94' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: jnXPM5CJ\nblockUserId: vCbmbkj1\ncode: 42\nnamespace: M9ehaP09' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: 4US2dUJG' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: uU583FW0\nfriendId: rCoha0rl' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: aaNYPMYm\ncode: 62' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: Kh2QHkJH\ngameMode: WgS5g10d\nisTempParty: True' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: XRx4y3pU\ncode: 20' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: T3Evm59w\nfrom: Y76vwDCx\npayload: iFljy6T9\nsentAt: 1981-03-01T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: RFRqnqe0\nuserId: 170fMsJM' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionId: kpDjbZsj' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: 36qMYn32\nnamespace: p95pHZF6' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [zhPa2dUF,3rhD9LEE,IBSdcq6K]\ncustomAttribute: jMFw32Gh\ndeployment: LqYImvif\ngameVersion: Pnwi1HDF\nimageVersion: USX2EEYV\nip: xQHjczgY\nisOK: False\nisOverrideGameVersion: False\nlastUpdate: NTHSjP1r\nmatchId: VTtiRCjQ\nmessage: 37no9SQY\nnamespace: m3dRclua\npodName: hsASfDvb\nport: 78\nports: {"JHPM1S9X":100,"wBLnn3ro":50,"voK1ePAu":48}\nprotocol: oCbmeJBi\nprovider: 3jOkQYVF\nregion: FYKaWNI6\nsessionId: Geq8dEDS\nstatus: 3Ju1EEOk' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: ZMg1WEnP' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: cmoJExub\nuserId: svBRcvbG' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: vOYMWs9u' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: ZronqDvT\nactivity: [mHdhbYWY,8Rkgp4WN,2RL77t9g]\navailability: [PQ0PscnZ,r6WCRGT0,jWrH6pGx]\ncode: 47\nfriendIds: [ysFLYKAo,ppq1zuH5,NgseuqqX]\nlastSeenAt: [1995-06-17T00:00:00Z,1986-08-10T00:00:00Z,1998-09-13T00:00:00Z]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: kMnh8nO4' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: nuqECfYN\nattributes: {"OpCXwqeR":"Kqh4stxl","nu3mgrC5":"WgH9ohzY","nBBhKWLl":"E3PsTMd9"}\ncode: 65' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: SRckedcr\nfriendId: O0NhoGox' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: dAIEnhPf\ncode: 97\nfriendshipStatus: wNsZMY3k' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: 0FLRnaPv\nkey: PUppNHb9' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: ROCC87L6\ncode: 98\nvalue: Dl2BX1dA' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: d9bNqiJj' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: tuLdUMTQ\nchannelSlug: HFGwLXsX\ncode: 62' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: h2D1OjWa' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: PYvcumIl\ncode: 93\nuserIds: [F1vGe9HW,usGKGtIJ,uxlcdZLw]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: HtCAhZlC\nfriendId: aNCdMY6C' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: 4aGDdHrl\ncode: 69\nfriendIds: [pv12dF9u,P2zyabxi,TMsI7km9]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: e5DsV7l9' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: bsQUPH8g' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: AjSUlCBO\ncode: 5\nfriendIds: [N8tjPVsk,bKFb6ced,ksJFiCFJ]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [lkGLEZdj,TTZcdubn,yZWCwT5a]\nmatchId: wH44SgyJ\nmessage: RraShRKO\npartyMember: [VkpDKtR6,SB8zf0nC,nBXrUE6j]\nreadyDuration: 97\nstatus: LGVhewBI' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: nQ1cmuLi\nfrom: 6i2IMOkl\npayload: vl62xxXX\nsentAt: 1998-11-07T00:00:00Z\nto: FgpGmDC8\ntopic: HppWMxWZ' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 MessageSessionNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageSessionNotif\nid: bjd85pyP\nfrom: yuEolF2O\npayload: vEiOt3ng\nsentAt: 1996-04-02T00:00:00Z\nto: sYG7v1bw\ntopic: eVOfXvDu' \
    > test.out 2>&1
eval_tap $? 40 'MessageSessionNotif' test.out

#- 41 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: 3eyh9iyy' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationRequest' test.out

#- 42 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: jUVGilYZ\ncode: 29' \
    > test.out 2>&1
eval_tap $? 42 'OfflineNotificationResponse' test.out

#- 43 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: F36Vgako\ncode: 35\nonlineFriendIds: [u1v2UyX4,uZRNt3Kd,h25MFprt]' \
    > test.out 2>&1
eval_tap $? 43 'OnlineFriends' test.out

#- 44 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: QocFL0EW\nfrom: teUnoulS\npayload: uBirZzCH\nreceivedAt: 1976-10-24T00:00:00Z\nto: 3DRRNIvM' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatNotif' test.out

#- 45 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: 8SyRUwdt\nfrom: obnUYYa1\npayload: FGmNmWkk\nreceivedAt: 1982-06-10T00:00:00Z\nto: CniLBX0s' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatRequest' test.out

#- 46 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: Vd9YowlO\ncode: 87' \
    > test.out 2>&1
eval_tap $? 46 'PartyChatResponse' test.out

#- 47 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: qoJmDTAy' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateRequest' test.out

#- 48 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: SXTsYLAn\ncode: 14\ninvitationToken: B5lUwuao\ninvitees: zO04h85m\nleaderId: H38Kf6Xp\nmembers: 8wnfpK4g\npartyId: uEm8CXTS' \
    > test.out 2>&1
eval_tap $? 48 'PartyCreateResponse' test.out

#- 49 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"mLKQhh5H":{},"UoCTOQWO":{},"gXNUMotE":{}}\ninvitees: [1h0MasCr,K7vX7D8f,mwZsg1Do]\nleader: OH0BeFMZ\nmembers: [JkB4umfx,NFuKv45M,29PEDrie]\nnamespace: 8GFqoKkE\npartyId: hChHkNqg\nupdatedAt: 1991-11-14T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 49 'PartyDataUpdateNotif' test.out

#- 50 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: zBt5htxN\ninvitationToken: CRc3iDdj\npartyId: PY9i8Cut' \
    > test.out 2>&1
eval_tap $? 50 'PartyGetInvitedNotif' test.out

#- 51 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: 8dsF5lS7' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoRequest' test.out

#- 52 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: QLx4xxHK\ncode: 92\ncustomAttributes: {"h2VvNJsF":{},"4uUeqA7t":{},"2da00zw9":{}}\ninvitationToken: W4kteOpA\ninvitees: vRkD4Qvw\nleaderId: evkEs8Pv\nmembers: X3NJRBUr\npartyId: 2aBHeP2v' \
    > test.out 2>&1
eval_tap $? 52 'PartyInfoResponse' test.out

#- 53 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: kTd1np77\ninviterId: bhzZa90S' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteNotif' test.out

#- 54 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: 6BbrfFK4\nfriendId: t5eaWMSA' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteRequest' test.out

#- 55 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: 8aMgFsBs\ncode: 94' \
    > test.out 2>&1
eval_tap $? 55 'PartyInviteResponse' test.out

#- 56 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: rhPSzZFf' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinNotif' test.out

#- 57 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: 7wNMYO3G\ninvitationToken: kJzOQp23\npartyId: m54aREWM' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinRequest' test.out

#- 58 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: WFtKwcxK\ncode: 23\ninvitationToken: IXPlN9Tr\ninvitees: r71iDFJc\nleaderId: sLTu31tG\nmembers: JBWVNozs\npartyId: vBb3FYCq' \
    > test.out 2>&1
eval_tap $? 58 'PartyJoinResponse' test.out

#- 59 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: sqklRkJ9\npartyId: GZleQOXK\nuserId: ITX00gDQ' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickNotif' test.out

#- 60 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: f8gw5fxw\nmemberId: cDnugmqK' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickRequest' test.out

#- 61 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: mV7p2veU\ncode: 80' \
    > test.out 2>&1
eval_tap $? 61 'PartyKickResponse' test.out

#- 62 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: 6hFP1VDN\nuserId: MeCfBo3D' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveNotif' test.out

#- 63 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: 86xfaWZy\nignoreUserRegistry: True' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveRequest' test.out

#- 64 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: 8HHUShs6\ncode: 17' \
    > test.out 2>&1
eval_tap $? 64 'PartyLeaveResponse' test.out

#- 65 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: ruxkjK8A\nnewLeaderUserId: KAeMUPyl' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderRequest' test.out

#- 66 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: 4z2N52p5\ncode: 43\ninvitationToken: Rd74Fkrm\ninvitees: 6PHPfGVd\nleaderId: HQ2wXYgc\nmembers: F3t8Y2mQ\npartyId: 3rhbxom8' \
    > test.out 2>&1
eval_tap $? 66 'PartyPromoteLeaderResponse' test.out

#- 67 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: 1ohSnEFK\npartyId: mu0BHl0y\nuserId: jYYQEy62' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectNotif' test.out

#- 68 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: wBB9vm9C\ninvitationToken: 3uDDUsev\npartyId: Eoyy51qa' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectRequest' test.out

#- 69 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: CsmLIbfq\ncode: 48\npartyId: lZOSx0Xe' \
    > test.out 2>&1
eval_tap $? 69 'PartyRejectResponse' test.out

#- 70 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: 3FUQz93K\nfriendId: hnkiBYMy' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryRequest' test.out

#- 71 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: S5ZnOE7f\nchat: H8tjzhpx\ncode: 41\nfriendId: X6DnBUc9' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatHistoryResponse' test.out

#- 72 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: VZLFVwYu\nfrom: aZ4LyAVx\npayload: 1G2mnQ7H\nreceivedAt: 1985-03-23T00:00:00Z\nto: ehjWnOKj' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatNotif' test.out

#- 73 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: O8GjOnsm\nfrom: jdxiwEta\npayload: 9TZDX6It\nreceivedAt: 1976-11-15T00:00:00Z\nto: qHol1ArP' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatRequest' test.out

#- 74 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: gbIE6rt9\ncode: 90' \
    > test.out 2>&1
eval_tap $? 74 'PersonalChatResponse' test.out

#- 75 RefreshTokenRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenRequest\nid: AivAqCc9\ntoken: gMdZ7sJg' \
    > test.out 2>&1
eval_tap $? 75 'RefreshTokenRequest' test.out

#- 76 RefreshTokenResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenResponse\nid: 6gyXrADR\ncode: 21' \
    > test.out 2>&1
eval_tap $? 76 'RefreshTokenResponse' test.out

#- 77 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: VlLWQsXp' \
    > test.out 2>&1
eval_tap $? 77 'RejectFriendsNotif' test.out

#- 78 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: Xd677aTG\nfriendId: jE0oFvDg' \
    > test.out 2>&1
eval_tap $? 78 'RejectFriendsRequest' test.out

#- 79 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: 1czVOPqT\ncode: 11' \
    > test.out 2>&1
eval_tap $? 79 'RejectFriendsResponse' test.out

#- 80 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 15' \
    > test.out 2>&1
eval_tap $? 80 'RematchmakingNotif' test.out

#- 81 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: GrLCh9ou' \
    > test.out 2>&1
eval_tap $? 81 'RequestFriendsNotif' test.out

#- 82 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: 1l3CxOlb\nfriendId: XJXVTFlj' \
    > test.out 2>&1
eval_tap $? 82 'RequestFriendsRequest' test.out

#- 83 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: MiCTaML7\ncode: 8' \
    > test.out 2>&1
eval_tap $? 83 'RequestFriendsResponse' test.out

#- 84 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: RRo3DjrJ\nchannelSlug: OmowBHVF\npayload: Smj2kKTH' \
    > test.out 2>&1
eval_tap $? 84 'SendChannelChatRequest' test.out

#- 85 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: WTPvaks2\ncode: 45' \
    > test.out 2>&1
eval_tap $? 85 'SendChannelChatResponse' test.out

#- 86 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: qVri2j5y\nuserId: lD2x4BzD' \
    > test.out 2>&1
eval_tap $? 86 'SetReadyConsentNotif' test.out

#- 87 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: b6Rg91md\nmatchId: CWZXXYg9' \
    > test.out 2>&1
eval_tap $? 87 'SetReadyConsentRequest' test.out

#- 88 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: 13g9ldc6\ncode: 18' \
    > test.out 2>&1
eval_tap $? 88 'SetReadyConsentResponse' test.out

#- 89 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: s3RTrfw2\nkey: EEQoNSrd\nnamespace: 0D71YNPT\nvalue: x3BHJnk7' \
    > test.out 2>&1
eval_tap $? 89 'SetSessionAttributeRequest' test.out

#- 90 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: ZuPLsTwr\ncode: 23' \
    > test.out 2>&1
eval_tap $? 90 'SetSessionAttributeResponse' test.out

#- 91 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: XhcaeFWq\nactivity: VeoOlm90\navailability: 71' \
    > test.out 2>&1
eval_tap $? 91 'SetUserStatusRequest' test.out

#- 92 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: dNfGqqoB\ncode: 66' \
    > test.out 2>&1
eval_tap $? 92 'SetUserStatusResponse' test.out

#- 93 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: qeKEu0YI' \
    > test.out 2>&1
eval_tap $? 93 'ShutdownNotif' test.out

#- 94 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: ENAHkvkK\nmessage: sJQomLOZ' \
    > test.out 2>&1
eval_tap $? 94 'SignalingP2PNotif' test.out

#- 95 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: 5iJ511zY\nextraAttributes: kLfAbc3A\ngameMode: CqkcMIrU\npartyAttributes: {"Zy21lUL6":{},"udykLt0T":{},"AKmJPC6c":{}}\npriority: 99\ntempParty: mN0tr7nC' \
    > test.out 2>&1
eval_tap $? 95 'StartMatchmakingRequest' test.out

#- 96 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: b6NejGqZ\ncode: 59' \
    > test.out 2>&1
eval_tap $? 96 'StartMatchmakingResponse' test.out

#- 97 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: xyC30iAT\nuserId: cVSLRjt9' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerNotif' test.out

#- 98 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: 64mCIeBL\nnamespace: LKCBXvdI\nunblockedUserId: U2Bxzm4l' \
    > test.out 2>&1
eval_tap $? 98 'UnblockPlayerRequest' test.out

#- 99 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: nlmn5BQD\ncode: 89\nnamespace: pAZzV3Is\nunblockedUserId: iV3BX4w2' \
    > test.out 2>&1
eval_tap $? 99 'UnblockPlayerResponse' test.out

#- 100 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: vofWhvQO' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendNotif' test.out

#- 101 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: zwyWXhGD\nfriendId: maWK9bEz' \
    > test.out 2>&1
eval_tap $? 101 'UnfriendRequest' test.out

#- 102 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: UOzy1XDC\ncode: 30' \
    > test.out 2>&1
eval_tap $? 102 'UnfriendResponse' test.out

#- 103 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 103 'UserBannedNotification' test.out

#- 104 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: vJGqW8Aj' \
    > test.out 2>&1
eval_tap $? 104 'UserMetricRequest' test.out

#- 105 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: aHIy1DG4\ncode: 80\nplayerCount: 62' \
    > test.out 2>&1
eval_tap $? 105 'UserMetricResponse' test.out

#- 106 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: ZJz4Ixtl\navailability: 47\nlastSeenAt: 1976-12-14T00:00:00Z\nuserId: eIUDO0i6' \
    > test.out 2>&1
eval_tap $? 106 'UserStatusNotif' test.out


rm -f "tmp.dat"

exit $EXIT_CODE