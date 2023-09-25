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
    --limit '53' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 2 'GetUserFriendsUpdated' test.out

#- 3 GetUserIncomingFriends
samples/cli/sample-apps Lobby getUserIncomingFriends \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 3 'GetUserIncomingFriends' test.out

#- 4 GetUserIncomingFriendsWithTime
samples/cli/sample-apps Lobby getUserIncomingFriendsWithTime \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 4 'GetUserIncomingFriendsWithTime' test.out

#- 5 GetUserOutgoingFriends
samples/cli/sample-apps Lobby getUserOutgoingFriends \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 5 'GetUserOutgoingFriends' test.out

#- 6 GetUserOutgoingFriendsWithTime
samples/cli/sample-apps Lobby getUserOutgoingFriendsWithTime \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 6 'GetUserOutgoingFriendsWithTime' test.out

#- 7 GetUserFriendsWithPlatform
samples/cli/sample-apps Lobby getUserFriendsWithPlatform \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 7 'GetUserFriendsWithPlatform' test.out

#- 8 UserRequestFriend
samples/cli/sample-apps Lobby userRequestFriend \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "FKaA4ikO", "friendPublicId": "bdJPpu5a"}' \
    > test.out 2>&1
eval_tap $? 8 'UserRequestFriend' test.out

#- 9 UserAcceptFriendRequest
samples/cli/sample-apps Lobby userAcceptFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "kBDasgw4"}' \
    > test.out 2>&1
eval_tap $? 9 'UserAcceptFriendRequest' test.out

#- 10 UserCancelFriendRequest
samples/cli/sample-apps Lobby userCancelFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "FqAVXCjf"}' \
    > test.out 2>&1
eval_tap $? 10 'UserCancelFriendRequest' test.out

#- 11 UserRejectFriendRequest
samples/cli/sample-apps Lobby userRejectFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "2A4l0TzK"}' \
    > test.out 2>&1
eval_tap $? 11 'UserRejectFriendRequest' test.out

#- 12 UserGetFriendshipStatus
samples/cli/sample-apps Lobby userGetFriendshipStatus \
    --friendId 'jfM6J9i3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'UserGetFriendshipStatus' test.out

#- 13 UserUnfriendRequest
samples/cli/sample-apps Lobby userUnfriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "WlEbHjdz"}' \
    > test.out 2>&1
eval_tap $? 13 'UserUnfriendRequest' test.out

#- 14 AddFriendsWithoutConfirmation
samples/cli/sample-apps Lobby addFriendsWithoutConfirmation \
    --namespace $AB_NAMESPACE \
    --userId 'Xuv0rPrW' \
    --body '{"friendIds": ["Nlb9MsxC", "UFEmGLi4", "dKGrjXoB"]}' \
    > test.out 2>&1
eval_tap $? 14 'AddFriendsWithoutConfirmation' test.out

#- 15 BulkDeleteFriends
samples/cli/sample-apps Lobby bulkDeleteFriends \
    --namespace $AB_NAMESPACE \
    --userId 'PeSI6sq1' \
    --body '{"friendIds": ["dyLUDemn", "mpDsHKl7", "1ECtN5dW"]}' \
    > test.out 2>&1
eval_tap $? 15 'BulkDeleteFriends' test.out

#- 16 SyncNativeFriends
samples/cli/sample-apps Lobby syncNativeFriends \
    --namespace $AB_NAMESPACE \
    --body '[{"isLogin": true, "platformId": "Yi4TosY3", "platformToken": "pLk11bNZ", "psnEnv": "n6Yp35Hl"}, {"isLogin": false, "platformId": "Nokcr4kE", "platformToken": "gi4TujLY", "psnEnv": "8NfnqHdo"}, {"isLogin": false, "platformId": "FpzSQNeK", "platformToken": "HpZKOoFS", "psnEnv": "f6dj90pI"}]' \
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
    --body '{"allowInviteNonConnectedUser": true, "allowJoinPartyDuringMatchmaking": true, "autoKickOnDisconnect": true, "autoKickOnDisconnectDelay": 7, "cancelTicketOnDisconnect": false, "chatRateLimitBurst": 56, "chatRateLimitDuration": 20, "concurrentUsersLimit": 81, "disableInvitationOnJoinParty": true, "enableChat": true, "entitlementCheck": false, "entitlementItemID": "hFBuWbwR", "generalRateLimitBurst": 58, "generalRateLimitDuration": 72, "keepPresenceActivityOnDisconnect": true, "maxDSWaitTime": 67, "maxFriendsLimit": 34, "maxPartyMember": 71, "profanityFilter": false, "readyConsentTimeout": 47, "unregisterDelay": 27}' \
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
    --userId 'hL8IgcGy' \
    --friendId 'x3uoGROd' \
    --limit '88' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 22 'GetListOfFriends' test.out

#- 23 GetIncomingFriendRequests
samples/cli/sample-apps Lobby getIncomingFriendRequests \
    --namespace $AB_NAMESPACE \
    --userId 'vxpsxUye' \
    --friendId 'VBgyAYG0' \
    --limit '71' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 23 'GetIncomingFriendRequests' test.out

#- 24 GetOutgoingFriendRequests
samples/cli/sample-apps Lobby getOutgoingFriendRequests \
    --namespace $AB_NAMESPACE \
    --userId 'lcj9DsZ9' \
    --limit '67' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 24 'GetOutgoingFriendRequests' test.out

#- 25 SendMultipleUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendMultipleUsersFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"message": "2CjJazIA", "topicName": "3fLN5gsK", "userIds": ["ZilDRNa3", "yTjVwQlQ", "D4htn9a5"]}' \
    > test.out 2>&1
eval_tap $? 25 'SendMultipleUsersFreeformNotificationV1Admin' test.out

#- 26 SendUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"message": "Iohi2tYV", "topicName": "FSZXEHRW"}' \
    > test.out 2>&1
eval_tap $? 26 'SendUsersFreeformNotificationV1Admin' test.out

#- 27 SendPartyFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --partyId 'IbXJaAkW' \
    --body '{"message": "lpKWcFfi", "topicName": "OJr06D9n"}' \
    > test.out 2>&1
eval_tap $? 27 'SendPartyFreeformNotificationV1Admin' test.out

#- 28 SendPartyTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --partyId 'iSs68hpo' \
    --body '{"templateContext": {"Pvct8K3c": "jkT5EhBx", "nBWHfqG5": "nvZCqrje", "MaT2A6vN": "08PTLXyU"}, "templateLanguage": "xAm6eCaH", "templateSlug": "P4H0Uc5P", "topicName": "oNqTYTZs"}' \
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
    --body '{"templateContent": "0RkgSLe8", "templateLanguage": "CKNqUZUM", "templateSlug": "tmB280wV"}' \
    > test.out 2>&1
eval_tap $? 30 'CreateNotificationTemplateV1Admin' test.out

#- 31 SendUsersTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"templateContext": {"xQH1QjzC": "uYhTskcm", "kRAHcsJJ": "i5xxO0fl", "TI4JPP0T": "JATcLKBB"}, "templateLanguage": "6oLmmWe0", "templateSlug": "Ivgctmpn", "topicName": "7Dk6R9t7"}' \
    > test.out 2>&1
eval_tap $? 31 'SendUsersTemplatedNotificationV1Admin' test.out

#- 32 GetTemplateSlugLocalizationsTemplateV1Admin
samples/cli/sample-apps Lobby getTemplateSlugLocalizationsTemplateV1Admin \
    --namespace $AB_NAMESPACE \
    --templateSlug 'fCnkeRc0' \
    --after 'OEKq0gTb' \
    --before 'it5trGB0' \
    --limit '77' \
    > test.out 2>&1
eval_tap $? 32 'GetTemplateSlugLocalizationsTemplateV1Admin' test.out

#- 33 DeleteNotificationTemplateSlugV1Admin
samples/cli/sample-apps Lobby deleteNotificationTemplateSlugV1Admin \
    --namespace $AB_NAMESPACE \
    --templateSlug 'UI3cjqlw' \
    > test.out 2>&1
eval_tap $? 33 'DeleteNotificationTemplateSlugV1Admin' test.out

#- 34 GetSingleTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby getSingleTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'ZlE4CERi' \
    --templateSlug 'f0FfzJEC' \
    > test.out 2>&1
eval_tap $? 34 'GetSingleTemplateLocalizationV1Admin' test.out

#- 35 UpdateTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby updateTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage '3elmpuuw' \
    --templateSlug 'BiwEvqJu' \
    --body '{"templateContent": "26hyHsPR"}' \
    > test.out 2>&1
eval_tap $? 35 'UpdateTemplateLocalizationV1Admin' test.out

#- 36 DeleteTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby deleteTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'CQc1eduX' \
    --templateSlug 'Tr6eZxg5' \
    > test.out 2>&1
eval_tap $? 36 'DeleteTemplateLocalizationV1Admin' test.out

#- 37 PublishTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby publishTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'TTkfacQC' \
    --templateSlug 'nUshlvtM' \
    > test.out 2>&1
eval_tap $? 37 'PublishTemplateLocalizationV1Admin' test.out

#- 38 GetAllNotificationTopicsV1Admin
samples/cli/sample-apps Lobby getAllNotificationTopicsV1Admin \
    --namespace $AB_NAMESPACE \
    --after 'OgutIF1R' \
    --before 'b6Yjq82k' \
    --limit '80' \
    > test.out 2>&1
eval_tap $? 38 'GetAllNotificationTopicsV1Admin' test.out

#- 39 CreateNotificationTopicV1Admin
samples/cli/sample-apps Lobby createNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"description": "sqIvk9Sz", "topicName": "umfGMOIA"}' \
    > test.out 2>&1
eval_tap $? 39 'CreateNotificationTopicV1Admin' test.out

#- 40 GetNotificationTopicV1Admin
samples/cli/sample-apps Lobby getNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'vmSW7VDA' \
    > test.out 2>&1
eval_tap $? 40 'GetNotificationTopicV1Admin' test.out

#- 41 UpdateNotificationTopicV1Admin
samples/cli/sample-apps Lobby updateNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName '1ZiOEjCY' \
    --body '{"description": "xLKKsEoT"}' \
    > test.out 2>&1
eval_tap $? 41 'UpdateNotificationTopicV1Admin' test.out

#- 42 DeleteNotificationTopicV1Admin
samples/cli/sample-apps Lobby deleteNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'OIPlivLe' \
    > test.out 2>&1
eval_tap $? 42 'DeleteNotificationTopicV1Admin' test.out

#- 43 SendSpecificUserFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --userId 'wFPFWfV2' \
    --body '{"message": "a1YaBC6a", "topicName": "ZJ1fAKsr"}' \
    > test.out 2>&1
eval_tap $? 43 'SendSpecificUserFreeformNotificationV1Admin' test.out

#- 44 SendSpecificUserTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --userId 'zWYYmYEv' \
    --body '{"templateContext": {"4rVZIikY": "Xbm8LOl0", "3h807Zob": "BlQH9HWx", "dJwZKHka": "FxQIGDAL"}, "templateLanguage": "0KIxQSl8", "templateSlug": "7y9KbxuP", "topicName": "xQUMxJYv"}' \
    > test.out 2>&1
eval_tap $? 44 'SendSpecificUserTemplatedNotificationV1Admin' test.out

#- 45 AdminGetPartyDataV1
samples/cli/sample-apps Lobby adminGetPartyDataV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'HzmsI5HE' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetPartyDataV1' test.out

#- 46 AdminUpdatePartyAttributesV1
samples/cli/sample-apps Lobby adminUpdatePartyAttributesV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'yCqQDl0F' \
    --body '{"custom_attribute": {"hAA35iUJ": {}, "kAdRePzV": {}, "2Os3ma4u": {}}, "updatedAt": 98}' \
    > test.out 2>&1
eval_tap $? 46 'AdminUpdatePartyAttributesV1' test.out

#- 47 AdminJoinPartyV1
samples/cli/sample-apps Lobby adminJoinPartyV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'f0BOZXpF' \
    --userId '6UkbWLiu' \
    > test.out 2>&1
eval_tap $? 47 'AdminJoinPartyV1' test.out

#- 48 AdminGetUserPartyV1
samples/cli/sample-apps Lobby adminGetUserPartyV1 \
    --namespace $AB_NAMESPACE \
    --userId 'fGurZv3d' \
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
    --body '{"listBlockedUserId": ["Hz3THAX7", "rw0xtlOR", "SLQ7CatZ"]}' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetBulkPlayerBlockedPlayersV1' test.out

#- 51 AdminGetAllPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetAllPlayerSessionAttribute \
    --namespace $AB_NAMESPACE \
    --userId 'k8tqhA4o' \
    > test.out 2>&1
eval_tap $? 51 'AdminGetAllPlayerSessionAttribute' test.out

#- 52 AdminSetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminSetPlayerSessionAttribute \
    --namespace $AB_NAMESPACE \
    --userId 'mBpsOhFC' \
    --body '{"attributes": {"IrYo3goF": "58HQzbaq", "QkZrpyli": "CAhHBkSV", "vp6d4Yyx": "DesMbSVX"}}' \
    > test.out 2>&1
eval_tap $? 52 'AdminSetPlayerSessionAttribute' test.out

#- 53 AdminGetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetPlayerSessionAttribute \
    --attribute 'Ebx9VKaZ' \
    --namespace $AB_NAMESPACE \
    --userId 'EK7YsbbL' \
    > test.out 2>&1
eval_tap $? 53 'AdminGetPlayerSessionAttribute' test.out

#- 54 AdminGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'U8FTdlb2' \
    > test.out 2>&1
eval_tap $? 54 'AdminGetPlayerBlockedPlayersV1' test.out

#- 55 AdminGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedByPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'i9ASLfK2' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetPlayerBlockedByPlayersV1' test.out

#- 56 AdminBulkBlockPlayersV1
samples/cli/sample-apps Lobby adminBulkBlockPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId '3mEMx2Oj' \
    --body '{"listBlockedUserId": ["EA1yvARC", "sDpiJ87D", "T1xUOQ4F"]}' \
    > test.out 2>&1
eval_tap $? 56 'AdminBulkBlockPlayersV1' test.out

#- 57 AdminDebugProfanityFilters
samples/cli/sample-apps Lobby adminDebugProfanityFilters \
    --namespace $AB_NAMESPACE \
    --body '{"text": "JGSO6XsS"}' \
    > test.out 2>&1
eval_tap $? 57 'AdminDebugProfanityFilters' test.out

#- 58 AdminGetProfanityListFiltersV1
samples/cli/sample-apps Lobby adminGetProfanityListFiltersV1 \
    --list '11DdXKkk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'AdminGetProfanityListFiltersV1' test.out

#- 59 AdminAddProfanityFilterIntoList
samples/cli/sample-apps Lobby adminAddProfanityFilterIntoList \
    --list 'hwiS3xFs' \
    --namespace $AB_NAMESPACE \
    --body '{"filter": "9XX1qCQg", "note": "sWwNUtTh"}' \
    > test.out 2>&1
eval_tap $? 59 'AdminAddProfanityFilterIntoList' test.out

#- 60 AdminAddProfanityFilters
samples/cli/sample-apps Lobby adminAddProfanityFilters \
    --list 'HqOR7c8e' \
    --namespace $AB_NAMESPACE \
    --body '{"filters": [{"filter": "QUQdOd0i", "note": "QUGtybW0"}, {"filter": "ByNQSaEY", "note": "gway6q5U"}, {"filter": "z4hFu95B", "note": "Qv1TIJLe"}]}' \
    > test.out 2>&1
eval_tap $? 60 'AdminAddProfanityFilters' test.out

#- 61 AdminImportProfanityFiltersFromFile
samples/cli/sample-apps Lobby adminImportProfanityFiltersFromFile \
    --list 'YOo4uFQZ' \
    --namespace $AB_NAMESPACE \
    --body '[48, 31, 2]' \
    > test.out 2>&1
eval_tap $? 61 'AdminImportProfanityFiltersFromFile' test.out

#- 62 AdminDeleteProfanityFilter
samples/cli/sample-apps Lobby adminDeleteProfanityFilter \
    --list '5OYwEHH9' \
    --namespace $AB_NAMESPACE \
    --body '{"filter": "KfbP4nBV"}' \
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
    --body '{"isEnabled": false, "isMandatory": true, "name": "5NgdW3ja"}' \
    > test.out 2>&1
eval_tap $? 64 'AdminCreateProfanityList' test.out

#- 65 AdminUpdateProfanityList
samples/cli/sample-apps Lobby adminUpdateProfanityList \
    --list 'jpzIJAwT' \
    --namespace $AB_NAMESPACE \
    --body '{"isEnabled": true, "isMandatory": true, "newName": "KFZa4LJw"}' \
    > test.out 2>&1
eval_tap $? 65 'AdminUpdateProfanityList' test.out

#- 66 AdminDeleteProfanityList
samples/cli/sample-apps Lobby adminDeleteProfanityList \
    --list 'ecHnKdws' \
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
    --body '{"rule": "anuSkLRn"}' \
    > test.out 2>&1
eval_tap $? 68 'AdminSetProfanityRuleForNamespace' test.out

#- 69 AdminVerifyMessageProfanityResponse
samples/cli/sample-apps Lobby adminVerifyMessageProfanityResponse \
    --namespace $AB_NAMESPACE \
    --body '{"message": "hPslKgDS", "profanityLevel": "Wmlwr1i2"}' \
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
    --body '{"apiKey": "TPxpkHfa"}' \
    > test.out 2>&1
eval_tap $? 71 'AdminUpdateThirdPartyConfig' test.out

#- 72 AdminCreateThirdPartyConfig
samples/cli/sample-apps Lobby adminCreateThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    --body '{"apiKey": "NKXL4h1I"}' \
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
    --partyId '4R96XIdq' \
    > test.out 2>&1
eval_tap $? 75 'PublicGetPartyDataV1' test.out

#- 76 PublicUpdatePartyAttributesV1
samples/cli/sample-apps Lobby publicUpdatePartyAttributesV1 \
    --namespace $AB_NAMESPACE \
    --partyId '0tjmR835' \
    --body '{"custom_attribute": {"03thWYpx": {}, "zPfj7W3J": {}, "RN6WtBoz": {}}, "updatedAt": 15}' \
    > test.out 2>&1
eval_tap $? 76 'PublicUpdatePartyAttributesV1' test.out

#- 77 PublicSetPartyLimitV1
samples/cli/sample-apps Lobby publicSetPartyLimitV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'm0aIO1VL' \
    --body '{"limit": 10}' \
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
    --countOnly 'true' \
    --userIds '7LJGlvSS' \
    > test.out 2>&1
eval_tap $? 80 'UsersPresenceHandlerV1' test.out

#- 81 FreeFormNotification
samples/cli/sample-apps Lobby freeFormNotification \
    --namespace $AB_NAMESPACE \
    --body '{"message": "Tq34DVeM", "topic": "PKpvVPer"}' \
    > test.out 2>&1
eval_tap $? 81 'FreeFormNotification' test.out

#- 82 NotificationWithTemplate
samples/cli/sample-apps Lobby notificationWithTemplate \
    --namespace $AB_NAMESPACE \
    --body '{"templateContext": {"Y2MEWYpS": "RiFFxKmQ", "NMTRn9ep": "r83RX2wm", "1Okat844": "SpoJnXcZ"}, "templateLanguage": "KKm3B5VN", "templateSlug": "gSGbP1yG", "topic": "yrLWphuh"}' \
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
    --body '{"templateContent": "IARSrkCt", "templateLanguage": "2mW6hkNS", "templateSlug": "vB6tnwjM"}' \
    > test.out 2>&1
eval_tap $? 84 'CreateTemplate' test.out

#- 85 GetSlugTemplate
samples/cli/sample-apps Lobby getSlugTemplate \
    --namespace $AB_NAMESPACE \
    --templateSlug 'BTDkQDpO' \
    --after 'AXIGKPaC' \
    --before '0lHmDUXG' \
    --limit '74' \
    > test.out 2>&1
eval_tap $? 85 'GetSlugTemplate' test.out

#- 86 DeleteTemplateSlug
samples/cli/sample-apps Lobby deleteTemplateSlug \
    --namespace $AB_NAMESPACE \
    --templateSlug 'ZKw20fH0' \
    > test.out 2>&1
eval_tap $? 86 'DeleteTemplateSlug' test.out

#- 87 GetLocalizationTemplate
samples/cli/sample-apps Lobby getLocalizationTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'IhnZzzhh' \
    --templateSlug 'NioBxqfk' \
    > test.out 2>&1
eval_tap $? 87 'GetLocalizationTemplate' test.out

#- 88 UpdateLocalizationTemplate
samples/cli/sample-apps Lobby updateLocalizationTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'DjS0QrU1' \
    --templateSlug 'RSin4pbO' \
    --body '{"templateContent": "PBXD5DFy"}' \
    > test.out 2>&1
eval_tap $? 88 'UpdateLocalizationTemplate' test.out

#- 89 DeleteTemplateLocalization
samples/cli/sample-apps Lobby deleteTemplateLocalization \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'GWA1KxbI' \
    --templateSlug 'rmGMbCAT' \
    > test.out 2>&1
eval_tap $? 89 'DeleteTemplateLocalization' test.out

#- 90 PublishTemplate
samples/cli/sample-apps Lobby publishTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage '5zIVqReb' \
    --templateSlug 'XiGqTfav' \
    > test.out 2>&1
eval_tap $? 90 'PublishTemplate' test.out

#- 91 GetTopicByNamespace
samples/cli/sample-apps Lobby getTopicByNamespace \
    --namespace $AB_NAMESPACE \
    --after 'Zv0fEmU7' \
    --before 'hccV4lTS' \
    --limit '71' \
    > test.out 2>&1
eval_tap $? 91 'GetTopicByNamespace' test.out

#- 92 CreateTopic
samples/cli/sample-apps Lobby createTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "JwnSX160", "topic": "DQgeQlRw"}' \
    > test.out 2>&1
eval_tap $? 92 'CreateTopic' test.out

#- 93 GetTopicByTopicName
samples/cli/sample-apps Lobby getTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'xfdTbDma' \
    > test.out 2>&1
eval_tap $? 93 'GetTopicByTopicName' test.out

#- 94 UpdateTopicByTopicName
samples/cli/sample-apps Lobby updateTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic '8xd68tHI' \
    --body '{"description": "s59osa9Y"}' \
    > test.out 2>&1
eval_tap $? 94 'UpdateTopicByTopicName' test.out

#- 95 DeleteTopicByTopicName
samples/cli/sample-apps Lobby deleteTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'pjKB2Hbf' \
    > test.out 2>&1
eval_tap $? 95 'DeleteTopicByTopicName' test.out

#- 96 FreeFormNotificationByUserID
samples/cli/sample-apps Lobby freeFormNotificationByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'eFwhv98B' \
    --body '{"message": "TIAwiel7", "topic": "SHi8NQoN"}' \
    > test.out 2>&1
eval_tap $? 96 'FreeFormNotificationByUserID' test.out

#- 97 NotificationWithTemplateByUserID
samples/cli/sample-apps Lobby notificationWithTemplateByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'R2hJtcZP' \
    --body '{"templateContext": {"SzzeOyyJ": "kc1rKae0", "083qnBnw": "3XyiTTbu", "wi0vy38R": "k0sm6zc3"}, "templateLanguage": "jpHS56X6", "templateSlug": "hzqq4cG0", "topic": "GNzxPJ9i"}' \
    > test.out 2>&1
eval_tap $? 97 'NotificationWithTemplateByUserID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE