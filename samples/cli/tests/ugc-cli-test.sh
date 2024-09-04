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
    --limit '24' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "HvDrd0oP", "name": "110gyuTS"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'bbddCivC' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "CH6PNQRD"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'X9ud0qYe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'u3hgP5Xf' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "jZrzJWn0", "customAttributes": {"m4UKDBsX": {}, "5UhOza97": {}, "pZk4WiJ8": {}}, "fileExtension": "xOolOydZ", "name": "GtwEijNU", "preview": "hSLF0edW", "previewMetadata": {"previewContentType": "HJFS8YkO", "previewFileExtension": "SN1Tfdi5"}, "shareCode": "ie50IRkU", "subType": "h3NA1T38", "tags": ["9DnPkv5v", "XBAof8k6", "kBeHArme"], "type": "3bNR808R"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'LDSwDhNr' \
    --contentId 'FGTl7Ctp' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "q58eK2PQ", "customAttributes": {"N6p2xTh0": {}, "x7cWsgf7": {}, "tSdRh6MZ": {}}, "fileExtension": "TE1yVGWp", "name": "BgiBNMVR", "payload": "qxNh3kvh", "preview": "Sh64UocO", "previewMetadata": {"previewContentType": "Qtg7HM4M", "previewFileExtension": "IavKnWVn"}, "shareCode": "4MvHJLMj", "subType": "FWb7beVn", "tags": ["ePe8eo4u", "ZOqITNek", "2CfVDiFF"], "type": "x8DviELp", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId '7srF2uXF' \
    --namespace $AB_NAMESPACE \
    --creator 'p4GFgGPr' \
    --ishidden '9FVditXu' \
    --isofficial 'lTdaJMGM' \
    --limit '17' \
    --name 'E7wQ3d11' \
    --offset '44' \
    --orderby '3pZLSSut' \
    --sortby 'hse9ywP2' \
    --subtype 'Cm5N8wsV' \
    --tags '["9LMeZl59", "wPF4kD70", "bQgWobCC"]' \
    --type '8xqBraLc' \
    --userId 'kVB09NoO' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'QkUmQ0ZS' \
    --contentId 'sPrtmeR1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["HgU22HEx", "O0mfFRLy", "iuiUQrBo"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'n1vKudf6' \
    --ishidden 'HhYchUgq' \
    --isofficial 'QYJeqHyP' \
    --limit '14' \
    --name 'ik8ZqpBU' \
    --offset '10' \
    --orderby 'y3VW0cAA' \
    --sortby 'VtUiVdLF' \
    --subtype 'cX5Ycnfz' \
    --tags '["Vz2hqnTU", "vu4O91Z9", "YulttpDi"]' \
    --type '46822sId' \
    --userId 'ga2o7yZh' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["24yK6s99", "XF7SKE6r", "QFJByW0n"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'kgTsmUau' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'g1UA7K2t' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'UPYtdxge' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'rRDOCMZy' \
    --namespace $AB_NAMESPACE \
    --versionId 'wQaYilDO' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'e7z32Ziv' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "STCTIrWr", "screenshotId": "2u9Ay5pa"}, {"description": "m51ekHEl", "screenshotId": "lnK2xD68"}, {"description": "dCij2Ud2", "screenshotId": "EWZlMGpa"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'ePxaR57v' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "JELNTYAl", "description": "h6RGqdQD", "fileExtension": "jfif"}, {"contentType": "FBGpIps0", "description": "zOh4TRl5", "fileExtension": "bmp"}, {"contentType": "NS5by1BM", "description": "Dw5ZE6Of", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'NaKVAfrq' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'JwPiXtai' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId '0TzG0ZSr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["KYG43PN0", "qbq2Zv9V", "npSyMjIp"], "name": "0inSIx9w"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'NTnzJdVF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'gjQjDSwV' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["WBBpgXlJ", "lhb8gVuE", "sZMss9rH"], "name": "N7vHkzTG"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'nId4qgMG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId '9zI663WP' \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "CilM2qmA"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'O6pwFw6i' \
    --body '{"tag": "Okd1dvW5"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'nfHuV5Mq' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["mZ8DhOfG", "ZUz5Dg3b", "HzIoWyAq"], "type": "E77owSvY"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId '3tD3ToY3' \
    --body '{"subtype": ["TCqBupoP", "DMCNUP1b", "M9i7Lwef"], "type": "I1CXav3s"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId '7F0VKHZO' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'tE32pXZH' \
    --limit '77' \
    --name 'fCYy4yGm' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'UxfIRb3v' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId '96QRwp7C' \
    --namespace $AB_NAMESPACE \
    --userId 'DM7LR19l' \
    --body '{"name": "ivS6BFLe"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'z58ybl6t' \
    --namespace $AB_NAMESPACE \
    --userId 'gObY8O2Y' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'KN6n0K27' \
    --namespace $AB_NAMESPACE \
    --shareCode 'PjhnPzeB' \
    --userId 'IwTc9xwv' \
    --body '{"contentType": "UQDT4XR9", "customAttributes": {"SGxUEELB": {}, "GB9TOmVp": {}, "BE0msplj": {}}, "fileExtension": "Wo4sv0HR", "name": "mTfKekYo", "payload": "PUp73M8p", "preview": "vXnCKVoL", "previewMetadata": {"previewContentType": "cDRpcGLB", "previewFileExtension": "rdHIhc80"}, "shareCode": "yTiTnpBE", "subType": "O94yPbCG", "tags": ["Nb8Yf9tN", "MhYsYCbz", "FozsspHU"], "type": "n3wujnLE", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'wJaxO9oT' \
    --contentId 'RByMMVbB' \
    --namespace $AB_NAMESPACE \
    --userId '9Ke4RCu6' \
    --body '{"contentType": "pP0RExCB", "customAttributes": {"Lh0X01JS": {}, "4jXXNW5G": {}, "HjiBFfcl": {}}, "fileExtension": "p0yQi9Sl", "name": "JohGRA7Z", "payload": "m7XBbXv3", "preview": "G6FvUQdm", "previewMetadata": {"previewContentType": "MxYbaSJk", "previewFileExtension": "hInwhFU1"}, "shareCode": "S71cw586", "subType": "CuiBg2wD", "tags": ["fYH2B6II", "TQIKAhMH", "jrMrPB2T"], "type": "awgkg4sR", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'ZoA0Un6r' \
    --namespace $AB_NAMESPACE \
    --shareCode 'KllUz1dc' \
    --userId 'VRh40kSa' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId '1GpwnZ55' \
    --contentId 'MQy0PyYf' \
    --namespace $AB_NAMESPACE \
    --userId 'w7KJhVbf' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'fl2JXRJY' \
    --limit '50' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'EUQsVevA' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'zZ1J8QSZ' \
    --namespace $AB_NAMESPACE \
    --userId 'SrMXqjbz' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'YTi66aal' \
    --limit '47' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'ruTsssFu' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'WFofknmr' \
    --namespace $AB_NAMESPACE \
    --userId 'mNFVVedo' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'ATt2USRO' \
    --namespace $AB_NAMESPACE \
    --userId '929emHdG' \
    --body '{"contents": ["HLFSS70m", "dVHsisbw", "iKpv3mWq"], "name": "DHKQDxps"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId '6y1vsEZ7' \
    --namespace $AB_NAMESPACE \
    --userId 'MGa9g1Nh' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId '31NHlLNZ' \
    --namespace $AB_NAMESPACE \
    --userId 'rX7SGwjv' \
    --limit '94' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'J22YNNTs' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'ihALCA0q' \
    --namespace $AB_NAMESPACE \
    --creator 'ejYcfX4y' \
    --ishidden 'v8K9Rd4f' \
    --isofficial 'RhEBprY5' \
    --limit '53' \
    --name 'KyroHWPj' \
    --offset '31' \
    --orderby 'rAWkWAIz' \
    --sortby '06zgla1A' \
    --subtype '5B6RCejq' \
    --tags '["fEvagBNl", "9uHF4j4l", "wx0vynLt"]' \
    --type 'yLqjdi6t' \
    --userId 'NodSEfAb' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator '200a8qaw' \
    --ishidden 'dMVYxBpP' \
    --isofficial 'PPMFDy1k' \
    --limit '50' \
    --name 'yaJXrKp1' \
    --offset '97' \
    --orderby 'EpNQAF18' \
    --sortby 'bW9FTlzn' \
    --subtype 'DmahbN9I' \
    --tags '["hPfnVS9z", "lRKSJPyW", "j0xehmi7"]' \
    --type 'tz8K9FHI' \
    --userId 'zzfPOQJN' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["Fc7ZExz1", "vWuQKZFB", "jofirCIx"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '89' \
    --name 'Tv71266A' \
    --offset '22' \
    --orderby 'mzUsLow2' \
    --sortby 'NbazdGjE' \
    --subtype 'DCHj2NRg' \
    --tags '["FmzOXEIs", "0MXPQMlw", "ZA9A9sN9"]' \
    --type '9hbkXTwN' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["Red3e1lh", "A36iFukC", "UpR8hqsC"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'aIcPDpfI' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'gZ1t13GH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'qXCHxAPi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'eJ4ORtrQ' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId '7Mh95QuR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '78' \
    --orderby 'lOloukfH' \
    --sortby 'PcnkQWFi' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'YhjLByFV' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'PuLqTFRP' \
    --limit '27' \
    --name 'cp6lra8I' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId '4pzYm7ci' \
    --body '{"name": "85gw0ptK"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId '7rlwJdmW' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId '7YMZNaWz' \
    --namespace $AB_NAMESPACE \
    --userId 'Xg1DpiLJ' \
    --body '{"name": "HLRoeKaQ"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId '00n9uTwl' \
    --namespace $AB_NAMESPACE \
    --userId 'cC2eS9W3' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'CRsTbdIt' \
    --namespace $AB_NAMESPACE \
    --userId 'ZoeIbbIN' \
    --body '{"contentType": "lWZXnBxO", "customAttributes": {"HB7eTJmd": {}, "mPOk8QCc": {}, "0pWMTGDP": {}}, "fileExtension": "FdebgXEd", "name": "lPxNYSvR", "preview": "ZVs3RdXR", "previewMetadata": {"previewContentType": "vZSaEIiV", "previewFileExtension": "ssiUj4rP"}, "subType": "I8tcrOwE", "tags": ["2e6uXaDt", "IKOXMN1n", "zcWq20yl"], "type": "rEayUt7X"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'u5zu5giQ' \
    --namespace $AB_NAMESPACE \
    --shareCode 'peZqzs9j' \
    --userId 'D0njXJCd' \
    --body '{"contentType": "P6qV0EKZ", "customAttributes": {"KjJAW3sT": {}, "DhfpGPvH": {}, "G5SC0nVT": {}}, "fileExtension": "NPmvDsIk", "name": "eZ5CxQyv", "payload": "3Ycwytfb", "preview": "g6qVe0Dj", "previewMetadata": {"previewContentType": "ya15m4DX", "previewFileExtension": "S5l6pmbL"}, "subType": "8LtBXDyz", "tags": ["zUpRJxIu", "lsKpmhuh", "7rdEv85x"], "type": "qDFyAiuz", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'JvavHxf9' \
    --contentId 'N0uFJ2af' \
    --namespace $AB_NAMESPACE \
    --userId 'Gzj3pqGa' \
    --body '{"contentType": "0zBynJ7D", "customAttributes": {"dIMbOer8": {}, "W1M2xTxc": {}, "RCELnrcE": {}}, "fileExtension": "vsLmBtpJ", "name": "kygWzy9x", "payload": "ivcQOx4Z", "preview": "BLS0j1Ki", "previewMetadata": {"previewContentType": "B3PYhJI0", "previewFileExtension": "Cqq78znV"}, "subType": "zcX4IiVm", "tags": ["CQt9u39u", "c7MY2wff", "v9HG5R0D"], "type": "ze5s3Sd4", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId 'DVPx0yMa' \
    --namespace $AB_NAMESPACE \
    --shareCode '0UMruNJi' \
    --userId 'xWvlkEhH' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'M7adjRkE' \
    --contentId 'pFIuWnmH' \
    --namespace $AB_NAMESPACE \
    --userId 'LRnHrvwb' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'Z7GFJlNn' \
    --contentId 'Rsmdcdet' \
    --namespace $AB_NAMESPACE \
    --userId 'doZjgI3U' \
    --body '{"shareCode": "JmpSz2hI"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'APHqZmnm' \
    --limit '91' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'L2XMXqRU' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'ugJabTli' \
    --namespace $AB_NAMESPACE \
    --userId 'WVGX3EQu' \
    --body '{"screenshots": [{"description": "Mvgles1b", "screenshotId": "FmS1M2eG"}, {"description": "t8fciQw3", "screenshotId": "ib4Arie2"}, {"description": "3mxdaKKN", "screenshotId": "hLtx5qel"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'v82wqoIC' \
    --namespace $AB_NAMESPACE \
    --userId 'wNLcWtTA' \
    --body '{"screenshots": [{"contentType": "GX5nUVad", "description": "V3T9xEqF", "fileExtension": "jpg"}, {"contentType": "oQz8ERxx", "description": "2dweCuTI", "fileExtension": "jpeg"}, {"contentType": "P06j1MIZ", "description": "meQ0XNxb", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'UtauRVdu' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'lcSCptoE' \
    --userId 'U4lflR4S' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'e1UFyoTC' \
    --body '{"followStatus": false}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'OOBBTRZv' \
    --limit '5' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'CTjzjSvg' \
    --limit '22' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'jfd2v3Qz' \
    --limit '95' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'ILwWnXTK' \
    --body '{"contents": ["DT8pC2lS", "J9zwWkPd", "pN5tetPb"], "name": "n8crxcfc"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId '0D4tGqV6' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId '1dIQ4gwY' \
    --namespace $AB_NAMESPACE \
    --userId '34Sl0V2J' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'z57wt79L' \
    --namespace $AB_NAMESPACE \
    --userId '79BSxrj8' \
    --body '{"contents": ["SK92dkzS", "XrFqfSEf", "XoAMm1qM"], "name": "BBj3Hqv5"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'HjVCbiLT' \
    --namespace $AB_NAMESPACE \
    --userId 'kN4cuzz9' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'mNuDXztc' \
    --namespace $AB_NAMESPACE \
    --userId 'p9PDvRAV' \
    --limit '64' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'x50QMPqo' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'xzEEws17' \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --name 'rx0gWqN2' \
    --offset '49' \
    --sortBy 'TMdbq52V' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'N9gonzWw' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "KYrXMWXj", "customAttributes": {"VnW9l5Ym": {}, "xJwSI3FW": {}, "vN8sebJN": {}}, "fileExtension": "qVdqCzyA", "name": "CyMwdwx3", "shareCode": "5hHo84Lj", "subType": "zYCPFwFx", "tags": ["zV3Pn6en", "iqaZ0829", "YDar4Cqs"], "type": "Kyz2DnTk"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'WKS2foXr' \
    --contentId '9WTvLne7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'XLsM8N8u' \
    --contentId '8OuC8fr8' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"sCRQx3eU": {}, "vMKhOgkb": {}, "dJPJZ15M": {}}, "name": "62fUjW7i", "shareCode": "9JgYUJTC", "subType": "MBrqIWBS", "tags": ["dOq2DOvH", "z1TUDzg2", "aP4uNb6n"], "type": "Px7ni8KY"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminCopyContent
samples/cli/sample-apps Ugc adminCopyContent \
    --channelId 'Vg2eJijI' \
    --contentId 'WObVV6wg' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"y6iuSBTX": {}, "auQ4XHV5": {}, "Og8o9COJ": {}}, "name": "prMeM7ri", "subType": "2N8BDUQJ", "tags": ["FqYFTR9t", "1yogbiDp", "N3HeyfdS"], "targetChannelId": "Jj1g5Zbm", "type": "XYqXsXZb"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminCopyContent' test.out

#- 107 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId '0wlpNUld' \
    --contentId 'oEVzGEXC' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "J1eUWTxm", "fileLocation": "3z2ivkNZ"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminUpdateOfficialContentFileLocation' test.out

#- 108 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'AXHAYUM8' \
    --contentId 'Lp7ofvEU' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "pISu6e4J", "fileExtension": "7ZFsT3Me"}' \
    > test.out 2>&1
eval_tap $? 108 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 109 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 109 'AdminGetConfigs' test.out

#- 110 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key 'mIK9Hosz' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "f7ZviTP4"}' \
    > test.out 2>&1
eval_tap $? 110 'AdminUpdateConfig' test.out

#- 111 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '92' \
    --name 'BoURmViF' \
    --offset '39' \
    --sortBy 'twA0Zzrw' \
    --subType 'VNtHDcyH' \
    --tags '["8PIo5p2B", "UiQEx7Wq", "9Ht2aW7L"]' \
    --type '7cWPxFI5' \
    > test.out 2>&1
eval_tap $? 111 'AdminListContentV2' test.out

#- 112 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["ayJWtT8w", "bBldkflK", "cJT8tFd2"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminBulkGetContentByIDsV2' test.out

#- 113 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["y0Rjlin3", "qHPzVrf8", "4C8KggQI"]}' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentBulkByShareCodesV2' test.out

#- 114 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'cfib5m5S' \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByShareCodeV2' test.out

#- 115 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 't3NLW9Ke' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'AdminGetContentByContentIDV2' test.out

#- 116 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'X8E0Nmkw' \
    --namespace $AB_NAMESPACE \
    --versionId '1FLHcxUy' \
    > test.out 2>&1
eval_tap $? 116 'RollbackContentVersionV2' test.out

#- 117 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'AuanzQJq' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "QceyT6af", "screenshotId": "bCe7qFnw"}, {"description": "yvtEJ6A3", "screenshotId": "IBCEEo0p"}, {"description": "wVDRoAxg", "screenshotId": "w4pzQrQB"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateScreenshotsV2' test.out

#- 118 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId '8X6u1d2d' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "R3rWO1NR", "description": "3hOPUEml", "fileExtension": "pjp"}, {"contentType": "31fM6rJn", "description": "6xKaFcFl", "fileExtension": "pjp"}, {"contentType": "to9dGMBg", "description": "TfuQ7vkS", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 118 'AdminUploadContentScreenshotV2' test.out

#- 119 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'xMkvaKR7' \
    --namespace $AB_NAMESPACE \
    --screenshotId '9UDVMHBI' \
    > test.out 2>&1
eval_tap $? 119 'AdminDeleteContentScreenshotV2' test.out

#- 120 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'WrskaQt5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 120 'ListContentVersionsV2' test.out

#- 121 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'mhjzq750' \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 121 'AdminGetOfficialGroupContentsV2' test.out

#- 122 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '1' \
    --sortBy 'ulgafcEy' \
    --status 'YGYKXOUX' \
    > test.out 2>&1
eval_tap $? 122 'AdminListStagingContents' test.out

#- 123 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId 'n4Z4go0z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminGetStagingContentByID' test.out

#- 124 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId 'Jigx8tTN' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": true, "note": "QfnTuPPC"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminApproveStagingContent' test.out

#- 125 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'kBRkNW9x' \
    --namespace $AB_NAMESPACE \
    --shareCode '0u8CX9rm' \
    --userId 'UsXTo2ky' \
    --body '{"customAttributes": {"pVAxq1Bl": {}, "g0hMP180": {}, "5B1Cm4AQ": {}}, "name": "PnvVkQwC", "shareCode": "wrKg6ybf", "subType": "zJDG4WlN", "tags": ["znWPmVJO", "OkkuCyMw", "oZV6lkYs"], "type": "Z5wfszEY"}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateContentByShareCodeV2' test.out

#- 126 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'acOPKH5A' \
    --namespace $AB_NAMESPACE \
    --shareCode 'xntnpUuX' \
    --userId 'rmXANLxe' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteContentByShareCodeV2' test.out

#- 127 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'Y0K6DcSc' \
    --contentId 'BbWgxRDE' \
    --namespace $AB_NAMESPACE \
    --userId 'CtfAcrrj' \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteUserContentV2' test.out

#- 128 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'Id51bbt6' \
    --contentId 'MX1xiKvu' \
    --namespace $AB_NAMESPACE \
    --userId 'bODeTEZ4' \
    --body '{"customAttributes": {"DDCBqrIV": {}, "TP3JHDvm": {}, "Z1uQS6X1": {}}, "name": "JccZ9kjm", "shareCode": "wk8OB0Yr", "subType": "WfEhUV8N", "tags": ["YZ45AXHt", "pYcP1Srd", "q4hVDwjs"], "type": "jGe9FlQk"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentV2' test.out

#- 129 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'KosAiI3U' \
    --contentId 'C1wNNe8c' \
    --namespace $AB_NAMESPACE \
    --userId 'pJZSPlVh' \
    --body '{"fileExtension": "0irKVQbC", "fileLocation": "jVlADtGs"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateUserContentFileLocation' test.out

#- 130 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'VxWagkqd' \
    --contentId 'O5QAjSHv' \
    --namespace $AB_NAMESPACE \
    --userId 'tgbQbZv0' \
    --body '{"contentType": "QP9ph62y", "fileExtension": "nEjDWvGd"}' \
    > test.out 2>&1
eval_tap $? 130 'AdminGenerateUserContentUploadURLV2' test.out

#- 131 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'auB4mwub' \
    --limit '93' \
    --offset '53' \
    --sortBy 'X4Rb97Bm' \
    > test.out 2>&1
eval_tap $? 131 'AdminGetContentByUserIDV2' test.out

#- 132 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'jjshAjHk' \
    --namespace $AB_NAMESPACE \
    --userId 'KjeH5q6S' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 132 'AdminUpdateContentHideStatusV2' test.out

#- 133 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId '4IsjKiCm' \
    --namespace $AB_NAMESPACE \
    --userId 'lFANmT7U' \
    --limit '32' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 133 'AdminGetUserGroupContentsV2' test.out

#- 134 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'zV63QH2z' \
    --limit '94' \
    --offset '14' \
    --sortBy 'YxabNkUI' \
    --status '2u9C92RQ' \
    > test.out 2>&1
eval_tap $? 134 'AdminListUserStagingContents' test.out

#- 135 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'xbvYLFhf' \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --name 'hlN61Ld3' \
    --offset '28' \
    --sortBy 'T25JCygc' \
    > test.out 2>&1
eval_tap $? 135 'PublicGetContentByChannelIDV2' test.out

#- 136 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '8' \
    --name 'McwLSZX5' \
    --offset '99' \
    --sortBy 'SLS5MdXB' \
    --subType 'ttj8la2z' \
    --tags '["PfBEbFTQ", "wpyTmCTu", "yoxuEOde"]' \
    --type 'NF4qKalk' \
    > test.out 2>&1
eval_tap $? 136 'PublicListContentV2' test.out

#- 137 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["Nq46UzKH", "oz8gEq41", "5J3bAv5v"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicBulkGetContentByIDV2' test.out

#- 138 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["mXA160Vv", "y1QVko0R", "F82gq7cT"]}' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentBulkByShareCodesV2' test.out

#- 139 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'TrhlYyPU' \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByShareCodeV2' test.out

#- 140 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'CjRIKZwC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicGetContentByIDV2' test.out

#- 141 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'aiqbnkvv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 141 'PublicAddDownloadCountV2' test.out

#- 142 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId '5guwVBCg' \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '37' \
    --sortBy 'xLmT2bT8' \
    --userId '0ddNKFuA' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentDownloaderV2' test.out

#- 143 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'kZoOKwbS' \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '32' \
    --sortBy 'awPm1UpY' \
    > test.out 2>&1
eval_tap $? 143 'PublicListContentLikeV2' test.out

#- 144 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId '3I16tSbb' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateContentLikeStatusV2' test.out

#- 145 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'ZLYWjWl5' \
    --namespace $AB_NAMESPACE \
    --userId 'RW0cqdd8' \
    --body '{"contentType": "lKEEsU42", "customAttributes": {"CDpC9OrL": {}, "1hscBDkC": {}, "CLo2rFOA": {}}, "fileExtension": "DQGAlFBi", "name": "jQuLm724", "subType": "H1psjpjE", "tags": ["uTozJD7s", "8Y80EQPg", "t8LM1rkT"], "type": "RmWaKWd8"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicCreateContentV2' test.out

#- 146 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'B2kWrzSe' \
    --namespace $AB_NAMESPACE \
    --shareCode '59GWAMQI' \
    --userId 'UOnCviRZ' \
    --body '{"customAttributes": {"pbQFDW4K": {}, "f7bMF8ZQ": {}, "wH8wroFS": {}}, "name": "BqNblDnX", "subType": "hqnJbTPy", "tags": ["Eau2aHXO", "N7gRJZfW", "d2jWPP3u"], "type": "758JtEqJ"}' \
    > test.out 2>&1
eval_tap $? 146 'PublicUpdateContentByShareCodeV2' test.out

#- 147 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'Wh9KUjpO' \
    --namespace $AB_NAMESPACE \
    --shareCode 'CmoYE91M' \
    --userId 'poBL7AuT' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentByShareCodeV2' test.out

#- 148 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'xIB0zPfM' \
    --contentId 'WuuLzdTw' \
    --namespace $AB_NAMESPACE \
    --userId 'wZAk0sbl' \
    > test.out 2>&1
eval_tap $? 148 'PublicDeleteContentV2' test.out

#- 149 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'sqHSQZFH' \
    --contentId 'qtyGaCQ4' \
    --namespace $AB_NAMESPACE \
    --userId 'QUoHE1G8' \
    --body '{"customAttributes": {"IFzyABfm": {}, "vBG1Hrml": {}, "2L9UZj0Y": {}}, "name": "CebNMhie", "subType": "IL9lxM8W", "tags": ["MhF0nQoG", "pwhlwZGY", "F8zs99EA"], "type": "pHr5CsH7"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentV2' test.out

#- 150 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'HjmocTqP' \
    --contentId 'K3xMU4eA' \
    --namespace $AB_NAMESPACE \
    --userId 'eQKPiOZY' \
    --body '{"fileExtension": "2ByuIiGS", "fileLocation": "PZfARgWJ"}' \
    > test.out 2>&1
eval_tap $? 150 'PublicUpdateContentFileLocation' test.out

#- 151 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'Yqp9ZVwn' \
    --contentId 'B2qHatx9' \
    --namespace $AB_NAMESPACE \
    --userId 'qtG7kaAs' \
    --body '{"shareCode": "RzMfSAV4"}' \
    > test.out 2>&1
eval_tap $? 151 'UpdateContentShareCodeV2' test.out

#- 152 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'qwgAKXnk' \
    --contentId 'ciXNwsRk' \
    --namespace $AB_NAMESPACE \
    --userId 'WzB23dIN' \
    --body '{"contentType": "9bWYsq9T", "fileExtension": "EP6k320b"}' \
    > test.out 2>&1
eval_tap $? 152 'PublicGenerateContentUploadURLV2' test.out

#- 153 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'E2JTzALF' \
    --limit '28' \
    --offset '10' \
    --sortBy 'BGmLn5dU' \
    > test.out 2>&1
eval_tap $? 153 'PublicGetContentByUserIDV2' test.out

#- 154 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'E1aYMAxt' \
    --namespace $AB_NAMESPACE \
    --userId 'fsInEpDq' \
    --body '{"screenshots": [{"description": "udE3Olie", "screenshotId": "mx4LGapJ"}, {"description": "pLO2iTvf", "screenshotId": "lkHnKydS"}, {"description": "omM89bX5", "screenshotId": "3VEB9Ql1"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UpdateScreenshotsV2' test.out

#- 155 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'aCC2ZiHh' \
    --namespace $AB_NAMESPACE \
    --userId 'wrz3JzmV' \
    --body '{"screenshots": [{"contentType": "0tAFP7cB", "description": "weBymBEy", "fileExtension": "jpg"}, {"contentType": "TYBhxtUO", "description": "gHB0kmh4", "fileExtension": "jpeg"}, {"contentType": "P70rpnT5", "description": "Rr8nYjbb", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 155 'UploadContentScreenshotV2' test.out

#- 156 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'eP3Sdw9Z' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'XZKFOcy1' \
    --userId '1onrbBYb' \
    > test.out 2>&1
eval_tap $? 156 'DeleteContentScreenshotV2' test.out

#- 157 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'bCWDPVH8' \
    --namespace $AB_NAMESPACE \
    --userId '6C1GzJqR' \
    --limit '5' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 157 'PublicGetGroupContentsV2' test.out

#- 158 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId '4eWio2tU' \
    --limit '79' \
    --offset '58' \
    --sortBy 'dBrPCtOH' \
    --status 'F57Fudw5' \
    > test.out 2>&1
eval_tap $? 158 'ListUserStagingContents' test.out

#- 159 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId 'U0MpX7So' \
    --namespace $AB_NAMESPACE \
    --userId '1oTN8M60' \
    > test.out 2>&1
eval_tap $? 159 'GetUserStagingContentByID' test.out

#- 160 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId 'qvvp7S4W' \
    --namespace $AB_NAMESPACE \
    --userId '1g9G43K3' \
    --body '{"fileExtension": "lziIbb3u", "fileLocation": "04TUOtdX"}' \
    > test.out 2>&1
eval_tap $? 160 'UpdateStagingContent' test.out

#- 161 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId 'U4qRPG9o' \
    --namespace $AB_NAMESPACE \
    --userId 'rIwyG4pF' \
    > test.out 2>&1
eval_tap $? 161 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE