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
    --limit '47' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "PoxzX5nH", "name": "JKaPZk46"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'zOaA6024' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "pdBIAigQ"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'WQrfOqdq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId '8ZNSQLwU' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "C0fN486a", "customAttributes": {"ao6MewcB": {}, "1JHrw1uy": {}, "SBPmtnXU": {}}, "fileExtension": "H5Kz87Z7", "name": "77zDr1t3", "preview": "UnSlVj66", "previewMetadata": {"previewContentType": "FlswHiFa", "previewFileExtension": "d31UPlOo"}, "shareCode": "YQ03cHKp", "subType": "UAoFjNkW", "tags": ["fL5WWVfP", "vhaOvQ1W", "jbE6LYhU"], "type": "iLEJBCZQ"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'DHAOUjm8' \
    --contentId 'LztLTrsW' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "WOcWeDff", "customAttributes": {"sXlmlfZW": {}, "vSGJDdds": {}, "aCmNujB5": {}}, "fileExtension": "sprsTusu", "name": "lN09JTvM", "payload": "q5Pdt6pW", "preview": "O13TQWZK", "previewMetadata": {"previewContentType": "L2ohQVwq", "previewFileExtension": "7YcekQMq"}, "shareCode": "PSfceZQz", "subType": "bL1IZ3wN", "tags": ["dmgDOF55", "gnvoag3a", "DN0EAOOA"], "type": "89n6yvRG", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'kMCmvEVG' \
    --namespace $AB_NAMESPACE \
    --creator '1Bylmjtk' \
    --ishidden 'g80ACXLP' \
    --isofficial 'klk0jTsQ' \
    --limit '92' \
    --name 'jhrXiomb' \
    --offset '88' \
    --orderby 'K3tR6Or7' \
    --sortby 'VwqBLHWO' \
    --subtype 'YoDdRVtW' \
    --tags '["m9hIFvlm", "VCyp9rzb", "rnDirQAm"]' \
    --type 'Y4qVDHgs' \
    --userId 'a3nLiHwy' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 't89bgttw' \
    --contentId 'Ou7WvqQh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["FmaJk9cu", "3Fz9cdju", "RvXkyzku"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator '7kwPAjUh' \
    --ishidden '7a80NfjN' \
    --isofficial 'gycaxnoS' \
    --limit '58' \
    --name 'AHALKjNG' \
    --offset '41' \
    --orderby 'MM9kUE8p' \
    --sortby 'xRMIS0qn' \
    --subtype 'ru4uaqOB' \
    --tags '["68JPslo1", "Wc4pN0RQ", "8SE0vpKF"]' \
    --type 'TBRdZxfN' \
    --userId 'gzBxTN6a' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["bL7xrmAE", "KkimSKRF", "1jGkCOVF"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode '7MrUipDi' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'rxHjE1vZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'xSSl2goI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'UhDLz7JX' \
    --namespace $AB_NAMESPACE \
    --versionId 'pn64eggR' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'nuvjMo8T' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "UCCaOfBy", "screenshotId": "Anj7YkhI"}, {"description": "LNWLMcbI", "screenshotId": "jGKXV9rs"}, {"description": "CctymK5Q", "screenshotId": "Fd7QZqCr"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'qO42NkRq' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "bFqQM53D", "description": "7IYU6kCr", "fileExtension": "png"}, {"contentType": "D2BPswcX", "description": "LWIpHI6G", "fileExtension": "png"}, {"contentType": "qoY1qVEA", "description": "IJDjGgGT", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId '00NlKlbh' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'SPHVLbRp' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId '6ycbUZgl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["Ov2eSbrO", "kYpVtKUT", "xb6LjbgS"], "name": "xr1DQKUD"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'Bsq28est' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'BTx8wf9Z' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["MDlXsPFF", "hXWPEi5e", "Aqvfb9Rk"], "name": "w3q0U5TN"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'ImpdFKay' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'zPSvuvVg' \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "HP1p1Lw7"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'sEDCaEg4' \
    --body '{"tag": "SCMHThcX"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'j5VHe7bU' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["2jH77ULS", "uBd5YT2M", "mclsFp3F"], "type": "IAqSewAO"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'O4tFxdfj' \
    --body '{"subtype": ["qgPKsf2p", "uk3HOi3u", "hB037Q1y"], "type": "ZssV1NkC"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId '81HaxeqX' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'rOQfKRhO' \
    --limit '20' \
    --name 'XMOF1ING' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'pvpr9yO2' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'iKSZDa8U' \
    --namespace $AB_NAMESPACE \
    --userId 'sV9dloy1' \
    --body '{"name": "ZSa1W7Fp"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'VE0CCzqB' \
    --namespace $AB_NAMESPACE \
    --userId 'f3JRGztt' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'THzAvGzl' \
    --namespace $AB_NAMESPACE \
    --shareCode 'uFwW0avY' \
    --userId 'sYAAHaI7' \
    --body '{"contentType": "ubk2iB8W", "customAttributes": {"GAl4DUL5": {}, "zsZRG4BJ": {}, "TI34f4mL": {}}, "fileExtension": "Th5jhc83", "name": "mIEW9XT2", "payload": "6h1D54Z4", "preview": "zZU9QpJv", "previewMetadata": {"previewContentType": "BjfZ1LEV", "previewFileExtension": "z9NQo8JE"}, "shareCode": "8kh62H4Y", "subType": "IqjLfmTN", "tags": ["7N5GrN5o", "AentnbjN", "2Vad9MP2"], "type": "2JxP2Yu5", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'pxfmWX3L' \
    --contentId '2FBtsvJT' \
    --namespace $AB_NAMESPACE \
    --userId 'l81pzABM' \
    --body '{"contentType": "m5khvasR", "customAttributes": {"RcnFSTww": {}, "F9Z9TCRk": {}, "WjrMcSvZ": {}}, "fileExtension": "hXuac8UV", "name": "4fYSYS58", "payload": "YBsY2ZJu", "preview": "Ex8MSRL6", "previewMetadata": {"previewContentType": "Y2pSJETc", "previewFileExtension": "wB25ACkV"}, "shareCode": "J1aQKIEh", "subType": "0LbqG2tb", "tags": ["mw9DQWqc", "9GLk7MST", "PiaAPvQe"], "type": "8NeYeM2k", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'L2MO3oXo' \
    --namespace $AB_NAMESPACE \
    --shareCode 'nQi97f7n' \
    --userId 'f4bsDtJp' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'yObRUWIl' \
    --contentId 'RSXkczT1' \
    --namespace $AB_NAMESPACE \
    --userId 'Njse1WPt' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'nIe96Nei' \
    --limit '19' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'fnloPyJh' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'blwPUEDB' \
    --namespace $AB_NAMESPACE \
    --userId 'fEMOpccT' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId '9e918nqe' \
    --limit '51' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'WPpL1UIE' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId '5vxUThoH' \
    --namespace $AB_NAMESPACE \
    --userId 'LjawjIut' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'hDN4eh0L' \
    --namespace $AB_NAMESPACE \
    --userId 'amEhoLik' \
    --body '{"contents": ["HCSQnfP0", "MLkROFcO", "vF6WFk0L"], "name": "2scCAENl"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'ks4qkZmU' \
    --namespace $AB_NAMESPACE \
    --userId 'XeLj4jqh' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'efta8o3X' \
    --namespace $AB_NAMESPACE \
    --userId '1zckWNEI' \
    --limit '40' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'f3m4SGwZ' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'FwMZbBhS' \
    --namespace $AB_NAMESPACE \
    --creator 'CVREFPfb' \
    --ishidden 'UamidiHE' \
    --isofficial 'DKStR2IL' \
    --limit '29' \
    --name 'x4kkgpCr' \
    --offset '69' \
    --orderby '4sSEVl1u' \
    --sortby 'OgXBkIjS' \
    --subtype 'Dds68tjt' \
    --tags '["jQfHSMSS", "8J78HqgI", "zwJPPZ2D"]' \
    --type 'MCqOWN0E' \
    --userId 'xSPDwLOX' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'uGstF8Z6' \
    --ishidden 'ZkY7bZ9Y' \
    --isofficial 'WrYoeAuQ' \
    --limit '72' \
    --name 'AM0oBRHv' \
    --offset '13' \
    --orderby 'Ep1rHDjH' \
    --sortby 'p34OT9xU' \
    --subtype 'ztfpGS4W' \
    --tags '["CsKvZ4Tl", "MWE6M6U8", "FCqpS6v2"]' \
    --type 'bisxsydI' \
    --userId 'Dvm2mGAU' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["ipVWuJg8", "0A26HYe4", "3tdGtsLm"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '89' \
    --name 'TlsWicDe' \
    --offset '81' \
    --orderby 'aH3fFq4X' \
    --sortby 'svdluGI0' \
    --subtype 'zVg3wrVr' \
    --tags '["mqnkA12Z", "HkHS5d5y", "BJsOMpUh"]' \
    --type 'KfYLG5r7' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["SvIQr7ic", "HgC2OUL4", "zKDOIEzX"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'hpHrsPKa' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'keeLQFk2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'qIAti3hj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'PGDdMFy8' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'd9Aa5p1b' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --offset '13' \
    --orderby 'Wlm7tTlt' \
    --sortby 'SzXQXDwm' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'jdqMnEEi' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'ALKmiOcQ' \
    --limit '64' \
    --name '9BI612ER' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId '2wnNtcAL' \
    --body '{"name": "2PTfzBba"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'WDygI32o' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId '3J3Jujrs' \
    --namespace $AB_NAMESPACE \
    --userId 'C7wJ5DDA' \
    --body '{"name": "QYfDq8qO"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'gyPqcJyQ' \
    --namespace $AB_NAMESPACE \
    --userId 'WItlpujD' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId '20r8cNBT' \
    --namespace $AB_NAMESPACE \
    --userId 'GbitAQjD' \
    --body '{"contentType": "f5ZAagkN", "customAttributes": {"PmgqaWLz": {}, "cvoO0i83": {}, "WdhZOcE1": {}}, "fileExtension": "qkeaXIpN", "name": "a4VP4eEG", "preview": "G7QE43vr", "previewMetadata": {"previewContentType": "YFGtXdnD", "previewFileExtension": "TSR7eCQr"}, "subType": "yMa33fJl", "tags": ["rptubW6j", "RIgmZdL6", "kIzWveeN"], "type": "h0BjbsvN"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'JcV9OcrC' \
    --namespace $AB_NAMESPACE \
    --shareCode '79VYOgLT' \
    --userId 'ZBR3lPae' \
    --body '{"contentType": "fdjbeBjo", "customAttributes": {"IMwBdlkJ": {}, "4Zeiw89p": {}, "1EBOAwXf": {}}, "fileExtension": "Cpn8PcgF", "name": "vM9znKA3", "payload": "72bDah06", "preview": "dNF062Ep", "previewMetadata": {"previewContentType": "HhmSgoIl", "previewFileExtension": "usFMxm4w"}, "subType": "4iM0R527", "tags": ["etxZ2yMB", "yWUvpCMU", "a465unE1"], "type": "JH4TR7JH", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'QZwGg5xp' \
    --contentId 'Ku84GgUt' \
    --namespace $AB_NAMESPACE \
    --userId 'JE3wrcNl' \
    --body '{"contentType": "FF4W88q3", "customAttributes": {"6wr39QCR": {}, "67YREB6J": {}, "qHlyCFKI": {}}, "fileExtension": "Xbj8sFiI", "name": "1EP7h7nH", "payload": "Ss3NLJ8P", "preview": "E9YihVbK", "previewMetadata": {"previewContentType": "rFi5oaPk", "previewFileExtension": "QX8dfIyB"}, "subType": "HSwQBxkh", "tags": ["WuWGT4Kf", "DgSjYlVe", "qfAuaNbW"], "type": "6jlm4ljU", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId 'eCQIOgTP' \
    --namespace $AB_NAMESPACE \
    --shareCode 'DSEX7hGo' \
    --userId 'Pd3mKOYM' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'mF2UcnD4' \
    --contentId 'sLsMKqFc' \
    --namespace $AB_NAMESPACE \
    --userId 'lY1f9x7j' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'aFp1y1wV' \
    --contentId 'JHGtZIua' \
    --namespace $AB_NAMESPACE \
    --userId 'qHkRt05v' \
    --body '{"shareCode": "SgDtXOtP"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'CqN5vm9C' \
    --limit '57' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'lzQA0mY1' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'p3EZ6HFP' \
    --namespace $AB_NAMESPACE \
    --userId 'YzpjqZL1' \
    --body '{"screenshots": [{"description": "k5cEk68m", "screenshotId": "Gzv3LMTV"}, {"description": "KUI2QtYj", "screenshotId": "tl5vI9xa"}, {"description": "2SnpRW5S", "screenshotId": "24yyddqH"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId '5AJlTkkY' \
    --namespace $AB_NAMESPACE \
    --userId 'KkT8efJ5' \
    --body '{"screenshots": [{"contentType": "Tyox8Kmb", "description": "aFHzcIey", "fileExtension": "pjp"}, {"contentType": "DJHOKePp", "description": "PrC9O2xN", "fileExtension": "bmp"}, {"contentType": "IwwZ8m5N", "description": "HyABw4ul", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'v6VNwygD' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'VL7SghwB' \
    --userId 'qAUgG1ho' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'XWGJHDLf' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'MueL3wHT' \
    --limit '12' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'DitP4Zjd' \
    --limit '63' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'UfJMQTol' \
    --limit '97' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'sdeV9dYc' \
    --body '{"contents": ["hQTTmJ4d", "A5Tx7Olc", "NhTBpN9e"], "name": "tal91s1H"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'OZiunVES' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'Fn7NUYtL' \
    --namespace $AB_NAMESPACE \
    --userId 'wIrQjdX3' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'Vmap4F4m' \
    --namespace $AB_NAMESPACE \
    --userId '6lNMBXPb' \
    --body '{"contents": ["TnSI440v", "6q5YHV3c", "MKCmSjwo"], "name": "0B0TMWRq"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'KUyyrQdG' \
    --namespace $AB_NAMESPACE \
    --userId '6tyoj0gP' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'Bufbj8Ob' \
    --namespace $AB_NAMESPACE \
    --userId '92OH40fw' \
    --limit '25' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'SOVRxaDC' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'duUIXkxj' \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --name 'PjEs32zm' \
    --offset '75' \
    --sortBy '9ZCVtHSp' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'pI2emJDy' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "3ohPg0vA", "customAttributes": {"Dnkn864t": {}, "dUVdTMrK": {}, "bDHSFL4c": {}}, "fileExtension": "oXChkKhK", "name": "yR1sfJC1", "shareCode": "z8A2oVkt", "subType": "eM83GHB2", "tags": ["GpS9cGh2", "19rBKJL8", "zpU1sCDC"], "type": "BgS15h89"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'dvD8cUYF' \
    --contentId 'AopVqJHq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'kVunbseI' \
    --contentId 'RLZNaoEM' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"Eidj3AF0": {}, "bpeYUXbU": {}, "PCPsDnz9": {}}, "name": "jOiT7QRV", "shareCode": "oc2vvUrR", "subType": "SqsbQubK", "tags": ["11xiUhNV", "WEAgNTRI", "yzVWgkyC"], "type": "ZTgjyuJo"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminCopyContent
samples/cli/sample-apps Ugc adminCopyContent \
    --channelId 'KKCuq9A2' \
    --contentId 'hBOW1Zz9' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"euT2Ildh": {}, "iODnh2Sw": {}, "HrDDq4Z9": {}}, "name": "s6vn4k3Q", "subType": "Lbtqwz5J", "tags": ["vAcxCeQ4", "mOFnUaKm", "QeoQ0jc0"], "targetChannelId": "py6hIkHq", "type": "qXpKjAUg"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminCopyContent' test.out

#- 107 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'R0tKbHrr' \
    --contentId 'UDEx7GVk' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "JufeNV7b", "fileLocation": "A15yA4iX"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminUpdateOfficialContentFileLocation' test.out

#- 108 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'y0gQXapK' \
    --contentId 'N1Hvs9cx' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "ZYyRGz8n", "fileExtension": "bGUIsmHB"}' \
    > test.out 2>&1
eval_tap $? 108 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 109 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '90' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 109 'AdminGetConfigs' test.out

#- 110 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key 'Hj6UlQyw' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "auwfMKMF"}' \
    > test.out 2>&1
eval_tap $? 110 'AdminUpdateConfig' test.out

#- 111 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '57' \
    --name 'G5IElGJd' \
    --offset '60' \
    --sortBy 'RdjZsb6q' \
    --subType 'HNAh6JMI' \
    --tags '["NcqBNGBj", "xvSiCmT7", "X3XOojrH"]' \
    --type 'EBoMr83C' \
    > test.out 2>&1
eval_tap $? 111 'AdminListContentV2' test.out

#- 112 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["NsphtD3c", "gYftnxXS", "i35Bs5mb"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminBulkGetContentByIDsV2' test.out

#- 113 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["ruWITJR7", "DXDackPr", "DlAl7CvJ"]}' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentBulkByShareCodesV2' test.out

#- 114 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'tjZKIHFH' \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByShareCodeV2' test.out

#- 115 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 'WszwtOkG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'AdminGetContentByContentIDV2' test.out

#- 116 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'AJ5iHktH' \
    --namespace $AB_NAMESPACE \
    --versionId 'vK9YHm6T' \
    > test.out 2>&1
eval_tap $? 116 'RollbackContentVersionV2' test.out

#- 117 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'Hy72W0Yv' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "WKmjoPBD", "screenshotId": "TQYzcvBy"}, {"description": "pljPuTid", "screenshotId": "5id3yHjl"}, {"description": "liPrO7E6", "screenshotId": "qooCjMRw"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateScreenshotsV2' test.out

#- 118 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 'Vo3EVmcP' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "x3v5Yyqk", "description": "Pa4wDeYn", "fileExtension": "jpeg"}, {"contentType": "cs6mSdi2", "description": "YaGiaMoB", "fileExtension": "png"}, {"contentType": "SL5uY0XJ", "description": "6HXtRwB9", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 118 'AdminUploadContentScreenshotV2' test.out

#- 119 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'TPnuixPf' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'nctmIhPk' \
    > test.out 2>&1
eval_tap $? 119 'AdminDeleteContentScreenshotV2' test.out

#- 120 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'D2FSefEm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 120 'ListContentVersionsV2' test.out

#- 121 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId '3WwFZUuA' \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 121 'AdminGetOfficialGroupContentsV2' test.out

#- 122 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '94' \
    --sortBy 'OvTChdM4' \
    --status 'LoYNUdsh' \
    > test.out 2>&1
eval_tap $? 122 'AdminListStagingContents' test.out

#- 123 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId 'b5Mg0YlZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminGetStagingContentByID' test.out

#- 124 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId '9JpgwDoe' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": false, "note": "TCldhlJD"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminApproveStagingContent' test.out

#- 125 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'wWewJYYU' \
    --namespace $AB_NAMESPACE \
    --shareCode '2D5zE6Ko' \
    --userId 'Zg2i82aS' \
    --body '{"customAttributes": {"yX3v96wA": {}, "82WpxQr2": {}, "sAk1OsrY": {}}, "name": "zgJJymJE", "shareCode": "RBTy1Ckc", "subType": "74bbsDgG", "tags": ["q75R4l1W", "kE6WMOya", "kZwrXOPS"], "type": "3oHOVn2d"}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateContentByShareCodeV2' test.out

#- 126 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'ospBX9ak' \
    --namespace $AB_NAMESPACE \
    --shareCode '2SwU6fbK' \
    --userId 'TdKpOXOV' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteContentByShareCodeV2' test.out

#- 127 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'FSra8OrY' \
    --contentId 'kUO4xKpT' \
    --namespace $AB_NAMESPACE \
    --userId 'jaNNnY4U' \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteUserContentV2' test.out

#- 128 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId '0kJUVnEO' \
    --contentId '84VGEbjg' \
    --namespace $AB_NAMESPACE \
    --userId '4Yl1DWc5' \
    --body '{"customAttributes": {"oamCNFMZ": {}, "YwuPpDvJ": {}, "5gtj14B6": {}}, "name": "XKHaQB07", "shareCode": "4RfkC9Vy", "subType": "hxHEvyzz", "tags": ["fi0FvM9l", "67pP4jmx", "Zg9vBVOv"], "type": "E0cTyCLR"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentV2' test.out

#- 129 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'rGGDmQkI' \
    --contentId '3xSy8YDQ' \
    --namespace $AB_NAMESPACE \
    --userId 'BgL6OuWb' \
    --body '{"fileExtension": "8xFdEcxC", "fileLocation": "ey4g6ENf"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateUserContentFileLocation' test.out

#- 130 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'dgyzK1W7' \
    --contentId 'KOkK9t1J' \
    --namespace $AB_NAMESPACE \
    --userId 'Y3r1jLnt' \
    --body '{"contentType": "LWXkwU0d", "fileExtension": "ywZGPq61"}' \
    > test.out 2>&1
eval_tap $? 130 'AdminGenerateUserContentUploadURLV2' test.out

#- 131 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'lql5gq8G' \
    --limit '70' \
    --offset '14' \
    --sortBy 'hRaoWiEV' \
    > test.out 2>&1
eval_tap $? 131 'AdminGetContentByUserIDV2' test.out

#- 132 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'k5Ia6PnG' \
    --namespace $AB_NAMESPACE \
    --userId 'pj4PktSy' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 132 'AdminUpdateContentHideStatusV2' test.out

#- 133 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'LAPQ9vVA' \
    --namespace $AB_NAMESPACE \
    --userId 'lrOFcN9E' \
    --limit '90' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 133 'AdminGetUserGroupContentsV2' test.out

#- 134 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'eAHmHEc1' \
    --limit '88' \
    --offset '87' \
    --sortBy 'J93mRSuw' \
    --status 'VxMUm4Jp' \
    > test.out 2>&1
eval_tap $? 134 'AdminListUserStagingContents' test.out

#- 135 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'GkdU0skx' \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --name 'x1fiBTvC' \
    --offset '17' \
    --sortBy 'k6aCWG6G' \
    > test.out 2>&1
eval_tap $? 135 'PublicGetContentByChannelIDV2' test.out

#- 136 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '26' \
    --name '5Lk0RNv6' \
    --offset '44' \
    --sortBy 'eS2cX5Wr' \
    --subType 'V70TjzBb' \
    --tags '["250LFXIE", "zj9Ijw58", "fzZSUPpk"]' \
    --type 'LJGwg0LW' \
    > test.out 2>&1
eval_tap $? 136 'PublicListContentV2' test.out

#- 137 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["su1L5n7Y", "HVxsd4Xv", "COXdewLp"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicBulkGetContentByIDV2' test.out

#- 138 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["XRB8R0mv", "nrnP4b26", "KNi6fwGH"]}' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentBulkByShareCodesV2' test.out

#- 139 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'B9qgWJsL' \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByShareCodeV2' test.out

#- 140 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'zQjnU9xT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicGetContentByIDV2' test.out

#- 141 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'eKXtXV8f' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 141 'PublicAddDownloadCountV2' test.out

#- 142 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'AgxCs3us' \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '34' \
    --sortBy 'vxzCvKyB' \
    --userId 'M0PFDKpU' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentDownloaderV2' test.out

#- 143 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'ZD0QcTxM' \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --offset '95' \
    --sortBy 'bL2bYVIU' \
    > test.out 2>&1
eval_tap $? 143 'PublicListContentLikeV2' test.out

#- 144 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId 'SMhTcktZ' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateContentLikeStatusV2' test.out

#- 145 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId '3OCbEqDc' \
    --namespace $AB_NAMESPACE \
    --userId 'OxYovnni' \
    --body '{"contentType": "ZVrHVWmu", "customAttributes": {"dHYJWw3X": {}, "jIOAvE5a": {}, "dtzRJFrt": {}}, "fileExtension": "S9BfNUDG", "name": "Kc2SsrKl", "subType": "PgIxIaA1", "tags": ["8jYY7JK0", "FwFzgVwj", "7S6UawkK"], "type": "dq959lDW"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicCreateContentV2' test.out

#- 146 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'uzWGFthH' \
    --namespace $AB_NAMESPACE \
    --shareCode 'VTX5BNbz' \
    --userId 'YmZYzo3l' \
    --body '{"customAttributes": {"xjaZldHe": {}, "ZhaxT9ww": {}, "LMFMmGlH": {}}, "name": "nHQM1DX9", "subType": "enhgHDT2", "tags": ["FYEaGNfk", "0TwKYcS1", "4f1dVmx9"], "type": "CZ6N2B7o"}' \
    > test.out 2>&1
eval_tap $? 146 'PublicUpdateContentByShareCodeV2' test.out

#- 147 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'GCWN9hwf' \
    --namespace $AB_NAMESPACE \
    --shareCode 'vq90rSI1' \
    --userId 'm3MS9fmf' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentByShareCodeV2' test.out

#- 148 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'L3jixed5' \
    --contentId 'raRIV9v8' \
    --namespace $AB_NAMESPACE \
    --userId 'STW7dg2E' \
    > test.out 2>&1
eval_tap $? 148 'PublicDeleteContentV2' test.out

#- 149 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'Um4PmVbN' \
    --contentId '8HQmpxN2' \
    --namespace $AB_NAMESPACE \
    --userId 'NJSVu1Zh' \
    --body '{"customAttributes": {"ekAG04A1": {}, "ECwO1LcT": {}, "3gmdcnYU": {}}, "name": "bOjMyQZs", "subType": "cQB8x3qQ", "tags": ["TvmUM988", "QDUfILy4", "eX6i6BHf"], "type": "KGMqjIZN"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentV2' test.out

#- 150 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'GC5HNEGx' \
    --contentId 'g4P5VPIn' \
    --namespace $AB_NAMESPACE \
    --userId 'qdCJbM0x' \
    --body '{"fileExtension": "49SeorK5", "fileLocation": "Ll0oMasp"}' \
    > test.out 2>&1
eval_tap $? 150 'PublicUpdateContentFileLocation' test.out

#- 151 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'XciS0Bky' \
    --contentId '1M5exlax' \
    --namespace $AB_NAMESPACE \
    --userId 'Z934Vvym' \
    --body '{"shareCode": "1zdcnZ4r"}' \
    > test.out 2>&1
eval_tap $? 151 'UpdateContentShareCodeV2' test.out

#- 152 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'hGhY5xWe' \
    --contentId 'uunqJdO9' \
    --namespace $AB_NAMESPACE \
    --userId '8OgTbool' \
    --body '{"contentType": "IJ9TYzWJ", "fileExtension": "acRpjUVe"}' \
    > test.out 2>&1
eval_tap $? 152 'PublicGenerateContentUploadURLV2' test.out

#- 153 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'sAHrJD6m' \
    --limit '31' \
    --offset '61' \
    --sortBy 'gS1IpZDG' \
    > test.out 2>&1
eval_tap $? 153 'PublicGetContentByUserIDV2' test.out

#- 154 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'UrebKUSN' \
    --namespace $AB_NAMESPACE \
    --userId 'hoDOvYRk' \
    --body '{"screenshots": [{"description": "lX1us8er", "screenshotId": "ZLQkXdIk"}, {"description": "eJtEVkEy", "screenshotId": "Mp8HRa3a"}, {"description": "q5lCTici", "screenshotId": "L7GvH5l9"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UpdateScreenshotsV2' test.out

#- 155 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId '3jvwqkxZ' \
    --namespace $AB_NAMESPACE \
    --userId '1FMEcMGq' \
    --body '{"screenshots": [{"contentType": "KHjD46PU", "description": "3aOliIY1", "fileExtension": "png"}, {"contentType": "Aa4pRZBk", "description": "DsbT2pBE", "fileExtension": "pjp"}, {"contentType": "JUqIyUNr", "description": "FHUb5JkF", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 155 'UploadContentScreenshotV2' test.out

#- 156 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId '3ReQtgPR' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'hNUciqTQ' \
    --userId 'ZYpYuDCt' \
    > test.out 2>&1
eval_tap $? 156 'DeleteContentScreenshotV2' test.out

#- 157 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'mvUvc7iO' \
    --namespace $AB_NAMESPACE \
    --userId 'hiIXTBJT' \
    --limit '55' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 157 'PublicGetGroupContentsV2' test.out

#- 158 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'dVWTyhjV' \
    --limit '16' \
    --offset '64' \
    --sortBy 'UaRh7J0D' \
    --status '50Z4XcND' \
    > test.out 2>&1
eval_tap $? 158 'ListUserStagingContents' test.out

#- 159 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId 'sePVQnRz' \
    --namespace $AB_NAMESPACE \
    --userId 'eVWx7kj7' \
    > test.out 2>&1
eval_tap $? 159 'GetUserStagingContentByID' test.out

#- 160 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId 'LN8yjbSs' \
    --namespace $AB_NAMESPACE \
    --userId 'cgird17y' \
    --body '{"fileExtension": "CXGj2pJs", "fileLocation": "aDbcBR5z"}' \
    > test.out 2>&1
eval_tap $? 160 'UpdateStagingContent' test.out

#- 161 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId 'KSMNySLK' \
    --namespace $AB_NAMESPACE \
    --userId 'shFJRMBG' \
    > test.out 2>&1
eval_tap $? 161 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE