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
    --limit '42' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "83hqtURe", "name": "SVGgivxN"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'peZVQZ6q' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "blKQEHMZ"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'rEOWCpJO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'g6Bq0iCw' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "EtTdpkx2", "customAttributes": {"uZAZGMge": {}, "l339YiLb": {}, "2g5Jl3Is": {}}, "fileExtension": "8Z2d4SY7", "name": "KWNVKitb", "preview": "Q9eGdBDl", "previewMetadata": {"previewContentType": "JKXLXcRs", "previewFileExtension": "xFSiBR8y"}, "shareCode": "KrMT8qvP", "subType": "fhOLnznd", "tags": ["ZXKH3rpK", "5gxtqAuM", "o9YlvRH2"], "type": "EQXcX79h"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'olBxbHU8' \
    --contentId '6WwK2PgA' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "1M5PkRGf", "customAttributes": {"xx6bOPgQ": {}, "zUKuvMV6": {}, "E0VZU3Th": {}}, "fileExtension": "MY3t6q6u", "name": "kD3LnFX0", "payload": "KXfFwrP7", "preview": "i7rxGJWW", "previewMetadata": {"previewContentType": "vTlVPUas", "previewFileExtension": "HerETnXG"}, "shareCode": "ACK6Fkf7", "subType": "BLdSc5ww", "tags": ["Zyl8bifN", "r2VyAg3J", "icxb2r9S"], "type": "rA499Jv9", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'nQVOkwXn' \
    --namespace $AB_NAMESPACE \
    --creator 'siYuJmmY' \
    --ishidden 'zWyfJvRJ' \
    --isofficial 'OgWEZg1r' \
    --limit '3' \
    --name 'MvKrCAld' \
    --offset '76' \
    --orderby 'nG1rf1Q2' \
    --sortby 'vNCDHoi8' \
    --subtype 'ig2Vdijn' \
    --tags '["PsMd5ak9", "NMkVvQqn", "EopPyAtF"]' \
    --type '0kJoefEb' \
    --userId 'u8KG8LUV' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId '078k1mza' \
    --contentId 'B2AOrMSV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["vOTYWjPJ", "DvpQjv7q", "7c1xAXYk"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator '3zvqhmVy' \
    --ishidden 'nMx13jFJ' \
    --isofficial 'LtiesZpq' \
    --limit '39' \
    --name 'l5hsPgFE' \
    --offset '22' \
    --orderby 'iua38Ifp' \
    --sortby 'FiAmSq0L' \
    --subtype 'F1yZlWJc' \
    --tags '["UZayRkbg", "vIhYQ9qa", "Sfe9HNlg"]' \
    --type 'xnnUifp4' \
    --userId '0jqTigrw' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["nrcx2NJI", "jpHiUvts", "n2UoftjR"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'PT4nDru8' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'xw9dBBSK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'l7g6WDAv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId '8pAff73q' \
    --namespace $AB_NAMESPACE \
    --versionId 'wcVo4pAG' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'HhoAaJzL' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "dYJarNHr", "screenshotId": "oGvh2uyD"}, {"description": "cRulSSGp", "screenshotId": "BrJxTnc3"}, {"description": "j45ovw29", "screenshotId": "VeaJaxsS"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'xvVieSpZ' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "lkvYYXSf", "description": "Ye1YMrIi", "fileExtension": "pjp"}, {"contentType": "RZcODNul", "description": "zbl7vb5M", "fileExtension": "jpeg"}, {"contentType": "lPeAp9wj", "description": "iT7BmNQY", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'bGkyjnlp' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'J86bPt5Z' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'pg0VHsap' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["0cx16i6U", "vo4B55MC", "12gaZXqO"], "name": "XMSe95wd"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'K34bPCMn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'sIOajOd3' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["y53D0jK5", "2ocFsgBQ", "iWNqJLO2"], "name": "6cRZSHoO"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId '61KGgy4x' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'kua7uufx' \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "EdgBwTkp"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'lnq1ZjbZ' \
    --body '{"tag": "SzBDmVrd"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'kf81ZFVF' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["AXa1dEaa", "PhMeCg3s", "WFHcY2TN"], "type": "Hg1P35Cj"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'WrA2uDuE' \
    --body '{"subtype": ["CWoMLVgE", "ygy2tm0B", "kOchpAHc"], "type": "FIHaOmA9"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId '4HxLmYpO' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'BJQ08AnP' \
    --limit '90' \
    --name 'jU8nek4x' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'aNdqeXPV' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'm8mZWKwZ' \
    --namespace $AB_NAMESPACE \
    --userId 'hfbcKV8I' \
    --body '{"name": "9u2mHw8g"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'ROAdcPRb' \
    --namespace $AB_NAMESPACE \
    --userId 'p8ptTolx' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId '9CoCYiWm' \
    --namespace $AB_NAMESPACE \
    --shareCode 'GKLronCR' \
    --userId 'XlFzMic1' \
    --body '{"contentType": "OZZ3ng55", "customAttributes": {"14eSEc3C": {}, "wYZgs2pZ": {}, "loAS7VhE": {}}, "fileExtension": "9wCrZDWY", "name": "Mg6qIY09", "payload": "aSQR7zd2", "preview": "mVsWlpct", "previewMetadata": {"previewContentType": "54h3SF35", "previewFileExtension": "ALRqjCub"}, "shareCode": "EN0Et10n", "subType": "trvEcRvA", "tags": ["FJi2XOUW", "vNDLJRvZ", "KqJkQXwa"], "type": "E3mV0qQn", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'PThX47hy' \
    --contentId 'Ojc0GQus' \
    --namespace $AB_NAMESPACE \
    --userId '4Zu01Scg' \
    --body '{"contentType": "MvxAc8Wu", "customAttributes": {"zpxGUhoj": {}, "eGm0A6QA": {}, "31Oppggx": {}}, "fileExtension": "yDm34HGF", "name": "OERhyTVA", "payload": "OInymdSp", "preview": "iPdoKo2j", "previewMetadata": {"previewContentType": "OROfJLu4", "previewFileExtension": "6YX1zxaz"}, "shareCode": "PYUnNPs2", "subType": "P8bR2euT", "tags": ["jgu3ULJ4", "DpE4aKlM", "hILlHZgv"], "type": "NXKJaCOi", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'fwcHvr4G' \
    --namespace $AB_NAMESPACE \
    --shareCode '1gjbWROX' \
    --userId 'mWAeqLuV' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId '9kE1FaMu' \
    --contentId 'gI9jP2LT' \
    --namespace $AB_NAMESPACE \
    --userId 'Kwd2CfkZ' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'xZL8hA4m' \
    --limit '72' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'Y89E4EE2' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'UYQ1SsIK' \
    --namespace $AB_NAMESPACE \
    --userId 'a2RQDC47' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'VikYpDpI' \
    --limit '47' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'qn94zm57' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'D4rt9PfF' \
    --namespace $AB_NAMESPACE \
    --userId 'ShbJzx72' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'K8o4aa0C' \
    --namespace $AB_NAMESPACE \
    --userId 'f1e7sMKY' \
    --body '{"contents": ["2vNpbZQk", "glc3bPWb", "VsxmpfSj"], "name": "y4HeQOqN"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'Fdl0u4j6' \
    --namespace $AB_NAMESPACE \
    --userId 'go07JmzK' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'CdRUPpCP' \
    --namespace $AB_NAMESPACE \
    --userId 'Xfe864qm' \
    --limit '82' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId '5wrHazpw' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'UMgk4xPV' \
    --namespace $AB_NAMESPACE \
    --creator 'JrBAxfnG' \
    --ishidden 'U4H6NgKI' \
    --isofficial 'u904zoN0' \
    --limit '46' \
    --name 'FM5Zynsc' \
    --offset '17' \
    --orderby 'YxQWvccs' \
    --sortby 'JWVeyp9e' \
    --subtype 'j9raO2jp' \
    --tags '["vWK9OXq1", "BDJPBYlT", "lcDZWBHT"]' \
    --type '0XpKOP1C' \
    --userId 'rgGO6g8W' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator '9S4TNzLI' \
    --ishidden 'rCYPe2Sk' \
    --isofficial 'xqDmkSxV' \
    --limit '53' \
    --name 'FHTROaOZ' \
    --offset '11' \
    --orderby 'KPcY7UEr' \
    --sortby 'zWk3LHfu' \
    --subtype 'P6Gn1Fym' \
    --tags '["vjfLmHx6", "6ETxRwPT", "JenYk1xa"]' \
    --type 'oacwV42Q' \
    --userId 'XJvrrBTc' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["HxC1b3G2", "iBFiUEFB", "PufPtteC"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '47' \
    --name '1p5QErPJ' \
    --offset '51' \
    --orderby 'YnbfOQ9I' \
    --sortby 'tyUzTw9I' \
    --subtype 'MvS7e5ty' \
    --tags '["hOAwWJ0j", "AvfpiBVF", "Vk9387fZ"]' \
    --type 'WFVYdUYc' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["cPBXS1OC", "O9EPb9Ld", "8IsKiiPM"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'hzGtVx2A' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId '4niwS9rd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'd29qv9E3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'g3icDxTb' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'aVGaY1ys' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '14' \
    --orderby 'fkF9ClSB' \
    --sortby 'UyjtTsrV' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId '9bHoZa2Y' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'j88wqQct' \
    --limit '53' \
    --name '1T6A3zrZ' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId '0hObOWVg' \
    --body '{"name": "ijhgrvXE"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'nKLOX7Wx' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId '8WqNIdss' \
    --namespace $AB_NAMESPACE \
    --userId 'vVc2ZcBG' \
    --body '{"name": "ZGGClxxi"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'QBaaaDlh' \
    --namespace $AB_NAMESPACE \
    --userId '5pc7FLkW' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'CWnofVVX' \
    --namespace $AB_NAMESPACE \
    --userId '7VHVChYB' \
    --body '{"contentType": "wda8YVpv", "customAttributes": {"JEBEVoYC": {}, "XpFtDNx6": {}, "i0ehOR9j": {}}, "fileExtension": "ZGxvXTZr", "name": "MNfmv3eR", "preview": "r6u5yXLy", "previewMetadata": {"previewContentType": "8vramBHk", "previewFileExtension": "HmQuZRtd"}, "subType": "moJvlayy", "tags": ["20yGditL", "vIhhzVVX", "Y932e9ty"], "type": "7a711EMl"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'vh9Yjw8C' \
    --namespace $AB_NAMESPACE \
    --shareCode 'gXD1njSD' \
    --userId '8rHSnlam' \
    --body '{"contentType": "qUCGTx7j", "customAttributes": {"FDTBXUJw": {}, "ZdDcpomR": {}, "wmBO7WDr": {}}, "fileExtension": "MnYF71fW", "name": "WMkoBOYx", "payload": "bsrumV4C", "preview": "bCSOI7FV", "previewMetadata": {"previewContentType": "Svxaz14N", "previewFileExtension": "ALXOZ3Bt"}, "subType": "JoPwjmnC", "tags": ["Gp66LVkU", "cZZKhv3E", "1rwGyT6D"], "type": "xqT07T2U", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'OwQBLW1t' \
    --contentId '2GkGvjGI' \
    --namespace $AB_NAMESPACE \
    --userId 'azHSYCqj' \
    --body '{"contentType": "KLu3xNWy", "customAttributes": {"7OPBOi4j": {}, "PQ5v89QQ": {}, "cuK9eOwP": {}}, "fileExtension": "LRMG263t", "name": "vOwNobT4", "payload": "49s4hNUk", "preview": "4S9zZhxW", "previewMetadata": {"previewContentType": "t57y8blb", "previewFileExtension": "KMBqfRRz"}, "subType": "vc8lXp2l", "tags": ["i6Ah0CT4", "qERaUAw5", "Fi1BPkDT"], "type": "TsJIr4M6", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId 'tQRLW4X1' \
    --namespace $AB_NAMESPACE \
    --shareCode 'AwR4E2Iz' \
    --userId '6IY5ZjQi' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'I5UoAShD' \
    --contentId 'LFzEKgL7' \
    --namespace $AB_NAMESPACE \
    --userId 'qi7tfjOO' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'obEzd2nN' \
    --contentId '8RMg6C6l' \
    --namespace $AB_NAMESPACE \
    --userId 'gOHjCiXM' \
    --body '{"shareCode": "Pk7qVpCz"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'q1Sc1T8j' \
    --limit '89' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'ojwm9m8O' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'tyxg9GPk' \
    --namespace $AB_NAMESPACE \
    --userId 'YOParZED' \
    --body '{"screenshots": [{"description": "WXENDcn8", "screenshotId": "YAis8PV6"}, {"description": "7uc2SgSJ", "screenshotId": "gBCE9hh7"}, {"description": "Rm2hJ2xG", "screenshotId": "hX3mt1du"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'iUWQhQZ8' \
    --namespace $AB_NAMESPACE \
    --userId 'QJi7aBQH' \
    --body '{"screenshots": [{"contentType": "RtFRI9Pn", "description": "fk2YGGQl", "fileExtension": "bmp"}, {"contentType": "JCePVy0Z", "description": "ZYw2f6oM", "fileExtension": "jpeg"}, {"contentType": "EfUMKrm9", "description": "O0fswwJe", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'PkFCCe2d' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'BmAuUJyQ' \
    --userId 'GrnrnHEs' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'ltPQVpaQ' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'HOgT1hIZ' \
    --limit '21' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'bDJT2b81' \
    --limit '26' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'd5KwS0oU' \
    --limit '1' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId '380wEUm8' \
    --body '{"contents": ["XZGw1iks", "5ZckEmme", "wAEIgXgC"], "name": "27hu3xim"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId '3GtCNPPb' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'CYMKaJvk' \
    --namespace $AB_NAMESPACE \
    --userId 'jborfFHi' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'Gf5tzmBj' \
    --namespace $AB_NAMESPACE \
    --userId '3cFgeRit' \
    --body '{"contents": ["EEdbZ7gF", "MkTNiwnD", "0a3ODGmV"], "name": "uPwqPWkX"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'Rn7EjpTn' \
    --namespace $AB_NAMESPACE \
    --userId 'BTVnFDyP' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'K9HGjQC1' \
    --namespace $AB_NAMESPACE \
    --userId 'm32cUe04' \
    --limit '75' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'cYl8bnR8' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'Wtx6wHmM' \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --name 'UY6s7KN6' \
    --offset '44' \
    --sortBy '2CTI2E1E' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'mfCXP56y' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "CdyCWMOL", "customAttributes": {"mLxQoTO6": {}, "R94wfBWV": {}, "6ZLoz4ZC": {}}, "fileExtension": "UGcvYqh2", "name": "rg9JPr0u", "shareCode": "EOkZht0T", "subType": "ZGoXVUpE", "tags": ["jyq61H3l", "re9tcFQH", "ysZm0Iap"], "type": "N0NqimJ1"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'CPHH1C9e' \
    --contentId 'KtsLIlGl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'rAmBojIX' \
    --contentId '8V0MAEUA' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"TJMlLRXr": {}, "SEl5FWQ4": {}, "MRhFUaFM": {}}, "name": "1zdPWDfV", "shareCode": "1MJdjHj3", "subType": "98Gvl9RZ", "tags": ["YR2XDrtC", "QlJydwTC", "hILzOvqo"], "type": "s1FT9lZE"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminCopyContent
samples/cli/sample-apps Ugc adminCopyContent \
    --channelId 'fYQsOz7Z' \
    --contentId 'v4bkxI4f' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"K64EW8xU": {}, "WTbPbWWs": {}, "bvRQnmtt": {}}, "name": "piy5KA7T", "subType": "oIkWkNX0", "tags": ["SOMi6i48", "G2ZApYkk", "MoF74amc"], "targetChannelId": "6OYr7qXH", "type": "WdUjxXYS"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminCopyContent' test.out

#- 107 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'NsoS5Qxd' \
    --contentId 'L9OJqwVZ' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "qK60tZar", "fileLocation": "ixMACVRk"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminUpdateOfficialContentFileLocation' test.out

#- 108 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'wQZtXyHB' \
    --contentId 'Q5ntkCRc' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "nC3UotHK", "fileExtension": "nKTNtODu"}' \
    > test.out 2>&1
eval_tap $? 108 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 109 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 109 'AdminGetConfigs' test.out

#- 110 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key '0TK1IkW2' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "lwP4SXe5"}' \
    > test.out 2>&1
eval_tap $? 110 'AdminUpdateConfig' test.out

#- 111 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '95' \
    --name 'yMHTIoHI' \
    --offset '59' \
    --sortBy 'dLhPMNCm' \
    --subType 'gFiQLxX7' \
    --tags '["xRUiFeDm", "5N1zzV1h", "gebwr9JU"]' \
    --type 'bwT8u4Cb' \
    > test.out 2>&1
eval_tap $? 111 'AdminListContentV2' test.out

#- 112 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["ssawtLRZ", "B9oDlSHp", "6EKRmJ7M"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminBulkGetContentByIDsV2' test.out

#- 113 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["MbCwWCOj", "l6p5PkeJ", "1BPxLGeo"]}' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentBulkByShareCodesV2' test.out

#- 114 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'SeOBzbkG' \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByShareCodeV2' test.out

#- 115 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 'N4piQHWX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'AdminGetContentByContentIDV2' test.out

#- 116 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 't7fzMeMO' \
    --namespace $AB_NAMESPACE \
    --versionId 'tdwoTMFm' \
    > test.out 2>&1
eval_tap $? 116 'RollbackContentVersionV2' test.out

#- 117 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId '3Cf5NgSV' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "zx3kLjPM", "screenshotId": "eSiCCmnF"}, {"description": "aUmdHktU", "screenshotId": "QbAbNPTn"}, {"description": "oQpqUvnM", "screenshotId": "oR1spPUj"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateScreenshotsV2' test.out

#- 118 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 't3ZN54Xk' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "1E4sYNOn", "description": "fY5PGdMw", "fileExtension": "bmp"}, {"contentType": "7wzOUoE1", "description": "nspEC9Co", "fileExtension": "jfif"}, {"contentType": "SgigTQD1", "description": "vLHjdFBh", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 118 'AdminUploadContentScreenshotV2' test.out

#- 119 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'CIFodzyb' \
    --namespace $AB_NAMESPACE \
    --screenshotId '7paXXO20' \
    > test.out 2>&1
eval_tap $? 119 'AdminDeleteContentScreenshotV2' test.out

#- 120 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'GRRLDCmO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 120 'ListContentVersionsV2' test.out

#- 121 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId '4cVExrdo' \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 121 'AdminGetOfficialGroupContentsV2' test.out

#- 122 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '62' \
    --sortBy 'FsVMMgHU' \
    --status 'QNvcsYQn' \
    > test.out 2>&1
eval_tap $? 122 'AdminListStagingContents' test.out

#- 123 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId 'kTxJmVDB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminGetStagingContentByID' test.out

#- 124 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId 'iy8eA9dq' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": true, "note": "ftFrO6d2"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminApproveStagingContent' test.out

#- 125 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'lxA2nWqY' \
    --namespace $AB_NAMESPACE \
    --shareCode '6YiQPq90' \
    --userId 'fJvp2bGW' \
    --body '{"customAttributes": {"dugHxK8p": {}, "kJRolJW2": {}, "fWcAK8jR": {}}, "name": "OxF8c9WE", "shareCode": "G4El7dvd", "subType": "gMMAhA4c", "tags": ["1Yue08Oz", "jLFyBoM4", "tIKvng20"], "type": "jwSbDJAi"}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateContentByShareCodeV2' test.out

#- 126 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId '7CWVuDTR' \
    --namespace $AB_NAMESPACE \
    --shareCode 'Po1Ez5X8' \
    --userId 'pXtLMi8V' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteContentByShareCodeV2' test.out

#- 127 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'rax7R1T0' \
    --contentId '8wEcJgMQ' \
    --namespace $AB_NAMESPACE \
    --userId 'vdg2vB5A' \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteUserContentV2' test.out

#- 128 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'LzxMSZZc' \
    --contentId 'FwA8wONp' \
    --namespace $AB_NAMESPACE \
    --userId '9aC6mg1q' \
    --body '{"customAttributes": {"jkEMoMTN": {}, "w0d8Dqfd": {}, "6lquIvug": {}}, "name": "BkKwEhbr", "shareCode": "qEJKPuR6", "subType": "dCDng9Ae", "tags": ["CmIwIlHE", "IwQ5oOBI", "hltn9pm3"], "type": "TOa6qmMq"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentV2' test.out

#- 129 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'uzp2ET5G' \
    --contentId 'oMH4YvNp' \
    --namespace $AB_NAMESPACE \
    --userId 'vLTTDCuM' \
    --body '{"fileExtension": "XtOgIHmv", "fileLocation": "t7wiWV30"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateUserContentFileLocation' test.out

#- 130 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'AIAsPEOU' \
    --contentId 'm58EfyMD' \
    --namespace $AB_NAMESPACE \
    --userId 'PxxwFrNn' \
    --body '{"contentType": "IXhYnXJq", "fileExtension": "1dXw0d4q"}' \
    > test.out 2>&1
eval_tap $? 130 'AdminGenerateUserContentUploadURLV2' test.out

#- 131 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'KWib2fKO' \
    --limit '67' \
    --offset '44' \
    --sortBy 'I8zNVeQV' \
    > test.out 2>&1
eval_tap $? 131 'AdminGetContentByUserIDV2' test.out

#- 132 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'xx8jgyUn' \
    --namespace $AB_NAMESPACE \
    --userId 'LTnajIOg' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 132 'AdminUpdateContentHideStatusV2' test.out

#- 133 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'p0youLKJ' \
    --namespace $AB_NAMESPACE \
    --userId 'QN49kdls' \
    --limit '92' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 133 'AdminGetUserGroupContentsV2' test.out

#- 134 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'm8gkJzdq' \
    --limit '5' \
    --offset '92' \
    --sortBy 'TVcKtohU' \
    --status 'dJ9z7izk' \
    > test.out 2>&1
eval_tap $? 134 'AdminListUserStagingContents' test.out

#- 135 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'XVgWxqtD' \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --name 'bW6QjILy' \
    --offset '12' \
    --sortBy 'FQOZXus5' \
    > test.out 2>&1
eval_tap $? 135 'PublicGetContentByChannelIDV2' test.out

#- 136 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '14' \
    --name '1irFyfHJ' \
    --offset '75' \
    --sortBy 'XSGsdL17' \
    --subType 'b30oPD4i' \
    --tags '["JgTnc2BO", "C7tbNeaB", "uom0ikGS"]' \
    --type '7wHbFt5R' \
    > test.out 2>&1
eval_tap $? 136 'PublicListContentV2' test.out

#- 137 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["ElJF2wvz", "voiRIBPz", "Xzv4kM3s"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicBulkGetContentByIDV2' test.out

#- 138 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["OdndHvDc", "uNoU67vr", "562kAqw4"]}' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentBulkByShareCodesV2' test.out

#- 139 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode '4hk17gOy' \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByShareCodeV2' test.out

#- 140 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'PMHWqiMC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicGetContentByIDV2' test.out

#- 141 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'dN18Dk17' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 141 'PublicAddDownloadCountV2' test.out

#- 142 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'VTT97d6O' \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '4' \
    --sortBy 'g8Fq9f43' \
    --userId 'MZo0YEOI' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentDownloaderV2' test.out

#- 143 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId '4CXuDFFE' \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '48' \
    --sortBy 'b2VO3kMk' \
    > test.out 2>&1
eval_tap $? 143 'PublicListContentLikeV2' test.out

#- 144 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId '9uCPH2io' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateContentLikeStatusV2' test.out

#- 145 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'DmRsc6aA' \
    --namespace $AB_NAMESPACE \
    --userId '4l66Q73e' \
    --body '{"contentType": "g0rgXKps", "customAttributes": {"7KC9yGUk": {}, "OSLQCEfA": {}, "YNMnooys": {}}, "fileExtension": "Ds1XYtFg", "name": "1Qj6QjYw", "subType": "lhOPB0Eg", "tags": ["ZbN0yHHC", "q6cRBGkL", "AEPgunFe"], "type": "1nAhpCEd"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicCreateContentV2' test.out

#- 146 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'eFkxjaBb' \
    --namespace $AB_NAMESPACE \
    --shareCode 'vgnA9rEQ' \
    --userId 'NiZTr8hb' \
    --body '{"customAttributes": {"FO7cekmb": {}, "iaeDsuEC": {}, "57vZXMOm": {}}, "name": "7Sb6bV9D", "subType": "ftn9cbGu", "tags": ["3FN1yFem", "E7oDm9bZ", "MI6qQtIW"], "type": "FNUxYF6s"}' \
    > test.out 2>&1
eval_tap $? 146 'PublicUpdateContentByShareCodeV2' test.out

#- 147 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'AZlbRkaP' \
    --namespace $AB_NAMESPACE \
    --shareCode '5q73CpN8' \
    --userId '3TSVtr34' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentByShareCodeV2' test.out

#- 148 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'VyC3an0H' \
    --contentId 'hmd7KyPf' \
    --namespace $AB_NAMESPACE \
    --userId 'QLtYFAyn' \
    > test.out 2>&1
eval_tap $? 148 'PublicDeleteContentV2' test.out

#- 149 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'aVnM3a3h' \
    --contentId 'zBhkE0il' \
    --namespace $AB_NAMESPACE \
    --userId 'VevQyulm' \
    --body '{"customAttributes": {"S8b5NeXN": {}, "cjD1PN72": {}, "Eq8Qa47b": {}}, "name": "tTpEgktj", "subType": "FdeAzT8p", "tags": ["LjCOr34u", "ZnuJie3l", "v3I3LodO"], "type": "yynP7BJJ"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentV2' test.out

#- 150 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'C1YJR1Ft' \
    --contentId 'yjtE6jaJ' \
    --namespace $AB_NAMESPACE \
    --userId 'pnsVAYse' \
    --body '{"fileExtension": "H7AHTVAb", "fileLocation": "Zy5ZYqyn"}' \
    > test.out 2>&1
eval_tap $? 150 'PublicUpdateContentFileLocation' test.out

#- 151 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'iEfZ0Gbu' \
    --contentId 'EN0TwM0r' \
    --namespace $AB_NAMESPACE \
    --userId 'teVOV6jU' \
    --body '{"shareCode": "xFVR4NSZ"}' \
    > test.out 2>&1
eval_tap $? 151 'UpdateContentShareCodeV2' test.out

#- 152 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId '9lTNg4eG' \
    --contentId 'yQFqQl7g' \
    --namespace $AB_NAMESPACE \
    --userId 'jkWeBFNz' \
    --body '{"contentType": "9CeHB9DS", "fileExtension": "twNm79lM"}' \
    > test.out 2>&1
eval_tap $? 152 'PublicGenerateContentUploadURLV2' test.out

#- 153 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId '1DsgKjyo' \
    --limit '69' \
    --offset '27' \
    --sortBy 'pwSe9WS3' \
    > test.out 2>&1
eval_tap $? 153 'PublicGetContentByUserIDV2' test.out

#- 154 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'et2P6Odi' \
    --namespace $AB_NAMESPACE \
    --userId 'DHGtFywQ' \
    --body '{"screenshots": [{"description": "8jilxFUV", "screenshotId": "MANnT3Qn"}, {"description": "ZM7AsfEt", "screenshotId": "lQbqB6f2"}, {"description": "1wiIrl0d", "screenshotId": "Kr86KYTS"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UpdateScreenshotsV2' test.out

#- 155 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'UPQRz12X' \
    --namespace $AB_NAMESPACE \
    --userId 'GZl4YMtM' \
    --body '{"screenshots": [{"contentType": "0EZYHLb7", "description": "eOESPneo", "fileExtension": "bmp"}, {"contentType": "l3JGtahs", "description": "IUud7nde", "fileExtension": "jpg"}, {"contentType": "YFv03q6R", "description": "wKW8A8ef", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 155 'UploadContentScreenshotV2' test.out

#- 156 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId '2XC6atbF' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'tLsLKa7u' \
    --userId 'ipPUJ65M' \
    > test.out 2>&1
eval_tap $? 156 'DeleteContentScreenshotV2' test.out

#- 157 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'bAyVPuG6' \
    --namespace $AB_NAMESPACE \
    --userId 'jlIG6s12' \
    --limit '9' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 157 'PublicGetGroupContentsV2' test.out

#- 158 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'dLcn6EPT' \
    --limit '23' \
    --offset '87' \
    --sortBy 'TSSANeKA' \
    --status 'EIyWYKuv' \
    > test.out 2>&1
eval_tap $? 158 'ListUserStagingContents' test.out

#- 159 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId 'hRZi7jNj' \
    --namespace $AB_NAMESPACE \
    --userId 'EH5dGFBg' \
    > test.out 2>&1
eval_tap $? 159 'GetUserStagingContentByID' test.out

#- 160 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId 'RVNQLLFU' \
    --namespace $AB_NAMESPACE \
    --userId 'GlzsXHcd' \
    --body '{"fileExtension": "ENfytROA", "fileLocation": "DaeKbXHG"}' \
    > test.out 2>&1
eval_tap $? 160 'UpdateStagingContent' test.out

#- 161 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId 'DPXkCcI1' \
    --namespace $AB_NAMESPACE \
    --userId 'i6jtlZHb' \
    > test.out 2>&1
eval_tap $? 161 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE