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
    --chatId '["ZCfoXxhQ", "xTmJbadA", "s574jpgq"]' \
    --endCreatedAt '76' \
    --keyword 'CklhBpfT' \
    --limit '70' \
    --offset '6' \
    --order 'MDNn5rug' \
    --senderUserId 'xWH1bCyp' \
    --shardId 'n4vNJIZ7' \
    --startCreatedAt '59' \
    --topic '["3cqDQEqd", "sFJjHhyu", "w3y4KVb6"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminChatHistory' test.out

#- 3 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "wSWILmce", "name": "vjFWo9cj"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNamespaceTopic' test.out

#- 4 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '45' \
    --topicType 'szjudmJf' \
    > test.out 2>&1
eval_tap $? 4 'AdminTopicList' test.out

#- 5 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["Q2VN0E8Q", "ZlPad1LN", "1fcRaoT8"], "description": "kjPHtuoE", "isChannel": false, "isJoinable": true, "members": ["Dr9Mcfl5", "kV5X776h", "GBYzTkgZ"], "name": "Btw28NmZ", "shardLimit": 0, "type": "BPK8Da78"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminCreateTopic' test.out

#- 6 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '5' \
    --topicName 'i1Ubo481' \
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
    --endCreatedAt '38' \
    --limit '55' \
    --offset '13' \
    --senderUserId 'hJW7aw7E' \
    --startCreatedAt '30' \
    --topicId 'f2ZmWDqZ' \
    --topicIds '["3uaJ16ya", "PMFcz7k2", "lcsZEUzf"]' \
    --userId '3YmJ2fhH' \
    > test.out 2>&1
eval_tap $? 8 'AdminQueryTopicLog' test.out

#- 9 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic 'PIgklrOo' \
    --body '{"description": "3rZewytm", "isJoinable": false, "name": "NxHmbzvy"}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateTopic' test.out

#- 10 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic '4xfn4v2C' \
    > test.out 2>&1
eval_tap $? 10 'AdminDeleteTopic' test.out

#- 11 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'DpoBo30y' \
    --body '{"userIds": ["N5KhtdQN", "VmfMAGeT", "2hPEIcKA"]}' \
    > test.out 2>&1
eval_tap $? 11 'AdminBanTopicMembers' test.out

#- 12 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic 'jFmFvVHa' \
    > test.out 2>&1
eval_tap $? 12 'AdminChannelTopicInfo' test.out

#- 13 AdminTopicChatHistory
eval_tap 0 13 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 14 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic 'R56q1jmb' \
    --body '{"message": "hdzGkO39"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminSendChat' test.out

#- 15 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId 'WCkzbuh7' \
    --namespace $AB_NAMESPACE \
    --topic 'Ox7XvxV9' \
    > test.out 2>&1
eval_tap $? 15 'AdminDeleteChat' test.out

#- 16 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'gJcVoIC1' \
    --isBanned 'true' \
    --isModerator 'false' \
    --limit '17' \
    --offset '16' \
    --shardId 'dEJVsk7s' \
    > test.out 2>&1
eval_tap $? 16 'AdminTopicMembers' test.out

#- 17 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic 'kqmZYF0a' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicShards' test.out

#- 18 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'E2wLqf33' \
    --body '{"userIds": ["ML45NbSR", "wKh63HDq", "pW1fae4X"]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUnbanTopicMembers' test.out

#- 19 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'pQa1t0zd' \
    --userId 'GDpOgHyG' \
    --body '{"isAdmin": false}' \
    > test.out 2>&1
eval_tap $? 19 'AdminAddTopicMember' test.out

#- 20 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'GNgdzIPn' \
    --userId 'TATyRGie' \
    > test.out 2>&1
eval_tap $? 20 'AdminRemoveTopicMember' test.out

#- 21 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'true' \
    --includePastMembers 'false' \
    --includePastTopics 'true' \
    --limit '42' \
    --offset '78' \
    --topic '["OXAAOIAR", "69QiCAe6", "l4IQwwSO"]' \
    --topicSubType 'NAMESPACE' \
    --topicType 'PERSONAL' \
    --userId 'Mium6vub' \
    > test.out 2>&1
eval_tap $? 21 'AdminQueryTopic' test.out

#- 22 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId 'C1HMwH6a' \
    --includePastTopics 'true' \
    --limit '84' \
    --offset '18' \
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
    --limit '93' \
    --offset '38' \
    --topicType 'GV1iivqr' \
    > test.out 2>&1
eval_tap $? 24 'PublicTopicList' test.out

#- 25 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'CCFysQe7' \
    --body '{"userIDs": ["onvyF6GS", "QFc87nTy", "lNh5Bwrp"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicBanTopicMembers' test.out

#- 26 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic 'NbRHgHEG' \
    --limit '25' \
    --order 'dlhkvZKV' \
    --startCreatedAt '44' \
    > test.out 2>&1
eval_tap $? 26 'PublicChatHistory' test.out

#- 27 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId 'j0As5RG4' \
    --namespace $AB_NAMESPACE \
    --topic 'HKFo9cvt' \
    > test.out 2>&1
eval_tap $? 27 'PublicDeleteChat' test.out

#- 28 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'jdbtfJHJ' \
    --body '{"duration": 32, "userId": "L8aDSA7H"}' \
    > test.out 2>&1
eval_tap $? 28 'PublicMuteUser' test.out

#- 29 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'ULpMyb2J' \
    --body '{"userIDs": ["6GOBusNE", "fzqe0NCW", "7ZiPhLzO"]}' \
    > test.out 2>&1
eval_tap $? 29 'PublicUnbanTopicMembers' test.out

#- 30 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'ut0fwk3E' \
    --body '{"userId": "NDjznr1X"}' \
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
    --body '{"chatRateLimitBurst": 31, "chatRateLimitDuration": 26, "concurrentUsersLimit": 55, "enableClanChat": true, "enableManualTopicCreation": false, "enableProfanityFilter": true, "filterAppName": "YOXV8ykm", "filterParam": "XWasis4V", "filterType": "dF6Gii9k", "generalRateLimitBurst": 68, "generalRateLimitDuration": 59, "shardCapacityLimit": 57, "shardDefaultLimit": 81, "shardHardLimit": 88, "spamChatBurst": 15, "spamChatDuration": 3, "spamMuteDuration": 20}' \
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
    --body '{"enabled": false, "expiresIn": 48, "hook": {"driver": "KAFKA", "params": {"hn9PCG42": {}, "FG8eZe97": {}, "3GB25g4y": {}}}, "jsonSchema": {"F2aRuHHY": {}, "axRRGPfd": {}, "AYzeTFBX": {}}, "name": "MUTEYAmT", "saveInbox": false, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 37 'AdminAddInboxCategory' test.out

#- 38 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category 'Vn4QqN5G' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteInboxCategory' test.out

#- 39 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category 'I99vBI8J' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false, "expiresIn": 64, "hook": {"driver": "KAFKA", "params": {"8NbWfPxP": {}, "ezWN0SGl": {}, "iSyfhplq": {}}}, "jsonSchema": {"sWUI8chJ": {}, "ogWOKcfD": {}, "MVfPW6Nz": {}}, "saveInbox": true, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateInboxCategory' test.out

#- 40 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category 'tTNUgFj9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 40 'AdminGetCategorySchema' test.out

#- 41 AdminDeleteInboxMessage
samples/cli/sample-apps Chat adminDeleteInboxMessage \
    --messageId 'TEJNiFMM' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxMessage' test.out

#- 42 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --endCreatedAt '31' \
    --limit '42' \
    --messageId '["C7nCfASj", "ea7hJDLN", "GEBlrjtb"]' \
    --offset '35' \
    --order '8gDxDs2r' \
    --scope 'NAMESPACE' \
    --startCreatedAt '22' \
    --status 'UNSENT' \
    --transient 'true' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetInboxMessages' test.out

#- 43 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "LhtdzRTx", "expiredAt": 38, "message": {"qHL3Jl8V": {}, "O0Q4eHdr": {}, "gDrx7pQH": {}}, "scope": "USER", "status": "SENT", "userIds": ["gT4b0DX2", "ALPS7YUq", "1733HzGz"]}' \
    > test.out 2>&1
eval_tap $? 43 'AdminSaveInboxMessage' test.out

#- 44 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox 'iuGSAMIx' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["kAPkupWY", "m3jursdA", "XdElL0xy"]}' \
    > test.out 2>&1
eval_tap $? 44 'AdminUnsendInboxMessage' test.out

#- 45 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox 'EtYSirkn' \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '24' \
    --status 'UNREAD' \
    --userId 'cqTVM0sX' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetInboxUsers' test.out

#- 46 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId 'X0CqkwH5' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 19, "message": {"CdvPh4aS": {}, "YFcP6ove": {}, "KlMdd7Xu": {}}, "scope": "NAMESPACE", "userIds": ["eibZzApD", "wRPj9Tnv", "iUjbmb9L"]}' \
    > test.out 2>&1
eval_tap $? 46 'AdminUpdateInboxMessage' test.out

#- 47 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId 'VhcSZMWB' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 47 'AdminSendInboxMessage' test.out

#- 48 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["8rjN6OCT", "SL8bu35l", "bwJVbOa8"]' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetInboxStats' test.out

#- 49 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId 'Z47M3aqp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'AdminGetChatSnapshot' test.out

#- 50 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId '3tZNMkSK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'AdminDeleteChatSnapshot' test.out

#- 51 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask 'zMn6nYsg' \
    --includeChildren 'false' \
    --limit '50' \
    --offset '12' \
    --parentId 'WE54wbrh' \
    --startWith 'vGpihMkx' \
    --wordType 'NznQLX6M' \
    > test.out 2>&1
eval_tap $? 51 'AdminProfanityQuery' test.out

#- 52 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["nPDwMYeN", "tLqVybj6", "Juxdb7YL"], "falsePositive": ["hHa3NLXj", "99nrQcO6", "o1TLhNAg"], "word": "hJwWl8Xy", "wordType": "meInCl6Q"}' \
    > test.out 2>&1
eval_tap $? 52 'AdminProfanityCreate' test.out

#- 53 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["mmqqBP3J", "DGqMhuxx", "y2VvnW9e"], "falsePositive": ["FtKQG1Fr", "AEHulbLq", "oMnmm2c1"], "word": "fcmEywZr", "wordType": "zp78E1WH"}, {"falseNegative": ["dLKV1cCq", "FO2Ph5HO", "DrtwQkAh"], "falsePositive": ["ELQkUPnC", "Ar88RkWJ", "IPscIXbV"], "word": "RswPONdh", "wordType": "UxFvfO8E"}, {"falseNegative": ["ft6V4XB9", "elcOJhve", "ScevTiCf"], "falsePositive": ["VWAfMsa8", "gmwMFF04", "dhc82DlG"], "word": "0qczXVLu", "wordType": "U5JLG5o5"}]}' \
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
    --limit '14' \
    --offset '82' \
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
    --id 'isasbyYt' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["LEhIQBbH", "ZixEzMj9", "c2u7NPE9"], "falsePositive": ["OS1hhzEU", "PHhMVyx9", "WOP2Wx8y"], "word": "Omlkoa7p", "wordType": "EcyGm68J"}' \
    > test.out 2>&1
eval_tap $? 57 'AdminProfanityUpdate' test.out

#- 58 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id 'RsjAYYns' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'AdminProfanityDelete' test.out

#- 59 PublicGetMessages
samples/cli/sample-apps Chat publicGetMessages \
    > test.out 2>&1
eval_tap $? 59 'PublicGetMessages' test.out

#- 60 PublicGetChatSnapshot
samples/cli/sample-apps Chat publicGetChatSnapshot \
    --chatId 'PuNqQl3L' \
    --namespace $AB_NAMESPACE \
    --topic 'sQPgopMd' \
    > test.out 2>&1
eval_tap $? 60 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE