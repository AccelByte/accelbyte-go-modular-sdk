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
    --limit '78' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "bY9gplNL", "name": "QHy21raC"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'AAu5McWm' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "86VHfquS"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'GdfdWMrk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'yNuxnz5V' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "r8oG8cvk", "customAttributes": {"iDgrlGbB": {}, "0Bg8EH7R": {}, "6jbGzQr8": {}}, "fileExtension": "tMDSy9zE", "name": "R48EiWQZ", "preview": "Ls4BKruU", "previewMetadata": {"previewContentType": "wAZfiHPm", "previewFileExtension": "J8dR8PWx"}, "shareCode": "KvP1UNtM", "subType": "FGm9cnI9", "tags": ["jXVDY7pQ", "HXp7DKw7", "CrmqSope"], "type": "bx44suAB"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'AtcK3ioG' \
    --contentId 'RIBgPKLa' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "wPLDhTVf", "customAttributes": {"X69MQvMu": {}, "8cU0mhVJ": {}, "Y1AE8H1h": {}}, "fileExtension": "6t1Rb2Qz", "name": "CVrrNKXk", "payload": "ZFl7J6VR", "preview": "Yph715WX", "previewMetadata": {"previewContentType": "dsBmAsyT", "previewFileExtension": "DRD1pfyZ"}, "shareCode": "ZQKCH2ox", "subType": "YQsuY3UP", "tags": ["d6ZQehX8", "CmY9LXXY", "jUdPgor5"], "type": "yS919F17", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'xqEwYzkA' \
    --namespace $AB_NAMESPACE \
    --creator 'a0nTJ2Ul' \
    --ishidden 'SEVJxPHM' \
    --isofficial 'gL4uul3O' \
    --limit '7' \
    --name 'nwLQFTeo' \
    --offset '40' \
    --orderby '6MGSnCbe' \
    --sortby 'hV1gBZHJ' \
    --subtype 'BbcNgRGc' \
    --tags '["vu8yMLkK", "4Hmso0PW", "5jhdzJkL"]' \
    --type 'UDZkFNe0' \
    --userId '130PlqCR' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'EpccOIFu' \
    --contentId '1FWRMFrU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["hJT8zGYw", "ybqlXpDZ", "p9xknyes"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'euYBRMXN' \
    --ishidden 'tah0jJSY' \
    --isofficial 'x6MmJc0C' \
    --limit '0' \
    --name 'Zy4JcMVZ' \
    --offset '38' \
    --orderby 'wdZgKy2e' \
    --sortby '6hT3RUxF' \
    --subtype '0bLamKtG' \
    --tags '["HAXb9Tcm", "phrDImXu", "cpH304OY"]' \
    --type '4XoVOarp' \
    --userId '7ptVv2Y6' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["H7Adz6Wk", "IKUk1UHO", "sScNaxZx"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode '3iZtTh2G' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId '5Ke8In13' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'Gp12xKPg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'cCKk4e2t' \
    --namespace $AB_NAMESPACE \
    --versionId '7ADP5ahI' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'v7qhUOIh' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "oP7zVpuK", "screenshotId": "mgQZkdCy"}, {"description": "qYtmKVmv", "screenshotId": "XSoMkgR9"}, {"description": "PpeqGP2A", "screenshotId": "0Ejgdjwt"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'ldIdokl1' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "L6QpIkH9", "description": "p0SkipKi", "fileExtension": "pjp"}, {"contentType": "u18GNzup", "description": "di9Dqgb5", "fileExtension": "bmp"}, {"contentType": "WnBLLmMw", "description": "BOrlKSSR", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'o2ipL5x2' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'Utqz5RYo' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'K0rD8Onm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["Ec7QXjgZ", "r7LQsXlX", "tyKU2xx2"], "name": "aZwWPpMo"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId '6SeA7CwK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'FgvqHd4u' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["vxm754ol", "zoT1gD3q", "aD1ft8rq"], "name": "xXKagwEM"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'goa9XwKw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'fr2gnZse' \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "YT1FmVQ2"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'xWPsI2rN' \
    --body '{"tag": "ohBR9QDK"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'vNUberbp' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["h7uAggAU", "TxBSm6Tu", "DuBIDEgP"], "type": "CMPyA58Y"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'CfBnPNHm' \
    --body '{"subtype": ["CuJ1TeJY", "GWQ05YQ2", "7FfCdb2l"], "type": "4qr2FGKo"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId '9y75EyLd' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId '47ED9pZH' \
    --limit '61' \
    --name 'rz3vYaVl' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'iceEAc87' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'WeZifxSK' \
    --namespace $AB_NAMESPACE \
    --userId '0Xod1wSv' \
    --body '{"name": "6FbZIwDB"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId '17LK5cmn' \
    --namespace $AB_NAMESPACE \
    --userId 'jqBRY0dq' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'Sr2qsiPr' \
    --namespace $AB_NAMESPACE \
    --shareCode '218igrks' \
    --userId 'MmJFiC5P' \
    --body '{"contentType": "3d1P97iV", "customAttributes": {"9dflyu66": {}, "ITLzXzGm": {}, "iUYVoe6Y": {}}, "fileExtension": "fPbleFzI", "name": "DuTcSkgl", "payload": "tDrdKTaP", "preview": "J8ZiNE6r", "previewMetadata": {"previewContentType": "xewbecGs", "previewFileExtension": "hqFRWB9h"}, "shareCode": "6PpqjhlE", "subType": "6IqHQLLt", "tags": ["rin8NOSS", "wbx7CtOB", "kyN1L7nG"], "type": "mXnEGQO9", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'MsoCMxdT' \
    --contentId 'm7uGMA0B' \
    --namespace $AB_NAMESPACE \
    --userId '0CgmsLHZ' \
    --body '{"contentType": "YQM7Icqw", "customAttributes": {"rbmz3VVn": {}, "6wmOxDg5": {}, "HzO19vL6": {}}, "fileExtension": "xIndYsSw", "name": "4MOjlAz4", "payload": "nxgktfJu", "preview": "IWolQdU2", "previewMetadata": {"previewContentType": "y7IiKfpH", "previewFileExtension": "WDNdkPXP"}, "shareCode": "mwXlOYBi", "subType": "nuUdlHZS", "tags": ["R4TrVsDp", "ikbC5upO", "PyPlVmiE"], "type": "Wp5L5Tnu", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'PM92wURL' \
    --namespace $AB_NAMESPACE \
    --shareCode 'SQPkwreg' \
    --userId 'ANuPNO8v' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'locpMfX6' \
    --contentId 'oHwt80IC' \
    --namespace $AB_NAMESPACE \
    --userId 'u2Y57qpy' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'HIZ7vuTD' \
    --limit '74' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'KzNbJYhV' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'FUHBdvPr' \
    --namespace $AB_NAMESPACE \
    --userId '6Sx5HTWK' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'DpKHVH7v' \
    --limit '4' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'NaGRQ2ad' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'X65A3uFO' \
    --namespace $AB_NAMESPACE \
    --userId 'XG0t19wx' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'JVrXaPBe' \
    --namespace $AB_NAMESPACE \
    --userId 'ZNbSwG7w' \
    --body '{"contents": ["Dklzivv7", "AgwI8sOS", "rwYcF012"], "name": "ZnnCmNee"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId '1VGevWnR' \
    --namespace $AB_NAMESPACE \
    --userId 'vBXYophD' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'mqY7gGx9' \
    --namespace $AB_NAMESPACE \
    --userId 'U63mXZ7o' \
    --limit '3' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'U8bwXlQa' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId '6eKIViCF' \
    --namespace $AB_NAMESPACE \
    --creator 'XRwX2u3l' \
    --ishidden 'BQPGV37n' \
    --isofficial 'dw5YmFi8' \
    --limit '5' \
    --name 'A9oM1r2Y' \
    --offset '9' \
    --orderby 'q6pCp0VT' \
    --sortby 'qMngx4uX' \
    --subtype '4TfpwGka' \
    --tags '["H2Y8PyNv", "tKwnFLvZ", "PndBDnRz"]' \
    --type 'sez1iWhw' \
    --userId '5cUfIhoz' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'F52xYF2C' \
    --ishidden 'SzFKZxnR' \
    --isofficial 'CujctMjH' \
    --limit '80' \
    --name 'rALFfyJb' \
    --offset '72' \
    --orderby '7p7dB0N0' \
    --sortby 'vVKsU0b0' \
    --subtype 'C1f6R25J' \
    --tags '["qd2oHmX9", "3iBBGKuh", "wND3zFlQ"]' \
    --type 'SAt84K4O' \
    --userId 'EUcQO09n' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["gdVbF1P9", "I3zAFyXg", "ffBZrr9Y"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '38' \
    --name 'STcJcqT9' \
    --offset '12' \
    --orderby 'PUNxazlA' \
    --sortby 'kSFouVLW' \
    --subtype '7979MUk0' \
    --tags '["oTmITfRq", "7ItjZoKu", "tv690hZ7"]' \
    --type 'Q6y7xeOq' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["sLEC6mBG", "z0dTNDPm", "eKHLi7Y7"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'zj4cFxM4' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'zocDnzKC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'kt1V4u4T' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'oVQRcgvY' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'Ru7hJHc4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '27' \
    --orderby 'yYA7DU1d' \
    --sortby 'gq7INGBY' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId '3IJTNvam' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'HMbRO2VY' \
    --limit '78' \
    --name 'qWqzR4jk' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'RyAmERZO' \
    --body '{"name": "d2U3Wb3n"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'sLhiPXrB' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId '3H5h7hLf' \
    --namespace $AB_NAMESPACE \
    --userId '968VV5tr' \
    --body '{"name": "DuleR1AQ"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'uzqp14op' \
    --namespace $AB_NAMESPACE \
    --userId 'jSALA7rX' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'wrAeng5M' \
    --namespace $AB_NAMESPACE \
    --userId 'Jn35vm1M' \
    --body '{"contentType": "mc1IyFQI", "customAttributes": {"bVBX76D7": {}, "26wNYcZi": {}, "KBa1z7R1": {}}, "fileExtension": "z32WrQAI", "name": "XU5Q2ujm", "preview": "o9MMbyiV", "previewMetadata": {"previewContentType": "9sMKYGOY", "previewFileExtension": "rhj2ymkV"}, "subType": "xsWhxiNO", "tags": ["Ukee3KSu", "fTFL6kPP", "B7uT88Gu"], "type": "NCJJXs1M"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'bPCuSxSF' \
    --namespace $AB_NAMESPACE \
    --shareCode '78hhLebq' \
    --userId 'TtFcOVTs' \
    --body '{"contentType": "IssITcgV", "customAttributes": {"v2iMHDP1": {}, "B8GcTNHl": {}, "xEC1ZwjH": {}}, "fileExtension": "oIqY1JOA", "name": "PTjnD0I5", "payload": "zNqSYe5e", "preview": "7hPgzmUZ", "previewMetadata": {"previewContentType": "BCw8Rdlf", "previewFileExtension": "Opfb2JTB"}, "subType": "OPXfgshO", "tags": ["VvJGycmk", "tv988Va4", "ZPL3YLnX"], "type": "mfbYEFFS", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'irvI7Wvo' \
    --contentId 'AddZyfMm' \
    --namespace $AB_NAMESPACE \
    --userId 'GhvvjYVs' \
    --body '{"contentType": "CtY37778", "customAttributes": {"7F5vcwyg": {}, "q1WARit3": {}, "o5kugeqz": {}}, "fileExtension": "shZfcVbJ", "name": "1KnqSOVK", "payload": "AQNRXE2w", "preview": "tdX8y1GH", "previewMetadata": {"previewContentType": "wqmMfauA", "previewFileExtension": "g8mAPV1o"}, "subType": "XTPeO46N", "tags": ["HXOScdZY", "SaFztbHc", "IhpndziS"], "type": "kMTLmliU", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId 'g7SUKbNK' \
    --namespace $AB_NAMESPACE \
    --shareCode '379tjCAh' \
    --userId 'zu5WdOZQ' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'PvPsjj7R' \
    --contentId 'tS2MuU2o' \
    --namespace $AB_NAMESPACE \
    --userId 'ZTPw4tru' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'PvgFfQn4' \
    --contentId 'XpSyryHK' \
    --namespace $AB_NAMESPACE \
    --userId 'Hckox5OS' \
    --body '{"shareCode": "cSGcFt2w"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'EBRyMYY5' \
    --limit '83' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId '3XDDiWFS' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'PPGOrYi0' \
    --namespace $AB_NAMESPACE \
    --userId '2DRgzl95' \
    --body '{"screenshots": [{"description": "HuAjtLe4", "screenshotId": "aOnoa4oO"}, {"description": "Cn4J0NE4", "screenshotId": "sXVVQLg4"}, {"description": "2eXliqWa", "screenshotId": "bfKdAk3M"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId '0UmvBtuT' \
    --namespace $AB_NAMESPACE \
    --userId 'QyH2hwn3' \
    --body '{"screenshots": [{"contentType": "TxCOeDBo", "description": "xMvovywc", "fileExtension": "pjp"}, {"contentType": "q0PZEiAb", "description": "4WHBsVVY", "fileExtension": "pjp"}, {"contentType": "6oguWBYu", "description": "kVbJqIv7", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'gUy8SEb1' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'kS9Z2LwO' \
    --userId 'gGnlnwzT' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'KgaRI5yd' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'hNr9C7cm' \
    --limit '28' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'VHLr1rN5' \
    --limit '95' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId '69cMN0ON' \
    --limit '72' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'sRZGQBCV' \
    --body '{"contents": ["dFBUMUbh", "ek6tTHyS", "mgA2tifi"], "name": "40AscUW3"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'Tatkfm1L' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'tht0E4lo' \
    --namespace $AB_NAMESPACE \
    --userId 'J1U2D8Lv' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'R3YXNLGh' \
    --namespace $AB_NAMESPACE \
    --userId '6FUrYE4S' \
    --body '{"contents": ["XMYQWjAl", "OqUVc6Ji", "IIhf7SiS"], "name": "4XYiLQxd"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'QPBzRaZ1' \
    --namespace $AB_NAMESPACE \
    --userId '5XyaO7C8' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'gGQZkiZH' \
    --namespace $AB_NAMESPACE \
    --userId 'lE4oM0Gp' \
    --limit '57' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'xt6t3LqN' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'vyRwXMW0' \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --name 'X05ejXWM' \
    --offset '82' \
    --sortBy 'ugP6evAQ' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'rEgc7MZe' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "4e4QYU5C", "customAttributes": {"Kwz3kebJ": {}, "r5zGElje": {}, "4kfXX8Qz": {}}, "fileExtension": "WkTT8wLZ", "name": "uPDpoNIy", "shareCode": "r1hsjrZU", "subType": "H6CZ3XR5", "tags": ["jsoJPpVt", "NEG8SCk1", "JA6zHcXs"], "type": "hp4wXCMc"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'lWe9Llct' \
    --contentId 'yxcmsM7b' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'EnjFuByi' \
    --contentId 'tg3FZ0hY' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"WZoUjLiV": {}, "XGxMtKsw": {}, "ZxfN3EY2": {}}, "name": "Pu1Bd2g5", "shareCode": "G5kkQYyn", "subType": "ucTn9lz5", "tags": ["dJlSdEqw", "ay1ah0lM", "jOb8DHhC"], "type": "fVKn2399"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'AhuIDqS9' \
    --contentId 'txZQ7OdI' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "7dXJfsXu", "fileLocation": "hkkESlQR"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminUpdateOfficialContentFileLocation' test.out

#- 107 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'wnmlJj00' \
    --contentId 'YnzJYx0a' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "XY6w3wmz", "fileExtension": "I4yYojub"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 108 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 108 'AdminGetConfigs' test.out

#- 109 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key 'MjAunPvU' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "bCkbaUD6"}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateConfig' test.out

#- 110 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '22' \
    --name 'cfUp0vin' \
    --offset '22' \
    --sortBy 'N4ljz7GB' \
    --subType 'Bm9L9OEN' \
    --tags '["OUMqjCKw", "b970JpBN", "dvHZun1p"]' \
    --type '2tA29BA9' \
    > test.out 2>&1
eval_tap $? 110 'AdminListContentV2' test.out

#- 111 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["WGL5AwuU", "oLZTzttU", "Jt343G4n"]}' \
    > test.out 2>&1
eval_tap $? 111 'AdminBulkGetContentByIDsV2' test.out

#- 112 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["CM5Vl95q", "WA6ewry8", "QpkFWrgG"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminGetContentBulkByShareCodesV2' test.out

#- 113 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'Fw3QUp9c' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentByShareCodeV2' test.out

#- 114 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 'DHo05U2x' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByContentIDV2' test.out

#- 115 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'xiXOLQvQ' \
    --namespace $AB_NAMESPACE \
    --versionId 'WibhyvJx' \
    > test.out 2>&1
eval_tap $? 115 'RollbackContentVersionV2' test.out

#- 116 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'aQ6ylTDe' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "gVcpYqYy", "screenshotId": "iQwaPNF6"}, {"description": "2N9gKAXb", "screenshotId": "jls8EEVb"}, {"description": "Q4QqV3LH", "screenshotId": "ZUpcYHxY"}]}' \
    > test.out 2>&1
eval_tap $? 116 'AdminUpdateScreenshotsV2' test.out

#- 117 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 'rTIx1W7Q' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "49q1NJkO", "description": "K6iVnGhI", "fileExtension": "jpeg"}, {"contentType": "LAAakyds", "description": "S9S590ET", "fileExtension": "pjp"}, {"contentType": "GVeMbRBS", "description": "QpB2Hqei", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUploadContentScreenshotV2' test.out

#- 118 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'z2fQKdbC' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'g3n2ndUZ' \
    > test.out 2>&1
eval_tap $? 118 'AdminDeleteContentScreenshotV2' test.out

#- 119 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'GZ6z7LTR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'ListContentVersionsV2' test.out

#- 120 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'FSA6dnz6' \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetOfficialGroupContentsV2' test.out

#- 121 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '82' \
    --sortBy 'pfmZlJVr' \
    --status 'VMhPxQUD' \
    > test.out 2>&1
eval_tap $? 121 'AdminListStagingContents' test.out

#- 122 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId 'SU861OPr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetStagingContentByID' test.out

#- 123 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId 'UmneGtRT' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": false, "note": "v5e3c6Qx"}' \
    > test.out 2>&1
eval_tap $? 123 'AdminApproveStagingContent' test.out

#- 124 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'FK5ucXIp' \
    --namespace $AB_NAMESPACE \
    --shareCode 'ow24iBcf' \
    --userId '8RecPwbG' \
    --body '{"customAttributes": {"AtrDuwf8": {}, "bN3b0THu": {}, "rKp7QBi4": {}}, "name": "A8gToby8", "shareCode": "Ccq8z3BW", "subType": "tYVN6m8p", "tags": ["gnDzBfjc", "bsI4EjLH", "E8AO2x31"], "type": "KbVcSn2C"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateContentByShareCodeV2' test.out

#- 125 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'w4WQ4Om0' \
    --namespace $AB_NAMESPACE \
    --shareCode 'xiEx5tmO' \
    --userId 'Ty5OFYzC' \
    > test.out 2>&1
eval_tap $? 125 'AdminDeleteContentByShareCodeV2' test.out

#- 126 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 't9FHSDYA' \
    --contentId 'vhKcgx12' \
    --namespace $AB_NAMESPACE \
    --userId 'OltDNI92' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteUserContentV2' test.out

#- 127 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'ZHhhW0Nl' \
    --contentId 'vIo3dBYV' \
    --namespace $AB_NAMESPACE \
    --userId 'RtNetJ6V' \
    --body '{"customAttributes": {"jToKroLq": {}, "4Cym3hsM": {}, "Tl51slXK": {}}, "name": "DpXj6LIN", "shareCode": "20NTVZLs", "subType": "BQqF1HHj", "tags": ["kbkHbmmS", "9u5lMWS2", "Vla3ZdQy"], "type": "joXo2u4E"}' \
    > test.out 2>&1
eval_tap $? 127 'AdminUpdateUserContentV2' test.out

#- 128 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'Ca3xbC5Q' \
    --contentId 'RPgciRME' \
    --namespace $AB_NAMESPACE \
    --userId 'sMTIDYrD' \
    --body '{"fileExtension": "NvEeGftU", "fileLocation": "5rpu23zi"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentFileLocation' test.out

#- 129 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'zubZUvIi' \
    --contentId 'exT7QgxB' \
    --namespace $AB_NAMESPACE \
    --userId '7FJQphBd' \
    --body '{"contentType": "c3ceFSdQ", "fileExtension": "mjVua6Ms"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminGenerateUserContentUploadURLV2' test.out

#- 130 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId '2oFwflyj' \
    --limit '6' \
    --offset '51' \
    --sortBy 'TzUoDKRb' \
    > test.out 2>&1
eval_tap $? 130 'AdminGetContentByUserIDV2' test.out

#- 131 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'u5p4OV4M' \
    --namespace $AB_NAMESPACE \
    --userId 'l4BwXJbG' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 131 'AdminUpdateContentHideStatusV2' test.out

#- 132 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'QW56rKVK' \
    --namespace $AB_NAMESPACE \
    --userId 'lFGpQGQa' \
    --limit '30' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 132 'AdminGetUserGroupContentsV2' test.out

#- 133 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'XQNYM8Xb' \
    --limit '32' \
    --offset '85' \
    --sortBy '42IcYCAZ' \
    --status '3EiP59vZ' \
    > test.out 2>&1
eval_tap $? 133 'AdminListUserStagingContents' test.out

#- 134 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'yrEkodYy' \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --name '2NWDUrlj' \
    --offset '43' \
    --sortBy 'bRnA4ZDR' \
    > test.out 2>&1
eval_tap $? 134 'PublicGetContentByChannelIDV2' test.out

#- 135 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '20' \
    --name 'EIRia6Ga' \
    --offset '83' \
    --sortBy '8LPbHHv0' \
    --subType 'ejyeiyXG' \
    --tags '["Mh2dEZCh", "CJKtesGx", "Vazuqpqo"]' \
    --type 'Twu4j4Vx' \
    > test.out 2>&1
eval_tap $? 135 'PublicListContentV2' test.out

#- 136 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["qBDnl9AA", "aQwbVFJc", "HEF05NYk"]}' \
    > test.out 2>&1
eval_tap $? 136 'PublicBulkGetContentByIDV2' test.out

#- 137 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["MWO7LrUj", "PhifkncJ", "m7tourqU"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicGetContentBulkByShareCodesV2' test.out

#- 138 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'IFvl8ldV' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentByShareCodeV2' test.out

#- 139 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'RgoWLu9I' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByIDV2' test.out

#- 140 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId '1u7q2Oeu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicAddDownloadCountV2' test.out

#- 141 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'MCQM1H8i' \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '0' \
    --sortBy 'QJZY27uG' \
    --userId 'qTmxJ7Un' \
    > test.out 2>&1
eval_tap $? 141 'PublicListContentDownloaderV2' test.out

#- 142 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'PG0yew3r' \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '90' \
    --sortBy 'BCHH9gJ5' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentLikeV2' test.out

#- 143 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId 'UvnzR6NI' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateContentLikeStatusV2' test.out

#- 144 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'S1YHHa2m' \
    --namespace $AB_NAMESPACE \
    --userId 'pLE1CScm' \
    --body '{"contentType": "zy4TEUqE", "customAttributes": {"AvAXZS20": {}, "RhoDmNKM": {}, "cgad1fOk": {}}, "fileExtension": "uiJAWftc", "name": "CtPitTiT", "subType": "q8TOnttG", "tags": ["nUBcwQeZ", "VtkfhgpA", "YjWYZSRF"], "type": "m7IbjTgH"}' \
    > test.out 2>&1
eval_tap $? 144 'PublicCreateContentV2' test.out

#- 145 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'x67gaBT8' \
    --namespace $AB_NAMESPACE \
    --shareCode 'dVIi4mbG' \
    --userId 'HaAFIykC' \
    --body '{"customAttributes": {"DcJedXhQ": {}, "J9THkyGE": {}, "fGCNG8Oe": {}}, "name": "jeOSIMyc", "subType": "U9Jlk9f0", "tags": ["oN07Mn6w", "cUFdxurE", "LlpiGz4D"], "type": "lw4grBFh"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicUpdateContentByShareCodeV2' test.out

#- 146 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'E20KR5sd' \
    --namespace $AB_NAMESPACE \
    --shareCode 'iW1ngPtS' \
    --userId 'VEUPawvc' \
    > test.out 2>&1
eval_tap $? 146 'PublicDeleteContentByShareCodeV2' test.out

#- 147 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'Rg8aV6bq' \
    --contentId 'frMLrRgs' \
    --namespace $AB_NAMESPACE \
    --userId 'JGDx4UTB' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentV2' test.out

#- 148 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'rEyINFpf' \
    --contentId '1v6OSCNY' \
    --namespace $AB_NAMESPACE \
    --userId 'Mq5LuKNv' \
    --body '{"customAttributes": {"a4Z4a781": {}, "51WD1ZGI": {}, "9pP8MLnO": {}}, "name": "8qACvZMS", "subType": "xOsddP89", "tags": ["7pvqvUkd", "JLb2J0MM", "ucPfNFXG"], "type": "iLpr6OwR"}' \
    > test.out 2>&1
eval_tap $? 148 'PublicUpdateContentV2' test.out

#- 149 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId '4GqXh8Lc' \
    --contentId 'A6NRkkTc' \
    --namespace $AB_NAMESPACE \
    --userId 'Qxsqjekz' \
    --body '{"fileExtension": "2XQYAeev", "fileLocation": "6vERkJpi"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentFileLocation' test.out

#- 150 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'vFONnU0E' \
    --contentId 'Ti75ETU2' \
    --namespace $AB_NAMESPACE \
    --userId 'U6ZeymVb' \
    --body '{"shareCode": "p8p1qtwG"}' \
    > test.out 2>&1
eval_tap $? 150 'UpdateContentShareCodeV2' test.out

#- 151 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'EdFn9QMB' \
    --contentId 'DBqkUwNY' \
    --namespace $AB_NAMESPACE \
    --userId 'vL52JE9L' \
    --body '{"contentType": "Yc2s81ZZ", "fileExtension": "ChTJPst2"}' \
    > test.out 2>&1
eval_tap $? 151 'PublicGenerateContentUploadURLV2' test.out

#- 152 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'Zba0GPaM' \
    --limit '44' \
    --offset '68' \
    --sortBy 'c3g5t4WW' \
    > test.out 2>&1
eval_tap $? 152 'PublicGetContentByUserIDV2' test.out

#- 153 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'MrVgTAA3' \
    --namespace $AB_NAMESPACE \
    --userId 'M23aMmuR' \
    --body '{"screenshots": [{"description": "rgMj417j", "screenshotId": "VCiv9dnb"}, {"description": "3Ntpz41D", "screenshotId": "xSUTFKlL"}, {"description": "ydzE00Lc", "screenshotId": "Ha9o8rZM"}]}' \
    > test.out 2>&1
eval_tap $? 153 'UpdateScreenshotsV2' test.out

#- 154 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'PEmWbWwf' \
    --namespace $AB_NAMESPACE \
    --userId 'xHKT3bxa' \
    --body '{"screenshots": [{"contentType": "ZtdBpR24", "description": "S6eOHp6n", "fileExtension": "bmp"}, {"contentType": "nhQ7dwWU", "description": "60QcDCB2", "fileExtension": "jfif"}, {"contentType": "lcnPYuCL", "description": "0tOEqaXi", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UploadContentScreenshotV2' test.out

#- 155 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'DM2s1oob' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'J5CH3jFA' \
    --userId 'zzY0wWpi' \
    > test.out 2>&1
eval_tap $? 155 'DeleteContentScreenshotV2' test.out

#- 156 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'QVY3F1kr' \
    --namespace $AB_NAMESPACE \
    --userId 'Qaq97bpX' \
    --limit '60' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 156 'PublicGetGroupContentsV2' test.out

#- 157 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'u4l6yUjx' \
    --limit '69' \
    --offset '66' \
    --sortBy 'hbW8bxwt' \
    --status 'UL0YtSew' \
    > test.out 2>&1
eval_tap $? 157 'ListUserStagingContents' test.out

#- 158 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId 'UzsJyGUs' \
    --namespace $AB_NAMESPACE \
    --userId '8xSTVLnn' \
    > test.out 2>&1
eval_tap $? 158 'GetUserStagingContentByID' test.out

#- 159 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId 'RjQZRdZK' \
    --namespace $AB_NAMESPACE \
    --userId 'xb5myxfK' \
    --body '{"fileExtension": "voiBq5er", "fileLocation": "H4e499tB"}' \
    > test.out 2>&1
eval_tap $? 159 'UpdateStagingContent' test.out

#- 160 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId 'Y9SL0pkI' \
    --namespace $AB_NAMESPACE \
    --userId '2daUBhgy' \
    > test.out 2>&1
eval_tap $? 160 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE