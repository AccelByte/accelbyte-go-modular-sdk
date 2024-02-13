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
    --limit '52' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "X2vzfHwZ", "name": "lU1NwF2h"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId '9QJglKDT' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "gb9B8JXb"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId '3Xs5BfHY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId '2R7vXSGN' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "R9D9PTQD", "customAttributes": {"SS7WEv6A": {}, "Fd8hd4FG": {}, "vtAeBivu": {}}, "fileExtension": "P2ZYQe6k", "name": "Mu9LnKCO", "preview": "nR62HxjM", "previewMetadata": {"previewContentType": "aBJnF562", "previewFileExtension": "NBT6ZXaL"}, "shareCode": "ZarkFyHe", "subType": "gnA3PdRH", "tags": ["SBDSDFIJ", "sAZZooPV", "16RXkM1m"], "type": "TWFRH3G7"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'dY5D7IFT' \
    --contentId 'L2jWzdST' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "Lnti5s4S", "customAttributes": {"0dMS5Eqg": {}, "Lw8X1fa7": {}, "ZMcuLGOg": {}}, "fileExtension": "0xSSZfNR", "name": "G2plfbh8", "payload": "p2RLbkyy", "preview": "42tqJjVs", "previewMetadata": {"previewContentType": "fV18ZG51", "previewFileExtension": "gfqXmUK4"}, "shareCode": "xCaAirTy", "subType": "tgGp5rQZ", "tags": ["cS4fWMdp", "c2kDTcWp", "aAV1w7a7"], "type": "sjPeteGY", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId '8CXdpyuY' \
    --namespace $AB_NAMESPACE \
    --creator 'z2YXVhtn' \
    --ishidden 'H0IHdSrb' \
    --isofficial 'mhXuLVTu' \
    --limit '7' \
    --name 'xLBLdR7O' \
    --offset '92' \
    --orderby 'sWXZ4zrS' \
    --sortby 'WB8QQnPG' \
    --subtype 'mq022j8B' \
    --tags '["2dRxUIGG", "xXWYriSo", "bw5hXMyJ"]' \
    --type '0snBPdsG' \
    --userId 'oru6aV0y' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId '87V8smLD' \
    --contentId 'aDqUn5sf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["H2cT9hd7", "k1BCRBWe", "1IwOX99V"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'pTtTOi9N' \
    --ishidden 'OiIJMeCB' \
    --isofficial 'ZaxzHg5X' \
    --limit '1' \
    --name 'd7F0yV78' \
    --offset '13' \
    --orderby 'rtWDOacN' \
    --sortby 'SaNZXdzG' \
    --subtype 'z8j66lZ9' \
    --tags '["bkkm5muz", "pgKHMt4M", "AkWuarRt"]' \
    --type 'gMJ2lHFi' \
    --userId 'F6eEGoet' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["SxWLWLKa", "2PS7ElqZ", "7fGlfEk3"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'pEA7rvKU' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'uuQdpIUg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'u8oPhqE8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'cmKMYF1e' \
    --namespace $AB_NAMESPACE \
    --versionId 'Bx86fTTC' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'fuhipqkG' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "78pQyc5g", "screenshotId": "AGocLe1C"}, {"description": "ivYuFzCm", "screenshotId": "GPBwhiBo"}, {"description": "6hBMuZwW", "screenshotId": "wZrVAPlK"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId '63ogxPcp' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "HzDyGOls", "description": "zRIYoXlP", "fileExtension": "jpeg"}, {"contentType": "8WEd4klk", "description": "jWGvSund", "fileExtension": "pjp"}, {"contentType": "ZIq1xPK1", "description": "kV7URrru", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'FNI28kSX' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'CKSVs6Oc' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'V4YHzAsJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["UYXFvFti", "WpgRf7v2", "LZCrkJoM"], "name": "8wII8Z02"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'YI8QjsLq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'QIzxu3Oh' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["q1KMP2pN", "9yHMoxXO", "UWAHCocB"], "name": "E8oGmR64"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'RW51dkx6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId '7OGFcfQq' \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "9UgoBVbE"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'SqVG0QLB' \
    --body '{"tag": "GJwd0fzk"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'YReim0um' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["rJgw7SDX", "BhykAVMW", "umUodtaK"], "type": "60ZD9iAU"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'znC9BM5d' \
    --body '{"subtype": ["s0g37nIU", "jTVdbIpB", "kNYQvkRz"], "type": "wHIoDudb"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId '4Tqj4Vas' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'OPPwB6Ow' \
    --limit '71' \
    --name 'fgyAojn2' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'e1nE7Eow' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'cOM5srjM' \
    --namespace $AB_NAMESPACE \
    --userId 'SWS4KKVS' \
    --body '{"name": "kFVdcSg9"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'y3LF13U7' \
    --namespace $AB_NAMESPACE \
    --userId 'UUdPMrLR' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'riMqICYv' \
    --namespace $AB_NAMESPACE \
    --shareCode 'OdRnUxgk' \
    --userId 'hdCyL2kD' \
    --body '{"contentType": "bxEezZ4t", "customAttributes": {"mjKQ6rpk": {}, "GouqQyjW": {}, "rwYaiInu": {}}, "fileExtension": "VhhKjgS2", "name": "8C7zWf9Z", "payload": "t5z5pItP", "preview": "uPIXI2en", "previewMetadata": {"previewContentType": "hNcO1kKQ", "previewFileExtension": "jTjNxGbr"}, "shareCode": "zjySF83h", "subType": "hDprvO5f", "tags": ["VAEhNwTO", "3rfopt7C", "yXeUKU8b"], "type": "vlGIg2aK", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'ea2FL3NM' \
    --contentId 'JtH6x1u8' \
    --namespace $AB_NAMESPACE \
    --userId 'F1RZJAzL' \
    --body '{"contentType": "6ovmbpD5", "customAttributes": {"LIuR3dhy": {}, "Nz8SRGLY": {}, "o9H6NqMD": {}}, "fileExtension": "9ybX1NSQ", "name": "vNuqvl3d", "payload": "SScfkC0X", "preview": "dC3ZXFzR", "previewMetadata": {"previewContentType": "OePDhJ7Q", "previewFileExtension": "PtWzj5BE"}, "shareCode": "FvxKpvwR", "subType": "nEcTpGvY", "tags": ["sFg08abC", "DpBfkcoH", "QMo6CsMk"], "type": "fCp6FCjV", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'WfT0WrX4' \
    --namespace $AB_NAMESPACE \
    --shareCode 'Q9ia4iLg' \
    --userId 'QvPagVfS' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId '1rXwpLvQ' \
    --contentId 'PPERxQrq' \
    --namespace $AB_NAMESPACE \
    --userId 'jLUt4tk5' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'x1ZotY1y' \
    --limit '8' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'hM3Teprn' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'QWg59Zob' \
    --namespace $AB_NAMESPACE \
    --userId 'SbB1XODz' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId '0vTgrwXI' \
    --limit '32' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId '03krDxdZ' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'K9iZggQv' \
    --namespace $AB_NAMESPACE \
    --userId 'voowjzcq' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'QAp9p6aE' \
    --namespace $AB_NAMESPACE \
    --userId 'BFNLyTRX' \
    --body '{"contents": ["hVQ5zhfJ", "IEA2Rk6E", "5h4RBI0x"], "name": "h8Uiu8d6"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'x6pYG4kB' \
    --namespace $AB_NAMESPACE \
    --userId 'MlG4Y7ZB' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId '7FqLrJyG' \
    --namespace $AB_NAMESPACE \
    --userId 'eqWukyAT' \
    --limit '57' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'M40u3Frr' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'cQjlkfzU' \
    --namespace $AB_NAMESPACE \
    --creator '9Q9OP3TR' \
    --ishidden 'DbCfDg5I' \
    --isofficial 'wKXRVf4Z' \
    --limit '8' \
    --name 'Js0tNfBq' \
    --offset '15' \
    --orderby '7iZDq9yA' \
    --sortby 'szTMNp8J' \
    --subtype 'LEBGrNIB' \
    --tags '["L7JDi98Y", "jHTOAfP4", "xgR5pWo6"]' \
    --type 'h9SQFgUz' \
    --userId 'Z0ucJFmt' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator '9sI9TNuL' \
    --ishidden '5IbtGWPP' \
    --isofficial 'UUiasYAO' \
    --limit '82' \
    --name 'HSQIApeM' \
    --offset '21' \
    --orderby 'JGBBkXbY' \
    --sortby 'FLtmxCWG' \
    --subtype 'ixONNSxj' \
    --tags '["IJcdlNVL", "rqwMmdlo", "9COkkg7o"]' \
    --type 'Hy9QK1GO' \
    --userId 'MTaQquQT' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["IZ8WWszj", "y6tA6BZc", "7tzgJmUZ"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '34' \
    --name 'W0XGxm5a' \
    --offset '38' \
    --orderby 'CziaZfHB' \
    --sortby 'weOpzbED' \
    --subtype 'xflzVAAO' \
    --tags '["5g3bH1kM", "Jdtn8ahf", "tzAjm4ju"]' \
    --type 'IYLScpw8' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["NEPPbkiZ", "iAWUyy7m", "DwAymMIG"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode '8vdFe7PK' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'lM2Z74p0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'IBHdwgqN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'goCSnH22' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'rrMPBu1c' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '29' \
    --orderby 'kqSJlZVL' \
    --sortby 'tX91uf5i' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'SkhPIXqR' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'gJTtkXFB' \
    --limit '52' \
    --name 'EfbNTyyc' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'TycL6Bkt' \
    --body '{"name": "SDF7FQ8O"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'abS5Csje' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'tx95bWTR' \
    --namespace $AB_NAMESPACE \
    --userId 'lamyTjU4' \
    --body '{"name": "nsgUBev1"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'cAugT6vd' \
    --namespace $AB_NAMESPACE \
    --userId 'l2Qm5Ys1' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'BoUOs3vB' \
    --namespace $AB_NAMESPACE \
    --userId 'ChwMoq16' \
    --body '{"contentType": "yPHBgvCY", "customAttributes": {"QTZZC313": {}, "RBhyLxbX": {}, "wBucmDYk": {}}, "fileExtension": "vV6jZ9Wy", "name": "OeM5SaNo", "preview": "DoShfYTN", "previewMetadata": {"previewContentType": "1VxaV0fU", "previewFileExtension": "qwjo3rzI"}, "subType": "0yG7Ym7o", "tags": ["Ql9WWmft", "LhGmQaZp", "3cRAXEcu"], "type": "TRSEfdan"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'ZSsztUAa' \
    --namespace $AB_NAMESPACE \
    --shareCode 'dZ7lmgJQ' \
    --userId '1tyZjflH' \
    --body '{"contentType": "OR0kdugi", "customAttributes": {"Mzz5FWzM": {}, "479ulNzz": {}, "8eS9VqM4": {}}, "fileExtension": "uqRcSOjx", "name": "MD3tCnfR", "payload": "M41LLtt4", "preview": "9J3NHP9y", "previewMetadata": {"previewContentType": "CBichVA1", "previewFileExtension": "0I42Hb7B"}, "subType": "Z8uVXY0i", "tags": ["tWoOGHNd", "MhTqYLEG", "UooanIU4"], "type": "fOTY6L8q", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId '0QBcrSm4' \
    --contentId 'zVKmek1t' \
    --namespace $AB_NAMESPACE \
    --userId 'YMZ4tfEe' \
    --body '{"contentType": "Odqn39qA", "customAttributes": {"rV1s7TRk": {}, "3rsJhqVJ": {}, "gJY0K0y4": {}}, "fileExtension": "ZWqfxtR0", "name": "GoYekucg", "payload": "3DDNjPHc", "preview": "IdADNC06", "previewMetadata": {"previewContentType": "ii02h9mv", "previewFileExtension": "wfWLQ31E"}, "subType": "1ltWsW1T", "tags": ["gKggbraD", "4vw6kVxf", "WuqeBXhr"], "type": "dTyAd30U", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId 'gwQyVnIC' \
    --namespace $AB_NAMESPACE \
    --shareCode 'MkB7FLH4' \
    --userId '3Xyj15En' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'aRzNLw3P' \
    --contentId 'wPCVKTHL' \
    --namespace $AB_NAMESPACE \
    --userId '5EnwJJXa' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'ElTxLNAn' \
    --contentId '0jOZrEWt' \
    --namespace $AB_NAMESPACE \
    --userId 'XK9py42x' \
    --body '{"shareCode": "I2VVvOfr"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'XebKysqm' \
    --limit '13' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'XIP4qQHk' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'U7uiUj9T' \
    --namespace $AB_NAMESPACE \
    --userId 'RRRfHYRj' \
    --body '{"screenshots": [{"description": "garAMvSh", "screenshotId": "VjdPNccG"}, {"description": "TOFsSDmu", "screenshotId": "3NRvIxEv"}, {"description": "STNmBoLD", "screenshotId": "TLia1pP7"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'XOziJ4R7' \
    --namespace $AB_NAMESPACE \
    --userId 'C4VztvTy' \
    --body '{"screenshots": [{"contentType": "hRtfRfDx", "description": "OAV2tUVT", "fileExtension": "jpg"}, {"contentType": "1woT19J1", "description": "jRMRP5MA", "fileExtension": "jfif"}, {"contentType": "Qlw1Thpk", "description": "GSfqZrs2", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId '1Ry1UNaV' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'Hk4K8Ftn' \
    --userId 'nfrn5TJF' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'AuSklUxY' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'jBqwA5jK' \
    --limit '57' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId '1ZNJ4Ogn' \
    --limit '88' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'uj0VBB6I' \
    --limit '5' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'ZZmAZVzy' \
    --body '{"contents": ["wLkQ18q0", "pr7Kxqcm", "8sF70ff8"], "name": "c030mhu4"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'YS3HwI37' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 't0OBbZgD' \
    --namespace $AB_NAMESPACE \
    --userId 'yTKVyFbU' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'JY5LDgKV' \
    --namespace $AB_NAMESPACE \
    --userId 'KURAXNqk' \
    --body '{"contents": ["Vtj30LVT", "rS1aSDYj", "FuVQHqhm"], "name": "hrd0CzlD"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'GJrGM4kA' \
    --namespace $AB_NAMESPACE \
    --userId 'sZ4ZCfB5' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId '58LD03cQ' \
    --namespace $AB_NAMESPACE \
    --userId 'ciiG10gI' \
    --limit '12' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'AkjZvUjp' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'RIG43znd' \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --name 'WW0LMzBk' \
    --offset '33' \
    --sortBy 'gI4G9EOh' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'CaTnIyK2' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "40ChQfYH", "customAttributes": {"wACOv9YW": {}, "LVCaPhhP": {}, "7Q6sPuVG": {}}, "fileExtension": "fdgqcyu7", "name": "5MyBkBj5", "shareCode": "NAa2qOHS", "subType": "uq9YkXnZ", "tags": ["bA5AzcjJ", "LTDJTx2L", "OQyDCG4d"], "type": "28BMN31A"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId '1nZDiv2B' \
    --contentId 'xM5Zj1Qi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'zimxfbaW' \
    --contentId 'vlTtfEfo' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"gZY2xBSO": {}, "n6tlLD9u": {}, "HDBZwjlA": {}}, "name": "nfGwARjJ", "shareCode": "UEGU5n3U", "subType": "pxVeYxxH", "tags": ["jHfGmIbH", "n8SzFVaI", "s8PTvYJa"], "type": "BYLxpIP2"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'xiOL2dvk' \
    --contentId 'sWCO2GdY' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "yKrQH6uY", "fileLocation": "JWBufbOX"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminUpdateOfficialContentFileLocation' test.out

#- 107 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'XP3gLXr8' \
    --contentId 'fW8OswBc' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "ZvyZviBw", "fileExtension": "EqZtZx9C"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 108 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 108 'AdminGetConfigs' test.out

#- 109 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key 'KxcN1Kew' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "k3qG93m1"}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateConfig' test.out

#- 110 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '45' \
    --name '02ziPM7C' \
    --offset '56' \
    --sortBy 'GSopY9nk' \
    --subType 'j0f5URi2' \
    --tags '["onnrZUMW", "NbGDgIVj", "du4Z53N4"]' \
    --type 'h8w3h6bK' \
    > test.out 2>&1
eval_tap $? 110 'AdminListContentV2' test.out

#- 111 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["JZFp1X2e", "rQ09zldl", "MUhEidC3"]}' \
    > test.out 2>&1
eval_tap $? 111 'AdminBulkGetContentByIDsV2' test.out

#- 112 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["vaaxrXlT", "1cplpXr1", "TUGDeHum"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminGetContentBulkByShareCodesV2' test.out

#- 113 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'ysDC2afk' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentByShareCodeV2' test.out

#- 114 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 'iel2KASY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByContentIDV2' test.out

#- 115 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'Uaz8fmGP' \
    --namespace $AB_NAMESPACE \
    --versionId '5sdkRi4z' \
    > test.out 2>&1
eval_tap $? 115 'RollbackContentVersionV2' test.out

#- 116 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'pE7P8MCc' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "ANlsKUTW", "screenshotId": "wbiXy3U7"}, {"description": "mwRsWIMv", "screenshotId": "p45sbytB"}, {"description": "2Q36Cvpo", "screenshotId": "sxh5umVF"}]}' \
    > test.out 2>&1
eval_tap $? 116 'AdminUpdateScreenshotsV2' test.out

#- 117 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 'UpnsfAuJ' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "7iTEjvg5", "description": "luyLPqeG", "fileExtension": "jpg"}, {"contentType": "5ypXTuW6", "description": "psRHtDZ7", "fileExtension": "pjp"}, {"contentType": "i7oHkX1g", "description": "E8tls3wF", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUploadContentScreenshotV2' test.out

#- 118 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'Ny2QCK1f' \
    --namespace $AB_NAMESPACE \
    --screenshotId '5GdgJAYn' \
    > test.out 2>&1
eval_tap $? 118 'AdminDeleteContentScreenshotV2' test.out

#- 119 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'puyxAMO8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'ListContentVersionsV2' test.out

#- 120 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'w8ID5qIi' \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetOfficialGroupContentsV2' test.out

#- 121 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '39' \
    --sortBy 'uDNBPSxL' \
    --status 'LY89Xq2D' \
    > test.out 2>&1
eval_tap $? 121 'AdminListStagingContents' test.out

#- 122 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId 'VtlK8dgh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetStagingContentByID' test.out

#- 123 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId 'zKFIFrUj' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": true, "note": "wfLAFb2R"}' \
    > test.out 2>&1
eval_tap $? 123 'AdminApproveStagingContent' test.out

#- 124 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'sTO3LSoH' \
    --namespace $AB_NAMESPACE \
    --shareCode 'qQMsld74' \
    --userId 'rvHFrNWC' \
    --body '{"customAttributes": {"0v93GbBG": {}, "lplb9dfP": {}, "SAtjip28": {}}, "name": "jb1H3q8I", "shareCode": "aXP3tXg9", "subType": "x6vhedzy", "tags": ["YfKTdiDQ", "TzMWbjGn", "QbJ6gDLs"], "type": "IOGjwMWh"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateContentByShareCodeV2' test.out

#- 125 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'bVtH03Le' \
    --namespace $AB_NAMESPACE \
    --shareCode 'GQwqaGBm' \
    --userId '7Ytxhmsy' \
    > test.out 2>&1
eval_tap $? 125 'AdminDeleteContentByShareCodeV2' test.out

#- 126 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'CwE8nTDV' \
    --contentId 'uu1P5yri' \
    --namespace $AB_NAMESPACE \
    --userId '0JwNKShD' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteUserContentV2' test.out

#- 127 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'dTDLQiYL' \
    --contentId 'ofG1FqkL' \
    --namespace $AB_NAMESPACE \
    --userId 'Z0px8Nb6' \
    --body '{"customAttributes": {"4L8nQuH8": {}, "rp8WpM5l": {}, "meMV0cIx": {}}, "name": "VXEIM4uF", "shareCode": "6q5S4Rob", "subType": "uh0XpO1P", "tags": ["jPvKc4j5", "54KVs7z1", "ERn03Ngg"], "type": "jrFU9Odo"}' \
    > test.out 2>&1
eval_tap $? 127 'AdminUpdateUserContentV2' test.out

#- 128 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'mZaclwaG' \
    --contentId 'vSt7LiIY' \
    --namespace $AB_NAMESPACE \
    --userId 'jnRjZg3u' \
    --body '{"fileExtension": "Le5cjEyq", "fileLocation": "XQvg4rBt"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentFileLocation' test.out

#- 129 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'adSAJnXW' \
    --contentId 'McxFE7Fi' \
    --namespace $AB_NAMESPACE \
    --userId 'K3UxH9BK' \
    --body '{"contentType": "bPjJV44C", "fileExtension": "3rMjVlji"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminGenerateUserContentUploadURLV2' test.out

#- 130 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'tTA6toCw' \
    --limit '31' \
    --offset '53' \
    --sortBy 'hc8dyBrx' \
    > test.out 2>&1
eval_tap $? 130 'AdminGetContentByUserIDV2' test.out

#- 131 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'SOlNAyz0' \
    --namespace $AB_NAMESPACE \
    --userId 'r0buIuyf' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 131 'AdminUpdateContentHideStatusV2' test.out

#- 132 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'mvP5ucHY' \
    --namespace $AB_NAMESPACE \
    --userId 'UFpjOIek' \
    --limit '93' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 132 'AdminGetUserGroupContentsV2' test.out

#- 133 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'UC8y2OQA' \
    --limit '18' \
    --offset '10' \
    --sortBy '0dcrKhuI' \
    --status 'NbIpvQzG' \
    > test.out 2>&1
eval_tap $? 133 'AdminListUserStagingContents' test.out

#- 134 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'QkdXyo0l' \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --name 'ORKaHUUz' \
    --offset '72' \
    --sortBy 'ijAtOPJO' \
    > test.out 2>&1
eval_tap $? 134 'PublicGetContentByChannelIDV2' test.out

#- 135 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '58' \
    --name 'ZCocqhbr' \
    --offset '30' \
    --sortBy 'MBglfhCq' \
    --subType 'dRWZZ2DM' \
    --tags '["7uuGZkij", "6IL30ele", "MBs6nl0F"]' \
    --type 'hW8gFmcx' \
    > test.out 2>&1
eval_tap $? 135 'PublicListContentV2' test.out

#- 136 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["3MsGg923", "au7wKRVs", "TnRocBHW"]}' \
    > test.out 2>&1
eval_tap $? 136 'PublicBulkGetContentByIDV2' test.out

#- 137 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["aawofulq", "7yqfWJCf", "TfjrVKSx"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicGetContentBulkByShareCodesV2' test.out

#- 138 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode '1ADRZamA' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentByShareCodeV2' test.out

#- 139 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'Jtni0qLO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByIDV2' test.out

#- 140 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'rQgJV5yQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicAddDownloadCountV2' test.out

#- 141 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'fsq9l3ZZ' \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '53' \
    --sortBy 'mJDmNjnu' \
    --userId 'gkHmUpmc' \
    > test.out 2>&1
eval_tap $? 141 'PublicListContentDownloaderV2' test.out

#- 142 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'GSzelPqY' \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '77' \
    --sortBy 'VnknBe1T' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentLikeV2' test.out

#- 143 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId 'gmS2Vf2E' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateContentLikeStatusV2' test.out

#- 144 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'cKOsiRBK' \
    --namespace $AB_NAMESPACE \
    --userId 'm3LBRPsq' \
    --body '{"contentType": "38BKDT0v", "customAttributes": {"JWD2gtp2": {}, "RuKrjjXz": {}, "f55ICOiG": {}}, "fileExtension": "RxPHiR7t", "name": "5cNklJfK", "subType": "qNKN7RX9", "tags": ["dMwWecgP", "OXcMl4JP", "ieEU3aaZ"], "type": "3xeidav7"}' \
    > test.out 2>&1
eval_tap $? 144 'PublicCreateContentV2' test.out

#- 145 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'v4MzHT05' \
    --namespace $AB_NAMESPACE \
    --shareCode 'gTOFiK6t' \
    --userId 'GzeZj2K0' \
    --body '{"customAttributes": {"m1k0Ealc": {}, "cwO0Tfal": {}, "ojU6YbYn": {}}, "name": "wushqHCH", "subType": "hxhYMjpr", "tags": ["zjw2wmbt", "SKnKdHTq", "zmhiMGMu"], "type": "YcE66eRf"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicUpdateContentByShareCodeV2' test.out

#- 146 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'rBJm80N8' \
    --namespace $AB_NAMESPACE \
    --shareCode 'uvOrjQZQ' \
    --userId 'M1TUzKu7' \
    > test.out 2>&1
eval_tap $? 146 'PublicDeleteContentByShareCodeV2' test.out

#- 147 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId '5iiOU6UF' \
    --contentId 'WFCB84KB' \
    --namespace $AB_NAMESPACE \
    --userId '8UxFkvNO' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentV2' test.out

#- 148 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'AeK5Q8cE' \
    --contentId 'SfRGSir1' \
    --namespace $AB_NAMESPACE \
    --userId 'IGyY5Mgg' \
    --body '{"customAttributes": {"xdpSKYz1": {}, "ldpxnhXa": {}, "QvGuShXv": {}}, "name": "hF4qWih5", "subType": "OUoJ1Cg7", "tags": ["0Y44iqoo", "VACWdnFM", "RAKwBW5f"], "type": "RtQkCqta"}' \
    > test.out 2>&1
eval_tap $? 148 'PublicUpdateContentV2' test.out

#- 149 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'nJv3eOBj' \
    --contentId 'Y6rlbW8N' \
    --namespace $AB_NAMESPACE \
    --userId 'del9occ6' \
    --body '{"fileExtension": "BOwQRQ3Q", "fileLocation": "bkwflQKR"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentFileLocation' test.out

#- 150 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'S6EF6n0c' \
    --contentId 'rB1KQ98T' \
    --namespace $AB_NAMESPACE \
    --userId 'rAZ1S7X3' \
    --body '{"shareCode": "paWLBsbU"}' \
    > test.out 2>&1
eval_tap $? 150 'UpdateContentShareCodeV2' test.out

#- 151 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'TTDc88GA' \
    --contentId 'D4ubiJdq' \
    --namespace $AB_NAMESPACE \
    --userId 'a2cd2ra4' \
    --body '{"contentType": "OsOaIyeC", "fileExtension": "28A3eAJc"}' \
    > test.out 2>&1
eval_tap $? 151 'PublicGenerateContentUploadURLV2' test.out

#- 152 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'll5SEcPn' \
    --limit '21' \
    --offset '38' \
    --sortBy 'LjVJ5Nk2' \
    > test.out 2>&1
eval_tap $? 152 'PublicGetContentByUserIDV2' test.out

#- 153 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'GJqwF0zM' \
    --namespace $AB_NAMESPACE \
    --userId 'vtYdcQXS' \
    --body '{"screenshots": [{"description": "aCgEGeDB", "screenshotId": "ZmLZwugx"}, {"description": "7RACsCcm", "screenshotId": "3zU4rELj"}, {"description": "PbYpkF5E", "screenshotId": "nHgWLwLj"}]}' \
    > test.out 2>&1
eval_tap $? 153 'UpdateScreenshotsV2' test.out

#- 154 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId '7OG8rUK5' \
    --namespace $AB_NAMESPACE \
    --userId 'VPc5Cbym' \
    --body '{"screenshots": [{"contentType": "kIdW5Dyr", "description": "Gss7w3Hr", "fileExtension": "jpeg"}, {"contentType": "c2ZZKA1f", "description": "nOiZtGjf", "fileExtension": "png"}, {"contentType": "lNjF05LW", "description": "1oDFUtqI", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UploadContentScreenshotV2' test.out

#- 155 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'AaJBsfDO' \
    --namespace $AB_NAMESPACE \
    --screenshotId '1DvvJJfr' \
    --userId 'SK97VmGJ' \
    > test.out 2>&1
eval_tap $? 155 'DeleteContentScreenshotV2' test.out

#- 156 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'npMHAtnw' \
    --namespace $AB_NAMESPACE \
    --userId 'ByBwMBRJ' \
    --limit '73' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 156 'PublicGetGroupContentsV2' test.out

#- 157 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'FQxhTkLf' \
    --limit '21' \
    --offset '63' \
    --sortBy 'YVApInyf' \
    --status 'HzVF7v7G' \
    > test.out 2>&1
eval_tap $? 157 'ListUserStagingContents' test.out

#- 158 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId '7RFSAKpm' \
    --namespace $AB_NAMESPACE \
    --userId 'tAUbGlyd' \
    > test.out 2>&1
eval_tap $? 158 'GetUserStagingContentByID' test.out

#- 159 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId 'nKsjuG5s' \
    --namespace $AB_NAMESPACE \
    --userId 'HUCQLHMW' \
    --body '{"fileExtension": "94apXX5J", "fileLocation": "VTx0cl1o"}' \
    > test.out 2>&1
eval_tap $? 159 'UpdateStagingContent' test.out

#- 160 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId 'i46thknI' \
    --namespace $AB_NAMESPACE \
    --userId 'qHBvMsrb' \
    > test.out 2>&1
eval_tap $? 160 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE