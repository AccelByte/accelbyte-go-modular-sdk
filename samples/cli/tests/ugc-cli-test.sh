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
    --limit '68' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "7K7iP05N", "name": "vVYykCMf"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'KTZL643I' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "yRlmjKHx"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'XY7TmAoZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'amrZnelL' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "OdYRr4VT", "customAttributes": {"Qsfqjb7t": {}, "jFkXDCso": {}, "tIXWAzBw": {}}, "fileExtension": "BDoKCpLK", "name": "aGOi6Hw4", "preview": "tJn98TC7", "previewMetadata": {"previewContentType": "0bMjkrtF", "previewFileExtension": "4rcoit0W"}, "shareCode": "ASan4cTp", "subType": "oJ82dAIH", "tags": ["xMH5078B", "PHnHgRwj", "wHuRg9I5"], "type": "t00cEx1o"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'w8fc8kwq' \
    --contentId '1iOivEp5' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "aQ7IspFB", "customAttributes": {"Qs44DfN0": {}, "XbzjSqID": {}, "DXwBuc87": {}}, "fileExtension": "MBkY7zBn", "name": "UbD4lepI", "payload": "BJpJXnWJ", "preview": "m2sUiVDD", "previewMetadata": {"previewContentType": "C0r5Juvj", "previewFileExtension": "FkGk1WTQ"}, "shareCode": "Ocg2pqht", "subType": "AOhLNv7U", "tags": ["SaaJ1Hyd", "1Cj1nQYY", "6bhBz2Df"], "type": "0gMFd3HO", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'uhVrPM3i' \
    --namespace $AB_NAMESPACE \
    --creator 'uCOmZJm6' \
    --isofficial 'ZTQZhW5C' \
    --limit '84' \
    --name 'UhjELkhm' \
    --offset '33' \
    --orderby 'jROsLcEO' \
    --sortby 'XF6Zvk9A' \
    --subtype 'FmcDxMsn' \
    --tags '["MRSmBuq2", "NToa4Xrj", "U6A65tPC"]' \
    --type 'qq10pz1F' \
    --userId 'pHmx4xQz' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'Kqm6NbED' \
    --contentId '0fSU6wTi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["4MZWSMCu", "6exv0lcf", "XB0vsTwj"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'cmyWSBQ2' \
    --isofficial 'OWGEUctx' \
    --limit '36' \
    --name 'qK1BpkuK' \
    --offset '1' \
    --orderby 'Ojs6StUn' \
    --sortby 'auAR7IXX' \
    --subtype 'QHLyh1Ez' \
    --tags '["vzV57Hd8", "XmpwURc3", "FJHf8mBE"]' \
    --type 'qfSDLacp' \
    --userId 'TGdHUFKj' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["D1POm7up", "Cfw9jcmI", "X9nN7YfX"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'ze7Ws7GM' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'Otfxk3Fp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'V1OU0yap' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'aUB4zmYs' \
    --namespace $AB_NAMESPACE \
    --versionId 'vwoWkj3x' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId '5aFTloS6' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "tjxBvldj", "screenshotId": "rCiU4lzG"}, {"description": "zGMUQ02M", "screenshotId": "6onv6L7j"}, {"description": "KdKxzjtU", "screenshotId": "YddqCf77"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'FgVrt3ID' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "dl7ZbhpM", "description": "cmwd7r29", "fileExtension": "png"}, {"contentType": "Hnx435ZE", "description": "VjBL7anQ", "fileExtension": "png"}, {"contentType": "ZiOLrU2t", "description": "KVkbEqUu", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'gDjq5pYz' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'w57nsyP2' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'n8Hokndb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["BY5yxEgf", "fBAckUY2", "Rni9iGSQ"], "name": "7sPu7QKc"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'TYeW0kyS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'HHQAaWPm' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["n9QwdVJQ", "Z1Hjk1CO", "9VCn8UEo"], "name": "xVixe2Xi"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'IQk1c3Mg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'sEteAR9j' \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "HNTMLsaa"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'aUnRfWBP' \
    --body '{"tag": "VNQwOcQY"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId '8jRsPDap' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["TT9yYuDP", "cF8B3FRA", "s397i1bM"], "type": "18TZNMHL"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId '5XkvNQIp' \
    --body '{"subtype": ["8t2YPIlD", "GTVbYgCC", "rW4dF1lK"], "type": "ZCQIUt1b"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'R2cOQui3' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'gCpM8EY9' \
    --limit '70' \
    --name 'JApl8o04' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId '3qOAAV13' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'x4di9ZEf' \
    --namespace $AB_NAMESPACE \
    --userId 'KOYhOuCG' \
    --body '{"name": "fFxMfr3W"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'QLrauLWI' \
    --namespace $AB_NAMESPACE \
    --userId 'Rp47WgT2' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'NuZE2Fz6' \
    --contentId 'nSknj60r' \
    --namespace $AB_NAMESPACE \
    --userId 'JHV8a1NG' \
    --body '{"contentType": "aD88enxP", "customAttributes": {"nqEXPa77": {}, "T2w4LQ2q": {}, "Mwmvye7Y": {}}, "fileExtension": "mlxuSEPK", "name": "16K9eYgP", "payload": "3JDq5nx3", "preview": "LB09tlT8", "previewMetadata": {"previewContentType": "sKSnGRSQ", "previewFileExtension": "TASMZ2MG"}, "shareCode": "58NKPJsi", "subType": "2n1KcfY4", "tags": ["w3agizGh", "Ts7IDJr2", "qrXL7eS3"], "type": "Q3BXXqUk", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3' test.out

#- 43 AdminUpdateContentDirect
eval_tap 0 43 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 44 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'xNKduzJg' \
    --contentId 'dyFIeT46' \
    --namespace $AB_NAMESPACE \
    --userId 'j3pQhpRm' \
    > test.out 2>&1
eval_tap $? 44 'AdminDeleteContent' test.out

#- 45 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'q4ToPxWH' \
    --limit '9' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetContent' test.out

#- 46 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'l5Ski8DH' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteAllUserContents' test.out

#- 47 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'KQWIBauB' \
    --namespace $AB_NAMESPACE \
    --userId 'n0ZFqFaB' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 47 'AdminHideUserContent' test.out

#- 48 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'zzk6GTxf' \
    --limit '92' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetAllGroups' test.out

#- 49 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'Pl8NE7zP' \
    > test.out 2>&1
eval_tap $? 49 'AdminDeleteAllUserGroup' test.out

#- 50 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'gitXainc' \
    --namespace $AB_NAMESPACE \
    --userId 'rqB6HYZS' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetGroup' test.out

#- 51 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'wPH5BW6u' \
    --namespace $AB_NAMESPACE \
    --userId 'EzdamQYA' \
    --body '{"contents": ["jurzORLS", "FAW99IkQ", "jCX3yqZ5"], "name": "I9IxY9bP"}' \
    > test.out 2>&1
eval_tap $? 51 'AdminUpdateGroup' test.out

#- 52 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId '0jhYxJWS' \
    --namespace $AB_NAMESPACE \
    --userId 'sIa4IaNY' \
    > test.out 2>&1
eval_tap $? 52 'AdminDeleteGroup' test.out

#- 53 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId '5800Cxnw' \
    --namespace $AB_NAMESPACE \
    --userId 'I344Oxte' \
    --limit '20' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 53 'AdminGetGroupContents' test.out

#- 54 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId '1bXirffj' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteAllUserStates' test.out

#- 55 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'JtxdW5nL' \
    --namespace $AB_NAMESPACE \
    --creator '0FlQ8TjN' \
    --isofficial 'M4Pwr2Nh' \
    --limit '48' \
    --name 'rY8gu7AO' \
    --offset '18' \
    --orderby 'psm09t2i' \
    --sortby '3825xZLf' \
    --subtype 'jg7aZnfB' \
    --tags '["R7BaIK9T", "TKUWTOZJ", "cgHGnris"]' \
    --type 'ukkFfxr9' \
    --userId '3fiWEtiU' \
    > test.out 2>&1
eval_tap $? 55 'SearchChannelSpecificContent' test.out

#- 56 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'V2tLlK52' \
    --isofficial 'NXAiBD3P' \
    --limit '67' \
    --name 'dm5lynNh' \
    --offset '93' \
    --orderby 'TKWAiizq' \
    --sortby 'QuQBZpqm' \
    --subtype '4V0RWmxe' \
    --tags '["N9dgfljR", "d6ifdFqR", "iGTwz95Y"]' \
    --type '55V9lf8l' \
    --userId '5uz3CIN6' \
    > test.out 2>&1
eval_tap $? 56 'PublicSearchContent' test.out

#- 57 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["9bhfrnmK", "X76ii8Df", "M94aXfhU"]}' \
    > test.out 2>&1
eval_tap $? 57 'PublicGetContentBulk' test.out

#- 58 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 58 'GetFollowedContent' test.out

#- 59 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '68' \
    --name 'rFBOgviD' \
    --offset '21' \
    --orderby 'KE2zbVIl' \
    --sortby 'vL8qGznG' \
    --subtype '0aMjEwAF' \
    --tags '["tH5Yxa12", "sQIXYgoA", "Z3iiUr1i"]' \
    --type '3AHaF04u' \
    > test.out 2>&1
eval_tap $? 59 'GetLikedContent' test.out

#- 60 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'IX466NK5' \
    > test.out 2>&1
eval_tap $? 60 'PublicDownloadContentByShareCode' test.out

#- 61 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId '7UJ1q86F' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'PublicDownloadContentByContentID' test.out

#- 62 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId '4j2qiTkL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'AddDownloadCount' test.out

#- 63 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'ifDGZ0ls' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 63 'UpdateContentLikeStatus' test.out

#- 64 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'Fa9imnMa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentPreview' test.out

#- 65 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 65 'GetTag' test.out

#- 66 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 66 'GetType' test.out

#- 67 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '15' \
    --orderby 'ccdEBc3h' \
    --sortby 'ssh6I4H3' \
    > test.out 2>&1
eval_tap $? 67 'PublicSearchCreator' test.out

#- 68 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 68 'GetFollowedUsers' test.out

#- 69 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'aRcCRYNd' \
    > test.out 2>&1
eval_tap $? 69 'PublicGetCreator' test.out

#- 70 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId '3RjgX5I8' \
    --limit '75' \
    --name '4QtYH8M0' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 70 'GetChannels' test.out

#- 71 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'tx6nA2K0' \
    --body '{"name": "IPDXdcju"}' \
    > test.out 2>&1
eval_tap $? 71 'PublicCreateChannel' test.out

#- 72 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'DbD1iJPL' \
    > test.out 2>&1
eval_tap $? 72 'DeleteAllUserChannel' test.out

#- 73 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'VKcV1SKv' \
    --namespace $AB_NAMESPACE \
    --userId '1cSRPZeq' \
    --body '{"name": "AMFKBQzy"}' \
    > test.out 2>&1
eval_tap $? 73 'UpdateChannel' test.out

#- 74 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'GlAUI0fa' \
    --namespace $AB_NAMESPACE \
    --userId '6p01uxK7' \
    > test.out 2>&1
eval_tap $? 74 'DeleteChannel' test.out

#- 75 CreateContentDirect
eval_tap 0 75 'CreateContentDirect # SKIP deprecated' test.out

#- 76 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'ms6CC8vF' \
    --namespace $AB_NAMESPACE \
    --userId 'jdyIF33p' \
    --body '{"contentType": "J0bWYSvy", "customAttributes": {"c0un0K0E": {}, "nkK7sIQG": {}, "P3sVZMYw": {}}, "fileExtension": "LjLw3HYo", "name": "S4WZpHM4", "preview": "9xyW5HVm", "previewMetadata": {"previewContentType": "VxPvAbl7", "previewFileExtension": "bL89WqAB"}, "subType": "P17pTwmd", "tags": ["V0OxK1mD", "OCFvtKNY", "LLdEogF8"], "type": "GXPblHs4"}' \
    > test.out 2>&1
eval_tap $? 76 'CreateContentS3' test.out

#- 77 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'FWYoxj9L' \
    --contentId 'z2ka30xl' \
    --namespace $AB_NAMESPACE \
    --userId 'v5YpGr6q' \
    --body '{"contentType": "6M46BC9p", "customAttributes": {"PDj7dwim": {}, "9Hw3ZF4Z": {}, "OSh4RRre": {}}, "fileExtension": "SsTBheLW", "name": "OCyxC6Uc", "payload": "RkUeBhlY", "preview": "Lvzz5zc3", "previewMetadata": {"previewContentType": "VAUJ4qeU", "previewFileExtension": "2lgEM9bD"}, "subType": "4DY8PAVv", "tags": ["GsFUttMJ", "3lx55cOi", "YE2Xc3vf"], "type": "Dk5vtWuO", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 77 'UpdateContentS3' test.out

#- 78 UpdateContentDirect
eval_tap 0 78 'UpdateContentDirect # SKIP deprecated' test.out

#- 79 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'GR9m2JRH' \
    --contentId 'Wlav9ehL' \
    --namespace $AB_NAMESPACE \
    --userId 'QTpU2lTo' \
    > test.out 2>&1
eval_tap $? 79 'DeleteContent' test.out

#- 80 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'LKCriwSR' \
    --limit '51' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 80 'PublicGetUserContent' test.out

#- 81 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'Tb7FcIgn' \
    > test.out 2>&1
eval_tap $? 81 'DeleteAllUserContents' test.out

#- 82 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'pVco1uoI' \
    --namespace $AB_NAMESPACE \
    --userId 'gXaRFHOO' \
    --body '{"screenshots": [{"description": "RbzndXr7", "screenshotId": "SCgnYXPq"}, {"description": "fv9gk7BE", "screenshotId": "li9ua0uK"}, {"description": "URyUUooS", "screenshotId": "YDfZC8FI"}]}' \
    > test.out 2>&1
eval_tap $? 82 'UpdateScreenshots' test.out

#- 83 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId '30ZY308P' \
    --namespace $AB_NAMESPACE \
    --userId 'dDHrNnKO' \
    --body '{"screenshots": [{"contentType": "Xx5ppVko", "description": "vM1cPgF6", "fileExtension": "bmp"}, {"contentType": "5aE6YD9n", "description": "9oVaBT8g", "fileExtension": "pjp"}, {"contentType": "bMawwgpl", "description": "g72AuqKJ", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 83 'UploadContentScreenshot' test.out

#- 84 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'r08E3RUU' \
    --namespace $AB_NAMESPACE \
    --screenshotId '4oyNs7ko' \
    --userId 'ZV7xLCsN' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContentScreenshot' test.out

#- 85 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'nK3jmKeN' \
    --body '{"followStatus": false}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateUserFollowStatus' test.out

#- 86 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId '1IwdRPK2' \
    --limit '43' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 86 'GetPublicFollowers' test.out

#- 87 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'OrAzPm6e' \
    --limit '85' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 87 'GetPublicFollowing' test.out

#- 88 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'xQKbVBn7' \
    --limit '13' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 88 'GetGroups' test.out

#- 89 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'nYFOQOJi' \
    --body '{"contents": ["VGuZM36F", "IzxwoT57", "VLoH9BXN"], "name": "CFLLCRAD"}' \
    > test.out 2>&1
eval_tap $? 89 'CreateGroup' test.out

#- 90 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId '7ToM3Zj6' \
    > test.out 2>&1
eval_tap $? 90 'DeleteAllUserGroup' test.out

#- 91 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'KnFRIvDy' \
    --namespace $AB_NAMESPACE \
    --userId 'vHn0Spfl' \
    > test.out 2>&1
eval_tap $? 91 'GetGroup' test.out

#- 92 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'ek9C22Ef' \
    --namespace $AB_NAMESPACE \
    --userId 'oNY3LQaA' \
    --body '{"contents": ["XRvhjbcQ", "vmGhfiIT", "lH27RfvW"], "name": "LLLn4H5L"}' \
    > test.out 2>&1
eval_tap $? 92 'UpdateGroup' test.out

#- 93 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId '56LwT63i' \
    --namespace $AB_NAMESPACE \
    --userId 'VL9rcHkS' \
    > test.out 2>&1
eval_tap $? 93 'DeleteGroup' test.out

#- 94 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'EqZtdwlD' \
    --namespace $AB_NAMESPACE \
    --userId 'icaRlvP1' \
    --limit '25' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 94 'GetGroupContent' test.out

#- 95 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId '7lCYqZge' \
    > test.out 2>&1
eval_tap $? 95 'DeleteAllUserStates' test.out


rm -f "tmp.dat"

exit $EXIT_CODE