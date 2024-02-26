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
    --chatId '["yIJ68cbp", "YwNgmqv9", "pOx9ychb"]' \
    --endCreatedAt '41' \
    --keyword 'i2EjS75N' \
    --limit '71' \
    --offset '65' \
    --order 'oc8FjTN6' \
    --senderUserId 'A1GBFgcA' \
    --shardId 'VKKeHrpD' \
    --startCreatedAt '14' \
    --topic '["wDmtvKsQ", "SXKTPKRt", "SWUy4P9l"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminChatHistory' test.out

#- 3 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "MdWd1XqH", "name": "QxJIhJDG"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNamespaceTopic' test.out

#- 4 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '51' \
    --topicType 'gVlZwr1z' \
    > test.out 2>&1
eval_tap $? 4 'AdminTopicList' test.out

#- 5 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["9BZplKfQ", "0llHNgoP", "T5w22vXd"], "description": "9uF4PZv6", "isChannel": true, "isJoinable": true, "members": ["Bv28SLo9", "eG5U6wEN", "OyvyZpzS"], "name": "pJK7KLA1", "shardLimit": 25, "type": "krky2qMd"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminCreateTopic' test.out

#- 6 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --offset '77' \
    --topicName 'jaEfaEEW' \
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
    --endCreatedAt '84' \
    --limit '90' \
    --offset '25' \
    --senderUserId 'IKwiz9e3' \
    --startCreatedAt '72' \
    --topicId 'iN1jPdTw' \
    --topicIds '["n1H3w5eY", "mc1YsoxI", "zLgfBhRK"]' \
    --userId 'r9FLJN11' \
    > test.out 2>&1
eval_tap $? 8 'AdminQueryTopicLog' test.out

#- 9 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic 'eqRVpi9v' \
    --body '{"description": "alf341Dd", "isJoinable": true, "name": "Pz8C63xE"}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateTopic' test.out

#- 10 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic 'bp9tSIbG' \
    > test.out 2>&1
eval_tap $? 10 'AdminDeleteTopic' test.out

#- 11 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'OI7wSg79' \
    --body '{"userIds": ["nexwFuaT", "J8KvSUCB", "zTshM5Dq"]}' \
    > test.out 2>&1
eval_tap $? 11 'AdminBanTopicMembers' test.out

#- 12 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic 'BkDLnmel' \
    > test.out 2>&1
eval_tap $? 12 'AdminChannelTopicInfo' test.out

#- 13 AdminTopicChatHistory
eval_tap 0 13 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 14 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic '6EH1kOSH' \
    --body '{"message": "cjR8ugXL"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminSendChat' test.out

#- 15 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId '4I5GvqYu' \
    --namespace $AB_NAMESPACE \
    --topic 'bjrkdobB' \
    > test.out 2>&1
eval_tap $? 15 'AdminDeleteChat' test.out

#- 16 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'p487RAqe' \
    --isBanned 'true' \
    --isModerator 'false' \
    --limit '36' \
    --offset '62' \
    --shardId 'HWWm30uv' \
    > test.out 2>&1
eval_tap $? 16 'AdminTopicMembers' test.out

#- 17 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic 'PSYx4CkE' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicShards' test.out

#- 18 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'Wn3aZLa2' \
    --body '{"userIds": ["En3SCicM", "gNnSfxAh", "RH3PfE01"]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUnbanTopicMembers' test.out

#- 19 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'evTB65Le' \
    --userId 'JB6r0Ob8' \
    --body '{"isAdmin": false}' \
    > test.out 2>&1
eval_tap $? 19 'AdminAddTopicMember' test.out

#- 20 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'zN5l5Lmm' \
    --userId 'PVD8ZsKs' \
    > test.out 2>&1
eval_tap $? 20 'AdminRemoveTopicMember' test.out

#- 21 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'false' \
    --includePastMembers 'false' \
    --includePastTopics 'true' \
    --limit '84' \
    --offset '52' \
    --topic '["Ek7zGDOD", "mRxdpErg", "o7JfWvEN"]' \
    --topicSubType 'PARTY' \
    --topicType 'PERSONAL' \
    --userId '8e12CfYn' \
    > test.out 2>&1
eval_tap $? 21 'AdminQueryTopic' test.out

#- 22 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId 'DYP4OpXk' \
    --includePastTopics 'false' \
    --limit '10' \
    --offset '53' \
    --topicSubType 'NAMESPACE' \
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
    --limit '62' \
    --offset '0' \
    --topicType 'fDp0jTlM' \
    > test.out 2>&1
eval_tap $? 24 'PublicTopicList' test.out

#- 25 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'CH0OcA1U' \
    --body '{"userIDs": ["H6jCHVzH", "jtU5kNBM", "YfqpO7jf"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicBanTopicMembers' test.out

#- 26 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic '3mobmicA' \
    --limit '24' \
    --order 'Qcu82usR' \
    --startCreatedAt '73' \
    > test.out 2>&1
eval_tap $? 26 'PublicChatHistory' test.out

#- 27 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId 'LxnAd63G' \
    --namespace $AB_NAMESPACE \
    --topic 'E5eP1rSZ' \
    > test.out 2>&1
eval_tap $? 27 'PublicDeleteChat' test.out

#- 28 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'ryboQm0d' \
    --body '{"duration": 52, "userId": "gVzWA1dr"}' \
    > test.out 2>&1
eval_tap $? 28 'PublicMuteUser' test.out

#- 29 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'qd02tY2y' \
    --body '{"userIDs": ["EiLMv1zF", "xxugPlsa", "pm1RuDUG"]}' \
    > test.out 2>&1
eval_tap $? 29 'PublicUnbanTopicMembers' test.out

#- 30 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic '5KztbId5' \
    --body '{"userId": "QQqOuzj2"}' \
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
    --body '{"chatRateLimitBurst": 92, "chatRateLimitDuration": 44, "concurrentUsersLimit": 24, "enableClanChat": false, "enableManualTopicCreation": false, "enableProfanityFilter": true, "filterAppName": "iqPViDUQ", "filterParam": "ldK6DuKp", "filterType": "D4RUadFH", "generalRateLimitBurst": 91, "generalRateLimitDuration": 81, "shardCapacityLimit": 36, "shardDefaultLimit": 83, "shardHardLimit": 30, "spamChatBurst": 18, "spamChatDuration": 6, "spamMuteDuration": 75}' \
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
    --body '{"enabled": false, "expiresIn": 58, "hook": {"driver": "KAFKA", "params": "7tM9zHXv"}, "jsonSchema": {"PpFOa9hj": {}, "IfEilx5l": {}, "Tr6EYFEX": {}}, "name": "6YwMXtZc", "saveInbox": true, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 37 'AdminAddInboxCategory' test.out

#- 38 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category 'XL9aEmbX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteInboxCategory' test.out

#- 39 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category 'frjLMi2Z' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true, "expiresIn": 61, "hook": {"driver": "KAFKA", "params": "hNCPEqck"}, "jsonSchema": {"U4lZrzt6": {}, "esNy83RF": {}, "cVHNmwXA": {}}, "saveInbox": true, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateInboxCategory' test.out

#- 40 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category 'uR9vVvWb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 40 'AdminGetCategorySchema' test.out

#- 41 AdminDeleteInboxMessage
samples/cli/sample-apps Chat adminDeleteInboxMessage \
    --messageId '8rHFtE2A' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxMessage' test.out

#- 42 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --endCreatedAt '85' \
    --limit '99' \
    --messageId '["zw17oCCS", "Oh9jr95d", "Tge8rpC2"]' \
    --offset '19' \
    --order 'HI2z39t7' \
    --scope 'NAMESPACE' \
    --startCreatedAt '94' \
    --status 'DRAFT' \
    --transient 'false' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetInboxMessages' test.out

#- 43 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "hdxIbVTq", "expiredAt": 59, "message": {"kS43AqPe": {}, "hiI8gtgP": {}, "BFqW41AN": {}}, "scope": "USER", "status": "DRAFT", "userIds": ["vY77GDlv", "gFtvuCJ8", "RZm7OszU"]}' \
    > test.out 2>&1
eval_tap $? 43 'AdminSaveInboxMessage' test.out

#- 44 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox 'tueyCy75' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["g4OADQjz", "hh6K2PCo", "Sz6YVwB9"]}' \
    > test.out 2>&1
eval_tap $? 44 'AdminUnsendInboxMessage' test.out

#- 45 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox '0U4iQy2S' \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '31' \
    --status 'READ' \
    --userId '56JTIq89' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetInboxUsers' test.out

#- 46 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId 'yyCqS4f0' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 98, "message": {"H8cypyDj": {}, "5v9P9egh": {}, "xs2kiYkX": {}}, "scope": "NAMESPACE", "userIds": ["3Gx5A6Tk", "WeEqG0d8", "mn5YgRLL"]}' \
    > test.out 2>&1
eval_tap $? 46 'AdminUpdateInboxMessage' test.out

#- 47 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId 'UbPp9TCw' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 47 'AdminSendInboxMessage' test.out

#- 48 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["pgN5x585", "m9iaf2pY", "DpaVFOHv"]' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetInboxStats' test.out

#- 49 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId 'qq6WcznJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'AdminGetChatSnapshot' test.out

#- 50 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId '1RSlehbb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'AdminDeleteChatSnapshot' test.out

#- 51 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask 'Jialud76' \
    --includeChildren 'false' \
    --limit '48' \
    --offset '67' \
    --parentId 'UGuiO7Cy' \
    --startWith 'gfPt7khj' \
    --wordType 'ho2FxUfC' \
    > test.out 2>&1
eval_tap $? 51 'AdminProfanityQuery' test.out

#- 52 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["gaJcwX8V", "oYHmFeTo", "oQuJcdqT"], "falsePositive": ["f2Jt99Ga", "xe7hvi3B", "aBc38Avw"], "word": "ifFg49jJ", "wordType": "z1Qv7P6t"}' \
    > test.out 2>&1
eval_tap $? 52 'AdminProfanityCreate' test.out

#- 53 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["hj7G44bW", "6HyRaZH4", "eIXAz2vQ"], "falsePositive": ["i8defzPV", "H9vk2ACC", "mHbDgQ0Z"], "word": "bm6ARgKO", "wordType": "ChkGUlwg"}, {"falseNegative": ["LDWaGHOw", "Z1VUKRGr", "gAYXa9jK"], "falsePositive": ["Psmo1B9W", "lawTcu7O", "Mh0IV9tH"], "word": "bCEnxK0L", "wordType": "6gerU2ud"}, {"falseNegative": ["OyWkwC4e", "Xwk9rJHZ", "XWIUWQ3Z"], "falsePositive": ["uj5DJLvH", "SHdUuzAL", "IElqVKXP"], "word": "Dqr9wWWX", "wordType": "v3hHJmKR"}]}' \
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
    --limit '29' \
    --offset '17' \
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
    --id '0HmZCE1l' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["xcTUXG0M", "yGHiM15F", "2UMh2FYH"], "falsePositive": ["l9GdVO2T", "5rTNMfoR", "5GfeesCg"], "word": "ri8x39pQ", "wordType": "Xkr6SYD6"}' \
    > test.out 2>&1
eval_tap $? 57 'AdminProfanityUpdate' test.out

#- 58 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id 'mYXlUTBT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'AdminProfanityDelete' test.out

#- 59 PublicGetMessages
samples/cli/sample-apps Chat publicGetMessages \
    > test.out 2>&1
eval_tap $? 59 'PublicGetMessages' test.out

#- 60 PublicGetChatSnapshot
samples/cli/sample-apps Chat publicGetChatSnapshot \
    --chatId 'VhrQ60u1' \
    --namespace $AB_NAMESPACE \
    --topic 'MF3TdpXk' \
    > test.out 2>&1
eval_tap $? 60 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE