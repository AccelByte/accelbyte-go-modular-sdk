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
echo "1..93"

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
    --limit '11' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "IpWuSmg3", "name": "OAcJcU7T"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'F1wOaaaX' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "y5bD2cvN"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId '2Ub6WMCJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'TMj6Mgnb' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "JeIUWwuW", "customAttributes": {"MqkZXK1j": {}, "GHy0t94Y": {}, "BdsQPN44": {}}, "fileExtension": "Ypphrgxm", "name": "ksd2uylx", "preview": "9T2AsjSt", "previewMetadata": {"previewContentType": "M1ituPzx", "previewFileExtension": "sjDwfpwV"}, "shareCode": "WyelGb47", "subType": "FRYkYrXN", "tags": ["wG76qBRU", "ZQoRJdbR", "BT6WiVAJ"], "type": "XpMf0yKb"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId '93rQc6HR' \
    --contentId '2edJGRlm' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "FvVRiTYx", "customAttributes": {"UDTAcRJB": {}, "o7PSy9Mq": {}, "KtSIVEdW": {}}, "fileExtension": "gCZlmSXD", "name": "ztaXgheQ", "payload": "YoC7JvLx", "preview": "cmVJvdZ6", "previewMetadata": {"previewContentType": "UMm656Z9", "previewFileExtension": "ZzwHnnC5"}, "shareCode": "a1N13ams", "subType": "fEPB3SzD", "tags": ["zs2wSZVV", "h3o2XjPB", "7CWtJRAY"], "type": "rwte5I1V", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'wp9q4x0K' \
    --namespace $AB_NAMESPACE \
    --creator 'k7rKH7Ry' \
    --isofficial 'vVI88rGk' \
    --limit '58' \
    --name 'BOEAH6fQ' \
    --offset '80' \
    --orderby 'kIoCdnyH' \
    --sortby '3EAxGOdM' \
    --subtype 'ihBK264s' \
    --tags '["FiaylPnv", "i2NMsnji", "Uua9OZ9o"]' \
    --type '7rtj3aT1' \
    --userId 'rYaLS2fe' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'puHCYrny' \
    --contentId 'tYjujxqy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["ILKvGKZT", "kDDpjr6h", "1vDnkU5V"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'dXfJKiN6' \
    --isofficial '3xnETFLh' \
    --limit '17' \
    --name 'UIuIkv6H' \
    --offset '78' \
    --orderby 'CGXuyf3v' \
    --sortby 'efzy37uX' \
    --subtype 'mVjONlw1' \
    --tags '["QqawQjjm", "RMTl2Fln", "saTqb9Pm"]' \
    --type 'wmIQQjGP' \
    --userId 'PiOAOgdU' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["orxYTe6M", "4MvUaA2H", "33slhG0i"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode '6zTy6xb8' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId '93kOYUjr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'b4ZV1nP8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId '0RgHL3kF' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "3wOysbOA", "screenshotId": "8mDp6bUt"}, {"description": "GQ4Tdat8", "screenshotId": "pZzQArbO"}, {"description": "VIzYmKRx", "screenshotId": "kd2MPBuG"}]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateScreenshots' test.out

#- 20 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'KQn6RVWf' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "Dt3zMesI", "description": "4mDXhvqq", "fileExtension": "jpg"}, {"contentType": "rL09M49M", "description": "CTzpIkoN", "fileExtension": "jpg"}, {"contentType": "NrpNHD0E", "description": "LWwcZ42z", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUploadContentScreenshot' test.out

#- 21 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'rkLMgdc6' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'NACT74kH' \
    > test.out 2>&1
eval_tap $? 21 'AdminDeleteContentScreenshot' test.out

#- 22 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 22 'SingleAdminGetAllGroups' test.out

#- 23 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["FvGh32b7", "2oH8IQry", "HQkSdu33"], "name": "Q0cPfQn6"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateGroup' test.out

#- 24 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'e2P1GOSF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetGroup' test.out

#- 25 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'yXqcuxjr' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["QuNx3gPd", "iHp67iWU", "RRqyR8Ac"], "name": "kEiTodCv"}' \
    > test.out 2>&1
eval_tap $? 25 'SingleAdminUpdateGroup' test.out

#- 26 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'vhpcFcz5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminDeleteGroup' test.out

#- 27 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId '8sQsdtMi' \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminGetGroupContents' test.out

#- 28 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetTag' test.out

#- 29 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "GEJ08UTb"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminCreateTag' test.out

#- 30 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'UhuuySqB' \
    --body '{"tag": "Jtwqn723"}' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateTag' test.out

#- 31 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'jiflSMS1' \
    > test.out 2>&1
eval_tap $? 31 'AdminDeleteTag' test.out

#- 32 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 32 'AdminGetType' test.out

#- 33 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["rcmcmNAF", "N427iJMN", "yZ7wAsyF"], "type": "sUU9REiP"}' \
    > test.out 2>&1
eval_tap $? 33 'AdminCreateType' test.out

#- 34 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'd2psDaTv' \
    --body '{"subtype": ["3ro3fbYg", "HRadz29I", "FmvSIMdA"], "type": "8cTASGFc"}' \
    > test.out 2>&1
eval_tap $? 34 'AdminUpdateType' test.out

#- 35 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'H5v7XcyV' \
    > test.out 2>&1
eval_tap $? 35 'AdminDeleteType' test.out

#- 36 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'eXhCiMIu' \
    --limit '10' \
    --name 't3OkvY2V' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 36 'AdminGetChannel' test.out

#- 37 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'jCsNH0ZM' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteAllUserChannels' test.out

#- 38 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'lHETFeQm' \
    --namespace $AB_NAMESPACE \
    --userId 'A5X6HZai' \
    --body '{"name": "pUYa6aYn"}' \
    > test.out 2>&1
eval_tap $? 38 'AdminUpdateChannel' test.out

#- 39 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'Hd7XKm57' \
    --namespace $AB_NAMESPACE \
    --userId 'nqzTZwUw' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteChannel' test.out

#- 40 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'wOUKobNg' \
    --contentId 'vaUrIGQP' \
    --namespace $AB_NAMESPACE \
    --userId 'LTY0y4ik' \
    --body '{"contentType": "Z2dAeGYm", "customAttributes": {"tE0EMUh9": {}, "5AZNAtaU": {}, "7WiiqmRo": {}}, "fileExtension": "rQkSZP4W", "name": "7MPqmbvq", "payload": "4pqASEDg", "preview": "JnKrVNnx", "previewMetadata": {"previewContentType": "bM9LQ9UC", "previewFileExtension": "c81VAYy0"}, "shareCode": "185Nr7pK", "subType": "OwC89Jb8", "tags": ["llp0Fv7r", "cZFcfe7S", "HNExuGfw"], "type": "DvocQtVL", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateContentS3' test.out

#- 41 AdminUpdateContentDirect
eval_tap 0 41 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 42 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'ltd7NTfI' \
    --contentId 'MBWwuH2L' \
    --namespace $AB_NAMESPACE \
    --userId 'qkKTYJvo' \
    > test.out 2>&1
eval_tap $? 42 'AdminDeleteContent' test.out

#- 43 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'okEFLqfl' \
    --limit '51' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 43 'AdminGetContent' test.out

#- 44 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'VQpK2fHZ' \
    > test.out 2>&1
eval_tap $? 44 'AdminDeleteAllUserContents' test.out

#- 45 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId '0R2NPcNb' \
    --namespace $AB_NAMESPACE \
    --userId '88IdIq6r' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 45 'AdminHideUserContent' test.out

#- 46 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId '76Jwtgd0' \
    --limit '46' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetAllGroups' test.out

#- 47 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'KNvtxXZo' \
    > test.out 2>&1
eval_tap $? 47 'AdminDeleteAllUserGroup' test.out

#- 48 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'Fr3CO5m3' \
    --namespace $AB_NAMESPACE \
    --userId 'T0Q99Sbm' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetGroup' test.out

#- 49 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'qnNKDuLQ' \
    --namespace $AB_NAMESPACE \
    --userId 'TCpD6JgT' \
    --body '{"contents": ["xZxr88OM", "cSQsZh2Y", "1LVsV31i"], "name": "OCXnRUxn"}' \
    > test.out 2>&1
eval_tap $? 49 'AdminUpdateGroup' test.out

#- 50 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId '8ZXU6bBR' \
    --namespace $AB_NAMESPACE \
    --userId 'Yc15Ltin' \
    > test.out 2>&1
eval_tap $? 50 'AdminDeleteGroup' test.out

#- 51 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId '8L2GycCk' \
    --namespace $AB_NAMESPACE \
    --userId 'Beljj7OL' \
    --limit '77' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 51 'AdminGetGroupContents' test.out

#- 52 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'XNvaNQuN' \
    > test.out 2>&1
eval_tap $? 52 'AdminDeleteAllUserStates' test.out

#- 53 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'xorHx1RX' \
    --namespace $AB_NAMESPACE \
    --creator 'OrXB4zXO' \
    --isofficial 'pLpbni8f' \
    --limit '87' \
    --name 'dzCPbdfy' \
    --offset '28' \
    --orderby 'iL38oG2W' \
    --sortby 'PK8brBMm' \
    --subtype 'irfZ9pCS' \
    --tags '["3ATeitjA", "PvLwbEFu", "j6IMFGlm"]' \
    --type 'zBGuIKUU' \
    --userId '9Kp6pMU6' \
    > test.out 2>&1
eval_tap $? 53 'SearchChannelSpecificContent' test.out

#- 54 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'm8tAKhtb' \
    --isofficial '3ruzwr4N' \
    --limit '84' \
    --name 's2Wx6cxL' \
    --offset '39' \
    --orderby 'YdJR7ze9' \
    --sortby 'KNtVpot7' \
    --subtype 'VbPMh51h' \
    --tags '["dhSHhkeL", "VJaWF6Zp", "cWcI4yPL"]' \
    --type 'Y8cZzuGI' \
    --userId 'AqMNIqK5' \
    > test.out 2>&1
eval_tap $? 54 'PublicSearchContent' test.out

#- 55 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["NWd9hIr1", "S4AuHlOb", "hlvYISJR"]}' \
    > test.out 2>&1
eval_tap $? 55 'PublicGetContentBulk' test.out

#- 56 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 56 'GetFollowedContent' test.out

#- 57 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '97' \
    --name 'XkT6a2rV' \
    --offset '15' \
    --orderby 'aGBPrWAf' \
    --sortby 'tNuiaGj3' \
    --subtype 'kifftQ7I' \
    --tags '["PNmsNk3t", "8WlGLylx", "gQIl4lOC"]' \
    --type 'fLL7Sbvx' \
    > test.out 2>&1
eval_tap $? 57 'GetLikedContent' test.out

#- 58 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'Grm6dAOH' \
    > test.out 2>&1
eval_tap $? 58 'PublicDownloadContentByShareCode' test.out

#- 59 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'Z54TEJE7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'PublicDownloadContentByContentID' test.out

#- 60 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'MAo5ndQX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'AddDownloadCount' test.out

#- 61 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'z5iZUaPP' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 61 'UpdateContentLikeStatus' test.out

#- 62 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'Lkju09Yz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'PublicDownloadContentPreview' test.out

#- 63 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 63 'GetTag' test.out

#- 64 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 64 'GetType' test.out

#- 65 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '79' \
    --orderby '2QmyLGxm' \
    --sortby '1kvF7jRK' \
    > test.out 2>&1
eval_tap $? 65 'PublicSearchCreator' test.out

#- 66 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 66 'GetFollowedUsers' test.out

#- 67 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'cdLjiHHq' \
    > test.out 2>&1
eval_tap $? 67 'PublicGetCreator' test.out

#- 68 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'kQCT3vDI' \
    --limit '8' \
    --name 'IwUtj4hy' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 68 'GetChannels' test.out

#- 69 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'T82dHNUq' \
    --body '{"name": "h7qQZ3ex"}' \
    > test.out 2>&1
eval_tap $? 69 'PublicCreateChannel' test.out

#- 70 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'A4F8kKp3' \
    > test.out 2>&1
eval_tap $? 70 'DeleteAllUserChannel' test.out

#- 71 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'b7HgF4ne' \
    --namespace $AB_NAMESPACE \
    --userId 'FBbq3jl9' \
    --body '{"name": "90oYl1QC"}' \
    > test.out 2>&1
eval_tap $? 71 'UpdateChannel' test.out

#- 72 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'Nt2gg9se' \
    --namespace $AB_NAMESPACE \
    --userId 'wVUcFbb7' \
    > test.out 2>&1
eval_tap $? 72 'DeleteChannel' test.out

#- 73 CreateContentDirect
eval_tap 0 73 'CreateContentDirect # SKIP deprecated' test.out

#- 74 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'cEoRKAeO' \
    --namespace $AB_NAMESPACE \
    --userId 'LPpzIKZM' \
    --body '{"contentType": "C0h2Eud0", "customAttributes": {"LGnjzXIC": {}, "cHMPhPE7": {}, "19DzUk30": {}}, "fileExtension": "8gky8qCA", "name": "1GnUD6Pk", "preview": "JxpDXvyg", "previewMetadata": {"previewContentType": "ongEvb07", "previewFileExtension": "ZRkgwHOz"}, "subType": "dxpvnVYw", "tags": ["8bGdafHF", "TBbhHXa9", "B2FHf6JW"], "type": "ttz5KAmr"}' \
    > test.out 2>&1
eval_tap $? 74 'CreateContentS3' test.out

#- 75 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'AwJlALQP' \
    --contentId 'OtYDCxin' \
    --namespace $AB_NAMESPACE \
    --userId 'JtiTtsXU' \
    --body '{"contentType": "Wb2feoud", "customAttributes": {"MPBv1MO9": {}, "FifKEEQs": {}, "uXGuz9qR": {}}, "fileExtension": "OReykreY", "name": "nVbUw1mn", "payload": "L6T0vHOp", "preview": "jH1mngCm", "previewMetadata": {"previewContentType": "VVBK9j15", "previewFileExtension": "lVSPNBFw"}, "subType": "qRYdtCu6", "tags": ["91Bow76Z", "s4YUFMlJ", "3xvfTWNB"], "type": "nySdXRlX", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 75 'UpdateContentS3' test.out

#- 76 UpdateContentDirect
eval_tap 0 76 'UpdateContentDirect # SKIP deprecated' test.out

#- 77 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'TgUKqJcW' \
    --contentId 'cFzPKuXs' \
    --namespace $AB_NAMESPACE \
    --userId 'KudtZ9i5' \
    > test.out 2>&1
eval_tap $? 77 'DeleteContent' test.out

#- 78 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId '2d1JFJNJ' \
    --limit '10' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 78 'PublicGetUserContent' test.out

#- 79 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId '2hYQuI6S' \
    > test.out 2>&1
eval_tap $? 79 'DeleteAllUserContents' test.out

#- 80 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'XB1CpCOn' \
    --namespace $AB_NAMESPACE \
    --userId '1rR7Z8VB' \
    --body '{"screenshots": [{"description": "NwvRmf98", "screenshotId": "2T0PPjOc"}, {"description": "vLRo0IGD", "screenshotId": "IpjAtNbl"}, {"description": "RGsu30rS", "screenshotId": "ml0uIN9O"}]}' \
    > test.out 2>&1
eval_tap $? 80 'UpdateScreenshots' test.out

#- 81 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'kKJgnOVo' \
    --namespace $AB_NAMESPACE \
    --userId 'kAigqycq' \
    --body '{"screenshots": [{"contentType": "uFjP6KXe", "description": "cCIwGGq1", "fileExtension": "pjp"}, {"contentType": "vFNCGMIl", "description": "2yZE6cZe", "fileExtension": "pjp"}, {"contentType": "vuc25gCb", "description": "1lXf5VYq", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 81 'UploadContentScreenshot' test.out

#- 82 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'O4oBuKa2' \
    --namespace $AB_NAMESPACE \
    --screenshotId '2stUK64H' \
    --userId 'Rkvm0oZn' \
    > test.out 2>&1
eval_tap $? 82 'DeleteContentScreenshot' test.out

#- 83 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'yt7y1z2F' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 83 'UpdateUserFollowStatus' test.out

#- 84 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'scJ8bd5U' \
    --limit '14' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 84 'GetPublicFollowers' test.out

#- 85 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId '4cLhDmuu' \
    --limit '32' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 85 'GetPublicFollowing' test.out

#- 86 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'qyO5JwW5' \
    --limit '94' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 86 'GetGroups' test.out

#- 87 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'hmtNH35X' \
    --body '{"contents": ["QCiwThl0", "syIV4VWS", "PkjpPZlc"], "name": "YVdN4XiR"}' \
    > test.out 2>&1
eval_tap $? 87 'CreateGroup' test.out

#- 88 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'Y04oWxNL' \
    > test.out 2>&1
eval_tap $? 88 'DeleteAllUserGroup' test.out

#- 89 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'ffL8P3Tc' \
    --namespace $AB_NAMESPACE \
    --userId 'NFaJRR0s' \
    > test.out 2>&1
eval_tap $? 89 'GetGroup' test.out

#- 90 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId '8fALlK6I' \
    --namespace $AB_NAMESPACE \
    --userId 'NcOGAzXw' \
    --body '{"contents": ["MIEmzE4l", "p5JuSdxS", "3LgHqdZ9"], "name": "scH75foI"}' \
    > test.out 2>&1
eval_tap $? 90 'UpdateGroup' test.out

#- 91 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'RtZ7iQnP' \
    --namespace $AB_NAMESPACE \
    --userId 'BuHjEx3y' \
    > test.out 2>&1
eval_tap $? 91 'DeleteGroup' test.out

#- 92 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'O9do1yez' \
    --namespace $AB_NAMESPACE \
    --userId 'liYTyuDD' \
    --limit '94' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 92 'GetGroupContent' test.out

#- 93 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId '1X8TxdK5' \
    > test.out 2>&1
eval_tap $? 93 'DeleteAllUserStates' test.out


rm -f "tmp.dat"

exit $EXIT_CODE