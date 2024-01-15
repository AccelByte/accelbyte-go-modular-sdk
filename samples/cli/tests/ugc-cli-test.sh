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
    --limit '30' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "nDRsuNSp", "name": "Ej7w3Pgj"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId '3Mj3WBZu' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "bHa4qVDJ"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId '4RxXlxto' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'veyr3aZp' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "OuW9IjaD", "customAttributes": {"Dow0Ag9J": {}, "fKxH75nZ": {}, "lyVv371n": {}}, "fileExtension": "WbqeRO1U", "name": "8V8U2qAA", "preview": "lV19gYmM", "previewMetadata": {"previewContentType": "l5XIUg9q", "previewFileExtension": "oz9VGNtW"}, "shareCode": "aJMdAaIi", "subType": "8vMsLxAd", "tags": ["Czf863Ma", "R12S4YfP", "cmd3Avwo"], "type": "vExEh4Qo"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId '3ucdCYvA' \
    --contentId 'm86yHguF' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "Y0kx5CZm", "customAttributes": {"2o5zPWys": {}, "1bu8b2YQ": {}, "SpmNLten": {}}, "fileExtension": "b6eCs7oC", "name": "abtkG63I", "payload": "1NXHLbRw", "preview": "5xSSemV6", "previewMetadata": {"previewContentType": "6XvjFzc7", "previewFileExtension": "wDTybirM"}, "shareCode": "5cElWx9R", "subType": "YcdNksJp", "tags": ["G3FGPQIE", "Ubas5VSp", "qT8QAci4"], "type": "TMUHnk79", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'WWej9c2G' \
    --namespace $AB_NAMESPACE \
    --creator 'BOFmABvW' \
    --ishidden 'HkbTcXn2' \
    --isofficial 'PBiaxzKq' \
    --limit '97' \
    --name '5ZxKNSjd' \
    --offset '71' \
    --orderby 'm1rKASzO' \
    --sortby 'RjPCEk8P' \
    --subtype 'K0BIxgfw' \
    --tags '["shazAksu", "xOltLc1k", "vAzoiiiG"]' \
    --type 'bClthgyk' \
    --userId 'Ktq1PFAt' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'Wyta2NQ0' \
    --contentId 'uIYHAAUG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["oBJOVuoe", "haoYGPIs", "6ckoMm4a"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'vHeIcYnS' \
    --ishidden 'OLwJMkMo' \
    --isofficial 'ljjUNXJh' \
    --limit '74' \
    --name 'yoKQewkV' \
    --offset '64' \
    --orderby 'mZwRWqOc' \
    --sortby 'QnkcIH7e' \
    --subtype 'maHsR8t2' \
    --tags '["8HsUZeol", "3ckJOo3e", "h7uzwruM"]' \
    --type 'XEAZwjEF' \
    --userId 'PytXVYUC' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["iPB0Zw4z", "U9DkmPt4", "3FfOcedD"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'a8rb9334' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'bhTFRZaw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'yKGhvMvo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'Y7O7JJl9' \
    --namespace $AB_NAMESPACE \
    --versionId '4LaTfRCz' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'F2ZB57Ml' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "d5mOeI9J", "screenshotId": "S58T28jA"}, {"description": "tFLoPM8q", "screenshotId": "zOCgMP44"}, {"description": "DbIHaUQN", "screenshotId": "1VJ4NM1p"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'IUuEjalo' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "NSRtkPqs", "description": "AAfzgzxf", "fileExtension": "bmp"}, {"contentType": "oeJFEvRK", "description": "2ODezkkm", "fileExtension": "jpeg"}, {"contentType": "BQnQG41A", "description": "lKVIxGyI", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'XyyhbjTa' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'W90TcfcH' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'ZRU8RpyT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["S6epnDP2", "nqsl1Sqr", "kbT27VZ1"], "name": "aWkNPHNe"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId '9jVVckA9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'Yh2D5zn7' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["5WMbmeAP", "rVnnTpiq", "U6Dmdu84"], "name": "RWUjHHfx"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'GdoqzYvO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'BjWDwblR' \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "JP3Svww9"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'p4CM9VX9' \
    --body '{"tag": "edPoR8Om"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'gPQUni0M' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["dQY3gSVv", "OTJ1V6nB", "7ld3fWrw"], "type": "Qwx9xz36"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'jYpgPrXc' \
    --body '{"subtype": ["PZDOTBma", "R8ylMeC1", "j7XiiQGf"], "type": "BJKJZHEA"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'AE2hzDYn' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'tpkO3xbm' \
    --limit '78' \
    --name 'LHvRQjTu' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'jibSzoU6' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'oHcmVJKR' \
    --namespace $AB_NAMESPACE \
    --userId 'YV4MGm6G' \
    --body '{"name": "FH2oOS2U"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'SbtqmtKc' \
    --namespace $AB_NAMESPACE \
    --userId 'KxNltVn4' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'vZvFmLkw' \
    --namespace $AB_NAMESPACE \
    --shareCode 'LSQs5eKE' \
    --userId 'gdTrhZzp' \
    --body '{"contentType": "E89x8hSf", "customAttributes": {"CmE6FHJj": {}, "Dm2Xruhj": {}, "mUMcBwkZ": {}}, "fileExtension": "pHE1phAK", "name": "XdtGRMLt", "payload": "FBvyDNtn", "preview": "Exa5MOGk", "previewMetadata": {"previewContentType": "thDQ9su5", "previewFileExtension": "VbGTOnKR"}, "shareCode": "kzcgk4yJ", "subType": "khzwY0kx", "tags": ["Y6yxVDdY", "AZ7JOlsp", "gFgJdwYw"], "type": "kDf1yAIk", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'USuIjXUy' \
    --contentId '1V2RbaYh' \
    --namespace $AB_NAMESPACE \
    --userId '5MZyfzXf' \
    --body '{"contentType": "ozL0SvV2", "customAttributes": {"kxwtqjaX": {}, "yA2Z8okW": {}, "wAD0yjS4": {}}, "fileExtension": "LCv7qtff", "name": "qD1ynP5P", "payload": "H5JF6EVr", "preview": "m0IVv1G6", "previewMetadata": {"previewContentType": "L9yWUb9h", "previewFileExtension": "eO4q5T86"}, "shareCode": "b8gdpraW", "subType": "uNCB7Wt1", "tags": ["IMtpIcNV", "8giJcsGH", "5gb4OXZM"], "type": "WTsVDtL1", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'hPP6xjYo' \
    --namespace $AB_NAMESPACE \
    --shareCode 'TaD4Sspx' \
    --userId 'opH4244T' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'Hf9jJA9Y' \
    --contentId 'pdUIVhE1' \
    --namespace $AB_NAMESPACE \
    --userId 'DVhhXU1G' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId '5MJubeOM' \
    --limit '81' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'Qd0YqoEJ' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId '4mxDaydp' \
    --namespace $AB_NAMESPACE \
    --userId 'QKaycckQ' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'crSUzJHj' \
    --limit '7' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId '8vIKEP13' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'Hr6tHB3F' \
    --namespace $AB_NAMESPACE \
    --userId 'eWqhgtii' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'vtiKrh6Z' \
    --namespace $AB_NAMESPACE \
    --userId 'ixJDJxd5' \
    --body '{"contents": ["cjezksWF", "pFsBCoc2", "onVdohBn"], "name": "uZ90GsFk"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'u7QvqgWk' \
    --namespace $AB_NAMESPACE \
    --userId 'JB5ND3T3' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'A0k6WRe4' \
    --namespace $AB_NAMESPACE \
    --userId 'DsrRB3Jg' \
    --limit '92' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'gFrSIVZo' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'i1r1EHJt' \
    --namespace $AB_NAMESPACE \
    --creator 'Ex30x0UW' \
    --ishidden 'dFWr06Ek' \
    --isofficial 'rLxH2Wha' \
    --limit '59' \
    --name 'FxImn3Ln' \
    --offset '81' \
    --orderby 'VLzf2Q6s' \
    --sortby 'jue2fuwO' \
    --subtype 'HqfK8d89' \
    --tags '["IOdlk2jj", "QTbl5N0b", "q1GkEWh9"]' \
    --type 'fVt7LYk0' \
    --userId '3WEhSqyK' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator '16BsbY6M' \
    --ishidden 'rMG8sIKB' \
    --isofficial 'uJcrah2R' \
    --limit '23' \
    --name 'QOvyifJp' \
    --offset '54' \
    --orderby 'mTSJYbyN' \
    --sortby 'RgcoHA3I' \
    --subtype 'Z16KUSoU' \
    --tags '["RbqjGCbn", "H3ElKUWM", "yWokngol"]' \
    --type '47krmB3D' \
    --userId 't7utaQYO' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["4kuuP1lf", "jUx401zc", "14UxKocZ"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '74' \
    --name 'CtgAGyNg' \
    --offset '5' \
    --orderby 'j4xsqPB6' \
    --sortby 'xMy6cAj9' \
    --subtype 'RM4xVprY' \
    --tags '["ujUmJlMM", "GQm25ci6", "iRTnKkAe"]' \
    --type '3wuk2EwW' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["yqvriVEE", "eknkHjqD", "mglgdr1k"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'TIRfINuN' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId '6iyTPJZa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'yOKaKhbX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId '9vHk0u16' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId '8bxNRZG8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '97' \
    --orderby 'GGfAsgyF' \
    --sortby 'PriuXxl2' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'dffwGEr8' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId '6Ec3pIuX' \
    --limit '74' \
    --name 'SZlvR25n' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId '0xMLzvIg' \
    --body '{"name": "kQpYjPIK"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'hbLDSse0' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'VxqrGbr9' \
    --namespace $AB_NAMESPACE \
    --userId 'i1n9tCia' \
    --body '{"name": "23FgERyv"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId '0wkntSbW' \
    --namespace $AB_NAMESPACE \
    --userId 'M8n1Dmib' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'CBTrpS5S' \
    --namespace $AB_NAMESPACE \
    --userId 'nusczLJG' \
    --body '{"contentType": "8zAgrDZy", "customAttributes": {"14pwvCRO": {}, "yajr4EZ9": {}, "AoQEbZmF": {}}, "fileExtension": "gFi1bUUI", "name": "EVCu2Wun", "preview": "e9ssqWQy", "previewMetadata": {"previewContentType": "da1nqMHd", "previewFileExtension": "5B9DPyQn"}, "subType": "7BlmcPQK", "tags": ["6Vt2JdlO", "jnWMk33B", "wJY9fK6o"], "type": "oygE1Jjf"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'YbnC51PR' \
    --namespace $AB_NAMESPACE \
    --shareCode 'wBKjJ6NQ' \
    --userId 'yzQeZJmJ' \
    --body '{"contentType": "waR3dSH2", "customAttributes": {"b6Vptbip": {}, "ElgDpZOy": {}, "ImSI4wFT": {}}, "fileExtension": "pqko3bCf", "name": "KFDVTvfG", "payload": "RSjOrRmy", "preview": "YCrXsJYd", "previewMetadata": {"previewContentType": "s2GeBf8u", "previewFileExtension": "Btac6TWw"}, "subType": "d2NhrIg5", "tags": ["VgNn2HXe", "nfJazcgu", "FHjYvOzn"], "type": "AoRnrSSC", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'gFGIl3zK' \
    --contentId 'i24bzuNa' \
    --namespace $AB_NAMESPACE \
    --userId '1fZAC8Hn' \
    --body '{"contentType": "LZAr3uAW", "customAttributes": {"62q30Y7k": {}, "opTeXG1a": {}, "z3cTImTi": {}}, "fileExtension": "eko3gubD", "name": "YFArmJtJ", "payload": "pvEJBANt", "preview": "4HOG9i9B", "previewMetadata": {"previewContentType": "uBTHOvWI", "previewFileExtension": "4erSdIrP"}, "subType": "MsOvcgwf", "tags": ["8BjFIuDv", "Ap9VD1SU", "38TdhdyM"], "type": "eOXZCsAA", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId 'agplsdPT' \
    --namespace $AB_NAMESPACE \
    --shareCode 'Gmn3VI6c' \
    --userId 'jvSawZiY' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'HkSFRVYH' \
    --contentId 'vvDaPWbO' \
    --namespace $AB_NAMESPACE \
    --userId 'Nnk6hvkl' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'vecpPmJ9' \
    --contentId 'fUZMwAeW' \
    --namespace $AB_NAMESPACE \
    --userId 'kjqKVekn' \
    --body '{"shareCode": "QnIUDHBX"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'IA29agYS' \
    --limit '10' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'zN6Rp0ni' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId '7Gv9rfAv' \
    --namespace $AB_NAMESPACE \
    --userId 'etWN1N2K' \
    --body '{"screenshots": [{"description": "UFrabnMU", "screenshotId": "OvQNaV2F"}, {"description": "rHSaR355", "screenshotId": "18pJyQlh"}, {"description": "RMjrLetd", "screenshotId": "zXvcxp4K"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'nAlf7XA4' \
    --namespace $AB_NAMESPACE \
    --userId '79gmFhGi' \
    --body '{"screenshots": [{"contentType": "eGvGmQy1", "description": "rwTXdG82", "fileExtension": "bmp"}, {"contentType": "Jv3MJiRe", "description": "BDoxcgtA", "fileExtension": "bmp"}, {"contentType": "N1tVNabX", "description": "52nR8aUZ", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'Jy2H6ohS' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'NWONcF1O' \
    --userId '3kkHOVzE' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId '2waGrBDm' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'YJjBg7UP' \
    --limit '41' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'k2fO6u15' \
    --limit '34' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'TeHKTi0g' \
    --limit '89' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'IK9R3NWJ' \
    --body '{"contents": ["yIsQs3j1", "Z66O2Ci7", "Wcbosr0I"], "name": "V8M0bMGU"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'OVBgwfG1' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'iGQP7Wdh' \
    --namespace $AB_NAMESPACE \
    --userId 'RSPKRUTN' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'q5qqnTtI' \
    --namespace $AB_NAMESPACE \
    --userId 'HnasPvYd' \
    --body '{"contents": ["YEuYkSAo", "RHu8hns0", "cLKhmwzD"], "name": "uu2jch0X"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'BuWROwzb' \
    --namespace $AB_NAMESPACE \
    --userId 'Nb7V0cGi' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'fVcbMHlH' \
    --namespace $AB_NAMESPACE \
    --userId '0B4xHPnx' \
    --limit '49' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'ur7TdR6r' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'KhD8nUCl' \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --name 'tDIqNR9u' \
    --offset '25' \
    --sortBy 'GQFxxabx' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'drMe4A2b' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "z0CLdQFZ", "customAttributes": {"Px1hWZF2": {}, "leV6xXrF": {}, "MhGGBWsF": {}}, "fileExtension": "XxI4Xg1K", "name": "SUgNXXCz", "shareCode": "YBlGyVRs", "subType": "eImsE74z", "tags": ["yzAP1mmk", "whc0fpCY", "tVowE2hp"], "type": "X7rIy7Mq"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'IRKfpzXg' \
    --contentId 'JKuaVmcm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId '8TwVEZr7' \
    --contentId 'vMNbBMYZ' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"zvOgxl1j": {}, "WDG9OuvN": {}, "l9yHN0fo": {}}, "name": "SBoSwGU5", "shareCode": "rprLy48N", "subType": "UVvUWQ8G", "tags": ["IfAvfqpH", "f3OFa88D", "VyikmD6o"], "type": "EgRjoJtm"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'r2m1UOLt' \
    --contentId 'Pt9IVBHk' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "XeWQ1Cci", "fileLocation": "bR5bbMPy"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminUpdateOfficialContentFileLocation' test.out

#- 107 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'bGhVqmfS' \
    --contentId 'VH7FkxTu' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "guAv1rg7", "fileExtension": "NfXys4oG"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 108 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 108 'AdminGetConfigs' test.out

#- 109 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key 'uWDp84gX' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "72JI3tl7"}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateConfig' test.out

#- 110 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '37' \
    --name 'DA4EdITr' \
    --offset '94' \
    --sortBy 'dajBkDAB' \
    --subType '6yPNHkVm' \
    --tags '["sXEWjg5Q", "Yp8d01Dl", "FluNeSP8"]' \
    --type 'i4HRPGmF' \
    > test.out 2>&1
eval_tap $? 110 'AdminListContentV2' test.out

#- 111 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["J232YxGY", "v4ZvWclz", "jFTljhk8"]}' \
    > test.out 2>&1
eval_tap $? 111 'AdminBulkGetContentByIDsV2' test.out

#- 112 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["wo4FXabf", "HEyAb7Ij", "6e9r6Xc0"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminGetContentBulkByShareCodesV2' test.out

#- 113 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'mwX1q1wk' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentByShareCodeV2' test.out

#- 114 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 'geaue4zn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByContentIDV2' test.out

#- 115 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'ul5Hzzps' \
    --namespace $AB_NAMESPACE \
    --versionId 'ay5YTlXU' \
    > test.out 2>&1
eval_tap $? 115 'RollbackContentVersionV2' test.out

#- 116 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId '7wCapajl' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "69UZXzvc", "screenshotId": "3aamWy32"}, {"description": "ugCXLjeW", "screenshotId": "yPmyFqS1"}, {"description": "E4DirPU7", "screenshotId": "gqNczgow"}]}' \
    > test.out 2>&1
eval_tap $? 116 'AdminUpdateScreenshotsV2' test.out

#- 117 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 'NoV1S9Mq' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "oyv8zPhT", "description": "OdoWBU9t", "fileExtension": "bmp"}, {"contentType": "dZoL3Cmp", "description": "rV6qtuFK", "fileExtension": "bmp"}, {"contentType": "i5Hxn2Kz", "description": "4vI3truK", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUploadContentScreenshotV2' test.out

#- 118 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'HeIxVyL2' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'TlmUsSpT' \
    > test.out 2>&1
eval_tap $? 118 'AdminDeleteContentScreenshotV2' test.out

#- 119 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'msnPQLqH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'ListContentVersionsV2' test.out

#- 120 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'e2blZQei' \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetOfficialGroupContentsV2' test.out

#- 121 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '99' \
    --sortBy 'bgwuI1Wp' \
    --status 'Wmc7orqn' \
    > test.out 2>&1
eval_tap $? 121 'AdminListStagingContents' test.out

#- 122 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId '0C1HL8GN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetStagingContentByID' test.out

#- 123 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId 'C4xrQuXz' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": true, "note": "YcaAU5Yv"}' \
    > test.out 2>&1
eval_tap $? 123 'AdminApproveStagingContent' test.out

#- 124 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'zhoM3oXS' \
    --namespace $AB_NAMESPACE \
    --shareCode 'JppQoZlm' \
    --userId 'bprzy27O' \
    --body '{"customAttributes": {"w2HZsXdo": {}, "1bXmsjF1": {}, "UwGqGFfI": {}}, "name": "hLkaPufI", "shareCode": "ASDcaFbn", "subType": "dNsVojPf", "tags": ["mMeHqAI9", "u1AwcFUH", "UW8llE2X"], "type": "shRDoavX"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateContentByShareCodeV2' test.out

#- 125 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId '1mDPau76' \
    --namespace $AB_NAMESPACE \
    --shareCode 'cMQKNR8o' \
    --userId 'yhUzGVVZ' \
    > test.out 2>&1
eval_tap $? 125 'AdminDeleteContentByShareCodeV2' test.out

#- 126 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'fQYDqRdZ' \
    --contentId 'C1Bdfo2o' \
    --namespace $AB_NAMESPACE \
    --userId 'o5GAKJRY' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteUserContentV2' test.out

#- 127 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'okEgXxYP' \
    --contentId 'H4mk1StY' \
    --namespace $AB_NAMESPACE \
    --userId '9xU4qCxx' \
    --body '{"customAttributes": {"ZpaWCYbR": {}, "lCWGrKhj": {}, "NPg7XOvE": {}}, "name": "v7A9cjP9", "shareCode": "iqNITL80", "subType": "jP8OqW5h", "tags": ["8OSkoYfF", "nzkXhlkq", "WB5TZXRU"], "type": "mlDTcvlu"}' \
    > test.out 2>&1
eval_tap $? 127 'AdminUpdateUserContentV2' test.out

#- 128 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'DhSgX7Lq' \
    --contentId '2lYCzFaY' \
    --namespace $AB_NAMESPACE \
    --userId 'Q4Etocyl' \
    --body '{"fileExtension": "OiZJTiAO", "fileLocation": "T9P3aOtO"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentFileLocation' test.out

#- 129 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'p6VT13vT' \
    --contentId 'Xbi0pIWa' \
    --namespace $AB_NAMESPACE \
    --userId '4exA7rRW' \
    --body '{"contentType": "QTGgPIn0", "fileExtension": "6cvpRTV9"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminGenerateUserContentUploadURLV2' test.out

#- 130 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'n9z5qo3A' \
    --limit '31' \
    --offset '17' \
    --sortBy 'OHM0OLaC' \
    > test.out 2>&1
eval_tap $? 130 'AdminGetContentByUserIDV2' test.out

#- 131 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'BFkYzeW1' \
    --namespace $AB_NAMESPACE \
    --userId '7AxjM0Gn' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 131 'AdminUpdateContentHideStatusV2' test.out

#- 132 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'dVaixg7Y' \
    --namespace $AB_NAMESPACE \
    --userId 'xBWJzSti' \
    --limit '69' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 132 'AdminGetUserGroupContentsV2' test.out

#- 133 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'tFhOk6Q7' \
    --limit '14' \
    --offset '84' \
    --sortBy 'IHOX9g2h' \
    --status 'fqQYBmR9' \
    > test.out 2>&1
eval_tap $? 133 'AdminListUserStagingContents' test.out

#- 134 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'bYcW3Oal' \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --name '71axnU47' \
    --offset '42' \
    --sortBy 'oxUZzoy1' \
    > test.out 2>&1
eval_tap $? 134 'PublicGetContentByChannelIDV2' test.out

#- 135 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '0' \
    --name 'JFXDzZQZ' \
    --offset '17' \
    --sortBy '7GHffR7R' \
    --subType 'HyEsvtZz' \
    --tags '["gUIcnbcU", "NEtXJjuo", "yRulAQfr"]' \
    --type 'pQ7gC0we' \
    > test.out 2>&1
eval_tap $? 135 'PublicListContentV2' test.out

#- 136 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["hq3l5z9Y", "UVRvdcvl", "8RZzwNvd"]}' \
    > test.out 2>&1
eval_tap $? 136 'PublicBulkGetContentByIDV2' test.out

#- 137 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["57XdAVXF", "ZefPCnY1", "Du6kSQKc"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicGetContentBulkByShareCodesV2' test.out

#- 138 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode '7K6TTiiV' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentByShareCodeV2' test.out

#- 139 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'etSkkzt4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByIDV2' test.out

#- 140 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId '8yrYQCIh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicAddDownloadCountV2' test.out

#- 141 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'epdWiAYA' \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '26' \
    --sortBy 'aKm0mpg5' \
    --userId 'yr0E3jmp' \
    > test.out 2>&1
eval_tap $? 141 'PublicListContentDownloaderV2' test.out

#- 142 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'CsZx1DoS' \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '24' \
    --sortBy 'CreF10MP' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentLikeV2' test.out

#- 143 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId 'Va7sagrF' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateContentLikeStatusV2' test.out

#- 144 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'xgDCzQhX' \
    --namespace $AB_NAMESPACE \
    --userId 'IneSGMLj' \
    --body '{"contentType": "YYiPV8X1", "customAttributes": {"KRkGUpDy": {}, "xx4Nvlxj": {}, "YXcqnuBM": {}}, "fileExtension": "fQfe75dH", "name": "3wfXe6aM", "subType": "pkcEWOys", "tags": ["oryMiUoZ", "KGPG17HW", "pxiFgpkF"], "type": "6hNOePhX"}' \
    > test.out 2>&1
eval_tap $? 144 'PublicCreateContentV2' test.out

#- 145 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'pdkU3OGL' \
    --namespace $AB_NAMESPACE \
    --shareCode '3P6IDDJj' \
    --userId '2ljFdps2' \
    --body '{"customAttributes": {"RGiGLvds": {}, "eKHAzS30": {}, "Yn0PGc86": {}}, "name": "WVjQQycy", "subType": "eNYPsqlP", "tags": ["DOLXvSe0", "w4ZHG43Z", "bRNuqylH"], "type": "wuWoFQ3m"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicUpdateContentByShareCodeV2' test.out

#- 146 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'kpn38XLX' \
    --namespace $AB_NAMESPACE \
    --shareCode 'JpFbBfs7' \
    --userId 'boWGVykp' \
    > test.out 2>&1
eval_tap $? 146 'PublicDeleteContentByShareCodeV2' test.out

#- 147 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'FDgOzFj0' \
    --contentId 'Ws5vpn5H' \
    --namespace $AB_NAMESPACE \
    --userId 'bkpgs6tS' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentV2' test.out

#- 148 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'TeHgrLAg' \
    --contentId 'LtQkfpF7' \
    --namespace $AB_NAMESPACE \
    --userId 'ByLoW5vp' \
    --body '{"customAttributes": {"1uVEJhQ2": {}, "9VYPGxWd": {}, "KPAfgwhe": {}}, "name": "35FepWxF", "subType": "4zTKEWNc", "tags": ["nzOdI4qI", "LhcUZB5e", "vEudwGNe"], "type": "LD6Qf3ZV"}' \
    > test.out 2>&1
eval_tap $? 148 'PublicUpdateContentV2' test.out

#- 149 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId '2nWUN9YB' \
    --contentId 'lPUXZbGm' \
    --namespace $AB_NAMESPACE \
    --userId 'Sn1iEb6z' \
    --body '{"fileExtension": "kFZ7BJoR", "fileLocation": "rpQdG23K"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentFileLocation' test.out

#- 150 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'FY4AC50x' \
    --contentId 'HKM7F9ON' \
    --namespace $AB_NAMESPACE \
    --userId 'jRHBIzd4' \
    --body '{"shareCode": "qkoRnMEZ"}' \
    > test.out 2>&1
eval_tap $? 150 'UpdateContentShareCodeV2' test.out

#- 151 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'AoWNw7rB' \
    --contentId 'ng5dEqZA' \
    --namespace $AB_NAMESPACE \
    --userId 'T2aQKwDI' \
    --body '{"contentType": "oqFRKc0P", "fileExtension": "x8jbz2Dy"}' \
    > test.out 2>&1
eval_tap $? 151 'PublicGenerateContentUploadURLV2' test.out

#- 152 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId '0O2xBlsK' \
    --limit '87' \
    --offset '72' \
    --sortBy 'JYiyYj00' \
    > test.out 2>&1
eval_tap $? 152 'PublicGetContentByUserIDV2' test.out

#- 153 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'GEzaYNfN' \
    --namespace $AB_NAMESPACE \
    --userId 'vq2gQLhd' \
    --body '{"screenshots": [{"description": "8ft7hd8M", "screenshotId": "G4xIm4VZ"}, {"description": "xieOdI5j", "screenshotId": "p6LZ8xLJ"}, {"description": "mhztlnXQ", "screenshotId": "jtZlhsux"}]}' \
    > test.out 2>&1
eval_tap $? 153 'UpdateScreenshotsV2' test.out

#- 154 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'RyoPaeG4' \
    --namespace $AB_NAMESPACE \
    --userId 'GU9BZx6q' \
    --body '{"screenshots": [{"contentType": "YCec9GGM", "description": "voj6I73Q", "fileExtension": "jfif"}, {"contentType": "EBXNbhQ5", "description": "sLtybJIt", "fileExtension": "bmp"}, {"contentType": "XQ4ovDXc", "description": "EfcipBDR", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UploadContentScreenshotV2' test.out

#- 155 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'KZMOjYl5' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'Exv2H7lt' \
    --userId 'jj5ZziaO' \
    > test.out 2>&1
eval_tap $? 155 'DeleteContentScreenshotV2' test.out

#- 156 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'aPuaxcMm' \
    --namespace $AB_NAMESPACE \
    --userId 'Ejf8QQdX' \
    --limit '78' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 156 'PublicGetGroupContentsV2' test.out

#- 157 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId '5XA2uAqQ' \
    --limit '97' \
    --offset '23' \
    --sortBy 'hdykqoij' \
    --status 'p4p1EzeT' \
    > test.out 2>&1
eval_tap $? 157 'ListUserStagingContents' test.out

#- 158 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId 'rfxYZGeg' \
    --namespace $AB_NAMESPACE \
    --userId 'URPTS0ak' \
    > test.out 2>&1
eval_tap $? 158 'GetUserStagingContentByID' test.out

#- 159 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId 'dyUsoBhr' \
    --namespace $AB_NAMESPACE \
    --userId 'KVhAPxOp' \
    --body '{"fileExtension": "0niuV4Et", "fileLocation": "57MzGwrl"}' \
    > test.out 2>&1
eval_tap $? 159 'UpdateStagingContent' test.out

#- 160 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId '6z50aNXL' \
    --namespace $AB_NAMESPACE \
    --userId 'NMZ8GYAp' \
    > test.out 2>&1
eval_tap $? 160 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE