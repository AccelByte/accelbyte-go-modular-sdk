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
    --chatId '["ZmvWTyp4", "TPppvfqG", "JNynwt6b"]' \
    --endCreatedAt '48' \
    --keyword 'yBvkFRcT' \
    --limit '4' \
    --offset '70' \
    --order 'Q2rsauiY' \
    --senderUserId 'ieUgRx0I' \
    --shardId 'hFCR7jOm' \
    --startCreatedAt '9' \
    --topic '["5m4QhpCv", "NbJkgqg2", "qQT1ohUn"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminChatHistory' test.out

#- 3 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "wGvp3kSM", "name": "vRnmEdQJ"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNamespaceTopic' test.out

#- 4 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '67' \
    --offset '29' \
    --topicType 'APDQgAY1' \
    > test.out 2>&1
eval_tap $? 4 'AdminTopicList' test.out

#- 5 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["NwNKdQVB", "RSfD9Tis", "NYyX9OPv"], "description": "sLbwpngT", "isChannel": false, "isJoinable": false, "members": ["5J4l7Xzd", "7wHGTYRS", "HpaScfJu"], "name": "kgYl40yP", "shardLimit": 17, "type": "d5WjrXxH"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminCreateTopic' test.out

#- 6 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --offset '5' \
    --topicName 'zL99UmRB' \
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
    --endCreatedAt '23' \
    --limit '32' \
    --offset '94' \
    --senderUserId '4pWtQ9zU' \
    --startCreatedAt '70' \
    --topicId 'HOoo2D28' \
    --topicIds '["vQvr6vdn", "dL0PcTM9", "hIObkGrP"]' \
    --userId 'Gd1xy5hw' \
    > test.out 2>&1
eval_tap $? 8 'AdminQueryTopicLog' test.out

#- 9 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic 'N3LzhosU' \
    --body '{"description": "X0zs7aEk", "isJoinable": false, "name": "uvH7cTEO"}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateTopic' test.out

#- 10 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic 'pu8PhoeQ' \
    > test.out 2>&1
eval_tap $? 10 'AdminDeleteTopic' test.out

#- 11 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'yiv7wrnY' \
    --body '{"userIds": ["4Z8ZZIqJ", "oDMklqza", "Y3VRAFvl"]}' \
    > test.out 2>&1
eval_tap $? 11 'AdminBanTopicMembers' test.out

#- 12 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic 'WB5ZT85g' \
    > test.out 2>&1
eval_tap $? 12 'AdminChannelTopicInfo' test.out

#- 13 AdminTopicChatHistory
eval_tap 0 13 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 14 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic 'WgBP6xKj' \
    --body '{"message": "EHMLMCAz"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminSendChat' test.out

#- 15 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId 'WLFhTP5B' \
    --namespace $AB_NAMESPACE \
    --topic 'VQFpKirv' \
    > test.out 2>&1
eval_tap $? 15 'AdminDeleteChat' test.out

#- 16 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'SVAnTKc2' \
    --isBanned 'true' \
    --isModerator 'false' \
    --limit '13' \
    --offset '18' \
    --shardId 'PaOeO2gp' \
    > test.out 2>&1
eval_tap $? 16 'AdminTopicMembers' test.out

#- 17 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic 'o8qv12wE' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicShards' test.out

#- 18 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'E9p7Z6kn' \
    --body '{"userIds": ["2urfklSV", "twUDuvVM", "suOZ6VL8"]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUnbanTopicMembers' test.out

#- 19 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'ihXJpBL6' \
    --userId 'UzKdCJdV' \
    --body '{"isAdmin": true}' \
    > test.out 2>&1
eval_tap $? 19 'AdminAddTopicMember' test.out

#- 20 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'b0sg5j8b' \
    --userId 'me56tDEa' \
    > test.out 2>&1
eval_tap $? 20 'AdminRemoveTopicMember' test.out

#- 21 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'true' \
    --includePastMembers 'true' \
    --includePastTopics 'false' \
    --limit '33' \
    --offset '12' \
    --topic '["G7yi9t73", "PjIkE0wn", "ZnqWyAWO"]' \
    --topicSubType 'NAMESPACE' \
    --topicType 'PERSONAL' \
    --userId 'j0Rz81S8' \
    > test.out 2>&1
eval_tap $? 21 'AdminQueryTopic' test.out

#- 22 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId 'XU0g1iKi' \
    --includePastTopics 'true' \
    --limit '23' \
    --offset '66' \
    --topicSubType 'SESSION' \
    --topicType 'PERSONAL' \
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
    --limit '68' \
    --offset '56' \
    --topicType '9FEAP7HI' \
    > test.out 2>&1
eval_tap $? 24 'PublicTopicList' test.out

#- 25 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'V2mxuRdw' \
    --body '{"userIDs": ["SnkcwWBU", "zt73zuUm", "2n4ctOV1"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicBanTopicMembers' test.out

#- 26 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic 'Npfa7pEO' \
    --limit '57' \
    --order 'PSrGIJD5' \
    --startCreatedAt '31' \
    > test.out 2>&1
eval_tap $? 26 'PublicChatHistory' test.out

#- 27 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId 'I24BaoZO' \
    --namespace $AB_NAMESPACE \
    --topic 'pT93azjN' \
    > test.out 2>&1
eval_tap $? 27 'PublicDeleteChat' test.out

#- 28 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'Fa0AHS9M' \
    --body '{"duration": 34, "userId": "0wsxhiI9"}' \
    > test.out 2>&1
eval_tap $? 28 'PublicMuteUser' test.out

#- 29 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'Tfzr3WGo' \
    --body '{"userIDs": ["UrmfSL4K", "YfRdz1jR", "Yx8gH0m1"]}' \
    > test.out 2>&1
eval_tap $? 29 'PublicUnbanTopicMembers' test.out

#- 30 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'r3YhsCAt' \
    --body '{"userId": "mtbbLAf9"}' \
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
    --body '{"chatRateLimitBurst": 0, "chatRateLimitDuration": 52, "concurrentUsersLimit": 71, "enableClanChat": true, "enableManualTopicCreation": true, "enableProfanityFilter": false, "filterAppName": "YUaugCIy", "filterParam": "m6XoEWH0", "filterType": "VeB7HD1v", "generalRateLimitBurst": 56, "generalRateLimitDuration": 88, "shardCapacityLimit": 20, "shardDefaultLimit": 78, "shardHardLimit": 92, "spamChatBurst": 15, "spamChatDuration": 79, "spamMuteDuration": 86}' \
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
    --body '{"enabled": true, "expiresIn": 14, "hook": {"driver": "KAFKA", "params": "qvCKoQW2"}, "jsonSchema": {"YRZS7mui": {}, "FbLrqS9y": {}, "FtrOeh8q": {}}, "name": "Qb7IsEhQ", "saveInbox": true, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 37 'AdminAddInboxCategory' test.out

#- 38 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category 'U3CUp4d2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteInboxCategory' test.out

#- 39 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category 'IQP4YjEO' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false, "expiresIn": 20, "hook": {"driver": "KAFKA", "params": "jEv0hb7v"}, "jsonSchema": {"1mZFYdnM": {}, "SawWowuF": {}, "7DPhZ5Zv": {}}, "saveInbox": true, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateInboxCategory' test.out

#- 40 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category '2tKm7kIf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 40 'AdminGetCategorySchema' test.out

#- 41 AdminDeleteInboxMessage
samples/cli/sample-apps Chat adminDeleteInboxMessage \
    --messageId '3aWzKe4v' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxMessage' test.out

#- 42 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --endCreatedAt '86' \
    --limit '19' \
    --messageId '["gFtQO9xN", "xA8sBvOu", "dwalRFWs"]' \
    --offset '49' \
    --order 'RBytYSeZ' \
    --scope 'USER' \
    --startCreatedAt '59' \
    --status 'SENT' \
    --transient 'true' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetInboxMessages' test.out

#- 43 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "NsVtgPvl", "expiredAt": 29, "message": {"G89cMygM": {}, "FHGgI5iI": {}, "KHlQ6e0i": {}}, "scope": "NAMESPACE", "status": "SENT", "userIds": ["0KOcv4W2", "AQ2Wfpli", "pwhLA93a"]}' \
    > test.out 2>&1
eval_tap $? 43 'AdminSaveInboxMessage' test.out

#- 44 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox 'Ugx8RxpW' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["swiPPbO4", "WOWVM15e", "E3YrRZz5"]}' \
    > test.out 2>&1
eval_tap $? 44 'AdminUnsendInboxMessage' test.out

#- 45 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox 'cPJ58PZh' \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '86' \
    --status 'UNREAD' \
    --userId '9AY9nQAk' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetInboxUsers' test.out

#- 46 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId 'Jb4PRdtN' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 30, "message": {"HL4I45WZ": {}, "sBg9lvZk": {}, "9rg3CzFS": {}}, "scope": "NAMESPACE", "userIds": ["W3TlAKOD", "I6rsHaE7", "d07SBHS6"]}' \
    > test.out 2>&1
eval_tap $? 46 'AdminUpdateInboxMessage' test.out

#- 47 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId 'vg5Eulcl' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 47 'AdminSendInboxMessage' test.out

#- 48 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["EhGHujKH", "CbE8AZ9k", "OgUFXqM4"]' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetInboxStats' test.out

#- 49 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId 'ff2uwHir' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'AdminGetChatSnapshot' test.out

#- 50 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId 'cd4D2c13' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'AdminDeleteChatSnapshot' test.out

#- 51 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask 'CimIKQ2q' \
    --includeChildren 'false' \
    --limit '33' \
    --offset '21' \
    --parentId 'mKMgb9mX' \
    --startWith 'oGzqUxM2' \
    --wordType 'xpuLy4hM' \
    > test.out 2>&1
eval_tap $? 51 'AdminProfanityQuery' test.out

#- 52 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["6cQqEZl6", "Kem2U7TZ", "2S375tE6"], "falsePositive": ["yuPuUUsR", "8UFb1kf0", "DjWIdIlH"], "word": "Yt6ElOmj", "wordType": "6fMNFP9Z"}' \
    > test.out 2>&1
eval_tap $? 52 'AdminProfanityCreate' test.out

#- 53 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["DBQfa2QQ", "wBUZ3GF6", "vMyGWY0H"], "falsePositive": ["mvN1hIcb", "ul2K5w5F", "NG9PSjx1"], "word": "dCSO6tj6", "wordType": "Gr4YCX4n"}, {"falseNegative": ["ougVPHH0", "2O54o3j9", "rNqMKAvB"], "falsePositive": ["Ip6h1X0W", "ZCYIkprH", "5LVNytXm"], "word": "JoCgJyMm", "wordType": "x8ykLnRN"}, {"falseNegative": ["FMPZ7UBk", "HuvY3eBl", "pWJMmqmR"], "falsePositive": ["Clrb5N9L", "GiiKiBvf", "5rWEcQ5G"], "word": "9fWVjq1U", "wordType": "NyOivtyB"}]}' \
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
    --limit '47' \
    --offset '56' \
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
    --id 'znEwcttS' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["PtlNJMQN", "ACpxMUyK", "XqpLo1WZ"], "falsePositive": ["9S7b6Wjc", "5bP7nEL5", "sWWOvoqP"], "word": "c33Z73dW", "wordType": "aM4sMzDS"}' \
    > test.out 2>&1
eval_tap $? 57 'AdminProfanityUpdate' test.out

#- 58 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id 'AiJbcNY5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'AdminProfanityDelete' test.out

#- 59 PublicGetMessages
samples/cli/sample-apps Chat publicGetMessages \
    > test.out 2>&1
eval_tap $? 59 'PublicGetMessages' test.out

#- 60 PublicGetChatSnapshot
samples/cli/sample-apps Chat publicGetChatSnapshot \
    --chatId 'hOKYonmU' \
    --namespace $AB_NAMESPACE \
    --topic '6leyLucF' \
    > test.out 2>&1
eval_tap $? 60 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE