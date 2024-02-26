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
echo "1..160"

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
    --limit '63' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "BXxQicgz", "name": "tUUgW0KL"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'Dq5hjr8f' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "lBPuIZsP"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'hTLBP135' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'MpNySiBz' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "SO91hjig", "customAttributes": {"4ThWsLKR": {}, "vEhDpxEM": {}, "ZSuyFaOA": {}}, "fileExtension": "LI4rGch2", "name": "zj1NSTzn", "preview": "QD0pM2VO", "previewMetadata": {"previewContentType": "5MOxFzuH", "previewFileExtension": "de5Kwb66"}, "shareCode": "RAsZTET0", "subType": "mDDXASoH", "tags": ["VY9b3IUH", "OdMRWEFs", "bfpnxNTM"], "type": "3FYJOzub"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'G9N4J2B2' \
    --contentId 'LFNtxZMA' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "Nrvri0mD", "customAttributes": {"HPLwBoo3": {}, "dsuIwNyc": {}, "3fb2N7ey": {}}, "fileExtension": "1XtB8pai", "name": "ACsecL48", "payload": "nKcB6Khw", "preview": "6LIrJokg", "previewMetadata": {"previewContentType": "8BItqEr6", "previewFileExtension": "gVonaePu"}, "shareCode": "QvxxFfXm", "subType": "yd6DPRBW", "tags": ["VBwNHsu1", "SLYtyPsF", "FzmsYh2e"], "type": "GAalFzcO", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'WUk2Xrjf' \
    --namespace $AB_NAMESPACE \
    --creator '52kDwhRi' \
    --ishidden 'YPjCQArv' \
    --isofficial 'RKZgNY2R' \
    --limit '54' \
    --name '5Qporq7Q' \
    --offset '59' \
    --orderby 'fEaqI2xr' \
    --sortby '3TNPBG5l' \
    --subtype 'sQsAJ8rY' \
    --tags '["IrNS2LVY", "jz1AHn8C", "LzbMD4SP"]' \
    --type 'JXepxMPN' \
    --userId 'aPfN6p0h' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'y1YKSxzq' \
    --contentId 'rnz1OwZJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["pFCnN8LW", "s5Ijl4nQ", "crCuqmjQ"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator '16YsdXOP' \
    --ishidden 'k9KViHbB' \
    --isofficial '6pjSZfgl' \
    --limit '30' \
    --name 'jnSjwQ3m' \
    --offset '48' \
    --orderby 'JjO4s9VN' \
    --sortby 'N4hpAxNX' \
    --subtype 'BRvkGck1' \
    --tags '["cGOlMbAZ", "5pWiICFg", "Ph6V1h6v"]' \
    --type 'NduWQ9zy' \
    --userId 'xDvhYSs4' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["OzDlZpbL", "uqFL20af", "nD5kTtfI"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'rT33nD0Q' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'ihVO1P5Z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'u4rzIgYy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'WeA3truJ' \
    --namespace $AB_NAMESPACE \
    --versionId '35XXVnTF' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'Mq92whFU' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "ux7QWI2R", "screenshotId": "lauv381c"}, {"description": "RPvdYy7a", "screenshotId": "cSDPjyWs"}, {"description": "28Hwrcks", "screenshotId": "pBlgHVNz"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'uDUeAKDB' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "sALQr2XB", "description": "zm2csmC9", "fileExtension": "jpg"}, {"contentType": "ZjV9FZUT", "description": "t561cpHe", "fileExtension": "jpeg"}, {"contentType": "UfGdusK2", "description": "Tm5Oy4BM", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'Ee6oGabF' \
    --namespace $AB_NAMESPACE \
    --screenshotId '6GplgYpy' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'VzVMv0Hd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["kkO8yCsC", "im2AaDUG", "IU3lSPcb"], "name": "RMzh2Usu"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'sydneyBp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'DN3vOVl2' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["Tx8tNMi4", "aqjAvugR", "eJV7gwOT"], "name": "HuI7ulOe"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId '6dHLb71y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'TsvS70YX' \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "qXXICxVp"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'pIK3blKp' \
    --body '{"tag": "hf7BwqSp"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'vbDQDzLV' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["nyvcc7cj", "wuAA9KEc", "TwK9PPcC"], "type": "TnblxqK2"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'ORZAXhUo' \
    --body '{"subtype": ["FBD8R5eF", "plPfElzl", "coZwH3FZ"], "type": "0HzgoQ5u"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId '854zKzC3' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'JxOdEaVi' \
    --limit '71' \
    --name 'gRmJkXh8' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'GJjpb5LX' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'mjgtiDCw' \
    --namespace $AB_NAMESPACE \
    --userId 'unQHUTbJ' \
    --body '{"name": "Da2LQwOH"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'b19UBM4l' \
    --namespace $AB_NAMESPACE \
    --userId 'bVIMNjJV' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'GGpkD959' \
    --namespace $AB_NAMESPACE \
    --shareCode '4rj2Xmjk' \
    --userId '5gTozrEO' \
    --body '{"contentType": "HrELPVHP", "customAttributes": {"QjHeonIu": {}, "faqYsx4a": {}, "8vuFkCpf": {}}, "fileExtension": "hGDiFabN", "name": "Pv5SL20c", "payload": "dpdWFH0v", "preview": "cGoNVAUv", "previewMetadata": {"previewContentType": "FrOSbK2h", "previewFileExtension": "abcUeyLV"}, "shareCode": "ZqucBc6e", "subType": "LsYZOsGr", "tags": ["UobyBhO0", "Azpm1O0q", "h3CdJHBt"], "type": "XsELRAi3", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId '83vq1zbP' \
    --contentId 'I2GOhZmo' \
    --namespace $AB_NAMESPACE \
    --userId 'q9udlW3Y' \
    --body '{"contentType": "dyle7Ghu", "customAttributes": {"fFOd8RYW": {}, "BOHx8FRz": {}, "fhq82JT2": {}}, "fileExtension": "agSfBiU0", "name": "OSnMQzzM", "payload": "lsHrJNSK", "preview": "AJjJ46HG", "previewMetadata": {"previewContentType": "L0776aLZ", "previewFileExtension": "5pdmyhTD"}, "shareCode": "E1lOYEzV", "subType": "r9qXmHqt", "tags": ["xUxMsNNz", "oKAy1fun", "gaiCq2cD"], "type": "EjFT7Z6Z", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'ey3SUi1I' \
    --namespace $AB_NAMESPACE \
    --shareCode 'fniDiHIy' \
    --userId 'TJQd7x43' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'CRmSjDnR' \
    --contentId 'YBOc5bdR' \
    --namespace $AB_NAMESPACE \
    --userId '3c74tA8N' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId '4vCVbjYp' \
    --limit '70' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'vOj6r28P' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'wk72vnQQ' \
    --namespace $AB_NAMESPACE \
    --userId 'Mb9JnuDS' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId '1293Chmc' \
    --limit '41' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId '2jovluxe' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'mFlgHeme' \
    --namespace $AB_NAMESPACE \
    --userId 'ycEy48Cc' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'd5PE5Mjj' \
    --namespace $AB_NAMESPACE \
    --userId 'sIJABfVf' \
    --body '{"contents": ["yNl3ehHG", "XzxNAKrz", "5FDd0esi"], "name": "AxVACdOW"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'WuKmBFZz' \
    --namespace $AB_NAMESPACE \
    --userId 'IkwOY17b' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'On3Qe0gx' \
    --namespace $AB_NAMESPACE \
    --userId 'idGEUnu8' \
    --limit '25' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 't1A3MPbt' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'NLng3JAq' \
    --namespace $AB_NAMESPACE \
    --creator 'K4VfHCdA' \
    --ishidden 'IjJCds6b' \
    --isofficial 'o9b6aZfF' \
    --limit '99' \
    --name '4NRGYoA6' \
    --offset '83' \
    --orderby 'u3QU4jio' \
    --sortby 'B62APkMo' \
    --subtype 's8TXYCW4' \
    --tags '["0eGfnPni", "nOwfEg7Y", "g5eVUJrs"]' \
    --type '9Vcmdonc' \
    --userId '2gVQyRKk' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'X2p8iSkI' \
    --ishidden 'z4uGMKiw' \
    --isofficial 'rFyzba5v' \
    --limit '9' \
    --name 'ZEA4KRoL' \
    --offset '62' \
    --orderby '4yCcXFEI' \
    --sortby 'mGpWZ1Mf' \
    --subtype 'RXT6W07N' \
    --tags '["r11fIJdz", "bA9wxTgq", "5m3pBryi"]' \
    --type 'T0gAy7jJ' \
    --userId 'CtkoxlP2' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["UIwImzto", "UPSDPkRa", "adIb3KCO"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '56' \
    --name 'QErSmKax' \
    --offset '72' \
    --orderby 'DnoQnywC' \
    --sortby 'wFWwuNvC' \
    --subtype 'LrJY8HOZ' \
    --tags '["6xO8dDTJ", "DcudMTLL", "Xq95THji"]' \
    --type '4mbV3O8b' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["xkAmWap6", "SJ3REwWB", "X6wYS6VP"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'MAVqlSTq' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'lFqdEVIx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'U7TaC8ww' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'ebnYSQWM' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'FLsQHMa2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '70' \
    --orderby 'Iq9PH66h' \
    --sortby 'yeqlV3y6' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'ZZcQx3zf' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'MJaBy7jp' \
    --limit '70' \
    --name '5XPuWJGs' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'TUvbR0WI' \
    --body '{"name": "PCbFmX8Q"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'VUeeRSGg' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'Nvbjtsj3' \
    --namespace $AB_NAMESPACE \
    --userId '5MaVORHL' \
    --body '{"name": "B4bpT68Q"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'dmcJIaQA' \
    --namespace $AB_NAMESPACE \
    --userId 'FCms8AK6' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'PaQaNw4N' \
    --namespace $AB_NAMESPACE \
    --userId 'Cv4dErXP' \
    --body '{"contentType": "ysL3KfG3", "customAttributes": {"IarwwVGn": {}, "dIF1we5X": {}, "aD8zHv3j": {}}, "fileExtension": "vMvjs4zY", "name": "6p7Sraw3", "preview": "EC8CreJL", "previewMetadata": {"previewContentType": "0XS53lqT", "previewFileExtension": "Rh3HCstb"}, "subType": "vW4f6szW", "tags": ["tNMIvBGt", "gVSz3IIU", "2Y9RRHgx"], "type": "C4yoAWUd"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'DAaACEt9' \
    --namespace $AB_NAMESPACE \
    --shareCode '2zSVzKuJ' \
    --userId 'l3hWbgA8' \
    --body '{"contentType": "HWEFla4A", "customAttributes": {"u3J0lE8b": {}, "NSKPhq7o": {}, "iHOKxR1B": {}}, "fileExtension": "zpX00loZ", "name": "UAdiIfNq", "payload": "yTXOKT1v", "preview": "2ewrTKyI", "previewMetadata": {"previewContentType": "to2OisBl", "previewFileExtension": "3dvV9XiL"}, "subType": "VXdowVX0", "tags": ["VYucA9Ry", "2Q0hyYCN", "v3LOI4Pi"], "type": "YTK9FTae", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId '5HRySqbO' \
    --contentId 'myBER9HT' \
    --namespace $AB_NAMESPACE \
    --userId 'ApOFxwrJ' \
    --body '{"contentType": "wZ1ILnYO", "customAttributes": {"OqprSQOX": {}, "Un2AmgtS": {}, "7HtnbHZf": {}}, "fileExtension": "U815VS13", "name": "WexYrdn5", "payload": "yLQxanEo", "preview": "npY0njYY", "previewMetadata": {"previewContentType": "TlWkN9NC", "previewFileExtension": "1LBuL0Tq"}, "subType": "Arhkb2Co", "tags": ["CZJN050I", "0QPpQE4x", "UiJML6eI"], "type": "cM9POQfH", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId 'EIyA4QKi' \
    --namespace $AB_NAMESPACE \
    --shareCode 'zIjPD7lv' \
    --userId 'P6l8fa5E' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'KrWPlg9M' \
    --contentId 'C6ALLgOm' \
    --namespace $AB_NAMESPACE \
    --userId 'ae4LCrnm' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'D687b2vr' \
    --contentId 'vYEUR3LC' \
    --namespace $AB_NAMESPACE \
    --userId '8DcMBW69' \
    --body '{"shareCode": "Do53JFGs"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'BVp75HO2' \
    --limit '52' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId '0ZJEHVsK' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'krUbeReE' \
    --namespace $AB_NAMESPACE \
    --userId '2WIcHALv' \
    --body '{"screenshots": [{"description": "jfmDofPz", "screenshotId": "86rcmHWd"}, {"description": "TLJtuxfZ", "screenshotId": "JUiMEB9T"}, {"description": "8psPfNwP", "screenshotId": "2mL3xToY"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'FdgLRIdd' \
    --namespace $AB_NAMESPACE \
    --userId 'gwKmjISD' \
    --body '{"screenshots": [{"contentType": "TJYjybtG", "description": "U2xljgZq", "fileExtension": "png"}, {"contentType": "2u8NzcJF", "description": "A9ER4f9w", "fileExtension": "bmp"}, {"contentType": "ikTjIB0o", "description": "Ip93adrW", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'mwBuffjz' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'kccyuw8c' \
    --userId 'fLbOOn6E' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'Bd9gwEhB' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'MWdz0qy6' \
    --limit '68' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'QDgfND4N' \
    --limit '95' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'DT8VelUp' \
    --limit '46' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId '3YaZ4Uo3' \
    --body '{"contents": ["eoNiYvv9", "Dots5ECA", "hiQK1gdF"], "name": "oWUu4KAL"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId '3WO8dWxR' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'OzMCnxOu' \
    --namespace $AB_NAMESPACE \
    --userId 'XdAG31Xp' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'WpehwqhC' \
    --namespace $AB_NAMESPACE \
    --userId 'HZbUVEtT' \
    --body '{"contents": ["DIss3L9y", "JCi0J5q9", "pDAFW4xn"], "name": "5QQV6FAV"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'dq8leYvZ' \
    --namespace $AB_NAMESPACE \
    --userId 'gzjH5ZFh' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'YahETedL' \
    --namespace $AB_NAMESPACE \
    --userId 'JgmeU6ky' \
    --limit '57' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId '6hL6ddtf' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'LYbM8RHQ' \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --name '4nlWrSw9' \
    --offset '49' \
    --sortBy 'CIUJOp09' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'gvu5ZTED' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "4vSDZ4Qs", "customAttributes": {"9Z1hxViy": {}, "WKro5cdc": {}, "auVC2o5J": {}}, "fileExtension": "MPn39wSm", "name": "PMA6TP09", "shareCode": "AI7O1o2y", "subType": "R3VtwfXM", "tags": ["2jAkKx1z", "S9RUo0cX", "GTSxgnSM"], "type": "LgXW397o"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'xHjfs1vj' \
    --contentId 'nJVjYCCb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'JSmclS1d' \
    --contentId 'lb4AEr4M' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"yV7OWB9C": {}, "eHr1o79B": {}, "0U0QAPQn": {}}, "name": "FCf0RFPL", "shareCode": "wO1ebiIE", "subType": "jB3MzRZ0", "tags": ["sSYKHDbK", "AE1Mqnu0", "tFvSakR9"], "type": "uJSbXmtW"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'jKWuDIHa' \
    --contentId 'gOZ94zqU' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "iu1czDZE", "fileLocation": "uVllWGAl"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminUpdateOfficialContentFileLocation' test.out

#- 107 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'IoplY3Tf' \
    --contentId 'OptUzqKY' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "9X86lVyE", "fileExtension": "uTlmbkLO"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 108 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 108 'AdminGetConfigs' test.out

#- 109 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key 'Q3Zykz9W' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "qSUXxfmm"}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateConfig' test.out

#- 110 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '14' \
    --name '1Jk9DqEI' \
    --offset '30' \
    --sortBy 'xucvyKm4' \
    --subType 'temTOeQ0' \
    --tags '["cp7NoCZL", "tMrSw9vU", "c0c6jpG2"]' \
    --type 'NuhhvEyA' \
    > test.out 2>&1
eval_tap $? 110 'AdminListContentV2' test.out

#- 111 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["yWpcyx4R", "orx05TK4", "6oJ4gq5F"]}' \
    > test.out 2>&1
eval_tap $? 111 'AdminBulkGetContentByIDsV2' test.out

#- 112 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["oztWWWXS", "kCmZHMQV", "1IFbvRh0"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminGetContentBulkByShareCodesV2' test.out

#- 113 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'JQ6MhRFx' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentByShareCodeV2' test.out

#- 114 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 'tOskRISK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByContentIDV2' test.out

#- 115 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId '1KOdN1Ox' \
    --namespace $AB_NAMESPACE \
    --versionId '4FkFVfwm' \
    > test.out 2>&1
eval_tap $? 115 'RollbackContentVersionV2' test.out

#- 116 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'ptV9UW2R' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "wGGNZvkX", "screenshotId": "kpAd2Q7A"}, {"description": "fDykMFcn", "screenshotId": "0NHW8J2K"}, {"description": "4VDy7oqb", "screenshotId": "mST3VVJU"}]}' \
    > test.out 2>&1
eval_tap $? 116 'AdminUpdateScreenshotsV2' test.out

#- 117 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId '40vUgwXY' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "L3kGAUa6", "description": "zxIv8q19", "fileExtension": "pjp"}, {"contentType": "ARjwxiPP", "description": "MXDrl76m", "fileExtension": "png"}, {"contentType": "Draqv5eZ", "description": "usJLP52D", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUploadContentScreenshotV2' test.out

#- 118 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'mPvkeucJ' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'rsmLdpwH' \
    > test.out 2>&1
eval_tap $? 118 'AdminDeleteContentScreenshotV2' test.out

#- 119 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'JNOHrqvo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'ListContentVersionsV2' test.out

#- 120 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId '9TalWNvJ' \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetOfficialGroupContentsV2' test.out

#- 121 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '93' \
    --sortBy 'S8vLEzCo' \
    --status 'ZSiQ53jO' \
    > test.out 2>&1
eval_tap $? 121 'AdminListStagingContents' test.out

#- 122 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId 'b7R1pd9k' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetStagingContentByID' test.out

#- 123 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId '7YuihmPM' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": true, "note": "boyTfyQ1"}' \
    > test.out 2>&1
eval_tap $? 123 'AdminApproveStagingContent' test.out

#- 124 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId '8H8f7DDo' \
    --namespace $AB_NAMESPACE \
    --shareCode 'S83DmYuo' \
    --userId 'AHr0w8rb' \
    --body '{"customAttributes": {"zyhNOtg6": {}, "smaLp3O8": {}, "yQPeH6gk": {}}, "name": "av6I5y8z", "shareCode": "DPftmOMl", "subType": "JU7DxpEC", "tags": ["3oqvVhnV", "ubSVVHmq", "OPdXfN8Y"], "type": "FneKLzAA"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateContentByShareCodeV2' test.out

#- 125 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId '1tz77Z34' \
    --namespace $AB_NAMESPACE \
    --shareCode 'oW4JT8qD' \
    --userId 'TLrGnu9y' \
    > test.out 2>&1
eval_tap $? 125 'AdminDeleteContentByShareCodeV2' test.out

#- 126 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'oUh8Vi3F' \
    --contentId 'cp1aKytZ' \
    --namespace $AB_NAMESPACE \
    --userId 'EynqEhXG' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteUserContentV2' test.out

#- 127 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'Lq86gQ6B' \
    --contentId 'zWPV5KwV' \
    --namespace $AB_NAMESPACE \
    --userId 'FchT3yLs' \
    --body '{"customAttributes": {"Ip7pTkul": {}, "HbTSFM0x": {}, "1zV7RFvp": {}}, "name": "0WkJVtCf", "shareCode": "CcPLkTVk", "subType": "gEApi38e", "tags": ["Lwg631yw", "fyoPvMks", "sekYNAIG"], "type": "C6MzkHrC"}' \
    > test.out 2>&1
eval_tap $? 127 'AdminUpdateUserContentV2' test.out

#- 128 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'ASDBdYll' \
    --contentId 'VpQuuoo2' \
    --namespace $AB_NAMESPACE \
    --userId 'GWKZb1v0' \
    --body '{"fileExtension": "nbLUJO3y", "fileLocation": "mp5W5GxX"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentFileLocation' test.out

#- 129 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'mvf0oiNu' \
    --contentId 'VXMB1P25' \
    --namespace $AB_NAMESPACE \
    --userId 'ZRU4vxdN' \
    --body '{"contentType": "zEoBZZhH", "fileExtension": "5U8dB1cS"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminGenerateUserContentUploadURLV2' test.out

#- 130 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'VzvbGOoq' \
    --limit '3' \
    --offset '14' \
    --sortBy '4iPsGZ4x' \
    > test.out 2>&1
eval_tap $? 130 'AdminGetContentByUserIDV2' test.out

#- 131 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'hE2mYeoz' \
    --namespace $AB_NAMESPACE \
    --userId 'ovmHJmzA' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 131 'AdminUpdateContentHideStatusV2' test.out

#- 132 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'PtglKLqZ' \
    --namespace $AB_NAMESPACE \
    --userId 'uS2VKSgD' \
    --limit '78' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 132 'AdminGetUserGroupContentsV2' test.out

#- 133 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'ym0QnGTn' \
    --limit '19' \
    --offset '85' \
    --sortBy 'yizYesT8' \
    --status 'y33A7jpI' \
    > test.out 2>&1
eval_tap $? 133 'AdminListUserStagingContents' test.out

#- 134 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'HvMnNiZc' \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --name 'no8CLekp' \
    --offset '18' \
    --sortBy 'XHwErdKc' \
    > test.out 2>&1
eval_tap $? 134 'PublicGetContentByChannelIDV2' test.out

#- 135 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '71' \
    --name 'pQZCCv0v' \
    --offset '81' \
    --sortBy '9GxuceTm' \
    --subType '2g6lEjRP' \
    --tags '["nGZwX9OC", "q1ZPeeXv", "hVB81rgX"]' \
    --type 'szkTvyrp' \
    > test.out 2>&1
eval_tap $? 135 'PublicListContentV2' test.out

#- 136 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["XLBhQlbN", "8blaaqyO", "kFllAy5t"]}' \
    > test.out 2>&1
eval_tap $? 136 'PublicBulkGetContentByIDV2' test.out

#- 137 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["wdcbP360", "R9Rj1s79", "xAQMyZoL"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicGetContentBulkByShareCodesV2' test.out

#- 138 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode '678nU67h' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentByShareCodeV2' test.out

#- 139 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'J5PG0iJv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByIDV2' test.out

#- 140 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'ZmYzS6RK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicAddDownloadCountV2' test.out

#- 141 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'ocMN8BE1' \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '43' \
    --sortBy 'ftPNI1Ur' \
    --userId 'RXqJVBIO' \
    > test.out 2>&1
eval_tap $? 141 'PublicListContentDownloaderV2' test.out

#- 142 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId '9sUpnG6L' \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '27' \
    --sortBy 'vBN6tCx7' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentLikeV2' test.out

#- 143 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId '6J71HRlF' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateContentLikeStatusV2' test.out

#- 144 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'jSvAo4kR' \
    --namespace $AB_NAMESPACE \
    --userId 'bI0yBNhM' \
    --body '{"contentType": "pU0BIpLy", "customAttributes": {"prBeSqoD": {}, "HvDwtF6A": {}, "2v07pNq0": {}}, "fileExtension": "9RLLSaAF", "name": "PrGicCOt", "subType": "efSNIywl", "tags": ["GHy5opuB", "hqvCgRPc", "owijoc7E"], "type": "JzE3R7zN"}' \
    > test.out 2>&1
eval_tap $? 144 'PublicCreateContentV2' test.out

#- 145 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'Q9mkaATS' \
    --namespace $AB_NAMESPACE \
    --shareCode 'A3MHOEDx' \
    --userId '5F1nWJXC' \
    --body '{"customAttributes": {"fJlTg449": {}, "5zGBrJqX": {}, "aUQoiMLn": {}}, "name": "whzG3cuT", "subType": "jE2Q1LwA", "tags": ["f9XWyINT", "z3FReCQS", "oQCigioV"], "type": "VON6LMlt"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicUpdateContentByShareCodeV2' test.out

#- 146 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'u0YYtf8m' \
    --namespace $AB_NAMESPACE \
    --shareCode 'MN0F23zR' \
    --userId 'RyLO7E6C' \
    > test.out 2>&1
eval_tap $? 146 'PublicDeleteContentByShareCodeV2' test.out

#- 147 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'NzbL99Ny' \
    --contentId 'FtisfeUR' \
    --namespace $AB_NAMESPACE \
    --userId '7nGtII7G' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentV2' test.out

#- 148 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId '6vhSeQkv' \
    --contentId 'sGjDrWpp' \
    --namespace $AB_NAMESPACE \
    --userId 'XZ24oqta' \
    --body '{"customAttributes": {"SPqcdAYU": {}, "eQawK9jX": {}, "zLkSFdwc": {}}, "name": "X9Cm04yV", "subType": "KNWSAtEX", "tags": ["Jr2VTfeK", "lQuNPe0F", "lNvqRdbo"], "type": "JPQmxahs"}' \
    > test.out 2>&1
eval_tap $? 148 'PublicUpdateContentV2' test.out

#- 149 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'aGzQgRKN' \
    --contentId 'ruCQAwdN' \
    --namespace $AB_NAMESPACE \
    --userId 'gEy2NXy9' \
    --body '{"fileExtension": "TJ9wB3Vm", "fileLocation": "frvpFXV6"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentFileLocation' test.out

#- 150 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'YCYtDSPc' \
    --contentId 'HjhdJ2pW' \
    --namespace $AB_NAMESPACE \
    --userId '4kPsFTag' \
    --body '{"shareCode": "QuJqsS6E"}' \
    > test.out 2>&1
eval_tap $? 150 'UpdateContentShareCodeV2' test.out

#- 151 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'yzeced6T' \
    --contentId 'kjC2PsLF' \
    --namespace $AB_NAMESPACE \
    --userId '1m6dnnlB' \
    --body '{"contentType": "4qsD5ztz", "fileExtension": "lD4iyiw5"}' \
    > test.out 2>&1
eval_tap $? 151 'PublicGenerateContentUploadURLV2' test.out

#- 152 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'KJs31biV' \
    --limit '24' \
    --offset '79' \
    --sortBy 'W54ZATdP' \
    > test.out 2>&1
eval_tap $? 152 'PublicGetContentByUserIDV2' test.out

#- 153 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'YkGct1Z7' \
    --namespace $AB_NAMESPACE \
    --userId 'xxxlXWO2' \
    --body '{"screenshots": [{"description": "x0eLOfS0", "screenshotId": "nLgXKP13"}, {"description": "4VCkBmde", "screenshotId": "rEZBaJqo"}, {"description": "2P7DC2t1", "screenshotId": "Mwv9nJ8X"}]}' \
    > test.out 2>&1
eval_tap $? 153 'UpdateScreenshotsV2' test.out

#- 154 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'BsoWFKje' \
    --namespace $AB_NAMESPACE \
    --userId '8x4jkDQP' \
    --body '{"screenshots": [{"contentType": "6qCsKRjH", "description": "0dwojH9v", "fileExtension": "jfif"}, {"contentType": "fIbwks7G", "description": "tTYfQMLl", "fileExtension": "jpg"}, {"contentType": "Zjkrf23p", "description": "oYFJhzIn", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UploadContentScreenshotV2' test.out

#- 155 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'aRSqJpO8' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'JRliFGa5' \
    --userId 'ehPyysTF' \
    > test.out 2>&1
eval_tap $? 155 'DeleteContentScreenshotV2' test.out

#- 156 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'k1DbqL2N' \
    --namespace $AB_NAMESPACE \
    --userId 'nxVx2qWn' \
    --limit '61' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 156 'PublicGetGroupContentsV2' test.out

#- 157 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'sJnJQ0oE' \
    --limit '70' \
    --offset '10' \
    --sortBy 'MS02xp6A' \
    --status 'WJgBXVZ6' \
    > test.out 2>&1
eval_tap $? 157 'ListUserStagingContents' test.out

#- 158 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId 'estkLYc2' \
    --namespace $AB_NAMESPACE \
    --userId 'VU29JSWO' \
    > test.out 2>&1
eval_tap $? 158 'GetUserStagingContentByID' test.out

#- 159 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId 'qJUOglPc' \
    --namespace $AB_NAMESPACE \
    --userId 'Hw5Ct85c' \
    --body '{"fileExtension": "rRyyZ0ii", "fileLocation": "lgqIaZWV"}' \
    > test.out 2>&1
eval_tap $? 159 'UpdateStagingContent' test.out

#- 160 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId 'e3mnaDhU' \
    --namespace $AB_NAMESPACE \
    --userId 'rJK1hW9g' \
    > test.out 2>&1
eval_tap $? 160 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE