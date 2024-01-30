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
    --chatId '["LMknZ3he", "Ds0iMvSY", "dAAZAgBb"]' \
    --endCreatedAt '64' \
    --keyword 'Sn8GQopb' \
    --limit '56' \
    --offset '70' \
    --order 'rJy0fVd9' \
    --senderUserId 'cFSg3Ful' \
    --shardId 'c5G8wVOB' \
    --startCreatedAt '6' \
    --topic '["Gt3ex8GP", "bwzym9E8", "GZqKAQ8V"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminChatHistory' test.out

#- 3 AdminCreateNamespaceTopic
samples/cli/sample-apps Chat adminCreateNamespaceTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "HlShmCGI", "name": "kD2hBxuO"}' \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNamespaceTopic' test.out

#- 4 AdminTopicList
samples/cli/sample-apps Chat adminTopicList \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '19' \
    --topicType 'jAgPamqr' \
    > test.out 2>&1
eval_tap $? 4 'AdminTopicList' test.out

#- 5 AdminCreateTopic
samples/cli/sample-apps Chat adminCreateTopic \
    --namespace $AB_NAMESPACE \
    --body '{"admins": ["g5zjEZyf", "qx0eKGMc", "dHfnCAwt"], "description": "ne6IMZxF", "isChannel": false, "isJoinable": true, "members": ["m7dVC5RB", "m81UFaWp", "wpA3wdtv"], "name": "NIy49gYF", "shardLimit": 7, "type": "mBq50sLr"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminCreateTopic' test.out

#- 6 AdminChannelTopicList
samples/cli/sample-apps Chat adminChannelTopicList \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '64' \
    --topicName '7gJtrHXS' \
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
    --endCreatedAt '94' \
    --limit '96' \
    --offset '54' \
    --senderUserId '8fqAFdOi' \
    --startCreatedAt '77' \
    --topicId 'Skbxibtx' \
    --topicIds '["KTJjfTZS", "XyNEzvmx", "bV6FO5Ck"]' \
    --userId 'S1RXN00k' \
    > test.out 2>&1
eval_tap $? 8 'AdminQueryTopicLog' test.out

#- 9 AdminUpdateTopic
samples/cli/sample-apps Chat adminUpdateTopic \
    --namespace $AB_NAMESPACE \
    --topic 'eseMxWY6' \
    --body '{"description": "COk6Yuva", "isJoinable": true, "name": "Git2TeiT"}' \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateTopic' test.out

#- 10 AdminDeleteTopic
samples/cli/sample-apps Chat adminDeleteTopic \
    --namespace $AB_NAMESPACE \
    --topic 'zP7idlbP' \
    > test.out 2>&1
eval_tap $? 10 'AdminDeleteTopic' test.out

#- 11 AdminBanTopicMembers
samples/cli/sample-apps Chat adminBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic '8zJK9Wg6' \
    --body '{"userIds": ["fzqCd9c1", "8R3DmW5E", "vtPoHEJA"]}' \
    > test.out 2>&1
eval_tap $? 11 'AdminBanTopicMembers' test.out

#- 12 AdminChannelTopicInfo
samples/cli/sample-apps Chat adminChannelTopicInfo \
    --namespace $AB_NAMESPACE \
    --topic '0iwMUvPP' \
    > test.out 2>&1
eval_tap $? 12 'AdminChannelTopicInfo' test.out

#- 13 AdminTopicChatHistory
eval_tap 0 13 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 14 AdminSendChat
samples/cli/sample-apps Chat adminSendChat \
    --namespace $AB_NAMESPACE \
    --topic 'OvLU5HeM' \
    --body '{"message": "iCVb0S2P"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminSendChat' test.out

#- 15 AdminDeleteChat
samples/cli/sample-apps Chat adminDeleteChat \
    --chatId '1rj2XgnJ' \
    --namespace $AB_NAMESPACE \
    --topic 'ufuy6RnM' \
    > test.out 2>&1
eval_tap $? 15 'AdminDeleteChat' test.out

#- 16 AdminTopicMembers
samples/cli/sample-apps Chat adminTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic '6J7a7u81' \
    --isBanned 'false' \
    --isModerator 'false' \
    --limit '43' \
    --offset '82' \
    --shardId 'BOH77Aym' \
    > test.out 2>&1
eval_tap $? 16 'AdminTopicMembers' test.out

#- 17 AdminTopicShards
samples/cli/sample-apps Chat adminTopicShards \
    --namespace $AB_NAMESPACE \
    --topic '44s8HuH9' \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicShards' test.out

#- 18 AdminUnbanTopicMembers
samples/cli/sample-apps Chat adminUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'sFhbPQzR' \
    --body '{"userIds": ["YcKONewu", "9JqcXtDh", "uOH8uIKh"]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUnbanTopicMembers' test.out

#- 19 AdminAddTopicMember
samples/cli/sample-apps Chat adminAddTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'Fw8NbSGb' \
    --userId '7byFAsSy' \
    --body '{"isAdmin": false}' \
    > test.out 2>&1
eval_tap $? 19 'AdminAddTopicMember' test.out

#- 20 AdminRemoveTopicMember
samples/cli/sample-apps Chat adminRemoveTopicMember \
    --namespace $AB_NAMESPACE \
    --topic 'WfEcncr4' \
    --userId 'biZH8X4g' \
    > test.out 2>&1
eval_tap $? 20 'AdminRemoveTopicMember' test.out

#- 21 AdminQueryTopic
samples/cli/sample-apps Chat adminQueryTopic \
    --namespace $AB_NAMESPACE \
    --includeMembers 'false' \
    --includePastMembers 'false' \
    --includePastTopics 'true' \
    --limit '82' \
    --offset '7' \
    --topic '["YiYGaSsx", "aEmj4tmP", "Rv8n53kB"]' \
    --topicSubType 'CLAN' \
    --topicType 'PERSONAL' \
    --userId 'HxJLNU2f' \
    > test.out 2>&1
eval_tap $? 21 'AdminQueryTopic' test.out

#- 22 AdminQueryUsersTopic
samples/cli/sample-apps Chat adminQueryUsersTopic \
    --namespace $AB_NAMESPACE \
    --userId 'XmLHZNTq' \
    --includePastTopics 'false' \
    --limit '59' \
    --offset '16' \
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
    --limit '97' \
    --offset '82' \
    --topicType 'e9eIJHTU' \
    > test.out 2>&1
eval_tap $? 24 'PublicTopicList' test.out

#- 25 PublicBanTopicMembers
samples/cli/sample-apps Chat publicBanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic '4IeRkNMT' \
    --body '{"userIDs": ["bmj7r3Rf", "PLoSesvj", "QbnTgtim"]}' \
    > test.out 2>&1
eval_tap $? 25 'PublicBanTopicMembers' test.out

#- 26 PublicChatHistory
samples/cli/sample-apps Chat publicChatHistory \
    --namespace $AB_NAMESPACE \
    --topic 'ArQpTR6k' \
    --limit '39' \
    --order '9HgPwmQI' \
    --startCreatedAt '51' \
    > test.out 2>&1
eval_tap $? 26 'PublicChatHistory' test.out

#- 27 PublicDeleteChat
samples/cli/sample-apps Chat publicDeleteChat \
    --chatId 'wtDzjXdo' \
    --namespace $AB_NAMESPACE \
    --topic 'hX70ynYw' \
    > test.out 2>&1
eval_tap $? 27 'PublicDeleteChat' test.out

#- 28 PublicMuteUser
samples/cli/sample-apps Chat publicMuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'nvshoh1e' \
    --body '{"duration": 26, "userId": "hCwAVhN5"}' \
    > test.out 2>&1
eval_tap $? 28 'PublicMuteUser' test.out

#- 29 PublicUnbanTopicMembers
samples/cli/sample-apps Chat publicUnbanTopicMembers \
    --namespace $AB_NAMESPACE \
    --topic 'O6Fafd7g' \
    --body '{"userIDs": ["mdcSd0PO", "bp3aelXB", "4oC2OL8S"]}' \
    > test.out 2>&1
eval_tap $? 29 'PublicUnbanTopicMembers' test.out

#- 30 PublicUnmuteUser
samples/cli/sample-apps Chat publicUnmuteUser \
    --namespace $AB_NAMESPACE \
    --topic 'H4hh7bXF' \
    --body '{"userId": "hzdWRwJO"}' \
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
    --body '{"chatRateLimitBurst": 80, "chatRateLimitDuration": 73, "concurrentUsersLimit": 94, "enableClanChat": false, "enableManualTopicCreation": false, "enableProfanityFilter": false, "filterAppName": "zzeWpVUo", "filterParam": "qTbAAZo2", "filterType": "bc0fA9uK", "generalRateLimitBurst": 35, "generalRateLimitDuration": 83, "shardCapacityLimit": 9, "shardDefaultLimit": 59, "shardHardLimit": 84, "spamChatBurst": 0, "spamChatDuration": 9, "spamMuteDuration": 33}' \
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
    --body '{"enabled": true, "expiresIn": 57, "hook": {"driver": "KAFKA", "params": "OcC3WGHQ"}, "jsonSchema": {"7QzaidYr": {}, "ux4TkCDv": {}, "6IAQS5SL": {}}, "name": "EuzniZah", "saveInbox": true, "sendNotification": false}' \
    > test.out 2>&1
eval_tap $? 37 'AdminAddInboxCategory' test.out

#- 38 AdminDeleteInboxCategory
samples/cli/sample-apps Chat adminDeleteInboxCategory \
    --category 'hgAn4KiB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteInboxCategory' test.out

#- 39 AdminUpdateInboxCategory
samples/cli/sample-apps Chat adminUpdateInboxCategory \
    --category 'Wm3dZcQR' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false, "expiresIn": 97, "hook": {"driver": "KAFKA", "params": "IAJXouNA"}, "jsonSchema": {"6U7Jxs9K": {}, "uDPATaXd": {}, "tgrA8gzs": {}}, "saveInbox": false, "sendNotification": true}' \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateInboxCategory' test.out

#- 40 AdminGetCategorySchema
samples/cli/sample-apps Chat adminGetCategorySchema \
    --category 'HZuQENCi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 40 'AdminGetCategorySchema' test.out

#- 41 AdminDeleteInboxMessage
samples/cli/sample-apps Chat adminDeleteInboxMessage \
    --messageId 'lNBcfXAD' \
    --namespace $AB_NAMESPACE \
    --force 'true' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxMessage' test.out

#- 42 AdminGetInboxMessages
samples/cli/sample-apps Chat adminGetInboxMessages \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --endCreatedAt '21' \
    --limit '25' \
    --messageId '["t4jdQ1h7", "lLRTXf3c", "l4TxLdjS"]' \
    --offset '19' \
    --order 'JsR8LZnc' \
    --scope 'NAMESPACE' \
    --startCreatedAt '14' \
    --status 'DRAFT' \
    --transient 'false' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetInboxMessages' test.out

#- 43 AdminSaveInboxMessage
samples/cli/sample-apps Chat adminSaveInboxMessage \
    --namespace $AB_NAMESPACE \
    --body '{"category": "QNyjeiKG", "expiredAt": 90, "message": {"QF3ac3fD": {}, "mfWWpXqQ": {}, "Ne3qPCJi": {}}, "scope": "USER", "status": "SENT", "userIds": ["4xWTH444", "cDLz0Ldl", "ppgAZjuA"]}' \
    > test.out 2>&1
eval_tap $? 43 'AdminSaveInboxMessage' test.out

#- 44 AdminUnsendInboxMessage
samples/cli/sample-apps Chat adminUnsendInboxMessage \
    --inbox 'c3T7xr7O' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["1TKZMmjr", "3JSnbeWx", "OPQOmxgR"]}' \
    > test.out 2>&1
eval_tap $? 44 'AdminUnsendInboxMessage' test.out

#- 45 AdminGetInboxUsers
samples/cli/sample-apps Chat adminGetInboxUsers \
    --inbox 'MFbPwQ4h' \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '99' \
    --status 'READ' \
    --userId '62syk4WB' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetInboxUsers' test.out

#- 46 AdminUpdateInboxMessage
samples/cli/sample-apps Chat adminUpdateInboxMessage \
    --messageId 'RWwIWhgW' \
    --namespace $AB_NAMESPACE \
    --body '{"expiredAt": 71, "message": {"jrYbIa7s": {}, "19vc5N42": {}, "REBSPFdw": {}}, "scope": "USER", "userIds": ["Bw9UtUh2", "1LmkLSY8", "CTBfbjpm"]}' \
    > test.out 2>&1
eval_tap $? 46 'AdminUpdateInboxMessage' test.out

#- 47 AdminSendInboxMessage
samples/cli/sample-apps Chat adminSendInboxMessage \
    --messageId '9q5btV06' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 47 'AdminSendInboxMessage' test.out

#- 48 AdminGetInboxStats
samples/cli/sample-apps Chat adminGetInboxStats \
    --namespace $AB_NAMESPACE \
    --messageId '["hH9ZK4hE", "XRz51aeZ", "iJyBfbHv"]' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetInboxStats' test.out

#- 49 AdminGetChatSnapshot
samples/cli/sample-apps Chat adminGetChatSnapshot \
    --chatId '0Kkbfds2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'AdminGetChatSnapshot' test.out

#- 50 AdminDeleteChatSnapshot
samples/cli/sample-apps Chat adminDeleteChatSnapshot \
    --chatId 'GASXxx7E' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'AdminDeleteChatSnapshot' test.out

#- 51 AdminProfanityQuery
samples/cli/sample-apps Chat adminProfanityQuery \
    --namespace $AB_NAMESPACE \
    --filterMask 'yJFOpUz6' \
    --includeChildren 'false' \
    --limit '68' \
    --offset '64' \
    --parentId 'yYPPmCNP' \
    --startWith 'oj3BpTJb' \
    --wordType 'HNVCmO9e' \
    > test.out 2>&1
eval_tap $? 51 'AdminProfanityQuery' test.out

#- 52 AdminProfanityCreate
samples/cli/sample-apps Chat adminProfanityCreate \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["c3YMhMc4", "Fwolvtph", "iZ88smkw"], "falsePositive": ["Rfp8IsyM", "7cgGK8VY", "qvInGVis"], "word": "0P9c86Ua", "wordType": "4CzcUj2C"}' \
    > test.out 2>&1
eval_tap $? 52 'AdminProfanityCreate' test.out

#- 53 AdminProfanityCreateBulk
samples/cli/sample-apps Chat adminProfanityCreateBulk \
    --namespace $AB_NAMESPACE \
    --body '{"dictionaries": [{"falseNegative": ["aPdfbtPP", "QuBeJey3", "LyzRZaW0"], "falsePositive": ["NIqK4oXq", "A14tHk6m", "gEdJGs2N"], "word": "RBqulXv2", "wordType": "HXxOjhnF"}, {"falseNegative": ["UBeNTi5e", "6TSefi4J", "XYvCKlqd"], "falsePositive": ["miuZkSpb", "HtInWw99", "GoHZGpQa"], "word": "L2Jf7lME", "wordType": "1S0aRcwd"}, {"falseNegative": ["QEQpMBAo", "JaKsnpwp", "lGxVAMjx"], "falsePositive": ["bHsMAbuM", "dKI0RFPf", "BO6KOfsR"], "word": "8QAplJ4L", "wordType": "A4xLuIJL"}]}' \
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
    --limit '72' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 55 'AdminProfanityGroup' test.out

#- 56 AdminProfanityImport
samples/cli/sample-apps Chat adminProfanityImport \
    --namespace $AB_NAMESPACE \
    --action 'REPLACE' \
    --showResult 'true' \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 56 'AdminProfanityImport' test.out

#- 57 AdminProfanityUpdate
samples/cli/sample-apps Chat adminProfanityUpdate \
    --id '6W4hUJIN' \
    --namespace $AB_NAMESPACE \
    --body '{"falseNegative": ["IQwylfH0", "FiGMgeLn", "bZc6Io8v"], "falsePositive": ["HCh562xc", "oLHdTcRs", "m4wR4MAd"], "word": "X5FktNMV", "wordType": "oEZBLEhw"}' \
    > test.out 2>&1
eval_tap $? 57 'AdminProfanityUpdate' test.out

#- 58 AdminProfanityDelete
samples/cli/sample-apps Chat adminProfanityDelete \
    --id 'FDmubT6m' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'AdminProfanityDelete' test.out

#- 59 PublicGetMessages
samples/cli/sample-apps Chat publicGetMessages \
    > test.out 2>&1
eval_tap $? 59 'PublicGetMessages' test.out

#- 60 PublicGetChatSnapshot
samples/cli/sample-apps Chat publicGetChatSnapshot \
    --chatId 'RkoZLbai' \
    --namespace $AB_NAMESPACE \
    --topic 'QBUU1MN4' \
    > test.out 2>&1
eval_tap $? 60 'PublicGetChatSnapshot' test.out


rm -f "tmp.dat"

exit $EXIT_CODE