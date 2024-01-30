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
    --limit '65' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "n4IKbNfq", "name": "XIMOaZAh"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId '2dykqMUH' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "VrJFKU0I"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'dvQXXAhQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'JoI6jH95' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "ZDunffF6", "customAttributes": {"lwMY4Ozq": {}, "u7oTYFqg": {}, "f7hhN9CV": {}}, "fileExtension": "drqfJYxL", "name": "7FA5PLG1", "preview": "pOjJAmK2", "previewMetadata": {"previewContentType": "Q0T69ZeN", "previewFileExtension": "PhANMcXd"}, "shareCode": "CEhPE4eh", "subType": "tmLbbfRO", "tags": ["UKx4DQVC", "jHG4U6VD", "ZTMHnB4e"], "type": "uztmULsY"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'lOUl6DiL' \
    --contentId 'EjEUqKfK' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "rGxcagox", "customAttributes": {"ygQ4jjGy": {}, "b3nqJsuA": {}, "caGELBeI": {}}, "fileExtension": "Cqy33Kzz", "name": "FTxwPMMi", "payload": "MmGuyzax", "preview": "p2IS2fNW", "previewMetadata": {"previewContentType": "jQ3gvdnK", "previewFileExtension": "6r9qZrmy"}, "shareCode": "2Ax9Hrs3", "subType": "8D7EVMQj", "tags": ["5s3B9wpu", "pDmEQ1xH", "9xCxMbYm"], "type": "nQiB9qay", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'zch7auB7' \
    --namespace $AB_NAMESPACE \
    --creator 'vQ8BOPZc' \
    --ishidden 'OeB2IDXW' \
    --isofficial 'e331Zzcc' \
    --limit '26' \
    --name 'l8GTuXon' \
    --offset '95' \
    --orderby 'fUQ1CiMf' \
    --sortby 'wCW9wQra' \
    --subtype 'ayOxt16k' \
    --tags '["dtumNIAH", "cNrFCQsp", "V354kjD9"]' \
    --type 'nAyXUxhl' \
    --userId 'jXaUVRZc' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'GbkjE6TY' \
    --contentId 'zhs4rwis' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["CUA4JWaH", "ZCOUKcWf", "LTauuhPT"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'j9tKRJU0' \
    --ishidden '2A7uIeK8' \
    --isofficial '05C10BbT' \
    --limit '99' \
    --name 'fvKdOPm6' \
    --offset '91' \
    --orderby 'XiZXatLa' \
    --sortby 'KQaHqt19' \
    --subtype 'HaOSXeon' \
    --tags '["3zz6aVcm", "3t8MIaja", "5AMR8PQ2"]' \
    --type 'XGI0yF2H' \
    --userId 'hVC6VYYi' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["BMoz9x1J", "H7FApiPS", "qSP7vSBX"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'EaspEEvT' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'aKfYjRcR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId '0Y4ujs8f' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'Q1dVSLhw' \
    --namespace $AB_NAMESPACE \
    --versionId 'SDeWpa89' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId '99f98Znl' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "RTaEvUvC", "screenshotId": "5ugAm1CA"}, {"description": "aHV7SqdN", "screenshotId": "BVpZBAQr"}, {"description": "sp8cKIvu", "screenshotId": "mxqZZnmU"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'o0YwQujI' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "m8RvRBtR", "description": "dXZMQzx7", "fileExtension": "jpeg"}, {"contentType": "XslqREcg", "description": "efGyOhL0", "fileExtension": "png"}, {"contentType": "fb22UXbG", "description": "GjCkMRUO", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'b6iOpxTf' \
    --namespace $AB_NAMESPACE \
    --screenshotId '0EmgSXSk' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'jCYGOjuk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["mrROaBwW", "1b2suZDD", "KzpY0aZ8"], "name": "sxmdGRM7"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'Mq0g39qY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'zD3sgPXy' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["lhpUOLnQ", "G1jUKMWs", "up5VvcJ3"], "name": "9xmwtqTO"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'XlC8v5OO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'uoUBN6pA' \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "a4bRaAdz"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'f837ooPz' \
    --body '{"tag": "RJaGvlru"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'urMV99OY' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["DR47TKH9", "lk2ma7PF", "u3g4DnWJ"], "type": "qVK8HqVe"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'itQByw2W' \
    --body '{"subtype": ["yrQtsjf4", "2YQGMiet", "Msp7pCug"], "type": "OZR9PzJu"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'yQ9TCzVi' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'zf3zLBFM' \
    --limit '18' \
    --name 'Z9BQcQI3' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId '9ZwGPHOW' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId '3usbtvU2' \
    --namespace $AB_NAMESPACE \
    --userId 'hW3tfc6Y' \
    --body '{"name": "vZXax9xP"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'U9TOykcW' \
    --namespace $AB_NAMESPACE \
    --userId 'PgYntGhJ' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'gxhrCdjq' \
    --namespace $AB_NAMESPACE \
    --shareCode 'oQLskElt' \
    --userId 's1a7s2hj' \
    --body '{"contentType": "5vHn4aCH", "customAttributes": {"l4sBosGG": {}, "nAlbBgIv": {}, "CwS1uAk6": {}}, "fileExtension": "WKQMBZ3I", "name": "eY1J0NuF", "payload": "I99qrhGY", "preview": "uUr7MS6C", "previewMetadata": {"previewContentType": "YA3vHMHr", "previewFileExtension": "dcxRzMnb"}, "shareCode": "j2EcTzOW", "subType": "6cBjTh1v", "tags": ["4US4NPNn", "V0MmmGk0", "StBM2yKC"], "type": "kMm98t7h", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId '880CpbWl' \
    --contentId 'jopqEQ5U' \
    --namespace $AB_NAMESPACE \
    --userId '4cCIyXm4' \
    --body '{"contentType": "ABgDUcpJ", "customAttributes": {"8dHXbvHI": {}, "wZcnlSd2": {}, "sDLSAz8G": {}}, "fileExtension": "LIBSs2y2", "name": "yf1SbocP", "payload": "ZI1ujnbH", "preview": "2yLaelQl", "previewMetadata": {"previewContentType": "AHkQJKvs", "previewFileExtension": "SYl7Sb3l"}, "shareCode": "sIip0Qvx", "subType": "4KST6YqE", "tags": ["mgbRb9eD", "uw28NOGX", "JAUmkfut"], "type": "V82JN3fM", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'W9q531KB' \
    --namespace $AB_NAMESPACE \
    --shareCode 'Elf0lVdk' \
    --userId 'MaICOQm4' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'zcZHTbSf' \
    --contentId 'l4LuDpnU' \
    --namespace $AB_NAMESPACE \
    --userId '0w4uFMgT' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId '17uhiIg4' \
    --limit '90' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'TZDASP58' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'bKjMec4w' \
    --namespace $AB_NAMESPACE \
    --userId 'vnu80LtA' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'emCHvwGz' \
    --limit '71' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'rux8vz2k' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'MjQzVZEQ' \
    --namespace $AB_NAMESPACE \
    --userId 'tNQkuu7v' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'RNn57jQG' \
    --namespace $AB_NAMESPACE \
    --userId 'SMoaSdvc' \
    --body '{"contents": ["gvNftYl9", "bng7unc3", "8wkAShQ6"], "name": "z999uVsz"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'xjrwXwA1' \
    --namespace $AB_NAMESPACE \
    --userId '4YG2V7ul' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'AS30Rv33' \
    --namespace $AB_NAMESPACE \
    --userId 'GQYn0svd' \
    --limit '34' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId '8SlirOw9' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'FMst4VA8' \
    --namespace $AB_NAMESPACE \
    --creator '1qK8AlJR' \
    --ishidden '60k1KROE' \
    --isofficial 'kcHzFzos' \
    --limit '3' \
    --name 'IlTcFkPF' \
    --offset '0' \
    --orderby '9HMnYwii' \
    --sortby 'DBajYORX' \
    --subtype '0J2Ldysx' \
    --tags '["Ug64aoCe", "gv0PsZS1", "AhxOozdS"]' \
    --type 'j1iQTT6t' \
    --userId 'MA0hxUSk' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'luJPZB5o' \
    --ishidden 'KS05emnJ' \
    --isofficial 'JNHMZbGD' \
    --limit '50' \
    --name 'Ci3KI3ex' \
    --offset '33' \
    --orderby 'bS5iZURW' \
    --sortby 'VBn1dkzZ' \
    --subtype 'k677hF83' \
    --tags '["XA2GC6mN", "Ytsi2KOn", "BMkUiBrR"]' \
    --type 'H6TGGPjD' \
    --userId 'YPglUKeB' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["9RN2lMzi", "VAYmYnht", "p0W8CqAY"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '98' \
    --name 'ZVRWOq1q' \
    --offset '100' \
    --orderby 'TIozd1WN' \
    --sortby 'Yll0EBeR' \
    --subtype '9bGxnSl3' \
    --tags '["hE9iYqKk", "tgXTb94g", "Eu9eUYQg"]' \
    --type 'FUV2vwap' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["DICmsEdC", "nrJVqqAk", "S4KUR5F3"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'QCRGOgXy' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'uOE52bPY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'q8Ywg1eG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'SeKUjVgW' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'JZbePrlx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '73' \
    --orderby 'L6rBZe2J' \
    --sortby 'DoJB5puC' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'MFDRktYG' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'Kl8Chbt0' \
    --limit '25' \
    --name 'SCXsNR9Y' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'uxs34vxO' \
    --body '{"name": "pcZrnuEy"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'zDqO6est' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'VFlrvOmz' \
    --namespace $AB_NAMESPACE \
    --userId '8ufe3F9r' \
    --body '{"name": "82FYHksO"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'lYa70djk' \
    --namespace $AB_NAMESPACE \
    --userId 'MZC4DVyT' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId '9y6lkXC4' \
    --namespace $AB_NAMESPACE \
    --userId 'ey2L8svl' \
    --body '{"contentType": "r9z48sIs", "customAttributes": {"OEDda9va": {}, "i0sIU2uX": {}, "H7WN1kiD": {}}, "fileExtension": "fQPpWMEe", "name": "SiyZzpXz", "preview": "U6IrJR45", "previewMetadata": {"previewContentType": "lTimXxHN", "previewFileExtension": "wmDZ0xOO"}, "subType": "FG1rh09v", "tags": ["ERYjGNgS", "Fe60WDiP", "OKZKC63M"], "type": "qezXum55"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'qlBkexO4' \
    --namespace $AB_NAMESPACE \
    --shareCode 'qEayEiem' \
    --userId 'oxadNnmO' \
    --body '{"contentType": "ZMO9zT2G", "customAttributes": {"Mj4Lnhe0": {}, "CuCs48pV": {}, "TGBeHJPB": {}}, "fileExtension": "nPv3TXq7", "name": "W27683uu", "payload": "apCbrERQ", "preview": "yRm4r0mw", "previewMetadata": {"previewContentType": "hsVZpzHh", "previewFileExtension": "QjeM11cA"}, "subType": "kRpu7AJR", "tags": ["BHsHYNJO", "aLuq8vle", "ehrHKVWy"], "type": "WmecGFZ6", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'gon2CThn' \
    --contentId 'Tq8fM50X' \
    --namespace $AB_NAMESPACE \
    --userId 'YfbkyCof' \
    --body '{"contentType": "mPwp4FjN", "customAttributes": {"lvjtVcAk": {}, "HJbaaa4M": {}, "yjACe0Lh": {}}, "fileExtension": "pCEC1PaA", "name": "x4szpX9v", "payload": "idjQh8SD", "preview": "xId8bGMF", "previewMetadata": {"previewContentType": "2i0ZWxMc", "previewFileExtension": "W97XgfYu"}, "subType": "oxMaQqmr", "tags": ["aw1vYu1U", "rexskBLM", "uhrpWyH0"], "type": "v1ArM35g", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId 'xpIpdeFH' \
    --namespace $AB_NAMESPACE \
    --shareCode 't8Cu0NJV' \
    --userId 'lWtSmrWu' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'c8J1vOWX' \
    --contentId 'EulOynUs' \
    --namespace $AB_NAMESPACE \
    --userId 'fbvzfaE1' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId '1jqNFwR5' \
    --contentId 'F5zaQAgN' \
    --namespace $AB_NAMESPACE \
    --userId 'jERccjoY' \
    --body '{"shareCode": "T0W7tbgB"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId '1o1IdJAO' \
    --limit '55' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'QJdRXj2K' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'kogos3bd' \
    --namespace $AB_NAMESPACE \
    --userId 'pHOzTFQf' \
    --body '{"screenshots": [{"description": "Xc8uetPo", "screenshotId": "6i6uorMd"}, {"description": "euNJKZUD", "screenshotId": "IVa4nnGb"}, {"description": "wnycEE0n", "screenshotId": "DsGiHKPs"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'SjRap55R' \
    --namespace $AB_NAMESPACE \
    --userId 'cpgUVDvo' \
    --body '{"screenshots": [{"contentType": "J2v7eMmi", "description": "Ud4a0BAQ", "fileExtension": "pjp"}, {"contentType": "fpeDxIP9", "description": "rgEFyxBu", "fileExtension": "pjp"}, {"contentType": "rndOlmxF", "description": "RYkdnaC4", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'VECG5DQF' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'ZzORPGli' \
    --userId 'SGpy1h7A' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'glyI8MUe' \
    --body '{"followStatus": false}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'Sn7z4te4' \
    --limit '65' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'r7qBXurR' \
    --limit '75' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'ZmNxQhVy' \
    --limit '10' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'eo4b0Wt0' \
    --body '{"contents": ["nidamCby", "zYSLUPD2", "uVHKFTpJ"], "name": "u71m0i6Y"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'QolVIx1G' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'hCxC9vjI' \
    --namespace $AB_NAMESPACE \
    --userId 'eScNzCze' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'FIcCaE8C' \
    --namespace $AB_NAMESPACE \
    --userId 'qlHrLMft' \
    --body '{"contents": ["1piGKlnV", "7HrK13eM", "5ypDkl20"], "name": "gkRk30od"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'zfj2CKWu' \
    --namespace $AB_NAMESPACE \
    --userId 'ISm1Jt7d' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId '8svVTDiq' \
    --namespace $AB_NAMESPACE \
    --userId 'V58dT8nx' \
    --limit '46' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'vQJLQTAI' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'MdPFKAkk' \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --name 'goew0leZ' \
    --offset '99' \
    --sortBy 'JgGEAptq' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'sw2UUclP' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "N73odA4f", "customAttributes": {"rt4Wfe5X": {}, "EPyDZUTj": {}, "lOmYIOgl": {}}, "fileExtension": "12No1aZC", "name": "PTghvJIW", "shareCode": "kn6gIKA5", "subType": "Qw0tU1XK", "tags": ["UqJomW26", "JnTKDIlo", "MMRnrbyr"], "type": "OY7XMNfz"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId '9oRJuYI3' \
    --contentId 'nG8UFtEY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'yti4Lx4C' \
    --contentId 'm2WzAWfL' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"Raw5jt04": {}, "qfMTnppz": {}, "JNxzewEg": {}}, "name": "IF2gPPu4", "shareCode": "bwFiqaJ3", "subType": "42lJCL2h", "tags": ["94lVkFup", "Loo6EioP", "WJ345VzG"], "type": "CiwJVpY2"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'm7V8WGJM' \
    --contentId 'fF5oGzsQ' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "YWNt7ewU", "fileLocation": "SVfRnu9y"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminUpdateOfficialContentFileLocation' test.out

#- 107 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'FkgT1CaP' \
    --contentId '6OSFgbPt' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "0bov7cLY", "fileExtension": "mGpKZGTJ"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 108 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 108 'AdminGetConfigs' test.out

#- 109 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key '4Kp2gi7n' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "Ik5I8Wat"}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateConfig' test.out

#- 110 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '5' \
    --name '65N8Bzyk' \
    --offset '22' \
    --sortBy 'ZeBrR1YR' \
    --subType 'AoRn2sUC' \
    --tags '["6FhOIStS", "GK9iPT56", "TnO8nZUv"]' \
    --type 'EeiJb1Vy' \
    > test.out 2>&1
eval_tap $? 110 'AdminListContentV2' test.out

#- 111 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["AuuYT7pv", "sxKBooqq", "iKvBpj7o"]}' \
    > test.out 2>&1
eval_tap $? 111 'AdminBulkGetContentByIDsV2' test.out

#- 112 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["UZykjtuw", "1eRBDTEq", "TNnxLcUa"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminGetContentBulkByShareCodesV2' test.out

#- 113 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'IPMjQQsM' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentByShareCodeV2' test.out

#- 114 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId '2v64WEq5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByContentIDV2' test.out

#- 115 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'kE5bn0LI' \
    --namespace $AB_NAMESPACE \
    --versionId 'npMWP07j' \
    > test.out 2>&1
eval_tap $? 115 'RollbackContentVersionV2' test.out

#- 116 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'oSRkni2g' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "z9EU55zA", "screenshotId": "40LUpL2b"}, {"description": "fVfGFeFp", "screenshotId": "jHCE6k4M"}, {"description": "PObHi9dt", "screenshotId": "NKa5t8F0"}]}' \
    > test.out 2>&1
eval_tap $? 116 'AdminUpdateScreenshotsV2' test.out

#- 117 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 'vubWkr9w' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "MTcPXriG", "description": "r1C6FdnY", "fileExtension": "jpg"}, {"contentType": "EQ2sVV28", "description": "x3Gc6adb", "fileExtension": "jpg"}, {"contentType": "VWrWwUO3", "description": "aYoIGKH0", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUploadContentScreenshotV2' test.out

#- 118 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'XmLh5ov9' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'Yig7dwE4' \
    > test.out 2>&1
eval_tap $? 118 'AdminDeleteContentScreenshotV2' test.out

#- 119 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'gwURDxtW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'ListContentVersionsV2' test.out

#- 120 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'OYBsIWLI' \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetOfficialGroupContentsV2' test.out

#- 121 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '38' \
    --sortBy 'rT2UdrKQ' \
    --status 'DcyUOkKR' \
    > test.out 2>&1
eval_tap $? 121 'AdminListStagingContents' test.out

#- 122 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId 'S5cflMfV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetStagingContentByID' test.out

#- 123 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId 'Kcbg6GDS' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": false, "note": "1LKNdnSF"}' \
    > test.out 2>&1
eval_tap $? 123 'AdminApproveStagingContent' test.out

#- 124 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'CYwWbFQU' \
    --namespace $AB_NAMESPACE \
    --shareCode 'AN2NMCp7' \
    --userId '39bTpLhl' \
    --body '{"customAttributes": {"w9CtqhfE": {}, "uNc5yN0H": {}, "FLM0NweB": {}}, "name": "4oOjqkji", "shareCode": "kYPkATR5", "subType": "HVtTvOP6", "tags": ["VwEedJB1", "uhPlNRis", "JPUoVR08"], "type": "0qhj8Irb"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateContentByShareCodeV2' test.out

#- 125 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'UjmcKeed' \
    --namespace $AB_NAMESPACE \
    --shareCode 'vulsSl8q' \
    --userId 'R8VeOplw' \
    > test.out 2>&1
eval_tap $? 125 'AdminDeleteContentByShareCodeV2' test.out

#- 126 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'XPE526NH' \
    --contentId '5AJymcZA' \
    --namespace $AB_NAMESPACE \
    --userId 'fAZw0myY' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteUserContentV2' test.out

#- 127 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'k4443Nko' \
    --contentId '5yPSufzP' \
    --namespace $AB_NAMESPACE \
    --userId 'w44gXOI5' \
    --body '{"customAttributes": {"flt12RVL": {}, "8Gfs18bz": {}, "5ydIOtyV": {}}, "name": "mNc18H8k", "shareCode": "yhvKkX3l", "subType": "wpmk2ICN", "tags": ["yXY5xN4u", "iVmwkFt7", "8kd2SUMe"], "type": "JhnbSj0s"}' \
    > test.out 2>&1
eval_tap $? 127 'AdminUpdateUserContentV2' test.out

#- 128 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'bawdFLWO' \
    --contentId 'iG4dxC51' \
    --namespace $AB_NAMESPACE \
    --userId 'DUXLAyIP' \
    --body '{"fileExtension": "W9FUX781", "fileLocation": "iusZsvK1"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentFileLocation' test.out

#- 129 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'wuQUs3rB' \
    --contentId '8MX3IaEX' \
    --namespace $AB_NAMESPACE \
    --userId 'xJOj5px9' \
    --body '{"contentType": "rEqwP1Qb", "fileExtension": "g67TkrtG"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminGenerateUserContentUploadURLV2' test.out

#- 130 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'DRGQS7Lt' \
    --limit '54' \
    --offset '62' \
    --sortBy '0NDG4eMS' \
    > test.out 2>&1
eval_tap $? 130 'AdminGetContentByUserIDV2' test.out

#- 131 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'HrrpEn5W' \
    --namespace $AB_NAMESPACE \
    --userId 'Qv3YiARw' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 131 'AdminUpdateContentHideStatusV2' test.out

#- 132 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'Bx1Qz88D' \
    --namespace $AB_NAMESPACE \
    --userId '3vhaeTmb' \
    --limit '50' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 132 'AdminGetUserGroupContentsV2' test.out

#- 133 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'RRsBbGDA' \
    --limit '61' \
    --offset '4' \
    --sortBy 'gvvEfTRt' \
    --status 'ZY8WaBLf' \
    > test.out 2>&1
eval_tap $? 133 'AdminListUserStagingContents' test.out

#- 134 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'StE36NMh' \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --name 'nxRO62HP' \
    --offset '61' \
    --sortBy 'XKpKEqpD' \
    > test.out 2>&1
eval_tap $? 134 'PublicGetContentByChannelIDV2' test.out

#- 135 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '99' \
    --name 'OC2TY1TN' \
    --offset '50' \
    --sortBy 'newKfn8P' \
    --subType 'pVOqCTbU' \
    --tags '["6uGiJVe5", "BqW6InvH", "VS9lKBGZ"]' \
    --type 'BHkUregV' \
    > test.out 2>&1
eval_tap $? 135 'PublicListContentV2' test.out

#- 136 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["b6oiv1yT", "yoysrBUR", "EjjShGOf"]}' \
    > test.out 2>&1
eval_tap $? 136 'PublicBulkGetContentByIDV2' test.out

#- 137 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["QaKD59GG", "9RKCHVVn", "WV117RpX"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicGetContentBulkByShareCodesV2' test.out

#- 138 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'uFZgRjCW' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentByShareCodeV2' test.out

#- 139 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'uShgO5Py' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByIDV2' test.out

#- 140 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'AfhSOEVw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicAddDownloadCountV2' test.out

#- 141 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'RxGrK8mM' \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '26' \
    --sortBy 'Ft4ZN37h' \
    --userId 'HsNUfDjx' \
    > test.out 2>&1
eval_tap $? 141 'PublicListContentDownloaderV2' test.out

#- 142 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId '5WWT0fZo' \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '8' \
    --sortBy 'sXLbxlMi' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentLikeV2' test.out

#- 143 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId 'ID1dILLm' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateContentLikeStatusV2' test.out

#- 144 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'lDl23MzH' \
    --namespace $AB_NAMESPACE \
    --userId 'yeiABRcl' \
    --body '{"contentType": "c6cA9wU4", "customAttributes": {"52RQCDkn": {}, "M9UGf5cQ": {}, "hY7J07FI": {}}, "fileExtension": "K39var1W", "name": "vYpPaeaX", "subType": "E2ERhXx2", "tags": ["il4Cg2wn", "RFczBrGH", "8OB1jd19"], "type": "ds2QtvFW"}' \
    > test.out 2>&1
eval_tap $? 144 'PublicCreateContentV2' test.out

#- 145 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'DneTV5Pu' \
    --namespace $AB_NAMESPACE \
    --shareCode 'nXg0Uia4' \
    --userId 'knqP37GK' \
    --body '{"customAttributes": {"KCBDUBFE": {}, "kppyleYv": {}, "VJPl7d5U": {}}, "name": "l0Zq0H8b", "subType": "aIapvxBp", "tags": ["T2ON0CwQ", "uNTNnHrN", "IKP9Zsy5"], "type": "dWEWlLF8"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicUpdateContentByShareCodeV2' test.out

#- 146 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'c16Arg3p' \
    --namespace $AB_NAMESPACE \
    --shareCode 'okM9UdjG' \
    --userId 'yKJKr3xT' \
    > test.out 2>&1
eval_tap $? 146 'PublicDeleteContentByShareCodeV2' test.out

#- 147 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'cgbrp365' \
    --contentId 'fv7BJxKO' \
    --namespace $AB_NAMESPACE \
    --userId 'U2g6f93p' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentV2' test.out

#- 148 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'PHpni68y' \
    --contentId 'qvFDL5UF' \
    --namespace $AB_NAMESPACE \
    --userId '9QMhA82r' \
    --body '{"customAttributes": {"wmVcLJpx": {}, "oaBtQTlC": {}, "6QBhjbu7": {}}, "name": "Ax2hXPJ2", "subType": "e4LcZDZS", "tags": ["dofz7fed", "lkLeEOwb", "DsIPWaAw"], "type": "MeRGfafR"}' \
    > test.out 2>&1
eval_tap $? 148 'PublicUpdateContentV2' test.out

#- 149 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'jdSs05cJ' \
    --contentId 'FOPKHMY6' \
    --namespace $AB_NAMESPACE \
    --userId 'btV02SoE' \
    --body '{"fileExtension": "0xHGUQLA", "fileLocation": "VwSHS7u9"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentFileLocation' test.out

#- 150 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'ihn6g3Ms' \
    --contentId 'T1arQSNF' \
    --namespace $AB_NAMESPACE \
    --userId '1Al0fwQw' \
    --body '{"shareCode": "rH4LAe82"}' \
    > test.out 2>&1
eval_tap $? 150 'UpdateContentShareCodeV2' test.out

#- 151 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'L3DMOwx2' \
    --contentId 'brLw7A9P' \
    --namespace $AB_NAMESPACE \
    --userId '3cyEvSZt' \
    --body '{"contentType": "PzJPRIVE", "fileExtension": "ELbDLoaN"}' \
    > test.out 2>&1
eval_tap $? 151 'PublicGenerateContentUploadURLV2' test.out

#- 152 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'wbH4m6MR' \
    --limit '42' \
    --offset '100' \
    --sortBy 'R4azC8vt' \
    > test.out 2>&1
eval_tap $? 152 'PublicGetContentByUserIDV2' test.out

#- 153 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'm9VQh1Pd' \
    --namespace $AB_NAMESPACE \
    --userId 'f3ou2oJZ' \
    --body '{"screenshots": [{"description": "nDn3wKwG", "screenshotId": "V1Ab6oIQ"}, {"description": "LNkWbxqp", "screenshotId": "3mL3zFhQ"}, {"description": "8dODRhcz", "screenshotId": "juQrwQOI"}]}' \
    > test.out 2>&1
eval_tap $? 153 'UpdateScreenshotsV2' test.out

#- 154 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'xHldN3Qy' \
    --namespace $AB_NAMESPACE \
    --userId 'af0cFfdD' \
    --body '{"screenshots": [{"contentType": "nm0RmQZj", "description": "ECUjfpH9", "fileExtension": "jpg"}, {"contentType": "KVD1b027", "description": "LeDI14eE", "fileExtension": "jpg"}, {"contentType": "W9tkKhUI", "description": "3yM3IcoV", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UploadContentScreenshotV2' test.out

#- 155 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'Eg7Fv94M' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'I6V4L77d' \
    --userId 't7MBDXx7' \
    > test.out 2>&1
eval_tap $? 155 'DeleteContentScreenshotV2' test.out

#- 156 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId '1PgFirED' \
    --namespace $AB_NAMESPACE \
    --userId 'qfQjSH3Z' \
    --limit '45' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 156 'PublicGetGroupContentsV2' test.out

#- 157 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'VsGxOwes' \
    --limit '69' \
    --offset '45' \
    --sortBy 'CbasWCSR' \
    --status 'UI0BCqBT' \
    > test.out 2>&1
eval_tap $? 157 'ListUserStagingContents' test.out

#- 158 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId 'KyvI2vY9' \
    --namespace $AB_NAMESPACE \
    --userId 'bWDwi33F' \
    > test.out 2>&1
eval_tap $? 158 'GetUserStagingContentByID' test.out

#- 159 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId 'lwqvu6Bf' \
    --namespace $AB_NAMESPACE \
    --userId 'XciSWImh' \
    --body '{"fileExtension": "7GIeTTIE", "fileLocation": "LOGiz1hq"}' \
    > test.out 2>&1
eval_tap $? 159 'UpdateStagingContent' test.out

#- 160 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId 'xj6Ro0Z8' \
    --namespace $AB_NAMESPACE \
    --userId '485vObW9' \
    > test.out 2>&1
eval_tap $? 160 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE