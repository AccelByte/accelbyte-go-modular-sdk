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
    --limit '16' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "aN1aaAmd", "name": "SmgiMlET"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'U8I7q6de' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "ywnWoozj"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId '7e8IYVNN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'YSNnTstW' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "DekTzKvL", "customAttributes": {"7ImQgRVw": {}, "Ll6pDZdU": {}, "WczC4PF8": {}}, "fileExtension": "si7ZYqWh", "name": "QFCAVT4m", "preview": "N6api7pB", "previewMetadata": {"previewContentType": "Z3MTLcv6", "previewFileExtension": "bvI5NNok"}, "shareCode": "OBNmmUQ9", "subType": "zBNWaSai", "tags": ["E644JvmE", "AfNV97XV", "28Q03q17"], "type": "9dWZjokR"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'RH2NmExG' \
    --contentId 'L3noncpy' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "LCAFN4SJ", "customAttributes": {"jW2vgZHl": {}, "H1b4qGgm": {}, "H2wMqEI4": {}}, "fileExtension": "gvQLC3Qa", "name": "7jkQ7oP5", "payload": "W18eKUpf", "preview": "aFk1y539", "previewMetadata": {"previewContentType": "e01yc6lR", "previewFileExtension": "TtQJIzTI"}, "shareCode": "IpRRioKf", "subType": "9ErRXBWh", "tags": ["kOFhEra4", "2aTRH5T3", "IkrceCzj"], "type": "V76glPSq", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'UlJ7uibd' \
    --namespace $AB_NAMESPACE \
    --creator '1fJu3v9Q' \
    --ishidden 'wqGMVRZL' \
    --isofficial 'WVuCmnVO' \
    --limit '72' \
    --name 'BBvV7ek9' \
    --offset '3' \
    --orderby 'kgB5fdZB' \
    --sortby 'YgvgkuUV' \
    --subtype 'Hioba27P' \
    --tags '["Lb9733WA", "nHQmbaHi", "XNud66Ma"]' \
    --type '6OL0vf8F' \
    --userId '2SOB1m7V' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'FLZXswB5' \
    --contentId 'ONEDIati' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["fIDUL0g0", "HI86ShNB", "vsk1J2A7"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator '6Np41YBB' \
    --ishidden 'UpgfyWwb' \
    --isofficial 'MIdyj6gf' \
    --limit '56' \
    --name '0W52ENLn' \
    --offset '15' \
    --orderby 'i0e4h4Tt' \
    --sortby 'sC9hIao7' \
    --subtype 'DbU3Mobs' \
    --tags '["Ekanybvh", "jEqakk7r", "FWEU2d9L"]' \
    --type 'QWgDy02v' \
    --userId '0ke73UoV' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["NAvuLC6z", "iIwdpNKX", "yCkXXQhy"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode '5Ef2sE00' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'titl0Y87' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId '4e5A1wkq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'HoftNeBJ' \
    --namespace $AB_NAMESPACE \
    --versionId 'O31DbsBP' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'cNQEsPwB' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "CFyXCL5g", "screenshotId": "Uo40lRai"}, {"description": "R1vVagrs", "screenshotId": "rvFOSjg4"}, {"description": "YBT7fvXa", "screenshotId": "nEDz85II"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId '2jI1PxVb' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "ZRLuK2x2", "description": "YhFLs3qd", "fileExtension": "pjp"}, {"contentType": "DkzX3sjs", "description": "dmmKBdxV", "fileExtension": "png"}, {"contentType": "5anDFWju", "description": "2Fu8QZPG", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'Gc0KEXfW' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'TDrLZSCt' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId '76cEa8G1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["Ljj96Ohx", "R2hbUJX5", "ZoCNAD3r"], "name": "HG8Tbpy5"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'H6mBf9Ui' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'zJBmRtPO' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["3zzPEeWB", "edBG1TU9", "Fh6uoI6a"], "name": "mfEjdV4u"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId '7ustrHef' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId '5gYX92Mi' \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "NSri30J7"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'vwJgzP8Q' \
    --body '{"tag": "LNnzwKiC"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'NrwVmiS9' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["GLk0WdTd", "sQ4smkv7", "b0WyqatJ"], "type": "vqLXsRjU"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'Kq9PUb85' \
    --body '{"subtype": ["FOxtS6a7", "3STL0ljK", "8pKzJ6LC"], "type": "2ABDTCmJ"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'tQxPOjBB' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'aY7mH3XS' \
    --limit '38' \
    --name 'yMtfpwLj' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'eVKd7c6w' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'wrQXwiU4' \
    --namespace $AB_NAMESPACE \
    --userId 'xGI1jONY' \
    --body '{"name": "XtQ1lB9l"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'RrqJz5MB' \
    --namespace $AB_NAMESPACE \
    --userId 'yp7Z2Lg3' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'm4RCBcPB' \
    --namespace $AB_NAMESPACE \
    --shareCode 'KBHxsA7Z' \
    --userId '0UtjCAHa' \
    --body '{"contentType": "lZ6VLkU2", "customAttributes": {"MKGwsV5k": {}, "3QshBDVG": {}, "IoQgeZQv": {}}, "fileExtension": "uUyaAz8a", "name": "WqX04ChE", "payload": "v7zYsBTl", "preview": "hxa4oz04", "previewMetadata": {"previewContentType": "xSQWu2R3", "previewFileExtension": "eB78tByg"}, "shareCode": "IkJTKE3o", "subType": "TKndf4zn", "tags": ["g6l0wjAN", "5nQdezVq", "3Pm9ba0l"], "type": "P0nUmteU", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'kMnkq8r3' \
    --contentId 'VgWl4wEw' \
    --namespace $AB_NAMESPACE \
    --userId 'ZobD9tAT' \
    --body '{"contentType": "yacd5jHY", "customAttributes": {"Jm3KXvja": {}, "w0riGaC2": {}, "KQf89wDt": {}}, "fileExtension": "viFf0lj8", "name": "Lj3Zynh9", "payload": "pz2mKcVg", "preview": "e2q8rkmY", "previewMetadata": {"previewContentType": "Taaujdcb", "previewFileExtension": "FJU8NNg2"}, "shareCode": "O8Q58Pkb", "subType": "qgWAlqos", "tags": ["gt0zUxgL", "mLMo3iNp", "sNC1f47t"], "type": "JbRyxpJK", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId '2f3ivPbo' \
    --namespace $AB_NAMESPACE \
    --shareCode 'glxS7yLo' \
    --userId 'uEfcIWdt' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'PrsnINyw' \
    --contentId 'Ei2mDWUp' \
    --namespace $AB_NAMESPACE \
    --userId 'I3ob3ceP' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'uWAmayLy' \
    --limit '29' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'yEzEToSm' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'ZnnwiK76' \
    --namespace $AB_NAMESPACE \
    --userId 'eajZKxX2' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'GGTQ3siA' \
    --limit '44' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'i6r0dhBh' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'JbVgy0si' \
    --namespace $AB_NAMESPACE \
    --userId '1ceO7oRi' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'r86MUtqj' \
    --namespace $AB_NAMESPACE \
    --userId 'l3Ga5xqY' \
    --body '{"contents": ["OXFDe5Ld", "PuktCN30", "6ADUaCi1"], "name": "DSRCNxii"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'czThD42y' \
    --namespace $AB_NAMESPACE \
    --userId '9QK0JTLS' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'tzO1pvOx' \
    --namespace $AB_NAMESPACE \
    --userId 'rdPWlNYy' \
    --limit '10' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'EMmYSoL7' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId '2OUcUhoT' \
    --namespace $AB_NAMESPACE \
    --creator 'SVFBPcDc' \
    --ishidden 'vpotW34w' \
    --isofficial 'qYGi0r4v' \
    --limit '91' \
    --name 'jtUGpjlZ' \
    --offset '27' \
    --orderby '1kfS0ZZY' \
    --sortby 'mMpwcO2n' \
    --subtype 'Ubi8FzzI' \
    --tags '["NQ5jo7SF", "8PpYLh92", "OHQA9xa7"]' \
    --type 'VgsYbeni' \
    --userId 'B35N63RD' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'sftFEWYT' \
    --ishidden 'v8Ow57kJ' \
    --isofficial 'dTMB3NBC' \
    --limit '6' \
    --name 'KOtBmkhV' \
    --offset '71' \
    --orderby 'XFY16e1V' \
    --sortby 'U77sjzo4' \
    --subtype '9NzLRulg' \
    --tags '["CTnVGxR4", "RYqhW01d", "SWVTYibb"]' \
    --type 'bUShrDCT' \
    --userId '26B7hSkO' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["41gowb4C", "js23f5kX", "Qjcd4F7Y"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '49' \
    --name 'pq4lLgSt' \
    --offset '54' \
    --orderby 'TGdcjZaI' \
    --sortby 'l80fFBJj' \
    --subtype 'v19IXRHb' \
    --tags '["uMWBPe3G", "q1FkgjWM", "U9wld7SR"]' \
    --type 'BIyOS8ce' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["MCRipbwS", "RUOBXG4O", "BwMinRZr"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode '9L02iEL1' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'GMqDKJeN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'MhADufVI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId '2hLymM7t' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'mzoTJFXx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '99' \
    --orderby 'roNe4or6' \
    --sortby 'ESEWeLyy' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'Lw9b51MW' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'BVz7sim1' \
    --limit '21' \
    --name '4j1Z6Sjq' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'JL1WSL9H' \
    --body '{"name": "sO3TUmJB"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId '9q7RWM0v' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'C5O3reh6' \
    --namespace $AB_NAMESPACE \
    --userId 'EZoPlO2n' \
    --body '{"name": "AfRidWpx"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'XFvUKR2J' \
    --namespace $AB_NAMESPACE \
    --userId 'SZjJNavs' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'cWbS1Bca' \
    --namespace $AB_NAMESPACE \
    --userId 'MlwlTffH' \
    --body '{"contentType": "HXDavPGF", "customAttributes": {"ySe3BDN9": {}, "coflAeUh": {}, "cpAU7CC0": {}}, "fileExtension": "O0QM5isJ", "name": "Lm5Mvgdn", "preview": "7FggIeD0", "previewMetadata": {"previewContentType": "EpqQSeM6", "previewFileExtension": "5mxbIuRS"}, "subType": "Pk5tXQl7", "tags": ["WLcobmPh", "fCuOan9e", "n258akJ1"], "type": "lXK6iqan"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'OCrdfmw3' \
    --namespace $AB_NAMESPACE \
    --shareCode 'PRHFJ53b' \
    --userId 'hf4mjVPm' \
    --body '{"contentType": "bWMAZWpM", "customAttributes": {"csWsYAbw": {}, "JjqyV97N": {}, "OupWnw79": {}}, "fileExtension": "72nzUZi8", "name": "IF17lqe2", "payload": "cbUwiv5j", "preview": "r4dH9ZjB", "previewMetadata": {"previewContentType": "Da38hpXX", "previewFileExtension": "qkf1ZNYS"}, "subType": "tX58yPSp", "tags": ["lRwF3OFg", "69JbUW27", "KHF6pMai"], "type": "RbDuh81K", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'bKDxh5Ux' \
    --contentId 'oMKDKACY' \
    --namespace $AB_NAMESPACE \
    --userId '94EM6M7d' \
    --body '{"contentType": "BK7icMIi", "customAttributes": {"3LgrJODK": {}, "1mynzbX9": {}, "CnYzRnUM": {}}, "fileExtension": "stLv6JK3", "name": "111JYlUk", "payload": "c2jAYK2S", "preview": "k6xPJsf5", "previewMetadata": {"previewContentType": "JmKK3W3K", "previewFileExtension": "9AURLKcD"}, "subType": "PQxV08Fq", "tags": ["thFb59B1", "Ura2fc0q", "HaCfLX7j"], "type": "dfUX8w7i", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId 'DxcjdfTc' \
    --namespace $AB_NAMESPACE \
    --shareCode 'K9Xk1jQ2' \
    --userId '5ruYQmvI' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'r02bYee5' \
    --contentId 'KTOWWy5S' \
    --namespace $AB_NAMESPACE \
    --userId 'qDwiNBKL' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'wMc7XnsN' \
    --contentId 'r3i0ovor' \
    --namespace $AB_NAMESPACE \
    --userId '7MEFVura' \
    --body '{"shareCode": "9pK65H1N"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'Q0lTLYIw' \
    --limit '14' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'oPAVgABk' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'T7RpQjUp' \
    --namespace $AB_NAMESPACE \
    --userId '5sWSP5Kw' \
    --body '{"screenshots": [{"description": "z4vrUXA9", "screenshotId": "VFi3LvHy"}, {"description": "9T5VViZB", "screenshotId": "Z95SFfdf"}, {"description": "D06Cx9N4", "screenshotId": "m3d1ikoJ"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'T0r6kkoq' \
    --namespace $AB_NAMESPACE \
    --userId 'LLcrjSp5' \
    --body '{"screenshots": [{"contentType": "eVTTDHzB", "description": "FFnNe6vH", "fileExtension": "pjp"}, {"contentType": "kfb0TAr4", "description": "JK8nH1ga", "fileExtension": "png"}, {"contentType": "O3DkwIE0", "description": "E12naUgX", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'ohmt7PuM' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'jb9o1NAb' \
    --userId 'GEHIXpOt' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'rfExlHp1' \
    --body '{"followStatus": false}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'r44ZoSDa' \
    --limit '6' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'CC6OibFk' \
    --limit '50' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'GaeWy3Za' \
    --limit '60' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'WRZOXOoI' \
    --body '{"contents": ["5kd2hBzD", "8cJtAAEB", "JIH9zJtf"], "name": "yZU7Zz9F"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'YvIaSSyj' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'uMJQ1Bwp' \
    --namespace $AB_NAMESPACE \
    --userId '6lWnkQP0' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'XTsY68Oz' \
    --namespace $AB_NAMESPACE \
    --userId 'nGFMMVVB' \
    --body '{"contents": ["CPia5ggE", "FRMlZg3J", "H0L8qrH6"], "name": "elIw9rh6"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'PKyfP9XK' \
    --namespace $AB_NAMESPACE \
    --userId 'AFdPHnRM' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'ATJWX4EL' \
    --namespace $AB_NAMESPACE \
    --userId 'ByxaqdMA' \
    --limit '39' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'mzn7t2av' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'MsJ03z58' \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --name 'Rb2uwpDC' \
    --offset '30' \
    --sortBy 'xyDjc8ze' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId '0cDNck9o' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "Av1GfHdA", "customAttributes": {"icFGmbaa": {}, "TiXtsO0O": {}, "aM4oPKcf": {}}, "fileExtension": "CkL5qvCh", "name": "s8w2vhJJ", "shareCode": "IlxyFlNU", "subType": "eYn21n0E", "tags": ["V9csiNPt", "k8vkNBlZ", "GQ1UyHv0"], "type": "v3kdc3NT"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId '2wVSZK84' \
    --contentId '0zse3p1i' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'uEFFd0p9' \
    --contentId 'aIva0WlF' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"OqKbTxVP": {}, "rkyKluwD": {}, "lM7LDPhZ": {}}, "name": "nFEQAvha", "shareCode": "EY1fzXQ9", "subType": "f3EZSBCN", "tags": ["jgWPSC6A", "EqvkDBhT", "Km0NlVsZ"], "type": "rqon3MCh"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminCopyContent
samples/cli/sample-apps Ugc adminCopyContent \
    --channelId 'YfDbNpQK' \
    --contentId 'Ktq8b4SE' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"rZKONuWK": {}, "HgE2mGZ0": {}, "Swwct4dz": {}}, "name": "dhyHtoXJ", "subType": "oHShSoNP", "tags": ["u4r59TAW", "yjc1UWHG", "30ySZXxt"], "targetChannelId": "RjUQrTnr", "type": "a7ZBBnJY"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminCopyContent' test.out

#- 107 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'VbKmbW43' \
    --contentId 'KMyse60h' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "hvHaar8B", "fileLocation": "BIS8pnNA"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminUpdateOfficialContentFileLocation' test.out

#- 108 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'bmeMGwS6' \
    --contentId '1WlkulQ5' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "IhvPdo6v", "fileExtension": "xMEGjhVI"}' \
    > test.out 2>&1
eval_tap $? 108 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 109 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 109 'AdminGetConfigs' test.out

#- 110 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key 'jZWlV4wu' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "OvfVdZN9"}' \
    > test.out 2>&1
eval_tap $? 110 'AdminUpdateConfig' test.out

#- 111 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '43' \
    --name 'MEePdCVy' \
    --offset '67' \
    --sortBy 'dCZqF6TB' \
    --subType 'JtS8aOVb' \
    --tags '["HL7XWccX", "ZbuWdj5Q", "1dmuqEFn"]' \
    --type 'BjznkUyf' \
    > test.out 2>&1
eval_tap $? 111 'AdminListContentV2' test.out

#- 112 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["6DkPXZ62", "pW1uvBgJ", "7m1fGag2"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminBulkGetContentByIDsV2' test.out

#- 113 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["PPPg3AGw", "MajJ9rgt", "fM6xDGxI"]}' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentBulkByShareCodesV2' test.out

#- 114 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode '0YFilQmZ' \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByShareCodeV2' test.out

#- 115 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 'XqlnjrLY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'AdminGetContentByContentIDV2' test.out

#- 116 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'PYDugnQv' \
    --namespace $AB_NAMESPACE \
    --versionId 'o9lK9md7' \
    > test.out 2>&1
eval_tap $? 116 'RollbackContentVersionV2' test.out

#- 117 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId '4VcEfq0s' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "Oj5F63J8", "screenshotId": "Wo5gODO4"}, {"description": "wkNrFbvJ", "screenshotId": "OQsxfZD6"}, {"description": "bPlu9dea", "screenshotId": "LdPqL0px"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateScreenshotsV2' test.out

#- 118 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 'RFDnsGFf' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "rJvgR09P", "description": "HzTlIAYe", "fileExtension": "bmp"}, {"contentType": "pJmsJOBz", "description": "x9L5ZeWb", "fileExtension": "bmp"}, {"contentType": "rDnY9Pv9", "description": "Nj9RlazD", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 118 'AdminUploadContentScreenshotV2' test.out

#- 119 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 's7sYc4YJ' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'MYsO5zXW' \
    > test.out 2>&1
eval_tap $? 119 'AdminDeleteContentScreenshotV2' test.out

#- 120 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'YqBSV4hw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 120 'ListContentVersionsV2' test.out

#- 121 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'iGTxq8pc' \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 121 'AdminGetOfficialGroupContentsV2' test.out

#- 122 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '11' \
    --sortBy 'MIbc7Ppb' \
    --status 'MKmKT0Jb' \
    > test.out 2>&1
eval_tap $? 122 'AdminListStagingContents' test.out

#- 123 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId 'k7DBwHbf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminGetStagingContentByID' test.out

#- 124 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId 'BSNF25Fj' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": true, "note": "zCMHyZDr"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminApproveStagingContent' test.out

#- 125 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'DPQYCOVK' \
    --namespace $AB_NAMESPACE \
    --shareCode 'nlkdka45' \
    --userId 'nRmfCLq8' \
    --body '{"customAttributes": {"Thqn7deo": {}, "X6hUxgg3": {}, "RS6dLTGy": {}}, "name": "sYO830T7", "shareCode": "ZYOqFXEj", "subType": "tN4i0oYH", "tags": ["KWeQtnWC", "6JSzOheo", "5LqnJM8G"], "type": "8tr3SR4I"}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateContentByShareCodeV2' test.out

#- 126 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId '2zeTRbpL' \
    --namespace $AB_NAMESPACE \
    --shareCode 'NhZGROHZ' \
    --userId '6pDPJ2XX' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteContentByShareCodeV2' test.out

#- 127 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'tNOHs9qX' \
    --contentId 'YsoPqGff' \
    --namespace $AB_NAMESPACE \
    --userId 'BskLmXrP' \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteUserContentV2' test.out

#- 128 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'KOx6uYWa' \
    --contentId '0GghoBlx' \
    --namespace $AB_NAMESPACE \
    --userId 'CD6jdGmb' \
    --body '{"customAttributes": {"X9t7jKHv": {}, "bp1uZ4it": {}, "zNfl7StW": {}}, "name": "tKF4JCPk", "shareCode": "0puUei1Z", "subType": "adD39xcI", "tags": ["tuCQieSM", "bvDruh6J", "VpUKajlp"], "type": "Bju1ywrp"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentV2' test.out

#- 129 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'NwUNZi9B' \
    --contentId 'SIJSEBdY' \
    --namespace $AB_NAMESPACE \
    --userId 'z6Es3CaD' \
    --body '{"fileExtension": "8PbnvOiF", "fileLocation": "MCFKFii7"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateUserContentFileLocation' test.out

#- 130 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'SJZqwheA' \
    --contentId 'Ru7yjpGW' \
    --namespace $AB_NAMESPACE \
    --userId 'ZLnkXGjx' \
    --body '{"contentType": "mbkhjLYL", "fileExtension": "SplWj2Jx"}' \
    > test.out 2>&1
eval_tap $? 130 'AdminGenerateUserContentUploadURLV2' test.out

#- 131 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'SI3118gc' \
    --limit '49' \
    --offset '2' \
    --sortBy 'Cd1afN2n' \
    > test.out 2>&1
eval_tap $? 131 'AdminGetContentByUserIDV2' test.out

#- 132 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId '2R1qnNY1' \
    --namespace $AB_NAMESPACE \
    --userId '447a1iI2' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 132 'AdminUpdateContentHideStatusV2' test.out

#- 133 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'wdC9c4CT' \
    --namespace $AB_NAMESPACE \
    --userId 'oF57UPGf' \
    --limit '52' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 133 'AdminGetUserGroupContentsV2' test.out

#- 134 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'KLViOGeW' \
    --limit '98' \
    --offset '21' \
    --sortBy 'XqO921rp' \
    --status 'rBG7FEod' \
    > test.out 2>&1
eval_tap $? 134 'AdminListUserStagingContents' test.out

#- 135 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'HAIWjLG1' \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --name 'r4NbhAh2' \
    --offset '87' \
    --sortBy 'cQBfozuz' \
    > test.out 2>&1
eval_tap $? 135 'PublicGetContentByChannelIDV2' test.out

#- 136 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '48' \
    --name 'dtDCOAqf' \
    --offset '1' \
    --sortBy 'Jl8eZvcn' \
    --subType '5hf5qVMf' \
    --tags '["wjQaaHMw", "GbJX3HOh", "Z7sRJrqH"]' \
    --type 'qXmG5HWq' \
    > test.out 2>&1
eval_tap $? 136 'PublicListContentV2' test.out

#- 137 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["NmiD4WS9", "TkXoPfKp", "W7TwywkZ"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicBulkGetContentByIDV2' test.out

#- 138 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["43VzWy06", "MN8YNzIP", "VKYTDXKV"]}' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentBulkByShareCodesV2' test.out

#- 139 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode '5bFm9NeM' \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByShareCodeV2' test.out

#- 140 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'P2vrh88u' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicGetContentByIDV2' test.out

#- 141 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'PGGkk8xP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 141 'PublicAddDownloadCountV2' test.out

#- 142 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'FlAqQVma' \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '32' \
    --sortBy 'tuIId1PQ' \
    --userId 'kaWhDHn0' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentDownloaderV2' test.out

#- 143 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'FcQiKkr6' \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '1' \
    --sortBy 'XRxegqJW' \
    > test.out 2>&1
eval_tap $? 143 'PublicListContentLikeV2' test.out

#- 144 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId 'EOLEduXq' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateContentLikeStatusV2' test.out

#- 145 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'DdCELyvc' \
    --namespace $AB_NAMESPACE \
    --userId 'k65c05r5' \
    --body '{"contentType": "IAUyRnxO", "customAttributes": {"dsYXfEeF": {}, "fTPX5qkW": {}, "kloHP3hL": {}}, "fileExtension": "42hnhXyc", "name": "bebko224", "subType": "JclptJQX", "tags": ["JWGbaC39", "auGijfkj", "GsapirTK"], "type": "7QElXxKR"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicCreateContentV2' test.out

#- 146 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'rGRsU6E8' \
    --namespace $AB_NAMESPACE \
    --shareCode 'sdGuqssX' \
    --userId '8WjNF7PH' \
    --body '{"customAttributes": {"20ZoYAEA": {}, "hVapzN7S": {}, "0KFFTYzP": {}}, "name": "22I4yl9y", "subType": "t9qyCOzI", "tags": ["Eyu3YEaK", "i1KwPiNk", "ahldhy9Z"], "type": "75XKvyCW"}' \
    > test.out 2>&1
eval_tap $? 146 'PublicUpdateContentByShareCodeV2' test.out

#- 147 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'lFX2ns7y' \
    --namespace $AB_NAMESPACE \
    --shareCode 'C7T6eRp7' \
    --userId '0K8iQPZX' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentByShareCodeV2' test.out

#- 148 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId '0rkRPmY6' \
    --contentId 'd96zTFaC' \
    --namespace $AB_NAMESPACE \
    --userId 'YslcREku' \
    > test.out 2>&1
eval_tap $? 148 'PublicDeleteContentV2' test.out

#- 149 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'UClbApIa' \
    --contentId 'RNaC8LWT' \
    --namespace $AB_NAMESPACE \
    --userId '8mpcM2TQ' \
    --body '{"customAttributes": {"LaH6sefM": {}, "nfcaiFpC": {}, "nVk46l1T": {}}, "name": "DVoz8WDv", "subType": "gDazwCfc", "tags": ["cGe5glxT", "lCg7GsMi", "m2SP88GD"], "type": "PfLzTmso"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentV2' test.out

#- 150 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId '1m1tstam' \
    --contentId 'QdQtVytR' \
    --namespace $AB_NAMESPACE \
    --userId 'bHDkYDPo' \
    --body '{"fileExtension": "uFmgs7E6", "fileLocation": "m7aVgCyo"}' \
    > test.out 2>&1
eval_tap $? 150 'PublicUpdateContentFileLocation' test.out

#- 151 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId '5jtyogaL' \
    --contentId 'EdABOGkw' \
    --namespace $AB_NAMESPACE \
    --userId '5lT8g6II' \
    --body '{"shareCode": "xLd0LGDz"}' \
    > test.out 2>&1
eval_tap $? 151 'UpdateContentShareCodeV2' test.out

#- 152 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'pwUVynZG' \
    --contentId '7n1YP8o0' \
    --namespace $AB_NAMESPACE \
    --userId 'w5MtGb1v' \
    --body '{"contentType": "GBPiJNlU", "fileExtension": "tgpB2HdX"}' \
    > test.out 2>&1
eval_tap $? 152 'PublicGenerateContentUploadURLV2' test.out

#- 153 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId '6lypujgF' \
    --limit '60' \
    --offset '83' \
    --sortBy 'XlwHPvyH' \
    > test.out 2>&1
eval_tap $? 153 'PublicGetContentByUserIDV2' test.out

#- 154 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'R2f4i9Uo' \
    --namespace $AB_NAMESPACE \
    --userId 'DlGXHevz' \
    --body '{"screenshots": [{"description": "iVeLL5g7", "screenshotId": "zCr1IVMC"}, {"description": "9IPPn7Gx", "screenshotId": "e2nn5dzw"}, {"description": "fFw2GaXR", "screenshotId": "H1Y0PrA0"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UpdateScreenshotsV2' test.out

#- 155 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'eoLQgcJi' \
    --namespace $AB_NAMESPACE \
    --userId 'qPKVcBA4' \
    --body '{"screenshots": [{"contentType": "NSJ5Drvd", "description": "rFBY7ZSY", "fileExtension": "jfif"}, {"contentType": "K2KSqCoG", "description": "0E5i6BUE", "fileExtension": "jfif"}, {"contentType": "oh6yt7rH", "description": "8q7jfC9Z", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 155 'UploadContentScreenshotV2' test.out

#- 156 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'nu1cMXcR' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'MCj9vJni' \
    --userId 'DEPPU0Ej' \
    > test.out 2>&1
eval_tap $? 156 'DeleteContentScreenshotV2' test.out

#- 157 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'hvOfyHdy' \
    --namespace $AB_NAMESPACE \
    --userId 'oa4WdODM' \
    --limit '66' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 157 'PublicGetGroupContentsV2' test.out

#- 158 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'qyCnxlMU' \
    --limit '28' \
    --offset '64' \
    --sortBy 'aJlp9rU3' \
    --status '6ZBcGM6e' \
    > test.out 2>&1
eval_tap $? 158 'ListUserStagingContents' test.out

#- 159 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId 'xbjtIJ4r' \
    --namespace $AB_NAMESPACE \
    --userId 'U23C2oNO' \
    > test.out 2>&1
eval_tap $? 159 'GetUserStagingContentByID' test.out

#- 160 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId 'YZhzqjQP' \
    --namespace $AB_NAMESPACE \
    --userId 'l5H6FMXN' \
    --body '{"fileExtension": "4OhRlNv9", "fileLocation": "Yk4tZ3Qt"}' \
    > test.out 2>&1
eval_tap $? 160 'UpdateStagingContent' test.out

#- 161 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId 'mjxGVZV6' \
    --namespace $AB_NAMESPACE \
    --userId 'AfCzMAUO' \
    > test.out 2>&1
eval_tap $? 161 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE