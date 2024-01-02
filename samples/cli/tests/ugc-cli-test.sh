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
    --limit '47' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "XQqOvPny", "name": "zUk3fz8L"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'Hmcjqxcf' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "SV0ridcS"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'gV1dlhBt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'f6cDo8sq' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "jj12MBNX", "customAttributes": {"ifHusyHc": {}, "ciH7yUXB": {}, "P6T3uO1s": {}}, "fileExtension": "xpv48eJe", "name": "3DpVMZy3", "preview": "T7XAN3JA", "previewMetadata": {"previewContentType": "KZQyXbhk", "previewFileExtension": "UKkpn8n9"}, "shareCode": "RtlXUIws", "subType": "pX8TOxI7", "tags": ["RHwv4JFf", "mjMw9Yce", "KQH3p48p"], "type": "rSrwN9lF"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId '8Ek6EYxK' \
    --contentId 'zp8Kw8eu' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "sBH7VczE", "customAttributes": {"AWewbpcY": {}, "OOdZkVyT": {}, "1fkNigTo": {}}, "fileExtension": "6vPFoE09", "name": "7dL8VeTU", "payload": "tuGeZoMh", "preview": "pfntyPKS", "previewMetadata": {"previewContentType": "EQYkLU7t", "previewFileExtension": "IjbrFuK8"}, "shareCode": "UEHvVp4V", "subType": "5peUIYKI", "tags": ["29UkgP8z", "ZBO7BptM", "NDPEmvwv"], "type": "3F0RZTGs", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'tqwwOzGn' \
    --namespace $AB_NAMESPACE \
    --creator 'wfowTrJc' \
    --ishidden 'K7Xn3VxE' \
    --isofficial 'K3UkC2g4' \
    --limit '14' \
    --name '9LOXvcMn' \
    --offset '80' \
    --orderby 'iw4ra55J' \
    --sortby 'Qs1dJpYU' \
    --subtype 'e1T9T2mo' \
    --tags '["03j1ILRN", "iaqnQVG0", "de9Tz9GR"]' \
    --type 'UxEPLxLn' \
    --userId 'fIeO0Ucm' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'HvnHwugD' \
    --contentId 'v4xToRuW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["hWnTgPju", "qFqk2F3v", "R5Zjq3p6"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'Y3dT5jkp' \
    --ishidden 'f5NjmM7R' \
    --isofficial 'NRHv95vC' \
    --limit '13' \
    --name 'IVKakDLB' \
    --offset '90' \
    --orderby '5B0iIM7K' \
    --sortby 'HCifnR0o' \
    --subtype 'fk9QHZUN' \
    --tags '["BimMgzPc", "f0Ct8vz6", "vQd5vQs7"]' \
    --type 's6ebNpRA' \
    --userId 'McgWXTZx' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["n8FEy8t1", "8nGmUoF6", "dJlmzknJ"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'gZJ7Uh4a' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId '6KCIeqNw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'rrVi9yVo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'AibysANa' \
    --namespace $AB_NAMESPACE \
    --versionId 'ycUzVqIq' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'avAFtByB' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "x4kmjdd6", "screenshotId": "wQPdB8vs"}, {"description": "ZWTZIbXI", "screenshotId": "TeR4BRR0"}, {"description": "BI2p2kry", "screenshotId": "cams3qz3"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'kq1egaOv' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "8Lb9aFot", "description": "nCsLeHk7", "fileExtension": "png"}, {"contentType": "OFDPUfPO", "description": "v7nL85fy", "fileExtension": "png"}, {"contentType": "uAGyXdMB", "description": "6BjUj7nZ", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'USUKLEbF' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'ynjOps9C' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'iQQuH3VF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["5stJDu1O", "30dHR5yA", "4jnWnjNC"], "name": "487AUeEs"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'Sq0VXyvN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'ylA91zSH' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["Ck6qDGUD", "ARFkKOXH", "H7h6GNjh"], "name": "BppHW6s4"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'wnDHBFme' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'Qj1Ny6Tq' \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "n8ioG8HF"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'dk8rw3EC' \
    --body '{"tag": "VOgWgfYY"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'aQcxSWHN' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["jMTWTSUi", "mXafcKmL", "tikXW1vE"], "type": "cIt5tCWA"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'AfQY4jUj' \
    --body '{"subtype": ["QDgd1WdZ", "ThjMXPfq", "XVAXxC8i"], "type": "EL8Wjg6M"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'jNFt1ydF' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'TgejFNvy' \
    --limit '86' \
    --name 'R3GgHNQz' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'AvZQWke1' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'SxBuvebU' \
    --namespace $AB_NAMESPACE \
    --userId 'D4yoD7bd' \
    --body '{"name": "uUf1hvye"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'kUiONtmP' \
    --namespace $AB_NAMESPACE \
    --userId 'Appv4ixx' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'H4OjeVCx' \
    --namespace $AB_NAMESPACE \
    --shareCode 'L4aZjfCe' \
    --userId 'w2qJOINg' \
    --body '{"contentType": "8ylVsLID", "customAttributes": {"x5Tqw1E9": {}, "z3fjkivE": {}, "6txacKdb": {}}, "fileExtension": "OInK6H3W", "name": "S4nwsU4w", "payload": "A7TWzheK", "preview": "Wk1bnnoK", "previewMetadata": {"previewContentType": "wJPV2sD3", "previewFileExtension": "Ym5cW7A7"}, "shareCode": "oo1Z0IR6", "subType": "qKjZoScv", "tags": ["VsOdt6rH", "xbOSnsZi", "KMlpJNOW"], "type": "PuZAPeHA", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'cCsKUlwP' \
    --contentId 'O9Wd4GvN' \
    --namespace $AB_NAMESPACE \
    --userId '9ISGjsl8' \
    --body '{"contentType": "VswumkVq", "customAttributes": {"WWOIw4JZ": {}, "NUmVsAFP": {}, "Jcths6Be": {}}, "fileExtension": "F5aZkiOd", "name": "4WEPao54", "payload": "IFEu3DgL", "preview": "mMP8IJqC", "previewMetadata": {"previewContentType": "0YmuR2qh", "previewFileExtension": "d8yEFOaH"}, "shareCode": "sjVSqDuP", "subType": "rm2iAa76", "tags": ["syD84bNe", "8LBeHFoS", "H89J4EGg"], "type": "JMMzn24z", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'ktbn8YUf' \
    --namespace $AB_NAMESPACE \
    --shareCode 'Osd57ckU' \
    --userId 'LViihRJA' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'gAW5EGC4' \
    --contentId 'CL9SPntx' \
    --namespace $AB_NAMESPACE \
    --userId 'uymy7Ug8' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'vegPHz73' \
    --limit '38' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'XwH2M97f' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 's2JW2Soq' \
    --namespace $AB_NAMESPACE \
    --userId 'QkSKFyx6' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'eYVFtFUu' \
    --limit '38' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'sP7d2ixo' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'bxmCNNDe' \
    --namespace $AB_NAMESPACE \
    --userId '3r33EVC6' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'xp0RJwGm' \
    --namespace $AB_NAMESPACE \
    --userId '5UdVMukb' \
    --body '{"contents": ["cBczf9gK", "Knmh5OSr", "sxQ17hCw"], "name": "fdKzsrqo"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'uvt3Ndob' \
    --namespace $AB_NAMESPACE \
    --userId 'IysSux7C' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'uJKHhqmj' \
    --namespace $AB_NAMESPACE \
    --userId 'yyEB3Lem' \
    --limit '77' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId '3kMlw2G8' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId '1FDHK9sB' \
    --namespace $AB_NAMESPACE \
    --creator 'tmxcI40d' \
    --ishidden '4QsbW74k' \
    --isofficial 'kBkXvfvM' \
    --limit '9' \
    --name '76kseaon' \
    --offset '40' \
    --orderby 'zHJCe2Fn' \
    --sortby 'N3r7mNNG' \
    --subtype 't2VZTsTm' \
    --tags '["Rn5VWhdW", "BJSmNWHA", "QdpUlw5f"]' \
    --type 'MEJHbYUP' \
    --userId 'fOhJPt3D' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'xdNbnozv' \
    --ishidden 'CufrhnYQ' \
    --isofficial 'uxIYASXw' \
    --limit '89' \
    --name 'FdGgLHEM' \
    --offset '3' \
    --orderby 'mr7XDWym' \
    --sortby 'A5s1xDJF' \
    --subtype '1qK7SBTe' \
    --tags '["cdRiNvsf", "trQPzHmB", "iBukyNPR"]' \
    --type 'PbmDrwXB' \
    --userId 'dgwnN4tA' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["XORd8046", "1hqIe8m4", "RcrG6yHn"]}' \
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
    --limit '16' \
    --name 'AxXlEYw2' \
    --offset '97' \
    --orderby '7z78jhSK' \
    --sortby 'qT29dyEE' \
    --subtype 's3MrYbAK' \
    --tags '["GabSPk4H", "Aigs3VBZ", "dQPFzTbj"]' \
    --type '3qJGI0JR' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["5qWfKB1V", "wShItlZ3", "fsGAPCTN"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'ArQgHjTw' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'HONgpx0a' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'RJRZ5r9a' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'P76YDi9z' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'Se0tQ3ix' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '57' \
    --orderby 'X7YUQPlX' \
    --sortby 'MHryLexo' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId '2upVATBA' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'EJBOWyCr' \
    --limit '38' \
    --name 'j3sDVtzL' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'BRKEtwyR' \
    --body '{"name": "qgHrQAKK"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId '3jyoNLtE' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'ZUVc09E8' \
    --namespace $AB_NAMESPACE \
    --userId 'FGg6LHRt' \
    --body '{"name": "YJOSbPeU"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'cYuc7zxF' \
    --namespace $AB_NAMESPACE \
    --userId 'g3B6ku6x' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'b6GMm7Ev' \
    --namespace $AB_NAMESPACE \
    --userId '5oSlFrbM' \
    --body '{"contentType": "uvgUNiqE", "customAttributes": {"nZfFO40I": {}, "IKhwRylG": {}, "EzJjcd6f": {}}, "fileExtension": "kRWkDbg8", "name": "s7LVe4Bw", "preview": "O6OX9yJ7", "previewMetadata": {"previewContentType": "4sjmtzKu", "previewFileExtension": "cXpSCGBr"}, "subType": "RzQWpJQz", "tags": ["TWkX2Kus", "L8FTo3eE", "AZ1DCsbv"], "type": "4G9808Ug"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'DqVccc2D' \
    --namespace $AB_NAMESPACE \
    --shareCode 'w2TqrmRc' \
    --userId 'Lu6oerQz' \
    --body '{"contentType": "1XKLX0wW", "customAttributes": {"rrV71AjG": {}, "xn9vNPJe": {}, "Ytz4sfHn": {}}, "fileExtension": "h4jrGUIV", "name": "1bIS8bgv", "payload": "5mHPzjpg", "preview": "v8EPxorp", "previewMetadata": {"previewContentType": "7g11ec6H", "previewFileExtension": "jGnafZEc"}, "subType": "ncjRPGNE", "tags": ["ND2IgGA2", "BNSwkF3A", "J27ECpUT"], "type": "8GL826jF", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'en8ja9fC' \
    --contentId 'Lq8e2qRR' \
    --namespace $AB_NAMESPACE \
    --userId 'vIZNVD9X' \
    --body '{"contentType": "j4OwSSWx", "customAttributes": {"7UUjjcA2": {}, "gx4U4F8E": {}, "uWuUjmm3": {}}, "fileExtension": "8QxX0WLC", "name": "BE6hqdqN", "payload": "Xo7icgjD", "preview": "cwr5CRSe", "previewMetadata": {"previewContentType": "3Uthzr6l", "previewFileExtension": "msZb5OjB"}, "subType": "MSuGBoqn", "tags": ["WXW4HDeh", "eBObEunp", "TbF7wAsP"], "type": "nMqL9BmK", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId 'f7GOLU7a' \
    --namespace $AB_NAMESPACE \
    --shareCode 'p9eDHJLh' \
    --userId 'x9iiSmzb' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId '3nyKdirI' \
    --contentId 'EC6pIO0a' \
    --namespace $AB_NAMESPACE \
    --userId 'fSeJRgBt' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'JrD9LMRu' \
    --contentId 'Gjrs4y9W' \
    --namespace $AB_NAMESPACE \
    --userId 'IMENSBJs' \
    --body '{"shareCode": "BLg8ENWL"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'ce0qIoJe' \
    --limit '99' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'hCBKNaZ9' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'KWMe8Eak' \
    --namespace $AB_NAMESPACE \
    --userId 'iHCyyDCX' \
    --body '{"screenshots": [{"description": "xdJzmXnC", "screenshotId": "wezOwibs"}, {"description": "02r2Xnw8", "screenshotId": "Ke7EzFMN"}, {"description": "t8DBqJuQ", "screenshotId": "cpcNIjk7"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'J85pkRB8' \
    --namespace $AB_NAMESPACE \
    --userId 'WQSDSh5x' \
    --body '{"screenshots": [{"contentType": "b0fPYoEp", "description": "j2kbN3ee", "fileExtension": "jpeg"}, {"contentType": "dbuQUwIL", "description": "pkStYwXW", "fileExtension": "bmp"}, {"contentType": "YrqL7vU6", "description": "l8BEgagN", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'xVVDKd7c' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'ti5m00n3' \
    --userId 'uuuuABaA' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'f5dcdYkZ' \
    --body '{"followStatus": false}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId '7phNPJHO' \
    --limit '28' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'i2qximRu' \
    --limit '30' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId '6Y1JjkLf' \
    --limit '22' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'uKbV68H7' \
    --body '{"contents": ["2N3CiZcp", "qNN6jJOU", "80ucnFxi"], "name": "fyVEMSpX"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'ROSs9d6S' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'IODbHS8q' \
    --namespace $AB_NAMESPACE \
    --userId 'c8AaqU7D' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'LhmjTl2q' \
    --namespace $AB_NAMESPACE \
    --userId 'DzunsMkj' \
    --body '{"contents": ["s7F5e7yX", "x6qBwwxY", "P9BfTxrC"], "name": "l4t2fE8q"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'UINAW9BJ' \
    --namespace $AB_NAMESPACE \
    --userId 'tOBwAI36' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'WfV7eHvC' \
    --namespace $AB_NAMESPACE \
    --userId 'F7qFQjvj' \
    --limit '77' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'jxr4eK1l' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'veOcvYF0' \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --name 'IDqHS0A3' \
    --offset '63' \
    --sortBy 'KSJSBJt4' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'NtCAq4lu' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "M6qxN4QS", "customAttributes": {"uYRf3nVU": {}, "EK5kNA3f": {}, "PMiWqesD": {}}, "fileExtension": "Q2WCyMWj", "name": "UcNeMBT3", "shareCode": "qf2CXnqP", "subType": "g7Buuaxz", "tags": ["xFmdqHkj", "yh3pCukG", "LEggAox1"], "type": "SmPtL0R7"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'KCUcqBBx' \
    --contentId '3Dhqe5RQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'qVwMHopt' \
    --contentId 'Zl4ewv35' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"kSOUA12G": {}, "QA6ZQg6i": {}, "789BtfbK": {}}, "name": "lBK4jNTR", "shareCode": "QFRiDVLa", "subType": "ppDgMHg1", "tags": ["mLW5RC6V", "uqZMQLri", "58rJzZjF"], "type": "ir3ajJji"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId '4oDdavuN' \
    --contentId 'vIj49W2i' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "P5aWocye", "fileLocation": "1HlePUVh"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminUpdateOfficialContentFileLocation' test.out

#- 107 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'jQY7iMoE' \
    --contentId '6hZQn4By' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "cbDcAtGP", "fileExtension": "8erIR7Uc"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 108 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 108 'AdminGetConfigs' test.out

#- 109 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key 'TrHnMuc3' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "4mVBkIzK"}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateConfig' test.out

#- 110 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '51' \
    --name 'P2Div3wY' \
    --offset '91' \
    --sortBy 'k3eKRgKY' \
    --subType 'oO4cwqWl' \
    --tags '["sviWxhyZ", "LU1fOE3i", "fODOScic"]' \
    --type 'Ptu6fJiZ' \
    > test.out 2>&1
eval_tap $? 110 'AdminListContentV2' test.out

#- 111 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["HmSlzNwB", "QuEP2kTm", "LrnvfGwd"]}' \
    > test.out 2>&1
eval_tap $? 111 'AdminBulkGetContentByIDsV2' test.out

#- 112 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["cjFKdFnT", "ara9F6z0", "OCE8llYn"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminGetContentBulkByShareCodesV2' test.out

#- 113 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode '96B5GCYf' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentByShareCodeV2' test.out

#- 114 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 'YsCLkVvC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByContentIDV2' test.out

#- 115 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'A74jCBNc' \
    --namespace $AB_NAMESPACE \
    --versionId '4KurYNXm' \
    > test.out 2>&1
eval_tap $? 115 'RollbackContentVersionV2' test.out

#- 116 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'X2yiHCbg' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "S1aGD0Fm", "screenshotId": "2Xff6ymw"}, {"description": "MEg8jMm4", "screenshotId": "ROpUo67i"}, {"description": "ONHOAaIP", "screenshotId": "86Ng5ZYX"}]}' \
    > test.out 2>&1
eval_tap $? 116 'AdminUpdateScreenshotsV2' test.out

#- 117 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 'flgA0WMH' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "zlyXHZ0w", "description": "WgFBcAUL", "fileExtension": "pjp"}, {"contentType": "d4RjQmyA", "description": "49MPGTWp", "fileExtension": "jpeg"}, {"contentType": "ilYShQWW", "description": "OnCeXBC2", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUploadContentScreenshotV2' test.out

#- 118 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'Ed3NVsIb' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'fKlQbXfX' \
    > test.out 2>&1
eval_tap $? 118 'AdminDeleteContentScreenshotV2' test.out

#- 119 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'nrh4OTh6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'ListContentVersionsV2' test.out

#- 120 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'sMLNLdBv' \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetOfficialGroupContentsV2' test.out

#- 121 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '92' \
    --sortBy 'YysXfJII' \
    --status 'Xrfl6d1b' \
    > test.out 2>&1
eval_tap $? 121 'AdminListStagingContents' test.out

#- 122 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId 'DmL8bn8E' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetStagingContentByID' test.out

#- 123 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId 'F6fSAFKk' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": false, "note": "8fs6CeEA"}' \
    > test.out 2>&1
eval_tap $? 123 'AdminApproveStagingContent' test.out

#- 124 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'VTWc9D0h' \
    --namespace $AB_NAMESPACE \
    --shareCode 'l01d1OXD' \
    --userId 'DoOofpeP' \
    --body '{"customAttributes": {"nOMsp3ME": {}, "5wLeyvHe": {}, "fM8yOBeS": {}}, "name": "MPsRqTN6", "shareCode": "CCxmdHfp", "subType": "dvLVnPLK", "tags": ["HGZkIUJQ", "SlODt4uk", "4HaSkqNF"], "type": "bdavHxPj"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateContentByShareCodeV2' test.out

#- 125 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'Md4i1Iry' \
    --namespace $AB_NAMESPACE \
    --shareCode 'HxT6PvUP' \
    --userId '6toFbJBy' \
    > test.out 2>&1
eval_tap $? 125 'AdminDeleteContentByShareCodeV2' test.out

#- 126 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'c817Aa3H' \
    --contentId 'YkkQoZbY' \
    --namespace $AB_NAMESPACE \
    --userId 'wF2gBinI' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteUserContentV2' test.out

#- 127 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'Ltvmb8IH' \
    --contentId 'AE1RiQNe' \
    --namespace $AB_NAMESPACE \
    --userId 'zd0vERDh' \
    --body '{"customAttributes": {"hGj2BiSG": {}, "sh6hIygN": {}, "Cl6mexRT": {}}, "name": "jEAPGNGq", "shareCode": "V5ggLmra", "subType": "9n0ZCIr2", "tags": ["YrXisM8d", "RCAUfMfT", "9Cb13BhV"], "type": "TrwEpsqF"}' \
    > test.out 2>&1
eval_tap $? 127 'AdminUpdateUserContentV2' test.out

#- 128 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'PGh5n4p9' \
    --contentId 'AtibkM1b' \
    --namespace $AB_NAMESPACE \
    --userId 'dgmslL1l' \
    --body '{"fileExtension": "XmsmWef2", "fileLocation": "Bp9BLst3"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentFileLocation' test.out

#- 129 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'YUSdwKBh' \
    --contentId 'p5aNvjlF' \
    --namespace $AB_NAMESPACE \
    --userId 'dU5H3goR' \
    --body '{"contentType": "tS0qDjAR", "fileExtension": "nTQ1WAWN"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminGenerateUserContentUploadURLV2' test.out

#- 130 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'tYBZhtjA' \
    --limit '74' \
    --offset '67' \
    --sortBy 'iCPHkjSb' \
    > test.out 2>&1
eval_tap $? 130 'AdminGetContentByUserIDV2' test.out

#- 131 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'ttD1OPN4' \
    --namespace $AB_NAMESPACE \
    --userId '8Qk2qNzh' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 131 'AdminUpdateContentHideStatusV2' test.out

#- 132 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'FSxP4kGx' \
    --namespace $AB_NAMESPACE \
    --userId 'JxUw6MaN' \
    --limit '81' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 132 'AdminGetUserGroupContentsV2' test.out

#- 133 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'LdY1RnPm' \
    --limit '21' \
    --offset '72' \
    --sortBy 'MMwPf7Pg' \
    --status 'wPASNBzr' \
    > test.out 2>&1
eval_tap $? 133 'AdminListUserStagingContents' test.out

#- 134 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'lrnW1elO' \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --name 'wMCyfvgg' \
    --offset '7' \
    --sortBy 'ZrsyXkys' \
    > test.out 2>&1
eval_tap $? 134 'PublicGetContentByChannelIDV2' test.out

#- 135 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '4' \
    --name 'WKB9h4Hi' \
    --offset '22' \
    --sortBy 'JEBRhoqd' \
    --subType 'd8dfxGIj' \
    --tags '["g6esEqzt", "lMh2ojLY", "SyKrOAal"]' \
    --type 'tzXNumIv' \
    > test.out 2>&1
eval_tap $? 135 'PublicListContentV2' test.out

#- 136 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["qz62Upv8", "NEXXPpvm", "KbROl4Xn"]}' \
    > test.out 2>&1
eval_tap $? 136 'PublicBulkGetContentByIDV2' test.out

#- 137 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["8qLuFeMv", "76pQjTlj", "HLWxKj9c"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicGetContentBulkByShareCodesV2' test.out

#- 138 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'csIVuK7Q' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentByShareCodeV2' test.out

#- 139 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'yhxMxaVo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByIDV2' test.out

#- 140 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'SVn3XdRY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicAddDownloadCountV2' test.out

#- 141 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'H5mRzCig' \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '73' \
    --sortBy 'VSvyy6no' \
    --userId '0Y7RPAyX' \
    > test.out 2>&1
eval_tap $? 141 'PublicListContentDownloaderV2' test.out

#- 142 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'GmOiVYm8' \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '25' \
    --sortBy 'pFL2Fnyp' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentLikeV2' test.out

#- 143 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId 'GzFUPPvN' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateContentLikeStatusV2' test.out

#- 144 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'ALq2s9pr' \
    --namespace $AB_NAMESPACE \
    --userId '7iUEn6KS' \
    --body '{"contentType": "yY3oeM0C", "customAttributes": {"HA8vwxcu": {}, "edEIXXqN": {}, "vmJkU5PY": {}}, "fileExtension": "rJ350eEI", "name": "Z82Ajjsy", "subType": "610SHa5v", "tags": ["apfkIqQE", "nHmxjc8r", "bFHjjlWq"], "type": "uLK4sCnS"}' \
    > test.out 2>&1
eval_tap $? 144 'PublicCreateContentV2' test.out

#- 145 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'EK9OKM7g' \
    --namespace $AB_NAMESPACE \
    --shareCode '5RSrpzbH' \
    --userId 'ZwHgcpTe' \
    --body '{"customAttributes": {"1tubijut": {}, "jnUNzvxD": {}, "rZOS2P2n": {}}, "name": "OwaAwroX", "subType": "veptJng6", "tags": ["KC0xk4Uh", "Si566f3d", "jSPq0mkY"], "type": "u8U42b11"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicUpdateContentByShareCodeV2' test.out

#- 146 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId '6lBZOxgr' \
    --namespace $AB_NAMESPACE \
    --shareCode 'yKTtq3TZ' \
    --userId 'BcKmyROl' \
    > test.out 2>&1
eval_tap $? 146 'PublicDeleteContentByShareCodeV2' test.out

#- 147 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'TO3pE2TU' \
    --contentId 'yBNtD36C' \
    --namespace $AB_NAMESPACE \
    --userId '2dsN88qQ' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentV2' test.out

#- 148 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'kpcaO19X' \
    --contentId '9I9kO1N8' \
    --namespace $AB_NAMESPACE \
    --userId 'C1DFGgX6' \
    --body '{"customAttributes": {"74qacVh9": {}, "oFf8Y48e": {}, "snms1Zs1": {}}, "name": "jepI6pea", "subType": "xp29gv2J", "tags": ["KG7i35Xf", "ZoEbo7rX", "CpfXi7rF"], "type": "U89t0UQO"}' \
    > test.out 2>&1
eval_tap $? 148 'PublicUpdateContentV2' test.out

#- 149 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'y0fSrZo6' \
    --contentId '625azQiI' \
    --namespace $AB_NAMESPACE \
    --userId 'ALn5ceDT' \
    --body '{"fileExtension": "mEgQaa57", "fileLocation": "LRhPtcMo"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentFileLocation' test.out

#- 150 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'xwizDMlz' \
    --contentId 'Uqp0Ugeo' \
    --namespace $AB_NAMESPACE \
    --userId 'io3IQhGS' \
    --body '{"shareCode": "Y2yj9ucK"}' \
    > test.out 2>&1
eval_tap $? 150 'UpdateContentShareCodeV2' test.out

#- 151 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'OYDBCaED' \
    --contentId 'wc4fTqqf' \
    --namespace $AB_NAMESPACE \
    --userId 'FTdYToOi' \
    --body '{"contentType": "nuAtubXT", "fileExtension": "CaYqoDSe"}' \
    > test.out 2>&1
eval_tap $? 151 'PublicGenerateContentUploadURLV2' test.out

#- 152 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'IZ3TJV2W' \
    --limit '51' \
    --offset '67' \
    --sortBy 'o5QzTIb7' \
    > test.out 2>&1
eval_tap $? 152 'PublicGetContentByUserIDV2' test.out

#- 153 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'Go3lgoth' \
    --namespace $AB_NAMESPACE \
    --userId 'r9pvnStW' \
    --body '{"screenshots": [{"description": "mt8UDHQM", "screenshotId": "wyQxzs9V"}, {"description": "nDDwooo2", "screenshotId": "fHFGG2vl"}, {"description": "jwdt5AnN", "screenshotId": "JDDRGBaP"}]}' \
    > test.out 2>&1
eval_tap $? 153 'UpdateScreenshotsV2' test.out

#- 154 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'vvtPBAPX' \
    --namespace $AB_NAMESPACE \
    --userId 'lAeBIrIG' \
    --body '{"screenshots": [{"contentType": "71bpCghV", "description": "sIqF2saU", "fileExtension": "jpg"}, {"contentType": "6rKj07rX", "description": "Vuou1zRE", "fileExtension": "jfif"}, {"contentType": "JaQNUFqq", "description": "JudQnM4j", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UploadContentScreenshotV2' test.out

#- 155 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'NSPvl3QD' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'WESTlGy4' \
    --userId 'UB8NPFjA' \
    > test.out 2>&1
eval_tap $? 155 'DeleteContentScreenshotV2' test.out

#- 156 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId '4XgHPEfs' \
    --namespace $AB_NAMESPACE \
    --userId 'OLRH15MZ' \
    --limit '1' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 156 'PublicGetGroupContentsV2' test.out

#- 157 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'ODj4htC5' \
    --limit '92' \
    --offset '86' \
    --sortBy '3CIFzTLL' \
    --status 's0QYSvAT' \
    > test.out 2>&1
eval_tap $? 157 'ListUserStagingContents' test.out

#- 158 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId 'MwA1F2l1' \
    --namespace $AB_NAMESPACE \
    --userId 'YOv45X0x' \
    > test.out 2>&1
eval_tap $? 158 'GetUserStagingContentByID' test.out

#- 159 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId '0IEB8rZo' \
    --namespace $AB_NAMESPACE \
    --userId 'QyEFYunN' \
    --body '{"fileExtension": "xa8G3Ocu", "fileLocation": "6vktVWrV"}' \
    > test.out 2>&1
eval_tap $? 159 'UpdateStagingContent' test.out

#- 160 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId 'KTErwn5Q' \
    --namespace $AB_NAMESPACE \
    --userId 'rF840NAA' \
    > test.out 2>&1
eval_tap $? 160 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE