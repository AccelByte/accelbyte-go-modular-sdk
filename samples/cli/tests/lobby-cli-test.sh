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
echo "1..96"

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
    --limit '84' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 2 'GetUserFriendsUpdated' test.out

#- 3 GetUserIncomingFriends
samples/cli/sample-apps Lobby getUserIncomingFriends \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 3 'GetUserIncomingFriends' test.out

#- 4 GetUserIncomingFriendsWithTime
samples/cli/sample-apps Lobby getUserIncomingFriendsWithTime \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 4 'GetUserIncomingFriendsWithTime' test.out

#- 5 GetUserOutgoingFriends
samples/cli/sample-apps Lobby getUserOutgoingFriends \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 5 'GetUserOutgoingFriends' test.out

#- 6 GetUserOutgoingFriendsWithTime
samples/cli/sample-apps Lobby getUserOutgoingFriendsWithTime \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 6 'GetUserOutgoingFriendsWithTime' test.out

#- 7 GetUserFriendsWithPlatform
samples/cli/sample-apps Lobby getUserFriendsWithPlatform \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 7 'GetUserFriendsWithPlatform' test.out

#- 8 UserRequestFriend
samples/cli/sample-apps Lobby userRequestFriend \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "AOaok3ek", "friendPublicId": "34IOfqGT"}' \
    > test.out 2>&1
eval_tap $? 8 'UserRequestFriend' test.out

#- 9 UserAcceptFriendRequest
samples/cli/sample-apps Lobby userAcceptFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "xU8SfBa9"}' \
    > test.out 2>&1
eval_tap $? 9 'UserAcceptFriendRequest' test.out

#- 10 UserCancelFriendRequest
samples/cli/sample-apps Lobby userCancelFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "KrgsC9jM"}' \
    > test.out 2>&1
eval_tap $? 10 'UserCancelFriendRequest' test.out

#- 11 UserRejectFriendRequest
samples/cli/sample-apps Lobby userRejectFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "OIsGR6BO"}' \
    > test.out 2>&1
eval_tap $? 11 'UserRejectFriendRequest' test.out

#- 12 UserGetFriendshipStatus
samples/cli/sample-apps Lobby userGetFriendshipStatus \
    --friendId '7fChbr4G' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'UserGetFriendshipStatus' test.out

#- 13 UserUnfriendRequest
samples/cli/sample-apps Lobby userUnfriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "vki6djxI"}' \
    > test.out 2>&1
eval_tap $? 13 'UserUnfriendRequest' test.out

#- 14 AddFriendsWithoutConfirmation
samples/cli/sample-apps Lobby addFriendsWithoutConfirmation \
    --namespace $AB_NAMESPACE \
    --userId 'tGrhYxBS' \
    --body '{"friendIds": ["dqzlnSXx", "XDftqL6L", "MPLSlCq5"]}' \
    > test.out 2>&1
eval_tap $? 14 'AddFriendsWithoutConfirmation' test.out

#- 15 BulkDeleteFriends
samples/cli/sample-apps Lobby bulkDeleteFriends \
    --namespace $AB_NAMESPACE \
    --userId 'd4HadGZH' \
    --body '{"friendIds": ["FqQNW0Ju", "ny1A88aU", "HeON1nwJ"]}' \
    > test.out 2>&1
eval_tap $? 15 'BulkDeleteFriends' test.out

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
    --body '{"allowInviteNonConnectedUser": true, "allowJoinPartyDuringMatchmaking": true, "autoKickOnDisconnect": false, "autoKickOnDisconnectDelay": 89, "cancelTicketOnDisconnect": false, "chatRateLimitBurst": 45, "chatRateLimitDuration": 93, "concurrentUsersLimit": 36, "disableInvitationOnJoinParty": true, "enableChat": true, "entitlementCheck": false, "entitlementItemID": "zHkDCW2u", "generalRateLimitBurst": 68, "generalRateLimitDuration": 32, "keepPresenceActivityOnDisconnect": false, "maxDSWaitTime": 6, "maxFriendsLimit": 36, "maxPartyMember": 14, "profanityFilter": false, "readyConsentTimeout": 39, "unregisterDelay": 80}' \
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
    --userId 'NnHjj1xk' \
    --friendId 'V4qa2Kz6' \
    --limit '37' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 21 'GetListOfFriends' test.out

#- 22 GetIncomingFriendRequests
samples/cli/sample-apps Lobby getIncomingFriendRequests \
    --namespace $AB_NAMESPACE \
    --userId 'cjn1IdJn' \
    --friendId 'fvXEtvh6' \
    --limit '42' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 22 'GetIncomingFriendRequests' test.out

#- 23 GetOutgoingFriendRequests
samples/cli/sample-apps Lobby getOutgoingFriendRequests \
    --namespace $AB_NAMESPACE \
    --userId 'qIeMDDAF' \
    --limit '46' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 23 'GetOutgoingFriendRequests' test.out

#- 24 SendMultipleUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendMultipleUsersFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"message": "LWBlKvHX", "topicName": "7oOnDf4m", "userIds": ["44Vzs306", "XGwt2XzO", "H84Yvist"]}' \
    > test.out 2>&1
eval_tap $? 24 'SendMultipleUsersFreeformNotificationV1Admin' test.out

#- 25 SendUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"message": "h9KO8Fk3", "topicName": "OynDwNtN"}' \
    > test.out 2>&1
eval_tap $? 25 'SendUsersFreeformNotificationV1Admin' test.out

#- 26 SendPartyFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --partyId 'J9e3T6JJ' \
    --body '{"message": "TVmqU3Hx", "topicName": "vbFqL3wP"}' \
    > test.out 2>&1
eval_tap $? 26 'SendPartyFreeformNotificationV1Admin' test.out

#- 27 SendPartyTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --partyId 'qWiKs6Wt' \
    --body '{"templateContext": {"z7HxSalQ": "hfrwBsFl", "VmPtWPhq": "tSjOZzIf", "k7SVgmei": "NNeoaYcx"}, "templateLanguage": "YSdktSWP", "templateSlug": "5x8I8LI9", "topicName": "dLA750oQ"}' \
    > test.out 2>&1
eval_tap $? 27 'SendPartyTemplatedNotificationV1Admin' test.out

#- 28 GetAllNotificationTemplatesV1Admin
samples/cli/sample-apps Lobby getAllNotificationTemplatesV1Admin \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'GetAllNotificationTemplatesV1Admin' test.out

#- 29 CreateNotificationTemplateV1Admin
samples/cli/sample-apps Lobby createNotificationTemplateV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"templateContent": "U89r8QxH", "templateLanguage": "YiFP5Tpm", "templateSlug": "FVV07kVl"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateNotificationTemplateV1Admin' test.out

#- 30 SendUsersTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"templateContext": {"q41KRkn3": "uJWyUkys", "QrvEwyRf": "HZxnyoay", "dwCbQC3G": "Zv9RutAt"}, "templateLanguage": "UOWDoGtx", "templateSlug": "1dgQknE5", "topicName": "CFYfikH1"}' \
    > test.out 2>&1
eval_tap $? 30 'SendUsersTemplatedNotificationV1Admin' test.out

#- 31 GetTemplateSlugLocalizationsTemplateV1Admin
samples/cli/sample-apps Lobby getTemplateSlugLocalizationsTemplateV1Admin \
    --namespace $AB_NAMESPACE \
    --templateSlug 'fAkAug5V' \
    --after '4aFHRjGv' \
    --before 'xcOtLztN' \
    --limit '52' \
    > test.out 2>&1
eval_tap $? 31 'GetTemplateSlugLocalizationsTemplateV1Admin' test.out

#- 32 DeleteNotificationTemplateSlugV1Admin
samples/cli/sample-apps Lobby deleteNotificationTemplateSlugV1Admin \
    --namespace $AB_NAMESPACE \
    --templateSlug 'wUR1jHkb' \
    > test.out 2>&1
eval_tap $? 32 'DeleteNotificationTemplateSlugV1Admin' test.out

#- 33 GetSingleTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby getSingleTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'EV4qtcmU' \
    --templateSlug 'fymMFez9' \
    > test.out 2>&1
eval_tap $? 33 'GetSingleTemplateLocalizationV1Admin' test.out

#- 34 UpdateTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby updateTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 's1eoQoXJ' \
    --templateSlug '4yh53oZY' \
    --body '{"templateContent": "hFwDIhDv"}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateTemplateLocalizationV1Admin' test.out

#- 35 DeleteTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby deleteTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'UCoQtXr7' \
    --templateSlug 'A2KfuhJL' \
    > test.out 2>&1
eval_tap $? 35 'DeleteTemplateLocalizationV1Admin' test.out

#- 36 PublishTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby publishTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage '6kHmQUQ4' \
    --templateSlug '44o3O0ku' \
    > test.out 2>&1
eval_tap $? 36 'PublishTemplateLocalizationV1Admin' test.out

#- 37 GetAllNotificationTopicsV1Admin
samples/cli/sample-apps Lobby getAllNotificationTopicsV1Admin \
    --namespace $AB_NAMESPACE \
    --after 'pHGMtD6w' \
    --before 'IO8tf8Hy' \
    --limit '19' \
    > test.out 2>&1
eval_tap $? 37 'GetAllNotificationTopicsV1Admin' test.out

#- 38 CreateNotificationTopicV1Admin
samples/cli/sample-apps Lobby createNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"description": "IZFuMTJT", "topicName": "rEdpdQJD"}' \
    > test.out 2>&1
eval_tap $? 38 'CreateNotificationTopicV1Admin' test.out

#- 39 GetNotificationTopicV1Admin
samples/cli/sample-apps Lobby getNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'IMwDxeZH' \
    > test.out 2>&1
eval_tap $? 39 'GetNotificationTopicV1Admin' test.out

#- 40 UpdateNotificationTopicV1Admin
samples/cli/sample-apps Lobby updateNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'vcXTmiIt' \
    --body '{"description": "D5MWBgOP"}' \
    > test.out 2>&1
eval_tap $? 40 'UpdateNotificationTopicV1Admin' test.out

#- 41 DeleteNotificationTopicV1Admin
samples/cli/sample-apps Lobby deleteNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName '77Heu6IK' \
    > test.out 2>&1
eval_tap $? 41 'DeleteNotificationTopicV1Admin' test.out

#- 42 SendSpecificUserFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --userId '6QhP8n7X' \
    --body '{"message": "VgLyhH2A", "topicName": "EOYUKPdx"}' \
    > test.out 2>&1
eval_tap $? 42 'SendSpecificUserFreeformNotificationV1Admin' test.out

#- 43 SendSpecificUserTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --userId 'ihmgLjm3' \
    --body '{"templateContext": {"Y62Ly7bI": "PNxjeykR", "wmoqx3ru": "erlbPj2A", "IoWEwPCV": "HIthq1SY"}, "templateLanguage": "XP7MjkBk", "templateSlug": "4e7f8pZo", "topicName": "kY6MAAyB"}' \
    > test.out 2>&1
eval_tap $? 43 'SendSpecificUserTemplatedNotificationV1Admin' test.out

#- 44 AdminGetPartyDataV1
samples/cli/sample-apps Lobby adminGetPartyDataV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'JL26Zdd2' \
    > test.out 2>&1
eval_tap $? 44 'AdminGetPartyDataV1' test.out

#- 45 AdminUpdatePartyAttributesV1
samples/cli/sample-apps Lobby adminUpdatePartyAttributesV1 \
    --namespace $AB_NAMESPACE \
    --partyId '6y0MQLxg' \
    --body '{"custom_attribute": {"qhvbe4ym": {}, "mMCv86Ig": {}, "UtHBu8gy": {}}, "updatedAt": 31}' \
    > test.out 2>&1
eval_tap $? 45 'AdminUpdatePartyAttributesV1' test.out

#- 46 AdminJoinPartyV1
samples/cli/sample-apps Lobby adminJoinPartyV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'i29ruUWi' \
    --userId 'XWELM6Cw' \
    > test.out 2>&1
eval_tap $? 46 'AdminJoinPartyV1' test.out

#- 47 AdminGetUserPartyV1
samples/cli/sample-apps Lobby adminGetUserPartyV1 \
    --namespace $AB_NAMESPACE \
    --userId '8WhzxpYe' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetUserPartyV1' test.out

#- 48 AdminGetLobbyCCU
samples/cli/sample-apps Lobby adminGetLobbyCCU \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 48 'AdminGetLobbyCCU' test.out

#- 49 AdminGetBulkPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby adminGetBulkPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    --body '{"listBlockedUserId": ["i71QcZUu", "yN4jHS9u", "yve2FVQP"]}' \
    > test.out 2>&1
eval_tap $? 49 'AdminGetBulkPlayerBlockedPlayersV1' test.out

#- 50 AdminGetAllPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetAllPlayerSessionAttribute \
    --namespace $AB_NAMESPACE \
    --userId 'rIGrXicS' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetAllPlayerSessionAttribute' test.out

#- 51 AdminSetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminSetPlayerSessionAttribute \
    --namespace $AB_NAMESPACE \
    --userId 'OMMOgwV0' \
    --body '{"attributes": {"nq7JTUJt": "bJpgXY7R", "iEWgyA2b": "Nwtm91tD", "AZnMKtNc": "zUfz3JEX"}}' \
    > test.out 2>&1
eval_tap $? 51 'AdminSetPlayerSessionAttribute' test.out

#- 52 AdminGetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetPlayerSessionAttribute \
    --attribute 'o6plKqlR' \
    --namespace $AB_NAMESPACE \
    --userId 'rqks38Nd' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetPlayerSessionAttribute' test.out

#- 53 AdminGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'aKXUcsPK' \
    > test.out 2>&1
eval_tap $? 53 'AdminGetPlayerBlockedPlayersV1' test.out

#- 54 AdminGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedByPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'QJRAo5rX' \
    > test.out 2>&1
eval_tap $? 54 'AdminGetPlayerBlockedByPlayersV1' test.out

#- 55 AdminBulkBlockPlayersV1
samples/cli/sample-apps Lobby adminBulkBlockPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'WZfiqrJ4' \
    --body '{"listBlockedUserId": ["s2vtPJvQ", "TO5sUylC", "FS0AiuLU"]}' \
    > test.out 2>&1
eval_tap $? 55 'AdminBulkBlockPlayersV1' test.out

#- 56 AdminDebugProfanityFilters
samples/cli/sample-apps Lobby adminDebugProfanityFilters \
    --namespace $AB_NAMESPACE \
    --body '{"text": "rIhjVVUp"}' \
    > test.out 2>&1
eval_tap $? 56 'AdminDebugProfanityFilters' test.out

#- 57 AdminGetProfanityListFiltersV1
samples/cli/sample-apps Lobby adminGetProfanityListFiltersV1 \
    --list 'DXGIBw82' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 57 'AdminGetProfanityListFiltersV1' test.out

#- 58 AdminAddProfanityFilterIntoList
samples/cli/sample-apps Lobby adminAddProfanityFilterIntoList \
    --list '1bMqneIG' \
    --namespace $AB_NAMESPACE \
    --body '{"filter": "XjAHgiIf", "note": "7RxIzkLr"}' \
    > test.out 2>&1
eval_tap $? 58 'AdminAddProfanityFilterIntoList' test.out

#- 59 AdminAddProfanityFilters
samples/cli/sample-apps Lobby adminAddProfanityFilters \
    --list '2iVexYrq' \
    --namespace $AB_NAMESPACE \
    --body '{"filters": [{"filter": "NVa9EOIY", "note": "hux4A3WB"}, {"filter": "xcSSIBGs", "note": "Q8lB64mr"}, {"filter": "fcqfXIGW", "note": "LBUuAEWY"}]}' \
    > test.out 2>&1
eval_tap $? 59 'AdminAddProfanityFilters' test.out

#- 60 AdminImportProfanityFiltersFromFile
samples/cli/sample-apps Lobby adminImportProfanityFiltersFromFile \
    --list 'mralSqOz' \
    --namespace $AB_NAMESPACE \
    --body '[7, 18, 37]' \
    > test.out 2>&1
eval_tap $? 60 'AdminImportProfanityFiltersFromFile' test.out

#- 61 AdminDeleteProfanityFilter
samples/cli/sample-apps Lobby adminDeleteProfanityFilter \
    --list 'Z8Kf4fMm' \
    --namespace $AB_NAMESPACE \
    --body '{"filter": "Zs9TEVua"}' \
    > test.out 2>&1
eval_tap $? 61 'AdminDeleteProfanityFilter' test.out

#- 62 AdminGetProfanityLists
samples/cli/sample-apps Lobby adminGetProfanityLists \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'AdminGetProfanityLists' test.out

#- 63 AdminCreateProfanityList
samples/cli/sample-apps Lobby adminCreateProfanityList \
    --namespace $AB_NAMESPACE \
    --body '{"isEnabled": true, "isMandatory": true, "name": "RaTzvEMA"}' \
    > test.out 2>&1
eval_tap $? 63 'AdminCreateProfanityList' test.out

#- 64 AdminUpdateProfanityList
samples/cli/sample-apps Lobby adminUpdateProfanityList \
    --list 'MWDldqs6' \
    --namespace $AB_NAMESPACE \
    --body '{"isEnabled": false, "isMandatory": true, "newName": "T6hbHKEF"}' \
    > test.out 2>&1
eval_tap $? 64 'AdminUpdateProfanityList' test.out

#- 65 AdminDeleteProfanityList
samples/cli/sample-apps Lobby adminDeleteProfanityList \
    --list 'UoFUa7wV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AdminDeleteProfanityList' test.out

#- 66 AdminGetProfanityRule
samples/cli/sample-apps Lobby adminGetProfanityRule \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'AdminGetProfanityRule' test.out

#- 67 AdminSetProfanityRuleForNamespace
samples/cli/sample-apps Lobby adminSetProfanityRuleForNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"rule": "ncKRbHKE"}' \
    > test.out 2>&1
eval_tap $? 67 'AdminSetProfanityRuleForNamespace' test.out

#- 68 AdminVerifyMessageProfanityResponse
samples/cli/sample-apps Lobby adminVerifyMessageProfanityResponse \
    --namespace $AB_NAMESPACE \
    --body '{"message": "QoJtgREf", "profanityLevel": "Eloe3oFo"}' \
    > test.out 2>&1
eval_tap $? 68 'AdminVerifyMessageProfanityResponse' test.out

#- 69 AdminGetThirdPartyConfig
samples/cli/sample-apps Lobby adminGetThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'AdminGetThirdPartyConfig' test.out

#- 70 AdminUpdateThirdPartyConfig
samples/cli/sample-apps Lobby adminUpdateThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    --body '{"apiKey": "fFDhtR5L"}' \
    > test.out 2>&1
eval_tap $? 70 'AdminUpdateThirdPartyConfig' test.out

#- 71 AdminCreateThirdPartyConfig
samples/cli/sample-apps Lobby adminCreateThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    --body '{"apiKey": "qQhvFgtV"}' \
    > test.out 2>&1
eval_tap $? 71 'AdminCreateThirdPartyConfig' test.out

#- 72 AdminDeleteThirdPartyConfig
samples/cli/sample-apps Lobby adminDeleteThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 72 'AdminDeleteThirdPartyConfig' test.out

#- 73 PublicGetMessages
samples/cli/sample-apps Lobby publicGetMessages \
    > test.out 2>&1
eval_tap $? 73 'PublicGetMessages' test.out

#- 74 PublicGetPartyDataV1
samples/cli/sample-apps Lobby publicGetPartyDataV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'nmkmX7Cw' \
    > test.out 2>&1
eval_tap $? 74 'PublicGetPartyDataV1' test.out

#- 75 PublicUpdatePartyAttributesV1
samples/cli/sample-apps Lobby publicUpdatePartyAttributesV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'L3BgSUSM' \
    --body '{"custom_attribute": {"4dnqq4pj": {}, "VDXW4CYB": {}, "C8lGxwMH": {}}, "updatedAt": 84}' \
    > test.out 2>&1
eval_tap $? 75 'PublicUpdatePartyAttributesV1' test.out

#- 76 PublicSetPartyLimitV1
samples/cli/sample-apps Lobby publicSetPartyLimitV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'j9J5U10w' \
    --body '{"limit": 57}' \
    > test.out 2>&1
eval_tap $? 76 'PublicSetPartyLimitV1' test.out

#- 77 PublicGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby publicGetPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 77 'PublicGetPlayerBlockedPlayersV1' test.out

#- 78 PublicGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby publicGetPlayerBlockedByPlayersV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 78 'PublicGetPlayerBlockedByPlayersV1' test.out

#- 79 UsersPresenceHandlerV1
samples/cli/sample-apps Lobby usersPresenceHandlerV1 \
    --namespace $AB_NAMESPACE \
    --countOnly 'true' \
    --userIds 'wowy9Qyo' \
    > test.out 2>&1
eval_tap $? 79 'UsersPresenceHandlerV1' test.out

#- 80 FreeFormNotification
samples/cli/sample-apps Lobby freeFormNotification \
    --namespace $AB_NAMESPACE \
    --body '{"message": "H7YbHuOt", "topic": "bBidCQbe"}' \
    > test.out 2>&1
eval_tap $? 80 'FreeFormNotification' test.out

#- 81 NotificationWithTemplate
samples/cli/sample-apps Lobby notificationWithTemplate \
    --namespace $AB_NAMESPACE \
    --body '{"templateContext": {"Rm6LxWbz": "x0oKc5yV", "qpj7qxUb": "6jEGsGOI", "yqgww2WO": "LCk7bnEg"}, "templateLanguage": "Jt9thhK8", "templateSlug": "kerK7oXL", "topic": "Yhkwhd8v"}' \
    > test.out 2>&1
eval_tap $? 81 'NotificationWithTemplate' test.out

#- 82 GetGameTemplate
samples/cli/sample-apps Lobby getGameTemplate \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 82 'GetGameTemplate' test.out

#- 83 CreateTemplate
samples/cli/sample-apps Lobby createTemplate \
    --namespace $AB_NAMESPACE \
    --body '{"templateContent": "GjIHILtT", "templateLanguage": "bEEa6WnI", "templateSlug": "ZpmoGmwf"}' \
    > test.out 2>&1
eval_tap $? 83 'CreateTemplate' test.out

#- 84 GetSlugTemplate
samples/cli/sample-apps Lobby getSlugTemplate \
    --namespace $AB_NAMESPACE \
    --templateSlug 'Xy0G24bl' \
    --after 'Afq0GjJg' \
    --before 'XOLJpwuT' \
    --limit '44' \
    > test.out 2>&1
eval_tap $? 84 'GetSlugTemplate' test.out

#- 85 DeleteTemplateSlug
samples/cli/sample-apps Lobby deleteTemplateSlug \
    --namespace $AB_NAMESPACE \
    --templateSlug 'RYv4uSkC' \
    > test.out 2>&1
eval_tap $? 85 'DeleteTemplateSlug' test.out

#- 86 GetLocalizationTemplate
samples/cli/sample-apps Lobby getLocalizationTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'juanOvRM' \
    --templateSlug '435e6b2W' \
    > test.out 2>&1
eval_tap $? 86 'GetLocalizationTemplate' test.out

#- 87 UpdateLocalizationTemplate
samples/cli/sample-apps Lobby updateLocalizationTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage '4NbBXswN' \
    --templateSlug '5fvkjQo5' \
    --body '{"templateContent": "TXur6ly2"}' \
    > test.out 2>&1
eval_tap $? 87 'UpdateLocalizationTemplate' test.out

#- 88 DeleteTemplateLocalization
samples/cli/sample-apps Lobby deleteTemplateLocalization \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'icnOZak7' \
    --templateSlug 'PFMSR8Zj' \
    > test.out 2>&1
eval_tap $? 88 'DeleteTemplateLocalization' test.out

#- 89 PublishTemplate
samples/cli/sample-apps Lobby publishTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage '1fZ6I9ZN' \
    --templateSlug '0q1a7RTl' \
    > test.out 2>&1
eval_tap $? 89 'PublishTemplate' test.out

#- 90 GetTopicByNamespace
samples/cli/sample-apps Lobby getTopicByNamespace \
    --namespace $AB_NAMESPACE \
    --after 'GriLKrrm' \
    --before '9Hm2gwYv' \
    --limit '82' \
    > test.out 2>&1
eval_tap $? 90 'GetTopicByNamespace' test.out

#- 91 CreateTopic
samples/cli/sample-apps Lobby createTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "p6hKn1IR", "topic": "OPXizNQn"}' \
    > test.out 2>&1
eval_tap $? 91 'CreateTopic' test.out

#- 92 GetTopicByTopicName
samples/cli/sample-apps Lobby getTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'C24TSUSO' \
    > test.out 2>&1
eval_tap $? 92 'GetTopicByTopicName' test.out

#- 93 UpdateTopicByTopicName
samples/cli/sample-apps Lobby updateTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'AAR1dcSO' \
    --body '{"description": "MtrgRjiK"}' \
    > test.out 2>&1
eval_tap $? 93 'UpdateTopicByTopicName' test.out

#- 94 DeleteTopicByTopicName
samples/cli/sample-apps Lobby deleteTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'EjMfxULA' \
    > test.out 2>&1
eval_tap $? 94 'DeleteTopicByTopicName' test.out

#- 95 FreeFormNotificationByUserID
samples/cli/sample-apps Lobby freeFormNotificationByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'opl9Uwjm' \
    --body '{"message": "1Ieq7zsj", "topic": "6ac7z6Nu"}' \
    > test.out 2>&1
eval_tap $? 95 'FreeFormNotificationByUserID' test.out

#- 96 NotificationWithTemplateByUserID
samples/cli/sample-apps Lobby notificationWithTemplateByUserID \
    --namespace $AB_NAMESPACE \
    --userId '4VtbBdMJ' \
    --body '{"templateContext": {"4ioDJ1pq": "JEUeWWjV", "XxZ4KCqE": "aTNpzdXC", "fbivCZV0": "olQ52agl"}, "templateLanguage": "vEPyAK08", "templateSlug": "mT3191T0", "topic": "GT6rsaCV"}' \
    > test.out 2>&1
eval_tap $? 96 'NotificationWithTemplateByUserID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE