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
    --limit '90' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "Wz17msNT", "name": "DXoWHQ2F"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId '5ILqbIgc' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "fLdyzkz3"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'qeiTCnoy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'VcYrb7rw' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "sgMns8ie", "customAttributes": {"gMEy0D59": {}, "kiKZIDOY": {}, "q7pf8pVA": {}}, "fileExtension": "UoCJZgiZ", "name": "UviCw1NT", "preview": "NncWz79y", "previewMetadata": {"previewContentType": "sR0aDTCD", "previewFileExtension": "JjAOVzLD"}, "shareCode": "PMRUUncL", "subType": "9hYylyYl", "tags": ["gxZR0M8G", "h6bR75F8", "swjEQkPJ"], "type": "nPjyzrpt"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'KTOsvnHp' \
    --contentId 'UW5bmvJw' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "eknnS2XW", "customAttributes": {"Ic0509e5": {}, "4QzO2bIZ": {}, "pwuadTDj": {}}, "fileExtension": "Rlo3ZTFe", "name": "lFdHPQzh", "payload": "ii5FeCjt", "preview": "Fc1kuOLn", "previewMetadata": {"previewContentType": "clOXUdqY", "previewFileExtension": "nLMb82EV"}, "shareCode": "Sh3mAaFl", "subType": "IgeMhrmA", "tags": ["aUUMC4S6", "ss60HysI", "yXZoy1vg"], "type": "2kFLHaeM", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'o5Pnmixl' \
    --namespace $AB_NAMESPACE \
    --creator 'wdkcqfr3' \
    --ishidden 'NoWCX0fO' \
    --isofficial 'VSCopVK1' \
    --limit '6' \
    --name 'Z9uoz6wj' \
    --offset '17' \
    --orderby 'diEgKQWN' \
    --sortby 'uWRMfIgZ' \
    --subtype 'aILDOMEk' \
    --tags '["fTECm0Aq", "MTSzMuNF", "HdmxVrDX"]' \
    --type '3U2ttEhe' \
    --userId 'tXuE4Jgj' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId '2fXOTgkk' \
    --contentId 'BR0zdjAy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["J3YIQqD4", "vcG1G9Z8", "WSdCYJPw"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'MKvqZa5l' \
    --ishidden '9pvgYg58' \
    --isofficial 'jD0D9iXn' \
    --limit '48' \
    --name '1BrpxCpw' \
    --offset '65' \
    --orderby 'feVysSnc' \
    --sortby 'R3sV5cTf' \
    --subtype 'bP9h5GOj' \
    --tags '["FwG7iTmj", "gXAwsYDl", "MbNF3m8f"]' \
    --type 'HbZ6cgLg' \
    --userId '5k00P6lY' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["Ki90xvEA", "ZgjsvsMt", "AYqUbvVI"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'IwNXq3Fa' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'SpChAIUb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'hRswqqrm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'VO3obMlP' \
    --namespace $AB_NAMESPACE \
    --versionId 'DI0gtPNX' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'lOlBtCKI' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "2lQPXqxH", "screenshotId": "ikL6GqPA"}, {"description": "WEzLF5Zn", "screenshotId": "LNIgxi0E"}, {"description": "hGpOoexx", "screenshotId": "sfgb9TDC"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'ZaS8MBA1' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "SIiKXNha", "description": "2hs0yOMJ", "fileExtension": "jfif"}, {"contentType": "xdTOONPQ", "description": "puHX0OMD", "fileExtension": "png"}, {"contentType": "3aemQLYP", "description": "94P6eJP4", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'sx9cMaHn' \
    --namespace $AB_NAMESPACE \
    --screenshotId '1QhSrYg7' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'B9X5Q2es' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["ltFHkAMD", "0IJer7rm", "8vdkFtuc"], "name": "5ku0CLot"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId '4TEtZphY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'A7ayz22L' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["0rj2BKLE", "aBNUgclf", "sjaVD7T9"], "name": "zrFcCJII"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'UlsdSbnA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'C6AISsYA' \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "N7je8zS9"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'wW6YC3v3' \
    --body '{"tag": "qGBXvIpx"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId '7PnWdtt8' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["hDV384CM", "VegurGA9", "CABO1eUd"], "type": "QxKeEQOS"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'FosHA4Oh' \
    --body '{"subtype": ["KH8J3iwy", "9oKjUt5l", "vO2R6Psn"], "type": "P02zLDTF"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'ure74lfr' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'FlVVpFOW' \
    --limit '19' \
    --name 'om0aKZV7' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'PJr0HyMG' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId '2WoTwtB7' \
    --namespace $AB_NAMESPACE \
    --userId 'LwyCI4Ww' \
    --body '{"name": "r1PN5BhG"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'eogWmjPQ' \
    --namespace $AB_NAMESPACE \
    --userId 'uug7ufIJ' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'p2wvT4hs' \
    --namespace $AB_NAMESPACE \
    --shareCode 'JPLOzQRy' \
    --userId 'zuEZqs0q' \
    --body '{"contentType": "7rXEb6IT", "customAttributes": {"iTbOXdCV": {}, "H7w3fp9s": {}, "VQh4x80L": {}}, "fileExtension": "40K5xSAc", "name": "lzis8h73", "payload": "HMDaX57s", "preview": "NEZxXMhw", "previewMetadata": {"previewContentType": "jWonl79h", "previewFileExtension": "wx5gEgnp"}, "shareCode": "o2FUmzUE", "subType": "cCqC90Wi", "tags": ["v1MMCted", "KHTxiAPd", "l3kSWgE4"], "type": "woRB69If", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'dPrAqwsR' \
    --contentId '64zQhy7b' \
    --namespace $AB_NAMESPACE \
    --userId '8r8ODPzw' \
    --body '{"contentType": "cOzMBs7B", "customAttributes": {"rGEtth4R": {}, "CkitiaoS": {}, "zG9F85Ka": {}}, "fileExtension": "NpiHCoJD", "name": "MaYYYYg4", "payload": "ZQehAbN6", "preview": "yiXmWRUC", "previewMetadata": {"previewContentType": "USBS8H0s", "previewFileExtension": "q9OUMNAb"}, "shareCode": "ksJt594r", "subType": "4XVICp2r", "tags": ["L5hubF1V", "ZANAke9a", "scnwmL4b"], "type": "BVqTE76E", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'f8TA7Vfa' \
    --namespace $AB_NAMESPACE \
    --shareCode '7LQeegEK' \
    --userId 'kFWCDHVR' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'VtLlgkhd' \
    --contentId '3DPrUmxE' \
    --namespace $AB_NAMESPACE \
    --userId 'sLlCmsMx' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'qUANWw5b' \
    --limit '41' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 't0zFDhsi' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'ssF45Ypu' \
    --namespace $AB_NAMESPACE \
    --userId 'UVIOBX7N' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'xdMwW896' \
    --limit '20' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'ChJ3DBpV' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'Mi6D2bhW' \
    --namespace $AB_NAMESPACE \
    --userId 'LvPy3rgI' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'Go7Kxunl' \
    --namespace $AB_NAMESPACE \
    --userId 'OYnmOWXw' \
    --body '{"contents": ["XtwuwRHE", "I6rYmPNU", "jEgB7Pv0"], "name": "gB0DXJ01"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'NfRbNxAT' \
    --namespace $AB_NAMESPACE \
    --userId '9jotFCZB' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'VH1w3zJN' \
    --namespace $AB_NAMESPACE \
    --userId 'W5pf1KKr' \
    --limit '63' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'bkj7f9Z4' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'OocuHUUh' \
    --namespace $AB_NAMESPACE \
    --creator '66hgSecM' \
    --ishidden 'KCwip9Ih' \
    --isofficial 'WxAqh3j3' \
    --limit '12' \
    --name 'eAUQxcMl' \
    --offset '80' \
    --orderby 'WdV7LnFW' \
    --sortby 'uSEzAWbb' \
    --subtype 'de1ru1hP' \
    --tags '["r6WilD6x", "s95EtgNI", "VQj5yUSy"]' \
    --type 'KrWZais9' \
    --userId '9WbMK4p2' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'AttoFDka' \
    --ishidden 'ADU6jXwa' \
    --isofficial 'uqJMwNcr' \
    --limit '41' \
    --name 'HsY3tVuR' \
    --offset '75' \
    --orderby 'TJH6mB9d' \
    --sortby 'M7A4gTqb' \
    --subtype 'qyEXfgOH' \
    --tags '["58Bo7mmd", "658rrF04", "nyrQpoIK"]' \
    --type '1UMkx6kC' \
    --userId 'FRLrZePh' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["vjDkYTx6", "wmpQ6qxP", "td4NzdBR"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '48' \
    --name 'o2shVS3b' \
    --offset '12' \
    --orderby 'm3bN9ZMD' \
    --sortby 'zLpCG5C6' \
    --subtype 'hC016L6f' \
    --tags '["t5FF6jjl", "sXuUMKpP", "SEBrzIcX"]' \
    --type 'azc6F3eO' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["xYLo6Xoy", "VjwH7fHh", "H25TuGMd"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'yQVOFNjD' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'bmSx8dly' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId '4p6xmfBr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'D9GuJxhx' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'Oo8UtjnW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '62' \
    --orderby 'h3sr3Lqb' \
    --sortby 'btskemlU' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'vcycyAfT' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId '1D8JD5AG' \
    --limit '17' \
    --name '4zHOapGy' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'YdGBAoC6' \
    --body '{"name": "a8GcIePE"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'hDCr19UN' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'GYdqyE2C' \
    --namespace $AB_NAMESPACE \
    --userId '9mBOkcnL' \
    --body '{"name": "afUIo3X7"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'vgdMD4f6' \
    --namespace $AB_NAMESPACE \
    --userId 'R1VWcSCC' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'IbBsO7sv' \
    --namespace $AB_NAMESPACE \
    --userId 'VNTdjpZf' \
    --body '{"contentType": "YpSgqSbL", "customAttributes": {"df8rssZm": {}, "Gov6WNC3": {}, "LXMdSZH8": {}}, "fileExtension": "AOOKvP3E", "name": "Npddpkak", "preview": "YlBQWqFD", "previewMetadata": {"previewContentType": "EEDDM698", "previewFileExtension": "CYiTMhVD"}, "subType": "8ctbQIhy", "tags": ["c0eGsDLU", "zPprKta4", "Gmb9iN6p"], "type": "RbMjBoOb"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'KQ9uTz1t' \
    --namespace $AB_NAMESPACE \
    --shareCode 'UQx7ZjLN' \
    --userId 'gazr6ORt' \
    --body '{"contentType": "lt1UOEqX", "customAttributes": {"GJdoiu4w": {}, "rgPyk7lm": {}, "rVbiJEfo": {}}, "fileExtension": "RRoN8jSi", "name": "v9RKZHyC", "payload": "1pFyGO8b", "preview": "2QOfOMY1", "previewMetadata": {"previewContentType": "TvObHjNi", "previewFileExtension": "aNC7bxNM"}, "subType": "GFBWbYNK", "tags": ["uwUEunYd", "OKEtCHKB", "jfcakaaG"], "type": "UZ2iZYZ9", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'tcocZIpp' \
    --contentId 'cSNs4fdb' \
    --namespace $AB_NAMESPACE \
    --userId '2oZaQupC' \
    --body '{"contentType": "vSldcoP1", "customAttributes": {"VSnRaEHD": {}, "iJCJyNZu": {}, "0CjOLN1c": {}}, "fileExtension": "1TaGM8q6", "name": "sy4gcgNO", "payload": "rEjTiEZJ", "preview": "DiSlpdWz", "previewMetadata": {"previewContentType": "ZgDZ6W46", "previewFileExtension": "7t5mW5xj"}, "subType": "8fPTf83A", "tags": ["IUESEmGC", "uqMcSoCY", "gECTYY7k"], "type": "rVe5fqyA", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId 'K6M8M6Ph' \
    --namespace $AB_NAMESPACE \
    --shareCode 'G7F6kKUy' \
    --userId 'wcs24hVd' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'Mbj1EUL0' \
    --contentId 'yJqL0HLS' \
    --namespace $AB_NAMESPACE \
    --userId 'XlOl3KVS' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'iKPOn9Ee' \
    --contentId 'yELlfFaZ' \
    --namespace $AB_NAMESPACE \
    --userId 'YtehDk6G' \
    --body '{"shareCode": "tfcWOyE7"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'JniMU6uq' \
    --limit '35' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'uor2QbR1' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId '69xMtIPP' \
    --namespace $AB_NAMESPACE \
    --userId 'qu5PRVRG' \
    --body '{"screenshots": [{"description": "yMPTiLWZ", "screenshotId": "UgFMyOTQ"}, {"description": "ZMJn9eNH", "screenshotId": "6Uxqf7As"}, {"description": "rEDUZmv9", "screenshotId": "h1CKVpFY"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId '1KhEv1vx' \
    --namespace $AB_NAMESPACE \
    --userId 'GTmxSmmC' \
    --body '{"screenshots": [{"contentType": "73lBzLmV", "description": "8kZtvmSf", "fileExtension": "pjp"}, {"contentType": "6mEYOAE1", "description": "GXh0qsyc", "fileExtension": "bmp"}, {"contentType": "bRXHFYQq", "description": "IuvILjv6", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'pcHYFUWr' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'Eni8v0uN' \
    --userId '601iLIA4' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'jdP8Vo6v' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'TI10W4Dp' \
    --limit '15' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'JtRAzbhx' \
    --limit '93' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'PPiLSxmE' \
    --limit '34' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'JjvHVBFU' \
    --body '{"contents": ["lZWnKOAt", "jRy37heD", "RuXYADpJ"], "name": "bwhQwCr2"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'YgBII9CP' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'TNDXu8I2' \
    --namespace $AB_NAMESPACE \
    --userId '9KzRBT4L' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'fJfvqyPs' \
    --namespace $AB_NAMESPACE \
    --userId 'ABCsnVSf' \
    --body '{"contents": ["EQBYV74R", "IVTtkH7i", "nvao3TZ8"], "name": "UMNGgM4f"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'hQqD41SD' \
    --namespace $AB_NAMESPACE \
    --userId 'yq8qzJ3f' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'jJA5uc0H' \
    --namespace $AB_NAMESPACE \
    --userId 'qnlNIzpt' \
    --limit '66' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId '3nHMtpqm' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'sAwDUaj5' \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --name 'be8iUpW9' \
    --offset '47' \
    --sortBy 'QW4YG8Oa' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'jia93m5v' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "5QlXW6Lg", "customAttributes": {"nNukXkaR": {}, "TVA7BFmK": {}, "VEmVBi0i": {}}, "fileExtension": "23DFl3S8", "name": "t1UympHK", "shareCode": "BPfX4mcz", "subType": "pdO8MTDt", "tags": ["AgY9mNEa", "UJN2zxL0", "UndRxUQc"], "type": "7yk6it3X"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId '88WA4Qg9' \
    --contentId 'YbySfYFb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'sTK65c5u' \
    --contentId 'UM0CJOgk' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"JZACvbBn": {}, "f3dOY50r": {}, "F6F0HvO4": {}}, "name": "azUKvsX4", "shareCode": "kyK7tb1d", "subType": "CKYTeYYG", "tags": ["2nUOQv6i", "d08B1nuH", "nU9wqip6"], "type": "H9gFkdpO"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminCopyContent
samples/cli/sample-apps Ugc adminCopyContent \
    --channelId 'rfOIriLm' \
    --contentId 'izFPfVve' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"t04EXO8q": {}, "uSHVoOAp": {}, "wnQXKv4l": {}}, "name": "k6CD0VOq", "subType": "Pl54sJQV", "tags": ["mYkh19Qn", "L8ntCA05", "P39kdgGQ"], "targetChannelId": "C1EjxagO", "type": "Jo3fbbg6"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminCopyContent' test.out

#- 107 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId '8hEMWuIg' \
    --contentId 'cNrTk2xv' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "rp2yiurA", "fileLocation": "5gHEed9w"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminUpdateOfficialContentFileLocation' test.out

#- 108 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'zPFnNnJb' \
    --contentId '0Uojm8p6' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "uiUWlBWn", "fileExtension": "X8gDM4Xg"}' \
    > test.out 2>&1
eval_tap $? 108 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 109 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 109 'AdminGetConfigs' test.out

#- 110 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key 'EmXOwv0C' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "h11Pifhn"}' \
    > test.out 2>&1
eval_tap $? 110 'AdminUpdateConfig' test.out

#- 111 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '66' \
    --name 'otWQbaCm' \
    --offset '94' \
    --sortBy 'hBSyuYwm' \
    --subType 'xo6C3y1R' \
    --tags '["6f9UTFz6", "EhoI9HY0", "i1VyZDp3"]' \
    --type 'VWYAGjnt' \
    > test.out 2>&1
eval_tap $? 111 'AdminListContentV2' test.out

#- 112 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["sHWbnBRx", "PE87Kud0", "cnRYhziD"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminBulkGetContentByIDsV2' test.out

#- 113 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["PEzXzz4N", "e3OEbldx", "90IcjCWc"]}' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentBulkByShareCodesV2' test.out

#- 114 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'mFtVI6Hr' \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByShareCodeV2' test.out

#- 115 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 'sfpBCe4C' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'AdminGetContentByContentIDV2' test.out

#- 116 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId '2ro2nC8T' \
    --namespace $AB_NAMESPACE \
    --versionId 'BVOds9z6' \
    > test.out 2>&1
eval_tap $? 116 'RollbackContentVersionV2' test.out

#- 117 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'w7WL69wM' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "mywXxWZz", "screenshotId": "sdX5bAUT"}, {"description": "OCFRnIU3", "screenshotId": "Ka3VO2RW"}, {"description": "tSl4tb0E", "screenshotId": "Sv1oy0iE"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateScreenshotsV2' test.out

#- 118 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 'aJW9gUdr' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "VJQleqmU", "description": "byjWV86W", "fileExtension": "jfif"}, {"contentType": "JWI53xm0", "description": "ZMzv5rd3", "fileExtension": "bmp"}, {"contentType": "ckW3I5EQ", "description": "OuKHQIBE", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 118 'AdminUploadContentScreenshotV2' test.out

#- 119 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId '6XsNRReZ' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'EDEuF1Lu' \
    > test.out 2>&1
eval_tap $? 119 'AdminDeleteContentScreenshotV2' test.out

#- 120 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId '7exIbYfP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 120 'ListContentVersionsV2' test.out

#- 121 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'rhsWIOT3' \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 121 'AdminGetOfficialGroupContentsV2' test.out

#- 122 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '1' \
    --sortBy 'EPesubMe' \
    --status 'omF5MGEN' \
    > test.out 2>&1
eval_tap $? 122 'AdminListStagingContents' test.out

#- 123 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId 'nXzfkeLg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminGetStagingContentByID' test.out

#- 124 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId 'e8WHQIZV' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": false, "note": "AJEkjdhM"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminApproveStagingContent' test.out

#- 125 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'eOxqgC54' \
    --namespace $AB_NAMESPACE \
    --shareCode '5HBILDMJ' \
    --userId '3XNc9AmJ' \
    --body '{"customAttributes": {"sE9RZDzv": {}, "e1ylC3tR": {}, "bE2Y5HIy": {}}, "name": "i8Ch5oln", "shareCode": "DB3LKzaJ", "subType": "7dhlaTEi", "tags": ["3zUKXZfG", "sPmcFfcU", "4wIapHMT"], "type": "XcsfDFiE"}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateContentByShareCodeV2' test.out

#- 126 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'g1LXbC6G' \
    --namespace $AB_NAMESPACE \
    --shareCode 'w1O6WdWa' \
    --userId 'pY32ln2o' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteContentByShareCodeV2' test.out

#- 127 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId '5cxGQ8bY' \
    --contentId 'o7RhTqLJ' \
    --namespace $AB_NAMESPACE \
    --userId 'JBmelpSp' \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteUserContentV2' test.out

#- 128 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId '0NxgyPSU' \
    --contentId 'wVXpA6f7' \
    --namespace $AB_NAMESPACE \
    --userId 'qnBSkatw' \
    --body '{"customAttributes": {"7Vm4cs6i": {}, "PbpxEB12": {}, "6h22Zei1": {}}, "name": "g3UjOZAj", "shareCode": "aJQPUe4A", "subType": "AsRGkSXT", "tags": ["yIdEDIw2", "ctMwFPGl", "OO9NOAKd"], "type": "0r2tPJf2"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentV2' test.out

#- 129 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId '4O9a9WFu' \
    --contentId 'TZVUaLg7' \
    --namespace $AB_NAMESPACE \
    --userId 'e1SjeiA8' \
    --body '{"fileExtension": "tHL2u7rp", "fileLocation": "O8d65NMq"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateUserContentFileLocation' test.out

#- 130 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'j8kv6k7B' \
    --contentId 'D39t6Mnp' \
    --namespace $AB_NAMESPACE \
    --userId 'nXPZhzal' \
    --body '{"contentType": "5pWlg2qi", "fileExtension": "Y6tTvslN"}' \
    > test.out 2>&1
eval_tap $? 130 'AdminGenerateUserContentUploadURLV2' test.out

#- 131 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'EVipEfho' \
    --limit '0' \
    --offset '27' \
    --sortBy 'kt8tAadg' \
    > test.out 2>&1
eval_tap $? 131 'AdminGetContentByUserIDV2' test.out

#- 132 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'tSlHJWry' \
    --namespace $AB_NAMESPACE \
    --userId '7DIyEuqE' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 132 'AdminUpdateContentHideStatusV2' test.out

#- 133 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId '4aWy09o3' \
    --namespace $AB_NAMESPACE \
    --userId 'xqqZXSB3' \
    --limit '8' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 133 'AdminGetUserGroupContentsV2' test.out

#- 134 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 't25gkP9G' \
    --limit '22' \
    --offset '95' \
    --sortBy 'gpfcO815' \
    --status 'vIXk6EJt' \
    > test.out 2>&1
eval_tap $? 134 'AdminListUserStagingContents' test.out

#- 135 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId '964IYjaj' \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --name 'IvemPt7s' \
    --offset '25' \
    --sortBy 'WUC66Cgl' \
    > test.out 2>&1
eval_tap $? 135 'PublicGetContentByChannelIDV2' test.out

#- 136 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '60' \
    --name 'TMvqV32O' \
    --offset '53' \
    --sortBy '09qXTpFp' \
    --subType 'mpMifHb9' \
    --tags '["u3xDH4af", "zOCG3t7b", "pJ4jPLyY"]' \
    --type 'wvwdKnQ3' \
    > test.out 2>&1
eval_tap $? 136 'PublicListContentV2' test.out

#- 137 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["JM6rUDqs", "5TD73KtA", "pBGPGEim"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicBulkGetContentByIDV2' test.out

#- 138 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["Judlt0qh", "p8Fb3Xw2", "8ty1ML7Y"]}' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentBulkByShareCodesV2' test.out

#- 139 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'Qlk7l4nW' \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByShareCodeV2' test.out

#- 140 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'lw26wROL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicGetContentByIDV2' test.out

#- 141 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'sr7dkQCg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 141 'PublicAddDownloadCountV2' test.out

#- 142 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'T3Lxeggi' \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '67' \
    --sortBy '6k69sJf7' \
    --userId 'm8Pz4ahv' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentDownloaderV2' test.out

#- 143 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'DPjduZVJ' \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '30' \
    --sortBy 'wYUZgmIv' \
    > test.out 2>&1
eval_tap $? 143 'PublicListContentLikeV2' test.out

#- 144 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId 'lr2NB91D' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateContentLikeStatusV2' test.out

#- 145 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'M1pNX00h' \
    --namespace $AB_NAMESPACE \
    --userId 'DmlpYohE' \
    --body '{"contentType": "3wbnoI1P", "customAttributes": {"kG5VCKXU": {}, "SzpCNCYM": {}, "dHlKNLqq": {}}, "fileExtension": "02eM1ogb", "name": "A5Th3Pdb", "subType": "ZjGzd9pN", "tags": ["KBe0JfVd", "ULYP37SM", "AwJO4YxX"], "type": "DN3xCwEs"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicCreateContentV2' test.out

#- 146 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'd6RPVwJm' \
    --namespace $AB_NAMESPACE \
    --shareCode 'zU9d3MMJ' \
    --userId 'veQHs4Je' \
    --body '{"customAttributes": {"uyN0zZxU": {}, "QIcl4PVl": {}, "WS03EQ89": {}}, "name": "pyKdaSge", "subType": "HVjzpDvr", "tags": ["vJQpn9bW", "IzVkqh9U", "Ke63JTkM"], "type": "84RqApGx"}' \
    > test.out 2>&1
eval_tap $? 146 'PublicUpdateContentByShareCodeV2' test.out

#- 147 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'LyFYjQyL' \
    --namespace $AB_NAMESPACE \
    --shareCode 'eSVROKX4' \
    --userId 'mP0tHm5T' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentByShareCodeV2' test.out

#- 148 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'BQU5k0pq' \
    --contentId 'URd5MK2A' \
    --namespace $AB_NAMESPACE \
    --userId '8zh2igFV' \
    > test.out 2>&1
eval_tap $? 148 'PublicDeleteContentV2' test.out

#- 149 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'fyYdHdUp' \
    --contentId 'H9D97J0R' \
    --namespace $AB_NAMESPACE \
    --userId 'oiDgwkuX' \
    --body '{"customAttributes": {"UDR3NkCz": {}, "wiQ1cmoP": {}, "rIhLxY3T": {}}, "name": "Tt6QU5At", "subType": "y5Hllz4y", "tags": ["mR4c4Bx7", "K60mOZQ0", "L836Z1HD"], "type": "PrpSQ7r1"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentV2' test.out

#- 150 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'gdJgxAQx' \
    --contentId 'FyoCzrnl' \
    --namespace $AB_NAMESPACE \
    --userId 'chaOut6Q' \
    --body '{"fileExtension": "GeDPdZ8Y", "fileLocation": "s8IpNoJQ"}' \
    > test.out 2>&1
eval_tap $? 150 'PublicUpdateContentFileLocation' test.out

#- 151 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'aaQTuErh' \
    --contentId 'zgIpwbHD' \
    --namespace $AB_NAMESPACE \
    --userId 'e5MEvfdg' \
    --body '{"shareCode": "XBGN4StQ"}' \
    > test.out 2>&1
eval_tap $? 151 'UpdateContentShareCodeV2' test.out

#- 152 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'YNXc2en7' \
    --contentId 'wPYDxesp' \
    --namespace $AB_NAMESPACE \
    --userId 'K6Z717L4' \
    --body '{"contentType": "t0Mbkdjh", "fileExtension": "xzHpmV02"}' \
    > test.out 2>&1
eval_tap $? 152 'PublicGenerateContentUploadURLV2' test.out

#- 153 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'Uh4gFwge' \
    --limit '92' \
    --offset '19' \
    --sortBy 'rkaFDVa7' \
    > test.out 2>&1
eval_tap $? 153 'PublicGetContentByUserIDV2' test.out

#- 154 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'vlhRxEWd' \
    --namespace $AB_NAMESPACE \
    --userId 'SnfrsbzI' \
    --body '{"screenshots": [{"description": "984vpAUm", "screenshotId": "fNZKfpMp"}, {"description": "NvpLkLAw", "screenshotId": "K1gaZqIY"}, {"description": "9KIeg7Ym", "screenshotId": "T3s69C6G"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UpdateScreenshotsV2' test.out

#- 155 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'JseQ3tSI' \
    --namespace $AB_NAMESPACE \
    --userId 'GVUUBMFI' \
    --body '{"screenshots": [{"contentType": "4sg06Qx9", "description": "d10PeJ9A", "fileExtension": "pjp"}, {"contentType": "Ie4OVaD3", "description": "AqiSKuG0", "fileExtension": "jpeg"}, {"contentType": "JpbPOEPB", "description": "ru8OAwRF", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 155 'UploadContentScreenshotV2' test.out

#- 156 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId '4i7jR6H5' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'N7CKa5ci' \
    --userId 'cZtjQgII' \
    > test.out 2>&1
eval_tap $? 156 'DeleteContentScreenshotV2' test.out

#- 157 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'V2Ya9pY4' \
    --namespace $AB_NAMESPACE \
    --userId 'wTxXniyR' \
    --limit '36' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 157 'PublicGetGroupContentsV2' test.out

#- 158 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'H3yc9yej' \
    --limit '39' \
    --offset '60' \
    --sortBy 'SThyCqPH' \
    --status '4dLguTpL' \
    > test.out 2>&1
eval_tap $? 158 'ListUserStagingContents' test.out

#- 159 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId 'xIHr4iZC' \
    --namespace $AB_NAMESPACE \
    --userId 'QEeXqYYA' \
    > test.out 2>&1
eval_tap $? 159 'GetUserStagingContentByID' test.out

#- 160 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId '93VXxvtC' \
    --namespace $AB_NAMESPACE \
    --userId 'N7irmcpC' \
    --body '{"fileExtension": "GEfBjjxn", "fileLocation": "bCBqtU2i"}' \
    > test.out 2>&1
eval_tap $? 160 'UpdateStagingContent' test.out

#- 161 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId 'Uj4iiGCI' \
    --namespace $AB_NAMESPACE \
    --userId 'V65CdzB5' \
    > test.out 2>&1
eval_tap $? 161 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE