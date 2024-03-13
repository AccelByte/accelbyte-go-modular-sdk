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
    --limit '18' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 2 'GetUserFriendsUpdated' test.out

#- 3 GetUserIncomingFriends
samples/cli/sample-apps Lobby getUserIncomingFriends \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 3 'GetUserIncomingFriends' test.out

#- 4 GetUserIncomingFriendsWithTime
samples/cli/sample-apps Lobby getUserIncomingFriendsWithTime \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 4 'GetUserIncomingFriendsWithTime' test.out

#- 5 GetUserOutgoingFriends
samples/cli/sample-apps Lobby getUserOutgoingFriends \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 5 'GetUserOutgoingFriends' test.out

#- 6 GetUserOutgoingFriendsWithTime
samples/cli/sample-apps Lobby getUserOutgoingFriendsWithTime \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 6 'GetUserOutgoingFriendsWithTime' test.out

#- 7 GetUserFriendsWithPlatform
samples/cli/sample-apps Lobby getUserFriendsWithPlatform \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 7 'GetUserFriendsWithPlatform' test.out

#- 8 UserRequestFriend
samples/cli/sample-apps Lobby userRequestFriend \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "0yNnVwY0", "friendPublicId": "70aDWBlA"}' \
    > test.out 2>&1
eval_tap $? 8 'UserRequestFriend' test.out

#- 9 UserAcceptFriendRequest
samples/cli/sample-apps Lobby userAcceptFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "fFq6usgA"}' \
    > test.out 2>&1
eval_tap $? 9 'UserAcceptFriendRequest' test.out

#- 10 UserCancelFriendRequest
samples/cli/sample-apps Lobby userCancelFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "gSWxRidq"}' \
    > test.out 2>&1
eval_tap $? 10 'UserCancelFriendRequest' test.out

#- 11 UserRejectFriendRequest
samples/cli/sample-apps Lobby userRejectFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "feFS4BUk"}' \
    > test.out 2>&1
eval_tap $? 11 'UserRejectFriendRequest' test.out

#- 12 UserGetFriendshipStatus
samples/cli/sample-apps Lobby userGetFriendshipStatus \
    --friendId 'M9OHSgRS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'UserGetFriendshipStatus' test.out

#- 13 UserUnfriendRequest
samples/cli/sample-apps Lobby userUnfriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "FHVxn6yf"}' \
    > test.out 2>&1
eval_tap $? 13 'UserUnfriendRequest' test.out

#- 14 AddFriendsWithoutConfirmation
samples/cli/sample-apps Lobby addFriendsWithoutConfirmation \
    --namespace $AB_NAMESPACE \
    --userId 'fCn06gEt' \
    --body '{"friendIds": ["Oyhf00zH", "1YvoJrOp", "IONRjMCK"]}' \
    > test.out 2>&1
eval_tap $? 14 'AddFriendsWithoutConfirmation' test.out

#- 15 BulkDeleteFriends
samples/cli/sample-apps Lobby bulkDeleteFriends \
    --namespace $AB_NAMESPACE \
    --userId 'PCmw1z4d' \
    --body '{"friendIds": ["pdA199O3", "yOi3Vfui", "PC7AFNmf"]}' \
    > test.out 2>&1
eval_tap $? 15 'BulkDeleteFriends' test.out

#- 16 SyncNativeFriends
samples/cli/sample-apps Lobby syncNativeFriends \
    --namespace $AB_NAMESPACE \
    --body '[{"isLogin": true, "platformId": "UPLPG3bf", "platformToken": "5f1lLIuc", "psnEnv": "ili1PjVy"}, {"isLogin": true, "platformId": "CEed9EyU", "platformToken": "N1PKDJn7", "psnEnv": "DrE3Gf3f"}, {"isLogin": false, "platformId": "xKe1k6Al", "platformToken": "pHeiDBxz", "psnEnv": "lgCPzS20"}]' \
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
    --body '{"allowInviteNonConnectedUser": false, "allowJoinPartyDuringMatchmaking": false, "autoKickOnDisconnect": true, "autoKickOnDisconnectDelay": 16, "cancelTicketOnDisconnect": false, "chatRateLimitBurst": 50, "chatRateLimitDuration": 99, "concurrentUsersLimit": 49, "disableInvitationOnJoinParty": false, "enableChat": true, "entitlementCheck": false, "entitlementItemID": "SLwZuGwW", "generalRateLimitBurst": 28, "generalRateLimitDuration": 97, "keepPresenceActivityOnDisconnect": false, "maxDSWaitTime": 96, "maxFriendsLimit": 98, "maxPartyMember": 20, "profanityFilter": false, "readyConsentTimeout": 63, "unregisterDelay": 82}' \
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
    --userId 'QiwhyeBU' \
    --friendId 'Xp1kRh5S' \
    --friendIds '["XAhQt8bh", "OCJQc6QW", "QRikqvXE"]' \
    --limit '53' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 22 'GetListOfFriends' test.out

#- 23 GetIncomingFriendRequests
samples/cli/sample-apps Lobby getIncomingFriendRequests \
    --namespace $AB_NAMESPACE \
    --userId 'ambVq460' \
    --friendId 'ZRPMjw8N' \
    --limit '88' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 23 'GetIncomingFriendRequests' test.out

#- 24 AdminListFriendsOfFriends
samples/cli/sample-apps Lobby adminListFriendsOfFriends \
    --namespace $AB_NAMESPACE \
    --userId 'f8F6dm3g' \
    --friendId 'hlapIcEv' \
    --limit '62' \
    --nopaging 'true' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 24 'AdminListFriendsOfFriends' test.out

#- 25 GetOutgoingFriendRequests
samples/cli/sample-apps Lobby getOutgoingFriendRequests \
    --namespace $AB_NAMESPACE \
    --userId 'T7Fdtq9I' \
    --limit '30' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 25 'GetOutgoingFriendRequests' test.out

#- 26 AdminGetGlobalConfig
samples/cli/sample-apps Lobby adminGetGlobalConfig \
    > test.out 2>&1
eval_tap $? 26 'AdminGetGlobalConfig' test.out

#- 27 AdminUpdateGlobalConfig
samples/cli/sample-apps Lobby adminUpdateGlobalConfig \
    --body '{"regionRetryMapping": {"cvknNs9P": ["wSqRNAw0", "NPtzs6jH", "FXVwpAjR"], "rUxoMEoc": ["8pLtcCbi", "JgdmmTSa", "mbirNXX5"], "s7FC5QIr": ["RfF6X6VB", "jaLLro0r", "jjpCjk6P"]}, "regionURLMapping": ["0iYkgDVv", "eW7msGtV", "AvgnmY5C"], "testGameMode": "lLIrdL0Y", "testRegionURLMapping": ["HMPJTkhl", "6QoPCp1M", "lQ8pPmx4"], "testTargetUserIDs": ["oAP1cmAb", "wIqLD2Yw", "ZfqB8wrV"]}' \
    > test.out 2>&1
eval_tap $? 27 'AdminUpdateGlobalConfig' test.out

#- 28 AdminDeleteGlobalConfig
samples/cli/sample-apps Lobby adminDeleteGlobalConfig \
    > test.out 2>&1
eval_tap $? 28 'AdminDeleteGlobalConfig' test.out

#- 29 SendMultipleUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendMultipleUsersFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"message": "Psw0vagT", "topicName": "fX1HbPRB", "userIds": ["HxERJ6iQ", "s3iqshYF", "LkGMkSc3"]}' \
    > test.out 2>&1
eval_tap $? 29 'SendMultipleUsersFreeformNotificationV1Admin' test.out

#- 30 SendUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"message": "HUCF9umM", "topicName": "FIzRxLRW"}' \
    > test.out 2>&1
eval_tap $? 30 'SendUsersFreeformNotificationV1Admin' test.out

#- 31 SendPartyFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --partyId 'ka6wfcki' \
    --body '{"message": "RShjoT80", "topicName": "uuDTIJs7"}' \
    > test.out 2>&1
eval_tap $? 31 'SendPartyFreeformNotificationV1Admin' test.out

#- 32 SendPartyTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --partyId 'a820id6Y' \
    --body '{"templateContext": {"fs0V7Nqw": "l439xlcl", "3jbG1Axg": "5bM54j43", "pTp5yyuR": "yJZK2NfM"}, "templateLanguage": "lDUUa66f", "templateSlug": "WpTz8RCW", "topicName": "ZoQnI5oI"}' \
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
    --body '{"templateContent": "7PtltyQl", "templateLanguage": "tD2dT9gi", "templateSlug": "Emklsta9"}' \
    > test.out 2>&1
eval_tap $? 34 'CreateNotificationTemplateV1Admin' test.out

#- 35 SendUsersTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"templateContext": {"l6efHXIA": "2p5Lq5k9", "pTHvcMpk": "dLFdJVx8", "UnTVdDbf": "q0rGER4c"}, "templateLanguage": "hisSlIAo", "templateSlug": "HpQx98zE", "topicName": "0XlI0DtT"}' \
    > test.out 2>&1
eval_tap $? 35 'SendUsersTemplatedNotificationV1Admin' test.out

#- 36 GetTemplateSlugLocalizationsTemplateV1Admin
samples/cli/sample-apps Lobby getTemplateSlugLocalizationsTemplateV1Admin \
    --namespace $AB_NAMESPACE \
    --templateSlug 'yktg2zNy' \
    --after 'CKmH8tj9' \
    --before '4XtXz7eY' \
    --limit '49' \
    > test.out 2>&1
eval_tap $? 36 'GetTemplateSlugLocalizationsTemplateV1Admin' test.out

#- 37 DeleteNotificationTemplateSlugV1Admin
samples/cli/sample-apps Lobby deleteNotificationTemplateSlugV1Admin \
    --namespace $AB_NAMESPACE \
    --templateSlug 'vk1NVfke' \
    > test.out 2>&1
eval_tap $? 37 'DeleteNotificationTemplateSlugV1Admin' test.out

#- 38 GetSingleTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby getSingleTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage '0jIxcyyY' \
    --templateSlug '592QtJeA' \
    > test.out 2>&1
eval_tap $? 38 'GetSingleTemplateLocalizationV1Admin' test.out

#- 39 UpdateTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby updateTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'hiD5dPiz' \
    --templateSlug '02kJJLx1' \
    --body '{"templateContent": "3KXXOzDn"}' \
    > test.out 2>&1
eval_tap $? 39 'UpdateTemplateLocalizationV1Admin' test.out

#- 40 DeleteTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby deleteTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'UJqa013j' \
    --templateSlug 'N7ue5jov' \
    > test.out 2>&1
eval_tap $? 40 'DeleteTemplateLocalizationV1Admin' test.out

#- 41 PublishTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby publishTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'ZAnz1BEp' \
    --templateSlug 'zJuOH1Gc' \
    > test.out 2>&1
eval_tap $? 41 'PublishTemplateLocalizationV1Admin' test.out

#- 42 GetAllNotificationTopicsV1Admin
samples/cli/sample-apps Lobby getAllNotificationTopicsV1Admin \
    --namespace $AB_NAMESPACE \
    --after '3tm4soVA' \
    --before 'LcQ1HmXi' \
    --limit '41' \
    > test.out 2>&1
eval_tap $? 42 'GetAllNotificationTopicsV1Admin' test.out

#- 43 CreateNotificationTopicV1Admin
samples/cli/sample-apps Lobby createNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"description": "Ms1ZeNrp", "topicName": "mHbqSjdb"}' \
    > test.out 2>&1
eval_tap $? 43 'CreateNotificationTopicV1Admin' test.out

#- 44 GetNotificationTopicV1Admin
samples/cli/sample-apps Lobby getNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName '9w6Iff9i' \
    > test.out 2>&1
eval_tap $? 44 'GetNotificationTopicV1Admin' test.out

#- 45 UpdateNotificationTopicV1Admin
samples/cli/sample-apps Lobby updateNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'jCV23PH1' \
    --body '{"description": "H8edGxru"}' \
    > test.out 2>&1
eval_tap $? 45 'UpdateNotificationTopicV1Admin' test.out

#- 46 DeleteNotificationTopicV1Admin
samples/cli/sample-apps Lobby deleteNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'o0tYEorP' \
    > test.out 2>&1
eval_tap $? 46 'DeleteNotificationTopicV1Admin' test.out

#- 47 SendSpecificUserFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --userId 'CjJex3yZ' \
    --body '{"message": "5njm7l0I", "topicName": "gE14Y42R"}' \
    > test.out 2>&1
eval_tap $? 47 'SendSpecificUserFreeformNotificationV1Admin' test.out

#- 48 SendSpecificUserTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --userId '8Wdl92O3' \
    --body '{"templateContext": {"FcJt7kpb": "vRWpqVkp", "TYnCFhbV": "jxx287bL", "CcRvtgaZ": "qm7Yr6y6"}, "templateLanguage": "GqosqC6o", "templateSlug": "Z1FxzWzV", "topicName": "2LINiIqp"}' \
    > test.out 2>&1
eval_tap $? 48 'SendSpecificUserTemplatedNotificationV1Admin' test.out

#- 49 AdminGetPartyDataV1
samples/cli/sample-apps Lobby adminGetPartyDataV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'ojcTFBci' \
    > test.out 2>&1
eval_tap $? 49 'AdminGetPartyDataV1' test.out

#- 50 AdminUpdatePartyAttributesV1
samples/cli/sample-apps Lobby adminUpdatePartyAttributesV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'DnwCEM6A' \
    --body '{"custom_attribute": {"vtcnJzCq": {}, "EVyfutFx": {}, "0d4tVv6Z": {}}, "updatedAt": 18}' \
    > test.out 2>&1
eval_tap $? 50 'AdminUpdatePartyAttributesV1' test.out

#- 51 AdminJoinPartyV1
samples/cli/sample-apps Lobby adminJoinPartyV1 \
    --namespace $AB_NAMESPACE \
    --partyId '8LQ1MMMn' \
    --userId 'vi0IaCIY' \
    > test.out 2>&1
eval_tap $? 51 'AdminJoinPartyV1' test.out

#- 52 AdminGetUserPartyV1
samples/cli/sample-apps Lobby adminGetUserPartyV1 \
    --namespace $AB_NAMESPACE \
    --userId 'w8BB5Jrs' \
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
    --body '{"listBlockedUserId": ["t6zQwESy", "QNuD7YQP", "D7a8mcGW"]}' \
    > test.out 2>&1
eval_tap $? 54 'AdminGetBulkPlayerBlockedPlayersV1' test.out

#- 55 AdminGetAllPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetAllPlayerSessionAttribute \
    --namespace $AB_NAMESPACE \
    --userId '6S8akLi8' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetAllPlayerSessionAttribute' test.out

#- 56 AdminSetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminSetPlayerSessionAttribute \
    --namespace $AB_NAMESPACE \
    --userId 'v6p2aHee' \
    --body '{"attributes": {"qeAKQ1vC": "3ZgJvtxn", "Umki7TDM": "bGkQhqXn", "Gbz6swVy": "YJb8stHu"}}' \
    > test.out 2>&1
eval_tap $? 56 'AdminSetPlayerSessionAttribute' test.out

#- 57 AdminGetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetPlayerSessionAttribute \
    --attribute 'i57f3Xxt' \
    --namespace $AB_NAMESPACE \
    --userId 'UA16dpFp' \
    > test.out 2>&1
eval_tap $? 57 'AdminGetPlayerSessionAttribute' test.out

#- 58 AdminGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId '45tyrNCV' \
    > test.out 2>&1
eval_tap $? 58 'AdminGetPlayerBlockedPlayersV1' test.out

#- 59 AdminGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedByPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId '1RhFQZlh' \
    > test.out 2>&1
eval_tap $? 59 'AdminGetPlayerBlockedByPlayersV1' test.out

#- 60 AdminBulkBlockPlayersV1
samples/cli/sample-apps Lobby adminBulkBlockPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Hb4uFzgr' \
    --body '{"listBlockedUserId": ["SEgFYiwH", "9oYtW6og", "QpwkHmcf"]}' \
    > test.out 2>&1
eval_tap $? 60 'AdminBulkBlockPlayersV1' test.out

#- 61 AdminDebugProfanityFilters
samples/cli/sample-apps Lobby adminDebugProfanityFilters \
    --namespace $AB_NAMESPACE \
    --body '{"text": "VM0822w6"}' \
    > test.out 2>&1
eval_tap $? 61 'AdminDebugProfanityFilters' test.out

#- 62 AdminGetProfanityListFiltersV1
samples/cli/sample-apps Lobby adminGetProfanityListFiltersV1 \
    --list 'NfQIrtlB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'AdminGetProfanityListFiltersV1' test.out

#- 63 AdminAddProfanityFilterIntoList
samples/cli/sample-apps Lobby adminAddProfanityFilterIntoList \
    --list 'oqgR4h5B' \
    --namespace $AB_NAMESPACE \
    --body '{"filter": "aKw9HPF7", "note": "f21GDCQH"}' \
    > test.out 2>&1
eval_tap $? 63 'AdminAddProfanityFilterIntoList' test.out

#- 64 AdminAddProfanityFilters
samples/cli/sample-apps Lobby adminAddProfanityFilters \
    --list 'zWalxxiX' \
    --namespace $AB_NAMESPACE \
    --body '{"filters": [{"filter": "7IGOuU4C", "note": "UIFAxPuy"}, {"filter": "ESITWJrn", "note": "qzLy8EfW"}, {"filter": "n2sZ1l0D", "note": "ahbKMKBh"}]}' \
    > test.out 2>&1
eval_tap $? 64 'AdminAddProfanityFilters' test.out

#- 65 AdminImportProfanityFiltersFromFile
samples/cli/sample-apps Lobby adminImportProfanityFiltersFromFile \
    --list 'msClPTNu' \
    --namespace $AB_NAMESPACE \
    --body '[79, 89, 56]' \
    > test.out 2>&1
eval_tap $? 65 'AdminImportProfanityFiltersFromFile' test.out

#- 66 AdminDeleteProfanityFilter
samples/cli/sample-apps Lobby adminDeleteProfanityFilter \
    --list 'LUKusXRE' \
    --namespace $AB_NAMESPACE \
    --body '{"filter": "4CKEOWwc"}' \
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
    --body '{"isEnabled": false, "isMandatory": false, "name": "ImoseU60"}' \
    > test.out 2>&1
eval_tap $? 68 'AdminCreateProfanityList' test.out

#- 69 AdminUpdateProfanityList
samples/cli/sample-apps Lobby adminUpdateProfanityList \
    --list 'YMW9v1YE' \
    --namespace $AB_NAMESPACE \
    --body '{"isEnabled": false, "isMandatory": false, "newName": "EJgd3pFG"}' \
    > test.out 2>&1
eval_tap $? 69 'AdminUpdateProfanityList' test.out

#- 70 AdminDeleteProfanityList
samples/cli/sample-apps Lobby adminDeleteProfanityList \
    --list 'UaArhJKJ' \
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
    --body '{"rule": "uW39hhRO"}' \
    > test.out 2>&1
eval_tap $? 72 'AdminSetProfanityRuleForNamespace' test.out

#- 73 AdminVerifyMessageProfanityResponse
samples/cli/sample-apps Lobby adminVerifyMessageProfanityResponse \
    --namespace $AB_NAMESPACE \
    --body '{"message": "XsccEHzJ", "profanityLevel": "pP2NKWF1"}' \
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
    --body '{"apiKey": "kNwJoHyr"}' \
    > test.out 2>&1
eval_tap $? 75 'AdminUpdateThirdPartyConfig' test.out

#- 76 AdminCreateThirdPartyConfig
samples/cli/sample-apps Lobby adminCreateThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    --body '{"apiKey": "yPXDaa4N"}' \
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
    --partyId 'uN3rPcMs' \
    > test.out 2>&1
eval_tap $? 79 'PublicGetPartyDataV1' test.out

#- 80 PublicUpdatePartyAttributesV1
samples/cli/sample-apps Lobby publicUpdatePartyAttributesV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'TdTIF4vm' \
    --body '{"custom_attribute": {"MYGhy5sF": {}, "Hv9Rmfoz": {}, "nvNQ5Dlh": {}}, "updatedAt": 92}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdatePartyAttributesV1' test.out

#- 81 PublicSetPartyLimitV1
samples/cli/sample-apps Lobby publicSetPartyLimitV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'UaoWJNRa' \
    --body '{"limit": 85}' \
    > test.out 2>&1
eval_tap $? 81 'PublicSetPartyLimitV1' test.out

#- 82 PublicPlayerBlockPlayersV1
samples/cli/sample-apps Lobby publicPlayerBlockPlayersV1 \
    --namespace $AB_NAMESPACE \
    --body '{"blockedUserId": "vEUa1wZS"}' \
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
    --body '{"userId": "i6UAjJZd"}' \
    > test.out 2>&1
eval_tap $? 85 'PublicUnblockPlayerV1' test.out

#- 86 UsersPresenceHandlerV1
samples/cli/sample-apps Lobby usersPresenceHandlerV1 \
    --namespace $AB_NAMESPACE \
    --countOnly 'false' \
    --userIds 'ApkjAqtD' \
    > test.out 2>&1
eval_tap $? 86 'UsersPresenceHandlerV1' test.out

#- 87 FreeFormNotification
samples/cli/sample-apps Lobby freeFormNotification \
    --namespace $AB_NAMESPACE \
    --body '{"message": "DDVszBl3", "topic": "XSLrjLCP"}' \
    > test.out 2>&1
eval_tap $? 87 'FreeFormNotification' test.out

#- 88 NotificationWithTemplate
samples/cli/sample-apps Lobby notificationWithTemplate \
    --namespace $AB_NAMESPACE \
    --body '{"templateContext": {"AbBrRI6M": "Sy7AVy0E", "6TrJhlUX": "8TybHFf2", "yXg06pS6": "pjJpAGBM"}, "templateLanguage": "Tu4Qjx3e", "templateSlug": "qlS7Ca4A", "topic": "pCf2SXNU"}' \
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
    --body '{"templateContent": "f47xlhH5", "templateLanguage": "pYYoeTRq", "templateSlug": "08fiT5aP"}' \
    > test.out 2>&1
eval_tap $? 90 'CreateTemplate' test.out

#- 91 GetSlugTemplate
samples/cli/sample-apps Lobby getSlugTemplate \
    --namespace $AB_NAMESPACE \
    --templateSlug '3Ehy5GHq' \
    --after 'cfYc6yoT' \
    --before 'iLhasmcS' \
    --limit '12' \
    > test.out 2>&1
eval_tap $? 91 'GetSlugTemplate' test.out

#- 92 DeleteTemplateSlug
samples/cli/sample-apps Lobby deleteTemplateSlug \
    --namespace $AB_NAMESPACE \
    --templateSlug 'ReJzD34V' \
    > test.out 2>&1
eval_tap $? 92 'DeleteTemplateSlug' test.out

#- 93 GetLocalizationTemplate
samples/cli/sample-apps Lobby getLocalizationTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage '2WWrGpS6' \
    --templateSlug 'SSPBPMkT' \
    > test.out 2>&1
eval_tap $? 93 'GetLocalizationTemplate' test.out

#- 94 UpdateLocalizationTemplate
samples/cli/sample-apps Lobby updateLocalizationTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'V4TGXoir' \
    --templateSlug 'CJ1ZGpGb' \
    --body '{"templateContent": "oSIWBL8j"}' \
    > test.out 2>&1
eval_tap $? 94 'UpdateLocalizationTemplate' test.out

#- 95 DeleteTemplateLocalization
samples/cli/sample-apps Lobby deleteTemplateLocalization \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'YJuJBrcv' \
    --templateSlug 'Mku6MseK' \
    > test.out 2>&1
eval_tap $? 95 'DeleteTemplateLocalization' test.out

#- 96 PublishTemplate
samples/cli/sample-apps Lobby publishTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'X6OuvXJh' \
    --templateSlug '6VuH5QRO' \
    > test.out 2>&1
eval_tap $? 96 'PublishTemplate' test.out

#- 97 GetTopicByNamespace
samples/cli/sample-apps Lobby getTopicByNamespace \
    --namespace $AB_NAMESPACE \
    --after 'wokTizAb' \
    --before '93k6N2BH' \
    --limit '51' \
    > test.out 2>&1
eval_tap $? 97 'GetTopicByNamespace' test.out

#- 98 CreateTopic
samples/cli/sample-apps Lobby createTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "ChKvCiJB", "topic": "noefDJlX"}' \
    > test.out 2>&1
eval_tap $? 98 'CreateTopic' test.out

#- 99 GetTopicByTopicName
samples/cli/sample-apps Lobby getTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'c1WTcv2S' \
    > test.out 2>&1
eval_tap $? 99 'GetTopicByTopicName' test.out

#- 100 UpdateTopicByTopicName
samples/cli/sample-apps Lobby updateTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'BQuy49Ob' \
    --body '{"description": "47nkXKEl"}' \
    > test.out 2>&1
eval_tap $? 100 'UpdateTopicByTopicName' test.out

#- 101 DeleteTopicByTopicName
samples/cli/sample-apps Lobby deleteTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'GemblVyd' \
    > test.out 2>&1
eval_tap $? 101 'DeleteTopicByTopicName' test.out

#- 102 FreeFormNotificationByUserID
samples/cli/sample-apps Lobby freeFormNotificationByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'EuGpxYlq' \
    --body '{"message": "9PogQOi1", "topic": "DFqN7usC"}' \
    > test.out 2>&1
eval_tap $? 102 'FreeFormNotificationByUserID' test.out

#- 103 NotificationWithTemplateByUserID
samples/cli/sample-apps Lobby notificationWithTemplateByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'XqupjYhn' \
    --body '{"templateContext": {"07Zq4YQR": "OJ91UriH", "px68V0jd": "Kct7Rhg6", "UxvLxwWx": "YjiLkmTA"}, "templateLanguage": "gHuSoA6d", "templateSlug": "LWuIFSSa", "topic": "2xdTTJGb"}' \
    > test.out 2>&1
eval_tap $? 103 'NotificationWithTemplateByUserID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE