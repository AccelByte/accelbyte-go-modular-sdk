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
echo "1..65"

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
    --body '{"message": "Kl4Nqn8K", "timestamp": 17, "topicId": "ugidTGrf", "topicType": "PERSONAL", "userId": "tkramPUr"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminFilterChatMessage' test.out

#- 3 AdminChatHistory
samples/cli/sample-apps Chat adminChatHistory \
    --namespace $AB_NAMESPACE \
    --chatId '["n2Em16uO", "P86g84YN", "8gw903b6"]' \
    --endCreatedAt '14' \
    --keyword '2TK1vq6k' \
    --limit '68' \
    --offset '33' \
    --order 'pjHRtNOR' \
    --senderUserId '4rDrcOSX' \
    --shardId 'Kx4uHAVf' \
    --startCreatedAt '53' \
    --topic '["JkyD0W7C", "iUqZs213", "ehR1WB3s"]' \
    --unfiltered 'true' \
    > test.out 2>&1
eval_tap $? 3 'AdminChatHistory' test.out

#- 4 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "uRT9sng2", "name": "MQnKwGtY"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateNamespaceTopic' test.out

#- 5 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '35' \
    --topicType 'zQs7pm5B' \
    > test.out 2>&1
eval_tap $? 5 'AdminTopicList' test.out

#- 6 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["HnGL8iOJ", "Krumizgu", "fyEzOLoD"], "description": "0cB8NOs0", "isChannel": true, "isJoinable": true, "members": ["8GX97TlB", "EySUYFfk", "GWXvVRod"], "name": "lwQYTWCe", "shardLimit": 47, "type": "4sobGzSm"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminCreateTopic' test.out

#- 7 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '6' \
    --topicName 'PkNwrxdJ' \
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
    --endCreatedAt '29' \
    --limit '49' \
    --offset '34' \
    --senderUserId 'wtVdjijK' \
    --startCreatedAt '13' \
    --topicId 'ov5E7PKq' \
    --topicIds '["AOExelxX", "vr2ziqRo", "sG7X6xfh"]' \
    --userId '5eZ9cX7l' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryTopicLog' test.out

#- 10 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic 'bvRPczxE' \
    --body '{"description": "Cq63Uf1r", "isJoinable": true, "name": "Kcn2GDCW"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateTopic' test.out

#- 11 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic 'q7M2lbof' \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteTopic' test.out

#- 12 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'iO7TG6so' \
    --body '{"userIds": ["ACEOv28y", "ZRNKMBhd", "cZDFQAnT"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminBanTopicMembers' test.out

#- 13 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic 'CEutRv2n' \
    > test.out 2>&1
eval_tap $? 13 'AdminChannelTopicInfo' test.out

#- 14 AdminTopicChatHistory
eval_tap 0 14 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 15 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic 'PKj1dK5k' \
    --body '{"message": "rCEFlFcp"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminSendChat' test.out

#- 16 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId 'jogP4tqQ' \
    --namespace $AB_NAMESPACE \
    --topic 'dp4YdbPN' \
    > test.out 2>&1
eval_tap $? 16 'AdminDeleteChat' test.out

#- 17 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'iixUG9i0' \
    --isBanned 'true' \
    --isModerator 'false' \
    --limit '3' \
    --offset '55' \
    --shardId 'XMt8jG8S' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicMembers' test.out

#- 18 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic 'DAEuZVeI' \
    > test.out 2>&1
eval_tap $? 18 'AdminTopicShards' test.out

#- 19 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'yPHSWMc9' \
    --body '{"userIds": ["Y6vfDAl9", "dik6qZtb", "BvU3nQ8C"]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUnbanTopicMembers' test.out

#- 20 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic '8GvrGDZa' \
    --userId '7OdC9Zbk' \
    --body '{"isAdmin": false}' \
    > test.out 2>&1
eval_tap $? 20 'AdminAddTopicMember' test.out

#- 21 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic '3Z43S51v' \
    --userId 'bDV8RoI0' \
    > test.out 2>&1
eval_tap $? 21 'AdminRemoveTopicMember' test.out

#- 22 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'false' \
    --includePastMembers 'false' \
    --includePastTopics 'false' \
    --limit '33' \
    --offset '0' \
    --topic '["0PnI5kHr", "0EDuSE9x", "KL4tYMTE"]' \
    --topicSubType 'CLAN' \
    --topicType 'PERSONAL' \
    --userId '9E2q3Lvg' \
    > test.out 2>&1
eval_tap $? 22 'AdminQueryTopic' test.out

#- 23 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId 'JLwaFr7k' \
    --includePastTopics 'false' \
    --limit '96' \
    --offset '35' \
    --topicSubType 'NORMAL' \
    --topicType 'PERSONAL' \
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
    --limit '71' \
    --offset '14' \
    --topicType 'ThWShyqk' \
    > test.out 2>&1
eval_tap $? 25 'PublicTopicList' test.out

#- 26 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'SDIfhgHB' \
    --body '{"userIDs": ["nK2KJ7Ai", "wxlblSST", "Npm2TCsO"]}' \
    > test.out 2>&1
eval_tap $? 26 'PublicBanTopicMembers' test.out

#- 27 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic 'kt0V6aL2' \
    --limit '4' \
    --order '27gObaIv' \
    --startCreatedAt '20' \
    > test.out 2>&1
eval_tap $? 27 'PublicChatHistory' test.out

#- 28 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId 'CxCnVE40' \
    --namespace $AB_NAMESPACE \
    --topic 'gSEzefcb' \
    > test.out 2>&1
eval_tap $? 28 'PublicDeleteChat' test.out

#- 29 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'YsbKbzuC' \
    --body '{"duration": 53, "userId": "lyEstanY"}' \
    > test.out 2>&1
eval_tap $? 29 'PublicMuteUser' test.out

#- 30 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'fk43d9i7' \
    --body '{"userIDs": ["FQ2Oqne2", "fORkiMiQ", "KVfZH2Ro"]}' \
    > test.out 2>&1
eval_tap $? 30 'PublicUnbanTopicMembers' test.out

#- 31 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'PpZdo40z' \
    --body '{"userId": "IEabEkkZ"}' \
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
    --body '{"internalAccessLogEnabled": false, "logLevel": "trace", "logLevelDB": "trace", "slowQueryThreshold": 20, "socketLogEnabled": true}' \
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
    --body '{"chatRateLimitBurst": 59, "chatRateLimitDuration": 3, "concurrentUsersLimit": 77, "enableClanChat": false, "enableManualTopicCreation": false, "enablePmSendPlatformId": true, "enableProfanityFilter": true, "filterAppName": "ZOM6cmZo", "filterParam": "Jzsyb8V9", "filterType": "Xcu9c8qQ", "generalRateLimitBurst": 80, "generalRateLimitDuration": 35, "maxChatMessageLength": 9, "shardCapacityLimit": 89, "shardDefaultLimit": 86, "shardHardLimit": 80, "spamChatBurst": 68, "spamChatDuration": 5, "spamMuteDuration": 61}' \
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
    --body '{"enabled": false, "expiresIn": 30, "hook": {"driver": "dVQqBFkn", "params": {"WC7LOYDO": {}, "pNZ9XHR1": {}, "OTD1zsXz": {}}}, "jsonSchema": {"fXshL9B7": {}, "M9DJFAXF": {}, "e1o7gfJx": {}}, "name": "5zC9Rc7v", "saveInbox": false, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 40 'AdminAddInboxCategory' test.out

#- 41 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category 't7bW3Ukw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxCategory' test.out

#- 42 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category 'liMRbmgZ' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true, "expiresIn": 57, "hook": {"driver": "1cBHCC0u", "params": {"SzbG4DKQ": {}, "dblEepJi": {}, "j9ZSABpr": {}}}, "jsonSchema": {"DJXBcqwQ": {}, "LZ38Ddt3": {}, "tPPBIuq3": {}}, "saveInbox": true, "sendNotification": true}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateInboxCategory' test.out

#- 43 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category 'IZAFUItn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'AdminGetCategorySchema' test.out

#- 44 AdminListKafkaTopic
samples/cli/sample-apps Chat adminListKafkaTopic \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'AdminListKafkaTopic' test.out

#- 45 AdminDeleteInboxMessage
samples/cli/sample-apps Chat adminDeleteInboxMessage \
    --messageId 'IV3xtOCt' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 45 'AdminDeleteInboxMessage' test.out

#- 46 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --endCreatedAt '15' \
    --limit '0' \
    --messageId '["iwaqN6Kb", "tPUUhf5Z", "nh4AEfiZ"]' \
    --offset '30' \
    --order 'Qu6ELT4P' \
    --scope 'USER' \
    --startCreatedAt '38' \
    --status 'SENT' \
    --transient 'false' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetInboxMessages' test.out

#- 47 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "NvY64Mus", "expiredAt": 53, "message": {"iUfykcpY": {}, "nOkS8cZf": {}, "iQDL8h8q": {}}, "scope": "USER", "status": "DRAFT", "userIds": ["T5vrg0Q9", "JkcnHWGx", "RCWalbAc"]}' \
    > test.out 2>&1
eval_tap $? 47 'AdminSaveInboxMessage' test.out

#- 48 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox 'yEWhR0gp' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["UCNQX9T3", "2ZpG6Bkm", "2JqgYkzg"]}' \
    > test.out 2>&1
eval_tap $? 48 'AdminUnsendInboxMessage' test.out

#- 49 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox '2gv8CTge' \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '72' \
    --status 'UNREAD' \
    --userId 'gVeTphH3' \
    > test.out 2>&1
eval_tap $? 49 'AdminGetInboxUsers' test.out

#- 50 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId 'K0UyB75n' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 87, "message": {"9WhkVCqb": {}, "Ex1tuK2R": {}, "yjfH1LqU": {}}, "scope": "USER", "userIds": ["B9J5NCcN", "ufKRSln3", "JMeE6K52"]}' \
    > test.out 2>&1
eval_tap $? 50 'AdminUpdateInboxMessage' test.out

#- 51 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId 'G1jnUyBf' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 51 'AdminSendInboxMessage' test.out

#- 52 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["VgpS2PS8", "mmuzql03", "GmUngFyH"]' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetInboxStats' test.out

#- 53 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId 'BDlnWNLG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'AdminGetChatSnapshot' test.out

#- 54 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId 'qypJuuG2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteChatSnapshot' test.out

#- 55 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask 'VnvJHLvr' \
    --includeChildren 'false' \
    --limit '78' \
    --offset '34' \
    --parentId 'WWwZMmde' \
    --startWith '8XCmvDm3' \
    --wordType '0nG1vK9H' \
    > test.out 2>&1
eval_tap $? 55 'AdminProfanityQuery' test.out

#- 56 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["VGLU1u81", "a1ETvgpB", "GLFM7rev"], "falsePositive": ["YHDD28hV", "CjLavvQe", "yfO43Dur"], "word": "bQ7YwBqU", "wordType": "gASn5ysz"}' \
    > test.out 2>&1
eval_tap $? 56 'AdminProfanityCreate' test.out

#- 57 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["sG5Bwu9B", "kfdrVeIs", "iLQeIz5r"], "falsePositive": ["JgLR9kaG", "Cpw6oZx5", "QLtYN8lQ"], "word": "IRlhOfP5", "wordType": "t8iQkUm2"}, {"falseNegative": ["fmPvMMDl", "VT9GDkFZ", "olgXgtQd"], "falsePositive": ["kbqTGTs5", "YNeagqsP", "pKZDrLtw"], "word": "17w5mlR4", "wordType": "NB9oEexs"}, {"falseNegative": ["vH2RLno2", "yiTcvwL0", "VRoWyo1S"], "falsePositive": ["616yy1W9", "73YdUVKT", "zjxNPJAs"], "word": "Vl30hBlX", "wordType": "EwWYeJCQ"}]}' \
    > test.out 2>&1
eval_tap $? 57 'AdminProfanityCreateBulk' test.out

#- 58 AdminProfanityExport
samples/cli/sample-apps Chat adminProfanityExport \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'AdminProfanityExport' test.out

#- 59 AdminProfanityGroup
samples/cli/sample-apps Chat adminProfanityGroup \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 59 'AdminProfanityGroup' test.out

#- 60 AdminProfanityImport
samples/cli/sample-apps Chat adminProfanityImport \
    --namespace $AB_NAMESPACE \
    --action 'FULLREPLACE' \
    --showResult 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 60 'AdminProfanityImport' test.out

#- 61 AdminProfanityUpdate
samples/cli/sample-apps Chat adminProfanityUpdate \
    --id 'd3pEJHaZ' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["lA7CnNjd", "bbvPluuO", "78rZKpf5"], "falsePositive": ["5pHkdEeL", "RqWFLXn5", "acYomIin"], "word": "yhk3hpwi", "wordType": "kDWtNi5d"}' \
    > test.out 2>&1
eval_tap $? 61 'AdminProfanityUpdate' test.out

#- 62 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id 'Erg5uV1Z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'AdminProfanityDelete' test.out

#- 63 PublicGetMessages
samples/cli/sample-apps Chat publicGetMessages \
    > test.out 2>&1
eval_tap $? 63 'PublicGetMessages' test.out

#- 64 PublicGetConfigV1
samples/cli/sample-apps Chat publicGetConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicGetConfigV1' test.out

#- 65 PublicGetChatSnapshot
samples/cli/sample-apps Chat publicGetChatSnapshot \
    --chatId 'sfZANLLu' \
    --namespace $AB_NAMESPACE \
    --topic 'OqSC1Kkt' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE