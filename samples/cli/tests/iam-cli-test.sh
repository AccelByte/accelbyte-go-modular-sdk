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
echo "1..389"

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

#- 108 AdminListClientAvailablePermissions
samples/cli/sample-apps Iam adminListClientAvailablePermissions \
    --excludePermissions 'false' \
    > test.out 2>&1
eval_tap $? 108 'AdminListClientAvailablePermissions' test.out

#- 109 AdminUpdateAvailablePermissionsByModule
samples/cli/sample-apps Iam adminUpdateAvailablePermissionsByModule \
    --body '{"modules": [{"docLink": "Fb3ue4tx", "groups": [{"group": "vzRaZFbd", "groupId": "UmWIeDVD", "permissions": [{"allowedActions": [26, 20, 92], "resource": "S0qXw8LG"}, {"allowedActions": [78, 63, 23], "resource": "HQOGiSyU"}, {"allowedActions": [44, 77, 58], "resource": "vbK4gWou"}]}, {"group": "JRvZL7GM", "groupId": "EIbi8vcg", "permissions": [{"allowedActions": [58, 22, 7], "resource": "72oQvRQQ"}, {"allowedActions": [71, 100, 76], "resource": "8EWWWd3A"}, {"allowedActions": [30, 26, 21], "resource": "QIshlcpl"}]}, {"group": "DNfrNJdF", "groupId": "clpTz2WI", "permissions": [{"allowedActions": [5, 45, 69], "resource": "kS5PU8ZF"}, {"allowedActions": [2, 16, 5], "resource": "YJl8AbJY"}, {"allowedActions": [46, 82, 85], "resource": "YSYL9PdJ"}]}], "module": "PqDjx1Lm", "moduleId": "Ezm6ABHt"}, {"docLink": "UXH2KR2e", "groups": [{"group": "nWzAPZoq", "groupId": "9igCs3rj", "permissions": [{"allowedActions": [90, 61, 22], "resource": "REqBIjV8"}, {"allowedActions": [100, 3, 60], "resource": "AF1EUv0Y"}, {"allowedActions": [24, 67, 65], "resource": "DhhHQtUV"}]}, {"group": "CPLhHcsQ", "groupId": "OPWqCJ6W", "permissions": [{"allowedActions": [9, 23, 88], "resource": "E6wtnOq8"}, {"allowedActions": [90, 59, 70], "resource": "vweLGtxh"}, {"allowedActions": [77, 20, 54], "resource": "azjHBxyJ"}]}, {"group": "43lYv2Hs", "groupId": "WBRqfv0M", "permissions": [{"allowedActions": [62, 79, 61], "resource": "FLtjRbHV"}, {"allowedActions": [70, 47, 20], "resource": "L7LAPWJY"}, {"allowedActions": [18, 83, 88], "resource": "ahuOeUTg"}]}], "module": "Su9XhAbJ", "moduleId": "0TviobrG"}, {"docLink": "3RJMDqwa", "groups": [{"group": "TUB5kp8s", "groupId": "kf0Is58O", "permissions": [{"allowedActions": [59, 79, 58], "resource": "7PyFWbyH"}, {"allowedActions": [51, 40, 5], "resource": "XhJqMvU2"}, {"allowedActions": [54, 51, 79], "resource": "N8EviLFb"}]}, {"group": "2BXFgHr9", "groupId": "tE0YGiKy", "permissions": [{"allowedActions": [96, 27, 80], "resource": "qg94tVA9"}, {"allowedActions": [53, 14, 70], "resource": "n69woDur"}, {"allowedActions": [10, 93, 3], "resource": "wrl0Smi7"}]}, {"group": "rWBLvSIM", "groupId": "O6ZVyvjc", "permissions": [{"allowedActions": [99, 97, 45], "resource": "xYF6b2qN"}, {"allowedActions": [88, 28, 37], "resource": "RXkvEh3o"}, {"allowedActions": [39, 83, 53], "resource": "ZTcIVKKO"}]}], "module": "GOB1JRA0", "moduleId": "ao36za1h"}]}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
samples/cli/sample-apps Iam adminDeleteConfigPermissionsByGroup \
    --body '{"groupId": "4rslsIyQ", "moduleId": "GUxAy47v"}' \
    > test.out 2>&1
eval_tap $? 110 'AdminDeleteConfigPermissionsByGroup' test.out

#- 111 AdminListClientTemplates
samples/cli/sample-apps Iam adminListClientTemplates \
    > test.out 2>&1
eval_tap $? 111 'AdminListClientTemplates' test.out

#- 112 AdminGetInputValidations
samples/cli/sample-apps Iam adminGetInputValidations \
    > test.out 2>&1
eval_tap $? 112 'AdminGetInputValidations' test.out

#- 113 AdminUpdateInputValidations
samples/cli/sample-apps Iam adminUpdateInputValidations \
    --body '[{"field": "BiMgqbye", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["trSd6TAv", "6e61Gx2v", "Rb590nIr"], "preferRegex": false, "regex": "WXasf7xh"}, "blockedWord": ["BDyEoofR", "5I5FSQrv", "B2Xm2bbx"], "description": [{"language": "QZZ22OVO", "message": ["wb1AQfP8", "XIeOCMt2", "tWCXCsqG"]}, {"language": "bukKclhQ", "message": ["XfhkiZ0O", "ttBNbWho", "z9l6xw1J"]}, {"language": "REVGNPoJ", "message": ["5XWxfTOO", "MBoPpu8j", "uiRcrDMw"]}], "isCustomRegex": false, "letterCase": "Ug4kWmci", "maxLength": 28, "maxRepeatingAlphaNum": 57, "maxRepeatingSpecialCharacter": 91, "minCharType": 48, "minLength": 38, "regex": "US21Yor4", "specialCharacterLocation": "e3hYrwvs", "specialCharacters": ["rstjuc58", "s48Yz9Wy", "p32a6FI3"]}}, {"field": "Oju3LJ2e", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["sKNIr7xP", "fL7Hqarp", "DU3YVCBp"], "preferRegex": true, "regex": "68EwqcAc"}, "blockedWord": ["UJTjpLKX", "wYob3ttg", "g00ityOE"], "description": [{"language": "UTdh3tEE", "message": ["1KdLCWhV", "P1X8nYyG", "0sVN5sGp"]}, {"language": "aj1YgrhL", "message": ["aXLJntZl", "WmUraO6V", "jvWV3JiG"]}, {"language": "8ls5McUK", "message": ["5nxwJXpT", "kktuyKfo", "q7HbPnUN"]}], "isCustomRegex": false, "letterCase": "UdE8aoqC", "maxLength": 37, "maxRepeatingAlphaNum": 40, "maxRepeatingSpecialCharacter": 44, "minCharType": 94, "minLength": 64, "regex": "b5r0HY8z", "specialCharacterLocation": "FDkOl8m8", "specialCharacters": ["NeEEwvqZ", "5rk5MwXS", "U9isFBu5"]}}, {"field": "EnvP6Zrt", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["nyGYDKUZ", "29CZVfBx", "CTTt2cGI"], "preferRegex": true, "regex": "FfN841jF"}, "blockedWord": ["ROT8zeJ8", "awjCS7tl", "eOe1zYNL"], "description": [{"language": "sfJJ2iUa", "message": ["HuayZ6Re", "OfY7kmzL", "O64mZtzK"]}, {"language": "lqOyRLXB", "message": ["5ODai0tt", "av0eWpGU", "BMsExBhL"]}, {"language": "mWtZRwYc", "message": ["A1Mw2bN1", "W0TCvdPF", "fIhwIeIa"]}], "isCustomRegex": false, "letterCase": "eGaRdgnl", "maxLength": 32, "maxRepeatingAlphaNum": 43, "maxRepeatingSpecialCharacter": 73, "minCharType": 99, "minLength": 92, "regex": "ytoCrHuK", "specialCharacterLocation": "Xxq9Ldai", "specialCharacters": ["CqW3ILyl", "JDjnZZh0", "jUmVbX3I"]}}]' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'ScuSy7Sb' \
    > test.out 2>&1
eval_tap $? 114 'AdminResetInputValidations' test.out

#- 115 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after '1WHcuZJV' \
    --before 'xnzXemtx' \
    --endDate '39jxnRn6' \
    --limit '50' \
    --query 'Uc1PLbhf' \
    --roleId 'erEYtzhs' \
    --startDate 'vS5L1aci' \
    > test.out 2>&1
eval_tap $? 115 'ListAdminsV3' test.out

#- 116 AdminGetAgeRestrictionStatusV3
samples/cli/sample-apps Iam adminGetAgeRestrictionStatusV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 116 'AdminGetAgeRestrictionStatusV3' test.out

#- 117 AdminUpdateAgeRestrictionConfigV3
samples/cli/sample-apps Iam adminUpdateAgeRestrictionConfigV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 46, "enable": false}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 118 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminGetListCountryAgeRestrictionV3' test.out

#- 119 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'WsQeaXgN' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 98}' \
    > test.out 2>&1
eval_tap $? 119 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 120 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'O6mWKhYy' \
    --limit '48' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetBannedUsersV3' test.out

#- 121 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "aVTctVj0", "comment": "VSA0TOKK", "endDate": "rXA4gRW2", "reason": "q8NniuyN", "skipNotif": true, "userIds": ["IjgGV2pS", "HpW0jC1d", "iKkt4EV7"]}' \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "LS8YbDjU", "userId": "LlEQfKcU"}, {"banId": "fB9K8lvQ", "userId": "S6ovtsTs"}, {"banId": "8rJoYKqk", "userId": "TmMI7OWO"}]}' \
    > test.out 2>&1
eval_tap $? 122 'AdminUnbanUserBulkV3' test.out

#- 123 AdminGetBansTypeWithNamespaceV3
samples/cli/sample-apps Iam adminGetBansTypeWithNamespaceV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminGetBansTypeWithNamespaceV3' test.out

#- 124 AdminGetClientsByNamespaceV3
samples/cli/sample-apps Iam adminGetClientsByNamespaceV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'b8Fm1X3J' \
    --clientName 'uKcc4iGV' \
    --clientType 'cQedHpDq' \
    --limit '24' \
    --offset '51' \
    --skipLoginQueue 'true' \
    > test.out 2>&1
eval_tap $? 124 'AdminGetClientsByNamespaceV3' test.out

#- 125 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["uQHOIVcM", "BoNsJfKv", "4wWXK1MI"], "baseUri": "0TVU6mk0", "clientId": "hv1cy76m", "clientName": "xNBDZsj5", "clientPermissions": [{"action": 29, "resource": "4hS9iEu4", "schedAction": 0, "schedCron": "monEruAH", "schedRange": ["PV107JgH", "BZlvbNxk", "1w9QigT4"]}, {"action": 49, "resource": "4lEtlP2s", "schedAction": 57, "schedCron": "f3gSPfWI", "schedRange": ["j3d01rPa", "tj91qcF5", "4eh98B8x"]}, {"action": 23, "resource": "p6RyToHV", "schedAction": 63, "schedCron": "nLSabz6V", "schedRange": ["jKBOLG1r", "Ut66pEKN", "9fsyJWvJ"]}], "clientPlatform": "A7bGj2FM", "deletable": false, "description": "CEXpHKhB", "modulePermissions": [{"moduleId": "LSHmvTw2", "selectedGroups": [{"groupId": "iYvq1AOa", "selectedActions": [82, 10, 96]}, {"groupId": "gv4BwhtE", "selectedActions": [25, 87, 72]}, {"groupId": "6fdfXSMP", "selectedActions": [9, 61, 85]}]}, {"moduleId": "XcAJfOSZ", "selectedGroups": [{"groupId": "g4POcRZ2", "selectedActions": [5, 72, 10]}, {"groupId": "sSrij2ym", "selectedActions": [26, 21, 89]}, {"groupId": "uKrXFJm4", "selectedActions": [36, 34, 34]}]}, {"moduleId": "fAd6D0m0", "selectedGroups": [{"groupId": "EktNOLY5", "selectedActions": [31, 15, 9]}, {"groupId": "91cugibR", "selectedActions": [64, 84, 19]}, {"groupId": "63rRvDYM", "selectedActions": [76, 86, 60]}]}], "namespace": "GMJLtEBj", "oauthAccessTokenExpiration": 81, "oauthAccessTokenExpirationTimeUnit": "dgXPBxLU", "oauthClientType": "GkZppeIL", "oauthRefreshTokenExpiration": 17, "oauthRefreshTokenExpirationTimeUnit": "5NEU5HGw", "parentNamespace": "wR8m7RmU", "redirectUri": "P864nh1V", "scopes": ["5dUFtNDC", "we9hXJT4", "MyHvwqbo"], "secret": "YAPeabKT", "skipLoginQueue": false, "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 125 'AdminCreateClientV3' test.out

#- 126 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId '7kwTwJIm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 126 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 127 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'hi9jVk9F' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteClientV3' test.out

#- 128 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'LiuFYCin' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["hNCjOj4S", "mPmMLi2a", "st6CjRPo"], "baseUri": "zLbB4WMn", "clientName": "9EeNAnLY", "clientPermissions": [{"action": 60, "resource": "s8KlyMPK", "schedAction": 62, "schedCron": "IO4Kw9yH", "schedRange": ["wjQsxubA", "TsqkBDAG", "5gQRFS3n"]}, {"action": 43, "resource": "exvOxyFp", "schedAction": 10, "schedCron": "YI0Cyonj", "schedRange": ["UfqZtYIO", "p9UXq7fJ", "Pop3qgON"]}, {"action": 46, "resource": "g5G58SpJ", "schedAction": 94, "schedCron": "eQAxQaJ3", "schedRange": ["whZdGcCM", "UmKTU0Hl", "P7idgVXY"]}], "clientPlatform": "Pfjnvyhl", "deletable": false, "description": "Z4ha6GTU", "modulePermissions": [{"moduleId": "7MgOTRuB", "selectedGroups": [{"groupId": "Q7K3ivEI", "selectedActions": [22, 92, 18]}, {"groupId": "FLaaW3kj", "selectedActions": [89, 67, 4]}, {"groupId": "3RsshWTs", "selectedActions": [17, 89, 0]}]}, {"moduleId": "gApJrdvM", "selectedGroups": [{"groupId": "yX68C2bL", "selectedActions": [71, 61, 67]}, {"groupId": "9L7itpyb", "selectedActions": [69, 8, 28]}, {"groupId": "wdGzmdwR", "selectedActions": [73, 18, 10]}]}, {"moduleId": "S2Hg6SRg", "selectedGroups": [{"groupId": "P9QNeapi", "selectedActions": [20, 81, 13]}, {"groupId": "kodHT4ja", "selectedActions": [51, 60, 54]}, {"groupId": "Gqu8QPcX", "selectedActions": [92, 82, 98]}]}], "namespace": "kodKJXFr", "oauthAccessTokenExpiration": 36, "oauthAccessTokenExpirationTimeUnit": "jKPz3ZvS", "oauthRefreshTokenExpiration": 7, "oauthRefreshTokenExpirationTimeUnit": "U15FIdwr", "redirectUri": "sXHMouPJ", "scopes": ["nqZN1AYv", "FO8RoOiS", "0ISksrzB"], "skipLoginQueue": true, "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateClientV3' test.out

#- 129 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'HyFhFI9Z' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 58, "resource": "9kJ1ent8"}, {"action": 65, "resource": "NAJrmRMI"}, {"action": 58, "resource": "KDnOd2ke"}]}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientPermissionV3' test.out

#- 130 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'pKquPrCE' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 81, "resource": "ZeDdAz0L"}, {"action": 31, "resource": "wL4bIDnV"}, {"action": 26, "resource": "8Nj1IUmG"}]}' \
    > test.out 2>&1
eval_tap $? 130 'AdminAddClientPermissionsV3' test.out

#- 131 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '63' \
    --clientId '2MRH8iH2' \
    --namespace $AB_NAMESPACE \
    --resource 'BvY3ui9f' \
    > test.out 2>&1
eval_tap $? 131 'AdminDeleteClientPermissionV3' test.out

#- 132 AdminGetConfigValueV3
samples/cli/sample-apps Iam adminGetConfigValueV3 \
    --configKey 'QZnWi3g4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 132 'AdminGetConfigValueV3' test.out

#- 133 AdminGetCountryListV3
samples/cli/sample-apps Iam adminGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    --filterBlacklist 'false' \
    > test.out 2>&1
eval_tap $? 133 'AdminGetCountryListV3' test.out

#- 134 AdminGetCountryBlacklistV3
samples/cli/sample-apps Iam adminGetCountryBlacklistV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 134 'AdminGetCountryBlacklistV3' test.out

#- 135 AdminAddCountryBlacklistV3
samples/cli/sample-apps Iam adminAddCountryBlacklistV3 \
    --namespace $AB_NAMESPACE \
    --body '{"blacklist": ["dr6lw5HH", "ykUTJVDb", "EDkDmKa8"]}' \
    > test.out 2>&1
eval_tap $? 135 'AdminAddCountryBlacklistV3' test.out

#- 136 RetrieveAllThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 136 'RetrieveAllThirdPartyLoginPlatformCredentialV3' test.out

#- 137 RetrieveAllActiveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 137 'RetrieveAllActiveThirdPartyLoginPlatformCredentialV3' test.out

#- 138 RetrieveAllSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 138 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 139 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Pk0WzJSM' \
    > test.out 2>&1
eval_tap $? 139 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 140 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '9EXIGHxX' \
    --body '{"ACSURL": "d3Rk4ZBs", "AWSCognitoRegion": "Dn3vELm5", "AWSCognitoUserPool": "W8qF5Jvy", "AllowedClients": ["niOCzev6", "9t1dQONu", "mFJYL93M"], "AppId": "umxXOnBe", "AuthorizationEndpoint": "i4uAHZTw", "ClientId": "ZF1QOjcQ", "Environment": "upnpD420", "FederationMetadataURL": "k3kuJuoA", "GenericOauthFlow": false, "IsActive": true, "Issuer": "WRamhYRF", "JWKSEndpoint": "jQpqdNwP", "KeyID": "YpOunHl4", "NetflixCertificates": {"encryptedPrivateKey": "DVzXd7Ra", "encryptedPrivateKeyName": "dcTddk1E", "publicCertificate": "Vdta0cbM", "publicCertificateName": "2HyoDkBY", "rootCertificate": "QXTqiuNP", "rootCertificateName": "zZrMgUVs"}, "OrganizationId": "HTVkZxYP", "PlatformName": "alhUaCpk", "RedirectUri": "5pwy3FNd", "RegisteredDomains": [{"affectedClientIDs": ["XEKNJ1Fv", "xutdKANi", "jvi3PQbc"], "domain": "MFpt7T6c", "namespaces": ["dFUiWgMf", "95dYn1Q8", "YaoZLqWo"], "roleId": "VaAutohn"}, {"affectedClientIDs": ["0XEDzoAL", "BtsybZqe", "xWrdKh8H"], "domain": "1c0Yz5e5", "namespaces": ["6k6KdJN5", "cxEfTGir", "V1lT39gi"], "roleId": "f9vhZzBu"}, {"affectedClientIDs": ["n0uaDJgz", "RdyrMR0e", "ibJVfR1X"], "domain": "x62UGJd6", "namespaces": ["DOTxgpi9", "cuJ2oi1P", "0RSL3pTP"], "roleId": "qwUii2vu"}], "Secret": "0k2hq8TO", "TeamID": "UdhjCEKZ", "TokenAuthenticationType": "11jLh4jM", "TokenClaimsMapping": {"94mPjYGM": "CVWTSfUh", "kFfO2sR5": "eoAUwZnl", "DQuf1yYV": "FeGdKytn"}, "TokenEndpoint": "PLUtGJzn", "UserInfoEndpoint": "Y925GeDa", "UserInfoHTTPMethod": "riweD2dt", "scopes": ["a6oZXitT", "ra25AeXp", "uqsTu3hZ"]}' \
    > test.out 2>&1
eval_tap $? 140 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 141 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'p3VQezm2' \
    > test.out 2>&1
eval_tap $? 141 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 142 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ZcmBQdhZ' \
    --body '{"ACSURL": "pEHFeGYX", "AWSCognitoRegion": "UXKsqd6m", "AWSCognitoUserPool": "CIxxAyAR", "AllowedClients": ["hh3HgYgO", "dpxmJ4vm", "jUnSOD3i"], "AppId": "5MGiPSrQ", "AuthorizationEndpoint": "1FvAzd2q", "ClientId": "29tHTeim", "Environment": "D962pe0X", "FederationMetadataURL": "9nKIkG8N", "GenericOauthFlow": true, "IsActive": false, "Issuer": "tXCABOa1", "JWKSEndpoint": "9wcrxtRp", "KeyID": "yudGhdPn", "NetflixCertificates": {"encryptedPrivateKey": "oEVVCxWe", "encryptedPrivateKeyName": "mbhVDKMZ", "publicCertificate": "3184rFqL", "publicCertificateName": "4MZ1rFhM", "rootCertificate": "ZlSeNJbM", "rootCertificateName": "9ZYJS3eY"}, "OrganizationId": "qBvlR0fv", "PlatformName": "6MPzzbff", "RedirectUri": "asFLU5tf", "RegisteredDomains": [{"affectedClientIDs": ["Zbzop9r1", "L1zW3eVQ", "IvzngNAE"], "domain": "bxoacnBv", "namespaces": ["VgprvfFR", "IYgmjc2Y", "VT0evn3E"], "roleId": "zafSxVw8"}, {"affectedClientIDs": ["BtsoqN4Y", "aqgua7AL", "0VwZpxjc"], "domain": "adBusObQ", "namespaces": ["airiSdag", "wjVBSSoT", "wD5QPhP6"], "roleId": "WUk4wrPX"}, {"affectedClientIDs": ["JgtE83zD", "6dFquBSq", "3v0XjpL7"], "domain": "0aOOSYq3", "namespaces": ["tYC7jQb8", "cNa5EWzO", "1P8XkhIo"], "roleId": "PPY80gG7"}], "Secret": "n2k8bdRf", "TeamID": "KeFfF2XJ", "TokenAuthenticationType": "j395vRqP", "TokenClaimsMapping": {"Ft9rT5AZ": "WT9f2rNg", "zIAAYXdl": "Z0a9oYyo", "q3PzzXLD": "OziF9LaM"}, "TokenEndpoint": "8DMdUGaM", "UserInfoEndpoint": "V4FstUZA", "UserInfoHTTPMethod": "tSZtHAbr", "scopes": ["PflRoTU2", "3O3R4eah", "zFvj6lYk"]}' \
    > test.out 2>&1
eval_tap $? 142 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 143 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'UrcrEy7a' \
    --body '{"affectedClientIDs": ["oP7H3OPe", "Cjp7MuXG", "UMyiCJOE"], "assignedNamespaces": ["7NcM1JbY", "dZaoB5GI", "GXulakeP"], "domain": "TVF1VyFA", "roleId": "jhTfC4Wx"}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 144 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId '7UmnGYsz' \
    --body '{"domain": "hMnZ9B9O"}' \
    > test.out 2>&1
eval_tap $? 144 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 145 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'djJn5V0a' \
    > test.out 2>&1
eval_tap $? 145 'RetrieveSSOLoginPlatformCredential' test.out

#- 146 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'OYLssCC4' \
    --body '{"acsUrl": "bU99Wrj2", "apiKey": "DK36tatE", "appId": "7G3nlqoD", "federationMetadataUrl": "7RSzbjAl", "isActive": true, "redirectUri": "oVLys2AO", "secret": "yJW6NjG8", "ssoUrl": "hzQKJx4y"}' \
    > test.out 2>&1
eval_tap $? 146 'AddSSOLoginPlatformCredential' test.out

#- 147 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'a0T62Jtg' \
    > test.out 2>&1
eval_tap $? 147 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 148 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'Hxrj3CyD' \
    --body '{"acsUrl": "JQuG2bYu", "apiKey": "UaadL9mV", "appId": "WkKKuoYk", "federationMetadataUrl": "HUo72kqK", "isActive": true, "redirectUri": "y9TYyUCc", "secret": "aKUB9j0L", "ssoUrl": "oIR7Geyd"}' \
    > test.out 2>&1
eval_tap $? 148 'UpdateSSOPlatformCredential' test.out

#- 149 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'yJIke93K' \
    --rawPID 'true' \
    --body '{"platformUserIds": ["WE5NQP9k", "keDXI3g5", "zEH85ufX"]}' \
    > test.out 2>&1
eval_tap $? 149 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 150 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Gwtk5aqY' \
    --platformUserId '0kKZcYvb' \
    > test.out 2>&1
eval_tap $? 150 'AdminGetUserByPlatformUserIDV3' test.out

#- 151 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'j2v2hyKI' \
    --after '72' \
    --before '79' \
    --limit '3' \
    > test.out 2>&1
eval_tap $? 151 'GetAdminUsersByRoleIdV3' test.out

#- 152 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'bHmPXBrQ' \
    > test.out 2>&1
eval_tap $? 152 'AdminGetUserByEmailAddressV3' test.out

#- 153 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'xPyZGtPr' \
    --body '{"bulkUserId": ["7rg2Tck7", "whKGtZy8", "sQQHYLEk"]}' \
    > test.out 2>&1
eval_tap $? 153 'AdminGetBulkUserBanV3' test.out

#- 154 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["Ki3YnsIs", "pkxd8o5P", "pqIhZhfp"]}' \
    > test.out 2>&1
eval_tap $? 154 'AdminListUserIDByUserIDsV3' test.out

#- 155 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["JLXhXJdY", "tYEJL2Pc", "SMxsxwPr"]}' \
    > test.out 2>&1
eval_tap $? 155 'AdminBulkGetUsersPlatform' test.out

#- 156 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["Oc9Sn62E", "xsuKBqQZ", "RPDAuMsM"], "isAdmin": true, "namespace": "RJHPYBtp", "roles": ["GYXpzubY", "McpevwxD", "OAAHjHfB"]}' \
    > test.out 2>&1
eval_tap $? 156 'AdminInviteUserV3' test.out

#- 157 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '45' \
    --platformUserId 'ya2QaDaQ' \
    --platformId 'S0I0r6WW' \
    > test.out 2>&1
eval_tap $? 157 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 158 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 158 'AdminListUsersV3' test.out

#- 159 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by '3cYuMZHt' \
    --endDate 'zCtWihrJ' \
    --includeTotal 'false' \
    --limit '55' \
    --offset '19' \
    --platformBy 'fgBgj1I1' \
    --platformId 'kmeBJF5e' \
    --query 'hVAVv0nM' \
    --skipLoginQueue 'true' \
    --startDate 'Xp1CUSbe' \
    --testAccount 'true' \
    > test.out 2>&1
eval_tap $? 159 'AdminSearchUserV3' test.out

#- 160 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["TNFyk6BK", "1bVij1wT", "TWHp8hXM"]}' \
    > test.out 2>&1
eval_tap $? 160 'AdminGetBulkUserByEmailAddressV3' test.out

#- 161 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId '7B2rJfgG' \
    > test.out 2>&1
eval_tap $? 161 'AdminGetUserByUserIdV3' test.out

#- 162 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '2o7QnrAe' \
    --body '{"avatarUrl": "ztDueLnk", "country": "9crkjfLs", "dateOfBirth": "NamiObJf", "displayName": "rJlWc0Gu", "languageTag": "YbmWjaYM", "skipLoginQueue": false, "uniqueDisplayName": "KcXsykKY", "userName": "GdzLP4yH"}' \
    > test.out 2>&1
eval_tap $? 162 'AdminUpdateUserV3' test.out

#- 163 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 's82IialH' \
    --activeOnly 'true' \
    --after '9OVqkxn2' \
    --before 'n74L2jIb' \
    --limit '71' \
    > test.out 2>&1
eval_tap $? 163 'AdminGetUserBanV3' test.out

#- 164 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'yendat23' \
    --body '{"ban": "WgpFf9F2", "comment": "wMa7SI8G", "endDate": "0X3SStv2", "reason": "2ZwOtFpz", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 164 'AdminBanUserV3' test.out

#- 165 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'LxoJbUz7' \
    --namespace $AB_NAMESPACE \
    --userId 'vWVGPdzw' \
    --body '{"enabled": true, "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateUserBanV3' test.out

#- 166 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ob0lehOV' \
    --body '{"context": "vOAxhywv", "emailAddress": "aOwdFPjw", "languageTag": "FeTX93S0"}' \
    > test.out 2>&1
eval_tap $? 166 'AdminSendVerificationCodeV3' test.out

#- 167 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'CIVaHMmu' \
    --body '{"Code": "CLHvr0Zw", "ContactType": "l3euTBvg", "LanguageTag": "Bd6yHDlk", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 167 'AdminVerifyAccountV3' test.out

#- 168 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'HPHcHx32' \
    > test.out 2>&1
eval_tap $? 168 'GetUserVerificationCode' test.out

#- 169 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'De8Yad4w' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetUserDeletionStatusV3' test.out

#- 170 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Li1cr9tW' \
    --body '{"deletionDate": 50, "enabled": true}' \
    > test.out 2>&1
eval_tap $? 170 'AdminUpdateUserDeletionStatusV3' test.out

#- 171 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Ba0umEke' \
    --body '{"code": "Umdyszmp", "country": "8kDgZmq0", "dateOfBirth": "GnTjyo4k", "displayName": "lsH35Dy4", "emailAddress": "nT8sJtpe", "password": "zii8ksmz", "uniqueDisplayName": "lIQJOEJp", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 171 'AdminUpgradeHeadlessAccountV3' test.out

#- 172 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wHTWzUlY' \
    > test.out 2>&1
eval_tap $? 172 'AdminDeleteUserInformationV3' test.out

#- 173 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wH76TaLC' \
    --after '0.38606132341490285' \
    --before '0.7009652315851431' \
    --limit '62' \
    > test.out 2>&1
eval_tap $? 173 'AdminGetUserLoginHistoriesV3' test.out

#- 174 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Eeuk02Ta' \
    --body '{"languageTag": "fe1ACMpg", "newPassword": "qb0xYqye", "oldPassword": "6jyBQTbG"}' \
    > test.out 2>&1
eval_tap $? 174 'AdminResetPasswordV3' test.out

#- 175 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId '3CXXMnSC' \
    --body '{"Permissions": [{"Action": 38, "Resource": "ePvBAVpM", "SchedAction": 80, "SchedCron": "92dy2RME", "SchedRange": ["Q04ESRJR", "hvLguDlA", "DSYQxGJH"]}, {"Action": 74, "Resource": "hV2pHFg9", "SchedAction": 86, "SchedCron": "P9CLwE5q", "SchedRange": ["osRgMfqG", "Vw70t1gD", "odwP5mSh"]}, {"Action": 99, "Resource": "9PalypRh", "SchedAction": 77, "SchedCron": "lRhz3j6u", "SchedRange": ["kgX6W6yk", "H5zi3OUa", "NbilnA9p"]}]}' \
    > test.out 2>&1
eval_tap $? 175 'AdminUpdateUserPermissionV3' test.out

#- 176 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId '7SjpDmoC' \
    --body '{"Permissions": [{"Action": 61, "Resource": "Q3SdnQgy", "SchedAction": 87, "SchedCron": "PUoOfpzt", "SchedRange": ["3nrEKiyP", "YneGriCo", "ytcoMliO"]}, {"Action": 8, "Resource": "MI90sMEr", "SchedAction": 7, "SchedCron": "Es1UVwSc", "SchedRange": ["KrQNf4yP", "h2oL4nfn", "HdME3L17"]}, {"Action": 40, "Resource": "YBjCuDsu", "SchedAction": 74, "SchedCron": "ck3Gv92o", "SchedRange": ["wNKhaahV", "pnV3lM1R", "sDNyZbxj"]}]}' \
    > test.out 2>&1
eval_tap $? 176 'AdminAddUserPermissionsV3' test.out

#- 177 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'BDiM4QT3' \
    --body '[{"Action": 91, "Resource": "2nG7MHWB"}, {"Action": 3, "Resource": "iykPvN0F"}, {"Action": 40, "Resource": "XhqWRsNd"}]' \
    > test.out 2>&1
eval_tap $? 177 'AdminDeleteUserPermissionBulkV3' test.out

#- 178 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '66' \
    --namespace $AB_NAMESPACE \
    --resource 'eV4RLxQT' \
    --userId 'YKKNyRog' \
    > test.out 2>&1
eval_tap $? 178 'AdminDeleteUserPermissionV3' test.out

#- 179 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'r26lbStT' \
    --after '9TMap0LI' \
    --before 'qUEGafjJ' \
    --limit '6' \
    --platformId '5hDwasWQ' \
    > test.out 2>&1
eval_tap $? 179 'AdminGetUserPlatformAccountsV3' test.out

#- 180 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'iStwpmnz' \
    > test.out 2>&1
eval_tap $? 180 'AdminGetListJusticePlatformAccounts' test.out

#- 181 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'JQJK2S4T' \
    --userId 'BtTnZdLw' \
    > test.out 2>&1
eval_tap $? 181 'AdminGetUserMapping' test.out

#- 182 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'SFwCo122' \
    --userId 'OeE7DBjL' \
    > test.out 2>&1
eval_tap $? 182 'AdminCreateJusticeUser' test.out

#- 183 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'OhTfCBeL' \
    --skipConflict 'true' \
    --body '{"platformId": "VZnkVGOh", "platformUserId": "MPzQBdR0"}' \
    > test.out 2>&1
eval_tap $? 183 'AdminLinkPlatformAccount' test.out

#- 184 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'fmxZZZ8K' \
    --userId 'KLJQGi3k' \
    --body '{"platformNamespace": "Ujn79XwA"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminPlatformUnlinkV3' test.out

#- 185 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'vCRSb9eN' \
    --userId 'H33h5gSx' \
    --ticket 'J8CrZbZM' \
    > test.out 2>&1
eval_tap $? 185 'AdminPlatformLinkV3' test.out

#- 186 AdminDeleteUserLinkingHistoryByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingHistoryByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'fyblp5ck' \
    --userId 'IdoLBMdH' \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteUserLinkingHistoryByPlatformIDV3' test.out

#- 187 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Aj9JRDVl' \
    --userId 'v0KnQBgf' \
    --platformToken 'z6E5f9xU' \
    > test.out 2>&1
eval_tap $? 187 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 188 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'chlFtj3X' \
    --userId 'k2zOcfjV' \
    > test.out 2>&1
eval_tap $? 188 'AdminGetUserSinglePlatformAccount' test.out

#- 189 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'DRVzyajg' \
    --body '["Pr0ibwFX", "BIh5vPuk", "J3LomWb9"]' \
    > test.out 2>&1
eval_tap $? 189 'AdminDeleteUserRolesV3' test.out

#- 190 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Zqi9XhuA' \
    --body '[{"namespace": "jm1sTaGB", "roleId": "5gaIrvBd"}, {"namespace": "xDhhecX1", "roleId": "OpC27IQ5"}, {"namespace": "f2iyqdxY", "roleId": "3N9cGMLj"}]' \
    > test.out 2>&1
eval_tap $? 190 'AdminSaveUserRoleV3' test.out

#- 191 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'UcktrZam' \
    --userId 'j2Gm7ke8' \
    > test.out 2>&1
eval_tap $? 191 'AdminAddUserRoleV3' test.out

#- 192 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'kXEDaHax' \
    --userId '4tEpKxlT' \
    > test.out 2>&1
eval_tap $? 192 'AdminDeleteUserRoleV3' test.out

#- 193 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'qnSLoiCp' \
    --body '{"enabled": false, "reason": "J8gSeqJX"}' \
    > test.out 2>&1
eval_tap $? 193 'AdminUpdateUserStatusV3' test.out

#- 194 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'DhDVV2iZ' \
    --body '{"emailAddress": "SCdXGAGZ", "password": "DPyg0tVk"}' \
    > test.out 2>&1
eval_tap $? 194 'AdminTrustlyUpdateUserIdentity' test.out

#- 195 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'FvG6JJaU' \
    > test.out 2>&1
eval_tap $? 195 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 196 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId '3Tbrx1KZ' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "kUT7sIQh"}' \
    > test.out 2>&1
eval_tap $? 196 'AdminUpdateClientSecretV3' test.out

#- 197 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after '777I1vPz' \
    --before 'ORoz90ky' \
    --isWildcard 'true' \
    --limit '43' \
    > test.out 2>&1
eval_tap $? 197 'AdminGetRolesV3' test.out

#- 198 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": false, "managers": [{"displayName": "zBX9XUg8", "namespace": "ZuVQKcdc", "userId": "oR9PkQlp"}, {"displayName": "0Fbbdh6I", "namespace": "0MMzf8bn", "userId": "Ivy0txHN"}, {"displayName": "SXvlaZ3S", "namespace": "sVSgS2cd", "userId": "el1455GK"}], "members": [{"displayName": "6HlfmxCP", "namespace": "CJVuzYt6", "userId": "UMVyPKZg"}, {"displayName": "QdcRMyD1", "namespace": "w3TX4Wts", "userId": "xyYvQSVn"}, {"displayName": "50SGf1kC", "namespace": "oTXqrWJG", "userId": "8085UcMh"}], "permissions": [{"action": 26, "resource": "Z5vkPB7Y", "schedAction": 77, "schedCron": "fL8kCbDW", "schedRange": ["9VyU9ttd", "soDB34nf", "nEH4T3W6"]}, {"action": 51, "resource": "SlXcmHek", "schedAction": 25, "schedCron": "ipORLHql", "schedRange": ["shrvLy89", "BCGlLmrM", "pOVLoK6u"]}, {"action": 56, "resource": "dDtvZjgZ", "schedAction": 59, "schedCron": "BN0u6ZBY", "schedRange": ["RDqnrm7q", "3eF9UAGf", "wZfDu2pw"]}], "roleName": "Kwucqoq5"}' \
    > test.out 2>&1
eval_tap $? 198 'AdminCreateRoleV3' test.out

#- 199 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'J5vm1zFX' \
    > test.out 2>&1
eval_tap $? 199 'AdminGetRoleV3' test.out

#- 200 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'KywPjFvP' \
    > test.out 2>&1
eval_tap $? 200 'AdminDeleteRoleV3' test.out

#- 201 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'EGHubGUQ' \
    --body '{"deletable": true, "isWildcard": false, "roleName": "KE28i2Vg"}' \
    > test.out 2>&1
eval_tap $? 201 'AdminUpdateRoleV3' test.out

#- 202 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'ExTyhzTP' \
    > test.out 2>&1
eval_tap $? 202 'AdminGetRoleAdminStatusV3' test.out

#- 203 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'elUBXoMH' \
    > test.out 2>&1
eval_tap $? 203 'AdminUpdateAdminRoleStatusV3' test.out

#- 204 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'VJrPfDw9' \
    > test.out 2>&1
eval_tap $? 204 'AdminRemoveRoleAdminV3' test.out

#- 205 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'ZJY9ReVv' \
    --after 'gopccJV8' \
    --before 'oCisZ8cz' \
    --limit '51' \
    > test.out 2>&1
eval_tap $? 205 'AdminGetRoleManagersV3' test.out

#- 206 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'qxnhHFvc' \
    --body '{"managers": [{"displayName": "kB6Rz5Hr", "namespace": "zuDVG00i", "userId": "TMC1Z2ef"}, {"displayName": "BLMCFn2I", "namespace": "a8seCbRs", "userId": "u50vQgBS"}, {"displayName": "MA8gvDoz", "namespace": "lbZSt9xC", "userId": "HGxcr3yD"}]}' \
    > test.out 2>&1
eval_tap $? 206 'AdminAddRoleManagersV3' test.out

#- 207 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'lGS314Q7' \
    --body '{"managers": [{"displayName": "6dbOSedC", "namespace": "SuIFZXl7", "userId": "pTnh0bip"}, {"displayName": "NWxnclns", "namespace": "pwY5DPi4", "userId": "lpv2ZeDR"}, {"displayName": "Iqfr3p4X", "namespace": "tgVsWydW", "userId": "OLz1yGOO"}]}' \
    > test.out 2>&1
eval_tap $? 207 'AdminRemoveRoleManagersV3' test.out

#- 208 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'uEriym6Y' \
    --after 'VSHx0I2C' \
    --before 'Zsz07EOg' \
    --limit '97' \
    > test.out 2>&1
eval_tap $? 208 'AdminGetRoleMembersV3' test.out

#- 209 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'G845z2nm' \
    --body '{"members": [{"displayName": "pj9JF1RZ", "namespace": "JaJ6CBTl", "userId": "wtNLeyYu"}, {"displayName": "Js5Qs7PR", "namespace": "t0V5SrhC", "userId": "R4olB76V"}, {"displayName": "wZGaGtQb", "namespace": "iWPl8J1Z", "userId": "QLtCb73B"}]}' \
    > test.out 2>&1
eval_tap $? 209 'AdminAddRoleMembersV3' test.out

#- 210 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'fLBLgbXQ' \
    --body '{"members": [{"displayName": "GEoRt16T", "namespace": "4qJC26tL", "userId": "bFvnBGf9"}, {"displayName": "rirlik5l", "namespace": "QzA1SbDh", "userId": "3BFRrPdv"}, {"displayName": "ljw0hALG", "namespace": "GmGQETey", "userId": "oT6oFt8k"}]}' \
    > test.out 2>&1
eval_tap $? 210 'AdminRemoveRoleMembersV3' test.out

#- 211 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'W6T7O9Yt' \
    --body '{"permissions": [{"action": 22, "resource": "ap4yM3yt", "schedAction": 94, "schedCron": "mSu30RAL", "schedRange": ["11xm953m", "tqHr0661", "4Ln1Ep6r"]}, {"action": 69, "resource": "cnJvAkgv", "schedAction": 91, "schedCron": "pnrMT0uw", "schedRange": ["pafcC3ZM", "ITal3Mhn", "J8Rdbu6g"]}, {"action": 81, "resource": "YUIRl0V2", "schedAction": 20, "schedCron": "iz5zod9S", "schedRange": ["waaEielB", "7iU2tk2l", "InxuOWrR"]}]}' \
    > test.out 2>&1
eval_tap $? 211 'AdminUpdateRolePermissionsV3' test.out

#- 212 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'G35ZilUk' \
    --body '{"permissions": [{"action": 75, "resource": "FiFKnldn", "schedAction": 68, "schedCron": "09Ucn673", "schedRange": ["1vYPxhU8", "uZkdicWh", "Ge1uY5Fd"]}, {"action": 13, "resource": "u2uzKLtm", "schedAction": 9, "schedCron": "kv9ME0Hx", "schedRange": ["V2MrDD71", "zB7J07QV", "wQ0WiebM"]}, {"action": 29, "resource": "8vHp3P8y", "schedAction": 48, "schedCron": "ArkuXdb1", "schedRange": ["ld9bGUBy", "Pdpf1skB", "hz7AIwkF"]}]}' \
    > test.out 2>&1
eval_tap $? 212 'AdminAddRolePermissionsV3' test.out

#- 213 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId '0NY3AMOo' \
    --body '["jvBeF55v", "gjcM8anj", "FX0iAR5h"]' \
    > test.out 2>&1
eval_tap $? 213 'AdminDeleteRolePermissionsV3' test.out

#- 214 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '16' \
    --resource 'chNhcWpr' \
    --roleId 'Pg6KPO8q' \
    > test.out 2>&1
eval_tap $? 214 'AdminDeleteRolePermissionV3' test.out

#- 215 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 215 'AdminGetMyUserV3' test.out

#- 216 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId '0jTXLV4Q' \
    --extendExp 'true' \
    --redirectUri 'jN6JZvUU' \
    --password 'LhTi3nSo' \
    --requestId 'MQztCffP' \
    --userName 'Qdnn3h14' \
    > test.out 2>&1
eval_tap $? 216 'UserAuthenticationV3' test.out

#- 217 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'true' \
    --clientId 'iTl8hrmd' \
    --linkingToken 'aWueO96a' \
    --password 'OqDb7jKs' \
    --username 'jzObfY1C' \
    > test.out 2>&1
eval_tap $? 217 'AuthenticationWithPlatformLinkV3' test.out

#- 218 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData '5yy1leTP' \
    --extendExp 'true' \
    --linkingToken 'mGDAQagV' \
    > test.out 2>&1
eval_tap $? 218 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 219 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'CZUcn9Wz' \
    > test.out 2>&1
eval_tap $? 219 'RequestOneTimeLinkingCodeV3' test.out

#- 220 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'fiBuYnDu' \
    > test.out 2>&1
eval_tap $? 220 'ValidateOneTimeLinkingCodeV3' test.out

#- 221 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'BHtTpXw8' \
    --isTransient 'true' \
    --clientId 'S3mOE7f0' \
    --oneTimeLinkCode 'sg7oOcAH' \
    > test.out 2>&1
eval_tap $? 221 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 222 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 222 'GetCountryLocationV3' test.out

#- 223 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 223 'Logout' test.out

#- 224 RequestTokenExchangeCodeV3
samples/cli/sample-apps Iam requestTokenExchangeCodeV3 \
    --namespace $AB_NAMESPACE \
    --codeChallenge 'dnPH1GoL' \
    --codeChallengeMethod 'S256' \
    --clientId 'AGy6jqJB' \
    > test.out 2>&1
eval_tap $? 224 'RequestTokenExchangeCodeV3' test.out

#- 225 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'OyxOLhHU' \
    --userId 'SjpFoaTs' \
    > test.out 2>&1
eval_tap $? 225 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 226 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZHiobwSU' \
    --includeGameNamespace 'false' \
    > test.out 2>&1
eval_tap $? 226 'RevokeUserV3' test.out

#- 227 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'AJnr1Gdf' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'false' \
    --oneTimeLinkCode 'I2K48vDY' \
    --redirectUri 'fRxyG4lC' \
    --scope '2NgJ5frP' \
    --state '4Wa4QU4j' \
    --targetAuthPage '07gba9V0' \
    --useRedirectUriAsLoginUrlWhenLocked 'false' \
    --clientId 'CBzNmjVi' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 227 'AuthorizeV3' test.out

#- 228 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'zhmTafnS' \
    > test.out 2>&1
eval_tap $? 228 'TokenIntrospectionV3' test.out

#- 229 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 229 'GetJWKSV3' test.out

#- 230 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'oUU6ehQH' \
    --factor 'PtVtc269' \
    --mfaToken '9it5jlBQ' \
    > test.out 2>&1
eval_tap $? 230 'SendMFAAuthenticationCode' test.out

#- 231 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'uHGLRxKR' \
    --mfaToken '3wV1CBlV' \
    > test.out 2>&1
eval_tap $? 231 'Change2faMethod' test.out

#- 232 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'jhvJWRiH' \
    --factor 'gxqxkbnF' \
    --mfaToken 'aRX6ryt5' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 232 'Verify2faCode' test.out

#- 233 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'pQ9eGmtY' \
    --userId 'kNfbhynV' \
    > test.out 2>&1
eval_tap $? 233 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 234 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'w1s7X8if' \
    --clientId 'HD9yyecq' \
    --redirectUri 'wBAPwut7' \
    --requestId 'HS3afs8z' \
    > test.out 2>&1
eval_tap $? 234 'AuthCodeRequestV3' test.out

#- 235 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'QjWOzL57' \
    --additionalData 'qwy58A7R' \
    --clientId 'UNpAAdc8' \
    --createHeadless 'false' \
    --deviceId 'wy396cuO' \
    --macAddress 'CQOEwR84' \
    --platformToken 'yFoUPeI4' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 235 'PlatformTokenGrantV3' test.out

#- 236 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 236 'GetRevocationListV3' test.out

#- 237 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token '41JwHjQ3' \
    > test.out 2>&1
eval_tap $? 237 'TokenRevocationV3' test.out

#- 238 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'pspc' \
    --simultaneousTicket '1UQjwq3t' \
    --nativePlatform 'epicgames' \
    --nativePlatformTicket 'UWtYUwvA' \
    > test.out 2>&1
eval_tap $? 238 'SimultaneousLoginV3' test.out

#- 239 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'e5NoBNhL' \
    --clientId 'bRXjQS4X' \
    --code 'zmnTcUxN' \
    --codeVerifier 'lZx6kPDS' \
    --extendNamespace 'NnpxK8tV' \
    --extendExp 'false' \
    --password 'lDlF05kF' \
    --redirectUri 'T80dp5be' \
    --refreshToken 'sSEGU8DZ' \
    --username 'aXGUCvGY' \
    --grantType 'refresh_token' \
    > test.out 2>&1
eval_tap $? 239 'TokenGrantV3' test.out

#- 240 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'OvTzHRCp' \
    > test.out 2>&1
eval_tap $? 240 'VerifyTokenV3' test.out

#- 241 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'VqfaEmPw' \
    --code 'AJHJIS9P' \
    --error 'GScTyWw0' \
    --openidAssocHandle 'wXarcHOU' \
    --openidClaimedId '9QQXupln' \
    --openidIdentity 'S3yRnKuY' \
    --openidMode 'Rl9i911s' \
    --openidNs 'Rqf4ZXoq' \
    --openidOpEndpoint 'edSbp7lq' \
    --openidResponseNonce '5lvq8DBv' \
    --openidReturnTo 'tpz4w7wQ' \
    --openidSig 'QDl9s82G' \
    --openidSigned 'fCItcWHQ' \
    --state 'hYteo6Co' \
    > test.out 2>&1
eval_tap $? 241 'PlatformAuthenticationV3' test.out

#- 242 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId '0xOZzVuh' \
    --platformToken 'kmwame3A' \
    > test.out 2>&1
eval_tap $? 242 'PlatformTokenRefreshV3' test.out

#- 243 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'EtLAPWxC' \
    > test.out 2>&1
eval_tap $? 243 'PublicGetInputValidations' test.out

#- 244 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'WkMWgDhB' \
    > test.out 2>&1
eval_tap $? 244 'PublicGetInputValidationByField' test.out

#- 245 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'mUkDnIlw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 245 'PublicGetCountryAgeRestrictionV3' test.out

#- 246 PublicGetConfigValueV3
samples/cli/sample-apps Iam publicGetConfigValueV3 \
    --configKey 'E0qgEnwl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 246 'PublicGetConfigValueV3' test.out

#- 247 PublicGetCountryListV3
samples/cli/sample-apps Iam publicGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 247 'PublicGetCountryListV3' test.out

#- 248 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 248 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 249 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'KM7QsBuX' \
    > test.out 2>&1
eval_tap $? 249 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 250 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'GeE4hKgO' \
    --rawPID 'false' \
    --body '{"platformUserIds": ["6ubcCFTr", "o3wcpzDC", "ScV99Qp8"]}' \
    > test.out 2>&1
eval_tap $? 250 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 251 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'VyhH9Seo' \
    --platformUserId 'xhM6bvRs' \
    > test.out 2>&1
eval_tap $? 251 'PublicGetUserByPlatformUserIDV3' test.out

#- 252 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'Ir7gEQKb' \
    > test.out 2>&1
eval_tap $? 252 'PublicGetAsyncStatus' test.out

#- 253 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'D7mwiX4w' \
    --limit '58' \
    --offset '74' \
    --platformBy 'EA7NsF07' \
    --platformId '7ZHAKFqQ' \
    --query 'HmLBZQQI' \
    > test.out 2>&1
eval_tap $? 253 'PublicSearchUserV3' test.out

#- 254 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "dY98JoWk", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "FDJxP9G4", "policyId": "Fa2EYzDC", "policyVersionId": "TxFhuNcb"}, {"isAccepted": true, "localizedPolicyVersionId": "nTOUPmSw", "policyId": "j5Qyqt75", "policyVersionId": "U0CAcq63"}, {"isAccepted": false, "localizedPolicyVersionId": "AipouwhY", "policyId": "Phv67L0M", "policyVersionId": "FCEtdypT"}], "authType": "zihIQAEn", "code": "S88rJrRG", "country": "6PD9d5ya", "dateOfBirth": "Qo8LyEgi", "displayName": "lwLAuN4j", "emailAddress": "gVvfTVBX", "password": "vrcZGxrT", "reachMinimumAge": true, "uniqueDisplayName": "1nVaEuXZ"}' \
    > test.out 2>&1
eval_tap $? 254 'PublicCreateUserV3' test.out

#- 255 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'ZwGkBKM6' \
    --query 'Srau3UDp' \
    > test.out 2>&1
eval_tap $? 255 'CheckUserAvailability' test.out

#- 256 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["6Dkahg4e", "niYlafRf", "rTIxBwQ4"]}' \
    > test.out 2>&1
eval_tap $? 256 'PublicBulkGetUsers' test.out

#- 257 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "oEbKf5ru", "languageTag": "GcIHhRvo"}' \
    > test.out 2>&1
eval_tap $? 257 'PublicSendRegistrationCode' test.out

#- 258 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "c1lGtzcj", "emailAddress": "oVKhM5aA"}' \
    > test.out 2>&1
eval_tap $? 258 'PublicVerifyRegistrationCode' test.out

#- 259 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "DV7fYZ08", "languageTag": "4gsxXViF"}' \
    > test.out 2>&1
eval_tap $? 259 'PublicForgotPasswordV3' test.out

#- 260 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'QgetzLTu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 260 'GetAdminInvitationV3' test.out

#- 261 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'uhRbWKEQ' \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "5ZCpcGZz", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "ME2g2aNK", "policyId": "bHnMjO3g", "policyVersionId": "YDfPfOYC"}, {"isAccepted": true, "localizedPolicyVersionId": "pCe7vTzm", "policyId": "YeHOquqY", "policyVersionId": "u8qpVWFm"}, {"isAccepted": false, "localizedPolicyVersionId": "jfAc4ib5", "policyId": "5vy8qbFL", "policyVersionId": "A2OwWR6i"}], "authType": "oEMuw2ER", "code": "QSjGFTSR", "country": "Ilcf6EJe", "dateOfBirth": "pPkCAwO7", "displayName": "20hWvzXu", "emailAddress": "u5s6PGmQ", "password": "IN5oBVD6", "reachMinimumAge": true, "uniqueDisplayName": "SECG7B7S"}' \
    > test.out 2>&1
eval_tap $? 261 'CreateUserFromInvitationV3' test.out

#- 262 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "rPyUuNIY", "country": "beb3OQuz", "dateOfBirth": "YhuQuAK7", "displayName": "a5horWot", "languageTag": "8WkGQf4L", "uniqueDisplayName": "9ctlRhmg", "userName": "pGbjfuqa"}' \
    > test.out 2>&1
eval_tap $? 262 'UpdateUserV3' test.out

#- 263 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "PHEXRXuZ", "country": "eoE8fR7C", "dateOfBirth": "WPl5g23t", "displayName": "xPk8uD2H", "languageTag": "tXrHCngP", "uniqueDisplayName": "EVvOTqzG", "userName": "2jdf5oJr"}' \
    > test.out 2>&1
eval_tap $? 263 'PublicPartialUpdateUserV3' test.out

#- 264 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "FeCPTe9R", "emailAddress": "KVK35Z6T", "languageTag": "TXDlw051"}' \
    > test.out 2>&1
eval_tap $? 264 'PublicSendVerificationCodeV3' test.out

#- 265 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "bDNd8c76", "contactType": "BgMIYZyV", "languageTag": "cStCKPZU", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 265 'PublicUserVerificationV3' test.out

#- 266 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "APWMa65m", "country": "d6IGOoz6", "dateOfBirth": "8zxOgIwu", "displayName": "TDVHGbnx", "emailAddress": "nAOw8n2p", "password": "8ynOV3yW", "uniqueDisplayName": "ZIaPbnk3", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 266 'PublicUpgradeHeadlessAccountV3' test.out

#- 267 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'false' \
    --body '{"emailAddress": "lvNpo3pI", "password": "M5Ui1RL4"}' \
    > test.out 2>&1
eval_tap $? 267 'PublicVerifyHeadlessAccountV3' test.out

#- 268 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "9ZsQjCOT", "newPassword": "UePzs45v", "oldPassword": "euwDFq9L"}' \
    > test.out 2>&1
eval_tap $? 268 'PublicUpdatePasswordV3' test.out

#- 269 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'F0R0iMds' \
    > test.out 2>&1
eval_tap $? 269 'PublicCreateJusticeUser' test.out

#- 270 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'v4JiGDtf' \
    --redirectUri 'kf42Bdsl' \
    --ticket 'CnjxrfCs' \
    > test.out 2>&1
eval_tap $? 270 'PublicPlatformLinkV3' test.out

#- 271 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'jSgWSTdq' \
    --body '{"platformNamespace": "SfhYVZtV"}' \
    > test.out 2>&1
eval_tap $? 271 'PublicPlatformUnlinkV3' test.out

#- 272 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Ax4hHh1H' \
    > test.out 2>&1
eval_tap $? 272 'PublicPlatformUnlinkAllV3' test.out

#- 273 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'HNFrZZkx' \
    --ticket 'ywmDiRSf' \
    > test.out 2>&1
eval_tap $? 273 'PublicForcePlatformLinkV3' test.out

#- 274 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'GXrETsL0' \
    --clientId 'gXHmpbi7' \
    --redirectUri 'syXwVpFW' \
    > test.out 2>&1
eval_tap $? 274 'PublicWebLinkPlatform' test.out

#- 275 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'GVMCIIEA' \
    --code 'gtsfOFh2' \
    --state 'BUs5BMB5' \
    > test.out 2>&1
eval_tap $? 275 'PublicWebLinkPlatformEstablish' test.out

#- 276 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 't0tsxJNh' \
    --code 'ySMeHUsK' \
    --state 'D3xQAs28' \
    > test.out 2>&1
eval_tap $? 276 'PublicProcessWebLinkPlatformV3' test.out

#- 277 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "rAgdSe1S", "userIds": ["3tU1IFSx", "cNiDfMib", "1N6vTAwF"]}' \
    > test.out 2>&1
eval_tap $? 277 'PublicGetUsersPlatformInfosV3' test.out

#- 278 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "OKbOgzEO", "emailAddress": "fLacw0kx", "newPassword": "hhu9BWVu"}' \
    > test.out 2>&1
eval_tap $? 278 'ResetPasswordV3' test.out

#- 279 PublicGetUserByUserIdV3
eval_tap 0 279 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 280 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'dtzrJW4T' \
    --activeOnly 'false' \
    --after 'XAuMjkCf' \
    --before '6fbcdkvR' \
    --limit '31' \
    > test.out 2>&1
eval_tap $? 280 'PublicGetUserBanHistoryV3' test.out

#- 281 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Mk9IVgsO' \
    > test.out 2>&1
eval_tap $? 281 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 282 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Drqy9LgM' \
    > test.out 2>&1
eval_tap $? 282 'PublicGetUserInformationV3' test.out

#- 283 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ddHme5cs' \
    --after '0.9768855810556011' \
    --before '0.17633910976996348' \
    --limit '85' \
    > test.out 2>&1
eval_tap $? 283 'PublicGetUserLoginHistoriesV3' test.out

#- 284 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zoDEDjRp' \
    --after 'udijCbx2' \
    --before 'Ywq6HPgn' \
    --limit '11' \
    --platformId 'rNFy34M2' \
    > test.out 2>&1
eval_tap $? 284 'PublicGetUserPlatformAccountsV3' test.out

#- 285 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'QLfzG8B7' \
    > test.out 2>&1
eval_tap $? 285 'PublicListJusticePlatformAccountsV3' test.out

#- 286 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'IvF8rzdn' \
    --body '{"platformId": "Unm36NBB", "platformUserId": "DW28zFdV"}' \
    > test.out 2>&1
eval_tap $? 286 'PublicLinkPlatformAccount' test.out

#- 287 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'nRm1crhx' \
    --body '{"chosenNamespaces": ["0ypJFutX", "sZ76YuzG", "MTjaEDqB"], "requestId": "61TQk5zd"}' \
    > test.out 2>&1
eval_tap $? 287 'PublicForceLinkPlatformWithProgression' test.out

#- 288 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'MXt6DnEm' \
    > test.out 2>&1
eval_tap $? 288 'PublicGetPublisherUserV3' test.out

#- 289 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'smrYuAwP' \
    --password 'C3sILaNd' \
    > test.out 2>&1
eval_tap $? 289 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 290 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'FXfgI9db' \
    --before '23NNVvLT' \
    --isWildcard 'true' \
    --limit '96' \
    > test.out 2>&1
eval_tap $? 290 'PublicGetRolesV3' test.out

#- 291 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'm9YjTNZC' \
    > test.out 2>&1
eval_tap $? 291 'PublicGetRoleV3' test.out

#- 292 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'true' \
    > test.out 2>&1
eval_tap $? 292 'PublicGetMyUserV3' test.out

#- 293 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'Cpe778dt' \
    > test.out 2>&1
eval_tap $? 293 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 294 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["id9CAq2C", "NHQtQGJu", "l2by1siK"], "oneTimeLinkCode": "KvNHfDVN"}' \
    > test.out 2>&1
eval_tap $? 294 'LinkHeadlessAccountToMyAccountV3' test.out

#- 295 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "t1Kl9WMQ"}' \
    > test.out 2>&1
eval_tap $? 295 'PublicSendVerificationLinkV3' test.out

#- 296 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'Pl9jywI6' \
    > test.out 2>&1
eval_tap $? 296 'PublicVerifyUserByLinkV3' test.out

#- 297 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'v5tfqRUg' \
    --code '0KQFskMT' \
    --error 'WA6tIg83' \
    --state '7uWED5Ps' \
    > test.out 2>&1
eval_tap $? 297 'PlatformAuthenticateSAMLV3Handler' test.out

#- 298 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'YhsAUJDT' \
    --payload 'LIzV3wbk' \
    > test.out 2>&1
eval_tap $? 298 'LoginSSOClient' test.out

#- 299 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'Mj3KSmGD' \
    > test.out 2>&1
eval_tap $? 299 'LogoutSSOClient' test.out

#- 300 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 'KB1XKzde' \
    --code 'Nva06qc0' \
    > test.out 2>&1
eval_tap $? 300 'RequestTargetTokenResponseV3' test.out

#- 301 AdminListInvitationHistoriesV4
samples/cli/sample-apps Iam adminListInvitationHistoriesV4 \
    --limit '21' \
    --namespace 'hfM1ABhO' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 301 'AdminListInvitationHistoriesV4' test.out

#- 302 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'zngi3XrN' \
    > test.out 2>&1
eval_tap $? 302 'AdminGetDevicesByUserV4' test.out

#- 303 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'PM7mYHc1' \
    --endDate 'ZUXasjBB' \
    --limit '80' \
    --offset '92' \
    --startDate 'rJmhKvRe' \
    > test.out 2>&1
eval_tap $? 303 'AdminGetBannedDevicesV4' test.out

#- 304 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'gEIfP4D6' \
    > test.out 2>&1
eval_tap $? 304 'AdminGetUserDeviceBansV4' test.out

#- 305 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "ZjR5lu2P", "deviceId": "QPySfGLT", "deviceType": "PWWSHD8h", "enabled": true, "endDate": "yt3x7rx8", "ext": {"RQBqLhcS": {}, "pUCCvUji": {}, "rInKfGJe": {}}, "reason": "483dnhSk"}' \
    > test.out 2>&1
eval_tap $? 305 'AdminBanDeviceV4' test.out

#- 306 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'n39UX4rB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 306 'AdminGetDeviceBanV4' test.out

#- 307 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'HWsjbBWc' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 307 'AdminUpdateDeviceBanV4' test.out

#- 308 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'a1tpiJQg' \
    --startDate 'sOhuRy11' \
    --deviceType 'bnDvXUr8' \
    > test.out 2>&1
eval_tap $? 308 'AdminGenerateReportV4' test.out

#- 309 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 309 'AdminGetDeviceTypesV4' test.out

#- 310 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'QHy941oK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 310 'AdminGetDeviceBansV4' test.out

#- 311 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'nZVz5V1a' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 311 'AdminDecryptDeviceV4' test.out

#- 312 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'nNLvNSw0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 312 'AdminUnbanDeviceV4' test.out

#- 313 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'IqEVINI9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 313 'AdminGetUsersByDeviceV4' test.out

#- 314 AdminGetNamespaceInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 314 'AdminGetNamespaceInvitationHistoryV4' test.out

#- 315 AdminGetNamespaceUserInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceUserInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 315 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 316 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 48}' \
    > test.out 2>&1
eval_tap $? 316 'AdminCreateTestUsersV4' test.out

#- 317 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "h5E41iZU", "policyId": "6RKuhCUH", "policyVersionId": "ik9JUB3k"}, {"isAccepted": true, "localizedPolicyVersionId": "YVqs8T3C", "policyId": "2hQiVp56", "policyVersionId": "jfqGC1LY"}, {"isAccepted": false, "localizedPolicyVersionId": "Vx45yNJ1", "policyId": "igXm2px9", "policyVersionId": "IQYxXeow"}], "authType": "EMAILPASSWD", "code": "aX55j6OF", "country": "lLhyTGG1", "dateOfBirth": "AoA0abSb", "displayName": "DtXOpx7W", "emailAddress": "PS8dqCUd", "password": "0lY7wNVj", "passwordMD5Sum": "WhmxntXc", "reachMinimumAge": true, "uniqueDisplayName": "iAmBxoyB", "username": "gtHMqz4R"}' \
    > test.out 2>&1
eval_tap $? 317 'AdminCreateUserV4' test.out

#- 318 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": true, "userIds": ["fCIvrguW", "tuU44Kia", "PjtjXMWm"]}' \
    > test.out 2>&1
eval_tap $? 318 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 319 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["XjxceGud", "0I2gSuD0", "SXgDY78u"]}' \
    > test.out 2>&1
eval_tap $? 319 'AdminBulkCheckValidUserIDV4' test.out

#- 320 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'o2tdiRAb' \
    --body '{"avatarUrl": "rrsllCiZ", "country": "anyM5ACu", "dateOfBirth": "0uOSL0H2", "displayName": "Op9xqjhk", "languageTag": "OPB7TYFs", "skipLoginQueue": true, "uniqueDisplayName": "c6ITTf67", "userName": "VQAjMaZb"}' \
    > test.out 2>&1
eval_tap $? 320 'AdminUpdateUserV4' test.out

#- 321 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'iSelWqkg' \
    --body '{"code": "3MbTcS07", "emailAddress": "yTROemax"}' \
    > test.out 2>&1
eval_tap $? 321 'AdminUpdateUserEmailAddressV4' test.out

#- 322 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'fBc6GIQo' \
    > test.out 2>&1
eval_tap $? 322 'AdminDisableUserMFAV4' test.out

#- 323 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'fYRwlH73' \
    > test.out 2>&1
eval_tap $? 323 'AdminListUserRolesV4' test.out

#- 324 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'UPxVqPMN' \
    --body '{"assignedNamespaces": ["oXUu8G8D", "DSorFEqG", "3QNjbJlG"], "roleId": "o9WVG5Go"}' \
    > test.out 2>&1
eval_tap $? 324 'AdminUpdateUserRoleV4' test.out

#- 325 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'trC9OmOM' \
    --body '{"assignedNamespaces": ["vTyUTTqR", "sTJKxiSr", "xdIMPob0"], "roleId": "rrmHIg7x"}' \
    > test.out 2>&1
eval_tap $? 325 'AdminAddUserRoleV4' test.out

#- 326 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'eWej4Ifu' \
    --body '{"assignedNamespaces": ["GeDKPIO8", "hp1mMkjk", "d9nRZz20"], "roleId": "4OtmOU1l"}' \
    > test.out 2>&1
eval_tap $? 326 'AdminRemoveUserRoleV4' test.out

#- 327 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'false' \
    --limit '69' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 327 'AdminGetRolesV4' test.out

#- 328 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "FofqYNEt"}' \
    > test.out 2>&1
eval_tap $? 328 'AdminCreateRoleV4' test.out

#- 329 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId '0lBGZ98Z' \
    > test.out 2>&1
eval_tap $? 329 'AdminGetRoleV4' test.out

#- 330 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId '6IAtUykE' \
    > test.out 2>&1
eval_tap $? 330 'AdminDeleteRoleV4' test.out

#- 331 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'raTCPiUQ' \
    --body '{"adminRole": false, "deletable": false, "isWildcard": true, "roleName": "KajC61Ta"}' \
    > test.out 2>&1
eval_tap $? 331 'AdminUpdateRoleV4' test.out

#- 332 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId '1wAZkZNR' \
    --body '{"permissions": [{"action": 52, "resource": "jOvHSOPh", "schedAction": 35, "schedCron": "FPJHtVsl", "schedRange": ["85ekt0xe", "pAyka5D0", "yO81rFKc"]}, {"action": 2, "resource": "lTb3kJnt", "schedAction": 76, "schedCron": "aXDlGtWm", "schedRange": ["aMT09Tfr", "mzSTLiDy", "R38GndMg"]}, {"action": 49, "resource": "z1Kx2uzx", "schedAction": 94, "schedCron": "c00rek0q", "schedRange": ["M9sBOKG8", "zHsnTmej", "q0M0JBcl"]}]}' \
    > test.out 2>&1
eval_tap $? 332 'AdminUpdateRolePermissionsV4' test.out

#- 333 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'fMoZzhJS' \
    --body '{"permissions": [{"action": 33, "resource": "AnxqTOcX", "schedAction": 78, "schedCron": "UpbxyrC3", "schedRange": ["bGIxqOXI", "I3C4vDLV", "WSfojLUU"]}, {"action": 21, "resource": "yNv7AHNM", "schedAction": 65, "schedCron": "bA3NkIVt", "schedRange": ["pfsVXveN", "RWF3e2q7", "cbd5cs6L"]}, {"action": 36, "resource": "r1CoSEtd", "schedAction": 96, "schedCron": "rBKXohyK", "schedRange": ["jj5rTG1M", "UphGs652", "au7CfyAB"]}]}' \
    > test.out 2>&1
eval_tap $? 333 'AdminAddRolePermissionsV4' test.out

#- 334 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'YMKYYUFq' \
    --body '["iWHted8a", "SQZkIPMp", "bpp6nMNC"]' \
    > test.out 2>&1
eval_tap $? 334 'AdminDeleteRolePermissionsV4' test.out

#- 335 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'P8aDTgcP' \
    --after 'qNzZpY63' \
    --before '1WHzwcKe' \
    --limit '45' \
    > test.out 2>&1
eval_tap $? 335 'AdminListAssignedUsersV4' test.out

#- 336 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'cADNWLEY' \
    --body '{"assignedNamespaces": ["gMMfDSsY", "aW9pmOQY", "sq5TlXK6"], "namespace": "hpKREROT", "userId": "fY1X4SJ7"}' \
    > test.out 2>&1
eval_tap $? 336 'AdminAssignUserToRoleV4' test.out

#- 337 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'gpsKI6nA' \
    --body '{"namespace": "MExzROGa", "userId": "2vGgK0hg"}' \
    > test.out 2>&1
eval_tap $? 337 'AdminRevokeUserFromRoleV4' test.out

#- 338 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["NmqinmwC", "CnqNHVKU", "XrjFw9Ul"], "emailAddresses": ["PJyg3kVN", "kvUOyAr6", "EzwBxgtt"], "isAdmin": true, "isNewStudio": true, "namespace": "gtn8eEEZ", "roleId": "gmi8q5PT"}' \
    > test.out 2>&1
eval_tap $? 338 'AdminInviteUserNewV4' test.out

#- 339 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "38MijDlv", "country": "HVAONXc5", "dateOfBirth": "UWgyO9AM", "displayName": "V2H4hxh4", "languageTag": "wCY0HcNH", "skipLoginQueue": false, "uniqueDisplayName": "yxzwnubt", "userName": "UyhftAdM"}' \
    > test.out 2>&1
eval_tap $? 339 'AdminUpdateMyUserV4' test.out

#- 340 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 340 'AdminDisableMyAuthenticatorV4' test.out

#- 341 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'lBvQ0gWS' \
    > test.out 2>&1
eval_tap $? 341 'AdminEnableMyAuthenticatorV4' test.out

#- 342 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 342 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 343 AdminGetMyBackupCodesV4
eval_tap 0 343 'AdminGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 344 AdminGenerateMyBackupCodesV4
eval_tap 0 344 'AdminGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 345 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 345 'AdminDisableMyBackupCodesV4' test.out

#- 346 AdminDownloadMyBackupCodesV4
eval_tap 0 346 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 347 AdminEnableMyBackupCodesV4
eval_tap 0 347 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 348 AdminGetBackupCodesV4
samples/cli/sample-apps Iam adminGetBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 348 'AdminGetBackupCodesV4' test.out

#- 349 AdminGenerateBackupCodesV4
samples/cli/sample-apps Iam adminGenerateBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 349 'AdminGenerateBackupCodesV4' test.out

#- 350 AdminEnableBackupCodesV4
samples/cli/sample-apps Iam adminEnableBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 350 'AdminEnableBackupCodesV4' test.out

#- 351 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    > test.out 2>&1
eval_tap $? 351 'AdminSendMyMFAEmailCodeV4' test.out

#- 352 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    > test.out 2>&1
eval_tap $? 352 'AdminDisableMyEmailV4' test.out

#- 353 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'KFgk5Wv1' \
    > test.out 2>&1
eval_tap $? 353 'AdminEnableMyEmailV4' test.out

#- 354 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 354 'AdminGetMyEnabledFactorsV4' test.out

#- 355 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'j1Pgz4ip' \
    > test.out 2>&1
eval_tap $? 355 'AdminMakeFactorMyDefaultV4' test.out

#- 356 AdminInviteUserV4
eval_tap 0 356 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 357 AuthenticationWithPlatformLinkV4
samples/cli/sample-apps Iam authenticationWithPlatformLinkV4 \
    --extendExp 'false' \
    --clientId '2fb1vh5f' \
    --linkingToken 'TixFfo24' \
    --password 'sahEqXJ9' \
    --username 'pcbwQWEh' \
    > test.out 2>&1
eval_tap $? 357 'AuthenticationWithPlatformLinkV4' test.out

#- 358 GenerateTokenByNewHeadlessAccountV4
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV4 \
    --additionalData 'NDQ1P3ea' \
    --extendExp 'false' \
    --linkingToken 'fI3RCein' \
    > test.out 2>&1
eval_tap $? 358 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 359 Verify2faCodeV4
samples/cli/sample-apps Iam verify2faCodeV4 \
    --code 'WjCaBhQQ' \
    --factor 'xPgpHPHf' \
    --mfaToken 'OBAPFetj' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 359 'Verify2faCodeV4' test.out

#- 360 PlatformTokenGrantV4
samples/cli/sample-apps Iam platformTokenGrantV4 \
    --platformId '48aQ55NY' \
    --codeChallenge 'MkKYcI4B' \
    --codeChallengeMethod 'plain' \
    --additionalData 'X8VVqfh8' \
    --clientId 'jZBjj938' \
    --createHeadless 'false' \
    --deviceId 'R7Ngxy9f' \
    --macAddress '7A3w1OGK' \
    --platformToken 'PWolSsfR' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 360 'PlatformTokenGrantV4' test.out

#- 361 SimultaneousLoginV4
samples/cli/sample-apps Iam simultaneousLoginV4 \
    --codeChallenge '4i1KLfbq' \
    --codeChallengeMethod 'plain' \
    --simultaneousPlatform 'pspc' \
    --simultaneousTicket 'akfWMdK5' \
    --nativePlatform 'steam' \
    --nativePlatformTicket 'KjYdtjuN' \
    > test.out 2>&1
eval_tap $? 361 'SimultaneousLoginV4' test.out

#- 362 TokenGrantV4
samples/cli/sample-apps Iam tokenGrantV4 \
    --codeChallenge 'lX6qulWr' \
    --codeChallengeMethod 'S256' \
    --additionalData 'an39vHD5' \
    --clientId '4jG4g2oa' \
    --code 's93WDsPa' \
    --codeVerifier 'lpok9DsC' \
    --extendNamespace 'E83sE2az' \
    --extendExp 'false' \
    --loginQueueTicket 'nP4OFOXZ' \
    --password 'l9cueCLs' \
    --redirectUri 'MNzQdRqh' \
    --refreshToken '3dh3yMnA' \
    --username 'qMLYppzC' \
    --grantType 'refresh_token' \
    > test.out 2>&1
eval_tap $? 362 'TokenGrantV4' test.out

#- 363 RequestTargetTokenResponseV4
samples/cli/sample-apps Iam requestTargetTokenResponseV4 \
    --additionalData 'GRc6cxCQ' \
    --code 'PqRoQ6AY' \
    > test.out 2>&1
eval_tap $? 363 'RequestTargetTokenResponseV4' test.out

#- 364 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "smhK8JRb", "policyId": "HeEzyxwH", "policyVersionId": "EWJ7fWas"}, {"isAccepted": false, "localizedPolicyVersionId": "LDngLmWE", "policyId": "9cBoMclk", "policyVersionId": "KKCH0JNl"}, {"isAccepted": true, "localizedPolicyVersionId": "fskGAniN", "policyId": "LROITb5f", "policyVersionId": "5fIHWDyw"}], "authType": "EMAILPASSWD", "country": "nmTeUEX0", "dateOfBirth": "DIlNn6JT", "displayName": "R0eRYmb4", "emailAddress": "IcJbzpX9", "password": "8MDZAy1X", "passwordMD5Sum": "nNrxjBMu", "uniqueDisplayName": "8i6sbBkD", "username": "0v3W6RwW", "verified": false}' \
    > test.out 2>&1
eval_tap $? 364 'PublicCreateTestUserV4' test.out

#- 365 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "NtfivoA9", "policyId": "4gHIOI6n", "policyVersionId": "4tsyDiPY"}, {"isAccepted": false, "localizedPolicyVersionId": "CaW6xAPj", "policyId": "X11bz1Iw", "policyVersionId": "NHRewQRp"}, {"isAccepted": false, "localizedPolicyVersionId": "e22ZrFcA", "policyId": "OAgVWecv", "policyVersionId": "sHNK2YJx"}], "authType": "EMAILPASSWD", "code": "Ij3GpuK6", "country": "kKqda3n1", "dateOfBirth": "g8iY6bXS", "displayName": "f8W5HdQq", "emailAddress": "a4ppJiDN", "password": "OGGcsW0M", "passwordMD5Sum": "gGsswKuC", "reachMinimumAge": true, "uniqueDisplayName": "Q1Cyc0EZ", "username": "rEk7m0OV"}' \
    > test.out 2>&1
eval_tap $? 365 'PublicCreateUserV4' test.out

#- 366 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId '5kT3vN7E' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "3EnHBYTi", "policyId": "qUHqU1uL", "policyVersionId": "DFVqE3CP"}, {"isAccepted": true, "localizedPolicyVersionId": "EaDCfYiC", "policyId": "MvNnDkFT", "policyVersionId": "x5HiIkFy"}, {"isAccepted": false, "localizedPolicyVersionId": "8hM1dmBr", "policyId": "QZLxBqEL", "policyVersionId": "MD3mqiQA"}], "authType": "EMAILPASSWD", "code": "hTrVqwrb", "country": "EzHSLMSj", "dateOfBirth": "xbDeOzXM", "displayName": "Pvk79Smh", "emailAddress": "qt97BMZK", "password": "O2IXEKwR", "passwordMD5Sum": "NvQW2AcC", "reachMinimumAge": true, "uniqueDisplayName": "L7b9M1Mw", "username": "PMufp4VY"}' \
    > test.out 2>&1
eval_tap $? 366 'CreateUserFromInvitationV4' test.out

#- 367 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "FOxgT0zO", "country": "dLgxbJea", "dateOfBirth": "lNKGJa6a", "displayName": "famNZM1J", "languageTag": "gMieVXer", "uniqueDisplayName": "1ovEwuy8", "userName": "Snd5klgE"}' \
    > test.out 2>&1
eval_tap $? 367 'PublicUpdateUserV4' test.out

#- 368 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "lh1lX6Ot", "emailAddress": "KZyDEcro"}' \
    > test.out 2>&1
eval_tap $? 368 'PublicUpdateUserEmailAddressV4' test.out

#- 369 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "zwnj8Wrq", "country": "6HUKxXHx", "dateOfBirth": "fh9zH48t", "displayName": "GSfMFy7S", "emailAddress": "hbjqp4GZ", "password": "cAsvitqK", "reachMinimumAge": true, "uniqueDisplayName": "6ArGSfy8", "username": "dJvpe5xH", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 369 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 370 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "msC5ynnC", "password": "5ZNXDT9u", "username": "GINZUVzf"}' \
    > test.out 2>&1
eval_tap $? 370 'PublicUpgradeHeadlessAccountV4' test.out

#- 371 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 371 'PublicDisableMyAuthenticatorV4' test.out

#- 372 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'eJmx9w15' \
    > test.out 2>&1
eval_tap $? 372 'PublicEnableMyAuthenticatorV4' test.out

#- 373 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 373 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 374 PublicGetMyBackupCodesV4
eval_tap 0 374 'PublicGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 375 PublicGenerateMyBackupCodesV4
eval_tap 0 375 'PublicGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 376 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 376 'PublicDisableMyBackupCodesV4' test.out

#- 377 PublicDownloadMyBackupCodesV4
eval_tap 0 377 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 378 PublicEnableMyBackupCodesV4
eval_tap 0 378 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 379 PublicGetBackupCodesV4
samples/cli/sample-apps Iam publicGetBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 379 'PublicGetBackupCodesV4' test.out

#- 380 PublicGenerateBackupCodesV4
samples/cli/sample-apps Iam publicGenerateBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 380 'PublicGenerateBackupCodesV4' test.out

#- 381 PublicEnableBackupCodesV4
samples/cli/sample-apps Iam publicEnableBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 381 'PublicEnableBackupCodesV4' test.out

#- 382 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 382 'PublicRemoveTrustedDeviceV4' test.out

#- 383 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 383 'PublicSendMyMFAEmailCodeV4' test.out

#- 384 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 384 'PublicDisableMyEmailV4' test.out

#- 385 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code '8eMEahRz' \
    > test.out 2>&1
eval_tap $? 385 'PublicEnableMyEmailV4' test.out

#- 386 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 386 'PublicGetMyEnabledFactorsV4' test.out

#- 387 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'SjafJfk1' \
    > test.out 2>&1
eval_tap $? 387 'PublicMakeFactorMyDefaultV4' test.out

#- 388 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Txbdr3KO' \
    > test.out 2>&1
eval_tap $? 388 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 389 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "gRTdvsmJ", "emailAddress": "kSHEHqDa", "namespace": "y1BqJPwK", "namespaceDisplayName": "C6T5FcqF"}' \
    > test.out 2>&1
eval_tap $? 389 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE