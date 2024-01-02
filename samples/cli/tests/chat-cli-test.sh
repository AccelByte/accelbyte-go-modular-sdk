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
    --chatId '["ZLSpvBZM", "M9hMWtiy", "ZVCY2YCP"]' \
    --endCreatedAt '3' \
    --keyword 'ZTC5l4FE' \
    --limit '96' \
    --offset '25' \
    --order 'YikRtOq3' \
    --senderUserId '5oWU61fb' \
    --shardId 'VcJugfWR' \
    --startCreatedAt '5' \
    --topic '["XngoyDuQ", "Dqbl8zEe", "fWFO9hRb"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminChatHistory' test.out

#- 3 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "49vlVfob", "name": "iBG9tozk"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNamespaceTopic' test.out

#- 4 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '11' \
    --topicType '9q2zaKFX' \
    > test.out 2>&1
eval_tap $? 4 'AdminTopicList' test.out

#- 5 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["cOY9GXx0", "cYRBkAqp", "QwdRIqKL"], "description": "2LcMhAWU", "isChannel": true, "isJoinable": false, "members": ["SIHlS3DB", "UTNUX2ok", "oArWDuXr"], "name": "bq9vji0S", "shardLimit": 64, "type": "ZSJGQSwU"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminCreateTopic' test.out

#- 6 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '68' \
    --topicName 'EpjbCPex' \
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
    --endCreatedAt '17' \
    --limit '16' \
    --offset '33' \
    --senderUserId 'IlmDEODz' \
    --startCreatedAt '24' \
    --topicId 'KIVWIhqb' \
    --topicIds '["KKacektf", "tTZ7lY1A", "uZ15r1vJ"]' \
    --userId 'dWbGVARv' \
    > test.out 2>&1
eval_tap $? 8 'AdminQueryTopicLog' test.out

#- 9 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic '8c75FYSp' \
    --body '{"description": "MAGkSEay", "isJoinable": true, "name": "nnddXVIF"}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateTopic' test.out

#- 10 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic '2lUMY3TX' \
    > test.out 2>&1
eval_tap $? 10 'AdminDeleteTopic' test.out

#- 11 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic '1ky8vWHx' \
    --body '{"userIds": ["D66Ikk4G", "nryKaz1q", "WwZc8tQt"]}' \
    > test.out 2>&1
eval_tap $? 11 'AdminBanTopicMembers' test.out

#- 12 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic 'FbrI4fPW' \
    > test.out 2>&1
eval_tap $? 12 'AdminChannelTopicInfo' test.out

#- 13 AdminTopicChatHistory
eval_tap 0 13 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 14 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic 'hAg4I5xU' \
    --body '{"message": "Tlrn7rU1"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminSendChat' test.out

#- 15 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId 'RiESP0jy' \
    --namespace $AB_NAMESPACE \
    --topic 'j6Ih1Ktm' \
    > test.out 2>&1
eval_tap $? 15 'AdminDeleteChat' test.out

#- 16 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'M3Y1Uz2R' \
    --isBanned 'true' \
    --isModerator 'true' \
    --limit '66' \
    --offset '77' \
    --shardId 'AiTnCeN5' \
    > test.out 2>&1
eval_tap $? 16 'AdminTopicMembers' test.out

#- 17 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic 'vMGgGlvM' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicShards' test.out

#- 18 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'dgvGgtL9' \
    --body '{"userIds": ["nV5q4kl6", "1HhXHpVa", "UHrUQ76q"]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUnbanTopicMembers' test.out

#- 19 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'vNRpGsQ0' \
    --userId 'SuE8yT8N' \
    --body '{"isAdmin": true}' \
    > test.out 2>&1
eval_tap $? 19 'AdminAddTopicMember' test.out

#- 20 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'cZb5JRxC' \
    --userId 'hJ3tLUY4' \
    > test.out 2>&1
eval_tap $? 20 'AdminRemoveTopicMember' test.out

#- 21 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'false' \
    --includePastMembers 'true' \
    --includePastTopics 'false' \
    --limit '39' \
    --offset '91' \
    --topic '["AYtidoBp", "hzIL6Qq4", "kWjRx9mv"]' \
    --topicSubType 'NORMAL' \
    --topicType 'GROUP' \
    --userId 'sZZ4imCU' \
    > test.out 2>&1
eval_tap $? 21 'AdminQueryTopic' test.out

#- 22 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId 'TKEuv23v' \
    --includePastTopics 'false' \
    --limit '84' \
    --offset '47' \
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
    --limit '56' \
    --offset '46' \
    --topicType 'CNAPEaAL' \
    > test.out 2>&1
eval_tap $? 24 'PublicTopicList' test.out

#- 25 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'bGtsOabZ' \
    --body '{"userIDs": ["nVcI5QyU", "bgL0pV4n", "F7WVaJ3Z"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicBanTopicMembers' test.out

#- 26 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic 'Bavw3TrZ' \
    --limit '44' \
    --order 'tglCRhf9' \
    --startCreatedAt '53' \
    > test.out 2>&1
eval_tap $? 26 'PublicChatHistory' test.out

#- 27 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId 'xi2UP2TW' \
    --namespace $AB_NAMESPACE \
    --topic 'Z1IEMvBG' \
    > test.out 2>&1
eval_tap $? 27 'PublicDeleteChat' test.out

#- 28 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'QTsJKlyR' \
    --body '{"duration": 93, "userId": "uKRNA8Id"}' \
    > test.out 2>&1
eval_tap $? 28 'PublicMuteUser' test.out

#- 29 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'FU1YZVFK' \
    --body '{"userIDs": ["y6vyGyh4", "9hiT6PkU", "ADyHc5QA"]}' \
    > test.out 2>&1
eval_tap $? 29 'PublicUnbanTopicMembers' test.out

#- 30 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic '8m03JBYe' \
    --body '{"userId": "qsBlEw3k"}' \
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
    --body '{"chatRateLimitBurst": 96, "chatRateLimitDuration": 14, "concurrentUsersLimit": 6, "enableClanChat": false, "enableManualTopicCreation": false, "enableProfanityFilter": true, "filterAppName": "onRNM9uV", "filterParam": "ReAWRDxs", "filterType": "s1WJxFrS", "generalRateLimitBurst": 30, "generalRateLimitDuration": 56, "shardCapacityLimit": 71, "shardDefaultLimit": 52, "shardHardLimit": 87, "spamChatBurst": 45, "spamChatDuration": 35, "spamMuteDuration": 42}' \
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
    --body '{"enabled": false, "expiresIn": 38, "hook": {"driver": "KAFKA", "params": "SQDJvuUm"}, "jsonSchema": {"zIaoPMSe": {}, "MtJYjj0u": {}, "eWdR1SJd": {}}, "name": "YTudbeU3", "saveInbox": false, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 37 'AdminAddInboxCategory' test.out

#- 38 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category '0nTVUvMN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteInboxCategory' test.out

#- 39 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category 'ibjnsDR1' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true, "expiresIn": 81, "hook": {"driver": "KAFKA", "params": "2Y9M1jAF"}, "jsonSchema": {"E7bVeZRR": {}, "ekivn2zc": {}, "1b4kAeeD": {}}, "saveInbox": true, "sendNotification": true}' \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateInboxCategory' test.out

#- 40 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category 'JWoVO6hr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 40 'AdminGetCategorySchema' test.out

#- 41 AdminDeleteInboxMessage
samples/cli/sample-apps Chat adminDeleteInboxMessage \
    --messageId 'EAL7nU9X' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxMessage' test.out

#- 42 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --endCreatedAt '91' \
    --limit '97' \
    --messageId '["asAlEPPt", "uL0irpqV", "cOKEYSkX"]' \
    --offset '29' \
    --order '9bzswliC' \
    --scope 'NAMESPACE' \
    --startCreatedAt '77' \
    --status 'DRAFT' \
    --transient 'true' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetInboxMessages' test.out

#- 43 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "3kZeOvyz", "expiredAt": 81, "message": {"9EDh5OKE": {}, "XfMFV6bW": {}, "svV8uqWK": {}}, "scope": "NAMESPACE", "status": "DRAFT", "userIds": ["CiekEXVB", "Ryxgo3x8", "YPjdnxK7"]}' \
    > test.out 2>&1
eval_tap $? 43 'AdminSaveInboxMessage' test.out

#- 44 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox '36GqENHy' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["gA3lXg1m", "287HbFJF", "dT3cm3aJ"]}' \
    > test.out 2>&1
eval_tap $? 44 'AdminUnsendInboxMessage' test.out

#- 45 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox 'f9WFGvHj' \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '73' \
    --status 'READ' \
    --userId '3SUkUFU4' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetInboxUsers' test.out

#- 46 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId 'Tkb4rCkR' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 16, "message": {"ZrTbgtxr": {}, "PGxCpbPY": {}, "p1j0GRah": {}}, "scope": "NAMESPACE", "userIds": ["vgNX7BWA", "K4qh44OB", "8kcZZSG4"]}' \
    > test.out 2>&1
eval_tap $? 46 'AdminUpdateInboxMessage' test.out

#- 47 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId 'U0CAPVkx' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 47 'AdminSendInboxMessage' test.out

#- 48 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["vmy9Efzd", "H16aWfwo", "hw1x1HcX"]' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetInboxStats' test.out

#- 49 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId 'Wg19KzHS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'AdminGetChatSnapshot' test.out

#- 50 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId 'vJS7hOi1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'AdminDeleteChatSnapshot' test.out

#- 51 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask 'QTx3P1mr' \
    --includeChildren 'false' \
    --limit '96' \
    --offset '59' \
    --parentId 'SvArHN7G' \
    --startWith 'm6uIJdXc' \
    --wordType 'M9uAoDVo' \
    > test.out 2>&1
eval_tap $? 51 'AdminProfanityQuery' test.out

#- 52 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["NS8biTIJ", "1lnWd3oo", "kl4lAdbf"], "falsePositive": ["6CWS1j4A", "MNlyq96b", "o9UqehkW"], "word": "lQPX9EHz", "wordType": "CF6k8E5e"}' \
    > test.out 2>&1
eval_tap $? 52 'AdminProfanityCreate' test.out

#- 53 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["5ySkiQ02", "hxQvxZa7", "QqhLoyvK"], "falsePositive": ["YkKyqBMc", "0QK3uggQ", "MXCjnvXg"], "word": "WoxAEEnq", "wordType": "LcAumLmB"}, {"falseNegative": ["3Z3dhyd0", "yuPgfgaH", "J3Q7zjqV"], "falsePositive": ["6Bf29Rqi", "VAh2GDD7", "HpdNE3Bb"], "word": "vDEQm2UH", "wordType": "hP4VdAIv"}, {"falseNegative": ["swpoZkTc", "umKlZf2c", "KFdHhViS"], "falsePositive": ["38gwwpfD", "pEUKd9Nt", "wmwgLaI9"], "word": "fYGYi87M", "wordType": "F4hRwBw8"}]}' \
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
    --limit '71' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 55 'AdminProfanityGroup' test.out

#- 56 AdminProfanityImport
samples/cli/sample-apps Chat adminProfanityImport \
    --namespace $AB_NAMESPACE \
    --action 'REPLACE' \
    --showResult 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 56 'AdminProfanityImport' test.out

#- 57 AdminProfanityUpdate
samples/cli/sample-apps Chat adminProfanityUpdate \
    --id 'YO9MCFhK' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["xWWA8sMp", "D1qmn4Xm", "LlSxlA0g"], "falsePositive": ["4oCTxLzv", "yQ9J0Uo9", "92KzJw0s"], "word": "R8Ex41PL", "wordType": "npeAguNj"}' \
    > test.out 2>&1
eval_tap $? 57 'AdminProfanityUpdate' test.out

#- 58 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id 'Z5AkE6AX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'AdminProfanityDelete' test.out

#- 59 PublicGetMessages
samples/cli/sample-apps Chat publicGetMessages \
    > test.out 2>&1
eval_tap $? 59 'PublicGetMessages' test.out

#- 60 PublicGetChatSnapshot
samples/cli/sample-apps Chat publicGetChatSnapshot \
    --chatId 'ACCoE5eN' \
    --namespace $AB_NAMESPACE \
    --topic '4AFxEcpF' \
    > test.out 2>&1
eval_tap $? 60 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE