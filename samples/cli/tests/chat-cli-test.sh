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
    --body '{"message": "V95oaPCc", "timestamp": 19, "topicId": "S3E7GTqn", "topicType": "PERSONAL", "userId": "dzFDyRuk"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminFilterChatMessage' test.out

#- 3 AdminChatHistory
samples/cli/sample-apps Chat adminChatHistory \
    --namespace $AB_NAMESPACE \
    --chatId '["6NBHhhPZ", "0XaybnRz", "RLEogx6Z"]' \
    --endCreatedAt '7' \
    --keyword 'jweBpfhq' \
    --limit '75' \
    --offset '57' \
    --order 'ezLL0QwH' \
    --senderUserId 'TAqElRDR' \
    --shardId '5zb4pYJr' \
    --startCreatedAt '7' \
    --topic '["yeuaWnsa", "9h0YWWtT", "HcTMcj3d"]' \
    --unfiltered 'true' \
    > test.out 2>&1
eval_tap $? 3 'AdminChatHistory' test.out

#- 4 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "yreJJQzt", "name": "Z2GHt9X2"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateNamespaceTopic' test.out

#- 5 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --offset '6' \
    --topicType 'XTiXgIpb' \
    > test.out 2>&1
eval_tap $? 5 'AdminTopicList' test.out

#- 6 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["0QfGJq3n", "5tCFclFV", "EpVHQD9B"], "description": "DDVPfHEO", "isChannel": true, "isJoinable": true, "members": ["ZlzcEQgy", "sq4PAblO", "KnT6F2MY"], "name": "yPzIVkUD", "shardLimit": 19, "type": "mAuHZB1a"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminCreateTopic' test.out

#- 7 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '11' \
    --topicName '5D60Hsk9' \
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
    --limit '96' \
    --offset '59' \
    --senderUserId 'qSI8SsHu' \
    --startCreatedAt '12' \
    --topicId 'pHTukjHG' \
    --topicIds '["olMbr6uJ", "mgHsrp02", "Lm5XcqZZ"]' \
    --userId '3k2Zwxdo' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryTopicLog' test.out

#- 10 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic 'r09xnXuV' \
    --body '{"description": "Nb8dzXVx", "isJoinable": false, "name": "KXgbM4UK"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateTopic' test.out

#- 11 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic 'tl0z18w9' \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteTopic' test.out

#- 12 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'KA9c9qIN' \
    --body '{"userIds": ["QqfJkpFJ", "MRGeTvw2", "GBTB2Hqx"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminBanTopicMembers' test.out

#- 13 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic 'Ys8ZMDEk' \
    > test.out 2>&1
eval_tap $? 13 'AdminChannelTopicInfo' test.out

#- 14 AdminTopicChatHistory
eval_tap 0 14 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 15 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic 'cej6fvfJ' \
    --body '{"message": "3wPFRmgl"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminSendChat' test.out

#- 16 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId '72kJLueb' \
    --namespace $AB_NAMESPACE \
    --topic 'bMgdnnFl' \
    > test.out 2>&1
eval_tap $? 16 'AdminDeleteChat' test.out

#- 17 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic '4dEzfEgA' \
    --isBanned 'false' \
    --isModerator 'false' \
    --limit '71' \
    --offset '73' \
    --shardId 'NsGguKkO' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicMembers' test.out

#- 18 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic 'mVZmjhEc' \
    > test.out 2>&1
eval_tap $? 18 'AdminTopicShards' test.out

#- 19 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'Y0JuuPVi' \
    --body '{"userIds": ["GdD2VTyZ", "9cDArQOh", "jwAPiOvL"]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUnbanTopicMembers' test.out

#- 20 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'YvV3t4up' \
    --userId 'KsEzlpJI' \
    --body '{"isAdmin": true}' \
    > test.out 2>&1
eval_tap $? 20 'AdminAddTopicMember' test.out

#- 21 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'tlEuHB8g' \
    --userId 'vcXaRNU0' \
    > test.out 2>&1
eval_tap $? 21 'AdminRemoveTopicMember' test.out

#- 22 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'false' \
    --includePastMembers 'false' \
    --includePastTopics 'true' \
    --limit '24' \
    --offset '35' \
    --topic '["EzePRCZy", "5AcLATwO", "AI5cah3x"]' \
    --topicSubType 'SESSION' \
    --topicType 'PERSONAL' \
    --userId 'uRPliMLj' \
    > test.out 2>&1
eval_tap $? 22 'AdminQueryTopic' test.out

#- 23 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId 'YKhuxO3d' \
    --includePastTopics 'true' \
    --limit '65' \
    --offset '89' \
    --topicSubType 'NAMESPACE' \
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
    --limit '85' \
    --offset '1' \
    --topicType '5xXZDkNx' \
    > test.out 2>&1
eval_tap $? 25 'PublicTopicList' test.out

#- 26 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'Hx1YrGwJ' \
    --body '{"userIDs": ["D4kNzXL7", "ObWO8KYq", "RonKZjCN"]}' \
    > test.out 2>&1
eval_tap $? 26 'PublicBanTopicMembers' test.out

#- 27 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic 'DoAOIRRI' \
    --limit '88' \
    --order 'D6oZmcUL' \
    --startCreatedAt '52' \
    > test.out 2>&1
eval_tap $? 27 'PublicChatHistory' test.out

#- 28 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId 'jztNCnBU' \
    --namespace $AB_NAMESPACE \
    --topic 'EnEsp65m' \
    > test.out 2>&1
eval_tap $? 28 'PublicDeleteChat' test.out

#- 29 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'Fn35QV0c' \
    --body '{"duration": 21, "userId": "bHslVIPQ"}' \
    > test.out 2>&1
eval_tap $? 29 'PublicMuteUser' test.out

#- 30 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'ygCc1uEh' \
    --body '{"userIDs": ["d3trH5IV", "YDjS6WtB", "SEa4TDj3"]}' \
    > test.out 2>&1
eval_tap $? 30 'PublicUnbanTopicMembers' test.out

#- 31 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'aHUHSA0f' \
    --body '{"userId": "QOKDncg9"}' \
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
    --body '{"internalAccessLogEnabled": true, "logLevel": "debug", "logLevelDB": "error", "slowQueryThreshold": 15, "socketLogEnabled": false}' \
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
    --body '{"chatRateLimitBurst": 5, "chatRateLimitDuration": 65, "concurrentUsersLimit": 62, "enableClanChat": true, "enableManualTopicCreation": false, "enablePmSendPlatformId": false, "enableProfanityFilter": false, "filterAppName": "BDcLlA9R", "filterParam": "qYqbLGzg", "filterType": "vGfffIq4", "generalRateLimitBurst": 11, "generalRateLimitDuration": 22, "maxChatMessageLength": 90, "shardCapacityLimit": 56, "shardDefaultLimit": 65, "shardHardLimit": 77, "spamChatBurst": 42, "spamChatDuration": 61, "spamMuteDuration": 80}' \
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
    --body '{"enabled": true, "expiresIn": 37, "hook": {"driver": "SPQxetA7", "params": {"IC2l3Atr": {}, "mwu59LfM": {}, "Y6FyUrZU": {}}}, "jsonSchema": {"odOU2xRw": {}, "QmVaU53F": {}, "mAEwvUp3": {}}, "name": "XIbiygbJ", "saveInbox": true, "sendNotification": true}' \
    > test.out 2>&1
eval_tap $? 40 'AdminAddInboxCategory' test.out

#- 41 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category 'rmLltPVX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxCategory' test.out

#- 42 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category '7XSmLWCt' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false, "expiresIn": 47, "hook": {"driver": "YUYlPTLe", "params": {"pcdMjRdJ": {}, "KEbCagnY": {}, "EPzwdDIQ": {}}}, "jsonSchema": {"s2QiJT1A": {}, "yxSrr7l7": {}, "GB3pbemP": {}}, "saveInbox": true, "sendNotification": true}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateInboxCategory' test.out

#- 43 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category 'EfLVR7oV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'AdminGetCategorySchema' test.out

#- 44 AdminDeleteInboxMessage
samples/cli/sample-apps Chat adminDeleteInboxMessage \
    --messageId 'wEuuTl85' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 44 'AdminDeleteInboxMessage' test.out

#- 45 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --endCreatedAt '19' \
    --limit '93' \
    --messageId '["cHwct5ni", "2TAEOnDj", "ReWfK26V"]' \
    --offset '57' \
    --order 'jfr7iKo0' \
    --scope 'NAMESPACE' \
    --startCreatedAt '20' \
    --status 'DRAFT' \
    --transient 'false' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetInboxMessages' test.out

#- 46 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "nLTdbFR8", "expiredAt": 57, "message": {"CMWrltPQ": {}, "JYCq22Gd": {}, "4BmarOAS": {}}, "scope": "NAMESPACE", "status": "DRAFT", "userIds": ["a6ore1xg", "7WsRSmyz", "QCTiVD2v"]}' \
    > test.out 2>&1
eval_tap $? 46 'AdminSaveInboxMessage' test.out

#- 47 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox 'vFJQDhDp' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["dNmfo3ER", "S5k91HTI", "1yirTBaK"]}' \
    > test.out 2>&1
eval_tap $? 47 'AdminUnsendInboxMessage' test.out

#- 48 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox 'FdbdiJVf' \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '59' \
    --status 'READ' \
    --userId 'pDPRaoOe' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetInboxUsers' test.out

#- 49 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId 'l3aSZiqG' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 37, "message": {"c6T5XWwy": {}, "Y5RmE9jW": {}, "ANGUy3r4": {}}, "scope": "NAMESPACE", "userIds": ["OHZTejIC", "AxxZ7slc", "Y5kFCKVQ"]}' \
    > test.out 2>&1
eval_tap $? 49 'AdminUpdateInboxMessage' test.out

#- 50 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId 'wO3GJAnW' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 50 'AdminSendInboxMessage' test.out

#- 51 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["dWO3E0LV", "dz4JeHcS", "GSjz6H0c"]' \
    > test.out 2>&1
eval_tap $? 51 'AdminGetInboxStats' test.out

#- 52 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId 'O1zBXs3E' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'AdminGetChatSnapshot' test.out

#- 53 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId 'h6O4FdDU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'AdminDeleteChatSnapshot' test.out

#- 54 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask '4qGTzfUO' \
    --includeChildren 'false' \
    --limit '92' \
    --offset '62' \
    --parentId '0SJ4qLbB' \
    --startWith 'IalWLOvG' \
    --wordType 'CfsklgFP' \
    > test.out 2>&1
eval_tap $? 54 'AdminProfanityQuery' test.out

#- 55 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["T0mzw2aJ", "9QFgBhhz", "NeMzmZ7W"], "falsePositive": ["XOL4UWpU", "VetKdDcW", "TROGGv1Q"], "word": "V2tQWUq6", "wordType": "sVCQdLMd"}' \
    > test.out 2>&1
eval_tap $? 55 'AdminProfanityCreate' test.out

#- 56 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["HGeJkecU", "0rMMqEyI", "cj6CmMyh"], "falsePositive": ["JcPNbrri", "J3xV9Q5M", "AMTMCKhm"], "word": "VXEJLusx", "wordType": "t2THYtH0"}, {"falseNegative": ["AFL57iRU", "dtIJY9TA", "01W3AbeQ"], "falsePositive": ["GYXtFTye", "Oqa23AFv", "bJXKqOwn"], "word": "GXEdKQpj", "wordType": "BK6N5pzP"}, {"falseNegative": ["pmsUTxNU", "iylKeLJg", "ihwg6P98"], "falsePositive": ["FacXIxRY", "DNxqnM2u", "ra2PGzhK"], "word": "9f1wayNd", "wordType": "eabfhkCf"}]}' \
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
    --limit '81' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 58 'AdminProfanityGroup' test.out

#- 59 AdminProfanityImport
samples/cli/sample-apps Chat adminProfanityImport \
    --namespace $AB_NAMESPACE \
    --action 'FULLREPLACE' \
    --showResult 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 59 'AdminProfanityImport' test.out

#- 60 AdminProfanityUpdate
samples/cli/sample-apps Chat adminProfanityUpdate \
    --id 'uwebCpu0' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["x0soNWO9", "Vu38g88k", "T327Dh2c"], "falsePositive": ["R8bLdnpE", "l2lKH82D", "9R6mTNqL"], "word": "txYT4RlR", "wordType": "QpJnlesG"}' \
    > test.out 2>&1
eval_tap $? 60 'AdminProfanityUpdate' test.out

#- 61 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id 'ihvkvNPv' \
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
    --chatId 'EPPKwW2R' \
    --namespace $AB_NAMESPACE \
    --topic 'Ohqyyrx8' \
    > test.out 2>&1
eval_tap $? 64 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE