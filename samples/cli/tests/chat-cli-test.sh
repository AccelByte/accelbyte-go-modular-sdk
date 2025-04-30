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
    --body '{"message": "RpjoDjAq", "timestamp": 19, "topicId": "EQsxINEA", "topicType": "PERSONAL", "userId": "MBGl5i2l"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminFilterChatMessage' test.out

#- 3 AdminChatHistory
samples/cli/sample-apps Chat adminChatHistory \
    --namespace $AB_NAMESPACE \
    --chatId '["hE4lmgJH", "1TpxzNtr", "zMIByYbc"]' \
    --endCreatedAt '66' \
    --keyword 'hZbKuTzv' \
    --limit '16' \
    --offset '83' \
    --order '8MuChgQM' \
    --senderUserId 'zpqkwjw6' \
    --shardId '8QFq5Al2' \
    --startCreatedAt '39' \
    --topic '["aFHtvRxj", "W37vFUfH", "vYKpzbrZ"]' \
    --unfiltered 'true' \
    > test.out 2>&1
eval_tap $? 3 'AdminChatHistory' test.out

#- 4 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "2guE9Nq6", "name": "nV8qzv3S"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateNamespaceTopic' test.out

#- 5 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '92' \
    --topicType 'Hb57XaTF' \
    > test.out 2>&1
eval_tap $? 5 'AdminTopicList' test.out

#- 6 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["GkazQDkO", "kB4fsVfb", "CMOhL2Qa"], "description": "2I59yxgp", "isChannel": false, "isJoinable": false, "members": ["QXfQCyb1", "dsz0uDTA", "DdABya4u"], "name": "dGzFr3LS", "shardLimit": 63, "type": "LnT8KlkH"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminCreateTopic' test.out

#- 7 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '79' \
    --topicName 'H6b6uggJ' \
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
    --endCreatedAt '70' \
    --limit '14' \
    --offset '30' \
    --senderUserId 'EZi2wdCh' \
    --startCreatedAt '59' \
    --topicId 'HqetMsyA' \
    --topicIds '["wIKih0Bn", "FPdzcRqi", "kTj2H7UL"]' \
    --userId 'Qiv5Rn9V' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryTopicLog' test.out

#- 10 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic '4ketULcO' \
    --body '{"description": "AGS0iyP3", "isJoinable": true, "name": "o7aDrNP1"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateTopic' test.out

#- 11 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic 'MT2hQUj7' \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteTopic' test.out

#- 12 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'eS3KYtxS' \
    --body '{"userIds": ["MH20zN68", "HuqcJKJ2", "BKXzsahW"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminBanTopicMembers' test.out

#- 13 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic 'IO0iL3W2' \
    > test.out 2>&1
eval_tap $? 13 'AdminChannelTopicInfo' test.out

#- 14 AdminTopicChatHistory
eval_tap 0 14 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 15 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic 'wbzMbsnS' \
    --body '{"message": "ZkDqzMX4"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminSendChat' test.out

#- 16 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId 'NRboZd3V' \
    --namespace $AB_NAMESPACE \
    --topic 'Kqr4A4f2' \
    > test.out 2>&1
eval_tap $? 16 'AdminDeleteChat' test.out

#- 17 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'wwrMaex3' \
    --isBanned 'false' \
    --isModerator 'true' \
    --limit '55' \
    --offset '82' \
    --shardId 'jq65xBDg' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicMembers' test.out

#- 18 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic 'A5d49gkm' \
    > test.out 2>&1
eval_tap $? 18 'AdminTopicShards' test.out

#- 19 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic '5iiCx2KE' \
    --body '{"userIds": ["Mt8K4UjV", "mw1wuwLY", "RGiNxRwW"]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUnbanTopicMembers' test.out

#- 20 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'bn64ZbuC' \
    --userId '7508tER1' \
    --body '{"isAdmin": true}' \
    > test.out 2>&1
eval_tap $? 20 'AdminAddTopicMember' test.out

#- 21 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic '9TdKAT4o' \
    --userId '5twux3p8' \
    > test.out 2>&1
eval_tap $? 21 'AdminRemoveTopicMember' test.out

#- 22 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'true' \
    --includePastMembers 'false' \
    --includePastTopics 'false' \
    --limit '15' \
    --offset '17' \
    --topic '["z8z8hwss", "TKy4WHrR", "JrJhdUlW"]' \
    --topicSubType 'NAMESPACE' \
    --topicType 'PERSONAL' \
    --userId '70nd6FRv' \
    > test.out 2>&1
eval_tap $? 22 'AdminQueryTopic' test.out

#- 23 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId 'ePDHjBtQ' \
    --includePastTopics 'true' \
    --limit '9' \
    --offset '0' \
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
    --limit '6' \
    --offset '84' \
    --topicType 'ZepVZT9r' \
    > test.out 2>&1
eval_tap $? 25 'PublicTopicList' test.out

#- 26 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic '4JuAgpvP' \
    --body '{"userIDs": ["mrPs0x7R", "ZxkFPoPa", "pAzLOJtl"]}' \
    > test.out 2>&1
eval_tap $? 26 'PublicBanTopicMembers' test.out

#- 27 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic 'u2WL2YiI' \
    --limit '41' \
    --order 'Eix7bSTk' \
    --startCreatedAt '16' \
    > test.out 2>&1
eval_tap $? 27 'PublicChatHistory' test.out

#- 28 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId 'xZU3RpLp' \
    --namespace $AB_NAMESPACE \
    --topic 'IF8DAxpq' \
    > test.out 2>&1
eval_tap $? 28 'PublicDeleteChat' test.out

#- 29 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'JOaV4FjB' \
    --body '{"duration": 19, "userId": "Lhe47puV"}' \
    > test.out 2>&1
eval_tap $? 29 'PublicMuteUser' test.out

#- 30 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'IwUtkTc1' \
    --body '{"userIDs": ["RDVcr0yl", "0IOLDryV", "5ZAT11c6"]}' \
    > test.out 2>&1
eval_tap $? 30 'PublicUnbanTopicMembers' test.out

#- 31 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'lxTGQSQC' \
    --body '{"userId": "W3SoPsQE"}' \
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
    --body '{"internalAccessLogEnabled": true, "logLevel": "fatal", "logLevelDB": "error", "slowQueryThreshold": 28, "socketLogEnabled": true}' \
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
    --body '{"chatRateLimitBurst": 92, "chatRateLimitDuration": 98, "concurrentUsersLimit": 0, "enableClanChat": true, "enableManualTopicCreation": true, "enablePmSendPlatformId": true, "enableProfanityFilter": true, "filterAppName": "bFNNqXw5", "filterParam": "xQQh7Ffr", "filterType": "NoHkfjkB", "generalRateLimitBurst": 39, "generalRateLimitDuration": 13, "maxChatMessageLength": 17, "shardCapacityLimit": 47, "shardDefaultLimit": 57, "shardHardLimit": 38, "spamChatBurst": 28, "spamChatDuration": 52, "spamMuteDuration": 77}' \
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
    --body '{"enabled": true, "expiresIn": 76, "hook": {"driver": "7KoGSI9d", "params": {"JtN0x0h0": {}, "3XlFpJgc": {}, "PqTMkZ6X": {}}}, "jsonSchema": {"l15AV5wQ": {}, "bAJ12a7P": {}, "7jZgammu": {}}, "name": "3xWzITQD", "saveInbox": false, "sendNotification": true}' \
    > test.out 2>&1
eval_tap $? 40 'AdminAddInboxCategory' test.out

#- 41 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category '4k20wf6r' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxCategory' test.out

#- 42 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category 'vV2QhQAz' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false, "expiresIn": 4, "hook": {"driver": "Z3tjcqk8", "params": {"j74pDfRq": {}, "oQS5Q35M": {}, "YSvJJilT": {}}}, "jsonSchema": {"NdfBo7PR": {}, "ivfBsPNR": {}, "A3wKmdth": {}}, "saveInbox": false, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateInboxCategory' test.out

#- 43 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category 'JG5gz8bg' \
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
    --messageId 'feBOlWBD' \
    --namespace $AB_NAMESPACE \
    --force 'false' \
    > test.out 2>&1
eval_tap $? 45 'AdminDeleteInboxMessage' test.out

#- 46 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --endCreatedAt '66' \
    --limit '98' \
    --messageId '["j0Rlyc0w", "WfvLI7EE", "6h91jmT3"]' \
    --offset '90' \
    --order 'nQVPmTd5' \
    --scope 'NAMESPACE' \
    --startCreatedAt '95' \
    --status 'SENT' \
    --transient 'false' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetInboxMessages' test.out

#- 47 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "Qr3KfcWJ", "expiredAt": 96, "message": {"MJL9MOYh": {}, "KtK5gECk": {}, "mzSRqmBU": {}}, "scope": "USER", "status": "SENT", "userIds": ["VcprwY8z", "wWeYMloT", "UeYV4eKf"]}' \
    > test.out 2>&1
eval_tap $? 47 'AdminSaveInboxMessage' test.out

#- 48 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox 'nJcwvB82' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["3BysdH90", "rqU8Elqc", "8QcDjHaD"]}' \
    > test.out 2>&1
eval_tap $? 48 'AdminUnsendInboxMessage' test.out

#- 49 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox 'ArxUUTZ6' \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '2' \
    --status 'READ' \
    --userId 'QnQieKzr' \
    > test.out 2>&1
eval_tap $? 49 'AdminGetInboxUsers' test.out

#- 50 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId 'mnuLsZDS' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 4, "message": {"B83fB3Nh": {}, "BDC0U3zz": {}, "2eiTr7Va": {}}, "scope": "USER", "userIds": ["XrCZHSct", "89S6xjDM", "cGPPA76J"]}' \
    > test.out 2>&1
eval_tap $? 50 'AdminUpdateInboxMessage' test.out

#- 51 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId 'sPENNlYv' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 51 'AdminSendInboxMessage' test.out

#- 52 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["htOpXjbD", "u7QQoTIZ", "mK7ScS2P"]' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetInboxStats' test.out

#- 53 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId '4aBmR463' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'AdminGetChatSnapshot' test.out

#- 54 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId '6QZGcG8n' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteChatSnapshot' test.out

#- 55 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask 'SnmrH1rS' \
    --includeChildren 'false' \
    --limit '17' \
    --offset '38' \
    --parentId 'KcQB4G0l' \
    --startWith 'Gk4mptFl' \
    --wordType 'Lb1GC2YX' \
    > test.out 2>&1
eval_tap $? 55 'AdminProfanityQuery' test.out

#- 56 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["NH2JrYFj", "0b02fyLd", "1CNt9xZy"], "falsePositive": ["luv0gnCh", "r9ZqH362", "Q8MY0jlg"], "word": "V1wCkbTx", "wordType": "IrzI3nFt"}' \
    > test.out 2>&1
eval_tap $? 56 'AdminProfanityCreate' test.out

#- 57 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["80ED1zjy", "DC9xc492", "Mu9UamdG"], "falsePositive": ["fqYc4Aa4", "wAC0y8wd", "M29ym4Rr"], "word": "4b280hTE", "wordType": "RwNkG1xB"}, {"falseNegative": ["0tSrH1dV", "gjAjZNpv", "AfyuihpT"], "falsePositive": ["AarY90Dq", "aeBvkFGJ", "Xa8LXhVc"], "word": "s9foHW0d", "wordType": "T8qOs9NJ"}, {"falseNegative": ["DgKC4ifC", "KnpsrzFa", "In2CDDu2"], "falsePositive": ["dT1gfPDY", "TXJqPwcg", "vik2HIeE"], "word": "SrGIIzOf", "wordType": "QzovvPw9"}]}' \
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
    --limit '29' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 59 'AdminProfanityGroup' test.out

#- 60 AdminProfanityImport
samples/cli/sample-apps Chat adminProfanityImport \
    --namespace $AB_NAMESPACE \
    --action 'LEAVEOUT' \
    --showResult 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 60 'AdminProfanityImport' test.out

#- 61 AdminProfanityUpdate
samples/cli/sample-apps Chat adminProfanityUpdate \
    --id 'enPwhqjx' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["B5F1VvXw", "BmxKzG5a", "CpkhwsvM"], "falsePositive": ["XjicTQvS", "YeUPTvEk", "y4YCZbzD"], "word": "mj33wK8L", "wordType": "BqTev56I"}' \
    > test.out 2>&1
eval_tap $? 61 'AdminProfanityUpdate' test.out

#- 62 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id 'KeHFsG1H' \
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
    --chatId '2qkEOL4i' \
    --namespace $AB_NAMESPACE \
    --topic 'XCBuO1UC' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE