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
echo "1..60"

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

#- 2 AdminChatHistory
samples/cli/sample-apps Chat adminChatHistory \
    --namespace $AB_NAMESPACE \
    --chatId '["MXWVBymd", "qpHjV7M8", "Gj9ee3YY"]' \
    --endCreatedAt '34' \
    --keyword 'CfYrfy4I' \
    --limit '19' \
    --offset '45' \
    --order 'svfW1aKR' \
    --senderUserId 'lRn7oTa6' \
    --shardId '9JyVnVxm' \
    --startCreatedAt '83' \
    --topic '["y2BszInx", "rQHhEGxa", "hMauLX4m"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminChatHistory' test.out

#- 3 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "A3zsbMuc", "name": "dRThfz7Y"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNamespaceTopic' test.out

#- 4 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '37' \
    --topicType 'TFMWKHnk' \
    > test.out 2>&1
eval_tap $? 4 'AdminTopicList' test.out

#- 5 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["SwAVUGlc", "myIOqdnb", "HFRzcOTM"], "description": "ewbu8F7u", "isChannel": true, "isJoinable": false, "members": ["V3DzkyQ2", "xOM9ZB2C", "GRI8eXIk"], "name": "ftL4D1ed", "shardLimit": 95, "type": "k0Ss1bTE"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminCreateTopic' test.out

#- 6 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '78' \
    --topicName 'ZIeSxqIl' \
    > test.out 2>&1
eval_tap $? 6 'AdminChannelTopicList' test.out

#- 7 AdminChannelTopicSummary
samples/cli/sample-apps Chat adminChannelTopicSummary \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminChannelTopicSummary' test.out

#- 8 AdminQueryTopicLog
samples/cli/sample-apps Chat adminQueryTopicLog \
    --namespace $AB_NAMESPACE \
    --endCreatedAt '34' \
    --limit '79' \
    --offset '34' \
    --senderUserId 'nS1qtmT3' \
    --startCreatedAt '2' \
    --topicId 'ErlZHyvb' \
    --topicIds '["nqdRfrrs", "ulCHa5fe", "PysQhQxh"]' \
    --userId 'Q9nMDbc3' \
    > test.out 2>&1
eval_tap $? 8 'AdminQueryTopicLog' test.out

#- 9 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic 'gHpBieeI' \
    --body '{"description": "thIlynz8", "isJoinable": false, "name": "UiG21wke"}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateTopic' test.out

#- 10 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic 'qRR49Ppw' \
    > test.out 2>&1
eval_tap $? 10 'AdminDeleteTopic' test.out

#- 11 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 't3dD2DK9' \
    --body '{"userIds": ["7RKiyGDh", "XWu0PWx7", "nP5f9Rnf"]}' \
    > test.out 2>&1
eval_tap $? 11 'AdminBanTopicMembers' test.out

#- 12 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic 'o1sEBznU' \
    > test.out 2>&1
eval_tap $? 12 'AdminChannelTopicInfo' test.out

#- 13 AdminTopicChatHistory
eval_tap 0 13 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 14 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic '5LdIRPfS' \
    --body '{"message": "w2Xn3Gsg"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminSendChat' test.out

#- 15 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId 'pcQfDU4P' \
    --namespace $AB_NAMESPACE \
    --topic '46Dl7lL1' \
    > test.out 2>&1
eval_tap $? 15 'AdminDeleteChat' test.out

#- 16 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic '649OTOCD' \
    --isBanned 'true' \
    --isModerator 'true' \
    --limit '82' \
    --offset '8' \
    --shardId 'PcpQDGKS' \
    > test.out 2>&1
eval_tap $? 16 'AdminTopicMembers' test.out

#- 17 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic 'KHLOG7ia' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicShards' test.out

#- 18 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'RpzF4siL' \
    --body '{"userIds": ["Nidj4Vrd", "CBwMePWw", "lJ7fYtf1"]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUnbanTopicMembers' test.out

#- 19 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic '6NsCMucb' \
    --userId 'BAX1wd5r' \
    --body '{"isAdmin": true}' \
    > test.out 2>&1
eval_tap $? 19 'AdminAddTopicMember' test.out

#- 20 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic '1U3PU9mq' \
    --userId 'uZ2nbSan' \
    > test.out 2>&1
eval_tap $? 20 'AdminRemoveTopicMember' test.out

#- 21 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'true' \
    --includePastMembers 'true' \
    --includePastTopics 'false' \
    --limit '93' \
    --offset '67' \
    --topic '["vZzJuABH", "xGmj47mE", "X0ttPQ9G"]' \
    --topicSubType 'SESSION' \
    --topicType 'PERSONAL' \
    --userId 'uTwPGxCR' \
    > test.out 2>&1
eval_tap $? 21 'AdminQueryTopic' test.out

#- 22 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId 'MJaXf42C' \
    --includePastTopics 'true' \
    --limit '97' \
    --offset '74' \
    --topicSubType 'CLAN' \
    --topicType 'GROUP' \
    > test.out 2>&1
eval_tap $? 22 'AdminQueryUsersTopic' test.out

#- 23 PublicGetMutedTopics
samples/cli/sample-apps Chat publicGetMutedTopics \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'PublicGetMutedTopics' test.out

#- 24 PublicTopicList
samples/cli/sample-apps Chat publicTopicList \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '82' \
    --topicType '5f2P1RaK' \
    > test.out 2>&1
eval_tap $? 24 'PublicTopicList' test.out

#- 25 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic '9cmloP45' \
    --body '{"userIDs": ["tcwghOnx", "D39GTCxa", "CllQkXt1"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicBanTopicMembers' test.out

#- 26 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic 'xxgxQMKC' \
    --limit '62' \
    --order 'TpVXClYV' \
    --startCreatedAt '33' \
    > test.out 2>&1
eval_tap $? 26 'PublicChatHistory' test.out

#- 27 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId 'niiakNzl' \
    --namespace $AB_NAMESPACE \
    --topic '2bMZCPuG' \
    > test.out 2>&1
eval_tap $? 27 'PublicDeleteChat' test.out

#- 28 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'b6yU1stF' \
    --body '{"duration": 90, "userId": "LOaehYmb"}' \
    > test.out 2>&1
eval_tap $? 28 'PublicMuteUser' test.out

#- 29 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'tOBkRrPg' \
    --body '{"userIDs": ["Y2iogWAl", "aHaYgoRx", "5eqlER5s"]}' \
    > test.out 2>&1
eval_tap $? 29 'PublicUnbanTopicMembers' test.out

#- 30 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'hAzmLK7V' \
    --body '{"userId": "WCWeGhxS"}' \
    > test.out 2>&1
eval_tap $? 30 'PublicUnmuteUser' test.out

#- 31 AdminGetAllConfigV1
samples/cli/sample-apps Chat adminGetAllConfigV1 \
    > test.out 2>&1
eval_tap $? 31 'AdminGetAllConfigV1' test.out

#- 32 AdminGetConfigV1
samples/cli/sample-apps Chat adminGetConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'AdminGetConfigV1' test.out

#- 33 AdminUpdateConfigV1
samples/cli/sample-apps Chat adminUpdateConfigV1 \
    --namespace $AB_NAMESPACE \
    --body '{"chatRateLimitBurst": 79, "chatRateLimitDuration": 30, "concurrentUsersLimit": 80, "enableClanChat": true, "enableManualTopicCreation": false, "enableProfanityFilter": true, "filterAppName": "Zjl0yNBo", "filterParam": "kXhtZ6eD", "filterType": "TYcpLmdK", "generalRateLimitBurst": 25, "generalRateLimitDuration": 86, "shardCapacityLimit": 4, "shardDefaultLimit": 57, "shardHardLimit": 20, "spamChatBurst": 80, "spamChatDuration": 78, "spamMuteDuration": 98}' \
    > test.out 2>&1
eval_tap $? 33 'AdminUpdateConfigV1' test.out

#- 34 ExportConfig
samples/cli/sample-apps Chat exportConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'ExportConfig' test.out

#- 35 ImportConfig
samples/cli/sample-apps Chat importConfig \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 35 'ImportConfig' test.out

#- 36 AdminGetInboxCategories
samples/cli/sample-apps Chat adminGetInboxCategories \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 36 'AdminGetInboxCategories' test.out

#- 37 AdminAddInboxCategory
samples/cli/sample-apps Chat adminAddInboxCategory \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true, "expiresIn": 69, "hook": {"driver": "KAFKA", "params": "dQcbHUVn"}, "jsonSchema": {"1oIed0n4": {}, "BIfk5iku": {}, "GyUSVpK2": {}}, "name": "NPHVSTbb", "saveInbox": false, "sendNotification": true}' \
    > test.out 2>&1
eval_tap $? 37 'AdminAddInboxCategory' test.out

#- 38 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category 'WmVxt99c' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteInboxCategory' test.out

#- 39 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category 'JFBMrceD' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true, "expiresIn": 77, "hook": {"driver": "KAFKA", "params": "QmGVz0do"}, "jsonSchema": {"DnSswxFP": {}, "ameu3KKm": {}, "hCVSERa7": {}}, "saveInbox": false, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateInboxCategory' test.out

#- 40 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category 'e97XwX8k' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 40 'AdminGetCategorySchema' test.out

#- 41 AdminDeleteInboxMessage
samples/cli/sample-apps Chat adminDeleteInboxMessage \
    --messageId '5M3mStft' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxMessage' test.out

#- 42 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --endCreatedAt '41' \
    --limit '35' \
    --messageId '["JhsMS69S", "Y6g4NjgL", "wi0TsvVW"]' \
    --offset '96' \
    --order '0ZvkOY27' \
    --scope 'USER' \
    --startCreatedAt '20' \
    --status 'DRAFT' \
    --transient 'false' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetInboxMessages' test.out

#- 43 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "d5s3vn6y", "expiredAt": 26, "message": {"HoMxGVgu": {}, "BvGg5yoY": {}, "vQcG9uXl": {}}, "scope": "USER", "status": "SENT", "userIds": ["gcHKDIBF", "THursALx", "hu4Gxali"]}' \
    > test.out 2>&1
eval_tap $? 43 'AdminSaveInboxMessage' test.out

#- 44 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox 'UhDmzAXl' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["NVgkfJXc", "rcwB94rM", "qDLZHWJd"]}' \
    > test.out 2>&1
eval_tap $? 44 'AdminUnsendInboxMessage' test.out

#- 45 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox 'pvA7GEv1' \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '41' \
    --status 'READ' \
    --userId 'tjKI1Juj' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetInboxUsers' test.out

#- 46 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId '73kG6BsZ' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 90, "message": {"aXEIqE3a": {}, "VUTgMok3": {}, "KC6V7IUe": {}}, "scope": "NAMESPACE", "userIds": ["9ySFGQr9", "F6QlJH6m", "IGvqXqqe"]}' \
    > test.out 2>&1
eval_tap $? 46 'AdminUpdateInboxMessage' test.out

#- 47 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId 't5ffG07z' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 47 'AdminSendInboxMessage' test.out

#- 48 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["7mTQE6UQ", "OkT0Dlht", "Ka4KO1gt"]' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetInboxStats' test.out

#- 49 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId 'NvutK42u' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'AdminGetChatSnapshot' test.out

#- 50 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId 'djkWJWZ2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'AdminDeleteChatSnapshot' test.out

#- 51 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask 'YOwW74n4' \
    --includeChildren 'false' \
    --limit '8' \
    --offset '20' \
    --parentId 'ealhcstb' \
    --startWith 'pcBfYbxf' \
    --wordType '1a6S8URo' \
    > test.out 2>&1
eval_tap $? 51 'AdminProfanityQuery' test.out

#- 52 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["edFmZqOM", "hJaydeCi", "QoZnvARe"], "falsePositive": ["pcMVa212", "qTSgwc5c", "hy9t5asZ"], "word": "ZG4Q3e5v", "wordType": "fc1isspU"}' \
    > test.out 2>&1
eval_tap $? 52 'AdminProfanityCreate' test.out

#- 53 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["xN1RUtn4", "y7MnST5a", "3jAhHjhO"], "falsePositive": ["iSmv2qmd", "ceKZ307W", "aSrwvpTp"], "word": "ItkyGrLb", "wordType": "BHu6bt1U"}, {"falseNegative": ["B0pnCh1H", "oXEYnX57", "Hwp9fBPL"], "falsePositive": ["ABt1ju7x", "jqnQliSn", "gBpaQ7Hx"], "word": "6wdVTGGx", "wordType": "mqRwyJwu"}, {"falseNegative": ["H3Xj09GW", "dZSFKfm6", "4zzekSk3"], "falsePositive": ["OCaWKRha", "joNxog3Y", "PBMdj3UF"], "word": "azmLgUQh", "wordType": "ulSX5y1A"}]}' \
    > test.out 2>&1
eval_tap $? 53 'AdminProfanityCreateBulk' test.out

#- 54 AdminProfanityExport
samples/cli/sample-apps Chat adminProfanityExport \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'AdminProfanityExport' test.out

#- 55 AdminProfanityGroup
samples/cli/sample-apps Chat adminProfanityGroup \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 55 'AdminProfanityGroup' test.out

#- 56 AdminProfanityImport
samples/cli/sample-apps Chat adminProfanityImport \
    --namespace $AB_NAMESPACE \
    --action 'LEAVEOUT' \
    --showResult 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 56 'AdminProfanityImport' test.out

#- 57 AdminProfanityUpdate
samples/cli/sample-apps Chat adminProfanityUpdate \
    --id 'Z9z9NOSo' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["4q6NsRHC", "0scyp0Oz", "OE4MnMdf"], "falsePositive": ["ODiKUKNB", "eyuNNWCJ", "AHks1XmU"], "word": "hH8ylZXl", "wordType": "ztn42QLh"}' \
    > test.out 2>&1
eval_tap $? 57 'AdminProfanityUpdate' test.out

#- 58 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id 'Z6nS83dE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'AdminProfanityDelete' test.out

#- 59 PublicGetMessages
samples/cli/sample-apps Chat publicGetMessages \
    > test.out 2>&1
eval_tap $? 59 'PublicGetMessages' test.out

#- 60 PublicGetChatSnapshot
samples/cli/sample-apps Chat publicGetChatSnapshot \
    --chatId '1IWkPXeh' \
    --namespace $AB_NAMESPACE \
    --topic 'EfYQIje6' \
    > test.out 2>&1
eval_tap $? 60 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE