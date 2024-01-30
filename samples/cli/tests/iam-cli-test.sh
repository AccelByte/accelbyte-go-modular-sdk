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
echo "1..368"

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

#- 2 GetBansType
eval_tap 0 2 'GetBansType # SKIP deprecated' test.out

#- 3 GetListBanReason
eval_tap 0 3 'GetListBanReason # SKIP deprecated' test.out

#- 4 GetClients
eval_tap 0 4 'GetClients # SKIP deprecated' test.out

#- 5 CreateClient
eval_tap 0 5 'CreateClient # SKIP deprecated' test.out

#- 6 GetClient
eval_tap 0 6 'GetClient # SKIP deprecated' test.out

#- 7 UpdateClient
eval_tap 0 7 'UpdateClient # SKIP deprecated' test.out

#- 8 DeleteClient
eval_tap 0 8 'DeleteClient # SKIP deprecated' test.out

#- 9 UpdateClientPermission
eval_tap 0 9 'UpdateClientPermission # SKIP deprecated' test.out

#- 10 AddClientPermission
eval_tap 0 10 'AddClientPermission # SKIP deprecated' test.out

#- 11 DeleteClientPermission
eval_tap 0 11 'DeleteClientPermission # SKIP deprecated' test.out

#- 12 UpdateClientSecret
eval_tap 0 12 'UpdateClientSecret # SKIP deprecated' test.out

#- 13 GetClientsbyNamespace
eval_tap 0 13 'GetClientsbyNamespace # SKIP deprecated' test.out

#- 14 CreateClientByNamespace
eval_tap 0 14 'CreateClientByNamespace # SKIP deprecated' test.out

#- 15 DeleteClientByNamespace
eval_tap 0 15 'DeleteClientByNamespace # SKIP deprecated' test.out

#- 16 CreateUser
eval_tap 0 16 'CreateUser # SKIP deprecated' test.out

#- 17 GetAdminUsersByRoleID
eval_tap 0 17 'GetAdminUsersByRoleID # SKIP deprecated' test.out

#- 18 GetUserByLoginID
eval_tap 0 18 'GetUserByLoginID # SKIP deprecated' test.out

#- 19 GetUserByPlatformUserID
eval_tap 0 19 'GetUserByPlatformUserID # SKIP deprecated' test.out

#- 20 ForgotPassword
eval_tap 0 20 'ForgotPassword # SKIP deprecated' test.out

#- 21 GetUsersByLoginIds
eval_tap 0 21 'GetUsersByLoginIds # SKIP deprecated' test.out

#- 22 ResetPassword
eval_tap 0 22 'ResetPassword # SKIP deprecated' test.out

#- 23 SearchUser
eval_tap 0 23 'SearchUser # SKIP deprecated' test.out

#- 24 GetUserByUserID
eval_tap 0 24 'GetUserByUserID # SKIP deprecated' test.out

#- 25 UpdateUser
eval_tap 0 25 'UpdateUser # SKIP deprecated' test.out

#- 26 DeleteUser
eval_tap 0 26 'DeleteUser # SKIP deprecated' test.out

#- 27 BanUser
eval_tap 0 27 'BanUser # SKIP deprecated' test.out

#- 28 GetUserBanHistory
eval_tap 0 28 'GetUserBanHistory # SKIP deprecated' test.out

#- 29 DisableUserBan
eval_tap 0 29 'DisableUserBan # SKIP deprecated' test.out

#- 30 EnableUserBan
eval_tap 0 30 'EnableUserBan # SKIP deprecated' test.out

#- 31 ListCrossNamespaceAccountLink
eval_tap 0 31 'ListCrossNamespaceAccountLink # SKIP deprecated' test.out

#- 32 DisableUser
eval_tap 0 32 'DisableUser # SKIP deprecated' test.out

#- 33 EnableUser
eval_tap 0 33 'EnableUser # SKIP deprecated' test.out

#- 34 GetUserInformation
eval_tap 0 34 'GetUserInformation # SKIP deprecated' test.out

#- 35 DeleteUserInformation
eval_tap 0 35 'DeleteUserInformation # SKIP deprecated' test.out

#- 36 GetUserLoginHistories
eval_tap 0 36 'GetUserLoginHistories # SKIP deprecated' test.out

#- 37 UpdatePassword
eval_tap 0 37 'UpdatePassword # SKIP deprecated' test.out

#- 38 SaveUserPermission
eval_tap 0 38 'SaveUserPermission # SKIP deprecated' test.out

#- 39 AddUserPermission
eval_tap 0 39 'AddUserPermission # SKIP deprecated' test.out

#- 40 DeleteUserPermission
eval_tap 0 40 'DeleteUserPermission # SKIP deprecated' test.out

#- 41 GetUserPlatformAccounts
eval_tap 0 41 'GetUserPlatformAccounts # SKIP deprecated' test.out

#- 42 GetUserMapping
eval_tap 0 42 'GetUserMapping # SKIP deprecated' test.out

#- 43 GetUserJusticePlatformAccount
eval_tap 0 43 'GetUserJusticePlatformAccount # SKIP deprecated' test.out

#- 44 PlatformLink
eval_tap 0 44 'PlatformLink # SKIP deprecated' test.out

#- 45 PlatformUnlink
eval_tap 0 45 'PlatformUnlink # SKIP deprecated' test.out

#- 46 GetPublisherUser
eval_tap 0 46 'GetPublisherUser # SKIP deprecated' test.out

#- 47 SaveUserRoles
eval_tap 0 47 'SaveUserRoles # SKIP deprecated' test.out

#- 48 AddUserRole
eval_tap 0 48 'AddUserRole # SKIP deprecated' test.out

#- 49 DeleteUserRole
eval_tap 0 49 'DeleteUserRole # SKIP deprecated' test.out

#- 50 UpgradeHeadlessAccount
eval_tap 0 50 'UpgradeHeadlessAccount # SKIP deprecated' test.out

#- 51 UpgradeHeadlessAccountWithVerificationCode
eval_tap 0 51 'UpgradeHeadlessAccountWithVerificationCode # SKIP deprecated' test.out

#- 52 UserVerification
eval_tap 0 52 'UserVerification # SKIP deprecated' test.out

#- 53 SendVerificationCode
eval_tap 0 53 'SendVerificationCode # SKIP deprecated' test.out

#- 54 Authorization
eval_tap 0 54 'Authorization # SKIP deprecated' test.out

#- 55 GetJWKS
eval_tap 0 55 'GetJWKS # SKIP deprecated' test.out

#- 56 PlatformTokenRequestHandler
eval_tap 0 56 'PlatformTokenRequestHandler # SKIP deprecated' test.out

#- 57 RevokeUser
eval_tap 0 57 'RevokeUser # SKIP deprecated' test.out

#- 58 GetRevocationList
eval_tap 0 58 'GetRevocationList # SKIP deprecated' test.out

#- 59 RevokeToken
eval_tap 0 59 'RevokeToken # SKIP deprecated' test.out

#- 60 RevokeAUser
eval_tap 0 60 'RevokeAUser # SKIP deprecated' test.out

#- 61 TokenGrant
eval_tap 0 61 'TokenGrant # SKIP deprecated' test.out

#- 62 VerifyToken
eval_tap 0 62 'VerifyToken # SKIP deprecated' test.out

#- 63 GetRoles
eval_tap 0 63 'GetRoles # SKIP deprecated' test.out

#- 64 CreateRole
eval_tap 0 64 'CreateRole # SKIP deprecated' test.out

#- 65 GetRole
eval_tap 0 65 'GetRole # SKIP deprecated' test.out

#- 66 UpdateRole
eval_tap 0 66 'UpdateRole # SKIP deprecated' test.out

#- 67 DeleteRole
eval_tap 0 67 'DeleteRole # SKIP deprecated' test.out

#- 68 GetRoleAdminStatus
eval_tap 0 68 'GetRoleAdminStatus # SKIP deprecated' test.out

#- 69 SetRoleAsAdmin
eval_tap 0 69 'SetRoleAsAdmin # SKIP deprecated' test.out

#- 70 RemoveRoleAdmin
eval_tap 0 70 'RemoveRoleAdmin # SKIP deprecated' test.out

#- 71 GetRoleManagers
eval_tap 0 71 'GetRoleManagers # SKIP deprecated' test.out

#- 72 AddRoleManagers
eval_tap 0 72 'AddRoleManagers # SKIP deprecated' test.out

#- 73 RemoveRoleManagers
eval_tap 0 73 'RemoveRoleManagers # SKIP deprecated' test.out

#- 74 GetRoleMembers
eval_tap 0 74 'GetRoleMembers # SKIP deprecated' test.out

#- 75 AddRoleMembers
eval_tap 0 75 'AddRoleMembers # SKIP deprecated' test.out

#- 76 RemoveRoleMembers
eval_tap 0 76 'RemoveRoleMembers # SKIP deprecated' test.out

#- 77 UpdateRolePermissions
eval_tap 0 77 'UpdateRolePermissions # SKIP deprecated' test.out

#- 78 AddRolePermission
eval_tap 0 78 'AddRolePermission # SKIP deprecated' test.out

#- 79 DeleteRolePermission
eval_tap 0 79 'DeleteRolePermission # SKIP deprecated' test.out

#- 80 AdminGetAgeRestrictionStatusV2
eval_tap 0 80 'AdminGetAgeRestrictionStatusV2 # SKIP deprecated' test.out

#- 81 AdminUpdateAgeRestrictionConfigV2
eval_tap 0 81 'AdminUpdateAgeRestrictionConfigV2 # SKIP deprecated' test.out

#- 82 GetListCountryAgeRestriction
eval_tap 0 82 'GetListCountryAgeRestriction # SKIP deprecated' test.out

#- 83 UpdateCountryAgeRestriction
eval_tap 0 83 'UpdateCountryAgeRestriction # SKIP deprecated' test.out

#- 84 AdminSearchUsersV2
eval_tap 0 84 'AdminSearchUsersV2 # SKIP deprecated' test.out

#- 85 AdminGetUserByUserIdV2
eval_tap 0 85 'AdminGetUserByUserIdV2 # SKIP deprecated' test.out

#- 86 AdminUpdateUserV2
eval_tap 0 86 'AdminUpdateUserV2 # SKIP deprecated' test.out

#- 87 AdminBanUserV2
eval_tap 0 87 'AdminBanUserV2 # SKIP deprecated' test.out

#- 88 AdminGetUserBanV2
eval_tap 0 88 'AdminGetUserBanV2 # SKIP deprecated' test.out

#- 89 AdminDisableUserV2
eval_tap 0 89 'AdminDisableUserV2 # SKIP deprecated' test.out

#- 90 AdminEnableUserV2
eval_tap 0 90 'AdminEnableUserV2 # SKIP deprecated' test.out

#- 91 AdminResetPasswordV2
eval_tap 0 91 'AdminResetPasswordV2 # SKIP deprecated' test.out

#- 92 AdminDeletePlatformLinkV2
eval_tap 0 92 'AdminDeletePlatformLinkV2 # SKIP deprecated' test.out

#- 93 AdminPutUserRolesV2
eval_tap 0 93 'AdminPutUserRolesV2 # SKIP deprecated' test.out

#- 94 AdminCreateUserRolesV2
eval_tap 0 94 'AdminCreateUserRolesV2 # SKIP deprecated' test.out

#- 95 PublicGetCountryAgeRestriction
eval_tap 0 95 'PublicGetCountryAgeRestriction # SKIP deprecated' test.out

#- 96 PublicCreateUserV2
eval_tap 0 96 'PublicCreateUserV2 # SKIP deprecated' test.out

#- 97 PublicForgotPasswordV2
eval_tap 0 97 'PublicForgotPasswordV2 # SKIP deprecated' test.out

#- 98 PublicResetPasswordV2
eval_tap 0 98 'PublicResetPasswordV2 # SKIP deprecated' test.out

#- 99 PublicGetUserByUserIDV2
eval_tap 0 99 'PublicGetUserByUserIDV2 # SKIP deprecated' test.out

#- 100 PublicUpdateUserV2
eval_tap 0 100 'PublicUpdateUserV2 # SKIP deprecated' test.out

#- 101 PublicGetUserBan
eval_tap 0 101 'PublicGetUserBan # SKIP deprecated' test.out

#- 102 PublicUpdatePasswordV2
eval_tap 0 102 'PublicUpdatePasswordV2 # SKIP deprecated' test.out

#- 103 GetListJusticePlatformAccounts
eval_tap 0 103 'GetListJusticePlatformAccounts # SKIP deprecated' test.out

#- 104 PublicPlatformLinkV2
eval_tap 0 104 'PublicPlatformLinkV2 # SKIP deprecated' test.out

#- 105 PublicDeletePlatformLinkV2
eval_tap 0 105 'PublicDeletePlatformLinkV2 # SKIP deprecated' test.out

#- 106 AdminGetBansTypeV3
samples/cli/sample-apps Iam adminGetBansTypeV3 \
    > test.out 2>&1
eval_tap $? 106 'AdminGetBansTypeV3' test.out

#- 107 AdminGetListBanReasonV3
samples/cli/sample-apps Iam adminGetListBanReasonV3 \
    > test.out 2>&1
eval_tap $? 107 'AdminGetListBanReasonV3' test.out

#- 108 AdminGetInputValidations
samples/cli/sample-apps Iam adminGetInputValidations \
    > test.out 2>&1
eval_tap $? 108 'AdminGetInputValidations' test.out

#- 109 AdminUpdateInputValidations
samples/cli/sample-apps Iam adminUpdateInputValidations \
    --body '[{"field": "bXc0FGde", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["4meU7063", "pGp7MFF8", "zu4BQXzU"], "preferRegex": false, "regex": "MLoyb5iq"}, "blockedWord": ["Hi8Wt8dw", "EZS1Zv4M", "DupPttIo"], "description": [{"language": "dy9MVWPz", "message": ["vgMa5v4s", "jRa1FsA2", "5ScTbEEu"]}, {"language": "5m2PQfwa", "message": ["7AkZEICT", "Jg9Jd6nS", "3M39Vf2Q"]}, {"language": "EdlmrJWb", "message": ["qW6we4CZ", "sbqrr1kv", "Oq2XMNTU"]}], "isCustomRegex": true, "letterCase": "TvkNjneJ", "maxLength": 74, "maxRepeatingAlphaNum": 11, "maxRepeatingSpecialCharacter": 74, "minCharType": 49, "minLength": 2, "regex": "1MGFGfSx", "specialCharacterLocation": "gpbwr921", "specialCharacters": ["yE0qnuYY", "rTjFgJHb", "OX54rWgN"]}}, {"field": "KKSQVRyQ", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["Srfm6d2L", "8lBQ1dKq", "8Coj2muQ"], "preferRegex": true, "regex": "IAbps32D"}, "blockedWord": ["fJdm4aZv", "AdvXSAmq", "ytNzYnaA"], "description": [{"language": "KwzznDQv", "message": ["bbYkezXq", "0X5tSaGm", "2wVuiqT1"]}, {"language": "fun3WUAp", "message": ["Ug7HKlXb", "ojhoSond", "zXAB2jyu"]}, {"language": "uRShrgGD", "message": ["to9BFueD", "vivK0teh", "T5RunoTi"]}], "isCustomRegex": true, "letterCase": "LnNXkpLw", "maxLength": 32, "maxRepeatingAlphaNum": 64, "maxRepeatingSpecialCharacter": 42, "minCharType": 25, "minLength": 26, "regex": "r6BmE6WQ", "specialCharacterLocation": "R5FGZSKQ", "specialCharacters": ["uJgCAwDA", "mFAh6WdS", "nNKP6mMS"]}}, {"field": "xAmkcyUu", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["FDVEA91u", "KdPtnU8g", "GRiqj4nb"], "preferRegex": true, "regex": "X7SUoIxV"}, "blockedWord": ["WhLQUbJv", "KuA1GRpF", "N2B7FlM9"], "description": [{"language": "OeNJ9BvB", "message": ["yDJNla1D", "1Rb2qtbL", "WBiFP4x0"]}, {"language": "l5U87hpA", "message": ["4UK8Gdou", "D35dOr9B", "gbMSu9Jf"]}, {"language": "lI74ZhNl", "message": ["n5bFz75k", "MAz2CdBm", "4roil5df"]}], "isCustomRegex": false, "letterCase": "LW90uaDb", "maxLength": 19, "maxRepeatingAlphaNum": 52, "maxRepeatingSpecialCharacter": 37, "minCharType": 99, "minLength": 46, "regex": "dmpfCwqT", "specialCharacterLocation": "nUq7g041", "specialCharacters": ["TV2mQ6A8", "j9B3CaS5", "ydEcpTPi"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'uR8ff9eQ' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'p3FHW3nS' \
    --before 'MOaDQOVJ' \
    --limit '48' \
    > test.out 2>&1
eval_tap $? 111 'ListAdminsV3' test.out

#- 112 AdminGetAgeRestrictionStatusV3
samples/cli/sample-apps Iam adminGetAgeRestrictionStatusV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 112 'AdminGetAgeRestrictionStatusV3' test.out

#- 113 AdminUpdateAgeRestrictionConfigV3
samples/cli/sample-apps Iam adminUpdateAgeRestrictionConfigV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 37, "enable": true}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'dXaoOZgq' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 4}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'xQKS8eMh' \
    --limit '2' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "HDWkPAF2", "comment": "EAyw6Of4", "endDate": "HxxrP9gv", "reason": "LRQSuh9R", "skipNotif": true, "userIds": ["RYMEXszl", "nU6FHCJK", "2yeb8wQb"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "qXDjSmFI", "userId": "DJ8h5TTf"}, {"banId": "E2IIlVzW", "userId": "MAKo9sTW"}, {"banId": "DT5HDBAR", "userId": "tQWulmuK"}]}' \
    > test.out 2>&1
eval_tap $? 118 'AdminUnbanUserBulkV3' test.out

#- 119 AdminGetBansTypeWithNamespaceV3
samples/cli/sample-apps Iam adminGetBansTypeWithNamespaceV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'AdminGetBansTypeWithNamespaceV3' test.out

#- 120 AdminGetClientsByNamespaceV3
samples/cli/sample-apps Iam adminGetClientsByNamespaceV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'kW2et5CY' \
    --clientName 'P8h3HUeI' \
    --clientType 'c3cpjCMT' \
    --limit '94' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["UyQ0Q4L6", "ytv9DyG1", "72Yr2pj6"], "baseUri": "Jve3O6wE", "clientId": "kyVW7oVQ", "clientName": "0zJJJloz", "clientPermissions": [{"action": 44, "resource": "6iebWVay", "schedAction": 12, "schedCron": "QeyCi1wK", "schedRange": ["mGJZ3PZF", "xZGZU0oW", "kA7Xqxbx"]}, {"action": 44, "resource": "4esxZxpi", "schedAction": 48, "schedCron": "V5SQMfKn", "schedRange": ["o3NH3ART", "hcjQ5xUY", "yIepiWSx"]}, {"action": 30, "resource": "nfdPZwyZ", "schedAction": 44, "schedCron": "hh4JEnqQ", "schedRange": ["uQl5xSef", "Sg4VSvLi", "lCQh6sdC"]}], "clientPlatform": "a6VCUueS", "deletable": false, "description": "PtL8nkd8", "namespace": "r3Z0ABr8", "oauthAccessTokenExpiration": 26, "oauthAccessTokenExpirationTimeUnit": "Qy5OhkfG", "oauthClientType": "E3FjXrae", "oauthRefreshTokenExpiration": 43, "oauthRefreshTokenExpirationTimeUnit": "Ua2DFrra", "parentNamespace": "bvz2GFRV", "redirectUri": "MqSDNAjp", "scopes": ["LS9TaX7J", "D6iJe3XF", "1S8dnrs6"], "secret": "YqB0pv1l", "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'hIaKP6q7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'DE64yTtu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'prPUl3T8' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["Dffnvrfr", "01iNAa9y", "5opyGUcU"], "baseUri": "733ufChC", "clientName": "eF5XtqtK", "clientPermissions": [{"action": 46, "resource": "48uN3Jsj", "schedAction": 73, "schedCron": "4KeJWutX", "schedRange": ["zx1VfavY", "b5tmp8Wz", "IR1ThwX6"]}, {"action": 60, "resource": "JMQSiJVr", "schedAction": 53, "schedCron": "Avu8RGnu", "schedRange": ["SLF48cpd", "NdeJuhSn", "d4vHB8ZO"]}, {"action": 84, "resource": "UUQRnxy3", "schedAction": 8, "schedCron": "pMbgyTnW", "schedRange": ["wr4N8PDd", "7DwlwGuP", "003w8sVI"]}], "clientPlatform": "VEJ0cAlP", "deletable": true, "description": "7aRg0pE4", "namespace": "ggA98jLz", "oauthAccessTokenExpiration": 95, "oauthAccessTokenExpirationTimeUnit": "pEovUmuG", "oauthRefreshTokenExpiration": 84, "oauthRefreshTokenExpirationTimeUnit": "7gfheGmX", "redirectUri": "yeJsLmhI", "scopes": ["HUQej294", "Jvwf1PI6", "j8ikhu0y"], "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'MjcBn4kS' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 79, "resource": "ZnGa2ua9"}, {"action": 14, "resource": "iTQ0iSU3"}, {"action": 17, "resource": "meR7JCXw"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'KrKBPRKr' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 64, "resource": "MNlxT104"}, {"action": 38, "resource": "AKVzsmZQ"}, {"action": 23, "resource": "3DMBVDXd"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '48' \
    --clientId 'fmizr2F6' \
    --namespace $AB_NAMESPACE \
    --resource 'CoP4IyNa' \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteClientPermissionV3' test.out

#- 128 AdminGetCountryListV3
samples/cli/sample-apps Iam adminGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    --filterBlacklist 'false' \
    > test.out 2>&1
eval_tap $? 128 'AdminGetCountryListV3' test.out

#- 129 AdminGetCountryBlacklistV3
samples/cli/sample-apps Iam adminGetCountryBlacklistV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 129 'AdminGetCountryBlacklistV3' test.out

#- 130 AdminAddCountryBlacklistV3
samples/cli/sample-apps Iam adminAddCountryBlacklistV3 \
    --namespace $AB_NAMESPACE \
    --body '{"blacklist": ["74GsDoAF", "d2JmrBt0", "7FES0KjJ"]}' \
    > test.out 2>&1
eval_tap $? 130 'AdminAddCountryBlacklistV3' test.out

#- 131 RetrieveAllThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 131 'RetrieveAllThirdPartyLoginPlatformCredentialV3' test.out

#- 132 RetrieveAllActiveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 132 'RetrieveAllActiveThirdPartyLoginPlatformCredentialV3' test.out

#- 133 RetrieveAllSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 133 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 134 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'WpLofM3y' \
    > test.out 2>&1
eval_tap $? 134 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 135 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'G3EuxmOb' \
    --body '{"ACSURL": "vF6eVBa2", "AWSCognitoRegion": "uteYULR0", "AWSCognitoUserPool": "i9UVqzMm", "AllowedClients": ["whH6oBWM", "cnzgzxOY", "D0KczNHG"], "AppId": "O1pXdTTt", "AuthorizationEndpoint": "wyD51kW4", "ClientId": "RXeyAWE0", "Environment": "aPsagZ5r", "FederationMetadataURL": "X3udnIfB", "GenericOauthFlow": false, "IsActive": true, "Issuer": "jgwrXJsG", "JWKSEndpoint": "ZuvAfDFJ", "KeyID": "Qeb4ce8j", "NetflixCertificates": {"encryptedPrivateKey": "JnEYV5xj", "encryptedPrivateKeyName": "7SQJbFlL", "publicCertificate": "FltTw1pG", "publicCertificateName": "F1x2IHWS", "rootCertificate": "eG0bdjbZ", "rootCertificateName": "hUQKXEwi"}, "OrganizationId": "8BovDPWY", "PlatformName": "j0wNMcvm", "RedirectUri": "WqYZj0ks", "RegisteredDomains": [{"affectedClientIDs": ["E9w9iSd5", "9p6BnDh3", "CySAI8AT"], "domain": "t71mBvrx", "namespaces": ["Np1VXPWY", "mAKUpkg7", "cYLifFnL"], "roleId": "bqFOiftP"}, {"affectedClientIDs": ["zirTNX0x", "N4y9rz5r", "meQp4ZmZ"], "domain": "qb0Aqm8f", "namespaces": ["mKYlmZ3t", "Mq3jXByx", "FotaaovE"], "roleId": "vkzGxcAM"}, {"affectedClientIDs": ["wTfVTf2r", "fFjgLyzg", "3v55fXzg"], "domain": "sMt7uhxT", "namespaces": ["VlDHPd6X", "saFMlrlt", "zTTY9baS"], "roleId": "9iy6zncR"}], "Secret": "BAoRK8Vr", "TeamID": "AWZ1YqtE", "TokenAuthenticationType": "Wc8zrmJh", "TokenClaimsMapping": {"mOSsV3E2": "qad5QSLO", "kvCWeFYm": "GMzUNKUv", "2VzdIAA4": "LQcYx1Qg"}, "TokenEndpoint": "MW7QVHO1", "UserInfoEndpoint": "kXPIbJuD", "UserInfoHTTPMethod": "R9WBpeBF", "scopes": ["tLhfnJtN", "JWYOgU58", "VTEB3Z4X"]}' \
    > test.out 2>&1
eval_tap $? 135 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 136 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'IxLqrSQG' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 137 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'CCQ055dg' \
    --body '{"ACSURL": "Gabo4e5I", "AWSCognitoRegion": "2O3ckg3k", "AWSCognitoUserPool": "PrNO35ye", "AllowedClients": ["MOReUpyC", "QJW4RvfZ", "O6iH4EEE"], "AppId": "orHzcVV8", "AuthorizationEndpoint": "UIPj60Om", "ClientId": "qkokuC2c", "Environment": "ELPFSGk3", "FederationMetadataURL": "j3kslxbO", "GenericOauthFlow": true, "IsActive": true, "Issuer": "tZ9945tJ", "JWKSEndpoint": "Yk2tbRJa", "KeyID": "zjINYpV6", "NetflixCertificates": {"encryptedPrivateKey": "ILI2xBVz", "encryptedPrivateKeyName": "MFzXPAtP", "publicCertificate": "mUtxGOJK", "publicCertificateName": "gfYJZtZ2", "rootCertificate": "K4td2amu", "rootCertificateName": "7cWOQo3H"}, "OrganizationId": "OTE4Mjbm", "PlatformName": "NAKcayoX", "RedirectUri": "SY6CbYWz", "RegisteredDomains": [{"affectedClientIDs": ["Hpz09Wlo", "0fj425o8", "wymfupN1"], "domain": "pD56K8Yu", "namespaces": ["yeXhifBS", "g5a76ZtR", "C7vDyvTX"], "roleId": "SKLD85Fr"}, {"affectedClientIDs": ["DCnjGkT3", "CfQwIBl2", "CEtCOghm"], "domain": "W3ELc7K7", "namespaces": ["5AmxcFMJ", "5unh055p", "PzEzmpQT"], "roleId": "OsELVEaB"}, {"affectedClientIDs": ["d4ZrUZvv", "ZrB50ZZP", "fqCYNqnF"], "domain": "4A4240P0", "namespaces": ["CONRtX6u", "yjNQ0BMt", "JOoT37ny"], "roleId": "XmqQhuej"}], "Secret": "BtR86hDX", "TeamID": "eqWMUTlk", "TokenAuthenticationType": "W8amVCWn", "TokenClaimsMapping": {"nXBRqxQj": "fECghl7c", "T1kNiXdY": "jYg7CJF8", "BKo5uWOx": "G1YAn4UJ"}, "TokenEndpoint": "198gIdw8", "UserInfoEndpoint": "zF2RNdsq", "UserInfoHTTPMethod": "PmVZtT0o", "scopes": ["dqP7cJQp", "s9ZdaN3o", "amfjknpi"]}' \
    > test.out 2>&1
eval_tap $? 137 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 138 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ranWzuv2' \
    --body '{"affectedClientIDs": ["04xsGUC4", "IZDU7ZjI", "oeBLlXBP"], "assignedNamespaces": ["4cEd6wiC", "CGeafCO5", "vAjcEndq"], "domain": "hkvmnSF7", "roleId": "0cpgVgGp"}' \
    > test.out 2>&1
eval_tap $? 138 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 139 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'T4rBUDI6' \
    --body '{"domain": "09BansSy"}' \
    > test.out 2>&1
eval_tap $? 139 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 140 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId '9MFNkn82' \
    > test.out 2>&1
eval_tap $? 140 'RetrieveSSOLoginPlatformCredential' test.out

#- 141 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'XdmkmInN' \
    --body '{"acsUrl": "xRSqs32F", "apiKey": "0eF41u6n", "appId": "ZXdg0Qyq", "federationMetadataUrl": "U2qe4gqr", "isActive": false, "redirectUri": "6DwaN6I7", "secret": "PmeLewGr", "ssoUrl": "tE8mZgao"}' \
    > test.out 2>&1
eval_tap $? 141 'AddSSOLoginPlatformCredential' test.out

#- 142 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'iXnEKCIV' \
    > test.out 2>&1
eval_tap $? 142 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 143 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'DGyp28O4' \
    --body '{"acsUrl": "I5y9t1iY", "apiKey": "J0aV2Xhc", "appId": "cChCNWkt", "federationMetadataUrl": "7s3Du5M5", "isActive": true, "redirectUri": "CeRJCE0v", "secret": "fpEcpV25", "ssoUrl": "R6IePMtL"}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateSSOPlatformCredential' test.out

#- 144 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'QmKMf5ww' \
    --rawPID 'true' \
    --body '{"platformUserIds": ["qw0IwTOG", "nkXJW2un", "m7qwI3er"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 145 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'aeYtjFZ9' \
    --platformUserId 'd5wltgwH' \
    > test.out 2>&1
eval_tap $? 145 'AdminGetUserByPlatformUserIDV3' test.out

#- 146 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'v5RgPC4s' \
    --after '46' \
    --before '57' \
    --limit '5' \
    > test.out 2>&1
eval_tap $? 146 'GetAdminUsersByRoleIdV3' test.out

#- 147 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress '7jSRniW2' \
    > test.out 2>&1
eval_tap $? 147 'AdminGetUserByEmailAddressV3' test.out

#- 148 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'aV7g8veo' \
    --body '{"bulkUserId": ["EeNGTQ8o", "oiXmQ2g4", "YRe80Tb6"]}' \
    > test.out 2>&1
eval_tap $? 148 'AdminGetBulkUserBanV3' test.out

#- 149 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["BcsdsHkA", "5BG1M1kX", "4ZL1Uoz1"]}' \
    > test.out 2>&1
eval_tap $? 149 'AdminListUserIDByUserIDsV3' test.out

#- 150 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["KuWtzu48", "8zkl8iDt", "rfGic3n9"]}' \
    > test.out 2>&1
eval_tap $? 150 'AdminBulkGetUsersPlatform' test.out

#- 151 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["0YKdfgQw", "d2GvtdOB", "JYTX1Rkv"], "isAdmin": false, "namespace": "OjgsWtMW", "roles": ["JGFk9ktb", "xqh1zy3D", "EDINZNBI"]}' \
    > test.out 2>&1
eval_tap $? 151 'AdminInviteUserV3' test.out

#- 152 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '78' \
    --platformUserId 'MgU1LYAN' \
    --platformId 'Fi5NfpUq' \
    > test.out 2>&1
eval_tap $? 152 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 153 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 153 'AdminListUsersV3' test.out

#- 154 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'JvX8aiwC' \
    --endDate 'T59nvukP' \
    --includeTotal 'true' \
    --limit '53' \
    --offset '80' \
    --platformBy 'jfjEqoLo' \
    --platformId 'RCDqeRkA' \
    --query '77DYfsGt' \
    --startDate 'nCea1MKE' \
    --testAccount 'false' \
    > test.out 2>&1
eval_tap $? 154 'AdminSearchUserV3' test.out

#- 155 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["GZ96suVx", "c8hZRnMY", "MvXpadSP"]}' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetBulkUserByEmailAddressV3' test.out

#- 156 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'NkWfsJiN' \
    > test.out 2>&1
eval_tap $? 156 'AdminGetUserByUserIdV3' test.out

#- 157 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'mHiqKWS1' \
    --body '{"avatarUrl": "0bcf3qLv", "country": "UtDTjhyL", "dateOfBirth": "AULKrX5A", "displayName": "j8LvMz9D", "languageTag": "9Gq2SkDj", "userName": "k2Wlkbi7"}' \
    > test.out 2>&1
eval_tap $? 157 'AdminUpdateUserV3' test.out

#- 158 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xYAimBpi' \
    --activeOnly 'true' \
    --after 'u7r8mPHM' \
    --before 'Uryr7n4f' \
    --limit '32' \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserBanV3' test.out

#- 159 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'p2MV40yH' \
    --body '{"ban": "eqIUnwPf", "comment": "glva664m", "endDate": "UGTwYRfB", "reason": "4XAdvPNR", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 159 'AdminBanUserV3' test.out

#- 160 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'Lls9ZJy2' \
    --namespace $AB_NAMESPACE \
    --userId 'bJceoMbR' \
    --body '{"enabled": false, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserBanV3' test.out

#- 161 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'yUwySQ92' \
    --body '{"context": "3kJW6QL7", "emailAddress": "TuTzN13y", "languageTag": "xF9v36SJ"}' \
    > test.out 2>&1
eval_tap $? 161 'AdminSendVerificationCodeV3' test.out

#- 162 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'GJV3GeCE' \
    --body '{"Code": "CvH1ZzBM", "ContactType": "6lHHWXRn", "LanguageTag": "AvrM5sv3", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 162 'AdminVerifyAccountV3' test.out

#- 163 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'Rfg8X8m7' \
    > test.out 2>&1
eval_tap $? 163 'GetUserVerificationCode' test.out

#- 164 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'X2iRrxgr' \
    > test.out 2>&1
eval_tap $? 164 'AdminGetUserDeletionStatusV3' test.out

#- 165 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'cUt23CTF' \
    --body '{"deletionDate": 38, "enabled": true}' \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateUserDeletionStatusV3' test.out

#- 166 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'uVZQBqD3' \
    --body '{"code": "ICmIDx7q", "country": "KPl05845", "dateOfBirth": "Vr1AaaAs", "displayName": "UnEroBaF", "emailAddress": "KgKfrS3Q", "password": "nhvshXyU", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 166 'AdminUpgradeHeadlessAccountV3' test.out

#- 167 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'VYCI2E3i' \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserInformationV3' test.out

#- 168 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'tHp6me87' \
    --after '0.35760674906492906' \
    --before '0.14765190791494542' \
    --limit '46' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserLoginHistoriesV3' test.out

#- 169 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'pJrD2JoR' \
    --body '{"languageTag": "bkK0GgEP", "newPassword": "49fYo9bt", "oldPassword": "9ofeXzcB"}' \
    > test.out 2>&1
eval_tap $? 169 'AdminResetPasswordV3' test.out

#- 170 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'X6UROwKK' \
    --body '{"Permissions": [{"Action": 63, "Resource": "NRXiBqCP", "SchedAction": 57, "SchedCron": "CKgkFWPg", "SchedRange": ["CeibK47T", "5Fl3jtSa", "Pzh5cuG8"]}, {"Action": 80, "Resource": "d0T7BqNe", "SchedAction": 42, "SchedCron": "vcUvkVhT", "SchedRange": ["9MMzYf54", "Cq6A0hg0", "JkWDCDAo"]}, {"Action": 40, "Resource": "8SC5NENI", "SchedAction": 100, "SchedCron": "F0u41dMq", "SchedRange": ["uLtmmhLt", "VdGGZ4sH", "uFWHfRw6"]}]}' \
    > test.out 2>&1
eval_tap $? 170 'AdminUpdateUserPermissionV3' test.out

#- 171 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'YFaIl42a' \
    --body '{"Permissions": [{"Action": 62, "Resource": "AWqvAHbA", "SchedAction": 85, "SchedCron": "MSYFqA2h", "SchedRange": ["AKwOLKmB", "xsjUaLg7", "1NaWWZdy"]}, {"Action": 64, "Resource": "1hl6vrKP", "SchedAction": 42, "SchedCron": "53jHFnep", "SchedRange": ["HfWVU6Ny", "XafCtvi0", "xznd8XTO"]}, {"Action": 99, "Resource": "X5rDaZsc", "SchedAction": 99, "SchedCron": "a4r42ldk", "SchedRange": ["PGunnnMu", "nra97mpu", "WDvuZfmB"]}]}' \
    > test.out 2>&1
eval_tap $? 171 'AdminAddUserPermissionsV3' test.out

#- 172 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zDH3f3C1' \
    --body '[{"Action": 48, "Resource": "A59mhedp"}, {"Action": 26, "Resource": "SyAnLSxX"}, {"Action": 93, "Resource": "0ASi9bqc"}]' \
    > test.out 2>&1
eval_tap $? 172 'AdminDeleteUserPermissionBulkV3' test.out

#- 173 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '35' \
    --namespace $AB_NAMESPACE \
    --resource 'rDkMY6qu' \
    --userId 'lFNth97i' \
    > test.out 2>&1
eval_tap $? 173 'AdminDeleteUserPermissionV3' test.out

#- 174 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId '1vplclMM' \
    --after '5YHMJdPX' \
    --before 'VmHB7lvm' \
    --limit '34' \
    --platformId 'Xu3bB9u7' \
    > test.out 2>&1
eval_tap $? 174 'AdminGetUserPlatformAccountsV3' test.out

#- 175 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'pQzL0U0K' \
    > test.out 2>&1
eval_tap $? 175 'AdminGetListJusticePlatformAccounts' test.out

#- 176 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'HHNuhBOT' \
    --userId 'YfhsxleD' \
    > test.out 2>&1
eval_tap $? 176 'AdminGetUserMapping' test.out

#- 177 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'PXrzbusE' \
    --userId 'SbNxWOVe' \
    > test.out 2>&1
eval_tap $? 177 'AdminCreateJusticeUser' test.out

#- 178 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'VZyxzZz5' \
    --skipConflict 'true' \
    --body '{"platformId": "EwjIznPj", "platformUserId": "19jKZlTr"}' \
    > test.out 2>&1
eval_tap $? 178 'AdminLinkPlatformAccount' test.out

#- 179 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '8Z3UPFkG' \
    --userId 'gDPA95S6' \
    --body '{"platformNamespace": "uVfwT2hj"}' \
    > test.out 2>&1
eval_tap $? 179 'AdminPlatformUnlinkV3' test.out

#- 180 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '4yF0Pgv0' \
    --userId '7RnndpJi' \
    --ticket 'qpaEkEG2' \
    > test.out 2>&1
eval_tap $? 180 'AdminPlatformLinkV3' test.out

#- 181 AdminDeleteUserLinkingHistoryByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingHistoryByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'VnuJbyzu' \
    --userId '2PSbA5ai' \
    > test.out 2>&1
eval_tap $? 181 'AdminDeleteUserLinkingHistoryByPlatformIDV3' test.out

#- 182 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId '7lKrI6aN' \
    --userId 'kEm07y1N' \
    --platformToken 'pkaLMcQs' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 183 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'VNJIy8mz' \
    --userId 'ElNGxbsW' \
    > test.out 2>&1
eval_tap $? 183 'AdminGetUserSinglePlatformAccount' test.out

#- 184 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'cBobLdN9' \
    --body '["UkD1R9WC", "e6okf5k7", "5xQWfBWx"]' \
    > test.out 2>&1
eval_tap $? 184 'AdminDeleteUserRolesV3' test.out

#- 185 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'KMZMqTfa' \
    --body '[{"namespace": "jxkfO1uO", "roleId": "tAzeZFMZ"}, {"namespace": "3OfF1Bgx", "roleId": "uQkVomXj"}, {"namespace": "DZjLFqKH", "roleId": "Dvy0QjOb"}]' \
    > test.out 2>&1
eval_tap $? 185 'AdminSaveUserRoleV3' test.out

#- 186 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId '27iMOz8A' \
    --userId 'K1FMcsX6' \
    > test.out 2>&1
eval_tap $? 186 'AdminAddUserRoleV3' test.out

#- 187 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'DJsC9X1t' \
    --userId 'eeA1aAYw' \
    > test.out 2>&1
eval_tap $? 187 'AdminDeleteUserRoleV3' test.out

#- 188 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '1ynZ94yh' \
    --body '{"enabled": true, "reason": "buUH536K"}' \
    > test.out 2>&1
eval_tap $? 188 'AdminUpdateUserStatusV3' test.out

#- 189 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'HlA3VuaV' \
    --body '{"emailAddress": "7gkKu5gn", "password": "nvfUKW81"}' \
    > test.out 2>&1
eval_tap $? 189 'AdminTrustlyUpdateUserIdentity' test.out

#- 190 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId '2TezGtPv' \
    > test.out 2>&1
eval_tap $? 190 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 191 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'nDaGef32' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "zCV42RhY"}' \
    > test.out 2>&1
eval_tap $? 191 'AdminUpdateClientSecretV3' test.out

#- 192 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'nosG1wWB' \
    --before 'WrSkiB4t' \
    --isWildcard 'false' \
    --limit '97' \
    > test.out 2>&1
eval_tap $? 192 'AdminGetRolesV3' test.out

#- 193 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": false, "managers": [{"displayName": "x6V4TyPf", "namespace": "n36VYY97", "userId": "nfiLQt6G"}, {"displayName": "UCMv67bf", "namespace": "5K36nYTj", "userId": "gRGq2Ohk"}, {"displayName": "ufe5d0qn", "namespace": "jnpnU2au", "userId": "vhf5tZg3"}], "members": [{"displayName": "IYtQSV41", "namespace": "OUcani2H", "userId": "EP1iU1EX"}, {"displayName": "DgKSx3ZM", "namespace": "sVfUIv9b", "userId": "5RcjiXlt"}, {"displayName": "ztrsSKxl", "namespace": "D5zwvxRx", "userId": "1G2SMamZ"}], "permissions": [{"action": 55, "resource": "GuZt5omN", "schedAction": 14, "schedCron": "zdhwqorC", "schedRange": ["YxTDCTrq", "iakDbWoX", "sTuucjJJ"]}, {"action": 38, "resource": "LfomsZXq", "schedAction": 83, "schedCron": "gDp3kuKA", "schedRange": ["gBinjCHK", "YWhnWuYy", "UnbJIyGi"]}, {"action": 42, "resource": "juwv7dYJ", "schedAction": 46, "schedCron": "wvWCXxlM", "schedRange": ["ktvN14nX", "xjvffnQ9", "sd3piGy1"]}], "roleName": "PcLksUJL"}' \
    > test.out 2>&1
eval_tap $? 193 'AdminCreateRoleV3' test.out

#- 194 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId '58pBGyaS' \
    > test.out 2>&1
eval_tap $? 194 'AdminGetRoleV3' test.out

#- 195 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'GjDFqg0J' \
    > test.out 2>&1
eval_tap $? 195 'AdminDeleteRoleV3' test.out

#- 196 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'fU9R9yng' \
    --body '{"deletable": true, "isWildcard": false, "roleName": "w7VlYb0W"}' \
    > test.out 2>&1
eval_tap $? 196 'AdminUpdateRoleV3' test.out

#- 197 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'QFp8Fy4m' \
    > test.out 2>&1
eval_tap $? 197 'AdminGetRoleAdminStatusV3' test.out

#- 198 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'Cx8CPIwx' \
    > test.out 2>&1
eval_tap $? 198 'AdminUpdateAdminRoleStatusV3' test.out

#- 199 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'bItCTQ2g' \
    > test.out 2>&1
eval_tap $? 199 'AdminRemoveRoleAdminV3' test.out

#- 200 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'GIWH2R93' \
    --after 'zJ50TxDq' \
    --before 'FiVVnVWK' \
    --limit '60' \
    > test.out 2>&1
eval_tap $? 200 'AdminGetRoleManagersV3' test.out

#- 201 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'oQVEM6IB' \
    --body '{"managers": [{"displayName": "3eFRsRab", "namespace": "epClzcYH", "userId": "YUzqUyeF"}, {"displayName": "CxclrTBH", "namespace": "fdmv4htu", "userId": "I3IvjyrL"}, {"displayName": "CKEobIw2", "namespace": "x4bkTsO9", "userId": "qnxym4eC"}]}' \
    > test.out 2>&1
eval_tap $? 201 'AdminAddRoleManagersV3' test.out

#- 202 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'qzSDLU5q' \
    --body '{"managers": [{"displayName": "uDRjcvEY", "namespace": "4bGSQI0U", "userId": "1UwS8RMJ"}, {"displayName": "pywiZirL", "namespace": "KsFjafxw", "userId": "XkPEUcEy"}, {"displayName": "K6mlkaEe", "namespace": "vIGqZBdH", "userId": "EwLjl7Q6"}]}' \
    > test.out 2>&1
eval_tap $? 202 'AdminRemoveRoleManagersV3' test.out

#- 203 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'bc9Dtu8r' \
    --after 'Plrjoamf' \
    --before 'qNWzbbcU' \
    --limit '29' \
    > test.out 2>&1
eval_tap $? 203 'AdminGetRoleMembersV3' test.out

#- 204 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'UVJRRXxM' \
    --body '{"members": [{"displayName": "wuMDKpVH", "namespace": "WtznXCVT", "userId": "v0uG5MZI"}, {"displayName": "QfiqxdPe", "namespace": "TxCMrnwB", "userId": "yAAISgcC"}, {"displayName": "UPeKj7Yp", "namespace": "L9STCNC2", "userId": "OSpqOk6y"}]}' \
    > test.out 2>&1
eval_tap $? 204 'AdminAddRoleMembersV3' test.out

#- 205 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId '61P2HXZ7' \
    --body '{"members": [{"displayName": "he4ESPNH", "namespace": "dv5Z2M47", "userId": "j3Nkh9xF"}, {"displayName": "FKDZ1q5q", "namespace": "JUTEhQug", "userId": "aOeoq7xk"}, {"displayName": "1WzE9txI", "namespace": "GsVEYvBq", "userId": "I39pv9vb"}]}' \
    > test.out 2>&1
eval_tap $? 205 'AdminRemoveRoleMembersV3' test.out

#- 206 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'i0HgdoR7' \
    --body '{"permissions": [{"action": 67, "resource": "stincuJj", "schedAction": 85, "schedCron": "1ztWctjE", "schedRange": ["AAvYk5lR", "EkoSDlhE", "DLQEfWu0"]}, {"action": 26, "resource": "fLP9wv1T", "schedAction": 26, "schedCron": "EcqHN9Ha", "schedRange": ["IMaOPGug", "J03CNXed", "uHlD8cXu"]}, {"action": 66, "resource": "BqqeNHsn", "schedAction": 22, "schedCron": "RoCwsHa4", "schedRange": ["8q21jtW5", "7PCdgCgM", "o8gushNz"]}]}' \
    > test.out 2>&1
eval_tap $? 206 'AdminUpdateRolePermissionsV3' test.out

#- 207 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'TrqxS3ei' \
    --body '{"permissions": [{"action": 80, "resource": "xBhR3akh", "schedAction": 66, "schedCron": "EVpaIItB", "schedRange": ["zYhd4TXN", "07QaHEki", "t7DEEQoX"]}, {"action": 70, "resource": "1BjwzkS5", "schedAction": 63, "schedCron": "uXXvBCHT", "schedRange": ["Pi47ffD4", "Dzk8I6N1", "CHfWs01F"]}, {"action": 23, "resource": "PdxdV23H", "schedAction": 89, "schedCron": "c8lD0SXH", "schedRange": ["qWZwwjhL", "CfCO8oYo", "U4G61qLi"]}]}' \
    > test.out 2>&1
eval_tap $? 207 'AdminAddRolePermissionsV3' test.out

#- 208 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'm8AaF7mW' \
    --body '["6xRA12Qp", "uVUFL6T2", "8Krq3FYB"]' \
    > test.out 2>&1
eval_tap $? 208 'AdminDeleteRolePermissionsV3' test.out

#- 209 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '93' \
    --resource 'w61tidFS' \
    --roleId 'G6OZP32N' \
    > test.out 2>&1
eval_tap $? 209 'AdminDeleteRolePermissionV3' test.out

#- 210 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 210 'AdminGetMyUserV3' test.out

#- 211 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId '7hOsKj7c' \
    --extendExp 'true' \
    --redirectUri 'HbbwqL9v' \
    --password 'OGprvP70' \
    --requestId 'ucPGgVAn' \
    --userName 'He9greTm' \
    > test.out 2>&1
eval_tap $? 211 'UserAuthenticationV3' test.out

#- 212 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'true' \
    --clientId 'MBTthg7Q' \
    --linkingToken 'RVCVD4IR' \
    --password 'YUvZwpM8' \
    --username 'xbktO1mv' \
    > test.out 2>&1
eval_tap $? 212 'AuthenticationWithPlatformLinkV3' test.out

#- 213 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'OlAsYMCu' \
    --extendExp 'true' \
    --linkingToken 'xnTRl2G3' \
    > test.out 2>&1
eval_tap $? 213 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 214 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'onpa1xcM' \
    > test.out 2>&1
eval_tap $? 214 'RequestOneTimeLinkingCodeV3' test.out

#- 215 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'eRLzhjHr' \
    > test.out 2>&1
eval_tap $? 215 'ValidateOneTimeLinkingCodeV3' test.out

#- 216 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'LujYho7p' \
    --isTransient 'true' \
    --clientId 'olQzME5p' \
    --oneTimeLinkCode 'e1cCoxso' \
    > test.out 2>&1
eval_tap $? 216 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 217 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 217 'GetCountryLocationV3' test.out

#- 218 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 218 'Logout' test.out

#- 219 RequestTokenExchangeCodeV3
samples/cli/sample-apps Iam requestTokenExchangeCodeV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'Curko5nP' \
    > test.out 2>&1
eval_tap $? 219 'RequestTokenExchangeCodeV3' test.out

#- 220 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'gWdUEYZQ' \
    --userId 'jm6N4aIi' \
    > test.out 2>&1
eval_tap $? 220 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 221 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '1RFJQwGO' \
    --includeGameNamespace 'false' \
    > test.out 2>&1
eval_tap $? 221 'RevokeUserV3' test.out

#- 222 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'sS2RzFt2' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'true' \
    --oneTimeLinkCode 'ur108shC' \
    --redirectUri 'G9IRkkR6' \
    --scope 'O0Hz6gvC' \
    --state '7XG8dEyJ' \
    --targetAuthPage 'Cpv85QFR' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId 't7TWPoK9' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 222 'AuthorizeV3' test.out

#- 223 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'vsMwxWA7' \
    > test.out 2>&1
eval_tap $? 223 'TokenIntrospectionV3' test.out

#- 224 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 224 'GetJWKSV3' test.out

#- 225 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'YFYb2YJ1' \
    --factor 'oq4rvWao' \
    --mfaToken 'GImpKATW' \
    > test.out 2>&1
eval_tap $? 225 'SendMFAAuthenticationCode' test.out

#- 226 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'UeHrnvJT' \
    --mfaToken 'pqSSo6uT' \
    > test.out 2>&1
eval_tap $? 226 'Change2faMethod' test.out

#- 227 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'Shkzqp0q' \
    --factor 'X3XlPWgc' \
    --mfaToken 'NcTKXLEF' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 227 'Verify2faCode' test.out

#- 228 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'S1ipRqqQ' \
    --userId 'aS49YL0F' \
    > test.out 2>&1
eval_tap $? 228 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 229 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'ZhEJhghr' \
    --clientId 'ocseBM3o' \
    --redirectUri 'qrpi59dq' \
    --requestId 'scYqyfrc' \
    > test.out 2>&1
eval_tap $? 229 'AuthCodeRequestV3' test.out

#- 230 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'XfbyFbT9' \
    --additionalData 'FMndp094' \
    --clientId 'JlZimpNY' \
    --createHeadless 'false' \
    --deviceId 'cZlTnGN2' \
    --macAddress 'iwMMZJcS' \
    --platformToken '2hEd1WQC' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 230 'PlatformTokenGrantV3' test.out

#- 231 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 231 'GetRevocationListV3' test.out

#- 232 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'aFkX8GuI' \
    > test.out 2>&1
eval_tap $? 232 'TokenRevocationV3' test.out

#- 233 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'pspc' \
    --simultaneousTicket 'dXwvK1Qc' \
    --nativePlatform 'steam' \
    --nativePlatformTicket 'gN3acq7v' \
    > test.out 2>&1
eval_tap $? 233 'SimultaneousLoginV3' test.out

#- 234 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'aEOFv133' \
    --clientId 'KSWuLISu' \
    --code 'JJu8ZaCL' \
    --codeVerifier 'uLzzamYc' \
    --extendNamespace 'MV41hTMI' \
    --extendExp 'true' \
    --password 'Kzf1cXbO' \
    --redirectUri 'AUUmvHOX' \
    --refreshToken 'jDiT77dU' \
    --username 'f2QeClls' \
    --grantType 'client_credentials' \
    > test.out 2>&1
eval_tap $? 234 'TokenGrantV3' test.out

#- 235 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'OfrhKhTL' \
    > test.out 2>&1
eval_tap $? 235 'VerifyTokenV3' test.out

#- 236 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'tSxC2bKi' \
    --code 'txAOKa9W' \
    --error '0JUE9FbS' \
    --openidAssocHandle '4KgaX4yQ' \
    --openidClaimedId 'CiDynkVE' \
    --openidIdentity '46HGSBV7' \
    --openidMode 'QUw4dy5A' \
    --openidNs 'cjbVIrQ2' \
    --openidOpEndpoint 'bcSB4s4I' \
    --openidResponseNonce '1ZbOqb4I' \
    --openidReturnTo 'GhRWLbW3' \
    --openidSig 'JPOEbnch' \
    --openidSigned 'DymORr41' \
    --state 'hVl6N1RX' \
    > test.out 2>&1
eval_tap $? 236 'PlatformAuthenticationV3' test.out

#- 237 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'p8RnKqj3' \
    --platformToken 'XSN9thsR' \
    > test.out 2>&1
eval_tap $? 237 'PlatformTokenRefreshV3' test.out

#- 238 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'false' \
    --languageCode 'SpxOELYB' \
    > test.out 2>&1
eval_tap $? 238 'PublicGetInputValidations' test.out

#- 239 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'UoeqVRQC' \
    > test.out 2>&1
eval_tap $? 239 'PublicGetInputValidationByField' test.out

#- 240 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'Btv6OvrK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 240 'PublicGetCountryAgeRestrictionV3' test.out

#- 241 PublicGetCountryListV3
samples/cli/sample-apps Iam publicGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 241 'PublicGetCountryListV3' test.out

#- 242 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 242 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 243 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId '6n7E3p1H' \
    > test.out 2>&1
eval_tap $? 243 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 244 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'XCzacgTa' \
    --rawPID 'false' \
    --body '{"platformUserIds": ["rzVQZcyP", "dda2Y8B9", "ruZlkLOs"]}' \
    > test.out 2>&1
eval_tap $? 244 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 245 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId '44ZW80RK' \
    --platformUserId 'IjDYzjJh' \
    > test.out 2>&1
eval_tap $? 245 'PublicGetUserByPlatformUserIDV3' test.out

#- 246 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId '2Vhr3bMR' \
    > test.out 2>&1
eval_tap $? 246 'PublicGetAsyncStatus' test.out

#- 247 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'ijay4hVb' \
    --limit '34' \
    --offset '75' \
    --platformBy 'UtcinqEa' \
    --platformId 'OpCbX6It' \
    --query '6KApYAaW' \
    > test.out 2>&1
eval_tap $? 247 'PublicSearchUserV3' test.out

#- 248 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "sITMcw6g", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "HxrS453S", "policyId": "Sl9Imw6B", "policyVersionId": "rRM6Ks1N"}, {"isAccepted": false, "localizedPolicyVersionId": "Dt6B0CNR", "policyId": "h5TjSWtP", "policyVersionId": "8uXFK6np"}, {"isAccepted": true, "localizedPolicyVersionId": "SqxUFh7d", "policyId": "R1xwBExz", "policyVersionId": "0EW6is95"}], "authType": "EBlA8eww", "code": "nD7JwYSs", "country": "IG3C24e5", "dateOfBirth": "aDwBt92p", "displayName": "2Qie6oUk", "emailAddress": "Vydtrsa4", "password": "bwj8tL1Z", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 248 'PublicCreateUserV3' test.out

#- 249 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'EaK2Elwp' \
    --query 'ayzBiDfd' \
    > test.out 2>&1
eval_tap $? 249 'CheckUserAvailability' test.out

#- 250 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["QbfFY1RK", "fQKOyAz4", "TuKOlib3"]}' \
    > test.out 2>&1
eval_tap $? 250 'PublicBulkGetUsers' test.out

#- 251 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "s7WMG3Vf", "languageTag": "GwYaH2fa"}' \
    > test.out 2>&1
eval_tap $? 251 'PublicSendRegistrationCode' test.out

#- 252 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "hBFUOagM", "emailAddress": "9lKa5MNp"}' \
    > test.out 2>&1
eval_tap $? 252 'PublicVerifyRegistrationCode' test.out

#- 253 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "4EtLJx4l", "languageTag": "q8uq5Sti"}' \
    > test.out 2>&1
eval_tap $? 253 'PublicForgotPasswordV3' test.out

#- 254 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'J5A6TzBd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 254 'GetAdminInvitationV3' test.out

#- 255 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId '3TwMsfb7' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "0e5Hjxpb", "policyId": "wNd0TvZS", "policyVersionId": "3Hps5jzn"}, {"isAccepted": true, "localizedPolicyVersionId": "udB4peIq", "policyId": "oYYq8Uzf", "policyVersionId": "c2ucDGN6"}, {"isAccepted": false, "localizedPolicyVersionId": "p4lNkhWH", "policyId": "9I9zkGNR", "policyVersionId": "W9GVCgkm"}], "authType": "EMAILPASSWD", "country": "FiXq8jFZ", "dateOfBirth": "qON2EMob", "displayName": "jFE1yV4q", "password": "NDBDyxDc", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 255 'CreateUserFromInvitationV3' test.out

#- 256 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "VWbmWKRq", "country": "rUyLbauN", "dateOfBirth": "DfULvsl8", "displayName": "gRMqgK7S", "languageTag": "J83B7X2g", "userName": "S9BzbZXh"}' \
    > test.out 2>&1
eval_tap $? 256 'UpdateUserV3' test.out

#- 257 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "TWvnkUBv", "country": "TvoaJJDB", "dateOfBirth": "AKwN5zVm", "displayName": "dH38B1jB", "languageTag": "rBORJKYO", "userName": "Rc0wCYoi"}' \
    > test.out 2>&1
eval_tap $? 257 'PublicPartialUpdateUserV3' test.out

#- 258 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "iJZzHBTL", "emailAddress": "ITS6ByW2", "languageTag": "J9MITXcj"}' \
    > test.out 2>&1
eval_tap $? 258 'PublicSendVerificationCodeV3' test.out

#- 259 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "C2ARqo8z", "contactType": "c6KCeyID", "languageTag": "0ZdqMyNg", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 259 'PublicUserVerificationV3' test.out

#- 260 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "M7gYEoqO", "country": "Iwq5zccf", "dateOfBirth": "ytuCgY8c", "displayName": "y6fI9LiO", "emailAddress": "20XHpCH5", "password": "bOIRSX6g", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 260 'PublicUpgradeHeadlessAccountV3' test.out

#- 261 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'false' \
    --body '{"emailAddress": "smtUP4NE", "password": "CGenmro0"}' \
    > test.out 2>&1
eval_tap $? 261 'PublicVerifyHeadlessAccountV3' test.out

#- 262 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "aOdXkCni", "newPassword": "a5AuNIjZ", "oldPassword": "WFDN72Sf"}' \
    > test.out 2>&1
eval_tap $? 262 'PublicUpdatePasswordV3' test.out

#- 263 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace '1zrSFDaP' \
    > test.out 2>&1
eval_tap $? 263 'PublicCreateJusticeUser' test.out

#- 264 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '5o2M95wy' \
    --redirectUri 'zcqYQblF' \
    --ticket 'LKUaoPnS' \
    > test.out 2>&1
eval_tap $? 264 'PublicPlatformLinkV3' test.out

#- 265 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'bcSQhpDE' \
    --body '{"platformNamespace": "kKJlr88c"}' \
    > test.out 2>&1
eval_tap $? 265 'PublicPlatformUnlinkV3' test.out

#- 266 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'l0pgugtS' \
    > test.out 2>&1
eval_tap $? 266 'PublicPlatformUnlinkAllV3' test.out

#- 267 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'mggFb1kv' \
    --ticket '1tvUEIbt' \
    > test.out 2>&1
eval_tap $? 267 'PublicForcePlatformLinkV3' test.out

#- 268 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'DPYUje97' \
    --clientId 'TPfGWziI' \
    --redirectUri 'nQbvZMKS' \
    > test.out 2>&1
eval_tap $? 268 'PublicWebLinkPlatform' test.out

#- 269 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'G3EP6sPy' \
    --code 'gdFheGOt' \
    --state 'W5vkHtGU' \
    > test.out 2>&1
eval_tap $? 269 'PublicWebLinkPlatformEstablish' test.out

#- 270 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'mfPUvrlV' \
    --code 'eadnnR8H' \
    --state 'lZxYzugA' \
    > test.out 2>&1
eval_tap $? 270 'PublicProcessWebLinkPlatformV3' test.out

#- 271 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "IGmEL4f6", "userIds": ["ke2O9ZML", "OhUUQBmA", "nxANUQEt"]}' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetUsersPlatformInfosV3' test.out

#- 272 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "MEoKhdbQ", "emailAddress": "NXoe2oBg", "newPassword": "HYVix4pi"}' \
    > test.out 2>&1
eval_tap $? 272 'ResetPasswordV3' test.out

#- 273 PublicGetUserByUserIdV3
eval_tap 0 273 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 274 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jEorDdg5' \
    --activeOnly 'true' \
    --after 'CXcqBUtc' \
    --before 'GvNu1Ggq' \
    --limit '90' \
    > test.out 2>&1
eval_tap $? 274 'PublicGetUserBanHistoryV3' test.out

#- 275 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'sEUSto7q' \
    > test.out 2>&1
eval_tap $? 275 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 276 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'YUuKtRUt' \
    > test.out 2>&1
eval_tap $? 276 'PublicGetUserInformationV3' test.out

#- 277 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 's5ZoETNd' \
    --after '0.8019471710359007' \
    --before '0.39989697779770594' \
    --limit '35' \
    > test.out 2>&1
eval_tap $? 277 'PublicGetUserLoginHistoriesV3' test.out

#- 278 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jF1XjWf0' \
    --after 'Q2FBHjoU' \
    --before 'n1vCX8Va' \
    --limit '91' \
    --platformId 'RMUBX49L' \
    > test.out 2>&1
eval_tap $? 278 'PublicGetUserPlatformAccountsV3' test.out

#- 279 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vOy3CmSj' \
    > test.out 2>&1
eval_tap $? 279 'PublicListJusticePlatformAccountsV3' test.out

#- 280 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId '3HVvnHBr' \
    --body '{"platformId": "obGD76QF", "platformUserId": "lTKs54wC"}' \
    > test.out 2>&1
eval_tap $? 280 'PublicLinkPlatformAccount' test.out

#- 281 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'z3HkmEdt' \
    --body '{"chosenNamespaces": ["YIu5USu2", "eAb1cud2", "aNXvk4LA"], "requestId": "AP8Gc9Tw"}' \
    > test.out 2>&1
eval_tap $? 281 'PublicForceLinkPlatformWithProgression' test.out

#- 282 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'bUVDsaZ4' \
    > test.out 2>&1
eval_tap $? 282 'PublicGetPublisherUserV3' test.out

#- 283 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ECPY4WpX' \
    --password '4f1VQIcJ' \
    > test.out 2>&1
eval_tap $? 283 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 284 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'm8j89grV' \
    --before 'zjl6baKP' \
    --isWildcard 'true' \
    --limit '83' \
    > test.out 2>&1
eval_tap $? 284 'PublicGetRolesV3' test.out

#- 285 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'pASAuyh8' \
    > test.out 2>&1
eval_tap $? 285 'PublicGetRoleV3' test.out

#- 286 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'false' \
    > test.out 2>&1
eval_tap $? 286 'PublicGetMyUserV3' test.out

#- 287 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'uNWxSSt7' \
    > test.out 2>&1
eval_tap $? 287 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 288 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["TXKs9db3", "iQjW4552", "dCpXX5Np"], "oneTimeLinkCode": "KnNO0WJo"}' \
    > test.out 2>&1
eval_tap $? 288 'LinkHeadlessAccountToMyAccountV3' test.out

#- 289 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "HsZKN5Kw"}' \
    > test.out 2>&1
eval_tap $? 289 'PublicSendVerificationLinkV3' test.out

#- 290 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'z6rhtzPD' \
    > test.out 2>&1
eval_tap $? 290 'PublicVerifyUserByLinkV3' test.out

#- 291 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'jt7lrwJn' \
    --code 'apUKL7OI' \
    --error 'XYoT6G9n' \
    --state 'wC0wbDAr' \
    > test.out 2>&1
eval_tap $? 291 'PlatformAuthenticateSAMLV3Handler' test.out

#- 292 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'hcYyiIzb' \
    --payload '6KtlKh2N' \
    > test.out 2>&1
eval_tap $? 292 'LoginSSOClient' test.out

#- 293 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'OZybU5uJ' \
    > test.out 2>&1
eval_tap $? 293 'LogoutSSOClient' test.out

#- 294 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 'MbvsAOjz' \
    --code 'lTQawQSy' \
    > test.out 2>&1
eval_tap $? 294 'RequestTargetTokenResponseV3' test.out

#- 295 PlatformTokenRefreshV3Deprecate
eval_tap 0 295 'PlatformTokenRefreshV3Deprecate # SKIP deprecated' test.out

#- 296 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'JhrgFS3C' \
    > test.out 2>&1
eval_tap $? 296 'AdminGetDevicesByUserV4' test.out

#- 297 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType '7tr9ZyW4' \
    --endDate 'lI8WisEj' \
    --limit '99' \
    --offset '96' \
    --startDate 'CkdTdCeF' \
    > test.out 2>&1
eval_tap $? 297 'AdminGetBannedDevicesV4' test.out

#- 298 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'VuziJSfu' \
    > test.out 2>&1
eval_tap $? 298 'AdminGetUserDeviceBansV4' test.out

#- 299 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "MDjbCHRz", "deviceId": "FfcjmZUu", "deviceType": "4plcdypK", "enabled": true, "endDate": "piBSk6tp", "ext": {"J8526wv7": {}, "TuLEET3Z": {}, "WkRqzVet": {}}, "reason": "E7PxiWmi"}' \
    > test.out 2>&1
eval_tap $? 299 'AdminBanDeviceV4' test.out

#- 300 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'svnHZBKi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 300 'AdminGetDeviceBanV4' test.out

#- 301 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'CBoAXxnT' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 301 'AdminUpdateDeviceBanV4' test.out

#- 302 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'errUG1zq' \
    --startDate 'boCfwdks' \
    --deviceType 'VpN6ODd3' \
    > test.out 2>&1
eval_tap $? 302 'AdminGenerateReportV4' test.out

#- 303 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 303 'AdminGetDeviceTypesV4' test.out

#- 304 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'Cq6oa598' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 304 'AdminGetDeviceBansV4' test.out

#- 305 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'VeyRI6gt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 305 'AdminDecryptDeviceV4' test.out

#- 306 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'OsEVsgN5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 306 'AdminUnbanDeviceV4' test.out

#- 307 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId '4uhDu2ex' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 307 'AdminGetUsersByDeviceV4' test.out

#- 308 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 77}' \
    > test.out 2>&1
eval_tap $? 308 'AdminCreateTestUsersV4' test.out

#- 309 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "b7RclPk5", "policyId": "TxtbDOoa", "policyVersionId": "nyWwbAr9"}, {"isAccepted": true, "localizedPolicyVersionId": "Vib8gUG5", "policyId": "RrVxr0qE", "policyVersionId": "hJc7HwGU"}, {"isAccepted": false, "localizedPolicyVersionId": "GOs4LdZ5", "policyId": "fD5G2Si4", "policyVersionId": "Qqaq54Vy"}], "authType": "EMAILPASSWD", "code": "Y2ZtnCkv", "country": "Kz3gPtho", "dateOfBirth": "5NT8L8tD", "displayName": "R0WMtYNk", "emailAddress": "JE8JSvqR", "password": "Q32iUep1", "passwordMD5Sum": "gYQrDygg", "reachMinimumAge": false, "username": "D0C749NU"}' \
    > test.out 2>&1
eval_tap $? 309 'AdminCreateUserV4' test.out

#- 310 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": true, "userIds": ["N3Tkit1a", "rBvyUzLn", "8XBFqqCR"]}' \
    > test.out 2>&1
eval_tap $? 310 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 311 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["tMJjhejJ", "geeYdUpD", "Z70VZw8p"]}' \
    > test.out 2>&1
eval_tap $? 311 'AdminBulkCheckValidUserIDV4' test.out

#- 312 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'TBmkAuQt' \
    --body '{"avatarUrl": "KeliUuT8", "country": "kUKn6j8E", "dateOfBirth": "3uaD8JOk", "displayName": "9muh3Pu7", "languageTag": "8pU5G4kK", "userName": "rypgDhyA"}' \
    > test.out 2>&1
eval_tap $? 312 'AdminUpdateUserV4' test.out

#- 313 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'm8mENXWn' \
    --body '{"code": "CxqTmgL8", "emailAddress": "QPtSRABP"}' \
    > test.out 2>&1
eval_tap $? 313 'AdminUpdateUserEmailAddressV4' test.out

#- 314 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'dDPm6GGN' \
    > test.out 2>&1
eval_tap $? 314 'AdminDisableUserMFAV4' test.out

#- 315 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId '9j7oetEd' \
    > test.out 2>&1
eval_tap $? 315 'AdminListUserRolesV4' test.out

#- 316 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'hmExf6qi' \
    --body '{"assignedNamespaces": ["ttjQxPRw", "CFyLnZ4B", "mJnLWAXA"], "roleId": "4HoFDz9Y"}' \
    > test.out 2>&1
eval_tap $? 316 'AdminUpdateUserRoleV4' test.out

#- 317 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'BxO0IEnn' \
    --body '{"assignedNamespaces": ["cGqQf92L", "tduyCeY4", "lf20BHk6"], "roleId": "hbkm4Qkv"}' \
    > test.out 2>&1
eval_tap $? 317 'AdminAddUserRoleV4' test.out

#- 318 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Ti6WWumF' \
    --body '{"assignedNamespaces": ["mu1G0JXB", "BqwS9hHX", "8nDtqqNi"], "roleId": "Rb5FkXFM"}' \
    > test.out 2>&1
eval_tap $? 318 'AdminRemoveUserRoleV4' test.out

#- 319 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'true' \
    --isWildcard 'false' \
    --limit '17' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 319 'AdminGetRolesV4' test.out

#- 320 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "2F2DZBHH"}' \
    > test.out 2>&1
eval_tap $? 320 'AdminCreateRoleV4' test.out

#- 321 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'XeNXsJQx' \
    > test.out 2>&1
eval_tap $? 321 'AdminGetRoleV4' test.out

#- 322 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'VSRNqnUJ' \
    > test.out 2>&1
eval_tap $? 322 'AdminDeleteRoleV4' test.out

#- 323 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'G5e4F1sm' \
    --body '{"adminRole": false, "deletable": false, "isWildcard": true, "roleName": "r0ap23PK"}' \
    > test.out 2>&1
eval_tap $? 323 'AdminUpdateRoleV4' test.out

#- 324 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'tSSxtZP1' \
    --body '{"permissions": [{"action": 22, "resource": "P75Rd7EO", "schedAction": 96, "schedCron": "9HKa5nGt", "schedRange": ["4tD1kvmX", "hzaBSyeW", "m309W2Fa"]}, {"action": 97, "resource": "h5n7uNXU", "schedAction": 70, "schedCron": "sgifJhmF", "schedRange": ["0X3csW3k", "FOEfksAP", "x2uRo9cR"]}, {"action": 43, "resource": "47LlFV5l", "schedAction": 3, "schedCron": "Wd0gvKfS", "schedRange": ["QLEvvBFr", "MmIm0aB1", "JvQS1xmw"]}]}' \
    > test.out 2>&1
eval_tap $? 324 'AdminUpdateRolePermissionsV4' test.out

#- 325 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'lJ89vSqP' \
    --body '{"permissions": [{"action": 24, "resource": "6ZB6JS63", "schedAction": 74, "schedCron": "xtYy8nXp", "schedRange": ["7o9dTzx3", "xGq0YS32", "hV6WVUu8"]}, {"action": 29, "resource": "TaIIActB", "schedAction": 72, "schedCron": "BmQxIjQy", "schedRange": ["5iU5ykl7", "XueFfjkU", "jnNI7nel"]}, {"action": 53, "resource": "TCjwq121", "schedAction": 34, "schedCron": "AkUFvZaI", "schedRange": ["WFsKEFn9", "tBlcKikp", "b9NHuPfS"]}]}' \
    > test.out 2>&1
eval_tap $? 325 'AdminAddRolePermissionsV4' test.out

#- 326 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'Co3MFAvO' \
    --body '["RceMGBDl", "2qVmuyV4", "YIwgGY2b"]' \
    > test.out 2>&1
eval_tap $? 326 'AdminDeleteRolePermissionsV4' test.out

#- 327 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'qYQrfbMF' \
    --after 'ySoJq27Z' \
    --before 'FpGimZVR' \
    --limit '10' \
    > test.out 2>&1
eval_tap $? 327 'AdminListAssignedUsersV4' test.out

#- 328 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'IEvjUNCJ' \
    --body '{"assignedNamespaces": ["s82fES38", "sxOJeVsh", "wru6gT8d"], "namespace": "u5rIrTcP", "userId": "85tncNSr"}' \
    > test.out 2>&1
eval_tap $? 328 'AdminAssignUserToRoleV4' test.out

#- 329 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'G9zvBOZa' \
    --body '{"namespace": "H9eXrBWC", "userId": "vsikpxjH"}' \
    > test.out 2>&1
eval_tap $? 329 'AdminRevokeUserFromRoleV4' test.out

#- 330 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["u8QDYqYC", "I4xa93NS", "vpz4ziHA"], "emailAddresses": ["ivvVy8Ya", "oWlFed9t", "jt8ugxn7"], "isAdmin": true, "namespace": "hnkv0ndj", "roleId": "zTAyxc9z"}' \
    > test.out 2>&1
eval_tap $? 330 'AdminInviteUserNewV4' test.out

#- 331 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "X5z2fnqJ", "country": "4tcqDzbn", "dateOfBirth": "319IvrGN", "displayName": "fW18t2S9", "languageTag": "4FRR3CMd", "userName": "oSVawP8i"}' \
    > test.out 2>&1
eval_tap $? 331 'AdminUpdateMyUserV4' test.out

#- 332 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 332 'AdminDisableMyAuthenticatorV4' test.out

#- 333 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'P1fxkUvb' \
    > test.out 2>&1
eval_tap $? 333 'AdminEnableMyAuthenticatorV4' test.out

#- 334 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 334 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 335 AdminGetMyBackupCodesV4
samples/cli/sample-apps Iam adminGetMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 335 'AdminGetMyBackupCodesV4' test.out

#- 336 AdminGenerateMyBackupCodesV4
samples/cli/sample-apps Iam adminGenerateMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 336 'AdminGenerateMyBackupCodesV4' test.out

#- 337 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 337 'AdminDisableMyBackupCodesV4' test.out

#- 338 AdminDownloadMyBackupCodesV4
samples/cli/sample-apps Iam adminDownloadMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 338 'AdminDownloadMyBackupCodesV4' test.out

#- 339 AdminEnableMyBackupCodesV4
samples/cli/sample-apps Iam adminEnableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 339 'AdminEnableMyBackupCodesV4' test.out

#- 340 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    > test.out 2>&1
eval_tap $? 340 'AdminSendMyMFAEmailCodeV4' test.out

#- 341 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    > test.out 2>&1
eval_tap $? 341 'AdminDisableMyEmailV4' test.out

#- 342 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'DQhy96OK' \
    > test.out 2>&1
eval_tap $? 342 'AdminEnableMyEmailV4' test.out

#- 343 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 343 'AdminGetMyEnabledFactorsV4' test.out

#- 344 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'QGTaKyQ3' \
    > test.out 2>&1
eval_tap $? 344 'AdminMakeFactorMyDefaultV4' test.out

#- 345 AdminInviteUserV4
eval_tap 0 345 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 346 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "0MciUM4a", "policyId": "qQECCaR0", "policyVersionId": "4jaIVxt8"}, {"isAccepted": false, "localizedPolicyVersionId": "dIjgOZGD", "policyId": "eoVTIPuk", "policyVersionId": "r5L2aIB0"}, {"isAccepted": true, "localizedPolicyVersionId": "vfx7yl5y", "policyId": "o4anHkb9", "policyVersionId": "la8JRLPB"}], "authType": "EMAILPASSWD", "country": "8Be3z4Am", "dateOfBirth": "rJI04H9x", "displayName": "TmMXCHJV", "emailAddress": "i3TQcPKl", "password": "YzLEvyxj", "passwordMD5Sum": "5uJvv6ap", "username": "oJLe8f19", "verified": false}' \
    > test.out 2>&1
eval_tap $? 346 'PublicCreateTestUserV4' test.out

#- 347 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "ksF28Uvx", "policyId": "D86dJMyT", "policyVersionId": "xu3Hukrh"}, {"isAccepted": false, "localizedPolicyVersionId": "BIh3vFrc", "policyId": "jAvuWYc8", "policyVersionId": "2Rz0p3Fd"}, {"isAccepted": true, "localizedPolicyVersionId": "Elm9QdPo", "policyId": "fqWXZczZ", "policyVersionId": "2RWokDDL"}], "authType": "EMAILPASSWD", "code": "0ZpQtD1B", "country": "j89iX0Vj", "dateOfBirth": "kzlgT6q9", "displayName": "MqkSWGuC", "emailAddress": "BNoKiltI", "password": "e1Hm0eBr", "passwordMD5Sum": "V7FPr9pS", "reachMinimumAge": false, "username": "K003iN5N"}' \
    > test.out 2>&1
eval_tap $? 347 'PublicCreateUserV4' test.out

#- 348 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'ZyaSrHEu' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "Yjh0WtNy", "policyId": "p7IvSrAU", "policyVersionId": "vSUHieRN"}, {"isAccepted": false, "localizedPolicyVersionId": "tDIrLvYL", "policyId": "TSjhTBdm", "policyVersionId": "Cqh6ksnr"}, {"isAccepted": false, "localizedPolicyVersionId": "qZRnXwf2", "policyId": "ZBvB79y6", "policyVersionId": "kD22uqnB"}], "authType": "EMAILPASSWD", "country": "dSsUjZvC", "dateOfBirth": "0oUFaxDT", "displayName": "xoUGvR6y", "password": "QEvWrMPu", "reachMinimumAge": false, "username": "oy6NaUCO"}' \
    > test.out 2>&1
eval_tap $? 348 'CreateUserFromInvitationV4' test.out

#- 349 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "U11YpJ0V", "country": "B8t2f9ch", "dateOfBirth": "4se6DmEQ", "displayName": "PLsLTFpT", "languageTag": "aR7gS3Et", "userName": "GNaeR5VG"}' \
    > test.out 2>&1
eval_tap $? 349 'PublicUpdateUserV4' test.out

#- 350 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Ifw8V5Gu", "emailAddress": "NNbb4imG"}' \
    > test.out 2>&1
eval_tap $? 350 'PublicUpdateUserEmailAddressV4' test.out

#- 351 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "iTHd3t6y", "country": "o4ogOP46", "dateOfBirth": "xpEzKYE4", "displayName": "ZARHaF5o", "emailAddress": "ceUOrU0H", "password": "PrLGca4w", "reachMinimumAge": true, "username": "76rIS1RS", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 351 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 352 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "KMZlx2Bq", "password": "XOknVmkW", "username": "mo22iDXW"}' \
    > test.out 2>&1
eval_tap $? 352 'PublicUpgradeHeadlessAccountV4' test.out

#- 353 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 353 'PublicDisableMyAuthenticatorV4' test.out

#- 354 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'qhnPH1D8' \
    > test.out 2>&1
eval_tap $? 354 'PublicEnableMyAuthenticatorV4' test.out

#- 355 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 355 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 356 PublicGetMyBackupCodesV4
samples/cli/sample-apps Iam publicGetMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 356 'PublicGetMyBackupCodesV4' test.out

#- 357 PublicGenerateMyBackupCodesV4
samples/cli/sample-apps Iam publicGenerateMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 357 'PublicGenerateMyBackupCodesV4' test.out

#- 358 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 358 'PublicDisableMyBackupCodesV4' test.out

#- 359 PublicDownloadMyBackupCodesV4
samples/cli/sample-apps Iam publicDownloadMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 359 'PublicDownloadMyBackupCodesV4' test.out

#- 360 PublicEnableMyBackupCodesV4
samples/cli/sample-apps Iam publicEnableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 360 'PublicEnableMyBackupCodesV4' test.out

#- 361 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 361 'PublicRemoveTrustedDeviceV4' test.out

#- 362 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 362 'PublicSendMyMFAEmailCodeV4' test.out

#- 363 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 363 'PublicDisableMyEmailV4' test.out

#- 364 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'koY738NP' \
    > test.out 2>&1
eval_tap $? 364 'PublicEnableMyEmailV4' test.out

#- 365 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 365 'PublicGetMyEnabledFactorsV4' test.out

#- 366 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'G0M6u8wU' \
    > test.out 2>&1
eval_tap $? 366 'PublicMakeFactorMyDefaultV4' test.out

#- 367 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'kjXA9EdT' \
    > test.out 2>&1
eval_tap $? 367 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 368 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "gZE4J0d2", "emailAddress": "yZ7V9lfo", "namespace": "ZuOrTFej", "namespaceDisplayName": "DKrCPYeN"}' \
    > test.out 2>&1
eval_tap $? 368 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE