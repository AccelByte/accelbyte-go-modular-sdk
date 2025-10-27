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
    --limit '83' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "5JsyZEPl", "name": "6qOQGEcx"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'tqGHcmf0' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "PlAwEczy"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'wfm0rncE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'PhSCKRde' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "MdX3ZDGH", "customAttributes": {"pPGEe1Ax": {}, "Kgm34afk": {}, "7KwMfED7": {}}, "fileExtension": "py26sTzJ", "name": "KRL6ZDJd", "preview": "WLRM58VG", "previewMetadata": {"previewContentType": "EL1B4gcu", "previewFileExtension": "lfbE28Zb"}, "shareCode": "aTcAJogk", "subType": "lcEwd6B5", "tags": ["igxEY8U4", "3EZsB9LL", "MY0mZqda"], "type": "Ca81rBiu"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'OkjC3zUx' \
    --contentId 'jnbUHKfr' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "3ptJjW8I", "customAttributes": {"uho1Kxiy": {}, "QRFofy9S": {}, "k99eV3cF": {}}, "fileExtension": "8z5K0Sdy", "name": "CsJoCJG9", "payload": "b5N3nZqE", "preview": "V7jHx5Dq", "previewMetadata": {"previewContentType": "ytksFwpD", "previewFileExtension": "GNmaIT7c"}, "shareCode": "0qYkoD4j", "subType": "YKv3aigV", "tags": ["L6Y6VnCg", "7bRmQi23", "KHqgj7kU"], "type": "QVh8F7t5", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'oQMGrS8v' \
    --namespace $AB_NAMESPACE \
    --creator 'ARAMcaaR' \
    --ishidden 'XPnwxp4y' \
    --isofficial 'C2QaHGLA' \
    --limit '81' \
    --name 'wUWlzh7a' \
    --offset '12' \
    --orderby '4XkyynHT' \
    --sortby 'svYN1Zg0' \
    --subtype 'PfJOtZ6C' \
    --tags '["Sviq1AIt", "7DM3ZTzg", "ykMlZjJK"]' \
    --type 'tJMPOAML' \
    --userId 'w7ZnD6ap' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'qqrbcpJs' \
    --contentId 'cCElsfiY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["O3Dvtgxv", "ZTRtFzmK", "S2KTV7hG"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'qI73xcFK' \
    --ishidden 'GSsV3Kts' \
    --isofficial 'u9mIph1p' \
    --limit '45' \
    --name 'kR7fsTsM' \
    --offset '68' \
    --orderby 'S6cfW7tR' \
    --sortby '5ZhVmT3j' \
    --subtype 'u5CtmAEF' \
    --tags '["vfqMuCbx", "6KdzU3b5", "ZFEQywla"]' \
    --type 'UPhsqTWj' \
    --userId 'bfaFyCoG' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetContentBulkByShareCodes
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["BEuj3iyf", "Jwm0J9L8", "VEiC6YZJ"]}' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetContentBulkByShareCodes' test.out

#- 16 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode '5MLE2WgM' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserContentByShareCode' test.out

#- 17 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId '4DWXDaKX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetSpecificContent' test.out

#- 18 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'W0AjFFkD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDownloadContentPreview' test.out

#- 19 RollbackContentVersion
samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'vTZice4P' \
    --namespace $AB_NAMESPACE \
    --versionId 'ZnrERFcP' \
    > test.out 2>&1
eval_tap $? 19 'RollbackContentVersion' test.out

#- 20 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'faDQGaUb' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "aGe40kWt", "screenshotId": "yncaqMkL"}, {"description": "EkZrGzzh", "screenshotId": "W5dO59ZZ"}, {"description": "kBGDRl4e", "screenshotId": "kWN0WpGj"}]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateScreenshots' test.out

#- 21 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'QzqSbjuI' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "q7P4q4y2", "description": "qrNFduun", "fileExtension": "png"}, {"contentType": "FzUqkgiO", "description": "Zz70jIoM", "fileExtension": "bmp"}, {"contentType": "BWRdzZvV", "description": "qcYda0ka", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUploadContentScreenshot' test.out

#- 22 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'mqESBpg1' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'V9TRkesC' \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteContentScreenshot' test.out

#- 23 ListContentVersions
samples/cli/sample-apps Ugc listContentVersions \
    --contentId '18RW94Al' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'ListContentVersions' test.out

#- 24 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetAllGroups' test.out

#- 25 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["4ny23Xg1", "9Rm3Re29", "I2qtnmsC"], "name": "Byjw7NBY"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminCreateGroup' test.out

#- 26 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'Qg3z2Y1R' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroup' test.out

#- 27 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'qhcwxYjG' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["sE8lkj8X", "RfyR5lNl", "ymgQQjAF"], "name": "bZhy1O5x"}' \
    > test.out 2>&1
eval_tap $? 27 'SingleAdminUpdateGroup' test.out

#- 28 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'pJL6RrzK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'SingleAdminDeleteGroup' test.out

#- 29 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'dsHkmejF' \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 29 'SingleAdminGetGroupContents' test.out

#- 30 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetTag' test.out

#- 31 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "kK1qs9BH"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateTag' test.out

#- 32 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'ZmIuhS9E' \
    --body '{"tag": "kMX7N1eY"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateTag' test.out

#- 33 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'dNzjp7vn' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteTag' test.out

#- 34 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetType' test.out

#- 35 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["iAHkVFbh", "O8Zz8418", "t4xHFvUZ"], "type": "5rP0NsrU"}' \
    > test.out 2>&1
eval_tap $? 35 'AdminCreateType' test.out

#- 36 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'NIqOvqqO' \
    --body '{"subtype": ["8FRB0Tqh", "xPf5vksI", "C6hpFRDT"], "type": "MIihYGLB"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateType' test.out

#- 37 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'KJ6dxdzf' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteType' test.out

#- 38 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId '7LISx0FO' \
    --limit '57' \
    --name 'qNUIbcHX' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetChannel' test.out

#- 39 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'zfjBlik0' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAllUserChannels' test.out

#- 40 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'eHauylkS' \
    --namespace $AB_NAMESPACE \
    --userId '1cbFqV3t' \
    --body '{"name": "6kz3kG2P"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateChannel' test.out

#- 41 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId '7lN7wDU5' \
    --namespace $AB_NAMESPACE \
    --userId 'W6uYyHPh' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteChannel' test.out

#- 42 AdminUpdateContentS3ByShareCode
samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'C5izkyE1' \
    --namespace $AB_NAMESPACE \
    --shareCode 'qnoth8QB' \
    --userId 'T4qJnwA6' \
    --body '{"contentType": "VYm7HWlh", "customAttributes": {"oLzy3gmJ": {}, "OHSGoH57": {}, "YrzfMJK2": {}}, "fileExtension": "RWcyG86l", "name": "EfzpI40f", "payload": "yLiy2Hfu", "preview": "Tins3ucZ", "previewMetadata": {"previewContentType": "B85aH1wD", "previewFileExtension": "emGDdb1w"}, "shareCode": "4ld6SVGU", "subType": "MpuhXN09", "tags": ["a5HCsYhT", "8OGoXu19", "PSN3NOoW"], "type": "pdL6WjUX", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateContentS3ByShareCode' test.out

#- 43 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId '4tufQJl9' \
    --contentId 'dkgu6Xl1' \
    --namespace $AB_NAMESPACE \
    --userId 'En69pSus' \
    --body '{"contentType": "pqYVJ3Oq", "customAttributes": {"u2ruPfJy": {}, "P7TXA3N3": {}, "7YEbSxiJ": {}}, "fileExtension": "BxUsg5It", "name": "gfUsF1Fi", "payload": "TbVjXuXT", "preview": "1ZXGpSE2", "previewMetadata": {"previewContentType": "HDnhd8i3", "previewFileExtension": "CiW4pnyW"}, "shareCode": "btCFlG2i", "subType": "7CkDC1oT", "tags": ["SN9c0LXv", "45DyyVye", "nKaMVimm"], "type": "sDipYYKL", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdateContentS3' test.out

#- 44 DeleteContentByShareCode
samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'ztwZusZp' \
    --namespace $AB_NAMESPACE \
    --shareCode 'zgXnFTjq' \
    --userId 'zvN8nFiy' \
    > test.out 2>&1
eval_tap $? 44 'DeleteContentByShareCode' test.out

#- 45 AdminUpdateContentDirect
eval_tap 0 45 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 46 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'wEJZtT8s' \
    --contentId '5yMW6CkR' \
    --namespace $AB_NAMESPACE \
    --userId 'feCDNZR9' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteContent' test.out

#- 47 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId '4Bu1YW2p' \
    --limit '50' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetContent' test.out

#- 48 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'uQhweP5k' \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteAllUserContents' test.out

#- 49 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId '9ddEhg0V' \
    --namespace $AB_NAMESPACE \
    --userId 'kiNQebRI' \
    --body '{"isHidden": true}' \
    > test.out 2>&1
eval_tap $? 49 'AdminHideUserContent' test.out

#- 50 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'KLW6DG8w' \
    --limit '59' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllGroups' test.out

#- 51 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'BXquiw83' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserGroup' test.out

#- 52 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'WB8xcf46' \
    --namespace $AB_NAMESPACE \
    --userId 'Y6GE1lqd' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetGroup' test.out

#- 53 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'KNISPn0Z' \
    --namespace $AB_NAMESPACE \
    --userId 'znWTeilV' \
    --body '{"contents": ["lHpDfS0o", "WjfR12y2", "gSukkMVZ"], "name": "NwZJLsP8"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminUpdateGroup' test.out

#- 54 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'H55E4ikA' \
    --namespace $AB_NAMESPACE \
    --userId 'HQzjAJLu' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteGroup' test.out

#- 55 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'EMPN9Fws' \
    --namespace $AB_NAMESPACE \
    --userId 'kIsS84Lx' \
    --limit '47' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetGroupContents' test.out

#- 56 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'EnfUQcUe' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeleteAllUserStates' test.out

#- 57 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'jj6G7Pp1' \
    --namespace $AB_NAMESPACE \
    --creator 'GlqdydXy' \
    --ishidden 'bdsmNmaX' \
    --isofficial 'ozdoxHaK' \
    --limit '19' \
    --name 'Di8Jy5KF' \
    --offset '45' \
    --orderby '4ecQdPz9' \
    --sortby 'gacAFYsH' \
    --subtype 'UzQaoMWo' \
    --tags '["dCW9S7Di", "kDc1Nude", "Gpsas9eA"]' \
    --type 'E3VE9yPy' \
    --userId 'iU4ooY1W' \
    > test.out 2>&1
eval_tap $? 57 'SearchChannelSpecificContent' test.out

#- 58 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'Kb28nyIx' \
    --ishidden '7ki7XJBb' \
    --isofficial 'NyxmVCf6' \
    --limit '87' \
    --name 'HTfERNUZ' \
    --offset '2' \
    --orderby 'MkBhWTQY' \
    --sortby 'Tt0PlwiS' \
    --subtype 'LVTeSJyw' \
    --tags '["7u7ZAR3I", "AgENafv5", "P3OmrVht"]' \
    --type 'OEBY5tL2' \
    --userId '8gD6hcpd' \
    > test.out 2>&1
eval_tap $? 58 'PublicSearchContent' test.out

#- 59 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["BViiXtzd", "D6BUctNj", "logOMOio"]}' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetContentBulk' test.out

#- 60 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 60 'GetFollowedContent' test.out

#- 61 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '30' \
    --name 'bvLSrVt1' \
    --offset '9' \
    --orderby 'cbbmm6YD' \
    --sortby 'Ixo6Vpks' \
    --subtype '5ujacUnG' \
    --tags '["qKRH2gzN", "fmMTj1I6", "tve7zYmC"]' \
    --type 'hYhOTsF8' \
    > test.out 2>&1
eval_tap $? 61 'GetLikedContent' test.out

#- 62 PublicGetContentBulkByShareCodes
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["o4GIHuU1", "mvdmmQJn", "kuEVxJW9"]}' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetContentBulkByShareCodes' test.out

#- 63 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'QNJrxLvW' \
    > test.out 2>&1
eval_tap $? 63 'PublicDownloadContentByShareCode' test.out

#- 64 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId '1Smh9Lsr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDownloadContentByContentID' test.out

#- 65 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'KHvGdmq5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AddDownloadCount' test.out

#- 66 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'REIzjuRU' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 66 'UpdateContentLikeStatus' test.out

#- 67 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'QfcX2a2o' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'PublicDownloadContentPreview' test.out

#- 68 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 68 'GetTag' test.out

#- 69 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 69 'GetType' test.out

#- 70 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '95' \
    --orderby '4jct3a2F' \
    --sortby '3q5G5SBL' \
    > test.out 2>&1
eval_tap $? 70 'PublicSearchCreator' test.out

#- 71 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 71 'GetFollowedUsers' test.out

#- 72 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'z8nmU2IH' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetCreator' test.out

#- 73 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'dPFO688K' \
    --limit '66' \
    --name 'NW0zCEVE' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 73 'GetChannels' test.out

#- 74 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'YepC9Ws3' \
    --body '{"name": "F43Z4XWA"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateChannel' test.out

#- 75 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId '5NiwxBV9' \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserChannel' test.out

#- 76 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'yVcXU88T' \
    --namespace $AB_NAMESPACE \
    --userId '06DUjVKt' \
    --body '{"name": "OdFrlDZS"}' \
    > test.out 2>&1
eval_tap $? 76 'UpdateChannel' test.out

#- 77 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'XmdhmtNp' \
    --namespace $AB_NAMESPACE \
    --userId 't25P3DpJ' \
    > test.out 2>&1
eval_tap $? 77 'DeleteChannel' test.out

#- 78 CreateContentDirect
eval_tap 0 78 'CreateContentDirect # SKIP deprecated' test.out

#- 79 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'SJSHGuTn' \
    --namespace $AB_NAMESPACE \
    --userId '1OmvlzYP' \
    --body '{"contentType": "qL9XeZX1", "customAttributes": {"rLor3Mz5": {}, "P7BxMBAW": {}, "6ahft7nH": {}}, "fileExtension": "MR2kOzak", "name": "e4AASbwM", "preview": "v4Rcqzxu", "previewMetadata": {"previewContentType": "dLNt4UEn", "previewFileExtension": "nrQpcObQ"}, "subType": "xg6u7DZX", "tags": ["Hz4fYcJW", "WVL0rYOj", "AsEDb6w9"], "type": "UFg11hj6"}' \
    > test.out 2>&1
eval_tap $? 79 'CreateContentS3' test.out

#- 80 PublicUpdateContentByShareCode
samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'Jv4wAlwI' \
    --namespace $AB_NAMESPACE \
    --shareCode 'IjjbxNdh' \
    --userId 'DsACxdGn' \
    --body '{"contentType": "yQnYBTii", "customAttributes": {"H5KefmAg": {}, "5DRDkqx6": {}, "CHXHUk68": {}}, "fileExtension": "2gp7atxB", "name": "5Dg3u8LU", "payload": "pF0V8FoT", "preview": "4qvzlnfF", "previewMetadata": {"previewContentType": "6hkRNTgi", "previewFileExtension": "hrKmEo8x"}, "subType": "LcSNlEpr", "tags": ["jHdd9b3q", "F0hXpfWP", "ywMFoqh0"], "type": "EVlXCE1M", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateContentByShareCode' test.out

#- 81 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'r2KePNxW' \
    --contentId 'C6Oa2dal' \
    --namespace $AB_NAMESPACE \
    --userId 'qoLDX1G9' \
    --body '{"contentType": "IcyGrG9Q", "customAttributes": {"o5ecOj3v": {}, "oV7KwjIl": {}, "y5rZEE9c": {}}, "fileExtension": "BDVNmlKZ", "name": "Xq1G00Vi", "payload": "qQeB1QRT", "preview": "M5incA6G", "previewMetadata": {"previewContentType": "5PLDMX80", "previewFileExtension": "EheHkOvx"}, "subType": "B6XEzewz", "tags": ["8KfiKwM5", "Q0tLOfVe", "ThaovpUu"], "type": "BrG2W3XH", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 81 'UpdateContentS3' test.out

#- 82 PublicDeleteContentByShareCode
samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId '9wKRqZVi' \
    --namespace $AB_NAMESPACE \
    --shareCode 'l9mNLWXC' \
    --userId 'wyEGnKSq' \
    > test.out 2>&1
eval_tap $? 82 'PublicDeleteContentByShareCode' test.out

#- 83 UpdateContentDirect
eval_tap 0 83 'UpdateContentDirect # SKIP deprecated' test.out

#- 84 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId '6otitufS' \
    --contentId 'WuxYpWSr' \
    --namespace $AB_NAMESPACE \
    --userId '9YzcLuGm' \
    > test.out 2>&1
eval_tap $? 84 'DeleteContent' test.out

#- 85 UpdateContentShareCode
samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId '39eX6Jf4' \
    --contentId 'Gath1Qgh' \
    --namespace $AB_NAMESPACE \
    --userId 'ZO6cDSaH' \
    --body '{"shareCode": "Q6Skwuq1"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateContentShareCode' test.out

#- 86 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'rvW0WD08' \
    --limit '61' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 86 'PublicGetUserContent' test.out

#- 87 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'G2VSlndJ' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserContents' test.out

#- 88 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId '1g3jtxof' \
    --namespace $AB_NAMESPACE \
    --userId 'ha8YoxNH' \
    --body '{"screenshots": [{"description": "xZS7ESCa", "screenshotId": "7XMONpHW"}, {"description": "QO7Vn4Kp", "screenshotId": "YBGFVyF9"}, {"description": "4KWrsOnY", "screenshotId": "pB8Sx05h"}]}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateScreenshots' test.out

#- 89 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'GlrnJzdc' \
    --namespace $AB_NAMESPACE \
    --userId '1rG3ylXU' \
    --body '{"screenshots": [{"contentType": "rHNZY9HZ", "description": "7B0uao1W", "fileExtension": "pjp"}, {"contentType": "OEHGeZ2d", "description": "DngEj4Zw", "fileExtension": "bmp"}, {"contentType": "ppYkWLlt", "description": "Po0US2a3", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 89 'UploadContentScreenshot' test.out

#- 90 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'UwXOeMNE' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'pdfOLhxP' \
    --userId 'tZFcNN8n' \
    > test.out 2>&1
eval_tap $? 90 'DeleteContentScreenshot' test.out

#- 91 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'g2kkmGzs' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserFollowStatus' test.out

#- 92 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'l2SrPqxA' \
    --limit '52' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 92 'GetPublicFollowers' test.out

#- 93 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'uJKNLYN9' \
    --limit '34' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 93 'GetPublicFollowing' test.out

#- 94 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'J0f5cFcC' \
    --limit '56' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 94 'GetGroups' test.out

#- 95 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId 'Hc2FvBZN' \
    --body '{"contents": ["XWRHfOnF", "q1KvAGsZ", "Yv5BMGFG"], "name": "vVOLBM7r"}' \
    > test.out 2>&1
eval_tap $? 95 'CreateGroup' test.out

#- 96 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'Ch9w6jR0' \
    > test.out 2>&1
eval_tap $? 96 'DeleteAllUserGroup' test.out

#- 97 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'gaUqEV7q' \
    --namespace $AB_NAMESPACE \
    --userId 'FRNYrM6I' \
    > test.out 2>&1
eval_tap $? 97 'GetGroup' test.out

#- 98 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'OQrDX7PW' \
    --namespace $AB_NAMESPACE \
    --userId 'qQ20n0CY' \
    --body '{"contents": ["XBk7sVm8", "t5vXQ8Ni", "t3ATXdXS"], "name": "NbykCKAv"}' \
    > test.out 2>&1
eval_tap $? 98 'UpdateGroup' test.out

#- 99 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'gvbjElkv' \
    --namespace $AB_NAMESPACE \
    --userId 'KpuCYAn0' \
    > test.out 2>&1
eval_tap $? 99 'DeleteGroup' test.out

#- 100 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId '9ncKHbcq' \
    --namespace $AB_NAMESPACE \
    --userId 'sjCORaUn' \
    --limit '65' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 100 'GetGroupContent' test.out

#- 101 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'wyTQgoCx' \
    > test.out 2>&1
eval_tap $? 101 'DeleteAllUserStates' test.out

#- 102 AdminGetContentByChannelIDV2
samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'em5wRH0G' \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --name 'lO8Itbg9' \
    --offset '61' \
    --sortBy 'sGasTmQt' \
    > test.out 2>&1
eval_tap $? 102 'AdminGetContentByChannelIDV2' test.out

#- 103 AdminCreateContentV2
samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'SJRK0m0M' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "CQa4x4It", "customAttributes": {"sqQ6P1eO": {}, "e6ATiWe7": {}, "EvgDlVJe": {}}, "fileExtension": "qhnZ9LlJ", "name": "7iGayj2L", "shareCode": "0ZP26xyR", "subType": "7ueAufqa", "tags": ["ZQJ7P9wb", "vF0uOOdQ", "gSLcNoty"], "type": "t4tafeeW"}' \
    > test.out 2>&1
eval_tap $? 103 'AdminCreateContentV2' test.out

#- 104 AdminDeleteOfficialContentV2
samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'QXZrcLXd' \
    --contentId 'N5DB4rbf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 104 'AdminDeleteOfficialContentV2' test.out

#- 105 AdminUpdateOfficialContentV2
samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'pHeGOwji' \
    --contentId 'iBBWscVj' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"QJOAONeX": {}, "BSgJRwNU": {}, "0lwICbMr": {}}, "name": "8D7bACEQ", "shareCode": "LIGnH3Pk", "subType": "296PL0FM", "tags": ["GWmiLv0Y", "InY75BcH", "5bGFen4a"], "type": "jLjCdULt"}' \
    > test.out 2>&1
eval_tap $? 105 'AdminUpdateOfficialContentV2' test.out

#- 106 AdminCopyContent
samples/cli/sample-apps Ugc adminCopyContent \
    --channelId 'Qvlof5Bx' \
    --contentId 'pQdcFoOM' \
    --namespace $AB_NAMESPACE \
    --body '{"customAttributes": {"oRQo9AjZ": {}, "FnIIT5NF": {}, "6TcUvK6t": {}}, "name": "qf3uHKXu", "subType": "wUSnsD95", "tags": ["PCtn01tc", "8iqPReSs", "YJRJfpaY"], "targetChannelId": "mu25Ze8W", "type": "WI3nE9nS"}' \
    > test.out 2>&1
eval_tap $? 106 'AdminCopyContent' test.out

#- 107 AdminUpdateOfficialContentFileLocation
samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'usC3utgR' \
    --contentId 'qFGOFR92' \
    --namespace $AB_NAMESPACE \
    --body '{"fileExtension": "Yatrv4dA", "fileLocation": "YzyDv0lL"}' \
    > test.out 2>&1
eval_tap $? 107 'AdminUpdateOfficialContentFileLocation' test.out

#- 108 AdminGenerateOfficialContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'JR920CQy' \
    --contentId '2YVnZwjn' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "52hITOEE", "fileExtension": "VValKyyb"}' \
    > test.out 2>&1
eval_tap $? 108 'AdminGenerateOfficialContentUploadURLV2' test.out

#- 109 AdminGetConfigs
samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 109 'AdminGetConfigs' test.out

#- 110 AdminUpdateConfig
samples/cli/sample-apps Ugc adminUpdateConfig \
    --key 'oi9HqowS' \
    --namespace $AB_NAMESPACE \
    --body '{"value": "fZlBSuPp"}' \
    > test.out 2>&1
eval_tap $? 110 'AdminUpdateConfig' test.out

#- 111 AdminListContentV2
samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'true' \
    --limit '93' \
    --name 'qB6jC8DZ' \
    --offset '89' \
    --sortBy 'zqOcAUnD' \
    --subType 'TyerlsQf' \
    --tags '["fSAFsglx", "0pWjcb1A", "yXnThRPw"]' \
    --type '2FZlsW6b' \
    > test.out 2>&1
eval_tap $? 111 'AdminListContentV2' test.out

#- 112 AdminBulkGetContentByIDsV2
samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["kcwoDW80", "laFEpL7n", "Zq4mIxnx"]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminBulkGetContentByIDsV2' test.out

#- 113 AdminGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["ex8GPpLO", "IeX8glRQ", "QHRazDVS"]}' \
    > test.out 2>&1
eval_tap $? 113 'AdminGetContentBulkByShareCodesV2' test.out

#- 114 AdminGetContentByShareCodeV2
samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 'kAS0yw2F' \
    > test.out 2>&1
eval_tap $? 114 'AdminGetContentByShareCodeV2' test.out

#- 115 AdminGetContentByContentIDV2
samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 'YaonPzuH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 115 'AdminGetContentByContentIDV2' test.out

#- 116 RollbackContentVersionV2
samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'fTA5yxhU' \
    --namespace $AB_NAMESPACE \
    --versionId 'UOZPe9Oj' \
    > test.out 2>&1
eval_tap $? 116 'RollbackContentVersionV2' test.out

#- 117 AdminUpdateScreenshotsV2
samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'dAhOj3dR' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "WUq7BAf5", "screenshotId": "jRO0vtaL"}, {"description": "c1yvekqh", "screenshotId": "d2IYClie"}, {"description": "DZLl4maJ", "screenshotId": "oq4E52cR"}]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateScreenshotsV2' test.out

#- 118 AdminUploadContentScreenshotV2
samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId '0laftOUO' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "HL1ccwaX", "description": "DL3T0vRU", "fileExtension": "pjp"}, {"contentType": "ySQ6qmbU", "description": "KBR8o8Ee", "fileExtension": "jfif"}, {"contentType": "2wWSRds3", "description": "94NsN5iH", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 118 'AdminUploadContentScreenshotV2' test.out

#- 119 AdminDeleteContentScreenshotV2
samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId '94Uk3NKb' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'YOO1WNCL' \
    > test.out 2>&1
eval_tap $? 119 'AdminDeleteContentScreenshotV2' test.out

#- 120 ListContentVersionsV2
samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'eAlp8PwT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 120 'ListContentVersionsV2' test.out

#- 121 AdminGetOfficialGroupContentsV2
samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'a885VMSN' \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 121 'AdminGetOfficialGroupContentsV2' test.out

#- 122 AdminListStagingContents
samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '52' \
    --sortBy 'VRk8yv16' \
    --status 'W7V9KR7c' \
    > test.out 2>&1
eval_tap $? 122 'AdminListStagingContents' test.out

#- 123 AdminGetStagingContentByID
samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId '4DCwQcC8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminGetStagingContentByID' test.out

#- 124 AdminApproveStagingContent
samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId 'CxME9Te1' \
    --namespace $AB_NAMESPACE \
    --body '{"approved": true, "note": "aofUZDmW"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminApproveStagingContent' test.out

#- 125 AdminUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'AjtJxZtq' \
    --namespace $AB_NAMESPACE \
    --shareCode 'OjGpNRlz' \
    --userId '2QFfl0JD' \
    --body '{"customAttributes": {"A527xIuz": {}, "5dg44uLt": {}, "8zSSOZFH": {}}, "name": "WMMAgEX5", "shareCode": "btYy6q1l", "subType": "f4EldYJE", "tags": ["e7Kf2v42", "mE93Cimy", "bzyR33Jg"], "type": "TNONj1jE"}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateContentByShareCodeV2' test.out

#- 126 AdminDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'Pxvv1Znx' \
    --namespace $AB_NAMESPACE \
    --shareCode '087X5NP2' \
    --userId '6WdWAsui' \
    > test.out 2>&1
eval_tap $? 126 'AdminDeleteContentByShareCodeV2' test.out

#- 127 AdminDeleteUserContentV2
samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'bEKq964S' \
    --contentId 'GvheNEyR' \
    --namespace $AB_NAMESPACE \
    --userId 'rUnUSnU1' \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteUserContentV2' test.out

#- 128 AdminUpdateUserContentV2
samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'b4MMQ66J' \
    --contentId 'IJZdpzIE' \
    --namespace $AB_NAMESPACE \
    --userId 'EeS9lie2' \
    --body '{"customAttributes": {"1O1PgxTS": {}, "ZmFXOppR": {}, "czClTWGz": {}}, "name": "Bo0kMbfD", "shareCode": "V7t9j701", "subType": "lTm7Rwsr", "tags": ["xkvJDgwo", "Lptlf4Fr", "Bi8r1RSg"], "type": "e8zflWND"}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateUserContentV2' test.out

#- 129 AdminUpdateUserContentFileLocation
samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'OsiAVdNK' \
    --contentId 'CE8p3LHx' \
    --namespace $AB_NAMESPACE \
    --userId 'EW6JJKlo' \
    --body '{"fileExtension": "C35uzM3s", "fileLocation": "sJksJ0ou"}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateUserContentFileLocation' test.out

#- 130 AdminGenerateUserContentUploadURLV2
samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'TD8BF5Km' \
    --contentId 'b7yYVjHc' \
    --namespace $AB_NAMESPACE \
    --userId '1t2OncwX' \
    --body '{"contentType": "p2fpQsUL", "fileExtension": "WcfBRexl"}' \
    > test.out 2>&1
eval_tap $? 130 'AdminGenerateUserContentUploadURLV2' test.out

#- 131 AdminGetContentByUserIDV2
samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'UnqCswVv' \
    --limit '69' \
    --offset '52' \
    --sortBy 'Z04tGHxV' \
    > test.out 2>&1
eval_tap $? 131 'AdminGetContentByUserIDV2' test.out

#- 132 AdminUpdateContentHideStatusV2
samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'aVuiAWch' \
    --namespace $AB_NAMESPACE \
    --userId 'eampIirj' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 132 'AdminUpdateContentHideStatusV2' test.out

#- 133 AdminGetUserGroupContentsV2
samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'zCH6F1P2' \
    --namespace $AB_NAMESPACE \
    --userId 'uIWPlkjS' \
    --limit '44' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 133 'AdminGetUserGroupContentsV2' test.out

#- 134 AdminListUserStagingContents
samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'Q8D9Jx4m' \
    --limit '7' \
    --offset '16' \
    --sortBy '2xXWcD5p' \
    --status 'fVz02UtF' \
    > test.out 2>&1
eval_tap $? 134 'AdminListUserStagingContents' test.out

#- 135 PublicGetContentByChannelIDV2
samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId '6sjHlFee' \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --name 'wusqbyya' \
    --offset '54' \
    --sortBy 'xMlj7IiA' \
    > test.out 2>&1
eval_tap $? 135 'PublicGetContentByChannelIDV2' test.out

#- 136 PublicListContentV2
samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace $AB_NAMESPACE \
    --isOfficial 'false' \
    --limit '93' \
    --name 'JWxKzQKV' \
    --offset '4' \
    --sortBy 'BuV4WECd' \
    --subType 'VMbYYz8e' \
    --tags '["B24vxp4r", "JGevd2sg", "S4gfTNTl"]' \
    --type '8oMvaDbV' \
    > test.out 2>&1
eval_tap $? 136 'PublicListContentV2' test.out

#- 137 PublicBulkGetContentByIDV2
samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["teWLvHy7", "cbkYHIuH", "CqSGfz2m"]}' \
    > test.out 2>&1
eval_tap $? 137 'PublicBulkGetContentByIDV2' test.out

#- 138 PublicGetContentBulkByShareCodesV2
samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace $AB_NAMESPACE \
    --body '{"shareCodes": ["AqJT5CM0", "esuR2AHR", "Dvj8Vzm0"]}' \
    > test.out 2>&1
eval_tap $? 138 'PublicGetContentBulkByShareCodesV2' test.out

#- 139 PublicGetContentByShareCodeV2
samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace $AB_NAMESPACE \
    --shareCode 's6GiH45m' \
    > test.out 2>&1
eval_tap $? 139 'PublicGetContentByShareCodeV2' test.out

#- 140 PublicGetContentByIDV2
samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'vOej3Ixb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'PublicGetContentByIDV2' test.out

#- 141 PublicAddDownloadCountV2
samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'nN7kAgVF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 141 'PublicAddDownloadCountV2' test.out

#- 142 PublicListContentDownloaderV2
samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'gHxB338a' \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '59' \
    --sortBy 'S4TRpUHb' \
    --userId 'KCesdF4Q' \
    > test.out 2>&1
eval_tap $? 142 'PublicListContentDownloaderV2' test.out

#- 143 PublicListContentLikeV2
samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'oa5BKQCZ' \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '2' \
    --sortBy 'HZyN0cmC' \
    > test.out 2>&1
eval_tap $? 143 'PublicListContentLikeV2' test.out

#- 144 UpdateContentLikeStatusV2
samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId 'PiLprgUV' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateContentLikeStatusV2' test.out

#- 145 PublicCreateContentV2
samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId '5wr0hgmN' \
    --namespace $AB_NAMESPACE \
    --userId 'hqsQo2gG' \
    --body '{"contentType": "VCwzfd0l", "customAttributes": {"mmA0kO2Y": {}, "DHs9EDur": {}, "AuAyTjFf": {}}, "fileExtension": "vmup9nn0", "name": "QYtCcZqA", "subType": "tnQ6Pqyl", "tags": ["qwre32L4", "viTM9ptC", "eD9ubafg"], "type": "uNzUNwK7"}' \
    > test.out 2>&1
eval_tap $? 145 'PublicCreateContentV2' test.out

#- 146 PublicUpdateContentByShareCodeV2
samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'UT8ODWva' \
    --namespace $AB_NAMESPACE \
    --shareCode '466TFhgs' \
    --userId 'hFLpuc5X' \
    --body '{"customAttributes": {"sB8aQFtQ": {}, "QXmwOfV6": {}, "pByMAxhm": {}}, "name": "N1hAiYW2", "subType": "RU5t9NIZ", "tags": ["aATppD0D", "IPYAVDYM", "hrO7uvH3"], "type": "uDCvG6GL"}' \
    > test.out 2>&1
eval_tap $? 146 'PublicUpdateContentByShareCodeV2' test.out

#- 147 PublicDeleteContentByShareCodeV2
samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'ZIitGnFK' \
    --namespace $AB_NAMESPACE \
    --shareCode '5lAHOCv0' \
    --userId '8O3qOJGe' \
    > test.out 2>&1
eval_tap $? 147 'PublicDeleteContentByShareCodeV2' test.out

#- 148 PublicDeleteContentV2
samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'g7TgMyN3' \
    --contentId '45V1I1b4' \
    --namespace $AB_NAMESPACE \
    --userId 'kVtAaMIt' \
    > test.out 2>&1
eval_tap $? 148 'PublicDeleteContentV2' test.out

#- 149 PublicUpdateContentV2
samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'CdO1JknZ' \
    --contentId 'jvINg188' \
    --namespace $AB_NAMESPACE \
    --userId 'efY9ff1R' \
    --body '{"customAttributes": {"nJF6NtDn": {}, "fnNPFjAg": {}, "WdTzqNkh": {}}, "name": "D9d89SSq", "subType": "zjFdjGHz", "tags": ["1TOa7Q37", "RkXUMxJW", "CsSJnUk9"], "type": "GdvHJhWM"}' \
    > test.out 2>&1
eval_tap $? 149 'PublicUpdateContentV2' test.out

#- 150 PublicUpdateContentFileLocation
samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'UHcQmTDv' \
    --contentId 'ZvcetYdV' \
    --namespace $AB_NAMESPACE \
    --userId 'JA9W4uM2' \
    --body '{"fileExtension": "SVCAp0m4", "fileLocation": "4fChO7uH"}' \
    > test.out 2>&1
eval_tap $? 150 'PublicUpdateContentFileLocation' test.out

#- 151 UpdateContentShareCodeV2
samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'jdgcr1ee' \
    --contentId 'faTQQpx2' \
    --namespace $AB_NAMESPACE \
    --userId '6aLKR87N' \
    --body '{"shareCode": "BF2m8aWJ"}' \
    > test.out 2>&1
eval_tap $? 151 'UpdateContentShareCodeV2' test.out

#- 152 PublicGenerateContentUploadURLV2
samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'zTsVojjG' \
    --contentId 'BhnVAHHX' \
    --namespace $AB_NAMESPACE \
    --userId 'NITDqQQa' \
    --body '{"contentType": "0cYoRzWW", "fileExtension": "rzl4Z1BD"}' \
    > test.out 2>&1
eval_tap $? 152 'PublicGenerateContentUploadURLV2' test.out

#- 153 PublicGetContentByUserIDV2
samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace $AB_NAMESPACE \
    --userId 'X3da9fPM' \
    --limit '1' \
    --offset '56' \
    --sortBy 'MuCRDNi6' \
    > test.out 2>&1
eval_tap $? 153 'PublicGetContentByUserIDV2' test.out

#- 154 UpdateScreenshotsV2
samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'JqOwT6iS' \
    --namespace $AB_NAMESPACE \
    --userId 'MkCr4ZKI' \
    --body '{"screenshots": [{"description": "ixqpqq8X", "screenshotId": "N5PSf2U8"}, {"description": "n21WroOG", "screenshotId": "vx67fR1W"}, {"description": "saPe9v4b", "screenshotId": "xLa5lEDr"}]}' \
    > test.out 2>&1
eval_tap $? 154 'UpdateScreenshotsV2' test.out

#- 155 UploadContentScreenshotV2
samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'IdmZy4bA' \
    --namespace $AB_NAMESPACE \
    --userId '2Man2IpT' \
    --body '{"screenshots": [{"contentType": "RTR8QQJn", "description": "9vM9a2Ha", "fileExtension": "png"}, {"contentType": "k6iUshtG", "description": "A5qc4EoN", "fileExtension": "jpeg"}, {"contentType": "kIPo910y", "description": "lABuriDU", "fileExtension": "jpeg"}]}' \
    > test.out 2>&1
eval_tap $? 155 'UploadContentScreenshotV2' test.out

#- 156 DeleteContentScreenshotV2
samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'flZ0OZ3e' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'JgPKj56c' \
    --userId 'TtztE4Lk' \
    > test.out 2>&1
eval_tap $? 156 'DeleteContentScreenshotV2' test.out

#- 157 PublicGetGroupContentsV2
samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'fNDrkwRQ' \
    --namespace $AB_NAMESPACE \
    --userId 'wdRDyG6u' \
    --limit '78' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 157 'PublicGetGroupContentsV2' test.out

#- 158 ListUserStagingContents
samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace $AB_NAMESPACE \
    --userId 'mIBj1EFx' \
    --limit '55' \
    --offset '64' \
    --sortBy 'FLjoZ2W9' \
    --status 'bYZsf6Ul' \
    > test.out 2>&1
eval_tap $? 158 'ListUserStagingContents' test.out

#- 159 GetUserStagingContentByID
samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId '8GQfSyoU' \
    --namespace $AB_NAMESPACE \
    --userId 'pTJ4Mz4B' \
    > test.out 2>&1
eval_tap $? 159 'GetUserStagingContentByID' test.out

#- 160 UpdateStagingContent
samples/cli/sample-apps Ugc updateStagingContent \
    --contentId 'x8jdKyhF' \
    --namespace $AB_NAMESPACE \
    --userId 'tzTQt2tm' \
    --body '{"fileExtension": "Gjql06ka", "fileLocation": "fTSgW1Fr"}' \
    > test.out 2>&1
eval_tap $? 160 'UpdateStagingContent' test.out

#- 161 DeleteUserStagingContentByID
samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId 'FpWzW2rf' \
    --namespace $AB_NAMESPACE \
    --userId 'mHIhRDpd' \
    > test.out 2>&1
eval_tap $? 161 'DeleteUserStagingContentByID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE