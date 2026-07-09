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
    --limit '90' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "EHHgY5qv", "name": "VDc94MMI"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'rcbH2kiM' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "myFHsRNT"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'tDt7DBUq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'imZwCyr7' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "lB4wXOgb", "customAttributes": {"UqB5Bzol": {}, "oGc0Pi3u": {}, "PtATwcAt": {}}, "fileExtension": "JFNY4EHe", "name": "J1A3p0bX", "preview": "7oeqE2LT", "previewMetadata": {"previewContentType": "t06q34EY", "previewFileExtension": "MaWeWcDg"}, "shareCode": "cQsAXVJY", "subType": "4aEiEWiA", "tags": ["6QSyJdKY", "IkY8jQXv", "S0Z8A9jT"], "type": "wEEuQCGy"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'Ih3tRx7U' \
    --contentId 'wbPI7Peo' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "bcI6XnKB", "customAttributes": {"6Foc4GSL": {}, "H2a3ibZg": {}, "dCfLdb8F": {}}, "fileExtension": "ITui2HF0", "name": "U6gck2sH", "payload": "hMOy9Wrr", "preview": "U2W0Knu3", "previewMetadata": {"previewContentType": "HliSXUMe", "previewFileExtension": "dqW9AHNX"}, "shareCode": "vatWfU6T", "subType": "BgTfhSvD", "tags": ["GCd9i384", "ZUcZoZfo", "2PfoWH9r"], "type": "0LWOi9AI", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'D4anBK2Z' \
    --namespace $AB_NAMESPACE \
    --creator 'Dj6jR10N' \
    --ishidden 'XssE6Efe' \
    --isofficial 'TWnsVKpZ' \
    --limit '81' \
    --name 'k2wVuraC' \
    --offset '42' \
    --orderby 'hVfyKXE4' \
    --sortby 'ggHrHSji' \
    --subtype 'URGshRA3' \
    --tags '["AV3GCVyo", "zb8y2bPW", "oDVtVP5l"]' \
    --type '8tdAnelh' \
    --userId 'wOCApuhl' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'I5Y62Y8b' \
    --contentId 'Ce6MA4oF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["qyIBNz3B", "uYSsf6DB", "u409Rgwx"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'YqrhIDXa' \
    --ishidden 'jg1Tc6BQ' \
    --isofficial '7BbkRWP7' \
    --limit '80' \
    --name 'PcDls7ty' \
    --offset '42' \
    --orderby 'qDjoDz4j' \
    --sortby 'VO1loDQW' \
    --subtype 'S8j726rn' \
    --tags '["bQS169dI", "38rXKER4", "Yzyrcq2y"]' \
    --type 'SANoKICJ' \
    --userId 'q6dUfKVp' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["hRDjHDEQ", "1M6P7Qjz", "xrLhFYLG"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'BZZURg1b' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'ojtSxd26' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'Mw36isgC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'I1phzQ59' \
    --namespace $AB_NAMESPACE \
    --versionId 'IDI5Nb6B' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'wZA3Xcux' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "iCWgpuqf", "screenshotId": "bvmgmnpq"}, {"description": "ZD5fY1ID", "screenshotId": "b5S34BkU"}, {"description": "iZq3h69o", "screenshotId": "jXsm4ygm"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'IijmDFDP' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "b1Bjylzs", "description": "1cN0F1Z0", "fileExtension": "bmp"}, {"contentType": "w0z9KHIM", "description": "2IBskQ8O", "fileExtension": "bmp"}, {"contentType": "dBkd5UDm", "description": "3LA4Gmet", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'yrBFNIAe' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'LMk09ATF' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId '779KYjpw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["iJBOjYad", "yDET0yI6", "xlx5qdiV"], "name": "IfIAya08"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'DuZfJYhI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'kAiAFwOf' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["1YQpqSfs", "qgCAai0j", "x8Nz4mD9"], "name": "H0AijTCl"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'YF6NPYhP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'U7HmdDKl' \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "Jetp3ebv"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'J6a9xqfT' \
    --body '{"tag": "tVpDhoyn"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'mq4Y445R' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["tFpVYtrX", "yADmQ4eO", "jYunyuqa"], "type": "z5x0YZCr"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'brr9Oo54' \
    --body '{"subtype": ["Qa4Mj85C", "0b38QQ04", "2XWCniM4"], "type": "nh4xYRwS"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'xqbZtgpk' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'DvZ612be' \
    --limit '94' \
    --name 'LkaVwdXi' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'vdp5LPlI' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'lKfaeBuX' \
    --namespace $AB_NAMESPACE \
    --userId 'S1mM9aje' \
    --body '{"name": "vAR3yAIJ"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'g5wFBERw' \
    --namespace $AB_NAMESPACE \
    --userId 'XDjgf5zY' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'cFlyzwM2' \
    --namespace $AB_NAMESPACE \
    --shareCode 'tce88QDn' \
    --userId 'RxmGEj63' \
    --body '{"contentType": "YU9OK5ll", "customAttributes": {"t6fz2Zpn": {}, "0hFKMJyS": {}, "OrszlxTx": {}}, "fileExtension": "Q8U34BjG", "name": "udK034Ou", "payload": "2XsUVuM6", "preview": "TKQpx8Xi", "previewMetadata": {"previewContentType": "oXdfXQqT", "previewFileExtension": "pcozRLXm"}, "shareCode": "fw7rAsrd", "subType": "toPmMb3u", "tags": ["9PlC0Xyh", "48aysTK5", "sAQGIa2E"], "type": "h6tSKKn4", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId '7slWLQye' \
    --contentId 'UD4dF3Z9' \
    --namespace $AB_NAMESPACE \
    --userId 'zXj9bPAz' \
    --body '{"contentType": "tfa1dXfk", "customAttributes": {"TEyfdzhQ": {}, "IK4CqKVA": {}, "i5smnNy3": {}}, "fileExtension": "ve4HR1u8", "name": "MTri4pRQ", "payload": "W2KG7M5a", "preview": "w0zFz2eF", "previewMetadata": {"previewContentType": "uAbl1Ymn", "previewFileExtension": "vteMHGVB"}, "shareCode": "yLQTaAcQ", "subType": "x0lwiRUu", "tags": ["lXNMdcT7", "4MW5SoFx", "aPp8O4CH"], "type": "0veSSxPz", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId '340JgQAO' \
    --namespace $AB_NAMESPACE \
    --shareCode 'PlxnExvw' \
    --userId '6QMiTg3a' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'RmtydAjN' \
    --contentId 'jzI7kd8m' \
    --namespace $AB_NAMESPACE \
    --userId 'N6D5UKYm' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'nCsqJoQk' \
    --limit '44' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'PFeZEgKH' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'mluOY3Fo' \
    --namespace $AB_NAMESPACE \
    --userId 'wsTwzliX' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'JSLQfJ8L' \
    --limit '82' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'bsaFW7gr' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'y2VfbLML' \
    --namespace $AB_NAMESPACE \
    --userId 'Vo6rmW8T' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'k56wnn78' \
    --namespace $AB_NAMESPACE \
    --userId '45Muarzp' \
    --body '{"contents": ["F8f1ZCfn", "4tclhaWz", "0HSe3Owj"], "name": "MR9OQyTZ"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'ShrfDzmJ' \
    --namespace $AB_NAMESPACE \
    --userId 'GISuwZ9X' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'vOqGjWXi' \
    --namespace $AB_NAMESPACE \
    --userId '5keMC8ln' \
    --limit '21' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'd90uVZvw' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'CxpRST3i' \
    --namespace $AB_NAMESPACE \
    --creator '2S24n6fe' \
    --ishidden 'hrbhhyCU' \
    --isofficial 'U9MoVYIh' \
    --limit '95' \
    --name 'Hsk4zcxB' \
    --offset '81' \
    --orderby 'v6fYpo3u' \
    --sortby '7KnQULFU' \
    --subtype 'NSI2UDwv' \
    --tags '["JZCWyEyO", "8nwLprDU", "h58nR8V0"]' \
    --type 'gOIJcgPg' \
    --userId '4VNY6FUz' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'DEQBz3Lm' \
    --ishidden 'xqOWm23f' \
    --isofficial 'EHIhANOs' \
    --limit '10' \
    --name 'OtJjB7sG' \
    --offset '65' \
    --orderby 'Wccv8ThL' \
    --sortby '8vaGrVHJ' \
    --subtype '4JRVNHVy' \
    --tags '["w1qtHZHO", "9k461exK", "a3aXlJPl"]' \
    --type 'OamElvWQ' \
    --userId 'jky73EjU' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["RfAyDwDv", "65oY3h8a", "gqq3gHDb"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '32' \
    --name 'Z9xyHKsm' \
    --offset '32' \
    --orderby 'jmm95R59' \
    --sortby 'mM4DyaXb' \
    --subtype 'D3cCZjH0' \
    --tags '["ZqXpWJy4", "9uMO1V4Z", "cLclAq3B"]' \
    --type 'ObwQ5TGx' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["LARScSWO", "LeJCa2u7", "TTKXuEjt"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'cTdYQEzT' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'jdBsWQFS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'xT1CbCRa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId '5NA1ytu5' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId '8SE2W013' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '13' \
    --orderby 'qolvzARS' \
    --sortby 'CalXHsc3' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId '4GCYRs4Y' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'sZcZECmb' \
    --limit '70' \
    --name 'UA5fhO0Q' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'AGNnELUg' \
    --body '{"name": "6JgX3YLT"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'VZlML1K7' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'gBf1hhHk' \
    --namespace $AB_NAMESPACE \
    --userId 'lrDSWVnq' \
    --body '{"name": "dtWTbcAx"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'qaHzh8VF' \
    --namespace $AB_NAMESPACE \
    --userId 'ypdp5pi4' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'smIzgujJ' \
    --namespace $AB_NAMESPACE \
    --userId 'XM4qlKdT' \
    --body '{"contentType": "Esx9Hgze", "customAttributes": {"K7xU7qyv": {}, "0SNwhmIC": {}, "FMWdkcVk": {}}, "fileExtension": "Hxo2Exhg", "name": "UeIOrvyS", "preview": "ROl4Lraf", "previewMetadata": {"previewContentType": "RL8C7sPd", "previewFileExtension": "qrfUtSSM"}, "subType": "PuWzWyGi", "tags": ["MUKE4MEL", "6kYxpZk9", "wnQ9T7KA"], "type": "dHWGM1XK"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'jSd1weLG' \
    --namespace $AB_NAMESPACE \
    --shareCode 'upXLUVi5' \
    --userId 'kCpEnnMt' \
    --body '{"contentType": "XyPAvo90", "customAttributes": {"PX3AfW9b": {}, "DrgmdlWr": {}, "IE2wUJlS": {}}, "fileExtension": "zFXNQPLJ", "name": "i88DpEJ0", "payload": "lhHMrjmd", "preview": "8yYQQYqZ", "previewMetadata": {"previewContentType": "YRTOA47N", "previewFileExtension": "HBY9WdlV"}, "subType": "Zoz7Pm0N", "tags": ["uhHIXwzx", "PJIDYwQn", "Ih8k5Pt1"], "type": "poulRWUB", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 't4gS3wDG' \
    --contentId 'CMnskiqv' \
    --namespace $AB_NAMESPACE \
    --userId 'y9pd3Aav' \
    --body '{"contentType": "toezsFXG", "customAttributes": {"1kpzh2fy": {}, "duevAV0g": {}, "5XksDYhy": {}}, "fileExtension": "TeUQJbwF", "name": "tsIV97pG", "payload": "rMbx7ztS", "preview": "gJckGXTg", "previewMetadata": {"previewContentType": "3WIUo8t2", "previewFileExtension": "30e1qrSj"}, "subType": "A9e0o7oV", "tags": ["2TUm8kq5", "mEi4Q4sg", "Hv9WLCeW"], "type": "Cf3vKb21", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId 'kpxGfZXq' \
    --namespace $AB_NAMESPACE \
    --shareCode '8GTdo00e' \
    --userId 'eddNBDZ3' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'PnsbYNip' \
    --contentId '7RD6qMkB' \
    --namespace $AB_NAMESPACE \
    --userId 'IRFkpw8f' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'mdy0eo0g' \
    --contentId 'YI1i9O2D' \
    --namespace $AB_NAMESPACE \
    --userId 'pH8j2x7f' \
    --body '{"shareCode": "j7xKSyAS"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'paNabNJd' \
    --limit '24' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'RNkswM6k' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'vkm0sV5K' \
    --namespace $AB_NAMESPACE \
    --userId 'YJryCHX3' \
    --body '{"screenshots": [{"description": "1N1juhcu", "screenshotId": "hOKAk2mX"}, {"description": "bKBqwTva", "screenshotId": "M15P2K8P"}, {"description": "kAMCmUHV", "screenshotId": "zSghhDPE"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'Daq5G43O' \
    --namespace $AB_NAMESPACE \
    --userId 'y9URQSeF' \
    --body '{"screenshots": [{"contentType": "7DlSWzhs", "description": "uYLOcctX", "fileExtension": "png"}, {"contentType": "b6Hxp6is", "description": "RhlOiGnd", "fileExtension": "jpg"}, {"contentType": "eG65IFOp", "description": "F7RuFdwg", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'HrH1VQRs' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'vAb8muFw' \
    --userId '2YZJ7PTm' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'Sq9lVbVq' \
    --body '{"followStatus": false}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'Jvxufvm2' \
    --limit '38' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'AexwI6aH' \
    --limit '26' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'SYruabs6' \
    --limit '90' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'sc36MViJ' \
    --body '{"contents": ["8kVbzXyg", "hixCApVR", "9hsZiFb0"], "name": "UsDDmyRj"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'gqApHoAp' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'pIRHgyUx' \
    --namespace $AB_NAMESPACE \
    --userId 'jgcEO6Tr' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'eBroPTzP' \
    --namespace $AB_NAMESPACE \
    --userId '35HeK3s3' \
    --body '{"contents": ["kLE0D7lO", "5sL5NLD5", "1wEAkux8"], "name": "0l91eLuF"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'Q3RvahXF' \
    --namespace $AB_NAMESPACE \
    --userId 'Uub1yR8H' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'TEp727pf' \
    --namespace $AB_NAMESPACE \
    --userId '00NYRsKB' \
    --limit '75' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'mcRQNYDd' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'lq4bCgql' \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --name '09T03iMM' \
    --offset '77' \
    --sortBy 'fJss1gYG' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'qnjgzY4L' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "7L4B0mkI", "customAttributes": {"ag4eUpUL": {}, "qWSGDAYJ": {}, "qpviH6Cf": {}}, "fileExtension": "2SnIWQyn", "name": "0cOooqsR", "shareCode": "Wn4faxeL", "subType": "u6qBxJfT", "tags": ["zJUUlDSj", "05w12IOZ", "R0auemNP"], "type": "IY4tWnCy"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId '0WgPRumv' \
    --contentId '3X0LjrxJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'BazjoGk5' \
    --contentId 'rYB2robr' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"eveAnftl": {}, "iaISox85": {}, "wELq5fDZ": {}}, "name": "d1RxUwMZ", "shareCode": "foPlKKBt", "subType": "QAlY02of", "tags": ["BF46zNVU", "O87lbWuw", "i76FUic3"], "type": "AptaY4nb"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminCopyContent
samples/cli/sample-apps Ugc adminCopyContent \
    --channelId '93Z5RsVb' \
    --contentId 'p1CMfchc' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"B6LcVZu3": {}, "3SZCWYOw": {}, "kVDyFLHz": {}}, "name": "KbsgPVLb", "subType": "EbghibNk", "tags": ["fgcfxWBN", "yj2tTXN3", "kMXitqtv"], "targetChannelId": "2LeINp7g", "type": "OtyLhUdR"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminCopyContent' test.out

#- 107 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId '8H1TZika' \
    --contentId 'whbW8ct7' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "CdcQbw2F", "fileLocation": "T3vu3IXZ"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminUpdateOfficialContentFileLocation' test.out

#- 108 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId '3JH9VtiX' \
    --contentId 'tIy7hG2M' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "Wd4o4G2j", "fileExtension": "jQSLQjfE"}' \
    > test.out 2>&1
eval_tap $? 108 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 109 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 109 'AdminGetConfigs' test.out

#- 110 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key 'J4eCeMo7' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "UsMqr5fc"}' \
    > test.out 2>&1
eval_tap $? 110 'AdminUpdateConfig' test.out

#- 111 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '80' \
    --name 'JvK0byfm' \
    --offset '74' \
    --sortBy 'KgBqV3BN' \
    --subType 'e4azWesE' \
    --tags '["FMOsRWRw", "GnofJemE", "qVMeprXE"]' \
    --type 'LhtX6FGs' \
    > test.out 2>&1
eval_tap $? 111 'AdminListContentV2' test.out

#- 112 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["er5HJ3u0", "gRMtJBhI", "gZM06t4U"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminBulkGetContentByIDsV2' test.out

#- 113 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["n5XvOmxQ", "3SoOZ5j9", "ZKIKsS4S"]}' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentBulkByShareCodesV2' test.out

#- 114 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'aMg4EQeO' \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByShareCodeV2' test.out

#- 115 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId '46rakoBd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'AdminGetContentByContentIDV2' test.out

#- 116 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'zV1RSNKP' \
    --namespace $AB_NAMESPACE \
    --versionId 'AIDGJ21i' \
    > test.out 2>&1
eval_tap $? 116 'RollbackContentVersionV2' test.out

#- 117 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'ExLO3fz7' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "kTshV2fZ", "screenshotId": "wqsiFZLC"}, {"description": "DUTtu4IL", "screenshotId": "bJKbPNmP"}, {"description": "otVor194", "screenshotId": "BeGxSSLW"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateScreenshotsV2' test.out

#- 118 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 'cDQqi1mE' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "uwdIlcbY", "description": "g9eLgwGH", "fileExtension": "jfif"}, {"contentType": "kFSWf37e", "description": "bt06kDs5", "fileExtension": "jpeg"}, {"contentType": "yttsHsQr", "description": "0ajLrxXw", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 118 'AdminUploadContentScreenshotV2' test.out

#- 119 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId '8gBhRTfd' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'X6fjdYec' \
    > test.out 2>&1
eval_tap $? 119 'AdminDeleteContentScreenshotV2' test.out

#- 120 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'VxtWHH4A' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 120 'ListContentVersionsV2' test.out

#- 121 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'MgzipT1c' \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 121 'AdminGetOfficialGroupContentsV2' test.out

#- 122 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '26' \
    --sortBy 'WYkUmSAh' \
    --status 'M00P7rG6' \
    > test.out 2>&1
eval_tap $? 122 'AdminListStagingContents' test.out

#- 123 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId 'iUPQeswI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminGetStagingContentByID' test.out

#- 124 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId 'uvaJqFsf' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": false, "note": "CjESjhXd"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminApproveStagingContent' test.out

#- 125 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'KajusU07' \
    --namespace $AB_NAMESPACE \
    --shareCode '8pY8poax' \
    --userId 'Lb3A6cWk' \
    --body '{"customAttributes": {"50LVhcFU": {}, "JDP93kmv": {}, "f9CFcZKf": {}}, "name": "wsKchxuL", "shareCode": "y36Tvti3", "subType": "tDzUPvcD", "tags": ["TafQl6YJ", "BRxkdwb9", "gAMDBXGN"], "type": "5HLVB9xp"}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateContentByShareCodeV2' test.out

#- 126 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'YhEF0BBu' \
    --namespace $AB_NAMESPACE \
    --shareCode 'cMrERe9p' \
    --userId 'KIoq70GR' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteContentByShareCodeV2' test.out

#- 127 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'PbpySFwo' \
    --contentId 'aSER7eQj' \
    --namespace $AB_NAMESPACE \
    --userId 'UwEyH1x3' \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteUserContentV2' test.out

#- 128 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'Yr6nvOWl' \
    --contentId 'GMM5tJFg' \
    --namespace $AB_NAMESPACE \
    --userId '4ijTNJUM' \
    --body '{"customAttributes": {"oFTtGxoN": {}, "SdwcHBQK": {}, "wcaavAUY": {}}, "name": "WGHaxCg4", "shareCode": "wgAhYshs", "subType": "vw7G0AgZ", "tags": ["0jD7lCKh", "mbgqZUQT", "RYAo0jey"], "type": "jvKiAxSE"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentV2' test.out

#- 129 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'TGBs5hUg' \
    --contentId 'nsgROhwH' \
    --namespace $AB_NAMESPACE \
    --userId 'g5E1h7xA' \
    --body '{"fileExtension": "PpXrIf51", "fileLocation": "jExe3bpu"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateUserContentFileLocation' test.out

#- 130 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'CbMeIdok' \
    --contentId '5UQhJquu' \
    --namespace $AB_NAMESPACE \
    --userId 'ziAPkE6C' \
    --body '{"contentType": "xmAWNt5f", "fileExtension": "wst8POWU"}' \
    > test.out 2>&1
eval_tap $? 130 'AdminGenerateUserContentUploadURLV2' test.out

#- 131 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'ZqYWJySU' \
    --limit '18' \
    --offset '81' \
    --sortBy 'nX2z4OhK' \
    > test.out 2>&1
eval_tap $? 131 'AdminGetContentByUserIDV2' test.out

#- 132 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'U4Po0zOH' \
    --namespace $AB_NAMESPACE \
    --userId 'TgUD9aPv' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 132 'AdminUpdateContentHideStatusV2' test.out

#- 133 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'fTtztDl7' \
    --namespace $AB_NAMESPACE \
    --userId 'BcFSmmhm' \
    --limit '59' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 133 'AdminGetUserGroupContentsV2' test.out

#- 134 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'DA8AMH65' \
    --limit '96' \
    --offset '23' \
    --sortBy 'r9tThFY3' \
    --status 'uZMRf4kZ' \
    > test.out 2>&1
eval_tap $? 134 'AdminListUserStagingContents' test.out

#- 135 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId '6A610tIz' \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --name 'hAHFgcVK' \
    --offset '42' \
    --sortBy '88w4EKnL' \
    > test.out 2>&1
eval_tap $? 135 'PublicGetContentByChannelIDV2' test.out

#- 136 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '73' \
    --name 'rmdO9qr6' \
    --offset '60' \
    --sortBy 'iH3wYQlc' \
    --subType 'wLFfkcDM' \
    --tags '["0h0AJyZN", "br8crBmL", "dvbbd9ZP"]' \
    --type '0RQQHbiI' \
    > test.out 2>&1
eval_tap $? 136 'PublicListContentV2' test.out

#- 137 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["T9qC2K8D", "ZS0ujJ7M", "ISOfCCEg"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicBulkGetContentByIDV2' test.out

#- 138 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["aEIyWiym", "b6H1dl7p", "Oy5LRf9m"]}' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentBulkByShareCodesV2' test.out

#- 139 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'TL5plhM3' \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByShareCodeV2' test.out

#- 140 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId '9rzZTU5U' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicGetContentByIDV2' test.out

#- 141 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'KwBtg5or' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 141 'PublicAddDownloadCountV2' test.out

#- 142 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'mC9DfmXo' \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '78' \
    --sortBy '6Gu8XpIQ' \
    --userId 'SgCL7FV7' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentDownloaderV2' test.out

#- 143 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'KeRZNS50' \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '59' \
    --sortBy '89OKjRUS' \
    > test.out 2>&1
eval_tap $? 143 'PublicListContentLikeV2' test.out

#- 144 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId '4zHcIKTM' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateContentLikeStatusV2' test.out

#- 145 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'q3c73qIg' \
    --namespace $AB_NAMESPACE \
    --userId 'WLA3mt32' \
    --body '{"contentType": "5RI75mTS", "customAttributes": {"LI1pIvsT": {}, "DxuSzUvu": {}, "3NSZzoPC": {}}, "fileExtension": "9mOVQRWa", "name": "Sc2IqjSy", "subType": "p3i9Nm0l", "tags": ["Y41oN3xv", "Xh3MAaRL", "0gDAM0FU"], "type": "PNKE3Yxx"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicCreateContentV2' test.out

#- 146 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'pjnBfgKN' \
    --namespace $AB_NAMESPACE \
    --shareCode 'LwR0O0NI' \
    --userId 'yrgW8S8f' \
    --body '{"customAttributes": {"isyzLAPH": {}, "Qn0GqtiY": {}, "8TadSaqE": {}}, "name": "iKogmusJ", "subType": "w3zD5ofV", "tags": ["UZY6G1zg", "aqQkN1vk", "lhHwNgbY"], "type": "kbunocft"}' \
    > test.out 2>&1
eval_tap $? 146 'PublicUpdateContentByShareCodeV2' test.out

#- 147 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'DKP8tsbL' \
    --namespace $AB_NAMESPACE \
    --shareCode 'jOejZY2o' \
    --userId 't7HcpSEX' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentByShareCodeV2' test.out

#- 148 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'XgWaHqeU' \
    --contentId 'Xt56JeVS' \
    --namespace $AB_NAMESPACE \
    --userId 'v4JX8rx3' \
    > test.out 2>&1
eval_tap $? 148 'PublicDeleteContentV2' test.out

#- 149 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'yIl3K9UE' \
    --contentId 'Xwf1tBzI' \
    --namespace $AB_NAMESPACE \
    --userId 'cNDdr6wh' \
    --body '{"customAttributes": {"0Qr10vsc": {}, "ujE93l4U": {}, "YsyFKNEg": {}}, "name": "Oun0N2dn", "subType": "dEupoQbF", "tags": ["Ah1MUIoB", "Ikn0cgH9", "kpmD0LP6"], "type": "4bMPFEX4"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentV2' test.out

#- 150 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'ECMu5cvF' \
    --contentId 'XZvK7i06' \
    --namespace $AB_NAMESPACE \
    --userId 'FWN3rx7h' \
    --body '{"fileExtension": "hBoiXxu3", "fileLocation": "9jUuTmcI"}' \
    > test.out 2>&1
eval_tap $? 150 'PublicUpdateContentFileLocation' test.out

#- 151 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'V9aLM2lY' \
    --contentId 'HdcdAg0l' \
    --namespace $AB_NAMESPACE \
    --userId 'HOsOqY1c' \
    --body '{"shareCode": "07HvRAIX"}' \
    > test.out 2>&1
eval_tap $? 151 'UpdateContentShareCodeV2' test.out

#- 152 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'Oww6ld6L' \
    --contentId 'e2EEnEB9' \
    --namespace $AB_NAMESPACE \
    --userId 'lUdfLR5n' \
    --body '{"contentType": "NboCbGXt", "fileExtension": "MiIn4NwN"}' \
    > test.out 2>&1
eval_tap $? 152 'PublicGenerateContentUploadURLV2' test.out

#- 153 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'E2LvXLDH' \
    --limit '94' \
    --offset '55' \
    --sortBy 'gsIF3Auq' \
    > test.out 2>&1
eval_tap $? 153 'PublicGetContentByUserIDV2' test.out

#- 154 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'bpHr0op5' \
    --namespace $AB_NAMESPACE \
    --userId 'sCZS2Imx' \
    --body '{"screenshots": [{"description": "tCT7KlAr", "screenshotId": "38v0JJ9u"}, {"description": "tLkWptJq", "screenshotId": "XtlblYBm"}, {"description": "fK8HQpp5", "screenshotId": "L8qxzFIO"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UpdateScreenshotsV2' test.out

#- 155 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'TEpumwJa' \
    --namespace $AB_NAMESPACE \
    --userId 'op1UCys5' \
    --body '{"screenshots": [{"contentType": "N7KviIgL", "description": "QTDNlegN", "fileExtension": "jfif"}, {"contentType": "fwsjtrGs", "description": "ah08xGeI", "fileExtension": "jfif"}, {"contentType": "NVHvtgE0", "description": "l2G1nBKW", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 155 'UploadContentScreenshotV2' test.out

#- 156 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 't7nJ6WIb' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'NnNvByUV' \
    --userId '0Vr0P0TJ' \
    > test.out 2>&1
eval_tap $? 156 'DeleteContentScreenshotV2' test.out

#- 157 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'YyQwaz6W' \
    --namespace $AB_NAMESPACE \
    --userId 'UPut29Fj' \
    --limit '27' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 157 'PublicGetGroupContentsV2' test.out

#- 158 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'IXcKLZfW' \
    --limit '95' \
    --offset '64' \
    --sortBy 'pKI3hZM9' \
    --status 'sh5FvO1m' \
    > test.out 2>&1
eval_tap $? 158 'ListUserStagingContents' test.out

#- 159 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId 'cMVE3IhV' \
    --namespace $AB_NAMESPACE \
    --userId 'D2P8daHk' \
    > test.out 2>&1
eval_tap $? 159 'GetUserStagingContentByID' test.out

#- 160 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId 'hjdPYP1M' \
    --namespace $AB_NAMESPACE \
    --userId 'SDbLyIOg' \
    --body '{"fileExtension": "7pnXKlv3", "fileLocation": "pzULhdFS"}' \
    > test.out 2>&1
eval_tap $? 160 'UpdateStagingContent' test.out

#- 161 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId 'NBu0wIYa' \
    --namespace $AB_NAMESPACE \
    --userId 'W66mUTtt' \
    > test.out 2>&1
eval_tap $? 161 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE