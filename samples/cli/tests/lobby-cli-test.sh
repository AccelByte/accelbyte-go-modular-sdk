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
echo "1..95"

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
    --limit '65' \
    --offset '99' \
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

#- 7 GetUserFriendsWithPlatform
samples/cli/sample-apps Lobby getUserFriendsWithPlatform \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetUserFriendsWithPlatform' test.out

#- 8 UserRequestFriend
samples/cli/sample-apps Lobby userRequestFriend \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "cD2xmspoy3ZtlnBf", "friendPublicId": "U1MnHDgUGsajd4dS"}' \
    > test.out 2>&1
eval_tap $? 8 'UserRequestFriend' test.out

#- 9 UserAcceptFriendRequest
samples/cli/sample-apps Lobby userAcceptFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "3SjWv1BeB1l2FKs6"}' \
    > test.out 2>&1
eval_tap $? 9 'UserAcceptFriendRequest' test.out

#- 10 UserCancelFriendRequest
samples/cli/sample-apps Lobby userCancelFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "Mr28V56MjuOLM8lB"}' \
    > test.out 2>&1
eval_tap $? 10 'UserCancelFriendRequest' test.out

#- 11 UserRejectFriendRequest
samples/cli/sample-apps Lobby userRejectFriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "QW0lhpjvrb573xXZ"}' \
    > test.out 2>&1
eval_tap $? 11 'UserRejectFriendRequest' test.out

#- 12 UserGetFriendshipStatus
samples/cli/sample-apps Lobby userGetFriendshipStatus \
    --friendId 'W9hwPkq19AAesGlj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'UserGetFriendshipStatus' test.out

#- 13 UserUnfriendRequest
samples/cli/sample-apps Lobby userUnfriendRequest \
    --namespace $AB_NAMESPACE \
    --body '{"friendId": "X0jMWYR1Wxmdl9xH"}' \
    > test.out 2>&1
eval_tap $? 13 'UserUnfriendRequest' test.out

#- 14 AddFriendsWithoutConfirmation
samples/cli/sample-apps Lobby addFriendsWithoutConfirmation \
    --namespace $AB_NAMESPACE \
    --userId 'J0ebvg6oQutcjOxX' \
    --body '{"friendIds": ["wlYOpTSggQqF3D3j", "PejWGvslvPzJPtWB", "jRTjoJujrGPJ2Dfn"]}' \
    > test.out 2>&1
eval_tap $? 14 'AddFriendsWithoutConfirmation' test.out

#- 15 AdminGetAllConfigV1
samples/cli/sample-apps Lobby adminGetAllConfigV1 \
    > test.out 2>&1
eval_tap $? 15 'AdminGetAllConfigV1' test.out

#- 16 AdminGetConfigV1
samples/cli/sample-apps Lobby adminGetConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetConfigV1' test.out

#- 17 AdminUpdateConfigV1
samples/cli/sample-apps Lobby adminUpdateConfigV1 \
    --namespace $AB_NAMESPACE \
    --body '{"allowInviteNonConnectedUser": false, "allowJoinPartyDuringMatchmaking": true, "autoKickOnDisconnect": false, "autoKickOnDisconnectDelay": 78, "cancelTicketOnDisconnect": false, "chatRateLimitBurst": 94, "chatRateLimitDuration": 5, "concurrentUsersLimit": 89, "disableInvitationOnJoinParty": true, "enableChat": true, "entitlementCheck": true, "entitlementItemID": "l0AsQAZU9QY1BxxC", "generalRateLimitBurst": 5, "generalRateLimitDuration": 5, "keepPresenceActivityOnDisconnect": false, "maxDSWaitTime": 79, "maxPartyMember": 39, "profanityFilter": true, "readyConsentTimeout": 48, "unregisterDelay": 13}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateConfigV1' test.out

#- 18 AdminExportConfigV1
samples/cli/sample-apps Lobby adminExportConfigV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminExportConfigV1' test.out

#- 19 AdminImportConfigV1
samples/cli/sample-apps Lobby adminImportConfigV1 \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    > test.out 2>&1
eval_tap $? 19 'AdminImportConfigV1' test.out

#- 20 GetListOfFriends
samples/cli/sample-apps Lobby getListOfFriends \
    --namespace $AB_NAMESPACE \
    --userId 'OGlGnp33aHdgoRZG' \
    --limit '82' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 20 'GetListOfFriends' test.out

#- 21 GetIncomingFriendRequests
samples/cli/sample-apps Lobby getIncomingFriendRequests \
    --namespace $AB_NAMESPACE \
    --userId 'MJ6BGfxJtZ8aKgoN' \
    --limit '5' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 21 'GetIncomingFriendRequests' test.out

#- 22 GetOutgoingFriendRequests
samples/cli/sample-apps Lobby getOutgoingFriendRequests \
    --namespace $AB_NAMESPACE \
    --userId 'h8QefdVZknuPjYM4' \
    --limit '94' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 22 'GetOutgoingFriendRequests' test.out

#- 23 SendMultipleUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendMultipleUsersFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"message": "f0yrjH2kJZZ32anu", "topicName": "dmqLo0SEJImLlAFx", "userIds": ["1Xi4X4xJgQP3Zpbl", "d45faF85Uv7MNLuU", "cLaEsI7i5p8bATus"]}' \
    > test.out 2>&1
eval_tap $? 23 'SendMultipleUsersFreeformNotificationV1Admin' test.out

#- 24 SendUsersFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"message": "ZiHd89MEGZ2xZ0vf", "topicName": "BMTT4oAVuSJlyHSG"}' \
    > test.out 2>&1
eval_tap $? 24 'SendUsersFreeformNotificationV1Admin' test.out

#- 25 SendPartyFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --partyId '4Cv7z49m8ywQJZWd' \
    --body '{"message": "rl5S5mYK5qq5dyGM", "topicName": "nUSEWmquMUFpoUeU"}' \
    > test.out 2>&1
eval_tap $? 25 'SendPartyFreeformNotificationV1Admin' test.out

#- 26 SendPartyTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendPartyTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --partyId 'h2EWjhYuHHGWzznD' \
    --body '{"templateContext": {"emfEycp2gXybVNEX": "eiE9UgMNgVSSGpGu", "gG3nXbSZ41do5HsU": "5Sn3GFFrPDxSQqyy", "pOFzwcIghWRkO790": "skx6HxVmGSWj0d5j"}, "templateLanguage": "hNhjB8K2URRfSXcb", "templateSlug": "AnGuXQb4R1tvmLXZ", "topicName": "aICVyJKgRTBa0Ck9"}' \
    > test.out 2>&1
eval_tap $? 26 'SendPartyTemplatedNotificationV1Admin' test.out

#- 27 GetAllNotificationTemplatesV1Admin
samples/cli/sample-apps Lobby getAllNotificationTemplatesV1Admin \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'GetAllNotificationTemplatesV1Admin' test.out

#- 28 CreateNotificationTemplateV1Admin
samples/cli/sample-apps Lobby createNotificationTemplateV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"templateContent": "NaWutKjBq0HvtgV8", "templateLanguage": "krpZUFtuVlMj2MEQ", "templateSlug": "mTJME9Y3Njt9xqre"}' \
    > test.out 2>&1
eval_tap $? 28 'CreateNotificationTemplateV1Admin' test.out

#- 29 SendUsersTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendUsersTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"templateContext": {"T3gTXCQcQaA3Uj7T": "dfol5DhD49MlpUlu", "GKeFm9PLfiIAkiDi": "sZWZqpVFFFDRF27V", "kyhpXHUS5XSo4sNb": "WhVmkgQf8tpdO0gm"}, "templateLanguage": "thlJGz2bPWDHPn4Q", "templateSlug": "L6YGdCL5NP9DyjIy", "topicName": "yaiZcUlUNZVT2MzN"}' \
    > test.out 2>&1
eval_tap $? 29 'SendUsersTemplatedNotificationV1Admin' test.out

#- 30 GetTemplateSlugLocalizationsTemplateV1Admin
samples/cli/sample-apps Lobby getTemplateSlugLocalizationsTemplateV1Admin \
    --namespace $AB_NAMESPACE \
    --templateSlug '0LeDP49TBKw2uh0a' \
    --after 'WePEei0s6AgnrbbC' \
    --before 'B3WfgFK63ky7EoWF' \
    --limit '88' \
    > test.out 2>&1
eval_tap $? 30 'GetTemplateSlugLocalizationsTemplateV1Admin' test.out

#- 31 DeleteNotificationTemplateSlugV1Admin
samples/cli/sample-apps Lobby deleteNotificationTemplateSlugV1Admin \
    --namespace $AB_NAMESPACE \
    --templateSlug 'p1ewfGWxReXqxp3Y' \
    > test.out 2>&1
eval_tap $? 31 'DeleteNotificationTemplateSlugV1Admin' test.out

#- 32 GetSingleTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby getSingleTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'USZfNrrsiYaZmVG8' \
    --templateSlug 'yMTIvL9TANdVVy9K' \
    > test.out 2>&1
eval_tap $? 32 'GetSingleTemplateLocalizationV1Admin' test.out

#- 33 UpdateTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby updateTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'ZZHn42qOx2u3Od3m' \
    --templateSlug 'hNyiwxsk9sK0J3aw' \
    --body '{"templateContent": "hg76ucjM1WLNQsnT"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateTemplateLocalizationV1Admin' test.out

#- 34 DeleteTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby deleteTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'wCr7AJxA6CdK3CHu' \
    --templateSlug 'XI5Zj1gBnV3CU7fr' \
    > test.out 2>&1
eval_tap $? 34 'DeleteTemplateLocalizationV1Admin' test.out

#- 35 PublishTemplateLocalizationV1Admin
samples/cli/sample-apps Lobby publishTemplateLocalizationV1Admin \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'qW2TiycTYX9qpDjo' \
    --templateSlug 'cCVSKunnz1s0XSth' \
    > test.out 2>&1
eval_tap $? 35 'PublishTemplateLocalizationV1Admin' test.out

#- 36 GetAllNotificationTopicsV1Admin
samples/cli/sample-apps Lobby getAllNotificationTopicsV1Admin \
    --namespace $AB_NAMESPACE \
    --after 'N3MUXwP7BtghzWRa' \
    --before '8HFOhpoo3X2OJlU6' \
    --limit '90' \
    > test.out 2>&1
eval_tap $? 36 'GetAllNotificationTopicsV1Admin' test.out

#- 37 CreateNotificationTopicV1Admin
samples/cli/sample-apps Lobby createNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --body '{"description": "3VgCgvsnfWsVMq0F", "topicName": "e2cwCawEi4xJIAMv"}' \
    > test.out 2>&1
eval_tap $? 37 'CreateNotificationTopicV1Admin' test.out

#- 38 GetNotificationTopicV1Admin
samples/cli/sample-apps Lobby getNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName '5QzGmhRmv2LLci6F' \
    > test.out 2>&1
eval_tap $? 38 'GetNotificationTopicV1Admin' test.out

#- 39 UpdateNotificationTopicV1Admin
samples/cli/sample-apps Lobby updateNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'G0KgNP462FhjUH9f' \
    --body '{"description": "k04SDn6tWqr8q4yN"}' \
    > test.out 2>&1
eval_tap $? 39 'UpdateNotificationTopicV1Admin' test.out

#- 40 DeleteNotificationTopicV1Admin
samples/cli/sample-apps Lobby deleteNotificationTopicV1Admin \
    --namespace $AB_NAMESPACE \
    --topicName 'YTa5IapLoI6NI4EI' \
    > test.out 2>&1
eval_tap $? 40 'DeleteNotificationTopicV1Admin' test.out

#- 41 SendSpecificUserFreeformNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserFreeformNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --userId 'CqdFDrcJZHyH89EJ' \
    --body '{"message": "Gl1BT9BXS0Qz3J3R", "topicName": "WZ8ut3zepO4YWJmd"}' \
    > test.out 2>&1
eval_tap $? 41 'SendSpecificUserFreeformNotificationV1Admin' test.out

#- 42 SendSpecificUserTemplatedNotificationV1Admin
samples/cli/sample-apps Lobby sendSpecificUserTemplatedNotificationV1Admin \
    --namespace $AB_NAMESPACE \
    --userId 'zq6fYSmwrBiWLL2R' \
    --body '{"templateContext": {"qkf1adoGg65I8Kcb": "oKxYaIwSLwvWvhm6", "nGlVmqfTX6xmYOAN": "cToPoQZA04fO6QX2", "X9N1DRcEhW1Ybpeu": "nsTEHWnELqMsj5IR"}, "templateLanguage": "jPOqG7atxaM44JTS", "templateSlug": "BFRGUR0wi7O2Z1yh", "topicName": "Hyoibu0Hi1MdP4Na"}' \
    > test.out 2>&1
eval_tap $? 42 'SendSpecificUserTemplatedNotificationV1Admin' test.out

#- 43 AdminGetPartyDataV1
samples/cli/sample-apps Lobby adminGetPartyDataV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'eUspR4LaVWlfvq4z' \
    > test.out 2>&1
eval_tap $? 43 'AdminGetPartyDataV1' test.out

#- 44 AdminUpdatePartyAttributesV1
samples/cli/sample-apps Lobby adminUpdatePartyAttributesV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'l7XX9HAKdl6QhCWJ' \
    --body '{"custom_attribute": {"w6G0gKajR5pTd1wr": {}, "CBCIYZ72EOVI2v6y": {}, "Jx7bA4C5tFTof6Ha": {}}, "updatedAt": 10}' \
    > test.out 2>&1
eval_tap $? 44 'AdminUpdatePartyAttributesV1' test.out

#- 45 AdminJoinPartyV1
samples/cli/sample-apps Lobby adminJoinPartyV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'XgijqfA0OlIjNDhs' \
    --userId 'KhrNxogLZfUv9ndN' \
    > test.out 2>&1
eval_tap $? 45 'AdminJoinPartyV1' test.out

#- 46 AdminGetUserPartyV1
samples/cli/sample-apps Lobby adminGetUserPartyV1 \
    --namespace $AB_NAMESPACE \
    --userId 'JgI9jYyaceCKqbmC' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetUserPartyV1' test.out

#- 47 AdminGetLobbyCCU
samples/cli/sample-apps Lobby adminGetLobbyCCU \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 47 'AdminGetLobbyCCU' test.out

#- 48 AdminGetBulkPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby adminGetBulkPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    --body '{"listBlockedUserId": ["ANVV6ItMcSOoDLGa", "cOCIDToj8Xc35aIa", "rOZUjVUirJpF7imZ"]}' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetBulkPlayerBlockedPlayersV1' test.out

#- 49 AdminGetAllPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetAllPlayerSessionAttribute \
    --namespace $AB_NAMESPACE \
    --userId 'RKx3DWPEzRA03ETD' \
    > test.out 2>&1
eval_tap $? 49 'AdminGetAllPlayerSessionAttribute' test.out

#- 50 AdminSetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminSetPlayerSessionAttribute \
    --namespace $AB_NAMESPACE \
    --userId 'XHH7dv46Kb4DIo7a' \
    --body '{"attributes": {"oXySxlvtSUA1TkkE": "2FDHSzwG6tNpDxbv", "ftJSRRSLgg5utchf": "Z77hlqhBNTnvDpyj", "klk1k6cxPHFAOCCC": "5uug3RFf8EeEDrB1"}}' \
    > test.out 2>&1
eval_tap $? 50 'AdminSetPlayerSessionAttribute' test.out

#- 51 AdminGetPlayerSessionAttribute
samples/cli/sample-apps Lobby adminGetPlayerSessionAttribute \
    --attribute '8BG3aelf98PVJ3U7' \
    --namespace $AB_NAMESPACE \
    --userId 'ee6BvQXRCFMUZMj0' \
    > test.out 2>&1
eval_tap $? 51 'AdminGetPlayerSessionAttribute' test.out

#- 52 AdminGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId '9xRQ380LRUVugNHl' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetPlayerBlockedPlayersV1' test.out

#- 53 AdminGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby adminGetPlayerBlockedByPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'dsPrEH5lVHm4ryzN' \
    > test.out 2>&1
eval_tap $? 53 'AdminGetPlayerBlockedByPlayersV1' test.out

#- 54 AdminBulkBlockPlayersV1
samples/cli/sample-apps Lobby adminBulkBlockPlayersV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ckAYy2xzqkOjzDCv' \
    --body '{"listBlockedUserId": ["Y5BGBEeUVIvqGDo7", "c0YMsHlEqgNyf7m7", "yBJDcfvT8De9JxJn"]}' \
    > test.out 2>&1
eval_tap $? 54 'AdminBulkBlockPlayersV1' test.out

#- 55 AdminDebugProfanityFilters
samples/cli/sample-apps Lobby adminDebugProfanityFilters \
    --namespace $AB_NAMESPACE \
    --body '{"text": "1FUMvZ07hTaK5zYx"}' \
    > test.out 2>&1
eval_tap $? 55 'AdminDebugProfanityFilters' test.out

#- 56 AdminGetProfanityListFiltersV1
samples/cli/sample-apps Lobby adminGetProfanityListFiltersV1 \
    --list 'AEdQEEDZwRBBQ2Qh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'AdminGetProfanityListFiltersV1' test.out

#- 57 AdminAddProfanityFilterIntoList
samples/cli/sample-apps Lobby adminAddProfanityFilterIntoList \
    --list 'HScEmwn5VuvDMyqf' \
    --namespace $AB_NAMESPACE \
    --body '{"filter": "JcWqBUrvQf74h7Qd", "note": "w82tKBq5Drv7LgAh"}' \
    > test.out 2>&1
eval_tap $? 57 'AdminAddProfanityFilterIntoList' test.out

#- 58 AdminAddProfanityFilters
samples/cli/sample-apps Lobby adminAddProfanityFilters \
    --list 'v9l8h5Rk0kBso2ZI' \
    --namespace $AB_NAMESPACE \
    --body '{"filters": [{"filter": "TYrIZtrhhy3ZH6LR", "note": "UO7jsPUozZlZFyfm"}, {"filter": "GHiGwNNkziSyStGP", "note": "BV1XODGJw2kQK0XX"}, {"filter": "7GmSwDi8MdeaBg1h", "note": "71F3bySbrxaeCvsK"}]}' \
    > test.out 2>&1
eval_tap $? 58 'AdminAddProfanityFilters' test.out

#- 59 AdminImportProfanityFiltersFromFile
samples/cli/sample-apps Lobby adminImportProfanityFiltersFromFile \
    --list 'dEu0ha7b1W2FmRa8' \
    --namespace $AB_NAMESPACE \
    --body '[88, 35, 37]' \
    > test.out 2>&1
eval_tap $? 59 'AdminImportProfanityFiltersFromFile' test.out

#- 60 AdminDeleteProfanityFilter
samples/cli/sample-apps Lobby adminDeleteProfanityFilter \
    --list 'FHvdaWU3VI9CeByH' \
    --namespace $AB_NAMESPACE \
    --body '{"filter": "TPBUuVymWD4GQPwW"}' \
    > test.out 2>&1
eval_tap $? 60 'AdminDeleteProfanityFilter' test.out

#- 61 AdminGetProfanityLists
samples/cli/sample-apps Lobby adminGetProfanityLists \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'AdminGetProfanityLists' test.out

#- 62 AdminCreateProfanityList
samples/cli/sample-apps Lobby adminCreateProfanityList \
    --namespace $AB_NAMESPACE \
    --body '{"isEnabled": true, "isMandatory": false, "name": "TZPeIeodOzbUlXWE"}' \
    > test.out 2>&1
eval_tap $? 62 'AdminCreateProfanityList' test.out

#- 63 AdminUpdateProfanityList
samples/cli/sample-apps Lobby adminUpdateProfanityList \
    --list '9uiVd5ulhPsyDLAx' \
    --namespace $AB_NAMESPACE \
    --body '{"isEnabled": false, "isMandatory": true, "newName": "xFpjyawBPFjA7p74"}' \
    > test.out 2>&1
eval_tap $? 63 'AdminUpdateProfanityList' test.out

#- 64 AdminDeleteProfanityList
samples/cli/sample-apps Lobby adminDeleteProfanityList \
    --list 'DIDJD53EsQd1fvw5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'AdminDeleteProfanityList' test.out

#- 65 AdminGetProfanityRule
samples/cli/sample-apps Lobby adminGetProfanityRule \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'AdminGetProfanityRule' test.out

#- 66 AdminSetProfanityRuleForNamespace
samples/cli/sample-apps Lobby adminSetProfanityRuleForNamespace \
    --namespace $AB_NAMESPACE \
    --body '{"rule": "DxHydrOXcsLm62uI"}' \
    > test.out 2>&1
eval_tap $? 66 'AdminSetProfanityRuleForNamespace' test.out

#- 67 AdminVerifyMessageProfanityResponse
samples/cli/sample-apps Lobby adminVerifyMessageProfanityResponse \
    --namespace $AB_NAMESPACE \
    --body '{"message": "BVoXEk8OEkp7tSmY", "profanityLevel": "3sDnSmevebGNOAHv"}' \
    > test.out 2>&1
eval_tap $? 67 'AdminVerifyMessageProfanityResponse' test.out

#- 68 AdminGetThirdPartyConfig
samples/cli/sample-apps Lobby adminGetThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 68 'AdminGetThirdPartyConfig' test.out

#- 69 AdminUpdateThirdPartyConfig
samples/cli/sample-apps Lobby adminUpdateThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    --body '{"apiKey": "wiBD3cQnM7mdjpTK"}' \
    > test.out 2>&1
eval_tap $? 69 'AdminUpdateThirdPartyConfig' test.out

#- 70 AdminCreateThirdPartyConfig
samples/cli/sample-apps Lobby adminCreateThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    --body '{"apiKey": "7PtMZv9vchuJNxnb"}' \
    > test.out 2>&1
eval_tap $? 70 'AdminCreateThirdPartyConfig' test.out

#- 71 AdminDeleteThirdPartyConfig
samples/cli/sample-apps Lobby adminDeleteThirdPartyConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'AdminDeleteThirdPartyConfig' test.out

#- 72 PublicGetMessages
samples/cli/sample-apps Lobby publicGetMessages \
    > test.out 2>&1
eval_tap $? 72 'PublicGetMessages' test.out

#- 73 PublicGetPartyDataV1
samples/cli/sample-apps Lobby publicGetPartyDataV1 \
    --namespace $AB_NAMESPACE \
    --partyId 'eGiA93WqFB0FopCw' \
    > test.out 2>&1
eval_tap $? 73 'PublicGetPartyDataV1' test.out

#- 74 PublicUpdatePartyAttributesV1
samples/cli/sample-apps Lobby publicUpdatePartyAttributesV1 \
    --namespace $AB_NAMESPACE \
    --partyId '2RJDCLKEFWPSZ5i1' \
    --body '{"custom_attribute": {"OoBOgbQdkj3eSoSM": {}, "bi9COZICJWc45f1h": {}, "KbMBt1pmLYDwUthe": {}}, "updatedAt": 39}' \
    > test.out 2>&1
eval_tap $? 74 'PublicUpdatePartyAttributesV1' test.out

#- 75 PublicSetPartyLimitV1
samples/cli/sample-apps Lobby publicSetPartyLimitV1 \
    --namespace $AB_NAMESPACE \
    --partyId '1H6A8EZChkm3iMvF' \
    --body '{"limit": 2}' \
    > test.out 2>&1
eval_tap $? 75 'PublicSetPartyLimitV1' test.out

#- 76 PublicGetPlayerBlockedPlayersV1
samples/cli/sample-apps Lobby publicGetPlayerBlockedPlayersV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 76 'PublicGetPlayerBlockedPlayersV1' test.out

#- 77 PublicGetPlayerBlockedByPlayersV1
samples/cli/sample-apps Lobby publicGetPlayerBlockedByPlayersV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 77 'PublicGetPlayerBlockedByPlayersV1' test.out

#- 78 UsersPresenceHandlerV1
samples/cli/sample-apps Lobby usersPresenceHandlerV1 \
    --namespace $AB_NAMESPACE \
    --countOnly 'false' \
    --userIds 'urLNYn1KXrUZm0kI' \
    > test.out 2>&1
eval_tap $? 78 'UsersPresenceHandlerV1' test.out

#- 79 FreeFormNotification
samples/cli/sample-apps Lobby freeFormNotification \
    --namespace $AB_NAMESPACE \
    --body '{"message": "TTDlgSmSDqpuu39l", "topic": "yVvfS3dg8diyPdF4"}' \
    > test.out 2>&1
eval_tap $? 79 'FreeFormNotification' test.out

#- 80 NotificationWithTemplate
samples/cli/sample-apps Lobby notificationWithTemplate \
    --namespace $AB_NAMESPACE \
    --body '{"templateContext": {"mF3EXhr0Iir3S04t": "JKU24wLDHWk1DCiS", "bJbvksNGmKadp49m": "1lYXPJ5aeZqZBR0k", "goJpHYJh6MkDJaLS": "ak5YMPlKlzt6bsji"}, "templateLanguage": "44ArU4bukqgi2Tm0", "templateSlug": "9KQYIa74HUfhYNih", "topic": "gVbb26WBQ8XE1AMv"}' \
    > test.out 2>&1
eval_tap $? 80 'NotificationWithTemplate' test.out

#- 81 GetGameTemplate
samples/cli/sample-apps Lobby getGameTemplate \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 81 'GetGameTemplate' test.out

#- 82 CreateTemplate
samples/cli/sample-apps Lobby createTemplate \
    --namespace $AB_NAMESPACE \
    --body '{"templateContent": "7ysMKe7YR1u9hNG4", "templateLanguage": "V6sF9a7O3UAG3E24", "templateSlug": "XanyZ00PgcwOGLsO"}' \
    > test.out 2>&1
eval_tap $? 82 'CreateTemplate' test.out

#- 83 GetSlugTemplate
samples/cli/sample-apps Lobby getSlugTemplate \
    --namespace $AB_NAMESPACE \
    --templateSlug 'ResnvhAogN3A0Cv1' \
    --after '1p0vXfZa59cOhQdN' \
    --before '1XNuJHrkfGQeKS5S' \
    --limit '72' \
    > test.out 2>&1
eval_tap $? 83 'GetSlugTemplate' test.out

#- 84 DeleteTemplateSlug
samples/cli/sample-apps Lobby deleteTemplateSlug \
    --namespace $AB_NAMESPACE \
    --templateSlug 'NNICYF5kE80CFw1G' \
    > test.out 2>&1
eval_tap $? 84 'DeleteTemplateSlug' test.out

#- 85 GetLocalizationTemplate
samples/cli/sample-apps Lobby getLocalizationTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage '6ZtXzRGrkaM9wPxs' \
    --templateSlug 'wJ0IsHtkSafqGUr4' \
    > test.out 2>&1
eval_tap $? 85 'GetLocalizationTemplate' test.out

#- 86 UpdateLocalizationTemplate
samples/cli/sample-apps Lobby updateLocalizationTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'GU2T2u3dXljYUSom' \
    --templateSlug 'H3XD2x1SCCjuXqUW' \
    --body '{"templateContent": "nZF46s6RXH8kVB7C"}' \
    > test.out 2>&1
eval_tap $? 86 'UpdateLocalizationTemplate' test.out

#- 87 DeleteTemplateLocalization
samples/cli/sample-apps Lobby deleteTemplateLocalization \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'I6Av3vhkIPXkvwGW' \
    --templateSlug '65GeLEt6MxyOmncQ' \
    > test.out 2>&1
eval_tap $? 87 'DeleteTemplateLocalization' test.out

#- 88 PublishTemplate
samples/cli/sample-apps Lobby publishTemplate \
    --namespace $AB_NAMESPACE \
    --templateLanguage 'QuwzWUJ4IRVvF55I' \
    --templateSlug 'CU4Iaq8nNFGjCeJF' \
    > test.out 2>&1
eval_tap $? 88 'PublishTemplate' test.out

#- 89 GetTopicByNamespace
samples/cli/sample-apps Lobby getTopicByNamespace \
    --namespace $AB_NAMESPACE \
    --after '6kHbPRwugSXM2wPj' \
    --before 'Ky4VD1YXqGdyrdla' \
    --limit '86' \
    > test.out 2>&1
eval_tap $? 89 'GetTopicByNamespace' test.out

#- 90 CreateTopic
samples/cli/sample-apps Lobby createTopic \
    --namespace $AB_NAMESPACE \
    --body '{"description": "mj7EwOwUatAtO3Nb", "topic": "58BW0AjaSOZheXhv"}' \
    > test.out 2>&1
eval_tap $? 90 'CreateTopic' test.out

#- 91 GetTopicByTopicName
samples/cli/sample-apps Lobby getTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'v6ltN81Do3YQyvdd' \
    > test.out 2>&1
eval_tap $? 91 'GetTopicByTopicName' test.out

#- 92 UpdateTopicByTopicName
samples/cli/sample-apps Lobby updateTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic '931KrGyQBPRA8UQh' \
    --body '{"description": "czaUV3r9VtFdJ1F5"}' \
    > test.out 2>&1
eval_tap $? 92 'UpdateTopicByTopicName' test.out

#- 93 DeleteTopicByTopicName
samples/cli/sample-apps Lobby deleteTopicByTopicName \
    --namespace $AB_NAMESPACE \
    --topic 'AnrM1i1Fe80AIlcq' \
    > test.out 2>&1
eval_tap $? 93 'DeleteTopicByTopicName' test.out

#- 94 FreeFormNotificationByUserID
samples/cli/sample-apps Lobby freeFormNotificationByUserID \
    --namespace $AB_NAMESPACE \
    --userId 'YauSRlMVETexcWla' \
    --body '{"message": "nhmKs0Yk3IZ1974W", "topic": "Vvsd6Vphgnd3tm8O"}' \
    > test.out 2>&1
eval_tap $? 94 'FreeFormNotificationByUserID' test.out

#- 95 NotificationWithTemplateByUserID
samples/cli/sample-apps Lobby notificationWithTemplateByUserID \
    --namespace $AB_NAMESPACE \
    --userId '7qgnOaaBTv1z3Jat' \
    --body '{"templateContext": {"fFVFHrwS0ksfQVQA": "fm1ss8WtGmiRCHLL", "eGpDKXeo0n5yxFa8": "KldstK4znLRVNZxd", "KDxQmWQlGC1HTCIC": "WgUSQDI7SxYrepu4"}, "templateLanguage": "axu8Mamev2Q7BET8", "templateSlug": "piFcaR87vsmYb6KR", "topic": "fJWlFOvwopslt1AN"}' \
    > test.out 2>&1
eval_tap $? 95 'NotificationWithTemplateByUserID' test.out


rm -f "tmp.dat"

exit $EXIT_CODE