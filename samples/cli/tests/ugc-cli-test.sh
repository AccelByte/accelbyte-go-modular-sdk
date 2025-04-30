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
    --limit '72' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "5ri0P5KM", "name": "rdyBI4IU"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'kyjS8auh' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "D8aUGSGO"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'EcFt62O6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId '7GrmboNk' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "C7pIFNxK", "customAttributes": {"IBu1wmvv": {}, "sRlePKWy": {}, "RDskakR5": {}}, "fileExtension": "plwV6AIP", "name": "rZFP91JE", "preview": "C59u7WFr", "previewMetadata": {"previewContentType": "4GuqgSfD", "previewFileExtension": "eOkSlKqR"}, "shareCode": "ZiCJlCmI", "subType": "3jMcDx3t", "tags": ["juPsawW3", "mF3VlApO", "ieXE83HW"], "type": "P9tuoTpw"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'LlXq4Gva' \
    --contentId 'nZaJWwsD' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "qVhHugDZ", "customAttributes": {"QqoTi7V5": {}, "nqxSssM8": {}, "vQFZ5s00": {}}, "fileExtension": "75zfdtyy", "name": "JvGeBvov", "payload": "JRs8ZmW5", "preview": "7mB7relk", "previewMetadata": {"previewContentType": "lF8Yg21d", "previewFileExtension": "sRylvw9c"}, "shareCode": "7GvpCosj", "subType": "WNDoHPRU", "tags": ["qq4QsIpG", "NNFEtfBs", "jmNf5pPB"], "type": "rwQ22Xel", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'lS56vudB' \
    --namespace $AB_NAMESPACE \
    --creator 'PKSkZRsi' \
    --ishidden 'RF7yLeKb' \
    --isofficial 'n3tUoj0o' \
    --limit '2' \
    --name 'TlnKDUSa' \
    --offset '25' \
    --orderby 'cUpzV1Uw' \
    --sortby 'EAhp7mWq' \
    --subtype 'hdotf5HI' \
    --tags '["LVzCa2Sg", "CzyC73KM", "8HkJbbuE"]' \
    --type 'Ttwcdsy9' \
    --userId 'k9n8uszV' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId '8DxU72pH' \
    --contentId 'XSgXkK0G' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["X4cXxICQ", "OkUjPKXa", "YdpBguhn"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator '7J3YMPPV' \
    --ishidden 'tcAbcLZ6' \
    --isofficial 'KX3Gur1u' \
    --limit '63' \
    --name 'Lleg5Sc9' \
    --offset '26' \
    --orderby '1tQHjjhH' \
    --sortby '99wpZhs8' \
    --subtype 'n1FBaSAA' \
    --tags '["MGOwtDjy", "2UgvVkx4", "lxMzQCkZ"]' \
    --type 'oCZ5IUL2' \
    --userId 'uGyHQv2J' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["mNC6DRfi", "ABpTPgZI", "RI6zMebX"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'tKxwRCoq' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'amzb5qi5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId '6jfnKAHG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId '9F7YVpVA' \
    --namespace $AB_NAMESPACE \
    --versionId 'tLe9WLKK' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'IMNDnllO' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "bNKnZu7x", "screenshotId": "v0V2H4KI"}, {"description": "CWahrJpq", "screenshotId": "oYN2odhK"}, {"description": "nGxjJJPJ", "screenshotId": "CirVuLPZ"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'KPnaKGLf' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "MSE7TxcB", "description": "MOog01Ww", "fileExtension": "jpeg"}, {"contentType": "IpumV5Ct", "description": "nKEji3z1", "fileExtension": "jpeg"}, {"contentType": "SMC1W89R", "description": "33LJhvu4", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId '9AuREb9W' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'dNWJxlIl' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'lXCcTCm5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["C1PgISPT", "4Lsvpqxi", "bj1KSOnb"], "name": "OVWfyzwf"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'GXjyu5ik' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'BPtzXgJZ' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["QBJ0hMjl", "3KFZHsRT", "7U8qCcn9"], "name": "YQ3G8vUB"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'MtbX6xN6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'KlmVHocf' \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "QRvOLD2i"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'aB9d8hBh' \
    --body '{"tag": "s7Cqxxa6"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'O0i1gGJV' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["QCkHZKjE", "iBOXctqC", "mAwGxwG8"], "type": "fvsBLfyr"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId '0V91PMua' \
    --body '{"subtype": ["NTJbYBld", "GlgYrE3d", "fTh8TX9T"], "type": "ku8cMkW8"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId '0UZS1KLU' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'ojBBp6oR' \
    --limit '97' \
    --name 'UzzrTytv' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'dapjBPjH' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'Rf8dKXm2' \
    --namespace $AB_NAMESPACE \
    --userId 'RMfal6qi' \
    --body '{"name": "bSVKeRhF"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'Ph6yNryY' \
    --namespace $AB_NAMESPACE \
    --userId 'AWFncpZB' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'qlxg6p1V' \
    --namespace $AB_NAMESPACE \
    --shareCode 'l7jP4pbS' \
    --userId 'TwgYtHbD' \
    --body '{"contentType": "F7xTem9O", "customAttributes": {"SdS8Bwf0": {}, "r8w2VXVr": {}, "ybUvi3TY": {}}, "fileExtension": "tN2mlo9I", "name": "55UN4B1Z", "payload": "7MUPpwGN", "preview": "Tl6CAJvS", "previewMetadata": {"previewContentType": "clXxNhEu", "previewFileExtension": "EIvfEnXY"}, "shareCode": "GkOWZhls", "subType": "cybeLTv5", "tags": ["f1TbW3PB", "ucTNIyCn", "IA2TSodW"], "type": "Qp9hBxDI", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'TaqG1Jsm' \
    --contentId 'P6ahRKQK' \
    --namespace $AB_NAMESPACE \
    --userId 'xFL3qKVN' \
    --body '{"contentType": "BnlmNGPC", "customAttributes": {"MQBkDOjG": {}, "BnJIktlc": {}, "tYGQb2tv": {}}, "fileExtension": "SqT2FHXP", "name": "oPnVYlhJ", "payload": "rtzOh5GU", "preview": "JOFEzyA3", "previewMetadata": {"previewContentType": "pyyYPnc5", "previewFileExtension": "HCGOsaXj"}, "shareCode": "FvdXRnJ0", "subType": "CrAisj6r", "tags": ["DRBvgvbI", "sFfA91qh", "Hpo5ltHq"], "type": "KbYI06Rg", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'x38ht0pW' \
    --namespace $AB_NAMESPACE \
    --shareCode 'BXVBCf3R' \
    --userId 'ZPPXXb9j' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId '2GehzTyF' \
    --contentId '9rR6O7MM' \
    --namespace $AB_NAMESPACE \
    --userId 'In2XDjQt' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId '21zNG6lc' \
    --limit '93' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'S1g30mxL' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'hiqrVrUC' \
    --namespace $AB_NAMESPACE \
    --userId 'tAFodB2G' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId '1AFxk7T2' \
    --limit '39' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'RM9rw0Zw' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'FyFfmd0y' \
    --namespace $AB_NAMESPACE \
    --userId 'V396Jad3' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'mPGMMwtm' \
    --namespace $AB_NAMESPACE \
    --userId 'qtKiBfmg' \
    --body '{"contents": ["JOWZwrPG", "CmslwPU6", "Jqy6iHZr"], "name": "dKYwaxDs"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'TWZVvSJ8' \
    --namespace $AB_NAMESPACE \
    --userId 'NPsssHYt' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'QXDnJbIl' \
    --namespace $AB_NAMESPACE \
    --userId 'rQAMz68L' \
    --limit '3' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'bf1HsbVX' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId '8aaCVYWm' \
    --namespace $AB_NAMESPACE \
    --creator 'VuvW9uOD' \
    --ishidden 'h6ZVPuik' \
    --isofficial 'Kom02FOO' \
    --limit '8' \
    --name 'OlYzL1St' \
    --offset '49' \
    --orderby 'MRrux7ct' \
    --sortby 'K3B0lLDe' \
    --subtype 'ZP4m1pYt' \
    --tags '["Ljuod52A", "Du3r08zY", "htkdLkPT"]' \
    --type 'QkVcy8Tq' \
    --userId 'Y7kapx5b' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'Kgvkd533' \
    --ishidden 'uRoyZO0y' \
    --isofficial 'cpkRC6k7' \
    --limit '72' \
    --name 'AYjnzxVl' \
    --offset '29' \
    --orderby 'mIAsMTp0' \
    --sortby 'UmnAtgGI' \
    --subtype '98m8gNaC' \
    --tags '["s4JDsxhh", "Gs7WlLX6", "eotFXOEr"]' \
    --type 'VVgwDe9G' \
    --userId '60oWs3Y5' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["5L642kfF", "6LruS8FL", "RdABFAk5"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '75' \
    --name 'FimPyS0U' \
    --offset '39' \
    --orderby 'vCo8UKSP' \
    --sortby '8X9dVGzA' \
    --subtype 'XVPQAP0f' \
    --tags '["ifkjib9x", "qILloiFM", "MoEtD8HY"]' \
    --type 'ZHgIAKSq' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["2FBbKFFp", "nVKRMoja", "xBdBf25C"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'KtCRfe5V' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'YHMwV7F6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'MOI7UYnY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'DkJlCNbl' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'OBMtaPD7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '45' \
    --orderby '9UT6XGJP' \
    --sortby 'AIizk5KK' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'yvcKfHmr' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'mvDUCojX' \
    --limit '17' \
    --name '1iZvj8jo' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 's6zkBk6S' \
    --body '{"name": "pp38LiQt"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'P9GodPUP' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'nZempjX7' \
    --namespace $AB_NAMESPACE \
    --userId 'xmD9uay5' \
    --body '{"name": "fzOVB1c8"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'NmdG8yEW' \
    --namespace $AB_NAMESPACE \
    --userId 'RIEvaR6T' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'ESm8RQQ6' \
    --namespace $AB_NAMESPACE \
    --userId 'mFvSo37A' \
    --body '{"contentType": "CTUI0qrO", "customAttributes": {"LGwZbzRU": {}, "B2Nwr7Ku": {}, "DaqaMlt8": {}}, "fileExtension": "xqIjXLZH", "name": "GOQDnmzN", "preview": "lE8hiE5N", "previewMetadata": {"previewContentType": "1OJSMGl7", "previewFileExtension": "SZyeV4tz"}, "subType": "qLkkaJVe", "tags": ["zlKJPfVb", "ze6uov0A", "ezO1kObd"], "type": "kU6ZPRdl"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'WCTES9Ob' \
    --namespace $AB_NAMESPACE \
    --shareCode 'Me2sqLeN' \
    --userId '6tKe7NA5' \
    --body '{"contentType": "hdE44PIf", "customAttributes": {"uT6ShuVf": {}, "pCDmprTF": {}, "RSzbIi2l": {}}, "fileExtension": "RxiNxIew", "name": "E8gujcOw", "payload": "2oY1mB4f", "preview": "4eXgocmf", "previewMetadata": {"previewContentType": "3ilNBmru", "previewFileExtension": "MLFGirml"}, "subType": "QdyOfUO8", "tags": ["OnkxtpvO", "suAQFkDV", "avsSFlYf"], "type": "nWNRiKHX", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'GNQNgbzB' \
    --contentId 'yaL1DaUO' \
    --namespace $AB_NAMESPACE \
    --userId 'pte5wH8E' \
    --body '{"contentType": "jha5NjlP", "customAttributes": {"WrR1X3bc": {}, "QwqdD04r": {}, "4V4560ZN": {}}, "fileExtension": "cAoDwHyI", "name": "ijhUWZer", "payload": "UmKSKdMi", "preview": "8JPedkyK", "previewMetadata": {"previewContentType": "K1HVFUi4", "previewFileExtension": "BCNV2jR1"}, "subType": "mlGUUVyP", "tags": ["futp6VbA", "h2SkPKOG", "9czbqpwL"], "type": "FxY7gXnm", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId 'MwEL9274' \
    --namespace $AB_NAMESPACE \
    --shareCode 'mpjLFd0T' \
    --userId '9xb4T6s4' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'WRQ8NB1s' \
    --contentId '8ITZx7YE' \
    --namespace $AB_NAMESPACE \
    --userId 'sE7zYIiC' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'Q7W4MfW9' \
    --contentId 's3BF2Y2I' \
    --namespace $AB_NAMESPACE \
    --userId 'V8ZBKE4u' \
    --body '{"shareCode": "8UgLXUv0"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'A9byioTu' \
    --limit '18' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId '29DpQuxu' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'ZKBSYV0q' \
    --namespace $AB_NAMESPACE \
    --userId 'aQdCdd4B' \
    --body '{"screenshots": [{"description": "M7WDR3tJ", "screenshotId": "qCSxmKxb"}, {"description": "u9uAJD1t", "screenshotId": "9cMe8tRS"}, {"description": "5Q0nm4Hq", "screenshotId": "ePruUKAh"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'MlN9gf9D' \
    --namespace $AB_NAMESPACE \
    --userId 'u2FvHZN3' \
    --body '{"screenshots": [{"contentType": "cAQx2OgN", "description": "ytBuzX1G", "fileExtension": "jfif"}, {"contentType": "15871VbC", "description": "S40Ga2BA", "fileExtension": "pjp"}, {"contentType": "QSqNYCDx", "description": "ba0tE17x", "fileExtension": "jfif"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'K2dSZG84' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'KO89aAqW' \
    --userId 'wovHUjg7' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'rnwE0VQe' \
    --body '{"followStatus": false}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId '2qAFiXyb' \
    --limit '68' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'iPrzSHka' \
    --limit '1' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'dR7vqcVV' \
    --limit '68' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId '7FC7774L' \
    --body '{"contents": ["rxShIFOP", "Wi1LrJcZ", "OkdGKEzB"], "name": "BAPIHJC2"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'TPqm3YQV' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'vFBYHzDz' \
    --namespace $AB_NAMESPACE \
    --userId '3uNGlj5I' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'cENKZATz' \
    --namespace $AB_NAMESPACE \
    --userId 'tKhEkWg8' \
    --body '{"contents": ["YZcZHwAK", "47tlmbXl", "snuhtfxC"], "name": "LvUGVSBu"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'cykljzVl' \
    --namespace $AB_NAMESPACE \
    --userId 'xhFJtFzw' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'VJi7l3O5' \
    --namespace $AB_NAMESPACE \
    --userId 'kw8szOU8' \
    --limit '21' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'ekPySZtS' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId '5r8uTTq2' \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --name 'LBuiZQcy' \
    --offset '32' \
    --sortBy 'PIjFQ1Xo' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'Ag0ri65T' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "n0LXA6kS", "customAttributes": {"c8FpKxV4": {}, "BNaBo7B5": {}, "pOqczJjX": {}}, "fileExtension": "xn9bzWhu", "name": "x26CZ4zz", "shareCode": "5LeIqC53", "subType": "smbkWiHj", "tags": ["hu2NKIfb", "UDCDuHFp", "k4LyqhBi"], "type": "0xx9DMq5"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'HVhrgBWX' \
    --contentId 'MEIYP4rM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'g7ROyU3T' \
    --contentId 'OjM0nJ4d' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"VUmQyR6x": {}, "UDonUswz": {}, "p6LY2YbT": {}}, "name": "u1VnAKx7", "shareCode": "g5nnwjw8", "subType": "qHfw5HsL", "tags": ["kRUALWIk", "mn5FjlJw", "D7pUZtXv"], "type": "fKCAZRkf"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminCopyContent
samples/cli/sample-apps Ugc adminCopyContent \
    --channelId 'CSYKerDl' \
    --contentId 'CGyL85qW' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"W98mSsAC": {}, "7sJMsgzE": {}, "khmZeGHY": {}}, "name": "AUdQVj9d", "subType": "p42yK96s", "tags": ["PW5pB3ij", "3MSldyXg", "lRbsTfe0"], "targetChannelId": "H5DtMPXI", "type": "9kEqB8og"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminCopyContent' test.out

#- 107 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'UmvBMuZy' \
    --contentId 'o5c2QHYA' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "97NXsQZw", "fileLocation": "ocsBc78V"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminUpdateOfficialContentFileLocation' test.out

#- 108 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'TfomMgcR' \
    --contentId 'D1bp5iwq' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "yCKF8zeV", "fileExtension": "uQtTA5vm"}' \
    > test.out 2>&1
eval_tap $? 108 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 109 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 109 'AdminGetConfigs' test.out

#- 110 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key 'tHhfg6OL' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "E18NqFgX"}' \
    > test.out 2>&1
eval_tap $? 110 'AdminUpdateConfig' test.out

#- 111 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '25' \
    --name 'Rv7NgT02' \
    --offset '40' \
    --sortBy 'eqVryqzr' \
    --subType 'uxieV4bO' \
    --tags '["YOg8Fxnj", "tgxo1LN2", "7UVbklGQ"]' \
    --type 'TcqaqX8V' \
    > test.out 2>&1
eval_tap $? 111 'AdminListContentV2' test.out

#- 112 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["9DvbycTD", "n4XZV4Z3", "fJgvUnPP"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminBulkGetContentByIDsV2' test.out

#- 113 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["v46tRtTk", "UHfCwJcJ", "28iOCauc"]}' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentBulkByShareCodesV2' test.out

#- 114 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode '4xXye74F' \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByShareCodeV2' test.out

#- 115 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId '7VRRwxnF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'AdminGetContentByContentIDV2' test.out

#- 116 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId '9xoFamhf' \
    --namespace $AB_NAMESPACE \
    --versionId 'pUqIejvd' \
    > test.out 2>&1
eval_tap $? 116 'RollbackContentVersionV2' test.out

#- 117 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'sXEOkPDV' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "0gNfLmDk", "screenshotId": "49efivsD"}, {"description": "S3Gcqhrd", "screenshotId": "hJYM98dg"}, {"description": "XMXPogmB", "screenshotId": "QKr8wjVj"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateScreenshotsV2' test.out

#- 118 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId '84tTM8tI' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "7GLPDYDI", "description": "H9WDhlUY", "fileExtension": "png"}, {"contentType": "ft3ZwaIx", "description": "l1zBnlGM", "fileExtension": "jpeg"}, {"contentType": "JHdnvRkE", "description": "614QyD9o", "fileExtension": "png"}]}' \
    > test.out 2>&1
eval_tap $? 118 'AdminUploadContentScreenshotV2' test.out

#- 119 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'TG5WplEo' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'UZC0bTSU' \
    > test.out 2>&1
eval_tap $? 119 'AdminDeleteContentScreenshotV2' test.out

#- 120 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'FmesuydO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 120 'ListContentVersionsV2' test.out

#- 121 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'qjqleSgz' \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 121 'AdminGetOfficialGroupContentsV2' test.out

#- 122 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '68' \
    --sortBy 'ySwiSRHb' \
    --status 'AZYMF8to' \
    > test.out 2>&1
eval_tap $? 122 'AdminListStagingContents' test.out

#- 123 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId 'j4d5MoZc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminGetStagingContentByID' test.out

#- 124 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId '29daRnFA' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": false, "note": "pZOfm5Eq"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminApproveStagingContent' test.out

#- 125 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'wWgsOc87' \
    --namespace $AB_NAMESPACE \
    --shareCode 'sSbaC667' \
    --userId 'qU2AOKxo' \
    --body '{"customAttributes": {"DheslQM3": {}, "js8xsndj": {}, "3nR2tEiB": {}}, "name": "PFG0bO4D", "shareCode": "FWNgaqWD", "subType": "5qRPL3XG", "tags": ["0ttfiHpb", "8vbBxSWY", "Kzrh9cOX"], "type": "mgRDPmNM"}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateContentByShareCodeV2' test.out

#- 126 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'HOG72t9v' \
    --namespace $AB_NAMESPACE \
    --shareCode 'Sw9vcRJh' \
    --userId 'v5OS2vO6' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteContentByShareCodeV2' test.out

#- 127 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'KATw37Vn' \
    --contentId 'mqV6n7EF' \
    --namespace $AB_NAMESPACE \
    --userId 'lU80iqGv' \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteUserContentV2' test.out

#- 128 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId '9EZVTzbS' \
    --contentId 'JgbGp9eq' \
    --namespace $AB_NAMESPACE \
    --userId 'kuznYkwY' \
    --body '{"customAttributes": {"6evu5jtR": {}, "4mtb9LJw": {}, "SkcoEhGQ": {}}, "name": "cDuRwivM", "shareCode": "plAZyb4C", "subType": "8S5D6Dap", "tags": ["CzXnFhCt", "Qq7AzyiX", "Pu67L2LH"], "type": "ifEJu7jW"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentV2' test.out

#- 129 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'Cr87OwZG' \
    --contentId 'zTeAVLDi' \
    --namespace $AB_NAMESPACE \
    --userId 'p4xCHaWn' \
    --body '{"fileExtension": "PKCyoy1G", "fileLocation": "k2afzgjf"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateUserContentFileLocation' test.out

#- 130 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'pFwbG8PB' \
    --contentId 'xfge1Pty' \
    --namespace $AB_NAMESPACE \
    --userId 'BKYzwKDn' \
    --body '{"contentType": "zKHnkKbo", "fileExtension": "kBfsoNRE"}' \
    > test.out 2>&1
eval_tap $? 130 'AdminGenerateUserContentUploadURLV2' test.out

#- 131 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'j887iq3Q' \
    --limit '6' \
    --offset '56' \
    --sortBy 'vSnBAiuA' \
    > test.out 2>&1
eval_tap $? 131 'AdminGetContentByUserIDV2' test.out

#- 132 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'T2DwXeGa' \
    --namespace $AB_NAMESPACE \
    --userId 'B5kW1sxD' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 132 'AdminUpdateContentHideStatusV2' test.out

#- 133 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'yRXxSWOE' \
    --namespace $AB_NAMESPACE \
    --userId '26eq7Gjh' \
    --limit '82' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 133 'AdminGetUserGroupContentsV2' test.out

#- 134 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'h7EEBOUz' \
    --limit '14' \
    --offset '28' \
    --sortBy 'oyFO13Xq' \
    --status 'RZaVf1vp' \
    > test.out 2>&1
eval_tap $? 134 'AdminListUserStagingContents' test.out

#- 135 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'ohVr5XOv' \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --name 'ULMaxhta' \
    --offset '30' \
    --sortBy 'vYBJCgpH' \
    > test.out 2>&1
eval_tap $? 135 'PublicGetContentByChannelIDV2' test.out

#- 136 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '8' \
    --name 'nVSq6Y9b' \
    --offset '56' \
    --sortBy 'gRPQqS0l' \
    --subType '4VDw2PyY' \
    --tags '["ZwvLWomz", "IzHclKzL", "1tKkPttC"]' \
    --type 'qGiiT49c' \
    > test.out 2>&1
eval_tap $? 136 'PublicListContentV2' test.out

#- 137 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["LcJEi9Sh", "mzKWQ74Q", "T1NRwvva"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicBulkGetContentByIDV2' test.out

#- 138 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["Xzn8VzGf", "skD6Dc2v", "WDKP5LxR"]}' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentBulkByShareCodesV2' test.out

#- 139 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'RKAhzBZU' \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByShareCodeV2' test.out

#- 140 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'A8Q2knaI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicGetContentByIDV2' test.out

#- 141 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'b9OkQYpO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 141 'PublicAddDownloadCountV2' test.out

#- 142 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId '7QkAjs3K' \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '14' \
    --sortBy '00QpYWpC' \
    --userId 'ICWdGjRG' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentDownloaderV2' test.out

#- 143 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId '5SzkWtf4' \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '13' \
    --sortBy 'WIB8CSTG' \
    > test.out 2>&1
eval_tap $? 143 'PublicListContentLikeV2' test.out

#- 144 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId 'kyYKIez8' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateContentLikeStatusV2' test.out

#- 145 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'PwW33T8N' \
    --namespace $AB_NAMESPACE \
    --userId 'Sh2jRuhF' \
    --body '{"contentType": "Q2t7bvXw", "customAttributes": {"wtF1kYO2": {}, "6PioemuO": {}, "t4c0j4BJ": {}}, "fileExtension": "oj097XFa", "name": "hKOHohlV", "subType": "ZzKayWYU", "tags": ["xsZOOvVS", "XbytPoJ7", "IdqhoJdi"], "type": "TJY0mLI6"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicCreateContentV2' test.out

#- 146 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'hsa3wfvK' \
    --namespace $AB_NAMESPACE \
    --shareCode 'iXncHWIO' \
    --userId '3EOav9j0' \
    --body '{"customAttributes": {"jqNaNUQt": {}, "rmzsVuqn": {}, "ihd0D77I": {}}, "name": "5pTLTi5u", "subType": "VEAuhdHK", "tags": ["6irdkwpf", "TXtLmOB8", "Z324gHDh"], "type": "IsB3CNOz"}' \
    > test.out 2>&1
eval_tap $? 146 'PublicUpdateContentByShareCodeV2' test.out

#- 147 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'KqsZ2BU8' \
    --namespace $AB_NAMESPACE \
    --shareCode 'k9i9tWKF' \
    --userId 'bFNxleP4' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentByShareCodeV2' test.out

#- 148 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'R12aAHwh' \
    --contentId 'Tqpjiq3N' \
    --namespace $AB_NAMESPACE \
    --userId '9ln09rCi' \
    > test.out 2>&1
eval_tap $? 148 'PublicDeleteContentV2' test.out

#- 149 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'sUu6sCLe' \
    --contentId '4fwuerTt' \
    --namespace $AB_NAMESPACE \
    --userId '08ZuQ5S4' \
    --body '{"customAttributes": {"fD53peFq": {}, "Pd2aGio1": {}, "nDJY7EJR": {}}, "name": "5rJmozJE", "subType": "bLVzQt55", "tags": ["KIX3bYXF", "srONfPTN", "6fGMuuA9"], "type": "BYHMEWHo"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentV2' test.out

#- 150 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'RIui6rv2' \
    --contentId 'j1Hha0lS' \
    --namespace $AB_NAMESPACE \
    --userId 'NsHE5ZzE' \
    --body '{"fileExtension": "Bet4Mo9L", "fileLocation": "otgCdbxV"}' \
    > test.out 2>&1
eval_tap $? 150 'PublicUpdateContentFileLocation' test.out

#- 151 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'itc0FpF4' \
    --contentId 'xovOaSEq' \
    --namespace $AB_NAMESPACE \
    --userId 'toWq5F3E' \
    --body '{"shareCode": "oVQaobgV"}' \
    > test.out 2>&1
eval_tap $? 151 'UpdateContentShareCodeV2' test.out

#- 152 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'zpr1lVF8' \
    --contentId '89XeOvNP' \
    --namespace $AB_NAMESPACE \
    --userId '5kUQNhen' \
    --body '{"contentType": "8KkDuRA8", "fileExtension": "ZIyBqgXh"}' \
    > test.out 2>&1
eval_tap $? 152 'PublicGenerateContentUploadURLV2' test.out

#- 153 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'XtsoIE7S' \
    --limit '94' \
    --offset '57' \
    --sortBy 'WhnG5gIq' \
    > test.out 2>&1
eval_tap $? 153 'PublicGetContentByUserIDV2' test.out

#- 154 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'ISUy67vd' \
    --namespace $AB_NAMESPACE \
    --userId '723hcXlp' \
    --body '{"screenshots": [{"description": "0bGw0Eb1", "screenshotId": "662CGlki"}, {"description": "0L4Gpxnn", "screenshotId": "kuelBVf9"}, {"description": "Yp2XIV9a", "screenshotId": "xjpSK1S6"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UpdateScreenshotsV2' test.out

#- 155 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'dpiab8YM' \
    --namespace $AB_NAMESPACE \
    --userId 'pyY9a2fc' \
    --body '{"screenshots": [{"contentType": "uT8pcKkT", "description": "YLDgNdv6", "fileExtension": "pjp"}, {"contentType": "JPf4yH0z", "description": "JctZNkeJ", "fileExtension": "jfif"}, {"contentType": "Du5MYbBq", "description": "fslzU6kb", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 155 'UploadContentScreenshotV2' test.out

#- 156 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'sEvgnIyM' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'jqY71Sf1' \
    --userId 'tBrp9nJK' \
    > test.out 2>&1
eval_tap $? 156 'DeleteContentScreenshotV2' test.out

#- 157 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'v4eNtqw7' \
    --namespace $AB_NAMESPACE \
    --userId '93UhTiUb' \
    --limit '18' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 157 'PublicGetGroupContentsV2' test.out

#- 158 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'UYD3NVYf' \
    --limit '48' \
    --offset '77' \
    --sortBy '0XoIjppY' \
    --status 'Mnrnrdm2' \
    > test.out 2>&1
eval_tap $? 158 'ListUserStagingContents' test.out

#- 159 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId 'UjFnZAvj' \
    --namespace $AB_NAMESPACE \
    --userId 'ISwzteB9' \
    > test.out 2>&1
eval_tap $? 159 'GetUserStagingContentByID' test.out

#- 160 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId 'QcquZqec' \
    --namespace $AB_NAMESPACE \
    --userId 'NThZMrbK' \
    --body '{"fileExtension": "mpIfO2xD", "fileLocation": "ttmp5Bla"}' \
    > test.out 2>&1
eval_tap $? 160 'UpdateStagingContent' test.out

#- 161 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId 'T97zTIXN' \
    --namespace $AB_NAMESPACE \
    --userId 'swP2IRKg' \
    > test.out 2>&1
eval_tap $? 161 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE