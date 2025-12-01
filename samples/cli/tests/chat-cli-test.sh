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
    --body '{"message": "9jZ0qpM5", "timestamp": 73, "topicId": "DpwVha1C", "topicType": "PERSONAL", "userId": "0U84vURM"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminFilterChatMessage' test.out

#- 3 AdminChatHistory
samples/cli/sample-apps Chat adminChatHistory \
    --namespace $AB_NAMESPACE \
    --chatId '["hJBjTcKV", "WkFAFX4G", "HwgV8WPJ"]' \
    --endCreatedAt '32' \
    --keyword 'znmBz25l' \
    --limit '83' \
    --offset '3' \
    --order '9RKC5xGJ' \
    --senderUserId 'ISgN0FS7' \
    --shardId '9CjxixgZ' \
    --startCreatedAt '39' \
    --topic '["9HyJi9lA", "7rHYWWQc", "S86FWTdI"]' \
    --unfiltered 'false' \
    > test.out 2>&1
eval_tap $? 3 'AdminChatHistory' test.out

#- 4 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "AdOkjpyg", "name": "GBq80PzE"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateNamespaceTopic' test.out

#- 5 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '29' \
    --topicType 'EZ5oknWP' \
    > test.out 2>&1
eval_tap $? 5 'AdminTopicList' test.out

#- 6 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["9mL38uFV", "ditBwSiS", "hU4PIfLV"], "description": "voOhRypW", "isChannel": true, "isJoinable": true, "members": ["LoYGvTCo", "gJSeg8Lx", "CYmNRQ0B"], "name": "BbrPb9XX", "shardLimit": 24, "type": "Q2coyJsP"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminCreateTopic' test.out

#- 7 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '87' \
    --topicName 'nwMVimsb' \
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
    --endCreatedAt '83' \
    --limit '98' \
    --offset '75' \
    --senderUserId 'AGKAF07Z' \
    --startCreatedAt '19' \
    --topicId 'w9Tb1qZn' \
    --topicIds '["uyUtKTJe", "tHbX899e", "KAUwUZyz"]' \
    --userId 'R6M9XFat' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryTopicLog' test.out

#- 10 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic 'G2R4FOwu' \
    --body '{"description": "TmYOQ5X0", "isJoinable": true, "name": "Vce68Azp"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateTopic' test.out

#- 11 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic 'roAABaSS' \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteTopic' test.out

#- 12 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'FbYBwRHW' \
    --body '{"userIds": ["375HUUwb", "4Gjeqmp5", "J8MIV48B"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminBanTopicMembers' test.out

#- 13 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic 'F4OpDEde' \
    > test.out 2>&1
eval_tap $? 13 'AdminChannelTopicInfo' test.out

#- 14 AdminTopicChatHistory
eval_tap 0 14 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 15 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic 'hy1TFUR4' \
    --body '{"message": "hnjilHYI"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminSendChat' test.out

#- 16 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId 'QFDEEJdS' \
    --namespace $AB_NAMESPACE \
    --topic '84emgxrN' \
    > test.out 2>&1
eval_tap $? 16 'AdminDeleteChat' test.out

#- 17 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'kRhXAvIw' \
    --isBanned 'false' \
    --isModerator 'false' \
    --limit '29' \
    --offset '87' \
    --shardId '2T18VPQ1' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicMembers' test.out

#- 18 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic 'gtLd6Tcr' \
    > test.out 2>&1
eval_tap $? 18 'AdminTopicShards' test.out

#- 19 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic '0pLJ6fcZ' \
    --body '{"userIds": ["hqrDQ7qq", "0mYtMY8D", "GuGne74N"]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUnbanTopicMembers' test.out

#- 20 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic '86wpHcLG' \
    --userId '4n9Ty8sA' \
    --body '{"isAdmin": true}' \
    > test.out 2>&1
eval_tap $? 20 'AdminAddTopicMember' test.out

#- 21 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'C60wGe9i' \
    --userId 'TDz2yNcE' \
    > test.out 2>&1
eval_tap $? 21 'AdminRemoveTopicMember' test.out

#- 22 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'true' \
    --includePastMembers 'false' \
    --includePastTopics 'true' \
    --limit '0' \
    --offset '71' \
    --topic '["7Gc3E4TT", "SyM49w42", "gFJnC1fE"]' \
    --topicSubType 'CLAN' \
    --topicType 'PERSONAL' \
    --userId '0j6KOyWB' \
    > test.out 2>&1
eval_tap $? 22 'AdminQueryTopic' test.out

#- 23 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId 'U7pIeqDx' \
    --includePastTopics 'false' \
    --limit '42' \
    --offset '4' \
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
    --offset '26' \
    --topicType 'tgi43dz7' \
    > test.out 2>&1
eval_tap $? 25 'PublicTopicList' test.out

#- 26 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'oFzX9Cfv' \
    --body '{"userIDs": ["HTdxDVDB", "FPQl9aCh", "elfUg2Pv"]}' \
    > test.out 2>&1
eval_tap $? 26 'PublicBanTopicMembers' test.out

#- 27 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic 'NuEM01QV' \
    --limit '39' \
    --order 'kNkg76U1' \
    --startCreatedAt '70' \
    > test.out 2>&1
eval_tap $? 27 'PublicChatHistory' test.out

#- 28 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId 'rl54aCY8' \
    --namespace $AB_NAMESPACE \
    --topic 'kdWZ8yBY' \
    > test.out 2>&1
eval_tap $? 28 'PublicDeleteChat' test.out

#- 29 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'WU5HHBfT' \
    --body '{"duration": 78, "userId": "AO8ZQQes"}' \
    > test.out 2>&1
eval_tap $? 29 'PublicMuteUser' test.out

#- 30 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'K8XNAaFJ' \
    --body '{"userIDs": ["QK6RQMNI", "jAfiNhI9", "fMkeLbIG"]}' \
    > test.out 2>&1
eval_tap $? 30 'PublicUnbanTopicMembers' test.out

#- 31 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'iJlzdoCo' \
    --body '{"userId": "yuB99PC8"}' \
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
    --body '{"internalAccessLogEnabled": false, "logLevel": "trace", "logLevelDB": "error", "slowQueryThreshold": 61, "socketLogEnabled": true}' \
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
    --body '{"chatRateLimitBurst": 29, "chatRateLimitDuration": 40, "concurrentUsersLimit": 63, "enableClanChat": true, "enableManualTopicCreation": false, "enablePmSendPlatformId": false, "enableProfanityFilter": true, "filterAppName": "0PnQDuii", "filterParam": "uZLC1tnj", "filterType": "Q7Do8qSr", "generalRateLimitBurst": 46, "generalRateLimitDuration": 16, "maxChatMessageLength": 34, "shardCapacityLimit": 39, "shardDefaultLimit": 19, "shardHardLimit": 69, "spamChatBurst": 34, "spamChatDuration": 0, "spamMuteDuration": 47}' \
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
    --body '{"enabled": false, "expiresIn": 8, "hook": {"driver": "amuekBuy", "params": {"JlJ4657e": {}, "8KhAloVF": {}, "G7OgDcEV": {}}}, "jsonSchema": {"Lth9DNwX": {}, "ZTiVhug8": {}, "M1NL3XRs": {}}, "name": "1y4xXDaF", "saveInbox": true, "sendNotification": true}' \
    > test.out 2>&1
eval_tap $? 40 'AdminAddInboxCategory' test.out

#- 41 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category 'f2p5tzCS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxCategory' test.out

#- 42 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category 'qWF6I8c3' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false, "expiresIn": 60, "hook": {"driver": "tfvPDKY7", "params": {"AfDk5qRc": {}, "5qds5BFs": {}, "UNI6AKv4": {}}}, "jsonSchema": {"UI7nw8QD": {}, "PmLwyip3": {}, "3zzdbhJr": {}}, "saveInbox": true, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateInboxCategory' test.out

#- 43 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category '05cRaITL' \
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
    --messageId '2XPhvT0N' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 45 'AdminDeleteInboxMessage' test.out

#- 46 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --endCreatedAt '97' \
    --limit '74' \
    --messageId '["XoTToQb3", "yMi3oLNS", "Erv1DKJv"]' \
    --offset '52' \
    --order '9xQk1pPY' \
    --scope 'USER' \
    --startCreatedAt '22' \
    --status 'DRAFT' \
    --transient 'false' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetInboxMessages' test.out

#- 47 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "135CCqQ0", "expiredAt": 36, "message": {"1fWyfFkv": {}, "Z9MGppBo": {}, "OJgLIee1": {}}, "scope": "NAMESPACE", "status": "SENT", "userIds": ["PI0BZXa3", "vzvqKz8Q", "AAkPfPIc"]}' \
    > test.out 2>&1
eval_tap $? 47 'AdminSaveInboxMessage' test.out

#- 48 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox 'MVw1V22h' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["Loh7ZMQX", "xRG8ptlG", "mCuhAKcW"]}' \
    > test.out 2>&1
eval_tap $? 48 'AdminUnsendInboxMessage' test.out

#- 49 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox 'IQK9jxLq' \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '42' \
    --status 'UNREAD' \
    --userId 'Qliest8e' \
    > test.out 2>&1
eval_tap $? 49 'AdminGetInboxUsers' test.out

#- 50 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId 'AqOhyZQ8' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 33, "message": {"c9faOFKd": {}, "e0fVbFOy": {}, "r9XdonNo": {}}, "scope": "NAMESPACE", "userIds": ["wzDWgK3I", "NF3tbahT", "ERmyzow2"]}' \
    > test.out 2>&1
eval_tap $? 50 'AdminUpdateInboxMessage' test.out

#- 51 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId '9DZTMrvy' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 51 'AdminSendInboxMessage' test.out

#- 52 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["zbWhEBL3", "AkmmQkaS", "OmUrdWgC"]' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetInboxStats' test.out

#- 53 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId '3hu1okFP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'AdminGetChatSnapshot' test.out

#- 54 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId 'dHKmyafo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteChatSnapshot' test.out

#- 55 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask 'FfLJ4N2J' \
    --includeChildren 'true' \
    --limit '11' \
    --offset '99' \
    --parentId '3mZ802Rr' \
    --startWith 'CRvvNmUY' \
    --wordType '3tFZbYhh' \
    > test.out 2>&1
eval_tap $? 55 'AdminProfanityQuery' test.out

#- 56 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["CLGMq9ot", "fz9gzxO6", "8gEovJui"], "falsePositive": ["AJvv3118", "Jsd4XjID", "vdRpx2xx"], "word": "O4byL8UR", "wordType": "tB0BPxsb"}' \
    > test.out 2>&1
eval_tap $? 56 'AdminProfanityCreate' test.out

#- 57 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["7u8brIgr", "CZ260C5Q", "6e8PwM9p"], "falsePositive": ["X8D4R4ak", "HAxx40Be", "RarauxBC"], "word": "AHR3u3GC", "wordType": "ezFNu9wt"}, {"falseNegative": ["8zcwdXpf", "gA6e9Fi5", "3C8TbLHV"], "falsePositive": ["4i8fLGHg", "h8EYNijI", "eZUxXvXh"], "word": "ysPA5kSn", "wordType": "3LKtvzfy"}, {"falseNegative": ["8dsqxTb9", "nyco4NAF", "KSfzuOfh"], "falsePositive": ["fGK6BVtn", "y5RmUn9t", "0vMUK2RQ"], "word": "jYkkyt8L", "wordType": "CEivLJph"}]}' \
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
    --limit '47' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 59 'AdminProfanityGroup' test.out

#- 60 AdminProfanityImport
samples/cli/sample-apps Chat adminProfanityImport \
    --namespace $AB_NAMESPACE \
    --action 'LEAVEOUT' \
    --showResult 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 60 'AdminProfanityImport' test.out

#- 61 AdminProfanityUpdate
samples/cli/sample-apps Chat adminProfanityUpdate \
    --id 'JAO7ZgXp' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["JilOgVga", "YEUlSGZk", "CNQznlvB"], "falsePositive": ["UmD82RGm", "p4nfkzLI", "nypnnaGW"], "word": "Gju9cZI3", "wordType": "EP1ie8i0"}' \
    > test.out 2>&1
eval_tap $? 61 'AdminProfanityUpdate' test.out

#- 62 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id 'LoAyZAxo' \
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
    --chatId 'DB7rOR0X' \
    --namespace $AB_NAMESPACE \
    --topic '83RUOVZD' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE