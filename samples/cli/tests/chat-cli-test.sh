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
    --chatId '["ACugi8zl", "CvrmPYUH", "TlBG35Dk"]' \
    --endCreatedAt '86' \
    --keyword 'DzlJj1W0' \
    --limit '92' \
    --offset '85' \
    --order 'ZlPTzDmH' \
    --senderUserId 'eWGKrBpl' \
    --shardId 'LD4vFQzz' \
    --startCreatedAt '27' \
    --topic '["nDPzLUHK", "bOHrOXyu", "oEChshU9"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminChatHistory' test.out

#- 3 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "l6XqJFJu", "name": "BYznVvOt"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNamespaceTopic' test.out

#- 4 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '94' \
    --topicType 'B43kcVcq' \
    > test.out 2>&1
eval_tap $? 4 'AdminTopicList' test.out

#- 5 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["91n1ZUYY", "Ot6dOTaT", "uVUN8RTa"], "description": "klMwaBTl", "isChannel": false, "isJoinable": false, "members": ["ErslRvgG", "ya4oBQ54", "gU73IQsn"], "name": "vf5JLIa9", "shardLimit": 33, "type": "0EkSqLh5"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminCreateTopic' test.out

#- 6 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '94' \
    --topicName 'LKowRULn' \
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
    --endCreatedAt '39' \
    --limit '76' \
    --offset '64' \
    --senderUserId 'T7vTzMvY' \
    --startCreatedAt '41' \
    --topicId 'YqSlAgSL' \
    --topicIds '["QKNieJv7", "qqeyUSu0", "f1WP2UdP"]' \
    --userId 'VaLwyQNf' \
    > test.out 2>&1
eval_tap $? 8 'AdminQueryTopicLog' test.out

#- 9 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic 'nqmAGdsk' \
    --body '{"description": "YC0mDFZY", "isJoinable": false, "name": "Ioh680ka"}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateTopic' test.out

#- 10 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic 'Bn95Qpwt' \
    > test.out 2>&1
eval_tap $? 10 'AdminDeleteTopic' test.out

#- 11 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic '5xw1gLoQ' \
    --body '{"userIds": ["JpDgRKfS", "s2o7gn7j", "dFAyT0Qg"]}' \
    > test.out 2>&1
eval_tap $? 11 'AdminBanTopicMembers' test.out

#- 12 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic 'UlRIbiQY' \
    > test.out 2>&1
eval_tap $? 12 'AdminChannelTopicInfo' test.out

#- 13 AdminTopicChatHistory
eval_tap 0 13 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 14 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic 'GooNaZw1' \
    --body '{"message": "CUI3W4rE"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminSendChat' test.out

#- 15 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId 'dm5YE1eq' \
    --namespace $AB_NAMESPACE \
    --topic 'Cb8ZaFNk' \
    > test.out 2>&1
eval_tap $? 15 'AdminDeleteChat' test.out

#- 16 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'VcBnEZ9Z' \
    --isBanned 'true' \
    --isModerator 'true' \
    --limit '71' \
    --offset '97' \
    --shardId 'uwXqzDzc' \
    > test.out 2>&1
eval_tap $? 16 'AdminTopicMembers' test.out

#- 17 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic 'oI7xkWkt' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicShards' test.out

#- 18 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic '4WSN2oLJ' \
    --body '{"userIds": ["iNyXolWw", "0MSkmXWL", "3KkWjS8g"]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUnbanTopicMembers' test.out

#- 19 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'rmly4CMJ' \
    --userId 'l0cXtfHi' \
    --body '{"isAdmin": true}' \
    > test.out 2>&1
eval_tap $? 19 'AdminAddTopicMember' test.out

#- 20 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'RefO4NIB' \
    --userId '4fZ2Hcex' \
    > test.out 2>&1
eval_tap $? 20 'AdminRemoveTopicMember' test.out

#- 21 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'false' \
    --includePastMembers 'true' \
    --includePastTopics 'true' \
    --limit '17' \
    --offset '63' \
    --topic '["UhACElKe", "LDu2qVpD", "ji4InzrW"]' \
    --topicSubType 'NORMAL' \
    --topicType 'PERSONAL' \
    --userId 'COyqKnFX' \
    > test.out 2>&1
eval_tap $? 21 'AdminQueryTopic' test.out

#- 22 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId 'AdEeN91f' \
    --includePastTopics 'false' \
    --limit '47' \
    --offset '58' \
    --topicSubType 'NORMAL' \
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
    --limit '48' \
    --offset '61' \
    --topicType 'Y21JWFbd' \
    > test.out 2>&1
eval_tap $? 24 'PublicTopicList' test.out

#- 25 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic '16QAUWAV' \
    --body '{"userIDs": ["F0Y6ATok", "RjJiDsHS", "w39Rhcy6"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicBanTopicMembers' test.out

#- 26 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic 'nFwu92tg' \
    --limit '35' \
    --order 'IOhVId0z' \
    --startCreatedAt '30' \
    > test.out 2>&1
eval_tap $? 26 'PublicChatHistory' test.out

#- 27 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId 'ErwUNiOa' \
    --namespace $AB_NAMESPACE \
    --topic 'jib2WPh9' \
    > test.out 2>&1
eval_tap $? 27 'PublicDeleteChat' test.out

#- 28 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'rXAOxgYx' \
    --body '{"duration": 27, "userId": "bMz293I0"}' \
    > test.out 2>&1
eval_tap $? 28 'PublicMuteUser' test.out

#- 29 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'k1WfFrss' \
    --body '{"userIDs": ["S6c7N8vK", "xcOAsMvF", "jJjY0nxx"]}' \
    > test.out 2>&1
eval_tap $? 29 'PublicUnbanTopicMembers' test.out

#- 30 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'N0LvJDrY' \
    --body '{"userId": "lqkQVNzF"}' \
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
    --body '{"chatRateLimitBurst": 89, "chatRateLimitDuration": 61, "concurrentUsersLimit": 69, "enableClanChat": false, "enableManualTopicCreation": true, "enableProfanityFilter": false, "filterAppName": "FbFqOiEf", "filterParam": "Mui1KWc0", "filterType": "fftqpP5j", "generalRateLimitBurst": 30, "generalRateLimitDuration": 98, "shardCapacityLimit": 94, "shardDefaultLimit": 14, "shardHardLimit": 79, "spamChatBurst": 37, "spamChatDuration": 15, "spamMuteDuration": 28}' \
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
    --body '{"enabled": false, "expiresIn": 51, "hook": {"driver": "KAFKA", "params": "GRliICxc"}, "jsonSchema": {"hZOuOayP": {}, "qwLuXPZY": {}, "nqpnSjb2": {}}, "name": "scWf94Fx", "saveInbox": false, "sendNotification": true}' \
    > test.out 2>&1
eval_tap $? 37 'AdminAddInboxCategory' test.out

#- 38 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category 'D9fGB2Ep' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteInboxCategory' test.out

#- 39 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category 'pvK4zgqk' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true, "expiresIn": 19, "hook": {"driver": "KAFKA", "params": "32CXDuGM"}, "jsonSchema": {"NznI5Fe4": {}, "NMrAr04Y": {}, "AtDq6029": {}}, "saveInbox": false, "sendNotification": true}' \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateInboxCategory' test.out

#- 40 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category 'AWzjsySF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 40 'AdminGetCategorySchema' test.out

#- 41 AdminDeleteInboxMessage
samples/cli/sample-apps Chat adminDeleteInboxMessage \
    --messageId 'FxHjfL49' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxMessage' test.out

#- 42 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --endCreatedAt '72' \
    --limit '41' \
    --messageId '["52oMmfbV", "9QeivRDY", "CSiALz85"]' \
    --offset '65' \
    --order 'cJRDKYCE' \
    --scope 'NAMESPACE' \
    --startCreatedAt '55' \
    --status 'SENT' \
    --transient 'false' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetInboxMessages' test.out

#- 43 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "gFOSPrzL", "expiredAt": 91, "message": {"sUBggZh0": {}, "tfbVrd0a": {}, "iqOwnGql": {}}, "scope": "USER", "status": "DRAFT", "userIds": ["ZMfoyjlX", "e1PdauX2", "CxCl8HwS"]}' \
    > test.out 2>&1
eval_tap $? 43 'AdminSaveInboxMessage' test.out

#- 44 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox '4BEKJmEL' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["aSBCcvLX", "Ggc5xR3H", "o6uWxVkr"]}' \
    > test.out 2>&1
eval_tap $? 44 'AdminUnsendInboxMessage' test.out

#- 45 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox 'JtABZbkI' \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '15' \
    --status 'UNREAD' \
    --userId 'UE4ZR1Gb' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetInboxUsers' test.out

#- 46 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId 'FYbHi2Or' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 85, "message": {"dU7ls9JA": {}, "z3L7ioXF": {}, "nt9d6xPO": {}}, "scope": "USER", "userIds": ["yY3LxnM0", "RmKkat4u", "loftc6I9"]}' \
    > test.out 2>&1
eval_tap $? 46 'AdminUpdateInboxMessage' test.out

#- 47 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId '3cYu4Yrm' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 47 'AdminSendInboxMessage' test.out

#- 48 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["lmNbLvmE", "sB0eQ0UW", "2rcmLeLm"]' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetInboxStats' test.out

#- 49 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId 'JE8D9ici' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'AdminGetChatSnapshot' test.out

#- 50 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId 'BT1xe8t5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'AdminDeleteChatSnapshot' test.out

#- 51 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask 'aSMFtXOP' \
    --includeChildren 'false' \
    --limit '87' \
    --offset '99' \
    --parentId '6ZuKWzz8' \
    --startWith 'qGLM2Ocm' \
    --wordType 'F7O0rgq5' \
    > test.out 2>&1
eval_tap $? 51 'AdminProfanityQuery' test.out

#- 52 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["7QChPzQc", "Rau5kKJ0", "6osxEyVu"], "falsePositive": ["AD2bEcMe", "QKeslrF8", "yLhVNJyM"], "word": "iiiSavk5", "wordType": "5E5u9JXm"}' \
    > test.out 2>&1
eval_tap $? 52 'AdminProfanityCreate' test.out

#- 53 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["cmXiFLlM", "Xqwq70Cs", "wykA7Y6Y"], "falsePositive": ["wyOrInyb", "55mu0N4Z", "hi8aG1Qf"], "word": "hgbo9Bxe", "wordType": "nBjUtVDk"}, {"falseNegative": ["7YJHJFNp", "1KEHKUNk", "GR0Jtodf"], "falsePositive": ["cH3v0nf3", "MzPYV55b", "wF3MyqaV"], "word": "ZlS6yhHB", "wordType": "KQEQKY2Q"}, {"falseNegative": ["yC1vrWHm", "NI4Y6g1c", "oURREnmc"], "falsePositive": ["D3qrM7F0", "r8e5zgg3", "7veiAUj8"], "word": "nAsfp6mw", "wordType": "OqcIm7fE"}]}' \
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
    --limit '95' \
    --offset '32' \
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
    --id 'VB5U8bBA' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["KRZNfKRR", "d5UM4yHS", "O3ccgrQG"], "falsePositive": ["Rvuoh28P", "j76CYDZK", "qmFQDZWo"], "word": "MqPnXqEl", "wordType": "hOarhS0O"}' \
    > test.out 2>&1
eval_tap $? 57 'AdminProfanityUpdate' test.out

#- 58 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id 'ZoDjA4Ml' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'AdminProfanityDelete' test.out

#- 59 PublicGetMessages
samples/cli/sample-apps Chat publicGetMessages \
    > test.out 2>&1
eval_tap $? 59 'PublicGetMessages' test.out

#- 60 PublicGetChatSnapshot
samples/cli/sample-apps Chat publicGetChatSnapshot \
    --chatId 'saiPDJ8F' \
    --namespace $AB_NAMESPACE \
    --topic 'Gi5cueOB' \
    > test.out 2>&1
eval_tap $? 60 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE