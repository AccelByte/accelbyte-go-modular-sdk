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
    --limit '41' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "xRJSbnio", "name": "OEQSSU0g"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'ZibFzVtV' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "QuVZCVJ0"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'p1g7KJrB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'Nhb6Scgw' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "eSjBN0GW", "customAttributes": {"yEmDaF81": {}, "xMyhTg3O": {}, "lmou7Olx": {}}, "fileExtension": "gVOCXXsZ", "name": "NA3FhIk6", "preview": "gkt5Z0se", "previewMetadata": {"previewContentType": "rklvX3GL", "previewFileExtension": "R5dQLdqm"}, "shareCode": "4SyHwoGl", "subType": "fP7axSv4", "tags": ["BQ8Tnns3", "j6scZc1X", "3VB6ceiR"], "type": "z6NSUxFb"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'TPU8DJla' \
    --contentId 'UXNrrZ5m' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "Op1uIsBX", "customAttributes": {"EwbA2opV": {}, "qXbXVQ4h": {}, "dp4BrxlC": {}}, "fileExtension": "C2kLu18l", "name": "RMYAhqTj", "payload": "Mxvx8hSr", "preview": "jSBxLwBS", "previewMetadata": {"previewContentType": "zAWhIP40", "previewFileExtension": "BE6JCOsK"}, "shareCode": "Qp1G7xRe", "subType": "qEU45XjL", "tags": ["ZNAD8Vvw", "WJThD3ey", "g435WVAl"], "type": "xnDW5Zyj", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'NSGACjUx' \
    --namespace $AB_NAMESPACE \
    --creator 'PBt5f9jf' \
    --ishidden 'tt9zYcgU' \
    --isofficial 'BYuo0lZC' \
    --limit '74' \
    --name 'EHMHYrOx' \
    --offset '98' \
    --orderby '9riXC6fi' \
    --sortby 'W3UWTEFs' \
    --subtype 'Y4CIMq7O' \
    --tags '["obx3kmbT", "Ad4XAcbP", "7fPDMty7"]' \
    --type 'xhccy2fj' \
    --userId 'ZKQTfmvP' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'KlyAGaOy' \
    --contentId '9T5otAms' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["1svPNvVG", "OKiFQj6t", "O0KkWbjZ"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'dqALkBdo' \
    --ishidden 'm1y5R814' \
    --isofficial 'qJOXIQLX' \
    --limit '5' \
    --name 'lYlPzkOa' \
    --offset '88' \
    --orderby 'HJZk8c6K' \
    --sortby 'hzDxSgYP' \
    --subtype 'Rhq28jgm' \
    --tags '["761mtBmV", "MbePuqBA", "9Ghbizja"]' \
    --type '0BdcQds8' \
    --userId 'xgIH6DAc' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["GBiTEIHa", "tgKSy7be", "u7q1IXkb"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'Jh5UUK99' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'ZByN7CoV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'V7nPIQJS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'b9WzHTvT' \
    --namespace $AB_NAMESPACE \
    --versionId '9MiD41d3' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'tqiXeZk3' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "FDlbwCnB", "screenshotId": "ITUHd5XA"}, {"description": "Y91jXKVO", "screenshotId": "jZ2IH1oH"}, {"description": "7XNOzazq", "screenshotId": "CCDFlXhl"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'v01gDKDD' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "eRSNMNCU", "description": "qalDbI0n", "fileExtension": "pjp"}, {"contentType": "cJRrqjU4", "description": "RedAOudh", "fileExtension": "bmp"}, {"contentType": "gzA0d2ra", "description": "2s2SigQt", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'L2iLZP8Q' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'hguCv9JX' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId '0w1YAyR6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["Ye361FaR", "N9jlBVKs", "q1ATIAf6"], "name": "WeE9vjK8"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId '0Kk573o2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId '3X5XULCL' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["pwVu3Z07", "INp8wk8h", "Mo62NKEZ"], "name": "H1GDjxp5"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'HdYlI1Xd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'tNdBpiW2' \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "ovEHK5i4"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'EgEkadZ7' \
    --body '{"tag": "Gbi061Cp"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId '4FXRdPdE' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["MGlVwn5z", "eEdVkfp5", "E5CO7yIi"], "type": "ja9flNGX"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'XEcHO0Li' \
    --body '{"subtype": ["VMCPcl7W", "0N2c6nyS", "3TSvrUN0"], "type": "4AzADf0Y"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId '0tK5zEGy' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'ry6rPJpC' \
    --limit '11' \
    --name 'vsd7m4tx' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'npTAN5pP' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'jhrdIESQ' \
    --namespace $AB_NAMESPACE \
    --userId 'kxUoFoMB' \
    --body '{"name": "vcZ4mBZB"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId '9gAXIHid' \
    --namespace $AB_NAMESPACE \
    --userId 'ZLn3UaK8' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'hrhuW1gW' \
    --namespace $AB_NAMESPACE \
    --shareCode '4BR3fOcu' \
    --userId 'XNHT3VUj' \
    --body '{"contentType": "PAEIbtif", "customAttributes": {"BiF77maA": {}, "BDaaQvFK": {}, "mb0GdWcz": {}}, "fileExtension": "oiso186A", "name": "MXwyfy3e", "payload": "zjdyXiei", "preview": "yMyU3OMf", "previewMetadata": {"previewContentType": "Z5IVWmqs", "previewFileExtension": "HOikaV1s"}, "shareCode": "unkZtmuh", "subType": "5CpgBvAx", "tags": ["kWH86hiC", "8VGlv3DL", "CmO9be3I"], "type": "gikfameQ", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'J7vsyoqS' \
    --contentId 'HRzePEym' \
    --namespace $AB_NAMESPACE \
    --userId 'MkHJx3Mk' \
    --body '{"contentType": "tgNPnSxn", "customAttributes": {"8fy1WUYz": {}, "5pIZ3lIn": {}, "q6q0Ou4G": {}}, "fileExtension": "AfBawB1p", "name": "dPuXsPor", "payload": "11DlXfyY", "preview": "DQWMksSI", "previewMetadata": {"previewContentType": "yWfzvJFJ", "previewFileExtension": "ruY6Plwa"}, "shareCode": "y799ohbu", "subType": "Oy8IW5YR", "tags": ["NcBUqXn4", "jksvqYvJ", "5eXmKpeB"], "type": "eDEeFrSt", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'Hi7UOaqb' \
    --namespace $AB_NAMESPACE \
    --shareCode 'WfQ8v294' \
    --userId 'R0FZnWlo' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'dIYWSRWZ' \
    --contentId 'bVJnrvkJ' \
    --namespace $AB_NAMESPACE \
    --userId 'yogRX2XJ' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'uSWY11nS' \
    --limit '3' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'ZhWcbrXr' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'PIgyjaky' \
    --namespace $AB_NAMESPACE \
    --userId 'LmpVpjuY' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'oKzOl34y' \
    --limit '38' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'JcqWtPUJ' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'UKt3lbzg' \
    --namespace $AB_NAMESPACE \
    --userId 'DPPtf4PR' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'rS1dPFnn' \
    --namespace $AB_NAMESPACE \
    --userId 'StSnrxVP' \
    --body '{"contents": ["DWPBbs0E", "Js2HJuN5", "VI74U6dI"], "name": "6SjuGiSq"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'O1qRWHeG' \
    --namespace $AB_NAMESPACE \
    --userId '1m86wYOk' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'ytWF8ifP' \
    --namespace $AB_NAMESPACE \
    --userId 'AEadznLe' \
    --limit '87' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'K3uIpF8C' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'lAGVsI0h' \
    --namespace $AB_NAMESPACE \
    --creator 'gHsJW4hh' \
    --ishidden 'B17SJs46' \
    --isofficial 'PZBZfGkT' \
    --limit '87' \
    --name 'hDeucc0j' \
    --offset '55' \
    --orderby '7EOx08Mw' \
    --sortby 'GAkKiTBc' \
    --subtype 'T93ON0hj' \
    --tags '["WqiTpBqY", "cBEMlJ97", "9dlUy6mx"]' \
    --type 'HfG49bYs' \
    --userId 'Hg6AdylB' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator '0KCGFJzp' \
    --ishidden 'nSb5COYy' \
    --isofficial 'lhhFCZPi' \
    --limit '77' \
    --name '1dlyUKmN' \
    --offset '29' \
    --orderby 'uzySUQX1' \
    --sortby 'eI4WI8Lv' \
    --subtype '983MMYGF' \
    --tags '["4opwaFoC", "zUd73ckP", "ZMPGpbpc"]' \
    --type 'XH95d44j' \
    --userId 'z7dxhXDE' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["ZpOPTxXL", "wpF60DBk", "Qtby8bH9"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '87' \
    --name 'CMqcfovv' \
    --offset '7' \
    --orderby 'dhEffu19' \
    --sortby 'B7iLBE2e' \
    --subtype 'Qd84dJ9z' \
    --tags '["U8dKWaZ4", "8IJCauuf", "N4ZK8kGL"]' \
    --type 'WFdqkLtu' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["LSZhykaY", "jYaZ8R41", "lBNClIng"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'mowyWRgy' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'EeDgMI3W' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'Je31ixig' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'gAVorrjM' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'nVl2GdMp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '52' \
    --orderby 'laq4zBBx' \
    --sortby 'Yl3tjKFm' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId '8OAjWlnf' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'or5nZLZ3' \
    --limit '15' \
    --name 'rpVE4Hru' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'MQtrXuGD' \
    --body '{"name": "lnerUpOt"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'Oj8WH7UH' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'uOV3Xjy2' \
    --namespace $AB_NAMESPACE \
    --userId 'cxsWA4mr' \
    --body '{"name": "vlZTiDUO"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'KLto7QeU' \
    --namespace $AB_NAMESPACE \
    --userId 'QWG7VFZ6' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'Vmec7wzR' \
    --namespace $AB_NAMESPACE \
    --userId 'G8Jemku0' \
    --body '{"contentType": "o1QApVQ7", "customAttributes": {"az5gZbM4": {}, "vDw4glI3": {}, "KLxe5DJD": {}}, "fileExtension": "bNzQ928C", "name": "LtfYkPN1", "preview": "Z3cSraeG", "previewMetadata": {"previewContentType": "2Y5NPI8U", "previewFileExtension": "mETNkGjg"}, "subType": "EIS81VSW", "tags": ["O17asfHs", "T4Q0cAEh", "eUTTOoD5"], "type": "iBkMNqzZ"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'imaNn4Wf' \
    --namespace $AB_NAMESPACE \
    --shareCode 'oN3ROmd4' \
    --userId 'Bvzr3OhR' \
    --body '{"contentType": "4hMsYF2q", "customAttributes": {"vTfxroAl": {}, "i4geEMxe": {}, "5TsJN7fY": {}}, "fileExtension": "toDKMGJv", "name": "9IXHuZCQ", "payload": "ZFsZUEBa", "preview": "FGTYD5D1", "previewMetadata": {"previewContentType": "bXdxImOM", "previewFileExtension": "1baOFRyo"}, "subType": "OekKrj0m", "tags": ["fZycIK3U", "iIO3mSnT", "WvE2dA7m"], "type": "dNlTZCRC", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'HQhixmvB' \
    --contentId 'n2GGnHfH' \
    --namespace $AB_NAMESPACE \
    --userId '35OYBoUu' \
    --body '{"contentType": "TEc4jy8E", "customAttributes": {"kvBS3MGH": {}, "BsXcA0nv": {}, "FCbjnxM7": {}}, "fileExtension": "pwx3n1Uk", "name": "gL02RmYw", "payload": "7fNtktgY", "preview": "Ue3ECADS", "previewMetadata": {"previewContentType": "MhjZd7PD", "previewFileExtension": "zAY3m5io"}, "subType": "fqNtvWPa", "tags": ["kXz6MvDr", "rqsFGFJS", "mlzC9zcE"], "type": "iJc4Wq1S", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId 'dnfPIWuS' \
    --namespace $AB_NAMESPACE \
    --shareCode 'nv4w9ZCn' \
    --userId 'h3MIhApE' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'L1NrkX2L' \
    --contentId 'D54BB0wv' \
    --namespace $AB_NAMESPACE \
    --userId 'OMtjZJ74' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'LhxLr4wZ' \
    --contentId 'tcQQSm7K' \
    --namespace $AB_NAMESPACE \
    --userId 'Ubh3cyLe' \
    --body '{"shareCode": "pBtEBc4c"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId '6dqkLFU1' \
    --limit '40' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'IrvOGMFJ' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'E6oAfefA' \
    --namespace $AB_NAMESPACE \
    --userId 'lIMlDLA7' \
    --body '{"screenshots": [{"description": "81CZStin", "screenshotId": "jrspGQ6N"}, {"description": "Wkg2AXTK", "screenshotId": "biAhP7jO"}, {"description": "5V0EiFad", "screenshotId": "NjjTYI5g"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'wvDoSCP6' \
    --namespace $AB_NAMESPACE \
    --userId 'SYzyGFHs' \
    --body '{"screenshots": [{"contentType": "1Z6qdUaR", "description": "JIMm3Yli", "fileExtension": "jpg"}, {"contentType": "0PKb7bIn", "description": "u33zGFwo", "fileExtension": "jfif"}, {"contentType": "RH54WuWx", "description": "DBMH1ria", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'M2I8P9YU' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'OqmcLJEP' \
    --userId 'MJISZOIz' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'UXIvsYuk' \
    --body '{"followStatus": false}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'O0F5Q14F' \
    --limit '24' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'ozn2kSNi' \
    --limit '13' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'MMfgiIfD' \
    --limit '28' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'DX16c0QX' \
    --body '{"contents": ["0MoNlKV5", "JnyhIphF", "RDjRVqoY"], "name": "I24niWln"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'PoZxqpYu' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'SjkmDJEt' \
    --namespace $AB_NAMESPACE \
    --userId 'egobOzEt' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'qmDMOPM8' \
    --namespace $AB_NAMESPACE \
    --userId 'm2YQkCa3' \
    --body '{"contents": ["FXBnCTXe", "3jIYBZnt", "eZScaTTw"], "name": "VYjGdJ2D"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'g6ZYVbhZ' \
    --namespace $AB_NAMESPACE \
    --userId 'DNmnodP8' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'oPJ1ciAn' \
    --namespace $AB_NAMESPACE \
    --userId 'zDBUUkpl' \
    --limit '48' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'G17gLK9E' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'vWd6wEW3' \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --name 'N01BdTIZ' \
    --offset '48' \
    --sortBy 'KyntAVQX' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId '9g9Ytdq3' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "K3j1OzJ4", "customAttributes": {"RYeHR2Ph": {}, "jh8cnuPp": {}, "7AzowYYv": {}}, "fileExtension": "yCJPOgp3", "name": "aiFRCzvl", "shareCode": "gbBDwRje", "subType": "6sjrrjBT", "tags": ["sXqkaMEO", "AqnyWFVR", "PgJs1KiX"], "type": "jjaxQ53X"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId '7AyCa3ci' \
    --contentId 'aINpvBT8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'cBSwJ9sk' \
    --contentId '1BhhUo8G' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"KWuQKagt": {}, "41xkQuPK": {}, "NHocVaoq": {}}, "name": "UWD21nfg", "shareCode": "KJPrSiuS", "subType": "D7obBU5v", "tags": ["tKrzwM6s", "NtHAoCqx", "VX19JJnk"], "type": "cSueIyXy"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminCopyContent
samples/cli/sample-apps Ugc adminCopyContent \
    --channelId 'LR0zAsT2' \
    --contentId 'b0txIBb0' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"B3vtMMHL": {}, "rqEFIjZh": {}, "IDhF0S04": {}}, "name": "bw4YUByo", "subType": "sTohwmS9", "tags": ["arN9LSYH", "5cE6etf0", "0wrtBu5r"], "targetChannelId": "MHxq6rZJ", "type": "A3fojC9N"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminCopyContent' test.out

#- 107 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'W3uq9aMq' \
    --contentId 'bek8ut7s' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "MryJfUXx", "fileLocation": "7pjFgwnW"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminUpdateOfficialContentFileLocation' test.out

#- 108 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'VGesX8Vy' \
    --contentId '6IK8ZHJ7' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "GhSLSpuJ", "fileExtension": "QyrClXxH"}' \
    > test.out 2>&1
eval_tap $? 108 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 109 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 109 'AdminGetConfigs' test.out

#- 110 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key 'qjj8zXRd' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "73XVajmi"}' \
    > test.out 2>&1
eval_tap $? 110 'AdminUpdateConfig' test.out

#- 111 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '61' \
    --name 'FUpk4Lzz' \
    --offset '55' \
    --sortBy '1hqN3X48' \
    --subType 'OeZvWM3J' \
    --tags '["BRzJPXFm", "usnv2YSK", "eTJk1naU"]' \
    --type 'mI1Ax20l' \
    > test.out 2>&1
eval_tap $? 111 'AdminListContentV2' test.out

#- 112 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["Fd4NZtcx", "Sk4bNaHE", "rUwCmDnw"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminBulkGetContentByIDsV2' test.out

#- 113 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["ummyWa29", "nKPxjsHr", "awsAz5EY"]}' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentBulkByShareCodesV2' test.out

#- 114 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'W9bUjn19' \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByShareCodeV2' test.out

#- 115 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 's4m53BKN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'AdminGetContentByContentIDV2' test.out

#- 116 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId '8p9DH4xp' \
    --namespace $AB_NAMESPACE \
    --versionId 'MheoYzdt' \
    > test.out 2>&1
eval_tap $? 116 'RollbackContentVersionV2' test.out

#- 117 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'yEM2hvcS' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "FPzMFQ1h", "screenshotId": "AV3R0hl2"}, {"description": "vh1wNUsQ", "screenshotId": "B8qHDzRv"}, {"description": "nQa2OiLw", "screenshotId": "wFIzb4MW"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateScreenshotsV2' test.out

#- 118 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 'yUbX4Btw' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "ZHo5Mct8", "description": "rLUQVY5F", "fileExtension": "pjp"}, {"contentType": "ZVHM7bYn", "description": "jLd4vZLd", "fileExtension": "png"}, {"contentType": "GWqc6ezv", "description": "6WafNmgb", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 118 'AdminUploadContentScreenshotV2' test.out

#- 119 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'D4Kvon5d' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'z9y03wP8' \
    > test.out 2>&1
eval_tap $? 119 'AdminDeleteContentScreenshotV2' test.out

#- 120 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'P8xWMaWf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 120 'ListContentVersionsV2' test.out

#- 121 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'Hx8diCnC' \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 121 'AdminGetOfficialGroupContentsV2' test.out

#- 122 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '17' \
    --sortBy 'VRAe2QEn' \
    --status '0HdMxZ9a' \
    > test.out 2>&1
eval_tap $? 122 'AdminListStagingContents' test.out

#- 123 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId 'lfkilr0t' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminGetStagingContentByID' test.out

#- 124 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId '3bkNwYfW' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": false, "note": "T4xEwIAZ"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminApproveStagingContent' test.out

#- 125 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'EGlU5j0n' \
    --namespace $AB_NAMESPACE \
    --shareCode 'NGfxwkK3' \
    --userId 'd9KKUnyN' \
    --body '{"customAttributes": {"P77Ihjbm": {}, "kQJkgs2l": {}, "t89qvfTx": {}}, "name": "OLA2BmzD", "shareCode": "lblzjz4V", "subType": "qnGgsEqD", "tags": ["SQVnwSRB", "a8aB7QFp", "3G7JYBYm"], "type": "akpw2BVI"}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateContentByShareCodeV2' test.out

#- 126 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'b1MLett2' \
    --namespace $AB_NAMESPACE \
    --shareCode '2ujDc5kn' \
    --userId 'MYkF0VIB' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteContentByShareCodeV2' test.out

#- 127 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'p43GExOk' \
    --contentId '63l1aGHt' \
    --namespace $AB_NAMESPACE \
    --userId '6MV2bROH' \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteUserContentV2' test.out

#- 128 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId '0TfM96st' \
    --contentId 'rfzShZgJ' \
    --namespace $AB_NAMESPACE \
    --userId 'hWzgnBEA' \
    --body '{"customAttributes": {"lpzU36wf": {}, "IXRB9AEW": {}, "n0jFbc25": {}}, "name": "TWe6AzZe", "shareCode": "lqpY87Fm", "subType": "dcL7g2vn", "tags": ["ytYcz4kZ", "LVJNRWfN", "XpVtrWTy"], "type": "isWsBDkk"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentV2' test.out

#- 129 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'UlHHvvJX' \
    --contentId 'pywGWXot' \
    --namespace $AB_NAMESPACE \
    --userId 'mArNOLDI' \
    --body '{"fileExtension": "lNJJmSAS", "fileLocation": "K7P1IVmY"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateUserContentFileLocation' test.out

#- 130 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'TaNNPLfO' \
    --contentId 'UZn4O0k9' \
    --namespace $AB_NAMESPACE \
    --userId 'HMc8IYCa' \
    --body '{"contentType": "GJ8GGzlT", "fileExtension": "w65ozPQF"}' \
    > test.out 2>&1
eval_tap $? 130 'AdminGenerateUserContentUploadURLV2' test.out

#- 131 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'HdoDjggu' \
    --limit '38' \
    --offset '78' \
    --sortBy 'X8LoT8n6' \
    > test.out 2>&1
eval_tap $? 131 'AdminGetContentByUserIDV2' test.out

#- 132 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'OwGFqlDe' \
    --namespace $AB_NAMESPACE \
    --userId '72XKoUcw' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 132 'AdminUpdateContentHideStatusV2' test.out

#- 133 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId '3pDh9vT8' \
    --namespace $AB_NAMESPACE \
    --userId 'cFaIzhSj' \
    --limit '64' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 133 'AdminGetUserGroupContentsV2' test.out

#- 134 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'GaxUj6UK' \
    --limit '63' \
    --offset '33' \
    --sortBy '9feuEYP9' \
    --status 'RTHP8f1r' \
    > test.out 2>&1
eval_tap $? 134 'AdminListUserStagingContents' test.out

#- 135 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'sxVLJbGA' \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --name 'hM896fDY' \
    --offset '91' \
    --sortBy 'B4AqQOEd' \
    > test.out 2>&1
eval_tap $? 135 'PublicGetContentByChannelIDV2' test.out

#- 136 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '58' \
    --name 'Wbg3K5G7' \
    --offset '60' \
    --sortBy 'PitgLBYB' \
    --subType 'eYjB2cEc' \
    --tags '["4sPzNhuQ", "DvM6PQDv", "y2zi9fZB"]' \
    --type '5b9swSlI' \
    > test.out 2>&1
eval_tap $? 136 'PublicListContentV2' test.out

#- 137 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["bx1MoxgU", "SU6E4BZT", "gpL8ENr8"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicBulkGetContentByIDV2' test.out

#- 138 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["ZqEq6LIQ", "vgXEcZCg", "ocytTuj4"]}' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentBulkByShareCodesV2' test.out

#- 139 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'H2dOgy1R' \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByShareCodeV2' test.out

#- 140 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'yRT7umhD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicGetContentByIDV2' test.out

#- 141 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId '92KBsczP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 141 'PublicAddDownloadCountV2' test.out

#- 142 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'sLa3qznc' \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '96' \
    --sortBy 'BQlBOTkr' \
    --userId 'BgiHOm5y' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentDownloaderV2' test.out

#- 143 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'gRuWObwP' \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '87' \
    --sortBy 'irNQiuQF' \
    > test.out 2>&1
eval_tap $? 143 'PublicListContentLikeV2' test.out

#- 144 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId 'QispVWMk' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateContentLikeStatusV2' test.out

#- 145 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'LatsdqIe' \
    --namespace $AB_NAMESPACE \
    --userId 'H0k9fZ1h' \
    --body '{"contentType": "pka2Nmbk", "customAttributes": {"WkhIJvHH": {}, "1Bwg3wvD": {}, "7i4HQ3Pl": {}}, "fileExtension": "QOhfVqn7", "name": "3Frux5jD", "subType": "3MN4P5qG", "tags": ["np3BeRnU", "FYtV4Srn", "bEXCnM0W"], "type": "EXQHwpZz"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicCreateContentV2' test.out

#- 146 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'z6pXhJm0' \
    --namespace $AB_NAMESPACE \
    --shareCode 'VxvfNgfA' \
    --userId 'a7S4xODO' \
    --body '{"customAttributes": {"td2ovxHU": {}, "qvXVbX8U": {}, "YbkszPaf": {}}, "name": "202A9rlM", "subType": "Ed76Qm6A", "tags": ["uTrFUS9Z", "zfHBbzQV", "lCXq6QWi"], "type": "nv1S7Pyw"}' \
    > test.out 2>&1
eval_tap $? 146 'PublicUpdateContentByShareCodeV2' test.out

#- 147 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'uH4I0f5n' \
    --namespace $AB_NAMESPACE \
    --shareCode 'xj6Qglih' \
    --userId '15c0GFSz' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentByShareCodeV2' test.out

#- 148 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'AJtGf5VJ' \
    --contentId 'Psyh2uMP' \
    --namespace $AB_NAMESPACE \
    --userId 'oO2RPfcp' \
    > test.out 2>&1
eval_tap $? 148 'PublicDeleteContentV2' test.out

#- 149 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'BQEkQIZ8' \
    --contentId 'D01OSW3q' \
    --namespace $AB_NAMESPACE \
    --userId 'EqBripXH' \
    --body '{"customAttributes": {"SF6uoSAh": {}, "Q2WZ1fDv": {}, "KKpGQlsd": {}}, "name": "z4F2BiuA", "subType": "pJq6B6RX", "tags": ["dojpxRxf", "yiuJQ6fj", "h7xDBWaJ"], "type": "niWFePTb"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentV2' test.out

#- 150 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'fulUQAih' \
    --contentId '79TQ5Xu2' \
    --namespace $AB_NAMESPACE \
    --userId 'axKmYmLZ' \
    --body '{"fileExtension": "DLusNMYj", "fileLocation": "hHjhUTea"}' \
    > test.out 2>&1
eval_tap $? 150 'PublicUpdateContentFileLocation' test.out

#- 151 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'sNcAA7tn' \
    --contentId 'TcgxNgf3' \
    --namespace $AB_NAMESPACE \
    --userId 'CW0P70jx' \
    --body '{"shareCode": "BLxLRNxN"}' \
    > test.out 2>&1
eval_tap $? 151 'UpdateContentShareCodeV2' test.out

#- 152 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'aJyMsLBJ' \
    --contentId 'DcgffN3q' \
    --namespace $AB_NAMESPACE \
    --userId 'E7tPF5BK' \
    --body '{"contentType": "NVc9zw27", "fileExtension": "zLpPreFh"}' \
    > test.out 2>&1
eval_tap $? 152 'PublicGenerateContentUploadURLV2' test.out

#- 153 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId '5P4ibLGz' \
    --limit '38' \
    --offset '36' \
    --sortBy 'eFnkzeBx' \
    > test.out 2>&1
eval_tap $? 153 'PublicGetContentByUserIDV2' test.out

#- 154 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'Jr3Q58O3' \
    --namespace $AB_NAMESPACE \
    --userId '2czJFj6n' \
    --body '{"screenshots": [{"description": "m1XOhdjC", "screenshotId": "zKejv3mb"}, {"description": "jlf5gDEm", "screenshotId": "PHy44hyw"}, {"description": "It7WXRUX", "screenshotId": "pq1RCiRC"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UpdateScreenshotsV2' test.out

#- 155 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'ttR0oJNH' \
    --namespace $AB_NAMESPACE \
    --userId 'btTUaPtD' \
    --body '{"screenshots": [{"contentType": "2Gn3LyDE", "description": "xaVQwn7L", "fileExtension": "jpeg"}, {"contentType": "LH9b42yH", "description": "l7QsuW5I", "fileExtension": "pjp"}, {"contentType": "ATWOh2Nz", "description": "gzIgAyKZ", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 155 'UploadContentScreenshotV2' test.out

#- 156 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'EP56PLaG' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'TVkWi5fr' \
    --userId 'nE6CoKkK' \
    > test.out 2>&1
eval_tap $? 156 'DeleteContentScreenshotV2' test.out

#- 157 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'odwJl8kU' \
    --namespace $AB_NAMESPACE \
    --userId 'dB6et2CQ' \
    --limit '23' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 157 'PublicGetGroupContentsV2' test.out

#- 158 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'Xa9PFeYd' \
    --limit '14' \
    --offset '89' \
    --sortBy 'nMJz1xkf' \
    --status 'kd8bu7bv' \
    > test.out 2>&1
eval_tap $? 158 'ListUserStagingContents' test.out

#- 159 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId '2AesenB4' \
    --namespace $AB_NAMESPACE \
    --userId 'BtPJ3xV8' \
    > test.out 2>&1
eval_tap $? 159 'GetUserStagingContentByID' test.out

#- 160 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId 'zyweC2Cy' \
    --namespace $AB_NAMESPACE \
    --userId 'ElCMVy9z' \
    --body '{"fileExtension": "rKfRRTOT", "fileLocation": "QKCAEJPJ"}' \
    > test.out 2>&1
eval_tap $? 160 'UpdateStagingContent' test.out

#- 161 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId 'otULr7wp' \
    --namespace $AB_NAMESPACE \
    --userId '6D3LbTPg' \
    > test.out 2>&1
eval_tap $? 161 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE