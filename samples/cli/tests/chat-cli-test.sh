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
    --detail 'false' \
    --body '{"message": "o7BlKEeG", "timestamp": 37, "topicId": "82PnvzfF", "topicType": "PERSONAL", "userId": "wVUCHUe6"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminFilterChatMessage' test.out

#- 3 AdminChatHistory
samples/cli/sample-apps Chat adminChatHistory \
    --namespace $AB_NAMESPACE \
    --chatId '["VXoOCJwl", "yElQFatK", "PfLSvDTU"]' \
    --endCreatedAt '88' \
    --keyword 'bKmTb4HG' \
    --limit '80' \
    --offset '21' \
    --order 'bqcWFTZp' \
    --senderUserId 'uXFCKRML' \
    --shardId 'qpPjRS8m' \
    --startCreatedAt '88' \
    --topic '["feM7842q", "BvKpS70Q", "hHUdrhL5"]' \
    --unfiltered 'true' \
    > test.out 2>&1
eval_tap $? 3 'AdminChatHistory' test.out

#- 4 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "S6e1bB0E", "name": "1Su4Gn9Z"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateNamespaceTopic' test.out

#- 5 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '18' \
    --topicType 'H85BlUkz' \
    > test.out 2>&1
eval_tap $? 5 'AdminTopicList' test.out

#- 6 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["yyo4p35L", "2VyaqCJR", "zqILB5jX"], "description": "gb2WCNAJ", "isChannel": true, "isJoinable": true, "members": ["mVAukFce", "7QtV65b4", "wrWZTOSy"], "name": "AtyYWX2Y", "shardLimit": 34, "type": "A6lKHaYi"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminCreateTopic' test.out

#- 7 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '33' \
    --topicName 'st8aodyV' \
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
    --endCreatedAt '97' \
    --limit '78' \
    --offset '99' \
    --senderUserId 'oJv42Wtk' \
    --startCreatedAt '77' \
    --topicId 'z28Adlpe' \
    --topicIds '["b3rOCZdj", "YfseyeVZ", "qkUxwCQA"]' \
    --userId 'vWDp6p1j' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryTopicLog' test.out

#- 10 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic 'TaVjnxds' \
    --body '{"description": "xcauCnqS", "isJoinable": false, "name": "8VWipTSW"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateTopic' test.out

#- 11 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic 'pmsACfN5' \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteTopic' test.out

#- 12 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'KLAZnau9' \
    --body '{"userIds": ["PIf72ZB2", "p6uBGMSp", "XG56iOAe"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminBanTopicMembers' test.out

#- 13 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic 'VybiK6uN' \
    > test.out 2>&1
eval_tap $? 13 'AdminChannelTopicInfo' test.out

#- 14 AdminTopicChatHistory
eval_tap 0 14 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 15 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic 'zUDk3bd7' \
    --body '{"message": "85zgGSqL"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminSendChat' test.out

#- 16 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId 'GX4pkU9g' \
    --namespace $AB_NAMESPACE \
    --topic 'ekK996M2' \
    > test.out 2>&1
eval_tap $? 16 'AdminDeleteChat' test.out

#- 17 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'VGXUy12B' \
    --isBanned 'false' \
    --isModerator 'false' \
    --limit '2' \
    --offset '66' \
    --shardId 'UUf0mvDW' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicMembers' test.out

#- 18 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic '70Gkvi0O' \
    > test.out 2>&1
eval_tap $? 18 'AdminTopicShards' test.out

#- 19 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'JzGwqrmy' \
    --body '{"userIds": ["kUrRG6RZ", "p3zDMSG1", "5Vbt1xQ1"]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUnbanTopicMembers' test.out

#- 20 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'ffzGOgc9' \
    --userId 'xqlQ7BPO' \
    --body '{"isAdmin": false}' \
    > test.out 2>&1
eval_tap $? 20 'AdminAddTopicMember' test.out

#- 21 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'TmMYR3up' \
    --userId 'KIDQig2r' \
    > test.out 2>&1
eval_tap $? 21 'AdminRemoveTopicMember' test.out

#- 22 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'false' \
    --includePastMembers 'true' \
    --includePastTopics 'false' \
    --limit '98' \
    --offset '89' \
    --topic '["5ST67tfo", "Jhv5t3Ji", "qCTgaa5Q"]' \
    --topicSubType 'NORMAL' \
    --topicType 'PERSONAL' \
    --userId '7SX5Seum' \
    > test.out 2>&1
eval_tap $? 22 'AdminQueryTopic' test.out

#- 23 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId 'ncryI5EA' \
    --includePastTopics 'false' \
    --limit '71' \
    --offset '87' \
    --topicSubType 'SESSION' \
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
    --limit '24' \
    --offset '10' \
    --topicType 'U7bVCf22' \
    > test.out 2>&1
eval_tap $? 25 'PublicTopicList' test.out

#- 26 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic '9lUklz6J' \
    --body '{"userIDs": ["FmYSNsRf", "NJ9kU5Hk", "WH0xUEqk"]}' \
    > test.out 2>&1
eval_tap $? 26 'PublicBanTopicMembers' test.out

#- 27 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic '85g66Y4Z' \
    --limit '56' \
    --order 'ZQI813Gs' \
    --startCreatedAt '36' \
    > test.out 2>&1
eval_tap $? 27 'PublicChatHistory' test.out

#- 28 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId 'LYAEWZNf' \
    --namespace $AB_NAMESPACE \
    --topic '2HnU5FO1' \
    > test.out 2>&1
eval_tap $? 28 'PublicDeleteChat' test.out

#- 29 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'inID6vnM' \
    --body '{"duration": 58, "userId": "LcxSuEAT"}' \
    > test.out 2>&1
eval_tap $? 29 'PublicMuteUser' test.out

#- 30 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'WmssZ2iv' \
    --body '{"userIDs": ["UvJpuWc5", "ahgW6yt5", "rUiKgP8q"]}' \
    > test.out 2>&1
eval_tap $? 30 'PublicUnbanTopicMembers' test.out

#- 31 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'ByC6vFKf' \
    --body '{"userId": "l2A7ip3G"}' \
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
    --body '{"internalAccessLogEnabled": true, "logLevel": "debug", "logLevelDB": "fatal", "slowQueryThreshold": 62, "socketLogEnabled": true}' \
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
    --body '{"chatRateLimitBurst": 64, "chatRateLimitDuration": 100, "concurrentUsersLimit": 83, "enableClanChat": true, "enableManualTopicCreation": false, "enablePmSendPlatformId": false, "enableProfanityFilter": false, "filterAppName": "pJBWnbmK", "filterParam": "poHE8Ri5", "filterType": "uLAU61bX", "generalRateLimitBurst": 10, "generalRateLimitDuration": 69, "maxChatMessageLength": 46, "shardCapacityLimit": 95, "shardDefaultLimit": 88, "shardHardLimit": 100, "spamChatBurst": 59, "spamChatDuration": 92, "spamMuteDuration": 24}' \
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
    --body '{"enabled": true, "expiresIn": 89, "hook": {"driver": "s4qGdkMf", "params": {"P0ojpCJf": {}, "sKEcF9Zz": {}, "lwnBy0mw": {}}}, "jsonSchema": {"ehKsmx3B": {}, "NNSHk0cZ": {}, "ccYUXIMz": {}}, "name": "XosQ93jH", "saveInbox": true, "sendNotification": true}' \
    > test.out 2>&1
eval_tap $? 40 'AdminAddInboxCategory' test.out

#- 41 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category 'YjP1D7pX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxCategory' test.out

#- 42 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category 'LpZaua6c' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false, "expiresIn": 16, "hook": {"driver": "HaVVgOLp", "params": {"0e1gWYuJ": {}, "0CG8plmq": {}, "6qgqiCc1": {}}}, "jsonSchema": {"tqTHPznp": {}, "941OYwTH": {}, "rMiBzmpR": {}}, "saveInbox": true, "sendNotification": true}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateInboxCategory' test.out

#- 43 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category 'g4RS1Ikv' \
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
    --messageId 'z1iZ75EB' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 45 'AdminDeleteInboxMessage' test.out

#- 46 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --endCreatedAt '91' \
    --limit '22' \
    --messageId '["xaxZXvCf", "gnisJz6j", "0mwKLprf"]' \
    --offset '40' \
    --order '45tUlysE' \
    --scope 'NAMESPACE' \
    --startCreatedAt '57' \
    --status 'DRAFT' \
    --transient 'true' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetInboxMessages' test.out

#- 47 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "ZSq5xUqF", "expiredAt": 34, "message": {"qbzfoGGi": {}, "WF4FCu3J": {}, "0kMnFJuG": {}}, "scope": "USER", "status": "SENT", "userIds": ["iLTOrNqZ", "FumQAVip", "wfQQhdH5"]}' \
    > test.out 2>&1
eval_tap $? 47 'AdminSaveInboxMessage' test.out

#- 48 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox 'yIUC4W1h' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["0jeaS9px", "KOMUbOJg", "WDlxiOQE"]}' \
    > test.out 2>&1
eval_tap $? 48 'AdminUnsendInboxMessage' test.out

#- 49 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox 'Fwz9PGqs' \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '9' \
    --status 'READ' \
    --userId 'H8q3Fcyd' \
    > test.out 2>&1
eval_tap $? 49 'AdminGetInboxUsers' test.out

#- 50 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId 'ugFfJgRu' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 48, "message": {"Bf9s5My8": {}, "6dgbfNgE": {}, "7Ku1fFgx": {}}, "scope": "NAMESPACE", "userIds": ["XgDYOPMp", "FxtBp29s", "mbB5IGwO"]}' \
    > test.out 2>&1
eval_tap $? 50 'AdminUpdateInboxMessage' test.out

#- 51 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId 'XwoyBeTL' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 51 'AdminSendInboxMessage' test.out

#- 52 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["ZKT6Uz7O", "LCARnh5b", "e1RLb98U"]' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetInboxStats' test.out

#- 53 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId 'rZyC8WcX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'AdminGetChatSnapshot' test.out

#- 54 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId 'cBJT5PV4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteChatSnapshot' test.out

#- 55 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask 'EirLgskZ' \
    --includeChildren 'true' \
    --limit '96' \
    --offset '16' \
    --parentId 'jCvkgphN' \
    --startWith 'seVAaNFh' \
    --wordType 'eAf0z1ue' \
    > test.out 2>&1
eval_tap $? 55 'AdminProfanityQuery' test.out

#- 56 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["Vg8rfOLl", "FM6LwIBc", "exIjLi9H"], "falsePositive": ["6qs7K6UE", "Xl7uaonV", "gA305Nwm"], "word": "u1a8WyPV", "wordType": "hZkPI5Cz"}' \
    > test.out 2>&1
eval_tap $? 56 'AdminProfanityCreate' test.out

#- 57 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["p6NEnZLJ", "HmwNccDV", "Q3eNwGC9"], "falsePositive": ["lWP8qBCh", "7uzPxgwt", "UE5vjRJd"], "word": "pEXXMRsS", "wordType": "uxZv4DTh"}, {"falseNegative": ["uWgQdY8g", "6A5FFhDQ", "ht0eDTEe"], "falsePositive": ["bAeOQdDT", "SncmX875", "txgZzysg"], "word": "ply8NMIk", "wordType": "oJZV3lt5"}, {"falseNegative": ["PzbaSl1q", "nh6Nm4DQ", "IBDEStFG"], "falsePositive": ["O5pD2LvW", "JaUPQ3hq", "CYhIGq2G"], "word": "XNwi66Sa", "wordType": "IH9tLWzD"}]}' \
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
    --limit '76' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 59 'AdminProfanityGroup' test.out

#- 60 AdminProfanityImport
samples/cli/sample-apps Chat adminProfanityImport \
    --namespace $AB_NAMESPACE \
    --action 'FULLREPLACE' \
    --showResult 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 60 'AdminProfanityImport' test.out

#- 61 AdminProfanityUpdate
samples/cli/sample-apps Chat adminProfanityUpdate \
    --id 'jjDpvzEZ' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["9cMobeU6", "MVAWKIcw", "Qd32BZqP"], "falsePositive": ["zmQFiwHE", "kPIjBSxO", "pDzTQ4VW"], "word": "GQ161GWz", "wordType": "cgL3lqRi"}' \
    > test.out 2>&1
eval_tap $? 61 'AdminProfanityUpdate' test.out

#- 62 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id '7thsI1wC' \
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
    --chatId 'xsdTZSSs' \
    --namespace $AB_NAMESPACE \
    --topic '6me4YRj2' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE