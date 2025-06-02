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
    --body '{"message": "9stxZ9pk", "timestamp": 5, "topicId": "ezw1TYTr", "topicType": "GROUP", "userId": "q6Dti90M"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminFilterChatMessage' test.out

#- 3 AdminChatHistory
samples/cli/sample-apps Chat adminChatHistory \
    --namespace $AB_NAMESPACE \
    --chatId '["GqoinUme", "jHrxURpI", "Apk7gZMP"]' \
    --endCreatedAt '0' \
    --keyword 'u5piLVuE' \
    --limit '25' \
    --offset '0' \
    --order 'M8ZfVgvF' \
    --senderUserId 'JnyYsJ7s' \
    --shardId 'zGpPbDTQ' \
    --startCreatedAt '87' \
    --topic '["EIiUnotm", "2dJfXXTm", "EMav3WRC"]' \
    --unfiltered 'false' \
    > test.out 2>&1
eval_tap $? 3 'AdminChatHistory' test.out

#- 4 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "EOH0bQrb", "name": "wFh36aNl"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateNamespaceTopic' test.out

#- 5 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '63' \
    --topicType 'NJoVrAJg' \
    > test.out 2>&1
eval_tap $? 5 'AdminTopicList' test.out

#- 6 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["3w6CIaZT", "1KPB6Br0", "KjvjMc2l"], "description": "XZuDbNrg", "isChannel": false, "isJoinable": false, "members": ["wWxRJEBd", "foJoXGzM", "w6jX2Epa"], "name": "MdqkXbmI", "shardLimit": 75, "type": "J6WtTdnP"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminCreateTopic' test.out

#- 7 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '66' \
    --topicName 'XJZkctcJ' \
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
    --endCreatedAt '87' \
    --limit '56' \
    --offset '64' \
    --senderUserId 'ukK0hIAG' \
    --startCreatedAt '64' \
    --topicId '9gQIPavo' \
    --topicIds '["LinHVDjl", "V2wq40c4", "S7hQVQJb"]' \
    --userId 'uCSBF6iS' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryTopicLog' test.out

#- 10 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic 'NtgQWakd' \
    --body '{"description": "TVJm939s", "isJoinable": false, "name": "AIajjFB5"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateTopic' test.out

#- 11 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic 'nHoFjVys' \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteTopic' test.out

#- 12 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'WP2eqCAI' \
    --body '{"userIds": ["kQQLCvQU", "XsVsw8g6", "07lqLcuI"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminBanTopicMembers' test.out

#- 13 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic 'PRmOfkRD' \
    > test.out 2>&1
eval_tap $? 13 'AdminChannelTopicInfo' test.out

#- 14 AdminTopicChatHistory
eval_tap 0 14 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 15 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic '5mihLRln' \
    --body '{"message": "01obCq1F"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminSendChat' test.out

#- 16 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId 'BCXS3BIL' \
    --namespace $AB_NAMESPACE \
    --topic 'ohL1b9HF' \
    > test.out 2>&1
eval_tap $? 16 'AdminDeleteChat' test.out

#- 17 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'iS3Nmwwa' \
    --isBanned 'false' \
    --isModerator 'true' \
    --limit '83' \
    --offset '78' \
    --shardId 'h0NQR4Uw' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicMembers' test.out

#- 18 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic '2ThTCRcv' \
    > test.out 2>&1
eval_tap $? 18 'AdminTopicShards' test.out

#- 19 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'qm5IgPT2' \
    --body '{"userIds": ["NKtMc9QZ", "htCDj09d", "h2CCSfkU"]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUnbanTopicMembers' test.out

#- 20 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic '3MhYVlHj' \
    --userId 'MpRs1DnN' \
    --body '{"isAdmin": true}' \
    > test.out 2>&1
eval_tap $? 20 'AdminAddTopicMember' test.out

#- 21 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'N2l4e3SY' \
    --userId 'HZRvDx6O' \
    > test.out 2>&1
eval_tap $? 21 'AdminRemoveTopicMember' test.out

#- 22 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'false' \
    --includePastMembers 'true' \
    --includePastTopics 'false' \
    --limit '50' \
    --offset '62' \
    --topic '["rP2Z4jvG", "c8Xu9shC", "PektGl9J"]' \
    --topicSubType 'CLAN' \
    --topicType 'GROUP' \
    --userId 'buFsqi8I' \
    > test.out 2>&1
eval_tap $? 22 'AdminQueryTopic' test.out

#- 23 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId 'QD0Z2IIx' \
    --includePastTopics 'false' \
    --limit '0' \
    --offset '62' \
    --topicSubType 'NORMAL' \
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
    --offset '46' \
    --topicType 'mEoDnlOg' \
    > test.out 2>&1
eval_tap $? 25 'PublicTopicList' test.out

#- 26 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'VR5KCMdx' \
    --body '{"userIDs": ["R8qEdrXl", "jL1D03Yu", "3HOKjyj5"]}' \
    > test.out 2>&1
eval_tap $? 26 'PublicBanTopicMembers' test.out

#- 27 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic 'tECWhiGK' \
    --limit '46' \
    --order 'EuEfXS4U' \
    --startCreatedAt '93' \
    > test.out 2>&1
eval_tap $? 27 'PublicChatHistory' test.out

#- 28 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId 'FWTbBV6U' \
    --namespace $AB_NAMESPACE \
    --topic 'oNO0i9BH' \
    > test.out 2>&1
eval_tap $? 28 'PublicDeleteChat' test.out

#- 29 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'YdB61tvh' \
    --body '{"duration": 72, "userId": "jJrdzdJr"}' \
    > test.out 2>&1
eval_tap $? 29 'PublicMuteUser' test.out

#- 30 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'JKFAm4Oe' \
    --body '{"userIDs": ["e0ZURtFf", "l5MvqB6x", "RHGVeX67"]}' \
    > test.out 2>&1
eval_tap $? 30 'PublicUnbanTopicMembers' test.out

#- 31 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'Hw0vBqt6' \
    --body '{"userId": "227Ohq3d"}' \
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
    --body '{"internalAccessLogEnabled": true, "logLevel": "error", "logLevelDB": "panic", "slowQueryThreshold": 8, "socketLogEnabled": false}' \
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
    --body '{"chatRateLimitBurst": 76, "chatRateLimitDuration": 45, "concurrentUsersLimit": 98, "enableClanChat": true, "enableManualTopicCreation": true, "enablePmSendPlatformId": true, "enableProfanityFilter": true, "filterAppName": "jhDShTpA", "filterParam": "V4CnhItC", "filterType": "AsueOgeJ", "generalRateLimitBurst": 79, "generalRateLimitDuration": 59, "maxChatMessageLength": 38, "shardCapacityLimit": 46, "shardDefaultLimit": 78, "shardHardLimit": 88, "spamChatBurst": 77, "spamChatDuration": 98, "spamMuteDuration": 88}' \
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
    --body '{"enabled": false, "expiresIn": 78, "hook": {"driver": "3FVdZMaA", "params": {"shh6W2sb": {}, "eVaqg15b": {}, "7wT4kvIR": {}}}, "jsonSchema": {"iZo9y0xI": {}, "FkhVrCRI": {}, "akzvGB8p": {}}, "name": "IL9COpDR", "saveInbox": false, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 40 'AdminAddInboxCategory' test.out

#- 41 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category 'hlfRqT3W' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxCategory' test.out

#- 42 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category 'Hdrpp929' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false, "expiresIn": 14, "hook": {"driver": "BrUjG0QI", "params": {"WTbP03AL": {}, "1W5alFax": {}, "88V5u9id": {}}}, "jsonSchema": {"NtsASslx": {}, "btwR2zNo": {}, "piSNZ8nQ": {}}, "saveInbox": false, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateInboxCategory' test.out

#- 43 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category 'Ie2L9xYr' \
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
    --messageId 'P2Mtlrjg' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 45 'AdminDeleteInboxMessage' test.out

#- 46 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --endCreatedAt '88' \
    --limit '96' \
    --messageId '["NF0gzBDE", "QU4srcqC", "mHiRqx0P"]' \
    --offset '23' \
    --order 'zQ7krmm6' \
    --scope 'NAMESPACE' \
    --startCreatedAt '2' \
    --status 'UNSENT' \
    --transient 'false' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetInboxMessages' test.out

#- 47 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "1Pk24H0T", "expiredAt": 81, "message": {"f2tHd7cV": {}, "9CoQq3qf": {}, "4lmiUY37": {}}, "scope": "NAMESPACE", "status": "SENT", "userIds": ["dfDITHdm", "GzKkuBt4", "WaOva8bP"]}' \
    > test.out 2>&1
eval_tap $? 47 'AdminSaveInboxMessage' test.out

#- 48 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox 'o9ssBjvv' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["z6yYvVQs", "NRxzJY0e", "Cb8SGrY4"]}' \
    > test.out 2>&1
eval_tap $? 48 'AdminUnsendInboxMessage' test.out

#- 49 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox 'ZuNsDigk' \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '83' \
    --status 'READ' \
    --userId 'OFtraO1Z' \
    > test.out 2>&1
eval_tap $? 49 'AdminGetInboxUsers' test.out

#- 50 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId 'pZHsZLHX' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 94, "message": {"VwCkehqV": {}, "18IO9u2x": {}, "lRHArBh1": {}}, "scope": "NAMESPACE", "userIds": ["vnTkaux5", "9rVDDKhy", "DUs87ocM"]}' \
    > test.out 2>&1
eval_tap $? 50 'AdminUpdateInboxMessage' test.out

#- 51 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId '9iygaJ9z' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 51 'AdminSendInboxMessage' test.out

#- 52 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["cCOYVJed", "IozF2U99", "llePXhds"]' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetInboxStats' test.out

#- 53 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId 'ha73VI8O' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'AdminGetChatSnapshot' test.out

#- 54 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId 'kVTF8Jnc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteChatSnapshot' test.out

#- 55 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask 'LURZgfCk' \
    --includeChildren 'true' \
    --limit '88' \
    --offset '77' \
    --parentId 'i6xCZIMb' \
    --startWith 'VzJqoMoK' \
    --wordType 'L2A3y6i8' \
    > test.out 2>&1
eval_tap $? 55 'AdminProfanityQuery' test.out

#- 56 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["grUTlXWp", "3OsP8oTI", "f5qgifks"], "falsePositive": ["lQi31cma", "tYryitE6", "QD0wsI6E"], "word": "2W1yv3yT", "wordType": "EInfCf0x"}' \
    > test.out 2>&1
eval_tap $? 56 'AdminProfanityCreate' test.out

#- 57 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["nIbNKKyP", "FX3NZWtx", "JwogP9kE"], "falsePositive": ["neqwonoE", "ArrBZznX", "wq1BKwr9"], "word": "HmCMblxM", "wordType": "M2O3Kpyi"}, {"falseNegative": ["tTFmf1Kw", "NsxWSotB", "4roghZCW"], "falsePositive": ["dgZp5s1e", "V2vgxqRe", "s8Ojgfvd"], "word": "POOp8CZ2", "wordType": "ZYV0VKcn"}, {"falseNegative": ["KpZ1rXHM", "iqRgA11h", "ygeug1eF"], "falsePositive": ["fDs1zGvK", "ZRYv2oR3", "v4HLJedd"], "word": "jcijjZwF", "wordType": "FU7JqmAd"}]}' \
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
    --limit '99' \
    --offset '6' \
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
    --id 'DkmJVOe7' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["ARNXiTWX", "vUpO48r7", "y9XgG2Jm"], "falsePositive": ["zzViJVgR", "o6S35UNO", "MGFp8C98"], "word": "luRk3dDV", "wordType": "LuQuNnmw"}' \
    > test.out 2>&1
eval_tap $? 61 'AdminProfanityUpdate' test.out

#- 62 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id '7zdzl4It' \
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
    --chatId 'tKUhVBgZ' \
    --namespace $AB_NAMESPACE \
    --topic '1LKhQttq' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE