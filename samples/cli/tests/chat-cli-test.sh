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
    --body '{"message": "0fuy390N", "timestamp": 57, "topicId": "NCEo1LJw", "topicType": "PERSONAL", "userId": "4pMTR4RC"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminFilterChatMessage' test.out

#- 3 AdminChatHistory
samples/cli/sample-apps Chat adminChatHistory \
    --namespace $AB_NAMESPACE \
    --chatId '["AJq0CKQ9", "D63Hs7Lu", "PuYjhU6s"]' \
    --endCreatedAt '81' \
    --keyword '1AgMvb8I' \
    --limit '83' \
    --offset '59' \
    --order '9KQL5K4p' \
    --senderUserId 'gjugd48e' \
    --shardId 'i8NSs5yN' \
    --startCreatedAt '46' \
    --topic '["Sf0Cjv7b", "OSpfbrcA", "vg58uWXN"]' \
    --unfiltered 'false' \
    > test.out 2>&1
eval_tap $? 3 'AdminChatHistory' test.out

#- 4 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "WF1J8q3i", "name": "fA9Vsbel"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateNamespaceTopic' test.out

#- 5 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '42' \
    --topicType 'fr1IWdlX' \
    > test.out 2>&1
eval_tap $? 5 'AdminTopicList' test.out

#- 6 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["glIFnxld", "zFQQ5vFV", "AXG1mOzW"], "description": "k4o6Fuss", "isChannel": true, "isJoinable": true, "members": ["E0aM4vuH", "x9sIl4iK", "e6v8Ggx7"], "name": "ECJZLG3k", "shardLimit": 99, "type": "X9osYBIa"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminCreateTopic' test.out

#- 7 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '49' \
    --topicName 'O3mNxdel' \
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
    --endCreatedAt '50' \
    --limit '16' \
    --offset '30' \
    --senderUserId 'KTGIALQQ' \
    --startCreatedAt '22' \
    --topicId 'dGrtPKGi' \
    --topicIds '["YJKG75P0", "wY3g3Z6F", "RmHy2i1q"]' \
    --userId 'iEwipTCR' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryTopicLog' test.out

#- 10 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic 'F56ke1Mn' \
    --body '{"description": "PwlxCZnX", "isJoinable": false, "name": "YZ7xsIKQ"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateTopic' test.out

#- 11 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic 'tyOMRee2' \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteTopic' test.out

#- 12 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'YhSYamKb' \
    --body '{"userIds": ["yHWvkH7C", "QSlG0wEg", "xjHMMLpv"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminBanTopicMembers' test.out

#- 13 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic 'gvdHAbv1' \
    > test.out 2>&1
eval_tap $? 13 'AdminChannelTopicInfo' test.out

#- 14 AdminTopicChatHistory
eval_tap 0 14 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 15 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic '5EiGZgk1' \
    --body '{"message": "yA5jZ2Um"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminSendChat' test.out

#- 16 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId 'v07poyu7' \
    --namespace $AB_NAMESPACE \
    --topic 'lkQmLL4H' \
    > test.out 2>&1
eval_tap $? 16 'AdminDeleteChat' test.out

#- 17 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic '1A6jDlR9' \
    --isBanned 'true' \
    --isModerator 'false' \
    --limit '40' \
    --offset '4' \
    --shardId 'GOvMwTnE' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicMembers' test.out

#- 18 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic 'oph1zjV0' \
    > test.out 2>&1
eval_tap $? 18 'AdminTopicShards' test.out

#- 19 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic '4KIxRiD0' \
    --body '{"userIds": ["IaWGhC1W", "bjYMoREi", "XSgnmmIl"]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUnbanTopicMembers' test.out

#- 20 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'LcdFBd0H' \
    --userId 'oxFjRQmB' \
    --body '{"isAdmin": true}' \
    > test.out 2>&1
eval_tap $? 20 'AdminAddTopicMember' test.out

#- 21 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'Mt506mjU' \
    --userId 'UXoT6eLY' \
    > test.out 2>&1
eval_tap $? 21 'AdminRemoveTopicMember' test.out

#- 22 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'true' \
    --includePastMembers 'true' \
    --includePastTopics 'true' \
    --limit '12' \
    --offset '34' \
    --topic '["vuzJEbps", "PjCssUVk", "mQAfYuKB"]' \
    --topicSubType 'SESSION' \
    --topicType 'PERSONAL' \
    --userId 'SAboQugm' \
    > test.out 2>&1
eval_tap $? 22 'AdminQueryTopic' test.out

#- 23 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId '1fDwOU1j' \
    --includePastTopics 'false' \
    --limit '17' \
    --offset '56' \
    --topicSubType 'CLAN' \
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
    --limit '34' \
    --offset '84' \
    --topicType 'mTYW0r9o' \
    > test.out 2>&1
eval_tap $? 25 'PublicTopicList' test.out

#- 26 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'jnGZt0my' \
    --body '{"userIDs": ["qJTm6Vdg", "j9zvt7dS", "2YXBc8u6"]}' \
    > test.out 2>&1
eval_tap $? 26 'PublicBanTopicMembers' test.out

#- 27 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic 'b0UMpY5O' \
    --limit '74' \
    --order '5uXOly46' \
    --startCreatedAt '55' \
    > test.out 2>&1
eval_tap $? 27 'PublicChatHistory' test.out

#- 28 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId 'duiw5oGM' \
    --namespace $AB_NAMESPACE \
    --topic 'FPEbwfjG' \
    > test.out 2>&1
eval_tap $? 28 'PublicDeleteChat' test.out

#- 29 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'MxVfQ3WQ' \
    --body '{"duration": 79, "userId": "xslvO45K"}' \
    > test.out 2>&1
eval_tap $? 29 'PublicMuteUser' test.out

#- 30 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'X7ELTSZY' \
    --body '{"userIDs": ["iYh84BBc", "kEU0wYKv", "Q44hbCiu"]}' \
    > test.out 2>&1
eval_tap $? 30 'PublicUnbanTopicMembers' test.out

#- 31 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'V63lajO2' \
    --body '{"userId": "J5M1SjDq"}' \
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
    --body '{"internalAccessLogEnabled": true, "logLevel": "debug", "logLevelDB": "fatal", "slowQueryThreshold": 47, "socketLogEnabled": false}' \
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
    --body '{"chatRateLimitBurst": 55, "chatRateLimitDuration": 98, "concurrentUsersLimit": 44, "enableClanChat": false, "enableManualTopicCreation": false, "enablePmSendPlatformId": true, "enableProfanityFilter": true, "filterAppName": "2ZZHPADa", "filterParam": "6F9gQWMn", "filterType": "0oxt399G", "generalRateLimitBurst": 45, "generalRateLimitDuration": 32, "maxChatMessageLength": 4, "shardCapacityLimit": 4, "shardDefaultLimit": 53, "shardHardLimit": 31, "spamChatBurst": 71, "spamChatDuration": 47, "spamMuteDuration": 61}' \
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
    --body '{"enabled": false, "expiresIn": 46, "hook": {"driver": "Rqvbtjly", "params": {"sA8aYQAj": {}, "awoIwZbt": {}, "p3lXRRYj": {}}}, "jsonSchema": {"eDkHaOR5": {}, "0ZUu230S": {}, "WeGJmHck": {}}, "name": "QjA7KLS3", "saveInbox": false, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 40 'AdminAddInboxCategory' test.out

#- 41 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category '03Z3iDsP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxCategory' test.out

#- 42 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category 'Mwtftisq' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true, "expiresIn": 36, "hook": {"driver": "t8WPfEM0", "params": {"Mb86lR6g": {}, "6KFQ4Who": {}, "AZyOeiRt": {}}}, "jsonSchema": {"GT7a4Roe": {}, "p97RhWfU": {}, "xSbvYy52": {}}, "saveInbox": true, "sendNotification": true}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateInboxCategory' test.out

#- 43 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category 'oX6dMpDn' \
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
    --messageId 'Gdmdo7hu' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 45 'AdminDeleteInboxMessage' test.out

#- 46 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --endCreatedAt '76' \
    --limit '9' \
    --messageId '["1B09Rp5t", "YBdFKu6s", "FCF3BGOf"]' \
    --offset '96' \
    --order 'zUSvxOek' \
    --scope 'NAMESPACE' \
    --startCreatedAt '36' \
    --status 'DRAFT' \
    --transient 'true' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetInboxMessages' test.out

#- 47 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "b632gvnt", "expiredAt": 42, "message": {"X9pA0axp": {}, "kwd1jWim": {}, "UbenEMjI": {}}, "scope": "NAMESPACE", "status": "DRAFT", "userIds": ["BiFuhfG8", "OEZB6GZu", "xUoneJVh"]}' \
    > test.out 2>&1
eval_tap $? 47 'AdminSaveInboxMessage' test.out

#- 48 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox 'bHP4VpOe' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["9rPpMTRr", "HG1mpDy1", "ag8Nw0iR"]}' \
    > test.out 2>&1
eval_tap $? 48 'AdminUnsendInboxMessage' test.out

#- 49 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox '6NYM1PhF' \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '38' \
    --status 'READ' \
    --userId '1WdtB92r' \
    > test.out 2>&1
eval_tap $? 49 'AdminGetInboxUsers' test.out

#- 50 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId '6ZAS8fEJ' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 30, "message": {"vm7OFNgQ": {}, "hawkim0a": {}, "FxbvIkHu": {}}, "scope": "USER", "userIds": ["gCtD7k0u", "4KJFYIfI", "SNlD7lsb"]}' \
    > test.out 2>&1
eval_tap $? 50 'AdminUpdateInboxMessage' test.out

#- 51 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId 'q8ejvveB' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 51 'AdminSendInboxMessage' test.out

#- 52 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["WmVBzn5c", "dSSNp8u7", "BIdjS6SW"]' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetInboxStats' test.out

#- 53 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId 'NRQFnCtP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'AdminGetChatSnapshot' test.out

#- 54 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId 'j171R836' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteChatSnapshot' test.out

#- 55 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask 'CRFWpjSn' \
    --includeChildren 'true' \
    --limit '19' \
    --offset '28' \
    --parentId 'MH2i6YR2' \
    --startWith '26Vgnk4y' \
    --wordType 'mU99YITN' \
    > test.out 2>&1
eval_tap $? 55 'AdminProfanityQuery' test.out

#- 56 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["cSHHfTgh", "vjr5NmhL", "zALHWrUP"], "falsePositive": ["CgpdGVXA", "rHym94ON", "POo1NkDx"], "word": "Tcm3gjLz", "wordType": "hDp5NPk8"}' \
    > test.out 2>&1
eval_tap $? 56 'AdminProfanityCreate' test.out

#- 57 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["Av5624VQ", "FINT6GlA", "QKIaBuUz"], "falsePositive": ["FFKhw3Ku", "ZG9RpJt7", "b2HJenJh"], "word": "8XttXLzF", "wordType": "nHo0BlLs"}, {"falseNegative": ["qnysdtRD", "7ANUbe4w", "pBuujzYf"], "falsePositive": ["61dUbsyf", "OxHocPPA", "EfGrhjQH"], "word": "gxbivHly", "wordType": "ofUQaNuD"}, {"falseNegative": ["TW8WOooK", "xtW4M5aP", "lJiWlmog"], "falsePositive": ["lxHBcwtA", "78F5mx1H", "jY6gmGo2"], "word": "PRDizLG3", "wordType": "dxbOr8f1"}]}' \
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
    --limit '46' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 59 'AdminProfanityGroup' test.out

#- 60 AdminProfanityImport
samples/cli/sample-apps Chat adminProfanityImport \
    --namespace $AB_NAMESPACE \
    --action 'REPLACE' \
    --showResult 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 60 'AdminProfanityImport' test.out

#- 61 AdminProfanityUpdate
samples/cli/sample-apps Chat adminProfanityUpdate \
    --id 'G8A1RI6y' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["IKCJlgqa", "oD1fxk0P", "BgbWQnbE"], "falsePositive": ["asCOzJgJ", "ASfIZb82", "jWId3SG6"], "word": "8doloj4N", "wordType": "eR35tEAf"}' \
    > test.out 2>&1
eval_tap $? 61 'AdminProfanityUpdate' test.out

#- 62 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id 'cXNXw4aE' \
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
    --chatId 'kLoVDmXo' \
    --namespace $AB_NAMESPACE \
    --topic 'o2aStmu5' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE