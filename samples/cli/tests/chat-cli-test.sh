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
    --body '{"message": "YMd0dVO0", "timestamp": 6, "topicId": "8M2kix20", "topicType": "PERSONAL", "userId": "rWovlKeV"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminFilterChatMessage' test.out

#- 3 AdminChatHistory
samples/cli/sample-apps Chat adminChatHistory \
    --namespace $AB_NAMESPACE \
    --chatId '["DlpxwnvC", "N9gUJGbs", "3a9Mh30E"]' \
    --endCreatedAt '88' \
    --keyword '1ZFdhOFv' \
    --limit '60' \
    --offset '49' \
    --order 'rNhNCbb3' \
    --senderUserId '17vfZJsS' \
    --shardId 'wqHgf8JU' \
    --startCreatedAt '14' \
    --topic '["hrplWNlQ", "7D4uzzla", "PQkaS4AY"]' \
    --unfiltered 'true' \
    > test.out 2>&1
eval_tap $? 3 'AdminChatHistory' test.out

#- 4 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "7jYYaulo", "name": "oVqoaA8P"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateNamespaceTopic' test.out

#- 5 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '63' \
    --topicType '7fz8VYsh' \
    > test.out 2>&1
eval_tap $? 5 'AdminTopicList' test.out

#- 6 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["jEQxO30W", "qwMp64L7", "icq5PFas"], "description": "iak0774J", "isChannel": false, "isJoinable": true, "members": ["gTNTuNKr", "cWp7wnq1", "skYNQZIM"], "name": "nZClHWY5", "shardLimit": 81, "type": "u0YzuUiJ"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminCreateTopic' test.out

#- 7 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '33' \
    --topicName 'ZXw9NMzd' \
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
    --endCreatedAt '74' \
    --limit '31' \
    --offset '40' \
    --senderUserId '9eiLiyWo' \
    --startCreatedAt '91' \
    --topicId 'bDqqZ4LR' \
    --topicIds '["OmrjtO9T", "yTcSA7jD", "ZUZyw43a"]' \
    --userId 'UPkCXA4U' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryTopicLog' test.out

#- 10 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic 'By04Q9dU' \
    --body '{"description": "qbRbBX5x", "isJoinable": true, "name": "emKqvL8L"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateTopic' test.out

#- 11 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic '6Q56rNwc' \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteTopic' test.out

#- 12 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic '5lHBVywj' \
    --body '{"userIds": ["EBExCJVu", "2qJNIDXd", "pyQKA81e"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminBanTopicMembers' test.out

#- 13 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic 'y41y9n1c' \
    > test.out 2>&1
eval_tap $? 13 'AdminChannelTopicInfo' test.out

#- 14 AdminTopicChatHistory
eval_tap 0 14 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 15 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic 'aICDr9ne' \
    --body '{"message": "sHsBsXpO"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminSendChat' test.out

#- 16 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId '2Jcs2Qke' \
    --namespace $AB_NAMESPACE \
    --topic 'Fe6hKTN2' \
    > test.out 2>&1
eval_tap $? 16 'AdminDeleteChat' test.out

#- 17 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'wlGs6F6s' \
    --isBanned 'true' \
    --isModerator 'true' \
    --limit '2' \
    --offset '1' \
    --shardId 'cTVtwQVV' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicMembers' test.out

#- 18 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic 'Scb5a1Eh' \
    > test.out 2>&1
eval_tap $? 18 'AdminTopicShards' test.out

#- 19 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic '7vkdshe4' \
    --body '{"userIds": ["RqxwHmQy", "7KhLplTK", "9yUUzVKI"]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUnbanTopicMembers' test.out

#- 20 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'YQI32ZD7' \
    --userId 'BkoOFC2a' \
    --body '{"isAdmin": false}' \
    > test.out 2>&1
eval_tap $? 20 'AdminAddTopicMember' test.out

#- 21 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'ts8hzdgV' \
    --userId 'lOLU7nZw' \
    > test.out 2>&1
eval_tap $? 21 'AdminRemoveTopicMember' test.out

#- 22 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'false' \
    --includePastMembers 'true' \
    --includePastTopics 'true' \
    --limit '93' \
    --offset '47' \
    --topic '["wfrRgKob", "zTM7Yer7", "jcDJ80e4"]' \
    --topicSubType 'SESSION' \
    --topicType 'PERSONAL' \
    --userId 'ccFGCup9' \
    > test.out 2>&1
eval_tap $? 22 'AdminQueryTopic' test.out

#- 23 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId '4Hpe47LE' \
    --includePastTopics 'false' \
    --limit '29' \
    --offset '72' \
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
    --limit '42' \
    --offset '97' \
    --topicType 'ha36N7gD' \
    > test.out 2>&1
eval_tap $? 25 'PublicTopicList' test.out

#- 26 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'UOlGvQ7P' \
    --body '{"userIDs": ["myDoseEq", "XCKAQl0i", "DUpEsjJg"]}' \
    > test.out 2>&1
eval_tap $? 26 'PublicBanTopicMembers' test.out

#- 27 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic '8CQW62Jg' \
    --limit '46' \
    --order 'TvhwTgEX' \
    --startCreatedAt '35' \
    > test.out 2>&1
eval_tap $? 27 'PublicChatHistory' test.out

#- 28 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId 'QNURvynT' \
    --namespace $AB_NAMESPACE \
    --topic 'h9fzbw08' \
    > test.out 2>&1
eval_tap $? 28 'PublicDeleteChat' test.out

#- 29 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'Xqt2kxLC' \
    --body '{"duration": 44, "userId": "jgvYJgkk"}' \
    > test.out 2>&1
eval_tap $? 29 'PublicMuteUser' test.out

#- 30 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'k2F40Faw' \
    --body '{"userIDs": ["dMVBLPT1", "jI2P3Z7M", "rjiLdxYO"]}' \
    > test.out 2>&1
eval_tap $? 30 'PublicUnbanTopicMembers' test.out

#- 31 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'F3ErQg0U' \
    --body '{"userId": "WA6SEi5D"}' \
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
    --body '{"logLevel": "info", "logLevelDB": "debug", "slowQueryThreshold": 5, "socketLogEnabled": true}' \
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
    --body '{"chatRateLimitBurst": 52, "chatRateLimitDuration": 59, "concurrentUsersLimit": 6, "enableClanChat": true, "enableManualTopicCreation": true, "enableProfanityFilter": true, "filterAppName": "kT7FdrEH", "filterParam": "S7SW9s1S", "filterType": "liRJl5UC", "generalRateLimitBurst": 90, "generalRateLimitDuration": 99, "maxChatMessageLength": 54, "shardCapacityLimit": 58, "shardDefaultLimit": 15, "shardHardLimit": 40, "spamChatBurst": 81, "spamChatDuration": 82, "spamMuteDuration": 69}' \
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
    --body '{"enabled": true, "expiresIn": 66, "hook": {"driver": "qFtLtzfo", "params": {"wM7s1c0Y": {}, "hRNxKO8L": {}, "QKEHgtdd": {}}}, "jsonSchema": {"IE3KV2jL": {}, "qyETIxdD": {}, "AsxRX20z": {}}, "name": "QaFVoikP", "saveInbox": false, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 40 'AdminAddInboxCategory' test.out

#- 41 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category 'DOUAKWjw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxCategory' test.out

#- 42 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category 'czRm2ReR' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false, "expiresIn": 62, "hook": {"driver": "XZijHGXm", "params": {"nvX6hNTW": {}, "9thru6bU": {}, "dZWXg6Sm": {}}}, "jsonSchema": {"NoIfZsxn": {}, "5Rkc6jCm": {}, "KsxcJ37e": {}}, "saveInbox": true, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateInboxCategory' test.out

#- 43 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category '8j38Ik6J' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'AdminGetCategorySchema' test.out

#- 44 AdminDeleteInboxMessage
samples/cli/sample-apps Chat adminDeleteInboxMessage \
    --messageId 'bXpwrxpD' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 44 'AdminDeleteInboxMessage' test.out

#- 45 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --endCreatedAt '24' \
    --limit '35' \
    --messageId '["46tvyNbs", "SUuGjJKh", "i5Nko5rX"]' \
    --offset '44' \
    --order 'qwmMabiy' \
    --scope 'USER' \
    --startCreatedAt '55' \
    --status 'UNSENT' \
    --transient 'false' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetInboxMessages' test.out

#- 46 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "G84aXKdK", "expiredAt": 23, "message": {"9MKMkd4Z": {}, "cSc4C6ih": {}, "HC4vGt5Z": {}}, "scope": "USER", "status": "SENT", "userIds": ["4XeBfVB4", "mWt2KprV", "05jty6jn"]}' \
    > test.out 2>&1
eval_tap $? 46 'AdminSaveInboxMessage' test.out

#- 47 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox 'gNMXiy0E' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["mNxuLyKJ", "KRMchAyG", "CCN2gbAL"]}' \
    > test.out 2>&1
eval_tap $? 47 'AdminUnsendInboxMessage' test.out

#- 48 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox 'WadOews2' \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '52' \
    --status 'READ' \
    --userId 'ME7xP8BE' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetInboxUsers' test.out

#- 49 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId 'nKgXtUk6' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 24, "message": {"fSSOyIpv": {}, "THkw41o1": {}, "HoF76FfW": {}}, "scope": "NAMESPACE", "userIds": ["YvZxJPk3", "mH6J2vVS", "TzOKTq1m"]}' \
    > test.out 2>&1
eval_tap $? 49 'AdminUpdateInboxMessage' test.out

#- 50 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId 'uuQ5JArq' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 50 'AdminSendInboxMessage' test.out

#- 51 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["PTadXjqB", "M3H8ZADp", "PkdxpNz2"]' \
    > test.out 2>&1
eval_tap $? 51 'AdminGetInboxStats' test.out

#- 52 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId 'DkJlApDJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'AdminGetChatSnapshot' test.out

#- 53 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId 'WYrf87lO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'AdminDeleteChatSnapshot' test.out

#- 54 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask 'k3ivYNiJ' \
    --includeChildren 'true' \
    --limit '13' \
    --offset '47' \
    --parentId 'nsHEy81u' \
    --startWith 'C5ZDccVl' \
    --wordType 'pIDDj4uq' \
    > test.out 2>&1
eval_tap $? 54 'AdminProfanityQuery' test.out

#- 55 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["aVOU3bM1", "oGMRD8jX", "z7VdJOAX"], "falsePositive": ["qm3shdoS", "nBg2OpcC", "Lh2VuNd1"], "word": "Uxez3iGY", "wordType": "mkhSQULI"}' \
    > test.out 2>&1
eval_tap $? 55 'AdminProfanityCreate' test.out

#- 56 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["jSSEXgad", "Ge3vXCFR", "OR29tY0n"], "falsePositive": ["2zSoyTM2", "4fhWcNLJ", "GxFIePjL"], "word": "e631ku3l", "wordType": "DEv1SI2i"}, {"falseNegative": ["jJ5Zj15e", "pnPmbs4q", "v5CWKXlD"], "falsePositive": ["kpa81IAK", "BL8OdiR7", "Qdew0Rot"], "word": "mcyODRNt", "wordType": "bpIHuzFD"}, {"falseNegative": ["HcMXhcBn", "7puYeDk5", "qvCU0gIf"], "falsePositive": ["BhlJaS3H", "7CoMl9qx", "yreQYBCP"], "word": "YEmdf1mT", "wordType": "ZyGkTLMF"}]}' \
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
    --limit '43' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 58 'AdminProfanityGroup' test.out

#- 59 AdminProfanityImport
samples/cli/sample-apps Chat adminProfanityImport \
    --namespace $AB_NAMESPACE \
    --action 'LEAVEOUT' \
    --showResult 'false' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 59 'AdminProfanityImport' test.out

#- 60 AdminProfanityUpdate
samples/cli/sample-apps Chat adminProfanityUpdate \
    --id 'SR88898M' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["jNC1p62Z", "NbMXFkCo", "KeUmsxRJ"], "falsePositive": ["VoW0KMx7", "U4gD6B2U", "MC1HqhEk"], "word": "GeIaBwG0", "wordType": "UA2qaW5e"}' \
    > test.out 2>&1
eval_tap $? 60 'AdminProfanityUpdate' test.out

#- 61 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id 'U8gJFDRJ' \
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
    --chatId '8IxqOkD0' \
    --namespace $AB_NAMESPACE \
    --topic 'wyIVg1MI' \
    > test.out 2>&1
eval_tap $? 64 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE