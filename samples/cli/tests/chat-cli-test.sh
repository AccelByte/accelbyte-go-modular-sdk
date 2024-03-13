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
    --chatId '["KJpG9a7F", "yL5RkQ6J", "0dxz3bQ3"]' \
    --endCreatedAt '32' \
    --keyword '2fHL9E7b' \
    --limit '45' \
    --offset '17' \
    --order 'NhdEE4Iq' \
    --senderUserId 'KEndLbv1' \
    --shardId 'Z6d4kYaA' \
    --startCreatedAt '15' \
    --topic '["n1HuEbdi", "yuwi8HOf", "LebOPD2p"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminChatHistory' test.out

#- 3 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "6D6P3Cte", "name": "2ENEtowf"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNamespaceTopic' test.out

#- 4 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '71' \
    --topicType 'Y38X5Tke' \
    > test.out 2>&1
eval_tap $? 4 'AdminTopicList' test.out

#- 5 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["fDRtuA2M", "Dsze2QzA", "2g2nDSPF"], "description": "ZM2orvqe", "isChannel": false, "isJoinable": false, "members": ["rOjYE0hi", "takTpRhj", "9dtMePTJ"], "name": "g3AdL87i", "shardLimit": 37, "type": "q3tHPAZk"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminCreateTopic' test.out

#- 6 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '91' \
    --topicName 'yer3cS5m' \
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
    --endCreatedAt '77' \
    --limit '56' \
    --offset '32' \
    --senderUserId 'Hgy6SNDC' \
    --startCreatedAt '76' \
    --topicId 'gjnLzFXh' \
    --topicIds '["1WmryLvp", "EZrzMZ1k", "3CvacbSV"]' \
    --userId 'TdS8jHXo' \
    > test.out 2>&1
eval_tap $? 8 'AdminQueryTopicLog' test.out

#- 9 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic 'lTHiFLSn' \
    --body '{"description": "KTTrKKSD", "isJoinable": true, "name": "DilktL0I"}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateTopic' test.out

#- 10 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic 'uCsmaRm7' \
    > test.out 2>&1
eval_tap $? 10 'AdminDeleteTopic' test.out

#- 11 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'z8bUdUPF' \
    --body '{"userIds": ["GcOQQGmO", "4fEsNiT3", "BdblAwA6"]}' \
    > test.out 2>&1
eval_tap $? 11 'AdminBanTopicMembers' test.out

#- 12 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic 'Z6rln8gl' \
    > test.out 2>&1
eval_tap $? 12 'AdminChannelTopicInfo' test.out

#- 13 AdminTopicChatHistory
eval_tap 0 13 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 14 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic '1OUneYpG' \
    --body '{"message": "hHYvEcDf"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminSendChat' test.out

#- 15 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId 'ln2sPU4n' \
    --namespace $AB_NAMESPACE \
    --topic 'EJmBuzk4' \
    > test.out 2>&1
eval_tap $? 15 'AdminDeleteChat' test.out

#- 16 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'KFc1le5y' \
    --isBanned 'false' \
    --isModerator 'false' \
    --limit '98' \
    --offset '55' \
    --shardId 'FfPgnJZJ' \
    > test.out 2>&1
eval_tap $? 16 'AdminTopicMembers' test.out

#- 17 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic '9sOxPN0n' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicShards' test.out

#- 18 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'vpjKrZBe' \
    --body '{"userIds": ["9RQkClSi", "cnGqVx7X", "V5MVb9cn"]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUnbanTopicMembers' test.out

#- 19 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'C61mlzH5' \
    --userId 'nk9LweLp' \
    --body '{"isAdmin": false}' \
    > test.out 2>&1
eval_tap $? 19 'AdminAddTopicMember' test.out

#- 20 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'n9yvHhBd' \
    --userId 'lcUBzs6S' \
    > test.out 2>&1
eval_tap $? 20 'AdminRemoveTopicMember' test.out

#- 21 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'true' \
    --includePastMembers 'true' \
    --includePastTopics 'false' \
    --limit '54' \
    --offset '73' \
    --topic '["RQtXzckr", "xCDOClyQ", "sYQ2wwVk"]' \
    --topicSubType 'NAMESPACE' \
    --topicType 'PERSONAL' \
    --userId 'p8xz1SvV' \
    > test.out 2>&1
eval_tap $? 21 'AdminQueryTopic' test.out

#- 22 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId 'i9D7B4b5' \
    --includePastTopics 'false' \
    --limit '46' \
    --offset '91' \
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
    --limit '61' \
    --offset '63' \
    --topicType 'z2MqxBGk' \
    > test.out 2>&1
eval_tap $? 24 'PublicTopicList' test.out

#- 25 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'bsAfxbYy' \
    --body '{"userIDs": ["iDVnVeQZ", "f8k16aP3", "csimtpUm"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicBanTopicMembers' test.out

#- 26 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic 'zfxqFUIi' \
    --limit '72' \
    --order 'vciGIyCM' \
    --startCreatedAt '25' \
    > test.out 2>&1
eval_tap $? 26 'PublicChatHistory' test.out

#- 27 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId 'RmXYrAtG' \
    --namespace $AB_NAMESPACE \
    --topic '3WrBqWaw' \
    > test.out 2>&1
eval_tap $? 27 'PublicDeleteChat' test.out

#- 28 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'g44qJUBU' \
    --body '{"duration": 28, "userId": "QHg8nnTk"}' \
    > test.out 2>&1
eval_tap $? 28 'PublicMuteUser' test.out

#- 29 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic '2amm2IwV' \
    --body '{"userIDs": ["Z5ncmHXG", "eiDkNR69", "KgNekdkr"]}' \
    > test.out 2>&1
eval_tap $? 29 'PublicUnbanTopicMembers' test.out

#- 30 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'FW4V8MmU' \
    --body '{"userId": "tgjtx4JX"}' \
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
    --body '{"chatRateLimitBurst": 66, "chatRateLimitDuration": 63, "concurrentUsersLimit": 4, "enableClanChat": true, "enableManualTopicCreation": false, "enableProfanityFilter": false, "filterAppName": "fmpv2jON", "filterParam": "qN2aorPb", "filterType": "L3A77rfq", "generalRateLimitBurst": 5, "generalRateLimitDuration": 17, "shardCapacityLimit": 84, "shardDefaultLimit": 73, "shardHardLimit": 58, "spamChatBurst": 3, "spamChatDuration": 83, "spamMuteDuration": 24}' \
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
    --body '{"enabled": false, "expiresIn": 56, "hook": {"driver": "KAFKA", "params": "pq0xXgla"}, "jsonSchema": {"WPxFYo6f": {}, "uS9tT5hU": {}, "5g7cy5N0": {}}, "name": "Pg4iMFsP", "saveInbox": false, "sendNotification": true}' \
    > test.out 2>&1
eval_tap $? 37 'AdminAddInboxCategory' test.out

#- 38 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category 'KQdlEL3q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteInboxCategory' test.out

#- 39 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category 'rKkzSxmb' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true, "expiresIn": 5, "hook": {"driver": "KAFKA", "params": "ISS0zlqk"}, "jsonSchema": {"119sFeCX": {}, "Ho8I89Uj": {}, "kAyC3Ftn": {}}, "saveInbox": false, "sendNotification": true}' \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateInboxCategory' test.out

#- 40 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category 'hL5VsOcH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 40 'AdminGetCategorySchema' test.out

#- 41 AdminDeleteInboxMessage
samples/cli/sample-apps Chat adminDeleteInboxMessage \
    --messageId 'P5dmTRFb' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxMessage' test.out

#- 42 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --endCreatedAt '77' \
    --limit '3' \
    --messageId '["jMx54EBr", "IF6RePPX", "jG1v2zHb"]' \
    --offset '3' \
    --order 'aDm5gfRP' \
    --scope 'NAMESPACE' \
    --startCreatedAt '83' \
    --status 'SENT' \
    --transient 'false' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetInboxMessages' test.out

#- 43 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "ppkJ7ENb", "expiredAt": 75, "message": {"yL3FC4qc": {}, "QhgMW53M": {}, "ocWD8ZsF": {}}, "scope": "NAMESPACE", "status": "DRAFT", "userIds": ["PEPVA41k", "IocxiRQa", "xNTIb92R"]}' \
    > test.out 2>&1
eval_tap $? 43 'AdminSaveInboxMessage' test.out

#- 44 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox '9xQarMQd' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["SevQQSwK", "vya6ggNw", "Mds2xrBw"]}' \
    > test.out 2>&1
eval_tap $? 44 'AdminUnsendInboxMessage' test.out

#- 45 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox 'rRTiL8re' \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '14' \
    --status 'UNREAD' \
    --userId 'xWTRobp3' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetInboxUsers' test.out

#- 46 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId 'yTAUkILz' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 91, "message": {"PMdQp132": {}, "nf9lfCPT": {}, "forL5XiN": {}}, "scope": "NAMESPACE", "userIds": ["qw4K1AqS", "wAgVwqle", "x7MrMav9"]}' \
    > test.out 2>&1
eval_tap $? 46 'AdminUpdateInboxMessage' test.out

#- 47 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId 'N1iXLUtO' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 47 'AdminSendInboxMessage' test.out

#- 48 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["9Cem3hFI", "fzuhKZnv", "06azas3q"]' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetInboxStats' test.out

#- 49 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId 'rzwX6mqs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'AdminGetChatSnapshot' test.out

#- 50 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId 'oJd6b7TO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'AdminDeleteChatSnapshot' test.out

#- 51 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask 'zzB5UjwR' \
    --includeChildren 'true' \
    --limit '96' \
    --offset '51' \
    --parentId 'ExXeawhh' \
    --startWith 'wnj7fRZA' \
    --wordType 'vQPTJch0' \
    > test.out 2>&1
eval_tap $? 51 'AdminProfanityQuery' test.out

#- 52 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["9q3R05nX", "IM50cPa5", "uPEx2BP1"], "falsePositive": ["GqY8Rbgi", "S1hd3krO", "ssvXZdpg"], "word": "tsNbVGXW", "wordType": "9wawKGF2"}' \
    > test.out 2>&1
eval_tap $? 52 'AdminProfanityCreate' test.out

#- 53 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["RBTuJaH2", "lPDOVgQK", "ZpSpbG6M"], "falsePositive": ["PFsZt6TI", "lVAVqO5G", "srGi20Ld"], "word": "CTQyjcNG", "wordType": "wQWOKtIP"}, {"falseNegative": ["rgxVT3XE", "LRitnOLu", "CW1rb5Ue"], "falsePositive": ["CPO8kAzN", "fS2dfvZw", "nV30Esge"], "word": "ot54CAy8", "wordType": "aI0MOUDr"}, {"falseNegative": ["mCXlPJqV", "u1J0byFA", "GXR1oX8p"], "falsePositive": ["MSbSoXeq", "lfCFsoiK", "PdiJMYys"], "word": "AcRu3dSr", "wordType": "iJAs5P1L"}]}' \
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
    --limit '20' \
    --offset '43' \
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
    --id 'NdFzQOUY' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["G5OKeqsP", "R2U5dVqc", "NWadLvPX"], "falsePositive": ["fGtZwvcO", "Y2aMGRFC", "uSUyW4HF"], "word": "qU56JBFF", "wordType": "UmvQ3BYx"}' \
    > test.out 2>&1
eval_tap $? 57 'AdminProfanityUpdate' test.out

#- 58 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id 'QccDhzAV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'AdminProfanityDelete' test.out

#- 59 PublicGetMessages
samples/cli/sample-apps Chat publicGetMessages \
    > test.out 2>&1
eval_tap $? 59 'PublicGetMessages' test.out

#- 60 PublicGetChatSnapshot
samples/cli/sample-apps Chat publicGetChatSnapshot \
    --chatId 'fh0WYw8v' \
    --namespace $AB_NAMESPACE \
    --topic 'CQSTDI8i' \
    > test.out 2>&1
eval_tap $? 60 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE