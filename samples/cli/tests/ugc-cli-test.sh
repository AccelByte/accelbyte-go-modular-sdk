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
    --limit '81' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "xSvDHGgeRCo7v5uL", "name": "UZl3CCeLemG9fkqB"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'ue8KygvlMYgJnFGK' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "b2Rpjv0DaxIQmx0N"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'm67n1JKeQsYwZFSp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'fLiKXsH34B2odomq' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "AWNeoJ6xaNjst0UJ", "customAttributes": {"1Am5CRcUBFblL0Oe": {}, "42T2PBpwjdIqtrSG": {}, "AQWSaANNgtVCXvB5": {}}, "fileExtension": "Nl3J2ey83HDlyzji", "name": "EPsmBMszxq9IC7QX", "preview": "XRACQI8MKOLsCjqZ", "previewMetadata": {"previewContentType": "RCefKYNKwCPdnqy2", "previewFileExtension": "gH1q04xjBfsuTX16"}, "shareCode": "X7pZzivROwzSSCsa", "subType": "B4ggNcYoBWadjDo2", "tags": ["lYMuLqOGPhN4g3B1", "TNTNEEgJEGlzymuE", "ssP6QMeB5OToTJpM"], "type": "wenpzFCrJ9tkZ8x3"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'zbsEuwjCeCvOqPYL' \
    --contentId 'bSrOi8yrplnDE1kr' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "tle2qTx3qcs0uFme", "customAttributes": {"sxWC2f0zSiapahxZ": {}, "X3ReeqisX86mX5W6": {}, "MKECpzQ4vYIPyGxY": {}}, "fileExtension": "SLBaXHpGLnQ0avQn", "name": "WWTTusV6xRln7p5h", "payload": "enlAG9jeUt2RTuNT", "preview": "hN3mUHkm690WwF57", "previewMetadata": {"previewContentType": "kEGfRfSBXADKWH5u", "previewFileExtension": "gQFgXHsu1EEQxk9s"}, "shareCode": "MwJwW8y8xD3dOo5z", "subType": "PgpRULWlF0lvOKKD", "tags": ["8PImBehEZBwyB9OU", "ynivQTDZigpXdu1g", "GruNW1Z6BTUVUfCY"], "type": "fxD6w373ucgDv3FT", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'WIcGl5xuBp1mEb5n' \
    --namespace $AB_NAMESPACE \
    --creator '0Stwn4ZqTNFqeU29' \
    --isofficial '2BJEMxvUc4S55i6O' \
    --limit '99' \
    --name '9n1T6JOH36amZE4F' \
    --offset '5' \
    --orderby 'joNudhioPcJLZAbl' \
    --sortby 'fO9CEm02OrFRScvK' \
    --subtype '05YY4kXywv0FRbSr' \
    --tags '["lHwh6neXLFgAzA7j", "0MSIDIxaP4CVgtCQ", "3uaNvKANjYQH20ha"]' \
    --type 'MR415dEPALibXjwy' \
    --userId 'NWJyQMHvKBoqWtQt' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'fM4X5Uqok5A9EecA' \
    --contentId '7oTsWHwChO094vJY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["pk70q5RhKDwtMMMO", "RZ5TaFVF2frIoPqI", "72NYlgL7D39LbFNU"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'v24LPEeQ2IXLuf84' \
    --isofficial '1SbIDzT5gHrJo9Yc' \
    --limit '36' \
    --name 'VDI0L8f1qBjBxwP5' \
    --offset '66' \
    --orderby '3ONFZfMmE1jKuy7z' \
    --sortby 'HpkdeYJbFIM67cAh' \
    --subtype '5lmao9WPrC2b0q0B' \
    --tags '["kavSBmWoYZVEcKrW", "f7FwMe0Lh4CEqOvw", "xSpdIrgZBoAkN06C"]' \
    --type 'pLqwIfJwfMuMTIIf' \
    --userId '6ScGgszWVMbmX4FA' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'YnmAyWydVyQ7dWdZ' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetUserContentByShareCode' test.out

#- 16 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'ibTJQdgY8A4VDVD9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetSpecificContent' test.out

#- 17 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'TLNfnLxy4Uu7lYUL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDownloadContentPreview' test.out

#- 18 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId '7QfblRYlKceGlvm1' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "ahM4dF3a0bOQbFD7", "screenshotId": "EsQ0FyOoCJSOvwev"}, {"description": "phCFKBzxToFIps6Y", "screenshotId": "pzhu5OgvBkgujyvl"}, {"description": "W59FHCV2VedvBzcC", "screenshotId": "xqzI9nWlozHnFy3K"}]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateScreenshots' test.out

#- 19 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'KIikxlwnn0gTIqVI' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "RP4SlfWlvD4axnTS", "description": "q13eXVV1yYVkaJpO", "fileExtension": "pjp"}, {"contentType": "WvS09QworyfUzVza", "description": "X2DAf3DyXDyu9I7p", "fileExtension": "jfif"}, {"contentType": "vqxjfPJXcgbLJkAm", "description": "vM7fadrgMEE1S29K", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUploadContentScreenshot' test.out

#- 20 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'xy8LZuRMYdEW0EWb' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'FP56bdPMSHPDsL8z' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteContentScreenshot' test.out

#- 21 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 21 'SingleAdminGetAllGroups' test.out

#- 22 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["nTaP7IfWI28RAukz", "zrWXtr86bUfAR37Q", "5d0wQKqDo5MEbN9o"], "name": "9iVPM2ojmNNvaRR7"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminCreateGroup' test.out

#- 23 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId '16oswdhiTFu4F1FJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminGetGroup' test.out

#- 24 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'fr77xcyaKAPvcRaI' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["zA1ydnEfZ5lkpMLQ", "RhSHPj1ZfptrrD4b", "DSbgk7ee8BN8DlQ0"], "name": "XoflZJG78sQ5R2qe"}' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminUpdateGroup' test.out

#- 25 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'wyRVPEODxnrenQ10' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'SingleAdminDeleteGroup' test.out

#- 26 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'T6Nat2WrU1Lyj04T' \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroupContents' test.out

#- 27 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetTag' test.out

#- 28 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "VZnZmwT9LxBoYQmw"}' \
    > test.out 2>&1
eval_tap $? 28 'AdminCreateTag' test.out

#- 29 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'vMbFlGHLLv0WMZvp' \
    --body '{"tag": "bOqQmRM28oLHxase"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateTag' test.out

#- 30 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'M2g7ETyLtaLImUEX' \
    > test.out 2>&1
eval_tap $? 30 'AdminDeleteTag' test.out

#- 31 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 31 'AdminGetType' test.out

#- 32 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["iorSof5ZUGaJBvnZ", "SzeYCJ14M3K68wdd", "3w5jDPBWv466tcma"], "type": "s7WKPzNCJU2S6vLk"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminCreateType' test.out

#- 33 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'N86VyRZiCZviZnco' \
    --body '{"subtype": ["LORmjMF5ASKmYNVB", "2o1X72ngsrfCGDdQ", "nFnfpTXGFsRaOSfw"], "type": "V13AVdBzv8THh15o"}' \
    > test.out 2>&1
eval_tap $? 33 'AdminUpdateType' test.out

#- 34 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId '1UVkOwwtZE9PDtch' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteType' test.out

#- 35 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'BHwFjcTqAcCoxNh5' \
    --limit '71' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 35 'AdminGetChannel' test.out

#- 36 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId '5zyfw9e4t4lA6NaU' \
    > test.out 2>&1
eval_tap $? 36 'AdminDeleteAllUserChannels' test.out

#- 37 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'hBC0mM72Ek6BeZOW' \
    --namespace $AB_NAMESPACE \
    --userId 'orLBipZKpCd5wnLx' \
    --body '{"name": "aN0UdXDQw2S6GyUq"}' \
    > test.out 2>&1
eval_tap $? 37 'AdminUpdateChannel' test.out

#- 38 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'G9CBhlijj8WeQp1k' \
    --namespace $AB_NAMESPACE \
    --userId 'XxA6cFVHosiLLn0L' \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteChannel' test.out

#- 39 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'hwtF2uXCDAAGWwlC' \
    --contentId 'VLuXnuRlxDYHzkJ8' \
    --namespace $AB_NAMESPACE \
    --userId 'XVgIGVQQtiBUfeEU' \
    --body '{"contentType": "s9RZkfz9QIQkTIzo", "customAttributes": {"EilplY5XpAyHUeNk": {}, "FzPtQ6s8ASklk28J": {}, "Xk7le08S4D5wkHRM": {}}, "fileExtension": "C0O5HWv9Gz3k6tBm", "name": "rCnJYcU2zOjU5eBC", "payload": "kkCyvI4Zi9bO2TlN", "preview": "NgBh13SRtKvQGD9D", "previewMetadata": {"previewContentType": "Acqyk0EwfN4pJNMJ", "previewFileExtension": "vRJAyvaR4IOB1Ck3"}, "shareCode": "Xo8nZEJpWLwUJXeV", "subType": "EmQdp4e1XkgZaI1i", "tags": ["9ET3xlUkCT1wsVWq", "pdCeLpHTy9fFY0l9", "0Glo90anapjy1kWp"], "type": "UX7k3T6akTwUzTMy", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateContentS3' test.out

#- 40 AdminUpdateContentDirect
eval_tap 0 40 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 41 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'RkZh70AJDovE2D4Y' \
    --contentId 'tQOgrrgzBZlLdV2P' \
    --namespace $AB_NAMESPACE \
    --userId 'Ws9XTrJWSnVe9zT6' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteContent' test.out

#- 42 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'DvJfMYs6YNIeWyGK' \
    --limit '95' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetContent' test.out

#- 43 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'xLoGPD0cHP4wxymF' \
    > test.out 2>&1
eval_tap $? 43 'AdminDeleteAllUserContents' test.out

#- 44 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 't7uR5Y0J14lEoP6o' \
    --namespace $AB_NAMESPACE \
    --userId 'deDaWcjQ2k0G78pU' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 44 'AdminHideUserContent' test.out

#- 45 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'zgK1xMYPnlUqmKMI' \
    --limit '96' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetAllGroups' test.out

#- 46 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'lMPy4oTKRqTSC72p' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteAllUserGroup' test.out

#- 47 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'tdpdaDM86iN4Faw9' \
    --namespace $AB_NAMESPACE \
    --userId 'qnzKAR151PjzZugL' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetGroup' test.out

#- 48 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'ZON5Z7Q2qPeKaaXP' \
    --namespace $AB_NAMESPACE \
    --userId 'FTUwgKJsggiWFVmU' \
    --body '{"contents": ["AgKFz4Jn3r2qbLdU", "gGa7mHQzJJKh4MpT", "u7HWUinTWNYQiKYW"], "name": "zrsVmy6r4r33jR9Y"}' \
    > test.out 2>&1
eval_tap $? 48 'AdminUpdateGroup' test.out

#- 49 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'aeqGhc86ENKhNeJt' \
    --namespace $AB_NAMESPACE \
    --userId '9tjhGjsI0x2jr38P' \
    > test.out 2>&1
eval_tap $? 49 'AdminDeleteGroup' test.out

#- 50 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'B9VcK6Z5iokgGQOb' \
    --namespace $AB_NAMESPACE \
    --userId 'wZ5qhDtw9dN6zcah' \
    --limit '29' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetGroupContents' test.out

#- 51 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'pRYaxO1U9kZWnP5V' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserStates' test.out

#- 52 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'pchqzv2lQ4MDCFTc' \
    --namespace $AB_NAMESPACE \
    --creator 'wSYnljAODSrXdAM5' \
    --isofficial 'oBmCIRvfOkT2wBIa' \
    --limit '76' \
    --name 'p4C5npeQJFAOIs1I' \
    --offset '28' \
    --orderby '4dBs7uoqVeEpZX03' \
    --sortby 'a0KKyfRvGWXx3dDW' \
    --subtype '7oNmo3E8W23WXDk3' \
    --tags '["01IXJnqldUrhtk96", "cDdtdhKrWJHW8D13", "qKBmDx6LFwCb2QKd"]' \
    --type 'Dt67n0mvmdfXVdEB' \
    --userId '8BdktJ9kPEfNqAqr' \
    > test.out 2>&1
eval_tap $? 52 'SearchChannelSpecificContent' test.out

#- 53 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'dHqixM0QoEPeAydN' \
    --isofficial 'YqQweauJP4dH7065' \
    --limit '3' \
    --name 'bTQFURl3iZAd9DA7' \
    --offset '93' \
    --orderby 'frAJJFqffAAvj6im' \
    --sortby '6J9JiYTZmLNMDqZi' \
    --subtype 'a9DbNHgECiBBT6DF' \
    --tags '["SZAbN675nNhFjFuL", "I7uVt9j18JyHxuwn", "4EnwMOBzoL3JvGph"]' \
    --type 'fZkm6kNWsoY1am8W' \
    --userId 'cigwqB3mhgZIaBgh' \
    > test.out 2>&1
eval_tap $? 53 'PublicSearchContent' test.out

#- 54 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["vvDvUWnSvEVLXAgE", "zZZDkGWgbdBIleQ7", "5qfp6gTK3H4AdKBC"]}' \
    > test.out 2>&1
eval_tap $? 54 'PublicGetContentBulk' test.out

#- 55 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 55 'GetFollowedContent' test.out

#- 56 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '14' \
    --name 'vKdn12bvAszlXJVY' \
    --offset '65' \
    --orderby 'kLrxrqqdTwZtMYni' \
    --sortby 'GSZ5fzRUQw6l0cQ4' \
    --subtype 'jE0lx5ajGL6oscuK' \
    --tags '["81veXUY6pM9yJOad", "grhEd2pCPleUiaEu", "Qa4085kd8zi7jIOg"]' \
    --type 'nay12M6p6foPoh2Y' \
    > test.out 2>&1
eval_tap $? 56 'GetLikedContent' test.out

#- 57 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'rOLuFYjRAUU3YESb' \
    > test.out 2>&1
eval_tap $? 57 'PublicDownloadContentByShareCode' test.out

#- 58 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'cT8LFFCTGqPlGtOk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'PublicDownloadContentByContentID' test.out

#- 59 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId '1jDBIXs23xFDmZuK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'AddDownloadCount' test.out

#- 60 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'Q83vpUFsjJSiczKa' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 60 'UpdateContentLikeStatus' test.out

#- 61 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'lcYAGsuPq3sImnow' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'PublicDownloadContentPreview' test.out

#- 62 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 62 'GetTag' test.out

#- 63 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 63 'GetType' test.out

#- 64 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '19' \
    --orderby 'AZbgc3KDV0SlUUKx' \
    --sortby 'r53tbtDuEYcECofb' \
    > test.out 2>&1
eval_tap $? 64 'PublicSearchCreator' test.out

#- 65 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 65 'GetFollowedUsers' test.out

#- 66 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'aMoE6sGiVHxc29IS' \
    > test.out 2>&1
eval_tap $? 66 'PublicGetCreator' test.out

#- 67 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'RiklWaSNm54oFtN9' \
    --limit '64' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 67 'GetChannels' test.out

#- 68 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId '3hEvhO5HpawZflfs' \
    --body '{"name": "d344TDYs0xcDxADN"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicCreateChannel' test.out

#- 69 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'F3W94hJLiV5x0dd9' \
    > test.out 2>&1
eval_tap $? 69 'DeleteAllUserChannel' test.out

#- 70 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'KhGvQ53Ifr0RP59o' \
    --namespace $AB_NAMESPACE \
    --userId 'HisZfFSMWgrlty39' \
    --body '{"name": "fkeLltmyUtkJDAGJ"}' \
    > test.out 2>&1
eval_tap $? 70 'UpdateChannel' test.out

#- 71 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'MJDFwIkwmLEdO5oK' \
    --namespace $AB_NAMESPACE \
    --userId 'DwGWJ1M5l3mvluDj' \
    > test.out 2>&1
eval_tap $? 71 'DeleteChannel' test.out

#- 72 CreateContentDirect
eval_tap 0 72 'CreateContentDirect # SKIP deprecated' test.out

#- 73 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'UY3OO8bL2OjUTJ6i' \
    --namespace $AB_NAMESPACE \
    --userId '4eL47nZ6RHWF3V5G' \
    --body '{"contentType": "EKpxGFKkJ4PdVn3D", "customAttributes": {"nCLCRK0bxEcQ4hcF": {}, "GhLxaGRKbiEdlCxZ": {}, "izukK9RzpbZzyh7Y": {}}, "fileExtension": "Pv7Zeg59wL6bVlB1", "name": "ltHpLcXL07Aae3mv", "preview": "a5go9l8jnZ4bG7F0", "previewMetadata": {"previewContentType": "Q2asvNDzBYc8kJon", "previewFileExtension": "0fAFcIIfwwOyJXTw"}, "subType": "xpSgOLduObttgBCL", "tags": ["BduH9sA7v6VNwoVZ", "VSAlLu6c9KD7KFI4", "UK8VtToxr7s37kvN"], "type": "J8iyE0McEP3sHH1R"}' \
    > test.out 2>&1
eval_tap $? 73 'CreateContentS3' test.out

#- 74 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'htlG42acNVURrZqy' \
    --contentId '3EUrvLJSuRtQ9sNY' \
    --namespace $AB_NAMESPACE \
    --userId 'gn4DbJrmbJ6T7fJZ' \
    --body '{"contentType": "cZOefEetovoTuGYC", "customAttributes": {"SWRCV0XSz4a9jqQ8": {}, "WXzcGHgvWzI2g81Y": {}, "egiKN8WXhAaWplHP": {}}, "fileExtension": "McTKUrrA0xCQWK1W", "name": "s7suisQ6kvQeyXn2", "payload": "lCQmsItmlaTCvq4i", "preview": "fPSRTr5NFIzG7xAO", "previewMetadata": {"previewContentType": "ZX861MPn8cECeSO9", "previewFileExtension": "lFCEeJU02LR9bS8x"}, "subType": "nzbjFFO4vgUn8XAi", "tags": ["mohsMu1Kpe0LtyWm", "hBb6BappmhNxfuRD", "0lBrQ03J0v73jTeH"], "type": "ET7QQTx3yn7OH5hz", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateContentS3' test.out

#- 75 UpdateContentDirect
eval_tap 0 75 'UpdateContentDirect # SKIP deprecated' test.out

#- 76 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'U0Hw5xLPr3rnUTV3' \
    --contentId 'rFcCYqd0aSK38jPJ' \
    --namespace $AB_NAMESPACE \
    --userId 'U1vElupim084MO6k' \
    > test.out 2>&1
eval_tap $? 76 'DeleteContent' test.out

#- 77 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'ECFlh9yqVuM0Gvr5' \
    --limit '11' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 77 'PublicGetUserContent' test.out

#- 78 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'UQupx6xSFFms2Zw8' \
    > test.out 2>&1
eval_tap $? 78 'DeleteAllUserContents' test.out

#- 79 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId '3Iu6HaLazUV4kIj9' \
    --namespace $AB_NAMESPACE \
    --userId 'qPcE5s38lDXQzehv' \
    --body '{"screenshots": [{"description": "dq9qdhMjOmWWAxlB", "screenshotId": "0vQxF5s5F72w8hp7"}, {"description": "hnEBTffpGDdDqxPO", "screenshotId": "8XgDLuUpRlSRpykp"}, {"description": "8gxxvCWbK5S0Bewt", "screenshotId": "TahLfNxDTdY0T8l1"}]}' \
    > test.out 2>&1
eval_tap $? 79 'UpdateScreenshots' test.out

#- 80 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId '2g9UmP3kRdBey8Ak' \
    --namespace $AB_NAMESPACE \
    --userId 'JgLfGKd34H9QuZ7a' \
    --body '{"screenshots": [{"contentType": "lj2pzM566hn3MbSk", "description": "eIlJmJAPAoZP0GgC", "fileExtension": "bmp"}, {"contentType": "a0tO5m1mUKjWzNTP", "description": "LsXVlI0N0OuX5IDT", "fileExtension": "jfif"}, {"contentType": "oMhjfthaJuJeKHHC", "description": "UcYiIR1tOGhIN7L4", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 80 'UploadContentScreenshot' test.out

#- 81 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'uaujJQqXFHu9YtVy' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'vbCB7Pvn4SLwiRDm' \
    --userId 'XS4GV24IMDx7tObm' \
    > test.out 2>&1
eval_tap $? 81 'DeleteContentScreenshot' test.out

#- 82 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'Njg4Ku9HyUUv352X' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 82 'UpdateUserFollowStatus' test.out

#- 83 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'Hci6rfkksTeT5Kom' \
    --limit '76' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 83 'GetPublicFollowers' test.out

#- 84 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'MXuvZcIjnWbfEJC9' \
    --limit '64' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 84 'GetPublicFollowing' test.out

#- 85 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'vXftN2p547W1wkiW' \
    --limit '28' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 85 'GetGroups' test.out

#- 86 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'iTVYAAdlfx5iyZmn' \
    --body '{"contents": ["cMnkfOoMGMQnJUJE", "5Lbxwhu1LuozdYRE", "vy1kdddMYeUbV1Ck"], "name": "M9OXXSdG0wTZfX5H"}' \
    > test.out 2>&1
eval_tap $? 86 'CreateGroup' test.out

#- 87 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'oqVVYU0afNWg20il' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserGroup' test.out

#- 88 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId '39W9npMmF7JewHWb' \
    --namespace $AB_NAMESPACE \
    --userId 'ZfcFCPA6lniti9KC' \
    > test.out 2>&1
eval_tap $? 88 'GetGroup' test.out

#- 89 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'KC5mjjgPHSCcIE0E' \
    --namespace $AB_NAMESPACE \
    --userId '3jjXwindSduTjrXD' \
    --body '{"contents": ["KGoqMOow6TrTEEFi", "qQfbx90CquZOXVbM", "9o2BkmJDQpsJVR4p"], "name": "kBW5mOt7MLGBG44e"}' \
    > test.out 2>&1
eval_tap $? 89 'UpdateGroup' test.out

#- 90 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'NfCArx8jcgYav8t6' \
    --namespace $AB_NAMESPACE \
    --userId 'tjcED31qOzXUuQOh' \
    > test.out 2>&1
eval_tap $? 90 'DeleteGroup' test.out

#- 91 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'b9Gn06qNWZs4tegj' \
    --namespace $AB_NAMESPACE \
    --userId 'bRrgiBzGQxSrdIQh' \
    --limit '36' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 91 'GetGroupContent' test.out

#- 92 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId '515Qp4TSXmhXfzMt' \
    > test.out 2>&1
eval_tap $? 92 'DeleteAllUserStates' test.out


rm -f "tmp.dat"

exit $EXIT_CODE