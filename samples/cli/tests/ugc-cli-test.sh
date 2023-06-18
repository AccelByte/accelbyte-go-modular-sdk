#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Code generated. DO NOT EDIT.

# Meta:
# - random seed: 256
# - template file: cli_test.j2

# Instructions:
# - Run the Justice SDK Mock Server first before running this script.

export AB_BASE_URL="http://127.0.0.1:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"

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
echo "1..92"

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

#- 2 SingleAdminGetChannel
samples/cli/sample-apps Ugc singleAdminGetChannel \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "SdsSuaCG1ATAC3CH", "name": "ZAluzikQD8bNDpV9"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'H66LqFWW1WIAEeBs' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "VTXiriyLsRzYCF1n"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'Ch2DjPVrjZJ4WtJQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId '7Y0BGNFzINqUZ4IF' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "MLuewUh14EvhCwCU", "customAttributes": {"VN1G6CRhPSX50szw": {}, "9mAB3D13ZO1WqUyk": {}, "ewymBTY1Cm3PVYcO": {}}, "fileExtension": "cfhUUEW6YOKqMzr6", "name": "zhpf5s9X7vAZ5Xre", "preview": "3vPqAXUOCFQy63gc", "previewMetadata": {"previewContentType": "IzeRkivmo2pJUBSH", "previewFileExtension": "hM764XSINY9iNVEY"}, "shareCode": "auJKtqYuVOLxGRcz", "subType": "XP5leD3TKZlfiEKx", "tags": ["Yztf3gpj1U2Y2ng3", "Me9NfbZD48x11P70", "Rn0cstXKlflIY0K1"], "type": "ltxGYgHSDtROSfBU"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'ZDCSM370iVLbsaq4' \
    --contentId 'AqGgtOzvpfWkUSad' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "jNmfJxQzrd1nZSbw", "customAttributes": {"NH2mufBfofOukHOW": {}, "Dsl3QcAqNOgp4QKP": {}, "8HkkHtCe6Ch9siAA": {}}, "fileExtension": "lTp76nuD8bjYUMcq", "name": "vpwVPeeY6FmME7d1", "payload": "SrHGJPFy3K3FhzDN", "preview": "aerTuhZCHji0S2Zk", "previewMetadata": {"previewContentType": "qfOkSRCtW9mFrdrU", "previewFileExtension": "bnOBHbXb6eULFf4a"}, "shareCode": "Cs5oVcuQnaA65aru", "subType": "bfz9sc6fkQPC2uyR", "tags": ["2oQj20thz2TOkBut", "sMMM6MRqrwcPcHl5", "oMVcS7XZHuBtmG2N"], "type": "y0zdSMSBfTijUTaq", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId '1HUuhEYFUjy8E3hW' \
    --namespace $AB_NAMESPACE \
    --creator 'cmCN24RsRkIZTGIe' \
    --isofficial 'moXvJJHWl3SpNnAP' \
    --limit '72' \
    --name 'uNlwQeGCs3mQZEQ9' \
    --offset '94' \
    --orderby 'JJwpzkROLVifE0u7' \
    --sortby 'mZrJQ2bg6a4gwd61' \
    --subtype 'I2ulQamd2jG1XX1D' \
    --tags '["ZRwhQj6HT63fjVHZ", "daryoNme9W0yigHS", "Jt5AfKDV6ZsXwqYN"]' \
    --type '1eKgJxPtVtWWMWbq' \
    --userId 'qPiFp6rmi0nPt8bI' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'PBz2NJ470TzQGxIr' \
    --contentId 'oQN3bJWPdVz6vcE7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["3a1xzERlfJ0PDh1p", "RpNeNiuXrbFyFCST", "9Iu2f0LEGbFpBZ8A"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'QhLKXCJkmYwm35dl' \
    --isofficial 'EbgDvtRuKBuspqFW' \
    --limit '68' \
    --name 'yiV3hT8mqWECDVfB' \
    --offset '41' \
    --orderby 'cy25iP1Q6mRvek4f' \
    --sortby 'gJ4CblPo2hOBQMrr' \
    --subtype 'Rff0RWq8dFWvVzq1' \
    --tags '["j8IZOYW6Jh6hJEnr", "vjbX2b3dcYZxaPoT", "18uhXSpCHtOHiOZq"]' \
    --type 'sCHOqpEj2ZwEt9uc' \
    --userId '0Mwq10IA9E4zXqUO' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'x0GHlDeXeajzuQXj' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetUserContentByShareCode' test.out

#- 16 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId '4yUahzuNiBRuFLgl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetSpecificContent' test.out

#- 17 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'RR3vbxUPoTgVv0RU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDownloadContentPreview' test.out

#- 18 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'sZTLDhC3rbTpGnSC' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "vT21o9lvgBq0syR6", "screenshotId": "1jbUidbXKNOXozXb"}, {"description": "GLrzrvAwqjQ20tnC", "screenshotId": "agLZ1A0TXGMlrbLN"}, {"description": "XAgB6Yhe1x81NgMY", "screenshotId": "PTkPNlFAS8ggPky9"}]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateScreenshots' test.out

#- 19 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 's1KSk9mgYlxjaWf7' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "WUhFd8PjrksGetRb", "description": "l8hSOCFsfEIZPkxN", "fileExtension": "jfif"}, {"contentType": "cfvpOfXigT3IFGuE", "description": "6ym5uymC4CeGG5OJ", "fileExtension": "jpeg"}, {"contentType": "qFpN7BEYfVmOABHy", "description": "wFwBrnLIUYIAIuUU", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUploadContentScreenshot' test.out

#- 20 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'hFPDG6mQtSV6GfU8' \
    --namespace $AB_NAMESPACE \
    --screenshotId '9UspDdi7rMJRaTqH' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteContentScreenshot' test.out

#- 21 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 21 'SingleAdminGetAllGroups' test.out

#- 22 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["Ty9Btb3Edh00NX8H", "7q8I34ARsMcd4Pg6", "omwVy60wNWtSHBDR"], "name": "PX0g6dJP7ROX4Xns"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminCreateGroup' test.out

#- 23 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'nWjrsCIbHZ3H3PB3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminGetGroup' test.out

#- 24 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'wxxHrJNuoZjI86hy' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["43711WaUVRNlfDBw", "0X42RFG4Snl2oVZW", "ly26mgmQq3Yakaug"], "name": "SAhKulEPcJV6uBRU"}' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminUpdateGroup' test.out

#- 25 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'ZvFsaEBQN5hDI8o1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'SingleAdminDeleteGroup' test.out

#- 26 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'l4Y9PHfm3dKBTquA' \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroupContents' test.out

#- 27 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetTag' test.out

#- 28 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "L9LjaDmvOvRgE9Rf"}' \
    > test.out 2>&1
eval_tap $? 28 'AdminCreateTag' test.out

#- 29 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId '9W4kwMfvHDqs9Y0K' \
    --body '{"tag": "M4j4SiYA9YwoVCgk"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateTag' test.out

#- 30 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'BOCNDPqI2pfxCwKG' \
    > test.out 2>&1
eval_tap $? 30 'AdminDeleteTag' test.out

#- 31 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 31 'AdminGetType' test.out

#- 32 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["ehsxlLQj3IbjY7iV", "gtjiIkFauaz9m6n3", "JdNQoRPDokWEYiaB"], "type": "Zmy38KuvMDOznGXN"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminCreateType' test.out

#- 33 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'THNdffNPXJD7QozY' \
    --body '{"subtype": ["xmUOqDLayilJUgbq", "3mLsQMYS1Qy5Q2jy", "do9fSrcg5D4vFaTp"], "type": "RNVNnImPCGXAVGIM"}' \
    > test.out 2>&1
eval_tap $? 33 'AdminUpdateType' test.out

#- 34 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'zGp3mVsJ7xmYrqXF' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteType' test.out

#- 35 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'iWw6mKf7kRSDe1fC' \
    --limit '57' \
    --name 'pvS30r8wTkgthMfh' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 35 'AdminGetChannel' test.out

#- 36 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'fzZm5217xOG2i5qU' \
    > test.out 2>&1
eval_tap $? 36 'AdminDeleteAllUserChannels' test.out

#- 37 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'sO5VGKSuFnRw0qhb' \
    --namespace $AB_NAMESPACE \
    --userId 'MDOT4TARROTJMouK' \
    --body '{"name": "mPRZlk08yqoV5nBg"}' \
    > test.out 2>&1
eval_tap $? 37 'AdminUpdateChannel' test.out

#- 38 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId '0UgaI92CUpURsmVf' \
    --namespace $AB_NAMESPACE \
    --userId 'VX693H3ABGt85qeX' \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteChannel' test.out

#- 39 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'ROeZczM04xhyqhca' \
    --contentId '7sNJyVdFpjVAs8bh' \
    --namespace $AB_NAMESPACE \
    --userId 'ZVW7Jwj3EJJr94jg' \
    --body '{"contentType": "5CXwrqKtGqKRYUPp", "customAttributes": {"gyCoPeul4iVO7HLL": {}, "mfco7U2ACQvwn1qT": {}, "LupfTbOgZIKSgaT1": {}}, "fileExtension": "nZtyZ5E8CMNQz66i", "name": "W8e7E3LUfC05g9P9", "payload": "Ph80c6ORauqplHDF", "preview": "ioAdRVdYSDzCu2et", "previewMetadata": {"previewContentType": "6VHsy0LM0grWukk3", "previewFileExtension": "dIvKkUENLom7cRWs"}, "shareCode": "9g9t4OWgRETYHkmB", "subType": "b0jwOsJl9TjpxV00", "tags": ["0zus0hn3mTcODpE1", "E6vVpZ4EJzSZqmYn", "wS9RCF7Ej4E0Xwlc"], "type": "qfSPZCYgLdWea4ZO", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateContentS3' test.out

#- 40 AdminUpdateContentDirect
eval_tap 0 40 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 41 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'gkGnCWCJ2p2p8nuA' \
    --contentId '1FIghtffpVWYLUjS' \
    --namespace $AB_NAMESPACE \
    --userId 'i4BGKsJkEdHzY8nV' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteContent' test.out

#- 42 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'LphSyPbYGcRxnlUR' \
    --limit '93' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetContent' test.out

#- 43 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'DIVKr6ehbn4Il2T5' \
    > test.out 2>&1
eval_tap $? 43 'AdminDeleteAllUserContents' test.out

#- 44 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'AuUVzD6oInyKaImF' \
    --namespace $AB_NAMESPACE \
    --userId '6oHufEt20vh2okkW' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 44 'AdminHideUserContent' test.out

#- 45 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId '8a5DMbA7MNrChT98' \
    --limit '12' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetAllGroups' test.out

#- 46 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId '3KHKXvqt2fuljaWn' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteAllUserGroup' test.out

#- 47 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'WQvixLeKu6B1tG99' \
    --namespace $AB_NAMESPACE \
    --userId 'SR2LOuhWKaryuPsT' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetGroup' test.out

#- 48 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'gxbBJkFA7cLwTfCd' \
    --namespace $AB_NAMESPACE \
    --userId 'aa4cHglLI560JpgE' \
    --body '{"contents": ["7nx8FVbndw1yUiLz", "UmLUzxl7XQOv28j9", "hjFKdMYZrJ9gRCaw"], "name": "Nglxly2h8AQN5OAa"}' \
    > test.out 2>&1
eval_tap $? 48 'AdminUpdateGroup' test.out

#- 49 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'tOx5VhwVL29v9XpK' \
    --namespace $AB_NAMESPACE \
    --userId 'mubeLl3mX2dbJBO8' \
    > test.out 2>&1
eval_tap $? 49 'AdminDeleteGroup' test.out

#- 50 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'b7P2mgQHEbnWPt3u' \
    --namespace $AB_NAMESPACE \
    --userId 'FlXE7h4ciV0Cg86T' \
    --limit '14' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetGroupContents' test.out

#- 51 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'E1yzzeCG7im5FV8t' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserStates' test.out

#- 52 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'Y5IZcwXM0h0IIOZR' \
    --namespace $AB_NAMESPACE \
    --creator 'WEjz4x0lnojtIh86' \
    --isofficial 'Omyc6ABqrJUeA9dg' \
    --limit '5' \
    --name 'P7wO1FPKEKEhWw2a' \
    --offset '69' \
    --orderby 'GpPwmv0QyfG01Vq8' \
    --sortby 'L80X55G8DPLRrBPq' \
    --subtype 'U9XkkXEqRtGBWDBD' \
    --tags '["GoIOpNtcEzYAdSTz", "ZiWOAN2tMhfiXCNx", "V3smdgz71Xbjmil3"]' \
    --type 'nJ6YVAUYRRdLJA21' \
    --userId 'xitRPWW4zDowoPQ3' \
    > test.out 2>&1
eval_tap $? 52 'SearchChannelSpecificContent' test.out

#- 53 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'b6WJGPol48cgxSqC' \
    --isofficial '0mg0YnJaM0prNK5l' \
    --limit '3' \
    --name 'myQufzzBxbwdYS0Q' \
    --offset '49' \
    --orderby '9dK89Fk6uyOf1ncY' \
    --sortby 'O8xPJrU217ceo08k' \
    --subtype '8FMRcXnZxx9NZWAU' \
    --tags '["ueag2ajVcA91sJF7", "JTCRBuAFf4XAfmxQ", "lh1dH05FJpa7wdQy"]' \
    --type 'EKhd0BJbyRcEr6v4' \
    --userId 'nuEuLGPONTjiUvoa' \
    > test.out 2>&1
eval_tap $? 53 'PublicSearchContent' test.out

#- 54 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["pfij2SXKZEQAYhWX", "94lrLbmwDkbFTUZE", "94SlYMKzDuO6u2qP"]}' \
    > test.out 2>&1
eval_tap $? 54 'PublicGetContentBulk' test.out

#- 55 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 55 'GetFollowedContent' test.out

#- 56 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '86' \
    --name 'a1dQaAWiAdDTfaWs' \
    --offset '52' \
    --orderby 'MC2swmrrJ0CjuRj8' \
    --sortby 'UDmXhDO9sWR6ys2O' \
    --subtype 'uRwUxpyzCmij9B8n' \
    --tags '["ISiMrNGhG0crFfDa", "XmKDZnq3wUBXkSta", "NTWzfA1Wt9WrRwXs"]' \
    --type 'vklOXagIc7vlCZeN' \
    > test.out 2>&1
eval_tap $? 56 'GetLikedContent' test.out

#- 57 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'Zu9BaIhSrRof7eE5' \
    > test.out 2>&1
eval_tap $? 57 'PublicDownloadContentByShareCode' test.out

#- 58 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'ZIp2z9YrJZFeOE9x' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'PublicDownloadContentByContentID' test.out

#- 59 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'JM2G9ldiiilM8X0t' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'AddDownloadCount' test.out

#- 60 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'TqqUbikRistiBo7u' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 60 'UpdateContentLikeStatus' test.out

#- 61 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'xqU5zoLhtCKvazpm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'PublicDownloadContentPreview' test.out

#- 62 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 62 'GetTag' test.out

#- 63 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 63 'GetType' test.out

#- 64 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '62' \
    --orderby 'Jjt5xS260c7SOK7n' \
    --sortby 'tTzjpFyDt1SMnmxt' \
    > test.out 2>&1
eval_tap $? 64 'PublicSearchCreator' test.out

#- 65 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 65 'GetFollowedUsers' test.out

#- 66 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'nx2rtNnRyAkhaWtm' \
    > test.out 2>&1
eval_tap $? 66 'PublicGetCreator' test.out

#- 67 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId '1n0Y2ze4iR5OYO4g' \
    --limit '67' \
    --name 'snw3xkazRKiMXktc' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 67 'GetChannels' test.out

#- 68 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'GUutpYd0Wc86kXH8' \
    --body '{"name": "0RPfxtyGwWmW8KCH"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicCreateChannel' test.out

#- 69 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'rc26vMOrKav5i8vE' \
    > test.out 2>&1
eval_tap $? 69 'DeleteAllUserChannel' test.out

#- 70 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'hN5SxnCSoUikdnab' \
    --namespace $AB_NAMESPACE \
    --userId 'alwaVAMjMK2b51MJ' \
    --body '{"name": "KxVlr3MEfscJmcMx"}' \
    > test.out 2>&1
eval_tap $? 70 'UpdateChannel' test.out

#- 71 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'gyMlYilpRjDAXOzE' \
    --namespace $AB_NAMESPACE \
    --userId 'PHmmH6BRBfpmf6fY' \
    > test.out 2>&1
eval_tap $? 71 'DeleteChannel' test.out

#- 72 CreateContentDirect
eval_tap 0 72 'CreateContentDirect # SKIP deprecated' test.out

#- 73 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'X4H29lG7cdwkjLZD' \
    --namespace $AB_NAMESPACE \
    --userId 'XfuL6xWDwgDNmqHY' \
    --body '{"contentType": "zRoc0yeTp9XLlLr3", "customAttributes": {"T2LnKmoshiiMh0Bk": {}, "tIex1jHbo1gKxDHm": {}, "z9Q98TO9vGVX9aYr": {}}, "fileExtension": "gAfkCvY9KUDDsFnx", "name": "hdyr1Aue9w19CZFr", "preview": "NKoCeg3SBcnkikQ3", "previewMetadata": {"previewContentType": "JqiWdu3raUfbGm9q", "previewFileExtension": "9Yg7aOhiS51qo8f5"}, "subType": "vrYx1BbVpUVtZLEh", "tags": ["VeR6w8qCXJuwjNla", "nlvKI7hz2IgotiSM", "0xXEdHK4CTnHSVQi"], "type": "lBTfpPxClfDRtlPy"}' \
    > test.out 2>&1
eval_tap $? 73 'CreateContentS3' test.out

#- 74 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'twCCOSlvEG1gJVKV' \
    --contentId 'JCzSoaf8llXEOIz6' \
    --namespace $AB_NAMESPACE \
    --userId '8PqGwgzXL3UjesCY' \
    --body '{"contentType": "CX9SQiUK23Qnitax", "customAttributes": {"jA8cbjm7oBpFfpzl": {}, "qAi5v9hF3slgUtWr": {}, "Os2FDBxmJKNrG16V": {}}, "fileExtension": "dxbDfH15AV7y7N7U", "name": "TDsl0Q4OC49ZlZlq", "payload": "i4SvHR8IDm82olTV", "preview": "YLacaqgrZG5gxzWi", "previewMetadata": {"previewContentType": "tMXPsoTIuqlbLJgE", "previewFileExtension": "edYEdmIDgc4iyB3g"}, "subType": "8p0MpjwtM2pEWGIu", "tags": ["mI1kO5B5dI9tyMp4", "fPZLYJqNkhUESJr3", "yKfREDXGLlhuhZXu"], "type": "4jcKoGtme27q0xxa", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateContentS3' test.out

#- 75 UpdateContentDirect
eval_tap 0 75 'UpdateContentDirect # SKIP deprecated' test.out

#- 76 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'XCEbpf7iEAYrTdLj' \
    --contentId 'OJYUcTeHrKghSaZs' \
    --namespace $AB_NAMESPACE \
    --userId 'I7C05iPMS1k3NxCd' \
    > test.out 2>&1
eval_tap $? 76 'DeleteContent' test.out

#- 77 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'T7T1LCxtyHFHxAlI' \
    --limit '70' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 77 'PublicGetUserContent' test.out

#- 78 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'DOlE2czB1Ttatlwy' \
    > test.out 2>&1
eval_tap $? 78 'DeleteAllUserContents' test.out

#- 79 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'lFswKOXbEJkSxacr' \
    --namespace $AB_NAMESPACE \
    --userId 'ciHDAxjb7sDlmdXr' \
    --body '{"screenshots": [{"description": "igszwn3B6xAWaZhr", "screenshotId": "v38fqvy9v4T2GvrY"}, {"description": "NNGYXkyycUYXp2tY", "screenshotId": "W0HgfOb5c70OHCUJ"}, {"description": "HYdsEiUrL773mFNE", "screenshotId": "HTUwdmL9NUWt0NBf"}]}' \
    > test.out 2>&1
eval_tap $? 79 'UpdateScreenshots' test.out

#- 80 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'PGBNJrGx3GfecMrb' \
    --namespace $AB_NAMESPACE \
    --userId '7GxVJOFotnfZ15Ou' \
    --body '{"screenshots": [{"contentType": "socy2xDqQvQbUoBo", "description": "YkKws5pnzuWjmZ2q", "fileExtension": "png"}, {"contentType": "6V3xqmCjkrCzBaz4", "description": "VfRomA9bZLN5lKm1", "fileExtension": "png"}, {"contentType": "wkyfaqjvIEVzvXTl", "description": "Gi7vAUXguHbtbSvc", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 80 'UploadContentScreenshot' test.out

#- 81 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'ZsCQ9xXSR76GVSG1' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'nLuwAHQw2klmcdSL' \
    --userId '8WZ9DFLmq418k27V' \
    > test.out 2>&1
eval_tap $? 81 'DeleteContentScreenshot' test.out

#- 82 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'qMnsPusbAvZT8NTF' \
    --body '{"followStatus": false}' \
    > test.out 2>&1
eval_tap $? 82 'UpdateUserFollowStatus' test.out

#- 83 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'PJMFEUfmfP8yuYV0' \
    --limit '78' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 83 'GetPublicFollowers' test.out

#- 84 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'dLpiQy1azzuomGvL' \
    --limit '94' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 84 'GetPublicFollowing' test.out

#- 85 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'Ia1TkUpgyf4nOkNj' \
    --limit '40' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 85 'GetGroups' test.out

#- 86 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'g0rKqFifUg7Xwg7u' \
    --body '{"contents": ["Q2G39qRhDcrmMMLc", "iNSSUjuBJfIV0oZ1", "dsCV8PMIn8oelydN"], "name": "KANQYSn9W3iEnKrJ"}' \
    > test.out 2>&1
eval_tap $? 86 'CreateGroup' test.out

#- 87 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'cNKdDFC0UakSZOks' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserGroup' test.out

#- 88 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'drs9W9KdhPVDMUpQ' \
    --namespace $AB_NAMESPACE \
    --userId 'ZUGE6JDZaJj7MaD6' \
    > test.out 2>&1
eval_tap $? 88 'GetGroup' test.out

#- 89 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'ZdpmUqsO4oSHkSoQ' \
    --namespace $AB_NAMESPACE \
    --userId '7aArAhvzXibOxGMU' \
    --body '{"contents": ["Z7B4CDYGMO2b3Agx", "BqPJ5I3FmwNxDpaa", "1e2qRUyYVLyjrXz0"], "name": "gwGQVJ67USj5utZv"}' \
    > test.out 2>&1
eval_tap $? 89 'UpdateGroup' test.out

#- 90 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'JnhRPdoRbxl9n5pI' \
    --namespace $AB_NAMESPACE \
    --userId '6Yk6J0ZWobUL7Ye5' \
    > test.out 2>&1
eval_tap $? 90 'DeleteGroup' test.out

#- 91 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'H80LkIysZE0QyqBC' \
    --namespace $AB_NAMESPACE \
    --userId '0jlERtiIQRaIJXSZ' \
    --limit '89' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 91 'GetGroupContent' test.out

#- 92 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'bG2YuO74NaOAhZ2d' \
    > test.out 2>&1
eval_tap $? 92 'DeleteAllUserStates' test.out


rm -f "tmp.dat"

exit $EXIT_CODE