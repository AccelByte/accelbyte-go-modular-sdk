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
echo "1..97"

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
    --limit '19' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "8iihWaRa", "name": "SMJVd3QV"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'Yfn5DESR' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "Vdvf4fCx"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'X4vIU1RV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'g1ilzQU9' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "bNZDlglu", "customAttributes": {"2U4OvCZF": {}, "ijoMqDxc": {}, "TCPusB97": {}}, "fileExtension": "Jge27JMR", "name": "9oOZDXE0", "preview": "PYfdZZr4", "previewMetadata": {"previewContentType": "i4ctpcru", "previewFileExtension": "9viPTrgA"}, "shareCode": "i96x3OTP", "subType": "TtJnbl4K", "tags": ["CbU5z2xw", "2WK0Kl7p", "hlfb4S95"], "type": "9cvFeN6e"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'tzzjZoEs' \
    --contentId '8LVyX9FX' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "lwvz7Cwz", "customAttributes": {"G4QpFE5p": {}, "MuNRDUuk": {}, "sGDjqiK5": {}}, "fileExtension": "cp6QC4MO", "name": "6becucTv", "payload": "aS5vc63r", "preview": "6KsmvXvY", "previewMetadata": {"previewContentType": "ar70ybUq", "previewFileExtension": "HDnXDYHG"}, "shareCode": "mgrRIXRH", "subType": "78K3Ciya", "tags": ["hgRBiHQO", "GoZE2QpR", "XiAII52V"], "type": "EvyuGaY5", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'dsPq43GX' \
    --namespace $AB_NAMESPACE \
    --creator 'hwmdvbdo' \
    --ishidden 'GavuU38g' \
    --isofficial 'rkYJpurQ' \
    --limit '17' \
    --name '8Z2mtc8U' \
    --offset '85' \
    --orderby 'RUonDYST' \
    --sortby 'gzRIwAv6' \
    --subtype 'Vc1SLcus' \
    --tags '["tTKqisKu", "fEQS9yE2", "S0NtN1BM"]' \
    --type 'mldaWxqL' \
    --userId 'HHMMnO4j' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'tvP41teD' \
    --contentId 'so6AZTy1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["YPwDCi6B", "JWptNAK0", "e270NkEy"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'tFdRxJsL' \
    --ishidden 'hlfrFyN9' \
    --isofficial 'qRG2l1MT' \
    --limit '29' \
    --name '4SZJOQXf' \
    --offset '32' \
    --orderby 'ZBdFly05' \
    --sortby 'OgIIx5mp' \
    --subtype 'rzAbeJNg' \
    --tags '["YV6XJe8C", "lC7SYYoi", "xg7VLtdI"]' \
    --type 'ImIGA2gN' \
    --userId 'dWmnYAbz' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["Cz67A78P", "x70YanXo", "HIOzjGwh"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode '06lqkmDG' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'l5ndnLhY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId '9iD017Ot' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'lkY9Rnbx' \
    --namespace $AB_NAMESPACE \
    --versionId 'C3d5C0KC' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'l2aIEKtm' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "z2LdLfoH", "screenshotId": "iE8h93UT"}, {"description": "NRp15LwD", "screenshotId": "QQ0vu9V5"}, {"description": "etLUOgow", "screenshotId": "l6l2T6Pj"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'EQnuScfM' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "8k4oWnt6", "description": "Wn1j6dVl", "fileExtension": "pjp"}, {"contentType": "oYYQbH2T", "description": "pi4B7o2x", "fileExtension": "bmp"}, {"contentType": "CGxIaT0c", "description": "7i9t1IwU", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId '2ZMNYquL' \
    --namespace $AB_NAMESPACE \
    --screenshotId '6UZskN3P' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'dspqLxg1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["FLArbAKv", "lgZONjgA", "z2sAkqL9"], "name": "Sp9Fajb8"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'ZEek8L75' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId '8sEGT9zj' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["CkjvYLQP", "qm2LQ2Sx", "tp7a8KGC"], "name": "TgrDfBh8"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId '2tE275jt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 't3mvnJtv' \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "cauHjDiH"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'TkPRd6wj' \
    --body '{"tag": "YtU6lPPU"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'vc4pwt1W' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["RGlvSbbG", "baNYYYEi", "kOOk1kyY"], "type": "hmbVv4te"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'CnndTO37' \
    --body '{"subtype": ["5pTbpIdh", "mat960bf", "CQf6rTPX"], "type": "elZ73IzE"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'v1xdlhZJ' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId '5OsE4VIE' \
    --limit '15' \
    --name 'IaYRklOL' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'zayQkNH5' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'SJTAo6DM' \
    --namespace $AB_NAMESPACE \
    --userId 'S0AArKsE' \
    --body '{"name": "igQMx0CY"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'qvhYVZbR' \
    --namespace $AB_NAMESPACE \
    --userId 'Egz1yaqg' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'bRcjx2UD' \
    --namespace $AB_NAMESPACE \
    --shareCode '1XkLd0yh' \
    --userId 'uRYtg0l5' \
    --body '{"contentType": "g8QQfOWt", "customAttributes": {"DFKHnktr": {}, "wdWPkxfH": {}, "bwznnuSZ": {}}, "fileExtension": "v08YKBhX", "name": "K1D0c01R", "payload": "oucPdTWS", "preview": "JavHnup0", "previewMetadata": {"previewContentType": "vLZX3jUT", "previewFileExtension": "2mOnEl8o"}, "shareCode": "gmO0l0Zh", "subType": "DAuVnl3F", "tags": ["8Pdhm57E", "hOgJ5doK", "LqWDdHGH"], "type": "mbQFzL6N", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'abOoqKF3' \
    --contentId '6B7vmoMZ' \
    --namespace $AB_NAMESPACE \
    --userId 'cvW50I9g' \
    --body '{"contentType": "zX1n9Rsa", "customAttributes": {"6XzpFzgQ": {}, "DHaQbEli": {}, "DVtJWLr2": {}}, "fileExtension": "K1jP2hPn", "name": "OzgeNZq9", "payload": "ohC8NUNy", "preview": "M6rCSHfE", "previewMetadata": {"previewContentType": "R1MC0seo", "previewFileExtension": "OZbofAYY"}, "shareCode": "tLbzhWnm", "subType": "k1U7C8V8", "tags": ["oaxxYE1t", "ANrd1Oda", "PK06y5nH"], "type": "jOoVkGDe", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'jUqp8Zef' \
    --namespace $AB_NAMESPACE \
    --shareCode '84BifFZe' \
    --userId 'Hx8mgzuZ' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'y5v6dK0W' \
    --contentId 'A9kUblMp' \
    --namespace $AB_NAMESPACE \
    --userId 'cuvoEIAm' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'PsDUZsN8' \
    --limit '55' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'fhqFFNcW' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'hNO4YEou' \
    --namespace $AB_NAMESPACE \
    --userId 'nXZEplwG' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId '99o4nodo' \
    --limit '60' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'MUqvMdOC' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'V6zIzbqD' \
    --namespace $AB_NAMESPACE \
    --userId 'Q3G78iqH' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'gXGCGnZz' \
    --namespace $AB_NAMESPACE \
    --userId 'wON5x6iX' \
    --body '{"contents": ["cD2Fil8C", "8mAonOf1", "JALyx59N"], "name": "oVFuPqqD"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'HKJy5yvq' \
    --namespace $AB_NAMESPACE \
    --userId '8m8R7ejt' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'ZmT2mm6B' \
    --namespace $AB_NAMESPACE \
    --userId 'aNenRAyx' \
    --limit '5' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'ik4xqeC5' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'ust8YGjF' \
    --namespace $AB_NAMESPACE \
    --creator 'N2JD2Koe' \
    --ishidden '71Bzn3aB' \
    --isofficial 'tlebuvH5' \
    --limit '58' \
    --name 'oLXtPj2Q' \
    --offset '39' \
    --orderby 'RXSqN6gH' \
    --sortby 'Wo1juo7a' \
    --subtype 'Q6k0hMNz' \
    --tags '["99vKRjht", "ZSHMLffy", "cx7xe3D7"]' \
    --type 'PjOObIG2' \
    --userId 'hUsBzvlC' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'qA4oEdxg' \
    --ishidden 'xffWzydJ' \
    --isofficial 'S1ybdu87' \
    --limit '46' \
    --name 'w0t88ave' \
    --offset '94' \
    --orderby 'SXcrqBNs' \
    --sortby '3BdvUmhz' \
    --subtype 'GE5yXZ1R' \
    --tags '["5Ud0LCm7", "rokvjrfG", "3MwzbgGZ"]' \
    --type 'TBax079S' \
    --userId 'wNsUz8d7' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["FNb7Tn0a", "znW4yqUX", "QpoM9r5D"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '87' \
    --name 'BsSFDX4I' \
    --offset '15' \
    --orderby '0UNNMy8p' \
    --sortby 'LzUbmaSz' \
    --subtype 'IvhBxn3T' \
    --tags '["DwV86NgV", "BuFdLf96", "Gatt4d80"]' \
    --type '2nNTvrqt' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'dSrljxGM' \
    > test.out 2>&1
eval_tap $? 62 'PublicDownloadContentByShareCode' test.out

#- 63 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId '75dOfXfB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByContentID' test.out

#- 64 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId '3V8ubESm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'AddDownloadCount' test.out

#- 65 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'muyK1a1V' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateContentLikeStatus' test.out

#- 66 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'oeuxPjeR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'PublicDownloadContentPreview' test.out

#- 67 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 67 'GetTag' test.out

#- 68 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 68 'GetType' test.out

#- 69 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '93' \
    --orderby 'dHJap1RI' \
    --sortby 'nmqf0kWr' \
    > test.out 2>&1
eval_tap $? 69 'PublicSearchCreator' test.out

#- 70 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 70 'GetFollowedUsers' test.out

#- 71 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'HWloR8N6' \
    > test.out 2>&1
eval_tap $? 71 'PublicGetCreator' test.out

#- 72 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'saLKRdeB' \
    --limit '30' \
    --name 'yGtkcQrs' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 72 'GetChannels' test.out

#- 73 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'p4kI0xXM' \
    --body '{"name": "iIK7in16"}' \
    > test.out 2>&1
eval_tap $? 73 'PublicCreateChannel' test.out

#- 74 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'spg70LTH' \
    > test.out 2>&1
eval_tap $? 74 'DeleteAllUserChannel' test.out

#- 75 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'uMbGuBfB' \
    --namespace $AB_NAMESPACE \
    --userId 'IFHxDbGS' \
    --body '{"name": "Vwto2LD3"}' \
    > test.out 2>&1
eval_tap $? 75 'UpdateChannel' test.out

#- 76 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'wIEDFTv9' \
    --namespace $AB_NAMESPACE \
    --userId 'aQUBoHCe' \
    > test.out 2>&1
eval_tap $? 76 'DeleteChannel' test.out

#- 77 CreateContentDirect
eval_tap 0 77 'CreateContentDirect # SKIP deprecated' test.out

#- 78 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'NDmbX8qW' \
    --namespace $AB_NAMESPACE \
    --userId 'aQbSZRrx' \
    --body '{"contentType": "tEYB8Mc3", "customAttributes": {"Mkoioc3B": {}, "vzMOsrhL": {}, "JtT0WrFB": {}}, "fileExtension": "TH1Ai9fB", "name": "1G1USjvd", "preview": "8wb1uQox", "previewMetadata": {"previewContentType": "pHpVo2Uj", "previewFileExtension": "6BRt4K1K"}, "subType": "auGTnfPS", "tags": ["LqEE4CRB", "LBeBI0lR", "ILU1lXEc"], "type": "1fGvZC6t"}' \
    > test.out 2>&1
eval_tap $? 78 'CreateContentS3' test.out

#- 79 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'Q30FhZRz' \
    --contentId '8EufD2oS' \
    --namespace $AB_NAMESPACE \
    --userId 'yV2L2KWg' \
    --body '{"contentType": "dVT4Tv3S", "customAttributes": {"H3uR2Yxw": {}, "BSAkCand": {}, "HGlZ8zo2": {}}, "fileExtension": "g7r6Dx6m", "name": "9DYRnimP", "payload": "lHP8frY2", "preview": "rZ3eKCSb", "previewMetadata": {"previewContentType": "I5EjC7fj", "previewFileExtension": "HREBXoai"}, "subType": "3QbHIIXe", "tags": ["lenZqzHR", "W7zKK0wI", "O4PxNRaE"], "type": "vPWkLS7v", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 79 'UpdateContentS3' test.out

#- 80 UpdateContentDirect
eval_tap 0 80 'UpdateContentDirect # SKIP deprecated' test.out

#- 81 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'kFQGNGoR' \
    --contentId '3gdfAgkj' \
    --namespace $AB_NAMESPACE \
    --userId 'Oav4GXE4' \
    > test.out 2>&1
eval_tap $? 81 'DeleteContent' test.out

#- 82 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId '5WIGFgU5' \
    --limit '93' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 82 'PublicGetUserContent' test.out

#- 83 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'fB5QCHLO' \
    > test.out 2>&1
eval_tap $? 83 'DeleteAllUserContents' test.out

#- 84 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'B0PiLrBD' \
    --namespace $AB_NAMESPACE \
    --userId 'WQ5uZKbw' \
    --body '{"screenshots": [{"description": "sc1xuG1Y", "screenshotId": "9i9GWjB6"}, {"description": "EiuNsCvi", "screenshotId": "8zgNVykW"}, {"description": "iFM708Tb", "screenshotId": "THunIJJj"}]}' \
    > test.out 2>&1
eval_tap $? 84 'UpdateScreenshots' test.out

#- 85 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'Ef9DnPby' \
    --namespace $AB_NAMESPACE \
    --userId 'WCA1kl6T' \
    --body '{"screenshots": [{"contentType": "GwQfcKtc", "description": "ASL6vg6X", "fileExtension": "png"}, {"contentType": "Wm9W2vGo", "description": "l861v28j", "fileExtension": "bmp"}, {"contentType": "t6BfQR0s", "description": "0I2Hgcfk", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 85 'UploadContentScreenshot' test.out

#- 86 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'kdiLWfKh' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'cWgbjObk' \
    --userId '5aI9Sn4r' \
    > test.out 2>&1
eval_tap $? 86 'DeleteContentScreenshot' test.out

#- 87 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'cVobxQYG' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 87 'UpdateUserFollowStatus' test.out

#- 88 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId '44z3Z2UA' \
    --limit '33' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 88 'GetPublicFollowers' test.out

#- 89 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'TIpNiyE6' \
    --limit '45' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 89 'GetPublicFollowing' test.out

#- 90 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'f9KwlFqB' \
    --limit '69' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 90 'GetGroups' test.out

#- 91 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'pJ65D7tG' \
    --body '{"contents": ["diGNeC0O", "VhiYEBMe", "6IxhgAj4"], "name": "ikSv7DFs"}' \
    > test.out 2>&1
eval_tap $? 91 'CreateGroup' test.out

#- 92 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'c6HtWGHP' \
    > test.out 2>&1
eval_tap $? 92 'DeleteAllUserGroup' test.out

#- 93 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'MR75Fb6t' \
    --namespace $AB_NAMESPACE \
    --userId 'GoXnOrjf' \
    > test.out 2>&1
eval_tap $? 93 'GetGroup' test.out

#- 94 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'E8b0oWBP' \
    --namespace $AB_NAMESPACE \
    --userId 'JgKgRAfL' \
    --body '{"contents": ["vohQ6OJq", "O7aUspzc", "zfUGtxd3"], "name": "fS0Wmi6Z"}' \
    > test.out 2>&1
eval_tap $? 94 'UpdateGroup' test.out

#- 95 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'CL9DazRi' \
    --namespace $AB_NAMESPACE \
    --userId 'SlAhMKoJ' \
    > test.out 2>&1
eval_tap $? 95 'DeleteGroup' test.out

#- 96 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'l7xiRoZm' \
    --namespace $AB_NAMESPACE \
    --userId 'Zq6Gfw6L' \
    --limit '66' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 96 'GetGroupContent' test.out

#- 97 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'p42CljwS' \
    > test.out 2>&1
eval_tap $? 97 'DeleteAllUserStates' test.out


rm -f "tmp.dat"

exit $EXIT_CODE