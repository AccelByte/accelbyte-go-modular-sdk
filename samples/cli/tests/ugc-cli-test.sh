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
echo "1..146"

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
    --limit '23' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "rMuOXHcJ", "name": "waG8cSTN"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'er2igMtK' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "5jIcFLFm"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId '6l0snNm0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'IG9cL72P' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "YzIM2LJO", "customAttributes": {"J6ytIrsa": {}, "aBOhukpv": {}, "CRDGjXyN": {}}, "fileExtension": "zHJlmPRG", "name": "ICnSLWTs", "preview": "QH2uf5i5", "previewMetadata": {"previewContentType": "YzNKgPZc", "previewFileExtension": "tVoH9aeh"}, "shareCode": "u27JETqz", "subType": "8BCEJSHn", "tags": ["2QSnIN4b", "RSaInG3r", "isAZIrCJ"], "type": "SDXRYVs2"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'SN7cCpjd' \
    --contentId 'kxGO78PH' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "QDiQttQd", "customAttributes": {"zBD9MXbo": {}, "SFN2f29E": {}, "Tjy0qdel": {}}, "fileExtension": "iGN7YtrY", "name": "LQlOqlK1", "payload": "sUxohlAh", "preview": "Vdd4MRSq", "previewMetadata": {"previewContentType": "abEZDQAo", "previewFileExtension": "xw9kYRL2"}, "shareCode": "4cfgI0F5", "subType": "dHABRANq", "tags": ["p15FrGmT", "NPaJzXvC", "nvDpiXlP"], "type": "soy483ya", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'WTqsw9jL' \
    --namespace $AB_NAMESPACE \
    --creator '5aqLtYHh' \
    --ishidden 'mzu5vmUm' \
    --isofficial 'QzjktyJU' \
    --limit '71' \
    --name 'MgChZfRG' \
    --offset '50' \
    --orderby 'mCidJcBz' \
    --sortby 'ylcUW0vR' \
    --subtype 'h3Ue6XFp' \
    --tags '["ho7EW7pL", "ijPWyqNW", "8nqq4a4u"]' \
    --type 'zGhoLaOt' \
    --userId 'yKnPft3u' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'r5lY8op0' \
    --contentId '1le8qNz6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["QNGgJgVA", "P9vmtFu4", "MY9Sh3Vn"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator '7l78E6Ub' \
    --ishidden 'gNrsm6MP' \
    --isofficial '0a60MPIu' \
    --limit '69' \
    --name 'sMHHuXgc' \
    --offset '45' \
    --orderby 'oRWnlhxG' \
    --sortby 'BQRFD9gG' \
    --subtype 'kbcjpYt8' \
    --tags '["IVGB5Fbc", "mDLyn4FY", "ANQNvHan"]' \
    --type 'OBOJGm4D' \
    --userId '0tydV02a' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["6VjJWw2P", "g2wuclWG", "T4QaSKqG"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'L3LLwZzz' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'LxKqYhQZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'sEJzsotb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'FSVIl7f0' \
    --namespace $AB_NAMESPACE \
    --versionId '9qgH413z' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'FouMkCTE' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "EP7c22SC", "screenshotId": "MK6ZQusv"}, {"description": "wR5GShM0", "screenshotId": "sOs9XeDs"}, {"description": "iYMaCqAg", "screenshotId": "vnAvXz5s"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'uyNmgzPr' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "7TDLcD05", "description": "25cHH0uM", "fileExtension": "jfif"}, {"contentType": "O0V6Cr3q", "description": "eu2dNDu2", "fileExtension": "jpg"}, {"contentType": "zPFkd7TH", "description": "ZSal6TMd", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'GKbHtrVk' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'MugqVQkF' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'LdE3ugVn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["ahe4rFST", "xHmMhCfb", "lfD4HDae"], "name": "YWmK37Yg"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'JRdgju1O' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'xiewizlS' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["ktideHsh", "tuVmd4Gq", "Os19BxP4"], "name": "8z3Wx6iU"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'ocXkTJGE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'WIfN5G11' \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "7oQJYz6b"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'PawUMZRC' \
    --body '{"tag": "BewunDod"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'd1YpmEFO' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["R5S9TvF7", "o4g2SMAg", "VZkDH5Ve"], "type": "SX7gMwkj"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'kTtjJmTY' \
    --body '{"subtype": ["wpqE6ueg", "YYURcXss", "KvYNzik3"], "type": "yWTaWWVB"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'GAyz5Ijc' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'AL3w6WHi' \
    --limit '33' \
    --name 'VYMsqjLI' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'EDSr9Zs4' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'u7B6UpgD' \
    --namespace $AB_NAMESPACE \
    --userId 'SwUZldd8' \
    --body '{"name": "1pxsVvWn"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'oTJD5C2f' \
    --namespace $AB_NAMESPACE \
    --userId 'v2qmGd3z' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'or5i8gqR' \
    --namespace $AB_NAMESPACE \
    --shareCode 'uWg27j4w' \
    --userId 'UFhXruiS' \
    --body '{"contentType": "APqmniCT", "customAttributes": {"aHQF3ZnN": {}, "7KaXHoTe": {}, "X2f6xmVD": {}}, "fileExtension": "3nY4QEvK", "name": "l623n7n9", "payload": "qaE5wAKA", "preview": "8Kqv6t3j", "previewMetadata": {"previewContentType": "90udzsye", "previewFileExtension": "vjlWf42r"}, "shareCode": "uKl486zT", "subType": "QrO9mafd", "tags": ["p3Xy23Lk", "l8Ywoe7B", "MZRzuIPB"], "type": "Eo68aUom", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId '7ozhEOQn' \
    --contentId 'IPia6Hk6' \
    --namespace $AB_NAMESPACE \
    --userId '5CPMe7Lx' \
    --body '{"contentType": "wMJQ60t2", "customAttributes": {"eNRLxnyh": {}, "a0lEE3SY": {}, "B2BDsWP9": {}}, "fileExtension": "yFQXtNL0", "name": "IsFgT2Sn", "payload": "l3evea6o", "preview": "jJlvZaFC", "previewMetadata": {"previewContentType": "gbslDaIb", "previewFileExtension": "4CMbvpqT"}, "shareCode": "v3RVTp5y", "subType": "F2dSB53e", "tags": ["LrOuvV4C", "5TA5d8lo", "CUVMCv3G"], "type": "sHlrV51Q", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'pFzIqL8I' \
    --namespace $AB_NAMESPACE \
    --shareCode 'clIm3Tfp' \
    --userId 'Nju7HGCK' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'pyh7nSFF' \
    --contentId 'RBQduYyw' \
    --namespace $AB_NAMESPACE \
    --userId 'dGtQHLYx' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'Bb1AkTqw' \
    --limit '80' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'hriFmlSP' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId '1rhFEYeg' \
    --namespace $AB_NAMESPACE \
    --userId 'h6C7fmMO' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'oZ0blZ22' \
    --limit '39' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'oGPQ0jip' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'TTttSXmA' \
    --namespace $AB_NAMESPACE \
    --userId 'JmqCp8hK' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'A4FxEqN8' \
    --namespace $AB_NAMESPACE \
    --userId 'mGYOZ5eH' \
    --body '{"contents": ["PZUonv7n", "ZiK7pZHO", "ZgEWvivB"], "name": "mgrCPkWm"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'AtjAZvFW' \
    --namespace $AB_NAMESPACE \
    --userId 'HGSgpmBb' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'rkzHfJTn' \
    --namespace $AB_NAMESPACE \
    --userId 'vOvtcWGW' \
    --limit '25' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'yIdtAtKw' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId '02JvxrIp' \
    --namespace $AB_NAMESPACE \
    --creator 'vitWadzN' \
    --ishidden 'Th1Jc3qU' \
    --isofficial 'A2kW0lPa' \
    --limit '21' \
    --name 'aoZL4tyI' \
    --offset '60' \
    --orderby 'Cn3662Tu' \
    --sortby '3QmQpJxe' \
    --subtype '4kHQVkDp' \
    --tags '["ujOksEtl", "2OkTSGyf", "FiaQUa99"]' \
    --type '2aQ7fCGo' \
    --userId 'MYvyH4aM' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'NzXCN1Mn' \
    --ishidden 'z6E36gEM' \
    --isofficial 'DFRX96jV' \
    --limit '5' \
    --name '7MIl7mBS' \
    --offset '46' \
    --orderby 'iTh4USNA' \
    --sortby 'ySvgokoe' \
    --subtype 'W8aDutWy' \
    --tags '["3iD5lql7", "TkcvEwTS", "hS1d6rKx"]' \
    --type '9gVU2VRn' \
    --userId 'gwFhaw9B' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["T4sGbHmx", "7s31VbmD", "JI4AWrqt"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '39' \
    --name 'xYWGY6dL' \
    --offset '56' \
    --orderby 'yMN5hoyh' \
    --sortby 'yo2T6axo' \
    --subtype 'Rm5BgyFB' \
    --tags '["MPA9oGBD", "IqCFOPaT", "OgILKXsV"]' \
    --type 'sZtPL1kL' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'U5PYFp4v' \
    > test.out 2>&1
eval_tap $? 62 'PublicDownloadContentByShareCode' test.out

#- 63 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'Ghl7ChXm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByContentID' test.out

#- 64 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'PcF9nYhM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'AddDownloadCount' test.out

#- 65 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'JmKC9MVL' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateContentLikeStatus' test.out

#- 66 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId '6XiAvICF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'PublicDownloadContentPreview' test.out

#- 67 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '90' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 67 'GetTag' test.out

#- 68 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 68 'GetType' test.out

#- 69 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '17' \
    --orderby 'Zz35VlTO' \
    --sortby 'XiSeQC6e' \
    > test.out 2>&1
eval_tap $? 69 'PublicSearchCreator' test.out

#- 70 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 70 'GetFollowedUsers' test.out

#- 71 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId '8MfHJYDh' \
    > test.out 2>&1
eval_tap $? 71 'PublicGetCreator' test.out

#- 72 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'IuEEWkuh' \
    --limit '7' \
    --name '6Zx7Ltzc' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 72 'GetChannels' test.out

#- 73 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'DscuVBC7' \
    --body '{"name": "bn2hZJIG"}' \
    > test.out 2>&1
eval_tap $? 73 'PublicCreateChannel' test.out

#- 74 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'FFUgKQuT' \
    > test.out 2>&1
eval_tap $? 74 'DeleteAllUserChannel' test.out

#- 75 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'KPM5QrEY' \
    --namespace $AB_NAMESPACE \
    --userId 'HYt5CuJf' \
    --body '{"name": "G76qoSJo"}' \
    > test.out 2>&1
eval_tap $? 75 'UpdateChannel' test.out

#- 76 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'C9t0Lud3' \
    --namespace $AB_NAMESPACE \
    --userId 'TGKbvdbY' \
    > test.out 2>&1
eval_tap $? 76 'DeleteChannel' test.out

#- 77 CreateContentDirect
eval_tap 0 77 'CreateContentDirect # SKIP deprecated' test.out

#- 78 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId '46XIUxX9' \
    --namespace $AB_NAMESPACE \
    --userId 'mQIBetSG' \
    --body '{"contentType": "aFDxu3pF", "customAttributes": {"5xXHRg1P": {}, "GDxFBfrB": {}, "UYqTwohi": {}}, "fileExtension": "6FvcHVyF", "name": "cdhfb5l0", "preview": "Rhjeo2UJ", "previewMetadata": {"previewContentType": "gt0y1KXz", "previewFileExtension": "FD4TGNA3"}, "subType": "H51tttRq", "tags": ["6F0vvZUm", "Ly9tVANl", "YVcqP7OS"], "type": "dqnGxbx5"}' \
    > test.out 2>&1
eval_tap $? 78 'CreateContentS3' test.out

#- 79 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'fI5AJrc4' \
    --namespace $AB_NAMESPACE \
    --shareCode 'AqJAvBtu' \
    --userId 'y43pgfWd' \
    --body '{"contentType": "10iVdgCp", "customAttributes": {"R8NV7Pju": {}, "u99mlzC2": {}, "KHggGobU": {}}, "fileExtension": "RdWTKheL", "name": "BFYYqwuZ", "payload": "uUsAaTFF", "preview": "HpjgnneL", "previewMetadata": {"previewContentType": "yi4qFNgb", "previewFileExtension": "4I3XdajJ"}, "subType": "PGFEnUmK", "tags": ["CGU2zDII", "HvwEBJUA", "LORusHtF"], "type": "RwepeBIW", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 79 'PublicUpdateContentByShareCode' test.out

#- 80 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'U8APnu1Q' \
    --contentId '9InRDkL6' \
    --namespace $AB_NAMESPACE \
    --userId 'WIILb2Qv' \
    --body '{"contentType": "2haLyeD0", "customAttributes": {"IIFht4GX": {}, "Wb1J6tfN": {}, "2Wifbdc1": {}}, "fileExtension": "uZilL1Tl", "name": "u2G1IZhW", "payload": "bzyjXoIN", "preview": "U09XBJCv", "previewMetadata": {"previewContentType": "CApmoYNk", "previewFileExtension": "kvXRRWBj"}, "subType": "XzXmnqjT", "tags": ["WZM6zP63", "pHOgAsZ5", "8SedGXLN"], "type": "zg389Doj", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 80 'UpdateContentS3' test.out

#- 81 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId 'ekxKNpVf' \
    --namespace $AB_NAMESPACE \
    --shareCode 'VvdJRYzR' \
    --userId '1yFlDABR' \
    > test.out 2>&1
eval_tap $? 81 'PublicDeleteContentByShareCode' test.out

#- 82 UpdateContentDirect
eval_tap 0 82 'UpdateContentDirect # SKIP deprecated' test.out

#- 83 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId '1IsIUWCH' \
    --contentId 'GvZyPjFI' \
    --namespace $AB_NAMESPACE \
    --userId 'adySKhh9' \
    > test.out 2>&1
eval_tap $? 83 'DeleteContent' test.out

#- 84 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'TCccDOqM' \
    --limit '60' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 84 'PublicGetUserContent' test.out

#- 85 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId '98IBjeY6' \
    > test.out 2>&1
eval_tap $? 85 'DeleteAllUserContents' test.out

#- 86 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'KUlpDdw3' \
    --namespace $AB_NAMESPACE \
    --userId 'TCopLmu4' \
    --body '{"screenshots": [{"description": "Y8ZpY05O", "screenshotId": "Lvh8wqgE"}, {"description": "qwbZ1xe0", "screenshotId": "L5bFPv1j"}, {"description": "IMH4sIBc", "screenshotId": "ZTAJYZyH"}]}' \
    > test.out 2>&1
eval_tap $? 86 'UpdateScreenshots' test.out

#- 87 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'c18jvHv0' \
    --namespace $AB_NAMESPACE \
    --userId 'rwvpzj1W' \
    --body '{"screenshots": [{"contentType": "tC2GSRtn", "description": "YvYEdKnd", "fileExtension": "bmp"}, {"contentType": "Uo2bPrCq", "description": "X5xqhVly", "fileExtension": "jpeg"}, {"contentType": "T3AevC1V", "description": "9XXFRfKu", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 87 'UploadContentScreenshot' test.out

#- 88 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'eiWfcWBl' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'kvSz400w' \
    --userId 'qDHzDf8Q' \
    > test.out 2>&1
eval_tap $? 88 'DeleteContentScreenshot' test.out

#- 89 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'SgiqebYS' \
    --body '{"followStatus": false}' \
    > test.out 2>&1
eval_tap $? 89 'UpdateUserFollowStatus' test.out

#- 90 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'wpfHLMGz' \
    --limit '34' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 90 'GetPublicFollowers' test.out

#- 91 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId '3W8q5VPy' \
    --limit '29' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 91 'GetPublicFollowing' test.out

#- 92 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'aMGNUMXz' \
    --limit '69' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 92 'GetGroups' test.out

#- 93 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'q2iVQasu' \
    --body '{"contents": ["ExtWVl0g", "BsHt8JAl", "yl75NHq9"], "name": "RMJmdq0T"}' \
    > test.out 2>&1
eval_tap $? 93 'CreateGroup' test.out

#- 94 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'yVbNmnpV' \
    > test.out 2>&1
eval_tap $? 94 'DeleteAllUserGroup' test.out

#- 95 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'IJtmpX9f' \
    --namespace $AB_NAMESPACE \
    --userId 'O6Ri31YR' \
    > test.out 2>&1
eval_tap $? 95 'GetGroup' test.out

#- 96 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'zwglZWud' \
    --namespace $AB_NAMESPACE \
    --userId 'eunSB9yF' \
    --body '{"contents": ["gXJrrPW8", "kd8dYQuD", "eXUC1Dkl"], "name": "sS6iH6sa"}' \
    > test.out 2>&1
eval_tap $? 96 'UpdateGroup' test.out

#- 97 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'QfLFvWVg' \
    --namespace $AB_NAMESPACE \
    --userId 'l0aK1EIU' \
    > test.out 2>&1
eval_tap $? 97 'DeleteGroup' test.out

#- 98 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'QUPPQW0x' \
    --namespace $AB_NAMESPACE \
    --userId 'JEkOze7n' \
    --limit '12' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 98 'GetGroupContent' test.out

#- 99 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'vjChOzmN' \
    > test.out 2>&1
eval_tap $? 99 'DeleteAllUserStates' test.out

#- 100 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'GPPPwTiR' \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '38' \
    --sortBy 'aElqXL9C' \
    > test.out 2>&1
eval_tap $? 100 'AdminGetContentByChannelIDV2' test.out

#- 101 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'YYmFOlvt' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "LnSGhnt8", "customAttributes": {"U72ruoJa": {}, "k0qLQKuz": {}, "VIgrZCxx": {}}, "fileExtension": "Ldn0eBUG", "name": "4bnbsOKa", "shareCode": "8DwYp4uR", "subType": "4lTknd8z", "tags": ["AypTElQo", "iDvqLCzn", "phdjtWUr"], "type": "V7KprIND"}' \
    > test.out 2>&1
eval_tap $? 101 'AdminCreateContentV2' test.out

#- 102 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'XplyR416' \
    --contentId 'XJZMctti' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 102 'AdminDeleteOfficialContentV2' test.out

#- 103 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'UDWBF0hT' \
    --contentId 'JXZOAkZQ' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"SQEkYU7r": {}, "IO4B13ur": {}, "5NWNnjAp": {}}, "name": "VTUMzyhi", "shareCode": "RFboV1N3", "subType": "NZ82pQRb", "tags": ["zvAKZQj3", "vZt4azOs", "7IJrFMEA"], "type": "nW2ZXbGl"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminUpdateOfficialContentV2' test.out

#- 104 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'C8qapMXW' \
    --contentId 'MUQpb9Lk' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "0AcRagH3", "fileLocation": "hbCmEmFx"}' \
    > test.out 2>&1
eval_tap $? 104 'AdminUpdateOfficialContentFileLocation' test.out

#- 105 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'Z9q1JOOX' \
    --contentId 'DEPKu4XS' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "XWO9cuMq", "fileExtension": "BwgM4mX8"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 106 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --name '5YydBh8n' \
    --offset '5' \
    --sortBy '4X9zHwj3' \
    --subType 'zdsLRO2J' \
    --tags '["iwq1mCkf", "Wj0zSqih", "yE8ebOhW"]' \
    --type 'Izp06nPZ' \
    > test.out 2>&1
eval_tap $? 106 'AdminListContentV2' test.out

#- 107 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["fTdIfaHh", "7FYm7QLH", "SgvDM3OR"]}' \
    > test.out 2>&1
eval_tap $? 107 'AdminBulkGetContentByIDsV2' test.out

#- 108 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["I7U3HVl6", "fiMWPo9N", "vp7KXVqW"]}' \
    > test.out 2>&1
eval_tap $? 108 'AdminGetContentBulkByShareCodesV2' test.out

#- 109 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'oMBtkwqU' \
    > test.out 2>&1
eval_tap $? 109 'AdminGetContentByShareCodeV2' test.out

#- 110 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 'M8uWaQHF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 110 'AdminGetContentByContentIDV2' test.out

#- 111 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'R4DEh5Qc' \
    --namespace $AB_NAMESPACE \
    --versionId 'hQWHUl5e' \
    > test.out 2>&1
eval_tap $? 111 'RollbackContentVersionV2' test.out

#- 112 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId '9EoYqYSf' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "c2CBgNpA", "screenshotId": "4vQ6B1of"}, {"description": "kdJG9sG9", "screenshotId": "MmZBByAf"}, {"description": "YRs9eZzW", "screenshotId": "5A52r7Cv"}]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminUpdateScreenshotsV2' test.out

#- 113 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 'XQp707An' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "zcHS79YP", "description": "QWPTZoft", "fileExtension": "jpg"}, {"contentType": "i9KMDtjo", "description": "z94rxiAo", "fileExtension": "bmp"}, {"contentType": "zjqB3TlS", "description": "fsVrZjM8", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUploadContentScreenshotV2' test.out

#- 114 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'CgAkLtEQ' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'rwuWaY34' \
    > test.out 2>&1
eval_tap $? 114 'AdminDeleteContentScreenshotV2' test.out

#- 115 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId '0riUMkiC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'ListContentVersionsV2' test.out

#- 116 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'mTiNdK4u' \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetOfficialGroupContentsV2' test.out

#- 117 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'IRDsKPTw' \
    --namespace $AB_NAMESPACE \
    --shareCode 'mASLLv1g' \
    --userId 'Lox4NDbD' \
    --body '{"customAttributes": {"EEknbt7w": {}, "hqHyRPCg": {}, "optp1qJJ": {}}, "name": "Sol5cvfy", "shareCode": "CrTmcEEp", "subType": "EIfTl59r", "tags": ["MLtwL5gh", "nEX3JuaW", "E1iuqf7E"], "type": "AYngZpeJ"}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateContentByShareCodeV2' test.out

#- 118 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId '5HkNw335' \
    --namespace $AB_NAMESPACE \
    --shareCode 'zer4gj9Q' \
    --userId '5JOosQ6v' \
    > test.out 2>&1
eval_tap $? 118 'AdminDeleteContentByShareCodeV2' test.out

#- 119 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'cpFdvrJ1' \
    --contentId 'wPYPYH7X' \
    --namespace $AB_NAMESPACE \
    --userId 'zwriDdnR' \
    > test.out 2>&1
eval_tap $? 119 'AdminDeleteUserContentV2' test.out

#- 120 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'ltIynlLj' \
    --contentId 'GMCP4krG' \
    --namespace $AB_NAMESPACE \
    --userId '36GSuIdJ' \
    --body '{"customAttributes": {"qbQUjRnG": {}, "ctSOpCqf": {}, "SLjHlzLq": {}}, "name": "J1FiUk3g", "shareCode": "uedpm5bN", "subType": "co4wXUfv", "tags": ["btJDAi2b", "7XTUkwMR", "BIn5AaTA"], "type": "jqTFo5mE"}' \
    > test.out 2>&1
eval_tap $? 120 'AdminUpdateUserContentV2' test.out

#- 121 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'qMUFFcZ0' \
    --contentId 'CURHRkVm' \
    --namespace $AB_NAMESPACE \
    --userId 'Wi2zUKTw' \
    --body '{"fileExtension": "sQTBqfpw", "fileLocation": "kzgBpBjr"}' \
    > test.out 2>&1
eval_tap $? 121 'AdminUpdateUserContentFileLocation' test.out

#- 122 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'apddqaUx' \
    --contentId '531RZyNU' \
    --namespace $AB_NAMESPACE \
    --userId 'kuuNheAF' \
    --body '{"contentType": "1sgtzEdG", "fileExtension": "jClcjXr9"}' \
    > test.out 2>&1
eval_tap $? 122 'AdminGenerateUserContentUploadURLV2' test.out

#- 123 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'FoqcjXeD' \
    --limit '39' \
    --offset '16' \
    --sortBy 'q8xJyjkn' \
    > test.out 2>&1
eval_tap $? 123 'AdminGetContentByUserIDV2' test.out

#- 124 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId '5X48QLL3' \
    --namespace $AB_NAMESPACE \
    --userId 'OioNYLLw' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateContentHideStatusV2' test.out

#- 125 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId '5TzMNDlA' \
    --namespace $AB_NAMESPACE \
    --userId 'gE1eUs2f' \
    --limit '25' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 125 'AdminGetUserGroupContentsV2' test.out

#- 126 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId '3a25lsXa' \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '26' \
    --sortBy 'EG0AzuiO' \
    > test.out 2>&1
eval_tap $? 126 'PublicGetContentByChannelIDV2' test.out

#- 127 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --name 'q90Yn8ut' \
    --offset '45' \
    --sortBy 'BTcGllAo' \
    --subType 'ctGBjRnF' \
    --tags '["3sB4N51G", "57xEF6ui", "dwGd1nBi"]' \
    --type 'DaK0i34V' \
    > test.out 2>&1
eval_tap $? 127 'PublicListContentV2' test.out

#- 128 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["cDUQtShg", "5tKPJZDi", "pYNdcbuK"]}' \
    > test.out 2>&1
eval_tap $? 128 'PublicBulkGetContentByIDV2' test.out

#- 129 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'vNOwBTIh' \
    > test.out 2>&1
eval_tap $? 129 'PublicGetContentByShareCodeV2' test.out

#- 130 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'vF3FqEIs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 130 'PublicGetContentByIDV2' test.out

#- 131 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'R2ZLqHkl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 131 'PublicAddDownloadCountV2' test.out

#- 132 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'SiG9Mm0A' \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '78' \
    --sortBy '7SKkvjBZ' \
    --userId 'Rg7XnuTM' \
    > test.out 2>&1
eval_tap $? 132 'PublicListContentDownloaderV2' test.out

#- 133 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'lnqeql1m' \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '62' \
    --sortBy 'oEvjxhli' \
    > test.out 2>&1
eval_tap $? 133 'PublicListContentLikeV2' test.out

#- 134 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId '6QxhH50Y' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 134 'UpdateContentLikeStatusV2' test.out

#- 135 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'WiLfvGgK' \
    --namespace $AB_NAMESPACE \
    --userId 'ttUs62Rb' \
    --body '{"contentType": "tNrINVKD", "customAttributes": {"5Hu3xBbR": {}, "zAVJrs9B": {}, "tuHudouc": {}}, "fileExtension": "TZZaHCCO", "name": "ie7TNeZC", "subType": "3NFqktlr", "tags": ["96bRjy7S", "V0ZyFRW3", "HuFR8hhJ"], "type": "L4RBPRXa"}' \
    > test.out 2>&1
eval_tap $? 135 'PublicCreateContentV2' test.out

#- 136 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId '3awrKTxJ' \
    --namespace $AB_NAMESPACE \
    --shareCode 'cI8w36rk' \
    --userId 'RiSGtmbj' \
    --body '{"customAttributes": {"1Dv6ByQf": {}, "DDHtjQLg": {}, "2NtD5ki6": {}}, "name": "1XcFlRKX", "subType": "mNnAPtxI", "tags": ["TNGHDAjO", "3dj0Cz2k", "HGeZZor7"], "type": "7V2RIbbX"}' \
    > test.out 2>&1
eval_tap $? 136 'PublicUpdateContentByShareCodeV2' test.out

#- 137 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'abQMewGl' \
    --namespace $AB_NAMESPACE \
    --shareCode 'lDgArwGi' \
    --userId 'cSk6dBBv' \
    > test.out 2>&1
eval_tap $? 137 'PublicDeleteContentByShareCodeV2' test.out

#- 138 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'Pulozwa3' \
    --contentId 'TgkoTEOY' \
    --namespace $AB_NAMESPACE \
    --userId 'LPRC7oyX' \
    > test.out 2>&1
eval_tap $? 138 'PublicDeleteContentV2' test.out

#- 139 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'ij8rgl0Y' \
    --contentId 'GJqF5AJ9' \
    --namespace $AB_NAMESPACE \
    --userId 'ds515goC' \
    --body '{"customAttributes": {"KkYtnojU": {}, "Is0mY72M": {}, "YY0UoOUa": {}}, "name": "ZnL9FlOZ", "subType": "Y6vIsDV4", "tags": ["9f3EIgR4", "eNtV4MLe", "b6ye5KV3"], "type": "a1g6OMXm"}' \
    > test.out 2>&1
eval_tap $? 139 'PublicUpdateContentV2' test.out

#- 140 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'mLFtyYMX' \
    --contentId 'StDXfh6m' \
    --namespace $AB_NAMESPACE \
    --userId '6q0h3aSJ' \
    --body '{"fileExtension": "C4ymxa7X", "fileLocation": "hAahGu5O"}' \
    > test.out 2>&1
eval_tap $? 140 'PublicUpdateContentFileLocation' test.out

#- 141 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'vcusG2T8' \
    --contentId 'F60cZDl1' \
    --namespace $AB_NAMESPACE \
    --userId 'RS3Q2Dnj' \
    --body '{"contentType": "wJHdHLIJ", "fileExtension": "ig9ffuD2"}' \
    > test.out 2>&1
eval_tap $? 141 'PublicGenerateContentUploadURLV2' test.out

#- 142 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'KMauOmru' \
    --limit '86' \
    --offset '58' \
    --sortBy 'RwJf7y9V' \
    > test.out 2>&1
eval_tap $? 142 'PublicGetContentByUserIDV2' test.out

#- 143 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'bt3Ad1DY' \
    --namespace $AB_NAMESPACE \
    --userId 'XX9NksMs' \
    --body '{"screenshots": [{"description": "s9a4yyDv", "screenshotId": "61NpgU7M"}, {"description": "vMdl8KiU", "screenshotId": "WYL7KeVX"}, {"description": "D672LMzl", "screenshotId": "1B57Gy8p"}]}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateScreenshotsV2' test.out

#- 144 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'm478gvIU' \
    --namespace $AB_NAMESPACE \
    --userId 'onRW0iQZ' \
    --body '{"screenshots": [{"contentType": "NxVuTovu", "description": "7BrM8rab", "fileExtension": "png"}, {"contentType": "KTpkWOPo", "description": "nxMncL7y", "fileExtension": "pjp"}, {"contentType": "bFATyOq3", "description": "nK9CYyv7", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 144 'UploadContentScreenshotV2' test.out

#- 145 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'eVbV9Tst' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'iXUCpXFN' \
    --userId 'hWeIQSIW' \
    > test.out 2>&1
eval_tap $? 145 'DeleteContentScreenshotV2' test.out

#- 146 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'ZTAbqDZt' \
    --namespace $AB_NAMESPACE \
    --userId 'buKJupEL' \
    --limit '68' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 146 'PublicGetGroupContentsV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE