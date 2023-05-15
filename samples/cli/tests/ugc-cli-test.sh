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
    --limit '12' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace $AB_NAMESPACE \
    --body '{"name": "vHK1etSj07iRmvdw"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'dhnQ7Zx7IneUHMHk' \
    --namespace $AB_NAMESPACE \
    --body '{"name": "LC6h1Tjdk21qgwG7"}' \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'Yg5mBaXhaTmQjoTH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'Q4i2VSrXye94sPrw' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "hGhJIDzWhFwek1yS", "customAttributes": {"peVjExnqBPcBLoUO": {}, "gR7AlfjCQHb9jfeL": {}, "JAMoJYeG4gRYqfzi": {}}, "fileExtension": "WEP55iyYBcLXmKR7", "name": "4JLw0F6oH3Dt0Iqo", "preview": "nYYGJG38jMJQ9csF", "previewMetadata": {"previewContentType": "txtLlP3dO35hu17D", "previewFileExtension": "BMmDzbW6qspT7cov"}, "subType": "uyKekLiOvUuLdMPt", "tags": ["bvI7qLkSd887MfQP", "PtCnqCYLLMAy9r7e", "ZJtY4V8OmhJ99CEU"], "type": "iZ2RLOpGJQozhR2w"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'tQ5QQOzpPCWUlOLk' \
    --contentId 'mFgifpYsD7eo70d1' \
    --namespace $AB_NAMESPACE \
    --body '{"contentType": "m7eylutDG7bDyYJj", "customAttributes": {"Q5tMwqeyzUOY7D2C": {}, "FThrMpLIXTFOY3EC": {}, "3JKRbHXIypVC2xmL": {}}, "fileExtension": "0aCkfD8qZln6r3Pr", "name": "dafeC7hzrvLWVqo0", "payload": "V9jc27nnzNfIAVQN", "preview": "gnSWxxxIrH4VeitR", "previewMetadata": {"previewContentType": "tBXJWgYdHpIAKpih", "previewFileExtension": "hbyjRSZ0SPP362yt"}, "subType": "WYRik1DvAHOiGzzr", "tags": ["ZJSRvTx1qbSxZrRA", "dk4KHuKoun0W90BN", "1HttbkQ45NMlg45S"], "type": "VLY0LLkPwIdfgI3y", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'aV4JmP9GkHnPkPhM' \
    --namespace $AB_NAMESPACE \
    --creator '4G20GsNaQb5tzupJ' \
    --isofficial 'UMJe98gCaPkv0N0E' \
    --limit '62' \
    --name 'w7iaCzNdbQwk6OQE' \
    --offset '66' \
    --orderby 'hPJYrFpqGJa1Wmtu' \
    --sortby 'lquB6Ga6TXfIJ6mG' \
    --subtype 'DkChsCyFMPzwLirq' \
    --tags '["zZVQmc7dcJcsjvH7", "loIcXq7TREWkNe4m", "mq6GVeVLVtaD4IrF"]' \
    --type 'uauw3Gv1Qhe6fAex' \
    --userId 'KeJt5qrvtH9mxXn9' \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'AdusxTTCSCEJ8QTq' \
    --contentId '2eh18YLVPieLfU2Z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["WnfKQBGagxpEYmed", "Z2PnaOuiqTskCJ84", "l38CERZo2b4cW1Wn"]}' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
samples/cli/sample-apps Ugc adminSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'tkP9cTkgsfOTfndw' \
    --isofficial 'o1LfQcqzvziSmTb7' \
    --limit '2' \
    --name 'mnveNnNVrUMiVF2t' \
    --offset '74' \
    --orderby '0UEwS89fYo2ozUsE' \
    --sortby '5PRgSB8FgQttsdFT' \
    --subtype 'i5rCaeuKl4pjtNk0' \
    --tags '["NeE17RzfBs1Au4m7", "bLxpJ9f71x7jCGIL", "mtpPIQidnbjaBfZf"]' \
    --type 'ze2UWEmuu8yhr363' \
    --userId 'oVo7lL3BnMYHM0CM' \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetUserContentByShareCode
samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode '2DJ2fENCaianYB2M' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetUserContentByShareCode' test.out

#- 16 AdminGetSpecificContent
samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'iyANoQC75UxrUUOO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetSpecificContent' test.out

#- 17 AdminDownloadContentPreview
samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'JQbYwXKwvbAi79br' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminDownloadContentPreview' test.out

#- 18 AdminUpdateScreenshots
samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId '065b5jEFyoYlDpn9' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"description": "NdJOXC6FLu02Q3WX", "screenshotId": "fbs3XRWqiXRkgVXJ"}, {"description": "QFQTtIv6EVUBA5UR", "screenshotId": "rKIvb2C3acMZx5r1"}, {"description": "6MhxmYjvec557o86", "screenshotId": "CWmsBA8oYgrIq3dr"}]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateScreenshots' test.out

#- 19 AdminUploadContentScreenshot
samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'KmHDipLNYZC7GGMe' \
    --namespace $AB_NAMESPACE \
    --body '{"screenshots": [{"contentType": "2NgJ8gLrdLuPb990", "description": "nMdU4GJB6YKzbywN", "fileExtension": "bmp"}, {"contentType": "ZnTDip8PT6iYqjFo", "description": "ITFRbOazAY9l8QhV", "fileExtension": "pjp"}, {"contentType": "qRJZ9f7drAwfSSug", "description": "jtq5qh19IlJmaStl", "fileExtension": "bmp"}]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUploadContentScreenshot' test.out

#- 20 AdminDeleteContentScreenshot
samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'o18lcDIaLJBgehpe' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'Cx6q6L5Zxqfdf6zj' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteContentScreenshot' test.out

#- 21 SingleAdminGetAllGroups
samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 21 'SingleAdminGetAllGroups' test.out

#- 22 AdminCreateGroup
samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["4Be4C3Z79BTotFzl", "KpK3HzeEBAQ82Wqv", "lNOVoKE6DAHR8uPa"], "name": "yhXx5rhNV8jVagZS"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminCreateGroup' test.out

#- 23 SingleAdminGetGroup
samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'fW7Dwf9tu61VyG9d' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminGetGroup' test.out

#- 24 SingleAdminUpdateGroup
samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'b2O0sCY2DAySjRdy' \
    --namespace $AB_NAMESPACE \
    --body '{"contents": ["bv2t5ZeGyFiLEZni", "ro7LOUzLtWM9evpA", "oQlh4JKqDTr89dQx"], "name": "MAQwalDeoVZJ96pV"}' \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminUpdateGroup' test.out

#- 25 SingleAdminDeleteGroup
samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'LvAAtbitCOtsMYCu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'SingleAdminDeleteGroup' test.out

#- 26 SingleAdminGetGroupContents
samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'skAEOqePi9QhGBNL' \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroupContents' test.out

#- 27 AdminGetTag
samples/cli/sample-apps Ugc adminGetTag \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 27 'AdminGetTag' test.out

#- 28 AdminCreateTag
samples/cli/sample-apps Ugc adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "4nRa5pBrPg2uLFR9"}' \
    > test.out 2>&1
eval_tap $? 28 'AdminCreateTag' test.out

#- 29 AdminUpdateTag
samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace $AB_NAMESPACE \
    --tagId '2F3dkMH96aB1ahar' \
    --body '{"tag": "vCikVjTfDTOGmmZl"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateTag' test.out

#- 30 AdminDeleteTag
samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagId 'pvcYPO9dEmj6GCXh' \
    > test.out 2>&1
eval_tap $? 30 'AdminDeleteTag' test.out

#- 31 AdminGetType
samples/cli/sample-apps Ugc adminGetType \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 31 'AdminGetType' test.out

#- 32 AdminCreateType
samples/cli/sample-apps Ugc adminCreateType \
    --namespace $AB_NAMESPACE \
    --body '{"subtype": ["pyPUqloWzU0DAhZu", "3YKoYJoMwApJvaMt", "APnYuyhJ8Yp1K1Bt"], "type": "QYGDPy3ljCZB4P4C"}' \
    > test.out 2>&1
eval_tap $? 32 'AdminCreateType' test.out

#- 33 AdminUpdateType
samples/cli/sample-apps Ugc adminUpdateType \
    --namespace $AB_NAMESPACE \
    --typeId 'C2wVTX24QJAOO2Ak' \
    --body '{"subtype": ["gGSklLH8DsJgaG90", "AjrOKeWCfSaf7LTt", "ASHXIwvHqMduEA8o"], "type": "xzqwLELTQDHri7S5"}' \
    > test.out 2>&1
eval_tap $? 33 'AdminUpdateType' test.out

#- 34 AdminDeleteType
samples/cli/sample-apps Ugc adminDeleteType \
    --namespace $AB_NAMESPACE \
    --typeId 'AcGIh9Lzz4eVhd7B' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteType' test.out

#- 35 AdminGetChannel
samples/cli/sample-apps Ugc adminGetChannel \
    --namespace $AB_NAMESPACE \
    --userId 'iNRgsA7ntQG4h6OF' \
    --limit '77' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 35 'AdminGetChannel' test.out

#- 36 AdminDeleteAllUserChannels
samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace $AB_NAMESPACE \
    --userId 'N8exVLajf3mjZ6z7' \
    > test.out 2>&1
eval_tap $? 36 'AdminDeleteAllUserChannels' test.out

#- 37 AdminUpdateChannel
samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'Xi9oG55AZpEG2ZB8' \
    --namespace $AB_NAMESPACE \
    --userId 'DUeqeOWQrqn2oEka' \
    --body '{"name": "q0c9scMur8ifKXUC"}' \
    > test.out 2>&1
eval_tap $? 37 'AdminUpdateChannel' test.out

#- 38 AdminDeleteChannel
samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'yZw9eXmS8GN3WfQw' \
    --namespace $AB_NAMESPACE \
    --userId 'qp3ttXC5TKPEkUJV' \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteChannel' test.out

#- 39 AdminUpdateContentS3
samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId '1mnpdGSqXxtllrrD' \
    --contentId '62NNjPT1pUDwl1y7' \
    --namespace $AB_NAMESPACE \
    --userId 'Wpq1ShbCHOOPd16H' \
    --body '{"contentType": "xfrtGEW8Xnxv2O9x", "customAttributes": {"XV4oDgEBRt9SPkET": {}, "UrqWH8DxQ0BCrqoC": {}, "tAjolAsUsa72tRSc": {}}, "fileExtension": "6mlQ0xIH2GrkXIqZ", "name": "U0t7cveDT6Fy7MRH", "payload": "EzRPhIgivZxMhqbK", "preview": "a1FTnCRGC8kFdk6q", "previewMetadata": {"previewContentType": "8sk0DtE0BAJywUxc", "previewFileExtension": "hul6wCW5vecGwIYD"}, "subType": "ByOlUxoGivPMzXtN", "tags": ["3FKoKVEgq7a3toVf", "aYB58pkxBsj1jSng", "ohMmeB4jL6kR657D"], "type": "MhrcO37MMPO8avJF", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateContentS3' test.out

#- 40 AdminUpdateContentDirect
eval_tap 0 40 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 41 AdminDeleteContent
samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'gj57ElHIEDOJ5Ngo' \
    --contentId 'uFhLpIhV3QrqJqPk' \
    --namespace $AB_NAMESPACE \
    --userId 'Lw9mb8aDEYyQoupg' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteContent' test.out

#- 42 AdminGetContent
samples/cli/sample-apps Ugc adminGetContent \
    --namespace $AB_NAMESPACE \
    --userId 'OlMMshAMDtU581yY' \
    --limit '51' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetContent' test.out

#- 43 AdminDeleteAllUserContents
samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId 'n326G1G1BVYfLQMU' \
    > test.out 2>&1
eval_tap $? 43 'AdminDeleteAllUserContents' test.out

#- 44 AdminHideUserContent
samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'ygKkERYDR6RMEk2z' \
    --namespace $AB_NAMESPACE \
    --userId 'vCeSdGovUx4kDGiS' \
    --body '{"isHidden": false}' \
    > test.out 2>&1
eval_tap $? 44 'AdminHideUserContent' test.out

#- 45 AdminGetAllGroups
samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace $AB_NAMESPACE \
    --userId 'QZbrAsaEqJaRIAad' \
    --limit '66' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetAllGroups' test.out

#- 46 AdminDeleteAllUserGroup
samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId 'loxh7nzzWSrQQjRs' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteAllUserGroup' test.out

#- 47 AdminGetGroup
samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'f1rw0TEKxRSDIgu7' \
    --namespace $AB_NAMESPACE \
    --userId 'cXWMc1qXCfFL7keC' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetGroup' test.out

#- 48 AdminUpdateGroup
samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 's1ne4IxtmqHd3cxS' \
    --namespace $AB_NAMESPACE \
    --userId '61ZMnvcoXh0sjizi' \
    --body '{"contents": ["vGC5RN4ymnmszZes", "nW8XMMUWmQDI03Dg", "WbcAUjbIldCofaGm"], "name": "nsck4pKr91TL9P8t"}' \
    > test.out 2>&1
eval_tap $? 48 'AdminUpdateGroup' test.out

#- 49 AdminDeleteGroup
samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId '6RtcmS6WlGzh0GeF' \
    --namespace $AB_NAMESPACE \
    --userId 'ovzk4IyDk3eYpmOL' \
    > test.out 2>&1
eval_tap $? 49 'AdminDeleteGroup' test.out

#- 50 AdminGetGroupContents
samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'buRouTb8jBiGVYG3' \
    --namespace $AB_NAMESPACE \
    --userId '640SD7Aec9aJJSxg' \
    --limit '78' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetGroupContents' test.out

#- 51 AdminDeleteAllUserStates
samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'ZSwMcr0WLjNDmao5' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserStates' test.out

#- 52 SearchChannelSpecificContent
samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'sna8OJxMqSOOtx7S' \
    --namespace $AB_NAMESPACE \
    --creator 'NTtpqjql7PoJrpVL' \
    --isofficial 'HvQMVgh83uZS6tJt' \
    --limit '69' \
    --name '7PeGeCGPXg424tId' \
    --offset '89' \
    --orderby 'Qjyw75hbbg5zTTSo' \
    --sortby 'jeosFkpC5FHjEXHb' \
    --subtype 'JGaHf2ZSQmFF1wp0' \
    --tags '["OXiLCGi8NSp3IEhj", "aFBAQAPD26bT0zjA", "8yNS7yZVHKJn03zH"]' \
    --type 'pfNbph0HXTZOS5np' \
    --userId 'jlJNGzD6QzHJ90X6' \
    > test.out 2>&1
eval_tap $? 52 'SearchChannelSpecificContent' test.out

#- 53 PublicSearchContent
samples/cli/sample-apps Ugc publicSearchContent \
    --namespace $AB_NAMESPACE \
    --creator 'neHywcVcv6154TzG' \
    --isofficial 'LsOoMdin03fgbob4' \
    --limit '11' \
    --name 'KjxoCKf4Jd0eyNVa' \
    --offset '95' \
    --orderby 'M6QbPJlWpX6TpHcQ' \
    --sortby 'xujsitSNF3VTa3nk' \
    --subtype 'RI0qufJP6gtz4ajm' \
    --tags '["MywyW2xCkkC933cT", "I0u8HQQoPbNpRYFK", "UMi1o32mBHF7eZA2"]' \
    --type 'MpQ7m5QLEIIofqKL' \
    --userId 'iB24ydOJbYPZFAEa' \
    > test.out 2>&1
eval_tap $? 53 'PublicSearchContent' test.out

#- 54 PublicGetContentBulk
samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace $AB_NAMESPACE \
    --body '{"contentIds": ["jpOYqUJNXXOcBpEX", "x2IzQZc3Ql0Vi6l7", "eiH2gbxhGQVTMRaP"]}' \
    > test.out 2>&1
eval_tap $? 54 'PublicGetContentBulk' test.out

#- 55 GetFollowedContent
samples/cli/sample-apps Ugc getFollowedContent \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 55 'GetFollowedContent' test.out

#- 56 GetLikedContent
samples/cli/sample-apps Ugc getLikedContent \
    --namespace $AB_NAMESPACE \
    --isofficial 'true' \
    --limit '53' \
    --name 'w7tWQK6dEM0e0Gz4' \
    --offset '62' \
    --orderby 'eUfa9lgyPC0nAhjZ' \
    --sortby 'NtTAVeSEIqcr8oL7' \
    --subtype 'hfNpFK3Y2oAnqiFy' \
    --tags '["x9NW6yd9o7EBNHVj", "0AYzS243SqfBvG7c", "ObLqzzSWUuHhnM3P"]' \
    --type 'Rb9IvfRXYek6kMQ5' \
    > test.out 2>&1
eval_tap $? 56 'GetLikedContent' test.out

#- 57 PublicDownloadContentByShareCode
samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace $AB_NAMESPACE \
    --shareCode 'SdZgu5G4hyYujvI7' \
    > test.out 2>&1
eval_tap $? 57 'PublicDownloadContentByShareCode' test.out

#- 58 PublicDownloadContentByContentID
samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'cjydSmMHAf6hGoAY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'PublicDownloadContentByContentID' test.out

#- 59 AddDownloadCount
samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'BIQGUnOO6cBNwUMs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'AddDownloadCount' test.out

#- 60 UpdateContentLikeStatus
samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'jqWhtZQPRTGYCOwg' \
    --namespace $AB_NAMESPACE \
    --body '{"likeStatus": true}' \
    > test.out 2>&1
eval_tap $? 60 'UpdateContentLikeStatus' test.out

#- 61 PublicDownloadContentPreview
samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'dAWGb56BSf4YWYHQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'PublicDownloadContentPreview' test.out

#- 62 GetTag
samples/cli/sample-apps Ugc getTag \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 62 'GetTag' test.out

#- 63 GetType
samples/cli/sample-apps Ugc getType \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 63 'GetType' test.out

#- 64 PublicSearchCreator
samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '97' \
    --orderby '6McNGD84jlPc5TGY' \
    --sortby 'yaLRIfZKd7ZeIQTH' \
    > test.out 2>&1
eval_tap $? 64 'PublicSearchCreator' test.out

#- 65 GetFollowedUsers
samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 65 'GetFollowedUsers' test.out

#- 66 PublicGetCreator
samples/cli/sample-apps Ugc publicGetCreator \
    --namespace $AB_NAMESPACE \
    --userId 'ylNFIOXOgf41CT4m' \
    > test.out 2>&1
eval_tap $? 66 'PublicGetCreator' test.out

#- 67 GetChannels
samples/cli/sample-apps Ugc getChannels \
    --namespace $AB_NAMESPACE \
    --userId '64l8GUwF2xKtwptR' \
    --limit '53' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 67 'GetChannels' test.out

#- 68 CreateChannel
samples/cli/sample-apps Ugc createChannel \
    --namespace $AB_NAMESPACE \
    --userId '3gqmWQ2OgVkzefuG' \
    --body '{"name": "XH90kuUqtqAXldto"}' \
    > test.out 2>&1
eval_tap $? 68 'CreateChannel' test.out

#- 69 DeleteAllUserChannel
samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace $AB_NAMESPACE \
    --userId 'aSfXSINYpKnkGF4B' \
    > test.out 2>&1
eval_tap $? 69 'DeleteAllUserChannel' test.out

#- 70 UpdateChannel
samples/cli/sample-apps Ugc updateChannel \
    --channelId 'LebTjurtKySaZxqa' \
    --namespace $AB_NAMESPACE \
    --userId 'FAvUnPU2S5gjgJU0' \
    --body '{"name": "A6OtXQWFyHVwbUSq"}' \
    > test.out 2>&1
eval_tap $? 70 'UpdateChannel' test.out

#- 71 DeleteChannel
samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'YJhYe2lR60NF6s97' \
    --namespace $AB_NAMESPACE \
    --userId 'FJT0qZbATOAxckd2' \
    > test.out 2>&1
eval_tap $? 71 'DeleteChannel' test.out

#- 72 CreateContentDirect
eval_tap 0 72 'CreateContentDirect # SKIP deprecated' test.out

#- 73 CreateContentS3
samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'imKhsQMBDkN4GHYh' \
    --namespace $AB_NAMESPACE \
    --userId 'yEHgCIhjIUX5OoJe' \
    --body '{"contentType": "qaRgmkLEMbh9M4Ug", "customAttributes": {"INbFAvqGWH6EbXhO": {}, "pU2ihKRKc6tjBaHG": {}, "3BscDyOzcrG0Jxha": {}}, "fileExtension": "0vwVu8XszahUkddd", "name": "WWdJXXxJnLHvMEdL", "preview": "HM4YyQbSEdSLRqBS", "previewMetadata": {"previewContentType": "k6zAoQfZXtGWAZbY", "previewFileExtension": "sUMsdsDCRHNMPCgd"}, "subType": "x1YAtacCzsfyfXSK", "tags": ["gDy3oCU3OR8m23gx", "KFtBcVXFIvycF9ji", "ifXO26awzhaj5qBN"], "type": "hpKdIXmhP6zfU3Lp"}' \
    > test.out 2>&1
eval_tap $? 73 'CreateContentS3' test.out

#- 74 UpdateContentS3
samples/cli/sample-apps Ugc updateContentS3 \
    --channelId '8BAfjIvRQeVQQiWC' \
    --contentId 'PuuhfiL6mtrdOP1s' \
    --namespace $AB_NAMESPACE \
    --userId 'XnAqgZO1izNUclHQ' \
    --body '{"contentType": "vybG7iZ9F80YBFbW", "customAttributes": {"nfvHytDSTSS3C6Wv": {}, "GTJeMYyxnAQVrED2": {}, "YnScu89NRZvp8A8Z": {}}, "fileExtension": "bZaz9i9wR3yikSbE", "name": "10U9Dkv5i9rWZIae", "payload": "AI3X2Lq1AgS2tbNa", "preview": "Hix3GQASuyrt8KEm", "previewMetadata": {"previewContentType": "7U1oxYRK1hH0UJ86", "previewFileExtension": "rc40NhnFWSnQYhPK"}, "subType": "fiHkw5OVkcW9dijD", "tags": ["YsoiObXZpkt9wj0S", "XDnXzLZTd36bQtUw", "64ks56AYUqiCEh3J"], "type": "ngHQOkLy6MMIksWu", "updateContentFile": true}' \
    > test.out 2>&1
eval_tap $? 74 'UpdateContentS3' test.out

#- 75 UpdateContentDirect
eval_tap 0 75 'UpdateContentDirect # SKIP deprecated' test.out

#- 76 DeleteContent
samples/cli/sample-apps Ugc deleteContent \
    --channelId 'L8QSYnEC713wT04G' \
    --contentId '3VUAy5Mpgz1Fi5vg' \
    --namespace $AB_NAMESPACE \
    --userId 'QlWjX3OvShtBzowA' \
    > test.out 2>&1
eval_tap $? 76 'DeleteContent' test.out

#- 77 PublicGetUserContent
samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace $AB_NAMESPACE \
    --userId '7Bqy31IkK2WhPJud' \
    --limit '3' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 77 'PublicGetUserContent' test.out

#- 78 DeleteAllUserContents
samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace $AB_NAMESPACE \
    --userId '3DXCN7LCuefxGtXN' \
    > test.out 2>&1
eval_tap $? 78 'DeleteAllUserContents' test.out

#- 79 UpdateScreenshots
samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'AdSseBCuhIFH4Kzt' \
    --namespace $AB_NAMESPACE \
    --userId 'rMBlKOUMZxk4Y3n4' \
    --body '{"screenshots": [{"description": "z9sKcPpH8tWNcMqy", "screenshotId": "R6pXgDbOq7fat7ws"}, {"description": "WzjQsXwZxaW83r2i", "screenshotId": "FsNFMqJWOEnfBsnF"}, {"description": "CBKczG92k7My8qhH", "screenshotId": "K1XcFpf9ElsPAvhi"}]}' \
    > test.out 2>&1
eval_tap $? 79 'UpdateScreenshots' test.out

#- 80 UploadContentScreenshot
samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId '6qR1IbQxsnJdVxAv' \
    --namespace $AB_NAMESPACE \
    --userId '2rnJuugThbnAmcVa' \
    --body '{"screenshots": [{"contentType": "GlcZPH6eNBlzEhjo", "description": "PWm6aR7TBJ7Kng3Y", "fileExtension": "jfif"}, {"contentType": "oHLC9mfusqxC7QZZ", "description": "Ja8QQKjwKdOyn29J", "fileExtension": "jpeg"}, {"contentType": "SKQE6Vz2oROVh4Qa", "description": "JDvbTnIRT0HZoNla", "fileExtension": "jpg"}]}' \
    > test.out 2>&1
eval_tap $? 80 'UploadContentScreenshot' test.out

#- 81 DeleteContentScreenshot
samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'JbQrk9vU6nioHoBZ' \
    --namespace $AB_NAMESPACE \
    --screenshotId 'aYaTaqt0WNdanuwM' \
    --userId 'R3Dkm3jjwwU0rBh6' \
    > test.out 2>&1
eval_tap $? 81 'DeleteContentScreenshot' test.out

#- 82 UpdateUserFollowStatus
samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace $AB_NAMESPACE \
    --userId 'XakGJEo5z1OOMp5G' \
    --body '{"followStatus": true}' \
    > test.out 2>&1
eval_tap $? 82 'UpdateUserFollowStatus' test.out

#- 83 GetPublicFollowers
samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace $AB_NAMESPACE \
    --userId 'YXCINBIjjhtk9LSn' \
    --limit '56' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 83 'GetPublicFollowers' test.out

#- 84 GetPublicFollowing
samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace $AB_NAMESPACE \
    --userId 'svm2z5FVNYQNyvvE' \
    --limit '54' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 84 'GetPublicFollowing' test.out

#- 85 GetGroups
samples/cli/sample-apps Ugc getGroups \
    --namespace $AB_NAMESPACE \
    --userId 'NktOHjEgW8VjS74k' \
    --limit '43' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 85 'GetGroups' test.out

#- 86 CreateGroup
samples/cli/sample-apps Ugc createGroup \
    --namespace $AB_NAMESPACE \
    --userId '57noV1CgKGdW7AgQ' \
    --body '{"contents": ["f5chopq6WRhiUcfU", "0U8AL2ePX0E65lRM", "wnbJSdpEQeiR3hzk"], "name": "7DVbxHKOmLSCR301"}' \
    > test.out 2>&1
eval_tap $? 86 'CreateGroup' test.out

#- 87 DeleteAllUserGroup
samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace $AB_NAMESPACE \
    --userId '8DIoxCWfkjBJtBYE' \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserGroup' test.out

#- 88 GetGroup
samples/cli/sample-apps Ugc getGroup \
    --groupId 'oPeNvwBbTymmFBDD' \
    --namespace $AB_NAMESPACE \
    --userId 'A9vM2AA33NVgA2vN' \
    > test.out 2>&1
eval_tap $? 88 'GetGroup' test.out

#- 89 UpdateGroup
samples/cli/sample-apps Ugc updateGroup \
    --groupId 'u4u3IE6O98VZ0iG6' \
    --namespace $AB_NAMESPACE \
    --userId 'Ib00YrpVZYKCVQxq' \
    --body '{"contents": ["Us1d1J38ggVGSxRh", "tn6SHucO7jF3NR1P", "qBtEQ4nbOqyh3GLy"], "name": "3j5bWHnw6Ff8LzQf"}' \
    > test.out 2>&1
eval_tap $? 89 'UpdateGroup' test.out

#- 90 DeleteGroup
samples/cli/sample-apps Ugc deleteGroup \
    --groupId '1fvNVW0Gk67ePDyk' \
    --namespace $AB_NAMESPACE \
    --userId 'bupvVlv8Je35taD9' \
    > test.out 2>&1
eval_tap $? 90 'DeleteGroup' test.out

#- 91 GetGroupContent
samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'Qma4ibPMQV7buXK4' \
    --namespace $AB_NAMESPACE \
    --userId 'EMBPilNCzGtDPFRO' \
    --limit '2' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 91 'GetGroupContent' test.out

#- 92 DeleteAllUserStates
samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace $AB_NAMESPACE \
    --userId 'PRPwssOc7BV1519F' \
    > test.out 2>&1
eval_tap $? 92 'DeleteAllUserStates' test.out


rm -f "tmp.dat"

exit $EXIT_CODE