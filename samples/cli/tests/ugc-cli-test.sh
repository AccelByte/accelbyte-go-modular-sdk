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
    --limit '89' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "C7v1sU83", "name": "ALxaFcAN"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId '3ntyqszz' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "qi106HBf"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'MMbKil2n' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'g4YIbPrm' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "ha5Uewje", "customAttributes": {"lHSrKzGt": {}, "8LKc34c7": {}, "8LvX05y0": {}}, "fileExtension": "0n7xWKSO", "name": "RLPQsRX6", "preview": "IJirqYfz", "previewMetadata": {"previewContentType": "xyzMRaxl", "previewFileExtension": "d10x3ePJ"}, "shareCode": "McZHOgBl", "subType": "j4RtzxvB", "tags": ["FAYsli59", "ssjNFKod", "7YXDIZYE"], "type": "7JN8tHiJ"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'yqKITjyo' \
    --contentId 'K1tyJpNO' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "o69vqI6M", "customAttributes": {"tvxAL9N7": {}, "E7dJ9tE6": {}, "i7HSjRuy": {}}, "fileExtension": "eub4uoet", "name": "w5RwUcuq", "payload": "GgcPw62m", "preview": "3yYqLJBE", "previewMetadata": {"previewContentType": "EG0lGMNV", "previewFileExtension": "zLQsHg81"}, "shareCode": "F8YP6blf", "subType": "ACDhUEbY", "tags": ["yrM3Ma1u", "l9YPbLx6", "1vYynoqj"], "type": "pmGDVgVi", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId '2Ib2WyvJ' \
    --namespace $AB_NAMESPACE \
    --creator 'z3ypnuQJ' \
    --ishidden 'kCesvAmd' \
    --isofficial 'JKps7IyH' \
    --limit '16' \
    --name 'fPmWnxHQ' \
    --offset '77' \
    --orderby '8cA1gMSB' \
    --sortby 'nIIdzTms' \
    --subtype 'STpDZG0e' \
    --tags '["xBSVPSY9", "xhojy5ye", "1PsbH6Fv"]' \
    --type '2bxu890X' \
    --userId 'wDJilSqF' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'RS1n6a0h' \
    --contentId 'SLdfx4kU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["fGsTY1ur", "FpU9Ob2U", "F0eTYZqP"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'lO6Tvzrq' \
    --ishidden 'Z4of82ky' \
    --isofficial 'gQkaZD0M' \
    --limit '84' \
    --name '3MYqub6q' \
    --offset '76' \
    --orderby '1nY5DTts' \
    --sortby 'BAhdQysU' \
    --subtype 'r8MitXDE' \
    --tags '["CpF2yMsZ", "T4dSuQzx", "3Rr9Sxjc"]' \
    --type 'KxC49QY8' \
    --userId 'VVJNZYRi' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["gm2Qp4pz", "TNUgoQDk", "5ULseDcJ"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'ybAyGzFk' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'nzZ2IIfO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'ZCGj4sj5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'v3GiXdoQ' \
    --namespace $AB_NAMESPACE \
    --versionId 'eYNJokDg' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'SFehwFz4' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "aYH8Ehgv", "screenshotId": "MWXiWXza"}, {"description": "n25nLo0Q", "screenshotId": "ZoDfI857"}, {"description": "Vu6dwNuE", "screenshotId": "DsasTl0X"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId '2efBzwXf' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "mZ0ZWzdx", "description": "qxrgyI4b", "fileExtension": "png"}, {"contentType": "9BsuPTsE", "description": "STkK0ohK", "fileExtension": "jpg"}, {"contentType": "rz8YVh43", "description": "cZADUfry", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'eTlgUUZD' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'MulfKRLf' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'BpmaVTCN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["4c9weqsy", "h5ePwKMM", "N3qXxcLr"], "name": "q8L3Hb6x"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'BKuxFMLB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'Wpz3q8dL' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["0WFKArU1", "MW9GH2Ls", "HP6HaLDW"], "name": "O9Lf1CT4"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'sIJXTVy5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'P6q1Yooi' \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "3vAnjcCC"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'TaMyWkbd' \
    --body '{"tag": "nJloQIaE"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'YPk5YUPS' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["K8MlPR9n", "5AE1gZjG", "fHlY9bSy"], "type": "igyjfSw6"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'kXJOISqo' \
    --body '{"subtype": ["VYEGl39e", "pQfQPcac", "KJYSQzyD"], "type": "7AGHg9iP"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'glfDePDf' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'JV5sYEzF' \
    --limit '42' \
    --name 'l1mgESJG' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'D7zEicbh' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'DSEkFbwX' \
    --namespace $AB_NAMESPACE \
    --userId 'g8BDqlWt' \
    --body '{"name": "IGwu0GhE"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'YSt8SbCX' \
    --namespace $AB_NAMESPACE \
    --userId 'cKhJuIpI' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'tJb01dAU' \
    --namespace $AB_NAMESPACE \
    --shareCode 'DYMynfJj' \
    --userId 'j2Tc7Erm' \
    --body '{"contentType": "pNXrJpKk", "customAttributes": {"uZmiu3HF": {}, "jiZAPHLv": {}, "jl2ERITH": {}}, "fileExtension": "67gFVj4M", "name": "oJFm6fTo", "payload": "18UWcgew", "preview": "fGrcvhvU", "previewMetadata": {"previewContentType": "Ou5krQyX", "previewFileExtension": "cTMFzTvh"}, "shareCode": "aaYtgHZc", "subType": "y4H073Lt", "tags": ["tOwmDMlC", "4xhrEPj9", "jNppJB3F"], "type": "42w6XbU6", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'GC5FUP6A' \
    --contentId 'FnKSLTyo' \
    --namespace $AB_NAMESPACE \
    --userId 'OjfWyfbO' \
    --body '{"contentType": "R2FIXMYS", "customAttributes": {"A16jjbVW": {}, "ajabybV1": {}, "LeCXvUPm": {}}, "fileExtension": "iBYRjpPZ", "name": "yAlUlnft", "payload": "1WKT5Ni4", "preview": "kNyY0k4z", "previewMetadata": {"previewContentType": "OSDvcZp2", "previewFileExtension": "L6TrmkpD"}, "shareCode": "78ti18cJ", "subType": "YHmT1zdc", "tags": ["PmUFXuoh", "24VRtbta", "5xFjeNUs"], "type": "TWK4Jswa", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'HyYSurgw' \
    --namespace $AB_NAMESPACE \
    --shareCode 'akteHQ01' \
    --userId 'ELlBQtSr' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'peaEc3TS' \
    --contentId 'gqwwjDT9' \
    --namespace $AB_NAMESPACE \
    --userId 'CbLn2Uyt' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId '6dWQSWXq' \
    --limit '98' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'I2EGR9ZB' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'Cbe6QTkC' \
    --namespace $AB_NAMESPACE \
    --userId 'mXyrmp97' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'wTJa6DYV' \
    --limit '23' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'FvbfbYwm' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'ykwsOE88' \
    --namespace $AB_NAMESPACE \
    --userId 'CKSBzmax' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'AwnTzTbd' \
    --namespace $AB_NAMESPACE \
    --userId 'SGMKq6u7' \
    --body '{"contents": ["awgS6XIN", "3T8uMKWq", "5LNBxUlA"], "name": "S0DzipfR"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId '5F7IUw1s' \
    --namespace $AB_NAMESPACE \
    --userId 'G8WqMjgb' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'NJ3b9WQD' \
    --namespace $AB_NAMESPACE \
    --userId 'A6MR7PhU' \
    --limit '74' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'F1J1Fd2v' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'N1YBNWDl' \
    --namespace $AB_NAMESPACE \
    --creator 'ODLGk0M9' \
    --ishidden 'xcPiy92s' \
    --isofficial 'sUXEVzL7' \
    --limit '10' \
    --name 'dhqYv7XM' \
    --offset '40' \
    --orderby '1CbH6HzU' \
    --sortby 'zH4L0q7n' \
    --subtype 'kA3pmEWc' \
    --tags '["bmM8KzLV", "HtjymBsp", "2L0wWOzE"]' \
    --type 'NLmgMYo3' \
    --userId 'eK6GYLRI' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'YQsOzYGU' \
    --ishidden 'BDkkdHi7' \
    --isofficial '3FlT6EH5' \
    --limit '90' \
    --name 'nLK71He9' \
    --offset '55' \
    --orderby 'NvwIzHzz' \
    --sortby 'JcToFTYK' \
    --subtype 'YVahQDCN' \
    --tags '["p4DCtlYx", "y7jKyXiU", "u3gYe0XN"]' \
    --type 'VFdbxOV1' \
    --userId 'GMgoVlk8' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["VfjM3xQA", "fLDG0fDq", "Gcm2pdWu"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '100' \
    --name 'PlPUMwtr' \
    --offset '92' \
    --orderby 'tG8EBljX' \
    --sortby 'LSA9Dp1z' \
    --subtype 'NztyL4i0' \
    --tags '["TddnrKN2", "76UvcNAa", "RtQUkuTQ"]' \
    --type '2UWAGapW' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["bkBgfjnV", "A1sW58dB", "RTUDMgkk"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'hZD4NnGS' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'uA25QwdB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'rmDkbiPL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'OWEgg6kQ' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'wUHY87bn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '65' \
    --orderby 'p3AimkS6' \
    --sortby 'lA0HrnNr' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'hREu6ioK' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId '9HHChF7G' \
    --limit '14' \
    --name 'zTsorvAK' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'SfEtFXBX' \
    --body '{"name": "mPmB6kib"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'FwqCFyRn' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'yX2e7S7A' \
    --namespace $AB_NAMESPACE \
    --userId 'uRseScbq' \
    --body '{"name": "kS7JvSTY"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'zCSL1sLd' \
    --namespace $AB_NAMESPACE \
    --userId 'GGwk0xp9' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'M1cLJZds' \
    --namespace $AB_NAMESPACE \
    --userId 'qBLSsNzb' \
    --body '{"contentType": "JBWC2N4c", "customAttributes": {"tuEKHAd1": {}, "YSdiU4NY": {}, "9h3QGsvy": {}}, "fileExtension": "GDlQVYXN", "name": "2qwjHYaC", "preview": "h9ddwqlM", "previewMetadata": {"previewContentType": "aVurw8Hg", "previewFileExtension": "aqTs9meK"}, "subType": "bBbLb5ox", "tags": ["50C0kXuI", "qJdJzbX4", "XQu9jz5D"], "type": "cobdXftG"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId '3KCx668C' \
    --namespace $AB_NAMESPACE \
    --shareCode 'brWt3iHI' \
    --userId 'U4rnPFOQ' \
    --body '{"contentType": "pynQhFEt", "customAttributes": {"PDNMivul": {}, "MvKCztbL": {}, "mBo7EcwL": {}}, "fileExtension": "0HviLhNZ", "name": "pb7kAaR8", "payload": "iCtDjm3B", "preview": "AWgm4dQd", "previewMetadata": {"previewContentType": "iDi8Yf3W", "previewFileExtension": "FKeb2o9m"}, "subType": "tOqaSyUt", "tags": ["5kc2W4ai", "DyPkkaFc", "PVKh2dmC"], "type": "B91r3g1j", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'gtB6mMoa' \
    --contentId 'Oz9DCCg5' \
    --namespace $AB_NAMESPACE \
    --userId 'RPV8vnP4' \
    --body '{"contentType": "vfKlCZpz", "customAttributes": {"6EBXAvex": {}, "yot3JDdk": {}, "X86B2g6w": {}}, "fileExtension": "68839NTu", "name": "BwjKsm9h", "payload": "nyvj8oTm", "preview": "tnJm6mq7", "previewMetadata": {"previewContentType": "glx2hlTh", "previewFileExtension": "RKXp3cOE"}, "subType": "H1qGN1OT", "tags": ["c9jeG855", "s11fmQwC", "irS0ADpP"], "type": "3gxOhyUa", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId 'MBbSHCr1' \
    --namespace $AB_NAMESPACE \
    --shareCode 'sEHUr7Vn' \
    --userId '1MTKmhdh' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'KvUbFHse' \
    --contentId '12pzuvj6' \
    --namespace $AB_NAMESPACE \
    --userId 'phg1hsSO' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'hrKZgwpn' \
    --contentId '3TqlQiXY' \
    --namespace $AB_NAMESPACE \
    --userId 'l6KfTjmF' \
    --body '{"shareCode": "kn8XRFUg"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId '4A1BR5ra' \
    --limit '100' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'samx9SAO' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'cM2nZYa2' \
    --namespace $AB_NAMESPACE \
    --userId 'AQr00KJn' \
    --body '{"screenshots": [{"description": "MnaWK7De", "screenshotId": "DqSCsunb"}, {"description": "ZuKqp5S4", "screenshotId": "tcY9UrUC"}, {"description": "KufkvHZY", "screenshotId": "f76DdDtE"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'fiXDwsWb' \
    --namespace $AB_NAMESPACE \
    --userId 'lVLZKVRG' \
    --body '{"screenshots": [{"contentType": "mdoJvM7p", "description": "fF8bmauj", "fileExtension": "bmp"}, {"contentType": "pEYcM8e8", "description": "mhf6fsMm", "fileExtension": "png"}, {"contentType": "yle6qAC7", "description": "Ia2AtVT1", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'FYCQc8JJ' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'frdOMeup' \
    --userId 'pgmJlnOz' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'jVtxTEkk' \
    --body '{"followStatus": false}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'Gq0xj8TP' \
    --limit '80' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'qTmjtn2C' \
    --limit '15' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'EtWWZuIh' \
    --limit '78' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'gzIghu1a' \
    --body '{"contents": ["Qlu7hznN", "tkjCOd7D", "KL7FnG5B"], "name": "Oad4BjjX"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'uKVUAhuA' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId '7mrcc22B' \
    --namespace $AB_NAMESPACE \
    --userId 'sSmDuI0E' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'Jw7iGP1l' \
    --namespace $AB_NAMESPACE \
    --userId 'qe929X1j' \
    --body '{"contents": ["WVKFn41t", "qOEl1Txo", "sFSPmezr"], "name": "3y0BT8Lh"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'cMFN1NUY' \
    --namespace $AB_NAMESPACE \
    --userId 'g9SdfF4U' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'qN0eYoHY' \
    --namespace $AB_NAMESPACE \
    --userId 'oVLOjLe1' \
    --limit '80' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'pm9YiWaF' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'H9l4Y0Tr' \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --name 'oIFUHNC9' \
    --offset '78' \
    --sortBy 'BxPtbFSB' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'oT10iOrl' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "27zq5ThH", "customAttributes": {"p1ECFnIf": {}, "NY6GtrFh": {}, "3TfMxdXa": {}}, "fileExtension": "38V1h35M", "name": "sRRIWfqb", "shareCode": "oj1sibPw", "subType": "JxhSglxe", "tags": ["o2yEPdT4", "fkL89kQv", "RXK9BBXq"], "type": "lyuPaZEx"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'JdRA9sg7' \
    --contentId 'WSBGQxF5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'NwCJoCc8' \
    --contentId 'GJbmXMWo' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"YwCt7faf": {}, "OAtibuzu": {}, "w03Lmkvu": {}}, "name": "Cxvu15dU", "shareCode": "gXNzFdEm", "subType": "vtSYQuhu", "tags": ["8einjUXu", "cqh2k5Ju", "oeCDAHeP"], "type": "w5YySmim"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId '1DUgz98l' \
    --contentId 'KN22C0cQ' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "s5lHYHno", "fileLocation": "kYdsxaGc"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminUpdateOfficialContentFileLocation' test.out

#- 107 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'mE62HjnO' \
    --contentId 'gL3tnFHc' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "QJngIqTa", "fileExtension": "6QmMpQpB"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 108 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 108 'AdminGetConfigs' test.out

#- 109 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key 'Zsf4Qz6P' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "ACg08eiu"}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateConfig' test.out

#- 110 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '89' \
    --name 'Y2bOPdvl' \
    --offset '96' \
    --sortBy 'BjGIbC23' \
    --subType 'Qhlg48tE' \
    --tags '["h2f7kewf", "N0IQZa8Z", "GkyIDRHo"]' \
    --type 'T7tXsybx' \
    > test.out 2>&1
eval_tap $? 110 'AdminListContentV2' test.out

#- 111 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["ytwkEsOS", "cFY16PZo", "kGUqG2ca"]}' \
    > test.out 2>&1
eval_tap $? 111 'AdminBulkGetContentByIDsV2' test.out

#- 112 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["ltgJcvuU", "7v3TkeTW", "9dZEwNZn"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminGetContentBulkByShareCodesV2' test.out

#- 113 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'SLVPrOLt' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentByShareCodeV2' test.out

#- 114 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 'HdhDPdYe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByContentIDV2' test.out

#- 115 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'NNIbX6LI' \
    --namespace $AB_NAMESPACE \
    --versionId '8kpP2uG7' \
    > test.out 2>&1
eval_tap $? 115 'RollbackContentVersionV2' test.out

#- 116 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'z1gXy6qq' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "WTBTMuEX", "screenshotId": "iXFdKINr"}, {"description": "5xcItZwh", "screenshotId": "yL2oBle9"}, {"description": "kLRfuMCU", "screenshotId": "ZJj86nHr"}]}' \
    > test.out 2>&1
eval_tap $? 116 'AdminUpdateScreenshotsV2' test.out

#- 117 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 'XFuVhmVf' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "6lGEqJpb", "description": "tuT6bRq1", "fileExtension": "jfif"}, {"contentType": "yCYCLbZq", "description": "a0r3tNAQ", "fileExtension": "png"}, {"contentType": "cP4XogZk", "description": "uFqBaDlc", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUploadContentScreenshotV2' test.out

#- 118 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'Cul1vlV6' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'vPCK9zRn' \
    > test.out 2>&1
eval_tap $? 118 'AdminDeleteContentScreenshotV2' test.out

#- 119 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'YqHnjayl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'ListContentVersionsV2' test.out

#- 120 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId '6QT72x3h' \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetOfficialGroupContentsV2' test.out

#- 121 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '77' \
    --sortBy 'iRDdAzbN' \
    --status 'V9NoZkvb' \
    > test.out 2>&1
eval_tap $? 121 'AdminListStagingContents' test.out

#- 122 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId 'LXm1Rxh0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetStagingContentByID' test.out

#- 123 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId '1HoESRU6' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": false, "note": "yRye9IQ2"}' \
    > test.out 2>&1
eval_tap $? 123 'AdminApproveStagingContent' test.out

#- 124 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'VkC7Jcd9' \
    --namespace $AB_NAMESPACE \
    --shareCode 'gnUYcMGs' \
    --userId 'jiBIgDIx' \
    --body '{"customAttributes": {"8XSBh25j": {}, "pQuy6nJs": {}, "VWAzArZL": {}}, "name": "GuWjMHKA", "shareCode": "JPciP8tx", "subType": "oKFD00ts", "tags": ["ODS1I4SV", "XKQCtRp1", "OnQpz3nM"], "type": "duIpB0dE"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateContentByShareCodeV2' test.out

#- 125 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'eEvi4YAt' \
    --namespace $AB_NAMESPACE \
    --shareCode 'vUWFoxgu' \
    --userId 'gOmDtfYk' \
    > test.out 2>&1
eval_tap $? 125 'AdminDeleteContentByShareCodeV2' test.out

#- 126 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId '8M57YpgY' \
    --contentId 'WYQoNKFK' \
    --namespace $AB_NAMESPACE \
    --userId 'p3oGqeq1' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteUserContentV2' test.out

#- 127 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'IEjgnpcp' \
    --contentId 'TlbDpbml' \
    --namespace $AB_NAMESPACE \
    --userId '3LSUpo33' \
    --body '{"customAttributes": {"VeZUtyxo": {}, "paNuxQkA": {}, "4PqZ26l6": {}}, "name": "es8p66R0", "shareCode": "uOl2aaQ9", "subType": "OTVuPYgO", "tags": ["W5ZpLsZ4", "TrFg5bCy", "82t8obaO"], "type": "g502dDnd"}' \
    > test.out 2>&1
eval_tap $? 127 'AdminUpdateUserContentV2' test.out

#- 128 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'UI8C6zct' \
    --contentId 'IeI8g76I' \
    --namespace $AB_NAMESPACE \
    --userId 'Bw9bmG9J' \
    --body '{"fileExtension": "OqZ23cBd", "fileLocation": "0zJFKF1J"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentFileLocation' test.out

#- 129 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'rYfzzGCe' \
    --contentId 'JUaxDNPx' \
    --namespace $AB_NAMESPACE \
    --userId 'WhyKtb7C' \
    --body '{"contentType": "9hcXheP0", "fileExtension": "7oas4z0q"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminGenerateUserContentUploadURLV2' test.out

#- 130 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'QVBeRVd8' \
    --limit '54' \
    --offset '82' \
    --sortBy '1ZWWpIAe' \
    > test.out 2>&1
eval_tap $? 130 'AdminGetContentByUserIDV2' test.out

#- 131 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'hTskcVYx' \
    --namespace $AB_NAMESPACE \
    --userId '5098HPeD' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 131 'AdminUpdateContentHideStatusV2' test.out

#- 132 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId '9Rzr8KKI' \
    --namespace $AB_NAMESPACE \
    --userId 'mJa8gIQE' \
    --limit '82' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 132 'AdminGetUserGroupContentsV2' test.out

#- 133 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'ZrhLUa59' \
    --limit '100' \
    --offset '67' \
    --sortBy 'Di8QLNp3' \
    --status 'bkpRRlq8' \
    > test.out 2>&1
eval_tap $? 133 'AdminListUserStagingContents' test.out

#- 134 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'I5mlOqBD' \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --name 'sOrqHZgh' \
    --offset '40' \
    --sortBy 'Q9IwfRSK' \
    > test.out 2>&1
eval_tap $? 134 'PublicGetContentByChannelIDV2' test.out

#- 135 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '21' \
    --name 'cL7B83c5' \
    --offset '100' \
    --sortBy 'J39t8GBL' \
    --subType '8EOwDpxP' \
    --tags '["r5NxLfsh", "rbvOFQM2", "AwDfVwLQ"]' \
    --type 'b7JrkYtL' \
    > test.out 2>&1
eval_tap $? 135 'PublicListContentV2' test.out

#- 136 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["la8lbwhn", "UkpFmQhi", "jP0pqBFp"]}' \
    > test.out 2>&1
eval_tap $? 136 'PublicBulkGetContentByIDV2' test.out

#- 137 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["I6ZXPLCD", "Nl3iv0Uf", "JaI525Og"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicGetContentBulkByShareCodesV2' test.out

#- 138 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'LGpk4yzV' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentByShareCodeV2' test.out

#- 139 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'IUjVSzEp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByIDV2' test.out

#- 140 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'EXN9x1bR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicAddDownloadCountV2' test.out

#- 141 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'R2DqD3pt' \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '39' \
    --sortBy 'cjcNY91e' \
    --userId 'pIiauoCe' \
    > test.out 2>&1
eval_tap $? 141 'PublicListContentDownloaderV2' test.out

#- 142 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'ctl1jp2J' \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '31' \
    --sortBy 'avgNsGqL' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentLikeV2' test.out

#- 143 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId 'QESMrnrP' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateContentLikeStatusV2' test.out

#- 144 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'xIei2cNd' \
    --namespace $AB_NAMESPACE \
    --userId 'tbFRDfFb' \
    --body '{"contentType": "EeG8XJY9", "customAttributes": {"p9zJhIz2": {}, "MKqWtLN2": {}, "bdQCzegR": {}}, "fileExtension": "2ngH7gve", "name": "IhLzBXN5", "subType": "xUfeMzfh", "tags": ["zCanSBke", "kAfSjOy6", "IkQzv9db"], "type": "keTgXOM1"}' \
    > test.out 2>&1
eval_tap $? 144 'PublicCreateContentV2' test.out

#- 145 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'KnzCoEaE' \
    --namespace $AB_NAMESPACE \
    --shareCode 'f4B4hk2q' \
    --userId 'OGUgXfd4' \
    --body '{"customAttributes": {"uaQF7MJZ": {}, "kCrBIjJb": {}, "zxFO1m3E": {}}, "name": "oMvNozTm", "subType": "vdzIJnL4", "tags": ["pNBRyD1y", "l6FGXz3Y", "DfA42Kkd"], "type": "nLTiwKHF"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicUpdateContentByShareCodeV2' test.out

#- 146 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'u4EyckBk' \
    --namespace $AB_NAMESPACE \
    --shareCode 'uPocn6HL' \
    --userId 'VbzBQ80p' \
    > test.out 2>&1
eval_tap $? 146 'PublicDeleteContentByShareCodeV2' test.out

#- 147 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'wwCoIc0P' \
    --contentId '5koSOmdi' \
    --namespace $AB_NAMESPACE \
    --userId 'HKJey4Sx' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentV2' test.out

#- 148 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'NGpUeAWE' \
    --contentId '8BaWPmQI' \
    --namespace $AB_NAMESPACE \
    --userId 'k1mCqrTA' \
    --body '{"customAttributes": {"o1Edz3zV": {}, "guKZjNX1": {}, "6RHp0NuY": {}}, "name": "F6EdnAP6", "subType": "Y1etRPW3", "tags": ["R3EEsukb", "NAPdMaMY", "sjaGzmcm"], "type": "t6iS3PgQ"}' \
    > test.out 2>&1
eval_tap $? 148 'PublicUpdateContentV2' test.out

#- 149 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'EU5ulX0z' \
    --contentId 'KdAT6ZRy' \
    --namespace $AB_NAMESPACE \
    --userId 'W24E0yMZ' \
    --body '{"fileExtension": "myoGWLMe", "fileLocation": "rQbObpyF"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentFileLocation' test.out

#- 150 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'xc6iZiL6' \
    --contentId '9TNPkLRe' \
    --namespace $AB_NAMESPACE \
    --userId '8citm3xt' \
    --body '{"shareCode": "tMyOyXdM"}' \
    > test.out 2>&1
eval_tap $? 150 'UpdateContentShareCodeV2' test.out

#- 151 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId '6xHfWrQ6' \
    --contentId 'aDAY5wjA' \
    --namespace $AB_NAMESPACE \
    --userId 'LWfoPEgk' \
    --body '{"contentType": "I0zITvPG", "fileExtension": "gq5oxqKQ"}' \
    > test.out 2>&1
eval_tap $? 151 'PublicGenerateContentUploadURLV2' test.out

#- 152 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'sy9D2vt0' \
    --limit '57' \
    --offset '99' \
    --sortBy 'x936rk3v' \
    > test.out 2>&1
eval_tap $? 152 'PublicGetContentByUserIDV2' test.out

#- 153 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'N95qH25Z' \
    --namespace $AB_NAMESPACE \
    --userId 'MsitqDFA' \
    --body '{"screenshots": [{"description": "sdbszEdZ", "screenshotId": "CrKx2dac"}, {"description": "ysWUG3Sh", "screenshotId": "GiPxXMNu"}, {"description": "CKwt4IyD", "screenshotId": "7dImnIZj"}]}' \
    > test.out 2>&1
eval_tap $? 153 'UpdateScreenshotsV2' test.out

#- 154 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'CeydqpW6' \
    --namespace $AB_NAMESPACE \
    --userId 'JoNbxP3u' \
    --body '{"screenshots": [{"contentType": "Wk9IUnjP", "description": "PaXFzPPa", "fileExtension": "jpeg"}, {"contentType": "EkohL8Wo", "description": "jptfHaIe", "fileExtension": "jpg"}, {"contentType": "RjRxQ1hZ", "description": "7HYpeOYQ", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UploadContentScreenshotV2' test.out

#- 155 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId '9mRtz7c7' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'ryY0AMTj' \
    --userId '5SKgWH7h' \
    > test.out 2>&1
eval_tap $? 155 'DeleteContentScreenshotV2' test.out

#- 156 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'YgfMBcAD' \
    --namespace $AB_NAMESPACE \
    --userId 'NAGx5e1c' \
    --limit '57' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 156 'PublicGetGroupContentsV2' test.out

#- 157 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'LGjjlCCv' \
    --limit '56' \
    --offset '36' \
    --sortBy '9DlMH61T' \
    --status 'sDCMWnlH' \
    > test.out 2>&1
eval_tap $? 157 'ListUserStagingContents' test.out

#- 158 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId 'FPumpQSj' \
    --namespace $AB_NAMESPACE \
    --userId 'rpUZCjA7' \
    > test.out 2>&1
eval_tap $? 158 'GetUserStagingContentByID' test.out

#- 159 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId 'RyvQDES7' \
    --namespace $AB_NAMESPACE \
    --userId 'hIPknzka' \
    --body '{"fileExtension": "yda3Yq15", "fileLocation": "1kMrJ23Y"}' \
    > test.out 2>&1
eval_tap $? 159 'UpdateStagingContent' test.out

#- 160 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId 'U2u0DMxR' \
    --namespace $AB_NAMESPACE \
    --userId 'lFUpU9jt' \
    > test.out 2>&1
eval_tap $? 160 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE