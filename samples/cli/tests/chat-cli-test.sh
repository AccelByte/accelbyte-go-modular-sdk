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
    --detail 'false' \
    --body '{"message": "pyANiTZH", "timestamp": 90, "topicId": "5eHFjoiY", "topicType": "GROUP", "userId": "rOFRecMk"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminFilterChatMessage' test.out

#- 3 AdminChatHistory
samples/cli/sample-apps Chat adminChatHistory \
    --namespace $AB_NAMESPACE \
    --chatId '["R8uQe22k", "4JzBcALg", "WqDyCo5W"]' \
    --endCreatedAt '56' \
    --keyword 'h8kLnvKf' \
    --limit '50' \
    --offset '63' \
    --order 'jj0oguCI' \
    --senderUserId 'RtACHN6V' \
    --shardId 'yALZfM4G' \
    --startCreatedAt '55' \
    --topic '["RvAvd20b", "fJtz2ssw", "HqdeIoF2"]' \
    --unfiltered 'true' \
    > test.out 2>&1
eval_tap $? 3 'AdminChatHistory' test.out

#- 4 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "VlBFG29B", "name": "gWElnQtX"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateNamespaceTopic' test.out

#- 5 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '54' \
    --topicType '5pVfFuNx' \
    > test.out 2>&1
eval_tap $? 5 'AdminTopicList' test.out

#- 6 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["9rgQb3FN", "XqeVw8Gb", "RvPBKw1w"], "description": "J1XS7Dr2", "isChannel": true, "isJoinable": false, "members": ["EbxlxcXL", "bpI8wTWb", "grXtmqpp"], "name": "59nb5c93", "shardLimit": 25, "type": "ejD3lagC"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminCreateTopic' test.out

#- 7 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '54' \
    --topicName 'NOZ4JiiJ' \
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
    --endCreatedAt '39' \
    --limit '42' \
    --offset '14' \
    --senderUserId 'to75vlLf' \
    --startCreatedAt '74' \
    --topicId 'gXPmdwa0' \
    --topicIds '["i6h33B3Y", "nmQ6hGQl", "EIyKqGqZ"]' \
    --userId '0mhxeTNx' \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryTopicLog' test.out

#- 10 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic 'aJdMnGfs' \
    --body '{"description": "5lQOdZS3", "isJoinable": false, "name": "Rj9CpM2U"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateTopic' test.out

#- 11 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic 'QTzeEk4A' \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteTopic' test.out

#- 12 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic '1kGYFngg' \
    --body '{"userIds": ["PvDCJCGF", "8iPX5C4U", "1CF82IeT"]}' \
    > test.out 2>&1
eval_tap $? 12 'AdminBanTopicMembers' test.out

#- 13 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic 'AYx4aYfY' \
    > test.out 2>&1
eval_tap $? 13 'AdminChannelTopicInfo' test.out

#- 14 AdminTopicChatHistory
eval_tap 0 14 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 15 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic 'dN56LQGm' \
    --body '{"message": "x4LDkcni"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminSendChat' test.out

#- 16 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId 'XRFMxaF0' \
    --namespace $AB_NAMESPACE \
    --topic 'eOaWmwMZ' \
    > test.out 2>&1
eval_tap $? 16 'AdminDeleteChat' test.out

#- 17 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'EvmM3cfE' \
    --isBanned 'true' \
    --isModerator 'false' \
    --limit '63' \
    --offset '93' \
    --shardId 'M0wgJ9mo' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicMembers' test.out

#- 18 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic 'NK2U3Jtg' \
    > test.out 2>&1
eval_tap $? 18 'AdminTopicShards' test.out

#- 19 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 't5ZcfhEq' \
    --body '{"userIds": ["5Dp2EnVN", "keupuPOM", "5Rh9Wamr"]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUnbanTopicMembers' test.out

#- 20 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'VnTcIgfz' \
    --userId 'QZrCpBUQ' \
    --body '{"isAdmin": true}' \
    > test.out 2>&1
eval_tap $? 20 'AdminAddTopicMember' test.out

#- 21 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'rqfPMQJm' \
    --userId 'OLIoloQJ' \
    > test.out 2>&1
eval_tap $? 21 'AdminRemoveTopicMember' test.out

#- 22 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'true' \
    --includePastMembers 'true' \
    --includePastTopics 'false' \
    --limit '95' \
    --offset '24' \
    --topic '["ks1CyLgx", "WHMXLnfO", "jRwReVCd"]' \
    --topicSubType 'NAMESPACE' \
    --topicType 'PERSONAL' \
    --userId 'hmtMHzbA' \
    > test.out 2>&1
eval_tap $? 22 'AdminQueryTopic' test.out

#- 23 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId '1IxS0dAV' \
    --includePastTopics 'true' \
    --limit '14' \
    --offset '36' \
    --topicSubType 'PARTY' \
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
    --limit '78' \
    --offset '80' \
    --topicType 'TjoYhTBg' \
    > test.out 2>&1
eval_tap $? 25 'PublicTopicList' test.out

#- 26 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'Ns8J9H9F' \
    --body '{"userIDs": ["SxhSIsUo", "NP4Zcs7F", "JwMPVkhV"]}' \
    > test.out 2>&1
eval_tap $? 26 'PublicBanTopicMembers' test.out

#- 27 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic 'ueHIychR' \
    --limit '62' \
    --order 'saq4a0T7' \
    --startCreatedAt '98' \
    > test.out 2>&1
eval_tap $? 27 'PublicChatHistory' test.out

#- 28 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId 'iWA7vBTS' \
    --namespace $AB_NAMESPACE \
    --topic 'lyL5p67I' \
    > test.out 2>&1
eval_tap $? 28 'PublicDeleteChat' test.out

#- 29 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'jDn6VocP' \
    --body '{"duration": 84, "userId": "C7APbpeY"}' \
    > test.out 2>&1
eval_tap $? 29 'PublicMuteUser' test.out

#- 30 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic '80a4nQe5' \
    --body '{"userIDs": ["QEM99B9p", "8cUHyNy3", "dWPZ1JBe"]}' \
    > test.out 2>&1
eval_tap $? 30 'PublicUnbanTopicMembers' test.out

#- 31 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'irDYjnjt' \
    --body '{"userId": "ueg1Xd5e"}' \
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
    --body '{"logLevel": "trace", "logLevelDB": "panic", "slowQueryThreshold": 41, "socketLogEnabled": false}' \
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
    --body '{"chatRateLimitBurst": 20, "chatRateLimitDuration": 82, "concurrentUsersLimit": 48, "enableClanChat": false, "enableManualTopicCreation": false, "enableProfanityFilter": true, "filterAppName": "ToNvj4pD", "filterParam": "0x5w2R32", "filterType": "ptwamRAH", "generalRateLimitBurst": 64, "generalRateLimitDuration": 71, "maxChatMessageLength": 98, "shardCapacityLimit": 50, "shardDefaultLimit": 68, "shardHardLimit": 94, "spamChatBurst": 45, "spamChatDuration": 75, "spamMuteDuration": 11}' \
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
    --body '{"enabled": true, "expiresIn": 41, "hook": {"driver": "I9fAdPha", "params": {"YPbJrV4e": {}, "lNEdPdKF": {}, "PWSX9a2F": {}}}, "jsonSchema": {"0YammdDh": {}, "i28xGtXB": {}, "afg5THfM": {}}, "name": "KPaCGW4A", "saveInbox": false, "sendNotification": true}' \
    > test.out 2>&1
eval_tap $? 40 'AdminAddInboxCategory' test.out

#- 41 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category 'BcQ41RXm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxCategory' test.out

#- 42 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category 'S9R9U5QK' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false, "expiresIn": 28, "hook": {"driver": "ePPaX1Fy", "params": {"HWGwJXsj": {}, "6uwTKZWp": {}, "YqnOoJQ7": {}}}, "jsonSchema": {"jd9dcUhd": {}, "hsab3FxC": {}, "YmEGpHyC": {}}, "saveInbox": true, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateInboxCategory' test.out

#- 43 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category 's6GYJYkD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'AdminGetCategorySchema' test.out

#- 44 AdminDeleteInboxMessage
samples/cli/sample-apps Chat adminDeleteInboxMessage \
    --messageId 'BysnyVao' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 44 'AdminDeleteInboxMessage' test.out

#- 45 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --endCreatedAt '8' \
    --limit '81' \
    --messageId '["BMRqNqFB", "gqVRdUS4", "Lng1r2Dn"]' \
    --offset '66' \
    --order 'kE92xbXD' \
    --scope 'NAMESPACE' \
    --startCreatedAt '35' \
    --status 'DRAFT' \
    --transient 'true' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetInboxMessages' test.out

#- 46 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "VtqfK5hz", "expiredAt": 35, "message": {"IcgH11Kg": {}, "S19NZFS0": {}, "3T8MOTvX": {}}, "scope": "USER", "status": "SENT", "userIds": ["imjlju4q", "qmodHnrk", "5UoahoTP"]}' \
    > test.out 2>&1
eval_tap $? 46 'AdminSaveInboxMessage' test.out

#- 47 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox 'qtjLpbIy' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["7jMcAJ2b", "d787XAmT", "GTy0ksuF"]}' \
    > test.out 2>&1
eval_tap $? 47 'AdminUnsendInboxMessage' test.out

#- 48 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox 'N47STWH6' \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '73' \
    --status 'READ' \
    --userId '0aTjSovL' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetInboxUsers' test.out

#- 49 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId 'qxwsRYmx' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 81, "message": {"Dqvbue2o": {}, "uT6pAyLA": {}, "PlHqmO4t": {}}, "scope": "USER", "userIds": ["kZorUdP4", "vsHnqZPw", "htBICPm2"]}' \
    > test.out 2>&1
eval_tap $? 49 'AdminUpdateInboxMessage' test.out

#- 50 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId 'DEco8Jn1' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 50 'AdminSendInboxMessage' test.out

#- 51 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["zdxzQnya", "zZpYpYTR", "9Fg2z487"]' \
    > test.out 2>&1
eval_tap $? 51 'AdminGetInboxStats' test.out

#- 52 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId 'vBURKuFt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 52 'AdminGetChatSnapshot' test.out

#- 53 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId 'rEAofkoT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'AdminDeleteChatSnapshot' test.out

#- 54 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask 'NOQb3Zgk' \
    --includeChildren 'false' \
    --limit '48' \
    --offset '98' \
    --parentId '72FEhGln' \
    --startWith '0DHkwWvo' \
    --wordType 'Odfi0DLh' \
    > test.out 2>&1
eval_tap $? 54 'AdminProfanityQuery' test.out

#- 55 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["XDbALdIa", "hI74m1gj", "yl1fTyO0"], "falsePositive": ["wMEiDNmi", "2UnSPx5L", "4cSj1g2o"], "word": "ktzx3kk1", "wordType": "h5FawcSI"}' \
    > test.out 2>&1
eval_tap $? 55 'AdminProfanityCreate' test.out

#- 56 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["U1ABjcYN", "NI3Z1k40", "B62TpZIz"], "falsePositive": ["8gig54ad", "VCTaFQIY", "QjrgMApX"], "word": "DZdTLfas", "wordType": "2GPz27BK"}, {"falseNegative": ["KacupIJs", "2o0uYUMg", "92GhniDp"], "falsePositive": ["aovuyzaH", "919fqtBE", "vqDftX4r"], "word": "tvkpzSgx", "wordType": "paph0Qz6"}, {"falseNegative": ["qO6Ya4qg", "e243fx61", "Wg5J5il1"], "falsePositive": ["4IQ68acx", "uCFNegFn", "fp1ODFD5"], "word": "RgXa5ehV", "wordType": "XX1eMvME"}]}' \
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
    --limit '92' \
    --offset '62' \
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
    --id 'AExj9DgH' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["0VZmlfP5", "PaukciGV", "JfYOVros"], "falsePositive": ["kiYZAKi5", "2oMKaa7E", "3uu9PIDt"], "word": "i4IV77J2", "wordType": "pI1AX9hv"}' \
    > test.out 2>&1
eval_tap $? 60 'AdminProfanityUpdate' test.out

#- 61 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id 'KgO7iQMe' \
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
    --chatId 'b1vssaPr' \
    --namespace $AB_NAMESPACE \
    --topic 'E9DrUZIG' \
    > test.out 2>&1
eval_tap $? 64 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE