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
echo "1..161"

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
    --limit '94' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "xHsgjoVg", "name": "nyesAFFX"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'kDUVcmJQ' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "VZcOEyXs"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'Lqzkou15' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'pbKSIips' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "77TGZJ0G", "customAttributes": {"twmzlgjP": {}, "igk8hGN4": {}, "WZKriVZD": {}}, "fileExtension": "OSYVacCs", "name": "caJHbggL", "preview": "17e5PJUh", "previewMetadata": {"previewContentType": "LpdjiU8O", "previewFileExtension": "IdqhzfsV"}, "shareCode": "AApwRw11", "subType": "BmqEv9x1", "tags": ["16cvedtH", "F8o8kg6z", "Uy5hVhjb"], "type": "EkNWlXkt"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId '7RtYk98C' \
    --contentId 'OZTCGWIX' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "TUB3p3Is", "customAttributes": {"jjJYbcI8": {}, "mlIIoW0h": {}, "bybVHLun": {}}, "fileExtension": "sGB5GDk8", "name": "Yb0tu4tj", "payload": "VEykIRl0", "preview": "Krf1DkkB", "previewMetadata": {"previewContentType": "9Mby53WP", "previewFileExtension": "8ORjpQgj"}, "shareCode": "ACFOSgFw", "subType": "iC3wyb5A", "tags": ["ntkzu9HC", "WC5DUqZ6", "dR5GsaRp"], "type": "m77A4i7m", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId '5MoBcdfW' \
    --namespace $AB_NAMESPACE \
    --creator '3upk92Kw' \
    --ishidden 'NFo75uFW' \
    --isofficial '9BPx0Tik' \
    --limit '72' \
    --name '1uPViFS5' \
    --offset '26' \
    --orderby 'rQ1S5WtJ' \
    --sortby 'UpkZIcIz' \
    --subtype 'lGuX1Lh0' \
    --tags '["2eg3bG9E", "j8KHMgmE", "DXE4s8zh"]' \
    --type 'RhInLMvV' \
    --userId 'JSMIaLt6' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'rSNorUlA' \
    --contentId 'vibnGn9y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["gYj67sJt", "EXTszdym", "aO2KfssT"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'GjnZ5u87' \
    --ishidden 'NrmQmY4H' \
    --isofficial '0D3eq1C1' \
    --limit '83' \
    --name '5zMDv1hr' \
    --offset '86' \
    --orderby 'MwQghDNo' \
    --sortby 'lpmHJrov' \
    --subtype 'IojiTZv7' \
    --tags '["F94Qn62E", "IxvQFXxw", "deBaa9ix"]' \
    --type 'cE7eWJaD' \
    --userId 'MfGiwOo0' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["KU3Gc1pZ", "ouhzxCEN", "prdyqeGU"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'VeXE2bZE' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'cqQaIT7i' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'iQ47E2Fw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'rE0t3kqz' \
    --namespace $AB_NAMESPACE \
    --versionId 'gD6Fz0Na' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId '2rj8HkWV' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "66lCutK1", "screenshotId": "8A5Bebh9"}, {"description": "PVbL0yYU", "screenshotId": "OTpfXbqL"}, {"description": "E5pSXHdQ", "screenshotId": "uggE97ol"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'qp8mCVMn' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "MsQ8coyS", "description": "VtZfxwCK", "fileExtension": "png"}, {"contentType": "X69T2jYQ", "description": "CLzifRGP", "fileExtension": "pjp"}, {"contentType": "LZhTeTz2", "description": "qTaFZtQE", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'bYJrURZX' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'eMtcwCqc' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'uSmnjqHS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["GVhZM3fP", "fTJPSpPd", "Vpjqy66q"], "name": "kZBhTddH"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'CLUUKsaH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'BK0DIGd4' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["bx679SYl", "9GdoHnwx", "LGR2487V"], "name": "t415t8JA"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'QAPwvN7w' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'hUGk9qtX' \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "q7S2WK9f"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'L0Pp66Mx' \
    --body '{"tag": "oYm6CsdW"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'icJxNtCO' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["v8Q0mfHN", "YuaJl9hw", "zGjXZvuN"], "type": "5zwQbuI4"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'kwRNd7lr' \
    --body '{"subtype": ["DnLOAQHY", "oGKy1xDY", "tm2W9Gyh"], "type": "h76FMYGT"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'JLEu5Z98' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'eaE0fYjF' \
    --limit '30' \
    --name 'Ua6mEzq0' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'mCCm8rTc' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId '3jwPHdrw' \
    --namespace $AB_NAMESPACE \
    --userId 'IDy0aXMN' \
    --body '{"name": "MmeQv4pT"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'ul4VqiJD' \
    --namespace $AB_NAMESPACE \
    --userId 'aeLXqLvO' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'ynGslVmZ' \
    --namespace $AB_NAMESPACE \
    --shareCode 'f9TjTKMm' \
    --userId 'vePEyC2U' \
    --body '{"contentType": "zWWyfAzi", "customAttributes": {"BgT7lFu9": {}, "9aX4MPP5": {}, "Ae7xYjMp": {}}, "fileExtension": "bxovEtwf", "name": "uS2xK0FQ", "payload": "dQULFq5g", "preview": "vOvqt7nf", "previewMetadata": {"previewContentType": "xDzMBNvl", "previewFileExtension": "My9iTzpY"}, "shareCode": "NeYehfY1", "subType": "r3bT8YKL", "tags": ["duZ8j9MN", "N2BhJCCo", "vMfOz9OQ"], "type": "Ob6RZ0qC", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'R5NXPVyH' \
    --contentId '1Dccpws5' \
    --namespace $AB_NAMESPACE \
    --userId 'UrKkrwVE' \
    --body '{"contentType": "3zYB7veF", "customAttributes": {"SxLAv6Hk": {}, "BPs3gUGh": {}, "Tlbj01xl": {}}, "fileExtension": "jL3oq8Mf", "name": "6XnYshgE", "payload": "pSsgbvwa", "preview": "AYGyXcGn", "previewMetadata": {"previewContentType": "sSbvp4SF", "previewFileExtension": "dD7B1sKb"}, "shareCode": "3wKN5vig", "subType": "QHjl6fhI", "tags": ["IJ2eTtBO", "pgfN7KMt", "YFKpdjVS"], "type": "2JE6hQcT", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'zVZjDr67' \
    --namespace $AB_NAMESPACE \
    --shareCode 'ENheOmtH' \
    --userId 'yJ9CUmLY' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'kSMZnxiR' \
    --contentId 'lFWZezPx' \
    --namespace $AB_NAMESPACE \
    --userId 'W1sJaxwx' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'QI6HXxI5' \
    --limit '14' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId '8LWLu40N' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'PewRMhbT' \
    --namespace $AB_NAMESPACE \
    --userId 'qss5x966' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'Jl5cLHxg' \
    --limit '78' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'sOniLKPY' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'lobTfEP0' \
    --namespace $AB_NAMESPACE \
    --userId 'aPFJyuPp' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'fSDuZLiN' \
    --namespace $AB_NAMESPACE \
    --userId 'aPCymWyh' \
    --body '{"contents": ["l88qahI5", "ES46SBli", "CRBvNJQ2"], "name": "fDbYE8ok"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'ToVeCNTL' \
    --namespace $AB_NAMESPACE \
    --userId 'tWwDM5ek' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'J1OcgxLP' \
    --namespace $AB_NAMESPACE \
    --userId 'bTIBxF4h' \
    --limit '92' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'HXjSXzcZ' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId '5g12tLwL' \
    --namespace $AB_NAMESPACE \
    --creator 'ewPs61t4' \
    --ishidden 'WE3j709M' \
    --isofficial 'oqmP70Qf' \
    --limit '84' \
    --name '0DzMjU8X' \
    --offset '39' \
    --orderby 'HmyOB3gs' \
    --sortby 'QvsJdSp0' \
    --subtype 'A6h1ctvj' \
    --tags '["gRgkUqNx", "qLr3gLbJ", "4R0e18Sv"]' \
    --type 'LW30FKGk' \
    --userId 'nXg6RUWR' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'FsofkLpP' \
    --ishidden 'CzO4oRCP' \
    --isofficial '6aNuEI1t' \
    --limit '53' \
    --name 'S1Sc2Cik' \
    --offset '10' \
    --orderby '74lAlvxK' \
    --sortby 'KqaaMpo3' \
    --subtype '9DOxV7YY' \
    --tags '["CwUp4Fs5", "GQVDgIp0", "8j2HTt7l"]' \
    --type 'ztYcYgio' \
    --userId '6F69m2fM' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["hjoKCYUd", "C2NzLrDS", "XtPnVKHh"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '99' \
    --name 'OJd6Z1Y8' \
    --offset '21' \
    --orderby '2JlzyLWp' \
    --sortby 'HgtndL5k' \
    --subtype 'VeHcd0uk' \
    --tags '["eNnkwKP9", "n8mdjkz7", "sDNA70Yx"]' \
    --type '2t9m7eMq' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["e2jQhoYk", "Gq8S4n9Q", "nQdjRima"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'y0P3Haq9' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'nlUSaCuS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'NIEzsg1s' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'zahoV51P' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'vq8yoIOl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '27' \
    --orderby 'IB2jpKZF' \
    --sortby 'k9Ir3hZN' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'qX4Bcc4G' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'OS8XbKUx' \
    --limit '64' \
    --name 'aouhd9lt' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'UjiNih7v' \
    --body '{"name": "PwPqHBeg"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'LWECXxIp' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId '0SmoTZtG' \
    --namespace $AB_NAMESPACE \
    --userId 'WQgM9dvR' \
    --body '{"name": "yoWruCXN"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'k6MTkH6U' \
    --namespace $AB_NAMESPACE \
    --userId '4oKxC7t8' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId '7azmi3k1' \
    --namespace $AB_NAMESPACE \
    --userId 'KS7UqzCD' \
    --body '{"contentType": "m2MlCLc5", "customAttributes": {"GRB35cJU": {}, "vg8N7NhI": {}, "iDb8dtXh": {}}, "fileExtension": "1KiM9qF8", "name": "AdY4kDF9", "preview": "Sj69p6lK", "previewMetadata": {"previewContentType": "D4DqpWPU", "previewFileExtension": "vrMx1Krt"}, "subType": "EhZpHlfb", "tags": ["h8st64Gm", "ISdHQDDo", "riRt2ba4"], "type": "XnSTFywY"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'PQof6vue' \
    --namespace $AB_NAMESPACE \
    --shareCode 'QqJfK95W' \
    --userId 'Ap2mwFye' \
    --body '{"contentType": "lbjrjuWQ", "customAttributes": {"UYZvxudY": {}, "m1LZRf55": {}, "DyAYOA42": {}}, "fileExtension": "BEGPQ5fq", "name": "QF1f3zYV", "payload": "4SOzxC73", "preview": "58ZTJxqe", "previewMetadata": {"previewContentType": "qHYylaCE", "previewFileExtension": "IngwwB8Q"}, "subType": "IpwVg0py", "tags": ["s3ZL00Cl", "IcUcr3lG", "kolLkDg8"], "type": "GaIlyqac", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'H1WYna2M' \
    --contentId 'rhOkv1VF' \
    --namespace $AB_NAMESPACE \
    --userId 'zMuxmO02' \
    --body '{"contentType": "8xdInDYh", "customAttributes": {"XaeAuWJK": {}, "o8WybhHy": {}, "by0W0vc6": {}}, "fileExtension": "IWIXNbDR", "name": "JC8Qkp1w", "payload": "J74ilzcC", "preview": "msFB21yH", "previewMetadata": {"previewContentType": "2UfMWAQK", "previewFileExtension": "3t5nBysS"}, "subType": "aUXBGhYy", "tags": ["PqgrVhkF", "m1qpCfvo", "emhUVhGF"], "type": "hZSyMxGl", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId 'IMVWNiuQ' \
    --namespace $AB_NAMESPACE \
    --shareCode 'maunU9UG' \
    --userId 'Gkv9LOMo' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'VWgAl0Ai' \
    --contentId 'FluuUmrC' \
    --namespace $AB_NAMESPACE \
    --userId 'MKfshifz' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'Ru12jns1' \
    --contentId 'W57KbCll' \
    --namespace $AB_NAMESPACE \
    --userId 'wHsjmktX' \
    --body '{"shareCode": "I21sVuTG"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'MjTfC17x' \
    --limit '79' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'KEVKMaOv' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'jb8fsOLF' \
    --namespace $AB_NAMESPACE \
    --userId 'kLncLRc6' \
    --body '{"screenshots": [{"description": "79HDHSDz", "screenshotId": "qjpY8jvv"}, {"description": "dra1SxQM", "screenshotId": "uFRnFX04"}, {"description": "WTjIGfY1", "screenshotId": "xatgEgBe"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId '4JpZMncg' \
    --namespace $AB_NAMESPACE \
    --userId 'wBksSCBB' \
    --body '{"screenshots": [{"contentType": "43IHkmEF", "description": "4QcpbHQ2", "fileExtension": "pjp"}, {"contentType": "M21hxL3h", "description": "l756tCwX", "fileExtension": "pjp"}, {"contentType": "g2JxVWcp", "description": "HJHMmz5n", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId '4NIffdUu' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'Yvs0aB89' \
    --userId 'qhUcWxlY' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'xwazeF1i' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'MRJbMTWS' \
    --limit '57' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'wYX8DmZd' \
    --limit '93' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'BRNeh9ga' \
    --limit '43' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'MzjGtmLX' \
    --body '{"contents": ["zUbpMV5P", "g68JeS6V", "Yhtf6USm"], "name": "36jq5Ojb"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'lqc7Do1k' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'teuS9AbR' \
    --namespace $AB_NAMESPACE \
    --userId '4zLGQ9C2' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'fWZebtkv' \
    --namespace $AB_NAMESPACE \
    --userId 'k3XAqYgG' \
    --body '{"contents": ["M8f5ZcPo", "CFAXnawx", "dTyMTvbF"], "name": "BK7etEaj"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'Jz4W0RXZ' \
    --namespace $AB_NAMESPACE \
    --userId 'DzzzJHLP' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'aCoQVeIq' \
    --namespace $AB_NAMESPACE \
    --userId 'Y4PkM0SY' \
    --limit '99' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'XaHsrCSh' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'lNr7EOj9' \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --name 'X1iS8kWD' \
    --offset '33' \
    --sortBy 'DvmrbM7U' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'bc4sBrGB' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "bDGnxHjB", "customAttributes": {"Kttnjnwy": {}, "Fvr5q86w": {}, "uOH5f9bH": {}}, "fileExtension": "YQaNFEUe", "name": "BDMBJsk4", "shareCode": "UPhXYtCs", "subType": "gLcw0kpb", "tags": ["4I7IZGX6", "tC9MPJMz", "4uBcEXdd"], "type": "AVfS3kb3"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'vHLKmPaU' \
    --contentId 'STCN6RNj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'LXeda9Uf' \
    --contentId '5K7Hl5df' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"RsGCSU7c": {}, "4tJGsH4W": {}, "R5L9Z0Zn": {}}, "name": "64k98ifR", "shareCode": "r8d6u4Ck", "subType": "BV1twzus", "tags": ["1BMra0Dt", "MoVRyUms", "UOJT6iN1"], "type": "4EbbiC7K"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminCopyContent
samples/cli/sample-apps Ugc adminCopyContent \
    --channelId 'IozaCnSW' \
    --contentId 'DLMqYjls' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"LvpI1FEA": {}, "du7irl3R": {}, "IHsgX9A6": {}}, "name": "j0oO1Gp1", "subType": "88xGilLr", "tags": ["mADfgYEn", "aH6tKlGQ", "got83PUH"], "targetChannelId": "sJ7Ienhg", "type": "X3ZRMwSN"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminCopyContent' test.out

#- 107 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId '7wFs3cXt' \
    --contentId 'xHJF4ekD' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "DQKk3dls", "fileLocation": "v4V5XrjQ"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminUpdateOfficialContentFileLocation' test.out

#- 108 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'gbuHBQO4' \
    --contentId 'YK7Ex55R' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "vDZs11Hp", "fileExtension": "VABc8FLe"}' \
    > test.out 2>&1
eval_tap $? 108 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 109 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 109 'AdminGetConfigs' test.out

#- 110 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key 'ifyE070x' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "Dv712qao"}' \
    > test.out 2>&1
eval_tap $? 110 'AdminUpdateConfig' test.out

#- 111 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '5' \
    --name 'scXQgjp6' \
    --offset '36' \
    --sortBy 'Ej9ZlPRQ' \
    --subType 'SczhWAI0' \
    --tags '["4dbIjOCW", "VpfD0j9p", "PMoFfzum"]' \
    --type '3Ghr4t4K' \
    > test.out 2>&1
eval_tap $? 111 'AdminListContentV2' test.out

#- 112 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["gbtq59Fv", "6SovD4ZP", "t4Kt8pwR"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminBulkGetContentByIDsV2' test.out

#- 113 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["POxZpWWb", "gOwLsfXz", "DGipeP9o"]}' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentBulkByShareCodesV2' test.out

#- 114 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode '0qRK49yk' \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByShareCodeV2' test.out

#- 115 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 'AN8Vm8BQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'AdminGetContentByContentIDV2' test.out

#- 116 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'vkJ0wJHY' \
    --namespace $AB_NAMESPACE \
    --versionId 'DWC6p4Gn' \
    > test.out 2>&1
eval_tap $? 116 'RollbackContentVersionV2' test.out

#- 117 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'iKNW71gb' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "qQgtTaGD", "screenshotId": "HSV7oHLC"}, {"description": "hqWBB20O", "screenshotId": "wuzSStu2"}, {"description": "Qzb0LzY1", "screenshotId": "s3a5YPTS"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateScreenshotsV2' test.out

#- 118 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 's9KFWdbq' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "rLoGxprX", "description": "GhdVyx5U", "fileExtension": "png"}, {"contentType": "AYVXNRpV", "description": "8PmdAbWg", "fileExtension": "png"}, {"contentType": "P5DxRUTy", "description": "nYQeByW9", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 118 'AdminUploadContentScreenshotV2' test.out

#- 119 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'jETVpdAk' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'G10MhfiZ' \
    > test.out 2>&1
eval_tap $? 119 'AdminDeleteContentScreenshotV2' test.out

#- 120 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'JLPOlSrm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 120 'ListContentVersionsV2' test.out

#- 121 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId '567FsNzl' \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 121 'AdminGetOfficialGroupContentsV2' test.out

#- 122 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '89' \
    --sortBy 'wS9V83vb' \
    --status 'AbvKCDte' \
    > test.out 2>&1
eval_tap $? 122 'AdminListStagingContents' test.out

#- 123 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId '8PZdaZPF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminGetStagingContentByID' test.out

#- 124 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId '75C2zzXn' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": false, "note": "033JQcgk"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminApproveStagingContent' test.out

#- 125 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId '1Oo6q8SW' \
    --namespace $AB_NAMESPACE \
    --shareCode 'yRrRvOvh' \
    --userId 'jXj2xhYX' \
    --body '{"customAttributes": {"OzOrddKg": {}, "W6zZdRxd": {}, "7TlvdY8P": {}}, "name": "NTl0xH5I", "shareCode": "mjWpRDJ8", "subType": "YkI59sVA", "tags": ["kOTMFgRU", "Enl9LXoq", "UJQmNpT4"], "type": "TGIfuKUd"}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateContentByShareCodeV2' test.out

#- 126 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId '3Dks5hio' \
    --namespace $AB_NAMESPACE \
    --shareCode 'kO9IKmGT' \
    --userId 'mQuYEuqT' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteContentByShareCodeV2' test.out

#- 127 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'DzJtrhIG' \
    --contentId '2j5m6StY' \
    --namespace $AB_NAMESPACE \
    --userId 'bD8Hgx4A' \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteUserContentV2' test.out

#- 128 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'eveRnhT9' \
    --contentId 'ANX6iWlk' \
    --namespace $AB_NAMESPACE \
    --userId 'keeoAqMe' \
    --body '{"customAttributes": {"0I7nU6G4": {}, "kTqDEkp4": {}, "CZE7ah0B": {}}, "name": "5Cj3xmfa", "shareCode": "7iORma7o", "subType": "F6Zxt6P0", "tags": ["bxefD3hD", "Jrwno1qq", "2rmxHXLg"], "type": "ZhODekzZ"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentV2' test.out

#- 129 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'Wc597YYv' \
    --contentId 'VsCCpRnZ' \
    --namespace $AB_NAMESPACE \
    --userId 'zaFirFcg' \
    --body '{"fileExtension": "tjN8Dnlt", "fileLocation": "zZLjeZGF"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateUserContentFileLocation' test.out

#- 130 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'KAqwCsjV' \
    --contentId 'awiZZO4J' \
    --namespace $AB_NAMESPACE \
    --userId 'u1doFP9e' \
    --body '{"contentType": "HZR3wRez", "fileExtension": "8zvBmIVS"}' \
    > test.out 2>&1
eval_tap $? 130 'AdminGenerateUserContentUploadURLV2' test.out

#- 131 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId '9K2YkJiN' \
    --limit '34' \
    --offset '29' \
    --sortBy 'VL3hIGZK' \
    > test.out 2>&1
eval_tap $? 131 'AdminGetContentByUserIDV2' test.out

#- 132 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'L0sbmeEM' \
    --namespace $AB_NAMESPACE \
    --userId 'r9Xwun7W' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 132 'AdminUpdateContentHideStatusV2' test.out

#- 133 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'JtwLUXku' \
    --namespace $AB_NAMESPACE \
    --userId '3AwaXi6o' \
    --limit '99' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 133 'AdminGetUserGroupContentsV2' test.out

#- 134 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'et9VsXDh' \
    --limit '32' \
    --offset '71' \
    --sortBy 'ncJFZze7' \
    --status 'jvesHu30' \
    > test.out 2>&1
eval_tap $? 134 'AdminListUserStagingContents' test.out

#- 135 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId '9qVBgdny' \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --name 'o2yu7y5U' \
    --offset '78' \
    --sortBy 'ZmrT4EJz' \
    > test.out 2>&1
eval_tap $? 135 'PublicGetContentByChannelIDV2' test.out

#- 136 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '82' \
    --name 'duv2WWK9' \
    --offset '85' \
    --sortBy 'JuYEAKfR' \
    --subType 'ASnuLPrJ' \
    --tags '["3g1ZagUN", "Yd1Kydzg", "p9GJfBoR"]' \
    --type 'xY6XnC7Y' \
    > test.out 2>&1
eval_tap $? 136 'PublicListContentV2' test.out

#- 137 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["Wv5MovRc", "A1RvQQyD", "s56aKOIR"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicBulkGetContentByIDV2' test.out

#- 138 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["2vqmIdUj", "30aMMgPx", "yZw3dqVK"]}' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentBulkByShareCodesV2' test.out

#- 139 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'TDqE3QfT' \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByShareCodeV2' test.out

#- 140 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'VWgXF6jB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicGetContentByIDV2' test.out

#- 141 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'ANZzmcBl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 141 'PublicAddDownloadCountV2' test.out

#- 142 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId '2pED52CJ' \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '27' \
    --sortBy 'DgwsSDyW' \
    --userId 'emanlnb0' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentDownloaderV2' test.out

#- 143 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'o7T46KzC' \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '30' \
    --sortBy 'ophDjM2D' \
    > test.out 2>&1
eval_tap $? 143 'PublicListContentLikeV2' test.out

#- 144 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId 'vDjZK4a0' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateContentLikeStatusV2' test.out

#- 145 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'nJAs4D0l' \
    --namespace $AB_NAMESPACE \
    --userId 'oFRem1j0' \
    --body '{"contentType": "ABvts684", "customAttributes": {"MZb40v91": {}, "pCP0vyPV": {}, "SDwH2Oxd": {}}, "fileExtension": "0gnWCNC3", "name": "cxXWHr6z", "subType": "ASH69IJ5", "tags": ["6Hj9yuzr", "ehRbHrqQ", "FPzNnQGu"], "type": "H0aKMuIw"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicCreateContentV2' test.out

#- 146 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'L3nULvFn' \
    --namespace $AB_NAMESPACE \
    --shareCode 'P3nhe9CI' \
    --userId 'OJKvUd1T' \
    --body '{"customAttributes": {"0dCBHXqZ": {}, "jOC1lAKy": {}, "BnAssqL7": {}}, "name": "ApjpPP3w", "subType": "XDLq5WpH", "tags": ["QWLbrKJS", "k1KnuwIy", "n5gwRPEH"], "type": "BtrsTSKt"}' \
    > test.out 2>&1
eval_tap $? 146 'PublicUpdateContentByShareCodeV2' test.out

#- 147 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'A33PyhWt' \
    --namespace $AB_NAMESPACE \
    --shareCode 'ZHQhpKzh' \
    --userId 'I1fzg6s1' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentByShareCodeV2' test.out

#- 148 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'Jq61X9SQ' \
    --contentId 'kRik95zX' \
    --namespace $AB_NAMESPACE \
    --userId 'sUknW64q' \
    > test.out 2>&1
eval_tap $? 148 'PublicDeleteContentV2' test.out

#- 149 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'XEiBm11U' \
    --contentId 'udVptkkK' \
    --namespace $AB_NAMESPACE \
    --userId 'k1PzykXX' \
    --body '{"customAttributes": {"pAWjXVLj": {}, "Oczby4FY": {}, "tMiGuqLa": {}}, "name": "ea9E3xKx", "subType": "eWTpXC9e", "tags": ["gyOA9er9", "VDyF4EqV", "U7PTWaKR"], "type": "sk6miCZF"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentV2' test.out

#- 150 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'mh1SZRUb' \
    --contentId 'BCohcmDt' \
    --namespace $AB_NAMESPACE \
    --userId 'RId6lLv3' \
    --body '{"fileExtension": "VG8kI3BR", "fileLocation": "D1ix2YJO"}' \
    > test.out 2>&1
eval_tap $? 150 'PublicUpdateContentFileLocation' test.out

#- 151 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'QhsYG8SL' \
    --contentId 'Etk8MfIa' \
    --namespace $AB_NAMESPACE \
    --userId 'fuAEMRoD' \
    --body '{"shareCode": "fQHRMUaU"}' \
    > test.out 2>&1
eval_tap $? 151 'UpdateContentShareCodeV2' test.out

#- 152 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'qRodU7tA' \
    --contentId '85264QGL' \
    --namespace $AB_NAMESPACE \
    --userId 'aIMOGqxf' \
    --body '{"contentType": "c0gIRMxS", "fileExtension": "Qk2bBGdN"}' \
    > test.out 2>&1
eval_tap $? 152 'PublicGenerateContentUploadURLV2' test.out

#- 153 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'QdXu8Acu' \
    --limit '83' \
    --offset '35' \
    --sortBy '6PvoZCG1' \
    > test.out 2>&1
eval_tap $? 153 'PublicGetContentByUserIDV2' test.out

#- 154 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId '3ejiXshH' \
    --namespace $AB_NAMESPACE \
    --userId '1fJwG3Ys' \
    --body '{"screenshots": [{"description": "0tIodfRF", "screenshotId": "PpdNzWcu"}, {"description": "2zdsDWZJ", "screenshotId": "zAeV18RY"}, {"description": "kLz6Zzcq", "screenshotId": "sAniLxfR"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UpdateScreenshotsV2' test.out

#- 155 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId '79IJtVwf' \
    --namespace $AB_NAMESPACE \
    --userId 'vCQnmddP' \
    --body '{"screenshots": [{"contentType": "j3zmkjP5", "description": "LnN7dQS5", "fileExtension": "jfif"}, {"contentType": "XDzafqxw", "description": "6kCHm6RX", "fileExtension": "pjp"}, {"contentType": "2DGm0X1T", "description": "kRiS7Z40", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 155 'UploadContentScreenshotV2' test.out

#- 156 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'tWQo1wTR' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'KaEm0Ler' \
    --userId 'bCWRfBea' \
    > test.out 2>&1
eval_tap $? 156 'DeleteContentScreenshotV2' test.out

#- 157 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'hWdKW06P' \
    --namespace $AB_NAMESPACE \
    --userId '8uc31mdK' \
    --limit '43' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 157 'PublicGetGroupContentsV2' test.out

#- 158 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'nIT97PD1' \
    --limit '47' \
    --offset '14' \
    --sortBy 'kLTM9Tdh' \
    --status '3hRERDso' \
    > test.out 2>&1
eval_tap $? 158 'ListUserStagingContents' test.out

#- 159 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId 'yaKtU7Yw' \
    --namespace $AB_NAMESPACE \
    --userId 'ctvXPrDC' \
    > test.out 2>&1
eval_tap $? 159 'GetUserStagingContentByID' test.out

#- 160 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId 'tsAePh4J' \
    --namespace $AB_NAMESPACE \
    --userId 'iWXpMQYU' \
    --body '{"fileExtension": "KPLd6mFd", "fileLocation": "0kX78upG"}' \
    > test.out 2>&1
eval_tap $? 160 'UpdateStagingContent' test.out

#- 161 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId 'lgqzTrdc' \
    --namespace $AB_NAMESPACE \
    --userId 'edYw14mF' \
    > test.out 2>&1
eval_tap $? 161 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE