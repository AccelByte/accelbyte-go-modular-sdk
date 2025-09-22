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
    --limit '22' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "AhUApkhY", "name": "fVHZyEHH"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'c3h560pR' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "oYagpAKH"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'NfUqtoBI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'NeOJKDtN' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "Hu5D8v0n", "customAttributes": {"cnJndxNr": {}, "wkaSGMMM": {}, "X80E1QKL": {}}, "fileExtension": "wPjs2uyA", "name": "878hBGnB", "preview": "L6AvnzJ9", "previewMetadata": {"previewContentType": "GP4EE5xb", "previewFileExtension": "vUPZwVIu"}, "shareCode": "AuB7tJqy", "subType": "qDLxOxM8", "tags": ["xMmFogRZ", "gETiRult", "n1JjVNRh"], "type": "zRXNpP1Y"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'jE0xNsSP' \
    --contentId 'Gu1ERDiS' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "5WYCdAlo", "customAttributes": {"wcPQLHNE": {}, "2KG1NAzk": {}, "xQxZunR3": {}}, "fileExtension": "glwyvQwX", "name": "wxlMOON5", "payload": "0g6Yo10T", "preview": "MB6pg9PY", "previewMetadata": {"previewContentType": "1hOintR1", "previewFileExtension": "zEi59fov"}, "shareCode": "cfX28f4w", "subType": "u8or8QID", "tags": ["OHiYBhdw", "9e2Rw2yY", "tABQsASq"], "type": "GD47XSZT", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'Upf0IdtW' \
    --namespace $AB_NAMESPACE \
    --creator '6GuOjMwi' \
    --ishidden 'GXdf07gj' \
    --isofficial 'ioUjA6d3' \
    --limit '10' \
    --name 'X2Rv4YiA' \
    --offset '63' \
    --orderby 'tAj0xeyH' \
    --sortby 't3Wwgyvh' \
    --subtype 'CH0KhBk9' \
    --tags '["quLrWD3h", "hBvaTigo", "f69Fslix"]' \
    --type 'yxj1uNS3' \
    --userId 'gzZIkW1p' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId '1YlafZ4x' \
    --contentId '200vSx1o' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["qeSYiQE3", "HFFd7qdz", "aVRx5wQZ"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'Nmm69JEb' \
    --ishidden 'jgLlx8Wn' \
    --isofficial 'F32TTv0B' \
    --limit '85' \
    --name 'ajjjA7iU' \
    --offset '38' \
    --orderby 'QJuR9KqU' \
    --sortby 'TPi3xO7M' \
    --subtype 'S9GuiAEx' \
    --tags '["56yTDNVx", "wludqgD2", "3cpZPv6i"]' \
    --type '9ivzcK8J' \
    --userId '1HyH8eVJ' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["on5fwXxX", "5SAYcWsu", "YoUExboz"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'pcVVegeN' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId '7TfLVT2S' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'nN2EVoLn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'HgBUqWvC' \
    --namespace $AB_NAMESPACE \
    --versionId 'rsyd7KBw' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId '5FRT5Ft6' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "N1y5DvVN", "screenshotId": "CpsUGkEN"}, {"description": "fuRwQRnn", "screenshotId": "Unak9x5L"}, {"description": "ECgA1v1E", "screenshotId": "cb2WRsYf"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'LV8AOej7' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "LTL7Ar6d", "description": "SSWxGGwD", "fileExtension": "jpg"}, {"contentType": "2B9KPYpL", "description": "EIxaXEJ1", "fileExtension": "bmp"}, {"contentType": "UgtvkM6K", "description": "FvIZ7Nd9", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'ci928tDx' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'QR1zdCQB' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'hXtOSbKK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["pCciNzL7", "Pga2MFru", "COj91MF2"], "name": "VJ08awVo"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'sD08lXzV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'ojFkohi9' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["ZBhQ0bjl", "YZzUG5dB", "i9um8Hip"], "name": "GupBUBnM"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'T4rE7qcD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'OFPJ6MIR' \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "7H9UuA52"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'zVvLoKcs' \
    --body '{"tag": "DjVMdYa5"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'PLv8bf1C' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["livdEGXr", "up0uJlq8", "J9PeUVKc"], "type": "WY3idtTE"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'wrBBrsfe' \
    --body '{"subtype": ["k8heeXkG", "F9NzUvkb", "gT4eJPfB"], "type": "encHtpV9"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'u7uijV8D' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'vhjA9qr9' \
    --limit '55' \
    --name '5BinxbMi' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'EPHpeuMH' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'NgLM41L0' \
    --namespace $AB_NAMESPACE \
    --userId 'BnOR3z1j' \
    --body '{"name": "rzxnUCxj"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'k5avradO' \
    --namespace $AB_NAMESPACE \
    --userId 'XLC6hRlH' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'FyQf5ltm' \
    --namespace $AB_NAMESPACE \
    --shareCode 'FUOAi9Io' \
    --userId 'jYuBY3ZD' \
    --body '{"contentType": "hs84eVor", "customAttributes": {"0PI1yTQ7": {}, "AKGRPDg4": {}, "ZIJytolA": {}}, "fileExtension": "AincJCJi", "name": "E556F9ip", "payload": "kn2LyyQ7", "preview": "eJaUwQDp", "previewMetadata": {"previewContentType": "dBKxZuoc", "previewFileExtension": "YUqL2r2L"}, "shareCode": "1xESfAOu", "subType": "JADZFus8", "tags": ["6veeiwaD", "GGwxNu12", "NwOQeaRl"], "type": "3gI2gScV", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'KUsPc2mc' \
    --contentId 'K22pubiB' \
    --namespace $AB_NAMESPACE \
    --userId 'L6suoemy' \
    --body '{"contentType": "bYAYzbMn", "customAttributes": {"BPWlxmux": {}, "WVtR0cUQ": {}, "1FUn5aQg": {}}, "fileExtension": "0PfPz1OM", "name": "blwUqKW2", "payload": "SW1VA95z", "preview": "WJhHAIyM", "previewMetadata": {"previewContentType": "ZO1A0KhY", "previewFileExtension": "FupSF5lH"}, "shareCode": "F8SLeVPN", "subType": "ZHGL1Jpu", "tags": ["1Mo5ykzx", "3tHfMEEH", "0ovfri1r"], "type": "R5ROETst", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'bV10tWBz' \
    --namespace $AB_NAMESPACE \
    --shareCode 'eg0pkxFQ' \
    --userId 'AkisIihw' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'jCV4khm7' \
    --contentId 'CcbwOsfQ' \
    --namespace $AB_NAMESPACE \
    --userId 'k5FqwZuT' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'gPr0E2BW' \
    --limit '37' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'oklEKqsr' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'GBJfcGYg' \
    --namespace $AB_NAMESPACE \
    --userId 'OSDZu7Sw' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'RcmlYMDy' \
    --limit '66' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'ReJmmJia' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'jyPIsXx3' \
    --namespace $AB_NAMESPACE \
    --userId 'YX1tJQua' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'bp6GUQui' \
    --namespace $AB_NAMESPACE \
    --userId 'vjkQe3bF' \
    --body '{"contents": ["eKz9hybd", "CahOpLUo", "4CdwAL91"], "name": "5gOpfoMF"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'klfOKzCy' \
    --namespace $AB_NAMESPACE \
    --userId 'MKMPhDXl' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'ZwnH0d5N' \
    --namespace $AB_NAMESPACE \
    --userId 'HW0ebQ3N' \
    --limit '41' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId '2U4WDuRt' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId '5wYK7ju6' \
    --namespace $AB_NAMESPACE \
    --creator 'YBWWlf6z' \
    --ishidden 'hfr4NBHe' \
    --isofficial 'r9SkU1uN' \
    --limit '88' \
    --name 'TdkVYFMN' \
    --offset '51' \
    --orderby 'pdrwQmF7' \
    --sortby 'v2xhFdMV' \
    --subtype 'zZuNtZT3' \
    --tags '["GvfFw3UF", "flzPqUBL", "8CbQR688"]' \
    --type '9ixRVnVV' \
    --userId 'QAZn5gTZ' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'mV2N7IHN' \
    --ishidden 'PCHMxzGb' \
    --isofficial 'X6CPVVMO' \
    --limit '50' \
    --name 'QeFDIdcK' \
    --offset '63' \
    --orderby 'i8Sq0Y03' \
    --sortby 'nKKqZzBv' \
    --subtype 'G9QcLgax' \
    --tags '["uIJ0TzRj", "QZPnzX5Q", "7DQ1cdgG"]' \
    --type 'oviu9FRB' \
    --userId 'BqD900TA' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["SK4c4Sw2", "5pejYVOH", "eSXuhkPu"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '13' \
    --name 'HYetWQYu' \
    --offset '66' \
    --orderby '0EVvVZGT' \
    --sortby 'ynXlLHWV' \
    --subtype 'wCm8Bgd2' \
    --tags '["9BX44SL5", "s8dJtgSx", "Y59rjSAp"]' \
    --type 'IcPg1CVk' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["WsX9StJB", "p1RFQ7vQ", "PTWqS3v5"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'G3HaNs4U' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'GoQC3Ny3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'bebtir4v' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'DpYjyC4O' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'qsaj8rHE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '89' \
    --orderby 'SLKMbUDU' \
    --sortby 'VF2Zs0UA' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'eE4EIYDS' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'z1BSgQKG' \
    --limit '42' \
    --name 'Wme1EDyN' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'xzsJJJbD' \
    --body '{"name": "b0vbu0Ip"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'ovpoZ2ah' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'ZSffvd4y' \
    --namespace $AB_NAMESPACE \
    --userId 'NQr3xfnt' \
    --body '{"name": "cuN8kG9w"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'O3TiSpRz' \
    --namespace $AB_NAMESPACE \
    --userId 'zHfhtYCu' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'BTQ0AeAh' \
    --namespace $AB_NAMESPACE \
    --userId 'iQjCcZpN' \
    --body '{"contentType": "kJi53dOl", "customAttributes": {"t1rg9hS3": {}, "NTWcnBZC": {}, "X59hD2S0": {}}, "fileExtension": "algsqHYh", "name": "5rCXj3Co", "preview": "CFW5RtW2", "previewMetadata": {"previewContentType": "9EnFz8KC", "previewFileExtension": "85b6R70h"}, "subType": "elR962H6", "tags": ["AO6C1AKP", "5KmkNvBe", "kLspU74L"], "type": "xaeddsCp"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'jZO4ktTD' \
    --namespace $AB_NAMESPACE \
    --shareCode '6b01Ac4j' \
    --userId 'xxB7Yme1' \
    --body '{"contentType": "7ekQ4UM6", "customAttributes": {"3xo6lQmV": {}, "eG2FoueK": {}, "M3cn6kEs": {}}, "fileExtension": "QtFCHlAG", "name": "AIWz2fbc", "payload": "k8cwwedA", "preview": "GoDr9r52", "previewMetadata": {"previewContentType": "tXR9JBxS", "previewFileExtension": "NoIvv529"}, "subType": "LJux6Wlk", "tags": ["3wWzMjAR", "3vFG2isR", "d1w3UZnw"], "type": "OGmqySEB", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'qclflA03' \
    --contentId 'ss1LdxCt' \
    --namespace $AB_NAMESPACE \
    --userId 'h1bKP6cV' \
    --body '{"contentType": "abgsTf7t", "customAttributes": {"lTfwCAij": {}, "WuCDZITW": {}, "7E8R8n5a": {}}, "fileExtension": "znjO3LY8", "name": "TCuSwW77", "payload": "hIN4m5wB", "preview": "GnMhXCDj", "previewMetadata": {"previewContentType": "NET3aXVo", "previewFileExtension": "a41oQGXq"}, "subType": "zqOjgHuh", "tags": ["667uQqqa", "yKWWGs1R", "mLbTHHlU"], "type": "E5TpEoYQ", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId 'uPf5aObb' \
    --namespace $AB_NAMESPACE \
    --shareCode 'PGlAmEmO' \
    --userId '9PtKc0m6' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'MjbN0yXw' \
    --contentId 'al82rzB3' \
    --namespace $AB_NAMESPACE \
    --userId 'tPe3FKp4' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'GxnC7aXt' \
    --contentId 'XXq9qDe4' \
    --namespace $AB_NAMESPACE \
    --userId 't4g4ZLKS' \
    --body '{"shareCode": "85fiDvCy"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'RKpDYg7h' \
    --limit '92' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'BBLuQ65g' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'fxsZ9bAm' \
    --namespace $AB_NAMESPACE \
    --userId 'cQP8LXNS' \
    --body '{"screenshots": [{"description": "Wzh1hBNl", "screenshotId": "dZaCbz96"}, {"description": "5MRdyeZz", "screenshotId": "3IOov09l"}, {"description": "8VoENWmy", "screenshotId": "w4byMBBp"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'ZcnOVHFe' \
    --namespace $AB_NAMESPACE \
    --userId 'wT0bjO6H' \
    --body '{"screenshots": [{"contentType": "wMgMs7od", "description": "06VZn9bw", "fileExtension": "pjp"}, {"contentType": "qMzBQw7S", "description": "S3o9TpXR", "fileExtension": "jpeg"}, {"contentType": "KJWmxiAk", "description": "uEH7ea9X", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId '8hjsehFX' \
    --namespace $AB_NAMESPACE \
    --screenshotId '9fL5Y8jW' \
    --userId '4BhRs4Df' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId '3PbVwVXX' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'qqphGvkQ' \
    --limit '42' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'rWqKeRod' \
    --limit '40' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'IG0jcMLN' \
    --limit '2' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'Mf5FnuGc' \
    --body '{"contents": ["NXZeYZmc", "AhaeVd5z", "UKEnBwKF"], "name": "sIpGCGkj"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId '7wywXEXm' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'JuN7vn63' \
    --namespace $AB_NAMESPACE \
    --userId 'mpieNyzY' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'kXSo6SQa' \
    --namespace $AB_NAMESPACE \
    --userId '2ycGqKla' \
    --body '{"contents": ["mUMh3MqV", "tPTKNRqh", "VlCiIY8r"], "name": "cCWkqxeW"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId '0NPfgsSu' \
    --namespace $AB_NAMESPACE \
    --userId 'BCToelw3' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'CUUOVCU7' \
    --namespace $AB_NAMESPACE \
    --userId 'hKvN9AAh' \
    --limit '48' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'opZ9GOVA' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'BT2yvSVJ' \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --name 'QszmTQvm' \
    --offset '3' \
    --sortBy 'AcwSSqbx' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'ysEuoMCc' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "pOWEWVGJ", "customAttributes": {"LMV2zk1e": {}, "IemWIZR4": {}, "hDy7i2NB": {}}, "fileExtension": "cCeGsFDT", "name": "oM7pwfhB", "shareCode": "PFFmnHMS", "subType": "g91CHHJZ", "tags": ["5rFilKlt", "BVkcFlZw", "mfAnMxE4"], "type": "iUofGhoS"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'MXUrvjQy' \
    --contentId 'bOKqWnLy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId '2ab3J1uP' \
    --contentId '4KDpKYFY' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"RWGVkUE1": {}, "515o5XUT": {}, "aFqc1xOT": {}}, "name": "RmoNeaBS", "shareCode": "CZsXuVpO", "subType": "Q4ZCQMoS", "tags": ["HGBZgiLt", "AJFI5A4Y", "MCZR4bsy"], "type": "9vohDasO"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminCopyContent
samples/cli/sample-apps Ugc adminCopyContent \
    --channelId 'qcMSFmMP' \
    --contentId '5A3FkhLc' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"zYTSOIr5": {}, "d2gQFqOp": {}, "K16X3euu": {}}, "name": "kqAhYAWM", "subType": "SIgXRAmk", "tags": ["ivlZCxo2", "VUlrylUA", "HxX3YjVC"], "targetChannelId": "RU0EmkeG", "type": "q4JGQ2PC"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminCopyContent' test.out

#- 107 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'CFcUWQr9' \
    --contentId 'wqEWqn4j' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "LFKlj67g", "fileLocation": "WKUR2Ak3"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminUpdateOfficialContentFileLocation' test.out

#- 108 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'tU8Vf5ez' \
    --contentId 'hoKzSlJ3' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "d27Swtw2", "fileExtension": "zg3uAodf"}' \
    > test.out 2>&1
eval_tap $? 108 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 109 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 109 'AdminGetConfigs' test.out

#- 110 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key 'AFE8UeXf' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "UYGD9g8P"}' \
    > test.out 2>&1
eval_tap $? 110 'AdminUpdateConfig' test.out

#- 111 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '26' \
    --name 'YmTSaWdf' \
    --offset '39' \
    --sortBy 'O0KN1dkm' \
    --subType 'gfoWn6qS' \
    --tags '["1EQDxs2Q", "MX9zeQWB", "rT2JJqP4"]' \
    --type 'BIqsPl1w' \
    > test.out 2>&1
eval_tap $? 111 'AdminListContentV2' test.out

#- 112 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["18yTORAa", "Sd0xkyVJ", "2Ab6KBcO"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminBulkGetContentByIDsV2' test.out

#- 113 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["cp9NGTn6", "QRNBndAh", "LG805NPQ"]}' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentBulkByShareCodesV2' test.out

#- 114 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode '3zXumhuw' \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByShareCodeV2' test.out

#- 115 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId '0xRJPY9n' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'AdminGetContentByContentIDV2' test.out

#- 116 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'rlfz84Po' \
    --namespace $AB_NAMESPACE \
    --versionId 'XTo4L1Hn' \
    > test.out 2>&1
eval_tap $? 116 'RollbackContentVersionV2' test.out

#- 117 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'lv4oLLfd' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "40RKEnXZ", "screenshotId": "CM4jRQSB"}, {"description": "nVwf2zo7", "screenshotId": "VtD3dw0u"}, {"description": "3MZV7dEo", "screenshotId": "MdlYEnux"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateScreenshotsV2' test.out

#- 118 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 'g6HFY4tw' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "4wNqiswP", "description": "0JsHT5Mo", "fileExtension": "bmp"}, {"contentType": "BccqqcT5", "description": "kXGdi93t", "fileExtension": "bmp"}, {"contentType": "3Z2Gt5Et", "description": "1JU81ino", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 118 'AdminUploadContentScreenshotV2' test.out

#- 119 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'meiy8dz8' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'ID2BvEyj' \
    > test.out 2>&1
eval_tap $? 119 'AdminDeleteContentScreenshotV2' test.out

#- 120 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'PhTEkExK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 120 'ListContentVersionsV2' test.out

#- 121 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'mMTQmt4i' \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 121 'AdminGetOfficialGroupContentsV2' test.out

#- 122 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '98' \
    --sortBy 'XlZnIjFP' \
    --status 'xhUjBtsU' \
    > test.out 2>&1
eval_tap $? 122 'AdminListStagingContents' test.out

#- 123 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId 'Kdp7YGdP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminGetStagingContentByID' test.out

#- 124 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId 'PAz5EW00' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": true, "note": "iylEbb09"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminApproveStagingContent' test.out

#- 125 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'HtUq5HbS' \
    --namespace $AB_NAMESPACE \
    --shareCode 'mvb5sH7W' \
    --userId 'yE5WAaWy' \
    --body '{"customAttributes": {"Zwv4Zj8q": {}, "3SxKjuT1": {}, "0YiXiVw2": {}}, "name": "pBXg1BNp", "shareCode": "V7WroaQp", "subType": "qbIwlPZt", "tags": ["dyKN4uri", "LvhLdeK4", "l2tNMVtv"], "type": "JKrnHkGn"}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateContentByShareCodeV2' test.out

#- 126 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId '324tOdSf' \
    --namespace $AB_NAMESPACE \
    --shareCode 'KdJijiRf' \
    --userId '2MR0BWMl' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteContentByShareCodeV2' test.out

#- 127 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'wwD1UsPl' \
    --contentId 'rYSMleK5' \
    --namespace $AB_NAMESPACE \
    --userId 'zUwQ7Aom' \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteUserContentV2' test.out

#- 128 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'w1urlK8Z' \
    --contentId '9zRjKu5h' \
    --namespace $AB_NAMESPACE \
    --userId 'rSYHH4Eh' \
    --body '{"customAttributes": {"xgl66p1W": {}, "rssTDPHA": {}, "PKamSXSy": {}}, "name": "IhrARkY4", "shareCode": "qMuaQDXj", "subType": "a3IwCUDo", "tags": ["c4xoEu0S", "KJyB1WsP", "loCiwg9g"], "type": "WA2Mrdax"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentV2' test.out

#- 129 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'lmQVoIUt' \
    --contentId '9tOe0FLg' \
    --namespace $AB_NAMESPACE \
    --userId '6aZONJMX' \
    --body '{"fileExtension": "uEm0dgQk", "fileLocation": "wlZxBCd4"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateUserContentFileLocation' test.out

#- 130 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'MHGJtx2u' \
    --contentId 'UxQshIZ7' \
    --namespace $AB_NAMESPACE \
    --userId 'iMqX2wYz' \
    --body '{"contentType": "52yCF4y6", "fileExtension": "vnYL8vkw"}' \
    > test.out 2>&1
eval_tap $? 130 'AdminGenerateUserContentUploadURLV2' test.out

#- 131 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'RmL33VNR' \
    --limit '26' \
    --offset '64' \
    --sortBy 'B3c0gq6x' \
    > test.out 2>&1
eval_tap $? 131 'AdminGetContentByUserIDV2' test.out

#- 132 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'DW5dI2m4' \
    --namespace $AB_NAMESPACE \
    --userId '6DUBOypT' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 132 'AdminUpdateContentHideStatusV2' test.out

#- 133 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'yNWlthIP' \
    --namespace $AB_NAMESPACE \
    --userId 'nTJfnX1q' \
    --limit '73' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 133 'AdminGetUserGroupContentsV2' test.out

#- 134 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'y6i20cfM' \
    --limit '1' \
    --offset '70' \
    --sortBy '08RyahuC' \
    --status 'CYRkzaX5' \
    > test.out 2>&1
eval_tap $? 134 'AdminListUserStagingContents' test.out

#- 135 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId '577Ft3pB' \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --name 'quz6Zex9' \
    --offset '25' \
    --sortBy 'DGg8fOXY' \
    > test.out 2>&1
eval_tap $? 135 'PublicGetContentByChannelIDV2' test.out

#- 136 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '60' \
    --name 'b9u9DSLl' \
    --offset '29' \
    --sortBy 'QVfvoXv2' \
    --subType 'QqYLObWs' \
    --tags '["98c3SPwr", "SBw6l5vV", "PZHq5TRm"]' \
    --type 'ce9xBwB2' \
    > test.out 2>&1
eval_tap $? 136 'PublicListContentV2' test.out

#- 137 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["sOcT6K2P", "mw5EXfEB", "YCfnGeqh"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicBulkGetContentByIDV2' test.out

#- 138 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["D7BVYLgV", "QymodyqF", "YZvi9nxS"]}' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentBulkByShareCodesV2' test.out

#- 139 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'jAfbvDZr' \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByShareCodeV2' test.out

#- 140 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId '4W6NGlo1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicGetContentByIDV2' test.out

#- 141 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'tlW450Cp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 141 'PublicAddDownloadCountV2' test.out

#- 142 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'M1OYYN5u' \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '79' \
    --sortBy 'fyT0VyAy' \
    --userId 'Zln3yVGd' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentDownloaderV2' test.out

#- 143 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'caLeyKDI' \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '100' \
    --sortBy '1PzlOP32' \
    > test.out 2>&1
eval_tap $? 143 'PublicListContentLikeV2' test.out

#- 144 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId 'eo4dObJr' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateContentLikeStatusV2' test.out

#- 145 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'er5e5oJd' \
    --namespace $AB_NAMESPACE \
    --userId 'HkHmUUTZ' \
    --body '{"contentType": "B1jkcYJM", "customAttributes": {"d3MZW7qD": {}, "EPsHtw1Q": {}, "31cF9YCZ": {}}, "fileExtension": "l4MDI5Y8", "name": "9ZalQmIN", "subType": "ICfbeYBR", "tags": ["G5eOtP2F", "JR2FCYAP", "SAxrH8Q9"], "type": "eZPpuMtx"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicCreateContentV2' test.out

#- 146 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId '3N1qCkF4' \
    --namespace $AB_NAMESPACE \
    --shareCode 'GRoY5le9' \
    --userId '0znNvFI6' \
    --body '{"customAttributes": {"0UExHzeL": {}, "C7aQ2dFn": {}, "MrV7diUO": {}}, "name": "75F3XcJH", "subType": "nXZGfNCH", "tags": ["ZXt4T93C", "RPd8e2LU", "g8TjFuI1"], "type": "cioGxbtB"}' \
    > test.out 2>&1
eval_tap $? 146 'PublicUpdateContentByShareCodeV2' test.out

#- 147 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId '2PQSIrvT' \
    --namespace $AB_NAMESPACE \
    --shareCode 'bWU3YAF9' \
    --userId 'm7QIyyuX' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentByShareCodeV2' test.out

#- 148 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'Na9J8B9n' \
    --contentId 'bJe8J0ko' \
    --namespace $AB_NAMESPACE \
    --userId 'BOlF8oKb' \
    > test.out 2>&1
eval_tap $? 148 'PublicDeleteContentV2' test.out

#- 149 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'ERzA8Z7G' \
    --contentId 'Uy1PX5Ue' \
    --namespace $AB_NAMESPACE \
    --userId 'TrYzTNJj' \
    --body '{"customAttributes": {"JPuf9YW3": {}, "uEBrcU0a": {}, "KHJOXwj3": {}}, "name": "g6LY55co", "subType": "Zbx8BmsH", "tags": ["47GTGxuL", "Txk632nP", "0bcFXZDh"], "type": "3HKxxFZ2"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentV2' test.out

#- 150 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'cd9LQtnf' \
    --contentId 'NYViaotc' \
    --namespace $AB_NAMESPACE \
    --userId 'FKvVEIA9' \
    --body '{"fileExtension": "UtrQTwLS", "fileLocation": "56y6fsd5"}' \
    > test.out 2>&1
eval_tap $? 150 'PublicUpdateContentFileLocation' test.out

#- 151 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'Vk9Nzt7h' \
    --contentId '6oRRI58E' \
    --namespace $AB_NAMESPACE \
    --userId 'C8cL1YYy' \
    --body '{"shareCode": "7Eo8yZzM"}' \
    > test.out 2>&1
eval_tap $? 151 'UpdateContentShareCodeV2' test.out

#- 152 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'EAdWUxcw' \
    --contentId 'rBBHDDwD' \
    --namespace $AB_NAMESPACE \
    --userId 'CWMa43z9' \
    --body '{"contentType": "MC65lcSl", "fileExtension": "4kHIXU1t"}' \
    > test.out 2>&1
eval_tap $? 152 'PublicGenerateContentUploadURLV2' test.out

#- 153 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'Kzqp89qn' \
    --limit '73' \
    --offset '27' \
    --sortBy 'st8OxsAf' \
    > test.out 2>&1
eval_tap $? 153 'PublicGetContentByUserIDV2' test.out

#- 154 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'AQyPV1SY' \
    --namespace $AB_NAMESPACE \
    --userId '4Os3G6NB' \
    --body '{"screenshots": [{"description": "0bOk7d1j", "screenshotId": "N3lI5Wcu"}, {"description": "1fTcEFhJ", "screenshotId": "illKesUd"}, {"description": "8oEsi3tr", "screenshotId": "1hjdwUzv"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UpdateScreenshotsV2' test.out

#- 155 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'Q49V1PkQ' \
    --namespace $AB_NAMESPACE \
    --userId 'Lncuc2SN' \
    --body '{"screenshots": [{"contentType": "YhwCdqoq", "description": "QnMlNFDm", "fileExtension": "jpeg"}, {"contentType": "4LEIL1tU", "description": "LhWSylcq", "fileExtension": "bmp"}, {"contentType": "jG44fORD", "description": "YwVbjba0", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 155 'UploadContentScreenshotV2' test.out

#- 156 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'RAqvWNus' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'eOKgzgAB' \
    --userId '93F4ttCd' \
    > test.out 2>&1
eval_tap $? 156 'DeleteContentScreenshotV2' test.out

#- 157 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId '7g8a2OIj' \
    --namespace $AB_NAMESPACE \
    --userId 'fPKP5N1M' \
    --limit '91' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 157 'PublicGetGroupContentsV2' test.out

#- 158 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'W7BY2R1V' \
    --limit '12' \
    --offset '90' \
    --sortBy 'MJH9gSfi' \
    --status 'lSPYqiWo' \
    > test.out 2>&1
eval_tap $? 158 'ListUserStagingContents' test.out

#- 159 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId 'FotM0ItD' \
    --namespace $AB_NAMESPACE \
    --userId 'zexsINXq' \
    > test.out 2>&1
eval_tap $? 159 'GetUserStagingContentByID' test.out

#- 160 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId 'vHeFjXWU' \
    --namespace $AB_NAMESPACE \
    --userId 'U2J3yAl5' \
    --body '{"fileExtension": "3nJauYGA", "fileLocation": "x0g7hsJU"}' \
    > test.out 2>&1
eval_tap $? 160 'UpdateStagingContent' test.out

#- 161 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId 'FZeYjbPo' \
    --namespace $AB_NAMESPACE \
    --userId '8T9P7ZjS' \
    > test.out 2>&1
eval_tap $? 161 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE