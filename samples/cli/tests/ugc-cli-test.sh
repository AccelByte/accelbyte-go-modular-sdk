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
    --limit '81' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "xB4vrQv8", "name": "X0EDcWn9"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId '8wQmZDQv' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "zEN2zoM6"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'FFe5bm9V' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'uPMvGBod' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "Pl5Oucn1", "customAttributes": {"nukunk6J": {}, "BgOtU9qn": {}, "6bFtnXjh": {}}, "fileExtension": "oFORdgpw", "name": "FjCps5s2", "preview": "KHQIardu", "previewMetadata": {"previewContentType": "Sl2wYSxF", "previewFileExtension": "zpEEGmLr"}, "shareCode": "lJrsGRfh", "subType": "0aoCYC0E", "tags": ["1KEpCkBv", "lPHmxSSa", "xcHkRMkO"], "type": "HeNqOuyP"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'ZwX00iRX' \
    --contentId 'qTNUlLwN' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "e8y87jef", "customAttributes": {"HhBdC41H": {}, "32KTm6Vl": {}, "25JP4ctD": {}}, "fileExtension": "MQDihFSq", "name": "Rdp88VhT", "payload": "SGd4pOIN", "preview": "npLoZXvd", "previewMetadata": {"previewContentType": "xlkBCOXm", "previewFileExtension": "pAKmyL9p"}, "shareCode": "EQdGtN5F", "subType": "MHYAl77O", "tags": ["wSYg0oAQ", "FvfHNQ1v", "2WI34gEw"], "type": "2hzNHV1X", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId '2j8nMo7N' \
    --namespace $AB_NAMESPACE \
    --creator 'SJsLJIYq' \
    --ishidden 'b9DtCmP5' \
    --isofficial 'K5UToaWi' \
    --limit '32' \
    --name 'MVauxbrq' \
    --offset '26' \
    --orderby 'eVL6VvT3' \
    --sortby '947bYNyK' \
    --subtype '3gwheNBO' \
    --tags '["BIXtN8S1", "ImUzmrcN", "K3egGy5K"]' \
    --type 'bpeNO2Ii' \
    --userId 'oNd6Q4sp' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'N2cPy8x7' \
    --contentId 'MQMl2lJf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["2nVeVRU8", "2GYPlWPh", "bN8HXi6V"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'PkxBiULn' \
    --ishidden 'QdTgiCFS' \
    --isofficial 'RIk0xOc1' \
    --limit '64' \
    --name 'k4Zetp1U' \
    --offset '79' \
    --orderby 'LHms8YFl' \
    --sortby 'na128ou8' \
    --subtype 'WWn1vZsj' \
    --tags '["JBCNZJgh", "Qf9DKWcL", "Pj1JeEtg"]' \
    --type 'ngcj7fHh' \
    --userId 'WZCUzvLe' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["INP10wJ0", "Hocvy2ZD", "Z6yVTZ0O"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'ZugHO03J' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'QFM9wCMc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'cHyxu5Ew' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'sJnsl67R' \
    --namespace $AB_NAMESPACE \
    --versionId 'iNJtvvuy' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'RhQYE7CY' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "rOljGQjK", "screenshotId": "u44gAjYr"}, {"description": "R2zAIe6P", "screenshotId": "CnxKfz03"}, {"description": "LJLAJ8wv", "screenshotId": "SQumvW8H"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'YGmZORmT' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "mvW79RbS", "description": "FaNvZGxb", "fileExtension": "bmp"}, {"contentType": "3gSTwKbp", "description": "VoSStTQg", "fileExtension": "jpg"}, {"contentType": "zm0SsDzJ", "description": "vwNgX0YE", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId '4Zlvbwhi' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'xtgF9X0O' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'gOMSwOZ2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["wFXruo4V", "gwbFD4vN", "Lc2NkCLX"], "name": "Y6Z780u5"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'PhYU6PrL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId '7YheYkuN' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["zIGlpsMd", "zRSLM2Fg", "5RN4lbD3"], "name": "Su9QyUd5"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'soEcVxNN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'gbLdDV4G' \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "h65JobWC"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'c22Lean8' \
    --body '{"tag": "Cxceaiul"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId '5Bw83zhx' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["DyA0hxGQ", "U6UfWYIM", "z2FPqsfj"], "type": "WKbMk6ie"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId '6mf4Mdrd' \
    --body '{"subtype": ["EnnlWcmu", "0Ctt60fY", "yFuN9hdu"], "type": "ZUkj6PC1"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'xB50RiSn' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'XMSq8McS' \
    --limit '66' \
    --name 'uaUaCZSz' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'UeO4JzRN' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'OW3wsl25' \
    --namespace $AB_NAMESPACE \
    --userId 'P7cxEB20' \
    --body '{"name": "1SaZuxVi"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'd7KeGD3p' \
    --namespace $AB_NAMESPACE \
    --userId 'SE0NBrCr' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'EXJFCKkW' \
    --namespace $AB_NAMESPACE \
    --shareCode 'Mjt5sL7b' \
    --userId 'd7cqmafc' \
    --body '{"contentType": "1M0KWsAW", "customAttributes": {"ze89Ll5l": {}, "07njITiG": {}, "37Cu62O3": {}}, "fileExtension": "gOxXcXwz", "name": "HxrQPmD2", "payload": "Ea0dAuz5", "preview": "bJH3tgop", "previewMetadata": {"previewContentType": "FXNaVjkv", "previewFileExtension": "5yd7TlwC"}, "shareCode": "v9mQnJuH", "subType": "AcazYeZw", "tags": ["TK8evTvK", "kL0AhIaM", "9reqabcu"], "type": "sV4yQ47U", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'x5fUTBe3' \
    --contentId 'V0yF1vTB' \
    --namespace $AB_NAMESPACE \
    --userId '6L8IPODU' \
    --body '{"contentType": "NoZr1xy5", "customAttributes": {"Q8ZUrUmi": {}, "S5ilxSlo": {}, "D9S2mc5S": {}}, "fileExtension": "GwFBU2Yg", "name": "PUZuxfHw", "payload": "5t5ium0D", "preview": "0eig0k6X", "previewMetadata": {"previewContentType": "sxA7zqBh", "previewFileExtension": "548EwPLZ"}, "shareCode": "aOjhI41P", "subType": "CUeRlpjx", "tags": ["REZHjh6Q", "mBlzX5EI", "VmOaY8LG"], "type": "klHU718W", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId '4a0x6Fwj' \
    --namespace $AB_NAMESPACE \
    --shareCode '1E9yewBK' \
    --userId 'VU7ARo6j' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'MZ9u9TOm' \
    --contentId 'Ir2qMe3Q' \
    --namespace $AB_NAMESPACE \
    --userId 'lp0y4PGS' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'XG3V4dss' \
    --limit '71' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId '8b75IJ3g' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'IcydtNOG' \
    --namespace $AB_NAMESPACE \
    --userId 'gtHav9uG' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId '1tcQmB2r' \
    --limit '2' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'zkUmCrBg' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'ODbzOOuB' \
    --namespace $AB_NAMESPACE \
    --userId 'qPiEuPmw' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'PIkiEIY7' \
    --namespace $AB_NAMESPACE \
    --userId 'REPSLvhM' \
    --body '{"contents": ["G0zRJ4SB", "iflT0KSV", "KBYBvChN"], "name": "JBvJtpDr"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId '3qb6c3HD' \
    --namespace $AB_NAMESPACE \
    --userId 'xyOqaYNC' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'lRUV2Jdj' \
    --namespace $AB_NAMESPACE \
    --userId 'Wsq8VAkm' \
    --limit '20' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'KesYDger' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'DeG1gj0q' \
    --namespace $AB_NAMESPACE \
    --creator 'hx63zf2x' \
    --ishidden 'cbd7NvO6' \
    --isofficial '0AViR66w' \
    --limit '100' \
    --name 'xDyrITMZ' \
    --offset '28' \
    --orderby 'vKIT4D19' \
    --sortby 'KMllqDDR' \
    --subtype 'BCLBTrct' \
    --tags '["1xRRLYTW", "EOaql2wq", "uPRJMtsf"]' \
    --type 'FPE7qe7N' \
    --userId 'Eel7hLWj' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'HD6wq7qf' \
    --ishidden 'bCpFKWO0' \
    --isofficial 'u6fsH9Ng' \
    --limit '7' \
    --name 'OqFs1cP0' \
    --offset '53' \
    --orderby 'PRnxiEav' \
    --sortby 'yC49g5w6' \
    --subtype 'qjL03ZNp' \
    --tags '["8jOVPBWx", "AJ2LeQeu", "EsiBOjwt"]' \
    --type 'xjqNPdvw' \
    --userId 'pB1aWPXh' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["y2LYohcx", "ynDvUNBk", "wbXKgXg0"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '90' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '1' \
    --name 'mhhrvqng' \
    --offset '59' \
    --orderby 'IJG6Qi5B' \
    --sortby 'bAVJkl72' \
    --subtype 'hOrLKkWS' \
    --tags '["C2XzRNUe", "f4xFHAyC", "0QOjWrIm"]' \
    --type 'SyPogl9x' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["IkibTOMO", "17fBhAdG", "Mf71oUH9"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'r3RaVyKC' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'sSPMIUIt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'eaEHx1Mc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'KWeFvkzT' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'PpDXwjkv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '34' \
    --orderby 'qTxzg7Cb' \
    --sortby '9Lt9bva6' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'VG6mSJkC' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'U94LSgso' \
    --limit '79' \
    --name 'ndPNdh1T' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'LRZ8tcd3' \
    --body '{"name": "DAvJyQxt"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'c74oaI2X' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'KU3zOEWb' \
    --namespace $AB_NAMESPACE \
    --userId 'gR1mhz75' \
    --body '{"name": "BdkeeotL"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'QMxZ37Us' \
    --namespace $AB_NAMESPACE \
    --userId 'DyYPS2uM' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'MJwrijIS' \
    --namespace $AB_NAMESPACE \
    --userId 'ZqEUTu9y' \
    --body '{"contentType": "Yq6In4gC", "customAttributes": {"ux2DBAXF": {}, "rM4Bheby": {}, "WnrSlLPC": {}}, "fileExtension": "V1xwOtkr", "name": "EegdKHG9", "preview": "kAAjZbcE", "previewMetadata": {"previewContentType": "odJv0H1d", "previewFileExtension": "5P1NuYYW"}, "subType": "MeBgqLPz", "tags": ["8h0RrWXD", "r5ks7c00", "MCwE14hb"], "type": "c3pNUjuQ"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'AJSMD2Jd' \
    --namespace $AB_NAMESPACE \
    --shareCode 'LtwoJrNu' \
    --userId 'NEQyRtgB' \
    --body '{"contentType": "pYdmmfbr", "customAttributes": {"OrpO39jW": {}, "QqIA7Qlt": {}, "4F5F8VEC": {}}, "fileExtension": "Xf5Hqypx", "name": "waiWHedY", "payload": "8jdCIoIi", "preview": "sGmxNJPw", "previewMetadata": {"previewContentType": "LT8id7Ck", "previewFileExtension": "UWuczOwJ"}, "subType": "W7ZGRH0t", "tags": ["h1ufVLCi", "LcMAyYp0", "FW0haa0P"], "type": "lOScbYrG", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId '1RFHXOo2' \
    --contentId '50SiHWDr' \
    --namespace $AB_NAMESPACE \
    --userId '8r9sVvtO' \
    --body '{"contentType": "nVpvyYZi", "customAttributes": {"WNNUyloM": {}, "N1Gbu7rw": {}, "s1AMJYfJ": {}}, "fileExtension": "WVAURtyB", "name": "qO6HO0sh", "payload": "OYRnUiDn", "preview": "RiPSgrzB", "previewMetadata": {"previewContentType": "DlmKVKuW", "previewFileExtension": "g29DDM1J"}, "subType": "4K0UUVuZ", "tags": ["NwORmueA", "nr3m6inc", "fLiAqJ3V"], "type": "e7wzs0Ve", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId 'Bwkyfiqs' \
    --namespace $AB_NAMESPACE \
    --shareCode '1hktKviZ' \
    --userId 'oJ8jrfMg' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId '9GMmhLq8' \
    --contentId 'AKJDKaBD' \
    --namespace $AB_NAMESPACE \
    --userId 'cU4KzMSa' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'DIeNOaUi' \
    --contentId 'BIyyuh0w' \
    --namespace $AB_NAMESPACE \
    --userId 'yRmPpvJZ' \
    --body '{"shareCode": "IRmVX542"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId '3RdqkZWa' \
    --limit '13' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'LBPSfjqx' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'hCUyYHyt' \
    --namespace $AB_NAMESPACE \
    --userId 'WX0Gx2K9' \
    --body '{"screenshots": [{"description": "04fxehyI", "screenshotId": "1Azxdqp1"}, {"description": "QHq6dQ8z", "screenshotId": "zOWY1ii2"}, {"description": "9xhHgHP2", "screenshotId": "XhYo8Lom"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId '3iRV2v6r' \
    --namespace $AB_NAMESPACE \
    --userId 'GS4nKQDh' \
    --body '{"screenshots": [{"contentType": "WCNUcKmZ", "description": "Wbu1SP9h", "fileExtension": "jfif"}, {"contentType": "xUkwrZTj", "description": "DuQHbbb4", "fileExtension": "png"}, {"contentType": "E9Pro27J", "description": "Av2IavPP", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'sTDgBI9Z' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'DZiDCt34' \
    --userId 'yWdIcEGI' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'tWlWJLM9' \
    --body '{"followStatus": false}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'I5xCtyZR' \
    --limit '83' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId '4QFBRNyb' \
    --limit '50' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId '3Rn3BTUW' \
    --limit '47' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'R83cqWT0' \
    --body '{"contents": ["oyIUBMdK", "N5xxlbua", "NxBTsyyk"], "name": "JJpEijKG"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'Kw0W7Zry' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'ioeJmqdT' \
    --namespace $AB_NAMESPACE \
    --userId 'I1K3TFnw' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'cNOL0Y9y' \
    --namespace $AB_NAMESPACE \
    --userId 'P4Ogg1tO' \
    --body '{"contents": ["VdLpH0Ck", "j8bbUOOH", "zgod6R3D"], "name": "FlEFTfhB"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'HPDhCAFj' \
    --namespace $AB_NAMESPACE \
    --userId 'iAjGrR09' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'IdoQbQWb' \
    --namespace $AB_NAMESPACE \
    --userId 'He4LH8KD' \
    --limit '67' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'sEL3aQht' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'KtTjGqO9' \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --name 'S00aM6PN' \
    --offset '96' \
    --sortBy 'WpCgIbf5' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'a3ExlLda' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "97R3KzSt", "customAttributes": {"g8JkTo5e": {}, "j2mJjk5I": {}, "pZgEuOdp": {}}, "fileExtension": "dbrREorD", "name": "X5LOZN5y", "shareCode": "Ut81DuSD", "subType": "A7roTODe", "tags": ["au51gY5J", "7QWkApgj", "k8tMTsXk"], "type": "sVTY5zag"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId '1Tz46XnC' \
    --contentId 'r4zPY055' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'qRcNPLbq' \
    --contentId 'CMsBuVHr' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"TldlyWiq": {}, "VQdLocs1": {}, "CevALICk": {}}, "name": "0fYoEzJ9", "shareCode": "8gSEv9PS", "subType": "PoQeWoZT", "tags": ["Tyw8v36i", "mWdpuKqU", "scs6ZRTR"], "type": "3i7jODnT"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminCopyContent
samples/cli/sample-apps Ugc adminCopyContent \
    --channelId 'tthvJEbp' \
    --contentId 'PtB0Vfwk' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"2PR6vHWb": {}, "Z7aOX1kU": {}, "vftKvtWF": {}}, "name": "Pz32IKdW", "subType": "yxNcywzZ", "tags": ["wCjFUUE9", "gwPDZVUm", "KSlaL043"], "targetChannelId": "ZMGg1UKz", "type": "nJw99vGZ"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminCopyContent' test.out

#- 107 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId '0lhUg2rs' \
    --contentId '5GhjFEc5' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "Q8eNC2Lb", "fileLocation": "2CGZpBKX"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminUpdateOfficialContentFileLocation' test.out

#- 108 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'FA8R0QyT' \
    --contentId 'ZbxdQ9uE' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "9m6fUooD", "fileExtension": "agbYvTes"}' \
    > test.out 2>&1
eval_tap $? 108 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 109 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 109 'AdminGetConfigs' test.out

#- 110 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key 'ASWZHRDM' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "Eb1mlLbE"}' \
    > test.out 2>&1
eval_tap $? 110 'AdminUpdateConfig' test.out

#- 111 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '95' \
    --name '5FnMAMZc' \
    --offset '100' \
    --sortBy 'Bw8Ds2dY' \
    --subType 'snm6KvbR' \
    --tags '["hAfG7bS8", "mrFUViuq", "KRK1DnjD"]' \
    --type 'J5bzQNWa' \
    > test.out 2>&1
eval_tap $? 111 'AdminListContentV2' test.out

#- 112 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["bppsi9dh", "TsWeBrGk", "iWq5H8RW"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminBulkGetContentByIDsV2' test.out

#- 113 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["clleZyJF", "T0kbacRf", "JtlFMVAh"]}' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentBulkByShareCodesV2' test.out

#- 114 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'IVfSYozt' \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByShareCodeV2' test.out

#- 115 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 'Q2Prnere' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'AdminGetContentByContentIDV2' test.out

#- 116 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'wX0SDgm9' \
    --namespace $AB_NAMESPACE \
    --versionId 'l3ZlRRnT' \
    > test.out 2>&1
eval_tap $? 116 'RollbackContentVersionV2' test.out

#- 117 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'zukTd78o' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "rRP73Fvt", "screenshotId": "sCAvj7TF"}, {"description": "VWbJ5Mvo", "screenshotId": "U1prpGxv"}, {"description": "JtSOF39m", "screenshotId": "ImFY9sT7"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateScreenshotsV2' test.out

#- 118 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId '1WaZOHig' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "L6gFo0JQ", "description": "LpNAZ6Iu", "fileExtension": "bmp"}, {"contentType": "pOEgRGZL", "description": "h07sTOue", "fileExtension": "pjp"}, {"contentType": "mdci2kX3", "description": "tIQLdov2", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 118 'AdminUploadContentScreenshotV2' test.out

#- 119 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'sBKHq2QV' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'DMJKGYp4' \
    > test.out 2>&1
eval_tap $? 119 'AdminDeleteContentScreenshotV2' test.out

#- 120 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'OIzcSOYu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 120 'ListContentVersionsV2' test.out

#- 121 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'Hjp2zJZo' \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 121 'AdminGetOfficialGroupContentsV2' test.out

#- 122 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '67' \
    --sortBy 'Ew15MOvZ' \
    --status 'M8ZDeK2T' \
    > test.out 2>&1
eval_tap $? 122 'AdminListStagingContents' test.out

#- 123 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId '2rM8FTyJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminGetStagingContentByID' test.out

#- 124 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId '8Q3C6jrP' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": true, "note": "eRWChriJ"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminApproveStagingContent' test.out

#- 125 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId '95KjWnOz' \
    --namespace $AB_NAMESPACE \
    --shareCode 'bttYEJW3' \
    --userId 'Z0UwYZEy' \
    --body '{"customAttributes": {"tloW7R8y": {}, "EK6alGfT": {}, "ccVVe8Qy": {}}, "name": "l7KfzW0J", "shareCode": "cEUsX1D4", "subType": "gfyptHPV", "tags": ["SF1kceLj", "DDe4Xe6Y", "XhJf0J7z"], "type": "13oL6LKM"}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateContentByShareCodeV2' test.out

#- 126 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'QXO60bQY' \
    --namespace $AB_NAMESPACE \
    --shareCode '0cLTd0v2' \
    --userId 'xLZdYuRx' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteContentByShareCodeV2' test.out

#- 127 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'GCwXGXdf' \
    --contentId 'NNUdKB6p' \
    --namespace $AB_NAMESPACE \
    --userId 'PYC7JhvM' \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteUserContentV2' test.out

#- 128 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'rfncbiHk' \
    --contentId 'BXmHrWMu' \
    --namespace $AB_NAMESPACE \
    --userId 'qHc2Cbyz' \
    --body '{"customAttributes": {"bfrDRwve": {}, "MwT4Kap4": {}, "8STUoxjo": {}}, "name": "70eqZ9Mc", "shareCode": "y8WDbmIO", "subType": "VPArR6Sb", "tags": ["nvZskLkm", "5l9NtqUM", "RUH6ot2O"], "type": "Xmwz5pWM"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentV2' test.out

#- 129 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'QFn0E3Ni' \
    --contentId 'uUcDjrwR' \
    --namespace $AB_NAMESPACE \
    --userId 'eKuFmI4y' \
    --body '{"fileExtension": "b8a67Yxm", "fileLocation": "JMKiTksf"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateUserContentFileLocation' test.out

#- 130 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'ifJrbO90' \
    --contentId 'jGsElxhN' \
    --namespace $AB_NAMESPACE \
    --userId '8tJw3gYT' \
    --body '{"contentType": "qazaZxWT", "fileExtension": "9GDsPTlh"}' \
    > test.out 2>&1
eval_tap $? 130 'AdminGenerateUserContentUploadURLV2' test.out

#- 131 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'il5Z47GF' \
    --limit '31' \
    --offset '83' \
    --sortBy 'bXvHvKSO' \
    > test.out 2>&1
eval_tap $? 131 'AdminGetContentByUserIDV2' test.out

#- 132 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'gSZGQLAi' \
    --namespace $AB_NAMESPACE \
    --userId 'ugfVyHZL' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 132 'AdminUpdateContentHideStatusV2' test.out

#- 133 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'fmJkD9cb' \
    --namespace $AB_NAMESPACE \
    --userId '8O1p2MAm' \
    --limit '79' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 133 'AdminGetUserGroupContentsV2' test.out

#- 134 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'fXU11Zg9' \
    --limit '7' \
    --offset '39' \
    --sortBy 'Z9zCnis7' \
    --status 'DTfWMC2G' \
    > test.out 2>&1
eval_tap $? 134 'AdminListUserStagingContents' test.out

#- 135 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'YMzbaYfV' \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --name 'nDegLjV0' \
    --offset '0' \
    --sortBy '6zvoIeg7' \
    > test.out 2>&1
eval_tap $? 135 'PublicGetContentByChannelIDV2' test.out

#- 136 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '42' \
    --name 'RQof1Ufb' \
    --offset '100' \
    --sortBy 'EubLJVUY' \
    --subType 'sur4isqE' \
    --tags '["ueWCOsrs", "6wWtthw5", "xzuUy6tB"]' \
    --type 'UYiHMCzK' \
    > test.out 2>&1
eval_tap $? 136 'PublicListContentV2' test.out

#- 137 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["JmD7Tx6t", "MvnLyx3J", "GCq6kpBV"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicBulkGetContentByIDV2' test.out

#- 138 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["P86RUTxV", "o4RWXjMi", "yUbRsQee"]}' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentBulkByShareCodesV2' test.out

#- 139 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode '2C1h94sN' \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByShareCodeV2' test.out

#- 140 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId '9RBPSsPI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicGetContentByIDV2' test.out

#- 141 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'NCGjcmHM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 141 'PublicAddDownloadCountV2' test.out

#- 142 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId '6QKg026C' \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '8' \
    --sortBy 'itgu166u' \
    --userId '6FcM4FGo' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentDownloaderV2' test.out

#- 143 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'KcZy3HUf' \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '81' \
    --sortBy 'nbFG7B58' \
    > test.out 2>&1
eval_tap $? 143 'PublicListContentLikeV2' test.out

#- 144 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId 'SXhwff1c' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateContentLikeStatusV2' test.out

#- 145 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'b63rwGxl' \
    --namespace $AB_NAMESPACE \
    --userId 'QG9f1OPw' \
    --body '{"contentType": "poBnjjCi", "customAttributes": {"42Unjs9F": {}, "LyJ759rS": {}, "V6Q4oIhR": {}}, "fileExtension": "4bPbaA9t", "name": "lwwYXpJ8", "subType": "RmLLmcy6", "tags": ["2rzNgwwA", "NVoqqSRM", "CWeeYJFB"], "type": "x50JkGmB"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicCreateContentV2' test.out

#- 146 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'nSojdeci' \
    --namespace $AB_NAMESPACE \
    --shareCode 'qXDqryHY' \
    --userId 'bC9qROoz' \
    --body '{"customAttributes": {"8CFu3t4j": {}, "JDvELKmb": {}, "dMaRlziF": {}}, "name": "fCvsdYDK", "subType": "xVwgY6kl", "tags": ["ZlaZn0Z6", "tjl0NtNS", "LzkBZ6x7"], "type": "m3ipHFsK"}' \
    > test.out 2>&1
eval_tap $? 146 'PublicUpdateContentByShareCodeV2' test.out

#- 147 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'bG4i0S66' \
    --namespace $AB_NAMESPACE \
    --shareCode 'wZ5ZJLVo' \
    --userId '8sRna9sR' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentByShareCodeV2' test.out

#- 148 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId '84LLSpeI' \
    --contentId 'hnvoJCyA' \
    --namespace $AB_NAMESPACE \
    --userId 'WlMLAtEm' \
    > test.out 2>&1
eval_tap $? 148 'PublicDeleteContentV2' test.out

#- 149 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'KOKf1U9C' \
    --contentId 'Alz4I6kj' \
    --namespace $AB_NAMESPACE \
    --userId '9BpHFWo9' \
    --body '{"customAttributes": {"LpZAB2L4": {}, "vC4Wb5Of": {}, "bKVfZ9JI": {}}, "name": "MWPDE0Ak", "subType": "oTkwoqXm", "tags": ["F4IOpl4n", "2ezErxkj", "senPklvy"], "type": "NtLAJC31"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentV2' test.out

#- 150 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'ukYBC8j5' \
    --contentId 'aDh4PMYo' \
    --namespace $AB_NAMESPACE \
    --userId '2jsu9ZI9' \
    --body '{"fileExtension": "VcydVcH9", "fileLocation": "IJYhoI6i"}' \
    > test.out 2>&1
eval_tap $? 150 'PublicUpdateContentFileLocation' test.out

#- 151 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'trQSyQ36' \
    --contentId 'zvRvFjLr' \
    --namespace $AB_NAMESPACE \
    --userId 'bWBeLKoG' \
    --body '{"shareCode": "GTk5zDKh"}' \
    > test.out 2>&1
eval_tap $? 151 'UpdateContentShareCodeV2' test.out

#- 152 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'nr54jAYu' \
    --contentId 'AP49k2zu' \
    --namespace $AB_NAMESPACE \
    --userId 'fQ5t81UZ' \
    --body '{"contentType": "NoNic6pP", "fileExtension": "atm8Mn9a"}' \
    > test.out 2>&1
eval_tap $? 152 'PublicGenerateContentUploadURLV2' test.out

#- 153 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'fkB3ymxr' \
    --limit '3' \
    --offset '38' \
    --sortBy '4Iz3Iq1t' \
    > test.out 2>&1
eval_tap $? 153 'PublicGetContentByUserIDV2' test.out

#- 154 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'xCvvmq8b' \
    --namespace $AB_NAMESPACE \
    --userId 'ISrhmHkV' \
    --body '{"screenshots": [{"description": "zPjn45WU", "screenshotId": "jc6tmr0I"}, {"description": "aK4dXu2g", "screenshotId": "TXKTiD0B"}, {"description": "W0Jit2hk", "screenshotId": "3QyGkv4p"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UpdateScreenshotsV2' test.out

#- 155 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'nE67qSCh' \
    --namespace $AB_NAMESPACE \
    --userId 'FYZ06cNB' \
    --body '{"screenshots": [{"contentType": "A8BvWhXx", "description": "iFBd7EqE", "fileExtension": "jpg"}, {"contentType": "H7JpAsfw", "description": "xTiPTQu9", "fileExtension": "jfif"}, {"contentType": "bTmwdoGX", "description": "0eaMfjbu", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 155 'UploadContentScreenshotV2' test.out

#- 156 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'TjTVeTUp' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'GuJiuivv' \
    --userId '1TT3Vxze' \
    > test.out 2>&1
eval_tap $? 156 'DeleteContentScreenshotV2' test.out

#- 157 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'jv9drmdy' \
    --namespace $AB_NAMESPACE \
    --userId 'psxnvewU' \
    --limit '20' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 157 'PublicGetGroupContentsV2' test.out

#- 158 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'x8YwoomA' \
    --limit '80' \
    --offset '86' \
    --sortBy '6erVEdHE' \
    --status 'vIQl9ya7' \
    > test.out 2>&1
eval_tap $? 158 'ListUserStagingContents' test.out

#- 159 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId 'nfjdoXAW' \
    --namespace $AB_NAMESPACE \
    --userId 'nw7IlVZ4' \
    > test.out 2>&1
eval_tap $? 159 'GetUserStagingContentByID' test.out

#- 160 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId 'SDuUsJNo' \
    --namespace $AB_NAMESPACE \
    --userId 'MQGaAV7q' \
    --body '{"fileExtension": "CvbMTv2h", "fileLocation": "lOxYjYeh"}' \
    > test.out 2>&1
eval_tap $? 160 'UpdateStagingContent' test.out

#- 161 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId '0rWeyzdU' \
    --namespace $AB_NAMESPACE \
    --userId 'XxFgOVY4' \
    > test.out 2>&1
eval_tap $? 161 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE