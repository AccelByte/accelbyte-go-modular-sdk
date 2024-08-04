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
    --limit '21' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "0xz3ipsy", "name": "YYzO0chj"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'acJOeq9A' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "uwRjf65P"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'cu7WhTjI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId '8oCvbAER' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "fXszpp7g", "customAttributes": {"NQc9JnsC": {}, "JIPEgzPU": {}, "l6M4GxIZ": {}}, "fileExtension": "k8p5QJbT", "name": "ky8xMZts", "preview": "IWzs9ugd", "previewMetadata": {"previewContentType": "yl5Eb8Nv", "previewFileExtension": "V59k963r"}, "shareCode": "FxEeN9qh", "subType": "TLATNWP9", "tags": ["pDr3WBCI", "GI5z4sGV", "5jdYUtJs"], "type": "jgfqrRwT"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'HRVR44XT' \
    --contentId 'GC8V6OAh' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "8owJd6md", "customAttributes": {"TjcaH3tu": {}, "JoIAy42n": {}, "mOvEuzLM": {}}, "fileExtension": "2cp2ToQI", "name": "KbZOMlj6", "payload": "BLpLECty", "preview": "9VFRAGy8", "previewMetadata": {"previewContentType": "hzO1XmSQ", "previewFileExtension": "5EgyDTGG"}, "shareCode": "DIYAradc", "subType": "4I1QoNhp", "tags": ["wIA2V08f", "m1bsVsZK", "9RuZttjH"], "type": "mhZLAKlp", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'K47LGWeb' \
    --namespace $AB_NAMESPACE \
    --creator 'nOtgE8JG' \
    --ishidden 'kmHZIZvB' \
    --isofficial 'eCffWJdP' \
    --limit '50' \
    --name '9fCrJwjw' \
    --offset '98' \
    --orderby 'ZmZGNzpi' \
    --sortby 'YEzUZ7lx' \
    --subtype 'CcDwFTp3' \
    --tags '["28WGa47H", "NXuYn7gB", "kBpkdz0Q"]' \
    --type '6kMlvI1T' \
    --userId 'ExvvgxBx' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'xkZS1QK8' \
    --contentId 'iDWBmcwa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["RKXu8l2e", "hNgXyxCe", "hgPkFcnx"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'Jj9o5OMe' \
    --ishidden '4d7qhKUf' \
    --isofficial 'IIWiJ66N' \
    --limit '89' \
    --name 'gd4Xp0nX' \
    --offset '29' \
    --orderby '5HN7aWgB' \
    --sortby 'KSYWnBcm' \
    --subtype 'ApKT21dQ' \
    --tags '["jSDbBg4P", "UL2PDdJm", "zrH7DXah"]' \
    --type 'S0I6WKEE' \
    --userId 'q3r63rvI' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["u0rql7Ni", "3GgtiUB7", "n5iQ3g1J"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'SZPWgoIY' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'U7h5P9J3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'ZQD9QoBo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'Y32pgBys' \
    --namespace $AB_NAMESPACE \
    --versionId 'PRm5QDIU' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'X2juSfZq' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "XBQQ1Nig", "screenshotId": "RnxB6HN5"}, {"description": "vuvkGf1f", "screenshotId": "PxTQQ1S9"}, {"description": "qFKlGo6a", "screenshotId": "zee5GguU"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'rYRYhJsp' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "p2u9CnHC", "description": "dRMgW3Dj", "fileExtension": "bmp"}, {"contentType": "fXnq5S56", "description": "QI9rk1et", "fileExtension": "jpg"}, {"contentType": "ViKSxxh2", "description": "vIaVkVUW", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'HnTuvCsf' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'VeyVFuZN' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'gEZEJxao' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["Mcg84oVn", "8XqgMjMU", "sGDNRdAF"], "name": "FFk9pHHF"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'fnOvWw2L' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'BWUo0smn' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["yGSOB6cg", "62fheboX", "NSczbpLu"], "name": "9gF1aEPc"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'zqDE3JU3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'yD5qDE6F' \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "RbXed2cX"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'rsr8zRVD' \
    --body '{"tag": "ixe5rs7d"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'mN43X3Bm' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["QC8bnYmg", "joyIjpkA", "b7JMkWUd"], "type": "utS3vOvF"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId '3VnxSYJV' \
    --body '{"subtype": ["vzXdSnbj", "HcPNkAeX", "pm4YiBAF"], "type": "bE5lM24V"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'ncFubBQj' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'IQLCnOh2' \
    --limit '68' \
    --name 'ShWG9uuL' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId '6AtCG9rk' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'wkh662BZ' \
    --namespace $AB_NAMESPACE \
    --userId 'DCziNlcl' \
    --body '{"name": "qeTm242w"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'EePEEsAR' \
    --namespace $AB_NAMESPACE \
    --userId 'gxcSuanl' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'nsuR9l7l' \
    --namespace $AB_NAMESPACE \
    --shareCode 'gCEgL01c' \
    --userId '065ZLy62' \
    --body '{"contentType": "YPBZq423", "customAttributes": {"Y4qcD7bX": {}, "lATkgWyP": {}, "h3ljqg57": {}}, "fileExtension": "qEETzsPV", "name": "MdOyFZrP", "payload": "Y0VY5I0a", "preview": "BEFvfsg0", "previewMetadata": {"previewContentType": "cELT37PR", "previewFileExtension": "UUBOb5Ze"}, "shareCode": "xUlWQYkd", "subType": "Z4DZAKER", "tags": ["6eOOoBgk", "dOJCfHq5", "gNeMHp96"], "type": "p5463uQ7", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'OoNWBJHv' \
    --contentId '5edD3tfk' \
    --namespace $AB_NAMESPACE \
    --userId 'OmUVndFo' \
    --body '{"contentType": "RzbA4JYO", "customAttributes": {"i3wAC6AJ": {}, "jhtD38lD": {}, "VD4kJw17": {}}, "fileExtension": "ilXFBgmV", "name": "02mOzsTP", "payload": "AUftez0t", "preview": "WVMMLi8u", "previewMetadata": {"previewContentType": "ElGOJNDc", "previewFileExtension": "Djtjq22m"}, "shareCode": "W4sb3hKC", "subType": "CuBlIbZF", "tags": ["1tTfGseI", "maxc3Mtf", "fTQw51LH"], "type": "3UWjkeqv", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'HH5DW9HD' \
    --namespace $AB_NAMESPACE \
    --shareCode 'DZHFhrSZ' \
    --userId 'mHUobN9i' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'GOSwv8rJ' \
    --contentId 'ivOzxoMC' \
    --namespace $AB_NAMESPACE \
    --userId 'TOOZ4nDg' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'aje5sCOd' \
    --limit '43' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'lhgT4PpS' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'EV39tHy7' \
    --namespace $AB_NAMESPACE \
    --userId 'ToqhsRTe' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'iN5AKGoK' \
    --limit '2' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'TStRi1Yo' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'on6VyfbR' \
    --namespace $AB_NAMESPACE \
    --userId '6Z2Nt1oB' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'w26VlLKB' \
    --namespace $AB_NAMESPACE \
    --userId 'GO2LFMoj' \
    --body '{"contents": ["F7nDEDzK", "QHol4zsj", "inAA9uJX"], "name": "PHtWJ4Vk"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'edIBfAb0' \
    --namespace $AB_NAMESPACE \
    --userId 'nshNuNeT' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'n5DZLDZ8' \
    --namespace $AB_NAMESPACE \
    --userId '3UsClYic' \
    --limit '36' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'seoamNVw' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'ZkkEX9fO' \
    --namespace $AB_NAMESPACE \
    --creator 'm0iST2yt' \
    --ishidden 'ouvfy9Si' \
    --isofficial 'yHGZguEu' \
    --limit '78' \
    --name 'koko7FG3' \
    --offset '53' \
    --orderby 'l3ObRTKz' \
    --sortby '7XuyV53g' \
    --subtype 'KhxXVW7F' \
    --tags '["J9FzkGGr", "4jWPXvgE", "7XSEbOEh"]' \
    --type 'lvgR1dpJ' \
    --userId '7yJWJuGt' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'oC85UqZk' \
    --ishidden 'Wlin0iMB' \
    --isofficial 'MiTSTzz9' \
    --limit '18' \
    --name 'vlZY7Bh7' \
    --offset '55' \
    --orderby 'GNl9E2Sc' \
    --sortby 'irMygorN' \
    --subtype '0pwLhTg2' \
    --tags '["MCtyYWeZ", "b5cXOzW3", "EX5bjIg8"]' \
    --type '5JrWccZz' \
    --userId 'JYxQ0xZG' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["FjC19SDf", "AR1qmQxH", "BwjC9iAl"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '68' \
    --name 'kmo0zV4r' \
    --offset '30' \
    --orderby 'F9vKwOJw' \
    --sortby 'wvsUols4' \
    --subtype 'yMDK1SJU' \
    --tags '["WutwDiEf", "gsAoSWUS", "yMslThlx"]' \
    --type 'bHIBsGfo' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["g62SaVMD", "gdLNe99U", "uwtHJZBA"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'pO9tv61r' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'icowHzya' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'cAa2PsVv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'NnVNNLHM' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'LEmrrmBd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '68' \
    --orderby 'vD3R9bXe' \
    --sortby '7t9nv9GP' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'hksRpIYk' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'x8ZIes1N' \
    --limit '98' \
    --name 'fyXgCSTc' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'AocIk8lI' \
    --body '{"name": "RX6gRHTA"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'vxOmoVxj' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId '6qRmWYgs' \
    --namespace $AB_NAMESPACE \
    --userId 'KNV47soa' \
    --body '{"name": "Ml9irnjj"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'LxzjoMii' \
    --namespace $AB_NAMESPACE \
    --userId '8LLqSjY5' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'aQUNtrd8' \
    --namespace $AB_NAMESPACE \
    --userId '82o294Yj' \
    --body '{"contentType": "QToxvfB9", "customAttributes": {"nPIVeGKa": {}, "ZyG2qicU": {}, "6bcqVSrp": {}}, "fileExtension": "srbx7fUc", "name": "HKiRV9Tc", "preview": "VLzPRilJ", "previewMetadata": {"previewContentType": "DayRDhDi", "previewFileExtension": "t5wMudQs"}, "subType": "INJzEfLB", "tags": ["CE122zAb", "d0Rd28Rr", "kP0pAwYR"], "type": "v6hpVC5s"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'HpB6Q9SJ' \
    --namespace $AB_NAMESPACE \
    --shareCode 'E4BZexZW' \
    --userId 'khoRSiA9' \
    --body '{"contentType": "aL0d3Vo5", "customAttributes": {"kWZobBvf": {}, "D2CC46cd": {}, "F6DciPcJ": {}}, "fileExtension": "77Pa7gHK", "name": "x8oXL5Ma", "payload": "WzKIDyIx", "preview": "xhIhintA", "previewMetadata": {"previewContentType": "Q287Ia3E", "previewFileExtension": "hM3hYmSW"}, "subType": "gNiCypcU", "tags": ["4fqfCbBY", "2myGqn16", "XC5iAdof"], "type": "RvWMy9TY", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'R6Z3pZo6' \
    --contentId '45TmYYcG' \
    --namespace $AB_NAMESPACE \
    --userId 'zCoLUFeZ' \
    --body '{"contentType": "xEnt7dbC", "customAttributes": {"hTWuugEJ": {}, "kJR3rES1": {}, "7n2GuNSq": {}}, "fileExtension": "XTbDTVwZ", "name": "ribINURN", "payload": "JKmo0ZNz", "preview": "bpeamaJV", "previewMetadata": {"previewContentType": "qXt8ufjo", "previewFileExtension": "TNyfQXLd"}, "subType": "pJyF0EQZ", "tags": ["qa79pTRn", "L5fEKo2g", "zYQlzDp8"], "type": "XHFKbLnZ", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId 'PG0OJDml' \
    --namespace $AB_NAMESPACE \
    --shareCode 'aGfXoj0d' \
    --userId 'APawjRnB' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'FLhTVxTq' \
    --contentId '2n65dAI0' \
    --namespace $AB_NAMESPACE \
    --userId 'te6YjUK8' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'QcPtvwTV' \
    --contentId 'gU30VcEu' \
    --namespace $AB_NAMESPACE \
    --userId 'tmu87CvO' \
    --body '{"shareCode": "YWYgxedW"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId '5yXaXHC7' \
    --limit '68' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'kbBN1aJV' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'yy1McBey' \
    --namespace $AB_NAMESPACE \
    --userId 'fnmf8oS6' \
    --body '{"screenshots": [{"description": "d9HJBSNw", "screenshotId": "dr1wr3P1"}, {"description": "MMVmXbTH", "screenshotId": "qRjG0LYO"}, {"description": "K06xWDkq", "screenshotId": "kjI8LCnl"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'CSUr4Sg6' \
    --namespace $AB_NAMESPACE \
    --userId 'JoBqQnfa' \
    --body '{"screenshots": [{"contentType": "r58H5bLb", "description": "DFhZX0D8", "fileExtension": "jpeg"}, {"contentType": "oA6Yk6En", "description": "oxFmYgvF", "fileExtension": "jfif"}, {"contentType": "Xbli7oMP", "description": "GfQeTumU", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'C3eylm5I' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'tA5rDZRS' \
    --userId 'GO0Gg8eo' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'pWxRbVPV' \
    --body '{"followStatus": false}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'mpRs8J8u' \
    --limit '0' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'tMkAovnh' \
    --limit '55' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'hgAFLsrO' \
    --limit '81' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'F7t8HDv0' \
    --body '{"contents": ["eiE5yPTG", "CbmcRaUN", "MYLMBHaz"], "name": "FluroyGg"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'BJpLhVCG' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'kW22dEMY' \
    --namespace $AB_NAMESPACE \
    --userId '4avqb3IN' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'jywdl6Ss' \
    --namespace $AB_NAMESPACE \
    --userId 'w8fmSKpO' \
    --body '{"contents": ["YVDCz4xP", "LGOEa8zR", "QODZVMmJ"], "name": "foyyStTw"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId '6qHMhvoC' \
    --namespace $AB_NAMESPACE \
    --userId 'V9G3P5A1' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'dRRhKnwk' \
    --namespace $AB_NAMESPACE \
    --userId '7Eyx2Fkc' \
    --limit '61' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'A3dNJYWH' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId '8QYHk0Y0' \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --name 'xs2l1Cxn' \
    --offset '6' \
    --sortBy '42HyraqP' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId '1zy6F5uZ' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "QP1aFmNR", "customAttributes": {"4wRgLrgO": {}, "if14RxcV": {}, "zynudCVX": {}}, "fileExtension": "xl4i9C3c", "name": "b5Gi12fT", "shareCode": "DFy6j7GR", "subType": "D7ZwPSzG", "tags": ["kL0EhZD9", "iXzgPQhH", "2uXYliD7"], "type": "htWOZeij"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'sDYTSrPM' \
    --contentId 'D46YlaHD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId '39eMKzUO' \
    --contentId 'adkAjgp1' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"5tstv7KL": {}, "rIb9ckJq": {}, "1Cg9IgHO": {}}, "name": "TiXCbnI0", "shareCode": "luUOg3RP", "subType": "nkqeblUM", "tags": ["rnWh3bme", "gbBWnm71", "UnG4qgpM"], "type": "LdO95nG6"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'YAMpZHCD' \
    --contentId 'D1gllAzZ' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "zSb6Zbb9", "fileLocation": "25Onqv7D"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminUpdateOfficialContentFileLocation' test.out

#- 107 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'NWEritio' \
    --contentId 'PeQKM2Yl' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "SFFLy0Jy", "fileExtension": "syvHT2VR"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 108 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 108 'AdminGetConfigs' test.out

#- 109 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key '7xlz5Qwf' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "7MoiMOek"}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateConfig' test.out

#- 110 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '55' \
    --name 'vjegzA8E' \
    --offset '39' \
    --sortBy 'm05Hf50h' \
    --subType '093tHQEL' \
    --tags '["lomjUtfG", "Dtic5UDI", "KPzjubsu"]' \
    --type 'yBhQhHKi' \
    > test.out 2>&1
eval_tap $? 110 'AdminListContentV2' test.out

#- 111 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["lTN3jYUl", "SgeIDPAi", "MaFyszJG"]}' \
    > test.out 2>&1
eval_tap $? 111 'AdminBulkGetContentByIDsV2' test.out

#- 112 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["1er0QbVP", "K41n3GsK", "teJCcv5f"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminGetContentBulkByShareCodesV2' test.out

#- 113 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode '3fYsWX1b' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentByShareCodeV2' test.out

#- 114 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 'UP6uwVLY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByContentIDV2' test.out

#- 115 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId '1113uXYd' \
    --namespace $AB_NAMESPACE \
    --versionId 'Z0IRFNeG' \
    > test.out 2>&1
eval_tap $? 115 'RollbackContentVersionV2' test.out

#- 116 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'UXdBETlI' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "Cl1FxTTv", "screenshotId": "TF3bTL3K"}, {"description": "5evT0ucw", "screenshotId": "IK6Aj2iW"}, {"description": "81kI9SQZ", "screenshotId": "IWBqF1gY"}]}' \
    > test.out 2>&1
eval_tap $? 116 'AdminUpdateScreenshotsV2' test.out

#- 117 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 'LRdlr0W5' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "dXhikyWe", "description": "oewb3QB4", "fileExtension": "jpg"}, {"contentType": "5hOKjssE", "description": "Xy3OC7mI", "fileExtension": "jpg"}, {"contentType": "lDPimpli", "description": "HuRDk328", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUploadContentScreenshotV2' test.out

#- 118 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'hIS10x4H' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'msGdxLYH' \
    > test.out 2>&1
eval_tap $? 118 'AdminDeleteContentScreenshotV2' test.out

#- 119 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'Hk3n9WfZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'ListContentVersionsV2' test.out

#- 120 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'PNRVbDET' \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetOfficialGroupContentsV2' test.out

#- 121 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '14' \
    --sortBy '3eFT9gJm' \
    --status '6RppGgBc' \
    > test.out 2>&1
eval_tap $? 121 'AdminListStagingContents' test.out

#- 122 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId '2zuez8sl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetStagingContentByID' test.out

#- 123 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId 'QBqzY9A9' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": false, "note": "tXqaB9xL"}' \
    > test.out 2>&1
eval_tap $? 123 'AdminApproveStagingContent' test.out

#- 124 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'iKnDucyW' \
    --namespace $AB_NAMESPACE \
    --shareCode 'IXnKCPwh' \
    --userId 'J2aPAZ3E' \
    --body '{"customAttributes": {"0DoMiRGn": {}, "aWt44OUC": {}, "w4Vc73Ed": {}}, "name": "CrV3bhqU", "shareCode": "zYRNwJvF", "subType": "5Y7Q6ioW", "tags": ["jeDAXY3o", "8A7s5VJH", "gJrOwjyD"], "type": "T06gfkYH"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateContentByShareCodeV2' test.out

#- 125 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'si8eb1YP' \
    --namespace $AB_NAMESPACE \
    --shareCode 'qBAUmH2M' \
    --userId '5nw8JvYL' \
    > test.out 2>&1
eval_tap $? 125 'AdminDeleteContentByShareCodeV2' test.out

#- 126 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId '9qKHX2ou' \
    --contentId 'SF3cMFfI' \
    --namespace $AB_NAMESPACE \
    --userId 'QFEw8Pq8' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteUserContentV2' test.out

#- 127 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'CGzWZo4L' \
    --contentId '6uPxsfdU' \
    --namespace $AB_NAMESPACE \
    --userId 'CeJQK4as' \
    --body '{"customAttributes": {"ivTBicAs": {}, "HDhO5Xj5": {}, "ROl0DF7Z": {}}, "name": "44ocxu54", "shareCode": "1WFSwFv7", "subType": "tBy9dmRf", "tags": ["RAvcydwV", "Sbg4tlXp", "j3sV6OTt"], "type": "aLaPQj4q"}' \
    > test.out 2>&1
eval_tap $? 127 'AdminUpdateUserContentV2' test.out

#- 128 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'R0Dj4bWu' \
    --contentId 'UUV2nnPJ' \
    --namespace $AB_NAMESPACE \
    --userId 'g7uetfjm' \
    --body '{"fileExtension": "knoGS4aw", "fileLocation": "CyV5Nybr"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentFileLocation' test.out

#- 129 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'GalM3FiF' \
    --contentId 'OOg0evCl' \
    --namespace $AB_NAMESPACE \
    --userId 'VsMpiC1d' \
    --body '{"contentType": "1yBCXyPf", "fileExtension": "3SgYUQtY"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminGenerateUserContentUploadURLV2' test.out

#- 130 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'Zx2ykOSR' \
    --limit '68' \
    --offset '14' \
    --sortBy 'ZPFNbP28' \
    > test.out 2>&1
eval_tap $? 130 'AdminGetContentByUserIDV2' test.out

#- 131 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'kyHwOvFs' \
    --namespace $AB_NAMESPACE \
    --userId 'jzxelV2R' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 131 'AdminUpdateContentHideStatusV2' test.out

#- 132 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'DmnhNShY' \
    --namespace $AB_NAMESPACE \
    --userId 'VqsOS1h5' \
    --limit '27' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 132 'AdminGetUserGroupContentsV2' test.out

#- 133 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'RwWd6kvX' \
    --limit '62' \
    --offset '100' \
    --sortBy 'jXZj8R86' \
    --status 'aBcdchJZ' \
    > test.out 2>&1
eval_tap $? 133 'AdminListUserStagingContents' test.out

#- 134 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'gHQIHvkb' \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --name 'U3c0Tuhs' \
    --offset '4' \
    --sortBy 'I9Cx4Vp9' \
    > test.out 2>&1
eval_tap $? 134 'PublicGetContentByChannelIDV2' test.out

#- 135 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '9' \
    --name '1jdt3okq' \
    --offset '86' \
    --sortBy 'lZJc5e10' \
    --subType 'DdlHNlOC' \
    --tags '["QvBz7ffl", "Ynl86JWI", "8P1cOcA3"]' \
    --type 'VoslkCLK' \
    > test.out 2>&1
eval_tap $? 135 'PublicListContentV2' test.out

#- 136 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["0rB20eeG", "V1QS15uH", "ddjVkUNA"]}' \
    > test.out 2>&1
eval_tap $? 136 'PublicBulkGetContentByIDV2' test.out

#- 137 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["bDpNiORC", "6QizgRoq", "7kj011Er"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicGetContentBulkByShareCodesV2' test.out

#- 138 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'cbtxrLup' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentByShareCodeV2' test.out

#- 139 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'fpzJYK0X' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByIDV2' test.out

#- 140 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId '8MfdsjC8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicAddDownloadCountV2' test.out

#- 141 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'fq71QJW6' \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '20' \
    --sortBy 'dOohrlA7' \
    --userId 'snWfAdst' \
    > test.out 2>&1
eval_tap $? 141 'PublicListContentDownloaderV2' test.out

#- 142 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'lBNnh71K' \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '11' \
    --sortBy 'cur6H1zX' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentLikeV2' test.out

#- 143 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId 'T6lUKiYL' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateContentLikeStatusV2' test.out

#- 144 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'IrOakyPE' \
    --namespace $AB_NAMESPACE \
    --userId 'oJjrRM2x' \
    --body '{"contentType": "yWmTCGzA", "customAttributes": {"DJnYUDYP": {}, "1AVWh3Gw": {}, "s5EeqNVa": {}}, "fileExtension": "j6uxx5eG", "name": "6GkOxPDH", "subType": "Ch4XVFXA", "tags": ["j7yTWrLY", "xAbqQZQb", "UTOx0hTT"], "type": "FQnCVuE8"}' \
    > test.out 2>&1
eval_tap $? 144 'PublicCreateContentV2' test.out

#- 145 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId '90Gy6glT' \
    --namespace $AB_NAMESPACE \
    --shareCode 'yJRvLa3u' \
    --userId 'vldgRmMS' \
    --body '{"customAttributes": {"9zbwHthr": {}, "jJ5tguO8": {}, "6CuBJqDC": {}}, "name": "Kc4HMyoY", "subType": "780oYOdW", "tags": ["Vpg1nNyl", "4Yl7BIHE", "U0HzsceU"], "type": "OWByiaWu"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicUpdateContentByShareCodeV2' test.out

#- 146 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'rpcRfzKF' \
    --namespace $AB_NAMESPACE \
    --shareCode '3mx7HOpd' \
    --userId 'eF5WNHM0' \
    > test.out 2>&1
eval_tap $? 146 'PublicDeleteContentByShareCodeV2' test.out

#- 147 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'YxdKzmp6' \
    --contentId 'VXeOuwoR' \
    --namespace $AB_NAMESPACE \
    --userId '4HYdJCSd' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentV2' test.out

#- 148 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'bBA7zZ4j' \
    --contentId 'xtUNLPW6' \
    --namespace $AB_NAMESPACE \
    --userId 'jePtI0Ds' \
    --body '{"customAttributes": {"l9HDOAPN": {}, "dZf4rg7S": {}, "wF9Iatlw": {}}, "name": "wL5oQdt1", "subType": "8Y57Kawp", "tags": ["xqKsKQTy", "0PJVkBdK", "uxsyOJIi"], "type": "k0ZHTZSs"}' \
    > test.out 2>&1
eval_tap $? 148 'PublicUpdateContentV2' test.out

#- 149 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'GaQFfilC' \
    --contentId 'yU7CPZ6j' \
    --namespace $AB_NAMESPACE \
    --userId 'KBBdJg9l' \
    --body '{"fileExtension": "36w3r8C9", "fileLocation": "vYJ5vESJ"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentFileLocation' test.out

#- 150 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'xYj7YTKI' \
    --contentId 'BRtBtFKZ' \
    --namespace $AB_NAMESPACE \
    --userId 'JHH3LtPV' \
    --body '{"shareCode": "KYXhbxrK"}' \
    > test.out 2>&1
eval_tap $? 150 'UpdateContentShareCodeV2' test.out

#- 151 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'LO4YXRCl' \
    --contentId 'C0WMHJoe' \
    --namespace $AB_NAMESPACE \
    --userId '68OVgpGC' \
    --body '{"contentType": "sorVdJmx", "fileExtension": "wIBWeAs7"}' \
    > test.out 2>&1
eval_tap $? 151 'PublicGenerateContentUploadURLV2' test.out

#- 152 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'SlJvnUm0' \
    --limit '47' \
    --offset '38' \
    --sortBy 'uZ6nEubH' \
    > test.out 2>&1
eval_tap $? 152 'PublicGetContentByUserIDV2' test.out

#- 153 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'aKwHdmk9' \
    --namespace $AB_NAMESPACE \
    --userId 'PtngF7Bl' \
    --body '{"screenshots": [{"description": "EZEwuH3T", "screenshotId": "NVea79lJ"}, {"description": "ARDtGGsi", "screenshotId": "uNesApAM"}, {"description": "GGJa1kpT", "screenshotId": "7Z8PqoPB"}]}' \
    > test.out 2>&1
eval_tap $? 153 'UpdateScreenshotsV2' test.out

#- 154 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId '1prrig3Y' \
    --namespace $AB_NAMESPACE \
    --userId 'uxwO2Mur' \
    --body '{"screenshots": [{"contentType": "qGlUZdeL", "description": "XZpDRXfQ", "fileExtension": "jpg"}, {"contentType": "GT1POgnP", "description": "369dqYN6", "fileExtension": "png"}, {"contentType": "Dv7PD7Yi", "description": "lH6ktg8C", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UploadContentScreenshotV2' test.out

#- 155 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'eLzLsfB9' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'PSn6uZc8' \
    --userId 'u2tMaXOw' \
    > test.out 2>&1
eval_tap $? 155 'DeleteContentScreenshotV2' test.out

#- 156 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId '7dmTDq4F' \
    --namespace $AB_NAMESPACE \
    --userId 'ahw6fWJl' \
    --limit '23' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 156 'PublicGetGroupContentsV2' test.out

#- 157 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'GWVsNx2q' \
    --limit '53' \
    --offset '81' \
    --sortBy 'ST5CLnjE' \
    --status 'yaQEDHJe' \
    > test.out 2>&1
eval_tap $? 157 'ListUserStagingContents' test.out

#- 158 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId 'NCzSBHyZ' \
    --namespace $AB_NAMESPACE \
    --userId 'q6krATNe' \
    > test.out 2>&1
eval_tap $? 158 'GetUserStagingContentByID' test.out

#- 159 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId '6xOdM0EV' \
    --namespace $AB_NAMESPACE \
    --userId '0a336A1O' \
    --body '{"fileExtension": "kTIGpBs5", "fileLocation": "9z3lVlBX"}' \
    > test.out 2>&1
eval_tap $? 159 'UpdateStagingContent' test.out

#- 160 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId 'PtIn2g5P' \
    --namespace $AB_NAMESPACE \
    --userId 'EwM9XzDx' \
    > test.out 2>&1
eval_tap $? 160 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE