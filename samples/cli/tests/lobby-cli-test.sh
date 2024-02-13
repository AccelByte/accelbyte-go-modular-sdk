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
echo "1..103"

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
    --limit '60' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 2 'GetUserFriendsUpdated' test.out

#- 3 GetUserIncomingFriends
samples/cli/sample-apps Lobby getUserIncomingFriends \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 3 'GetUserIncomingFriends' test.out

#- 4 GetUserIncomingFriendsWithTime
samples/cli/sample-apps Lobby getUserIncomingFriendsWithTime \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 4 'GetUserIncomingFriendsWithTime' test.out

#- 5 GetUserOutgoingFriends
samples/cli/sample-apps Lobby getUserOutgoingFriends \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 5 'GetUserOutgoingFriends' test.out

#- 6 GetUserOutgoingFriendsWithTime
samples/cli/sample-apps Lobby getUserOutgoingFriendsWithTime \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 6 'GetUserOutgoingFriendsWithTime' test.out

#- 7 GetUserFriendsWithPlatform
samples/cli/sample-apps Lobby getUserFriendsWithPlatform \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 7 'GetUserFriendsWithPlatform' test.out

#- 8 UserRequestFriend
samples/cli/sample-apps Lobby userRequestFriend \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "0YPQ0ZLv", "friendPublicId": "THCozU0V"}' \
    > test.out 2>&1
eval_tap $? 8 'UserRequestFriend' test.out

#- 9 UserAcceptFriendRequest
samples/cli/sample-apps Lobby userAcceptFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "uNMPuM58"}' \
    > test.out 2>&1
eval_tap $? 9 'UserAcceptFriendRequest' test.out

#- 10 UserCancelFriendRequest
samples/cli/sample-apps Lobby userCancelFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "uS3jiTjC"}' \
    > test.out 2>&1
eval_tap $? 10 'UserCancelFriendRequest' test.out

#- 11 UserRejectFriendRequest
samples/cli/sample-apps Lobby userRejectFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "2ZMHCWru"}' \
    > test.out 2>&1
eval_tap $? 11 'UserRejectFriendRequest' test.out

#- 12 UserGetFriendshipStatus
samples/cli/sample-apps Lobby userGetFriendshipStatus \
    --friendId '9eeiOfet' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'UserGetFriendshipStatus' test.out

#- 13 UserUnfriendRequest
samples/cli/sample-apps Lobby userUnfriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "1UgTicDL"}' \
    > test.out 2>&1
eval_tap $? 13 'UserUnfriendRequest' test.out

#- 14 AddFriendsWithoutConfirmation
samples/cli/sample-apps Lobby addFriendsWithoutConfirmation \
    --namespace $AB_NAMESPACE \
    --userId 'K7X33Jo8' \
    --body '{"friendIds": ["hlqvVFh0", "kLo791tl", "AJP2Uiir"]}' \
    > test.out 2>&1
eval_tap $? 14 'AddFriendsWithoutConfirmation' test.out

#- 15 BulkDeleteFriends
samples/cli/sample-apps Lobby bulkDeleteFriends \
    --namespace $AB_NAMESPACE \
    --userId 'xG9SGu8x' \
    --body '{"friendIds": ["dvDSzW1N", "mXUhnRC9", "gJ7k4K3r"]}' \
    > test.out 2>&1
eval_tap $? 15 'BulkDeleteFriends' test.out

#- 16 SyncNativeFriends
samples/cli/sample-apps Lobby syncNativeFriends \
    --namespace $AB_NAMESPACE \
    --body '[{"isLogin": true, "platformId": "AAu9oae6", "platformToken": "jhJgn5nC", "psnEnv": "SsrenUUB"}, {"isLogin": false, "platformId": "IadHtFvV", "platformToken": "vVEW79YW", "psnEnv": "FDYc4gKb"}, {"isLogin": false, "platformId": "oopIPq6z", "platformToken": "e2sMhqz8", "psnEnv": "pLhvQXo2"}]' \
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
    --body '{"allowInviteNonConnectedUser": false, "allowJoinPartyDuringMatchmaking": false, "autoKickOnDisconnect": true, "autoKickOnDisconnectDelay": 29, "cancelTicketOnDisconnect": true, "chatRateLimitBurst": 92, "chatRateLimitDuration": 18, "concurrentUsersLimit": 85, "disableInvitationOnJoinParty": true, "enableChat": false, "entitlementCheck": true, "entitlementItemID": "OvGamWdh", "generalRateLimitBurst": 33, "generalRateLimitDuration": 6, "keepPresenceActivityOnDisconnect": false, "maxDSWaitTime": 84, "maxFriendsLimit": 82, "maxPartyMember": 3, "profanityFilter": false, "readyConsentTimeout": 87, "unregisterDelay": 28}' \
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
    --userId 'nrV5pq8r' \
    --friendId 'OtqgsZY8' \
    --friendIds '["eldTcv0k", "yetRp8WK", "632PQY9J"]' \
    --limit '91' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 22 'GetListOfFriends' test.out

#- 23 GetIncomingFriendRequests
samples/cli/sample-apps Lobby getIncomingFriendRequests \
    --namespace $AB_NAMESPACE \
    --userId 'V1X8o2QB' \
    --friendId 'lcw1Neaa' \
    --limit '87' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 23 'GetIncomingFriendRequests' test.out

#- 24 AdminListFriendsOfFriends
samples/cli/sample-apps Lobby adminListFriendsOfFriends \
    --namespace $AB_NAMESPACE \
    --userId 'tcD1Nimn' \
    --friendId 'AiifJdNJ' \
    --limit '85' \
    --nopaging 'true' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 24 'AdminListFriendsOfFriends' test.out

#- 25 GetOutgoingFriendRequests
samples/cli/sample-apps Lobby getOutgoingFriendRequests \
    --namespace $AB_NAMESPACE \
    --userId 'q1h2lGjI' \
    --limit '49' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 25 'GetOutgoingFriendRequests' test.out

#- 26 AdminGetGlobalConfig
samples/cli/sample-apps Lobby adminGetGlobalConfig \
    > test.out 2>&1
eval_tap $? 26 'AdminGetGlobalConfig' test.out

#- 27 AdminUpdateGlobalConfig
samples/cli/sample-apps Lobby adminUpdateGlobalConfig \
    --body '{"regionRetryMapping": {"4ha30mCR": ["LvhHMBUL", "FsoLEJqT", "7gWPbWYc"], "cvltAzpf": ["zIwgml0y", "pdfDFSun", "690JqE5P"], "HcqC2RCV": ["347xP5UK", "EOfm1kZQ", "NMCvzUxO"]}, "regionURLMapping": ["zDnXkHH9", "WVziK5oF", "zD1Crr8F"], "testGameMode": "LAi8N05J", "testRegionURLMapping": ["yvcPJzC9", "8ni8fP1j", "VTel2hjK"], "testTargetUserIDs": ["QSs75RN7", "8uZiUd6t", "oHRVZrl6"]}' \
    > test.out 2>&1
eval_tap $? 27 'AdminUpdateGlobalConfig' test.out

#- 28 AdminDeleteGlobalConfig
samples/cli/sample-apps Lobby adminDeleteGlobalConfig \
    > test.out 2>&1
eval_tap $? 28 'AdminDeleteGlobalConfig' test.out

#- 29 SendMultipleUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendMultipleUsersFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"message": "SlAyLGgh", "topicName": "sS8eAYXV", "userIds": ["xavBFPp6", "hIda8F2j", "hoHpT2R5"]}' \
    > test.out 2>&1
eval_tap $? 29 'SendMultipleUsersFreeformNotificationV1Admin' test.out

#- 30 SendUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"message": "gUpjUxZw", "topicName": "tDCj0W7t"}' \
    > test.out 2>&1
eval_tap $? 30 'SendUsersFreeformNotificationV1Admin' test.out

#- 31 SendPartyFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --partyId 'jKNpuJzz' \
    --body '{"message": "WHV10nGE", "topicName": "V9Z5XPFO"}' \
    > test.out 2>&1
eval_tap $? 31 'SendPartyFreeformNotificationV1Admin' test.out

#- 32 SendPartyTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --partyId '3L1I2V31' \
    --body '{"templateContext": {"4zLZ4l5s": "Y9zUcIkJ", "kLSR2pp8": "byQdkpLf", "qtfrPXDr": "R3IwMkoc"}, "templateLanguage": "LGkI37Yj", "templateSlug": "Xoy59DM3", "topicName": "6Qm5JvTu"}' \
    > test.out 2>&1
eval_tap $? 32 'SendPartyTemplatedNotificationV1Admin' test.out

#- 33 GetAllNotificationTemplatesV1Admin
samples/cli/sample-apps Lobby getAllNotificationTemplatesV1Admin \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'GetAllNotificationTemplatesV1Admin' test.out

#- 34 CreateNotificationTemplateV1Admin
samples/cli/sample-apps Lobby createNotificationTemplateV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"templateContent": "aLxfCrd5", "templateLanguage": "c0UVgk3Y", "templateSlug": "sb42rIiq"}' \
    > test.out 2>&1
eval_tap $? 34 'CreateNotificationTemplateV1Admin' test.out

#- 35 SendUsersTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"templateContext": {"H0670Clu": "uEJAQ2b7", "5rCuG5sg": "mueRmukS", "laO3tOl0": "dueU2PgI"}, "templateLanguage": "BmvCk8WU", "templateSlug": "RMUixIun", "topicName": "sNweezL9"}' \
    > test.out 2>&1
eval_tap $? 35 'SendUsersTemplatedNotificationV1Admin' test.out

#- 36 GetTemplateSlugLocalizationsTemplateV1Admin
samples/cli/sample-apps Lobby getTemplateSlugLocalizationsTemplateV1Admin \
    --namespace $AB_NAMESPACE \
    --templateSlug 'i44RMkfQ' \
    --after 'gRNco2k9' \
    --before 'Mh3RigzV' \
    --limit '47' \
    > test.out 2>&1
eval_tap $? 36 'GetTemplateSlugLocalizationsTemplateV1Admin' test.out

#- 37 DeleteNotificationTemplateSlugV1Admin
samples/cli/sample-apps Lobby deleteNotificationTemplateSlugV1Admin \
    --namespace $AB_NAMESPACE \
    --templateSlug 'tA2x7mRU' \
    > test.out 2>&1
eval_tap $? 37 'DeleteNotificationTemplateSlugV1Admin' test.out

#- 38 GetSingleTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby getSingleTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'UhvNkrK8' \
    --templateSlug 'TfhnQNOG' \
    > test.out 2>&1
eval_tap $? 38 'GetSingleTemplateLocalizationV1Admin' test.out

#- 39 UpdateTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby updateTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'CYHLnmCT' \
    --templateSlug 'pGFXIal0' \
    --body '{"templateContent": "c5b1VJzF"}' \
    > test.out 2>&1
eval_tap $? 39 'UpdateTemplateLocalizationV1Admin' test.out

#- 40 DeleteTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby deleteTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'Yvi0VUYj' \
    --templateSlug 'rUMs2Lyz' \
    > test.out 2>&1
eval_tap $? 40 'DeleteTemplateLocalizationV1Admin' test.out

#- 41 PublishTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby publishTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage '4oFghcq7' \
    --templateSlug 'r77HPQtq' \
    > test.out 2>&1
eval_tap $? 41 'PublishTemplateLocalizationV1Admin' test.out

#- 42 GetAllNotificationTopicsV1Admin
samples/cli/sample-apps Lobby getAllNotificationTopicsV1Admin \
    --namespace $AB_NAMESPACE \
    --after 'Pdy6Ur9q' \
    --before 'lvMi3Ztl' \
    --limit '13' \
    > test.out 2>&1
eval_tap $? 42 'GetAllNotificationTopicsV1Admin' test.out

#- 43 CreateNotificationTopicV1Admin
samples/cli/sample-apps Lobby createNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"description": "AXBzAmn7", "topicName": "HodDM3Pj"}' \
    > test.out 2>&1
eval_tap $? 43 'CreateNotificationTopicV1Admin' test.out

#- 44 GetNotificationTopicV1Admin
samples/cli/sample-apps Lobby getNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'hgy7vos4' \
    > test.out 2>&1
eval_tap $? 44 'GetNotificationTopicV1Admin' test.out

#- 45 UpdateNotificationTopicV1Admin
samples/cli/sample-apps Lobby updateNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'B5utFk8c' \
    --body '{"description": "qIdaMkby"}' \
    > test.out 2>&1
eval_tap $? 45 'UpdateNotificationTopicV1Admin' test.out

#- 46 DeleteNotificationTopicV1Admin
samples/cli/sample-apps Lobby deleteNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'Hg4iq81z' \
    > test.out 2>&1
eval_tap $? 46 'DeleteNotificationTopicV1Admin' test.out

#- 47 SendSpecificUserFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --userId 'cUb8g9Ed' \
    --body '{"message": "4FqBp2TI", "topicName": "LceMKqVu"}' \
    > test.out 2>&1
eval_tap $? 47 'SendSpecificUserFreeformNotificationV1Admin' test.out

#- 48 SendSpecificUserTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --userId 'dp4uqqcE' \
    --body '{"templateContext": {"9WMsF4QR": "3hXcqAg1", "5euJiITM": "rlaM8bIs", "COuCekKy": "kWhC97M4"}, "templateLanguage": "Nn26qtmT", "templateSlug": "sBXo3YNV", "topicName": "W5Rn3d59"}' \
    > test.out 2>&1
eval_tap $? 48 'SendSpecificUserTemplatedNotificationV1Admin' test.out

#- 49 AdminGetPartyDataV1
samples/cli/sample-apps Lobby adminGetPartyDataV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'UwawsOL2' \
    > test.out 2>&1
eval_tap $? 49 'AdminGetPartyDataV1' test.out

#- 50 AdminUpdatePartyAttributesV1
samples/cli/sample-apps Lobby adminUpdatePartyAttributesV1 \
    --namespace $AB_NAMESPACE \
    --partyId '6zUtJZfT' \
    --body '{"custom_attribute": {"5SGNjNvT": {}, "Q43SczxB": {}, "I1lBE1WU": {}}, "updatedAt": 32}' \
    > test.out 2>&1
eval_tap $? 50 'AdminUpdatePartyAttributesV1' test.out

#- 51 AdminJoinPartyV1
samples/cli/sample-apps Lobby adminJoinPartyV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'gMf3IUX6' \
    --userId 'Ti0i6o0D' \
    > test.out 2>&1
eval_tap $? 51 'AdminJoinPartyV1' test.out

#- 52 AdminGetUserPartyV1
samples/cli/sample-apps Lobby adminGetUserPartyV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ZVAGAUYN' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetUserPartyV1' test.out

#- 53 AdminGetLobbyCCU
samples/cli/sample-apps Lobby adminGetLobbyCCU \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 53 'AdminGetLobbyCCU' test.out

#- 54 AdminGetBulkPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby adminGetBulkPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    --body '{"listBlockedUserId": ["v0pHmfPU", "66QyajhO", "ipT5Qzy3"]}' \
    > test.out 2>&1
eval_tap $? 54 'AdminGetBulkPlayerBlockedPlayersV1' test.out

#- 55 AdminGetAllPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetAllPlayerSessionAttribute \
    --namespace $AB_NAMESPACE \
    --userId 'TSW471Pb' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetAllPlayerSessionAttribute' test.out

#- 56 AdminSetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminSetPlayerSessionAttribute \
    --namespace $AB_NAMESPACE \
    --userId 'OgoRKFIH' \
    --body '{"attributes": {"XMNIu4Zd": "QjjMnqVl", "jAmogCqC": "GumbnvKn", "9fLktm4L": "gnRBA9Tk"}}' \
    > test.out 2>&1
eval_tap $? 56 'AdminSetPlayerSessionAttribute' test.out

#- 57 AdminGetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetPlayerSessionAttribute \
    --attribute 'Ne0Jlwdd' \
    --namespace $AB_NAMESPACE \
    --userId 'A3jsPoro' \
    > test.out 2>&1
eval_tap $? 57 'AdminGetPlayerSessionAttribute' test.out

#- 58 AdminGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'jkp3QwUL' \
    > test.out 2>&1
eval_tap $? 58 'AdminGetPlayerBlockedPlayersV1' test.out

#- 59 AdminGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedByPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId '4flS1kGW' \
    > test.out 2>&1
eval_tap $? 59 'AdminGetPlayerBlockedByPlayersV1' test.out

#- 60 AdminBulkBlockPlayersV1
samples/cli/sample-apps Lobby adminBulkBlockPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId '9TZX3RS8' \
    --body '{"listBlockedUserId": ["1tphhgU6", "AEvjk2rs", "isQe9SkQ"]}' \
    > test.out 2>&1
eval_tap $? 60 'AdminBulkBlockPlayersV1' test.out

#- 61 AdminDebugProfanityFilters
samples/cli/sample-apps Lobby adminDebugProfanityFilters \
    --namespace $AB_NAMESPACE \
    --body '{"text": "0Z0O2YWm"}' \
    > test.out 2>&1
eval_tap $? 61 'AdminDebugProfanityFilters' test.out

#- 62 AdminGetProfanityListFiltersV1
samples/cli/sample-apps Lobby adminGetProfanityListFiltersV1 \
    --list 'dZyOjpJ9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'AdminGetProfanityListFiltersV1' test.out

#- 63 AdminAddProfanityFilterIntoList
samples/cli/sample-apps Lobby adminAddProfanityFilterIntoList \
    --list '1ccqewoL' \
    --namespace $AB_NAMESPACE \
    --body '{"filter": "SfLTXS1d", "note": "Jo45RrIe"}' \
    > test.out 2>&1
eval_tap $? 63 'AdminAddProfanityFilterIntoList' test.out

#- 64 AdminAddProfanityFilters
samples/cli/sample-apps Lobby adminAddProfanityFilters \
    --list 'xmHSKXmx' \
    --namespace $AB_NAMESPACE \
    --body '{"filters": [{"filter": "d0uWyWaD", "note": "KJJtUIqw"}, {"filter": "8JXePcOX", "note": "kolCQgiY"}, {"filter": "dLLJo0jP", "note": "o1J8PQX8"}]}' \
    > test.out 2>&1
eval_tap $? 64 'AdminAddProfanityFilters' test.out

#- 65 AdminImportProfanityFiltersFromFile
samples/cli/sample-apps Lobby adminImportProfanityFiltersFromFile \
    --list 'PkjS8COj' \
    --namespace $AB_NAMESPACE \
    --body '[82, 44, 59]' \
    > test.out 2>&1
eval_tap $? 65 'AdminImportProfanityFiltersFromFile' test.out

#- 66 AdminDeleteProfanityFilter
samples/cli/sample-apps Lobby adminDeleteProfanityFilter \
    --list 'dmS3Ld1m' \
    --namespace $AB_NAMESPACE \
    --body '{"filter": "0JOC7hvf"}' \
    > test.out 2>&1
eval_tap $? 66 'AdminDeleteProfanityFilter' test.out

#- 67 AdminGetProfanityLists
samples/cli/sample-apps Lobby adminGetProfanityLists \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'AdminGetProfanityLists' test.out

#- 68 AdminCreateProfanityList
samples/cli/sample-apps Lobby adminCreateProfanityList \
    --namespace $AB_NAMESPACE \
    --body '{"isEnabled": true, "isMandatory": false, "name": "yzPbKhOJ"}' \
    > test.out 2>&1
eval_tap $? 68 'AdminCreateProfanityList' test.out

#- 69 AdminUpdateProfanityList
samples/cli/sample-apps Lobby adminUpdateProfanityList \
    --list 'YG9pXS2Y' \
    --namespace $AB_NAMESPACE \
    --body '{"isEnabled": false, "isMandatory": true, "newName": "y9pHhhN4"}' \
    > test.out 2>&1
eval_tap $? 69 'AdminUpdateProfanityList' test.out

#- 70 AdminDeleteProfanityList
samples/cli/sample-apps Lobby adminDeleteProfanityList \
    --list 'lkQGxr4M' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 70 'AdminDeleteProfanityList' test.out

#- 71 AdminGetProfanityRule
samples/cli/sample-apps Lobby adminGetProfanityRule \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'AdminGetProfanityRule' test.out

#- 72 AdminSetProfanityRuleForNamespace
samples/cli/sample-apps Lobby adminSetProfanityRuleForNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"rule": "SZSubGpc"}' \
    > test.out 2>&1
eval_tap $? 72 'AdminSetProfanityRuleForNamespace' test.out

#- 73 AdminVerifyMessageProfanityResponse
samples/cli/sample-apps Lobby adminVerifyMessageProfanityResponse \
    --namespace $AB_NAMESPACE \
    --body '{"message": "JsbJxZ7H", "profanityLevel": "iz4O9EKS"}' \
    > test.out 2>&1
eval_tap $? 73 'AdminVerifyMessageProfanityResponse' test.out

#- 74 AdminGetThirdPartyConfig
samples/cli/sample-apps Lobby adminGetThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'AdminGetThirdPartyConfig' test.out

#- 75 AdminUpdateThirdPartyConfig
samples/cli/sample-apps Lobby adminUpdateThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    --body '{"apiKey": "DOiY8nPa"}' \
    > test.out 2>&1
eval_tap $? 75 'AdminUpdateThirdPartyConfig' test.out

#- 76 AdminCreateThirdPartyConfig
samples/cli/sample-apps Lobby adminCreateThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    --body '{"apiKey": "uWWIhAeY"}' \
    > test.out 2>&1
eval_tap $? 76 'AdminCreateThirdPartyConfig' test.out

#- 77 AdminDeleteThirdPartyConfig
samples/cli/sample-apps Lobby adminDeleteThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 77 'AdminDeleteThirdPartyConfig' test.out

#- 78 PublicGetMessages
samples/cli/sample-apps Lobby publicGetMessages \
    > test.out 2>&1
eval_tap $? 78 'PublicGetMessages' test.out

#- 79 PublicGetPartyDataV1
samples/cli/sample-apps Lobby publicGetPartyDataV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'N3IVUpaD' \
    > test.out 2>&1
eval_tap $? 79 'PublicGetPartyDataV1' test.out

#- 80 PublicUpdatePartyAttributesV1
samples/cli/sample-apps Lobby publicUpdatePartyAttributesV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'FfBelLTS' \
    --body '{"custom_attribute": {"iqMsTcNb": {}, "4ftw7wnA": {}, "DRLgHoAa": {}}, "updatedAt": 60}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdatePartyAttributesV1' test.out

#- 81 PublicSetPartyLimitV1
samples/cli/sample-apps Lobby publicSetPartyLimitV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'F5buRSuC' \
    --body '{"limit": 7}' \
    > test.out 2>&1
eval_tap $? 81 'PublicSetPartyLimitV1' test.out

#- 82 PublicPlayerBlockPlayersV1
samples/cli/sample-apps Lobby publicPlayerBlockPlayersV1 \
    --namespace $AB_NAMESPACE \
    --body '{"blockedUserId": "kjvWfyK2"}' \
    > test.out 2>&1
eval_tap $? 82 'PublicPlayerBlockPlayersV1' test.out

#- 83 PublicGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby publicGetPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 83 'PublicGetPlayerBlockedPlayersV1' test.out

#- 84 PublicGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby publicGetPlayerBlockedByPlayersV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 84 'PublicGetPlayerBlockedByPlayersV1' test.out

#- 85 PublicUnblockPlayerV1
samples/cli/sample-apps Lobby publicUnblockPlayerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "oQot3IzE"}' \
    > test.out 2>&1
eval_tap $? 85 'PublicUnblockPlayerV1' test.out

#- 86 UsersPresenceHandlerV1
samples/cli/sample-apps Lobby usersPresenceHandlerV1 \
    --namespace $AB_NAMESPACE \
    --countOnly 'false' \
    --userIds '8sNxDYr5' \
    > test.out 2>&1
eval_tap $? 86 'UsersPresenceHandlerV1' test.out

#- 87 FreeFormNotification
samples/cli/sample-apps Lobby freeFormNotification \
    --namespace $AB_NAMESPACE \
    --body '{"message": "4QVm3dZe", "topic": "6QzKOOsN"}' \
    > test.out 2>&1
eval_tap $? 87 'FreeFormNotification' test.out

#- 88 NotificationWithTemplate
samples/cli/sample-apps Lobby notificationWithTemplate \
    --namespace $AB_NAMESPACE \
    --body '{"templateContext": {"0iA8lhLZ": "pMMwQtFn", "VjGKrmPI": "Ly2I5Ukd", "pY7QXoKk": "kkWF3m65"}, "templateLanguage": "EcSupsGn", "templateSlug": "GNJnNceZ", "topic": "FCqWjSfE"}' \
    > test.out 2>&1
eval_tap $? 88 'NotificationWithTemplate' test.out

#- 89 GetGameTemplate
samples/cli/sample-apps Lobby getGameTemplate \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 89 'GetGameTemplate' test.out

#- 90 CreateTemplate
samples/cli/sample-apps Lobby createTemplate \
    --namespace $AB_NAMESPACE \
    --body '{"templateContent": "DpPb38T9", "templateLanguage": "DSrt4SxX", "templateSlug": "QtDNkoVU"}' \
    > test.out 2>&1
eval_tap $? 90 'CreateTemplate' test.out

#- 91 GetSlugTemplate
samples/cli/sample-apps Lobby getSlugTemplate \
    --namespace $AB_NAMESPACE \
    --templateSlug 'rcvF6O02' \
    --after 'NOmBBCdM' \
    --before '8zFdLl9u' \
    --limit '68' \
    > test.out 2>&1
eval_tap $? 91 'GetSlugTemplate' test.out

#- 92 DeleteTemplateSlug
samples/cli/sample-apps Lobby deleteTemplateSlug \
    --namespace $AB_NAMESPACE \
    --templateSlug 'YkatdILO' \
    > test.out 2>&1
eval_tap $? 92 'DeleteTemplateSlug' test.out

#- 93 GetLocalizationTemplate
samples/cli/sample-apps Lobby getLocalizationTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage '1Z5eP6hj' \
    --templateSlug 'lspsLMQJ' \
    > test.out 2>&1
eval_tap $? 93 'GetLocalizationTemplate' test.out

#- 94 UpdateLocalizationTemplate
samples/cli/sample-apps Lobby updateLocalizationTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'NoaPpsBk' \
    --templateSlug 'zwHAwbAm' \
    --body '{"templateContent": "0sfD9JU5"}' \
    > test.out 2>&1
eval_tap $? 94 'UpdateLocalizationTemplate' test.out

#- 95 DeleteTemplateLocalization
samples/cli/sample-apps Lobby deleteTemplateLocalization \
    --namespace $AB_NAMESPACE \
    --templateLanguage '58AnUzg9' \
    --templateSlug 'EwaGJmPb' \
    > test.out 2>&1
eval_tap $? 95 'DeleteTemplateLocalization' test.out

#- 96 PublishTemplate
samples/cli/sample-apps Lobby publishTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage '7oPSFMmk' \
    --templateSlug 'IifrqZ94' \
    > test.out 2>&1
eval_tap $? 96 'PublishTemplate' test.out

#- 97 GetTopicByNamespace
samples/cli/sample-apps Lobby getTopicByNamespace \
    --namespace $AB_NAMESPACE \
    --after 'iGnFuhqy' \
    --before 'GIUCKCya' \
    --limit '73' \
    > test.out 2>&1
eval_tap $? 97 'GetTopicByNamespace' test.out

#- 98 CreateTopic
samples/cli/sample-apps Lobby createTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "CoZGq4iE", "topic": "CszMqbIg"}' \
    > test.out 2>&1
eval_tap $? 98 'CreateTopic' test.out

#- 99 GetTopicByTopicName
samples/cli/sample-apps Lobby getTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'uoBKEkEP' \
    > test.out 2>&1
eval_tap $? 99 'GetTopicByTopicName' test.out

#- 100 UpdateTopicByTopicName
samples/cli/sample-apps Lobby updateTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'B2lN0rM9' \
    --body '{"description": "riYMFzQ8"}' \
    > test.out 2>&1
eval_tap $? 100 'UpdateTopicByTopicName' test.out

#- 101 DeleteTopicByTopicName
samples/cli/sample-apps Lobby deleteTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 't7FqdBjL' \
    > test.out 2>&1
eval_tap $? 101 'DeleteTopicByTopicName' test.out

#- 102 FreeFormNotificationByUserID
samples/cli/sample-apps Lobby freeFormNotificationByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'xCYGZvcG' \
    --body '{"message": "rFuK03H5", "topic": "cqu1plY4"}' \
    > test.out 2>&1
eval_tap $? 102 'FreeFormNotificationByUserID' test.out

#- 103 NotificationWithTemplateByUserID
samples/cli/sample-apps Lobby notificationWithTemplateByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'fehqnRTs' \
    --body '{"templateContext": {"CaxT5cqY": "92CEdzS1", "3OQnCmjK": "cEkMAVmn", "B2lmOIUP": "3fyVrP1y"}, "templateLanguage": "BKHoQjll", "templateSlug": "ms4VCa08", "topic": "cNZM5UyM"}' \
    > test.out 2>&1
eval_tap $? 103 'NotificationWithTemplateByUserID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE