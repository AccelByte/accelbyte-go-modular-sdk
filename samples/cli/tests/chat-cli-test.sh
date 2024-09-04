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
echo "1..64"

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

#- 2 AdminFilterChatMessage
samples/cli/sample-apps Chat adminFilterChatMessage \
    --namespace $AB_NAMESPACE \
    --detail 'true' \
    --body '{"message": "PDNSqtum", "timestamp": 79, "topicId": "9iVawM8q", "topicType": "GROUP", "userId": "DhgIcK0b"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminFilterChatMessage' test.out

#- 3 AdminChatHistory
samples/cli/sample-apps Chat adminChatHistory \
    --namespace $AB_NAMESPACE \
    --chatId '["nHEXQEUA", "zJFRBmSM", "9nYtn9c4"]' \
    --endCreatedAt '6' \
    --keyword 'LPsNV9si' \
    --limit '32' \
    --offset '24' \
    --order '7hAvCxEw' \
    --senderUserId 'x7oXjjvs' \
    --shardId 'xM3azPc9' \
    --startCreatedAt '43' \
    --topic '["yN6h3GKO", "Q3mBIOCv", "4Fwhn1KK"]' \
    --unfiltered 'true' \
    > test.out 2>&1
eval_tap $? 3 'AdminChatHistory' test.out

#- 4 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "lm1wFwyO", "name": "nWtallFd"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateNamespaceTopic' test.out

#- 5 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '73' \
    --topicType '4fbbizJ0' \
    > test.out 2>&1
eval_tap $? 5 'AdminTopicList' test.out

#- 6 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["RXOAXJbM", "hXFmS6yw", "hWGTEy9s"], "description": "GfLL6Tqz", "isChannel": false, "isJoinable": false, "members": ["2Qu0PhCX", "CzErNgMD", "xMJ5EzyD"], "name": "JMjfELcV", "shardLimit": 28, "type": "3d3Xw0eN"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminCreateTopic' test.out

#- 7 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --offset '11' \
    --topicName 'djDJWpzJ' \
    > test.out 2>&1
eval_tap $? 7 'AdminChannelTopicList' test.out

#- 8 AdminChannelTopicSummary
samples/cli/sample-apps Chat adminChannelTopicSummary \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminChannelTopicSummary' test.out

#- 9 AdminQueryTopicLog
samples/cli/sample-apps Chat adminQueryTopicLog \
    --namespace $AB_NAMESPACE \
    --endCreatedAt '20' \
    --limit '2' \
    --offset '86' \
    --senderUserId 'ElJmjlPd' \
    --startCreatedAt '26' \
    --topicId '12icllSN' \
    --topicIds '["cKzT7xuK", "UWLE6PsO", "sg5RHnzb"]' \
    --userId '70SgiecK' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryTopicLog' test.out

#- 10 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic 'ztRHFqnp' \
    --body '{"description": "kL6SQkot", "isJoinable": false, "name": "e1BB0GhH"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateTopic' test.out

#- 11 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic 'a4aurwca' \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteTopic' test.out

#- 12 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic '9ZA1yJCQ' \
    --body '{"userIds": ["rFuvOdVt", "evI0FBDN", "Y76jteI3"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminBanTopicMembers' test.out

#- 13 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic '1l7hCqsD' \
    > test.out 2>&1
eval_tap $? 13 'AdminChannelTopicInfo' test.out

#- 14 AdminTopicChatHistory
eval_tap 0 14 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 15 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic 'Ou1ZkPkf' \
    --body '{"message": "JKh4U41R"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminSendChat' test.out

#- 16 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId 'Rs1vr1I3' \
    --namespace $AB_NAMESPACE \
    --topic '3yRzPd1l' \
    > test.out 2>&1
eval_tap $? 16 'AdminDeleteChat' test.out

#- 17 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'SGuY0DXz' \
    --isBanned 'false' \
    --isModerator 'false' \
    --limit '36' \
    --offset '62' \
    --shardId 'cb0qkKSF' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicMembers' test.out

#- 18 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic 'dUV6CZt9' \
    > test.out 2>&1
eval_tap $? 18 'AdminTopicShards' test.out

#- 19 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'xlTpbPeo' \
    --body '{"userIds": ["nfJz0jx6", "q0IyirEm", "iHYU94LG"]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUnbanTopicMembers' test.out

#- 20 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'BEj69DIf' \
    --userId 'C1v4GEoY' \
    --body '{"isAdmin": false}' \
    > test.out 2>&1
eval_tap $? 20 'AdminAddTopicMember' test.out

#- 21 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'e3wgCACk' \
    --userId 'EbN4MliN' \
    > test.out 2>&1
eval_tap $? 21 'AdminRemoveTopicMember' test.out

#- 22 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'true' \
    --includePastMembers 'true' \
    --includePastTopics 'false' \
    --limit '84' \
    --offset '97' \
    --topic '["ZvGRnmOf", "64XYc9j4", "Kt7zALzx"]' \
    --topicSubType 'SESSION' \
    --topicType 'PERSONAL' \
    --userId '9Iszb41B' \
    > test.out 2>&1
eval_tap $? 22 'AdminQueryTopic' test.out

#- 23 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId 'M6yOngm3' \
    --includePastTopics 'true' \
    --limit '83' \
    --offset '27' \
    --topicSubType 'CLAN' \
    --topicType 'GROUP' \
    > test.out 2>&1
eval_tap $? 23 'AdminQueryUsersTopic' test.out

#- 24 PublicGetMutedTopics
samples/cli/sample-apps Chat publicGetMutedTopics \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'PublicGetMutedTopics' test.out

#- 25 PublicTopicList
samples/cli/sample-apps Chat publicTopicList \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '7' \
    --topicType 'HdcyWBke' \
    > test.out 2>&1
eval_tap $? 25 'PublicTopicList' test.out

#- 26 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'LyDHnvwI' \
    --body '{"userIDs": ["7si2HZpg", "Ndz0954A", "P3Cqgm6r"]}' \
    > test.out 2>&1
eval_tap $? 26 'PublicBanTopicMembers' test.out

#- 27 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic '55mKTt84' \
    --limit '70' \
    --order '4L2om1Je' \
    --startCreatedAt '7' \
    > test.out 2>&1
eval_tap $? 27 'PublicChatHistory' test.out

#- 28 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId '5GXAhoDA' \
    --namespace $AB_NAMESPACE \
    --topic 'dBfrjEXW' \
    > test.out 2>&1
eval_tap $? 28 'PublicDeleteChat' test.out

#- 29 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'VdmUbgTc' \
    --body '{"duration": 36, "userId": "i0S771GV"}' \
    > test.out 2>&1
eval_tap $? 29 'PublicMuteUser' test.out

#- 30 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'mPyfTWV0' \
    --body '{"userIDs": ["4S2PRWiV", "kmuDEJHF", "A06spkej"]}' \
    > test.out 2>&1
eval_tap $? 30 'PublicUnbanTopicMembers' test.out

#- 31 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'aQ6zw4GJ' \
    --body '{"userId": "x68jtLSI"}' \
    > test.out 2>&1
eval_tap $? 31 'PublicUnmuteUser' test.out

#- 32 AdminGetAllConfigV1
samples/cli/sample-apps Chat adminGetAllConfigV1 \
    > test.out 2>&1
eval_tap $? 32 'AdminGetAllConfigV1' test.out

#- 33 AdminGetLogConfig
samples/cli/sample-apps Chat adminGetLogConfig \
    > test.out 2>&1
eval_tap $? 33 'AdminGetLogConfig' test.out

#- 34 AdminPatchUpdateLogConfig
samples/cli/sample-apps Chat adminPatchUpdateLogConfig \
    --body '{"logLevel": "error", "socketLogEnabled": false}' \
    > test.out 2>&1
eval_tap $? 34 'AdminPatchUpdateLogConfig' test.out

#- 35 AdminGetConfigV1
samples/cli/sample-apps Chat adminGetConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'AdminGetConfigV1' test.out

#- 36 AdminUpdateConfigV1
samples/cli/sample-apps Chat adminUpdateConfigV1 \
    --namespace $AB_NAMESPACE \
    --body '{"chatRateLimitBurst": 5, "chatRateLimitDuration": 50, "concurrentUsersLimit": 88, "enableClanChat": true, "enableManualTopicCreation": true, "enableProfanityFilter": true, "filterAppName": "gwILKZ2H", "filterParam": "Dd2SPRe9", "filterType": "Oe6EFVlb", "generalRateLimitBurst": 66, "generalRateLimitDuration": 80, "maxChatMessageLength": 24, "shardCapacityLimit": 57, "shardDefaultLimit": 92, "shardHardLimit": 65, "spamChatBurst": 10, "spamChatDuration": 68, "spamMuteDuration": 7}' \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateConfigV1' test.out

#- 37 ExportConfig
samples/cli/sample-apps Chat exportConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'ExportConfig' test.out

#- 38 ImportConfig
samples/cli/sample-apps Chat importConfig \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 38 'ImportConfig' test.out

#- 39 AdminGetInboxCategories
samples/cli/sample-apps Chat adminGetInboxCategories \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 39 'AdminGetInboxCategories' test.out

#- 40 AdminAddInboxCategory
samples/cli/sample-apps Chat adminAddInboxCategory \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true, "expiresIn": 43, "hook": {"driver": "rRlyDvTa", "params": {"ho1b6dM3": {}, "mxkx5hfJ": {}, "sYwi7HT7": {}}}, "jsonSchema": {"PgnYCzYn": {}, "HUt3dxWM": {}, "DyN7zNU6": {}}, "name": "piSsnjjH", "saveInbox": false, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 40 'AdminAddInboxCategory' test.out

#- 41 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category 'fLIgKUGf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxCategory' test.out

#- 42 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category 'liaj0rEF' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false, "expiresIn": 86, "hook": {"driver": "JBR152RJ", "params": {"2rlacskj": {}, "TfeJ6in5": {}, "DL1oQ12q": {}}}, "jsonSchema": {"yZUoKiWP": {}, "VWwOrPLP": {}, "kcP0TT6F": {}}, "saveInbox": true, "sendNotification": true}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateInboxCategory' test.out

#- 43 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category 'AK5KjZMx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'AdminGetCategorySchema' test.out

#- 44 AdminDeleteInboxMessage
samples/cli/sample-apps Chat adminDeleteInboxMessage \
    --messageId 'OsrdUoqf' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 44 'AdminDeleteInboxMessage' test.out

#- 45 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --endCreatedAt '80' \
    --limit '49' \
    --messageId '["4bJEhz8E", "bExze802", "1EQkbFQo"]' \
    --offset '94' \
    --order 'ZFdXYb34' \
    --scope 'NAMESPACE' \
    --startCreatedAt '62' \
    --status 'UNSENT' \
    --transient 'true' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetInboxMessages' test.out

#- 46 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "QAl06i3e", "expiredAt": 78, "message": {"iZluW4jm": {}, "p7z794Yw": {}, "XnjqNwf7": {}}, "scope": "NAMESPACE", "status": "DRAFT", "userIds": ["eIosupKQ", "7sFRKBQ4", "09y2dxhI"]}' \
    > test.out 2>&1
eval_tap $? 46 'AdminSaveInboxMessage' test.out

#- 47 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox 'vng6toGL' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["tgFKOwRa", "4wCvTTcf", "PGMUFr5G"]}' \
    > test.out 2>&1
eval_tap $? 47 'AdminUnsendInboxMessage' test.out

#- 48 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox 'D3GhsLjl' \
    --namespace $AB_NAMESPACE \
    --limit '16' \
    --offset '53' \
    --status 'READ' \
    --userId 'Wm5q4QEs' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetInboxUsers' test.out

#- 49 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId 'II8xY6c5' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 82, "message": {"tjifjhcZ": {}, "mhezfI1t": {}, "968hCEd9": {}}, "scope": "USER", "userIds": ["BxSTCdJy", "Y5c9yRF5", "XB2xo48O"]}' \
    > test.out 2>&1
eval_tap $? 49 'AdminUpdateInboxMessage' test.out

#- 50 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId 'JoKzNTph' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 50 'AdminSendInboxMessage' test.out

#- 51 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["q8n1cCbw", "DvOB9gvY", "k7WGp65T"]' \
    > test.out 2>&1
eval_tap $? 51 'AdminGetInboxStats' test.out

#- 52 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId 'PfMcdyZF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'AdminGetChatSnapshot' test.out

#- 53 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId 'b8UpXhmK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'AdminDeleteChatSnapshot' test.out

#- 54 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask 'uQrxYOOm' \
    --includeChildren 'true' \
    --limit '18' \
    --offset '47' \
    --parentId 'sw6j62oe' \
    --startWith 'MEmusPI6' \
    --wordType 'RU2QOOyE' \
    > test.out 2>&1
eval_tap $? 54 'AdminProfanityQuery' test.out

#- 55 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["8DsX8ch0", "i6nMBF6e", "FGAWWSGe"], "falsePositive": ["F6eOOHBF", "DxoXoFvV", "tBwX6v1P"], "word": "eJpgF1ZO", "wordType": "dfkXBIa2"}' \
    > test.out 2>&1
eval_tap $? 55 'AdminProfanityCreate' test.out

#- 56 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["qrWFx3FO", "wBggoDUM", "W0WvezZl"], "falsePositive": ["mUWPrXZo", "5TAiPXgX", "VHcEZezL"], "word": "552B87FL", "wordType": "nYYErrST"}, {"falseNegative": ["OS2WsESh", "rXHd5n5E", "XQSZXrAv"], "falsePositive": ["DOJald0O", "dZDqdJ8i", "CuqvOk0b"], "word": "N0o5jBfB", "wordType": "i2Cl4uRe"}, {"falseNegative": ["crlxwNvt", "F9YPqjl0", "Q93RFlnL"], "falsePositive": ["ACHhfcu1", "2DfynNVy", "SWqHqV3t"], "word": "q708fRfU", "wordType": "4VhKfKeh"}]}' \
    > test.out 2>&1
eval_tap $? 56 'AdminProfanityCreateBulk' test.out

#- 57 AdminProfanityExport
samples/cli/sample-apps Chat adminProfanityExport \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'AdminProfanityExport' test.out

#- 58 AdminProfanityGroup
samples/cli/sample-apps Chat adminProfanityGroup \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 58 'AdminProfanityGroup' test.out

#- 59 AdminProfanityImport
samples/cli/sample-apps Chat adminProfanityImport \
    --namespace $AB_NAMESPACE \
    --action 'REPLACE' \
    --showResult 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 59 'AdminProfanityImport' test.out

#- 60 AdminProfanityUpdate
samples/cli/sample-apps Chat adminProfanityUpdate \
    --id 'e8BKBFRn' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["s6Fpyx56", "MxCooDuQ", "3mMhjaa8"], "falsePositive": ["PgASHtE5", "XdmbLRjG", "u4644OwV"], "word": "CzVSW00T", "wordType": "YHxSFjhM"}' \
    > test.out 2>&1
eval_tap $? 60 'AdminProfanityUpdate' test.out

#- 61 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id 'O56jihaq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'AdminProfanityDelete' test.out

#- 62 PublicGetMessages
samples/cli/sample-apps Chat publicGetMessages \
    > test.out 2>&1
eval_tap $? 62 'PublicGetMessages' test.out

#- 63 PublicGetConfigV1
samples/cli/sample-apps Chat publicGetConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'PublicGetConfigV1' test.out

#- 64 PublicGetChatSnapshot
samples/cli/sample-apps Chat publicGetChatSnapshot \
    --chatId 'UTeQwHFL' \
    --namespace $AB_NAMESPACE \
    --topic '0Pu6IqBe' \
    > test.out 2>&1
eval_tap $? 64 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE