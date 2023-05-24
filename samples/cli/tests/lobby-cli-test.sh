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
    --limit '79' \
    --offset '86' \
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
    --body '{"friendId": "IZr513eVoHacXKHg", "friendPublicId": "bZjH8H4G8pt5zyX6"}' \
    > test.out 2>&1
eval_tap $? 7 'UserRequestFriend' test.out

#- 8 UserAcceptFriendRequest
samples/cli/sample-apps Lobby userAcceptFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "o7KWMqb3AWuJa96M"}' \
    > test.out 2>&1
eval_tap $? 8 'UserAcceptFriendRequest' test.out

#- 9 UserCancelFriendRequest
samples/cli/sample-apps Lobby userCancelFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "M8zbNOPOhwPhK4F9"}' \
    > test.out 2>&1
eval_tap $? 9 'UserCancelFriendRequest' test.out

#- 10 UserRejectFriendRequest
samples/cli/sample-apps Lobby userRejectFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "Q249RzuqHHa0VeOD"}' \
    > test.out 2>&1
eval_tap $? 10 'UserRejectFriendRequest' test.out

#- 11 UserGetFriendshipStatus
samples/cli/sample-apps Lobby userGetFriendshipStatus \
    --friendId 'YOv4RUYTRH10pZv4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'UserGetFriendshipStatus' test.out

#- 12 UserUnfriendRequest
samples/cli/sample-apps Lobby userUnfriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "y8zZgcMfGFjQk2Sd"}' \
    > test.out 2>&1
eval_tap $? 12 'UserUnfriendRequest' test.out

#- 13 AddFriendsWithoutConfirmation
samples/cli/sample-apps Lobby addFriendsWithoutConfirmation \
    --namespace $AB_NAMESPACE \
    --userId 'XAe9qDCF8nhqYYj7' \
    --body '{"friendIds": ["3dHQ9tPL2BTqkwCb", "iIHO89dYt4prydrA", "1f1BEbSh04VMxG7j"]}' \
    > test.out 2>&1
eval_tap $? 13 'AddFriendsWithoutConfirmation' test.out

#- 14 PersonalChatHistory
samples/cli/sample-apps Lobby personalChatHistory \
    --friendId 'Va0ARNeVumAJI8GF' \
    --namespace $AB_NAMESPACE \
    --userId 'LyROw739T9QNGHwH' \
    > test.out 2>&1
eval_tap $? 14 'PersonalChatHistory' test.out

#- 15 AdminChatHistory
samples/cli/sample-apps Lobby adminChatHistory \
    --friendId 'KwfkLiKIAGz6HjNC' \
    --namespace $AB_NAMESPACE \
    --userId '39LMLEKKzsfuebVU' \
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
    --body '{"allowInviteNonConnectedUser": true, "allowJoinPartyDuringMatchmaking": false, "autoKickOnDisconnect": true, "autoKickOnDisconnectDelay": 39, "cancelTicketOnDisconnect": true, "chatRateLimitBurst": 31, "chatRateLimitDuration": 1, "concurrentUsersLimit": 13, "disableInvitationOnJoinParty": false, "enableChat": true, "entitlementCheck": true, "entitlementItemID": "GIZ66OPmx85SaEef", "generalRateLimitBurst": 62, "generalRateLimitDuration": 19, "keepPresenceActivityOnDisconnect": false, "maxDSWaitTime": 36, "maxPartyMember": 26, "profanityFilter": true, "readyConsentTimeout": 63}' \
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
    --userId 'IU8M1IJGBXxFqAQS' \
    --limit '85' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 21 'GetListOfFriends' test.out

#- 22 SendMultipleUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendMultipleUsersFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"message": "N7IbjAxZbB711VwI", "topicName": "Fr35RcO8LP19fK9V", "userIds": ["agCAmoO63Dn8xYxC", "dEf4YoXrfnZxXWNM", "rCb6gMabYQqGO5k7"]}' \
    > test.out 2>&1
eval_tap $? 22 'SendMultipleUsersFreeformNotificationV1Admin' test.out

#- 23 SendUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"message": "JiJU22qQSb9gV1RW", "topicName": "iRT5deTblWXmKRNn"}' \
    > test.out 2>&1
eval_tap $? 23 'SendUsersFreeformNotificationV1Admin' test.out

#- 24 SendPartyFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --partyId 'mKFWOZxhlBimP08k' \
    --body '{"message": "uyTplj0kOb6CrzX1", "topicName": "uXj95Apb9WeoSlar"}' \
    > test.out 2>&1
eval_tap $? 24 'SendPartyFreeformNotificationV1Admin' test.out

#- 25 SendPartyTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --partyId 'lGCHwdeXpX3BjGTf' \
    --body '{"templateContext": {"SzvXNeutLu1JSpBZ": "Yxr2B5Nhpd0pOYOO", "xfLV56AtwnAd4Lwo": "l1fwFzwoTvQa6Ges", "dSPqU6iBXV5NEK79": "m8BasECkVV5bVcbe"}, "templateLanguage": "wKgNMm5LosPBGpxt", "templateSlug": "mSqzf3Dnr1lr2GSv", "topicName": "MKbFUGck4vBx3TRp"}' \
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
    --body '{"templateContent": "iT8pwJ1xZAX1siuP", "templateLanguage": "3Gb4bofj9YWM9cAF", "templateSlug": "Q3Wk7YnBlGBWhE2K"}' \
    > test.out 2>&1
eval_tap $? 27 'CreateNotificationTemplateV1Admin' test.out

#- 28 SendUsersTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"templateContext": {"qzQo5RE1a9jAeaWs": "vd8vBqGYe5uXssi3", "BdOnEeXhaklRUUZN": "wqh33JrJyupvEHye", "iKbVoURBrTaDaU0r": "doP5klNbh3RNVqID"}, "templateLanguage": "KZ15AWU4rh5xOZMQ", "templateSlug": "fGYTRiT7PMnIggxq", "topicName": "8XNc9UYhmnzflV1k"}' \
    > test.out 2>&1
eval_tap $? 28 'SendUsersTemplatedNotificationV1Admin' test.out

#- 29 GetTemplateSlugLocalizationsTemplateV1Admin
samples/cli/sample-apps Lobby getTemplateSlugLocalizationsTemplateV1Admin \
    --namespace $AB_NAMESPACE \
    --templateSlug '0Ma7suN6Oo5kiI9b' \
    --after 'ceSIRq8APFJvUC3Q' \
    --before 'z68oHVHz0e26BiB9' \
    --limit '66' \
    > test.out 2>&1
eval_tap $? 29 'GetTemplateSlugLocalizationsTemplateV1Admin' test.out

#- 30 DeleteNotificationTemplateSlugV1Admin
samples/cli/sample-apps Lobby deleteNotificationTemplateSlugV1Admin \
    --namespace $AB_NAMESPACE \
    --templateSlug '6HNAl1WWB5INr05u' \
    > test.out 2>&1
eval_tap $? 30 'DeleteNotificationTemplateSlugV1Admin' test.out

#- 31 GetSingleTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby getSingleTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'GXwGXDNyRmRuW1pK' \
    --templateSlug 'lVlWI0UvzfcsAvpK' \
    > test.out 2>&1
eval_tap $? 31 'GetSingleTemplateLocalizationV1Admin' test.out

#- 32 UpdateTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby updateTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'RgM7xBks8b5haIsP' \
    --templateSlug '2j2ffBE6X9zdL9IO' \
    --body '{"templateContent": "Y726hmHv5SnxoBgK"}' \
    > test.out 2>&1
eval_tap $? 32 'UpdateTemplateLocalizationV1Admin' test.out

#- 33 DeleteTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby deleteTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'u1NP87OmehcMw9k1' \
    --templateSlug 'fc9AFB5cyAtkzy8n' \
    > test.out 2>&1
eval_tap $? 33 'DeleteTemplateLocalizationV1Admin' test.out

#- 34 PublishTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby publishTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'xKzoNzudA74ZZHj8' \
    --templateSlug 'sy6VZeS1qRGZzGKX' \
    > test.out 2>&1
eval_tap $? 34 'PublishTemplateLocalizationV1Admin' test.out

#- 35 GetAllNotificationTopicsV1Admin
samples/cli/sample-apps Lobby getAllNotificationTopicsV1Admin \
    --namespace $AB_NAMESPACE \
    --after 'Q97YFAp3KL3GtKvB' \
    --before 'DadI9WsCvx0e5lkz' \
    --limit '19' \
    > test.out 2>&1
eval_tap $? 35 'GetAllNotificationTopicsV1Admin' test.out

#- 36 CreateNotificationTopicV1Admin
samples/cli/sample-apps Lobby createNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"description": "4H1xK7NuQKYkg2LR", "topicName": "fiiYl1smlnNYcTdO"}' \
    > test.out 2>&1
eval_tap $? 36 'CreateNotificationTopicV1Admin' test.out

#- 37 GetNotificationTopicV1Admin
samples/cli/sample-apps Lobby getNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'o499wmmINkPq9mHp' \
    > test.out 2>&1
eval_tap $? 37 'GetNotificationTopicV1Admin' test.out

#- 38 UpdateNotificationTopicV1Admin
samples/cli/sample-apps Lobby updateNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'uyu9zLsqCUmDM4VZ' \
    --body '{"description": "T6Sa2RCyxRdmWn9o"}' \
    > test.out 2>&1
eval_tap $? 38 'UpdateNotificationTopicV1Admin' test.out

#- 39 DeleteNotificationTopicV1Admin
samples/cli/sample-apps Lobby deleteNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'Snv5aKwEIpE5Zyy2' \
    > test.out 2>&1
eval_tap $? 39 'DeleteNotificationTopicV1Admin' test.out

#- 40 SendSpecificUserFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --userId 'MJFSQkGNmRe0fnND' \
    --body '{"message": "jIuqD5u0WU31oBvz", "topicName": "Ro7FO54oBFrLJrss"}' \
    > test.out 2>&1
eval_tap $? 40 'SendSpecificUserFreeformNotificationV1Admin' test.out

#- 41 SendSpecificUserTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --userId 'F6FvLCYkry9SxIhU' \
    --body '{"templateContext": {"lUkRmrAbCTd1D3FD": "EX9G2t2O6PKU0EEX", "X4zgDr6KFjz2AUN4": "1BTFWPeJKXBKPWAl", "yZi0rh66C09MDnkB": "JMuDjWKiLUtcWgdK"}, "templateLanguage": "ycAAUzNfokujmIfV", "templateSlug": "WU1E3Oc8CAA71M6y", "topicName": "NjFnvlCR5woyaP8U"}' \
    > test.out 2>&1
eval_tap $? 41 'SendSpecificUserTemplatedNotificationV1Admin' test.out

#- 42 AdminGetPartyDataV1
samples/cli/sample-apps Lobby adminGetPartyDataV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'JQSz9rzZbaIfZvWn' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetPartyDataV1' test.out

#- 43 AdminUpdatePartyAttributesV1
samples/cli/sample-apps Lobby adminUpdatePartyAttributesV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'MuAfHOBsfxwzDaPR' \
    --body '{"custom_attribute": {"y7T6niN9lHFpYdbD": {}, "qI2jc1Km2hs7QWF1": {}, "HdDMQ43diA429fKN": {}}, "updatedAt": 92}' \
    > test.out 2>&1
eval_tap $? 43 'AdminUpdatePartyAttributesV1' test.out

#- 44 AdminJoinPartyV1
samples/cli/sample-apps Lobby adminJoinPartyV1 \
    --namespace $AB_NAMESPACE \
    --partyId '0YzLNSorwiJbpbLO' \
    --userId 'QsqU4O8gBgGQckBX' \
    > test.out 2>&1
eval_tap $? 44 'AdminJoinPartyV1' test.out

#- 45 AdminGetUserPartyV1
samples/cli/sample-apps Lobby adminGetUserPartyV1 \
    --namespace $AB_NAMESPACE \
    --userId 'kfzKxrUsF95yWqk3' \
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
    --userId 'HQuAOsvHhoQ7Ze6H' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetAllPlayerSessionAttribute' test.out

#- 48 AdminSetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminSetPlayerSessionAttribute \
    --namespace $AB_NAMESPACE \
    --userId 'DFnkDXN8rAwcuTbk' \
    --body '{"attributes": {"MFq9h43sz2Q8gF7N": "4WgzS7csmHASARB4", "qCi767YB6LYND4V6": "oQHfZRWaXiHFF6uk", "TULpZdspyRYMZcLK": "JRVC7dha9sJEGDiT"}}' \
    > test.out 2>&1
eval_tap $? 48 'AdminSetPlayerSessionAttribute' test.out

#- 49 AdminGetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetPlayerSessionAttribute \
    --attribute 'ev3aUtePmdTDWayA' \
    --namespace $AB_NAMESPACE \
    --userId 'tho1z4SRbuGz505V' \
    > test.out 2>&1
eval_tap $? 49 'AdminGetPlayerSessionAttribute' test.out

#- 50 AdminGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'kwiyJVRyjDmfIzWW' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetPlayerBlockedPlayersV1' test.out

#- 51 AdminGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedByPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'nxR7eLNaqyjrIMoJ' \
    > test.out 2>&1
eval_tap $? 51 'AdminGetPlayerBlockedByPlayersV1' test.out

#- 52 AdminBulkBlockPlayersV1
samples/cli/sample-apps Lobby adminBulkBlockPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Ig5OqSehGbfbe49n' \
    --body '{"listBlockedUserId": ["LNL4a44M33IWLC6Z", "AEI1ajVKqn05DMKo", "l4IJqlMhXBgnBMnH"]}' \
    > test.out 2>&1
eval_tap $? 52 'AdminBulkBlockPlayersV1' test.out

#- 53 AdminDebugProfanityFilters
samples/cli/sample-apps Lobby adminDebugProfanityFilters \
    --namespace $AB_NAMESPACE \
    --body '{"text": "guGQIW5FwNujuwPm"}' \
    > test.out 2>&1
eval_tap $? 53 'AdminDebugProfanityFilters' test.out

#- 54 AdminGetProfanityListFiltersV1
samples/cli/sample-apps Lobby adminGetProfanityListFiltersV1 \
    --list 'WyEodvsP7piTME1i' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 54 'AdminGetProfanityListFiltersV1' test.out

#- 55 AdminAddProfanityFilterIntoList
samples/cli/sample-apps Lobby adminAddProfanityFilterIntoList \
    --list 'HFl7Mzaf14TwIoLy' \
    --namespace $AB_NAMESPACE \
    --body '{"filter": "qo2ulu2mr2GktRXd", "note": "1rAysFNatHZdTMbg"}' \
    > test.out 2>&1
eval_tap $? 55 'AdminAddProfanityFilterIntoList' test.out

#- 56 AdminAddProfanityFilters
samples/cli/sample-apps Lobby adminAddProfanityFilters \
    --list 'VosyKWftLjeuWGEE' \
    --namespace $AB_NAMESPACE \
    --body '{"filters": [{"filter": "ruG0HqGYtxleuIgW", "note": "mbqs8RblzkBOfH1C"}, {"filter": "4GI947nqdCU3bjIg", "note": "oRLdp2IatBde77YP"}, {"filter": "GuJihUoT7KUjmBr6", "note": "mdzjKaGV0db1BC9g"}]}' \
    > test.out 2>&1
eval_tap $? 56 'AdminAddProfanityFilters' test.out

#- 57 AdminImportProfanityFiltersFromFile
samples/cli/sample-apps Lobby adminImportProfanityFiltersFromFile \
    --list 'yN52paYe6PZ0T5Jv' \
    --namespace $AB_NAMESPACE \
    --body '[66, 37, 29]' \
    > test.out 2>&1
eval_tap $? 57 'AdminImportProfanityFiltersFromFile' test.out

#- 58 AdminDeleteProfanityFilter
samples/cli/sample-apps Lobby adminDeleteProfanityFilter \
    --list 'ZeWzqlEA8mhTlok5' \
    --namespace $AB_NAMESPACE \
    --body '{"filter": "h4v2S5UNeAxkZHbZ"}' \
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
    --body '{"isEnabled": false, "isMandatory": false, "name": "e24XTWlb1ErvvKJx"}' \
    > test.out 2>&1
eval_tap $? 60 'AdminCreateProfanityList' test.out

#- 61 AdminUpdateProfanityList
samples/cli/sample-apps Lobby adminUpdateProfanityList \
    --list 'bMGLsIUydo8SxM4y' \
    --namespace $AB_NAMESPACE \
    --body '{"isEnabled": true, "isMandatory": true, "newName": "zYk1vL7MJ3hagrD3"}' \
    > test.out 2>&1
eval_tap $? 61 'AdminUpdateProfanityList' test.out

#- 62 AdminDeleteProfanityList
samples/cli/sample-apps Lobby adminDeleteProfanityList \
    --list 'sUORjHPgzvEsNvWj' \
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
    --body '{"rule": "z3BObOb58ofuYLGe"}' \
    > test.out 2>&1
eval_tap $? 64 'AdminSetProfanityRuleForNamespace' test.out

#- 65 AdminVerifyMessageProfanityResponse
samples/cli/sample-apps Lobby adminVerifyMessageProfanityResponse \
    --namespace $AB_NAMESPACE \
    --body '{"message": "z6bn9szgrO9mvxbD", "profanityLevel": "iyQmvC5bQZiEEMdH"}' \
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
    --body '{"apiKey": "mlYfz3uEYGTQT46t"}' \
    > test.out 2>&1
eval_tap $? 67 'AdminUpdateThirdPartyConfig' test.out

#- 68 AdminCreateThirdPartyConfig
samples/cli/sample-apps Lobby adminCreateThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    --body '{"apiKey": "jZGCVyULbMqUf6vQ"}' \
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
    --friendId 'NLjHF4A15L1QGQ98' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'GetPersonalChatHistoryV1Public' test.out

#- 72 PublicGetPartyDataV1
samples/cli/sample-apps Lobby publicGetPartyDataV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'OSI89DhTjosG35JL' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetPartyDataV1' test.out

#- 73 PublicUpdatePartyAttributesV1
samples/cli/sample-apps Lobby publicUpdatePartyAttributesV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'KZ58mDA5tti4mF9N' \
    --body '{"custom_attribute": {"jTyviJAwgKduZO6d": {}, "ht7HTX9cVOdMjOIQ": {}, "xyj84m5dNxHTykJB": {}}, "updatedAt": 97}' \
    > test.out 2>&1
eval_tap $? 73 'PublicUpdatePartyAttributesV1' test.out

#- 74 PublicSetPartyLimitV1
samples/cli/sample-apps Lobby publicSetPartyLimitV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'vbXZG8lsmSbn2MfV' \
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
    --countOnly 'true' \
    --userIds 'x45DAxjGQD4ppj3k' \
    > test.out 2>&1
eval_tap $? 77 'UsersPresenceHandlerV1' test.out

#- 78 FreeFormNotification
samples/cli/sample-apps Lobby freeFormNotification \
    --namespace $AB_NAMESPACE \
    --body '{"message": "I1bUG4oi1ljqU4If", "topic": "uMHXeoldXrYP9QW3"}' \
    > test.out 2>&1
eval_tap $? 78 'FreeFormNotification' test.out

#- 79 NotificationWithTemplate
samples/cli/sample-apps Lobby notificationWithTemplate \
    --namespace $AB_NAMESPACE \
    --body '{"templateContext": {"S95ixEaQneLeRWZn": "jQF8QzREHP8PRe3M", "kCaiO0u2jDygfuXM": "GazF6ExuzWkEzrE4", "aLwh0WX1D30UT331": "b1YuRq8VXNIcSiBX"}, "templateLanguage": "NJwgohlz0bZJyVyS", "templateSlug": "8KF9C4NfPwBK8Rll", "topic": "6bEXcGJuLmpLXY8d"}' \
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
    --body '{"templateContent": "jIMKwTzliBRUw2ym", "templateLanguage": "HZxSG7s0Qg23U7tH", "templateSlug": "ewP4saLZi27ShWlO"}' \
    > test.out 2>&1
eval_tap $? 81 'CreateTemplate' test.out

#- 82 GetSlugTemplate
samples/cli/sample-apps Lobby getSlugTemplate \
    --namespace $AB_NAMESPACE \
    --templateSlug 'F73KSjjn1A4G45Ul' \
    --after 'EHS77ePBeGIhrs9N' \
    --before 'cdT4henQC55hOJZq' \
    --limit '2' \
    > test.out 2>&1
eval_tap $? 82 'GetSlugTemplate' test.out

#- 83 DeleteTemplateSlug
samples/cli/sample-apps Lobby deleteTemplateSlug \
    --namespace $AB_NAMESPACE \
    --templateSlug 'VZstCJoSHEJnk77v' \
    > test.out 2>&1
eval_tap $? 83 'DeleteTemplateSlug' test.out

#- 84 GetLocalizationTemplate
samples/cli/sample-apps Lobby getLocalizationTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'OA3atey1KLileHzw' \
    --templateSlug 'G84GOS6EXMiNiiAy' \
    > test.out 2>&1
eval_tap $? 84 'GetLocalizationTemplate' test.out

#- 85 UpdateLocalizationTemplate
samples/cli/sample-apps Lobby updateLocalizationTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'tcmAL1ZfaDuLTzuk' \
    --templateSlug 'DRv1NOLY0z3L1JYM' \
    --body '{"templateContent": "qCwT30VoQFNnp4AC"}' \
    > test.out 2>&1
eval_tap $? 85 'UpdateLocalizationTemplate' test.out

#- 86 DeleteTemplateLocalization
samples/cli/sample-apps Lobby deleteTemplateLocalization \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'KVhIpD7jipjCdIZd' \
    --templateSlug 'ON0V6bcVIz7ogLeT' \
    > test.out 2>&1
eval_tap $? 86 'DeleteTemplateLocalization' test.out

#- 87 PublishTemplate
samples/cli/sample-apps Lobby publishTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage '0D0aZmB2lJKUkPea' \
    --templateSlug 'OWXsFQBtgWHw01rn' \
    > test.out 2>&1
eval_tap $? 87 'PublishTemplate' test.out

#- 88 GetTopicByNamespace
samples/cli/sample-apps Lobby getTopicByNamespace \
    --namespace $AB_NAMESPACE \
    --after 'DBmq2yCtxL9X8wmo' \
    --before 'pOjD9kn6ifoDwlRc' \
    --limit '34' \
    > test.out 2>&1
eval_tap $? 88 'GetTopicByNamespace' test.out

#- 89 CreateTopic
samples/cli/sample-apps Lobby createTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "50BsO3upimGh19cA", "topic": "M4PpUmiArVB0ul8a"}' \
    > test.out 2>&1
eval_tap $? 89 'CreateTopic' test.out

#- 90 GetTopicByTopicName
samples/cli/sample-apps Lobby getTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'qBHEByOAMP2IukU7' \
    > test.out 2>&1
eval_tap $? 90 'GetTopicByTopicName' test.out

#- 91 UpdateTopicByTopicName
samples/cli/sample-apps Lobby updateTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'hYhWTpKlVSHI6e8h' \
    --body '{"description": "D4Wpymco4tuo8XXN"}' \
    > test.out 2>&1
eval_tap $? 91 'UpdateTopicByTopicName' test.out

#- 92 DeleteTopicByTopicName
samples/cli/sample-apps Lobby deleteTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic '5PcfQT3vgD09AXkr' \
    > test.out 2>&1
eval_tap $? 92 'DeleteTopicByTopicName' test.out

#- 93 FreeFormNotificationByUserID
samples/cli/sample-apps Lobby freeFormNotificationByUserID \
    --namespace $AB_NAMESPACE \
    --userId '6KVXh8H9D3fP2rb7' \
    --body '{"message": "wU4X9NHgQxLNCHGF", "topic": "nzxMUI9w5n5q60pB"}' \
    > test.out 2>&1
eval_tap $? 93 'FreeFormNotificationByUserID' test.out

#- 94 NotificationWithTemplateByUserID
samples/cli/sample-apps Lobby notificationWithTemplateByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'KF2zU108Be1eaO6A' \
    --body '{"templateContext": {"EsIdQOkKFbLsRs3X": "R4bvEOieDRes1GAY", "eXIGOWNedX80puel": "ON0UzLNORpSdqZCJ", "m3HvSsQHiofr6c5S": "dysnySIKgSD44YTP"}, "templateLanguage": "WlSIWycIHS4edGTI", "templateSlug": "oiwYQSveyJGuqkmA", "topic": "aug2eTgrSfP7tqLZ"}' \
    > test.out 2>&1
eval_tap $? 94 'NotificationWithTemplateByUserID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE