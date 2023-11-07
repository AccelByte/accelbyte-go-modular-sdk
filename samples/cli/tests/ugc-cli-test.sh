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
echo "1..137"

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
    --limit '46' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "spYIQxK8", "name": "jF1dvERi"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'lDKebjjl' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "bgqqVWDF"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'XbbL7RkT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'gCQx5KyT' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "NcMWMMY0", "customAttributes": {"MUJv87wb": {}, "IkrElr2k": {}, "ahEbvA3q": {}}, "fileExtension": "Rq3ZzF4b", "name": "oCqrahGi", "preview": "rBlFmanq", "previewMetadata": {"previewContentType": "vPS0PKat", "previewFileExtension": "k0pqsI5h"}, "shareCode": "Rb0iVG1e", "subType": "2LSPhga3", "tags": ["qexoe37O", "X1CQAG1T", "iEJ47atz"], "type": "RJUw6OJR"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'DJSC9Z3i' \
    --contentId '4pklXpJO' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "tLpUP1PS", "customAttributes": {"PQCgEgqe": {}, "JezhunpW": {}, "FSTBGtEj": {}}, "fileExtension": "NaZsMYCV", "name": "MCKTwjQd", "payload": "fxVQuU2q", "preview": "aFx4PVAe", "previewMetadata": {"previewContentType": "wytnBVRd", "previewFileExtension": "fLmXXNpB"}, "shareCode": "rzhGirGg", "subType": "gRfrNxs4", "tags": ["eVF2OJ7G", "SvQYlCTQ", "webPyRiW"], "type": "jGtcxxlm", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'AEenHG4r' \
    --namespace $AB_NAMESPACE \
    --creator 'sRFoPiFL' \
    --ishidden 'rnENGPBE' \
    --isofficial 'vBqdNhAa' \
    --limit '40' \
    --name 'QFEnL56M' \
    --offset '98' \
    --orderby 'mXYllGg2' \
    --sortby 'iMt6joVu' \
    --subtype 'fPIn84l1' \
    --tags '["bmJGbz6T", "QNPW1hfy", "MT3H2ZR2"]' \
    --type 'ZxiMzgtx' \
    --userId 'nXLsPAVw' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'pHdohXNs' \
    --contentId 'gmv04Ujx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["fLMdeWiW", "7fBBnR7M", "etDAbUcd"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'gyMkS0wi' \
    --ishidden 'yGK06tVG' \
    --isofficial 'OnY6zyXZ' \
    --limit '6' \
    --name '2ri2f1IE' \
    --offset '76' \
    --orderby 'PUVgaoGF' \
    --sortby 'cjtDRCXn' \
    --subtype 'Ybebt0l2' \
    --tags '["MYBU872A", "5GGvuYGW", "mlO8glZJ"]' \
    --type 'DYLa0PVH' \
    --userId 'IoMUzuXx' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["XnQtJ6ny", "CvR7fZDG", "yZTTr0mj"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'KNl9QCU1' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'vPMNSLIn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId '7kMcOpBO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'dSN1kHoa' \
    --namespace $AB_NAMESPACE \
    --versionId 'v8FHnYDc' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'hpoEB5TP' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "8BOS1Bqr", "screenshotId": "lstvwqIP"}, {"description": "eian0aGL", "screenshotId": "WiA9c81v"}, {"description": "2ni6wO31", "screenshotId": "qtjs9cI5"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'Jt327ZTO' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "SEhtrqqN", "description": "IJIYhOjg", "fileExtension": "jpg"}, {"contentType": "lMIMnUaQ", "description": "gaN9T8hb", "fileExtension": "jfif"}, {"contentType": "7m0idWOc", "description": "Y2t3x2Jf", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId '5RN8BkHa' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'BbPiGQKW' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId '2az5fmod' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["1xe6JSrs", "5BThXG8t", "73wq4bom"], "name": "j0UlR8he"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'uURisq5l' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'fyL48ciP' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["0AGiITdt", "DxoiVCQG", "lg9ltigm"], "name": "u3mZyMYU"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'rZPNNLiL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'LfbXmLx9' \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "DxprjgaP"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'qHa6tx52' \
    --body '{"tag": "uyoCaOsn"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'GAdOptM6' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["TQLMLTqn", "BMOYAwwr", "yvWf8CCb"], "type": "rYKFper4"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId '7gRiyGSt' \
    --body '{"subtype": ["fBBi5pMG", "T1yHS5mP", "EL3FBz20"], "type": "WPEpRbnE"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'TgI2oUP2' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'RIBjvVFP' \
    --limit '87' \
    --name 'Xz4GsmTT' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId '7QOes6Lx' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId '7soDQAk7' \
    --namespace $AB_NAMESPACE \
    --userId 'RUOnWoYm' \
    --body '{"name": "X9nvanFn"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId '5vBEA6ga' \
    --namespace $AB_NAMESPACE \
    --userId 'tKSfJ9ys' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId '0HpuuRf9' \
    --namespace $AB_NAMESPACE \
    --shareCode 'L75LoODs' \
    --userId '0pvdsGJW' \
    --body '{"contentType": "59wBSFdo", "customAttributes": {"UZyx7897": {}, "IskJ1ZPy": {}, "rD7U6z4c": {}}, "fileExtension": "37QTdscC", "name": "9bmgTLHi", "payload": "SChbSval", "preview": "EDZfSa8B", "previewMetadata": {"previewContentType": "YXZV4P33", "previewFileExtension": "AG4nbYsV"}, "shareCode": "geuli9T4", "subType": "ieGuLrN0", "tags": ["Nwoupgrw", "w87Jft7o", "xxuZVzMr"], "type": "3hPPkOuN", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'lVCvo9FZ' \
    --contentId '96iYi7GT' \
    --namespace $AB_NAMESPACE \
    --userId 'i6AEwtSR' \
    --body '{"contentType": "Dgk6FVzH", "customAttributes": {"2gFX4yOs": {}, "8HCT2dpc": {}, "75rCHqux": {}}, "fileExtension": "LmvZU7Iq", "name": "y3xMsUFo", "payload": "GT4Bw79H", "preview": "9FRqhKaG", "previewMetadata": {"previewContentType": "Er6Dd9Mn", "previewFileExtension": "dfcwLlRo"}, "shareCode": "oXtcjpU4", "subType": "lrqJaIRF", "tags": ["vH1v82dt", "LHtIcolD", "SmDQcBEN"], "type": "MORVW3ln", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'hiBynqry' \
    --namespace $AB_NAMESPACE \
    --shareCode 'Zgx66xZG' \
    --userId '7k7KkWM0' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId '25WMxdp6' \
    --contentId 'ip7VWEqC' \
    --namespace $AB_NAMESPACE \
    --userId 'V0pafq7v' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId '9lwFZxrR' \
    --limit '98' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'GclurwYf' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'JfRzQHUx' \
    --namespace $AB_NAMESPACE \
    --userId 'tPpG198W' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 't4JmtgNo' \
    --limit '48' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'xZ6Gy2rp' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId '4V0fhZQo' \
    --namespace $AB_NAMESPACE \
    --userId 'UhvxyhIT' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId '3gdEty7e' \
    --namespace $AB_NAMESPACE \
    --userId '2teWP0tT' \
    --body '{"contents": ["oShjhrhi", "Ih9SFkO5", "n4E0Nwa9"], "name": "bOtuXN84"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'RnFrpuTI' \
    --namespace $AB_NAMESPACE \
    --userId 'DaGjvpAq' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'knoULgAM' \
    --namespace $AB_NAMESPACE \
    --userId 'NochzwRX' \
    --limit '41' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId '9ivCvS7E' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'lG8iQasN' \
    --namespace $AB_NAMESPACE \
    --creator 'etm4AzFj' \
    --ishidden '3hqA8zAZ' \
    --isofficial 'fNpn9azu' \
    --limit '82' \
    --name 'S8IeP8p9' \
    --offset '98' \
    --orderby 'hFMPpDdU' \
    --sortby 'suPyDrK0' \
    --subtype 'gblUTI3u' \
    --tags '["9cLOZNU6", "GHfRYtt1", "BcD0Sakx"]' \
    --type 'mvrcZ2g4' \
    --userId 'o13Rlhgs' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'oFTkzKIT' \
    --ishidden 'dXDn3kFS' \
    --isofficial 'KLf2FqzW' \
    --limit '9' \
    --name 'qpzBo7ID' \
    --offset '60' \
    --orderby 'ERQPQDLS' \
    --sortby 'xdOB2Xk6' \
    --subtype 'lPcsvlZ0' \
    --tags '["y0GVB5bf", "HhAwvXRz", "bBKgB0qA"]' \
    --type 'e8JfQ3L7' \
    --userId 'CPEVjMfb' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["McJm83kR", "frhFjUUH", "M7DD9pWI"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '17' \
    --name 'nkP6hQwG' \
    --offset '88' \
    --orderby 'DBUAexCO' \
    --sortby 'joCCCVrU' \
    --subtype 'h5hjjrrs' \
    --tags '["iZ9J450m", "mWNnb4yZ", "yZ3aUT7G"]' \
    --type 'XMAgx95x' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'KoNmDx1o' \
    > test.out 2>&1
eval_tap $? 62 'PublicDownloadContentByShareCode' test.out

#- 63 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'KZjuPXa3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByContentID' test.out

#- 64 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'sIVXoo3J' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'AddDownloadCount' test.out

#- 65 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'vHpJRowu' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 65 'UpdateContentLikeStatus' test.out

#- 66 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'd9aGatmn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'PublicDownloadContentPreview' test.out

#- 67 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 67 'GetTag' test.out

#- 68 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 68 'GetType' test.out

#- 69 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '23' \
    --orderby 'wGSnCm1f' \
    --sortby 'm798SH9M' \
    > test.out 2>&1
eval_tap $? 69 'PublicSearchCreator' test.out

#- 70 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 70 'GetFollowedUsers' test.out

#- 71 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'JoaL2hty' \
    > test.out 2>&1
eval_tap $? 71 'PublicGetCreator' test.out

#- 72 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'UmCzxdnt' \
    --limit '38' \
    --name 'nAY1F6e5' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 72 'GetChannels' test.out

#- 73 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'qOjLuvem' \
    --body '{"name": "PaRknlPj"}' \
    > test.out 2>&1
eval_tap $? 73 'PublicCreateChannel' test.out

#- 74 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'jy3AK3jJ' \
    > test.out 2>&1
eval_tap $? 74 'DeleteAllUserChannel' test.out

#- 75 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'FwAqGxvC' \
    --namespace $AB_NAMESPACE \
    --userId 'AllSWXFa' \
    --body '{"name": "vyjG5mCl"}' \
    > test.out 2>&1
eval_tap $? 75 'UpdateChannel' test.out

#- 76 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'Xe7sIn4w' \
    --namespace $AB_NAMESPACE \
    --userId 'kg9baUdI' \
    > test.out 2>&1
eval_tap $? 76 'DeleteChannel' test.out

#- 77 CreateContentDirect
eval_tap 0 77 'CreateContentDirect # SKIP deprecated' test.out

#- 78 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'xnYy2jwb' \
    --namespace $AB_NAMESPACE \
    --userId 'AXs6w7qs' \
    --body '{"contentType": "XrU6lx32", "customAttributes": {"idrBMMBI": {}, "7AbVW6lr": {}, "v7pe0NfG": {}}, "fileExtension": "QgSNySb9", "name": "85K9bpdO", "preview": "8CMKDoof", "previewMetadata": {"previewContentType": "zxjKuJAz", "previewFileExtension": "fS4lytHf"}, "subType": "ZGPsUWTe", "tags": ["lWLTkBj9", "ytL3X9eo", "9FvyYYBd"], "type": "N7CpXYRs"}' \
    > test.out 2>&1
eval_tap $? 78 'CreateContentS3' test.out

#- 79 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'fp7GiJ41' \
    --contentId 'IxPvy9pa' \
    --namespace $AB_NAMESPACE \
    --userId 'NgIIt50Q' \
    --body '{"contentType": "VH8v2MnN", "customAttributes": {"KxMGl9Um": {}, "yqunaPpf": {}, "VwApn4QG": {}}, "fileExtension": "tKCDungw", "name": "6V7h2lar", "payload": "R8wEm4Uq", "preview": "txKax5Y2", "previewMetadata": {"previewContentType": "gfcRnX42", "previewFileExtension": "7Z3JIT4O"}, "subType": "ABGtpyya", "tags": ["QKgSoQpL", "DYVk3Vqv", "AL4QNLsH"], "type": "2fpKNGLe", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 79 'UpdateContentS3' test.out

#- 80 UpdateContentDirect
eval_tap 0 80 'UpdateContentDirect # SKIP deprecated' test.out

#- 81 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId '53fRRHIa' \
    --contentId '7Ia15Od3' \
    --namespace $AB_NAMESPACE \
    --userId '7q7HGpH6' \
    > test.out 2>&1
eval_tap $? 81 'DeleteContent' test.out

#- 82 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'U7ud8ODx' \
    --limit '10' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 82 'PublicGetUserContent' test.out

#- 83 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'X3M0ynWc' \
    > test.out 2>&1
eval_tap $? 83 'DeleteAllUserContents' test.out

#- 84 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'EZFcupQz' \
    --namespace $AB_NAMESPACE \
    --userId '2vpZjV0k' \
    --body '{"screenshots": [{"description": "IeObjUfe", "screenshotId": "RoUW7d3L"}, {"description": "JgTfOX0G", "screenshotId": "qohwhY1F"}, {"description": "leK79Fhd", "screenshotId": "6Yrm0Pzc"}]}' \
    > test.out 2>&1
eval_tap $? 84 'UpdateScreenshots' test.out

#- 85 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId '5jqRriqp' \
    --namespace $AB_NAMESPACE \
    --userId 'C08nEq54' \
    --body '{"screenshots": [{"contentType": "gsakwKYi", "description": "sAotPkiT", "fileExtension": "jpeg"}, {"contentType": "GODn2O4U", "description": "ffyA8hDM", "fileExtension": "jpeg"}, {"contentType": "eEcM7rjZ", "description": "otr2mS1k", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 85 'UploadContentScreenshot' test.out

#- 86 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'oiwudGLh' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'xhI0YaD2' \
    --userId 'RvQPTQmn' \
    > test.out 2>&1
eval_tap $? 86 'DeleteContentScreenshot' test.out

#- 87 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'RmR67FJp' \
    --body '{"followStatus": false}' \
    > test.out 2>&1
eval_tap $? 87 'UpdateUserFollowStatus' test.out

#- 88 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'bHwi4RCc' \
    --limit '69' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 88 'GetPublicFollowers' test.out

#- 89 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'vhUsJvOZ' \
    --limit '43' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 89 'GetPublicFollowing' test.out

#- 90 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'Tm8b5csM' \
    --limit '73' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 90 'GetGroups' test.out

#- 91 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'BeX0wtkb' \
    --body '{"contents": ["6dUGPx4J", "MKQFEkzK", "UZgogsAi"], "name": "3qE1Udzd"}' \
    > test.out 2>&1
eval_tap $? 91 'CreateGroup' test.out

#- 92 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId '73cqxeqh' \
    > test.out 2>&1
eval_tap $? 92 'DeleteAllUserGroup' test.out

#- 93 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'Edu4HOEC' \
    --namespace $AB_NAMESPACE \
    --userId 'vzA0Pltn' \
    > test.out 2>&1
eval_tap $? 93 'GetGroup' test.out

#- 94 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'mQh8EBpq' \
    --namespace $AB_NAMESPACE \
    --userId 'Y8DdV9RV' \
    --body '{"contents": ["UBvDnnYX", "vKo9YZuD", "eDrQDXoU"], "name": "4KwqL3Kl"}' \
    > test.out 2>&1
eval_tap $? 94 'UpdateGroup' test.out

#- 95 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId '0XLjsz5y' \
    --namespace $AB_NAMESPACE \
    --userId 'uVQh7ZHY' \
    > test.out 2>&1
eval_tap $? 95 'DeleteGroup' test.out

#- 96 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'xHGQPiSr' \
    --namespace $AB_NAMESPACE \
    --userId '1w2hkZCe' \
    --limit '15' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 96 'GetGroupContent' test.out

#- 97 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId '7DO48Cf7' \
    > test.out 2>&1
eval_tap $? 97 'DeleteAllUserStates' test.out

#- 98 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'YGEN13fG' \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '38' \
    --sortBy 'KthCU5Ti' \
    > test.out 2>&1
eval_tap $? 98 'AdminGetContentByChannelIDV2' test.out

#- 99 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'RLfKdN02' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "e6W7Qd5g", "customAttributes": {"ervXVrBs": {}, "R461yoFj": {}, "p7KsnrOG": {}}, "fileExtension": "U4bUGIGF", "name": "ysgQjkeB", "shareCode": "cVxCxaiL", "subType": "xHdlV1ON", "tags": ["KPQNHU0R", "4BDQUdzD", "IsAMOwXD"], "type": "eemLmQzR"}' \
    > test.out 2>&1
eval_tap $? 99 'AdminCreateContentV2' test.out

#- 100 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'JI5bhPhq' \
    --contentId 'z0oGFcBU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 100 'AdminDeleteOfficialContentV2' test.out

#- 101 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'aOxnAQH2' \
    --contentId '6sv9zrfY' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"eNT435f4": {}, "FrxxqIup": {}, "fp9f5CA6": {}}, "name": "VncuMDc3", "shareCode": "tPYHK5ti", "subType": "oHeA7RhR", "tags": ["ycCqRmRl", "lwJtM4Pr", "Ovc1DKt9"], "type": "CmdxkyaW"}' \
    > test.out 2>&1
eval_tap $? 101 'AdminUpdateOfficialContentV2' test.out

#- 102 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'rDEi92sb' \
    --contentId '36ndNTpq' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "LwwQicWD", "fileLocation": "56vW5lqx"}' \
    > test.out 2>&1
eval_tap $? 102 'AdminUpdateOfficialContentFileLocation' test.out

#- 103 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'ocMkiigC' \
    --contentId 'YO7llZb5' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "7Kip8NM7", "fileExtension": "TheUv6mL"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 104 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --name 'zDLv6bHZ' \
    --offset '27' \
    --sortBy 'mRVisIta' \
    --subType 'P7DDqgnq' \
    --tags '["VcZSAngI", "5XlYmtlx", "qMKMO25i"]' \
    --type 'ysKlTfzS' \
    > test.out 2>&1
eval_tap $? 104 'AdminListContentV2' test.out

#- 105 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["fQ0zo9uG", "VnI5PFYl", "yToopxFm"]}' \
    > test.out 2>&1
eval_tap $? 105 'AdminBulkGetContentByIDsV2' test.out

#- 106 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'zPGuY8cb' \
    > test.out 2>&1
eval_tap $? 106 'AdminGetContentByShareCodeV2' test.out

#- 107 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 'gLl82oK5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 107 'AdminGetContentByContentIDV2' test.out

#- 108 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId '0DplSlM6' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "kDixRoU5", "screenshotId": "7xkQ68Tf"}, {"description": "RpDAlpcU", "screenshotId": "JKHayfdR"}, {"description": "DuFm7NQl", "screenshotId": "7UF6qLeY"}]}' \
    > test.out 2>&1
eval_tap $? 108 'AdminUpdateScreenshotsV2' test.out

#- 109 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 'pFRb7IG7' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "h6PaPVN4", "description": "YWYXzc3h", "fileExtension": "jpg"}, {"contentType": "v6GSi1GX", "description": "7UZXR6Rh", "fileExtension": "jpeg"}, {"contentType": "hBzPpsa9", "description": "8cWeTPBN", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUploadContentScreenshotV2' test.out

#- 110 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'Kad5WqRX' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'aeGCKxyZ' \
    > test.out 2>&1
eval_tap $? 110 'AdminDeleteContentScreenshotV2' test.out

#- 111 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'K7XgU4jF' \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 111 'AdminGetOfficialGroupContentsV2' test.out

#- 112 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'WUWWtRwY' \
    --contentId 'dnNCNZvp' \
    --namespace $AB_NAMESPACE \
    --userId 'n9jOZqZ8' \
    > test.out 2>&1
eval_tap $? 112 'AdminDeleteUserContentV2' test.out

#- 113 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'iqURk1QR' \
    --contentId 'x01vURP9' \
    --namespace $AB_NAMESPACE \
    --userId '2a9Ylf5V' \
    --body '{"customAttributes": {"JjAacAdx": {}, "M58tEJsx": {}, "Y5UIWlQt": {}}, "name": "ahTbzTtN", "shareCode": "SoKXwMWj", "subType": "9hWFm9sh", "tags": ["CXWpMnJz", "voNSg9ox", "AaAU7y9S"], "type": "qSbdo4r2"}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateUserContentV2' test.out

#- 114 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'ulvLxGQi' \
    --contentId 'hdaijrlx' \
    --namespace $AB_NAMESPACE \
    --userId 'OBLOdLs9' \
    --body '{"fileExtension": "8mS1eAgH", "fileLocation": "2hm6A4th"}' \
    > test.out 2>&1
eval_tap $? 114 'AdminUpdateUserContentFileLocation' test.out

#- 115 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'Nep4zjjF' \
    --contentId 'xCjNcXgt' \
    --namespace $AB_NAMESPACE \
    --userId 'gxftheG0' \
    --body '{"contentType": "AZgxoFB1", "fileExtension": "TKEy7Cq6"}' \
    > test.out 2>&1
eval_tap $? 115 'AdminGenerateUserContentUploadURLV2' test.out

#- 116 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId '1iQahMsD' \
    --limit '10' \
    --offset '85' \
    --sortBy '8keWuaMA' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetContentByUserIDV2' test.out

#- 117 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'jcWyFU8u' \
    --namespace $AB_NAMESPACE \
    --userId 'vcrKJdBt' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateContentHideStatusV2' test.out

#- 118 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'FSmde91m' \
    --namespace $AB_NAMESPACE \
    --userId 'UBo6ABqB' \
    --limit '79' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 118 'AdminGetUserGroupContentsV2' test.out

#- 119 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'KMvkM2EX' \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '89' \
    --sortBy 'QiPyGHg8' \
    > test.out 2>&1
eval_tap $? 119 'PublicGetContentByChannelIDV2' test.out

#- 120 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --name 'FubH0tXQ' \
    --offset '35' \
    --sortBy 'Ll3Jh9e9' \
    --subType 'YI38Om0f' \
    --tags '["yONCDXv6", "pSyuDqWg", "5P2mkwvI"]' \
    --type 'a0IsdZJD' \
    > test.out 2>&1
eval_tap $? 120 'PublicListContentV2' test.out

#- 121 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["fQ3xaQyd", "Xw4G0i4w", "rz2V5wnw"]}' \
    > test.out 2>&1
eval_tap $? 121 'PublicBulkGetContentByIDV2' test.out

#- 122 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode '52YZF9Lj' \
    > test.out 2>&1
eval_tap $? 122 'PublicGetContentByShareCodeV2' test.out

#- 123 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId '9w5JwO8O' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'PublicGetContentByIDV2' test.out

#- 124 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'oGst6nUt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 124 'PublicAddDownloadCountV2' test.out

#- 125 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'uLoK7FMt' \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '92' \
    --sortBy 'Kn1sksY9' \
    --userId 'ZhLHq6YP' \
    > test.out 2>&1
eval_tap $? 125 'PublicListContentDownloaderV2' test.out

#- 126 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'rJmG5N3P' \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '77' \
    --sortBy 'mCRuWsPe' \
    > test.out 2>&1
eval_tap $? 126 'PublicListContentLikeV2' test.out

#- 127 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId 'tDnSdzIq' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 127 'UpdateContentLikeStatusV2' test.out

#- 128 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'li7Qc8GG' \
    --namespace $AB_NAMESPACE \
    --userId 'xCTA9ykH' \
    --body '{"contentType": "32Me90yv", "customAttributes": {"gKQJL6w2": {}, "ISzjCraU": {}, "xzj16Ayx": {}}, "fileExtension": "pHtpGExh", "name": "nT7KcToI", "subType": "yJhEAg5h", "tags": ["qi28cMKN", "j7x3IqjI", "aJUsw8d6"], "type": "vCHsH95c"}' \
    > test.out 2>&1
eval_tap $? 128 'PublicCreateContentV2' test.out

#- 129 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'cUn2zcXi' \
    --contentId 'tpLrHJlP' \
    --namespace $AB_NAMESPACE \
    --userId 'FKV5kOEf' \
    > test.out 2>&1
eval_tap $? 129 'PublicDeleteContentV2' test.out

#- 130 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'CmWbJcgA' \
    --contentId 'rHBaQIGJ' \
    --namespace $AB_NAMESPACE \
    --userId 'tvf5xoNj' \
    --body '{"customAttributes": {"Sl9OH32j": {}, "BIfCraHr": {}, "MKYNwNAO": {}}, "name": "ilx6lPm8", "subType": "nK5aGN80", "tags": ["5K76OSwB", "hmRZYUOg", "sw4syM8B"], "type": "U17thrHG"}' \
    > test.out 2>&1
eval_tap $? 130 'PublicUpdateContentV2' test.out

#- 131 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'znOtrRnx' \
    --contentId 'xRYm4jNB' \
    --namespace $AB_NAMESPACE \
    --userId 'iGklVW1H' \
    --body '{"fileExtension": "mhUwZgMn", "fileLocation": "LFsOPhZI"}' \
    > test.out 2>&1
eval_tap $? 131 'PublicUpdateContentFileLocation' test.out

#- 132 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'ellE351f' \
    --contentId 'FsuxAOhg' \
    --namespace $AB_NAMESPACE \
    --userId '6AK03nYp' \
    --body '{"contentType": "AC3ttW8u", "fileExtension": "qyQMmBxI"}' \
    > test.out 2>&1
eval_tap $? 132 'PublicGenerateContentUploadURLV2' test.out

#- 133 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'SrXHQp4T' \
    --limit '72' \
    --offset '93' \
    --sortBy '0F7cx8IA' \
    > test.out 2>&1
eval_tap $? 133 'PublicGetContentByUserIDV2' test.out

#- 134 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'NijBwkXI' \
    --namespace $AB_NAMESPACE \
    --userId '3TqC0TZ1' \
    --body '{"screenshots": [{"description": "msoy7IzR", "screenshotId": "D3PXK6Bu"}, {"description": "4DZWigDR", "screenshotId": "EjEcnRQi"}, {"description": "TdFuSxAV", "screenshotId": "hgKpbTxn"}]}' \
    > test.out 2>&1
eval_tap $? 134 'UpdateScreenshotsV2' test.out

#- 135 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'X7pxfq9T' \
    --namespace $AB_NAMESPACE \
    --userId 'ljwAF9gZ' \
    --body '{"screenshots": [{"contentType": "U2GCFly8", "description": "g2eIaywu", "fileExtension": "jfif"}, {"contentType": "HumHKicL", "description": "Lqa57V6A", "fileExtension": "jpeg"}, {"contentType": "qieeXA4f", "description": "RPZgsIJG", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 135 'UploadContentScreenshotV2' test.out

#- 136 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'NfiSCYgk' \
    --namespace $AB_NAMESPACE \
    --screenshotId '5CuzDCYi' \
    --userId 'JzRYNz31' \
    > test.out 2>&1
eval_tap $? 136 'DeleteContentScreenshotV2' test.out

#- 137 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'vKwmAQGN' \
    --namespace $AB_NAMESPACE \
    --userId 'mjOfgASU' \
    --limit '83' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 137 'PublicGetGroupContentsV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE