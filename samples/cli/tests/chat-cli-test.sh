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
echo "1..62"

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
    --detail 'false' \
    --body '{"message": "vE5LU4eN", "timestamp": 10, "topicId": "HCZ9Chf4", "topicType": "GROUP", "userId": "vwb9oxb0"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminFilterChatMessage' test.out

#- 3 AdminChatHistory
samples/cli/sample-apps Chat adminChatHistory \
    --namespace $AB_NAMESPACE \
    --chatId '["HQfziWCF", "siCLs6w6", "0EIcjVUc"]' \
    --endCreatedAt '67' \
    --keyword '7pe8fWgC' \
    --limit '86' \
    --offset '5' \
    --order 'OLRF2XpO' \
    --senderUserId 'HonPvdq0' \
    --shardId '1KTFG7Pu' \
    --startCreatedAt '12' \
    --topic '["WBqNV3NM", "FVIr5zNx", "b9QrSJpK"]' \
    > test.out 2>&1
eval_tap $? 3 'AdminChatHistory' test.out

#- 4 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "neuFIETs", "name": "iQLeumii"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateNamespaceTopic' test.out

#- 5 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '76' \
    --topicType 'g5s0vmHt' \
    > test.out 2>&1
eval_tap $? 5 'AdminTopicList' test.out

#- 6 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["Hx2OfoB3", "RVBEqk8e", "41YeLGpL"], "description": "9o754jqE", "isChannel": true, "isJoinable": false, "members": ["u4MvaqqZ", "CVfFDwkw", "HkdfImd1"], "name": "VqmUV30B", "shardLimit": 39, "type": "NiOWR3Mg"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminCreateTopic' test.out

#- 7 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '23' \
    --topicName 'ow1WNueQ' \
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
    --endCreatedAt '54' \
    --limit '50' \
    --offset '18' \
    --senderUserId 'OnNaiPsS' \
    --startCreatedAt '52' \
    --topicId 'Ye299Ef1' \
    --topicIds '["CCff84Qn", "x0Xfgwbb", "nCyrlz3O"]' \
    --userId 's2by2taJ' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryTopicLog' test.out

#- 10 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic 'QzAtrxDz' \
    --body '{"description": "bFlSAaTs", "isJoinable": true, "name": "3OcRq1eu"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateTopic' test.out

#- 11 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic 'jLFtPKtD' \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteTopic' test.out

#- 12 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'wadPOlkN' \
    --body '{"userIds": ["eHKvAVky", "haIqIMwY", "GhdaVmh8"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminBanTopicMembers' test.out

#- 13 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic 'Rz8BAcCo' \
    > test.out 2>&1
eval_tap $? 13 'AdminChannelTopicInfo' test.out

#- 14 AdminTopicChatHistory
eval_tap 0 14 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 15 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic 's7zXnmKo' \
    --body '{"message": "1n7K3vLV"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminSendChat' test.out

#- 16 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId 'UFLBLiaI' \
    --namespace $AB_NAMESPACE \
    --topic 'elXcyWpK' \
    > test.out 2>&1
eval_tap $? 16 'AdminDeleteChat' test.out

#- 17 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'OtuKxxQ2' \
    --isBanned 'true' \
    --isModerator 'true' \
    --limit '49' \
    --offset '7' \
    --shardId 'eHmPBA40' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicMembers' test.out

#- 18 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic '44EmWH4h' \
    > test.out 2>&1
eval_tap $? 18 'AdminTopicShards' test.out

#- 19 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'Ozsy9g0T' \
    --body '{"userIds": ["OASwKFPE", "s0P06wxd", "IJmIH9TB"]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUnbanTopicMembers' test.out

#- 20 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'C1BA0R4c' \
    --userId 'ZOwmCbTe' \
    --body '{"isAdmin": true}' \
    > test.out 2>&1
eval_tap $? 20 'AdminAddTopicMember' test.out

#- 21 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'p1I5Ipwo' \
    --userId 'VEkPoiKJ' \
    > test.out 2>&1
eval_tap $? 21 'AdminRemoveTopicMember' test.out

#- 22 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'true' \
    --includePastMembers 'true' \
    --includePastTopics 'false' \
    --limit '4' \
    --offset '15' \
    --topic '["nmgjXv0o", "Yui5Yg6D", "Tosa5uoR"]' \
    --topicSubType 'NAMESPACE' \
    --topicType 'GROUP' \
    --userId 'BYYRR47Z' \
    > test.out 2>&1
eval_tap $? 22 'AdminQueryTopic' test.out

#- 23 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId 'ybX6295L' \
    --includePastTopics 'true' \
    --limit '83' \
    --offset '64' \
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
    --limit '42' \
    --offset '3' \
    --topicType 'JRqxPeAs' \
    > test.out 2>&1
eval_tap $? 25 'PublicTopicList' test.out

#- 26 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic '6dw7bISc' \
    --body '{"userIDs": ["IPRMLyyk", "ZhwzalnA", "XUGmv1oE"]}' \
    > test.out 2>&1
eval_tap $? 26 'PublicBanTopicMembers' test.out

#- 27 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic '2ueIM2EI' \
    --limit '41' \
    --order 'IuZYEiOw' \
    --startCreatedAt '75' \
    > test.out 2>&1
eval_tap $? 27 'PublicChatHistory' test.out

#- 28 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId '6KBUyZaz' \
    --namespace $AB_NAMESPACE \
    --topic '9bOyhUrJ' \
    > test.out 2>&1
eval_tap $? 28 'PublicDeleteChat' test.out

#- 29 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'ewIZeVTU' \
    --body '{"duration": 45, "userId": "OHSobcAE"}' \
    > test.out 2>&1
eval_tap $? 29 'PublicMuteUser' test.out

#- 30 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic '0lv3SAGS' \
    --body '{"userIDs": ["MVY0is7j", "ogIQxR5n", "zii22ySs"]}' \
    > test.out 2>&1
eval_tap $? 30 'PublicUnbanTopicMembers' test.out

#- 31 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic '4fs4QUAy' \
    --body '{"userId": "sFHWkgiv"}' \
    > test.out 2>&1
eval_tap $? 31 'PublicUnmuteUser' test.out

#- 32 AdminGetAllConfigV1
samples/cli/sample-apps Chat adminGetAllConfigV1 \
    > test.out 2>&1
eval_tap $? 32 'AdminGetAllConfigV1' test.out

#- 33 AdminGetConfigV1
samples/cli/sample-apps Chat adminGetConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'AdminGetConfigV1' test.out

#- 34 AdminUpdateConfigV1
samples/cli/sample-apps Chat adminUpdateConfigV1 \
    --namespace $AB_NAMESPACE \
    --body '{"chatRateLimitBurst": 79, "chatRateLimitDuration": 50, "concurrentUsersLimit": 6, "enableClanChat": false, "enableManualTopicCreation": true, "enableProfanityFilter": true, "filterAppName": "MNr2KnTS", "filterParam": "M7EMpHqs", "filterType": "1PUuLFjQ", "generalRateLimitBurst": 55, "generalRateLimitDuration": 48, "maxChatMessageLength": 0, "shardCapacityLimit": 12, "shardDefaultLimit": 72, "shardHardLimit": 19, "spamChatBurst": 96, "spamChatDuration": 83, "spamMuteDuration": 6}' \
    > test.out 2>&1
eval_tap $? 34 'AdminUpdateConfigV1' test.out

#- 35 ExportConfig
samples/cli/sample-apps Chat exportConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'ExportConfig' test.out

#- 36 ImportConfig
samples/cli/sample-apps Chat importConfig \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 36 'ImportConfig' test.out

#- 37 AdminGetInboxCategories
samples/cli/sample-apps Chat adminGetInboxCategories \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'AdminGetInboxCategories' test.out

#- 38 AdminAddInboxCategory
samples/cli/sample-apps Chat adminAddInboxCategory \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false, "expiresIn": 70, "hook": {"driver": "eDKb26iS", "params": {"YKIojB0Z": {}, "QudfBdR3": {}, "SMYTtFzr": {}}}, "jsonSchema": {"zyghgAdM": {}, "5n0ZepBR": {}, "tJEilCnD": {}}, "name": "WFfIqdO7", "saveInbox": true, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 38 'AdminAddInboxCategory' test.out

#- 39 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category 'cO90yFwL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteInboxCategory' test.out

#- 40 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category '0YAi245a' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false, "expiresIn": 9, "hook": {"driver": "PlH91Vzx", "params": {"Ss3sGRVQ": {}, "bZIw08qC": {}, "gA0sjuaA": {}}}, "jsonSchema": {"GPIhIJAy": {}, "eHFnEipf": {}, "ZP0fmFyK": {}}, "saveInbox": true, "sendNotification": true}' \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateInboxCategory' test.out

#- 41 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category 'lOX4OlLr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'AdminGetCategorySchema' test.out

#- 42 AdminDeleteInboxMessage
samples/cli/sample-apps Chat adminDeleteInboxMessage \
    --messageId 'x5iZfOi1' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 42 'AdminDeleteInboxMessage' test.out

#- 43 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --endCreatedAt '51' \
    --limit '53' \
    --messageId '["I8W83u5B", "Ryfr1HuG", "wRAJytYE"]' \
    --offset '16' \
    --order 'GxMudQeB' \
    --scope 'NAMESPACE' \
    --startCreatedAt '82' \
    --status 'DRAFT' \
    --transient 'true' \
    > test.out 2>&1
eval_tap $? 43 'AdminGetInboxMessages' test.out

#- 44 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "2v0uRpXO", "expiredAt": 46, "message": {"YxFH4rQl": {}, "4lxigKV1": {}, "eWuJaXIt": {}}, "scope": "NAMESPACE", "status": "DRAFT", "userIds": ["x5LpNTWF", "J43hw9lW", "komiRsWf"]}' \
    > test.out 2>&1
eval_tap $? 44 'AdminSaveInboxMessage' test.out

#- 45 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox 'RHQZ5Vbb' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["L6nyezhn", "9HliWnUD", "6HmLDC1i"]}' \
    > test.out 2>&1
eval_tap $? 45 'AdminUnsendInboxMessage' test.out

#- 46 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox 'o5SYt2RU' \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '39' \
    --status 'UNREAD' \
    --userId 'pfCVHQcf' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetInboxUsers' test.out

#- 47 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId 'YFRH94qh' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 18, "message": {"EuLnyz0p": {}, "KjkZPQ0c": {}, "TopsDL4W": {}}, "scope": "USER", "userIds": ["LhpaHhwU", "B7Ke8ImM", "P9bVVMnN"]}' \
    > test.out 2>&1
eval_tap $? 47 'AdminUpdateInboxMessage' test.out

#- 48 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId 'EzLomuyC' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 48 'AdminSendInboxMessage' test.out

#- 49 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["8BgXL78B", "CTC6Z2n7", "IWMw0kxG"]' \
    > test.out 2>&1
eval_tap $? 49 'AdminGetInboxStats' test.out

#- 50 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId 'm9o2WFCY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'AdminGetChatSnapshot' test.out

#- 51 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId 'BD4o32bN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteChatSnapshot' test.out

#- 52 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask '0dAQqj6Z' \
    --includeChildren 'true' \
    --limit '14' \
    --offset '28' \
    --parentId '9zr57zUD' \
    --startWith 'fkH4kEMj' \
    --wordType 'Q6zD6xCj' \
    > test.out 2>&1
eval_tap $? 52 'AdminProfanityQuery' test.out

#- 53 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["7kVpZjnD", "k28vU2Dw", "jZpPIM1V"], "falsePositive": ["47mYpjUn", "uCckiddJ", "QI4ikMbL"], "word": "N9yA1lxI", "wordType": "8VTLYOpE"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminProfanityCreate' test.out

#- 54 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["ZaafPKvu", "VNYb9gzu", "4hNXDJzt"], "falsePositive": ["MT5YRxW4", "AfhA3LVh", "RH9nN8hj"], "word": "pBsPoTEv", "wordType": "Vijuz1zK"}, {"falseNegative": ["hkfUwrNp", "KHbuEpJC", "7lW8vpZq"], "falsePositive": ["AXER2VU2", "XzgFHVQf", "jSnJHvzQ"], "word": "7poUDh52", "wordType": "KNFN50PQ"}, {"falseNegative": ["eEhjgO8T", "1nwtaPrN", "GMgOQiFY"], "falsePositive": ["tqEOkEv0", "4nY4df9J", "4KxKe6ub"], "word": "B6XmgR0t", "wordType": "KbAZlneJ"}]}' \
    > test.out 2>&1
eval_tap $? 54 'AdminProfanityCreateBulk' test.out

#- 55 AdminProfanityExport
samples/cli/sample-apps Chat adminProfanityExport \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 55 'AdminProfanityExport' test.out

#- 56 AdminProfanityGroup
samples/cli/sample-apps Chat adminProfanityGroup \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 56 'AdminProfanityGroup' test.out

#- 57 AdminProfanityImport
samples/cli/sample-apps Chat adminProfanityImport \
    --namespace $AB_NAMESPACE \
    --action 'REPLACE' \
    --showResult 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 57 'AdminProfanityImport' test.out

#- 58 AdminProfanityUpdate
samples/cli/sample-apps Chat adminProfanityUpdate \
    --id 'qYtx35X2' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["hSqlWDOc", "1zzXylsf", "jxv4n5Mt"], "falsePositive": ["FpaZPkcj", "ut6AvIvI", "G06I9AkN"], "word": "IQpXiJ11", "wordType": "pq0DGvev"}' \
    > test.out 2>&1
eval_tap $? 58 'AdminProfanityUpdate' test.out

#- 59 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id 'uzGUYSwr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'AdminProfanityDelete' test.out

#- 60 PublicGetMessages
samples/cli/sample-apps Chat publicGetMessages \
    > test.out 2>&1
eval_tap $? 60 'PublicGetMessages' test.out

#- 61 PublicGetConfigV1
samples/cli/sample-apps Chat publicGetConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'PublicGetConfigV1' test.out

#- 62 PublicGetChatSnapshot
samples/cli/sample-apps Chat publicGetChatSnapshot \
    --chatId '6HYmt4TZ' \
    --namespace $AB_NAMESPACE \
    --topic 'EwHIbFsQ' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE