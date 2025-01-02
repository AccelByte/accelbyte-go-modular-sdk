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
    --limit '48' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "N1GtqJdt", "name": "xYvdT926"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'MUENXNqD' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "LzsJ1Uz4"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'PoHv4e88' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'cswOF5PP' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "wGbq4kzq", "customAttributes": {"9JLYTa4S": {}, "A6iN5hkv": {}, "VDiiGjym": {}}, "fileExtension": "JZAoUq4x", "name": "fHfjL9cr", "preview": "vDSitFzQ", "previewMetadata": {"previewContentType": "ptvu9aXW", "previewFileExtension": "1kyQ3MZE"}, "shareCode": "y7uc4hDW", "subType": "NGH9kOEJ", "tags": ["0f3WolSe", "iJZcBU0c", "i6tVlWgg"], "type": "nStSmu4E"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'FlZtpaTP' \
    --contentId 'HvOSvaRx' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "sm9YFD64", "customAttributes": {"NIUuQslj": {}, "hlhTMkoi": {}, "qiX98vmc": {}}, "fileExtension": "cO2FVPUL", "name": "BT6oELlH", "payload": "qSU70BNA", "preview": "F9ANbaD6", "previewMetadata": {"previewContentType": "wEfG2IHb", "previewFileExtension": "9IFJ4hqh"}, "shareCode": "pO84MgXb", "subType": "2xXrb1Ep", "tags": ["rLmoOefH", "S78iGgEx", "WEjipZQx"], "type": "w3MzYUkz", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'ZRp2vH2D' \
    --namespace $AB_NAMESPACE \
    --creator 'RIJ2WMrp' \
    --ishidden 'JF8kKslK' \
    --isofficial 'hTG1gXdj' \
    --limit '35' \
    --name 'UzRzzfjh' \
    --offset '67' \
    --orderby 'vBKzhSlJ' \
    --sortby 'DPqJB40Z' \
    --subtype 'HlGXjRcf' \
    --tags '["91ZgxOFb", "4iPtHhC3", "UQubQTuG"]' \
    --type '2NqNYqqU' \
    --userId 'cfAfQlBG' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'ENxthtNy' \
    --contentId 'C7thGRmm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["WypCh5wP", "bExJGui7", "Y8mfGKl8"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'SLzPQLo0' \
    --ishidden '4ltIVEWJ' \
    --isofficial 'm4h9AaFD' \
    --limit '42' \
    --name 'Woop862O' \
    --offset '58' \
    --orderby 'JlDu35VB' \
    --sortby 'yMFAoKYe' \
    --subtype 'rjvlspWz' \
    --tags '["CMV9i9Y0", "uDzxCysT", "q0bEgp5b"]' \
    --type 'TJzN7vjC' \
    --userId '7C61Ej1V' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["GLQ55XXE", "EVURkEce", "TXHqqB7L"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'skRt0tMT' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId '6W24sXLV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'REDs1uAB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId '7A3evk54' \
    --namespace $AB_NAMESPACE \
    --versionId 'KRv6guwV' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId '6wEh1A2S' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "3zBPWI9L", "screenshotId": "hC1exN5R"}, {"description": "rNbEngmD", "screenshotId": "7Ssz3YDV"}, {"description": "Wrtmc9rp", "screenshotId": "9iK1YSQH"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'ZUkbyMPW' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "ed5gMrOI", "description": "3fAQLYVd", "fileExtension": "bmp"}, {"contentType": "97X7J7Qz", "description": "VDj6FooB", "fileExtension": "jfif"}, {"contentType": "LmQa16uD", "description": "7JOhHhQs", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'M5sLWCMg' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'cQjeBcU8' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'JpRs1XA7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["8Frzjrh1", "ZZj4kMS1", "tdYVKdDQ"], "name": "QSolKqIa"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'NAACamlO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'ENCMwatK' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["tIaO4Lvn", "Dvo3Q4Ft", "PDNhuCTF"], "name": "Yub161kJ"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'r3LXx8At' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'gfR2aoDr' \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "49MyXb0n"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'KVdY5ZLz' \
    --body '{"tag": "pTNZ7Yrp"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'tlv9IJRY' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["rZXXIvlP", "NvqK6B20", "Sm3CvkOn"], "type": "MnLcnArB"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'LaUdVOsg' \
    --body '{"subtype": ["r1SVeNlz", "0qAIKRJt", "7kByfXqi"], "type": "Blhg0kkb"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'ryxtDoGJ' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'qB0lBSiE' \
    --limit '72' \
    --name 'LFab643z' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'L7JwZNfn' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'aKUzoXx4' \
    --namespace $AB_NAMESPACE \
    --userId 'SNjhSthm' \
    --body '{"name": "Nk9RjdRy"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'CnktkByh' \
    --namespace $AB_NAMESPACE \
    --userId 'M48sNn3t' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'ywWQUg7W' \
    --namespace $AB_NAMESPACE \
    --shareCode 'xkqWuhrD' \
    --userId 'QuTtqYUU' \
    --body '{"contentType": "ZuMg8xVB", "customAttributes": {"B9juap9i": {}, "y04z462u": {}, "VwjBPJFU": {}}, "fileExtension": "zctiSmXq", "name": "zW4EasMv", "payload": "s17OxI2o", "preview": "2W9SIZCp", "previewMetadata": {"previewContentType": "lVIbkJth", "previewFileExtension": "hI3kJkH7"}, "shareCode": "DNhXqtpM", "subType": "SjrNyRPd", "tags": ["pd9Y7Wqr", "IwGKD0jP", "ZvjmgvjU"], "type": "idHjdvbP", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId '9ffVrcKi' \
    --contentId 'pM2mTimu' \
    --namespace $AB_NAMESPACE \
    --userId 'GqYBcSVc' \
    --body '{"contentType": "LmFTlWFw", "customAttributes": {"KewXlbKm": {}, "DhKbMVs9": {}, "zzYwDUkc": {}}, "fileExtension": "yFOLQGRx", "name": "K99c8ew3", "payload": "CNdVNByQ", "preview": "8XY4OSSc", "previewMetadata": {"previewContentType": "EB2SThiC", "previewFileExtension": "a8ep5ocb"}, "shareCode": "rGqtJ5Sq", "subType": "M5Wrz453", "tags": ["1bViU3xB", "TtTub8Oy", "1R7pzDM9"], "type": "PUhIdceU", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'nRY4yjJf' \
    --namespace $AB_NAMESPACE \
    --shareCode 'FKbtNDz9' \
    --userId '1YZyvkWw' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'wuGYJluL' \
    --contentId 'yzQUJtd0' \
    --namespace $AB_NAMESPACE \
    --userId 'f4XzKVqr' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'tk6K4Ox8' \
    --limit '60' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'HIDa7O49' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'b6UDuWRU' \
    --namespace $AB_NAMESPACE \
    --userId 'Dut4N1s7' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'YM2FElHU' \
    --limit '21' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'znTyvlnY' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId '0LRvLivC' \
    --namespace $AB_NAMESPACE \
    --userId 'El3IfVO8' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'bx0AsBGA' \
    --namespace $AB_NAMESPACE \
    --userId 'zT1kSxu7' \
    --body '{"contents": ["G9eGbek3", "paPiGP91", "DdXayYBh"], "name": "SumKT9L9"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'vDCBDGZe' \
    --namespace $AB_NAMESPACE \
    --userId '5OQOyrfe' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId '2RxpxUJF' \
    --namespace $AB_NAMESPACE \
    --userId '8xXDUT0w' \
    --limit '57' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'vEH2CcX4' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'eATGkTvI' \
    --namespace $AB_NAMESPACE \
    --creator '59vF0Z24' \
    --ishidden 'LeVKMArg' \
    --isofficial 'aQLPVp3J' \
    --limit '79' \
    --name 'nfTh3EfN' \
    --offset '42' \
    --orderby 't9WJwE7w' \
    --sortby 'ri4WIkAg' \
    --subtype 'EvNx9r0g' \
    --tags '["wjwlBxAa", "4T3myxwt", "gLoTC9TW"]' \
    --type 'l6mWMLtE' \
    --userId 'rTjD4img' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'kSiWl2X3' \
    --ishidden 'cHR9wT8h' \
    --isofficial 'MU7hwC08' \
    --limit '13' \
    --name '5hgZ9Q3Y' \
    --offset '57' \
    --orderby 'NAGTUoAA' \
    --sortby '0iAjl0ba' \
    --subtype 'NfHNazof' \
    --tags '["fBW7wBSu", "Oo0mUcUZ", "4lGxBKZZ"]' \
    --type 'ROFQYWtB' \
    --userId 'nHNYuG0s' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["kjJ0xSFl", "LmS0oUUz", "IPtQ1m9n"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '99' \
    --name 'FwxXZ9nF' \
    --offset '32' \
    --orderby 'eiifRZAH' \
    --sortby 's6YBuzDZ' \
    --subtype 'S6v9kmNI' \
    --tags '["j4JEqSNq", "BXoukvmK", "o9dMrOOt"]' \
    --type 'NwWUL9KI' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["izDMBatf", "e6hXzrNV", "gErDLfQe"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'QmhG85Ft' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'seNvnYwF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'Bn8Ai4Ma' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'YDpzHwlo' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'Q45xSKsQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '86' \
    --orderby 'FeBtEfLA' \
    --sortby 'R4Nmszga' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'CCxFWVTD' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'QxvsRI82' \
    --limit '9' \
    --name 'XtkmNH70' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'n1EqlhTj' \
    --body '{"name": "6YnkFGjY"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'Ujk4meRI' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'iS2kWR81' \
    --namespace $AB_NAMESPACE \
    --userId 'YsfLzVKC' \
    --body '{"name": "T6XJSwDw"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'K8mX6D9F' \
    --namespace $AB_NAMESPACE \
    --userId 'NR3t52ll' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'jQZH2AWP' \
    --namespace $AB_NAMESPACE \
    --userId '56yYKBPk' \
    --body '{"contentType": "T49vOe6V", "customAttributes": {"Msw6Leiy": {}, "w1k3QJYY": {}, "M9Wfy0MX": {}}, "fileExtension": "PUbKtq83", "name": "iJhmUiaQ", "preview": "bNW2DuR4", "previewMetadata": {"previewContentType": "sczRQcDj", "previewFileExtension": "R5SMFHi4"}, "subType": "9kI3dcsV", "tags": ["QxPZK2Kc", "cLazW4ok", "JY8C6cFR"], "type": "h3S5AjWy"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId '2Wz1I4a7' \
    --namespace $AB_NAMESPACE \
    --shareCode 'plauYKx8' \
    --userId 'addj3qRb' \
    --body '{"contentType": "PtJjZbkn", "customAttributes": {"HaO56pCQ": {}, "tmDB6vSN": {}, "W5PQL4Mq": {}}, "fileExtension": "zQVrshGk", "name": "UcG5k6Cz", "payload": "pCiP0BLL", "preview": "7vxew6st", "previewMetadata": {"previewContentType": "84zFw4tt", "previewFileExtension": "T3vjzGtW"}, "subType": "U6ZMNSRr", "tags": ["ZwzpBFE4", "U90HDX0p", "g61u76Ig"], "type": "lp3y6r9j", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'D0yik84c' \
    --contentId 'YPEWwSMR' \
    --namespace $AB_NAMESPACE \
    --userId '26xQP7G0' \
    --body '{"contentType": "aELGf5UF", "customAttributes": {"gt3I3G0e": {}, "gMAW9jfU": {}, "bKbsjcAD": {}}, "fileExtension": "Igv7PY9M", "name": "Jnaj65i8", "payload": "jUcxrxbH", "preview": "hAA6Zazh", "previewMetadata": {"previewContentType": "nNc1QpfE", "previewFileExtension": "afJ1VosY"}, "subType": "asjzssm6", "tags": ["pgTTAxy0", "8g2obzRs", "p5yaffqG"], "type": "Q4q6zKen", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId '17AEeKQB' \
    --namespace $AB_NAMESPACE \
    --shareCode 'gkKBQJkt' \
    --userId 'nKJrHKuz' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'cKU7oSnY' \
    --contentId 'f5kVY5rk' \
    --namespace $AB_NAMESPACE \
    --userId '9pxcorW2' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'NaPMgBHs' \
    --contentId 'VikLWU89' \
    --namespace $AB_NAMESPACE \
    --userId '2twARuYt' \
    --body '{"shareCode": "KxCNPWfM"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'lt4EtDid' \
    --limit '92' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'IMMohhtL' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 's4NRHrkc' \
    --namespace $AB_NAMESPACE \
    --userId 'lYoovAJW' \
    --body '{"screenshots": [{"description": "1Fqv78Cs", "screenshotId": "533s7z3O"}, {"description": "2vyUddBq", "screenshotId": "5UGhVfMZ"}, {"description": "ikGcj2aD", "screenshotId": "dNuG1bDc"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId '9gI4qCdo' \
    --namespace $AB_NAMESPACE \
    --userId '6K5XwRB2' \
    --body '{"screenshots": [{"contentType": "SRr1M9MF", "description": "TUnwuJpb", "fileExtension": "bmp"}, {"contentType": "kpGjicEU", "description": "NVt7EvMb", "fileExtension": "jpg"}, {"contentType": "lBHmwjsn", "description": "59hizOhG", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'yVlaX0ew' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'TtrBpOf0' \
    --userId '7TEjUwQt' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'NtvoKQLZ' \
    --body '{"followStatus": false}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'uu6cQuIt' \
    --limit '49' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId '4Mquxqk4' \
    --limit '62' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'uDjHoiVv' \
    --limit '85' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'OqYmgyPU' \
    --body '{"contents": ["7sdmeAUl", "GqTRLsw2", "vo827fv5"], "name": "3PUGgjdt"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'hXpUtgMA' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId '33NUkiD6' \
    --namespace $AB_NAMESPACE \
    --userId 'JY61OarM' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'NhMZGtwj' \
    --namespace $AB_NAMESPACE \
    --userId 'sDUuEb7T' \
    --body '{"contents": ["3bszSNrJ", "2LakNAaO", "XsEhj9U2"], "name": "uJ6alb4S"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'evcAp8Ok' \
    --namespace $AB_NAMESPACE \
    --userId 'QCnWeyKs' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'TU9g6IKk' \
    --namespace $AB_NAMESPACE \
    --userId 'ZsCyl4up' \
    --limit '88' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'ChoDP1XG' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'tmHaMdQw' \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --name 'w1iiIzhZ' \
    --offset '14' \
    --sortBy 'MYq3AjKI' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'i1IjuTmJ' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "qOLMweNQ", "customAttributes": {"T3070Ufe": {}, "LN5osXOD": {}, "bHnfRcQh": {}}, "fileExtension": "e7CY41ei", "name": "wbGVMH8F", "shareCode": "Emlhg2rs", "subType": "pSYTffqo", "tags": ["JgYdDr96", "NM9bOXkY", "QCWdyqNY"], "type": "xt4Ef43W"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'BQAS0bFZ' \
    --contentId 'N7YxGAoN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'z7XxwSsM' \
    --contentId 'ZkFfJoAO' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"HxRxkGCe": {}, "R9n8DgwN": {}, "bIzEgOZr": {}}, "name": "J1gPXPxh", "shareCode": "ElbtUwIE", "subType": "Uk5a2CL8", "tags": ["3nktOi3E", "9SoMVetF", "byWoXunl"], "type": "jruk3xBB"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminCopyContent
samples/cli/sample-apps Ugc adminCopyContent \
    --channelId 'F59hFY1C' \
    --contentId 'eTHqMuud' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"8jJhucQc": {}, "mpHo7Sf8": {}, "yf6bH1yt": {}}, "name": "x3ueUoCh", "subType": "LzQzP2ts", "tags": ["iPWDIJ9t", "5IkRkRC1", "uVmEXWtA"], "targetChannelId": "EllnrW3j", "type": "X1ORaVoY"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminCopyContent' test.out

#- 107 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'ennKL8ix' \
    --contentId 'fzAgKlSh' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "Ms6rNhrq", "fileLocation": "mpL9h3nR"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminUpdateOfficialContentFileLocation' test.out

#- 108 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId '2GFJdUK2' \
    --contentId 'zcFnBfJG' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "bjug46s8", "fileExtension": "ez8m2QOF"}' \
    > test.out 2>&1
eval_tap $? 108 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 109 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 109 'AdminGetConfigs' test.out

#- 110 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key 'SV6MpDFm' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "R1jBqzx9"}' \
    > test.out 2>&1
eval_tap $? 110 'AdminUpdateConfig' test.out

#- 111 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '47' \
    --name '2Fu7vCCp' \
    --offset '97' \
    --sortBy 'ONjuU9rL' \
    --subType 'BCf4hgsr' \
    --tags '["p4K1gfEs", "F0hyhWg7", "cD5EvI8k"]' \
    --type '8vx5ytqm' \
    > test.out 2>&1
eval_tap $? 111 'AdminListContentV2' test.out

#- 112 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["cMM4TrJ0", "TqZNXsQ6", "w345HKVg"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminBulkGetContentByIDsV2' test.out

#- 113 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["IIXP9jEn", "yHFxgoQh", "y78MYtPN"]}' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentBulkByShareCodesV2' test.out

#- 114 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'r9P0oi7r' \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByShareCodeV2' test.out

#- 115 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 'tjYyVQ0G' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'AdminGetContentByContentIDV2' test.out

#- 116 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'Pl119oxM' \
    --namespace $AB_NAMESPACE \
    --versionId 'w2jaPLof' \
    > test.out 2>&1
eval_tap $? 116 'RollbackContentVersionV2' test.out

#- 117 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'V8va0MG1' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "lfD0cmFN", "screenshotId": "OoxnvoAx"}, {"description": "f5psNlZ9", "screenshotId": "qPN7M3mH"}, {"description": "1waS6z2Z", "screenshotId": "ISBWfELv"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateScreenshotsV2' test.out

#- 118 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 'QHJdk7CT' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "djGf38ad", "description": "dHUfw06a", "fileExtension": "jfif"}, {"contentType": "3QoPloGp", "description": "PIsnfmYT", "fileExtension": "jpeg"}, {"contentType": "30vj8gj5", "description": "JkZbuXBv", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 118 'AdminUploadContentScreenshotV2' test.out

#- 119 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'HiPwmJYY' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'A2Mr44zG' \
    > test.out 2>&1
eval_tap $? 119 'AdminDeleteContentScreenshotV2' test.out

#- 120 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'GFEM68CM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 120 'ListContentVersionsV2' test.out

#- 121 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'f0rMpo6R' \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 121 'AdminGetOfficialGroupContentsV2' test.out

#- 122 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '72' \
    --sortBy 'GiV8GB23' \
    --status 'iwo8JBb8' \
    > test.out 2>&1
eval_tap $? 122 'AdminListStagingContents' test.out

#- 123 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId 'pWv8WTwf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminGetStagingContentByID' test.out

#- 124 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId 'sBCcMpYD' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": false, "note": "MZ3ZmLgZ"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminApproveStagingContent' test.out

#- 125 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'fVLI7VSh' \
    --namespace $AB_NAMESPACE \
    --shareCode '00zfSFFa' \
    --userId 'mYmQECHs' \
    --body '{"customAttributes": {"OINC6WoT": {}, "HbwELK2d": {}, "yDkrCI8i": {}}, "name": "HWCzI2Sa", "shareCode": "nX1f5raO", "subType": "Unu3Y7UJ", "tags": ["UGxKGRoh", "TsZhNoL5", "2spYDVMe"], "type": "bQnBz2JN"}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateContentByShareCodeV2' test.out

#- 126 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'uliwQGAx' \
    --namespace $AB_NAMESPACE \
    --shareCode 'WnhJhAQJ' \
    --userId '0DRqWz3q' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteContentByShareCodeV2' test.out

#- 127 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'uCsoAabZ' \
    --contentId '1QM58ZkX' \
    --namespace $AB_NAMESPACE \
    --userId 'fNGYVGeQ' \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteUserContentV2' test.out

#- 128 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'cAf4Wx3o' \
    --contentId '2kIwPeR8' \
    --namespace $AB_NAMESPACE \
    --userId 'TL8EwlNe' \
    --body '{"customAttributes": {"sLKvjGRc": {}, "Xe4TvcSF": {}, "2CWpvCzd": {}}, "name": "VZKne0iU", "shareCode": "pZZ2uUmg", "subType": "rnBAttqb", "tags": ["r0lRQRVD", "64Slvqhg", "27vjJ7oc"], "type": "xk8ZRTBB"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentV2' test.out

#- 129 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'o1lauLqF' \
    --contentId '8VPE21Mu' \
    --namespace $AB_NAMESPACE \
    --userId '7T2Co2wq' \
    --body '{"fileExtension": "2IcmTbfT", "fileLocation": "ha5LB3wu"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateUserContentFileLocation' test.out

#- 130 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'IOECq2mo' \
    --contentId 'wfavEGGT' \
    --namespace $AB_NAMESPACE \
    --userId 'G3cGjNsl' \
    --body '{"contentType": "XscQ4aXK", "fileExtension": "v203DzqC"}' \
    > test.out 2>&1
eval_tap $? 130 'AdminGenerateUserContentUploadURLV2' test.out

#- 131 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'pyeItQWV' \
    --limit '8' \
    --offset '1' \
    --sortBy 'g4kwAY5P' \
    > test.out 2>&1
eval_tap $? 131 'AdminGetContentByUserIDV2' test.out

#- 132 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'QS5izi26' \
    --namespace $AB_NAMESPACE \
    --userId 'aBgJreng' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 132 'AdminUpdateContentHideStatusV2' test.out

#- 133 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'd1bKZHHS' \
    --namespace $AB_NAMESPACE \
    --userId 'WrVhniuj' \
    --limit '26' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 133 'AdminGetUserGroupContentsV2' test.out

#- 134 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'Gdf0HJXM' \
    --limit '64' \
    --offset '5' \
    --sortBy 'F878S3am' \
    --status '4ru2kvEw' \
    > test.out 2>&1
eval_tap $? 134 'AdminListUserStagingContents' test.out

#- 135 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'xQRV0rez' \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --name 'pyTiSnsy' \
    --offset '95' \
    --sortBy 'Atoqlf2t' \
    > test.out 2>&1
eval_tap $? 135 'PublicGetContentByChannelIDV2' test.out

#- 136 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '74' \
    --name 'PVAUa8Bt' \
    --offset '67' \
    --sortBy 'QKpvj2tU' \
    --subType '9yIMMk0m' \
    --tags '["Ylecghpg", "EtTpfZJ4", "tH5AfD3t"]' \
    --type '5ZVn1jlr' \
    > test.out 2>&1
eval_tap $? 136 'PublicListContentV2' test.out

#- 137 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["SLMfJ7IG", "nhknCcBB", "Mvgu6gM2"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicBulkGetContentByIDV2' test.out

#- 138 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["DIJ763y2", "WTEW8KgX", "QfOTYpNa"]}' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentBulkByShareCodesV2' test.out

#- 139 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'kMmWcv9Z' \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByShareCodeV2' test.out

#- 140 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'VsVTTEUm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicGetContentByIDV2' test.out

#- 141 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'LAiESr3R' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 141 'PublicAddDownloadCountV2' test.out

#- 142 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'kRXrdKKq' \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '27' \
    --sortBy 'zDb5zMi3' \
    --userId 'D5KbrWL9' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentDownloaderV2' test.out

#- 143 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'yc3pYhTI' \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '62' \
    --sortBy 'tDicyab5' \
    > test.out 2>&1
eval_tap $? 143 'PublicListContentLikeV2' test.out

#- 144 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId '7vRHrqVW' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateContentLikeStatusV2' test.out

#- 145 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'DfdHA14E' \
    --namespace $AB_NAMESPACE \
    --userId '6N9kSPMf' \
    --body '{"contentType": "74tYA9my", "customAttributes": {"8VCMJsEB": {}, "T1guST1Q": {}, "gHg1CyYd": {}}, "fileExtension": "lx1Hn7jM", "name": "Q9TKPDRv", "subType": "OvVadIP2", "tags": ["KOBgtGha", "LMD4Gntx", "MH0MmIw8"], "type": "mHJFZGsu"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicCreateContentV2' test.out

#- 146 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'u1sdRs1Y' \
    --namespace $AB_NAMESPACE \
    --shareCode 'q2Pb6x5p' \
    --userId 'VLDQI0c1' \
    --body '{"customAttributes": {"odGDmPhb": {}, "OHJlT67y": {}, "MR93922H": {}}, "name": "GHKC4fRN", "subType": "EGwNkxp0", "tags": ["fpCAB3CW", "zGy6NtsV", "6jLxoVg8"], "type": "nrAr26mP"}' \
    > test.out 2>&1
eval_tap $? 146 'PublicUpdateContentByShareCodeV2' test.out

#- 147 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId '2tdvwaeZ' \
    --namespace $AB_NAMESPACE \
    --shareCode 'bvxk0eNH' \
    --userId 'eyH5YRzK' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentByShareCodeV2' test.out

#- 148 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId '0V8ELYM0' \
    --contentId '05oPgd5h' \
    --namespace $AB_NAMESPACE \
    --userId 'ABkwoh5z' \
    > test.out 2>&1
eval_tap $? 148 'PublicDeleteContentV2' test.out

#- 149 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'sfWpaFvQ' \
    --contentId 'ozEJfNMD' \
    --namespace $AB_NAMESPACE \
    --userId 'Hc996sQf' \
    --body '{"customAttributes": {"rLZt2Odv": {}, "JECgcNky": {}, "lXHNkmif": {}}, "name": "JpJTC4XO", "subType": "Wogp9T2x", "tags": ["O70btPpU", "6jGiMG75", "ShbJ2eTX"], "type": "xrrcNPNa"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentV2' test.out

#- 150 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'ecKIGCXw' \
    --contentId 'AUBWcEc6' \
    --namespace $AB_NAMESPACE \
    --userId 'XZM46hgz' \
    --body '{"fileExtension": "2sSJoHBw", "fileLocation": "9DfNaMOX"}' \
    > test.out 2>&1
eval_tap $? 150 'PublicUpdateContentFileLocation' test.out

#- 151 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId '7uX0uHEx' \
    --contentId '2Mg8crL4' \
    --namespace $AB_NAMESPACE \
    --userId 'Wh3GMVeq' \
    --body '{"shareCode": "r5d8yEa8"}' \
    > test.out 2>&1
eval_tap $? 151 'UpdateContentShareCodeV2' test.out

#- 152 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'KLHbG2y0' \
    --contentId 'qFNqQp9Q' \
    --namespace $AB_NAMESPACE \
    --userId 'ZMrxiXFD' \
    --body '{"contentType": "Ixi5VgiG", "fileExtension": "Xlpe4z8U"}' \
    > test.out 2>&1
eval_tap $? 152 'PublicGenerateContentUploadURLV2' test.out

#- 153 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'ayJojFQZ' \
    --limit '2' \
    --offset '82' \
    --sortBy 'YvUErzQo' \
    > test.out 2>&1
eval_tap $? 153 'PublicGetContentByUserIDV2' test.out

#- 154 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'tjeSyAXd' \
    --namespace $AB_NAMESPACE \
    --userId 'dDZL5me5' \
    --body '{"screenshots": [{"description": "ysPnKJ7x", "screenshotId": "6cFk44WM"}, {"description": "XRd8q8eF", "screenshotId": "74uQGC6O"}, {"description": "oc4GsMO8", "screenshotId": "SXNlJPbW"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UpdateScreenshotsV2' test.out

#- 155 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'WEwH7iDL' \
    --namespace $AB_NAMESPACE \
    --userId 'V6kCS6Py' \
    --body '{"screenshots": [{"contentType": "Xbb8uzBl", "description": "wuRIuWFg", "fileExtension": "jpg"}, {"contentType": "5ySYlEWu", "description": "mluFAPvg", "fileExtension": "png"}, {"contentType": "ieDvbjth", "description": "9sXxpl5J", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 155 'UploadContentScreenshotV2' test.out

#- 156 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'QuFS0b4U' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'tY6ctiLD' \
    --userId 'ZTFri9oK' \
    > test.out 2>&1
eval_tap $? 156 'DeleteContentScreenshotV2' test.out

#- 157 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'd2WOUXCZ' \
    --namespace $AB_NAMESPACE \
    --userId 'pyE7C7WM' \
    --limit '48' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 157 'PublicGetGroupContentsV2' test.out

#- 158 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'Nz4Q9Yd4' \
    --limit '12' \
    --offset '90' \
    --sortBy 'y2k1Ky59' \
    --status 'LqCWp4h4' \
    > test.out 2>&1
eval_tap $? 158 'ListUserStagingContents' test.out

#- 159 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId '5aEvWmni' \
    --namespace $AB_NAMESPACE \
    --userId 'jvRBmVeQ' \
    > test.out 2>&1
eval_tap $? 159 'GetUserStagingContentByID' test.out

#- 160 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId 'mrOhbL00' \
    --namespace $AB_NAMESPACE \
    --userId 'kieXNoN6' \
    --body '{"fileExtension": "BNP987zJ", "fileLocation": "n5VWPp9w"}' \
    > test.out 2>&1
eval_tap $? 160 'UpdateStagingContent' test.out

#- 161 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId 'hL1Eb4yr' \
    --namespace $AB_NAMESPACE \
    --userId '9sbkFFyT' \
    > test.out 2>&1
eval_tap $? 161 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE