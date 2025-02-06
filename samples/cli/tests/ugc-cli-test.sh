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
    --limit '96' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "x9JBZisB", "name": "t8TjaOxw"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'ywt153cv' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "U4zvt5LV"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'GJumBoY7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId '5741ircR' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "DrinzIH2", "customAttributes": {"jjnPzt8n": {}, "H3aQvAEb": {}, "qk9IGRTi": {}}, "fileExtension": "rOcNNITD", "name": "JVS9W0pu", "preview": "F95YNCGV", "previewMetadata": {"previewContentType": "orLe68Qz", "previewFileExtension": "XpUHpVTm"}, "shareCode": "MDbN3319", "subType": "3GvYwRFl", "tags": ["3cBlYaEH", "eBN9R8ev", "h6Bqeo27"], "type": "y18JuGgt"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'ffEiIV4r' \
    --contentId 'Ie7GrSzw' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "sqadtPRk", "customAttributes": {"YSBXsuOM": {}, "0wOW4hcy": {}, "cUQFYVIA": {}}, "fileExtension": "IMpHJbFY", "name": "uqizxHSg", "payload": "edHHbMqD", "preview": "JKjHZjoB", "previewMetadata": {"previewContentType": "5AXU8KaV", "previewFileExtension": "iNbzYUWn"}, "shareCode": "QabFj2zf", "subType": "nJoqNMOt", "tags": ["jdGZqSFB", "pukdt8Uy", "U7KRS40p"], "type": "v63QeIPq", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'ViBOWnF4' \
    --namespace $AB_NAMESPACE \
    --creator 'tKvjskyN' \
    --ishidden 'jYpLhs5e' \
    --isofficial 'XHwlDXnX' \
    --limit '90' \
    --name 'IxolB2us' \
    --offset '81' \
    --orderby 'Iu1yrFKX' \
    --sortby 'Pqc3u69h' \
    --subtype 'ZBHb0N21' \
    --tags '["HrCTkrL5", "ffekiL23", "m3NxEFa8"]' \
    --type 'pJ2HpNpP' \
    --userId 'sNyP2A1C' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'Fbm3iA2t' \
    --contentId 'GnnbWBPo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["gMEG1R75", "pnko1ETn", "yB6J2e2c"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'S6BnsRH8' \
    --ishidden 'y1Vyx880' \
    --isofficial 'o3GzXnUq' \
    --limit '90' \
    --name 'cYLfef9n' \
    --offset '62' \
    --orderby 'mZo6pk3c' \
    --sortby 'mrMlp2d4' \
    --subtype 'FGFYeShr' \
    --tags '["ycx8MaK5", "yRBETRGM", "8fmZ4m2m"]' \
    --type 'yDUEqn3B' \
    --userId 'NCvJIAuL' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["1LmV0x04", "2Xkyxh19", "RugC9TVd"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'EHPEXjml' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'QcQKquem' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'dFgBjOHU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId '2norPThX' \
    --namespace $AB_NAMESPACE \
    --versionId 'CQiDkPcD' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId '23YmyFny' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "SuM9LHH8", "screenshotId": "GE0AlWBA"}, {"description": "NOScxVII", "screenshotId": "dJEdt4Aq"}, {"description": "rJNcZnqQ", "screenshotId": "UP19MpKY"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'BaAIGHhQ' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "RwD9F5jl", "description": "PQi62qXG", "fileExtension": "pjp"}, {"contentType": "cICpa91F", "description": "5ZXUCMwq", "fileExtension": "jpg"}, {"contentType": "pyeUYy2K", "description": "TUHV8GfW", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId '4Zo2Iet8' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'YbHQq96C' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'FW8Z30Hg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["v3UYEWPl", "wWlpY3zp", "FJB6Hfxu"], "name": "hHXiPj7z"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'dSSkG02U' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'HaFO6xp2' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["RtByUvqg", "XjLxS89j", "rAnupI17"], "name": "Caoxse22"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'VmgatKu0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'THEn0a6r' \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "zSpracaq"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'EqJ6S7l6' \
    --body '{"tag": "E537pblY"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId '8SqH8lvQ' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["6zG0jAws", "2WBv8oxM", "EH0CX3i3"], "type": "MmzRtWCo"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'bFDypJID' \
    --body '{"subtype": ["daLx7vGX", "zkD2tm7E", "r3ylQ879"], "type": "Ph9d8Bx6"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'pSxxRHeQ' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId '584j9snH' \
    --limit '95' \
    --name 'y7wEpyqo' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'gvF2tE0Q' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'RJy1DT45' \
    --namespace $AB_NAMESPACE \
    --userId '46F4B9s7' \
    --body '{"name": "dIxYZCkP"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId '06PePdSj' \
    --namespace $AB_NAMESPACE \
    --userId '5JJtGg4W' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'BCbkIqXm' \
    --namespace $AB_NAMESPACE \
    --shareCode 'BQ7zaYNK' \
    --userId 'cN12DK3J' \
    --body '{"contentType": "kSLz9zsb", "customAttributes": {"kEoeVR0r": {}, "fFLHeCSs": {}, "YhLGbJpC": {}}, "fileExtension": "LjGhahZ3", "name": "AHvUmO0O", "payload": "3ikb9aPp", "preview": "IB6GjaTk", "previewMetadata": {"previewContentType": "OSlv95eg", "previewFileExtension": "R73c0r2H"}, "shareCode": "FuJz2ETX", "subType": "SAQkHuYe", "tags": ["XmG8iUZb", "DEdSM7kq", "4Owsewre"], "type": "doSHXRUX", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId '5bhSL9LT' \
    --contentId 'herOmqtW' \
    --namespace $AB_NAMESPACE \
    --userId 'AkKrxi4A' \
    --body '{"contentType": "6slL25kl", "customAttributes": {"WpKZEhWb": {}, "q6gcI62F": {}, "2HPyz4ch": {}}, "fileExtension": "vie9QY3n", "name": "HepuHjUw", "payload": "7rNkMeWL", "preview": "aiy1MrEj", "previewMetadata": {"previewContentType": "RJwwNsD2", "previewFileExtension": "JwpQQlXt"}, "shareCode": "dmXEoa1I", "subType": "R4EwF83B", "tags": ["0q6OCSSg", "tF2QwTBK", "IHkkCrpd"], "type": "CEr9pT3r", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'qp03A71v' \
    --namespace $AB_NAMESPACE \
    --shareCode '2pe2JaNz' \
    --userId 'nZbHQZXb' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'ocAPlQ2i' \
    --contentId 'NThJwYrX' \
    --namespace $AB_NAMESPACE \
    --userId 'KcFosC88' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'UamE4D2a' \
    --limit '39' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'DUB79pvs' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'wpoe5h7F' \
    --namespace $AB_NAMESPACE \
    --userId 'CPc979Ss' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'gYuu25fq' \
    --limit '95' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'qe0ShSzc' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId '0Q6DB03w' \
    --namespace $AB_NAMESPACE \
    --userId 'Fx2HI1Dx' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'DnSfWFEX' \
    --namespace $AB_NAMESPACE \
    --userId 'wtCtXpb5' \
    --body '{"contents": ["j5tIPzeh", "VWyYISPV", "QEjNOXYt"], "name": "kSRkrxqc"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'Z2Qt5QjZ' \
    --namespace $AB_NAMESPACE \
    --userId 'Ao6DLP4k' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'qObOthL9' \
    --namespace $AB_NAMESPACE \
    --userId 'H9RudQ44' \
    --limit '13' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'yICEMcFJ' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'wnZ5Kb8t' \
    --namespace $AB_NAMESPACE \
    --creator 'QGFZStB6' \
    --ishidden '1F2VjKGX' \
    --isofficial 'g4m01prF' \
    --limit '72' \
    --name '4ly8b3Ys' \
    --offset '7' \
    --orderby 'hTjqNqku' \
    --sortby '3Re7waEA' \
    --subtype 'GYmvYiKL' \
    --tags '["v0ugk4sk", "R2MzTqpJ", "4Bhn0sGq"]' \
    --type 'd6zLfpHN' \
    --userId 'ShjzWhMU' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'IBnQGWrt' \
    --ishidden '97jqif6s' \
    --isofficial '2pIEuQ2D' \
    --limit '40' \
    --name 'pDVcbMXT' \
    --offset '57' \
    --orderby 'rBk1RFRC' \
    --sortby 'SI0m8jeI' \
    --subtype 'oGynTnyt' \
    --tags '["lV8P0A0C", "Y54pFu85", "GSiJ6H64"]' \
    --type 'dKspfrA5' \
    --userId '1sMjNozs' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["60XhNdvI", "sFQqcj6x", "kWRQmV2u"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '7' \
    --name 'dN7CpG4X' \
    --offset '53' \
    --orderby '1Sq9GHG3' \
    --sortby 'EndRQJVk' \
    --subtype 'dnUvzmfj' \
    --tags '["1klYQ5ge", "CQPqwcYh", "4vYQGG8L"]' \
    --type 'lzrpARdJ' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["W9iH8cxZ", "nWAGB4D2", "udadVFPY"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'JbZKim0o' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'fMXRYdPO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'TE84ezSF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId '9EmezOmB' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'K1jIOBCZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '5' \
    --orderby 'hQYUFFgS' \
    --sortby 'fqAnHsaD' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'F4eeUNBd' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'JixsA0N1' \
    --limit '35' \
    --name 'wyCk9MSU' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'jPusTYJQ' \
    --body '{"name": "HHWMKvQF"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'coUN3Zsu' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'BZtvggpK' \
    --namespace $AB_NAMESPACE \
    --userId 'RroCOTSu' \
    --body '{"name": "cC4LoKJh"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId '51r6QFio' \
    --namespace $AB_NAMESPACE \
    --userId 'eIa9PmVq' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId '2xNjv5k0' \
    --namespace $AB_NAMESPACE \
    --userId 'M68Oahuy' \
    --body '{"contentType": "H8smClE7", "customAttributes": {"L2m7qVSO": {}, "oWFrz7z8": {}, "JR1M3ats": {}}, "fileExtension": "F0OYMmo0", "name": "pgOnntIA", "preview": "cmu5jzHW", "previewMetadata": {"previewContentType": "Zh0E7aiq", "previewFileExtension": "qOIteUe1"}, "subType": "icJk9KMs", "tags": ["movFXwQi", "3Upq0DVa", "Ub69e4qU"], "type": "LkgiOmDs"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId '9RVojjRt' \
    --namespace $AB_NAMESPACE \
    --shareCode 'KgtDnDTS' \
    --userId 'zYzMjrG6' \
    --body '{"contentType": "o187Infm", "customAttributes": {"lkrc53Uh": {}, "KSQQJEKj": {}, "NhBzjJO0": {}}, "fileExtension": "9WnydFgJ", "name": "dH7rHKER", "payload": "7sUGvEUG", "preview": "87pgxtUE", "previewMetadata": {"previewContentType": "EO7tyubI", "previewFileExtension": "ZnMYlLWO"}, "subType": "oQVWDQSz", "tags": ["2n7OIdS4", "gWQsRl4D", "xSPD8cSh"], "type": "KipOtajI", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'BciUF0Im' \
    --contentId '7mLbQlpF' \
    --namespace $AB_NAMESPACE \
    --userId 'rFrtVs41' \
    --body '{"contentType": "yO4mxaIW", "customAttributes": {"XkL67iMJ": {}, "3Gs3h4KP": {}, "TuAO7PsH": {}}, "fileExtension": "vGZj1yFr", "name": "dtHvDEUz", "payload": "bHc04TaH", "preview": "6yWIKACQ", "previewMetadata": {"previewContentType": "ctztwz0F", "previewFileExtension": "4DPpxW0b"}, "subType": "g2XZmqqp", "tags": ["4QZTIYGE", "ZFbGFJbY", "oyiszRqT"], "type": "3fxIODju", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId 'KtX8foUG' \
    --namespace $AB_NAMESPACE \
    --shareCode 'AmUiBzmE' \
    --userId 'yj4iDGku' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId '8bx3Tpnj' \
    --contentId 'bNKHBdy1' \
    --namespace $AB_NAMESPACE \
    --userId '2HW4kqDP' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'OWRP3t0X' \
    --contentId 'qaq6StMX' \
    --namespace $AB_NAMESPACE \
    --userId '3GXk43Ap' \
    --body '{"shareCode": "U2BkwcOR"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'AuzkSDYY' \
    --limit '92' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'jkeKOoEu' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'sYZm3t6H' \
    --namespace $AB_NAMESPACE \
    --userId 'PdLS7AlX' \
    --body '{"screenshots": [{"description": "aNa2bKwI", "screenshotId": "l7Xbo2w5"}, {"description": "1TboBha3", "screenshotId": "4D25vFoG"}, {"description": "ygJyBI3R", "screenshotId": "ba0oOYvP"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'SLP4YEMi' \
    --namespace $AB_NAMESPACE \
    --userId 't8d2NG8B' \
    --body '{"screenshots": [{"contentType": "TMCb6ZDs", "description": "3jpAoJ1W", "fileExtension": "pjp"}, {"contentType": "BXfSm3ap", "description": "2HMLFSst", "fileExtension": "pjp"}, {"contentType": "DoR1ac4d", "description": "Jm3kFZgZ", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'hzL0faMS' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'B8U8dfF1' \
    --userId 'qXTcmBWg' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'TtAUdJqV' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'OBOR9vaA' \
    --limit '58' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'H9HgzNO9' \
    --limit '18' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId '5u1xfw7b' \
    --limit '45' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'Foxz4oOW' \
    --body '{"contents": ["xyq7teK4", "h0d2r5fU", "iwt6be5Z"], "name": "BxDQ2Te0"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId '9sqt7lrH' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'GvD5L0ih' \
    --namespace $AB_NAMESPACE \
    --userId '7Tx5iEWM' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'escdyqeL' \
    --namespace $AB_NAMESPACE \
    --userId 'ahwHNerB' \
    --body '{"contents": ["Hfs6Fpf5", "BImlpgg5", "G0C0SXDE"], "name": "b8thegZM"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'jxsn2CdD' \
    --namespace $AB_NAMESPACE \
    --userId 'nsnJS8Ul' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'XvElGQvz' \
    --namespace $AB_NAMESPACE \
    --userId 'wAzLkHaI' \
    --limit '13' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'jsppESzR' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'qJB4ksOq' \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --name 'r0DRVP1U' \
    --offset '27' \
    --sortBy 'cF3dPQM5' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'cgJ0kSGi' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "EkLjmFlj", "customAttributes": {"hgfcyuTx": {}, "Q0zYFypG": {}, "Ad6ucQuc": {}}, "fileExtension": "mYektfAw", "name": "EwTpJoG9", "shareCode": "O6hbBUzF", "subType": "UGYwTaP6", "tags": ["g6pXGAj9", "xJISyPkH", "xsRlCKxo"], "type": "e6lsTKi0"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'FgIB1gUX' \
    --contentId 'NyCFgU4Z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'agmoDOYY' \
    --contentId 'YwEPD8hI' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"WXESQewG": {}, "qDM3GjxN": {}, "E46WANGB": {}}, "name": "XGaez9gr", "shareCode": "4tmi5Oyz", "subType": "UYOgTvbo", "tags": ["egYMD8BC", "zl8aSon6", "1niDThnE"], "type": "k5S4jev4"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminCopyContent
samples/cli/sample-apps Ugc adminCopyContent \
    --channelId 'xkWuqmn9' \
    --contentId 'joo5dJTv' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"geB8TKdC": {}, "f7OOpi0q": {}, "16t2QYX1": {}}, "name": "6wGcZBZz", "subType": "mTum7wEf", "tags": ["ykQotC8Q", "fAsZf60c", "jVD6Igfh"], "targetChannelId": "8qIFlHzb", "type": "ZiOiR7Fu"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminCopyContent' test.out

#- 107 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'OmAhjjBE' \
    --contentId 'rvuZvSiX' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "2gg0ToZA", "fileLocation": "C7glHJBK"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminUpdateOfficialContentFileLocation' test.out

#- 108 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'pRhGwrIL' \
    --contentId '7l2idte1' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "eGPLAxJ9", "fileExtension": "2dxL7Ng5"}' \
    > test.out 2>&1
eval_tap $? 108 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 109 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 109 'AdminGetConfigs' test.out

#- 110 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key 'ElF70mky' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "V1223O97"}' \
    > test.out 2>&1
eval_tap $? 110 'AdminUpdateConfig' test.out

#- 111 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '30' \
    --name 'rewqwk2Q' \
    --offset '5' \
    --sortBy 'ZR3gkI1l' \
    --subType 'RT54DGyu' \
    --tags '["SReK01Ix", "bwidZpqI", "X1nJadUN"]' \
    --type 'mQ1tbehR' \
    > test.out 2>&1
eval_tap $? 111 'AdminListContentV2' test.out

#- 112 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["XUs3xbD0", "RAiaWqdU", "8pUKwTpX"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminBulkGetContentByIDsV2' test.out

#- 113 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["IbueMiBk", "RuzJednv", "9sj5x4Q6"]}' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentBulkByShareCodesV2' test.out

#- 114 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'xq2Rqc0g' \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByShareCodeV2' test.out

#- 115 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 'eO1jnNNB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'AdminGetContentByContentIDV2' test.out

#- 116 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'tV3138RY' \
    --namespace $AB_NAMESPACE \
    --versionId 'duENQ1JI' \
    > test.out 2>&1
eval_tap $? 116 'RollbackContentVersionV2' test.out

#- 117 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'ENGeqYEC' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "Uk6JSsul", "screenshotId": "3EecymON"}, {"description": "hqXmwx7z", "screenshotId": "WHWlucit"}, {"description": "cKHz3kJN", "screenshotId": "HdYNEQMQ"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateScreenshotsV2' test.out

#- 118 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId '4gerHgmM' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "v0HZVI50", "description": "xXae7Mk6", "fileExtension": "jfif"}, {"contentType": "xxQ78ep9", "description": "uC9hP5vM", "fileExtension": "jpg"}, {"contentType": "9Rr2TYaC", "description": "s6KxpHEc", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 118 'AdminUploadContentScreenshotV2' test.out

#- 119 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId '6SLrNJbz' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'qgHMrJ7g' \
    > test.out 2>&1
eval_tap $? 119 'AdminDeleteContentScreenshotV2' test.out

#- 120 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId '2tTtmqZb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 120 'ListContentVersionsV2' test.out

#- 121 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'qmPDGWNQ' \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 121 'AdminGetOfficialGroupContentsV2' test.out

#- 122 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '42' \
    --sortBy 'KtUGbmz2' \
    --status '3RGwnUjZ' \
    > test.out 2>&1
eval_tap $? 122 'AdminListStagingContents' test.out

#- 123 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId 'HTk92Uz3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminGetStagingContentByID' test.out

#- 124 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId '7faVUwa1' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": true, "note": "E7Sdpdv8"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminApproveStagingContent' test.out

#- 125 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'JO381vPs' \
    --namespace $AB_NAMESPACE \
    --shareCode '84CyrHah' \
    --userId 'Ilr9yTEB' \
    --body '{"customAttributes": {"N6ddsP9w": {}, "T0GIPtsZ": {}, "dEoF17jn": {}}, "name": "EejMG2LJ", "shareCode": "0pgm5tzA", "subType": "Cb5mZDtq", "tags": ["3ID7VGH6", "hoOrmrSL", "UboaJTtz"], "type": "odttZn6E"}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateContentByShareCodeV2' test.out

#- 126 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'u0DdHja9' \
    --namespace $AB_NAMESPACE \
    --shareCode 'YfcyLLHL' \
    --userId 'lf2XOhsi' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteContentByShareCodeV2' test.out

#- 127 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'NqVYxLDq' \
    --contentId 'LZVbbhTz' \
    --namespace $AB_NAMESPACE \
    --userId 'EMQPQ3lA' \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteUserContentV2' test.out

#- 128 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'zyFaAZpF' \
    --contentId 'y68baiEz' \
    --namespace $AB_NAMESPACE \
    --userId 'hcPga6kd' \
    --body '{"customAttributes": {"rPrvy33v": {}, "ytyAiAwI": {}, "m2WYlC13": {}}, "name": "PZUH1WGy", "shareCode": "zoRFfOXc", "subType": "6tmuPbsO", "tags": ["aqrHqh69", "2Z7mlH9f", "OmcPUOLg"], "type": "4NlhALLa"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentV2' test.out

#- 129 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'UBVnhNJ0' \
    --contentId 'wZc9QQtS' \
    --namespace $AB_NAMESPACE \
    --userId '3SpV6ueP' \
    --body '{"fileExtension": "4rG2MATb", "fileLocation": "KofEQtQL"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateUserContentFileLocation' test.out

#- 130 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'oFsvqzRB' \
    --contentId 'JRQHSydL' \
    --namespace $AB_NAMESPACE \
    --userId 'y9JBZB79' \
    --body '{"contentType": "cHITemuI", "fileExtension": "a30v9tDI"}' \
    > test.out 2>&1
eval_tap $? 130 'AdminGenerateUserContentUploadURLV2' test.out

#- 131 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'alilfwEl' \
    --limit '92' \
    --offset '61' \
    --sortBy 'JRdzZpQM' \
    > test.out 2>&1
eval_tap $? 131 'AdminGetContentByUserIDV2' test.out

#- 132 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'tbTeA7n6' \
    --namespace $AB_NAMESPACE \
    --userId '8BnCj8Xl' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 132 'AdminUpdateContentHideStatusV2' test.out

#- 133 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'UMRCnJcP' \
    --namespace $AB_NAMESPACE \
    --userId 'ysBMNZWh' \
    --limit '83' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 133 'AdminGetUserGroupContentsV2' test.out

#- 134 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'KQhb4cf8' \
    --limit '68' \
    --offset '69' \
    --sortBy '8X1ZLbeq' \
    --status '3nHjONcz' \
    > test.out 2>&1
eval_tap $? 134 'AdminListUserStagingContents' test.out

#- 135 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'ZDoJIBue' \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --name 'xUXDk8Ef' \
    --offset '31' \
    --sortBy 'aORz40oW' \
    > test.out 2>&1
eval_tap $? 135 'PublicGetContentByChannelIDV2' test.out

#- 136 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '59' \
    --name 'OR0ovIvY' \
    --offset '91' \
    --sortBy 'YqGGKwWX' \
    --subType 'a2URQdrl' \
    --tags '["qwwImhOp", "v1oq2Xtj", "YQ5zldcQ"]' \
    --type '0ZY8ZaKj' \
    > test.out 2>&1
eval_tap $? 136 'PublicListContentV2' test.out

#- 137 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["JqVWekZk", "pAfe246Q", "5xL39dDw"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicBulkGetContentByIDV2' test.out

#- 138 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["Ppk7oWEm", "rmTtd2Oh", "KZKuU80o"]}' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentBulkByShareCodesV2' test.out

#- 139 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'Ke7U2T0s' \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByShareCodeV2' test.out

#- 140 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'Dzkk6lXn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicGetContentByIDV2' test.out

#- 141 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId '9NEfzc7B' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 141 'PublicAddDownloadCountV2' test.out

#- 142 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'RiJvFZ9B' \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '72' \
    --sortBy 'ye3z9ijR' \
    --userId 'DW51X2LA' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentDownloaderV2' test.out

#- 143 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId '0iivZwag' \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '77' \
    --sortBy 'E590OWGp' \
    > test.out 2>&1
eval_tap $? 143 'PublicListContentLikeV2' test.out

#- 144 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId '0vOQKh9A' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateContentLikeStatusV2' test.out

#- 145 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'HgWwdFJj' \
    --namespace $AB_NAMESPACE \
    --userId 'pHLBdnwp' \
    --body '{"contentType": "c33pselT", "customAttributes": {"KISpampP": {}, "AByaLixH": {}, "kr5NSWwZ": {}}, "fileExtension": "82rH8tzH", "name": "dxkkMcsv", "subType": "1Gm0uX9v", "tags": ["0avbc3Q0", "4KfDD4zq", "SZY5rH4U"], "type": "Ipuj08CP"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicCreateContentV2' test.out

#- 146 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'I3TnmR2h' \
    --namespace $AB_NAMESPACE \
    --shareCode 'sUOM56Ox' \
    --userId 'xHRICYvm' \
    --body '{"customAttributes": {"h5CzSrVK": {}, "TIvQ0wlV": {}, "E4l4wRWP": {}}, "name": "m9L30a6z", "subType": "M0qTOyFE", "tags": ["bEv3cFuE", "HMHtaHZt", "Wj6Q5krm"], "type": "lob01xu7"}' \
    > test.out 2>&1
eval_tap $? 146 'PublicUpdateContentByShareCodeV2' test.out

#- 147 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'WjkW2A1m' \
    --namespace $AB_NAMESPACE \
    --shareCode 'caeSFgUW' \
    --userId 'S1gDIs11' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentByShareCodeV2' test.out

#- 148 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId '1e3z0t0C' \
    --contentId 'RWzynCiN' \
    --namespace $AB_NAMESPACE \
    --userId 'JVPFPAF7' \
    > test.out 2>&1
eval_tap $? 148 'PublicDeleteContentV2' test.out

#- 149 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'wMKDMVnp' \
    --contentId 'wVU7RYyS' \
    --namespace $AB_NAMESPACE \
    --userId '9AECKt5s' \
    --body '{"customAttributes": {"nZSXRzAu": {}, "lwg7sPDl": {}, "dF5MAvJ6": {}}, "name": "6ptZngR0", "subType": "oTPZEpda", "tags": ["4HHrJu5I", "fWaspHVt", "77fvrGqU"], "type": "LgLtiNuX"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentV2' test.out

#- 150 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'gh5eugOM' \
    --contentId '9dsN0Io2' \
    --namespace $AB_NAMESPACE \
    --userId 'VPQq9Ay2' \
    --body '{"fileExtension": "AKZW6D7K", "fileLocation": "WKMfrlST"}' \
    > test.out 2>&1
eval_tap $? 150 'PublicUpdateContentFileLocation' test.out

#- 151 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'yfilUDlV' \
    --contentId 'o6TOh8Ln' \
    --namespace $AB_NAMESPACE \
    --userId 'IzNk0pGc' \
    --body '{"shareCode": "yLLLSxyu"}' \
    > test.out 2>&1
eval_tap $? 151 'UpdateContentShareCodeV2' test.out

#- 152 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId '6pQa8gOW' \
    --contentId 'gF9mUgNW' \
    --namespace $AB_NAMESPACE \
    --userId 'nRmLLQCT' \
    --body '{"contentType": "cCxnmfOP", "fileExtension": "FLHIqKux"}' \
    > test.out 2>&1
eval_tap $? 152 'PublicGenerateContentUploadURLV2' test.out

#- 153 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'lVnbNmWR' \
    --limit '23' \
    --offset '37' \
    --sortBy 'YpoeqWHQ' \
    > test.out 2>&1
eval_tap $? 153 'PublicGetContentByUserIDV2' test.out

#- 154 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'A3avrlUt' \
    --namespace $AB_NAMESPACE \
    --userId 'okIO1Sh6' \
    --body '{"screenshots": [{"description": "y6IEAl80", "screenshotId": "ma8yhOZm"}, {"description": "BqEfwUjE", "screenshotId": "Mgf3Ncc7"}, {"description": "NlT1ybYH", "screenshotId": "wCjTdPS4"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UpdateScreenshotsV2' test.out

#- 155 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 's8bzxDkR' \
    --namespace $AB_NAMESPACE \
    --userId 'FZJgb7rt' \
    --body '{"screenshots": [{"contentType": "dhskJ8AF", "description": "cwCcpgQr", "fileExtension": "bmp"}, {"contentType": "AuJph3NZ", "description": "MdJHXPM4", "fileExtension": "jpeg"}, {"contentType": "toaet0gk", "description": "EOMnW4LR", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 155 'UploadContentScreenshotV2' test.out

#- 156 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'wCloWtwR' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'RBzm3OBz' \
    --userId 'RxE0Nl4v' \
    > test.out 2>&1
eval_tap $? 156 'DeleteContentScreenshotV2' test.out

#- 157 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'Wef821II' \
    --namespace $AB_NAMESPACE \
    --userId 'JhDxSoNn' \
    --limit '14' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 157 'PublicGetGroupContentsV2' test.out

#- 158 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId '9XxMqqtT' \
    --limit '70' \
    --offset '94' \
    --sortBy 'RoU3VIkq' \
    --status 'Sv0H7spm' \
    > test.out 2>&1
eval_tap $? 158 'ListUserStagingContents' test.out

#- 159 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId 'P4nmDM0Z' \
    --namespace $AB_NAMESPACE \
    --userId 'C7z4xNeW' \
    > test.out 2>&1
eval_tap $? 159 'GetUserStagingContentByID' test.out

#- 160 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId 'KcWcMbmQ' \
    --namespace $AB_NAMESPACE \
    --userId 'wgQoaEGQ' \
    --body '{"fileExtension": "uKm3Eguh", "fileLocation": "X2JUZ87s"}' \
    > test.out 2>&1
eval_tap $? 160 'UpdateStagingContent' test.out

#- 161 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId '9eXL9YoS' \
    --namespace $AB_NAMESPACE \
    --userId 'CM5DFDHQ' \
    > test.out 2>&1
eval_tap $? 161 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE