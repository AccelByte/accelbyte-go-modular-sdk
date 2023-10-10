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
echo "1..97"

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
    --limit '62' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 2 'GetUserFriendsUpdated' test.out

#- 3 GetUserIncomingFriends
samples/cli/sample-apps Lobby getUserIncomingFriends \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 3 'GetUserIncomingFriends' test.out

#- 4 GetUserIncomingFriendsWithTime
samples/cli/sample-apps Lobby getUserIncomingFriendsWithTime \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 4 'GetUserIncomingFriendsWithTime' test.out

#- 5 GetUserOutgoingFriends
samples/cli/sample-apps Lobby getUserOutgoingFriends \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 5 'GetUserOutgoingFriends' test.out

#- 6 GetUserOutgoingFriendsWithTime
samples/cli/sample-apps Lobby getUserOutgoingFriendsWithTime \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 6 'GetUserOutgoingFriendsWithTime' test.out

#- 7 GetUserFriendsWithPlatform
samples/cli/sample-apps Lobby getUserFriendsWithPlatform \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 7 'GetUserFriendsWithPlatform' test.out

#- 8 UserRequestFriend
samples/cli/sample-apps Lobby userRequestFriend \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "dh7ODqqU", "friendPublicId": "US4NmA5d"}' \
    > test.out 2>&1
eval_tap $? 8 'UserRequestFriend' test.out

#- 9 UserAcceptFriendRequest
samples/cli/sample-apps Lobby userAcceptFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "1BANZSDL"}' \
    > test.out 2>&1
eval_tap $? 9 'UserAcceptFriendRequest' test.out

#- 10 UserCancelFriendRequest
samples/cli/sample-apps Lobby userCancelFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "bRdLiuGP"}' \
    > test.out 2>&1
eval_tap $? 10 'UserCancelFriendRequest' test.out

#- 11 UserRejectFriendRequest
samples/cli/sample-apps Lobby userRejectFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "fXxLHFl0"}' \
    > test.out 2>&1
eval_tap $? 11 'UserRejectFriendRequest' test.out

#- 12 UserGetFriendshipStatus
samples/cli/sample-apps Lobby userGetFriendshipStatus \
    --friendId 'NMwyFL7U' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'UserGetFriendshipStatus' test.out

#- 13 UserUnfriendRequest
samples/cli/sample-apps Lobby userUnfriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "f9XhqV6N"}' \
    > test.out 2>&1
eval_tap $? 13 'UserUnfriendRequest' test.out

#- 14 AddFriendsWithoutConfirmation
samples/cli/sample-apps Lobby addFriendsWithoutConfirmation \
    --namespace $AB_NAMESPACE \
    --userId 'ZinMumRd' \
    --body '{"friendIds": ["TcTIYa5q", "V2U5dQBM", "4NzOapEZ"]}' \
    > test.out 2>&1
eval_tap $? 14 'AddFriendsWithoutConfirmation' test.out

#- 15 BulkDeleteFriends
samples/cli/sample-apps Lobby bulkDeleteFriends \
    --namespace $AB_NAMESPACE \
    --userId 'YLV7YbUC' \
    --body '{"friendIds": ["fjB0ibWt", "U9dc28eV", "sNkj92Ul"]}' \
    > test.out 2>&1
eval_tap $? 15 'BulkDeleteFriends' test.out

#- 16 SyncNativeFriends
samples/cli/sample-apps Lobby syncNativeFriends \
    --namespace $AB_NAMESPACE \
    --body '[{"isLogin": true, "platformId": "P5iVZv9I", "platformToken": "1cpJJLIj", "psnEnv": "ZR7KURxT"}, {"isLogin": true, "platformId": "zrdiT4xL", "platformToken": "SgOggICp", "psnEnv": "dKZRzJZ1"}, {"isLogin": false, "platformId": "iKJOAIxu", "platformToken": "7DuY9jmB", "psnEnv": "W3c8moNX"}]' \
    > test.out 2>&1
eval_tap $? 16 'SyncNativeFriends' test.out

#- 17 AdminGetAllConfigV1
samples/cli/sample-apps Lobby adminGetAllConfigV1 \
    > test.out 2>&1
eval_tap $? 17 'AdminGetAllConfigV1' test.out

#- 18 AdminGetConfigV1
samples/cli/sample-apps Lobby adminGetConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigV1' test.out

#- 19 AdminUpdateConfigV1
samples/cli/sample-apps Lobby adminUpdateConfigV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowInviteNonConnectedUser": true, "allowJoinPartyDuringMatchmaking": false, "autoKickOnDisconnect": false, "autoKickOnDisconnectDelay": 53, "cancelTicketOnDisconnect": false, "chatRateLimitBurst": 25, "chatRateLimitDuration": 84, "concurrentUsersLimit": 50, "disableInvitationOnJoinParty": true, "enableChat": true, "entitlementCheck": true, "entitlementItemID": "UXovAGLM", "generalRateLimitBurst": 28, "generalRateLimitDuration": 50, "keepPresenceActivityOnDisconnect": false, "maxDSWaitTime": 91, "maxFriendsLimit": 25, "maxPartyMember": 9, "profanityFilter": false, "readyConsentTimeout": 29, "unregisterDelay": 26}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigV1' test.out

#- 20 AdminExportConfigV1
samples/cli/sample-apps Lobby adminExportConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'AdminExportConfigV1' test.out

#- 21 AdminImportConfigV1
samples/cli/sample-apps Lobby adminImportConfigV1 \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 21 'AdminImportConfigV1' test.out

#- 22 GetListOfFriends
samples/cli/sample-apps Lobby getListOfFriends \
    --namespace $AB_NAMESPACE \
    --userId 'ztjMGoB1' \
    --friendId 'TeCV6BDr' \
    --limit '37' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 22 'GetListOfFriends' test.out

#- 23 GetIncomingFriendRequests
samples/cli/sample-apps Lobby getIncomingFriendRequests \
    --namespace $AB_NAMESPACE \
    --userId 'tGGsbOld' \
    --friendId 'OR5oeOPE' \
    --limit '53' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 23 'GetIncomingFriendRequests' test.out

#- 24 GetOutgoingFriendRequests
samples/cli/sample-apps Lobby getOutgoingFriendRequests \
    --namespace $AB_NAMESPACE \
    --userId 'U2JBqbVJ' \
    --limit '100' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 24 'GetOutgoingFriendRequests' test.out

#- 25 SendMultipleUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendMultipleUsersFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"message": "x2w6kKib", "topicName": "TrRmIqWA", "userIds": ["1jgczZwe", "E09Io4P1", "iawD9atf"]}' \
    > test.out 2>&1
eval_tap $? 25 'SendMultipleUsersFreeformNotificationV1Admin' test.out

#- 26 SendUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"message": "Bivcuphv", "topicName": "nU5P6QEC"}' \
    > test.out 2>&1
eval_tap $? 26 'SendUsersFreeformNotificationV1Admin' test.out

#- 27 SendPartyFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --partyId 'yK2ZfLtY' \
    --body '{"message": "a7nQlARK", "topicName": "5nttzVte"}' \
    > test.out 2>&1
eval_tap $? 27 'SendPartyFreeformNotificationV1Admin' test.out

#- 28 SendPartyTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --partyId 'jAf1gieV' \
    --body '{"templateContext": {"xZ10QEU8": "UqyNL5zt", "YkQhCOg2": "qBMQ9gqB", "5QoQA1H4": "wkcOi5TP"}, "templateLanguage": "pooF5vCv", "templateSlug": "kkcZsGjd", "topicName": "HYSt7n7q"}' \
    > test.out 2>&1
eval_tap $? 28 'SendPartyTemplatedNotificationV1Admin' test.out

#- 29 GetAllNotificationTemplatesV1Admin
samples/cli/sample-apps Lobby getAllNotificationTemplatesV1Admin \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'GetAllNotificationTemplatesV1Admin' test.out

#- 30 CreateNotificationTemplateV1Admin
samples/cli/sample-apps Lobby createNotificationTemplateV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"templateContent": "Jfe6OlFK", "templateLanguage": "baGLu1T5", "templateSlug": "dIzuOfE3"}' \
    > test.out 2>&1
eval_tap $? 30 'CreateNotificationTemplateV1Admin' test.out

#- 31 SendUsersTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"templateContext": {"SCtXBZJl": "VD1nOMLu", "QONct4X9": "GnGtuJjS", "iQm5qkQL": "Dbjkol8R"}, "templateLanguage": "LkFOZdkb", "templateSlug": "0fbhrCKa", "topicName": "HAirFe7L"}' \
    > test.out 2>&1
eval_tap $? 31 'SendUsersTemplatedNotificationV1Admin' test.out

#- 32 GetTemplateSlugLocalizationsTemplateV1Admin
samples/cli/sample-apps Lobby getTemplateSlugLocalizationsTemplateV1Admin \
    --namespace $AB_NAMESPACE \
    --templateSlug 'F10ucKDR' \
    --after 'V2nnCWi9' \
    --before 'vg8A67Zj' \
    --limit '2' \
    > test.out 2>&1
eval_tap $? 32 'GetTemplateSlugLocalizationsTemplateV1Admin' test.out

#- 33 DeleteNotificationTemplateSlugV1Admin
samples/cli/sample-apps Lobby deleteNotificationTemplateSlugV1Admin \
    --namespace $AB_NAMESPACE \
    --templateSlug 'kbk2c6DJ' \
    > test.out 2>&1
eval_tap $? 33 'DeleteNotificationTemplateSlugV1Admin' test.out

#- 34 GetSingleTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby getSingleTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'ApY1RY0C' \
    --templateSlug 'XUwIeIBF' \
    > test.out 2>&1
eval_tap $? 34 'GetSingleTemplateLocalizationV1Admin' test.out

#- 35 UpdateTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby updateTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'wloReijr' \
    --templateSlug 'ADNUtfjg' \
    --body '{"templateContent": "7oLIbncT"}' \
    > test.out 2>&1
eval_tap $? 35 'UpdateTemplateLocalizationV1Admin' test.out

#- 36 DeleteTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby deleteTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'TBaVcUoL' \
    --templateSlug 'xd9Vw4I7' \
    > test.out 2>&1
eval_tap $? 36 'DeleteTemplateLocalizationV1Admin' test.out

#- 37 PublishTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby publishTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'MmOr9UrV' \
    --templateSlug '4l04FGRy' \
    > test.out 2>&1
eval_tap $? 37 'PublishTemplateLocalizationV1Admin' test.out

#- 38 GetAllNotificationTopicsV1Admin
samples/cli/sample-apps Lobby getAllNotificationTopicsV1Admin \
    --namespace $AB_NAMESPACE \
    --after 'dv7ExGKz' \
    --before 'l3s70uxo' \
    --limit '16' \
    > test.out 2>&1
eval_tap $? 38 'GetAllNotificationTopicsV1Admin' test.out

#- 39 CreateNotificationTopicV1Admin
samples/cli/sample-apps Lobby createNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"description": "8BfToBe2", "topicName": "RKDHJ47a"}' \
    > test.out 2>&1
eval_tap $? 39 'CreateNotificationTopicV1Admin' test.out

#- 40 GetNotificationTopicV1Admin
samples/cli/sample-apps Lobby getNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'EPLd5xBc' \
    > test.out 2>&1
eval_tap $? 40 'GetNotificationTopicV1Admin' test.out

#- 41 UpdateNotificationTopicV1Admin
samples/cli/sample-apps Lobby updateNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName '52ZBGPI2' \
    --body '{"description": "4aqEcsBZ"}' \
    > test.out 2>&1
eval_tap $? 41 'UpdateNotificationTopicV1Admin' test.out

#- 42 DeleteNotificationTopicV1Admin
samples/cli/sample-apps Lobby deleteNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName '4lr01rYx' \
    > test.out 2>&1
eval_tap $? 42 'DeleteNotificationTopicV1Admin' test.out

#- 43 SendSpecificUserFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --userId 'c4sjcFkS' \
    --body '{"message": "O17fZ6lf", "topicName": "33n1mWJL"}' \
    > test.out 2>&1
eval_tap $? 43 'SendSpecificUserFreeformNotificationV1Admin' test.out

#- 44 SendSpecificUserTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --userId '33nOfex8' \
    --body '{"templateContext": {"dcVgKX69": "fYXCcde2", "q0eB8IYV": "1C6qkCwi", "WzaAO8yx": "S9uq499N"}, "templateLanguage": "fFczhNH5", "templateSlug": "aQs9K7ia", "topicName": "UteLa0Bn"}' \
    > test.out 2>&1
eval_tap $? 44 'SendSpecificUserTemplatedNotificationV1Admin' test.out

#- 45 AdminGetPartyDataV1
samples/cli/sample-apps Lobby adminGetPartyDataV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'kEQtjcTX' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetPartyDataV1' test.out

#- 46 AdminUpdatePartyAttributesV1
samples/cli/sample-apps Lobby adminUpdatePartyAttributesV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'M6nb1sob' \
    --body '{"custom_attribute": {"GWHMPmSg": {}, "1uFLp8v2": {}, "eFL9uK6f": {}}, "updatedAt": 52}' \
    > test.out 2>&1
eval_tap $? 46 'AdminUpdatePartyAttributesV1' test.out

#- 47 AdminJoinPartyV1
samples/cli/sample-apps Lobby adminJoinPartyV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'kUTi9L9y' \
    --userId 'AUaasVwb' \
    > test.out 2>&1
eval_tap $? 47 'AdminJoinPartyV1' test.out

#- 48 AdminGetUserPartyV1
samples/cli/sample-apps Lobby adminGetUserPartyV1 \
    --namespace $AB_NAMESPACE \
    --userId 'KAHdUHuy' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserPartyV1' test.out

#- 49 AdminGetLobbyCCU
samples/cli/sample-apps Lobby adminGetLobbyCCU \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 49 'AdminGetLobbyCCU' test.out

#- 50 AdminGetBulkPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby adminGetBulkPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    --body '{"listBlockedUserId": ["BAeNnXFR", "U4SszIDw", "XZMwGwkd"]}' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetBulkPlayerBlockedPlayersV1' test.out

#- 51 AdminGetAllPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetAllPlayerSessionAttribute \
    --namespace $AB_NAMESPACE \
    --userId 'rjK7Ngi3' \
    > test.out 2>&1
eval_tap $? 51 'AdminGetAllPlayerSessionAttribute' test.out

#- 52 AdminSetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminSetPlayerSessionAttribute \
    --namespace $AB_NAMESPACE \
    --userId 'fJT53055' \
    --body '{"attributes": {"1VBNHWGM": "KIh9vCvR", "otSwvIkd": "Rqhw19sa", "e6MBSDVV": "sAggkNP5"}}' \
    > test.out 2>&1
eval_tap $? 52 'AdminSetPlayerSessionAttribute' test.out

#- 53 AdminGetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetPlayerSessionAttribute \
    --attribute 'WHQwCMZ8' \
    --namespace $AB_NAMESPACE \
    --userId 'shk3IXEf' \
    > test.out 2>&1
eval_tap $? 53 'AdminGetPlayerSessionAttribute' test.out

#- 54 AdminGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'epyfBd4L' \
    > test.out 2>&1
eval_tap $? 54 'AdminGetPlayerBlockedPlayersV1' test.out

#- 55 AdminGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedByPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'cJlCyrSJ' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetPlayerBlockedByPlayersV1' test.out

#- 56 AdminBulkBlockPlayersV1
samples/cli/sample-apps Lobby adminBulkBlockPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ERpOIB62' \
    --body '{"listBlockedUserId": ["5vcCjUNa", "lhIBTmoa", "AF8E7t6Z"]}' \
    > test.out 2>&1
eval_tap $? 56 'AdminBulkBlockPlayersV1' test.out

#- 57 AdminDebugProfanityFilters
samples/cli/sample-apps Lobby adminDebugProfanityFilters \
    --namespace $AB_NAMESPACE \
    --body '{"text": "NaMnipPc"}' \
    > test.out 2>&1
eval_tap $? 57 'AdminDebugProfanityFilters' test.out

#- 58 AdminGetProfanityListFiltersV1
samples/cli/sample-apps Lobby adminGetProfanityListFiltersV1 \
    --list 'bXcD8ESc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'AdminGetProfanityListFiltersV1' test.out

#- 59 AdminAddProfanityFilterIntoList
samples/cli/sample-apps Lobby adminAddProfanityFilterIntoList \
    --list 'UkrID9dg' \
    --namespace $AB_NAMESPACE \
    --body '{"filter": "EuHuqCGf", "note": "UkeD2suR"}' \
    > test.out 2>&1
eval_tap $? 59 'AdminAddProfanityFilterIntoList' test.out

#- 60 AdminAddProfanityFilters
samples/cli/sample-apps Lobby adminAddProfanityFilters \
    --list '5ncR4RAS' \
    --namespace $AB_NAMESPACE \
    --body '{"filters": [{"filter": "XaQ9Dfoy", "note": "hQcDUQuR"}, {"filter": "MHJ2KwTo", "note": "Q0OSYn0B"}, {"filter": "kilAy94J", "note": "tAGeICnb"}]}' \
    > test.out 2>&1
eval_tap $? 60 'AdminAddProfanityFilters' test.out

#- 61 AdminImportProfanityFiltersFromFile
samples/cli/sample-apps Lobby adminImportProfanityFiltersFromFile \
    --list '6fAxuKfw' \
    --namespace $AB_NAMESPACE \
    --body '[76, 8, 55]' \
    > test.out 2>&1
eval_tap $? 61 'AdminImportProfanityFiltersFromFile' test.out

#- 62 AdminDeleteProfanityFilter
samples/cli/sample-apps Lobby adminDeleteProfanityFilter \
    --list '8wIREo1Y' \
    --namespace $AB_NAMESPACE \
    --body '{"filter": "Nx7qyQsH"}' \
    > test.out 2>&1
eval_tap $? 62 'AdminDeleteProfanityFilter' test.out

#- 63 AdminGetProfanityLists
samples/cli/sample-apps Lobby adminGetProfanityLists \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'AdminGetProfanityLists' test.out

#- 64 AdminCreateProfanityList
samples/cli/sample-apps Lobby adminCreateProfanityList \
    --namespace $AB_NAMESPACE \
    --body '{"isEnabled": true, "isMandatory": true, "name": "HsFIPPaW"}' \
    > test.out 2>&1
eval_tap $? 64 'AdminCreateProfanityList' test.out

#- 65 AdminUpdateProfanityList
samples/cli/sample-apps Lobby adminUpdateProfanityList \
    --list 'WmVOqpC6' \
    --namespace $AB_NAMESPACE \
    --body '{"isEnabled": true, "isMandatory": false, "newName": "CC575dTB"}' \
    > test.out 2>&1
eval_tap $? 65 'AdminUpdateProfanityList' test.out

#- 66 AdminDeleteProfanityList
samples/cli/sample-apps Lobby adminDeleteProfanityList \
    --list 'Sw5FUWqu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'AdminDeleteProfanityList' test.out

#- 67 AdminGetProfanityRule
samples/cli/sample-apps Lobby adminGetProfanityRule \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'AdminGetProfanityRule' test.out

#- 68 AdminSetProfanityRuleForNamespace
samples/cli/sample-apps Lobby adminSetProfanityRuleForNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"rule": "80SQFjXO"}' \
    > test.out 2>&1
eval_tap $? 68 'AdminSetProfanityRuleForNamespace' test.out

#- 69 AdminVerifyMessageProfanityResponse
samples/cli/sample-apps Lobby adminVerifyMessageProfanityResponse \
    --namespace $AB_NAMESPACE \
    --body '{"message": "7npcic61", "profanityLevel": "RCN2RcJ5"}' \
    > test.out 2>&1
eval_tap $? 69 'AdminVerifyMessageProfanityResponse' test.out

#- 70 AdminGetThirdPartyConfig
samples/cli/sample-apps Lobby adminGetThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 70 'AdminGetThirdPartyConfig' test.out

#- 71 AdminUpdateThirdPartyConfig
samples/cli/sample-apps Lobby adminUpdateThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    --body '{"apiKey": "GTNTqWJO"}' \
    > test.out 2>&1
eval_tap $? 71 'AdminUpdateThirdPartyConfig' test.out

#- 72 AdminCreateThirdPartyConfig
samples/cli/sample-apps Lobby adminCreateThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    --body '{"apiKey": "dUIBD4hH"}' \
    > test.out 2>&1
eval_tap $? 72 'AdminCreateThirdPartyConfig' test.out

#- 73 AdminDeleteThirdPartyConfig
samples/cli/sample-apps Lobby adminDeleteThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 73 'AdminDeleteThirdPartyConfig' test.out

#- 74 PublicGetMessages
samples/cli/sample-apps Lobby publicGetMessages \
    > test.out 2>&1
eval_tap $? 74 'PublicGetMessages' test.out

#- 75 PublicGetPartyDataV1
samples/cli/sample-apps Lobby publicGetPartyDataV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'SD7V2PlZ' \
    > test.out 2>&1
eval_tap $? 75 'PublicGetPartyDataV1' test.out

#- 76 PublicUpdatePartyAttributesV1
samples/cli/sample-apps Lobby publicUpdatePartyAttributesV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'SU6wH5AL' \
    --body '{"custom_attribute": {"FlA8CK1h": {}, "VEyPNYhz": {}, "BdQHvrAE": {}}, "updatedAt": 68}' \
    > test.out 2>&1
eval_tap $? 76 'PublicUpdatePartyAttributesV1' test.out

#- 77 PublicSetPartyLimitV1
samples/cli/sample-apps Lobby publicSetPartyLimitV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'bH0W3O04' \
    --body '{"limit": 74}' \
    > test.out 2>&1
eval_tap $? 77 'PublicSetPartyLimitV1' test.out

#- 78 PublicGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby publicGetPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 78 'PublicGetPlayerBlockedPlayersV1' test.out

#- 79 PublicGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby publicGetPlayerBlockedByPlayersV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 79 'PublicGetPlayerBlockedByPlayersV1' test.out

#- 80 UsersPresenceHandlerV1
samples/cli/sample-apps Lobby usersPresenceHandlerV1 \
    --namespace $AB_NAMESPACE \
    --countOnly 'false' \
    --userIds 'i1MXDRW3' \
    > test.out 2>&1
eval_tap $? 80 'UsersPresenceHandlerV1' test.out

#- 81 FreeFormNotification
samples/cli/sample-apps Lobby freeFormNotification \
    --namespace $AB_NAMESPACE \
    --body '{"message": "oRCW5srh", "topic": "LgvnKmyh"}' \
    > test.out 2>&1
eval_tap $? 81 'FreeFormNotification' test.out

#- 82 NotificationWithTemplate
samples/cli/sample-apps Lobby notificationWithTemplate \
    --namespace $AB_NAMESPACE \
    --body '{"templateContext": {"JNdYeKtb": "WvbWlO0v", "SBFSk45U": "CEFKqgQB", "1YxZGkZ9": "D0P21Vzt"}, "templateLanguage": "WNKAeSa5", "templateSlug": "qJcmBd7e", "topic": "Jz5YReht"}' \
    > test.out 2>&1
eval_tap $? 82 'NotificationWithTemplate' test.out

#- 83 GetGameTemplate
samples/cli/sample-apps Lobby getGameTemplate \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 83 'GetGameTemplate' test.out

#- 84 CreateTemplate
samples/cli/sample-apps Lobby createTemplate \
    --namespace $AB_NAMESPACE \
    --body '{"templateContent": "gkydDEIK", "templateLanguage": "A64hjCGU", "templateSlug": "oe2ovXRQ"}' \
    > test.out 2>&1
eval_tap $? 84 'CreateTemplate' test.out

#- 85 GetSlugTemplate
samples/cli/sample-apps Lobby getSlugTemplate \
    --namespace $AB_NAMESPACE \
    --templateSlug 'ZK7BeIw3' \
    --after '9ZRkD3Fv' \
    --before 'yf4D6zeK' \
    --limit '28' \
    > test.out 2>&1
eval_tap $? 85 'GetSlugTemplate' test.out

#- 86 DeleteTemplateSlug
samples/cli/sample-apps Lobby deleteTemplateSlug \
    --namespace $AB_NAMESPACE \
    --templateSlug 'JdHyBli7' \
    > test.out 2>&1
eval_tap $? 86 'DeleteTemplateSlug' test.out

#- 87 GetLocalizationTemplate
samples/cli/sample-apps Lobby getLocalizationTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'teEfDqjc' \
    --templateSlug 'AjNgaMWh' \
    > test.out 2>&1
eval_tap $? 87 'GetLocalizationTemplate' test.out

#- 88 UpdateLocalizationTemplate
samples/cli/sample-apps Lobby updateLocalizationTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'tcDdyas0' \
    --templateSlug 'keDdKuj9' \
    --body '{"templateContent": "Dw9gXG7L"}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateLocalizationTemplate' test.out

#- 89 DeleteTemplateLocalization
samples/cli/sample-apps Lobby deleteTemplateLocalization \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'jEwdyWfn' \
    --templateSlug 'W9BWFi9A' \
    > test.out 2>&1
eval_tap $? 89 'DeleteTemplateLocalization' test.out

#- 90 PublishTemplate
samples/cli/sample-apps Lobby publishTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'Rs9tVuVD' \
    --templateSlug 'KPRSnAxu' \
    > test.out 2>&1
eval_tap $? 90 'PublishTemplate' test.out

#- 91 GetTopicByNamespace
samples/cli/sample-apps Lobby getTopicByNamespace \
    --namespace $AB_NAMESPACE \
    --after 'Gm119Lda' \
    --before 'gUsQ6O94' \
    --limit '74' \
    > test.out 2>&1
eval_tap $? 91 'GetTopicByNamespace' test.out

#- 92 CreateTopic
samples/cli/sample-apps Lobby createTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "ftgSGRwq", "topic": "IoMIQ845"}' \
    > test.out 2>&1
eval_tap $? 92 'CreateTopic' test.out

#- 93 GetTopicByTopicName
samples/cli/sample-apps Lobby getTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'wfoF4tLh' \
    > test.out 2>&1
eval_tap $? 93 'GetTopicByTopicName' test.out

#- 94 UpdateTopicByTopicName
samples/cli/sample-apps Lobby updateTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'BvHIfyW8' \
    --body '{"description": "OPxY2V00"}' \
    > test.out 2>&1
eval_tap $? 94 'UpdateTopicByTopicName' test.out

#- 95 DeleteTopicByTopicName
samples/cli/sample-apps Lobby deleteTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic '4dPEGFu5' \
    > test.out 2>&1
eval_tap $? 95 'DeleteTopicByTopicName' test.out

#- 96 FreeFormNotificationByUserID
samples/cli/sample-apps Lobby freeFormNotificationByUserID \
    --namespace $AB_NAMESPACE \
    --userId '6eAArkbX' \
    --body '{"message": "TZD9UK1K", "topic": "G3pvV9RD"}' \
    > test.out 2>&1
eval_tap $? 96 'FreeFormNotificationByUserID' test.out

#- 97 NotificationWithTemplateByUserID
samples/cli/sample-apps Lobby notificationWithTemplateByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'TjACPdZH' \
    --body '{"templateContext": {"GZacgEWD": "T9GB1Kln", "VVKteWn9": "rgttLzgz", "prqbe2hB": "GTFX1gs8"}, "templateLanguage": "ef4TvV8d", "templateSlug": "pClv7c0R", "topic": "UizTRc2d"}' \
    > test.out 2>&1
eval_tap $? 97 'NotificationWithTemplateByUserID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE