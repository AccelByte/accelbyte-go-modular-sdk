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
echo "1..367"

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
    --body '[{"field": "nDFfG9N4", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["qEZh8VwF", "SLpPcf7Z", "gBvIYQWV"], "preferRegex": true, "regex": "GQKZWvCL"}, "blockedWord": ["MKUWHPYc", "2s1h1OF4", "REBxdshX"], "description": [{"language": "rhxfBm53", "message": ["nBBiCnJI", "oBbI6CkN", "3Zr36KK4"]}, {"language": "WJIBYolQ", "message": ["pGDCjDxs", "KaJEjO9o", "uXb77xGy"]}, {"language": "MMWbJefV", "message": ["o872BWDE", "Hjr6xMGR", "or65OKZx"]}], "isCustomRegex": true, "letterCase": "nlYYIY4m", "maxLength": 37, "maxRepeatingAlphaNum": 68, "maxRepeatingSpecialCharacter": 9, "minCharType": 55, "minLength": 19, "regex": "59V6FNOE", "specialCharacterLocation": "wIP0TgQx", "specialCharacters": ["Q809IZPk", "5svTLgUl", "SbHdyz0W"]}}, {"field": "TNpYD8ku", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["KYkWNpOp", "42UL74B8", "XFzoxP2r"], "preferRegex": true, "regex": "zawaVhs2"}, "blockedWord": ["yFOzMP3i", "ODQnO9Sm", "N49am8g4"], "description": [{"language": "nVSZs0mf", "message": ["UfjKXn2c", "dvKEZwGv", "SPQEdqEE"]}, {"language": "fyANvhMU", "message": ["3rO4Z6Av", "hmNJ5d00", "DhD2F5yD"]}, {"language": "e340y7eU", "message": ["6k9Y9rEg", "aedUXeFU", "E0jO3rBT"]}], "isCustomRegex": false, "letterCase": "Hj9tyNfu", "maxLength": 100, "maxRepeatingAlphaNum": 36, "maxRepeatingSpecialCharacter": 33, "minCharType": 59, "minLength": 50, "regex": "oRPR231P", "specialCharacterLocation": "5QdLjIW8", "specialCharacters": ["Yt2qyjIv", "K85M8X5Q", "JkolIrW0"]}}, {"field": "8FlwWhrB", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["gSvIKyhI", "yMojaCp1", "y0x90Cvf"], "preferRegex": false, "regex": "0zKYvx0E"}, "blockedWord": ["sboVpEy4", "A0giQCWM", "jgHYw7Qk"], "description": [{"language": "oHExknSB", "message": ["LY0XlQeh", "rSYYUeKA", "4RWp3THO"]}, {"language": "s9kTsZy2", "message": ["hzZsPG5d", "st8wdx9Z", "g2GuQZmx"]}, {"language": "yTUB1SwQ", "message": ["TMRoqFez", "kcQJAoUb", "rYDXMLP8"]}], "isCustomRegex": false, "letterCase": "MVw1VZ4z", "maxLength": 80, "maxRepeatingAlphaNum": 37, "maxRepeatingSpecialCharacter": 63, "minCharType": 41, "minLength": 73, "regex": "lyzY9pZB", "specialCharacterLocation": "pp9d59H3", "specialCharacters": ["NIpBzfsA", "u57TQYuI", "qz1sNril"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field '8Nft0lfF' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'efBnOjpL' \
    --before 'Ygz5tIcg' \
    --limit '72' \
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
    --body '{"ageRestriction": 77, "enable": true}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'JmgfItTe' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 25}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'ybeFyWYX' \
    --limit '58' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "rIriP2S6", "comment": "10yH5GQs", "endDate": "CTgd3aC8", "reason": "LnWYsh6X", "skipNotif": true, "userIds": ["cHQlvQ6s", "hNetia8X", "p3iXT38t"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "iLho9eAp", "userId": "DS7aXUjr"}, {"banId": "1qeoCuSr", "userId": "Vi8j1mOM"}, {"banId": "7Ea1ANdN", "userId": "uOG7tODq"}]}' \
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
    --clientId 'uJWogVbo' \
    --clientName 'QyL9Eu93' \
    --clientType 'u5M4byM4' \
    --limit '69' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["Yyb6LRks", "4HhqFULD", "lSX9bouc"], "baseUri": "AeaI0MKN", "clientId": "6b06kpY9", "clientName": "8MIj5K8w", "clientPermissions": [{"action": 16, "resource": "TbJ2rDXJ", "schedAction": 50, "schedCron": "NOCc7bb0", "schedRange": ["PKbhtR7D", "FeMyPhn4", "PwxOlXuy"]}, {"action": 27, "resource": "h4UYWZlE", "schedAction": 63, "schedCron": "sDTD4lKd", "schedRange": ["Rsn1ST1Q", "KdSw9MlR", "m77qtrSE"]}, {"action": 96, "resource": "ewtmVCaD", "schedAction": 5, "schedCron": "8zfGxhu4", "schedRange": ["L7AS1cjM", "B6H6ksjT", "VsEfSE48"]}], "clientPlatform": "byuzVrA4", "deletable": false, "description": "1Vk0NHmQ", "namespace": "YHbMH2lo", "oauthAccessTokenExpiration": 29, "oauthAccessTokenExpirationTimeUnit": "Xr3bt0xw", "oauthClientType": "K3wl2law", "oauthRefreshTokenExpiration": 61, "oauthRefreshTokenExpirationTimeUnit": "KzLPiGNz", "parentNamespace": "LDz5XIhV", "redirectUri": "S53F7Ae5", "scopes": ["4Bdxewh1", "r1s6yZ8k", "DcQbQ3O1"], "secret": "jOYNxcH5", "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'SYrpJ711' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'LJYgQcp1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'J7xdrtij' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["O7H9rjXQ", "rIwovh5K", "YHiPYE51"], "baseUri": "XL1oPqRn", "clientName": "jz9j5Ykh", "clientPermissions": [{"action": 99, "resource": "1d9ouEHI", "schedAction": 77, "schedCron": "yD8YVUeT", "schedRange": ["7Gfff7xi", "jnnnhPn0", "zNTbcN89"]}, {"action": 30, "resource": "mvZY1VaJ", "schedAction": 50, "schedCron": "tYP41avA", "schedRange": ["Bnf1on1k", "ErOgqDcg", "Aw37aP7c"]}, {"action": 33, "resource": "NaxAtXFZ", "schedAction": 86, "schedCron": "L6CBYVWk", "schedRange": ["0phbHVoq", "WfEMPjRC", "cQIHqSfB"]}], "clientPlatform": "a6GVfFbQ", "deletable": true, "description": "RByAG7jI", "namespace": "2AT5LGUc", "oauthAccessTokenExpiration": 20, "oauthAccessTokenExpirationTimeUnit": "FTpOia2b", "oauthRefreshTokenExpiration": 46, "oauthRefreshTokenExpirationTimeUnit": "VUSongH4", "redirectUri": "TuZmkUNN", "scopes": ["oBAJlw12", "K0EzwkxB", "eVVYJJPP"], "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'J4lcCLOB' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 68, "resource": "25LlOO6g"}, {"action": 21, "resource": "gJW7hsio"}, {"action": 61, "resource": "ZCtpBt1F"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'L2SlCrS0' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 41, "resource": "V5KbQ9HS"}, {"action": 72, "resource": "AnSO04Vx"}, {"action": 41, "resource": "qhi6KFVf"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '32' \
    --clientId 'JoLx7yzN' \
    --namespace $AB_NAMESPACE \
    --resource 'mklah5WZ' \
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
    --body '{"blacklist": ["SYDlzsT1", "P7HFZ5Sd", "6vQk808G"]}' \
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
    --limit '51' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 133 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 134 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '8wqZwTN7' \
    > test.out 2>&1
eval_tap $? 134 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 135 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'piaLxqN7' \
    --body '{"ACSURL": "gQRWicti", "AWSCognitoRegion": "k8Vkpob6", "AWSCognitoUserPool": "xr0Dax79", "AllowedClients": ["zwkfl2XK", "WSGyJ9kr", "grRYLde0"], "AppId": "PU4eeEky", "AuthorizationEndpoint": "pJbjusJT", "ClientId": "RQTvO3J9", "Environment": "8JWP1WEi", "FederationMetadataURL": "t40oAsLw", "GenericOauthFlow": true, "IsActive": false, "Issuer": "sfpLU3fL", "JWKSEndpoint": "VEnK5UTn", "KeyID": "71BAMaKy", "NetflixCertificates": {"encryptedPrivateKey": "ennINZ04", "encryptedPrivateKeyName": "tboRER2Q", "publicCertificate": "2LvwDoyJ", "publicCertificateName": "wRh3Gge2", "rootCertificate": "N7kYH7W5", "rootCertificateName": "ZTHcEX5C"}, "OrganizationId": "M2vOg90d", "PlatformName": "t4ZE6nqd", "RedirectUri": "ZW5MZsZF", "RegisteredDomains": [{"affectedClientIDs": ["w5W0qxHB", "WDSvHBDK", "kdQBWtEA"], "domain": "t9NuyZhK", "namespaces": ["5Rhyhsmc", "9711R5hl", "iQZHIx2D"], "roleId": "GKmtQItr"}, {"affectedClientIDs": ["TbrB1ys1", "koJAydkF", "Bzpq1DEj"], "domain": "GKuTaKdI", "namespaces": ["F6sDgNaq", "1p9q9VRY", "Fd80U1uJ"], "roleId": "PUgjIvvh"}, {"affectedClientIDs": ["XlhGDL2o", "TJ4IT3Yq", "1A05TKjL"], "domain": "G6bfX9Al", "namespaces": ["kjdEV4Wx", "il1zl83n", "BhSNvz7V"], "roleId": "leWhY0hT"}], "Secret": "LaC8rEIr", "TeamID": "a8xW2wD8", "TokenAuthenticationType": "IttnMWw5", "TokenClaimsMapping": {"VFlGoAz4": "tnlIQpvi", "9Gb4iyKI": "9Xjsxrux", "kItMXI72": "Rp2YZRMt"}, "TokenEndpoint": "8rHllsa2", "UserInfoEndpoint": "mVVW8Nqr", "UserInfoHTTPMethod": "SdAjVPUb", "scopes": ["CnMUoJZ3", "cjmJkDhb", "2MAYlFHQ"]}' \
    > test.out 2>&1
eval_tap $? 135 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 136 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '9OGGcTRp' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 137 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'jVqmtuPN' \
    --body '{"ACSURL": "nrkuZhle", "AWSCognitoRegion": "srdyGxso", "AWSCognitoUserPool": "N8IzJbSb", "AllowedClients": ["pASEBugK", "ym2Pod2G", "LPm8nZE3"], "AppId": "qpokluME", "AuthorizationEndpoint": "zrzb6LEN", "ClientId": "jGVaKmlz", "Environment": "LGvqKCyX", "FederationMetadataURL": "wIXTc8FX", "GenericOauthFlow": false, "IsActive": false, "Issuer": "OIvPdkUw", "JWKSEndpoint": "t14l4DND", "KeyID": "eft78obd", "NetflixCertificates": {"encryptedPrivateKey": "pdg6Vyi9", "encryptedPrivateKeyName": "LELOPVpN", "publicCertificate": "5sJlVaep", "publicCertificateName": "hVeZqIEv", "rootCertificate": "6qBMyI7L", "rootCertificateName": "KBgw6PEY"}, "OrganizationId": "8OJGLS48", "PlatformName": "1c9Pc2I3", "RedirectUri": "5Ic3GDXl", "RegisteredDomains": [{"affectedClientIDs": ["wRQbvioM", "n9meHSKz", "hmvjsaRP"], "domain": "HHBcKYxR", "namespaces": ["xJ29TQBI", "Xb0yFipQ", "BMLOQX6C"], "roleId": "qTcIo0C8"}, {"affectedClientIDs": ["M0THtFKf", "RXnSF1dN", "7ljbzf6b"], "domain": "7JQFJOfg", "namespaces": ["15lvAHZG", "1GVrg9sD", "eIOQybaO"], "roleId": "Wf2o5oKi"}, {"affectedClientIDs": ["NUEfE04i", "U0gwT9cU", "gsDgyJ9t"], "domain": "sQoPSdxf", "namespaces": ["mgspT4zx", "ldaPmZEH", "zPV2znof"], "roleId": "UD380yjZ"}], "Secret": "hi9eMDys", "TeamID": "fBa5kSrS", "TokenAuthenticationType": "AaInWGHT", "TokenClaimsMapping": {"Sugz5aUV": "lp1JNSAi", "r2fIEsAa": "IHeppBGp", "6qSVl9aN": "mSeibFE3"}, "TokenEndpoint": "Unr3poHk", "UserInfoEndpoint": "Yu59f1Ht", "UserInfoHTTPMethod": "Uy9UXBMj", "scopes": ["jCMASeXQ", "thJlBKe4", "s8anRUD6"]}' \
    > test.out 2>&1
eval_tap $? 137 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 138 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'JpIuDTSG' \
    --body '{"affectedClientIDs": ["SxMzHtx6", "Y66Uvoe5", "m5Ww1eX1"], "assignedNamespaces": ["QssHOurS", "wcLiAwp4", "kqqieGG9"], "domain": "T348LavY", "roleId": "HIrLU7qH"}' \
    > test.out 2>&1
eval_tap $? 138 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 139 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId '9xNuO5s9' \
    --body '{"domain": "dqjoh9F9"}' \
    > test.out 2>&1
eval_tap $? 139 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 140 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'hzfyetwX' \
    > test.out 2>&1
eval_tap $? 140 'RetrieveSSOLoginPlatformCredential' test.out

#- 141 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'oFVh9nL7' \
    --body '{"acsUrl": "c6BA9iqM", "apiKey": "DywUIQ9c", "appId": "yDOeqYmT", "federationMetadataUrl": "TcRVzXPL", "isActive": false, "redirectUri": "GBNligvp", "secret": "HsH45N9r", "ssoUrl": "RDQrbwHN"}' \
    > test.out 2>&1
eval_tap $? 141 'AddSSOLoginPlatformCredential' test.out

#- 142 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'rJoo1cVe' \
    > test.out 2>&1
eval_tap $? 142 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 143 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId '0sMn5eKN' \
    --body '{"acsUrl": "LYVIsh9q", "apiKey": "5RjZPZqq", "appId": "R2zodkcH", "federationMetadataUrl": "Tf035yLW", "isActive": true, "redirectUri": "xPOezKzg", "secret": "1XwojywY", "ssoUrl": "wE8BYSgL"}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateSSOPlatformCredential' test.out

#- 144 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'TBbHeULl' \
    --rawPID 'false' \
    --body '{"platformUserIds": ["c8WNuQaw", "BCiv34hs", "c6Sd7UKw"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 145 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'DmTZdyCw' \
    --platformUserId 'GPePQgGI' \
    > test.out 2>&1
eval_tap $? 145 'AdminGetUserByPlatformUserIDV3' test.out

#- 146 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'mogzUvu6' \
    --after '7' \
    --before '83' \
    --limit '79' \
    > test.out 2>&1
eval_tap $? 146 'GetAdminUsersByRoleIdV3' test.out

#- 147 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'xm6gIMla' \
    > test.out 2>&1
eval_tap $? 147 'AdminGetUserByEmailAddressV3' test.out

#- 148 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'nEdSXpzN' \
    --body '{"bulkUserId": ["ODabGCQQ", "32lbgS8J", "EbK3Cspm"]}' \
    > test.out 2>&1
eval_tap $? 148 'AdminGetBulkUserBanV3' test.out

#- 149 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["nbxKaGMR", "khDYub6q", "4QTFx1PX"]}' \
    > test.out 2>&1
eval_tap $? 149 'AdminListUserIDByUserIDsV3' test.out

#- 150 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["EMuoI6Za", "EoDUbYv8", "y9BcLNmQ"]}' \
    > test.out 2>&1
eval_tap $? 150 'AdminBulkGetUsersPlatform' test.out

#- 151 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["5VYyD1lA", "8k2mNQUM", "hQnkF3sr"], "isAdmin": false, "namespace": "meSklwer", "roles": ["eEKr0p8n", "XUKrGQX8", "lbegbY0x"]}' \
    > test.out 2>&1
eval_tap $? 151 'AdminInviteUserV3' test.out

#- 152 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '75' \
    --platformUserId '91d1tonS' \
    --platformId 'VDH9tG6C' \
    > test.out 2>&1
eval_tap $? 152 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 153 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 153 'AdminListUsersV3' test.out

#- 154 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'VnaEw7m2' \
    --endDate 'DtfKZyfN' \
    --includeTotal 'true' \
    --limit '64' \
    --offset '94' \
    --platformBy 'XlmlGWEW' \
    --platformId 'pVXl6sau' \
    --query 'kBMo0aZK' \
    --startDate 'T8IEvmxH' \
    --testAccount 'false' \
    > test.out 2>&1
eval_tap $? 154 'AdminSearchUserV3' test.out

#- 155 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["br7loWbt", "bx06oF3g", "YISiooEg"]}' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetBulkUserByEmailAddressV3' test.out

#- 156 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'V9hVKwtQ' \
    > test.out 2>&1
eval_tap $? 156 'AdminGetUserByUserIdV3' test.out

#- 157 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '7y89S1ob' \
    --body '{"avatarUrl": "b9oxUHVy", "country": "0nSefQBX", "dateOfBirth": "BAVg9L9g", "displayName": "iO0YBTkG", "languageTag": "xNEmWDIx", "userName": "koY2B1zt"}' \
    > test.out 2>&1
eval_tap $? 157 'AdminUpdateUserV3' test.out

#- 158 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'P4l4bf9P' \
    --activeOnly 'true' \
    --after 'lgWqP7E2' \
    --before 'hBx3qRWb' \
    --limit '79' \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserBanV3' test.out

#- 159 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'K1R2nHIt' \
    --body '{"ban": "Yph5Nipf", "comment": "aARw6WLW", "endDate": "nYwQl376", "reason": "npoLJ1LH", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 159 'AdminBanUserV3' test.out

#- 160 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'OW6wLCaf' \
    --namespace $AB_NAMESPACE \
    --userId '3vTdvRAv' \
    --body '{"enabled": false, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserBanV3' test.out

#- 161 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'MNnVGwjO' \
    --body '{"context": "jbpvM8lw", "emailAddress": "g38a9mOj", "languageTag": "NXvVuEVg"}' \
    > test.out 2>&1
eval_tap $? 161 'AdminSendVerificationCodeV3' test.out

#- 162 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jtGiR8la' \
    --body '{"Code": "vKnfIDOO", "ContactType": "7LuOI9nK", "LanguageTag": "H19vcrSK", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 162 'AdminVerifyAccountV3' test.out

#- 163 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'zZPElAck' \
    > test.out 2>&1
eval_tap $? 163 'GetUserVerificationCode' test.out

#- 164 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'NE8EAxAa' \
    > test.out 2>&1
eval_tap $? 164 'AdminGetUserDeletionStatusV3' test.out

#- 165 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '6zxMHOf2' \
    --body '{"deletionDate": 10, "enabled": true}' \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateUserDeletionStatusV3' test.out

#- 166 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'B5Bvi8tM' \
    --body '{"code": "BHeJ1Jq3", "country": "pCVogUyl", "dateOfBirth": "5ceMeL09", "displayName": "jMadmZth", "emailAddress": "Yhqo35GV", "password": "w3RHOLpy", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 166 'AdminUpgradeHeadlessAccountV3' test.out

#- 167 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'eJqfpK0t' \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserInformationV3' test.out

#- 168 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'UYDpgtFQ' \
    --after '0.6296699955822354' \
    --before '0.9562369193843143' \
    --limit '96' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserLoginHistoriesV3' test.out

#- 169 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'aATbHE9y' \
    --body '{"languageTag": "ujo4erxg", "newPassword": "v1KVSwyZ", "oldPassword": "bm2X8oDz"}' \
    > test.out 2>&1
eval_tap $? 169 'AdminResetPasswordV3' test.out

#- 170 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'c2j930Jg' \
    --body '{"Permissions": [{"Action": 4, "Resource": "iUbqy80i", "SchedAction": 26, "SchedCron": "KDZf1enW", "SchedRange": ["3IeiEfox", "noL6iEnu", "ic2Nxiub"]}, {"Action": 75, "Resource": "E6X514d7", "SchedAction": 36, "SchedCron": "BpAS2HIa", "SchedRange": ["jaZ9wicG", "VODEZ9Av", "wtq4bNr1"]}, {"Action": 37, "Resource": "N6uyoDi2", "SchedAction": 24, "SchedCron": "sbJcBUNx", "SchedRange": ["C1urLEfP", "mFwdBOgx", "ZUagjypJ"]}]}' \
    > test.out 2>&1
eval_tap $? 170 'AdminUpdateUserPermissionV3' test.out

#- 171 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vOtVvUEN' \
    --body '{"Permissions": [{"Action": 95, "Resource": "eqdeo8Dv", "SchedAction": 84, "SchedCron": "GteLEXKt", "SchedRange": ["5G1C2vKL", "uhRakEj8", "3gjMizFi"]}, {"Action": 19, "Resource": "aBkwS30g", "SchedAction": 10, "SchedCron": "FlHw1pdA", "SchedRange": ["I2D9cQw5", "Nwd33E54", "aoNozbW4"]}, {"Action": 98, "Resource": "ifpDtZh2", "SchedAction": 0, "SchedCron": "5SinKe5j", "SchedRange": ["QEkrFRpF", "OzSdOI5N", "le6TSJ2x"]}]}' \
    > test.out 2>&1
eval_tap $? 171 'AdminAddUserPermissionsV3' test.out

#- 172 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'CX4jVMgM' \
    --body '[{"Action": 21, "Resource": "mkwJdg8q"}, {"Action": 49, "Resource": "fQMW4rxR"}, {"Action": 65, "Resource": "M5pwxKnf"}]' \
    > test.out 2>&1
eval_tap $? 172 'AdminDeleteUserPermissionBulkV3' test.out

#- 173 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '86' \
    --namespace $AB_NAMESPACE \
    --resource 'xkK813Fg' \
    --userId 'GmLXvJ8H' \
    > test.out 2>&1
eval_tap $? 173 'AdminDeleteUserPermissionV3' test.out

#- 174 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZcWAXH0O' \
    --after 'cvlhUjEE' \
    --before 'Kjel0rc7' \
    --limit '83' \
    --platformId 'MwvrkaFy' \
    > test.out 2>&1
eval_tap $? 174 'AdminGetUserPlatformAccountsV3' test.out

#- 175 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'hnrZv7cb' \
    > test.out 2>&1
eval_tap $? 175 'AdminGetListJusticePlatformAccounts' test.out

#- 176 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'xRhV3qk3' \
    --userId 'v0ngkrMa' \
    > test.out 2>&1
eval_tap $? 176 'AdminGetUserMapping' test.out

#- 177 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'dPtP39Y0' \
    --userId 'S4Rmh3SV' \
    > test.out 2>&1
eval_tap $? 177 'AdminCreateJusticeUser' test.out

#- 178 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'jU0zO7K2' \
    --skipConflict 'false' \
    --body '{"platformId": "ioJdNFaw", "platformUserId": "7zvTwjlQ"}' \
    > test.out 2>&1
eval_tap $? 178 'AdminLinkPlatformAccount' test.out

#- 179 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'zXc9GjRz' \
    --userId 'dc4npOiA' \
    --body '{"platformNamespace": "1wlfT3G0"}' \
    > test.out 2>&1
eval_tap $? 179 'AdminPlatformUnlinkV3' test.out

#- 180 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'vUp72uMH' \
    --userId 'Uk6lBGii' \
    --ticket 'nwBI1tEd' \
    > test.out 2>&1
eval_tap $? 180 'AdminPlatformLinkV3' test.out

#- 181 AdminDeleteUserLinkingHistoryByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingHistoryByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'aGtD4l6W' \
    --userId 'eAp2Byla' \
    > test.out 2>&1
eval_tap $? 181 'AdminDeleteUserLinkingHistoryByPlatformIDV3' test.out

#- 182 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'AXnFIJ19' \
    --userId 'z9spsPz6' \
    --platformToken 'WRKCrvHC' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 183 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'PxsS5W4U' \
    --userId 'AREAFuWd' \
    > test.out 2>&1
eval_tap $? 183 'AdminGetUserSinglePlatformAccount' test.out

#- 184 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xGYHztIQ' \
    --body '["h5M8HccW", "JUbMtecZ", "3xzc2UTh"]' \
    > test.out 2>&1
eval_tap $? 184 'AdminDeleteUserRolesV3' test.out

#- 185 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ClXuvJV4' \
    --body '[{"namespace": "qwgIll4G", "roleId": "iGZHc7u1"}, {"namespace": "pgRgWJkj", "roleId": "SjquAWMC"}, {"namespace": "6CRMiGch", "roleId": "K0suwzqM"}]' \
    > test.out 2>&1
eval_tap $? 185 'AdminSaveUserRoleV3' test.out

#- 186 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'qyyYZbSd' \
    --userId '1nMoDBkB' \
    > test.out 2>&1
eval_tap $? 186 'AdminAddUserRoleV3' test.out

#- 187 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId '5b75RHAd' \
    --userId '14fq5HVH' \
    > test.out 2>&1
eval_tap $? 187 'AdminDeleteUserRoleV3' test.out

#- 188 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'WBJJVBjI' \
    --body '{"enabled": true, "reason": "PMHBdyZD"}' \
    > test.out 2>&1
eval_tap $? 188 'AdminUpdateUserStatusV3' test.out

#- 189 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId '1FZg7fgs' \
    --body '{"emailAddress": "06tF77JN", "password": "9IDDumgN"}' \
    > test.out 2>&1
eval_tap $? 189 'AdminTrustlyUpdateUserIdentity' test.out

#- 190 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'J9TX2XXE' \
    > test.out 2>&1
eval_tap $? 190 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 191 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'Ri7hIKEW' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "yEwSqSq1"}' \
    > test.out 2>&1
eval_tap $? 191 'AdminUpdateClientSecretV3' test.out

#- 192 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'EB4ba9G3' \
    --before '3d3jy6i0' \
    --isWildcard 'false' \
    --limit '71' \
    > test.out 2>&1
eval_tap $? 192 'AdminGetRolesV3' test.out

#- 193 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": true, "managers": [{"displayName": "CiOrseMu", "namespace": "N1u7mZkW", "userId": "Zd9Z3SvZ"}, {"displayName": "WpepraNW", "namespace": "sR7A1p7o", "userId": "G5C07WhU"}, {"displayName": "MSmr1nCD", "namespace": "jfWiniCL", "userId": "lDRcR1cq"}], "members": [{"displayName": "Q2k4LN5m", "namespace": "3MSeXfcf", "userId": "zlTB98KX"}, {"displayName": "pG6em19B", "namespace": "1j7gUFYZ", "userId": "gOXT0LSI"}, {"displayName": "iuCT2G1Z", "namespace": "Sqw2VOPw", "userId": "IYzpDdTf"}], "permissions": [{"action": 74, "resource": "5uenQdQg", "schedAction": 37, "schedCron": "pDCeyN1F", "schedRange": ["KVk8sulV", "Ww4MTiYn", "sB07dqk2"]}, {"action": 98, "resource": "xvWUkXrc", "schedAction": 74, "schedCron": "CQfw3thX", "schedRange": ["e4AkkJxP", "ysIoyytu", "cTekQbsN"]}, {"action": 63, "resource": "wxOO8mem", "schedAction": 75, "schedCron": "oOLj6xfF", "schedRange": ["PnsG0jRz", "e2hARym0", "YQSusLP7"]}], "roleName": "Ir5j1Bhz"}' \
    > test.out 2>&1
eval_tap $? 193 'AdminCreateRoleV3' test.out

#- 194 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId '2TUOKHTy' \
    > test.out 2>&1
eval_tap $? 194 'AdminGetRoleV3' test.out

#- 195 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'TXb1ktGF' \
    > test.out 2>&1
eval_tap $? 195 'AdminDeleteRoleV3' test.out

#- 196 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'R8s5ARW7' \
    --body '{"deletable": false, "isWildcard": true, "roleName": "DJuMCexM"}' \
    > test.out 2>&1
eval_tap $? 196 'AdminUpdateRoleV3' test.out

#- 197 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId '14VDcUZg' \
    > test.out 2>&1
eval_tap $? 197 'AdminGetRoleAdminStatusV3' test.out

#- 198 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'O76lvqqk' \
    > test.out 2>&1
eval_tap $? 198 'AdminUpdateAdminRoleStatusV3' test.out

#- 199 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId '5E2D0lBj' \
    > test.out 2>&1
eval_tap $? 199 'AdminRemoveRoleAdminV3' test.out

#- 200 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'wpvXvkhV' \
    --after 'SPkAHGMi' \
    --before 'yvYbW2WS' \
    --limit '11' \
    > test.out 2>&1
eval_tap $? 200 'AdminGetRoleManagersV3' test.out

#- 201 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'fybfmj02' \
    --body '{"managers": [{"displayName": "GbGelcCy", "namespace": "afc09eeH", "userId": "vBa9KxrZ"}, {"displayName": "ztWF0Ghw", "namespace": "fmLIwQeL", "userId": "1kFfiv1O"}, {"displayName": "XYnvu964", "namespace": "cs1CkMzc", "userId": "opap8YD9"}]}' \
    > test.out 2>&1
eval_tap $? 201 'AdminAddRoleManagersV3' test.out

#- 202 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'wLoooXdZ' \
    --body '{"managers": [{"displayName": "3M5hLKmO", "namespace": "Luq4C27k", "userId": "v5XNZFrf"}, {"displayName": "vuNsuVXH", "namespace": "yVqSP8ND", "userId": "rKZJRX1h"}, {"displayName": "k9pod50d", "namespace": "2VWa32df", "userId": "t7DQZyCc"}]}' \
    > test.out 2>&1
eval_tap $? 202 'AdminRemoveRoleManagersV3' test.out

#- 203 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'Y2kR83Cv' \
    --after 'CYjWKPhH' \
    --before 'U9geveyk' \
    --limit '53' \
    > test.out 2>&1
eval_tap $? 203 'AdminGetRoleMembersV3' test.out

#- 204 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'yW7CoQ3I' \
    --body '{"members": [{"displayName": "nfK8RLDb", "namespace": "XlIPGRnG", "userId": "rOGPMPrE"}, {"displayName": "J7J106NJ", "namespace": "Xa2lhdnP", "userId": "mDvDsVpp"}, {"displayName": "MxbG95Jk", "namespace": "LTZXzxV5", "userId": "tuaHnA2a"}]}' \
    > test.out 2>&1
eval_tap $? 204 'AdminAddRoleMembersV3' test.out

#- 205 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'klqjsbqH' \
    --body '{"members": [{"displayName": "aMwOoa2O", "namespace": "VLBauIhJ", "userId": "GRh02km5"}, {"displayName": "f6tjJvNK", "namespace": "qMUDojof", "userId": "WUkkh4k9"}, {"displayName": "RQNz3bfh", "namespace": "eu4E0sEP", "userId": "3AXVfMlH"}]}' \
    > test.out 2>&1
eval_tap $? 205 'AdminRemoveRoleMembersV3' test.out

#- 206 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'hQwWoTDd' \
    --body '{"permissions": [{"action": 46, "resource": "TDocwqQu", "schedAction": 73, "schedCron": "yWp2q8I0", "schedRange": ["Xxb3pcIS", "slmpDjPY", "DHMkR6LW"]}, {"action": 21, "resource": "FS42uyqD", "schedAction": 13, "schedCron": "mOddBoxC", "schedRange": ["LWS8EibB", "3pZpjpaV", "749NfmJc"]}, {"action": 98, "resource": "WalUtrzW", "schedAction": 2, "schedCron": "uYtmDA3E", "schedRange": ["qewWRcsB", "L6NiFhAE", "AbF4PFzk"]}]}' \
    > test.out 2>&1
eval_tap $? 206 'AdminUpdateRolePermissionsV3' test.out

#- 207 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'fqw9NoIv' \
    --body '{"permissions": [{"action": 4, "resource": "a4RS8uGv", "schedAction": 87, "schedCron": "0JiYqnYW", "schedRange": ["JyiekEG8", "xPo824fz", "EhIt0sv0"]}, {"action": 97, "resource": "Rt5yh5tK", "schedAction": 78, "schedCron": "4hY8m78y", "schedRange": ["MGmpSp17", "LeXZMkdS", "vFTaLbku"]}, {"action": 0, "resource": "PTuOLwwY", "schedAction": 25, "schedCron": "r264jJYp", "schedRange": ["Y9DMZlS1", "WXXZnMA9", "jZeWNUnS"]}]}' \
    > test.out 2>&1
eval_tap $? 207 'AdminAddRolePermissionsV3' test.out

#- 208 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'H2XKGU0S' \
    --body '["xVr3XUA7", "kMVQsAWq", "sspGaJX2"]' \
    > test.out 2>&1
eval_tap $? 208 'AdminDeleteRolePermissionsV3' test.out

#- 209 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '88' \
    --resource 'dkNnIiSX' \
    --roleId 'SWEyc5U6' \
    > test.out 2>&1
eval_tap $? 209 'AdminDeleteRolePermissionV3' test.out

#- 210 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 210 'AdminGetMyUserV3' test.out

#- 211 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'lRho4Qh5' \
    --extendExp 'true' \
    --redirectUri 'hdge1Vnx' \
    --password '72VbOCns' \
    --requestId 'jFTX9A8m' \
    --userName 'c4Ovmsue' \
    > test.out 2>&1
eval_tap $? 211 'UserAuthenticationV3' test.out

#- 212 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId 'oLFJBWOb' \
    --linkingToken 'AD6yoC5D' \
    --password '61hjsH0x' \
    --username 'o6zJhKO4' \
    > test.out 2>&1
eval_tap $? 212 'AuthenticationWithPlatformLinkV3' test.out

#- 213 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'iHARUg0x' \
    --extendExp 'true' \
    --linkingToken 'KcuGLPlP' \
    > test.out 2>&1
eval_tap $? 213 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 214 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'jXSSsp9J' \
    > test.out 2>&1
eval_tap $? 214 'RequestOneTimeLinkingCodeV3' test.out

#- 215 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode '4HzAK6aO' \
    > test.out 2>&1
eval_tap $? 215 'ValidateOneTimeLinkingCodeV3' test.out

#- 216 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData '7eHAuJ2W' \
    --isTransient 'false' \
    --clientId '1pyBaUIf' \
    --oneTimeLinkCode 'a5jLkHt6' \
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
    --clientId 'hMZr17Kj' \
    > test.out 2>&1
eval_tap $? 219 'RequestTokenExchangeCodeV3' test.out

#- 220 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'XzJtcpDe' \
    --userId 'rBvq0yey' \
    > test.out 2>&1
eval_tap $? 220 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 221 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '0fcwNfIu' \
    --includeGameNamespace 'false' \
    > test.out 2>&1
eval_tap $? 221 'RevokeUserV3' test.out

#- 222 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'pjPmD960' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'true' \
    --oneTimeLinkCode 'KxihO3tD' \
    --redirectUri 'N8dHw2ud' \
    --scope 'ZwlrJxwj' \
    --state 'pC3TYe33' \
    --targetAuthPage 'hi3J13eR' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId 'xLpAJin3' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 222 'AuthorizeV3' test.out

#- 223 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'xZKT4Bip' \
    > test.out 2>&1
eval_tap $? 223 'TokenIntrospectionV3' test.out

#- 224 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 224 'GetJWKSV3' test.out

#- 225 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'ej4kMA62' \
    --factor 'QiK9AgNW' \
    --mfaToken 'F7Aam47w' \
    > test.out 2>&1
eval_tap $? 225 'SendMFAAuthenticationCode' test.out

#- 226 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'tvVvYFbj' \
    --mfaToken 'CrRk92TL' \
    > test.out 2>&1
eval_tap $? 226 'Change2faMethod' test.out

#- 227 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'Uk9BRTWF' \
    --factor 'WlAVxWeY' \
    --mfaToken 'j8d78P6J' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 227 'Verify2faCode' test.out

#- 228 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'g71Bmfpn' \
    --userId 'IHNuiRxZ' \
    > test.out 2>&1
eval_tap $? 228 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 229 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId '3JDIVsJ0' \
    --clientId '5avMPLOm' \
    --redirectUri 'sDBkKuXX' \
    --requestId 'EDxObxTS' \
    > test.out 2>&1
eval_tap $? 229 'AuthCodeRequestV3' test.out

#- 230 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'S0sICXiP' \
    --additionalData 'jlhfWUiL' \
    --clientId 'Qj6YfcFO' \
    --createHeadless 'false' \
    --deviceId 'YJep5wGW' \
    --macAddress 'jyvVYT2a' \
    --platformToken 'rKdC74SF' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 230 'PlatformTokenGrantV3' test.out

#- 231 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 231 'GetRevocationListV3' test.out

#- 232 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'xqrw3Wr5' \
    > test.out 2>&1
eval_tap $? 232 'TokenRevocationV3' test.out

#- 233 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'pspc' \
    --simultaneousTicket 'm0Kac6rs' \
    --nativePlatform 'epicgames' \
    --nativePlatformTicket '8CSj5Xzm' \
    > test.out 2>&1
eval_tap $? 233 'SimultaneousLoginV3' test.out

#- 234 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'F1xRrhX1' \
    --clientId 'rZEn26Na' \
    --code 'K7UtgPC3' \
    --codeVerifier 'dpyDx9SN' \
    --extendNamespace '52nd30jV' \
    --extendExp 'false' \
    --password 'tqrrQVUR' \
    --redirectUri 'Egov1xD3' \
    --refreshToken 'LNPVqFuR' \
    --username 'P0x4qK3p' \
    --grantType 'password' \
    > test.out 2>&1
eval_tap $? 234 'TokenGrantV3' test.out

#- 235 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'EQt58UJL' \
    > test.out 2>&1
eval_tap $? 235 'VerifyTokenV3' test.out

#- 236 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'lQV7SkJv' \
    --code 'f4lX3ZP1' \
    --error 'REnpBLS6' \
    --openidAssocHandle 'W3P6nSYQ' \
    --openidClaimedId 'lKnNDnJD' \
    --openidIdentity 'Aa1I72Yl' \
    --openidMode 'ees4SJ6y' \
    --openidNs 'nnYJURtd' \
    --openidOpEndpoint 'bTmfLvl8' \
    --openidResponseNonce 'UNGIRtRx' \
    --openidReturnTo 'DOMteo3I' \
    --openidSig '0auNc4um' \
    --openidSigned 'vdXVC9P7' \
    --state 'T5RIvFSp' \
    > test.out 2>&1
eval_tap $? 236 'PlatformAuthenticationV3' test.out

#- 237 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'FoW3CvVU' \
    --platformToken 'GLJY8OQb' \
    > test.out 2>&1
eval_tap $? 237 'PlatformTokenRefreshV3' test.out

#- 238 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'false' \
    --languageCode 'fQsJOBWd' \
    > test.out 2>&1
eval_tap $? 238 'PublicGetInputValidations' test.out

#- 239 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'r77bekwa' \
    > test.out 2>&1
eval_tap $? 239 'PublicGetInputValidationByField' test.out

#- 240 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode '94bHjdEf' \
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
    --clientId 'enqf3NVt' \
    > test.out 2>&1
eval_tap $? 243 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 244 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'cW2rsDwm' \
    --rawPID 'false' \
    --body '{"platformUserIds": ["sQXgTmfQ", "YTAcINN0", "gzWhmnVX"]}' \
    > test.out 2>&1
eval_tap $? 244 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 245 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'O4m2TmNb' \
    --platformUserId 'qWN5fBRS' \
    > test.out 2>&1
eval_tap $? 245 'PublicGetUserByPlatformUserIDV3' test.out

#- 246 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'r8F81Ppo' \
    > test.out 2>&1
eval_tap $? 246 'PublicGetAsyncStatus' test.out

#- 247 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'HKmcBa9i' \
    --limit '11' \
    --offset '2' \
    --platformBy 'Uga5U2ym' \
    --platformId '8PhoNFk2' \
    --query 'vTLigp2F' \
    > test.out 2>&1
eval_tap $? 247 'PublicSearchUserV3' test.out

#- 248 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "LCyEnJ5R", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "UOTfkH1y", "policyId": "8pMri0l1", "policyVersionId": "xZ13lPvs"}, {"isAccepted": false, "localizedPolicyVersionId": "jCwlamTL", "policyId": "zqy0NYSE", "policyVersionId": "WlMMFMsy"}, {"isAccepted": true, "localizedPolicyVersionId": "6qTuQBdT", "policyId": "LP7C20IB", "policyVersionId": "ZJrd86Nd"}], "authType": "Yoqv9N4F", "code": "pdj0fx8U", "country": "eqhR8YJh", "dateOfBirth": "PV7TCw7C", "displayName": "awO99NJd", "emailAddress": "lnlZko5B", "password": "UgU5SkLA", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 248 'PublicCreateUserV3' test.out

#- 249 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'CKpCeTgk' \
    --query 'GAxoIQma' \
    > test.out 2>&1
eval_tap $? 249 'CheckUserAvailability' test.out

#- 250 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["BYT8Q2Jo", "hcSPgz5M", "auZtVADh"]}' \
    > test.out 2>&1
eval_tap $? 250 'PublicBulkGetUsers' test.out

#- 251 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "izrSOGJy", "languageTag": "93mKgKyK"}' \
    > test.out 2>&1
eval_tap $? 251 'PublicSendRegistrationCode' test.out

#- 252 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "bPwKjkIg", "emailAddress": "hNfIMzGt"}' \
    > test.out 2>&1
eval_tap $? 252 'PublicVerifyRegistrationCode' test.out

#- 253 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "W7TKQ0Ah", "languageTag": "5L15Zijy"}' \
    > test.out 2>&1
eval_tap $? 253 'PublicForgotPasswordV3' test.out

#- 254 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'VH5HNgFd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 254 'GetAdminInvitationV3' test.out

#- 255 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'ocvnpCWM' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "0qsMmEZL", "policyId": "fqwQkoIx", "policyVersionId": "sSOqNYuB"}, {"isAccepted": false, "localizedPolicyVersionId": "uHAS9lYO", "policyId": "lhfUgkqK", "policyVersionId": "xY1z6RJB"}, {"isAccepted": true, "localizedPolicyVersionId": "6WMa6Nbm", "policyId": "MwSAlaTn", "policyVersionId": "wmwCqLKz"}], "authType": "EMAILPASSWD", "country": "VQNwRZcD", "dateOfBirth": "S8xSDUea", "displayName": "yshtFKZi", "password": "UrcOgBu9", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 255 'CreateUserFromInvitationV3' test.out

#- 256 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "ox06xNKK", "country": "wPzzqmMT", "dateOfBirth": "ARwZ2NV7", "displayName": "2x6qnKbH", "languageTag": "3TZUObyD", "userName": "v92V5E5k"}' \
    > test.out 2>&1
eval_tap $? 256 'UpdateUserV3' test.out

#- 257 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "s0hsSlg9", "country": "T3EqpNod", "dateOfBirth": "POyDzf67", "displayName": "KuNPNTAv", "languageTag": "DLytXml5", "userName": "M3ciwd5r"}' \
    > test.out 2>&1
eval_tap $? 257 'PublicPartialUpdateUserV3' test.out

#- 258 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "y9BGFPZ4", "emailAddress": "k0u2mNeo", "languageTag": "ZsB0RKI0"}' \
    > test.out 2>&1
eval_tap $? 258 'PublicSendVerificationCodeV3' test.out

#- 259 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "CWpk2Wo0", "contactType": "mD9LRVni", "languageTag": "VufXpq2M", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 259 'PublicUserVerificationV3' test.out

#- 260 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "zS5LAkMY", "country": "uFTzn1Jy", "dateOfBirth": "Hgzj3IHT", "displayName": "mmHuvhm6", "emailAddress": "RAiVnvsz", "password": "dIbgq0FR", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 260 'PublicUpgradeHeadlessAccountV3' test.out

#- 261 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'true' \
    --body '{"emailAddress": "RcTZ1pRd", "password": "I2bcnY4V"}' \
    > test.out 2>&1
eval_tap $? 261 'PublicVerifyHeadlessAccountV3' test.out

#- 262 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "dStdoNt7", "newPassword": "2HK0blO7", "oldPassword": "Ix80UaqG"}' \
    > test.out 2>&1
eval_tap $? 262 'PublicUpdatePasswordV3' test.out

#- 263 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace '9WALqp3B' \
    > test.out 2>&1
eval_tap $? 263 'PublicCreateJusticeUser' test.out

#- 264 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'KdpR1hvP' \
    --redirectUri 'niIdeY9Q' \
    --ticket 'PJmUrwL1' \
    > test.out 2>&1
eval_tap $? 264 'PublicPlatformLinkV3' test.out

#- 265 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'l6NzpEsF' \
    --body '{"platformNamespace": "L0JSsSiA"}' \
    > test.out 2>&1
eval_tap $? 265 'PublicPlatformUnlinkV3' test.out

#- 266 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'mLcBuhRq' \
    > test.out 2>&1
eval_tap $? 266 'PublicPlatformUnlinkAllV3' test.out

#- 267 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'zSPkdRHJ' \
    --ticket 'iO3kh0W9' \
    > test.out 2>&1
eval_tap $? 267 'PublicForcePlatformLinkV3' test.out

#- 268 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'vnGTdYmf' \
    --clientId 'mPojk9NJ' \
    --redirectUri 'rlfeSqff' \
    > test.out 2>&1
eval_tap $? 268 'PublicWebLinkPlatform' test.out

#- 269 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'G0D35qha' \
    --code 'SO0Nz2Hr' \
    --state '1CtupIjw' \
    > test.out 2>&1
eval_tap $? 269 'PublicWebLinkPlatformEstablish' test.out

#- 270 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'FCuas8Ys' \
    --code 'ComtvwNW' \
    --state 'UuwIveA2' \
    > test.out 2>&1
eval_tap $? 270 'PublicProcessWebLinkPlatformV3' test.out

#- 271 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "FRUUnSgp", "userIds": ["jF7CNQ3K", "r7WYJnkK", "QYgVKOcV"]}' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetUsersPlatformInfosV3' test.out

#- 272 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "sTYBZlHu", "emailAddress": "9NPNiPvp", "newPassword": "KX57k6Cy"}' \
    > test.out 2>&1
eval_tap $? 272 'ResetPasswordV3' test.out

#- 273 PublicGetUserByUserIdV3
eval_tap 0 273 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 274 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'x3yLKbFH' \
    --activeOnly 'false' \
    --after 'Ov5WS4kJ' \
    --before '6GurpaWi' \
    --limit '44' \
    > test.out 2>&1
eval_tap $? 274 'PublicGetUserBanHistoryV3' test.out

#- 275 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'PBcZnGgw' \
    > test.out 2>&1
eval_tap $? 275 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 276 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'lVYz4eWk' \
    > test.out 2>&1
eval_tap $? 276 'PublicGetUserInformationV3' test.out

#- 277 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'MEpM8AY8' \
    --after '0.9915922781033375' \
    --before '0.4411549111235168' \
    --limit '52' \
    > test.out 2>&1
eval_tap $? 277 'PublicGetUserLoginHistoriesV3' test.out

#- 278 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Pi4571ry' \
    --after 'Aw0bik68' \
    --before 'ovxyYVUw' \
    --limit '56' \
    --platformId 'Wgf1vJw1' \
    > test.out 2>&1
eval_tap $? 278 'PublicGetUserPlatformAccountsV3' test.out

#- 279 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'n1RVk4Pj' \
    > test.out 2>&1
eval_tap $? 279 'PublicListJusticePlatformAccountsV3' test.out

#- 280 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'bUftZNTc' \
    --body '{"platformId": "7Kz6YLEq", "platformUserId": "vOAhisQF"}' \
    > test.out 2>&1
eval_tap $? 280 'PublicLinkPlatformAccount' test.out

#- 281 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'n49Fosde' \
    --body '{"chosenNamespaces": ["hl2IK2C4", "Bj7zPeSA", "7t6Q2VMQ"], "requestId": "5tPKsw6W"}' \
    > test.out 2>&1
eval_tap $? 281 'PublicForceLinkPlatformWithProgression' test.out

#- 282 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '1F4vn8fZ' \
    > test.out 2>&1
eval_tap $? 282 'PublicGetPublisherUserV3' test.out

#- 283 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'nTIwIEIJ' \
    --password 'Rl0KPZfg' \
    > test.out 2>&1
eval_tap $? 283 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 284 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'F0Bvs0Yo' \
    --before 'NYvukieL' \
    --isWildcard 'false' \
    --limit '20' \
    > test.out 2>&1
eval_tap $? 284 'PublicGetRolesV3' test.out

#- 285 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'YDKDW8Bv' \
    > test.out 2>&1
eval_tap $? 285 'PublicGetRoleV3' test.out

#- 286 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'false' \
    > test.out 2>&1
eval_tap $? 286 'PublicGetMyUserV3' test.out

#- 287 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'YfNimPgf' \
    > test.out 2>&1
eval_tap $? 287 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 288 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["YIXvOUkU", "rpBdlGIR", "0QIwWkZa"], "oneTimeLinkCode": "qnffh9DY"}' \
    > test.out 2>&1
eval_tap $? 288 'LinkHeadlessAccountToMyAccountV3' test.out

#- 289 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "xY3LCUae"}' \
    > test.out 2>&1
eval_tap $? 289 'PublicSendVerificationLinkV3' test.out

#- 290 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'euDaEml5' \
    > test.out 2>&1
eval_tap $? 290 'PublicVerifyUserByLinkV3' test.out

#- 291 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'V6lnFrIQ' \
    --code 'PfOkN7wT' \
    --error 'Sd5Rw0Md' \
    --state 'eRIsdiCw' \
    > test.out 2>&1
eval_tap $? 291 'PlatformAuthenticateSAMLV3Handler' test.out

#- 292 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId '8W8vDET5' \
    --payload 'u8r410Tv' \
    > test.out 2>&1
eval_tap $? 292 'LoginSSOClient' test.out

#- 293 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'oqqBoJpe' \
    > test.out 2>&1
eval_tap $? 293 'LogoutSSOClient' test.out

#- 294 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 'cp2aEyl3' \
    --code 'xoGckzA2' \
    > test.out 2>&1
eval_tap $? 294 'RequestTargetTokenResponseV3' test.out

#- 295 PlatformTokenRefreshV3Deprecate
eval_tap 0 295 'PlatformTokenRefreshV3Deprecate # SKIP deprecated' test.out

#- 296 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId '7Vs8UpOC' \
    > test.out 2>&1
eval_tap $? 296 'AdminGetDevicesByUserV4' test.out

#- 297 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'JBiiMUdq' \
    --endDate 'R9U9XETG' \
    --limit '43' \
    --offset '32' \
    --startDate 'csqVL5zZ' \
    > test.out 2>&1
eval_tap $? 297 'AdminGetBannedDevicesV4' test.out

#- 298 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'DLcytSb0' \
    > test.out 2>&1
eval_tap $? 298 'AdminGetUserDeviceBansV4' test.out

#- 299 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "vZzEcBsU", "deviceId": "UoH4Zww6", "deviceType": "R73oXVVv", "enabled": true, "endDate": "O2Xg6o6P", "ext": {"zEGwRVHE": {}, "n8i2K3bt": {}, "k0nFIv14": {}}, "reason": "hUAmaLyF"}' \
    > test.out 2>&1
eval_tap $? 299 'AdminBanDeviceV4' test.out

#- 300 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'd72iC2lJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 300 'AdminGetDeviceBanV4' test.out

#- 301 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId '3aBcGoV6' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 301 'AdminUpdateDeviceBanV4' test.out

#- 302 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'hymQGCES' \
    --startDate 'ZaVMd7IU' \
    --deviceType '9ylP7V8a' \
    > test.out 2>&1
eval_tap $? 302 'AdminGenerateReportV4' test.out

#- 303 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 303 'AdminGetDeviceTypesV4' test.out

#- 304 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'QUPIBNmT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 304 'AdminGetDeviceBansV4' test.out

#- 305 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'MHmlJSyV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 305 'AdminDecryptDeviceV4' test.out

#- 306 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'xxPJasLN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 306 'AdminUnbanDeviceV4' test.out

#- 307 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'vgAUYmV7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 307 'AdminGetUsersByDeviceV4' test.out

#- 308 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 100}' \
    > test.out 2>&1
eval_tap $? 308 'AdminCreateTestUsersV4' test.out

#- 309 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": true, "userIds": ["e0rIvlq7", "qrjrx2GS", "bd5rTNno"]}' \
    > test.out 2>&1
eval_tap $? 309 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 310 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["aKVoarev", "D7czYbxx", "XoIe6yYb"]}' \
    > test.out 2>&1
eval_tap $? 310 'AdminBulkCheckValidUserIDV4' test.out

#- 311 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ZDU3ESpr' \
    --body '{"avatarUrl": "NtroHxkW", "country": "5t8f6CZ4", "dateOfBirth": "xvRnSwcj", "displayName": "qwEF0xfc", "languageTag": "4y2eRmCM", "userName": "C72qXoGC"}' \
    > test.out 2>&1
eval_tap $? 311 'AdminUpdateUserV4' test.out

#- 312 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'qauXjK15' \
    --body '{"code": "UA8wzyDp", "emailAddress": "WQWZucSA"}' \
    > test.out 2>&1
eval_tap $? 312 'AdminUpdateUserEmailAddressV4' test.out

#- 313 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Ci96s4SA' \
    > test.out 2>&1
eval_tap $? 313 'AdminDisableUserMFAV4' test.out

#- 314 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'vG6B6LsM' \
    > test.out 2>&1
eval_tap $? 314 'AdminListUserRolesV4' test.out

#- 315 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'b0CDbDm3' \
    --body '{"assignedNamespaces": ["YaqWF7ke", "hmmqDZed", "PbQPwIBb"], "roleId": "daZ44CS2"}' \
    > test.out 2>&1
eval_tap $? 315 'AdminUpdateUserRoleV4' test.out

#- 316 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'R6p3UXHU' \
    --body '{"assignedNamespaces": ["sxAzBUv9", "uv4OA8Z7", "BSm7uVpL"], "roleId": "16sitA6e"}' \
    > test.out 2>&1
eval_tap $? 316 'AdminAddUserRoleV4' test.out

#- 317 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'DO55qdk6' \
    --body '{"assignedNamespaces": ["2TtD8FTn", "Mpr2hjET", "idxJAsLP"], "roleId": "tOplljq6"}' \
    > test.out 2>&1
eval_tap $? 317 'AdminRemoveUserRoleV4' test.out

#- 318 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'true' \
    --limit '6' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 318 'AdminGetRolesV4' test.out

#- 319 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "kuR4SyZj"}' \
    > test.out 2>&1
eval_tap $? 319 'AdminCreateRoleV4' test.out

#- 320 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId '6LPwWWhG' \
    > test.out 2>&1
eval_tap $? 320 'AdminGetRoleV4' test.out

#- 321 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'oHi64lO9' \
    > test.out 2>&1
eval_tap $? 321 'AdminDeleteRoleV4' test.out

#- 322 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'd3Lm256E' \
    --body '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "qKiw60te"}' \
    > test.out 2>&1
eval_tap $? 322 'AdminUpdateRoleV4' test.out

#- 323 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'SwtciAUQ' \
    --body '{"permissions": [{"action": 45, "resource": "WwybrdJQ", "schedAction": 81, "schedCron": "x2hLiIa5", "schedRange": ["pLmlTSQT", "y69ApT4D", "4NOYu9pt"]}, {"action": 7, "resource": "FGEZqE3c", "schedAction": 48, "schedCron": "1I8pbp4E", "schedRange": ["R8oWXRnP", "9UqFwFgF", "bMVnjnD6"]}, {"action": 89, "resource": "P6kWesCq", "schedAction": 10, "schedCron": "rZaNxnGC", "schedRange": ["iVjo7IXw", "VlWwoGCF", "bzrC1gQZ"]}]}' \
    > test.out 2>&1
eval_tap $? 323 'AdminUpdateRolePermissionsV4' test.out

#- 324 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId '9dZmDPe6' \
    --body '{"permissions": [{"action": 95, "resource": "8p7N8vcd", "schedAction": 86, "schedCron": "12zBeQB6", "schedRange": ["4AGMXL08", "9di44r8q", "y02Iu3af"]}, {"action": 62, "resource": "SNbt7meq", "schedAction": 92, "schedCron": "iiw2sGFp", "schedRange": ["Gcbw3I03", "KDkFU1lC", "ibSOBBYI"]}, {"action": 15, "resource": "uuvE1OiK", "schedAction": 30, "schedCron": "iPsYQyGp", "schedRange": ["HBwU5pd5", "RJMhQHKG", "Yk0sNTTR"]}]}' \
    > test.out 2>&1
eval_tap $? 324 'AdminAddRolePermissionsV4' test.out

#- 325 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'XGIlD4Uo' \
    --body '["Zxwy1m6n", "utcmNpjy", "B1AN38Bz"]' \
    > test.out 2>&1
eval_tap $? 325 'AdminDeleteRolePermissionsV4' test.out

#- 326 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'r3nMYrHu' \
    --after 'o4qwHrmm' \
    --before 'rDYXcnvf' \
    --limit '94' \
    > test.out 2>&1
eval_tap $? 326 'AdminListAssignedUsersV4' test.out

#- 327 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'qeukXwAV' \
    --body '{"assignedNamespaces": ["KwLjFuoo", "IzsPBPiZ", "6qOCDAWX"], "namespace": "pWtJiJFJ", "userId": "j1S4aT5T"}' \
    > test.out 2>&1
eval_tap $? 327 'AdminAssignUserToRoleV4' test.out

#- 328 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'ATZonaeR' \
    --body '{"namespace": "1R1FOUtN", "userId": "hXC1MxJD"}' \
    > test.out 2>&1
eval_tap $? 328 'AdminRevokeUserFromRoleV4' test.out

#- 329 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["r4mgsrsS", "KpeNMX3k", "QVPCM1Hb"], "emailAddresses": ["aLKWWcGc", "riu4GauR", "WZadv0zd"], "isAdmin": false, "namespace": "XpmbudS9", "roleId": "7FaJocZK"}' \
    > test.out 2>&1
eval_tap $? 329 'AdminInviteUserNewV4' test.out

#- 330 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "g7T9DqJq", "country": "PtoMEEBp", "dateOfBirth": "4KVV7RZL", "displayName": "wNSCAQxe", "languageTag": "zf6aBkla", "userName": "daaC5H2K"}' \
    > test.out 2>&1
eval_tap $? 330 'AdminUpdateMyUserV4' test.out

#- 331 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 331 'AdminDisableMyAuthenticatorV4' test.out

#- 332 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'XgLUoZv9' \
    > test.out 2>&1
eval_tap $? 332 'AdminEnableMyAuthenticatorV4' test.out

#- 333 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 333 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 334 AdminGetMyBackupCodesV4
samples/cli/sample-apps Iam adminGetMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 334 'AdminGetMyBackupCodesV4' test.out

#- 335 AdminGenerateMyBackupCodesV4
samples/cli/sample-apps Iam adminGenerateMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 335 'AdminGenerateMyBackupCodesV4' test.out

#- 336 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 336 'AdminDisableMyBackupCodesV4' test.out

#- 337 AdminDownloadMyBackupCodesV4
samples/cli/sample-apps Iam adminDownloadMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 337 'AdminDownloadMyBackupCodesV4' test.out

#- 338 AdminEnableMyBackupCodesV4
samples/cli/sample-apps Iam adminEnableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 338 'AdminEnableMyBackupCodesV4' test.out

#- 339 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    > test.out 2>&1
eval_tap $? 339 'AdminSendMyMFAEmailCodeV4' test.out

#- 340 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    > test.out 2>&1
eval_tap $? 340 'AdminDisableMyEmailV4' test.out

#- 341 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'By6JIb7d' \
    > test.out 2>&1
eval_tap $? 341 'AdminEnableMyEmailV4' test.out

#- 342 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 342 'AdminGetMyEnabledFactorsV4' test.out

#- 343 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'IynfvqMr' \
    > test.out 2>&1
eval_tap $? 343 'AdminMakeFactorMyDefaultV4' test.out

#- 344 AdminInviteUserV4
eval_tap 0 344 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 345 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "3eL1KN8Q", "policyId": "QlCdULrH", "policyVersionId": "Vn3PhF1Y"}, {"isAccepted": true, "localizedPolicyVersionId": "rSIUTWtw", "policyId": "jFEEHeMX", "policyVersionId": "YGb4cURn"}, {"isAccepted": false, "localizedPolicyVersionId": "HiRZZklo", "policyId": "RokNcafg", "policyVersionId": "A4SBMPWp"}], "authType": "EMAILPASSWD", "country": "k8B8QiqA", "dateOfBirth": "a5akXLfz", "displayName": "z71Q4jRf", "emailAddress": "OKeU9vfU", "password": "Jh4ZGYmc", "passwordMD5Sum": "CzvVYOKD", "username": "sTPZihxV", "verified": false}' \
    > test.out 2>&1
eval_tap $? 345 'PublicCreateTestUserV4' test.out

#- 346 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "gVXM0wDW", "policyId": "e8ptWhic", "policyVersionId": "sbAMKb8Y"}, {"isAccepted": true, "localizedPolicyVersionId": "uNnEyBTc", "policyId": "SY3w2l2L", "policyVersionId": "5KeJfHOs"}, {"isAccepted": true, "localizedPolicyVersionId": "4n9cjCYQ", "policyId": "hGepftrJ", "policyVersionId": "oLgMwUAp"}], "authType": "EMAILPASSWD", "code": "OYovSJvQ", "country": "AeDrCLxi", "dateOfBirth": "BYOO3a2m", "displayName": "vIhUpXcd", "emailAddress": "Ns95mPEn", "password": "pLYaPlYU", "passwordMD5Sum": "2SkNr5f2", "reachMinimumAge": true, "username": "teOd3ndI"}' \
    > test.out 2>&1
eval_tap $? 346 'PublicCreateUserV4' test.out

#- 347 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'RgvWj8No' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "EoxyDRMx", "policyId": "w3ME97Nn", "policyVersionId": "GRga2Y5B"}, {"isAccepted": false, "localizedPolicyVersionId": "PuTcZXHW", "policyId": "2i1O60Ef", "policyVersionId": "pCbI2WKj"}, {"isAccepted": true, "localizedPolicyVersionId": "Br1CyVH6", "policyId": "CMLNOUZB", "policyVersionId": "VkEuNLZX"}], "authType": "EMAILPASSWD", "country": "JtfKPWLC", "dateOfBirth": "GSum1DJl", "displayName": "xCQvHk0X", "password": "xM5NTKwc", "reachMinimumAge": true, "username": "tOgkDLHR"}' \
    > test.out 2>&1
eval_tap $? 347 'CreateUserFromInvitationV4' test.out

#- 348 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "14mnin6z", "country": "htVpDZbl", "dateOfBirth": "p6WYcDdP", "displayName": "rWkVr6I7", "languageTag": "w8jjX3YB", "userName": "boAWyzRS"}' \
    > test.out 2>&1
eval_tap $? 348 'PublicUpdateUserV4' test.out

#- 349 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "OfEE41s6", "emailAddress": "MfXTZCPE"}' \
    > test.out 2>&1
eval_tap $? 349 'PublicUpdateUserEmailAddressV4' test.out

#- 350 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "EuH4CNCL", "country": "PB36cWXT", "dateOfBirth": "xuZmtxn7", "displayName": "tl6IG21G", "emailAddress": "JMpXTdJV", "password": "MfaEpwYM", "reachMinimumAge": true, "username": "BwT6YSke", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 350 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 351 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "BbtKIwEX", "password": "M4Pd0Y6X", "username": "VPmvWoLI"}' \
    > test.out 2>&1
eval_tap $? 351 'PublicUpgradeHeadlessAccountV4' test.out

#- 352 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 352 'PublicDisableMyAuthenticatorV4' test.out

#- 353 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'cpyCXVYf' \
    > test.out 2>&1
eval_tap $? 353 'PublicEnableMyAuthenticatorV4' test.out

#- 354 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 354 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 355 PublicGetMyBackupCodesV4
samples/cli/sample-apps Iam publicGetMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 355 'PublicGetMyBackupCodesV4' test.out

#- 356 PublicGenerateMyBackupCodesV4
samples/cli/sample-apps Iam publicGenerateMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 356 'PublicGenerateMyBackupCodesV4' test.out

#- 357 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 357 'PublicDisableMyBackupCodesV4' test.out

#- 358 PublicDownloadMyBackupCodesV4
samples/cli/sample-apps Iam publicDownloadMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 358 'PublicDownloadMyBackupCodesV4' test.out

#- 359 PublicEnableMyBackupCodesV4
samples/cli/sample-apps Iam publicEnableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 359 'PublicEnableMyBackupCodesV4' test.out

#- 360 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 360 'PublicRemoveTrustedDeviceV4' test.out

#- 361 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 361 'PublicSendMyMFAEmailCodeV4' test.out

#- 362 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 362 'PublicDisableMyEmailV4' test.out

#- 363 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'a21ydbHk' \
    > test.out 2>&1
eval_tap $? 363 'PublicEnableMyEmailV4' test.out

#- 364 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 364 'PublicGetMyEnabledFactorsV4' test.out

#- 365 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor '6uQyGJ2X' \
    > test.out 2>&1
eval_tap $? 365 'PublicMakeFactorMyDefaultV4' test.out

#- 366 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'a2bjIcZW' \
    > test.out 2>&1
eval_tap $? 366 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 367 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "ixG8OjSH", "emailAddress": "f0fBd1JR", "namespace": "ZOswXyfI", "namespaceDisplayName": "84x7a6tn"}' \
    > test.out 2>&1
eval_tap $? 367 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE