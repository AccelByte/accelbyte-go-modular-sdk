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
    --limit '70' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "nLpKJ2mo", "name": "UZMzyBim"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'nVzayXoz' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "Xj0tTvBP"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'EHzys5DN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId '9dvPTLyj' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "slqvXAeB", "customAttributes": {"dmbprvWl": {}, "F62HpWnt": {}, "VrVzTiJR": {}}, "fileExtension": "cSJveiyx", "name": "Rfd9RGxV", "preview": "BjbHBIzz", "previewMetadata": {"previewContentType": "aDiaxHSj", "previewFileExtension": "xKaRYkae"}, "shareCode": "D0Q0K3kj", "subType": "1uqBuHdy", "tags": ["UVdej3N3", "HUSTxbAz", "zTYlUqkT"], "type": "BgRzQAJ8"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'CsMFk6Ev' \
    --contentId 'c2R76ufN' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "F9XBhEkT", "customAttributes": {"EuLmIXVk": {}, "4vc1mZaz": {}, "VDq4m4Yf": {}}, "fileExtension": "wO4lfaZJ", "name": "NaRezmzf", "payload": "9tXnCSuU", "preview": "AXZPLFNA", "previewMetadata": {"previewContentType": "2hp9JjJg", "previewFileExtension": "31woDI5O"}, "shareCode": "6tS7VbsU", "subType": "D5pCsMtF", "tags": ["TylHapS6", "wtesnblm", "nceiO39v"], "type": "P2V6lwYi", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'nwV7XTpa' \
    --namespace $AB_NAMESPACE \
    --creator 'ondU6SVU' \
    --ishidden 'rcCxC35a' \
    --isofficial '2VXKbHDw' \
    --limit '29' \
    --name 'hMa8vsY6' \
    --offset '58' \
    --orderby 'OOU6vEfq' \
    --sortby 'xVB2tZqM' \
    --subtype '0ljIONrb' \
    --tags '["2ETV0rQ4", "o3r5I94N", "qeuj0Zzw"]' \
    --type 'AIKgjbCR' \
    --userId 'NbsuokoB' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'ywlhbklY' \
    --contentId 'hoQJAd7H' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["mBMjsxFP", "4iAtsncU", "Mn1VgezE"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'LOHibp7e' \
    --ishidden 'K6fYguFT' \
    --isofficial 'Agbxv4vv' \
    --limit '49' \
    --name 'GhK0vOZ9' \
    --offset '58' \
    --orderby 'fSwm6wRj' \
    --sortby 'CQaN2ES8' \
    --subtype '4VEOQzwy' \
    --tags '["ZXpSRuJW", "AUu3sXAb", "9V2OSTwx"]' \
    --type '1DE8SmZx' \
    --userId '5MOPWL4s' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["BNAdMBw0", "WOtsbg13", "3O0SPrxv"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'JeCQdXMu' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'JtQ1AvZi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'RlVYf84P' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId '6PwuZNJJ' \
    --namespace $AB_NAMESPACE \
    --versionId 'sVdQFDNU' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'K6xOUuck' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "HQgBCyv8", "screenshotId": "JjIOEtC3"}, {"description": "fL7gshrb", "screenshotId": "kq1Dj8cX"}, {"description": "szjxneVK", "screenshotId": "6yaKPXs0"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'rqznmK7u' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "rYbGeLg2", "description": "VxSTM1YQ", "fileExtension": "pjp"}, {"contentType": "ZC5sv321", "description": "q1KG7oxn", "fileExtension": "jfif"}, {"contentType": "dvViUtel", "description": "pIuNzeKf", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'C7GBfHXu' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'mKLy4yOu' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'Cqv5XZaY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["J77JcROG", "pWH3TajB", "kHQeTWzf"], "name": "buJ2Oh87"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'a7lNOwHC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'ORnaieDL' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["QXf5mpjk", "o7y9Ah8z", "U2MvWI7v"], "name": "sl7lt1E0"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'JFinBQYC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'HPvi3Jyp' \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "iWt2nAyK"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId '24Frouvd' \
    --body '{"tag": "Rmax4gnC"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'ZmZfMsk1' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["GUzpHJXg", "OsYu4sOu", "Z76Q0BSm"], "type": "j6JT04nf"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'aQ1VQAEb' \
    --body '{"subtype": ["jmjppvCM", "u31lfPrC", "hT8f3H50"], "type": "Kv3c39Vl"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'wBK9JjU3' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'jicyzVDu' \
    --limit '42' \
    --name 'hDS0AERh' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'kEdWrbj2' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'fBSYpdK9' \
    --namespace $AB_NAMESPACE \
    --userId 'MZ46jJy8' \
    --body '{"name": "3EEzWjDi"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId '1mk2MfXv' \
    --namespace $AB_NAMESPACE \
    --userId 'XRxrcGO4' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'Og9n8gju' \
    --namespace $AB_NAMESPACE \
    --shareCode 'HdDnuPPd' \
    --userId 't11PoahM' \
    --body '{"contentType": "nmALakZ2", "customAttributes": {"JR6OQg8c": {}, "HdMxuysl": {}, "2OMSLd8H": {}}, "fileExtension": "oAoLydJa", "name": "ScZZJK0H", "payload": "BfaAono9", "preview": "xnhP2Sux", "previewMetadata": {"previewContentType": "r7KxlRfV", "previewFileExtension": "FUPi3rC9"}, "shareCode": "PcLSwAum", "subType": "Vj9OnbYo", "tags": ["PhhOXTMC", "GrfucHSq", "PIOKHnuG"], "type": "W7AB6JUv", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'AnkPP7Q8' \
    --contentId 'y5zhfzuo' \
    --namespace $AB_NAMESPACE \
    --userId 'hYpFlwf9' \
    --body '{"contentType": "kprnAD9R", "customAttributes": {"zuV6MLnP": {}, "yHfmRfBh": {}, "nssTPH2L": {}}, "fileExtension": "3QJlJxq8", "name": "uyRnvOQs", "payload": "5t1A7lK4", "preview": "zsIGJjHY", "previewMetadata": {"previewContentType": "jLPDwOv2", "previewFileExtension": "a2R5Jq2e"}, "shareCode": "tMTwWFjR", "subType": "86uDh8dx", "tags": ["CBkUF2TE", "zokrgsod", "UcbM1HJI"], "type": "VVdsIMwO", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'lYZryex1' \
    --namespace $AB_NAMESPACE \
    --shareCode 'EvpAMPw9' \
    --userId '8Pr8PTTs' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'TIdhXyfp' \
    --contentId 'rPMIQFum' \
    --namespace $AB_NAMESPACE \
    --userId 'TkJcQTbH' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'I7ytWhW2' \
    --limit '11' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'wAk1Afs7' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'TBZSDi5O' \
    --namespace $AB_NAMESPACE \
    --userId 'O2YKU7WI' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'cfxrZUbt' \
    --limit '80' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'jMaX3vMG' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'YTsJ4T56' \
    --namespace $AB_NAMESPACE \
    --userId 'vvH9yGmr' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId '38Z0R7QP' \
    --namespace $AB_NAMESPACE \
    --userId '0pXWw4Un' \
    --body '{"contents": ["0FoIHyrk", "2becyW4E", "hhA1Jheq"], "name": "3rQB5xQu"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'fTLhP3ag' \
    --namespace $AB_NAMESPACE \
    --userId 'u1ciZIeN' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'ezg1Agfx' \
    --namespace $AB_NAMESPACE \
    --userId '9uVYvB0Z' \
    --limit '97' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'ucTSORvn' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId '1NQwgNHr' \
    --namespace $AB_NAMESPACE \
    --creator 'plABCnkp' \
    --ishidden 'WvC9sPDh' \
    --isofficial 'QcYLzAuW' \
    --limit '9' \
    --name 'ykLUneaV' \
    --offset '39' \
    --orderby 'q1fOl1e7' \
    --sortby 'HZGNhoU0' \
    --subtype 'XljvqZ0M' \
    --tags '["FqAlMyjI", "FboqXxUx", "pQFf4gxj"]' \
    --type 'eqOiIgr0' \
    --userId 'Dksmjodv' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'jhu4pfXq' \
    --ishidden 'KdTVVyP4' \
    --isofficial 'hEfO0zuW' \
    --limit '38' \
    --name 'yF7v4R8t' \
    --offset '56' \
    --orderby 'BPtoBIc1' \
    --sortby 'UT2dazP4' \
    --subtype 'tOGtBQPM' \
    --tags '["ASPRD46v", "vTaAQ9bt", "RJtdtwB6"]' \
    --type 'sSKnugGZ' \
    --userId 'D9LeDPAZ' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["Uh2rRuL0", "keLmgYqK", "uYpkKkNx"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '53' \
    --name 'zuZDJ6wN' \
    --offset '7' \
    --orderby 'lZSohgnC' \
    --sortby 'EUZmm0td' \
    --subtype 'mRSqjjoz' \
    --tags '["wt1mBl1S", "laX76cHq", "gr0mYua5"]' \
    --type '19PCxkxL' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["kjPZsrIb", "7qJ0lvFa", "tkqsHeAW"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode '5JyVJP0n' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'yikzwHSr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId '8bbK7Vbi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'OYv3LlZl' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'aFPPAlcK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '80' \
    --orderby 'Zlm8LXwC' \
    --sortby 'kFO7dbWp' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'jyqJmhO7' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'N6s1313T' \
    --limit '15' \
    --name 'BFcQ3ORD' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'wwsvdnhF' \
    --body '{"name": "sGtkFRAr"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'cldXuxf9' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'rT6GOwNn' \
    --namespace $AB_NAMESPACE \
    --userId 'ZSe4kHTa' \
    --body '{"name": "vGiOWKcZ"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'wpMdWpfU' \
    --namespace $AB_NAMESPACE \
    --userId 'd6NQCxfs' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'J0N9UcTr' \
    --namespace $AB_NAMESPACE \
    --userId '9n2ao9EH' \
    --body '{"contentType": "dZVcRWtx", "customAttributes": {"IKxVZYU2": {}, "lipceEbC": {}, "FLBShtJR": {}}, "fileExtension": "4Vl8rHVG", "name": "xtGepYTx", "preview": "NekTSwo3", "previewMetadata": {"previewContentType": "pSF3WCDQ", "previewFileExtension": "LOA8hwzm"}, "subType": "nOBob8YQ", "tags": ["cdfYNW3A", "WKWqUZW5", "y1WdEoE6"], "type": "pkPrzpsd"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'ckWC1vZW' \
    --namespace $AB_NAMESPACE \
    --shareCode 'Kg1EyHwK' \
    --userId 'bKr7VFDk' \
    --body '{"contentType": "Q84VW6Ve", "customAttributes": {"IPMY5nnV": {}, "GuCSX5Np": {}, "D4dlxclE": {}}, "fileExtension": "jU4yCXln", "name": "hlXOrvnO", "payload": "QZyLxnDI", "preview": "ngzziLGa", "previewMetadata": {"previewContentType": "lTFtIl1h", "previewFileExtension": "s8SiyCnP"}, "subType": "LxrNDf1H", "tags": ["Y9kTA6wP", "NFLobPg9", "Z8FfyC1d"], "type": "kk3bA0rX", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'UEUo7Bx4' \
    --contentId 'e3MAHx3X' \
    --namespace $AB_NAMESPACE \
    --userId 'JbOPeclF' \
    --body '{"contentType": "bKGYK1Ca", "customAttributes": {"SuSld92b": {}, "sR68hqG8": {}, "MqCH65M3": {}}, "fileExtension": "91npowGa", "name": "cw8kFBhT", "payload": "0sNxEY3y", "preview": "oRVYTvXi", "previewMetadata": {"previewContentType": "nrI8aYT7", "previewFileExtension": "oxwEmgD2"}, "subType": "sUn4CSFq", "tags": ["rjvlJf5D", "bXJDkIgl", "q5hFz0ip"], "type": "xKpisvXO", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId 'B1hqGhoN' \
    --namespace $AB_NAMESPACE \
    --shareCode 'xVqrUsoO' \
    --userId 'AiwbZQrQ' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'MSksZq7D' \
    --contentId 'C0ba2nMY' \
    --namespace $AB_NAMESPACE \
    --userId 'UuzuGY3G' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'ywnt0Ajd' \
    --contentId '3tZQG5fa' \
    --namespace $AB_NAMESPACE \
    --userId 'kCpQ6rpa' \
    --body '{"shareCode": "vXF44Qtd"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId '8Ekzg6QG' \
    --limit '15' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'Od1gFSfB' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'b5Oo155K' \
    --namespace $AB_NAMESPACE \
    --userId '4mS19O4u' \
    --body '{"screenshots": [{"description": "oF9YDzWp", "screenshotId": "dDmQic82"}, {"description": "rKd0Vfw4", "screenshotId": "Ez79K4OZ"}, {"description": "xFhQlnHw", "screenshotId": "7vWaYlYZ"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId '6vMaBzyl' \
    --namespace $AB_NAMESPACE \
    --userId '1XMHXzTW' \
    --body '{"screenshots": [{"contentType": "ra9hxfZs", "description": "4yqdX8JY", "fileExtension": "jpg"}, {"contentType": "FtCLC8cd", "description": "jBcJm1au", "fileExtension": "png"}, {"contentType": "naMhKKYP", "description": "5KBEhd6a", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'Im1wuYod' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'Zr2RO8tB' \
    --userId 'N8IRXtFX' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'nqgIZjMR' \
    --body '{"followStatus": false}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'gDCf3hhV' \
    --limit '62' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'yjhdAKv7' \
    --limit '13' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'I5EsZEAv' \
    --limit '99' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'n5pkPttS' \
    --body '{"contents": ["I0GZOApC", "zGmhKa7Q", "OWTBEOZX"], "name": "AxRUwmW8"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'znIDXVm1' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'JuPTd7A8' \
    --namespace $AB_NAMESPACE \
    --userId 'yIUAglxu' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'WhoPPWsb' \
    --namespace $AB_NAMESPACE \
    --userId 'yJsRpsZP' \
    --body '{"contents": ["yjjgQ1Ke", "whTH8IEu", "regF2CZa"], "name": "xeCerejO"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'BmaPuUtu' \
    --namespace $AB_NAMESPACE \
    --userId 'SxET5NIs' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId '3JUQoDLQ' \
    --namespace $AB_NAMESPACE \
    --userId 'W4ZULBtw' \
    --limit '25' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'e4mgTHVK' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId '7qdlIUd0' \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '25' \
    --sortBy 'p9Blumrc' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'KYHYcc0e' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "yFpOrYJ7", "customAttributes": {"8eYJ6uXX": {}, "OX3pGf00": {}, "8rFRYe8j": {}}, "fileExtension": "x9EYxhan", "name": "tlsuYnkO", "shareCode": "tQT3B8Qe", "subType": "D7Mzy0px", "tags": ["e1FkFKmS", "iec6GAH3", "woqPYfjr"], "type": "V1wXyb2T"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'vMAwuP8Q' \
    --contentId '7z51B67E' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'mPv7OnJz' \
    --contentId 'zpAXgTcA' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"eObJKEEo": {}, "KRzBaS2i": {}, "TqSkssWM": {}}, "name": "rl1c7cI1", "shareCode": "6rY5B7Q3", "subType": "HyX145bG", "tags": ["VWpyrgtQ", "mFCr5YIk", "MbSFWMl5"], "type": "2TsDFBr3"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'qlS41psf' \
    --contentId 'j0d4fGVN' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "3R2UJpjv", "fileLocation": "gQV4gbTU"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminUpdateOfficialContentFileLocation' test.out

#- 107 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId '32EL5E18' \
    --contentId 'um3qw4f0' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "BOq5V5oc", "fileExtension": "RgqqKHQ5"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 108 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 108 'AdminGetConfigs' test.out

#- 109 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key 'uDpi6Yu9' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "lgiCr9KG"}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateConfig' test.out

#- 110 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --name 'xRMFwIqk' \
    --offset '64' \
    --sortBy 'MPHrumTf' \
    --subType 'uNkz4p61' \
    --tags '["oXsc9hZr", "tOzdPbHR", "0E6HnR0k"]' \
    --type 'sRws5R5s' \
    > test.out 2>&1
eval_tap $? 110 'AdminListContentV2' test.out

#- 111 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["uRAVmw6i", "116DuZMC", "FyhTwNTb"]}' \
    > test.out 2>&1
eval_tap $? 111 'AdminBulkGetContentByIDsV2' test.out

#- 112 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["EectGwTa", "NaQ7sY0o", "9dVU7h6d"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminGetContentBulkByShareCodesV2' test.out

#- 113 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'JNlK8iSX' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentByShareCodeV2' test.out

#- 114 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId '0Ccz22G8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByContentIDV2' test.out

#- 115 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId '2sv02vMs' \
    --namespace $AB_NAMESPACE \
    --versionId 'Vv8VDkAT' \
    > test.out 2>&1
eval_tap $? 115 'RollbackContentVersionV2' test.out

#- 116 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'YsHYUJQ0' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "pSEZTA7S", "screenshotId": "1xS1EsAX"}, {"description": "t51jxxaC", "screenshotId": "V1MLoAZ3"}, {"description": "vYaVrlgp", "screenshotId": "0U3cufA5"}]}' \
    > test.out 2>&1
eval_tap $? 116 'AdminUpdateScreenshotsV2' test.out

#- 117 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 'Lenvvizs' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "FDUlkLPs", "description": "oyhFAaoB", "fileExtension": "jpeg"}, {"contentType": "jE9A0AAA", "description": "JZvYCEno", "fileExtension": "jpg"}, {"contentType": "faFZLgZe", "description": "Plrr2WGh", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUploadContentScreenshotV2' test.out

#- 118 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'YkMD88vG' \
    --namespace $AB_NAMESPACE \
    --screenshotId '92qdltzm' \
    > test.out 2>&1
eval_tap $? 118 'AdminDeleteContentScreenshotV2' test.out

#- 119 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'UGCwGbII' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'ListContentVersionsV2' test.out

#- 120 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'IKODpWg8' \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetOfficialGroupContentsV2' test.out

#- 121 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'y8yS8mC7' \
    --namespace $AB_NAMESPACE \
    --shareCode 'n5B2J0EV' \
    --userId 'n1lHmjSG' \
    --body '{"customAttributes": {"4gwuvaSE": {}, "UO7WPwFh": {}, "2F4uHoqX": {}}, "name": "oFBMDeww", "shareCode": "F4v3l5kN", "subType": "RAkg88gY", "tags": ["jKOo29W8", "YazKf9T4", "FRI5UirW"], "type": "RtypNJyR"}' \
    > test.out 2>&1
eval_tap $? 121 'AdminUpdateContentByShareCodeV2' test.out

#- 122 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId '2XYWl7LT' \
    --namespace $AB_NAMESPACE \
    --shareCode 'QyMSmTTc' \
    --userId 'KPgvCHlt' \
    > test.out 2>&1
eval_tap $? 122 'AdminDeleteContentByShareCodeV2' test.out

#- 123 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'ZPBoaV2l' \
    --contentId 'BjyiI0Vt' \
    --namespace $AB_NAMESPACE \
    --userId 'zls9rCpu' \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteUserContentV2' test.out

#- 124 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'nicPioYa' \
    --contentId '0W2ZJ2Ap' \
    --namespace $AB_NAMESPACE \
    --userId 'Be1YVtQJ' \
    --body '{"customAttributes": {"4HCqWGI8": {}, "ulKNqsCB": {}, "CAMBITiq": {}}, "name": "WrhC43lo", "shareCode": "coNRsBbX", "subType": "T2gTJCL1", "tags": ["xZG1xoac", "uN3QzvLh", "2VcFxgjk"], "type": "OzejgsvK"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateUserContentV2' test.out

#- 125 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'fF91aBbE' \
    --contentId 'gT0rTBuJ' \
    --namespace $AB_NAMESPACE \
    --userId 'ua5XaaKk' \
    --body '{"fileExtension": "kRny8TMo", "fileLocation": "qgKquF83"}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateUserContentFileLocation' test.out

#- 126 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'PeUZA5s6' \
    --contentId 'QUfvCBmH' \
    --namespace $AB_NAMESPACE \
    --userId 'zMUE2nYj' \
    --body '{"contentType": "bAM0YiLV", "fileExtension": "Kdqfh2m1"}' \
    > test.out 2>&1
eval_tap $? 126 'AdminGenerateUserContentUploadURLV2' test.out

#- 127 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'LQCYtlkQ' \
    --limit '71' \
    --offset '57' \
    --sortBy '98ZGdk2J' \
    > test.out 2>&1
eval_tap $? 127 'AdminGetContentByUserIDV2' test.out

#- 128 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'vO8P4kzk' \
    --namespace $AB_NAMESPACE \
    --userId 'mclTMu1O' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateContentHideStatusV2' test.out

#- 129 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'cn4rr8EJ' \
    --namespace $AB_NAMESPACE \
    --userId 'sYQD0Jjj' \
    --limit '28' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 129 'AdminGetUserGroupContentsV2' test.out

#- 130 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'Q94lY1Z6' \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '69' \
    --sortBy 'I8cllHlF' \
    > test.out 2>&1
eval_tap $? 130 'PublicGetContentByChannelIDV2' test.out

#- 131 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --name 'lyhILGz5' \
    --offset '55' \
    --sortBy 'MBlM4NMf' \
    --subType 'jQo9BeTb' \
    --tags '["KoIBh2it", "YhbxghGh", "XnlIfB2J"]' \
    --type '6aXGcHbH' \
    > test.out 2>&1
eval_tap $? 131 'PublicListContentV2' test.out

#- 132 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["tfyIE6y5", "8kEyp8jP", "fzBfSvaE"]}' \
    > test.out 2>&1
eval_tap $? 132 'PublicBulkGetContentByIDV2' test.out

#- 133 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["m9HeTldh", "VUiA7AHI", "E6RnXAHC"]}' \
    > test.out 2>&1
eval_tap $? 133 'PublicGetContentBulkByShareCodesV2' test.out

#- 134 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'OOX8RHbd' \
    > test.out 2>&1
eval_tap $? 134 'PublicGetContentByShareCodeV2' test.out

#- 135 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'oaIhlZqb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 135 'PublicGetContentByIDV2' test.out

#- 136 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'O1qPY4NH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 136 'PublicAddDownloadCountV2' test.out

#- 137 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'EJwPvEKR' \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '80' \
    --sortBy 'GcbpphSj' \
    --userId 'TUabJ298' \
    > test.out 2>&1
eval_tap $? 137 'PublicListContentDownloaderV2' test.out

#- 138 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'QJqIwCis' \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '6' \
    --sortBy 'RRtEXhIU' \
    > test.out 2>&1
eval_tap $? 138 'PublicListContentLikeV2' test.out

#- 139 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId 'AFyHPbwt' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 139 'UpdateContentLikeStatusV2' test.out

#- 140 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'uGAxqKkc' \
    --namespace $AB_NAMESPACE \
    --userId 'CyD4Jvkb' \
    --body '{"contentType": "O4T4RYXE", "customAttributes": {"pGNvk3i9": {}, "Ii1btifO": {}, "cOaTgYPz": {}}, "fileExtension": "EGZk6BcG", "name": "g2w4jsve", "subType": "9tgrazIe", "tags": ["ie5sB5mI", "80LMoNSz", "Cfon6o5i"], "type": "hPLRHCT0"}' \
    > test.out 2>&1
eval_tap $? 140 'PublicCreateContentV2' test.out

#- 141 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'BSsoyYtm' \
    --namespace $AB_NAMESPACE \
    --shareCode 'q2JZibJO' \
    --userId 'tDJNhlV9' \
    --body '{"customAttributes": {"Hf8PrtD3": {}, "rRL4ITMD": {}, "v0TLmFak": {}}, "name": "fo7odBw4", "subType": "cN6xBSek", "tags": ["9Mpshgf3", "TyxcJhIz", "EjsmBspa"], "type": "GPJuhUyl"}' \
    > test.out 2>&1
eval_tap $? 141 'PublicUpdateContentByShareCodeV2' test.out

#- 142 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId '3QMQyvx3' \
    --namespace $AB_NAMESPACE \
    --shareCode 'WnnoufrE' \
    --userId 'a5b30MJD' \
    > test.out 2>&1
eval_tap $? 142 'PublicDeleteContentByShareCodeV2' test.out

#- 143 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'vamlH7qm' \
    --contentId 'z4vxwyQW' \
    --namespace $AB_NAMESPACE \
    --userId 'PHwBWUt8' \
    > test.out 2>&1
eval_tap $? 143 'PublicDeleteContentV2' test.out

#- 144 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId '2FhpfRWF' \
    --contentId 'caSvFdvG' \
    --namespace $AB_NAMESPACE \
    --userId 'fNmIjxns' \
    --body '{"customAttributes": {"sr3AW1Z4": {}, "vPffXuRs": {}, "pVwl0H8o": {}}, "name": "wW5h4NhW", "subType": "BjH49onx", "tags": ["SfNwYd46", "IOlR48wF", "ipCxJSfu"], "type": "MRbj5YiJ"}' \
    > test.out 2>&1
eval_tap $? 144 'PublicUpdateContentV2' test.out

#- 145 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'hdtEg7tZ' \
    --contentId 'iPZbjWwT' \
    --namespace $AB_NAMESPACE \
    --userId '6yXx6Pfw' \
    --body '{"fileExtension": "YEI0INUR", "fileLocation": "9vFCiRuy"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicUpdateContentFileLocation' test.out

#- 146 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'udROEMvH' \
    --contentId 'tI8UEwMU' \
    --namespace $AB_NAMESPACE \
    --userId 'UwNDRlNN' \
    --body '{"shareCode": "XORzCP8X"}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateContentShareCodeV2' test.out

#- 147 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'zp3yGtEo' \
    --contentId 'ZOdAdRWk' \
    --namespace $AB_NAMESPACE \
    --userId 'hgT5wS7t' \
    --body '{"contentType": "hcnrFSJF", "fileExtension": "kSHFCnRg"}' \
    > test.out 2>&1
eval_tap $? 147 'PublicGenerateContentUploadURLV2' test.out

#- 148 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'g3h5C5Zv' \
    --limit '86' \
    --offset '13' \
    --sortBy 'gXf90qEa' \
    > test.out 2>&1
eval_tap $? 148 'PublicGetContentByUserIDV2' test.out

#- 149 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'BTUlBQx8' \
    --namespace $AB_NAMESPACE \
    --userId 'Cgy4pfLW' \
    --body '{"screenshots": [{"description": "0qXWNsiy", "screenshotId": "673LCZfn"}, {"description": "mNK3eP0A", "screenshotId": "5ZReFFsT"}, {"description": "MgwwBZTq", "screenshotId": "HM5SSDQm"}]}' \
    > test.out 2>&1
eval_tap $? 149 'UpdateScreenshotsV2' test.out

#- 150 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'dKs8fHwh' \
    --namespace $AB_NAMESPACE \
    --userId 'linDvSFx' \
    --body '{"screenshots": [{"contentType": "Z7MQfSuk", "description": "dDzDKbax", "fileExtension": "png"}, {"contentType": "ZxuIFk3K", "description": "aFIFxcFy", "fileExtension": "jfif"}, {"contentType": "jlkGjFCT", "description": "Rm5Rruqt", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 150 'UploadContentScreenshotV2' test.out

#- 151 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'vJ8kN27e' \
    --namespace $AB_NAMESPACE \
    --screenshotId '9YOKgllb' \
    --userId 'OO1gvmnO' \
    > test.out 2>&1
eval_tap $? 151 'DeleteContentScreenshotV2' test.out

#- 152 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'KG4aWrbR' \
    --namespace $AB_NAMESPACE \
    --userId 'WF5ueJrS' \
    --limit '24' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 152 'PublicGetGroupContentsV2' test.out


rm -f "tmp.dat"

exit $EXIT_CODE