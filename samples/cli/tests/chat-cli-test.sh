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
    --chatId '["Bu7Fpvst", "HZq3NLeT", "UIoyUvMV"]' \
    --endCreatedAt '39' \
    --keyword '5lzTGDeL' \
    --limit '8' \
    --offset '39' \
    --order '4yoeTiwx' \
    --senderUserId 'b2hO87ll' \
    --shardId 'WtIEjdb4' \
    --startCreatedAt '47' \
    --topic '["E61Xtffy", "vl7kgiRz", "TWn4EzH2"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminChatHistory' test.out

#- 3 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "snSgin8w", "name": "qWmX0dZK"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNamespaceTopic' test.out

#- 4 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '66' \
    --topicType 'L0rsMfQ7' \
    > test.out 2>&1
eval_tap $? 4 'AdminTopicList' test.out

#- 5 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["Qz23ubkC", "rQq4ZaQO", "P3AhYx3t"], "description": "xYlc08cx", "isChannel": true, "isJoinable": false, "members": ["kwTDwoPL", "Y5nHeTZl", "C0K1UC0C"], "name": "bRlRH04r", "shardLimit": 41, "type": "XVfjVNxb"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminCreateTopic' test.out

#- 6 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '87' \
    --topicName 'icC1LAy5' \
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
    --endCreatedAt '42' \
    --limit '4' \
    --offset '97' \
    --senderUserId 'TovIuwuG' \
    --startCreatedAt '23' \
    --topicId 'YqApMCDV' \
    --topicIds '["h4fvKZcf", "XmYjtCuf", "Zppu482h"]' \
    --userId 'VtEG4iIx' \
    > test.out 2>&1
eval_tap $? 8 'AdminQueryTopicLog' test.out

#- 9 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic 'W8rCdEm9' \
    --body '{"description": "IEpZiQVD", "isJoinable": false, "name": "H3Nxp7Rt"}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateTopic' test.out

#- 10 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic 'BqT344Vb' \
    > test.out 2>&1
eval_tap $? 10 'AdminDeleteTopic' test.out

#- 11 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'dPKnaNFR' \
    --body '{"userIds": ["HN9IAPUi", "e2saB3Di", "wHWtqOdf"]}' \
    > test.out 2>&1
eval_tap $? 11 'AdminBanTopicMembers' test.out

#- 12 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic 'DAHKpzNq' \
    > test.out 2>&1
eval_tap $? 12 'AdminChannelTopicInfo' test.out

#- 13 AdminTopicChatHistory
eval_tap 0 13 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 14 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic 'IB50mg6M' \
    --body '{"message": "rhmBQu7c"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminSendChat' test.out

#- 15 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId 'XDaIfvua' \
    --namespace $AB_NAMESPACE \
    --topic 'apKJsKfj' \
    > test.out 2>&1
eval_tap $? 15 'AdminDeleteChat' test.out

#- 16 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'NwKwybWP' \
    --isBanned 'true' \
    --isModerator 'true' \
    --limit '71' \
    --offset '7' \
    --shardId 'XhJvvDQS' \
    > test.out 2>&1
eval_tap $? 16 'AdminTopicMembers' test.out

#- 17 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic 'oUma1ezn' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicShards' test.out

#- 18 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'Y8jopL6n' \
    --body '{"userIds": ["TrGcTRCG", "eG3hNQXJ", "Yo26BD6m"]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUnbanTopicMembers' test.out

#- 19 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'yPCElGw1' \
    --userId 'SEeZ2PAQ' \
    --body '{"isAdmin": true}' \
    > test.out 2>&1
eval_tap $? 19 'AdminAddTopicMember' test.out

#- 20 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'v1mZhysz' \
    --userId 'j3fpyKjq' \
    > test.out 2>&1
eval_tap $? 20 'AdminRemoveTopicMember' test.out

#- 21 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'true' \
    --includePastMembers 'true' \
    --includePastTopics 'true' \
    --limit '2' \
    --offset '97' \
    --topic '["FW2YUKBt", "julfZ8AQ", "PjS1I5nt"]' \
    --topicSubType 'PARTY' \
    --topicType 'PERSONAL' \
    --userId 'PJIVF13u' \
    > test.out 2>&1
eval_tap $? 21 'AdminQueryTopic' test.out

#- 22 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId 'CHO9vK5X' \
    --includePastTopics 'false' \
    --limit '80' \
    --offset '89' \
    --topicSubType 'SESSION' \
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
    --limit '92' \
    --offset '33' \
    --topicType 'r2tx1Xds' \
    > test.out 2>&1
eval_tap $? 24 'PublicTopicList' test.out

#- 25 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'QEQ2tJqP' \
    --body '{"userIDs": ["iZu46pWU", "r2JQmyZT", "UGuNNjj3"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicBanTopicMembers' test.out

#- 26 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic 'yYE2xtZQ' \
    --limit '88' \
    --order 'C1UC7iwx' \
    --startCreatedAt '78' \
    > test.out 2>&1
eval_tap $? 26 'PublicChatHistory' test.out

#- 27 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId 'CVlX1XJk' \
    --namespace $AB_NAMESPACE \
    --topic '2wQDP05Q' \
    > test.out 2>&1
eval_tap $? 27 'PublicDeleteChat' test.out

#- 28 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'zbGOz2My' \
    --body '{"duration": 91, "userId": "QxpwuUNp"}' \
    > test.out 2>&1
eval_tap $? 28 'PublicMuteUser' test.out

#- 29 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'gHa4SsER' \
    --body '{"userIDs": ["4ZUN4AVv", "JWV77NcQ", "1qsb3w5o"]}' \
    > test.out 2>&1
eval_tap $? 29 'PublicUnbanTopicMembers' test.out

#- 30 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'MNaBt2zk' \
    --body '{"userId": "ssnIBPm0"}' \
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
    --body '{"chatRateLimitBurst": 67, "chatRateLimitDuration": 41, "concurrentUsersLimit": 83, "enableClanChat": false, "enableManualTopicCreation": false, "enableProfanityFilter": true, "filterAppName": "6uciN4i9", "filterParam": "Ewu42iSr", "filterType": "MVhrWREm", "generalRateLimitBurst": 88, "generalRateLimitDuration": 42, "shardCapacityLimit": 29, "shardDefaultLimit": 65, "shardHardLimit": 3, "spamChatBurst": 65, "spamChatDuration": 46, "spamMuteDuration": 62}' \
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
    --body '{"enabled": true, "expiresIn": 29, "hook": {"driver": "KAFKA", "params": "4dHVZysz"}, "jsonSchema": {"GORMsThX": {}, "8OPVrEFM": {}, "eYUDKKXS": {}}, "name": "kCJHVS0g", "saveInbox": false, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 37 'AdminAddInboxCategory' test.out

#- 38 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category '729nSTz7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteInboxCategory' test.out

#- 39 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category 'T9HAIYgO' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true, "expiresIn": 83, "hook": {"driver": "KAFKA", "params": "mzSeffjj"}, "jsonSchema": {"d4qNHC1X": {}, "XNvyhFsq": {}, "DTcKIhxA": {}}, "saveInbox": false, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateInboxCategory' test.out

#- 40 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category 'sUQ0bIsa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 40 'AdminGetCategorySchema' test.out

#- 41 AdminDeleteInboxMessage
samples/cli/sample-apps Chat adminDeleteInboxMessage \
    --messageId 'XIl2AbTY' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxMessage' test.out

#- 42 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --endCreatedAt '55' \
    --limit '69' \
    --messageId '["5BfWjYkd", "KM5TZ3hx", "Tq9H0ZUg"]' \
    --offset '11' \
    --order 'skM0aVdK' \
    --scope 'USER' \
    --startCreatedAt '65' \
    --status 'SENT' \
    --transient 'true' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetInboxMessages' test.out

#- 43 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "z0xuhs5D", "expiredAt": 51, "message": {"aGlT0jUa": {}, "bQc4Ru08": {}, "r7DbPXoF": {}}, "scope": "NAMESPACE", "status": "DRAFT", "userIds": ["6XGCATof", "gaY4BN9a", "mtIMpAw7"]}' \
    > test.out 2>&1
eval_tap $? 43 'AdminSaveInboxMessage' test.out

#- 44 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox '2wckLfxb' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["wgsqUwzG", "wjWa4ap1", "G2i0aDPg"]}' \
    > test.out 2>&1
eval_tap $? 44 'AdminUnsendInboxMessage' test.out

#- 45 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox 'h3KhGqft' \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '29' \
    --status 'UNREAD' \
    --userId '6FlImMiy' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetInboxUsers' test.out

#- 46 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId 'kvOSkSjh' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 88, "message": {"aV7HEljh": {}, "n08h7pei": {}, "rNlEP22F": {}}, "scope": "NAMESPACE", "userIds": ["pcMubnGd", "pVEtSHbL", "FUcus6aH"]}' \
    > test.out 2>&1
eval_tap $? 46 'AdminUpdateInboxMessage' test.out

#- 47 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId 'qUFyJz92' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 47 'AdminSendInboxMessage' test.out

#- 48 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["AsJNdOdc", "SrV2Z8ae", "RQRFiQrb"]' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetInboxStats' test.out

#- 49 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId 'eAcr6JAi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'AdminGetChatSnapshot' test.out

#- 50 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId 'bOa2LK0c' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'AdminDeleteChatSnapshot' test.out

#- 51 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask 'wstoUSw8' \
    --includeChildren 'false' \
    --limit '66' \
    --offset '97' \
    --parentId '3vDHyN9b' \
    --startWith '0A58xOfk' \
    --wordType 'Lv9tg4xN' \
    > test.out 2>&1
eval_tap $? 51 'AdminProfanityQuery' test.out

#- 52 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["PF5AVDz2", "3PB53Naa", "dppQCei1"], "falsePositive": ["wfXYJhrP", "SgK5wTlA", "Ep316GGh"], "word": "NPfTaGZt", "wordType": "xP8ASSYh"}' \
    > test.out 2>&1
eval_tap $? 52 'AdminProfanityCreate' test.out

#- 53 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["BRASeQbL", "EUNh6qJK", "7zCnkTfT"], "falsePositive": ["qiMIrwkY", "EtAj27pO", "kdPrLwWw"], "word": "vdFqVgRi", "wordType": "huEdlu55"}, {"falseNegative": ["wdkcX8Bp", "TDemfqY7", "TJp4AqpL"], "falsePositive": ["jJ81HvXO", "hR3WNqPy", "AdgoOstW"], "word": "a6Ym5Ng8", "wordType": "SoexUrbH"}, {"falseNegative": ["hw8cN8MY", "G0r8r4du", "DluqmG7J"], "falsePositive": ["O1AAgF6X", "qW7onPgc", "MSpZnFR7"], "word": "LIzSst58", "wordType": "JaMELsEI"}]}' \
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
    --limit '33' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 55 'AdminProfanityGroup' test.out

#- 56 AdminProfanityImport
samples/cli/sample-apps Chat adminProfanityImport \
    --namespace $AB_NAMESPACE \
    --action 'FULLREPLACE' \
    --showResult 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 56 'AdminProfanityImport' test.out

#- 57 AdminProfanityUpdate
samples/cli/sample-apps Chat adminProfanityUpdate \
    --id 'j1Jhiiil' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["3rCA9DmL", "nj2Je56E", "in9MVvs6"], "falsePositive": ["joOIs2HD", "bXb7rCFi", "VzbpwjRB"], "word": "B7UU9HsF", "wordType": "hg3ZBiTU"}' \
    > test.out 2>&1
eval_tap $? 57 'AdminProfanityUpdate' test.out

#- 58 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id '0ycsSCrx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'AdminProfanityDelete' test.out

#- 59 PublicGetMessages
samples/cli/sample-apps Chat publicGetMessages \
    > test.out 2>&1
eval_tap $? 59 'PublicGetMessages' test.out

#- 60 PublicGetChatSnapshot
samples/cli/sample-apps Chat publicGetChatSnapshot \
    --chatId 'vjOMGZPD' \
    --namespace $AB_NAMESPACE \
    --topic 'QNRKYue3' \
    > test.out 2>&1
eval_tap $? 60 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE