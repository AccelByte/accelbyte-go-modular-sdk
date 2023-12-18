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
echo "1..152"

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
    --limit '71' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "FeadWymn", "name": "RLUsmBYQ"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'WGpKqEjS' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "2c802ZSk"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'KobdIzTW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'kvqtRJnm' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "TkHxkY8z", "customAttributes": {"JEYo9yRM": {}, "ObuIUJhd": {}, "4pzrKhqH": {}}, "fileExtension": "xcLml7A1", "name": "X97GQlqx", "preview": "cG75a4Gk", "previewMetadata": {"previewContentType": "KH7KMJEu", "previewFileExtension": "xQvJQMMw"}, "shareCode": "fkiQ7ENm", "subType": "Q4uGt9my", "tags": ["9JeSGadS", "Vw81m9Mp", "RBAFtpij"], "type": "I0AeYFbc"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId '2bdv9MWf' \
    --contentId 'w8BgoQhW' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "cYA4FBFj", "customAttributes": {"Oa1xs9uq": {}, "ZwZynMdp": {}, "SELc3yQX": {}}, "fileExtension": "z0656sG9", "name": "sVh0QJZT", "payload": "QqRFac20", "preview": "OotAe0zS", "previewMetadata": {"previewContentType": "ODVpsssy", "previewFileExtension": "k1LmSF8s"}, "shareCode": "XimU3qIS", "subType": "xZtNuZ3l", "tags": ["g6LOyTSi", "acDHIFRf", "tUMUQlDG"], "type": "W9hAPslP", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId '9K22Nrle' \
    --namespace $AB_NAMESPACE \
    --creator 'IYa8ii7i' \
    --ishidden 'QNqtCUCT' \
    --isofficial 'eqS2J31t' \
    --limit '32' \
    --name 'lAll6IC4' \
    --offset '0' \
    --orderby 'NFOEBgNk' \
    --sortby 'r27LyJj2' \
    --subtype '2s2XtfaE' \
    --tags '["d0liTuhJ", "m7FwNkOn", "DO2glFnq"]' \
    --type 'c2q45ZWS' \
    --userId 'j56IRkHF' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId '64ABrx8P' \
    --contentId '71k0ox0M' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["K9zpo6S1", "6cBPu7it", "4HFxdBXX"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'ZZOuvsvJ' \
    --ishidden 'vV0ARDCk' \
    --isofficial '3iKtyckz' \
    --limit '32' \
    --name 'wXbOUAku' \
    --offset '95' \
    --orderby 'mRKc6BVj' \
    --sortby 'WEQhPMXI' \
    --subtype 'oOOv6bAb' \
    --tags '["mmER72kQ", "CldYQSYD", "lwK2NmuE"]' \
    --type 'U9DyVMpD' \
    --userId 'lemjJsgx' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["RPYGPqfB", "IsGMsZxo", "NI1Bw9v0"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode '9shfsYYv' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'wRvlVOGO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'TnD9Rvap' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'bS1CqPiy' \
    --namespace $AB_NAMESPACE \
    --versionId 'RllxNovw' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'HbxOqbnP' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "21n96o8g", "screenshotId": "xpIQIfCP"}, {"description": "rbZ8dm4D", "screenshotId": "pscdbhpp"}, {"description": "RH5eJscz", "screenshotId": "hV2veFet"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId '0ijccsIY' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "PxETXqcj", "description": "sCvU4iZt", "fileExtension": "jpg"}, {"contentType": "bLyXFnVP", "description": "Vb0xAIoj", "fileExtension": "jpeg"}, {"contentType": "2EsmsEZa", "description": "CA8oeA2q", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'SLKg1wKo' \
    --namespace $AB_NAMESPACE \
    --screenshotId '3oB7Ov6L' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'Y0uRZfY2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["abxAj3lA", "0BBReE9U", "WwAohJAN"], "name": "FBhFAzeR"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'EpomazUc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'afB7dfNc' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["WnAAOHAt", "wVFd3Fm5", "8ZMPldLo"], "name": "OItgBXoJ"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'Wil8TJCN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'hcHywchC' \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "cfTTqabs"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'HBIFuFlA' \
    --body '{"tag": "vlAV64dH"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'UuefMaI2' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["7Qsnmjfb", "EQr1j7vS", "6glWSZoR"], "type": "rl28wGQX"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'toTUPbfU' \
    --body '{"subtype": ["PwD3QrOW", "ksGxh1id", "oXFX4aEF"], "type": "IPPXbJdm"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'oVuoDqka' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'aXGEmVpQ' \
    --limit '83' \
    --name 'I4VXqABi' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'jJAAJlze' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'KgcXnvVU' \
    --namespace $AB_NAMESPACE \
    --userId 'XMlavkTY' \
    --body '{"name": "9FDGl4Oc"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'Xd4apj4S' \
    --namespace $AB_NAMESPACE \
    --userId 'ZFzvb5id' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'Dk0oibat' \
    --namespace $AB_NAMESPACE \
    --shareCode 'ZZazbsIe' \
    --userId 'x9Sj5gbG' \
    --body '{"contentType": "DxoxMv91", "customAttributes": {"mUu66XwE": {}, "qUDUmVQk": {}, "m3Tr74BK": {}}, "fileExtension": "IpaMN7hM", "name": "Zdfpmyke", "payload": "O1HghFe3", "preview": "3OgD0F49", "previewMetadata": {"previewContentType": "91nTxxR6", "previewFileExtension": "6UPEIIAL"}, "shareCode": "fg5lvWIr", "subType": "mV03Vmnm", "tags": ["UeeosF0C", "GgzaiZXc", "YZaCoG4i"], "type": "NeJIjYJy", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId '7YAQ5vmR' \
    --contentId 'KlGTQisP' \
    --namespace $AB_NAMESPACE \
    --userId 'yu0B0Stf' \
    --body '{"contentType": "HbavZsYs", "customAttributes": {"FUg2z0pS": {}, "1WrTjOI8": {}, "yE8voalS": {}}, "fileExtension": "9fv5kk4U", "name": "cterEeqw", "payload": "eJmsGTCP", "preview": "ShEjoUU1", "previewMetadata": {"previewContentType": "F6R5cP9l", "previewFileExtension": "sop08Xwf"}, "shareCode": "8j9PCcov", "subType": "gJOMlsRW", "tags": ["G51zxm7q", "sSWrPxyK", "t43HLWzG"], "type": "AeN5jtLz", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'u40kFVqJ' \
    --namespace $AB_NAMESPACE \
    --shareCode 'yRPJ4VjQ' \
    --userId 'crTxlq6B' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId '6p57rJKi' \
    --contentId 'eNuDnCFz' \
    --namespace $AB_NAMESPACE \
    --userId 'ne6j2rws' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'LQYWWUpH' \
    --limit '78' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'a9VwwDTr' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'OedC6M3y' \
    --namespace $AB_NAMESPACE \
    --userId 'w9lzCHbO' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'PU2ZtbkV' \
    --limit '89' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'qewLSAnT' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'xnvls41r' \
    --namespace $AB_NAMESPACE \
    --userId '2VCFODgZ' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'uqguOcLW' \
    --namespace $AB_NAMESPACE \
    --userId 'a1hsympk' \
    --body '{"contents": ["KiIG4Noc", "TuEOfzSG", "vyohw3Gv"], "name": "Xy9qPbw5"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId '7QpVci27' \
    --namespace $AB_NAMESPACE \
    --userId 'niYHFhkj' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'H5NVWM2x' \
    --namespace $AB_NAMESPACE \
    --userId 'fs58aQgJ' \
    --limit '24' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'RaQv5bk9' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'WCExzZGk' \
    --namespace $AB_NAMESPACE \
    --creator 'YPV6sTLy' \
    --ishidden 'aiPZbpQ5' \
    --isofficial 'GpB9tt2Y' \
    --limit '96' \
    --name 'RIKX4asK' \
    --offset '8' \
    --orderby 'AGzpvJOK' \
    --sortby 'nnU3OnQs' \
    --subtype 'lAQ89nNT' \
    --tags '["bGQFNsGL", "V1mzYNr8", "nQg2E46S"]' \
    --type 'xE31nzzn' \
    --userId 'YEefGeaA' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'JcHgAv5o' \
    --ishidden 'uJDpAecQ' \
    --isofficial 'TfwT3y0K' \
    --limit '32' \
    --name 'PBinFOPF' \
    --offset '94' \
    --orderby 'KJ18rx5Q' \
    --sortby 'AEXnUEeq' \
    --subtype 'C6akzNiq' \
    --tags '["s72n6fEU", "MlEFEDVV", "oSYnYDxd"]' \
    --type 'dk1FZqzL' \
    --userId 'YVrfAxfo' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["grwmSWFf", "429xSByn", "ncomcfQ3"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '14' \
    --name '7UQwYQrQ' \
    --offset '20' \
    --orderby 'f8AHs6RC' \
    --sortby 'Jrsa6QJr' \
    --subtype 'aJyO8sNj' \
    --tags '["Xa9Sp7hS", "Xbq0MhsW", "26cljc0b"]' \
    --type 'azWQTDTD' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["clWLTijD", "2pqMqeK2", "C0otLbFL"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'CmnljgjE' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId '3CPrKXwW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'xCzzWiWY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'b8f1ZuJM' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'sHeEksiw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '38' \
    --orderby 'ojTZXEGr' \
    --sortby '9yfFTsYP' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'ScLseYDV' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'GGjJMwcb' \
    --limit '86' \
    --name 'LoF9gNhM' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'vMlcUHYP' \
    --body '{"name": "XB1RjAUJ"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'DO9rGzKk' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'sfdGjRnr' \
    --namespace $AB_NAMESPACE \
    --userId 'agwycR4M' \
    --body '{"name": "q1qDRZFw"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'VawcrVEx' \
    --namespace $AB_NAMESPACE \
    --userId 'gFWtS6fw' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'ZnRK2wju' \
    --namespace $AB_NAMESPACE \
    --userId 'WXS9rCzA' \
    --body '{"contentType": "vKWU0Odz", "customAttributes": {"cuPyt7TR": {}, "klvZHkEQ": {}, "y6k1DsUG": {}}, "fileExtension": "d8xDYGbE", "name": "nqqKhzit", "preview": "8yeUPiUp", "previewMetadata": {"previewContentType": "4CCLjQbw", "previewFileExtension": "VeEjMkPO"}, "subType": "d9wjqnDx", "tags": ["qInge2In", "b6p3bnNy", "i9V71LFD"], "type": "1D8zkwZr"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'BaPjp96c' \
    --namespace $AB_NAMESPACE \
    --shareCode 'eSBPgaQo' \
    --userId 'sai0t95C' \
    --body '{"contentType": "tat0hdcc", "customAttributes": {"l0FMvaIA": {}, "MxLAIlM4": {}, "UottBWzl": {}}, "fileExtension": "hTznRvl4", "name": "ghoCsGKl", "payload": "JPJavX5B", "preview": "ww5x1NF6", "previewMetadata": {"previewContentType": "hm3nkpbJ", "previewFileExtension": "Zx1N66Zp"}, "subType": "GsHedb8D", "tags": ["XFkoLBCO", "S7cQlHiG", "1kPVZs6i"], "type": "89FRC8H4", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'GMQApLLn' \
    --contentId 'r5JV4vVq' \
    --namespace $AB_NAMESPACE \
    --userId 'R9LwEi87' \
    --body '{"contentType": "bqNNXBqJ", "customAttributes": {"exKJp6Iz": {}, "AkLp7roU": {}, "YDOJEIVr": {}}, "fileExtension": "5npagKH5", "name": "Vgp5xeSp", "payload": "4euU7V0f", "preview": "PexUApgC", "previewMetadata": {"previewContentType": "C4PTJ3Dy", "previewFileExtension": "swMy54rE"}, "subType": "6V7GyDPR", "tags": ["5jH42hSk", "WWJFVdO6", "mBpLJRcQ"], "type": "DJDf3CMz", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId 'rl3J7vMy' \
    --namespace $AB_NAMESPACE \
    --shareCode 'zsodzCyy' \
    --userId '2x204x6p' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'kLtnpAHV' \
    --contentId 'iJOLtdPV' \
    --namespace $AB_NAMESPACE \
    --userId 'xbYnEIXP' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'tDdKQxjc' \
    --contentId 'YvcH5Yey' \
    --namespace $AB_NAMESPACE \
    --userId 'mbDjZdVQ' \
    --body '{"shareCode": "4QPVbXpU"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId '7RWFbw7p' \
    --limit '72' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'iw3pbacq' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'EhHeTxn0' \
    --namespace $AB_NAMESPACE \
    --userId 'USfO4eCC' \
    --body '{"screenshots": [{"description": "ZcK1DKBG", "screenshotId": "rCwl2gT2"}, {"description": "jLxry3zK", "screenshotId": "EDgTL9CL"}, {"description": "wiODq0EG", "screenshotId": "2pro4Tsi"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'iq947ZWH' \
    --namespace $AB_NAMESPACE \
    --userId '2MfIx8Cb' \
    --body '{"screenshots": [{"contentType": "oYX46dgw", "description": "EMYDbeqA", "fileExtension": "jpg"}, {"contentType": "K2MFzHlC", "description": "sHAuDCQk", "fileExtension": "jfif"}, {"contentType": "y4Oo4zhA", "description": "ZwP8ZjUp", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'sycj3kz4' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'eEG8tHOd' \
    --userId 'n9nveShB' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'b82iX07n' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'jK5H2WXY' \
    --limit '59' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId '6dE4ts7s' \
    --limit '2' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'GvyyfDlM' \
    --limit '78' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'ZxWM0AN8' \
    --body '{"contents": ["GLClRNhJ", "iftemgOX", "vjsaxOTn"], "name": "eYJCxJXd"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'qgbhvZ7m' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'L9BfCkrY' \
    --namespace $AB_NAMESPACE \
    --userId 'lMsZZGF8' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'XrndJFfy' \
    --namespace $AB_NAMESPACE \
    --userId 'ISVFNLN6' \
    --body '{"contents": ["4EPO2Izg", "hhszIQYy", "wLop2W6d"], "name": "6Ru3SQFf"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'O4LBB5xI' \
    --namespace $AB_NAMESPACE \
    --userId 'Zt7a3gdd' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'HgiZlhkj' \
    --namespace $AB_NAMESPACE \
    --userId 'dZZuQ3u7' \
    --limit '96' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'JUhKweuX' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'Mk2BTYBN' \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --name 'zCK4WYFU' \
    --offset '70' \
    --sortBy 'a4JvJeTZ' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'cC7cSePJ' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "gpPTdfZb", "customAttributes": {"nW0Hq2jY": {}, "mFFqJKv3": {}, "NIsQJMni": {}}, "fileExtension": "CHBwOynT", "name": "AhvBkcmb", "shareCode": "l5zMjMaP", "subType": "Wq37AgvO", "tags": ["Eo4hnBVy", "FEJZIKTg", "7TkchF2u"], "type": "OjI2pBw0"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'AEOsHes3' \
    --contentId 'D6W6oqjU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'xfsUAuce' \
    --contentId '0aF8gomX' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"t6NrNg3H": {}, "YpHP5esl": {}, "aOe3H4ea": {}}, "name": "SCdAGLgn", "shareCode": "8wKrDqzE", "subType": "vHC4W5t7", "tags": ["2ZLdDeq6", "PXH0aij0", "J3Kdomhh"], "type": "MpuPZDrn"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'tfgooqCQ' \
    --contentId 'QoOdisaQ' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "Wqw40nJA", "fileLocation": "Yo6XMKLa"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminUpdateOfficialContentFileLocation' test.out

#- 107 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId '74XvSsvi' \
    --contentId 'tl0njEF3' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "ouwHpeyA", "fileExtension": "67EFZJyV"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 108 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 108 'AdminGetConfigs' test.out

#- 109 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key 'oyc6pTPS' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "Qmuf91kD"}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateConfig' test.out

#- 110 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '45' \
    --name 'C8bheenH' \
    --offset '75' \
    --sortBy 'DGLjv1yl' \
    --subType 'QILxMmn9' \
    --tags '["HCEXgi7o", "qYaoQp4S", "LN0wfA4d"]' \
    --type 'pwdQswmh' \
    > test.out 2>&1
eval_tap $? 110 'AdminListContentV2' test.out

#- 111 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["a9gTJE49", "JogcrEbb", "7vU21n8G"]}' \
    > test.out 2>&1
eval_tap $? 111 'AdminBulkGetContentByIDsV2' test.out

#- 112 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["cqFpYBCq", "PYt28aew", "vYi1uOhO"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminGetContentBulkByShareCodesV2' test.out

#- 113 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'yaZOtX8W' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentByShareCodeV2' test.out

#- 114 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 'bR38Db0p' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByContentIDV2' test.out

#- 115 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'bLEP0zLl' \
    --namespace $AB_NAMESPACE \
    --versionId 'shmZJzyJ' \
    > test.out 2>&1
eval_tap $? 115 'RollbackContentVersionV2' test.out

#- 116 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId '3pbPhY25' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "J3Z98n1O", "screenshotId": "2NrkqpYX"}, {"description": "HzMbFN3C", "screenshotId": "eD7LhC81"}, {"description": "0wSv2qeJ", "screenshotId": "r6XTdH5T"}]}' \
    > test.out 2>&1
eval_tap $? 116 'AdminUpdateScreenshotsV2' test.out

#- 117 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 'BmpkQC4f' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "4mfEZSHe", "description": "3sjsMP9q", "fileExtension": "jfif"}, {"contentType": "vDY3XLVm", "description": "IW61JsJm", "fileExtension": "jfif"}, {"contentType": "EzTg5xTB", "description": "Qw34rVjX", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUploadContentScreenshotV2' test.out

#- 118 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'cbI3BTld' \
    --namespace $AB_NAMESPACE \
    --screenshotId '8S1QKhBc' \
    > test.out 2>&1
eval_tap $? 118 'AdminDeleteContentScreenshotV2' test.out

#- 119 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'zLwTqeTB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'ListContentVersionsV2' test.out

#- 120 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'NDk421qm' \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetOfficialGroupContentsV2' test.out

#- 121 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'LbjRWCEk' \
    --namespace $AB_NAMESPACE \
    --shareCode 'XnNOr5Z9' \
    --userId '1HeoXaRs' \
    --body '{"customAttributes": {"YnjKDhtx": {}, "LtYWSOid": {}, "wAdKE3v3": {}}, "name": "sIPFTSZj", "shareCode": "bY9TGXh6", "subType": "M8MXy5dr", "tags": ["9piUEMuU", "OLoqXSni", "s1gR7ffB"], "type": "j9bjry4g"}' \
    > test.out 2>&1
eval_tap $? 121 'AdminUpdateContentByShareCodeV2' test.out

#- 122 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'iRmkC4L1' \
    --namespace $AB_NAMESPACE \
    --shareCode '9x4Pt3BV' \
    --userId 'b92yS11S' \
    > test.out 2>&1
eval_tap $? 122 'AdminDeleteContentByShareCodeV2' test.out

#- 123 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'BLz11kUO' \
    --contentId '38QDQIhQ' \
    --namespace $AB_NAMESPACE \
    --userId 'L9CWXVYh' \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteUserContentV2' test.out

#- 124 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'YsoBYodF' \
    --contentId 'AM6SJ8p3' \
    --namespace $AB_NAMESPACE \
    --userId 'xUtYekk3' \
    --body '{"customAttributes": {"wbTi0NPT": {}, "X8Yb9rvm": {}, "K99JBUDS": {}}, "name": "otosYVIA", "shareCode": "mTYJYbpW", "subType": "0nOxGuw0", "tags": ["Q4hIBP0s", "XBcxlAhM", "fmLS9dP6"], "type": "c1LF89Rh"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateUserContentV2' test.out

#- 125 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId '1wShq3WO' \
    --contentId 'wwgo3BTm' \
    --namespace $AB_NAMESPACE \
    --userId 'spcYagRM' \
    --body '{"fileExtension": "Pw1BWnhu", "fileLocation": "V5LnCjEI"}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateUserContentFileLocation' test.out

#- 126 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'iPhTjCE7' \
    --contentId '38Si16Fb' \
    --namespace $AB_NAMESPACE \
    --userId 'N0Jg8Ed7' \
    --body '{"contentType": "T1w1IHoB", "fileExtension": "Buw5z7QW"}' \
    > test.out 2>&1
eval_tap $? 126 'AdminGenerateUserContentUploadURLV2' test.out

#- 127 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'OZvWSPs6' \
    --limit '25' \
    --offset '71' \
    --sortBy 'PHsfy4oS' \
    > test.out 2>&1
eval_tap $? 127 'AdminGetContentByUserIDV2' test.out

#- 128 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'swsCzHgB' \
    --namespace $AB_NAMESPACE \
    --userId '1Dr9Zyw8' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateContentHideStatusV2' test.out

#- 129 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'BzWXZYT2' \
    --namespace $AB_NAMESPACE \
    --userId 'F5yMUDMW' \
    --limit '84' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 129 'AdminGetUserGroupContentsV2' test.out

#- 130 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'kL5JjcHa' \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --name 'UIQozQzN' \
    --offset '4' \
    --sortBy 'z0BO7wnV' \
    > test.out 2>&1
eval_tap $? 130 'PublicGetContentByChannelIDV2' test.out

#- 131 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '34' \
    --name 'NuQqC6Ze' \
    --offset '79' \
    --sortBy '0zzsLBxr' \
    --subType 'P6ILajKQ' \
    --tags '["D5GriBc7", "4Les4C6b", "nPlTbQMO"]' \
    --type 'BogoIOBD' \
    > test.out 2>&1
eval_tap $? 131 'PublicListContentV2' test.out

#- 132 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["Ei9u4cBc", "8XB6lWFL", "phvk1Isc"]}' \
    > test.out 2>&1
eval_tap $? 132 'PublicBulkGetContentByIDV2' test.out

#- 133 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["D3x9YLiD", "UynJoI2l", "b20mZW12"]}' \
    > test.out 2>&1
eval_tap $? 133 'PublicGetContentBulkByShareCodesV2' test.out

#- 134 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'BBsgb42h' \
    > test.out 2>&1
eval_tap $? 134 'PublicGetContentByShareCodeV2' test.out

#- 135 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'DzCG8LTb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 135 'PublicGetContentByIDV2' test.out

#- 136 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'yN6Aj9KA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 136 'PublicAddDownloadCountV2' test.out

#- 137 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'iT8YdgoM' \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '39' \
    --sortBy '889crYZ7' \
    --userId 'd6QYV7hf' \
    > test.out 2>&1
eval_tap $? 137 'PublicListContentDownloaderV2' test.out

#- 138 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'eWht5QO3' \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '22' \
    --sortBy 'ad7FztUX' \
    > test.out 2>&1
eval_tap $? 138 'PublicListContentLikeV2' test.out

#- 139 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId 'GzZtVKZU' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 139 'UpdateContentLikeStatusV2' test.out

#- 140 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'PMMxlvLq' \
    --namespace $AB_NAMESPACE \
    --userId 'zxCJZqUO' \
    --body '{"contentType": "MSiNUMLs", "customAttributes": {"xOqu21Oq": {}, "ngLFtmOA": {}, "31NdzeTc": {}}, "fileExtension": "kRKXuoVf", "name": "lHCelika", "subType": "CUFukDcN", "tags": ["VPudvLps", "0zKnI5SL", "fy8h25rj"], "type": "2sE0VhwX"}' \
    > test.out 2>&1
eval_tap $? 140 'PublicCreateContentV2' test.out

#- 141 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'a6zN318D' \
    --namespace $AB_NAMESPACE \
    --shareCode 'HjGrNyVo' \
    --userId 'eS0wEWDt' \
    --body '{"customAttributes": {"bBB7P4Pe": {}, "8EFvB4zX": {}, "JF7LKhib": {}}, "name": "JOdcUFFL", "subType": "MM0dyMFK", "tags": ["iweKDNf7", "hmvY7CqP", "vJrYVQuI"], "type": "W5fKX3sn"}' \
    > test.out 2>&1
eval_tap $? 141 'PublicUpdateContentByShareCodeV2' test.out

#- 142 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'fpjyNchr' \
    --namespace $AB_NAMESPACE \
    --shareCode 'LRJrpy2i' \
    --userId '8dNrD3a4' \
    > test.out 2>&1
eval_tap $? 142 'PublicDeleteContentByShareCodeV2' test.out

#- 143 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'aj0wHAQD' \
    --contentId 'j0v2fJoI' \
    --namespace $AB_NAMESPACE \
    --userId 'XJcjYCRp' \
    > test.out 2>&1
eval_tap $? 143 'PublicDeleteContentV2' test.out

#- 144 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId '8reKapfL' \
    --contentId 'ms20YuUk' \
    --namespace $AB_NAMESPACE \
    --userId 'St9mZ1qA' \
    --body '{"customAttributes": {"JkFeNp8A": {}, "OyN2kECR": {}, "4qZ92Vs2": {}}, "name": "nb8pEdcI", "subType": "gnjK7TjJ", "tags": ["QJMKshmn", "9KW1ZEl1", "0ltpCriY"], "type": "gFcwoC0C"}' \
    > test.out 2>&1
eval_tap $? 144 'PublicUpdateContentV2' test.out

#- 145 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'e15NfZZc' \
    --contentId 'haErcdK6' \
    --namespace $AB_NAMESPACE \
    --userId 'Kgrblh9q' \
    --body '{"fileExtension": "Nv0VRyiM", "fileLocation": "TSHXlgch"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicUpdateContentFileLocation' test.out

#- 146 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'LKTxHBbW' \
    --contentId 'P5Vspit7' \
    --namespace $AB_NAMESPACE \
    --userId 'xMcMEWbb' \
    --body '{"shareCode": "29xBFvLa"}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateContentShareCodeV2' test.out

#- 147 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'lV6sc2Xc' \
    --contentId 'HMJLOLka' \
    --namespace $AB_NAMESPACE \
    --userId 'RgshMzB0' \
    --body '{"contentType": "oCNeqYu1", "fileExtension": "cJEgJLLK"}' \
    > test.out 2>&1
eval_tap $? 147 'PublicGenerateContentUploadURLV2' test.out

#- 148 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'so1Dm5Zt' \
    --limit '38' \
    --offset '62' \
    --sortBy 'YWfEAbmq' \
    > test.out 2>&1
eval_tap $? 148 'PublicGetContentByUserIDV2' test.out

#- 149 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'fwsDu5tv' \
    --namespace $AB_NAMESPACE \
    --userId 'e0lQ8VIQ' \
    --body '{"screenshots": [{"description": "VC2q2c14", "screenshotId": "Z6BpXIha"}, {"description": "VQZiKsr4", "screenshotId": "tAym5bRF"}, {"description": "4k7hv2bS", "screenshotId": "8Q811W4p"}]}' \
    > test.out 2>&1
eval_tap $? 149 'UpdateScreenshotsV2' test.out

#- 150 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'SLcJSdRr' \
    --namespace $AB_NAMESPACE \
    --userId 'S2cvSDVG' \
    --body '{"screenshots": [{"contentType": "UWhWhrTN", "description": "KZZjRrF6", "fileExtension": "bmp"}, {"contentType": "XPOuJc2Y", "description": "0aF5tuqT", "fileExtension": "bmp"}, {"contentType": "NK4kMYDY", "description": "xa03i4bF", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 150 'UploadContentScreenshotV2' test.out

#- 151 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'Q7oWpkMO' \
    --namespace $AB_NAMESPACE \
    --screenshotId '6eEEQzPX' \
    --userId 'pkNlsmDG' \
    > test.out 2>&1
eval_tap $? 151 'DeleteContentScreenshotV2' test.out

#- 152 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'YxA3VbFi' \
    --namespace $AB_NAMESPACE \
    --userId 'XuoQq0AP' \
    --limit '45' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 152 'PublicGetGroupContentsV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE