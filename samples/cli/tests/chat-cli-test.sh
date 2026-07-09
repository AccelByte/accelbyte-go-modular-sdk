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
    --body '{"message": "zALP7cxh", "timestamp": 54, "topicId": "pUZcaI5X", "topicType": "PERSONAL", "userId": "oZwnMpIX"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminFilterChatMessage' test.out

#- 3 AdminChatHistory
samples/cli/sample-apps Chat adminChatHistory \
    --namespace $AB_NAMESPACE \
    --chatId '["eWWBukrx", "GJ8AjWH7", "Kh56XH7I"]' \
    --endCreatedAt '38' \
    --keyword 'ci215FVN' \
    --limit '72' \
    --offset '23' \
    --order 'I8lRmuaL' \
    --senderUserId 'LQMmizXJ' \
    --shardId 'eOmhgDmD' \
    --startCreatedAt '67' \
    --topic '["wVhI9THW", "NUCVwrk3", "vbfK6k0x"]' \
    --unfiltered 'false' \
    > test.out 2>&1
eval_tap $? 3 'AdminChatHistory' test.out

#- 4 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "BmGuiRe5", "name": "UkxGvAPm"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateNamespaceTopic' test.out

#- 5 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '28' \
    --topicType '1Rrh4XHs' \
    > test.out 2>&1
eval_tap $? 5 'AdminTopicList' test.out

#- 6 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["q2m6D8Qy", "mml2XRA7", "UschOG9M"], "description": "mKtigRWf", "isChannel": false, "isJoinable": false, "members": ["ASiSynU3", "VmWi9QJB", "ThP1NkQP"], "name": "jPTL6KGU", "shardLimit": 39, "type": "jzh1sdJn"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminCreateTopic' test.out

#- 7 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '54' \
    --topicName 'vC7YnbyS' \
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
    --endCreatedAt '38' \
    --limit '100' \
    --offset '8' \
    --senderUserId 'thP5tqqC' \
    --startCreatedAt '84' \
    --topicId 'CfC9LmT2' \
    --topicIds '["HXWWtPiD", "ZQRClzgS", "MDLf9EPr"]' \
    --userId 'aAuy3iQj' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryTopicLog' test.out

#- 10 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic '8NDkUaAR' \
    --body '{"description": "zKrTUzxC", "isJoinable": false, "name": "vIk0NKWe"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateTopic' test.out

#- 11 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic 'p0B8QFzW' \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteTopic' test.out

#- 12 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'ghqH1wbF' \
    --body '{"userIds": ["G8beqC51", "SB4Pajp1", "zFqznmmH"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminBanTopicMembers' test.out

#- 13 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic 'h4hzOtOd' \
    > test.out 2>&1
eval_tap $? 13 'AdminChannelTopicInfo' test.out

#- 14 AdminTopicChatHistory
eval_tap 0 14 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 15 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic 'kIPQpAMt' \
    --body '{"message": "jvXt3cjF", "metadata": "4lhntiPb"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminSendChat' test.out

#- 16 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId 'HJKPsby6' \
    --namespace $AB_NAMESPACE \
    --topic 'YgrKnEvc' \
    > test.out 2>&1
eval_tap $? 16 'AdminDeleteChat' test.out

#- 17 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic '1NpzxvKr' \
    --isBanned 'false' \
    --isModerator 'true' \
    --limit '52' \
    --offset '67' \
    --shardId 'Eyjm95Mu' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicMembers' test.out

#- 18 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic 'eV4ZSZK9' \
    > test.out 2>&1
eval_tap $? 18 'AdminTopicShards' test.out

#- 19 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'YdGC4Vdt' \
    --body '{"userIds": ["ZPtbALi4", "2RgnxAGy", "flkCx0BJ"]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUnbanTopicMembers' test.out

#- 20 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'yWqB28gz' \
    --userId 'vkMci99K' \
    --body '{"isAdmin": true}' \
    > test.out 2>&1
eval_tap $? 20 'AdminAddTopicMember' test.out

#- 21 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'vJMOuj0L' \
    --userId 'EMdRvPs4' \
    > test.out 2>&1
eval_tap $? 21 'AdminRemoveTopicMember' test.out

#- 22 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'true' \
    --includePastMembers 'false' \
    --includePastTopics 'true' \
    --limit '10' \
    --offset '88' \
    --topic '["AWZhvNyq", "6s10q495", "gkDimvtw"]' \
    --topicSubType 'CLAN' \
    --topicType 'PERSONAL' \
    --userId 'ezqNxsM0' \
    > test.out 2>&1
eval_tap $? 22 'AdminQueryTopic' test.out

#- 23 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId 'puDa2WgZ' \
    --includePastTopics 'true' \
    --limit '77' \
    --offset '65' \
    --topicSubType 'CLAN' \
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
    --limit '24' \
    --offset '92' \
    --topicType 'D5QXeCLk' \
    > test.out 2>&1
eval_tap $? 25 'PublicTopicList' test.out

#- 26 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'RF06p1Ab' \
    --body '{"userIDs": ["A7Qtdwbh", "ysXzpkFe", "CqbrXoBd"]}' \
    > test.out 2>&1
eval_tap $? 26 'PublicBanTopicMembers' test.out

#- 27 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic 'Gikhl6RJ' \
    --limit '86' \
    --order 'zWncMErC' \
    --startCreatedAt '48' \
    > test.out 2>&1
eval_tap $? 27 'PublicChatHistory' test.out

#- 28 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId 'aaBFRV8s' \
    --namespace $AB_NAMESPACE \
    --topic 'yveozjtw' \
    > test.out 2>&1
eval_tap $? 28 'PublicDeleteChat' test.out

#- 29 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'N5K6xhaF' \
    --body '{"duration": 16, "userId": "lC8Wp2IL"}' \
    > test.out 2>&1
eval_tap $? 29 'PublicMuteUser' test.out

#- 30 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'eXVmwTHu' \
    --body '{"userIDs": ["Zq0CY7Kv", "POh66s08", "AQ5JQGYW"]}' \
    > test.out 2>&1
eval_tap $? 30 'PublicUnbanTopicMembers' test.out

#- 31 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'vjztiRBd' \
    --body '{"userId": "G3nnfvUX"}' \
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
    --body '{"internalAccessLogEnabled": false, "logLevel": "error", "logLevelDB": "trace", "slowQueryThreshold": 73, "socketLogEnabled": true}' \
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
    --body '{"chatRateLimitBurst": 11, "chatRateLimitDuration": 78, "concurrentUsersLimit": 82, "enableClanChat": true, "enableManualTopicCreation": false, "enablePmSendPlatformId": true, "enableProfanityFilter": false, "filterAppName": "FKEkrNTT", "filterParam": "xyehw2PL", "filterType": "MmfszC0w", "generalRateLimitBurst": 61, "generalRateLimitDuration": 67, "maxChatMessageLength": 47, "maxChatMetadataSize": 83, "shardCapacityLimit": 25, "shardDefaultLimit": 41, "shardHardLimit": 51, "spamChatBurst": 93, "spamChatDuration": 95, "spamMuteDuration": 79}' \
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
    --body '{"enabled": false, "expiresIn": 34, "hook": {"driver": "Q1MODFh1", "params": {"CdnCXvKB": {}, "VXnwmiSa": {}, "mPLfMyM7": {}}}, "jsonSchema": {"HgpuQMLl": {}, "4oAjoEN1": {}, "BIVxjwYx": {}}, "name": "ZXUkGM2b", "saveInbox": true, "sendNotification": true}' \
    > test.out 2>&1
eval_tap $? 40 'AdminAddInboxCategory' test.out

#- 41 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category 'xRMoJ3JZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxCategory' test.out

#- 42 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category 'w9Ny1mGm' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false, "expiresIn": 12, "hook": {"driver": "cGElexFE", "params": {"PF58FsnV": {}, "d4jOZMXQ": {}, "7pEBr7P4": {}}}, "jsonSchema": {"9uUsJLzf": {}, "vPxUTCYt": {}, "mGq2RDxV": {}}, "saveInbox": false, "sendNotification": true}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateInboxCategory' test.out

#- 43 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category '5PyZuvZL' \
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
    --messageId 'L3Fjk7sZ' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 45 'AdminDeleteInboxMessage' test.out

#- 46 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --endCreatedAt '17' \
    --limit '66' \
    --messageId '["Krg4v95h", "O1UuAlnn", "WYYBdgfI"]' \
    --offset '94' \
    --order 'RpFQC0IU' \
    --scope 'NAMESPACE' \
    --startCreatedAt '64' \
    --status 'DRAFT' \
    --transient 'true' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetInboxMessages' test.out

#- 47 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "hZ6wVXo9", "expiredAt": 37, "message": {"hHffFOtF": {}, "CKWyGENu": {}, "GSHhPOdM": {}}, "scope": "USER", "status": "DRAFT", "userIds": ["Ghx0IMAB", "ruzbAKOX", "Tzh3Gs0g"]}' \
    > test.out 2>&1
eval_tap $? 47 'AdminSaveInboxMessage' test.out

#- 48 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox '3T1WXvuD' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["mIOkBYbJ", "lW1eoBwY", "CDqCOZLq"]}' \
    > test.out 2>&1
eval_tap $? 48 'AdminUnsendInboxMessage' test.out

#- 49 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox 'rYkwA8tB' \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '86' \
    --status 'READ' \
    --userId 'YKPHZ3d9' \
    > test.out 2>&1
eval_tap $? 49 'AdminGetInboxUsers' test.out

#- 50 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId 'qgVcqDnx' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 2, "message": {"ZphnskAI": {}, "Xe4JD2DR": {}, "tA6OBE9b": {}}, "scope": "NAMESPACE", "userIds": ["SxRsfqjJ", "voTtGGKm", "ImFuMGyP"]}' \
    > test.out 2>&1
eval_tap $? 50 'AdminUpdateInboxMessage' test.out

#- 51 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId 'nDKQGVWS' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 51 'AdminSendInboxMessage' test.out

#- 52 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["UrR4rrqC", "IVHDZW5P", "m7BFOK36"]' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetInboxStats' test.out

#- 53 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId 'YG3tTzHy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'AdminGetChatSnapshot' test.out

#- 54 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId 'm9GxidUe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteChatSnapshot' test.out

#- 55 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask 'IIDXO6Vc' \
    --includeChildren 'true' \
    --limit '19' \
    --offset '65' \
    --parentId 'XFx0ncq7' \
    --startWith '2yQTyic3' \
    --wordType 'Y2lISjoO' \
    > test.out 2>&1
eval_tap $? 55 'AdminProfanityQuery' test.out

#- 56 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["8X4aDwzC", "96nYcDye", "OUMffmmX"], "falsePositive": ["7gXQOgbD", "Jnc6vbxy", "bQuP48f9"], "word": "DYP3BPHK", "wordType": "Qk6I7Rdm"}' \
    > test.out 2>&1
eval_tap $? 56 'AdminProfanityCreate' test.out

#- 57 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["JaOOqJGD", "ok8yTZ15", "WndkGMvV"], "falsePositive": ["n5FxGs00", "KZhOi54N", "8lItlVgF"], "word": "ks2SOH81", "wordType": "5MQge1XB"}, {"falseNegative": ["wr8Digrq", "P6s5qJqi", "WRKTVqFv"], "falsePositive": ["qTuUtGRS", "cmuibmE6", "RWwJxX2a"], "word": "UWJbdFwr", "wordType": "CzxlSZtN"}, {"falseNegative": ["XVhNWPqY", "0B1ByRqb", "gSA1dNQZ"], "falsePositive": ["7db5TAyp", "lP1z5Ntx", "knhbNG1L"], "word": "9fPeLMUM", "wordType": "Za3DjENA"}]}' \
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
    --limit '28' \
    --offset '89' \
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
    --id 'sWl3W83o' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["JRTYH2Aw", "EV7Pe8Yr", "NGIpkCuQ"], "falsePositive": ["Cu9HpxkU", "EFz6yQyu", "6eXHm5Zv"], "word": "jyl1d71H", "wordType": "nq60I322"}' \
    > test.out 2>&1
eval_tap $? 61 'AdminProfanityUpdate' test.out

#- 62 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id '03Xy1wOz' \
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
    --chatId '7WIzVc0n' \
    --namespace $AB_NAMESPACE \
    --topic 'x71AokaT' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE