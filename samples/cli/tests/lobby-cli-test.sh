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
echo "1..105"

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
    --limit '18' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 2 'GetUserFriendsUpdated' test.out

#- 3 GetUserIncomingFriends
samples/cli/sample-apps Lobby getUserIncomingFriends \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 3 'GetUserIncomingFriends' test.out

#- 4 GetUserIncomingFriendsWithTime
samples/cli/sample-apps Lobby getUserIncomingFriendsWithTime \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 4 'GetUserIncomingFriendsWithTime' test.out

#- 5 GetUserOutgoingFriends
samples/cli/sample-apps Lobby getUserOutgoingFriends \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 5 'GetUserOutgoingFriends' test.out

#- 6 GetUserOutgoingFriendsWithTime
samples/cli/sample-apps Lobby getUserOutgoingFriendsWithTime \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 6 'GetUserOutgoingFriendsWithTime' test.out

#- 7 GetUserFriendsWithPlatform
samples/cli/sample-apps Lobby getUserFriendsWithPlatform \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 7 'GetUserFriendsWithPlatform' test.out

#- 8 UserRequestFriend
samples/cli/sample-apps Lobby userRequestFriend \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "q1jSB7uC", "friendPublicId": "g5KKiyeb"}' \
    > test.out 2>&1
eval_tap $? 8 'UserRequestFriend' test.out

#- 9 UserAcceptFriendRequest
samples/cli/sample-apps Lobby userAcceptFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "ko0Vc095"}' \
    > test.out 2>&1
eval_tap $? 9 'UserAcceptFriendRequest' test.out

#- 10 UserCancelFriendRequest
samples/cli/sample-apps Lobby userCancelFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "jd3IkbEg"}' \
    > test.out 2>&1
eval_tap $? 10 'UserCancelFriendRequest' test.out

#- 11 UserRejectFriendRequest
samples/cli/sample-apps Lobby userRejectFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "wRJO9Yu8"}' \
    > test.out 2>&1
eval_tap $? 11 'UserRejectFriendRequest' test.out

#- 12 UserGetFriendshipStatus
samples/cli/sample-apps Lobby userGetFriendshipStatus \
    --friendId 'QdWZf75k' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'UserGetFriendshipStatus' test.out

#- 13 UserUnfriendRequest
samples/cli/sample-apps Lobby userUnfriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "FCWn3jBs"}' \
    > test.out 2>&1
eval_tap $? 13 'UserUnfriendRequest' test.out

#- 14 AddFriendsWithoutConfirmation
samples/cli/sample-apps Lobby addFriendsWithoutConfirmation \
    --namespace $AB_NAMESPACE \
    --userId 'JT4TpMLD' \
    --body '{"friendIds": ["V4P5vV2E", "yDJLYHxo", "JnfySbS7"]}' \
    > test.out 2>&1
eval_tap $? 14 'AddFriendsWithoutConfirmation' test.out

#- 15 BulkDeleteFriends
samples/cli/sample-apps Lobby bulkDeleteFriends \
    --namespace $AB_NAMESPACE \
    --userId 'wibcUtlx' \
    --body '{"friendIds": ["2YMfv8mH", "YegIGTDu", "7NWbtVqF"]}' \
    > test.out 2>&1
eval_tap $? 15 'BulkDeleteFriends' test.out

#- 16 SyncNativeFriends
samples/cli/sample-apps Lobby syncNativeFriends \
    --namespace $AB_NAMESPACE \
    --body '[{"isLogin": true, "platformId": "lK4T1Smb", "platformToken": "qBnfptDB", "psnEnv": "f3OLQfth"}, {"isLogin": false, "platformId": "ZJiMHqTp", "platformToken": "PRQb6zbp", "psnEnv": "invWcrNK"}, {"isLogin": false, "platformId": "v6nW0gkL", "platformToken": "zw4AySpV", "psnEnv": "hqRrw4yb"}]' \
    > test.out 2>&1
eval_tap $? 16 'SyncNativeFriends' test.out

#- 17 SyncNativeBlockedUser
samples/cli/sample-apps Lobby syncNativeBlockedUser \
    --namespace $AB_NAMESPACE \
    --body '[{"platformId": "EuvTzVfh", "psnEnv": "yuhWlgir"}, {"platformId": "OUI7Rvnc", "psnEnv": "fg2culOm"}, {"platformId": "UmUeQwBi", "psnEnv": "haaoGYUA"}]' \
    > test.out 2>&1
eval_tap $? 17 'SyncNativeBlockedUser' test.out

#- 18 AdminGetAllConfigV1
samples/cli/sample-apps Lobby adminGetAllConfigV1 \
    > test.out 2>&1
eval_tap $? 18 'AdminGetAllConfigV1' test.out

#- 19 AdminGetConfigV1
samples/cli/sample-apps Lobby adminGetConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'AdminGetConfigV1' test.out

#- 20 AdminUpdateConfigV1
samples/cli/sample-apps Lobby adminUpdateConfigV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowInviteNonConnectedUser": false, "allowJoinPartyDuringMatchmaking": true, "autoKickOnDisconnect": false, "autoKickOnDisconnectDelay": 81, "cancelTicketOnDisconnect": true, "chatRateLimitBurst": 33, "chatRateLimitDuration": 50, "concurrentUsersLimit": 44, "disableInvitationOnJoinParty": false, "enableChat": false, "entitlementCheck": true, "entitlementItemID": "QCKgb4nU", "generalRateLimitBurst": 78, "generalRateLimitDuration": 33, "keepPresenceActivityOnDisconnect": false, "maxDSWaitTime": 6, "maxFriendsLimit": 21, "maxPartyMember": 8, "profanityFilter": false, "readyConsentTimeout": 45, "unregisterDelay": 34}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateConfigV1' test.out

#- 21 AdminExportConfigV1
samples/cli/sample-apps Lobby adminExportConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminExportConfigV1' test.out

#- 22 AdminImportConfigV1
samples/cli/sample-apps Lobby adminImportConfigV1 \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 22 'AdminImportConfigV1' test.out

#- 23 GetListOfFriends
samples/cli/sample-apps Lobby getListOfFriends \
    --namespace $AB_NAMESPACE \
    --userId 'ltIfidLH' \
    --friendId 'Oxax1oLf' \
    --friendIds '["DKICZtc2", "TF80Mf2z", "GhEMfWJU"]' \
    --limit '76' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 23 'GetListOfFriends' test.out

#- 24 GetIncomingFriendRequests
samples/cli/sample-apps Lobby getIncomingFriendRequests \
    --namespace $AB_NAMESPACE \
    --userId 'fUnhy9Vh' \
    --friendId 'g7FF4m0f' \
    --limit '7' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 24 'GetIncomingFriendRequests' test.out

#- 25 AdminListFriendsOfFriends
samples/cli/sample-apps Lobby adminListFriendsOfFriends \
    --namespace $AB_NAMESPACE \
    --userId 'ERam16gT' \
    --friendId 'QzqmAk5c' \
    --limit '47' \
    --nopaging 'true' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 25 'AdminListFriendsOfFriends' test.out

#- 26 GetOutgoingFriendRequests
samples/cli/sample-apps Lobby getOutgoingFriendRequests \
    --namespace $AB_NAMESPACE \
    --userId 'jhU5InfU' \
    --limit '6' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 26 'GetOutgoingFriendRequests' test.out

#- 27 AdminGetGlobalConfig
samples/cli/sample-apps Lobby adminGetGlobalConfig \
    > test.out 2>&1
eval_tap $? 27 'AdminGetGlobalConfig' test.out

#- 28 AdminUpdateGlobalConfig
samples/cli/sample-apps Lobby adminUpdateGlobalConfig \
    --body '{"regionRetryMapping": {"8upHkxiH": ["HBxJAjul", "EOfXE6ro", "FzWoODnj"], "3VEuQk2d": ["AJOwWkah", "GYHRMeVS", "cO8niDde"], "HeoQLasm": ["v06Gnen5", "u1xtvnUO", "epOjSILO"]}, "regionURLMapping": ["o6yHP4fu", "zlS9StPf", "k32v8Mf3"], "testGameMode": "0JjAQzEy", "testRegionURLMapping": ["f7Bi7fct", "IFOJJgey", "xJz8GYFe"], "testTargetUserIDs": ["9Ck3rnpK", "JgVYYSgf", "5xQNrMMg"]}' \
    > test.out 2>&1
eval_tap $? 28 'AdminUpdateGlobalConfig' test.out

#- 29 AdminDeleteGlobalConfig
samples/cli/sample-apps Lobby adminDeleteGlobalConfig \
    > test.out 2>&1
eval_tap $? 29 'AdminDeleteGlobalConfig' test.out

#- 30 SendMultipleUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendMultipleUsersFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"message": "yYcIc3Y6", "topicName": "UVFIACPL", "userIds": ["MRnFUUzC", "h97gslPC", "VGcMI75v"]}' \
    > test.out 2>&1
eval_tap $? 30 'SendMultipleUsersFreeformNotificationV1Admin' test.out

#- 31 SendUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"message": "dlCg1N67", "topicName": "Lm0iOYN5"}' \
    > test.out 2>&1
eval_tap $? 31 'SendUsersFreeformNotificationV1Admin' test.out

#- 32 SendPartyFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --partyId 'xq7fiKzZ' \
    --body '{"message": "ofHsQ1mQ", "topicName": "dgppzSEi"}' \
    > test.out 2>&1
eval_tap $? 32 'SendPartyFreeformNotificationV1Admin' test.out

#- 33 SendPartyTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --partyId 'LaB6w3rd' \
    --body '{"templateContext": {"ZLmZu0QR": "MbdfxwAN", "xQVlQw3i": "E0ThrPsk", "cN1LlY2C": "lXU6IkAU"}, "templateLanguage": "r25HjDIp", "templateSlug": "EWCCiR0X", "topicName": "6rlaPeHz"}' \
    > test.out 2>&1
eval_tap $? 33 'SendPartyTemplatedNotificationV1Admin' test.out

#- 34 GetAllNotificationTemplatesV1Admin
samples/cli/sample-apps Lobby getAllNotificationTemplatesV1Admin \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'GetAllNotificationTemplatesV1Admin' test.out

#- 35 CreateNotificationTemplateV1Admin
samples/cli/sample-apps Lobby createNotificationTemplateV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"templateContent": "XCE0SGlU", "templateLanguage": "D9T7RISu", "templateSlug": "l1h3p983"}' \
    > test.out 2>&1
eval_tap $? 35 'CreateNotificationTemplateV1Admin' test.out

#- 36 SendUsersTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"templateContext": {"C1QJdw0q": "ocpgh3PT", "cyhPGfY6": "cR8hIGPq", "h8Z5abJ5": "7wi4gAsn"}, "templateLanguage": "TdbfA7gB", "templateSlug": "FWKMrulw", "topicName": "K4mkiTaA"}' \
    > test.out 2>&1
eval_tap $? 36 'SendUsersTemplatedNotificationV1Admin' test.out

#- 37 GetTemplateSlugLocalizationsTemplateV1Admin
samples/cli/sample-apps Lobby getTemplateSlugLocalizationsTemplateV1Admin \
    --namespace $AB_NAMESPACE \
    --templateSlug 'dHAcRApN' \
    --after 'p6qsqLWc' \
    --before 'IjNXxlcv' \
    --limit '51' \
    > test.out 2>&1
eval_tap $? 37 'GetTemplateSlugLocalizationsTemplateV1Admin' test.out

#- 38 DeleteNotificationTemplateSlugV1Admin
samples/cli/sample-apps Lobby deleteNotificationTemplateSlugV1Admin \
    --namespace $AB_NAMESPACE \
    --templateSlug 'aB69EVU0' \
    > test.out 2>&1
eval_tap $? 38 'DeleteNotificationTemplateSlugV1Admin' test.out

#- 39 GetSingleTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby getSingleTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'nrq4G1PC' \
    --templateSlug 'cf74x1vi' \
    > test.out 2>&1
eval_tap $? 39 'GetSingleTemplateLocalizationV1Admin' test.out

#- 40 UpdateTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby updateTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'nXwZdGug' \
    --templateSlug '8wt8uMmp' \
    --body '{"templateContent": "uYn9Me8W"}' \
    > test.out 2>&1
eval_tap $? 40 'UpdateTemplateLocalizationV1Admin' test.out

#- 41 DeleteTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby deleteTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'eY1NiSRI' \
    --templateSlug 'c2lrUrtC' \
    > test.out 2>&1
eval_tap $? 41 'DeleteTemplateLocalizationV1Admin' test.out

#- 42 PublishTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby publishTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'r1VtfB8o' \
    --templateSlug 'gP9xxjZa' \
    > test.out 2>&1
eval_tap $? 42 'PublishTemplateLocalizationV1Admin' test.out

#- 43 GetAllNotificationTopicsV1Admin
samples/cli/sample-apps Lobby getAllNotificationTopicsV1Admin \
    --namespace $AB_NAMESPACE \
    --after 'HzmDse2E' \
    --before 'rOdtkZga' \
    --limit '75' \
    > test.out 2>&1
eval_tap $? 43 'GetAllNotificationTopicsV1Admin' test.out

#- 44 CreateNotificationTopicV1Admin
samples/cli/sample-apps Lobby createNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"description": "lt6Vf90z", "topicName": "4tJgfBZO"}' \
    > test.out 2>&1
eval_tap $? 44 'CreateNotificationTopicV1Admin' test.out

#- 45 GetNotificationTopicV1Admin
samples/cli/sample-apps Lobby getNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'VIQssm7l' \
    > test.out 2>&1
eval_tap $? 45 'GetNotificationTopicV1Admin' test.out

#- 46 UpdateNotificationTopicV1Admin
samples/cli/sample-apps Lobby updateNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'I3HCKvWl' \
    --body '{"description": "0C7NdvJZ"}' \
    > test.out 2>&1
eval_tap $? 46 'UpdateNotificationTopicV1Admin' test.out

#- 47 DeleteNotificationTopicV1Admin
samples/cli/sample-apps Lobby deleteNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'pUMcztXk' \
    > test.out 2>&1
eval_tap $? 47 'DeleteNotificationTopicV1Admin' test.out

#- 48 SendSpecificUserFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --userId 'dbq44VJh' \
    --body '{"message": "BHkVRxjD", "topicName": "leVHWZ2D"}' \
    > test.out 2>&1
eval_tap $? 48 'SendSpecificUserFreeformNotificationV1Admin' test.out

#- 49 SendSpecificUserTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --userId 'Tunb0oIq' \
    --body '{"templateContext": {"HWLUnJmB": "E5WWY31z", "y91IZysM": "HWiFV4p1", "XB23EV7x": "P0EpLw3M"}, "templateLanguage": "pONrCV9N", "templateSlug": "lOlr4oQm", "topicName": "wck8bisB"}' \
    > test.out 2>&1
eval_tap $? 49 'SendSpecificUserTemplatedNotificationV1Admin' test.out

#- 50 AdminGetPartyDataV1
samples/cli/sample-apps Lobby adminGetPartyDataV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'KIxpm5Wx' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetPartyDataV1' test.out

#- 51 AdminUpdatePartyAttributesV1
samples/cli/sample-apps Lobby adminUpdatePartyAttributesV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'p3MMmt9D' \
    --body '{"custom_attribute": {"ficdm9E8": {}, "HymFJobm": {}, "QNvQYsFL": {}}, "updatedAt": 13}' \
    > test.out 2>&1
eval_tap $? 51 'AdminUpdatePartyAttributesV1' test.out

#- 52 AdminJoinPartyV1
samples/cli/sample-apps Lobby adminJoinPartyV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'zCKY31Wq' \
    --userId 'ORjTWF96' \
    > test.out 2>&1
eval_tap $? 52 'AdminJoinPartyV1' test.out

#- 53 AdminGetUserPartyV1
samples/cli/sample-apps Lobby adminGetUserPartyV1 \
    --namespace $AB_NAMESPACE \
    --userId 'B98rdMVo' \
    > test.out 2>&1
eval_tap $? 53 'AdminGetUserPartyV1' test.out

#- 54 AdminGetLobbyCCU
samples/cli/sample-apps Lobby adminGetLobbyCCU \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'AdminGetLobbyCCU' test.out

#- 55 AdminGetBulkPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby adminGetBulkPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    --body '{"listBlockedUserId": ["WpEcUYcn", "x974E5Wr", "nWiryDq6"]}' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetBulkPlayerBlockedPlayersV1' test.out

#- 56 AdminGetAllPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetAllPlayerSessionAttribute \
    --namespace $AB_NAMESPACE \
    --userId 'E8xHTPWA' \
    > test.out 2>&1
eval_tap $? 56 'AdminGetAllPlayerSessionAttribute' test.out

#- 57 AdminSetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminSetPlayerSessionAttribute \
    --namespace $AB_NAMESPACE \
    --userId 'gbCpxu6v' \
    --body '{"attributes": {"bCgMm2an": "8vghBdUx", "DCIKA3Jq": "jb2LL1m2", "v2j7rUHR": "s4ZcpHOD"}}' \
    > test.out 2>&1
eval_tap $? 57 'AdminSetPlayerSessionAttribute' test.out

#- 58 AdminGetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetPlayerSessionAttribute \
    --attribute 'LwG7a618' \
    --namespace $AB_NAMESPACE \
    --userId 'O4CJ5Xc9' \
    > test.out 2>&1
eval_tap $? 58 'AdminGetPlayerSessionAttribute' test.out

#- 59 AdminGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'q0AP8pHo' \
    > test.out 2>&1
eval_tap $? 59 'AdminGetPlayerBlockedPlayersV1' test.out

#- 60 AdminGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedByPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'VnGXFfOp' \
    > test.out 2>&1
eval_tap $? 60 'AdminGetPlayerBlockedByPlayersV1' test.out

#- 61 AdminBulkBlockPlayersV1
samples/cli/sample-apps Lobby adminBulkBlockPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'gXAjWhUx' \
    --body '{"listBlockedUserId": ["7w9KSiNC", "QuPuPkLt", "YMYbzqpQ"]}' \
    > test.out 2>&1
eval_tap $? 61 'AdminBulkBlockPlayersV1' test.out

#- 62 AdminDebugProfanityFilters
samples/cli/sample-apps Lobby adminDebugProfanityFilters \
    --namespace $AB_NAMESPACE \
    --body '{"text": "8PdYa75i"}' \
    > test.out 2>&1
eval_tap $? 62 'AdminDebugProfanityFilters' test.out

#- 63 AdminGetProfanityListFiltersV1
samples/cli/sample-apps Lobby adminGetProfanityListFiltersV1 \
    --list 'E8B7y9tm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 63 'AdminGetProfanityListFiltersV1' test.out

#- 64 AdminAddProfanityFilterIntoList
samples/cli/sample-apps Lobby adminAddProfanityFilterIntoList \
    --list 'CiyZGk2Z' \
    --namespace $AB_NAMESPACE \
    --body '{"filter": "ZJ24OlCb", "note": "ll4WctGv"}' \
    > test.out 2>&1
eval_tap $? 64 'AdminAddProfanityFilterIntoList' test.out

#- 65 AdminAddProfanityFilters
samples/cli/sample-apps Lobby adminAddProfanityFilters \
    --list 'yRiNSjHP' \
    --namespace $AB_NAMESPACE \
    --body '{"filters": [{"filter": "dLqofcYF", "note": "a9XY5a5l"}, {"filter": "AhuvF01t", "note": "dLhydOqR"}, {"filter": "AVSrkE0u", "note": "TDPEpmMc"}]}' \
    > test.out 2>&1
eval_tap $? 65 'AdminAddProfanityFilters' test.out

#- 66 AdminImportProfanityFiltersFromFile
samples/cli/sample-apps Lobby adminImportProfanityFiltersFromFile \
    --list '20GGlihD' \
    --namespace $AB_NAMESPACE \
    --body '[39, 22, 19]' \
    > test.out 2>&1
eval_tap $? 66 'AdminImportProfanityFiltersFromFile' test.out

#- 67 AdminDeleteProfanityFilter
samples/cli/sample-apps Lobby adminDeleteProfanityFilter \
    --list '2Wvqe2ba' \
    --namespace $AB_NAMESPACE \
    --body '{"filter": "ScI0eczz"}' \
    > test.out 2>&1
eval_tap $? 67 'AdminDeleteProfanityFilter' test.out

#- 68 AdminGetProfanityLists
samples/cli/sample-apps Lobby adminGetProfanityLists \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 68 'AdminGetProfanityLists' test.out

#- 69 AdminCreateProfanityList
samples/cli/sample-apps Lobby adminCreateProfanityList \
    --namespace $AB_NAMESPACE \
    --body '{"isEnabled": true, "isMandatory": true, "name": "IvGrdMEn"}' \
    > test.out 2>&1
eval_tap $? 69 'AdminCreateProfanityList' test.out

#- 70 AdminUpdateProfanityList
samples/cli/sample-apps Lobby adminUpdateProfanityList \
    --list 'N2D4VqRW' \
    --namespace $AB_NAMESPACE \
    --body '{"isEnabled": false, "isMandatory": false, "newName": "yMqtz64b"}' \
    > test.out 2>&1
eval_tap $? 70 'AdminUpdateProfanityList' test.out

#- 71 AdminDeleteProfanityList
samples/cli/sample-apps Lobby adminDeleteProfanityList \
    --list 'gd2fFKFD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'AdminDeleteProfanityList' test.out

#- 72 AdminGetProfanityRule
samples/cli/sample-apps Lobby adminGetProfanityRule \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 72 'AdminGetProfanityRule' test.out

#- 73 AdminSetProfanityRuleForNamespace
samples/cli/sample-apps Lobby adminSetProfanityRuleForNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"rule": "TtxTk1zg"}' \
    > test.out 2>&1
eval_tap $? 73 'AdminSetProfanityRuleForNamespace' test.out

#- 74 AdminVerifyMessageProfanityResponse
samples/cli/sample-apps Lobby adminVerifyMessageProfanityResponse \
    --namespace $AB_NAMESPACE \
    --body '{"message": "l4xqPNva", "profanityLevel": "hxB6NVum"}' \
    > test.out 2>&1
eval_tap $? 74 'AdminVerifyMessageProfanityResponse' test.out

#- 75 AdminGetThirdPartyConfig
samples/cli/sample-apps Lobby adminGetThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 75 'AdminGetThirdPartyConfig' test.out

#- 76 AdminUpdateThirdPartyConfig
samples/cli/sample-apps Lobby adminUpdateThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    --body '{"apiKey": "uXW8A88G"}' \
    > test.out 2>&1
eval_tap $? 76 'AdminUpdateThirdPartyConfig' test.out

#- 77 AdminCreateThirdPartyConfig
samples/cli/sample-apps Lobby adminCreateThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    --body '{"apiKey": "LTQYPp1N"}' \
    > test.out 2>&1
eval_tap $? 77 'AdminCreateThirdPartyConfig' test.out

#- 78 AdminDeleteThirdPartyConfig
samples/cli/sample-apps Lobby adminDeleteThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 78 'AdminDeleteThirdPartyConfig' test.out

#- 79 PublicGetMessages
samples/cli/sample-apps Lobby publicGetMessages \
    > test.out 2>&1
eval_tap $? 79 'PublicGetMessages' test.out

#- 80 PublicGetPartyDataV1
samples/cli/sample-apps Lobby publicGetPartyDataV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'YG20pAVE' \
    > test.out 2>&1
eval_tap $? 80 'PublicGetPartyDataV1' test.out

#- 81 PublicUpdatePartyAttributesV1
samples/cli/sample-apps Lobby publicUpdatePartyAttributesV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'aLUb5lMA' \
    --body '{"custom_attribute": {"9YjjFLdl": {}, "4pjd1ENH": {}, "YxBinsmc": {}}, "updatedAt": 36}' \
    > test.out 2>&1
eval_tap $? 81 'PublicUpdatePartyAttributesV1' test.out

#- 82 PublicSetPartyLimitV1
samples/cli/sample-apps Lobby publicSetPartyLimitV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'z2qXIDOu' \
    --body '{"limit": 25}' \
    > test.out 2>&1
eval_tap $? 82 'PublicSetPartyLimitV1' test.out

#- 83 PublicPlayerBlockPlayersV1
samples/cli/sample-apps Lobby publicPlayerBlockPlayersV1 \
    --namespace $AB_NAMESPACE \
    --body '{"blockedUserId": "sWOtQ8zq"}' \
    > test.out 2>&1
eval_tap $? 83 'PublicPlayerBlockPlayersV1' test.out

#- 84 PublicGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby publicGetPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 84 'PublicGetPlayerBlockedPlayersV1' test.out

#- 85 PublicGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby publicGetPlayerBlockedByPlayersV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 85 'PublicGetPlayerBlockedByPlayersV1' test.out

#- 86 PublicUnblockPlayerV1
samples/cli/sample-apps Lobby publicUnblockPlayerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"userId": "fHjeu24F"}' \
    > test.out 2>&1
eval_tap $? 86 'PublicUnblockPlayerV1' test.out

#- 87 UsersPresenceHandlerV1
samples/cli/sample-apps Lobby usersPresenceHandlerV1 \
    --namespace $AB_NAMESPACE \
    --countOnly 'true' \
    --userIds 'sQParrBi' \
    > test.out 2>&1
eval_tap $? 87 'UsersPresenceHandlerV1' test.out

#- 88 FreeFormNotification
samples/cli/sample-apps Lobby freeFormNotification \
    --namespace $AB_NAMESPACE \
    --body '{"message": "pjA78RG3", "topic": "XhhRLb40"}' \
    > test.out 2>&1
eval_tap $? 88 'FreeFormNotification' test.out

#- 89 GetMyNotifications
samples/cli/sample-apps Lobby getMyNotifications \
    --namespace $AB_NAMESPACE \
    --endTime '18' \
    --limit '23' \
    --offset '28' \
    --startTime '22' \
    > test.out 2>&1
eval_tap $? 89 'GetMyNotifications' test.out

#- 90 NotificationWithTemplate
samples/cli/sample-apps Lobby notificationWithTemplate \
    --namespace $AB_NAMESPACE \
    --body '{"templateContext": {"x2EyOtpF": "5DnXTyNT", "ZQMklsqK": "4mbHinve", "jlgMUI36": "uY0GngUM"}, "templateLanguage": "lNPPODVj", "templateSlug": "TWUPI460", "topic": "p3IvQ7OE"}' \
    > test.out 2>&1
eval_tap $? 90 'NotificationWithTemplate' test.out

#- 91 GetGameTemplate
samples/cli/sample-apps Lobby getGameTemplate \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 91 'GetGameTemplate' test.out

#- 92 CreateTemplate
samples/cli/sample-apps Lobby createTemplate \
    --namespace $AB_NAMESPACE \
    --body '{"templateContent": "Q2MftnYA", "templateLanguage": "oyhUiVt6", "templateSlug": "E0Cektmo"}' \
    > test.out 2>&1
eval_tap $? 92 'CreateTemplate' test.out

#- 93 GetSlugTemplate
samples/cli/sample-apps Lobby getSlugTemplate \
    --namespace $AB_NAMESPACE \
    --templateSlug 'YA3q9yT3' \
    --after 'K0PHNcT7' \
    --before 'aklJ0muo' \
    --limit '82' \
    > test.out 2>&1
eval_tap $? 93 'GetSlugTemplate' test.out

#- 94 DeleteTemplateSlug
samples/cli/sample-apps Lobby deleteTemplateSlug \
    --namespace $AB_NAMESPACE \
    --templateSlug '4YCvcVI5' \
    > test.out 2>&1
eval_tap $? 94 'DeleteTemplateSlug' test.out

#- 95 GetLocalizationTemplate
samples/cli/sample-apps Lobby getLocalizationTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage '3rcRN6Z4' \
    --templateSlug 'm38CKyMg' \
    > test.out 2>&1
eval_tap $? 95 'GetLocalizationTemplate' test.out

#- 96 UpdateLocalizationTemplate
samples/cli/sample-apps Lobby updateLocalizationTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'k6FVKCOj' \
    --templateSlug 'Uaa186kp' \
    --body '{"templateContent": "3Lj1bPMq"}' \
    > test.out 2>&1
eval_tap $? 96 'UpdateLocalizationTemplate' test.out

#- 97 DeleteTemplateLocalization
samples/cli/sample-apps Lobby deleteTemplateLocalization \
    --namespace $AB_NAMESPACE \
    --templateLanguage '2ydE9mHT' \
    --templateSlug 'QV6x3r1g' \
    > test.out 2>&1
eval_tap $? 97 'DeleteTemplateLocalization' test.out

#- 98 PublishTemplate
samples/cli/sample-apps Lobby publishTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage '4ukLyxtH' \
    --templateSlug 'OZTrUwJF' \
    > test.out 2>&1
eval_tap $? 98 'PublishTemplate' test.out

#- 99 GetTopicByNamespace
samples/cli/sample-apps Lobby getTopicByNamespace \
    --namespace $AB_NAMESPACE \
    --after 'wNwSXtAM' \
    --before 'd9z6Wjys' \
    --limit '41' \
    > test.out 2>&1
eval_tap $? 99 'GetTopicByNamespace' test.out

#- 100 CreateTopic
samples/cli/sample-apps Lobby createTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "nywt55R3", "topic": "hsdDJfYQ"}' \
    > test.out 2>&1
eval_tap $? 100 'CreateTopic' test.out

#- 101 GetTopicByTopicName
samples/cli/sample-apps Lobby getTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'Uao8lcC3' \
    > test.out 2>&1
eval_tap $? 101 'GetTopicByTopicName' test.out

#- 102 UpdateTopicByTopicName
samples/cli/sample-apps Lobby updateTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'ooSGi5ve' \
    --body '{"description": "HL7gO3Pu"}' \
    > test.out 2>&1
eval_tap $? 102 'UpdateTopicByTopicName' test.out

#- 103 DeleteTopicByTopicName
samples/cli/sample-apps Lobby deleteTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'R8CsVCap' \
    > test.out 2>&1
eval_tap $? 103 'DeleteTopicByTopicName' test.out

#- 104 FreeFormNotificationByUserID
samples/cli/sample-apps Lobby freeFormNotificationByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'xAwaPTuQ' \
    --body '{"message": "DJh6BHEa", "topic": "M3upKMPr"}' \
    > test.out 2>&1
eval_tap $? 104 'FreeFormNotificationByUserID' test.out

#- 105 NotificationWithTemplateByUserID
samples/cli/sample-apps Lobby notificationWithTemplateByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'JBAWj5vq' \
    --body '{"templateContext": {"0djPOpCH": "mIu33xCb", "khZ5ufyr": "kDb1mzcx", "Cm6Ek3M2": "sI1tZWMA"}, "templateLanguage": "Q3Yn2Xm8", "templateSlug": "9RdLcVVC", "topic": "cpKX2WhZ"}' \
    > test.out 2>&1
eval_tap $? 105 'NotificationWithTemplateByUserID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE