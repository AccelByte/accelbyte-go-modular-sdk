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
    'type: acceptFriendsNotif\nfriendId: R5LhlpUmQL3JvVLs' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: y1KFALThpOiL6poW\nfriendId: z5LSEXRQbzqFJhbK' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: FORIIImJTP6cWv49\ncode: 1' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: HH9xOB2oWRLc0lSW\nuserId: 9AwgtaB5ZaEOmqD9' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: 7R6DdRhWzvHvpwkH\nblockUserId: 0NdnAFSWd82bnqGl\nnamespace: UO2IR0OyHFS6jvx8' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: f3R2lVjZx1Bzx5JD\nblockUserId: GY58G4xDTxPrA62e\ncode: 79\nnamespace: 1apGvxF7KxvGAL46' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: TFAOXYufXywRDRxM' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: def2XCde2MVaAWeH\nfriendId: sgNYrBp2cdY5yjif' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: NhIwvmfQQFpnXkeg\ncode: 91' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: pUOJaANhEq4DexZH\ngameMode: uFQWfSZ9RIF1o8RF\nisTempParty: False' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: 1cXXtnnPlznlzPvO\ncode: 47' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: mF3zMrn0CcG9cN4z\nfrom: cjrMwGdwQ3S4yVLU\npayload: zF2y0UwmCtFsjdG4\nsentAt: dZjw32Re40XfamI4' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: 0YnUJXcADMFS77Ze\nuserId: ECqaLE9PAmsTaxis' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionId: aFZ3EZd8KT3lrhfM' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: WJ819gXvvuaj6oue\nnamespace: raWJCOPVkUOGqn7U' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [SonvRA13csqGbnxT,5XmdT4H1ODLibVlN,6GvJtidYLfVi6QW2]\ncustomAttribute: cLOXaEtO4wr906B4\ndeployment: BzgwkkJ2RvVmK5KB\ngameVersion: 2vdzIhXWFJ3rBX4f\nimageVersion: f4mt4EdexeNZkfoW\nip: AL44JLGPTWIgkci5\nisOK: True\nisOverrideGameVersion: False\nlastUpdate: VTlXDG77fvrOmgwa\nmatchId: fXdB5d53aNGlRZ5e\nmessage: DlTXuvzGPJYhHRrK\nnamespace: iYnvWVsz7aPW3c1a\npodName: DRhxp1Qq0mSjxLOx\nport: 32\nports: {"cS7olQz3rXz5Nomz":29,"dzbIhgtznrpJEuL5":12,"60ZokjTghfEgxoh6":38}\nprotocol: rbGBWQZ7rU6jiAa6\nprovider: ySXUZjEd5eJqP1KX\nregion: tCHZDth0COYELFmZ\nsessionId: qMDj0x3K8fWPBlSC\nstatus: 8ce890YHFcFXWJQH' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: fNRXTamANAal0wx0' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: lnIFcjyTZ2eGgxUG\nuserId: a6fWF5PDRlnlpkjw' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: fA4zdxWwEFh1h6sr' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: FotNwOhpCbudpSly\nactivity: [bt7r88RM8mAzu5xQ,RzdBQAtrs1nWQPxa,SIqG3KRBs6mg0Pum]\navailability: [80,80,95]\ncode: 89\nfriendIds: [v50d7Rl32EBgTLax,qM3B1QhTAIn8dcyw,2xmrVruqSDi5hNvz]\nlastSeenAt: [ZMtsG00rt4vf6wW3,Z6SMrwG8AAkqlZ4w,3kc6or3cUOSGNYJC]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: QixW5OrGeGzoE7yy' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: yeLkyYPBoQC321UP\nattributes: {"mJkss1iE8suOKyME":"HsEBmB34ZfZdAWH1","874WBG0LBoC8cSu9":"Js5ax1XtK6Jz9sEj","RIK9Yzm4ixf3SYFt":"qNsz4MBQygHtX85b"}\ncode: 75' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: EHzoHDnpu0VeBzFF\nfriendId: Vh6nibqDzZkOI7sE' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: TxIxVKyVaKNYPa4H\ncode: 54\nfriendshipStatus: jy6TtdOz5AQghCf2' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: 9A8zeKC3SfEGJXnX\nkey: mhpjy1WbMkVDpkZ4' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: 3ZGKXkvSezqsBkep\ncode: 76\nvalue: WAxcKv6pbWiWogTe' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: CUXQrVgWpt7Vwllw' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: ZbVPAbPxIEN9nhRx\nchannelSlug: XAL9zE5HmpZERhl8\ncode: 24' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: kSdXftag3heyyyFv' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: 3Kiru8aQL88BWWPC\ncode: 75\nuserIds: [QaPdEdWowTDrOmtD,fxTAKTCn17qi86H7,8aKZHArYXD4ipqFE]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: VYc789TXmICxmGYo\nfriendId: GPDwfy6WhW0XyyKd' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: BecbivooQ455Pmtg\ncode: 43\nfriendIds: [yMOM4YB9z3ihUJ9T,xrEZF8z9vWP8Vg8n,X2gmj3AFuylkL40F]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: wrzxDX0X22ENcR9k' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: EfpzQmoBZqn4vq7K' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: ESIj4ejPuHi1eLya\ncode: 75\nfriendIds: [0aM6qDKp5LsZxfhN,sxALNwsbau0euVKK,g4rJo1516JGLnnKd]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [EIXTRfPqJIAwGgnX,awcAai7ZYoPt9r6c,nykmlrFkqEf8XOzT]\nmatchId: 8udWs7NSK3WsCseT\nmessage: 7pA9qdqSGs9aZosi\npartyMember: [n02ENGRh74xSA3KB,0gpJCxvOo7CanNEX,7dyTUbXgSLe5vrDe]\nreadyDuration: 49\nstatus: lQLB6oemKURP5kmL' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: vfRahDyKpCcLz4BB\nfrom: oiXLtEN8RlWyHAJi\npayload: y60E4Dx71vDFWEB8\nsentAt: 81\nto: SVRAVFDndoAWIDbz\ntopic: IeqiSUPh5KQKovoK' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: IQ5i7YotwptvL97g' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: m9wewUMus6LYrSgO\ncode: 90' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: 2jVQfVHYjuFNBnoA\ncode: 84\nonlineFriendIds: [1LIjSM0kHjzFEGpg,feMdqrHEtn8paQLZ,q8CePF9gEufITtDi]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: hdWv96gyRrtn1ARu\nfrom: yGGx7oI1g9bQTkot\npayload: g73qDvrl3Z7Sjvur\nreceivedAt: 65\nto: mY2mUJuqNdo1BlyO' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: RDleQnkRtp3DWpJk\nfrom: r55pXmQDEjuAAl52\npayload: XyBdzEXev62gpJqg\nreceivedAt: 15\nto: hGvZj3C0ST716FL4' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: vZ19F2DKGnDFtqni\ncode: 99' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: Z6UfQ2ieP1LvF9VL' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: ldUHyyw8fOMAr4Ho\ncode: 6\ninvitationToken: tS9wAnAeZA5JG33Q\ninvitees: zp0JpGz1ELA5n2AD\nleaderId: awHt63AyBfThwCrr\nmembers: Mzgub58roxykTdd2\npartyId: Hmw7IZ2cnERtG6M7' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"rvtTLZCfiGSRDcv6":{},"hIa3iUp1VPt8bqI9":{},"M6inzeQTnaBs0yK9":{}}\ninvitees: [1G9QiGLsJblLqtsF,WMbWPQ5RfNOKbCDU,nqb6GEioNO963YuO]\nleader: fjxMZIUkWSxaAq8u\nmembers: [9rZF3qEwwVm5TCTQ,S8ef2G9scs6bYzTW,xsA6kAvhICPEcUT0]\nnamespace: 0OJ83BYEaluNxq81\npartyId: eA322LrYJfcUKHi2\nupdatedAt: 0' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: zvwhURis3hPFHARh\ninvitationToken: 49xtYMfMkN4v1ppO\npartyId: Nv26xrhT9Ll1a6r2' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: WR0wRZhp4csXJ993' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: ArZYvzGrDqEEBoUq\ncode: 4\ncustomAttributes: {"SLUfyxE74MTPIjZu":{},"XUk0sAxnRAGnQiUy":{},"Ses6unFopJWtxisj":{}}\ninvitationToken: xP2oIm5ZUdsGSFLU\ninvitees: 3pQeqamXa39rXXQr\nleaderId: LNvuCDfsA7P5Qnmq\nmembers: i3ilQlUzb3fIbogk\npartyId: gljlpEhrLTzR4kQq' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: R6V6N1u2thxzwn0C\ninviterId: omm9PJAUp5wu6VIQ' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: H63rFVnBsDAZi5ir\nfriendId: EdTlvUwJw19mxCzA' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: FvATUxs7XFbo5kwV\ncode: 20' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: uRHTNGloLZ81yto6' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: tuxPzvtmmPjtUsDi\ninvitationToken: wrTwx7lIRxVFYWKy\npartyId: vRSo6rlEuRyaPWHD' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: tWvI4PFKgMqhCnju\ncode: 89\ninvitationToken: jWpW6uq8Mc8qNLQx\ninvitees: qxYsc4YucxtMuk5h\nleaderId: W6t4EcouOXvtNaSy\nmembers: JHNOe2Gh9FF6pqmA\npartyId: wY2oRsZRfp1KOTI3' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: xBzLK22YRybvT7KM\npartyId: Y3vgGRTOsRveXibC\nuserId: My6LmH5ZpK41S23R' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: VtsauQze6G8YAOQC\nmemberId: 4FvDhxisz7trOPTi' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: md2Hkathg2efz7Jz\ncode: 42' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: LDoXif68v8A3tuvh\nuserId: FCO02bNxDB4RmwDF' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: ADF7l8QIM6Mi9jJV\nignoreUserRegistry: False' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: PrsEkV3kA5qCM8Y4\ncode: 11' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: BNrNBTp7AcpMc9xT\nnewLeaderUserId: 9Y6IXWBkCKQCHEHS' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: ZfQVRAuQFbrvwgio\ncode: 67\ninvitationToken: OanEQfIskIs0ixlc\ninvitees: arMWgzwyPakgWMGN\nleaderId: aswjMjYzykFOO93g\nmembers: 3ntqrX34L2AjnZIE\npartyId: 2ZBNHFWEU7NaZ2CX' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: LcugrBGrSJcAuwXk\npartyId: 6e4Rk9LtPiCsSrto\nuserId: eDff4rzbUfvkFy1w' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: b28xXViOPGWZtSNK\ninvitationToken: vbNNjJR7CrPW7507\npartyId: Y5zkawDLkZPqzi02' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: 4Uz3hxDfGbb7idYf\ncode: 28\npartyId: MxWb8A7qMN8omqjC' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: YiT5sMh74Yfo5jKA\nfriendId: ZkHZEwKvRu7u3zqF' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: UUDER5ZRSwRgEqXQ\nchat: t4re8Q7neXA8TG5s\ncode: 81\nfriendId: 9ESK8HekYoshTLv2' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: mfauSOeb4cmAhXA9\nfrom: p1eigkcEDP7bVF2Z\npayload: 2SgqPqmKfHfIcq4l\nreceivedAt: 57\nto: tUhsZovkT8lNwLrb' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: ccLM8UBbl9V0d8oL\nfrom: ABBThWOMJWT0tKHR\npayload: KFCPuqa72XvaKFYP\nreceivedAt: 17\nto: 1YXtf6vfDiAWsHOP' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: XnLrJURNIVg2fT3q\ncode: 72' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: r6SILv8ijDOjd2P9' \
    > test.out 2>&1
eval_tap $? 74 'RejectFriendsNotif' test.out

#- 75 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: fEqcsRFEmgKwLcyk\nfriendId: 8YcqbEt1DqLsUuF9' \
    > test.out 2>&1
eval_tap $? 75 'RejectFriendsRequest' test.out

#- 76 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: Rd6SG5gCtY3Y9erg\ncode: 92' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsResponse' test.out

#- 77 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 95' \
    > test.out 2>&1
eval_tap $? 77 'RematchmakingNotif' test.out

#- 78 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: i0zsBPTthGcW8r7D' \
    > test.out 2>&1
eval_tap $? 78 'RequestFriendsNotif' test.out

#- 79 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: a2zD9X1af700AUSs\nfriendId: fnkZbmR7qwk1VUXH' \
    > test.out 2>&1
eval_tap $? 79 'RequestFriendsRequest' test.out

#- 80 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: hMv9rki0mZhsGjEa\ncode: 51' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsResponse' test.out

#- 81 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: wcXGmMw68BIk3f0K\nchannelSlug: 3KHgBDYl85dppTk9\npayload: iE7TjN8GyBWpnL0s' \
    > test.out 2>&1
eval_tap $? 81 'SendChannelChatRequest' test.out

#- 82 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: mtRVGw0uJlh9xJbt\ncode: 88' \
    > test.out 2>&1
eval_tap $? 82 'SendChannelChatResponse' test.out

#- 83 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: mgKXZR5YGAi1wR8l\nuserId: XlCdtYPVDE6tHGlO' \
    > test.out 2>&1
eval_tap $? 83 'SetReadyConsentNotif' test.out

#- 84 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: vIJEMcVpzEW5fAEB\nmatchId: ZFc2ezO8fU2aIoSA' \
    > test.out 2>&1
eval_tap $? 84 'SetReadyConsentRequest' test.out

#- 85 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: mUhn3a7BQKadHWeT\ncode: 38' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentResponse' test.out

#- 86 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: Jchhruv7FXswcsKs\nkey: bRvG1CiQvuq6Vd4b\nnamespace: W9qVxELsfoz9o2bP\nvalue: 6kCcWd7npkVIHQdJ' \
    > test.out 2>&1
eval_tap $? 86 'SetSessionAttributeRequest' test.out

#- 87 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: 3J0LIOImo4ATSj6K\ncode: 16' \
    > test.out 2>&1
eval_tap $? 87 'SetSessionAttributeResponse' test.out

#- 88 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: iZzMPgQJl9DPXgPN\nactivity: mTop8oBSvhjOojf4\navailability: 0' \
    > test.out 2>&1
eval_tap $? 88 'SetUserStatusRequest' test.out

#- 89 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: b11F2m6U1VcEZYZq\ncode: 61' \
    > test.out 2>&1
eval_tap $? 89 'SetUserStatusResponse' test.out

#- 90 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: u6MQh9mzpTqp2kc4' \
    > test.out 2>&1
eval_tap $? 90 'ShutdownNotif' test.out

#- 91 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: SWaSs0plbEevLUuo\nmessage: HTGFVuf92ch2bnT3' \
    > test.out 2>&1
eval_tap $? 91 'SignalingP2PNotif' test.out

#- 92 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: ZjevfuLQdT8yfLcG\nextraAttributes: 9vE4dvzNa1yq9GNu\ngameMode: LKrm0pfmBRW7zsOY\npartyAttributes: {"RgHSviHhMpoQDCx1":{},"a4EFFu3IkDHCZAXx":{},"4Huj44D3fubhYDll":{}}\npriority: 98\ntempParty: DQcecaqoUFrQidcl' \
    > test.out 2>&1
eval_tap $? 92 'StartMatchmakingRequest' test.out

#- 93 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: i7rAF0VGHIhe9tYq\ncode: 62' \
    > test.out 2>&1
eval_tap $? 93 'StartMatchmakingResponse' test.out

#- 94 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: UWwpw4NoJTR067lS\nuserId: qOPISM1rN9RULv1i' \
    > test.out 2>&1
eval_tap $? 94 'UnblockPlayerNotif' test.out

#- 95 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: xSrlxm52uxy9LE81\nnamespace: 7pVZWkT80kNGIaI0\nunblockedUserId: uwZezQzcWj66WUHk' \
    > test.out 2>&1
eval_tap $? 95 'UnblockPlayerRequest' test.out

#- 96 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: 0JLDv406yxmDuivo\ncode: 96\nnamespace: 930VjxHvnwtUcPH4\nunblockedUserId: fSPpkZgvD2Nyo0rz' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerResponse' test.out

#- 97 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: l8iPiZgQAhfc4Tsw' \
    > test.out 2>&1
eval_tap $? 97 'UnfriendNotif' test.out

#- 98 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: SxDaWcEerfFxXKNm\nfriendId: LiBtEf6NL0t2JdZh' \
    > test.out 2>&1
eval_tap $? 98 'UnfriendRequest' test.out

#- 99 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: MGT0UbTu60okSipm\ncode: 25' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendResponse' test.out

#- 100 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 100 'UserBannedNotification' test.out

#- 101 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: xRyeFu39BQjiqwu4' \
    > test.out 2>&1
eval_tap $? 101 'UserMetricRequest' test.out

#- 102 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: U2W7ovNwUvPwCLoz\ncode: 46\nplayerCount: 66' \
    > test.out 2>&1
eval_tap $? 102 'UserMetricResponse' test.out

#- 103 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: EBoclQFeekAPrOAv\navailability: 29\nlastSeenAt: tHYZT7WefnDYtx4h\nuserId: kDNvzbus6tsfgF6z' \
    > test.out 2>&1
eval_tap $? 103 'UserStatusNotif' test.out


rm -f "tmp.dat"

exit $EXIT_CODE