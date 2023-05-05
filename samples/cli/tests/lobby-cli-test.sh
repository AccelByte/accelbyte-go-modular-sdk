#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Code generated. DO NOT EDIT.

# Meta:
# - random seed: 256
# - template file: cli_test.j2

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
echo "1..94"

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

#- 2 GetUserFriendsUpdated
samples/cli/sample-apps Lobby getUserFriendsUpdated \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 2 'GetUserFriendsUpdated' test.out

#- 3 GetUserIncomingFriends
samples/cli/sample-apps Lobby getUserIncomingFriends \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 3 'GetUserIncomingFriends' test.out

#- 4 GetUserIncomingFriendsWithTime
samples/cli/sample-apps Lobby getUserIncomingFriendsWithTime \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'GetUserIncomingFriendsWithTime' test.out

#- 5 GetUserOutgoingFriends
samples/cli/sample-apps Lobby getUserOutgoingFriends \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'GetUserOutgoingFriends' test.out

#- 6 GetUserOutgoingFriendsWithTime
samples/cli/sample-apps Lobby getUserOutgoingFriendsWithTime \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetUserOutgoingFriendsWithTime' test.out

#- 7 UserRequestFriend
samples/cli/sample-apps Lobby userRequestFriend \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "DzYDNnz4", "friendPublicId": "7K3YkyyV"}' \
    > test.out 2>&1
eval_tap $? 7 'UserRequestFriend' test.out

#- 8 UserAcceptFriendRequest
samples/cli/sample-apps Lobby userAcceptFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "r85s1bLY"}' \
    > test.out 2>&1
eval_tap $? 8 'UserAcceptFriendRequest' test.out

#- 9 UserCancelFriendRequest
samples/cli/sample-apps Lobby userCancelFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "paddleF4"}' \
    > test.out 2>&1
eval_tap $? 9 'UserCancelFriendRequest' test.out

#- 10 UserRejectFriendRequest
samples/cli/sample-apps Lobby userRejectFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "Ubi8FYpl"}' \
    > test.out 2>&1
eval_tap $? 10 'UserRejectFriendRequest' test.out

#- 11 UserGetFriendshipStatus
samples/cli/sample-apps Lobby userGetFriendshipStatus \
    --friendId '6uZpty16' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'UserGetFriendshipStatus' test.out

#- 12 UserUnfriendRequest
samples/cli/sample-apps Lobby userUnfriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "YfG9Brtl"}' \
    > test.out 2>&1
eval_tap $? 12 'UserUnfriendRequest' test.out

#- 13 AddFriendsWithoutConfirmation
samples/cli/sample-apps Lobby addFriendsWithoutConfirmation \
    --namespace $AB_NAMESPACE \
    --userId 'SX0CJ6cn' \
    --body '{"friendIds": ["hYEEmDgj", "gLM425zr", "R1hwV7Cr"]}' \
    > test.out 2>&1
eval_tap $? 13 'AddFriendsWithoutConfirmation' test.out

#- 14 PersonalChatHistory
samples/cli/sample-apps Lobby personalChatHistory \
    --friendId 'QQMXZeRW' \
    --namespace $AB_NAMESPACE \
    --userId 'N5mQWyEv' \
    > test.out 2>&1
eval_tap $? 14 'PersonalChatHistory' test.out

#- 15 AdminChatHistory
samples/cli/sample-apps Lobby adminChatHistory \
    --friendId '2D1u2PyK' \
    --namespace $AB_NAMESPACE \
    --userId 'ZtUszCmv' \
    > test.out 2>&1
eval_tap $? 15 'AdminChatHistory' test.out

#- 16 AdminGetAllConfigV1
samples/cli/sample-apps Lobby adminGetAllConfigV1 \
    > test.out 2>&1
eval_tap $? 16 'AdminGetAllConfigV1' test.out

#- 17 AdminGetConfigV1
samples/cli/sample-apps Lobby adminGetConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'AdminGetConfigV1' test.out

#- 18 AdminUpdateConfigV1
samples/cli/sample-apps Lobby adminUpdateConfigV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowInviteNonConnectedUser": true, "allowJoinPartyDuringMatchmaking": true, "autoKickOnDisconnect": true, "autoKickOnDisconnectDelay": 16, "cancelTicketOnDisconnect": false, "chatRateLimitBurst": 19, "chatRateLimitDuration": 41, "concurrentUsersLimit": 98, "disableInvitationOnJoinParty": true, "enableChat": false, "entitlementCheck": true, "entitlementItemID": "OfVrFb8w", "generalRateLimitBurst": 59, "generalRateLimitDuration": 85, "keepPresenceActivityOnDisconnect": false, "maxDSWaitTime": 27, "maxPartyMember": 34, "profanityFilter": false, "readyConsentTimeout": 53}' \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateConfigV1' test.out

#- 19 AdminExportConfigV1
samples/cli/sample-apps Lobby adminExportConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'AdminExportConfigV1' test.out

#- 20 AdminImportConfigV1
samples/cli/sample-apps Lobby adminImportConfigV1 \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 20 'AdminImportConfigV1' test.out

#- 21 GetListOfFriends
samples/cli/sample-apps Lobby getListOfFriends \
    --namespace $AB_NAMESPACE \
    --userId 'WhIt9oGN' \
    --limit '100' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 21 'GetListOfFriends' test.out

#- 22 SendMultipleUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendMultipleUsersFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"message": "OqDpjSBX", "topicName": "hAsoP2Mq", "userIds": ["LtGDRxXN", "6gC993sv", "YyIIrNsb"]}' \
    > test.out 2>&1
eval_tap $? 22 'SendMultipleUsersFreeformNotificationV1Admin' test.out

#- 23 SendUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"message": "rk3QX3t3", "topicName": "t7yuOC7u"}' \
    > test.out 2>&1
eval_tap $? 23 'SendUsersFreeformNotificationV1Admin' test.out

#- 24 SendPartyFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --partyId 'fjhlfRjJ' \
    --body '{"message": "Wkqe2Cxh", "topicName": "wkoeSqYv"}' \
    > test.out 2>&1
eval_tap $? 24 'SendPartyFreeformNotificationV1Admin' test.out

#- 25 SendPartyTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --partyId 'EjlyQkmk' \
    --body '{"templateContext": {"fHFCY7nT": "A7qtx8gK", "ihDkHmGm": "zvcnDVZD", "YHXRVX5z": "kj9k8y4U"}, "templateLanguage": "ar79zb2n", "templateSlug": "YLHsOILD", "topicName": "AsIllmM9"}' \
    > test.out 2>&1
eval_tap $? 25 'SendPartyTemplatedNotificationV1Admin' test.out

#- 26 GetAllNotificationTemplatesV1Admin
samples/cli/sample-apps Lobby getAllNotificationTemplatesV1Admin \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'GetAllNotificationTemplatesV1Admin' test.out

#- 27 CreateNotificationTemplateV1Admin
samples/cli/sample-apps Lobby createNotificationTemplateV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"templateContent": "zA5yYvzU", "templateLanguage": "e7RuqzPq", "templateSlug": "AfLj9FYK"}' \
    > test.out 2>&1
eval_tap $? 27 'CreateNotificationTemplateV1Admin' test.out

#- 28 SendUsersTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"templateContext": {"Q75th7En": "XLRiC8h5", "AKTlWJTX": "aB1Iu40H", "BTWpgztz": "CCXtsmhx"}, "templateLanguage": "UjSh2jCb", "templateSlug": "bPpdswOc", "topicName": "CV9kpYVB"}' \
    > test.out 2>&1
eval_tap $? 28 'SendUsersTemplatedNotificationV1Admin' test.out

#- 29 GetTemplateSlugLocalizationsTemplateV1Admin
samples/cli/sample-apps Lobby getTemplateSlugLocalizationsTemplateV1Admin \
    --namespace $AB_NAMESPACE \
    --templateSlug '57GxYQiK' \
    --after '0kf3IP0B' \
    --before 'laA6fRAs' \
    --limit '6' \
    > test.out 2>&1
eval_tap $? 29 'GetTemplateSlugLocalizationsTemplateV1Admin' test.out

#- 30 DeleteNotificationTemplateSlugV1Admin
samples/cli/sample-apps Lobby deleteNotificationTemplateSlugV1Admin \
    --namespace $AB_NAMESPACE \
    --templateSlug 'rFzWHJFM' \
    > test.out 2>&1
eval_tap $? 30 'DeleteNotificationTemplateSlugV1Admin' test.out

#- 31 GetSingleTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby getSingleTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'XBq0nH2r' \
    --templateSlug '9hjW24UK' \
    > test.out 2>&1
eval_tap $? 31 'GetSingleTemplateLocalizationV1Admin' test.out

#- 32 UpdateTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby updateTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'f2lVRO1I' \
    --templateSlug 'MOHaxdKk' \
    --body '{"templateContent": "xR1j2BRG"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdateTemplateLocalizationV1Admin' test.out

#- 33 DeleteTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby deleteTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'Cyq0ykIb' \
    --templateSlug 'luTxKh7G' \
    > test.out 2>&1
eval_tap $? 33 'DeleteTemplateLocalizationV1Admin' test.out

#- 34 PublishTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby publishTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'Rtgeffoi' \
    --templateSlug 'OFA1JlxE' \
    > test.out 2>&1
eval_tap $? 34 'PublishTemplateLocalizationV1Admin' test.out

#- 35 GetAllNotificationTopicsV1Admin
samples/cli/sample-apps Lobby getAllNotificationTopicsV1Admin \
    --namespace $AB_NAMESPACE \
    --after 'bi9cmDZ6' \
    --before '05yKgsKh' \
    --limit '17' \
    > test.out 2>&1
eval_tap $? 35 'GetAllNotificationTopicsV1Admin' test.out

#- 36 CreateNotificationTopicV1Admin
samples/cli/sample-apps Lobby createNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"description": "Qba9icSt", "topicName": "zO7wrsdB"}' \
    > test.out 2>&1
eval_tap $? 36 'CreateNotificationTopicV1Admin' test.out

#- 37 GetNotificationTopicV1Admin
samples/cli/sample-apps Lobby getNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'heWkiaY3' \
    > test.out 2>&1
eval_tap $? 37 'GetNotificationTopicV1Admin' test.out

#- 38 UpdateNotificationTopicV1Admin
samples/cli/sample-apps Lobby updateNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName '0ml5Vq4E' \
    --body '{"description": "GE8KCvl4"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateNotificationTopicV1Admin' test.out

#- 39 DeleteNotificationTopicV1Admin
samples/cli/sample-apps Lobby deleteNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName '0Qljqcg1' \
    > test.out 2>&1
eval_tap $? 39 'DeleteNotificationTopicV1Admin' test.out

#- 40 SendSpecificUserFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --userId '9Yi6scSZ' \
    --body '{"message": "FrizWmLv", "topicName": "AgiNoD7u"}' \
    > test.out 2>&1
eval_tap $? 40 'SendSpecificUserFreeformNotificationV1Admin' test.out

#- 41 SendSpecificUserTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --userId 'eyNDqcQm' \
    --body '{"templateContext": {"XXh3kC5g": "WlCbrwJL", "2h0nYXNo": "GTOSTw2q", "Q2B6qGne": "WZaObioo"}, "templateLanguage": "SRKBHC97", "templateSlug": "zKrwWxKr", "topicName": "B90SEKkq"}' \
    > test.out 2>&1
eval_tap $? 41 'SendSpecificUserTemplatedNotificationV1Admin' test.out

#- 42 AdminGetPartyDataV1
samples/cli/sample-apps Lobby adminGetPartyDataV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'BA1kREOC' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetPartyDataV1' test.out

#- 43 AdminUpdatePartyAttributesV1
samples/cli/sample-apps Lobby adminUpdatePartyAttributesV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'gW6MwV8y' \
    --body '{"custom_attribute": {"FYdu3C0F": {}, "6zP25Bu8": {}, "y4MJtuiA": {}}, "updatedAt": 52}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdatePartyAttributesV1' test.out

#- 44 AdminJoinPartyV1
samples/cli/sample-apps Lobby adminJoinPartyV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'DlQEzpmX' \
    --userId '7ZKsr9iU' \
    > test.out 2>&1
eval_tap $? 44 'AdminJoinPartyV1' test.out

#- 45 AdminGetUserPartyV1
samples/cli/sample-apps Lobby adminGetUserPartyV1 \
    --namespace $AB_NAMESPACE \
    --userId 'gd6pn5E9' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetUserPartyV1' test.out

#- 46 AdminGetLobbyCCU
samples/cli/sample-apps Lobby adminGetLobbyCCU \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'AdminGetLobbyCCU' test.out

#- 47 AdminGetAllPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetAllPlayerSessionAttribute \
    --namespace $AB_NAMESPACE \
    --userId 'HGZNFl51' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetAllPlayerSessionAttribute' test.out

#- 48 AdminSetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminSetPlayerSessionAttribute \
    --namespace $AB_NAMESPACE \
    --userId 'v0W5bkcv' \
    --body '{"attributes": {"YJ5NaLuh": "t3tW9Hvu", "I6Sd7aWa": "ohLMKyl1", "vFAxOIWb": "4Xo0x1X8"}}' \
    > test.out 2>&1
eval_tap $? 48 'AdminSetPlayerSessionAttribute' test.out

#- 49 AdminGetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetPlayerSessionAttribute \
    --attribute 'fiRgH5hs' \
    --namespace $AB_NAMESPACE \
    --userId 'qH51ylgk' \
    > test.out 2>&1
eval_tap $? 49 'AdminGetPlayerSessionAttribute' test.out

#- 50 AdminGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'S34q9nkH' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetPlayerBlockedPlayersV1' test.out

#- 51 AdminGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedByPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'qua0aZyN' \
    > test.out 2>&1
eval_tap $? 51 'AdminGetPlayerBlockedByPlayersV1' test.out

#- 52 AdminBulkBlockPlayersV1
samples/cli/sample-apps Lobby adminBulkBlockPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ZjDr3SYm' \
    --body '{"listBlockedUserId": ["Q6rDWe4D", "tctLx1x2", "GXn0p9sY"]}' \
    > test.out 2>&1
eval_tap $? 52 'AdminBulkBlockPlayersV1' test.out

#- 53 AdminDebugProfanityFilters
samples/cli/sample-apps Lobby adminDebugProfanityFilters \
    --namespace $AB_NAMESPACE \
    --body '{"text": "oPiQXnCs"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminDebugProfanityFilters' test.out

#- 54 AdminGetProfanityListFiltersV1
samples/cli/sample-apps Lobby adminGetProfanityListFiltersV1 \
    --list 'w3bQHIpU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'AdminGetProfanityListFiltersV1' test.out

#- 55 AdminAddProfanityFilterIntoList
samples/cli/sample-apps Lobby adminAddProfanityFilterIntoList \
    --list 'rya8QkLk' \
    --namespace $AB_NAMESPACE \
    --body '{"filter": "oel6lH2V", "note": "Kzmk3Ynu"}' \
    > test.out 2>&1
eval_tap $? 55 'AdminAddProfanityFilterIntoList' test.out

#- 56 AdminAddProfanityFilters
samples/cli/sample-apps Lobby adminAddProfanityFilters \
    --list '6YBTAOsP' \
    --namespace $AB_NAMESPACE \
    --body '{"filters": [{"filter": "vl5rY6zM", "note": "VEXx4WfN"}, {"filter": "0i3Cg5cR", "note": "RsDAfEuF"}, {"filter": "94RM4kMU", "note": "gDE2qRKC"}]}' \
    > test.out 2>&1
eval_tap $? 56 'AdminAddProfanityFilters' test.out

#- 57 AdminImportProfanityFiltersFromFile
samples/cli/sample-apps Lobby adminImportProfanityFiltersFromFile \
    --list 'IKN1nfsC' \
    --namespace $AB_NAMESPACE \
    --body '[63, 63, 10]' \
    > test.out 2>&1
eval_tap $? 57 'AdminImportProfanityFiltersFromFile' test.out

#- 58 AdminDeleteProfanityFilter
samples/cli/sample-apps Lobby adminDeleteProfanityFilter \
    --list 'DMAJeibX' \
    --namespace $AB_NAMESPACE \
    --body '{"filter": "gLZqyZa2"}' \
    > test.out 2>&1
eval_tap $? 58 'AdminDeleteProfanityFilter' test.out

#- 59 AdminGetProfanityLists
samples/cli/sample-apps Lobby adminGetProfanityLists \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'AdminGetProfanityLists' test.out

#- 60 AdminCreateProfanityList
samples/cli/sample-apps Lobby adminCreateProfanityList \
    --namespace $AB_NAMESPACE \
    --body '{"isEnabled": true, "isMandatory": true, "name": "ftZ4N5lq"}' \
    > test.out 2>&1
eval_tap $? 60 'AdminCreateProfanityList' test.out

#- 61 AdminUpdateProfanityList
samples/cli/sample-apps Lobby adminUpdateProfanityList \
    --list 'Je2A3qHh' \
    --namespace $AB_NAMESPACE \
    --body '{"isEnabled": true, "isMandatory": false, "newName": "GB3x6H96"}' \
    > test.out 2>&1
eval_tap $? 61 'AdminUpdateProfanityList' test.out

#- 62 AdminDeleteProfanityList
samples/cli/sample-apps Lobby adminDeleteProfanityList \
    --list 'xNBQpzWa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'AdminDeleteProfanityList' test.out

#- 63 AdminGetProfanityRule
samples/cli/sample-apps Lobby adminGetProfanityRule \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'AdminGetProfanityRule' test.out

#- 64 AdminSetProfanityRuleForNamespace
samples/cli/sample-apps Lobby adminSetProfanityRuleForNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"rule": "vG6W6Ugc"}' \
    > test.out 2>&1
eval_tap $? 64 'AdminSetProfanityRuleForNamespace' test.out

#- 65 AdminVerifyMessageProfanityResponse
samples/cli/sample-apps Lobby adminVerifyMessageProfanityResponse \
    --namespace $AB_NAMESPACE \
    --body '{"message": "kJ38VSWN", "profanityLevel": "2QnbjASS"}' \
    > test.out 2>&1
eval_tap $? 65 'AdminVerifyMessageProfanityResponse' test.out

#- 66 AdminGetThirdPartyConfig
samples/cli/sample-apps Lobby adminGetThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'AdminGetThirdPartyConfig' test.out

#- 67 AdminUpdateThirdPartyConfig
samples/cli/sample-apps Lobby adminUpdateThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    --body '{"apiKey": "fRDCFV1g"}' \
    > test.out 2>&1
eval_tap $? 67 'AdminUpdateThirdPartyConfig' test.out

#- 68 AdminCreateThirdPartyConfig
samples/cli/sample-apps Lobby adminCreateThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    --body '{"apiKey": "F9kt7rMq"}' \
    > test.out 2>&1
eval_tap $? 68 'AdminCreateThirdPartyConfig' test.out

#- 69 AdminDeleteThirdPartyConfig
samples/cli/sample-apps Lobby adminDeleteThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'AdminDeleteThirdPartyConfig' test.out

#- 70 PublicGetMessages
samples/cli/sample-apps Lobby publicGetMessages \
    > test.out 2>&1
eval_tap $? 70 'PublicGetMessages' test.out

#- 71 GetPersonalChatHistoryV1Public
samples/cli/sample-apps Lobby getPersonalChatHistoryV1Public \
    --friendId '6R9ok5Um' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'GetPersonalChatHistoryV1Public' test.out

#- 72 PublicGetPartyDataV1
samples/cli/sample-apps Lobby publicGetPartyDataV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'AGbN1lFt' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetPartyDataV1' test.out

#- 73 PublicUpdatePartyAttributesV1
samples/cli/sample-apps Lobby publicUpdatePartyAttributesV1 \
    --namespace $AB_NAMESPACE \
    --partyId '52SUpeAG' \
    --body '{"custom_attribute": {"TJL6cd4Z": {}, "1xknqoxd": {}, "5lJEDZyL": {}}, "updatedAt": 60}' \
    > test.out 2>&1
eval_tap $? 73 'PublicUpdatePartyAttributesV1' test.out

#- 74 PublicSetPartyLimitV1
samples/cli/sample-apps Lobby publicSetPartyLimitV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'O1c5sZft' \
    --body '{"limit": 83}' \
    > test.out 2>&1
eval_tap $? 74 'PublicSetPartyLimitV1' test.out

#- 75 PublicGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby publicGetPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 75 'PublicGetPlayerBlockedPlayersV1' test.out

#- 76 PublicGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby publicGetPlayerBlockedByPlayersV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 76 'PublicGetPlayerBlockedByPlayersV1' test.out

#- 77 UsersPresenceHandlerV1
samples/cli/sample-apps Lobby usersPresenceHandlerV1 \
    --namespace $AB_NAMESPACE \
    --countOnly 'false' \
    --userIds 'bn5O5WPk' \
    > test.out 2>&1
eval_tap $? 77 'UsersPresenceHandlerV1' test.out

#- 78 FreeFormNotification
samples/cli/sample-apps Lobby freeFormNotification \
    --namespace $AB_NAMESPACE \
    --body '{"message": "QQ9ggYeE", "topic": "FK9qDBm1"}' \
    > test.out 2>&1
eval_tap $? 78 'FreeFormNotification' test.out

#- 79 NotificationWithTemplate
samples/cli/sample-apps Lobby notificationWithTemplate \
    --namespace $AB_NAMESPACE \
    --body '{"templateContext": {"BMQIBLeu": "xUIlWN7J", "bUQFPBUu": "fOyd6IiK", "0aKlHMow": "tYgBBAkq"}, "templateLanguage": "TnhxbSYY", "templateSlug": "VgGyxCv6", "topic": "Rqc0gGlt"}' \
    > test.out 2>&1
eval_tap $? 79 'NotificationWithTemplate' test.out

#- 80 GetGameTemplate
samples/cli/sample-apps Lobby getGameTemplate \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 80 'GetGameTemplate' test.out

#- 81 CreateTemplate
samples/cli/sample-apps Lobby createTemplate \
    --namespace $AB_NAMESPACE \
    --body '{"templateContent": "P5dhNhMN", "templateLanguage": "6HxQ6QBr", "templateSlug": "JhFgRIWn"}' \
    > test.out 2>&1
eval_tap $? 81 'CreateTemplate' test.out

#- 82 GetSlugTemplate
samples/cli/sample-apps Lobby getSlugTemplate \
    --namespace $AB_NAMESPACE \
    --templateSlug 'Sl3Tq1e2' \
    --after '7HDYjeNA' \
    --before 'OAEKHgNy' \
    --limit '36' \
    > test.out 2>&1
eval_tap $? 82 'GetSlugTemplate' test.out

#- 83 DeleteTemplateSlug
samples/cli/sample-apps Lobby deleteTemplateSlug \
    --namespace $AB_NAMESPACE \
    --templateSlug 'ctoi4JVQ' \
    > test.out 2>&1
eval_tap $? 83 'DeleteTemplateSlug' test.out

#- 84 GetLocalizationTemplate
samples/cli/sample-apps Lobby getLocalizationTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'RB2J5CDz' \
    --templateSlug 'W2GmLDyI' \
    > test.out 2>&1
eval_tap $? 84 'GetLocalizationTemplate' test.out

#- 85 UpdateLocalizationTemplate
samples/cli/sample-apps Lobby updateLocalizationTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'nIf2Wh12' \
    --templateSlug 'WkBnI5bM' \
    --body '{"templateContent": "8foLXsQl"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateLocalizationTemplate' test.out

#- 86 DeleteTemplateLocalization
samples/cli/sample-apps Lobby deleteTemplateLocalization \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'lRhecBmt' \
    --templateSlug 'neAgPQGK' \
    > test.out 2>&1
eval_tap $? 86 'DeleteTemplateLocalization' test.out

#- 87 PublishTemplate
samples/cli/sample-apps Lobby publishTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'gbJksrBM' \
    --templateSlug 'CXU1nI8P' \
    > test.out 2>&1
eval_tap $? 87 'PublishTemplate' test.out

#- 88 GetTopicByNamespace
samples/cli/sample-apps Lobby getTopicByNamespace \
    --namespace $AB_NAMESPACE \
    --after 'LzEpnKAU' \
    --before 'u4MgVNNY' \
    --limit '96' \
    > test.out 2>&1
eval_tap $? 88 'GetTopicByNamespace' test.out

#- 89 CreateTopic
samples/cli/sample-apps Lobby createTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "IdCGCsbL", "topic": "yyBZtguk"}' \
    > test.out 2>&1
eval_tap $? 89 'CreateTopic' test.out

#- 90 GetTopicByTopicName
samples/cli/sample-apps Lobby getTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'mfIw1arz' \
    > test.out 2>&1
eval_tap $? 90 'GetTopicByTopicName' test.out

#- 91 UpdateTopicByTopicName
samples/cli/sample-apps Lobby updateTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'baIFJXQi' \
    --body '{"description": "e5pTyS4t"}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateTopicByTopicName' test.out

#- 92 DeleteTopicByTopicName
samples/cli/sample-apps Lobby deleteTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'fD2DIEmA' \
    > test.out 2>&1
eval_tap $? 92 'DeleteTopicByTopicName' test.out

#- 93 FreeFormNotificationByUserID
samples/cli/sample-apps Lobby freeFormNotificationByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'kJisBjfN' \
    --body '{"message": "tvpx3wUg", "topic": "W9jdkx5N"}' \
    > test.out 2>&1
eval_tap $? 93 'FreeFormNotificationByUserID' test.out

#- 94 NotificationWithTemplateByUserID
samples/cli/sample-apps Lobby notificationWithTemplateByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'UN0q6RSl' \
    --body '{"templateContext": {"sON2NbWt": "dDxwN6Bk", "Qj3rWTtZ": "pHNTuHqh", "T5OM3guK": "cSV0Moig"}, "templateLanguage": "MOUE0pB1", "templateSlug": "FhoP6tVr", "topic": "ZQritZHa"}' \
    > test.out 2>&1
eval_tap $? 94 'NotificationWithTemplateByUserID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE