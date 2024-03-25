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
    --limit '90' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "pqgx9NIg", "name": "iuUpt4Wv"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'jcuyvwu3' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "4aqWug4f"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'j4qmi0Gx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'bckl5MA4' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "7M2fM4fZ", "customAttributes": {"rwbvS6oF": {}, "I4ZFx8cN": {}, "dlXmkSeb": {}}, "fileExtension": "9wImLGGu", "name": "LQeFN6ms", "preview": "ZtRW75cZ", "previewMetadata": {"previewContentType": "3rYmMU5a", "previewFileExtension": "Hpe3NSjP"}, "shareCode": "aI0KqaLC", "subType": "PLzqfrld", "tags": ["ycx7tL4V", "UNZh8Mx5", "Id8LfeTj"], "type": "mOeBc5pe"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId '5BPlaPhj' \
    --contentId 'ZV2HZRgP' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "a33DsCeL", "customAttributes": {"flyX0OSI": {}, "0Tcg7DbC": {}, "iGnSZGHH": {}}, "fileExtension": "un0T04po", "name": "ZqzJ5jgJ", "payload": "liiD8Skx", "preview": "8T8zmbaJ", "previewMetadata": {"previewContentType": "usAmVu7h", "previewFileExtension": "bLB7xvYQ"}, "shareCode": "zYPHMve0", "subType": "gHtxy7lE", "tags": ["sJxBPEsb", "thr4Nu7x", "i5BcmrId"], "type": "Sk3dBibO", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'ENwjH5mE' \
    --namespace $AB_NAMESPACE \
    --creator 'YvpHWn3N' \
    --ishidden '68tsba8Q' \
    --isofficial 'kXyNACf4' \
    --limit '67' \
    --name 'seWoNgTd' \
    --offset '73' \
    --orderby 'cSeRr6Z8' \
    --sortby 'AAhjFNbY' \
    --subtype 'e6Kxd2ra' \
    --tags '["IcOdA8Ha", "G0kX4cvs", "RQiS90tQ"]' \
    --type 'zUqVMw2Y' \
    --userId 'Yw8Fr0FF' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'GQlMf1ec' \
    --contentId 'NTY3r9mq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["uAg0P6YO", "INXgIxDr", "qphYdqZC"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'Uf0RYenN' \
    --ishidden 'IT1TNf11' \
    --isofficial 'n5zRPA3h' \
    --limit '44' \
    --name 'aeT12iB0' \
    --offset '18' \
    --orderby 'UjRJHdZ6' \
    --sortby 'FCcaqjGN' \
    --subtype 'S8WxM6Uk' \
    --tags '["0bdcKdGq", "PjrZWdVD", "0LUdCY07"]' \
    --type 'AmR2KZKx' \
    --userId 'aevwpaz4' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["xObPj1bh", "gJzTNT38", "Owb97Fgb"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'VrcMkwqq' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'T3LI7qd8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'tXqjGwp1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId '6557K7QG' \
    --namespace $AB_NAMESPACE \
    --versionId 'pdq3pGnE' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'uV3wizMh' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "kY9KNDZe", "screenshotId": "yhy7jDaP"}, {"description": "1QgeuGj3", "screenshotId": "PHYUVcCP"}, {"description": "PDshbJkb", "screenshotId": "S9OfXQ33"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'dGJksi13' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "20eKAuLv", "description": "vyIatZil", "fileExtension": "bmp"}, {"contentType": "CGwTVP8Q", "description": "CxPkxYxT", "fileExtension": "jpeg"}, {"contentType": "36vCnk1M", "description": "N1Q2WYXz", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'dFua03rL' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'bNpFKhf6' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId '6miiDJsJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["XE3HaChQ", "VsUVPTd9", "Yt4a8CnA"], "name": "Q2Yc2UEg"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'kQU8yQ6K' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'ceE0miES' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["T6uWQTKs", "5yFD9C6D", "HHVEUuQ9"], "name": "Yg5Vxk1D"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId '9tpasJ8m' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'FAwKmkib' \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "NG6Xe8IJ"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'Nqw8zCEB' \
    --body '{"tag": "icD35o6J"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'bRbPkCWz' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["ugcABegO", "BMNNF98b", "QWBAnOTJ"], "type": "GoJr2Ykv"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId '4FRVKFHY' \
    --body '{"subtype": ["7ywXG5XN", "EJGvdubF", "dN0AzQTQ"], "type": "wKA5Jyre"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'tBMmtAYY' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'dmggp8qC' \
    --limit '69' \
    --name 'qKufsMRS' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'RTtquWsI' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'zOWGSdzF' \
    --namespace $AB_NAMESPACE \
    --userId 'CgPd9JZd' \
    --body '{"name": "04ojz1ks"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'P1vAU37d' \
    --namespace $AB_NAMESPACE \
    --userId 'uhWzK7x5' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId '5QKpDLd0' \
    --namespace $AB_NAMESPACE \
    --shareCode 'qPFJ5bYl' \
    --userId 'oQmbdHud' \
    --body '{"contentType": "9N3Td5dX", "customAttributes": {"9mVg9Ca2": {}, "WrorpTbk": {}, "LpLav4Ex": {}}, "fileExtension": "y80aUHYj", "name": "N7R5l20G", "payload": "lTzNekOz", "preview": "jOiPRb14", "previewMetadata": {"previewContentType": "S67JCXQ1", "previewFileExtension": "33XRMIjo"}, "shareCode": "GHcxbk8S", "subType": "LheUFY8z", "tags": ["Vd8fO9l9", "X0LayyMl", "3660KPrM"], "type": "hxo8Ul9r", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'sxmInYzr' \
    --contentId 'hnuQu8Wy' \
    --namespace $AB_NAMESPACE \
    --userId 'HHeOZpbm' \
    --body '{"contentType": "8HHM7h7y", "customAttributes": {"pCBW65RD": {}, "5jIio9sw": {}, "rJUSDPYK": {}}, "fileExtension": "EPgttU9V", "name": "HFMpnETB", "payload": "d8zaXQdd", "preview": "9m6XleY9", "previewMetadata": {"previewContentType": "o0z6bIFY", "previewFileExtension": "AQUlPVhF"}, "shareCode": "HKgXi7il", "subType": "0ZnXkxow", "tags": ["pdYi8Kwx", "NbFsdUNW", "Byvz33Yl"], "type": "qKhHbccq", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'lv5u5Gi6' \
    --namespace $AB_NAMESPACE \
    --shareCode 'UyHjAZ5C' \
    --userId 'o53kPJxV' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'UJUgUWjO' \
    --contentId 'p2mXczHY' \
    --namespace $AB_NAMESPACE \
    --userId 'R5EbvJg7' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'c4hpNrKy' \
    --limit '18' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'oXWyfaU0' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'pm5x3j4W' \
    --namespace $AB_NAMESPACE \
    --userId 'OUUhRrdE' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'sUEuYCcS' \
    --limit '20' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'qiQwETD7' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId '7cThElDh' \
    --namespace $AB_NAMESPACE \
    --userId 'WR3wgpcp' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'AhiRh7nC' \
    --namespace $AB_NAMESPACE \
    --userId '2D5qj716' \
    --body '{"contents": ["Df359YEZ", "qAtn2src", "QtKE0oRP"], "name": "ori7AZ1X"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'g6GophIf' \
    --namespace $AB_NAMESPACE \
    --userId '8rh8ZTzM' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId '4pEIH5vV' \
    --namespace $AB_NAMESPACE \
    --userId 'TxBYqElF' \
    --limit '70' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'LnHOqXPL' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'PEmemiFH' \
    --namespace $AB_NAMESPACE \
    --creator 'muRrUy2u' \
    --ishidden 'rquDo716' \
    --isofficial 'LX5uDXTH' \
    --limit '73' \
    --name 'M21TAVsW' \
    --offset '59' \
    --orderby 'qsvrVETC' \
    --sortby 'F2RzuREB' \
    --subtype 'xz7gVueq' \
    --tags '["KYp8DRFu", "ZDNLMqFb", "0Ewx6Tku"]' \
    --type 'vWkfLZ5c' \
    --userId 'v5hpUnnp' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'lAxoPWWO' \
    --ishidden '3Sm7NBjA' \
    --isofficial 'cxih9Crs' \
    --limit '12' \
    --name 'qez0CcIz' \
    --offset '33' \
    --orderby 'ipEKKEEL' \
    --sortby 'jfUI2QAt' \
    --subtype 'FlqZbIpz' \
    --tags '["CqDOC9YY", "l0gI7sfI", "kexqmVyS"]' \
    --type 'h52uBS9g' \
    --userId 'G5KDK4bT' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["m6KkJ6ta", "pUtpTV8r", "6isjvJf3"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '73' \
    --name 'qnCuxRQb' \
    --offset '17' \
    --orderby 'JT88d7Fu' \
    --sortby 'ruoA9Xnw' \
    --subtype '1prFW3LV' \
    --tags '["ubPeWtbg", "FkbQ7iee", "MXyTBrNI"]' \
    --type '02ctxYxc' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["ZGYqYKi7", "huhUFTgV", "HQXIzHTT"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'WcisrL7q' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'IgTGwJJc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'VgoWmoag' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'XtbiitHp' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'GmmFVsLG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --offset '25' \
    --orderby '3uyFxmmb' \
    --sortby 'Um38Sf9i' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'JFsMhA1B' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'opfzarcm' \
    --limit '34' \
    --name '6fE8j1mr' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId '86mO7hCe' \
    --body '{"name": "V3pg5H9u"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId '4cMBXsB1' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'aQJkbc0F' \
    --namespace $AB_NAMESPACE \
    --userId '7jsWVDsS' \
    --body '{"name": "tKero2Ii"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'VZVkywRn' \
    --namespace $AB_NAMESPACE \
    --userId 'hUBghiPw' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'wyGB4Yfs' \
    --namespace $AB_NAMESPACE \
    --userId 'PvUW3pxT' \
    --body '{"contentType": "Gu3XO0Nb", "customAttributes": {"robzBymg": {}, "BNiOYa0C": {}, "AUqNkxtl": {}}, "fileExtension": "DZWGXJBC", "name": "XUs5j7E2", "preview": "TZTqthnV", "previewMetadata": {"previewContentType": "rgqoRIUS", "previewFileExtension": "ZQfEUyeP"}, "subType": "nzMoMdQz", "tags": ["yIkTJIq4", "8QHLl852", "hlDnItMR"], "type": "T1HaKf7z"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'zrbis8BG' \
    --namespace $AB_NAMESPACE \
    --shareCode 'IEPrfGlH' \
    --userId 'a1P5pBsp' \
    --body '{"contentType": "6PzTk8Ak", "customAttributes": {"0hDaqrdX": {}, "mMBU4hM8": {}, "MjPbYjpF": {}}, "fileExtension": "jSHtuqMC", "name": "QTO5kcLF", "payload": "0pfciGxw", "preview": "FDgvEtzj", "previewMetadata": {"previewContentType": "Vr6tiT2R", "previewFileExtension": "zGeED3dw"}, "subType": "oKBhmSec", "tags": ["Fy45mnQ9", "rPeQzDiE", "0HQLHQcb"], "type": "PqP3120L", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'sd7of6Gj' \
    --contentId 'NqcMh7jH' \
    --namespace $AB_NAMESPACE \
    --userId 'Mp0HeZUP' \
    --body '{"contentType": "g3RWL4aD", "customAttributes": {"XkiHKT1z": {}, "kpMoaz7Y": {}, "e8l1Kh9Y": {}}, "fileExtension": "lks4f6ye", "name": "6GMt5koI", "payload": "hGbpv6FY", "preview": "HLerIIvH", "previewMetadata": {"previewContentType": "IRIW3yM9", "previewFileExtension": "mhISujcw"}, "subType": "jFpiS9vs", "tags": ["gdXTztxq", "yr3nmhaW", "ItvHGeYe"], "type": "EsFNKm7E", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId 'vkgbqWJ6' \
    --namespace $AB_NAMESPACE \
    --shareCode 'BPPbzXYb' \
    --userId 'NE0W2J8f' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'l5ep6WHj' \
    --contentId 'ULObbns7' \
    --namespace $AB_NAMESPACE \
    --userId 'e7IsEQJ1' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'EScSZ5D6' \
    --contentId 'W2hmIfyI' \
    --namespace $AB_NAMESPACE \
    --userId 'u8CEqcTl' \
    --body '{"shareCode": "MRAt1pUf"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'a2LB4vw0' \
    --limit '36' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'mcNxYfrv' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'ZJ1OdLuJ' \
    --namespace $AB_NAMESPACE \
    --userId '9MrCbEQa' \
    --body '{"screenshots": [{"description": "hJVtLAET", "screenshotId": "6eJoPsNo"}, {"description": "szvJ03W2", "screenshotId": "0Hp0Swkm"}, {"description": "HWKjSS46", "screenshotId": "IzIoYLdC"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'VNLbKBl3' \
    --namespace $AB_NAMESPACE \
    --userId '7vmBBip0' \
    --body '{"screenshots": [{"contentType": "2vbxgTdj", "description": "Y5aRnvQY", "fileExtension": "bmp"}, {"contentType": "pPkkA7AY", "description": "XZoMaBg8", "fileExtension": "pjp"}, {"contentType": "zFjzrfOI", "description": "ByAYj4HX", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'Zz6i4Taj' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'XridxlyF' \
    --userId '6mgpLKzE' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'rNMPJ9jW' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'dtwfmzfQ' \
    --limit '17' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'lsWeggCm' \
    --limit '29' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId '8rc41veF' \
    --limit '34' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId '12IaSm0n' \
    --body '{"contents": ["OlFeFIdL", "lCtJMmYi", "fXCeHXtH"], "name": "C66JOQOD"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'yf56pG1M' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'PgQi93kE' \
    --namespace $AB_NAMESPACE \
    --userId '2DIchzJ9' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'jSzZG0Zx' \
    --namespace $AB_NAMESPACE \
    --userId 'cqE5YJgj' \
    --body '{"contents": ["P7J3TzcA", "84sma4Nr", "ockozBhp"], "name": "mYDJJuEC"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'VWikhlld' \
    --namespace $AB_NAMESPACE \
    --userId '5bLLJNtp' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'qddVWeGC' \
    --namespace $AB_NAMESPACE \
    --userId 'UhLgo088' \
    --limit '63' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'j7DakCsi' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'apfCDa3n' \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --name 'r4KVW19p' \
    --offset '40' \
    --sortBy 'zopmgzcL' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'uMdoLNzH' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "BjPh7XED", "customAttributes": {"3f96JSS9": {}, "xbOsZeEW": {}, "JAvTRe5C": {}}, "fileExtension": "1N4awIQN", "name": "DEyS6qlj", "shareCode": "96FGmI6p", "subType": "2MXWmWqq", "tags": ["4jRJznTI", "LGY4GzA6", "OcYUEybZ"], "type": "bqbxPG5Y"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'I5MgCXG5' \
    --contentId 'Ld2u2HZs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'MgxUAq2s' \
    --contentId '2lDvTSNJ' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"qU8irkwd": {}, "eU5q6gRm": {}, "5ugxvqZ7": {}}, "name": "jvYylxPe", "shareCode": "gbapulAw", "subType": "rz9tcXVa", "tags": ["dM1iWdvy", "H9Dq6unR", "D9mCXbks"], "type": "nqcUE10F"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'wQK50wiy' \
    --contentId 'BDWWKC2z' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "8Uo3EMNd", "fileLocation": "yR2Zb2YQ"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminUpdateOfficialContentFileLocation' test.out

#- 107 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'Mxi2NQel' \
    --contentId 'yJQjsF8W' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "9z96GFjz", "fileExtension": "165c1X02"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 108 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 108 'AdminGetConfigs' test.out

#- 109 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key 'ncDwGqSO' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "IaM0WtNv"}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateConfig' test.out

#- 110 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '18' \
    --name 'Wi3UTEgo' \
    --offset '74' \
    --sortBy 'C1CjYTcy' \
    --subType 'DVuVm3oE' \
    --tags '["ossKwknZ", "EmPzjdE4", "CNhbzjAL"]' \
    --type 'URCAsQgv' \
    > test.out 2>&1
eval_tap $? 110 'AdminListContentV2' test.out

#- 111 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["Ex2YzvoZ", "8kkTBLBb", "vuSlFfHH"]}' \
    > test.out 2>&1
eval_tap $? 111 'AdminBulkGetContentByIDsV2' test.out

#- 112 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["yIEevI3I", "Au6aGqLo", "2VUnPKbX"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminGetContentBulkByShareCodesV2' test.out

#- 113 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'CaQwuGuM' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentByShareCodeV2' test.out

#- 114 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 'S7LlkluO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByContentIDV2' test.out

#- 115 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'odeASrEN' \
    --namespace $AB_NAMESPACE \
    --versionId '7vF4PKMG' \
    > test.out 2>&1
eval_tap $? 115 'RollbackContentVersionV2' test.out

#- 116 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'MqT2fK7d' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "7SdlQfmT", "screenshotId": "zvQhO6Mw"}, {"description": "epBHFn9t", "screenshotId": "RZ6hGiIE"}, {"description": "vlbdlmfb", "screenshotId": "jfmCf3iM"}]}' \
    > test.out 2>&1
eval_tap $? 116 'AdminUpdateScreenshotsV2' test.out

#- 117 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 'RqzIbVd7' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "zq1o84fs", "description": "OtrW8q6g", "fileExtension": "bmp"}, {"contentType": "dfXeIc4a", "description": "FI6g2BH6", "fileExtension": "png"}, {"contentType": "mDTTS98r", "description": "GELE56DE", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUploadContentScreenshotV2' test.out

#- 118 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId '2Tld1IZ4' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'aww2LHVZ' \
    > test.out 2>&1
eval_tap $? 118 'AdminDeleteContentScreenshotV2' test.out

#- 119 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId '1Hs413eU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'ListContentVersionsV2' test.out

#- 120 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'CPJn9ajA' \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetOfficialGroupContentsV2' test.out

#- 121 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '54' \
    --sortBy 'ncLTwH5p' \
    --status '5HQCSqWB' \
    > test.out 2>&1
eval_tap $? 121 'AdminListStagingContents' test.out

#- 122 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId 'j3ipjEKP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetStagingContentByID' test.out

#- 123 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId 'LIb3TYIM' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": true, "note": "4h0JzZt0"}' \
    > test.out 2>&1
eval_tap $? 123 'AdminApproveStagingContent' test.out

#- 124 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId '3d2XfeON' \
    --namespace $AB_NAMESPACE \
    --shareCode 'UYfxICLA' \
    --userId 'WpeduxjD' \
    --body '{"customAttributes": {"VehyvKoU": {}, "aMh9nEpT": {}, "xNxPK8N0": {}}, "name": "PggHjyMo", "shareCode": "zX37pGfO", "subType": "VtBPhwyi", "tags": ["dBr6JUcS", "nnhQaETH", "bUtzOMHK"], "type": "JZSXnoln"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateContentByShareCodeV2' test.out

#- 125 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'K44qSq5w' \
    --namespace $AB_NAMESPACE \
    --shareCode 'OKQAd6ij' \
    --userId 'Hwuaqc5I' \
    > test.out 2>&1
eval_tap $? 125 'AdminDeleteContentByShareCodeV2' test.out

#- 126 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId '1OBdskrX' \
    --contentId 'FYgFQbwP' \
    --namespace $AB_NAMESPACE \
    --userId 'djXpd4Qi' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteUserContentV2' test.out

#- 127 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId '2fzKY84e' \
    --contentId 'FQ8OjEwU' \
    --namespace $AB_NAMESPACE \
    --userId 'QdP8ucLf' \
    --body '{"customAttributes": {"F9GBft8C": {}, "vGmhJZmQ": {}, "3OLPtFY5": {}}, "name": "8jRYqHBj", "shareCode": "ouQ3GzfN", "subType": "7mY6pbBz", "tags": ["aw2SpqkS", "TrXNgxV0", "5RhofO7b"], "type": "bfcZvAwY"}' \
    > test.out 2>&1
eval_tap $? 127 'AdminUpdateUserContentV2' test.out

#- 128 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'CF6CDNgg' \
    --contentId 'Bi5XJGDl' \
    --namespace $AB_NAMESPACE \
    --userId '0iCGbh0M' \
    --body '{"fileExtension": "435PcjEi", "fileLocation": "Szr6SYor"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentFileLocation' test.out

#- 129 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'EGll54Mz' \
    --contentId 'NSLOyXIr' \
    --namespace $AB_NAMESPACE \
    --userId 'sX1BcEpk' \
    --body '{"contentType": "eWLw8nVJ", "fileExtension": "mgHGW05W"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminGenerateUserContentUploadURLV2' test.out

#- 130 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId '7gSwHqhK' \
    --limit '91' \
    --offset '37' \
    --sortBy 'gZpNEqAF' \
    > test.out 2>&1
eval_tap $? 130 'AdminGetContentByUserIDV2' test.out

#- 131 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'HfKCwLs6' \
    --namespace $AB_NAMESPACE \
    --userId 'fdgIMNEs' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 131 'AdminUpdateContentHideStatusV2' test.out

#- 132 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId '3nPUg8rK' \
    --namespace $AB_NAMESPACE \
    --userId 'JlMgl23W' \
    --limit '90' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 132 'AdminGetUserGroupContentsV2' test.out

#- 133 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 's3IRI7uL' \
    --limit '96' \
    --offset '76' \
    --sortBy '8z3HRoAo' \
    --status '2vwdC0WV' \
    > test.out 2>&1
eval_tap $? 133 'AdminListUserStagingContents' test.out

#- 134 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'ylbJz3Qf' \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --name '3j6292Rv' \
    --offset '56' \
    --sortBy 'n98a0tBC' \
    > test.out 2>&1
eval_tap $? 134 'PublicGetContentByChannelIDV2' test.out

#- 135 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '99' \
    --name 'K6ckWomh' \
    --offset '3' \
    --sortBy 's4UgIDyZ' \
    --subType 'kGLHOcuC' \
    --tags '["LIYFcySY", "BQdqqBCB", "uFM5ILHI"]' \
    --type 'jUGKdXU4' \
    > test.out 2>&1
eval_tap $? 135 'PublicListContentV2' test.out

#- 136 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["emxXjNiX", "FeLuN2RQ", "IDDWNb63"]}' \
    > test.out 2>&1
eval_tap $? 136 'PublicBulkGetContentByIDV2' test.out

#- 137 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["pgbzTGfX", "6yUl08Im", "H9S55FcV"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicGetContentBulkByShareCodesV2' test.out

#- 138 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'v24E8GgS' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentByShareCodeV2' test.out

#- 139 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'DitaUBRD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByIDV2' test.out

#- 140 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'IFZDQl4S' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicAddDownloadCountV2' test.out

#- 141 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'ZY0tvFK3' \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '3' \
    --sortBy 'YUoTl3Cc' \
    --userId 'beN04yau' \
    > test.out 2>&1
eval_tap $? 141 'PublicListContentDownloaderV2' test.out

#- 142 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'xwyg1TYR' \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '17' \
    --sortBy 'PNnqkjjk' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentLikeV2' test.out

#- 143 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId 'VWPi4WRw' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateContentLikeStatusV2' test.out

#- 144 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'jtOWAWHd' \
    --namespace $AB_NAMESPACE \
    --userId 'ao7hBaS7' \
    --body '{"contentType": "OByYwOcw", "customAttributes": {"ECeIjDUl": {}, "3tRiLGPZ": {}, "DMTHOICU": {}}, "fileExtension": "OelOhJc0", "name": "BGcymFB8", "subType": "JVT0KkVB", "tags": ["hNEErUPc", "OmCuyKhj", "rG1diaPA"], "type": "5KwTIkrE"}' \
    > test.out 2>&1
eval_tap $? 144 'PublicCreateContentV2' test.out

#- 145 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'pY4O6TMG' \
    --namespace $AB_NAMESPACE \
    --shareCode '0QPKjy6z' \
    --userId '5wO425LZ' \
    --body '{"customAttributes": {"jA0WEPCK": {}, "SFAjmhQp": {}, "qZUAdNAA": {}}, "name": "mzn0lQMP", "subType": "H8KF8kxb", "tags": ["UNJfphEu", "lX0yQTXe", "5rvG3xcS"], "type": "bRuPqSoN"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicUpdateContentByShareCodeV2' test.out

#- 146 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'EkXG69AL' \
    --namespace $AB_NAMESPACE \
    --shareCode 'mYbOPqHY' \
    --userId 'aNHr4DI6' \
    > test.out 2>&1
eval_tap $? 146 'PublicDeleteContentByShareCodeV2' test.out

#- 147 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'CqhxiIoz' \
    --contentId 'PJ1MmyMv' \
    --namespace $AB_NAMESPACE \
    --userId '8NgceBgs' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentV2' test.out

#- 148 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'o0vDpyB5' \
    --contentId 'CwCMOAdo' \
    --namespace $AB_NAMESPACE \
    --userId 'qUUtAORI' \
    --body '{"customAttributes": {"TwwWsCpQ": {}, "EYfvi8U7": {}, "DPcNafAe": {}}, "name": "2BFVV7EU", "subType": "atDXV4bn", "tags": ["oQGb1YxK", "uBSTj7HA", "U3O8pmiZ"], "type": "AFZtIY7Y"}' \
    > test.out 2>&1
eval_tap $? 148 'PublicUpdateContentV2' test.out

#- 149 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'MXctijkV' \
    --contentId 'ZkDbiFin' \
    --namespace $AB_NAMESPACE \
    --userId 'vfi0rFi5' \
    --body '{"fileExtension": "EyK7r87H", "fileLocation": "w5S7TZUN"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentFileLocation' test.out

#- 150 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'na041W4Y' \
    --contentId 'azQKJhiL' \
    --namespace $AB_NAMESPACE \
    --userId '7mTob1LC' \
    --body '{"shareCode": "WLNKlycX"}' \
    > test.out 2>&1
eval_tap $? 150 'UpdateContentShareCodeV2' test.out

#- 151 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'GcMB96cc' \
    --contentId '92CTXFDA' \
    --namespace $AB_NAMESPACE \
    --userId '04IldAw5' \
    --body '{"contentType": "zJcPBRwh", "fileExtension": "HyyCWF1b"}' \
    > test.out 2>&1
eval_tap $? 151 'PublicGenerateContentUploadURLV2' test.out

#- 152 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'YijVZnm1' \
    --limit '33' \
    --offset '20' \
    --sortBy 'a3u6guzx' \
    > test.out 2>&1
eval_tap $? 152 'PublicGetContentByUserIDV2' test.out

#- 153 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'owecqNY5' \
    --namespace $AB_NAMESPACE \
    --userId 'rImJbEn1' \
    --body '{"screenshots": [{"description": "x3gd9o0g", "screenshotId": "eED4NTBn"}, {"description": "pqtUWO6P", "screenshotId": "WKtXoiFD"}, {"description": "8MXujl4q", "screenshotId": "EilsQUG8"}]}' \
    > test.out 2>&1
eval_tap $? 153 'UpdateScreenshotsV2' test.out

#- 154 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'vypWMNbB' \
    --namespace $AB_NAMESPACE \
    --userId 'gF9a3gu8' \
    --body '{"screenshots": [{"contentType": "qcMVaaj8", "description": "zHZfJDS1", "fileExtension": "png"}, {"contentType": "zQd67VfB", "description": "jc7uJ3iT", "fileExtension": "jfif"}, {"contentType": "NNlJSGfl", "description": "hsn3WAuK", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UploadContentScreenshotV2' test.out

#- 155 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'JKUHG9yY' \
    --namespace $AB_NAMESPACE \
    --screenshotId '3lq08nep' \
    --userId 'uUHC20U9' \
    > test.out 2>&1
eval_tap $? 155 'DeleteContentScreenshotV2' test.out

#- 156 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'D6sunR7L' \
    --namespace $AB_NAMESPACE \
    --userId '2YlP0vpS' \
    --limit '64' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 156 'PublicGetGroupContentsV2' test.out

#- 157 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId '3SMaCWEA' \
    --limit '13' \
    --offset '17' \
    --sortBy '2u11XroU' \
    --status 'aIFyEzbp' \
    > test.out 2>&1
eval_tap $? 157 'ListUserStagingContents' test.out

#- 158 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId 'DPswiZ7U' \
    --namespace $AB_NAMESPACE \
    --userId 'CEN6nWPL' \
    > test.out 2>&1
eval_tap $? 158 'GetUserStagingContentByID' test.out

#- 159 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId 'bTVg6Ihx' \
    --namespace $AB_NAMESPACE \
    --userId 'mYsHmc6A' \
    --body '{"fileExtension": "dyguQTSI", "fileLocation": "Y0b9XJ5l"}' \
    > test.out 2>&1
eval_tap $? 159 'UpdateStagingContent' test.out

#- 160 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId 'cZLNAo3u' \
    --namespace $AB_NAMESPACE \
    --userId 'bSuYpXgM' \
    > test.out 2>&1
eval_tap $? 160 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE