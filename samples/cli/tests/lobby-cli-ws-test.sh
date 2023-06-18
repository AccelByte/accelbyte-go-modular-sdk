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
    'type: acceptFriendsNotif\nfriendId: J2ZGa89m9RuKxkhF' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: dYsT57bw6pAsSNar\nfriendId: 4SEfQGW5nonnI8A5' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: x2bbFENAlfnavWXM\ncode: 14' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: TWpRf5Yii97jzMXX\nuserId: aJwbtvQLzA2NdkQr' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: wvC5FMhJkRoFXx89\nblockUserId: JbB97nRqZwRDz2P5\nnamespace: G0vKoq5FlgnATecf' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: 3mJFbD6BGVYP7iyz\nblockUserId: gPFtB4SNlDHto54A\ncode: 4\nnamespace: VOCJa09aqervwoEY' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: sUShgMiVmcVbzYLl' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: EJ6n1939iDjWmILo\nfriendId: IygK2e8n4hKif9lD' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: r56mK4ISfE0WUSpv\ncode: 52' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: 2FmKmyHBzgsk2jpl\ngameMode: I6SPfqldjvgBGEDh\nisTempParty: False' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: nMcF1mvkY6dQEHNh\ncode: 100' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: Ea61acrivnAi5gWj\nfrom: S0fk7MpHs16wrgrR\npayload: 1Q2VPa1ahuTYaCp0\nsentAt: WLXR4cTVcveI5sai' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: jFkmaKEUnEtF8Mck\nuserId: ZB3wixonOKq11153' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionId: db7ASdXZzrCQCCT0' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: BplEeYcyLVBNl1iU\nnamespace: uDMmXBX59g2TUdGn' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [hONq3kd8sR9GvYTF,eKXVkD1zeemnIf4B,3X9sqOIYL5rTfxkA]\ncustomAttribute: abnWWYQtlfqVYEC0\ndeployment: xvji11YxwfurWEmi\ngameVersion: HlccF5YrXwVAO8X4\nimageVersion: ikApVzl1vIp2NkZ4\nip: YWRvUjY0Jtrv4JZI\nisOK: True\nisOverrideGameVersion: True\nlastUpdate: rIPHpbGkMYMW5zmN\nmatchId: 5S57EJzgNnvoTKLY\nmessage: eRyptA6owyuAr13k\nnamespace: o2m6WAba1XQrJiBS\npodName: AWdh6YTXwHcSoZTY\nport: 43\nports: {"LLxFt4jKdHZxSQmw":64,"XDiZvcjY7Z1FkQYP":75,"IEtugUy8C0sK81mA":6}\nprotocol: H1c4hl55YCvVj4ik\nprovider: 0w75rw5EypX0q8Xz\nregion: w08V22ySUw3Iyo3p\nsessionId: MAfZixiBjjwZK4Un\nstatus: fL6L44uNbErzOCPn' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: sCNqeyKOF5KkS0Ob' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: LGChXn6uTWLdnyEI\nuserId: Nxb9VMmP07LaP033' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: z0h3BG1mXZPahqys' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: v2JMEnMB2woe9RyT\nactivity: [UutSjgcEetaVBGkV,TnHAu3uQDLWYLtJ0,Gh5NDWN32k8qN6t6]\navailability: [0,28,66]\ncode: 14\nfriendIds: [UOF60xnFkpzqyVuS,xRywvLFH3YnlSGhZ,0vwXU5PwZm8NPbUd]\nlastSeenAt: [SwY83hfG0ANQSmbB,F9u6fDI4UnoFpLdC,gCx0LYzjTl6xPjcS]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: ckjwrB3ZSneeGCZJ' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: xxuSiLMVZlzIHC8S\nattributes: {"nI6xDhqoM8QOKFMP":"3bps2Rh0k11wSkpI","Q0EaDuX9GcDdHeDr":"ZYf3lzF6yAA1RlVh","toSvb34j9XPz0Zo6":"5d8Zlil5TgNXANu5"}\ncode: 76' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: GwoNHWHexQupzhZi\nfriendId: jgPQjKRo4cHQLNDr' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: d047BLRnQbylQMT3\ncode: 23\nfriendshipStatus: T6eznHhORfrlqOzn' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: rzofn7m1OL7L9BZc\nkey: aqUv1yTVUwdUrPeT' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: 0pg28klD1Rwn5y80\ncode: 66\nvalue: CMnAVRYYN2LOz3ud' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: cl2vvjDtZMcBMdDX' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: HcqJH29ydCYtS3pr\nchannelSlug: hEoJTeXAxWIu7eFT\ncode: 88' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: eXsF90q4Vcb4Dubw' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: u2lBrhvChOZPsMzU\ncode: 86\nuserIds: [9QoI8RVsNKDsG8LM,gXiUTAnoxfwyprZB,ZC5kojCi0ZmciMzq]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: wFL3ndGRvzfOcgUu\nfriendId: kIsFhhuvE0P7pvzc' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: pc1Tn6Yz3WxP7Ibg\ncode: 47\nfriendIds: [5prOtSULmJj28ibD,NZoNZW5LvHC4dUsH,BnoIhsVwT6V7YW4J]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: pvAxMI671jbGbE03' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: 8AfvdniEZVppmozV' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: JUetHQnL9gnFVrLc\ncode: 33\nfriendIds: [nkNEB1ifrioQBhez,gHEZQhnZHVkVvZfI,523yvMPoS86yEbbV]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [JX2oVqHFlkKYZKuk,isUoBzEtqOLAcJD1,Zb85JCA1qZKqLNGV]\nmatchId: wa89YOT2EGyDvA3I\nmessage: V4iUEkMtfgh1ymQI\npartyMember: [fycTBSf3FwZN04Fl,Az7XOEvdwgTPVFLM,T9gG2jOxB7dTX1w0]\nreadyDuration: 22\nstatus: OMobq1Xa4LaiF4T2' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: KP8BDZBZ5aw9Zgiu\nfrom: GxzEiL2kc7BNk3lx\npayload: 2U3vooaytLHKxrpI\nsentAt: 1\nto: vuQry9kR97DTP4c5\ntopic: UC8B3YHMxkmhVjh6' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: xf9E8xMwHaIoJQ9Q' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: bcSOigbVho3oCNg3\ncode: 76' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: Phwq6QQg0AiK7dtB\ncode: 13\nonlineFriendIds: [arucK5G2AR26mm8l,C5qvOMvuAzBVW3R1,CqvEBq0oOZZeCrAR]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: wEp2ZR9ixRMNA3hz\nfrom: KOG82lXjXSOY5qqs\npayload: cXQhxsHZvOxZlk2z\nreceivedAt: 73\nto: foJ6kGEzb1Kf9fvl' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: HYdujW4bC7mM5yjr\nfrom: 0EObuUqxRAVjU3q1\npayload: uF9mVLVbjZ5qYNLe\nreceivedAt: 86\nto: Lq5HeHwkivBmvuz9' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: v1hxzaKJBcSJCN7U\ncode: 84' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: EeHUVhDRB2E8Rj04' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: oyMbUqTEwe0JglVO\ncode: 12\ninvitationToken: XV6Qyoboa2DVnpoy\ninvitees: rqqpJkX3zgNt6uRW\nleaderId: A9H78n0jDmpFt6lO\nmembers: JptmUlPKbgRkxSVB\npartyId: 6TqTbQ3eO3lNePNp' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"zEYSaiXzXAjD6N1s":{},"E74IBQM9NK8Zwl6r":{},"1BTk0pKFcpIt12es":{}}\ninvitees: [u7HIblEd9QPKL65a,LhP7EtG9KLQpYHQM,Zq6mo5bRO0lthOXb]\nleader: iPHMQC9dKBtR2dwe\nmembers: [SBvufZHvGlPIe4sl,0Fq9U75Q6lPq10JJ,6QqGWgzrgo8aaqma]\nnamespace: FcuJkR3y94CAelLs\npartyId: VptdTyj1OGguFWSO\nupdatedAt: 79' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: 7tDYsqDlDqzhW9Nq\ninvitationToken: OQHC5xKpr1qJjJd0\npartyId: bfEpaWtlbZ8ziDG0' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: kjbVK4yGJXlfbJ1W' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: Fc73XGRIra2GdhQc\ncode: 60\ncustomAttributes: {"E09CapIzcf2Yv5wA":{},"ug17qeJYzAKZ1Mj1":{},"7UZBjBiJcck3xi2L":{}}\ninvitationToken: fkLYFdpDVgnBxKMR\ninvitees: Gsrjg0LGIabfSgiv\nleaderId: qmqLE3LwsTUwBtiQ\nmembers: K4kzwtQuH6C9fZGl\npartyId: mXoAcA8MldyY972U' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: jPVrNEPRRNK6VVxg\ninviterId: LFsUVhoHIG8EiMq4' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: 4vOnpGiJTL7CXBUy\nfriendId: PwOUrqQRPdaUT5ii' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: FnPLjeROqKV2gf3Y\ncode: 68' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: GMZR6ttGYpmnQ2j7' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: CNUgozBVZWtrwWCm\ninvitationToken: eFOeJgN8PVsdz91D\npartyId: 4Fru1y3i4X0K3TAl' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: qEBU7GwexqUq9Y3e\ncode: 55\ninvitationToken: tw1zxExRtRaDSiuq\ninvitees: oBMB322gZyNToSeI\nleaderId: YLYmT9oew96ASBHb\nmembers: mT43HwNCPc9cM8qA\npartyId: vDLalCkdNGf01fAE' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: HC2Cju4RS0mUU4UC\npartyId: QuSXL8uF19yHLhhW\nuserId: ElQZDCLl3Scxn8dU' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: zFFLsqPnNsxNBVDp\nmemberId: w4kaj2fRllym20mz' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: gVB6gai3RsRgeiG6\ncode: 99' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: Vwp7Ff5PVBDGCBpb\nuserId: YaU870kVmBhoKRKq' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: CWPWuhU3JP5H1EJ3\nignoreUserRegistry: False' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: Y68PUTBNVCls6hHO\ncode: 13' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: tMWEpBFr0RABDzln\nnewLeaderUserId: TjGCQ0cZt8sJQi0f' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: PVcMqn7t1PsVfJgE\ncode: 68\ninvitationToken: iQsX7OA9AFivVBc1\ninvitees: 3iplVXET741iupoV\nleaderId: qdCblun2PUckbaon\nmembers: Jx2nZN2IvhhsLiDh\npartyId: z3CfiIHcjV9MdVas' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: zDNeMVh12W18vGvs\npartyId: MS51WRQjjQE6ZCOS\nuserId: xediJIlSFcDkEPwu' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: zM2NHMzP8dmZ3dFR\ninvitationToken: aOng3opMXueSgEx4\npartyId: 7mHOIZC9Gy80dd6R' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: 1ZIY7snYOiHuq0z1\ncode: 5\npartyId: yTifnzGnTBM8m0IW' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: AnhPMrx0HOPCttLC\nfriendId: OsBbFRq5FYAWEMPA' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: Qwm97cW6lKaKW0nN\nchat: qVkon9uVtboXgK2i\ncode: 12\nfriendId: cZkKhjFiBTkPd7Gu' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: RXZEkZB8BOdSIX6Y\nfrom: 4WFPnYVpqJQGjVON\npayload: YABqbjcO4zlXYLcj\nreceivedAt: 53\nto: fbZUvnzaQtiQwqyX' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: gYyfHUK1DNYhzdLl\nfrom: fwFPLaa04NL8j2on\npayload: W8jObXSIYocFRBxC\nreceivedAt: 26\nto: BCgMw7UC5445RX0c' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: M2czq0Ok9EZ6kyBq\ncode: 40' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: LvPpOl9iDSYKqlMH' \
    > test.out 2>&1
eval_tap $? 74 'RejectFriendsNotif' test.out

#- 75 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: OWuPHuKcih1Vtsmh\nfriendId: o2FGh4eZh7rOvU4q' \
    > test.out 2>&1
eval_tap $? 75 'RejectFriendsRequest' test.out

#- 76 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: vbrjhTQuZ01F6Wzj\ncode: 23' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsResponse' test.out

#- 77 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 59' \
    > test.out 2>&1
eval_tap $? 77 'RematchmakingNotif' test.out

#- 78 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: dOkbRAKJuWNz4SfG' \
    > test.out 2>&1
eval_tap $? 78 'RequestFriendsNotif' test.out

#- 79 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: iwJCIqP5BSiBx47S\nfriendId: FmiuG3gpHr2WlndP' \
    > test.out 2>&1
eval_tap $? 79 'RequestFriendsRequest' test.out

#- 80 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: JYHttGonxEEnMRKk\ncode: 54' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsResponse' test.out

#- 81 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: DYaKscEOKjb1R7Kp\nchannelSlug: csWGl5H8Ilqbjc8u\npayload: 4SOKAPMMyjWI3YWJ' \
    > test.out 2>&1
eval_tap $? 81 'SendChannelChatRequest' test.out

#- 82 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: 4wszz6BxCPDBVnOY\ncode: 29' \
    > test.out 2>&1
eval_tap $? 82 'SendChannelChatResponse' test.out

#- 83 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: GdpH5DeiEmcJZd7t\nuserId: g2AqOuNRsvUzV7zG' \
    > test.out 2>&1
eval_tap $? 83 'SetReadyConsentNotif' test.out

#- 84 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: 0BJxGaBK3Ui9sDyd\nmatchId: c6UHYVPdHhek3xae' \
    > test.out 2>&1
eval_tap $? 84 'SetReadyConsentRequest' test.out

#- 85 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: HTMssLvQZ9ovOoTx\ncode: 77' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentResponse' test.out

#- 86 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: zs8a2s0m9PgvRQ3F\nkey: gxScuxF8XT1OZSa0\nnamespace: 1rBd2CMnuxhS9Lri\nvalue: rGjVj2DCmPs4TWY7' \
    > test.out 2>&1
eval_tap $? 86 'SetSessionAttributeRequest' test.out

#- 87 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: sjrtPjSwJYwc5tZS\ncode: 39' \
    > test.out 2>&1
eval_tap $? 87 'SetSessionAttributeResponse' test.out

#- 88 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: nQGuxRTxd8VWdgfy\nactivity: 6KFykNISxaRCuDgT\navailability: 85' \
    > test.out 2>&1
eval_tap $? 88 'SetUserStatusRequest' test.out

#- 89 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: b7oz4YGkfJIE6cK3\ncode: 98' \
    > test.out 2>&1
eval_tap $? 89 'SetUserStatusResponse' test.out

#- 90 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: OL17T2CBvx4L3RiB' \
    > test.out 2>&1
eval_tap $? 90 'ShutdownNotif' test.out

#- 91 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: 6SMi2BhuHu7HRzJS\nmessage: GNcoB9pMS2ecE2MT' \
    > test.out 2>&1
eval_tap $? 91 'SignalingP2PNotif' test.out

#- 92 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: kJMyfIhdBSH3ja3d\nextraAttributes: BAqI0vA4PxWtRNjS\ngameMode: R7Urbrg1qL9XrroW\npartyAttributes: {"X1pA3Jiw4YM3J2AO":{},"ea2eP5neG3axlxli":{},"rjQeibHic25du64X":{}}\npriority: 83\ntempParty: ULoVfCqbkWu3i3Zp' \
    > test.out 2>&1
eval_tap $? 92 'StartMatchmakingRequest' test.out

#- 93 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: aHFuTOUIoUvpgkoi\ncode: 83' \
    > test.out 2>&1
eval_tap $? 93 'StartMatchmakingResponse' test.out

#- 94 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: 8VmDDsnVksPdbz5f\nuserId: SRLp5SZfUt4egoL5' \
    > test.out 2>&1
eval_tap $? 94 'UnblockPlayerNotif' test.out

#- 95 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: NWeUVMPAcGIjwqf1\nnamespace: vPH7GpBrQdHDw9ry\nunblockedUserId: aU2Phi1mYg1otCed' \
    > test.out 2>&1
eval_tap $? 95 'UnblockPlayerRequest' test.out

#- 96 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: I61O1TUW2rPUw88x\ncode: 72\nnamespace: l1pN8mHwzpKuyhVR\nunblockedUserId: 6nQLd7YpfQAfS01V' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerResponse' test.out

#- 97 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: jkRhkIP4jvFZ5GZ8' \
    > test.out 2>&1
eval_tap $? 97 'UnfriendNotif' test.out

#- 98 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: uenUBRH52JrQAOaV\nfriendId: I4WEqo42uyxcnQwg' \
    > test.out 2>&1
eval_tap $? 98 'UnfriendRequest' test.out

#- 99 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: DfPhGlLjHaztgULE\ncode: 82' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendResponse' test.out

#- 100 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 100 'UserBannedNotification' test.out

#- 101 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: hJON8y1jElISfb77' \
    > test.out 2>&1
eval_tap $? 101 'UserMetricRequest' test.out

#- 102 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: JFgjUutaImsvotlF\ncode: 14\nplayerCount: 29' \
    > test.out 2>&1
eval_tap $? 102 'UserMetricResponse' test.out

#- 103 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: Td1sYc9XjGBXwN55\navailability: 44\nlastSeenAt: ZIZR85pPr2hNs54J\nuserId: dVrvSUXwWhdQmJyZ' \
    > test.out 2>&1
eval_tap $? 103 'UserStatusNotif' test.out


rm -f "tmp.dat"

exit $EXIT_CODE