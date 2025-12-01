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
    --limit '36' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "QSL82Gsr", "name": "xjkXNprV"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'yF2TTLrp' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "OWm5vLvM"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'b8kdBikp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'rthArvnt' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "GfLt0lCk", "customAttributes": {"FkWrScOr": {}, "tF7hNcwU": {}, "ZnIA2zOK": {}}, "fileExtension": "CAFLFWwG", "name": "zITvR2Rk", "preview": "3DxBUl5h", "previewMetadata": {"previewContentType": "354kbD0i", "previewFileExtension": "VMRSeM0e"}, "shareCode": "frxF3t5W", "subType": "sxrFf100", "tags": ["NfHYBHY0", "TkNHGtdc", "UtLYQcTx"], "type": "Ay4LKOc8"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'hnuz3cRA' \
    --contentId 'ToZ0carv' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "VuOw01Sc", "customAttributes": {"h23s8nLG": {}, "PEwtKC9q": {}, "8lOqGEnw": {}}, "fileExtension": "PatyVLXn", "name": "XgISbcsI", "payload": "0ARjxtj8", "preview": "kTw3nMcO", "previewMetadata": {"previewContentType": "dlcFvZg0", "previewFileExtension": "5tE625IK"}, "shareCode": "QhahyaZ5", "subType": "Rd21yFtY", "tags": ["TBnZckiz", "SwC9ZES6", "GksgrkHe"], "type": "s4lALtGM", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'Czqyxdq7' \
    --namespace $AB_NAMESPACE \
    --creator 'rPdQo1Kh' \
    --ishidden 'lS72ElDr' \
    --isofficial '8MlajzcP' \
    --limit '17' \
    --name 'DfDfExOQ' \
    --offset '85' \
    --orderby 'VpbnVpFP' \
    --sortby 'bNaDhGa2' \
    --subtype 'AtDSjjGh' \
    --tags '["5jHStBrU", "pBufPWJp", "mrn8YU6a"]' \
    --type 'ATCCt1u8' \
    --userId 'B9vEnKTp' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId '8cfkdS06' \
    --contentId 'NdODHwEu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["FI8yHlX7", "tnEtQVaA", "RnDIqbeo"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'AhsNwEea' \
    --ishidden '5TIiqiHJ' \
    --isofficial 'GWrOkjfn' \
    --limit '33' \
    --name 'qBMjXwli' \
    --offset '39' \
    --orderby 'EKgtjJ02' \
    --sortby 'UfrWXOXm' \
    --subtype 'YPSuqlDc' \
    --tags '["xVKndHJ0", "4yExqmVz", "dBPnwJSr"]' \
    --type 'lClwLudm' \
    --userId 'cdsgAsoF' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["EGwD3HoL", "5a5vxJjP", "N8fSeeBd"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode '0rHqrIrs' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId '9Lue8zB1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'wodZHazc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'joglZvW2' \
    --namespace $AB_NAMESPACE \
    --versionId 'GMaSHchx' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'rLLtSvUO' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "JAnjNDIo", "screenshotId": "fIg92P2A"}, {"description": "5VvjscyG", "screenshotId": "5nnym8cB"}, {"description": "vFaKECeO", "screenshotId": "0iYrGFgx"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'QnNFXsxx' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "J363Yed4", "description": "LxN1II7c", "fileExtension": "bmp"}, {"contentType": "8YGPXBXF", "description": "zZEG1mBl", "fileExtension": "png"}, {"contentType": "oeJooTAs", "description": "0hJL1MaM", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'ixtG8btf' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'vHodqKcv' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId '7TnVplPk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["2kYZL7GS", "jJfGi59g", "VailjCgu"], "name": "EXumg6Qo"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'CJQIzHZB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'geOpOxxw' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["MaweNuB3", "Y1xCUV2p", "BFns77tM"], "name": "PKzPU2aj"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'yhwfA6f1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId '7DlbdSrN' \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "0eiHOu6g"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId '1qQDa1Ps' \
    --body '{"tag": "EuoNuqba"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId '77YYjIzG' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["GDr5KWto", "wZ4Csab3", "4bIm37eE"], "type": "C5DTYHGn"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId '2331IcUD' \
    --body '{"subtype": ["7uvWMrUI", "AAmkBhJA", "jsFwMFDU"], "type": "sNsuASle"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'sE4dfElR' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'VaKbCTOc' \
    --limit '52' \
    --name 'gUjSsvyb' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId '1vp5QUnN' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'VJySLoto' \
    --namespace $AB_NAMESPACE \
    --userId 'MznaEvfz' \
    --body '{"name": "lSaxCm5k"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId '3zY8wDdx' \
    --namespace $AB_NAMESPACE \
    --userId 'JDG5a2Kw' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId '0g3fnyjs' \
    --namespace $AB_NAMESPACE \
    --shareCode '4niozedh' \
    --userId 'BLjjf5zy' \
    --body '{"contentType": "qpxl7H0f", "customAttributes": {"qsi1Irgq": {}, "sXfV3ThG": {}, "oyWFG8l6": {}}, "fileExtension": "8Hp6i5R6", "name": "b1R7kVE5", "payload": "xBloyeIO", "preview": "O5GxzXtb", "previewMetadata": {"previewContentType": "wOyYmZtZ", "previewFileExtension": "Z4AHJEPc"}, "shareCode": "IO4wd31U", "subType": "23dZobk2", "tags": ["3Xb3uBzd", "gYBR4QRP", "h1op3jGx"], "type": "g5R6Ivkz", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'Phg0liw8' \
    --contentId '8avV0zmp' \
    --namespace $AB_NAMESPACE \
    --userId 'MsmX2oI9' \
    --body '{"contentType": "JfIq3T56", "customAttributes": {"dK8mBrkZ": {}, "mJbCf7hu": {}, "POx9Iq8D": {}}, "fileExtension": "2d3KXrAE", "name": "1UxyhQ8g", "payload": "3roBO44E", "preview": "xQN1tmiX", "previewMetadata": {"previewContentType": "NIoUp1ME", "previewFileExtension": "TuST7MQq"}, "shareCode": "sGZ50a00", "subType": "27uecmXs", "tags": ["m85ndvi2", "gVWVRBcy", "Fdo7KoP0"], "type": "GSUeTu5f", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'mJfk17QW' \
    --namespace $AB_NAMESPACE \
    --shareCode 'pPJA3K4K' \
    --userId 'QYgHB01A' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'ODFs7nzr' \
    --contentId 'dXOKjUUk' \
    --namespace $AB_NAMESPACE \
    --userId 'sjVjCEAX' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'U8wG88sc' \
    --limit '82' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'G8YcCwiM' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'd0SKjtvo' \
    --namespace $AB_NAMESPACE \
    --userId 'ObRjbreQ' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'F6KGFNLd' \
    --limit '95' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId '5APi3ogi' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'gDeHudCe' \
    --namespace $AB_NAMESPACE \
    --userId 'dhwV70fw' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'eSuqNp5F' \
    --namespace $AB_NAMESPACE \
    --userId 'MDwl8Oua' \
    --body '{"contents": ["0hGlVXGi", "0F0uAT4r", "DPMuFgqd"], "name": "vThUqu2k"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId '8z22CdTk' \
    --namespace $AB_NAMESPACE \
    --userId 'sPxPVcDW' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'dMVzWzOM' \
    --namespace $AB_NAMESPACE \
    --userId 'Z0pbqqy7' \
    --limit '30' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'L6fAdZft' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'Phff1u9H' \
    --namespace $AB_NAMESPACE \
    --creator 'xO76lSNM' \
    --ishidden 'KHHL0JqO' \
    --isofficial 'gcNsnepL' \
    --limit '78' \
    --name 'RIAdX9Mi' \
    --offset '93' \
    --orderby 'vrAsPDnP' \
    --sortby 'IDZ08bBc' \
    --subtype 'NnpIao1b' \
    --tags '["Ca29RCQs", "YpHXJPvm", "Lrbr5JlB"]' \
    --type 'oxDoZAzp' \
    --userId 'm3iLSX05' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'cmIjbxji' \
    --ishidden 'FCtU5Lu8' \
    --isofficial 'IhywOJZH' \
    --limit '32' \
    --name 'rk25yyJ5' \
    --offset '96' \
    --orderby '6kksoSrC' \
    --sortby 'UawToZSr' \
    --subtype 'VLo1neiT' \
    --tags '["yMCj3pTC", "nZEJ2l1j", "ybdQxwKA"]' \
    --type 'JcOWyQwM' \
    --userId 'kJP39bYk' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["27bRLikj", "A3gsWqrd", "KxT8eB8g"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '80' \
    --name 'meUwNbey' \
    --offset '78' \
    --orderby 'uI5VMGE3' \
    --sortby 'SjoaYJDm' \
    --subtype 'bo29CQki' \
    --tags '["TXOUYZ3S", "cLCGzT1t", "EIE6cdIb"]' \
    --type 'FP0jsoH7' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["GMN8Odkh", "in5Wuh6U", "brEnNVlN"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode '1zUpkjFO' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'xFeYcGCI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'ovKqG4fv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'VBzUllN3' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'SsuFE4ab' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '53' \
    --orderby '2c1SnU0N' \
    --sortby 'sp7z02gn' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId '2aNh0lif' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'cOaUJ4Gr' \
    --limit '17' \
    --name 'FGBga1At' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'dW2X5cqG' \
    --body '{"name": "kemgfBmB"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'jVER7Z5N' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId '6yLcvB7i' \
    --namespace $AB_NAMESPACE \
    --userId '4brsG7bv' \
    --body '{"name": "EJdyL0i2"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'hadEtxfR' \
    --namespace $AB_NAMESPACE \
    --userId '74tDJ0KC' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId '73Ejgh7M' \
    --namespace $AB_NAMESPACE \
    --userId '78JpuKp7' \
    --body '{"contentType": "xSVZqMfE", "customAttributes": {"SMIe8Wdn": {}, "b2gRXMee": {}, "Af7PV016": {}}, "fileExtension": "QaR51jVO", "name": "Vy2DbOAM", "preview": "wnKML50D", "previewMetadata": {"previewContentType": "VPH8J0Mz", "previewFileExtension": "WWrSsxoh"}, "subType": "SG3HE9kn", "tags": ["qfPfvZ29", "W5n0DbS3", "GIkuOi85"], "type": "v7B7u55s"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'I9H2qFua' \
    --namespace $AB_NAMESPACE \
    --shareCode '7DYEltpc' \
    --userId 'g9IQ2HBO' \
    --body '{"contentType": "HGXiXcoL", "customAttributes": {"JOdcjC42": {}, "KGNjIEpT": {}, "nhbkq6Ky": {}}, "fileExtension": "QpOGcgxN", "name": "vJjYtpl7", "payload": "5preFZI2", "preview": "kGesvbYv", "previewMetadata": {"previewContentType": "iIuYaLYE", "previewFileExtension": "dxhw8wHw"}, "subType": "56rBmhtE", "tags": ["4PrjY3Dw", "n9q0aOmT", "f3riBtTG"], "type": "n5jtEDgy", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'OF89oTz4' \
    --contentId 'eHDTvF9q' \
    --namespace $AB_NAMESPACE \
    --userId 'IGwuXNp2' \
    --body '{"contentType": "5ybIcGMC", "customAttributes": {"QVeOeoFj": {}, "0XOjFaDy": {}, "huyqaQeh": {}}, "fileExtension": "2Y2hOw9G", "name": "AkLCZgRI", "payload": "KsW6aZLM", "preview": "CYxOMkd3", "previewMetadata": {"previewContentType": "lNubAwtm", "previewFileExtension": "dICRfzFX"}, "subType": "My14vdQH", "tags": ["3NYrJo6q", "p0PeODGy", "JDtQR42N"], "type": "tgWEXzxW", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId '2UCpQCPT' \
    --namespace $AB_NAMESPACE \
    --shareCode 'RF1a76qP' \
    --userId 'gESlMStf' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId '9x1V2bVY' \
    --contentId 'O9l8QfX9' \
    --namespace $AB_NAMESPACE \
    --userId 'PMantQ22' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId '2XgN3F43' \
    --contentId 'JTdLDgKp' \
    --namespace $AB_NAMESPACE \
    --userId 'WJmDFwIP' \
    --body '{"shareCode": "PJ8vP7et"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'HdCWHEH9' \
    --limit '47' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'scQMKwOq' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'h96ba6a8' \
    --namespace $AB_NAMESPACE \
    --userId 'i84tuyXZ' \
    --body '{"screenshots": [{"description": "EnmD9cUs", "screenshotId": "oR8ta9eC"}, {"description": "Jxsi0obT", "screenshotId": "NPJmajlc"}, {"description": "gL90h0PB", "screenshotId": "uRBJH0Ye"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'EAdWzD2a' \
    --namespace $AB_NAMESPACE \
    --userId 'gvDjl0VS' \
    --body '{"screenshots": [{"contentType": "w28ZreES", "description": "MXf8zH83", "fileExtension": "jpg"}, {"contentType": "pgENTRXT", "description": "XpgAe8Dj", "fileExtension": "jpg"}, {"contentType": "jFGHXcyt", "description": "o30obB2Z", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'bZB7Y2N7' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'Oy4l8AtE' \
    --userId 'KBdhIsz0' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'xQgXLSU6' \
    --body '{"followStatus": false}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'f4dkYEmX' \
    --limit '21' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'doMMrGiz' \
    --limit '27' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId '8frEXXHX' \
    --limit '71' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'qh5g9nsr' \
    --body '{"contents": ["TakmeUj1", "rqcWp7nH", "iAP4qC4u"], "name": "H0FlwRT5"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'SThWfJQO' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'ZJKlRrRM' \
    --namespace $AB_NAMESPACE \
    --userId '22hwQDHt' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'mDLeGTeq' \
    --namespace $AB_NAMESPACE \
    --userId 'y03WuXbI' \
    --body '{"contents": ["JNO543wq", "YosO68rM", "jk4F8DzH"], "name": "19ztnOQn"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'IpV6sie2' \
    --namespace $AB_NAMESPACE \
    --userId 'VXz9eViO' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'mEw49pge' \
    --namespace $AB_NAMESPACE \
    --userId 'YUwXGYnp' \
    --limit '61' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'Lm2AsXjO' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'qtTGD7HG' \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --name 'r7gyW2l7' \
    --offset '42' \
    --sortBy 'r0PFS3b1' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'ETkogTZi' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "GfGSnZmq", "customAttributes": {"X5TN5XnU": {}, "5lErMHHV": {}, "3hfLHuK1": {}}, "fileExtension": "7qlTZJ2x", "name": "45UVAclm", "shareCode": "cMV4jq0K", "subType": "XvecrvLD", "tags": ["P2zRNQZz", "okX6EBf8", "ud44jJgw"], "type": "ytJZXixP"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId '9cxwTtHp' \
    --contentId 'PRtZtiYk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'tOCe7CbT' \
    --contentId 'NRTOADGu' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"pGWQ8TN6": {}, "7doeyTVG": {}, "VdJvIXVb": {}}, "name": "btBHqwYK", "shareCode": "tEHxGoyp", "subType": "haOviKtS", "tags": ["CuSIRKm4", "AwObRC14", "x56xxp2G"], "type": "l6VBZktD"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminCopyContent
samples/cli/sample-apps Ugc adminCopyContent \
    --channelId 'KaXQSF48' \
    --contentId 'pL9JYyC4' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"mH6w22Tp": {}, "CRdjBMHV": {}, "egWRPWuC": {}}, "name": "QrxZoT3x", "subType": "aYEzet4B", "tags": ["5bdXFpwx", "mG4r9vUR", "DVSP6zX4"], "targetChannelId": "UxWPhIxr", "type": "8sA6NiTE"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminCopyContent' test.out

#- 107 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'xtipdAVc' \
    --contentId 'BZcMUMnV' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "IbyFDnk7", "fileLocation": "Wqwh7JgL"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminUpdateOfficialContentFileLocation' test.out

#- 108 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId '7dxRga7A' \
    --contentId 'MhrHDPWE' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "pNfnwMkK", "fileExtension": "YouuJYeq"}' \
    > test.out 2>&1
eval_tap $? 108 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 109 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 109 'AdminGetConfigs' test.out

#- 110 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key 'x2HAPsJH' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "Ybn9eyCh"}' \
    > test.out 2>&1
eval_tap $? 110 'AdminUpdateConfig' test.out

#- 111 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '31' \
    --name 'ApEgmaTX' \
    --offset '42' \
    --sortBy 'eiy2uSt5' \
    --subType 'z38vDa78' \
    --tags '["0NRnyPWR", "rZgBxCFg", "Atm65vCO"]' \
    --type 'n9WrSW68' \
    > test.out 2>&1
eval_tap $? 111 'AdminListContentV2' test.out

#- 112 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["fsVzLTBr", "lf6BKN3F", "YRac6Ivx"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminBulkGetContentByIDsV2' test.out

#- 113 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["OZxIUpIV", "K8LvxOjm", "P8ycYZzC"]}' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentBulkByShareCodesV2' test.out

#- 114 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'yvvznYe7' \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByShareCodeV2' test.out

#- 115 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId '8NpmuIgQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'AdminGetContentByContentIDV2' test.out

#- 116 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'LJ5bTRYS' \
    --namespace $AB_NAMESPACE \
    --versionId '7n3cRP4L' \
    > test.out 2>&1
eval_tap $? 116 'RollbackContentVersionV2' test.out

#- 117 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'dsHz5fNZ' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "OOGATitU", "screenshotId": "9W9ys7QJ"}, {"description": "h0D6UgZ3", "screenshotId": "cDGreOoH"}, {"description": "BnQraA3d", "screenshotId": "goQVngu3"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateScreenshotsV2' test.out

#- 118 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 'teqRMuC4' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "FrLTQ8zl", "description": "g9aJC51v", "fileExtension": "jfif"}, {"contentType": "PGNJ9Dux", "description": "K1frdnHh", "fileExtension": "jpg"}, {"contentType": "6H9g6Pni", "description": "eKDok7MT", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 118 'AdminUploadContentScreenshotV2' test.out

#- 119 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'c8Mecpac' \
    --namespace $AB_NAMESPACE \
    --screenshotId '3No6U2fB' \
    > test.out 2>&1
eval_tap $? 119 'AdminDeleteContentScreenshotV2' test.out

#- 120 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId '3dIPZcJo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 120 'ListContentVersionsV2' test.out

#- 121 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'OwqzmRHW' \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 121 'AdminGetOfficialGroupContentsV2' test.out

#- 122 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '10' \
    --sortBy 'EcztwqvB' \
    --status 'xFWV16rD' \
    > test.out 2>&1
eval_tap $? 122 'AdminListStagingContents' test.out

#- 123 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId '0L5foNbc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminGetStagingContentByID' test.out

#- 124 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId 'sn3T8VFb' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": true, "note": "BXNQvxSF"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminApproveStagingContent' test.out

#- 125 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'oZp0tEr8' \
    --namespace $AB_NAMESPACE \
    --shareCode 'VsS9QfcV' \
    --userId 'EV7IAXlv' \
    --body '{"customAttributes": {"7Te3N7Q1": {}, "F4oG1zE0": {}, "U4T1aLTJ": {}}, "name": "d4Kq5pAe", "shareCode": "YhqgsBMK", "subType": "lB3fYRVD", "tags": ["lVJUvwmF", "zibPq0WC", "WfVLIC3K"], "type": "2HNUxLTX"}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateContentByShareCodeV2' test.out

#- 126 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'Xrb6H7b2' \
    --namespace $AB_NAMESPACE \
    --shareCode 'HgfTM0rP' \
    --userId 'UObfhXky' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteContentByShareCodeV2' test.out

#- 127 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId '4ujiMMoC' \
    --contentId 'Lok1VoVb' \
    --namespace $AB_NAMESPACE \
    --userId 'amc6ptu9' \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteUserContentV2' test.out

#- 128 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'CaMybOzY' \
    --contentId '4XO8HeTn' \
    --namespace $AB_NAMESPACE \
    --userId 'jVxXAbf6' \
    --body '{"customAttributes": {"nLmRk0L7": {}, "j4Kfe2zm": {}, "u2vU71j0": {}}, "name": "fR4IPiA7", "shareCode": "TGib7uac", "subType": "FWGB7hp3", "tags": ["DJpcpOjF", "BmESVtZH", "vW7cZyRG"], "type": "NnLHpgb0"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentV2' test.out

#- 129 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'q1e50Zwp' \
    --contentId 'yvE368nI' \
    --namespace $AB_NAMESPACE \
    --userId 'mIvh030n' \
    --body '{"fileExtension": "RrJtigtu", "fileLocation": "hHqVNjmd"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateUserContentFileLocation' test.out

#- 130 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'zqhWiGPH' \
    --contentId 'oZoaqWKQ' \
    --namespace $AB_NAMESPACE \
    --userId 'PF0Ei6Ek' \
    --body '{"contentType": "jmCh000I", "fileExtension": "PMoeiWbU"}' \
    > test.out 2>&1
eval_tap $? 130 'AdminGenerateUserContentUploadURLV2' test.out

#- 131 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'BbJESUAs' \
    --limit '9' \
    --offset '97' \
    --sortBy 'zYEv84Av' \
    > test.out 2>&1
eval_tap $? 131 'AdminGetContentByUserIDV2' test.out

#- 132 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'wSPEfz58' \
    --namespace $AB_NAMESPACE \
    --userId 'Dn4qIiI9' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 132 'AdminUpdateContentHideStatusV2' test.out

#- 133 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'PgVdSXQH' \
    --namespace $AB_NAMESPACE \
    --userId '83jpXXOa' \
    --limit '37' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 133 'AdminGetUserGroupContentsV2' test.out

#- 134 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'xdrYqo5L' \
    --limit '73' \
    --offset '81' \
    --sortBy 'ZlDiEIp6' \
    --status 'qKDc9DiP' \
    > test.out 2>&1
eval_tap $? 134 'AdminListUserStagingContents' test.out

#- 135 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'Q2GURTYJ' \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --name 'be3RJraA' \
    --offset '70' \
    --sortBy 'SddeukZQ' \
    > test.out 2>&1
eval_tap $? 135 'PublicGetContentByChannelIDV2' test.out

#- 136 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '33' \
    --name 'JYVonXQG' \
    --offset '61' \
    --sortBy 'pyQno29h' \
    --subType 'U3zCmlw3' \
    --tags '["e9wCppEp", "t45gOnJU", "z3zkHE5v"]' \
    --type 'DzxYotHf' \
    > test.out 2>&1
eval_tap $? 136 'PublicListContentV2' test.out

#- 137 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["TTGSKT0P", "E54cxtg0", "d9mHf9bl"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicBulkGetContentByIDV2' test.out

#- 138 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["zJ3gEEH3", "XNI2vi4B", "9xQOV1Ni"]}' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentBulkByShareCodesV2' test.out

#- 139 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'AyAFIh2u' \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByShareCodeV2' test.out

#- 140 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'RHHpcYQa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicGetContentByIDV2' test.out

#- 141 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'Nbdk2EvL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 141 'PublicAddDownloadCountV2' test.out

#- 142 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'ympk6Nc8' \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '16' \
    --sortBy 'QAQnq1Kk' \
    --userId 'wDed9uF8' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentDownloaderV2' test.out

#- 143 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'YHMGw0cr' \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '17' \
    --sortBy 'wfFlhRbl' \
    > test.out 2>&1
eval_tap $? 143 'PublicListContentLikeV2' test.out

#- 144 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId 'k1F0McDX' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateContentLikeStatusV2' test.out

#- 145 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'BNWYUSDm' \
    --namespace $AB_NAMESPACE \
    --userId 'OGH6lIhM' \
    --body '{"contentType": "QNjc4Z4L", "customAttributes": {"6EuzYkH8": {}, "A2BBz3e9": {}, "4j5sBQ5l": {}}, "fileExtension": "aBN9aPyi", "name": "CsvoDwpc", "subType": "TDbX8RhI", "tags": ["pwngE4CT", "eo23mIQo", "fVbeeb88"], "type": "73xzHUFu"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicCreateContentV2' test.out

#- 146 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'm7Z1ZPOu' \
    --namespace $AB_NAMESPACE \
    --shareCode 'ZPJbxt58' \
    --userId '27Dj6kYn' \
    --body '{"customAttributes": {"uOrA9RIK": {}, "2IJiHmxr": {}, "z7r6zdNQ": {}}, "name": "fJogTTVQ", "subType": "HoZuKavR", "tags": ["Ko7q3a3v", "i0pf1i3j", "2CNDMXGc"], "type": "v5D1wGOW"}' \
    > test.out 2>&1
eval_tap $? 146 'PublicUpdateContentByShareCodeV2' test.out

#- 147 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'j6p5dS58' \
    --namespace $AB_NAMESPACE \
    --shareCode 'iayXlLDZ' \
    --userId 'fvH36sJk' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentByShareCodeV2' test.out

#- 148 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'WH996Q5C' \
    --contentId 'ZPZsRBOQ' \
    --namespace $AB_NAMESPACE \
    --userId '65i6A1v7' \
    > test.out 2>&1
eval_tap $? 148 'PublicDeleteContentV2' test.out

#- 149 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'HI9C8mTC' \
    --contentId 'Z5kk6BBd' \
    --namespace $AB_NAMESPACE \
    --userId 'fCP0E8GR' \
    --body '{"customAttributes": {"B2VKgljB": {}, "XN4ZaBcY": {}, "JXjIRbg6": {}}, "name": "Rv70HGiQ", "subType": "6sKSpewO", "tags": ["qlkde0bf", "DLYH3ycM", "TEstiXDN"], "type": "1spR9vwK"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentV2' test.out

#- 150 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'olzvv0ae' \
    --contentId 'r3GL5eGs' \
    --namespace $AB_NAMESPACE \
    --userId '78KOohtx' \
    --body '{"fileExtension": "boZUXYJ0", "fileLocation": "WaxaapXx"}' \
    > test.out 2>&1
eval_tap $? 150 'PublicUpdateContentFileLocation' test.out

#- 151 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'cxIEFyOD' \
    --contentId 'ox1Zn2Xp' \
    --namespace $AB_NAMESPACE \
    --userId 'ArcpMasD' \
    --body '{"shareCode": "gJFulxAf"}' \
    > test.out 2>&1
eval_tap $? 151 'UpdateContentShareCodeV2' test.out

#- 152 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'AFUCZM74' \
    --contentId 'VEi8JrHU' \
    --namespace $AB_NAMESPACE \
    --userId 'sXfc4mZ8' \
    --body '{"contentType": "N2PuoO2z", "fileExtension": "i12fQToQ"}' \
    > test.out 2>&1
eval_tap $? 152 'PublicGenerateContentUploadURLV2' test.out

#- 153 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'bPyihgiR' \
    --limit '30' \
    --offset '30' \
    --sortBy 'qC326eJ8' \
    > test.out 2>&1
eval_tap $? 153 'PublicGetContentByUserIDV2' test.out

#- 154 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'VFdqrGw1' \
    --namespace $AB_NAMESPACE \
    --userId 'UpLb5Wse' \
    --body '{"screenshots": [{"description": "Vx55iXa2", "screenshotId": "Zn4IaufA"}, {"description": "PbfHC09v", "screenshotId": "8DGlROp2"}, {"description": "ZbB4z08D", "screenshotId": "1OEj03zE"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UpdateScreenshotsV2' test.out

#- 155 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId '5tVIUlco' \
    --namespace $AB_NAMESPACE \
    --userId 'YCVyFcMV' \
    --body '{"screenshots": [{"contentType": "1rZJsxwP", "description": "eHHGBbUc", "fileExtension": "bmp"}, {"contentType": "DyQNIWMq", "description": "nDcwz9Xb", "fileExtension": "png"}, {"contentType": "HYmkk3E0", "description": "19WPbfl3", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 155 'UploadContentScreenshotV2' test.out

#- 156 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'xws81Sru' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'UfTXaOcX' \
    --userId 'chltpniX' \
    > test.out 2>&1
eval_tap $? 156 'DeleteContentScreenshotV2' test.out

#- 157 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'tUQ0jacC' \
    --namespace $AB_NAMESPACE \
    --userId 'Q24Bbgas' \
    --limit '21' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 157 'PublicGetGroupContentsV2' test.out

#- 158 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'nej1Hfh7' \
    --limit '23' \
    --offset '50' \
    --sortBy 'RtoAXOOn' \
    --status 'xdFootwC' \
    > test.out 2>&1
eval_tap $? 158 'ListUserStagingContents' test.out

#- 159 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId 'A5VvAWsQ' \
    --namespace $AB_NAMESPACE \
    --userId 'uy6iD3vs' \
    > test.out 2>&1
eval_tap $? 159 'GetUserStagingContentByID' test.out

#- 160 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId 'u97zkCel' \
    --namespace $AB_NAMESPACE \
    --userId 'Rk4rv1fF' \
    --body '{"fileExtension": "8tQHPZIk", "fileLocation": "q75ezrOV"}' \
    > test.out 2>&1
eval_tap $? 160 'UpdateStagingContent' test.out

#- 161 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId 'mb3SEn31' \
    --namespace $AB_NAMESPACE \
    --userId 'H6b9rllo' \
    > test.out 2>&1
eval_tap $? 161 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE