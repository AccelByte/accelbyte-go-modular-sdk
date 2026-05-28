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
    --limit '53' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "rEeI4Gmp", "name": "SLmkiNBx"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'uO8Tj8DP' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "bPHVf07c"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'YaQm20ED' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'bLqbWuCZ' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "7re4bKdE", "customAttributes": {"UgTthTFD": {}, "VBagfZmW": {}, "33xOTjTQ": {}}, "fileExtension": "Ghrz5cFi", "name": "0hWXvgb1", "preview": "cutgGizT", "previewMetadata": {"previewContentType": "xC5BukKf", "previewFileExtension": "Fww7TE2q"}, "shareCode": "TNLb9Gp6", "subType": "gxfx9IaK", "tags": ["zuvpvvkW", "kZNOae2U", "2XmMNqNi"], "type": "mmEQo13p"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'lkIWVRic' \
    --contentId 'wY2wKLqa' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "jS4VMkWu", "customAttributes": {"jklx3xFu": {}, "ImlsSadL": {}, "qKil9UKs": {}}, "fileExtension": "zZQ4ABLk", "name": "GqRLM0Ce", "payload": "w7hGL542", "preview": "iAcOPpMo", "previewMetadata": {"previewContentType": "4bliwltX", "previewFileExtension": "gGTcdgjP"}, "shareCode": "o0ZvUtLB", "subType": "GMZepDlg", "tags": ["THGCXtC3", "nhOegIDw", "Xp05sPUm"], "type": "PABjT8Aa", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'O43ZIm0c' \
    --namespace $AB_NAMESPACE \
    --creator 'm0kEAzeR' \
    --ishidden '1l79duDz' \
    --isofficial 'u9jbNyx9' \
    --limit '87' \
    --name 'LIWEB0ng' \
    --offset '52' \
    --orderby 'G1v0HieA' \
    --sortby 'JJhd2aTH' \
    --subtype 'bi50OgSM' \
    --tags '["hcHsmt3Q", "j31M5lRf", "oS1GMBgC"]' \
    --type 'EnPTE8uv' \
    --userId 'WbE11YSs' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId '2eN6hlQR' \
    --contentId 'qiqSi3qa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["1piKm1Ek", "Gj6nnwzq", "47wI81xp"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'N0YlqhRX' \
    --ishidden 'BDxgbZU6' \
    --isofficial 'cpWQ1VQ3' \
    --limit '41' \
    --name '8znHBPNS' \
    --offset '67' \
    --orderby 'M8urrZmF' \
    --sortby 'PjhX8zIk' \
    --subtype 'ltiHpcee' \
    --tags '["h677nxtE", "c1zsv3u4", "vq2xLWjm"]' \
    --type 'WYkg4s4g' \
    --userId 'fuilo1HT' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["5K33ycJm", "S9nnWX7W", "ys09tYB1"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'kKbYbILG' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'wYP0hQLo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'hMY83txX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'j0rAGD0N' \
    --namespace $AB_NAMESPACE \
    --versionId 'TIHtYI0G' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'euUV25zs' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "SqGH2w2s", "screenshotId": "HM4qvzdj"}, {"description": "6mIgA3LD", "screenshotId": "drJdPRYv"}, {"description": "a8afuodJ", "screenshotId": "3Fjfjbsw"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'XDelI2bK' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "WBvNfOag", "description": "gm7v72FR", "fileExtension": "jpg"}, {"contentType": "gIKBYedM", "description": "8lUPYsXD", "fileExtension": "bmp"}, {"contentType": "uYzKerXC", "description": "Rz5Oz7Yl", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'euGUNCZa' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'hx3ALW3m' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId '0f0jD2iK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["xsexVsAQ", "QII69mR3", "uufiGrXp"], "name": "PHZTb5wV"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'OENyzM5R' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'bs9dYtCe' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["f2iNUfGC", "mGL5WRDQ", "Hi9013jx"], "name": "w1EVsvQ9"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'YoVwQYWl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'Tu4m3cI9' \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "j3NVAMQZ"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'a79T28Bx' \
    --body '{"tag": "rkwSripW"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'QKDnKRFb' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["kmCr7Cai", "A3V3yNM4", "zKJ6FWIY"], "type": "mlSiIB78"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'opoHH2Nl' \
    --body '{"subtype": ["LAOqJlCO", "Dy4fwwtl", "0lRXh7pr"], "type": "AIl3npTS"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'aXOWgBj0' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId '23mfpVTh' \
    --limit '96' \
    --name 'LzxxvwA7' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'CQwd68n9' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'pHC1dQ3p' \
    --namespace $AB_NAMESPACE \
    --userId '36WMGbb0' \
    --body '{"name": "3bs0LEIX"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'mCaZ4FNr' \
    --namespace $AB_NAMESPACE \
    --userId 'SRFxpB9O' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'M28qGppb' \
    --namespace $AB_NAMESPACE \
    --shareCode 'pOxvNVzx' \
    --userId 'nWBTtFVy' \
    --body '{"contentType": "z1wE7hou", "customAttributes": {"zstAilYS": {}, "e41TtZez": {}, "GzBPuKWJ": {}}, "fileExtension": "3J0OJifW", "name": "sBolJa7K", "payload": "KXcCuLk2", "preview": "P86p1sRF", "previewMetadata": {"previewContentType": "qIBsqZyP", "previewFileExtension": "SAuV4CwZ"}, "shareCode": "UEimStIB", "subType": "hOkWqv8U", "tags": ["HkToppP8", "EYgeWe7Y", "JbsV1dGB"], "type": "iVSeA9MZ", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'GUhGsg0D' \
    --contentId 'fiBKQebj' \
    --namespace $AB_NAMESPACE \
    --userId '6eASycNT' \
    --body '{"contentType": "LyoMR5e4", "customAttributes": {"3EC2mZsm": {}, "uvGHObmO": {}, "WTYp5X2C": {}}, "fileExtension": "5UgCWMaR", "name": "XFAK5KGN", "payload": "t0YBWl5g", "preview": "vDVqKWbv", "previewMetadata": {"previewContentType": "gOYiijof", "previewFileExtension": "uNrwHRWU"}, "shareCode": "KUcnvz9j", "subType": "u8nimylx", "tags": ["TMcAr2O9", "SfGHMSCZ", "t8HdMmrx"], "type": "upKJdwnN", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'vWE7VFpm' \
    --namespace $AB_NAMESPACE \
    --shareCode 'oveNHpW8' \
    --userId 'tI843E3j' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'BztA7gnr' \
    --contentId 'SZdch7X0' \
    --namespace $AB_NAMESPACE \
    --userId 'nEyWT548' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'I6b4Mu4M' \
    --limit '95' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId '8xkWI3jV' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'QfLXnKmh' \
    --namespace $AB_NAMESPACE \
    --userId 'XiWWqL9S' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId '9Fy6sd7w' \
    --limit '7' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'oXA5x4hF' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'aBTTaAre' \
    --namespace $AB_NAMESPACE \
    --userId 'zJSseGaV' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'yxLZUU0p' \
    --namespace $AB_NAMESPACE \
    --userId 'EjnmYHiw' \
    --body '{"contents": ["WXNzewaQ", "8PNVVzsl", "pONTPq9y"], "name": "TWpNuWlS"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'd7iYG5GQ' \
    --namespace $AB_NAMESPACE \
    --userId '8pmMCRgw' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId '3qfstatY' \
    --namespace $AB_NAMESPACE \
    --userId 'FnPbpFEJ' \
    --limit '63' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId '6ocvlYDi' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'jukpxVhh' \
    --namespace $AB_NAMESPACE \
    --creator 'dSHMoSBL' \
    --ishidden 'N5N7y0Is' \
    --isofficial 'I5yPbXQa' \
    --limit '53' \
    --name 'zyHx3P8P' \
    --offset '22' \
    --orderby '2Je0kkeZ' \
    --sortby 'EHzJrDla' \
    --subtype 'oPjPzj0b' \
    --tags '["pKTTHMEM", "2877mgYn", "o7WbPpF2"]' \
    --type 'a1BvbdFu' \
    --userId 'u3uFqtb5' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'wVylRLF1' \
    --ishidden 'cJzsvLPm' \
    --isofficial 'NxEItkg7' \
    --limit '22' \
    --name '3HVxgpNb' \
    --offset '74' \
    --orderby 'ik1VZhLW' \
    --sortby 'NFVJQeoA' \
    --subtype 'KqUQVvcc' \
    --tags '["9NWIIczA", "PAh9ZDBP", "FSX0xAo6"]' \
    --type 'VnuvlkJB' \
    --userId 'ceW8GbAq' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["41KN86K6", "CK1xD2IK", "wrwekg5s"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '96' \
    --name 'uAYrwsTl' \
    --offset '26' \
    --orderby 'uiRxkTmJ' \
    --sortby 'EKILsOWu' \
    --subtype 'LQXg7o0B' \
    --tags '["XyP9BHIu", "UuOwCaBS", "QGE1WNyD"]' \
    --type 'o9GiX75m' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["js8QJ4sY", "9MrJ8kLd", "BMkUnkJB"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'YWmzlQfr' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'iNvjteNm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'GaJf6S53' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'Q2dUWJeX' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'oA5SB0g3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '90' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '44' \
    --orderby 'KzLPdEHj' \
    --sortby 'sF0ESnaA' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'ShTB1isE' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'A41CcNl3' \
    --limit '76' \
    --name 'acqXoHwR' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'fSPuungw' \
    --body '{"name": "8vpcgsuR"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'mlo5Ltd7' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'qFqcLb9g' \
    --namespace $AB_NAMESPACE \
    --userId 'O5DP9LPJ' \
    --body '{"name": "N1Eur27m"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'rWofJw5P' \
    --namespace $AB_NAMESPACE \
    --userId 'fgLDvGDu' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'dxz2eeDj' \
    --namespace $AB_NAMESPACE \
    --userId '1aElr6Me' \
    --body '{"contentType": "lU1728GA", "customAttributes": {"B2R9SKZl": {}, "INZAmhZq": {}, "7sqD1tP1": {}}, "fileExtension": "1BDCtp0S", "name": "djcA3kWV", "preview": "aAEqHxrn", "previewMetadata": {"previewContentType": "rhDmW9fX", "previewFileExtension": "OeI153ar"}, "subType": "0JjN9zEC", "tags": ["I9BsFLiV", "KzxkMIqF", "kut7t9yw"], "type": "C0l8bDrN"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'tMbdhrIC' \
    --namespace $AB_NAMESPACE \
    --shareCode 'o4LlLyF7' \
    --userId 'ik3wiHmT' \
    --body '{"contentType": "BatiANXN", "customAttributes": {"q4zmKA4H": {}, "cCF5vfZB": {}, "D1BXVYoi": {}}, "fileExtension": "z130ZzXS", "name": "mMvi1eLZ", "payload": "tOnVvuo0", "preview": "2uBGUk8L", "previewMetadata": {"previewContentType": "t3mxoK4J", "previewFileExtension": "ivtKbIuI"}, "subType": "Umx2yUXP", "tags": ["Q3eiOyWv", "3yqo62gB", "zs7DtL9y"], "type": "MgoGbyNc", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'dByUiieL' \
    --contentId '0kKF72SY' \
    --namespace $AB_NAMESPACE \
    --userId 'xiDsbNZq' \
    --body '{"contentType": "VxC8eWNd", "customAttributes": {"Iu2Wd8qq": {}, "h3BkZ2SG": {}, "f97qY9VY": {}}, "fileExtension": "FmMdKK2L", "name": "5JcdMAvR", "payload": "eC8UhZSR", "preview": "e9JpfZkM", "previewMetadata": {"previewContentType": "3QssDPTI", "previewFileExtension": "L6iBfEq7"}, "subType": "oz8LEr60", "tags": ["V6Gto7hS", "ehJOXqlc", "uZ5LgDlQ"], "type": "2dM6CSbL", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId 'YzGfZzTX' \
    --namespace $AB_NAMESPACE \
    --shareCode '05ummpuY' \
    --userId '3B7ZYd7O' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'idPPZVna' \
    --contentId 'Clsfi4Y4' \
    --namespace $AB_NAMESPACE \
    --userId '7MVK9xog' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'EVNLY7Cj' \
    --contentId 'XmTGY5PS' \
    --namespace $AB_NAMESPACE \
    --userId 'IIHiJWlA' \
    --body '{"shareCode": "NgOAxffO"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'yZBARUU6' \
    --limit '53' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'fmvGDbYR' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'XTr9fciG' \
    --namespace $AB_NAMESPACE \
    --userId 'kdJWibdm' \
    --body '{"screenshots": [{"description": "vXiPUrLJ", "screenshotId": "1f9gyJtH"}, {"description": "hZxUIw0q", "screenshotId": "SqbisEFw"}, {"description": "Mr2D8pHY", "screenshotId": "J8IQojJa"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'aSOqFVRL' \
    --namespace $AB_NAMESPACE \
    --userId 'Iu0GCOGI' \
    --body '{"screenshots": [{"contentType": "bwW3KAvi", "description": "RPlyuyiq", "fileExtension": "pjp"}, {"contentType": "f1coWBPZ", "description": "X1SgjEhm", "fileExtension": "jfif"}, {"contentType": "dSztZrhd", "description": "wVDpbuoy", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'e7Fq4faS' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'Gjz2RLSX' \
    --userId 'Vd61ESbQ' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'iOpmVASu' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'AxYLrocm' \
    --limit '49' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'MriFiPNX' \
    --limit '66' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'Q4NZgnak' \
    --limit '61' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'L1YfTYEN' \
    --body '{"contents": ["y6xSwnw8", "2njfurxz", "tQP0OGj9"], "name": "C4Rd2Vdb"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'wqX2jTFB' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'ItvFRVxI' \
    --namespace $AB_NAMESPACE \
    --userId 'YKERTuXh' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId '5x1zmvih' \
    --namespace $AB_NAMESPACE \
    --userId 'Rgs2DJZs' \
    --body '{"contents": ["Aj3erKN9", "wM0qxwIJ", "sixCLpc6"], "name": "rO1L5UCF"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'DvWmep4E' \
    --namespace $AB_NAMESPACE \
    --userId 'HP9mVboe' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'eWBl1Usp' \
    --namespace $AB_NAMESPACE \
    --userId '3f1jbpI0' \
    --limit '24' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId '0rZJlitw' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'OAnFnzpv' \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --name '0fTKZqEj' \
    --offset '35' \
    --sortBy 'n8lsCPMW' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'ef6Ox9KD' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "wi8RCwZi", "customAttributes": {"3Njv9pzH": {}, "6oCU48tR": {}, "ZjCDFY6I": {}}, "fileExtension": "Luj1aZK7", "name": "GEgBqwtC", "shareCode": "skqWsTJN", "subType": "91iKgb7E", "tags": ["jp3fq8z2", "OcxNXPo8", "4FRaVHe7"], "type": "5qR7a7MY"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'OZNMVXSM' \
    --contentId 'V3AVv9d4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'nvq2sdui' \
    --contentId 'f50JkZ6M' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"EiJ9zLg5": {}, "E6PoS1zt": {}, "Z4e0DIqz": {}}, "name": "cIUqvvf4", "shareCode": "CUIYZIuA", "subType": "amu6JgeR", "tags": ["KMiVoDuc", "QfRa3w5h", "xmN6QYHG"], "type": "aLdkBSK3"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminCopyContent
samples/cli/sample-apps Ugc adminCopyContent \
    --channelId 'K4W1xIHQ' \
    --contentId 'jzRgH5nQ' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"5eBJDqXX": {}, "0KuOfDsP": {}, "wJfqVcHw": {}}, "name": "bqsh5xjK", "subType": "snAWXuJO", "tags": ["nzNUMA6G", "IeVNLGX1", "AWc5kqpH"], "targetChannelId": "0lwYCZOL", "type": "l9zSe895"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminCopyContent' test.out

#- 107 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'zlS3bQOe' \
    --contentId 'y4KQfzgc' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "TZ1nhoEk", "fileLocation": "i4Fxx2Aq"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminUpdateOfficialContentFileLocation' test.out

#- 108 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'vBVGx1zH' \
    --contentId 'DmBqshQg' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "6DoWCTqO", "fileExtension": "XcfWIWSl"}' \
    > test.out 2>&1
eval_tap $? 108 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 109 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 109 'AdminGetConfigs' test.out

#- 110 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key 'E2nBFpMi' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "aOGsAncs"}' \
    > test.out 2>&1
eval_tap $? 110 'AdminUpdateConfig' test.out

#- 111 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '25' \
    --name '0D0p5bYA' \
    --offset '92' \
    --sortBy 'BsLFkfaz' \
    --subType 'UbuyMYuu' \
    --tags '["NavKovw8", "JC9g4r5p", "FZ5Qrf4L"]' \
    --type 'cKgqyyPB' \
    > test.out 2>&1
eval_tap $? 111 'AdminListContentV2' test.out

#- 112 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["AVRuR9lG", "RNYedrVc", "oCP1adez"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminBulkGetContentByIDsV2' test.out

#- 113 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["mLtEo2Eo", "d2gGJhiw", "x8MY4eJO"]}' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentBulkByShareCodesV2' test.out

#- 114 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'azbMj4yj' \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByShareCodeV2' test.out

#- 115 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 'IyO5o7rd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'AdminGetContentByContentIDV2' test.out

#- 116 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'VkIFGSzQ' \
    --namespace $AB_NAMESPACE \
    --versionId 'e7Wfkq4m' \
    > test.out 2>&1
eval_tap $? 116 'RollbackContentVersionV2' test.out

#- 117 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId '3a14ED7r' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "nI3c4cPQ", "screenshotId": "hT18pw5u"}, {"description": "NYcuSCOQ", "screenshotId": "U58b5RyL"}, {"description": "a0Wcn911", "screenshotId": "cVrmv0wg"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateScreenshotsV2' test.out

#- 118 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId '8bzN3xZx' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "9rUBkUDO", "description": "haCCn8BG", "fileExtension": "jfif"}, {"contentType": "OtBmmVlh", "description": "oXJGcFvx", "fileExtension": "bmp"}, {"contentType": "fzqpGDnJ", "description": "vcdj5KdS", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 118 'AdminUploadContentScreenshotV2' test.out

#- 119 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'Od7BuaF6' \
    --namespace $AB_NAMESPACE \
    --screenshotId '6tDzMJGc' \
    > test.out 2>&1
eval_tap $? 119 'AdminDeleteContentScreenshotV2' test.out

#- 120 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'BcDqz4nE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 120 'ListContentVersionsV2' test.out

#- 121 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'nMWmDWMc' \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 121 'AdminGetOfficialGroupContentsV2' test.out

#- 122 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '50' \
    --sortBy 'ZF41Rigj' \
    --status 'rTg95N8Z' \
    > test.out 2>&1
eval_tap $? 122 'AdminListStagingContents' test.out

#- 123 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId 'pqkM6fDB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminGetStagingContentByID' test.out

#- 124 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId 'cmM5wfGs' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": false, "note": "dH7vxEZx"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminApproveStagingContent' test.out

#- 125 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'OSA26hao' \
    --namespace $AB_NAMESPACE \
    --shareCode 'eFGjFMPK' \
    --userId '0TypjyR0' \
    --body '{"customAttributes": {"1z1pAYDc": {}, "lgrqCrqW": {}, "fPNh563s": {}}, "name": "OsIMMJcs", "shareCode": "VkE1G3fF", "subType": "uk2rw6Cq", "tags": ["j7lyejhM", "ZiJKl65c", "ckj2kxaP"], "type": "qK7q27D4"}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateContentByShareCodeV2' test.out

#- 126 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'SzDWNMVR' \
    --namespace $AB_NAMESPACE \
    --shareCode 'ztSg41Zx' \
    --userId 'URrvEj9t' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteContentByShareCodeV2' test.out

#- 127 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'o8NQM3s3' \
    --contentId 'g8HPxsIq' \
    --namespace $AB_NAMESPACE \
    --userId 'gU8hITyb' \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteUserContentV2' test.out

#- 128 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'Mvec8U9x' \
    --contentId 'F3hxgecC' \
    --namespace $AB_NAMESPACE \
    --userId 'CHo7AzZg' \
    --body '{"customAttributes": {"p2gYjZXy": {}, "aOw5C9wm": {}, "LEkeTQDW": {}}, "name": "St3RXmH5", "shareCode": "4DO4kPe1", "subType": "4FfeTrBs", "tags": ["r06Nlllv", "vg50XyIz", "leo9wqAF"], "type": "e4MqBfJl"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentV2' test.out

#- 129 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'MRnzOI8m' \
    --contentId '7y2EIVvk' \
    --namespace $AB_NAMESPACE \
    --userId 'MB5316Om' \
    --body '{"fileExtension": "MTKE2KSv", "fileLocation": "xQG4874q"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateUserContentFileLocation' test.out

#- 130 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'CzqcEkIR' \
    --contentId 'LSOxpfzw' \
    --namespace $AB_NAMESPACE \
    --userId 'ZSvKBav5' \
    --body '{"contentType": "J96n0knC", "fileExtension": "862UDPOF"}' \
    > test.out 2>&1
eval_tap $? 130 'AdminGenerateUserContentUploadURLV2' test.out

#- 131 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'h9F7PCv5' \
    --limit '24' \
    --offset '53' \
    --sortBy 'jFYoDZ35' \
    > test.out 2>&1
eval_tap $? 131 'AdminGetContentByUserIDV2' test.out

#- 132 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId '6DqCnzCy' \
    --namespace $AB_NAMESPACE \
    --userId 'swyqK05M' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 132 'AdminUpdateContentHideStatusV2' test.out

#- 133 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId '5cVzo0oL' \
    --namespace $AB_NAMESPACE \
    --userId 'wA9kTQRW' \
    --limit '16' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 133 'AdminGetUserGroupContentsV2' test.out

#- 134 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'TYIRwa1h' \
    --limit '21' \
    --offset '60' \
    --sortBy 'LiLv5pOu' \
    --status '8AfInT9w' \
    > test.out 2>&1
eval_tap $? 134 'AdminListUserStagingContents' test.out

#- 135 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'MbMrgJKu' \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --name 'vJ16mO2h' \
    --offset '20' \
    --sortBy 'WwUxyvHJ' \
    > test.out 2>&1
eval_tap $? 135 'PublicGetContentByChannelIDV2' test.out

#- 136 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '49' \
    --name 'Ghw4QmQ2' \
    --offset '51' \
    --sortBy 'sG0Lw5Cw' \
    --subType 'pBn2qowj' \
    --tags '["aaedDzg8", "NvCJE6Hc", "5W7iKCLJ"]' \
    --type 'a4f5BfI7' \
    > test.out 2>&1
eval_tap $? 136 'PublicListContentV2' test.out

#- 137 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["BddEOytR", "UjvC65b5", "9GJGpRfV"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicBulkGetContentByIDV2' test.out

#- 138 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["M0bXqtaf", "V8mQzpzF", "hjrVLPTc"]}' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentBulkByShareCodesV2' test.out

#- 139 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'PCDI6nbq' \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByShareCodeV2' test.out

#- 140 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'Pk6jJHWi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicGetContentByIDV2' test.out

#- 141 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'iD8o19dt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 141 'PublicAddDownloadCountV2' test.out

#- 142 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'zRztCapc' \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '50' \
    --sortBy 'JcyeSCOs' \
    --userId 'ICzj3dAa' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentDownloaderV2' test.out

#- 143 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'ETOhd99p' \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '76' \
    --sortBy 'xsgU8bgD' \
    > test.out 2>&1
eval_tap $? 143 'PublicListContentLikeV2' test.out

#- 144 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId '69gBw6t8' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateContentLikeStatusV2' test.out

#- 145 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'ABufEKmp' \
    --namespace $AB_NAMESPACE \
    --userId 'Kbf8y3uK' \
    --body '{"contentType": "CTZeSabE", "customAttributes": {"HdR4PilZ": {}, "7xA1VtcH": {}, "YsMYA12C": {}}, "fileExtension": "je9jtxBA", "name": "cVeD7do5", "subType": "pHLmcMad", "tags": ["pgwy7YpN", "XRSVBGy7", "opfwaW21"], "type": "3LNr46ha"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicCreateContentV2' test.out

#- 146 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'Nb3UGawy' \
    --namespace $AB_NAMESPACE \
    --shareCode 'BpX8mMT0' \
    --userId '9EQyjldR' \
    --body '{"customAttributes": {"FxAiQ29E": {}, "d4yR2roE": {}, "uyJmAlDQ": {}}, "name": "dlTst1Gm", "subType": "EINQEdta", "tags": ["cHJu0b8Y", "juqXhJZk", "3cqonEao"], "type": "lbkx5qh5"}' \
    > test.out 2>&1
eval_tap $? 146 'PublicUpdateContentByShareCodeV2' test.out

#- 147 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'jfSIgyhC' \
    --namespace $AB_NAMESPACE \
    --shareCode 'o96MaYbI' \
    --userId 'p2tRNc2Z' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentByShareCodeV2' test.out

#- 148 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'OJqpNJhy' \
    --contentId 'PIdcE4j0' \
    --namespace $AB_NAMESPACE \
    --userId 'lz6eSmqt' \
    > test.out 2>&1
eval_tap $? 148 'PublicDeleteContentV2' test.out

#- 149 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId '5CNBXOSk' \
    --contentId 'LtT2n1SK' \
    --namespace $AB_NAMESPACE \
    --userId 'LLL3G7Lo' \
    --body '{"customAttributes": {"TNoVcNMi": {}, "4i9WI8mt": {}, "6dCH8llz": {}}, "name": "reqxVkE8", "subType": "z5RsRliB", "tags": ["oSlHqqgl", "5Ip12qOe", "ioWwL9D2"], "type": "1wkRpvoV"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentV2' test.out

#- 150 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'cGj87ZiO' \
    --contentId 'kXqH3wfh' \
    --namespace $AB_NAMESPACE \
    --userId 'MNC8ws7u' \
    --body '{"fileExtension": "Bgn7guuF", "fileLocation": "5rBRZFk3"}' \
    > test.out 2>&1
eval_tap $? 150 'PublicUpdateContentFileLocation' test.out

#- 151 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'wXH2qnHc' \
    --contentId '9CyN7K3r' \
    --namespace $AB_NAMESPACE \
    --userId 'XqcVAPU6' \
    --body '{"shareCode": "paJ4CqOv"}' \
    > test.out 2>&1
eval_tap $? 151 'UpdateContentShareCodeV2' test.out

#- 152 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'NTj4eRvc' \
    --contentId 'XSwOs5df' \
    --namespace $AB_NAMESPACE \
    --userId 'JbeOCifY' \
    --body '{"contentType": "6N0dlCow", "fileExtension": "9vTXGNNF"}' \
    > test.out 2>&1
eval_tap $? 152 'PublicGenerateContentUploadURLV2' test.out

#- 153 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId '5sGsQ144' \
    --limit '54' \
    --offset '62' \
    --sortBy 'PbpFYSn8' \
    > test.out 2>&1
eval_tap $? 153 'PublicGetContentByUserIDV2' test.out

#- 154 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'bV0qiMPn' \
    --namespace $AB_NAMESPACE \
    --userId 'vxg8YiFG' \
    --body '{"screenshots": [{"description": "UqUmcRh9", "screenshotId": "OrWs0B5F"}, {"description": "GTm5jqAD", "screenshotId": "8gB62UXW"}, {"description": "Slj4Ju1D", "screenshotId": "XZvTx9wf"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UpdateScreenshotsV2' test.out

#- 155 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId '3x0pQEM5' \
    --namespace $AB_NAMESPACE \
    --userId 'ucSvQh54' \
    --body '{"screenshots": [{"contentType": "CjzkhCbe", "description": "piz7PJZw", "fileExtension": "jpeg"}, {"contentType": "R8mvB6mC", "description": "xE5Squ9p", "fileExtension": "jpeg"}, {"contentType": "B8PnG7uF", "description": "TaDwmJ6K", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 155 'UploadContentScreenshotV2' test.out

#- 156 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'ATtmvGiE' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'kPpQblQq' \
    --userId 'WrwsfZEC' \
    > test.out 2>&1
eval_tap $? 156 'DeleteContentScreenshotV2' test.out

#- 157 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'rQNDjwmE' \
    --namespace $AB_NAMESPACE \
    --userId 'C2RYtpiF' \
    --limit '77' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 157 'PublicGetGroupContentsV2' test.out

#- 158 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'YeA2JBey' \
    --limit '15' \
    --offset '55' \
    --sortBy 'X0YNK0wb' \
    --status 'kqJOavbs' \
    > test.out 2>&1
eval_tap $? 158 'ListUserStagingContents' test.out

#- 159 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId '6kFlPW4g' \
    --namespace $AB_NAMESPACE \
    --userId 'W9fL4WnV' \
    > test.out 2>&1
eval_tap $? 159 'GetUserStagingContentByID' test.out

#- 160 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId 'kekW7IMg' \
    --namespace $AB_NAMESPACE \
    --userId 'gbTXf28x' \
    --body '{"fileExtension": "3zHsBkOR", "fileLocation": "TQKySGPQ"}' \
    > test.out 2>&1
eval_tap $? 160 'UpdateStagingContent' test.out

#- 161 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId 't49KoplC' \
    --namespace $AB_NAMESPACE \
    --userId '5fTRC6nV' \
    > test.out 2>&1
eval_tap $? 161 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE