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
echo "1..95"

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
    --limit '7' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "kO1Rjdul", "name": "DJ7MEZd5"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'rrfCWnbb' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "1GhaSmCI"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'bW1kU2rW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId '6OP2nrrr' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "EpsYWHSc", "customAttributes": {"8miyDEQj": {}, "rDI7ZRUA": {}, "ibiOJ4FT": {}}, "fileExtension": "0v1epjQP", "name": "dBloyvna", "preview": "TfohEahJ", "previewMetadata": {"previewContentType": "osyv3r1A", "previewFileExtension": "EWuUN3Dy"}, "shareCode": "vabxoKo8", "subType": "sOhh5kMo", "tags": ["sfERMzVD", "kdceqeRz", "gL7L4Drr"], "type": "akLXxckM"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'JJnkxfCm' \
    --contentId 'fFWzKRGm' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "vCfEWVkR", "customAttributes": {"CBGJ5a1b": {}, "XBr0nL7Q": {}, "kGPX10SC": {}}, "fileExtension": "7TjMaPCM", "name": "cQoN19bE", "payload": "lpnTafIa", "preview": "0S5kT6qu", "previewMetadata": {"previewContentType": "EqgAklrE", "previewFileExtension": "RdhWT0Zi"}, "shareCode": "umFcnaTq", "subType": "F1bPS8gT", "tags": ["frxc9bUF", "WuLZvImx", "FnyLkuH8"], "type": "oGe5SwBK", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'U3RgcteO' \
    --namespace $AB_NAMESPACE \
    --creator 'kON7OPbg' \
    --isofficial 'wXwLfvrH' \
    --limit '8' \
    --name 'uTux5Wa7' \
    --offset '55' \
    --orderby 'LBY4r2YR' \
    --sortby 'WAtseJwg' \
    --subtype 'NZFH6ZPp' \
    --tags '["aBnMuoWm", "4c7iS1mP", "dBvMf7Yt"]' \
    --type '4TQlFvTm' \
    --userId 'XoolVLL5' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'HkNxMaDv' \
    --contentId '1RDBl7SB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["31bgMceo", "Gmm25Ws0", "hlHmu5aZ"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'kUQRLyPq' \
    --isofficial 'r7W0UDTA' \
    --limit '3' \
    --name 'KsXs0k1Z' \
    --offset '86' \
    --orderby 'H9Si6kYw' \
    --sortby 'RvXL8EKP' \
    --subtype 'M8XWpwD8' \
    --tags '["kqkzQbfF", "v9NNvRUW", "4HhP07kR"]' \
    --type 'TV3e2pme' \
    --userId 'BMY7dKKj' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["C10dgHBI", "C0tUxm6Y", "HzDzRAW5"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'Bee3wWkr' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'RWxL3FLW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'nY9YAt4a' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'jm6leB2u' \
    --namespace $AB_NAMESPACE \
    --versionId 'iHANXtng' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'shC95PsC' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "4gRCXOBK", "screenshotId": "DjdUKo3D"}, {"description": "1Qe509dV", "screenshotId": "1zwiGkXP"}, {"description": "jeGOr2X0", "screenshotId": "ebEsFkEm"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'zq4cvLQF' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "PnEip2W7", "description": "eVMITk2i", "fileExtension": "jpg"}, {"contentType": "jRXrnMwT", "description": "QsKLr0Mq", "fileExtension": "pjp"}, {"contentType": "rsF3ozGV", "description": "3V4o0wnV", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId '6EgE3Hfh' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'lXV0fY2i' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'RaqHyjK1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["CWqtSFRa", "ZrpwDvNF", "ze20WQNZ"], "name": "W5zZSsYz"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId '7aynbjV7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'yDw6U8KW' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["jjXXaYOF", "cTBOCuB3", "c8BK0nkk"], "name": "tRANdjWt"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'tIEdAdp9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId '0gg5Ma62' \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "lfKxNL14"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'Rft0rJUC' \
    --body '{"tag": "JSEkkc1l"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'vGNP3z6i' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["MRq2g0F4", "wf1Urd38", "8QXXOhhK"], "type": "fr7JOEat"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'wwV4gjyh' \
    --body '{"subtype": ["JGHfkhRu", "XWoDg9ZZ", "N93VAkXc"], "type": "90CB7swH"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'P1RtN7qJ' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'ZeSQgixS' \
    --limit '72' \
    --name 'gTDbohfV' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'o9rNBE7C' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'YE8D3glE' \
    --namespace $AB_NAMESPACE \
    --userId 'W08BxT9r' \
    --body '{"name": "pm17PWC6"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'jcy1r99i' \
    --namespace $AB_NAMESPACE \
    --userId 'PfFzgQaH' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'k0zi8Dwe' \
    --contentId 'P2iWjYU7' \
    --namespace $AB_NAMESPACE \
    --userId '0FIhUVss' \
    --body '{"contentType": "j0fe5bHP", "customAttributes": {"vfw3Nwlm": {}, "SYFrazuT": {}, "0FHxJPVq": {}}, "fileExtension": "xl0c8Jzl", "name": "ZlX3DfNK", "payload": "LvWgjqvt", "preview": "B34C01fn", "previewMetadata": {"previewContentType": "kWWQdsTt", "previewFileExtension": "TGXPjk9D"}, "shareCode": "1B3UCUwV", "subType": "xVig4hgb", "tags": ["Aji3rNYc", "jNhMXHU8", "8iqnCA6p"], "type": "ZmITiZEj", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3' test.out

#- 43 AdminUpdateContentDirect
eval_tap 0 43 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 44 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId '3GLg35NW' \
    --contentId 'VY5hxmoB' \
    --namespace $AB_NAMESPACE \
    --userId 'r4iyoU2M' \
    > test.out 2>&1
eval_tap $? 44 'AdminDeleteContent' test.out

#- 45 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'ZmFLMRgI' \
    --limit '20' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetContent' test.out

#- 46 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'HZxbdDsw' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteAllUserContents' test.out

#- 47 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'GvW34Qmc' \
    --namespace $AB_NAMESPACE \
    --userId 'Zauflpc2' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 47 'AdminHideUserContent' test.out

#- 48 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'vZKt2Vro' \
    --limit '13' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetAllGroups' test.out

#- 49 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'kxRYdn4Z' \
    > test.out 2>&1
eval_tap $? 49 'AdminDeleteAllUserGroup' test.out

#- 50 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'z0HKoxUE' \
    --namespace $AB_NAMESPACE \
    --userId 'uubdPQEg' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetGroup' test.out

#- 51 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId '0b6Rq8xL' \
    --namespace $AB_NAMESPACE \
    --userId 'joyAySDG' \
    --body '{"contents": ["e86N0yu3", "DITGpZoo", "DScBorv4"], "name": "xG9vt3dE"}' \
    > test.out 2>&1
eval_tap $? 51 'AdminUpdateGroup' test.out

#- 52 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'NPhaFjwU' \
    --namespace $AB_NAMESPACE \
    --userId 'dIuKfEED' \
    > test.out 2>&1
eval_tap $? 52 'AdminDeleteGroup' test.out

#- 53 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'smz7qoii' \
    --namespace $AB_NAMESPACE \
    --userId 'vcIgVIqc' \
    --limit '19' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 53 'AdminGetGroupContents' test.out

#- 54 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'Oepk2h35' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteAllUserStates' test.out

#- 55 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'SzboHY5q' \
    --namespace $AB_NAMESPACE \
    --creator '6pMqZuoy' \
    --isofficial 'XxCntGAg' \
    --limit '43' \
    --name 'sGXByOgA' \
    --offset '93' \
    --orderby 'weHaJKgg' \
    --sortby 'y8Hb9kke' \
    --subtype '5NB8VtYh' \
    --tags '["U2YJ1Jkk", "tWcuxfpS", "k9iQMlGz"]' \
    --type '3z4Rpifx' \
    --userId 'D9sSnIVb' \
    > test.out 2>&1
eval_tap $? 55 'SearchChannelSpecificContent' test.out

#- 56 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'JIwaBw90' \
    --isofficial 'qZM7TdXP' \
    --limit '63' \
    --name '37MN8FRf' \
    --offset '0' \
    --orderby 'dtP7JDEG' \
    --sortby 'biIA2uaf' \
    --subtype 'QyKyAvyy' \
    --tags '["Luvl9YG6", "xKmX0JAp", "qjdREKWM"]' \
    --type 'o5CmOEWf' \
    --userId 'yt06aWir' \
    > test.out 2>&1
eval_tap $? 56 'PublicSearchContent' test.out

#- 57 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["IgeEOShL", "G8uidOJo", "jExfrWqs"]}' \
    > test.out 2>&1
eval_tap $? 57 'PublicGetContentBulk' test.out

#- 58 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 58 'GetFollowedContent' test.out

#- 59 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '63' \
    --name '7L4qJy4Q' \
    --offset '63' \
    --orderby 'oI5dzUXy' \
    --sortby 'krELvJMW' \
    --subtype 'GQMFpujB' \
    --tags '["AFJugV9v", "EGvWUnuX", "BYPDc60Z"]' \
    --type 'KdTHB8kg' \
    > test.out 2>&1
eval_tap $? 59 'GetLikedContent' test.out

#- 60 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode '5r31UoMK' \
    > test.out 2>&1
eval_tap $? 60 'PublicDownloadContentByShareCode' test.out

#- 61 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'avRhzXry' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'PublicDownloadContentByContentID' test.out

#- 62 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'tiBEgTPJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'AddDownloadCount' test.out

#- 63 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'TlSSieRs' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 63 'UpdateContentLikeStatus' test.out

#- 64 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId '9Uu96euR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentPreview' test.out

#- 65 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 65 'GetTag' test.out

#- 66 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 66 'GetType' test.out

#- 67 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '32' \
    --orderby 'jDoVxshT' \
    --sortby 'kxZNigBC' \
    > test.out 2>&1
eval_tap $? 67 'PublicSearchCreator' test.out

#- 68 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 68 'GetFollowedUsers' test.out

#- 69 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId '5uZacqMP' \
    > test.out 2>&1
eval_tap $? 69 'PublicGetCreator' test.out

#- 70 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'll7VksV0' \
    --limit '47' \
    --name '3XK5bPnt' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 70 'GetChannels' test.out

#- 71 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'bGqrdgqg' \
    --body '{"name": "I4psMMpH"}' \
    > test.out 2>&1
eval_tap $? 71 'PublicCreateChannel' test.out

#- 72 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'XIuooGgA' \
    > test.out 2>&1
eval_tap $? 72 'DeleteAllUserChannel' test.out

#- 73 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'l5ziRjbs' \
    --namespace $AB_NAMESPACE \
    --userId 'UPbXGWpc' \
    --body '{"name": "2RBFZxIM"}' \
    > test.out 2>&1
eval_tap $? 73 'UpdateChannel' test.out

#- 74 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'VFIPjytF' \
    --namespace $AB_NAMESPACE \
    --userId 'DMvLOiW7' \
    > test.out 2>&1
eval_tap $? 74 'DeleteChannel' test.out

#- 75 CreateContentDirect
eval_tap 0 75 'CreateContentDirect # SKIP deprecated' test.out

#- 76 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'L6qaHLeh' \
    --namespace $AB_NAMESPACE \
    --userId 'OWZRrgSZ' \
    --body '{"contentType": "4Qlh4KGW", "customAttributes": {"drfC0sXq": {}, "riFVvPN8": {}, "wGSUKq2J": {}}, "fileExtension": "qp0AS8qm", "name": "K3VNa4DS", "preview": "HjxWafTt", "previewMetadata": {"previewContentType": "9c2hoPTF", "previewFileExtension": "ABOWHgHL"}, "subType": "3hZCyqLA", "tags": ["BOejn2kb", "SO8L1S8Z", "jRaklm7Q"], "type": "OZzyHqsI"}' \
    > test.out 2>&1
eval_tap $? 76 'CreateContentS3' test.out

#- 77 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'Vwo90b77' \
    --contentId 'ANjZ38IW' \
    --namespace $AB_NAMESPACE \
    --userId 'BTAWMhDd' \
    --body '{"contentType": "bta1K6pG", "customAttributes": {"xBCKA58k": {}, "M8fa45go": {}, "WuZWuWxe": {}}, "fileExtension": "uFlbSwF1", "name": "L4b84UVY", "payload": "oN3R6MFQ", "preview": "RSXJt19U", "previewMetadata": {"previewContentType": "nCDI7vCz", "previewFileExtension": "zT8pO5br"}, "subType": "h2DEnqgD", "tags": ["KhlRJN8G", "ojIeHk1e", "Z8N7oExd"], "type": "7Af1lvC3", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 77 'UpdateContentS3' test.out

#- 78 UpdateContentDirect
eval_tap 0 78 'UpdateContentDirect # SKIP deprecated' test.out

#- 79 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId '1Aunabgb' \
    --contentId 'mU9F1jTI' \
    --namespace $AB_NAMESPACE \
    --userId '8qPzo8uH' \
    > test.out 2>&1
eval_tap $? 79 'DeleteContent' test.out

#- 80 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'M7d4h3W8' \
    --limit '29' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 80 'PublicGetUserContent' test.out

#- 81 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'KHrN2hSU' \
    > test.out 2>&1
eval_tap $? 81 'DeleteAllUserContents' test.out

#- 82 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'I5S95nHh' \
    --namespace $AB_NAMESPACE \
    --userId 'MDrEtCCl' \
    --body '{"screenshots": [{"description": "hVj3PS1t", "screenshotId": "8rmyBmaT"}, {"description": "QWpJNGiZ", "screenshotId": "I8WUnp9A"}, {"description": "Qchcqy96", "screenshotId": "wQn2NEqq"}]}' \
    > test.out 2>&1
eval_tap $? 82 'UpdateScreenshots' test.out

#- 83 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'gwDI12nU' \
    --namespace $AB_NAMESPACE \
    --userId 'zBppqXzj' \
    --body '{"screenshots": [{"contentType": "w4C9AYX3", "description": "bf76BUzJ", "fileExtension": "png"}, {"contentType": "2Rv8vSCE", "description": "ubLoUKSa", "fileExtension": "jpeg"}, {"contentType": "2Bc6KFxG", "description": "tO4eEohu", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 83 'UploadContentScreenshot' test.out

#- 84 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'WP8iRYR8' \
    --namespace $AB_NAMESPACE \
    --screenshotId 's3MHe3ip' \
    --userId 'GZtVGdJD' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContentScreenshot' test.out

#- 85 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'VngeUjVL' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateUserFollowStatus' test.out

#- 86 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'SFb5LzRk' \
    --limit '38' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 86 'GetPublicFollowers' test.out

#- 87 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId '6sKLWnn2' \
    --limit '13' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 87 'GetPublicFollowing' test.out

#- 88 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'nYhrbqxv' \
    --limit '86' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 88 'GetGroups' test.out

#- 89 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId '5FLzHdkD' \
    --body '{"contents": ["bOZM8MGS", "wGXkgRuJ", "9xA6OjaN"], "name": "QdIp60QT"}' \
    > test.out 2>&1
eval_tap $? 89 'CreateGroup' test.out

#- 90 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'ERyxzcia' \
    > test.out 2>&1
eval_tap $? 90 'DeleteAllUserGroup' test.out

#- 91 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'qxdVpyRm' \
    --namespace $AB_NAMESPACE \
    --userId 'h4z4qKAn' \
    > test.out 2>&1
eval_tap $? 91 'GetGroup' test.out

#- 92 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'PwqPgnEC' \
    --namespace $AB_NAMESPACE \
    --userId 'CvZ7LfhY' \
    --body '{"contents": ["yY1ctvF0", "iBSr9ynk", "Hb9WJjWa"], "name": "ym4Env8M"}' \
    > test.out 2>&1
eval_tap $? 92 'UpdateGroup' test.out

#- 93 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'UcNnI0o3' \
    --namespace $AB_NAMESPACE \
    --userId 'fgBv9Nfj' \
    > test.out 2>&1
eval_tap $? 93 'DeleteGroup' test.out

#- 94 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId '0FZZDSvb' \
    --namespace $AB_NAMESPACE \
    --userId 'ixbA3V61' \
    --limit '14' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 94 'GetGroupContent' test.out

#- 95 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'dTRXUHVg' \
    > test.out 2>&1
eval_tap $? 95 'DeleteAllUserStates' test.out


rm -f "tmp.dat"

exit $EXIT_CODE