#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Code generated. DO NOT EDIT.

# Meta:
# - random seed: 256
# - template file: cli_test.j2

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
echo "1..92"

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
    --limit '43' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"name": "jWZIFKRq"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'nkahCci2' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "Hj1fzaFC"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'BglKxvXm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'ytmPx8CI' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "5dc96ocb", "customAttributes": {"RKbiilrM": {}, "EDN9zfkq": {}, "g1z9F5t5": {}}, "fileExtension": "EZCbGVDI", "name": "4KmiDRew", "preview": "1R7j080q", "previewMetadata": {"previewContentType": "uEvwZTdX", "previewFileExtension": "uZ0IEzwH"}, "subType": "QODM3jdE", "tags": ["EyYn2r5n", "gbEBSiMe", "XgRk6Jhf"], "type": "YlrlCQSc"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'ESGrABTX' \
    --contentId 'z5qE1Zdr' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "5wIFE6p7", "customAttributes": {"hKbz3rUI": {}, "wZ50azm0": {}, "u9rLryQC": {}}, "fileExtension": "zhjBInyk", "name": "yxHtlcgm", "payload": "AOTgySEz", "preview": "9Q5yYq06", "previewMetadata": {"previewContentType": "t11qw9Xv", "previewFileExtension": "LtvCj0m0"}, "subType": "PjCaxSew", "tags": ["9f6xiP5t", "NYDEXzmu", "VtgEaO8T"], "type": "T3vijSyS", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'Dxq65Ku8' \
    --namespace $AB_NAMESPACE \
    --creator '1fIbNQah' \
    --isofficial 'yQWagEr8' \
    --limit '43' \
    --name 's0Eb2TY7' \
    --offset '50' \
    --orderby 'RewzJXGD' \
    --sortby 'arfs1sgm' \
    --subtype 'hOhLkV1C' \
    --tags '["WE3VzrHs", "zyWuHf5H", "xDbry3fY"]' \
    --type 'qHjvaNfp' \
    --userId '0mAqteSF' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'lWLOvb2n' \
    --contentId 'yzqA14eI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["bS8px2wC", "K6rHXxIZ", "9FVTuUgc"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'Q7qLc3f2' \
    --isofficial 'OneHA2SP' \
    --limit '5' \
    --name 'tAlrM0w6' \
    --offset '3' \
    --orderby 'QflBIF29' \
    --sortby 'xgirYIUZ' \
    --subtype 'zaauf5EI' \
    --tags '["R1uRLW0J", "51SZhkxx", "YmlKRUS2"]' \
    --type 'LYfAZwmJ' \
    --userId 'A9W4mCf1' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'oub0nhHB' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetUserContentByShareCode' test.out

#- 16 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'wRGPfmhd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetSpecificContent' test.out

#- 17 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'oNPOygV6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDownloadContentPreview' test.out

#- 18 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'MiC7nrxr' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "mJPRk8pr", "screenshotId": "Rdzepo6H"}, {"description": "lI4BPBcX", "screenshotId": "fBX77IGQ"}, {"description": "lyYw3kqr", "screenshotId": "AbuxmG9k"}]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateScreenshots' test.out

#- 19 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'vzSlvx3H' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "JbtFt692", "description": "SNve11uY", "fileExtension": "pjp"}, {"contentType": "KVKKFqzR", "description": "ik3EtqO4", "fileExtension": "jfif"}, {"contentType": "71zF9cnD", "description": "4e7Unuc2", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUploadContentScreenshot' test.out

#- 20 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'hpC52tHU' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'VYzNUxgw' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteContentScreenshot' test.out

#- 21 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 21 'SingleAdminGetAllGroups' test.out

#- 22 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["a1xVfOg7", "7j2d4QsZ", "oWPJ6iD1"], "name": "YgDFaceL"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminCreateGroup' test.out

#- 23 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'KBPT5Zi9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminGetGroup' test.out

#- 24 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'mwRQkGy4' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["P479gXJR", "J9HrpPA4", "pajTAvXh"], "name": "UnliTWgS"}' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminUpdateGroup' test.out

#- 25 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'Er1L4brG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'SingleAdminDeleteGroup' test.out

#- 26 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId '0E9I4YjN' \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroupContents' test.out

#- 27 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetTag' test.out

#- 28 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "rNgXH7uz"}' \
    > test.out 2>&1
eval_tap $? 28 'AdminCreateTag' test.out

#- 29 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'n1Jxf8F6' \
    --body '{"tag": "kPQLJSuf"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateTag' test.out

#- 30 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'zHC0waMS' \
    > test.out 2>&1
eval_tap $? 30 'AdminDeleteTag' test.out

#- 31 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 31 'AdminGetType' test.out

#- 32 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["sT85HWgC", "Nd8exnWN", "cj8OVlcM"], "type": "WLKYHGEr"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminCreateType' test.out

#- 33 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'z6A7iBIj' \
    --body '{"subtype": ["B2jzEJ3k", "1PM2vG7F", "6dWdqwQK"], "type": "j9R8Jl9r"}' \
    > test.out 2>&1
eval_tap $? 33 'AdminUpdateType' test.out

#- 34 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'FD9rWSQ0' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteType' test.out

#- 35 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'Pch9JZrY' \
    --limit '33' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 35 'AdminGetChannel' test.out

#- 36 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'WIG9lgUs' \
    > test.out 2>&1
eval_tap $? 36 'AdminDeleteAllUserChannels' test.out

#- 37 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'AxaHaii8' \
    --namespace $AB_NAMESPACE \
    --userId 'Y3fSINd7' \
    --body '{"name": "DCW5DWmC"}' \
    > test.out 2>&1
eval_tap $? 37 'AdminUpdateChannel' test.out

#- 38 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'AOtwJjlO' \
    --namespace $AB_NAMESPACE \
    --userId 'QDp1vdzV' \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteChannel' test.out

#- 39 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'Yt0JCmIf' \
    --contentId 'b5ZJJa1L' \
    --namespace $AB_NAMESPACE \
    --userId '3iMoKKS1' \
    --body '{"contentType": "YPgnu8sO", "customAttributes": {"VErTxwCg": {}, "AMz1CVLG": {}, "b9NZZ9AX": {}}, "fileExtension": "A4MBWexJ", "name": "YWphYoFo", "payload": "n6RMbjsK", "preview": "wGHkPSo8", "previewMetadata": {"previewContentType": "WOvFOIAh", "previewFileExtension": "4W5DimtU"}, "subType": "gQ1i6kVc", "tags": ["r4c4ifDi", "7Os0vtOM", "9aEBJMX8"], "type": "Bq7iy9W4", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateContentS3' test.out

#- 40 AdminUpdateContentDirect
eval_tap 0 40 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 41 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'G3pNizos' \
    --contentId 'gjITGIX9' \
    --namespace $AB_NAMESPACE \
    --userId 'RSDo9hvJ' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteContent' test.out

#- 42 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId '6d7xp2h4' \
    --limit '97' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetContent' test.out

#- 43 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'mn394NSx' \
    > test.out 2>&1
eval_tap $? 43 'AdminDeleteAllUserContents' test.out

#- 44 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId '2UcYLrwP' \
    --namespace $AB_NAMESPACE \
    --userId 'TkFYuM4m' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 44 'AdminHideUserContent' test.out

#- 45 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'rDqgR30U' \
    --limit '1' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetAllGroups' test.out

#- 46 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'CPBUoeor' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteAllUserGroup' test.out

#- 47 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'txGGrdP7' \
    --namespace $AB_NAMESPACE \
    --userId 'eobHTUH9' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetGroup' test.out

#- 48 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'WoyyuXJP' \
    --namespace $AB_NAMESPACE \
    --userId 'XY0iwuox' \
    --body '{"contents": ["F7DmxfDq", "0vScjqPC", "2zXIDcip"], "name": "PdKKHopQ"}' \
    > test.out 2>&1
eval_tap $? 48 'AdminUpdateGroup' test.out

#- 49 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'z9EbdcFq' \
    --namespace $AB_NAMESPACE \
    --userId 'S3iMZ0AA' \
    > test.out 2>&1
eval_tap $? 49 'AdminDeleteGroup' test.out

#- 50 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'FLvBgCqV' \
    --namespace $AB_NAMESPACE \
    --userId 'Db4bAb1P' \
    --limit '79' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetGroupContents' test.out

#- 51 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'NddZgHwP' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserStates' test.out

#- 52 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'BgzRdnZX' \
    --namespace $AB_NAMESPACE \
    --creator 'EdOBYgIS' \
    --isofficial 'qkX7YmHk' \
    --limit '92' \
    --name 'bpbfwMDv' \
    --offset '29' \
    --orderby '1v70D7cE' \
    --sortby 'lwAamxyk' \
    --subtype 'cgszWEc0' \
    --tags '["Nh15Y9mN", "okkxbyti", "42tebWeQ"]' \
    --type 'EOSqEQJw' \
    --userId 'DGd8WwX7' \
    > test.out 2>&1
eval_tap $? 52 'SearchChannelSpecificContent' test.out

#- 53 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator '1vDjjtlA' \
    --isofficial 'mdRDKc1e' \
    --limit '97' \
    --name 'd8tfkLcp' \
    --offset '24' \
    --orderby 'D3V6DFya' \
    --sortby 'iAITympA' \
    --subtype 'MipRhat5' \
    --tags '["DtGJVDac", "qXxyTibP", "ob4YewDs"]' \
    --type 'kcHsJC3m' \
    --userId 'sB28jdXv' \
    > test.out 2>&1
eval_tap $? 53 'PublicSearchContent' test.out

#- 54 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["n5ozSen1", "Fx116PGh", "vh83FFhm"]}' \
    > test.out 2>&1
eval_tap $? 54 'PublicGetContentBulk' test.out

#- 55 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 55 'GetFollowedContent' test.out

#- 56 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '77' \
    --name 'ln8Yx2UL' \
    --offset '62' \
    --orderby '0S3gg6zh' \
    --sortby '7699Ss0M' \
    --subtype 'MmSJdHqf' \
    --tags '["HemXZ9sP", "Oit288yq", "dzdnRPO0"]' \
    --type 'zD359HxR' \
    > test.out 2>&1
eval_tap $? 56 'GetLikedContent' test.out

#- 57 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'pbhLOPcQ' \
    > test.out 2>&1
eval_tap $? 57 'PublicDownloadContentByShareCode' test.out

#- 58 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'hkmSmc7I' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'PublicDownloadContentByContentID' test.out

#- 59 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId '7nEvqb3r' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'AddDownloadCount' test.out

#- 60 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'w1V8ZxVL' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 60 'UpdateContentLikeStatus' test.out

#- 61 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'NgrYxtZA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'PublicDownloadContentPreview' test.out

#- 62 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 62 'GetTag' test.out

#- 63 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 63 'GetType' test.out

#- 64 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '42' \
    --orderby 'gWIFCWhl' \
    --sortby 'ejRJ7hR5' \
    > test.out 2>&1
eval_tap $? 64 'PublicSearchCreator' test.out

#- 65 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 65 'GetFollowedUsers' test.out

#- 66 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId '8o9Fs6SV' \
    > test.out 2>&1
eval_tap $? 66 'PublicGetCreator' test.out

#- 67 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'xbhwPzER' \
    --limit '82' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 67 'GetChannels' test.out

#- 68 CreateChannel
samples/cli/sample-apps Ugc createChannel \
    --namespace $AB_NAMESPACE \
    --userId '8twUxXRM' \
    --body '{"name": "eeOgRbXj"}' \
    > test.out 2>&1
eval_tap $? 68 'CreateChannel' test.out

#- 69 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'EDdExzFZ' \
    > test.out 2>&1
eval_tap $? 69 'DeleteAllUserChannel' test.out

#- 70 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId '8o32an4y' \
    --namespace $AB_NAMESPACE \
    --userId '2VnBLRKX' \
    --body '{"name": "oGLBDnQu"}' \
    > test.out 2>&1
eval_tap $? 70 'UpdateChannel' test.out

#- 71 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'vlwWp72a' \
    --namespace $AB_NAMESPACE \
    --userId 'B8rZpNCk' \
    > test.out 2>&1
eval_tap $? 71 'DeleteChannel' test.out

#- 72 CreateContentDirect
eval_tap 0 72 'CreateContentDirect # SKIP deprecated' test.out

#- 73 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'FzvFkgsR' \
    --namespace $AB_NAMESPACE \
    --userId 'YBuacIdh' \
    --body '{"contentType": "4pFmWOT1", "customAttributes": {"ayvLr1hR": {}, "0beCojFT": {}, "Bh4JBUfW": {}}, "fileExtension": "ixSIkK8N", "name": "ICJtSh9d", "preview": "gB5RjeIt", "previewMetadata": {"previewContentType": "ijtkYu6L", "previewFileExtension": "I5CUb0LA"}, "subType": "905IIpHT", "tags": ["fF7p3dFt", "d2zhDbfL", "HLAIDQWJ"], "type": "0gaMKmpR"}' \
    > test.out 2>&1
eval_tap $? 73 'CreateContentS3' test.out

#- 74 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'MRuK8aep' \
    --contentId 'ZivKQRnU' \
    --namespace $AB_NAMESPACE \
    --userId 'QSdasUX6' \
    --body '{"contentType": "GMmD1XAd", "customAttributes": {"yadyKiA4": {}, "Z7XSGoq0": {}, "bKl5g5BN": {}}, "fileExtension": "eRaanqsF", "name": "IVbFoNBK", "payload": "5F9fJJD2", "preview": "JarUBz5E", "previewMetadata": {"previewContentType": "VsSTCk9Z", "previewFileExtension": "BqB2Ntgo"}, "subType": "H85aQVaO", "tags": ["KhpomPB3", "KqQPBPee", "Jm2opXlW"], "type": "s623Xkwt", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateContentS3' test.out

#- 75 UpdateContentDirect
eval_tap 0 75 'UpdateContentDirect # SKIP deprecated' test.out

#- 76 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'rmMBo1Ey' \
    --contentId 'tM87HFM0' \
    --namespace $AB_NAMESPACE \
    --userId 'qyJuzVps' \
    > test.out 2>&1
eval_tap $? 76 'DeleteContent' test.out

#- 77 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'JuekDboD' \
    --limit '18' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 77 'PublicGetUserContent' test.out

#- 78 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'ObXYuRVK' \
    > test.out 2>&1
eval_tap $? 78 'DeleteAllUserContents' test.out

#- 79 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'gxiZTjnH' \
    --namespace $AB_NAMESPACE \
    --userId 'HLlcr7TI' \
    --body '{"screenshots": [{"description": "6ZKOzrlX", "screenshotId": "15kWpmMH"}, {"description": "taxJg27O", "screenshotId": "coatQOFJ"}, {"description": "MlwiMZ0F", "screenshotId": "uD9EFFIU"}]}' \
    > test.out 2>&1
eval_tap $? 79 'UpdateScreenshots' test.out

#- 80 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'qHtLbtQP' \
    --namespace $AB_NAMESPACE \
    --userId 'aB3ce6t4' \
    --body '{"screenshots": [{"contentType": "zLWLgVu1", "description": "132lstsB", "fileExtension": "bmp"}, {"contentType": "iix6hPvb", "description": "mFXjcO9U", "fileExtension": "jpg"}, {"contentType": "vwZFglbs", "description": "6EkSbOMU", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 80 'UploadContentScreenshot' test.out

#- 81 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'pzmJZuZR' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'FloP1ehK' \
    --userId 'xb00UeYO' \
    > test.out 2>&1
eval_tap $? 81 'DeleteContentScreenshot' test.out

#- 82 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'Zjd1oL4O' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 82 'UpdateUserFollowStatus' test.out

#- 83 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId '8fxxydAV' \
    --limit '73' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 83 'GetPublicFollowers' test.out

#- 84 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'HGFJDkKT' \
    --limit '49' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 84 'GetPublicFollowing' test.out

#- 85 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'tNyPSxpB' \
    --limit '79' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 85 'GetGroups' test.out

#- 86 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId '8uH0miZb' \
    --body '{"contents": ["yrottrJu", "g7Mhl8dY", "BUflUTfI"], "name": "7XbyfwFw"}' \
    > test.out 2>&1
eval_tap $? 86 'CreateGroup' test.out

#- 87 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'Mc4kiBqL' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserGroup' test.out

#- 88 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'UKZb8ybc' \
    --namespace $AB_NAMESPACE \
    --userId 'JTTlz2xM' \
    > test.out 2>&1
eval_tap $? 88 'GetGroup' test.out

#- 89 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'w0jk8KtU' \
    --namespace $AB_NAMESPACE \
    --userId 'tQOi5UYe' \
    --body '{"contents": ["0h2EELjv", "BCIC5k1C", "DedBYrk1"], "name": "mPlPNDQG"}' \
    > test.out 2>&1
eval_tap $? 89 'UpdateGroup' test.out

#- 90 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'AKLNzrQM' \
    --namespace $AB_NAMESPACE \
    --userId 'MFcHiEaw' \
    > test.out 2>&1
eval_tap $? 90 'DeleteGroup' test.out

#- 91 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'oAEpUJ79' \
    --namespace $AB_NAMESPACE \
    --userId 'nDjDggkV' \
    --limit '26' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 91 'GetGroupContent' test.out

#- 92 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'Xnwxflr4' \
    > test.out 2>&1
eval_tap $? 92 'DeleteAllUserStates' test.out


rm -f "tmp.dat"

exit $EXIT_CODE