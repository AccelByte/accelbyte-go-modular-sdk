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
echo "1..110"

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
    --limit '23' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 2 'GetUserFriendsUpdated' test.out

#- 3 GetUserIncomingFriends
samples/cli/sample-apps Lobby getUserIncomingFriends \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 3 'GetUserIncomingFriends' test.out

#- 4 GetUserIncomingFriendsWithTime
samples/cli/sample-apps Lobby getUserIncomingFriendsWithTime \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 4 'GetUserIncomingFriendsWithTime' test.out

#- 5 GetUserOutgoingFriends
samples/cli/sample-apps Lobby getUserOutgoingFriends \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 5 'GetUserOutgoingFriends' test.out

#- 6 GetUserOutgoingFriendsWithTime
samples/cli/sample-apps Lobby getUserOutgoingFriendsWithTime \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 6 'GetUserOutgoingFriendsWithTime' test.out

#- 7 GetUserFriendsWithPlatform
samples/cli/sample-apps Lobby getUserFriendsWithPlatform \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 7 'GetUserFriendsWithPlatform' test.out

#- 8 UserRequestFriend
samples/cli/sample-apps Lobby userRequestFriend \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "nbtU2xlO", "friendPublicId": "PFjkPmAZ", "metadata": {"nw1BILHk": "m1ay8VqI", "2NKPIRvx": "XNYnihTn", "2wER6fun": "0OMVO0dS"}}' \
    > test.out 2>&1
eval_tap $? 8 'UserRequestFriend' test.out

#- 9 UserAcceptFriendRequest
samples/cli/sample-apps Lobby userAcceptFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "Cctsm1fI"}' \
    > test.out 2>&1
eval_tap $? 9 'UserAcceptFriendRequest' test.out

#- 10 UserCancelFriendRequest
samples/cli/sample-apps Lobby userCancelFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "uVMdIchq"}' \
    > test.out 2>&1
eval_tap $? 10 'UserCancelFriendRequest' test.out

#- 11 UserRejectFriendRequest
samples/cli/sample-apps Lobby userRejectFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "BDHdajS4"}' \
    > test.out 2>&1
eval_tap $? 11 'UserRejectFriendRequest' test.out

#- 12 UserGetFriendshipStatus
samples/cli/sample-apps Lobby userGetFriendshipStatus \
    --friendId 'uRt48K60' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'UserGetFriendshipStatus' test.out

#- 13 UserUnfriendRequest
samples/cli/sample-apps Lobby userUnfriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "qFNyXeiV"}' \
    > test.out 2>&1
eval_tap $? 13 'UserUnfriendRequest' test.out

#- 14 AddFriendsWithoutConfirmation
samples/cli/sample-apps Lobby addFriendsWithoutConfirmation \
    --namespace $AB_NAMESPACE \
    --userId 'vGxvtolf' \
    --body '{"friendIds": ["revuRuHE", "OxWtVstM", "6PfjrEZq"]}' \
    > test.out 2>&1
eval_tap $? 14 'AddFriendsWithoutConfirmation' test.out

#- 15 BulkDeleteFriends
samples/cli/sample-apps Lobby bulkDeleteFriends \
    --namespace $AB_NAMESPACE \
    --userId 'tPW7oaaJ' \
    --body '{"friendIds": ["dmBZfh3U", "5FCOv6nd", "UoOPMf2d"]}' \
    > test.out 2>&1
eval_tap $? 15 'BulkDeleteFriends' test.out

#- 16 SyncNativeFriends
samples/cli/sample-apps Lobby syncNativeFriends \
    --namespace $AB_NAMESPACE \
    --body '[{"isLogin": true, "platformId": "ZkN4gloA", "platformToken": "9V2xRBJn", "psnEnv": "oZnOftwz", "syncDeletedFriend": false}, {"isLogin": true, "platformId": "GLDu46iM", "platformToken": "cFDIuVZP", "psnEnv": "hIzxdIZ6", "syncDeletedFriend": false}, {"isLogin": false, "platformId": "GXQI11Pm", "platformToken": "WEbYdNm9", "psnEnv": "A2RPUarO", "syncDeletedFriend": false}]' \
    > test.out 2>&1
eval_tap $? 16 'SyncNativeFriends' test.out

#- 17 SyncNativeBlockedUser
samples/cli/sample-apps Lobby syncNativeBlockedUser \
    --namespace $AB_NAMESPACE \
    --body '[{"platformId": "UMGVOV4I", "psnEnv": "vBrJH0YT"}, {"platformId": "j12OBc4V", "psnEnv": "he38geqq"}, {"platformId": "SStGSoPO", "psnEnv": "VmgL5zQj"}]' \
    > test.out 2>&1
eval_tap $? 17 'SyncNativeBlockedUser' test.out

#- 18 AdminGetAllConfigV1
samples/cli/sample-apps Lobby adminGetAllConfigV1 \
    > test.out 2>&1
eval_tap $? 18 'AdminGetAllConfigV1' test.out

#- 19 AdminGetLogConfig
samples/cli/sample-apps Lobby adminGetLogConfig \
    > test.out 2>&1
eval_tap $? 19 'AdminGetLogConfig' test.out

#- 20 AdminPatchUpdateLogConfig
samples/cli/sample-apps Lobby adminPatchUpdateLogConfig \
    --body '{"logLevel": "trace", "logLevelDB": "warning", "slowQueryThreshold": 50, "socketLogEnabled": false}' \
    > test.out 2>&1
eval_tap $? 20 'AdminPatchUpdateLogConfig' test.out

#- 21 AdminGetConfigV1
samples/cli/sample-apps Lobby adminGetConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminGetConfigV1' test.out

#- 22 AdminUpdateConfigV1
samples/cli/sample-apps Lobby adminUpdateConfigV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowInviteNonConnectedUser": false, "allowJoinPartyDuringMatchmaking": false, "autoKickOnDisconnect": true, "autoKickOnDisconnectDelay": 30, "cancelTicketOnDisconnect": false, "chatRateLimitBurst": 61, "chatRateLimitDuration": 3, "concurrentUsersLimit": 70, "disableInvitationOnJoinParty": true, "enableChat": false, "entitlementCheck": true, "entitlementItemID": "IbhAtzT8", "generalRateLimitBurst": 79, "generalRateLimitDuration": 42, "keepPresenceActivityOnDisconnect": true, "maxDSWaitTime": 52, "maxFriendsLimit": 83, "maxPartyMember": 50, "profanityFilter": true, "readyConsentTimeout": 16, "requestMetadataMaxSize": 60, "unregisterDelay": 53, "wsReadTimeout": 2}' \
    > test.out 2>&1
eval_tap $? 22 'AdminUpdateConfigV1' test.out

#- 23 AdminExportConfigV1
samples/cli/sample-apps Lobby adminExportConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'AdminExportConfigV1' test.out

#- 24 AdminImportConfigV1
samples/cli/sample-apps Lobby adminImportConfigV1 \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 24 'AdminImportConfigV1' test.out

#- 25 GetListOfFriends
samples/cli/sample-apps Lobby getListOfFriends \
    --namespace $AB_NAMESPACE \
    --userId 'OjUuylhh' \
    --friendId 'jLc8n7m3' \
    --friendIds '["J5qky0U1", "byncGxwn", "sA6EmvzF"]' \
    --limit '14' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 25 'GetListOfFriends' test.out

#- 26 GetIncomingFriendRequests
samples/cli/sample-apps Lobby getIncomingFriendRequests \
    --namespace $AB_NAMESPACE \
    --userId 'mf8CE2hk' \
    --friendId 'Lrpg2ktw' \
    --limit '4' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 26 'GetIncomingFriendRequests' test.out

#- 27 AdminListFriendsOfFriends
samples/cli/sample-apps Lobby adminListFriendsOfFriends \
    --namespace $AB_NAMESPACE \
    --userId 'e1z8f4K8' \
    --friendId 'pjOxeITw' \
    --limit '69' \
    --nopaging 'false' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 27 'AdminListFriendsOfFriends' test.out

#- 28 GetOutgoingFriendRequests
samples/cli/sample-apps Lobby getOutgoingFriendRequests \
    --namespace $AB_NAMESPACE \
    --userId 'lgn7BaUh' \
    --limit '54' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 28 'GetOutgoingFriendRequests' test.out

#- 29 AdminGetGlobalConfig
eval_tap 0 29 'AdminGetGlobalConfig # SKIP deprecated' test.out

#- 30 AdminUpdateGlobalConfig
eval_tap 0 30 'AdminUpdateGlobalConfig # SKIP deprecated' test.out

#- 31 AdminDeleteGlobalConfig
eval_tap 0 31 'AdminDeleteGlobalConfig # SKIP deprecated' test.out

#- 32 SendMultipleUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendMultipleUsersFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"message": "K7A4iRWU", "topicName": "XT9ld2sH", "userIds": ["nSUFUsif", "pMsrOA9L", "RYXRB4wJ"]}' \
    > test.out 2>&1
eval_tap $? 32 'SendMultipleUsersFreeformNotificationV1Admin' test.out

#- 33 SendUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"message": "n77gFz6I", "topicName": "olAyEFoL"}' \
    > test.out 2>&1
eval_tap $? 33 'SendUsersFreeformNotificationV1Admin' test.out

#- 34 SendPartyFreeformNotificationV1Admin
eval_tap 0 34 'SendPartyFreeformNotificationV1Admin # SKIP deprecated' test.out

#- 35 SendPartyTemplatedNotificationV1Admin
eval_tap 0 35 'SendPartyTemplatedNotificationV1Admin # SKIP deprecated' test.out

#- 36 GetAllNotificationTemplatesV1Admin
samples/cli/sample-apps Lobby getAllNotificationTemplatesV1Admin \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 36 'GetAllNotificationTemplatesV1Admin' test.out

#- 37 CreateNotificationTemplateV1Admin
samples/cli/sample-apps Lobby createNotificationTemplateV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"templateContent": "Ej2aSjxL", "templateLanguage": "qlkuF0wz", "templateSlug": "lDBOyLGl"}' \
    > test.out 2>&1
eval_tap $? 37 'CreateNotificationTemplateV1Admin' test.out

#- 38 SendUsersTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"templateContext": {"i5hRRnOU": "ghbZw5bh", "iIUlJaZw": "TOEto9uE", "zgp4DmRP": "3qRAXtjO"}, "templateLanguage": "zELxnFrb", "templateSlug": "U7FK99qr", "topicName": "xYvsMoLd"}' \
    > test.out 2>&1
eval_tap $? 38 'SendUsersTemplatedNotificationV1Admin' test.out

#- 39 GetTemplateSlugLocalizationsTemplateV1Admin
samples/cli/sample-apps Lobby getTemplateSlugLocalizationsTemplateV1Admin \
    --namespace $AB_NAMESPACE \
    --templateSlug '17GQ0LEA' \
    --after 'JJY1aARB' \
    --before 'LZiVefRR' \
    --limit '63' \
    > test.out 2>&1
eval_tap $? 39 'GetTemplateSlugLocalizationsTemplateV1Admin' test.out

#- 40 DeleteNotificationTemplateSlugV1Admin
samples/cli/sample-apps Lobby deleteNotificationTemplateSlugV1Admin \
    --namespace $AB_NAMESPACE \
    --templateSlug 'MzznfvJI' \
    > test.out 2>&1
eval_tap $? 40 'DeleteNotificationTemplateSlugV1Admin' test.out

#- 41 GetSingleTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby getSingleTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'O4ICPdXe' \
    --templateSlug 'FOAponG8' \
    > test.out 2>&1
eval_tap $? 41 'GetSingleTemplateLocalizationV1Admin' test.out

#- 42 UpdateTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby updateTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'hqumq98x' \
    --templateSlug 'UOADGAwz' \
    --body '{"templateContent": "X9WPz6UQ"}' \
    > test.out 2>&1
eval_tap $? 42 'UpdateTemplateLocalizationV1Admin' test.out

#- 43 DeleteTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby deleteTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'fDX0OtPk' \
    --templateSlug 'guEjkW2r' \
    > test.out 2>&1
eval_tap $? 43 'DeleteTemplateLocalizationV1Admin' test.out

#- 44 PublishTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby publishTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'j0wuoOqd' \
    --templateSlug 'OFzzsFN6' \
    > test.out 2>&1
eval_tap $? 44 'PublishTemplateLocalizationV1Admin' test.out

#- 45 GetAllNotificationTopicsV1Admin
samples/cli/sample-apps Lobby getAllNotificationTopicsV1Admin \
    --namespace $AB_NAMESPACE \
    --after 'QTMGbJL2' \
    --before 'InlDK3gB' \
    --limit '73' \
    > test.out 2>&1
eval_tap $? 45 'GetAllNotificationTopicsV1Admin' test.out

#- 46 CreateNotificationTopicV1Admin
samples/cli/sample-apps Lobby createNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"description": "0GQh0Fj8", "topicName": "D0fCHGv6"}' \
    > test.out 2>&1
eval_tap $? 46 'CreateNotificationTopicV1Admin' test.out

#- 47 GetNotificationTopicV1Admin
samples/cli/sample-apps Lobby getNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'aDFfnBYJ' \
    > test.out 2>&1
eval_tap $? 47 'GetNotificationTopicV1Admin' test.out

#- 48 UpdateNotificationTopicV1Admin
samples/cli/sample-apps Lobby updateNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'sW3NHdgO' \
    --body '{"description": "2bGM4YGA"}' \
    > test.out 2>&1
eval_tap $? 48 'UpdateNotificationTopicV1Admin' test.out

#- 49 DeleteNotificationTopicV1Admin
samples/cli/sample-apps Lobby deleteNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'iZF2lHGw' \
    > test.out 2>&1
eval_tap $? 49 'DeleteNotificationTopicV1Admin' test.out

#- 50 SendSpecificUserFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --userId '6tP8ZVX3' \
    --body '{"message": "lg9Bki4o", "topicName": "LmBexhdf"}' \
    > test.out 2>&1
eval_tap $? 50 'SendSpecificUserFreeformNotificationV1Admin' test.out

#- 51 SendSpecificUserTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --userId 'kHx2XdQv' \
    --body '{"templateContext": {"ba0lPh8q": "wGZEu3aD", "k0lPyxTL": "IuQVmVau", "9kZ2nSFX": "PGjrvxDe"}, "templateLanguage": "Y7273lxB", "templateSlug": "bvBnjNWw", "topicName": "XYGQJg5K"}' \
    > test.out 2>&1
eval_tap $? 51 'SendSpecificUserTemplatedNotificationV1Admin' test.out

#- 52 AdminGetPartyDataV1
eval_tap 0 52 'AdminGetPartyDataV1 # SKIP deprecated' test.out

#- 53 AdminUpdatePartyAttributesV1
eval_tap 0 53 'AdminUpdatePartyAttributesV1 # SKIP deprecated' test.out

#- 54 AdminJoinPartyV1
eval_tap 0 54 'AdminJoinPartyV1 # SKIP deprecated' test.out

#- 55 AdminGetUserPartyV1
eval_tap 0 55 'AdminGetUserPartyV1 # SKIP deprecated' test.out

#- 56 AdminGetLobbyCCU
samples/cli/sample-apps Lobby adminGetLobbyCCU \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'AdminGetLobbyCCU' test.out

#- 57 AdminGetBulkPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby adminGetBulkPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    --body '{"listBlockedUserId": ["W3CXm3uk", "5qG1zRsU", "2GF42m0Y"]}' \
    > test.out 2>&1
eval_tap $? 57 'AdminGetBulkPlayerBlockedPlayersV1' test.out

#- 58 AdminGetAllPlayerSessionAttribute
eval_tap 0 58 'AdminGetAllPlayerSessionAttribute # SKIP deprecated' test.out

#- 59 AdminSetPlayerSessionAttribute
eval_tap 0 59 'AdminSetPlayerSessionAttribute # SKIP deprecated' test.out

#- 60 AdminGetPlayerSessionAttribute
eval_tap 0 60 'AdminGetPlayerSessionAttribute # SKIP deprecated' test.out

#- 61 AdminGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'KSXaNiwO' \
    > test.out 2>&1
eval_tap $? 61 'AdminGetPlayerBlockedPlayersV1' test.out

#- 62 AdminGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedByPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'zBvPgtrM' \
    > test.out 2>&1
eval_tap $? 62 'AdminGetPlayerBlockedByPlayersV1' test.out

#- 63 AdminBulkBlockPlayersV1
samples/cli/sample-apps Lobby adminBulkBlockPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId '5zgD8R5l' \
    --body '{"listBlockedUserId": ["UclTqSL0", "hrz0MiwS", "on4wpoZ2"]}' \
    > test.out 2>&1
eval_tap $? 63 'AdminBulkBlockPlayersV1' test.out

#- 64 AdminBulkUnblockPlayersV1
samples/cli/sample-apps Lobby adminBulkUnblockPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'DhhcXrdP' \
    --body '{"listUnblockUserId": ["82Fzt5wD", "ZONikK6F", "SDdnpoIe"]}' \
    > test.out 2>&1
eval_tap $? 64 'AdminBulkUnblockPlayersV1' test.out

#- 65 AdminDebugProfanityFilters
eval_tap 0 65 'AdminDebugProfanityFilters # SKIP deprecated' test.out

#- 66 AdminGetProfanityListFiltersV1
eval_tap 0 66 'AdminGetProfanityListFiltersV1 # SKIP deprecated' test.out

#- 67 AdminAddProfanityFilterIntoList
eval_tap 0 67 'AdminAddProfanityFilterIntoList # SKIP deprecated' test.out

#- 68 AdminAddProfanityFilters
eval_tap 0 68 'AdminAddProfanityFilters # SKIP deprecated' test.out

#- 69 AdminImportProfanityFiltersFromFile
eval_tap 0 69 'AdminImportProfanityFiltersFromFile # SKIP deprecated' test.out

#- 70 AdminDeleteProfanityFilter
eval_tap 0 70 'AdminDeleteProfanityFilter # SKIP deprecated' test.out

#- 71 AdminGetProfanityLists
eval_tap 0 71 'AdminGetProfanityLists # SKIP deprecated' test.out

#- 72 AdminCreateProfanityList
eval_tap 0 72 'AdminCreateProfanityList # SKIP deprecated' test.out

#- 73 AdminUpdateProfanityList
eval_tap 0 73 'AdminUpdateProfanityList # SKIP deprecated' test.out

#- 74 AdminDeleteProfanityList
eval_tap 0 74 'AdminDeleteProfanityList # SKIP deprecated' test.out

#- 75 AdminGetProfanityRule
eval_tap 0 75 'AdminGetProfanityRule # SKIP deprecated' test.out

#- 76 AdminSetProfanityRuleForNamespace
eval_tap 0 76 'AdminSetProfanityRuleForNamespace # SKIP deprecated' test.out

#- 77 AdminVerifyMessageProfanityResponse
eval_tap 0 77 'AdminVerifyMessageProfanityResponse # SKIP deprecated' test.out

#- 78 AdminGetThirdPartyConfig
eval_tap 0 78 'AdminGetThirdPartyConfig # SKIP deprecated' test.out

#- 79 AdminUpdateThirdPartyConfig
eval_tap 0 79 'AdminUpdateThirdPartyConfig # SKIP deprecated' test.out

#- 80 AdminCreateThirdPartyConfig
eval_tap 0 80 'AdminCreateThirdPartyConfig # SKIP deprecated' test.out

#- 81 AdminDeleteThirdPartyConfig
eval_tap 0 81 'AdminDeleteThirdPartyConfig # SKIP deprecated' test.out

#- 82 PublicGetMessages
samples/cli/sample-apps Lobby publicGetMessages \
    > test.out 2>&1
eval_tap $? 82 'PublicGetMessages' test.out

#- 83 PublicGetPartyDataV1
eval_tap 0 83 'PublicGetPartyDataV1 # SKIP deprecated' test.out

#- 84 PublicUpdatePartyAttributesV1
eval_tap 0 84 'PublicUpdatePartyAttributesV1 # SKIP deprecated' test.out

#- 85 PublicSetPartyLimitV1
eval_tap 0 85 'PublicSetPartyLimitV1 # SKIP deprecated' test.out

#- 86 PublicPlayerBlockPlayersV1
samples/cli/sample-apps Lobby publicPlayerBlockPlayersV1 \
    --namespace $AB_NAMESPACE \
    --body '{"blockedUserId": "6OTN18kY"}' \
    > test.out 2>&1
eval_tap $? 86 'PublicPlayerBlockPlayersV1' test.out

#- 87 PublicGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby publicGetPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 87 'PublicGetPlayerBlockedPlayersV1' test.out

#- 88 PublicGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby publicGetPlayerBlockedByPlayersV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 88 'PublicGetPlayerBlockedByPlayersV1' test.out

#- 89 PublicUnblockPlayerV1
samples/cli/sample-apps Lobby publicUnblockPlayerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "yeWyvWke"}' \
    > test.out 2>&1
eval_tap $? 89 'PublicUnblockPlayerV1' test.out

#- 90 UsersPresenceHandlerV1
samples/cli/sample-apps Lobby usersPresenceHandlerV1 \
    --namespace $AB_NAMESPACE \
    --countOnly 'true' \
    --userIds 'zJBSJPVj' \
    > test.out 2>&1
eval_tap $? 90 'UsersPresenceHandlerV1' test.out

#- 91 UsersPresenceHandlerV2
samples/cli/sample-apps Lobby usersPresenceHandlerV2 \
    --namespace $AB_NAMESPACE \
    --countOnly 'false' \
    --body '{"userIDs": ["qOi42FtC", "5IOqM1MX", "OYPc7t8k"]}' \
    > test.out 2>&1
eval_tap $? 91 'UsersPresenceHandlerV2' test.out

#- 92 FreeFormNotification
samples/cli/sample-apps Lobby freeFormNotification \
    --namespace $AB_NAMESPACE \
    --body '{"message": "0xW2sLF7", "topic": "5m9MDkCG"}' \
    > test.out 2>&1
eval_tap $? 92 'FreeFormNotification' test.out

#- 93 GetMyNotifications
samples/cli/sample-apps Lobby getMyNotifications \
    --namespace $AB_NAMESPACE \
    --endTime '58' \
    --limit '75' \
    --offset '58' \
    --startTime '74' \
    > test.out 2>&1
eval_tap $? 93 'GetMyNotifications' test.out

#- 94 GetMyOfflineNotifications
samples/cli/sample-apps Lobby getMyOfflineNotifications \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 94 'GetMyOfflineNotifications' test.out

#- 95 NotificationWithTemplate
samples/cli/sample-apps Lobby notificationWithTemplate \
    --namespace $AB_NAMESPACE \
    --body '{"templateContext": {"y5E1FLNQ": "wB7WQQ5z", "AzamChea": "kprLn0c6", "rC0Vyk1O": "SbVDgFtd"}, "templateLanguage": "cR05hnnq", "templateSlug": "AzJcbiL5", "topic": "mXFoOnbE"}' \
    > test.out 2>&1
eval_tap $? 95 'NotificationWithTemplate' test.out

#- 96 GetGameTemplate
samples/cli/sample-apps Lobby getGameTemplate \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 96 'GetGameTemplate' test.out

#- 97 CreateTemplate
samples/cli/sample-apps Lobby createTemplate \
    --namespace $AB_NAMESPACE \
    --body '{"templateContent": "dxHpjHHP", "templateLanguage": "bYwfH0Rx", "templateSlug": "3uxKDLlr"}' \
    > test.out 2>&1
eval_tap $? 97 'CreateTemplate' test.out

#- 98 GetSlugTemplate
samples/cli/sample-apps Lobby getSlugTemplate \
    --namespace $AB_NAMESPACE \
    --templateSlug 'UxH4Vodm' \
    --after 'dDxZ6U8v' \
    --before 'CdYoIhXv' \
    --limit '3' \
    > test.out 2>&1
eval_tap $? 98 'GetSlugTemplate' test.out

#- 99 DeleteTemplateSlug
samples/cli/sample-apps Lobby deleteTemplateSlug \
    --namespace $AB_NAMESPACE \
    --templateSlug 'yfeeK9fG' \
    > test.out 2>&1
eval_tap $? 99 'DeleteTemplateSlug' test.out

#- 100 GetLocalizationTemplate
samples/cli/sample-apps Lobby getLocalizationTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'f83vUiDv' \
    --templateSlug 'Wut9cHuA' \
    > test.out 2>&1
eval_tap $? 100 'GetLocalizationTemplate' test.out

#- 101 UpdateLocalizationTemplate
samples/cli/sample-apps Lobby updateLocalizationTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'j3mqF5gz' \
    --templateSlug 'UDb7tYfr' \
    --body '{"templateContent": "a2wCTHGN"}' \
    > test.out 2>&1
eval_tap $? 101 'UpdateLocalizationTemplate' test.out

#- 102 DeleteTemplateLocalization
samples/cli/sample-apps Lobby deleteTemplateLocalization \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'w40E4xXg' \
    --templateSlug '3fc9O9Lk' \
    > test.out 2>&1
eval_tap $? 102 'DeleteTemplateLocalization' test.out

#- 103 PublishTemplate
samples/cli/sample-apps Lobby publishTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'RdI9v1PI' \
    --templateSlug 'DRK3Ft1a' \
    > test.out 2>&1
eval_tap $? 103 'PublishTemplate' test.out

#- 104 GetTopicByNamespace
samples/cli/sample-apps Lobby getTopicByNamespace \
    --namespace $AB_NAMESPACE \
    --after '37rFYs1F' \
    --before 'x3WfsxLl' \
    --limit '41' \
    > test.out 2>&1
eval_tap $? 104 'GetTopicByNamespace' test.out

#- 105 CreateTopic
samples/cli/sample-apps Lobby createTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "3ngW5HIK", "topic": "CevnSt3Z"}' \
    > test.out 2>&1
eval_tap $? 105 'CreateTopic' test.out

#- 106 GetTopicByTopicName
samples/cli/sample-apps Lobby getTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'ufwxskk7' \
    > test.out 2>&1
eval_tap $? 106 'GetTopicByTopicName' test.out

#- 107 UpdateTopicByTopicName
samples/cli/sample-apps Lobby updateTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'cRCYf02E' \
    --body '{"description": "o7O8ai2S"}' \
    > test.out 2>&1
eval_tap $? 107 'UpdateTopicByTopicName' test.out

#- 108 DeleteTopicByTopicName
samples/cli/sample-apps Lobby deleteTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic '3rStalir' \
    > test.out 2>&1
eval_tap $? 108 'DeleteTopicByTopicName' test.out

#- 109 FreeFormNotificationByUserID
samples/cli/sample-apps Lobby freeFormNotificationByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'iipJU7lm' \
    --body '{"message": "f8fyg0jU", "topic": "89tWuhAs"}' \
    > test.out 2>&1
eval_tap $? 109 'FreeFormNotificationByUserID' test.out

#- 110 NotificationWithTemplateByUserID
samples/cli/sample-apps Lobby notificationWithTemplateByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'x1RquHpk' \
    --body '{"templateContext": {"RczUXoFA": "XiZqv2Tc", "40fLgctF": "saWiqkux", "X2MDYxKV": "m4qi63vw"}, "templateLanguage": "RbNeA1dI", "templateSlug": "NlNnqnDw", "topic": "56UEXIN4"}' \
    > test.out 2>&1
eval_tap $? 110 'NotificationWithTemplateByUserID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE