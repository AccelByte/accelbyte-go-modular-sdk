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
    --limit '11' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "y1BuvJp8", "name": "IqaqNhdY"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'fJi9iVlk' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "3riWGtsR"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'NqzuU38v' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId '6nk7mkSE' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "1bQWZTMq", "customAttributes": {"RZC9ZHPu": {}, "7WxPGdfD": {}, "1GfuBw0f": {}}, "fileExtension": "821N5XeH", "name": "hdBdDOXk", "preview": "6CdhwVVj", "previewMetadata": {"previewContentType": "9y9UshdR", "previewFileExtension": "wf7JKlWz"}, "shareCode": "5lR5154r", "subType": "IkEyjtZv", "tags": ["RtcCNMsa", "Mkmpc8ZR", "UhY0nDVy"], "type": "4XcuF1St"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'dR7ydmUn' \
    --contentId 'edw9nsnP' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "KgnnYvRx", "customAttributes": {"88pzVfoK": {}, "Xss5D8JU": {}, "fNqZDArA": {}}, "fileExtension": "ptlO0vtm", "name": "frlwPPlL", "payload": "oC19Qcrc", "preview": "lSOF04l9", "previewMetadata": {"previewContentType": "RMN8Ks0c", "previewFileExtension": "LGrMZU0t"}, "shareCode": "IeBcfnAW", "subType": "vR2TzyrU", "tags": ["FA5113Hf", "ucWEKhlN", "JZQsbNgz"], "type": "sMKLbD8V", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'AUkxV0l6' \
    --namespace $AB_NAMESPACE \
    --creator 'Wc7TtFdq' \
    --ishidden 'iuCBDsjr' \
    --isofficial 'ppHjIiLw' \
    --limit '23' \
    --name 'A92SsM8H' \
    --offset '99' \
    --orderby 'z8GOI7gZ' \
    --sortby 'ZdSDv3W6' \
    --subtype 'aJ4t3zrB' \
    --tags '["8QZAE02K", "M8hFMAVV", "OQ19IPFP"]' \
    --type 'wfyQSodg' \
    --userId '8U5zm0ho' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'FcS1y58g' \
    --contentId 'RYoKc7hT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["1OIAzedn", "ZiUUEpo2", "ofyfYK57"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'pVljcfJy' \
    --ishidden 'BXmUNMIG' \
    --isofficial 'JAuLmHqy' \
    --limit '16' \
    --name 'DE0AqcEv' \
    --offset '9' \
    --orderby 'AMFpidYP' \
    --sortby 'KrzOyFJ0' \
    --subtype 'wQn6zRXK' \
    --tags '["AVAxLBvv", "pse5dK0z", "fHqMwGDJ"]' \
    --type 'vPfyHS12' \
    --userId 'lQsXoblD' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["NTbSMrzo", "GNVeRYhp", "ytjF020U"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'OWwpdUKF' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'rYg57WQU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'mEd2Ry6a' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'RF5MTJiA' \
    --namespace $AB_NAMESPACE \
    --versionId '9AYynieJ' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId '8gv91J28' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "Nbx1XLqG", "screenshotId": "EdALLdJG"}, {"description": "qA6oAmp1", "screenshotId": "Cc0FpIsT"}, {"description": "a5KIU6y9", "screenshotId": "VDyhb9sP"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'i1SBuGyd' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "tKAKWBCP", "description": "5ocI8Vq0", "fileExtension": "pjp"}, {"contentType": "8nLfdY5Q", "description": "z2PlENW6", "fileExtension": "jfif"}, {"contentType": "TUACTmRr", "description": "VHHOY6nx", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'DTvawnfa' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'DHAEJJtx' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'N3X0sz4C' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["48LNfycD", "WBHEDdIB", "ilTGZ0od"], "name": "PChszemV"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'QwvFB9Mv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId '1BXHqbqm' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["lIWgYFVh", "qMzgkIW0", "ZlW0E1qd"], "name": "1ZOy59Wy"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'yd37KsJd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'sNA5dK1s' \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "aRCKnewr"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'R8nbbn36' \
    --body '{"tag": "jOBvYrPF"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'z695e11k' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["EOdS59do", "wv0q5nrd", "XmBEDN7v"], "type": "XGUUEhyE"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'G90Kk0Qc' \
    --body '{"subtype": ["SA8zI11k", "1uj5ljjX", "7AO7pUJn"], "type": "gEZWSs6O"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'DBuQmpNM' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'srsNp4lU' \
    --limit '6' \
    --name 'aX9iH4S3' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'D2dMnE5V' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'bFKkiTt2' \
    --namespace $AB_NAMESPACE \
    --userId 'dAakEnLg' \
    --body '{"name": "AIZqZuXb"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId '26EqSv4N' \
    --namespace $AB_NAMESPACE \
    --userId 'DJO8QeCm' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'CkdLa7z4' \
    --namespace $AB_NAMESPACE \
    --shareCode 'jrwG08SS' \
    --userId '7Ai2C8B5' \
    --body '{"contentType": "TRbGhr1Z", "customAttributes": {"fYqRbfSi": {}, "xD9cHKVk": {}, "Np2vQHeT": {}}, "fileExtension": "332R9o3n", "name": "6oeP1sM9", "payload": "s4N6euqt", "preview": "XPEKUu8J", "previewMetadata": {"previewContentType": "R9jPjMhS", "previewFileExtension": "6WQOmBnN"}, "shareCode": "oijYVVzr", "subType": "n4AXRDE3", "tags": ["8UDWZwiM", "cuazGBWJ", "FWPgp4vF"], "type": "05jDYcEr", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'JgSuLedU' \
    --contentId 'R0o0kknn' \
    --namespace $AB_NAMESPACE \
    --userId 'uKksbLAn' \
    --body '{"contentType": "rdFjJAbs", "customAttributes": {"aBCqkk4Z": {}, "rlj11o4p": {}, "oMO3YcB2": {}}, "fileExtension": "QPAHFTsQ", "name": "RzZgUPRD", "payload": "iYnmUlop", "preview": "DA0ma2yV", "previewMetadata": {"previewContentType": "g1FsfZOe", "previewFileExtension": "hs306aK2"}, "shareCode": "7hZauOW2", "subType": "ylpqYT3x", "tags": ["yxSvSPpl", "hh7U9tUI", "sWNGS1iO"], "type": "p9SNSO51", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId '8ofKyjxf' \
    --namespace $AB_NAMESPACE \
    --shareCode 'mhYnP6aW' \
    --userId 'VFYYLKSH' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId '3k4LtlR9' \
    --contentId 'uO05Rsrs' \
    --namespace $AB_NAMESPACE \
    --userId 'YzDOvYli' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId '11pt1z6a' \
    --limit '93' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId '7ycmaOxV' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'uKni9ohG' \
    --namespace $AB_NAMESPACE \
    --userId 'MtzQun2K' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId '361LyTpm' \
    --limit '56' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'HtLMrVYL' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'OOAMDPXz' \
    --namespace $AB_NAMESPACE \
    --userId 'mxF1ANG1' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'Y2ZdNvgQ' \
    --namespace $AB_NAMESPACE \
    --userId 'wQV5OR1d' \
    --body '{"contents": ["4GwVBpF7", "xdzF4sFU", "zewUulhb"], "name": "2QKnxcQ2"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'FWRlVMJH' \
    --namespace $AB_NAMESPACE \
    --userId 'XDDftzd5' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'XZdvCiIW' \
    --namespace $AB_NAMESPACE \
    --userId 'IkFCOb5u' \
    --limit '86' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId '4Up4ggXp' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'JhVDYhwU' \
    --namespace $AB_NAMESPACE \
    --creator 'SqBnpaRw' \
    --ishidden '6Dbk2mAO' \
    --isofficial 'GnS5rJFm' \
    --limit '71' \
    --name 'b02eZ8P4' \
    --offset '78' \
    --orderby 'J16saK2t' \
    --sortby 'gN7hvqsT' \
    --subtype 'TGYbcOF3' \
    --tags '["cZdXOjPX", "mgs0whXq", "q0nC2rFh"]' \
    --type 'oh9ziv7o' \
    --userId 'uXiN4AqP' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator '5rNF8Wxv' \
    --ishidden 'zYW1Fe9e' \
    --isofficial 'EVGt09h8' \
    --limit '52' \
    --name 'WJvI9H7r' \
    --offset '57' \
    --orderby 'shlf0Nn5' \
    --sortby 'HZEn0Mrf' \
    --subtype 'vmHHPHn4' \
    --tags '["ZMXhV9o6", "2hpAXvn8", "0kJN4K6T"]' \
    --type '5CDjv0y9' \
    --userId 'bQSMj5nu' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["5GfsEKIU", "iismjDoG", "fP0ayGCS"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '6' \
    --name 'TPUrJ3Kb' \
    --offset '66' \
    --orderby 'LrAHnjwx' \
    --sortby 'f6zHjn2M' \
    --subtype 'lSRxcj5e' \
    --tags '["J7SzZVM0", "W7v1eC8p", "TSOt2Q0a"]' \
    --type 'Hr9MPXXl' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["zMyBPUZv", "JZfJm0IA", "PBQkTnvY"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'noUw151o' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 't5wmD646' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'N7A7ICze' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'cvPSysfj' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId '2fRVdMoC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '77' \
    --orderby 'YC7CUcUP' \
    --sortby 'SQ8joskH' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'VO2EoB72' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'JprGphFq' \
    --limit '16' \
    --name 'rs9V2oLR' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'vV32opcr' \
    --body '{"name": "rwoF28j0"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'd9WwrHZO' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId '7jMoXdH9' \
    --namespace $AB_NAMESPACE \
    --userId 'x98T66jE' \
    --body '{"name": "Tc5rgWpM"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId '5NJ502fW' \
    --namespace $AB_NAMESPACE \
    --userId 'thyWezf9' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'VKuNIXZx' \
    --namespace $AB_NAMESPACE \
    --userId 'x9mkVqva' \
    --body '{"contentType": "ILe62Q0z", "customAttributes": {"WBvrnT5E": {}, "42Yx3bJ3": {}, "D4J6ssTS": {}}, "fileExtension": "ml3sbJin", "name": "LVrwSxXZ", "preview": "ddAs0y8U", "previewMetadata": {"previewContentType": "wlQnsE3N", "previewFileExtension": "sZBd98zf"}, "subType": "WcrZXT6W", "tags": ["jeIp0JYz", "hYPbpc9I", "j6Z1wbYw"], "type": "NA7Dcz1b"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'IDCCwVue' \
    --namespace $AB_NAMESPACE \
    --shareCode 'YhgSe66b' \
    --userId 'lV7XUMFg' \
    --body '{"contentType": "Qjr7u3P9", "customAttributes": {"0gFR2fgT": {}, "VeeSIJR0": {}, "uls8P7TI": {}}, "fileExtension": "t69NKLw8", "name": "4nIUohrQ", "payload": "bglynBzv", "preview": "84RdoH6P", "previewMetadata": {"previewContentType": "wYl3wSfF", "previewFileExtension": "8FTwuzTx"}, "subType": "rCStDNNB", "tags": ["B1XuEHa6", "IpJwGJY3", "3wYws4wW"], "type": "MG4SAh66", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 't4ZtbxlO' \
    --contentId 'ry7rAEB4' \
    --namespace $AB_NAMESPACE \
    --userId 'LAagXTMt' \
    --body '{"contentType": "UzqyYqJQ", "customAttributes": {"HXFZOzNc": {}, "bOMN4AZm": {}, "zzt54um6": {}}, "fileExtension": "pd52okEd", "name": "gc9Nl7ib", "payload": "qT8e0yiB", "preview": "luWGREyO", "previewMetadata": {"previewContentType": "bbvgzj67", "previewFileExtension": "jUmfU97F"}, "subType": "HvGDV0Jg", "tags": ["p3OXEGOf", "80NGiiyc", "aizCxbnP"], "type": "96Njp9yv", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId '6XE8LOmB' \
    --namespace $AB_NAMESPACE \
    --shareCode 'Ujstok0W' \
    --userId 'wJBsnxFU' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'GYSRQ45S' \
    --contentId '5W5zRmCB' \
    --namespace $AB_NAMESPACE \
    --userId '7GP9EIcL' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'mqxAncsY' \
    --contentId 'FZyUHG8y' \
    --namespace $AB_NAMESPACE \
    --userId 'vCtCVHYh' \
    --body '{"shareCode": "4gFwlaS4"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId '5Sejb5Vi' \
    --limit '4' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'Pj66CcSA' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'sATXoXZE' \
    --namespace $AB_NAMESPACE \
    --userId 'cJeBMrt1' \
    --body '{"screenshots": [{"description": "JNtM5kEu", "screenshotId": "9cLTohtu"}, {"description": "uzQc3SV2", "screenshotId": "2gC3exzw"}, {"description": "oq4oDLS5", "screenshotId": "KN1pxosZ"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'OpQDDETX' \
    --namespace $AB_NAMESPACE \
    --userId 'WVdtRBVH' \
    --body '{"screenshots": [{"contentType": "SvYbVTrP", "description": "tcLfcpa9", "fileExtension": "bmp"}, {"contentType": "AHWysR5U", "description": "FnRXoRBC", "fileExtension": "bmp"}, {"contentType": "c6COq7rx", "description": "zgIE2chf", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'LB0kGyCz' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'oyGODQVs' \
    --userId '1sFH1yPh' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'FcDg7pVX' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'd7EPM37o' \
    --limit '69' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'Tl7PwGB8' \
    --limit '70' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'olkPFtwb' \
    --limit '16' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId '4yKhvja4' \
    --body '{"contents": ["YJIY79eY", "kANe5D0d", "c3Rf0QY6"], "name": "zg2pK00N"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'CCfhWc2w' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId '2i89KW2q' \
    --namespace $AB_NAMESPACE \
    --userId 'jjOSZnGf' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'v8RnLbL9' \
    --namespace $AB_NAMESPACE \
    --userId 'H0yGr1Ij' \
    --body '{"contents": ["28JKcDPI", "SQIjQtfm", "fOlaPhLI"], "name": "NDhVyyrJ"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'cABoiMrE' \
    --namespace $AB_NAMESPACE \
    --userId 'PTBaGdAF' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'DyKdC4fb' \
    --namespace $AB_NAMESPACE \
    --userId 'OLIhFmrh' \
    --limit '57' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'Gw4BqrS3' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'oW22H06Z' \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --name 'kU6Ef1o1' \
    --offset '44' \
    --sortBy '7745oUJ7' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'FFA3m25f' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "CrSUK0Bj", "customAttributes": {"THZb3aEj": {}, "rLsukxTI": {}, "oxG1zPkL": {}}, "fileExtension": "2EAyRdVz", "name": "SgnUKMI5", "shareCode": "AEy42mLB", "subType": "dl0s4VTj", "tags": ["0ylx8Z7Y", "ugrJin6g", "aoxfKTQo"], "type": "f8HRwybg"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'xObtFE1X' \
    --contentId 'duyEwzBX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'ANAIJL1i' \
    --contentId 'Zfd8U51M' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"BuT84thC": {}, "UjeCY2ci": {}, "oPkFBB0g": {}}, "name": "iHUWp2FS", "shareCode": "CsWuDYHW", "subType": "aQaYqGGL", "tags": ["gsLz9Fyq", "TZNIPKek", "v9x1bY1E"], "type": "a8Jb9Xzw"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminCopyContent
samples/cli/sample-apps Ugc adminCopyContent \
    --channelId 'S3GxOb6d' \
    --contentId 'zBEvmImw' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"xA8njKL3": {}, "cQvlSXAD": {}, "sa5JYi8G": {}}, "name": "FJTWZ0nm", "subType": "VbhqDYVV", "tags": ["JxYjRVeW", "cXvv2Bf1", "6A6QZ9S6"], "targetChannelId": "86aqthHL", "type": "QrFDXjxR"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminCopyContent' test.out

#- 107 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'GvlDcnEu' \
    --contentId 'MHrVaqxc' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "KxMTHhDX", "fileLocation": "oFMcW742"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminUpdateOfficialContentFileLocation' test.out

#- 108 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'cLInqmhT' \
    --contentId 'oCkuZekm' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "J5kUEgKq", "fileExtension": "1cYWgDuG"}' \
    > test.out 2>&1
eval_tap $? 108 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 109 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 109 'AdminGetConfigs' test.out

#- 110 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key 'CVcMGReo' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "1pb1qvm4"}' \
    > test.out 2>&1
eval_tap $? 110 'AdminUpdateConfig' test.out

#- 111 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '61' \
    --name 'Mbc1Q11A' \
    --offset '45' \
    --sortBy 'qR11OISN' \
    --subType 'OeBSdkTP' \
    --tags '["w6fkDCLu", "9LUY23wm", "RZtGzAv3"]' \
    --type 'Jqf8uR2n' \
    > test.out 2>&1
eval_tap $? 111 'AdminListContentV2' test.out

#- 112 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["ddA61eRy", "0lFO2jxA", "bWIp4mG8"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminBulkGetContentByIDsV2' test.out

#- 113 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["UZm09Ffu", "1raRzPNL", "kBAynaRx"]}' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentBulkByShareCodesV2' test.out

#- 114 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'EdYDsnxM' \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByShareCodeV2' test.out

#- 115 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 'DFXQ4gdS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'AdminGetContentByContentIDV2' test.out

#- 116 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'f08YAHyL' \
    --namespace $AB_NAMESPACE \
    --versionId 'Dql8VAK7' \
    > test.out 2>&1
eval_tap $? 116 'RollbackContentVersionV2' test.out

#- 117 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'NDZLgaDV' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "36SyYXkZ", "screenshotId": "qAaipqSL"}, {"description": "9QAHix0H", "screenshotId": "yAx8ChsV"}, {"description": "KFPE4ncf", "screenshotId": "yyW8ujAu"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateScreenshotsV2' test.out

#- 118 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 'cKaUUJfR' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "h18bLGS3", "description": "nJGbBk2H", "fileExtension": "jpeg"}, {"contentType": "dJovebCK", "description": "OmU4S3ib", "fileExtension": "jfif"}, {"contentType": "2njhJ3mS", "description": "Dw0sFnd2", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 118 'AdminUploadContentScreenshotV2' test.out

#- 119 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'y1mHiioK' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'RV7y6ijf' \
    > test.out 2>&1
eval_tap $? 119 'AdminDeleteContentScreenshotV2' test.out

#- 120 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'fXwmVFD5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 120 'ListContentVersionsV2' test.out

#- 121 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'wJvpoHH3' \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 121 'AdminGetOfficialGroupContentsV2' test.out

#- 122 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '97' \
    --sortBy 'H9TsDLcB' \
    --status 'SeZ3MCjc' \
    > test.out 2>&1
eval_tap $? 122 'AdminListStagingContents' test.out

#- 123 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId 'pwpSKxVk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminGetStagingContentByID' test.out

#- 124 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId '79pXs1dL' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": false, "note": "p8LugK0D"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminApproveStagingContent' test.out

#- 125 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'HcGwhjwJ' \
    --namespace $AB_NAMESPACE \
    --shareCode 'FytsR5ol' \
    --userId 'sNN25qVG' \
    --body '{"customAttributes": {"svIs69GQ": {}, "D7jDwtu8": {}, "UhwuRgH2": {}}, "name": "pM5R9KTt", "shareCode": "KusKIzMt", "subType": "JSqoKL7Q", "tags": ["eMl14KPN", "4ZheexHz", "VZ4QxaSl"], "type": "MAV3bFSg"}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateContentByShareCodeV2' test.out

#- 126 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'oWuc8dqZ' \
    --namespace $AB_NAMESPACE \
    --shareCode 'UnDmpKNC' \
    --userId 'KvLhj9zi' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteContentByShareCodeV2' test.out

#- 127 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId '9Njjf18M' \
    --contentId 'deldYwIH' \
    --namespace $AB_NAMESPACE \
    --userId '7YtKD33o' \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteUserContentV2' test.out

#- 128 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'Ju0a9A7H' \
    --contentId 'eSYJYe79' \
    --namespace $AB_NAMESPACE \
    --userId 'PIBOUlT9' \
    --body '{"customAttributes": {"VW8KXfDB": {}, "He9KqgMf": {}, "iTsGVpwl": {}}, "name": "6G81yTgw", "shareCode": "U73Lm7xh", "subType": "lo4qHUTr", "tags": ["4pgb6azj", "tVGUciAt", "deDqfqcg"], "type": "zmOFUIPj"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentV2' test.out

#- 129 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'hwo4IR27' \
    --contentId '14TRkRBb' \
    --namespace $AB_NAMESPACE \
    --userId 'iuYgZS9f' \
    --body '{"fileExtension": "gX4LJKGF", "fileLocation": "HO5UCC4o"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateUserContentFileLocation' test.out

#- 130 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'IMrzcLyH' \
    --contentId 'Z3Cb0Hwg' \
    --namespace $AB_NAMESPACE \
    --userId '8BODJipi' \
    --body '{"contentType": "ctTXbpZF", "fileExtension": "3osIzndR"}' \
    > test.out 2>&1
eval_tap $? 130 'AdminGenerateUserContentUploadURLV2' test.out

#- 131 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'CBUqhjDK' \
    --limit '25' \
    --offset '54' \
    --sortBy 'pPYQJ6MF' \
    > test.out 2>&1
eval_tap $? 131 'AdminGetContentByUserIDV2' test.out

#- 132 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'ngWJiUDD' \
    --namespace $AB_NAMESPACE \
    --userId '8DCuA5ND' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 132 'AdminUpdateContentHideStatusV2' test.out

#- 133 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'a01V8Lon' \
    --namespace $AB_NAMESPACE \
    --userId 'mrttoqVt' \
    --limit '97' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 133 'AdminGetUserGroupContentsV2' test.out

#- 134 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId '9CEgMJgA' \
    --limit '10' \
    --offset '42' \
    --sortBy 'ri95fBrj' \
    --status '5L67nHzc' \
    > test.out 2>&1
eval_tap $? 134 'AdminListUserStagingContents' test.out

#- 135 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'Gfl3nIGF' \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --name 'ULPi0rIX' \
    --offset '21' \
    --sortBy 'twRWQ4Eb' \
    > test.out 2>&1
eval_tap $? 135 'PublicGetContentByChannelIDV2' test.out

#- 136 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '8' \
    --name 'WOk5mvaD' \
    --offset '46' \
    --sortBy '2QIroO9m' \
    --subType 'qUbXwsRX' \
    --tags '["6ujlggxc", "UDrL3CiS", "PPH34CYI"]' \
    --type 'g1hSuEB1' \
    > test.out 2>&1
eval_tap $? 136 'PublicListContentV2' test.out

#- 137 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["yP8BbR64", "RADDF0cz", "2H6Aon6e"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicBulkGetContentByIDV2' test.out

#- 138 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["kwVSPeJT", "7O0fzy1O", "n75Lrt47"]}' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentBulkByShareCodesV2' test.out

#- 139 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'FD1N3JFa' \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByShareCodeV2' test.out

#- 140 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'rZetl7DK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicGetContentByIDV2' test.out

#- 141 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'JrQriLfZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 141 'PublicAddDownloadCountV2' test.out

#- 142 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'yUN6SXaz' \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '73' \
    --sortBy 'pLBhrHgQ' \
    --userId 'B67OkmNE' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentDownloaderV2' test.out

#- 143 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'hHn0LJYp' \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '94' \
    --sortBy 'cOjDI1VV' \
    > test.out 2>&1
eval_tap $? 143 'PublicListContentLikeV2' test.out

#- 144 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId '3Ovvcvsm' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateContentLikeStatusV2' test.out

#- 145 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'pYLSs3uH' \
    --namespace $AB_NAMESPACE \
    --userId 'VVoJJWmJ' \
    --body '{"contentType": "Yol6y9eW", "customAttributes": {"hJLT0wFS": {}, "8Pxw1jMQ": {}, "opY2K5GV": {}}, "fileExtension": "uMf20Oby", "name": "qEnfmRCI", "subType": "z2QKzyum", "tags": ["VstHAZWd", "wAe0tslL", "sQpF65hY"], "type": "LHNZ66Ii"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicCreateContentV2' test.out

#- 146 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'ykSJxkE2' \
    --namespace $AB_NAMESPACE \
    --shareCode 'DqQxudvz' \
    --userId 'VFyiyvlL' \
    --body '{"customAttributes": {"dD0IUBui": {}, "sbUhxOKP": {}, "9fSia5dc": {}}, "name": "auJCHVd1", "subType": "wgnB4B2q", "tags": ["TNzN1toK", "Hy1IcgSd", "lMIhwKQY"], "type": "3nLPJk43"}' \
    > test.out 2>&1
eval_tap $? 146 'PublicUpdateContentByShareCodeV2' test.out

#- 147 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId '12ku9VAa' \
    --namespace $AB_NAMESPACE \
    --shareCode 'GO18v7DP' \
    --userId 'VRwx11eb' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentByShareCodeV2' test.out

#- 148 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId '7wCNaw0e' \
    --contentId 'dyM3zjHS' \
    --namespace $AB_NAMESPACE \
    --userId 'HHwUcOk7' \
    > test.out 2>&1
eval_tap $? 148 'PublicDeleteContentV2' test.out

#- 149 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'oc5XYkLr' \
    --contentId 'Z0Zbs9Ps' \
    --namespace $AB_NAMESPACE \
    --userId 'ZQaYzYNn' \
    --body '{"customAttributes": {"GemBiNEl": {}, "xgX3rdzF": {}, "jRZQ6qFU": {}}, "name": "ncv3KdTe", "subType": "bMscLW75", "tags": ["cFf2wG0A", "sHtygX0t", "u954LwEZ"], "type": "6LunT9nG"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentV2' test.out

#- 150 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId '6qA3Q5R2' \
    --contentId 'fr8Hwmbd' \
    --namespace $AB_NAMESPACE \
    --userId 'GdloRee0' \
    --body '{"fileExtension": "cFwgjqau", "fileLocation": "NkGZWTQ6"}' \
    > test.out 2>&1
eval_tap $? 150 'PublicUpdateContentFileLocation' test.out

#- 151 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId '4AvcXL71' \
    --contentId 'bdm8tcsL' \
    --namespace $AB_NAMESPACE \
    --userId 'oAFM4tai' \
    --body '{"shareCode": "xj7kl0SX"}' \
    > test.out 2>&1
eval_tap $? 151 'UpdateContentShareCodeV2' test.out

#- 152 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'JGEPF6Qk' \
    --contentId 'BmIt8Uux' \
    --namespace $AB_NAMESPACE \
    --userId 'wxjZ86UG' \
    --body '{"contentType": "zpsPHzDm", "fileExtension": "fOGZfNOT"}' \
    > test.out 2>&1
eval_tap $? 152 'PublicGenerateContentUploadURLV2' test.out

#- 153 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'RvJvPCPP' \
    --limit '43' \
    --offset '63' \
    --sortBy 'vYPczdfu' \
    > test.out 2>&1
eval_tap $? 153 'PublicGetContentByUserIDV2' test.out

#- 154 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'aSRsSYoO' \
    --namespace $AB_NAMESPACE \
    --userId '52koGfbz' \
    --body '{"screenshots": [{"description": "tRH2h7CO", "screenshotId": "iR29cRiz"}, {"description": "G17Sx5gq", "screenshotId": "wiNlorZW"}, {"description": "rJXsMQp3", "screenshotId": "WhmCugcz"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UpdateScreenshotsV2' test.out

#- 155 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'YWpGTvQr' \
    --namespace $AB_NAMESPACE \
    --userId 'GmRagiNr' \
    --body '{"screenshots": [{"contentType": "2XOgke8I", "description": "L0CyzACS", "fileExtension": "jpeg"}, {"contentType": "yC8ap3s5", "description": "cDewyW0N", "fileExtension": "jpeg"}, {"contentType": "6nJneqlK", "description": "ref6CQIm", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 155 'UploadContentScreenshotV2' test.out

#- 156 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'PH80Y7If' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'bWACVqAk' \
    --userId 'Ot1EZbtX' \
    > test.out 2>&1
eval_tap $? 156 'DeleteContentScreenshotV2' test.out

#- 157 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'monzT2cE' \
    --namespace $AB_NAMESPACE \
    --userId 'LPAnxz47' \
    --limit '81' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 157 'PublicGetGroupContentsV2' test.out

#- 158 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'iHYuL4WM' \
    --limit '27' \
    --offset '93' \
    --sortBy 'Rc1drOPT' \
    --status 'kUo2cc7L' \
    > test.out 2>&1
eval_tap $? 158 'ListUserStagingContents' test.out

#- 159 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId 'WFPF3Xo9' \
    --namespace $AB_NAMESPACE \
    --userId '3Xi9yGFu' \
    > test.out 2>&1
eval_tap $? 159 'GetUserStagingContentByID' test.out

#- 160 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId 'XCkxBn50' \
    --namespace $AB_NAMESPACE \
    --userId 'OYznmfrE' \
    --body '{"fileExtension": "dCSwEUfe", "fileLocation": "7N0RwlLA"}' \
    > test.out 2>&1
eval_tap $? 160 'UpdateStagingContent' test.out

#- 161 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId 'XpurYE1U' \
    --namespace $AB_NAMESPACE \
    --userId 'Cj1juBNa' \
    > test.out 2>&1
eval_tap $? 161 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE