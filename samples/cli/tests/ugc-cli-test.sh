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
    --limit '17' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"id": "8vtNkGOXJGemFjgo", "name": "5q6AzWPnzLqlwUvQ"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'mj7zUXGUmTVbLplE' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "E9oGwgEXHXkkt1Qg"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'RX9Cj3CW9hWwOp5m' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId '9yQzHRWzX3a2vAy2' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "nz1ICbadvtCu64Fc", "customAttributes": {"DCZxyKo4zHEa6MRL": {}, "IU7scHen7mmid3F4": {}, "AiRPV4aoHwlkSU0l": {}}, "fileExtension": "S4oC6keZiJ98hoy1", "name": "sXGUSBQx9egC7SQz", "preview": "7Ql2wkfL8NXDc0Ja", "previewMetadata": {"previewContentType": "LOdxXx99YeB5vthY", "previewFileExtension": "69ImN24vzbkljBMD"}, "shareCode": "TSi3IWhGljUDQ5wd", "subType": "7RZ2zxsZyfkD4Jk7", "tags": ["JDXkd700qd16Bmo5", "heJtwGPKKUnEbE29", "7JcHOyj9aaiPjBZ5"], "type": "RQJH2CZafeFUTLCM"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'p5kGvn7yHjxe2DXc' \
    --contentId 'LK39Vdjt5DqFyMSj' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "9XYzhhxtG1R7Wq5Z", "customAttributes": {"2ipcPubjS0EUAbyN": {}, "kpCaTZcka6kyX2Yy": {}, "6CWpU0Upa2ELAbG2": {}}, "fileExtension": "chaRyDWNaVBapUlr", "name": "SQE36HJe3R3hu0ch", "payload": "E6fIMrzGYu7T3jV0", "preview": "bcO15ea3k7auwKJd", "previewMetadata": {"previewContentType": "BIYRmW9KqeGmihbc", "previewFileExtension": "ljBvOkkLi5tBCHV6"}, "shareCode": "bezIZJp7j1sjl9UH", "subType": "ak5YcqFJwmO8lpdM", "tags": ["FuGq0YwvMO2U9sNL", "w9HUVNPMsKJSDD5s", "MaYAKRmaE0BUs6dB"], "type": "8nuIaBN5rd7TLjPR", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'errz4RVGhkafQKXt' \
    --namespace $AB_NAMESPACE \
    --creator 'k3VguRNbDN9pnKSx' \
    --isofficial 'SCtrsgdSH1SLjXOC' \
    --limit '49' \
    --name 'lZXJKE9gq4OyUWBM' \
    --offset '40' \
    --orderby 'lZmTJtaofILfLeCp' \
    --sortby 'XaMTcnLXvqXWcCXD' \
    --subtype 'uO4Dc6HEoh2KiGgC' \
    --tags '["NZ3UJPqSpXnoLZvh", "HRH6AHQKr1P8UCWL", "qYwMq5qWWzR37pQQ"]' \
    --type 'kEZ1Bg479a4QmaqL' \
    --userId 'KpLGhGwMIjh5APUF' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'criRKAwsjV2i4Gsa' \
    --contentId 'YjlNodjNrLSAZy07' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["AjOCBVZtcLXiclFB", "s0WM2ErmMVWiLm91", "cKuXu9ygjQwg5UEK"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'OSb5LDW3fXFrzYe4' \
    --isofficial 'ghsozXQktIVhWBGJ' \
    --limit '76' \
    --name 'TKj1WJ0T1qLTDYac' \
    --offset '39' \
    --orderby 'WDH6oUUBohacphpW' \
    --sortby 'vusHdFpcxabqehkl' \
    --subtype 'lFEpASbelXmfmtev' \
    --tags '["kDLvlqRWEzQrACWT", "NWbv80s80KzoPD51", "u5RzKJZPugyG4kNl"]' \
    --type 'AHDN2Yu5vIoosBh6' \
    --userId 'umY3GV0J96PfyJNR' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'UA1RHp7GMKUvfRyz' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetUserContentByShareCode' test.out

#- 16 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'MeA7dQroAO9w0wea' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetSpecificContent' test.out

#- 17 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'C2DbYnaqC5PKFWmf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDownloadContentPreview' test.out

#- 18 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'RECDFzo15HOeCuxn' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "jmMoiKmFjxmxX7Lp", "screenshotId": "zC9B75ttewi6PcJu"}, {"description": "S1eKkyB7bTDEeYC0", "screenshotId": "ECCPdbkIJloNheOT"}, {"description": "TXQQZNKUZjWqs9yI", "screenshotId": "5WtknzFj832DtdMD"}]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateScreenshots' test.out

#- 19 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'rl4FznBhbsxk6Q1o' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "LTEYT6o1yEw82C3k", "description": "ToDySr85pGs7KEsx", "fileExtension": "jpg"}, {"contentType": "rNKAhe7aWaZQlhak", "description": "RII5QHnwefHbrVXX", "fileExtension": "jpg"}, {"contentType": "aWNjbk1pUQ2IRjOJ", "description": "ToiGU7ouOCYuE9E0", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUploadContentScreenshot' test.out

#- 20 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'UOSFvGxrF8dzi1ex' \
    --namespace $AB_NAMESPACE \
    --screenshotId '4mDjZZSKNoh34Ipi' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteContentScreenshot' test.out

#- 21 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 21 'SingleAdminGetAllGroups' test.out

#- 22 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["dVIy5eK32cbpkr5L", "VhV82CyzZ5KA1LDA", "zBGEUPzYOuyOROLN"], "name": "2ZtROk2rqdeaaf4H"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminCreateGroup' test.out

#- 23 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId '7lgzMV0yKkOqOq01' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminGetGroup' test.out

#- 24 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId '9aNMRWJmgA42kMPH' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["q8RdpWISdG9XsLPb", "rwiDaVGekBibDCtt", "hYuNnjs0mCdCD101"], "name": "UR9ljVqqK4kKSLVq"}' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminUpdateGroup' test.out

#- 25 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId '9KlAhwasFUdlQq2c' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'SingleAdminDeleteGroup' test.out

#- 26 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'VMpdKIYF2pXFcocB' \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroupContents' test.out

#- 27 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetTag' test.out

#- 28 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "GIx3siajNvf9tN5Y"}' \
    > test.out 2>&1
eval_tap $? 28 'AdminCreateTag' test.out

#- 29 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId 'gnnCxjblN9EHPv8K' \
    --body '{"tag": "rOwPr7OAVmfGAM2g"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateTag' test.out

#- 30 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'c5WZME8TiA7QO1qw' \
    > test.out 2>&1
eval_tap $? 30 'AdminDeleteTag' test.out

#- 31 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 31 'AdminGetType' test.out

#- 32 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["2QxUyD5LgSBrhsM7", "D50vXxL7Mp7tpPgI", "kfWuvrMpqi4h6Tmz"], "type": "YyKqa5yKfCk3UjoT"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminCreateType' test.out

#- 33 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'Ks4F29zCEJzdNs2K' \
    --body '{"subtype": ["vVaUZOaPin1qdNZp", "DvNeQ4HfSCSo4Cj4", "qtUtRs3mqAvCXG0P"], "type": "noyCfioa1EZ7zrwT"}' \
    > test.out 2>&1
eval_tap $? 33 'AdminUpdateType' test.out

#- 34 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'jqoiodE8yZjT4mjU' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteType' test.out

#- 35 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId '80BbX9vpfvLjU0IM' \
    --limit '81' \
    --name 'aOoz1RTLFkCu3tES' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 35 'AdminGetChannel' test.out

#- 36 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId '5VhXftJKw2fGebXe' \
    > test.out 2>&1
eval_tap $? 36 'AdminDeleteAllUserChannels' test.out

#- 37 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'eA1hEqHFG4LtnnQL' \
    --namespace $AB_NAMESPACE \
    --userId 'SINOVT2jKjSpFMot' \
    --body '{"name": "s0s6a03MODRiQ3fX"}' \
    > test.out 2>&1
eval_tap $? 37 'AdminUpdateChannel' test.out

#- 38 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'W3DVIBgWB4o6HXzm' \
    --namespace $AB_NAMESPACE \
    --userId 'GHTo1rOLP6wBnMJP' \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteChannel' test.out

#- 39 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'JhKtQWEjERjh9X2s' \
    --contentId 'CrW6SPZeqoERbiHy' \
    --namespace $AB_NAMESPACE \
    --userId '7lYw4XmpRUrrsA0Z' \
    --body '{"contentType": "iGtN83tbQCQuOSkz", "customAttributes": {"zeWdBlUoOOZuMAog": {}, "dqmfPZ8jUWkiEByw": {}, "wWzcBIavm2mXddkR": {}}, "fileExtension": "zrb3BZ1ECA15CqFj", "name": "i0cmd3460hOqAeNj", "payload": "H0EMOU4hLEs82SH3", "preview": "sCVhiL6TwR8CX7cu", "previewMetadata": {"previewContentType": "CJvksq8iD3rUvlko", "previewFileExtension": "WhstOY8fsaqMuY6N"}, "shareCode": "b0fL5MA92bAeOuct", "subType": "hC4aO9sK7mPHUfHn", "tags": ["Kjr3pkjuHL4czZ19", "VW8wMcAKiQFYiE7p", "wNbJUcfarRHV0Udc"], "type": "iHnQEYFV6Rs25vTS", "updateContentFile": false}' \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateContentS3' test.out

#- 40 AdminUpdateContentDirect
eval_tap 0 40 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 41 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId '1dCQNg0zXiufbltu' \
    --contentId 'LvPXG4xzEDbqTWGH' \
    --namespace $AB_NAMESPACE \
    --userId '070kfyLFqtiHHLJz' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteContent' test.out

#- 42 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId '3gSfWuru9y0lsqeI' \
    --limit '14' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetContent' test.out

#- 43 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'tixpd9fXYgNvCorF' \
    > test.out 2>&1
eval_tap $? 43 'AdminDeleteAllUserContents' test.out

#- 44 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'RSrogHgH6PVJlkTK' \
    --namespace $AB_NAMESPACE \
    --userId 'tPhCXZBsmK21xwtu' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 44 'AdminHideUserContent' test.out

#- 45 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'RsGGNiJ0gv6xLoqp' \
    --limit '91' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetAllGroups' test.out

#- 46 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'FETxGrskQOprKMBQ' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteAllUserGroup' test.out

#- 47 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'uOl8YhGMZBoQ4VII' \
    --namespace $AB_NAMESPACE \
    --userId 'JT6pZBzJhVGg1QIz' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetGroup' test.out

#- 48 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'WZPPAIY9Tzs4IRHo' \
    --namespace $AB_NAMESPACE \
    --userId 'J4mpO4uy0uPr7xXr' \
    --body '{"contents": ["tAsPcJzFhjfDASgm", "em7EXifbkxazzZzx", "1ejFjpLhm9ho3J1N"], "name": "RzTswsBvEe32x03j"}' \
    > test.out 2>&1
eval_tap $? 48 'AdminUpdateGroup' test.out

#- 49 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'gxtG3ODfYEdhrsWT' \
    --namespace $AB_NAMESPACE \
    --userId '2FshE10CBjJMZvm8' \
    > test.out 2>&1
eval_tap $? 49 'AdminDeleteGroup' test.out

#- 50 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId '3ESrPcW6YQirmjvP' \
    --namespace $AB_NAMESPACE \
    --userId 'p4lpjmL7rlzSB91S' \
    --limit '40' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetGroupContents' test.out

#- 51 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId '60MsGNe9aRH9L7pm' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserStates' test.out

#- 52 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'MsVzUQoMPFVRbYNK' \
    --namespace $AB_NAMESPACE \
    --creator 'TAQrS6kQqqqNnWGO' \
    --isofficial '8GHqD96jC562akW2' \
    --limit '100' \
    --name '34PROh974YyiWJ7p' \
    --offset '97' \
    --orderby '2Ds5ejCWRUqvzp42' \
    --sortby 'ZPng7qHKXY4cZXxk' \
    --subtype 'EkwWVaHVgE1OilD4' \
    --tags '["MGuZHLZyTOx8IB1U", "0OQEYG5XEYkYd92H", "91vxpcdmRwYbiCk2"]' \
    --type 'Nku87CLM8dlHNl6h' \
    --userId '7SuJ7kv1wZhtxhv7' \
    > test.out 2>&1
eval_tap $? 52 'SearchChannelSpecificContent' test.out

#- 53 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'BYuXo56vQAg2rs3s' \
    --isofficial 'uH5A61eu4uBqvARu' \
    --limit '47' \
    --name 'PMW5Haw9v85oGnYQ' \
    --offset '12' \
    --orderby '77ezywbe5y5eEA8f' \
    --sortby 'tuAv5kc2b3KU1GiC' \
    --subtype 'iOpF6GLSfozsrYvb' \
    --tags '["wFjXRWjuRR8lgCGY", "yzNnWHfZ84BCJGm8", "kOXyt7vhMXUI5cph"]' \
    --type 'yWJv2oCeMD7bZ7c7' \
    --userId 'QH88TTizMyrQtoGj' \
    > test.out 2>&1
eval_tap $? 53 'PublicSearchContent' test.out

#- 54 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["WhA6gXv3HiB8hfGr", "OLm68e6Fz5sYhGrd", "LPnoKXt9scPERZzG"]}' \
    > test.out 2>&1
eval_tap $? 54 'PublicGetContentBulk' test.out

#- 55 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 55 'GetFollowedContent' test.out

#- 56 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'false' \
    --limit '63' \
    --name 'oMRIcvlaujSRSpm7' \
    --offset '83' \
    --orderby 'VWJ5FzuXJDHq8v9L' \
    --sortby 'M3z0W07s25Ut5poX' \
    --subtype 'LoJzUJt55kjEiWxJ' \
    --tags '["Kbs1B7CbGkNoRpNg", "leNlowZyb5CbbMe0", "AyTxw3dRFgEYcZQi"]' \
    --type 'x9ggDj91ZsK41B0y' \
    > test.out 2>&1
eval_tap $? 56 'GetLikedContent' test.out

#- 57 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'ZhdO5hIvJxKQgvIv' \
    > test.out 2>&1
eval_tap $? 57 'PublicDownloadContentByShareCode' test.out

#- 58 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'ejWxecg8UaQa9M1Z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'PublicDownloadContentByContentID' test.out

#- 59 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'wjLT08rRyrI2FYit' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'AddDownloadCount' test.out

#- 60 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'EX6Kbnw1ip4TZW7b' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": false}' \
    > test.out 2>&1
eval_tap $? 60 'UpdateContentLikeStatus' test.out

#- 61 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'GOHJud37IaugbXS7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'PublicDownloadContentPreview' test.out

#- 62 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 62 'GetTag' test.out

#- 63 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 63 'GetType' test.out

#- 64 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '55' \
    --orderby '7tnISsL4qARs8WZI' \
    --sortby 'G1pi8V1EnMcyeXpc' \
    > test.out 2>&1
eval_tap $? 64 'PublicSearchCreator' test.out

#- 65 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 65 'GetFollowedUsers' test.out

#- 66 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId '0rxUiVXk9OTi7huH' \
    > test.out 2>&1
eval_tap $? 66 'PublicGetCreator' test.out

#- 67 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId 'H4aWQwQZrnhFIFQs' \
    --limit '81' \
    --name 'dUgTNr7nchJ0nZ7B' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 67 'GetChannels' test.out

#- 68 PublicCreateChannel
samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace $AB_NAMESPACE \
    --userId 'uaxK4k5BZgEMCscK' \
    --body '{"name": "LZXBh9Mxx5EtPQPf"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicCreateChannel' test.out

#- 69 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId '7epunvgQOCv2vc6c' \
    > test.out 2>&1
eval_tap $? 69 'DeleteAllUserChannel' test.out

#- 70 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'KTpLQ5JsrswJ8Do9' \
    --namespace $AB_NAMESPACE \
    --userId 'YqiNvCDMz1dk0Euo' \
    --body '{"name": "ZjUMwUxUlIaiGZUU"}' \
    > test.out 2>&1
eval_tap $? 70 'UpdateChannel' test.out

#- 71 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'Jq0aqg8nKLuHrVpQ' \
    --namespace $AB_NAMESPACE \
    --userId 'BT4sgAW8poetCxAA' \
    > test.out 2>&1
eval_tap $? 71 'DeleteChannel' test.out

#- 72 CreateContentDirect
eval_tap 0 72 'CreateContentDirect # SKIP deprecated' test.out

#- 73 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId '8kUDPZwfecypzh3i' \
    --namespace $AB_NAMESPACE \
    --userId 'YmRfjqcR9h0ts5J9' \
    --body '{"contentType": "zUmxHM2UdrYwTvoL", "customAttributes": {"CPfp5mCNJdN163Ce": {}, "flpEdgowOMQG2gJn": {}, "5qXg1nLn4CGH4ZMC": {}}, "fileExtension": "rjHIQHTELTdeP0Bl", "name": "rlZFjGCrQA3UWZc8", "preview": "h8gL4n4e2qPPh6Jc", "previewMetadata": {"previewContentType": "7mJBebxhLtHJG2oy", "previewFileExtension": "kLHTRXwzlaP8lgmH"}, "subType": "aXhgA6PVPryNGASM", "tags": ["oTdLnWDqt9TgJuqz", "IP3jAXJCTSm0J6wr", "HqWgXySsockIzTzu"], "type": "xmfRVLW5NwX9LaZS"}' \
    > test.out 2>&1
eval_tap $? 73 'CreateContentS3' test.out

#- 74 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'lXxZmOY0Hv8fyj7x' \
    --contentId 'Uy6ZhKGe5XVbst8o' \
    --namespace $AB_NAMESPACE \
    --userId 'ChnUfDRU7mhZIrVC' \
    --body '{"contentType": "lOwnnc8y6iMq4ALY", "customAttributes": {"0Ufp87frCfLBQCU1": {}, "7L4jbyyRhSBlA6Tb": {}, "VbF14BaDl3sohKo4": {}}, "fileExtension": "k4NtmtoKmMZM0D3p", "name": "6ohfkYnFtYRQVjyj", "payload": "kQIeJPlxuej4JsiG", "preview": "5X85pTv0RAwTdIkM", "previewMetadata": {"previewContentType": "yPRS5cDBqDY9ltkY", "previewFileExtension": "2TaTkVaI1yDIzeY5"}, "subType": "8AmsOnNR3a5vkHOk", "tags": ["GTi4JmMBNDQJOMQN", "qxr93TQEXI37oJVj", "weQ1UVuQvkep73sw"], "type": "6HzJhBvNoAuuwJTC", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateContentS3' test.out

#- 75 UpdateContentDirect
eval_tap 0 75 'UpdateContentDirect # SKIP deprecated' test.out

#- 76 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'ShxpbQNZfFm4YH49' \
    --contentId 'D10wOUKQ30FP0532' \
    --namespace $AB_NAMESPACE \
    --userId '3C6NDtuzX356owtF' \
    > test.out 2>&1
eval_tap $? 76 'DeleteContent' test.out

#- 77 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId 'tH5SmecomHdJOIaQ' \
    --limit '16' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 77 'PublicGetUserContent' test.out

#- 78 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'kzJh5xSH0SRpex41' \
    > test.out 2>&1
eval_tap $? 78 'DeleteAllUserContents' test.out

#- 79 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId '768sDntpyKOJljVS' \
    --namespace $AB_NAMESPACE \
    --userId 'iheIAAc3Zm5nG50h' \
    --body '{"screenshots": [{"description": "ZjhIwYJF4YatUK7Z", "screenshotId": "0Vihbdt7Z2z1SIIv"}, {"description": "t6tXSaIoMGfhj4Ku", "screenshotId": "jzk8X1W3jOKI1Fj3"}, {"description": "lTqvCTnpsy8FwiUy", "screenshotId": "pbXJqcQlww0y8Nly"}]}' \
    > test.out 2>&1
eval_tap $? 79 'UpdateScreenshots' test.out

#- 80 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId '8ECZFNL7G3AGz0WT' \
    --namespace $AB_NAMESPACE \
    --userId 'niVEYyIKhBTohElL' \
    --body '{"screenshots": [{"contentType": "I0NleVfoDg2sXV1N", "description": "afOMIMcYH0orMype", "fileExtension": "jfif"}, {"contentType": "L7inrHBG8iHSIZpU", "description": "LWWSVB5RsdUU7Pva", "fileExtension": "png"}, {"contentType": "naXoopENKRxmpZjJ", "description": "p6sZjuxhgOC7X7Z2", "fileExtension": "pjp"}]}' \
    > test.out 2>&1
eval_tap $? 80 'UploadContentScreenshot' test.out

#- 81 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId '6RvByLfT3agzGNzM' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'UeLriVxIz7DZNXt4' \
    --userId 'QG3vLgHaypG9GKVb' \
    > test.out 2>&1
eval_tap $? 81 'DeleteContentScreenshot' test.out

#- 82 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId '2S221Ba9BfMSz7av' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 82 'UpdateUserFollowStatus' test.out

#- 83 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'iDLRjxInMzhup3hC' \
    --limit '79' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 83 'GetPublicFollowers' test.out

#- 84 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'pXUUSvc04yquI03n' \
    --limit '41' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 84 'GetPublicFollowing' test.out

#- 85 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'WhgHlPl7n5NVM6Nu' \
    --limit '56' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 85 'GetGroups' test.out

#- 86 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId '6WWo09Kb5B8CJrot' \
    --body '{"contents": ["Nk8bvtunwOBl62tt", "aUWJVR87x0H7eT8V", "V1XunBOVvE7dEcCH"], "name": "hiHTJ86homRF1XFF"}' \
    > test.out 2>&1
eval_tap $? 86 'CreateGroup' test.out

#- 87 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'Kn5tE0q7hVaD9wBf' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserGroup' test.out

#- 88 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'eSBhaaD81dlTcA5O' \
    --namespace $AB_NAMESPACE \
    --userId 'qUdnvyvuDVVxFdjZ' \
    > test.out 2>&1
eval_tap $? 88 'GetGroup' test.out

#- 89 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'oax9x9UvlsKT5u3J' \
    --namespace $AB_NAMESPACE \
    --userId 'sXJLOEC9K3A2fnos' \
    --body '{"contents": ["hfZS7JbnYdUw0Akx", "YXDTb6Eie9rMrOuf", "AWH08mt3nVzZhT5J"], "name": "1Lu9C321D1i1bIqS"}' \
    > test.out 2>&1
eval_tap $? 89 'UpdateGroup' test.out

#- 90 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'v1dUhKPnf5DStGWH' \
    --namespace $AB_NAMESPACE \
    --userId '8cws5tomuB4NyZF9' \
    > test.out 2>&1
eval_tap $? 90 'DeleteGroup' test.out

#- 91 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId '0gm3V2MelplCqfzc' \
    --namespace $AB_NAMESPACE \
    --userId '7BRhmRsvSikPSp1x' \
    --limit '80' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 91 'GetGroupContent' test.out

#- 92 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId '3Ipiyr17OsBgzuuc' \
    > test.out 2>&1
eval_tap $? 92 'DeleteAllUserStates' test.out


rm -f "tmp.dat"

exit $EXIT_CODE