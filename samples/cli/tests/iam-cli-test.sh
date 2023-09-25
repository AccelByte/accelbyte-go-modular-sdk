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
echo "1..363"

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
    --body '[{"field": "VXUUY9cE", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["5wCvobSm", "QXiVVsx0", "S6QhcDBe"], "preferRegex": false, "regex": "8KNA82z4"}, "blockedWord": ["OZqte3j5", "Gx6PuVQe", "rnhfI4zJ"], "description": [{"language": "PyTuNqsO", "message": ["tFLh9DTe", "dt4P2tv2", "8f4N5z1x"]}, {"language": "SvkWX3mU", "message": ["iV15TQCD", "SikMoojf", "y8NjOOyo"]}, {"language": "lR4LeLhr", "message": ["rOPFcqha", "WC4geYVG", "d9w3zSoq"]}], "isCustomRegex": true, "letterCase": "l16PU8b6", "maxLength": 43, "maxRepeatingAlphaNum": 26, "maxRepeatingSpecialCharacter": 17, "minCharType": 97, "minLength": 4, "regex": "S52yLQk4", "specialCharacterLocation": "zczuiTkI", "specialCharacters": ["xazOy4Sy", "aZlle53z", "FUA5P75l"]}}, {"field": "DveS0bbY", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["9WoDHr9U", "9h0SRZsS", "yjblYJWk"], "preferRegex": false, "regex": "aJP8OuqK"}, "blockedWord": ["qovLWmGR", "4PrQbeQq", "AI5DWorr"], "description": [{"language": "qhp6AaG2", "message": ["Yko57903", "BofRlJq1", "31ugQp71"]}, {"language": "vzJqcVT4", "message": ["MLDYXH1d", "Hv0lsE7R", "V0D95p57"]}, {"language": "2KwjwraQ", "message": ["iqINfstG", "8IpGichC", "Bus4PxP4"]}], "isCustomRegex": false, "letterCase": "wHx5xFDK", "maxLength": 10, "maxRepeatingAlphaNum": 54, "maxRepeatingSpecialCharacter": 15, "minCharType": 78, "minLength": 53, "regex": "Q8WzGLgK", "specialCharacterLocation": "MmVgN3sK", "specialCharacters": ["aAEoTlG3", "I2Of7nBb", "QU84XRyA"]}}, {"field": "E8Yg43Lk", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["g7fKpcLY", "7cqmSGtH", "cdWw2NVN"], "preferRegex": false, "regex": "0uiolfTJ"}, "blockedWord": ["I44TpJK0", "7oqC2mmf", "k1HfZDCz"], "description": [{"language": "7hXuChpc", "message": ["wKldHNZJ", "tL975RZN", "3GqwfG2X"]}, {"language": "Wk047y8G", "message": ["tLN8GwCC", "zSFA2nJ1", "Nltd4vXB"]}, {"language": "HCXb6G4o", "message": ["RMoJsMsY", "A9kOvL9G", "jv1y4Dea"]}], "isCustomRegex": true, "letterCase": "OIu2tOIM", "maxLength": 93, "maxRepeatingAlphaNum": 34, "maxRepeatingSpecialCharacter": 14, "minCharType": 59, "minLength": 1, "regex": "1MewOk7x", "specialCharacterLocation": "6Hf2E6kU", "specialCharacters": ["ExbQuYTC", "DBBUOO0A", "kCMCAf3m"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'tRThTSKF' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'A1knEu5W' \
    --before 'oKgX8NBA' \
    --limit '44' \
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
    --body '{"ageRestriction": 17, "enable": false}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'AvIXehhM' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 7}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'e1WNtLQC' \
    --limit '61' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "7I0TqaE3", "comment": "zNQlTO8N", "endDate": "5fPNN9ol", "reason": "QicmOBj8", "skipNotif": false, "userIds": ["RoWxS4yI", "cpoVSsrK", "VanzkwLP"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "nMO7VB52", "userId": "IjEHW7gV"}, {"banId": "kKvh6dGo", "userId": "jNQgGOVZ"}, {"banId": "nWNqnOfU", "userId": "4hSyyn7Q"}]}' \
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
    --clientId 'diUb5b0n' \
    --clientName 'IIjypjZy' \
    --clientType 'FWUShorB' \
    --limit '68' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["UvpVgDie", "QBNK7iwJ", "S9r9DdJz"], "baseUri": "RMGCVCGw", "clientId": "8glt5ZFI", "clientName": "DnfXAdzf", "clientPermissions": [{"action": 70, "resource": "aQu3KCpo", "schedAction": 36, "schedCron": "BqFcSe7A", "schedRange": ["hIGJGubw", "X2ijQ0DZ", "V82lXuPt"]}, {"action": 8, "resource": "y52eP0wR", "schedAction": 62, "schedCron": "v19svFmK", "schedRange": ["J5TAodZI", "9v7aVM6e", "dwsYbJCN"]}, {"action": 65, "resource": "TugjIeEW", "schedAction": 45, "schedCron": "4qW72wyK", "schedRange": ["SUHpC2aS", "3QiyC0LO", "BTStLLSi"]}], "clientPlatform": "drQYXGws", "deletable": true, "description": "8AO6E1up", "namespace": "44i9HwMz", "oauthAccessTokenExpiration": 51, "oauthAccessTokenExpirationTimeUnit": "imzSwwUi", "oauthClientType": "XNTDWKmq", "oauthRefreshTokenExpiration": 8, "oauthRefreshTokenExpirationTimeUnit": "z3S7s2AA", "parentNamespace": "Jouc5C67", "redirectUri": "kAg7Y7SI", "scopes": ["Hysjqklv", "kSsImjQZ", "IaKCZYDs"], "secret": "8k9oMaV4", "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'VuQY5AlV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'gFVq3Hm7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'IhvamgRp' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["NzPSAfA8", "UA1CurIg", "qL0P3vPY"], "baseUri": "MRv3y0fb", "clientName": "08yQzl0h", "clientPermissions": [{"action": 94, "resource": "lYikiJM5", "schedAction": 91, "schedCron": "DuN6VCFs", "schedRange": ["WDdNM1vx", "MPdPOUup", "SH03HLZY"]}, {"action": 75, "resource": "JSxsiixx", "schedAction": 51, "schedCron": "H4xZqI7Z", "schedRange": ["A1xVfjag", "2vEwpXt8", "jLaVxRkN"]}, {"action": 75, "resource": "fCrtgANL", "schedAction": 29, "schedCron": "5xiEuKKO", "schedRange": ["iCvj2gah", "UXCxR3Ca", "5tKAK23y"]}], "clientPlatform": "G8QPq8pL", "deletable": true, "description": "Z730gRAf", "namespace": "KW8oVUzw", "oauthAccessTokenExpiration": 98, "oauthAccessTokenExpirationTimeUnit": "bkZsnWAI", "oauthRefreshTokenExpiration": 100, "oauthRefreshTokenExpirationTimeUnit": "K4cXHAGJ", "redirectUri": "k5FeYqvp", "scopes": ["sEYBROaV", "XM3DJSxr", "qRJ7yFCr"], "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'Xn5avz6f' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 98, "resource": "THYAgF5R"}, {"action": 1, "resource": "UiZjywAi"}, {"action": 87, "resource": "YSKm6vqx"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'DfLId6Ty' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 25, "resource": "DzXkpxf9"}, {"action": 44, "resource": "6MJGJeB4"}, {"action": 76, "resource": "TIb2YuFz"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '42' \
    --clientId 'nIJ14XdO' \
    --namespace $AB_NAMESPACE \
    --resource 'ON2JLbZW' \
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
    --body '{"blacklist": ["JmEO8ETx", "oGwpff1b", "yxpdKzFS"]}' \
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
    --limit '26' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 133 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 134 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '9AYdKUKP' \
    > test.out 2>&1
eval_tap $? 134 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 135 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '7L9PFz7D' \
    --body '{"ACSURL": "b6CDqnY6", "AWSCognitoRegion": "VdJZ6HQo", "AWSCognitoUserPool": "G5G5LWDj", "AllowedClients": ["ueob2OP5", "LpZZtmiR", "9RdjgI4N"], "AppId": "byha38Dr", "AuthorizationEndpoint": "3pTA8JRC", "ClientId": "pDjrKxUI", "Environment": "YafFWSCA", "FederationMetadataURL": "CGTLqg2C", "GenericOauthFlow": true, "IsActive": true, "Issuer": "Lol061Ei", "JWKSEndpoint": "zB0pTXxk", "KeyID": "AaykZTLl", "NetflixCertificates": {"encryptedPrivateKey": "K1707VGa", "encryptedPrivateKeyName": "9hMNYQCx", "publicCertificate": "eXjMelaK", "publicCertificateName": "CtzE2DUH", "rootCertificate": "hJtyLMyj", "rootCertificateName": "sywIMgl3"}, "OrganizationId": "JsNGaLgL", "PlatformName": "zXLSlVGq", "RedirectUri": "g0kS5YqM", "RegisteredDomains": [{"affectedClientIDs": ["TPkV02ZW", "8jn7LSbl", "AJuaLkHg"], "domain": "Aq2iXlIh", "namespaces": ["9bBBmun2", "UXwjzkJE", "rJCodWnR"], "roleId": "1MH4ceoL"}, {"affectedClientIDs": ["AqCQO0QY", "UcxH5p6p", "UIRn75gf"], "domain": "DlINALVx", "namespaces": ["FdhReLU5", "QNE9r2uJ", "Gu39osdt"], "roleId": "VbUyrC4c"}, {"affectedClientIDs": ["wMFXnsYD", "jNiJfXl9", "dJG9ttjT"], "domain": "9ahIpjHu", "namespaces": ["J8hOLaZN", "tqcm9dvZ", "9C41iGn5"], "roleId": "1Q6ksuT9"}], "Secret": "7ThVeno2", "TeamID": "5pSXMp5z", "TokenAuthenticationType": "ReN3x4Eb", "TokenClaimsMapping": {"qCNNSJkK": "DdDdGP3x", "I7wA8yv9": "zGvrd3Jc", "ZGeBYtkT": "BbHh9sUF"}, "TokenEndpoint": "M7EVITBb", "UserInfoEndpoint": "YBD7IFQf", "UserInfoHTTPMethod": "9HxHnfd6", "scopes": ["0ENC45dv", "5xLQ5z9Y", "PHBU5jEv"]}' \
    > test.out 2>&1
eval_tap $? 135 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 136 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'rxCXTyhH' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 137 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'K2sP1tqb' \
    --body '{"ACSURL": "rZhgmTjF", "AWSCognitoRegion": "P7EGLVbz", "AWSCognitoUserPool": "YcDLXDJ0", "AllowedClients": ["Lc2YBEUP", "RvqaIbcS", "xPxB4Dz8"], "AppId": "G8MLm4VF", "AuthorizationEndpoint": "x6CPwyyG", "ClientId": "3r9reTOB", "Environment": "JmnVQBZM", "FederationMetadataURL": "teGp2tgG", "GenericOauthFlow": true, "IsActive": true, "Issuer": "Z7oSReDu", "JWKSEndpoint": "mr0R8XbU", "KeyID": "kGjGi3WA", "NetflixCertificates": {"encryptedPrivateKey": "LcwYl6d1", "encryptedPrivateKeyName": "CpzwY5o7", "publicCertificate": "KvefDqYe", "publicCertificateName": "xRljEmSh", "rootCertificate": "wJjqLrYO", "rootCertificateName": "CYTvG40z"}, "OrganizationId": "V7zlnFnz", "PlatformName": "5uq0YFo9", "RedirectUri": "brOG3Kx1", "RegisteredDomains": [{"affectedClientIDs": ["QKi8RXPN", "OUfcIgq9", "Zu12VikT"], "domain": "0ntPtoOa", "namespaces": ["DrAWgmve", "d9dTdNbD", "MTkay6cZ"], "roleId": "9nGzEuGz"}, {"affectedClientIDs": ["2zm0asMq", "Idk40pOO", "5oW8kS2L"], "domain": "He83JdVg", "namespaces": ["eOj8Xefq", "csfsWHUP", "UnyfE2yu"], "roleId": "w4Utjjnm"}, {"affectedClientIDs": ["jVpaIQGJ", "INuP5pg7", "pqT5CKqk"], "domain": "NjNHedoI", "namespaces": ["6GgxeI5H", "AdrgXf6F", "BXYXC7gG"], "roleId": "9256fSgi"}], "Secret": "bZ8dSqqB", "TeamID": "ZQH7uM55", "TokenAuthenticationType": "Gfe5R1Bu", "TokenClaimsMapping": {"4aJoO5eY": "yBRJgiJ2", "fhsW9p8b": "84OugxlR", "omfWJ4e5": "rE0lSHj8"}, "TokenEndpoint": "OekYa5cR", "UserInfoEndpoint": "n48QLiMp", "UserInfoHTTPMethod": "SxxSys0R", "scopes": ["sy5L3M4y", "LYN6LXWI", "cmqaOT5T"]}' \
    > test.out 2>&1
eval_tap $? 137 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 138 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId '3gQW9tha' \
    --body '{"affectedClientIDs": ["ntecw3iD", "eMMgpDmp", "DGvJjOAx"], "assignedNamespaces": ["NkoSrYEn", "ElOkPdmM", "rxuH3sT3"], "domain": "TE9RFs7u", "roleId": "afhIncSY"}' \
    > test.out 2>&1
eval_tap $? 138 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 139 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'M2HqebX6' \
    --body '{"domain": "1ysUjkJL"}' \
    > test.out 2>&1
eval_tap $? 139 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 140 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'ppLUPVRV' \
    > test.out 2>&1
eval_tap $? 140 'RetrieveSSOLoginPlatformCredential' test.out

#- 141 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'PpzQ8Hmv' \
    --body '{"acsUrl": "VeLuozrv", "apiKey": "kNnn1I1k", "appId": "5ogGa8yz", "federationMetadataUrl": "jZeP2sRS", "isActive": false, "redirectUri": "v5bHkCTv", "secret": "NNGKe2IA", "ssoUrl": "p71ecuMt"}' \
    > test.out 2>&1
eval_tap $? 141 'AddSSOLoginPlatformCredential' test.out

#- 142 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'TIArjoXB' \
    > test.out 2>&1
eval_tap $? 142 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 143 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId '7Rp3OUyD' \
    --body '{"acsUrl": "t8AgLLc0", "apiKey": "FUTn3dwn", "appId": "rXfQNwft", "federationMetadataUrl": "QPiAQiVM", "isActive": true, "redirectUri": "aufKjfgA", "secret": "jSk0dYVs", "ssoUrl": "S1fIPeRt"}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateSSOPlatformCredential' test.out

#- 144 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'v4jW5vyD' \
    --rawPID 'true' \
    --body '{"platformUserIds": ["cWZmfBS0", "4KW7PvjX", "v7jTt0NQ"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 145 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'i7HyvVSe' \
    --platformUserId '8el4knwN' \
    > test.out 2>&1
eval_tap $? 145 'AdminGetUserByPlatformUserIDV3' test.out

#- 146 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'uNzQaKHn' \
    --after '89' \
    --before '52' \
    --limit '60' \
    > test.out 2>&1
eval_tap $? 146 'GetAdminUsersByRoleIdV3' test.out

#- 147 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'vlw5byzr' \
    > test.out 2>&1
eval_tap $? 147 'AdminGetUserByEmailAddressV3' test.out

#- 148 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'fOZaGCl7' \
    --body '{"bulkUserId": ["vwNwltJK", "7osyY9i7", "oqDHB6wM"]}' \
    > test.out 2>&1
eval_tap $? 148 'AdminGetBulkUserBanV3' test.out

#- 149 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["5eB7jI8f", "5UuNP8j7", "ob9gB6OE"]}' \
    > test.out 2>&1
eval_tap $? 149 'AdminListUserIDByUserIDsV3' test.out

#- 150 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["qEabp5ck", "zhpYZ5x1", "JU0TLI2q"]}' \
    > test.out 2>&1
eval_tap $? 150 'AdminBulkGetUsersPlatform' test.out

#- 151 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["6N7Gv7KS", "GcdcIyRm", "iF3NvxiD"], "isAdmin": true, "namespace": "rwxQqUby", "roles": ["yjtGpywT", "O3omzHkA", "89QoSSc8"]}' \
    > test.out 2>&1
eval_tap $? 151 'AdminInviteUserV3' test.out

#- 152 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '69' \
    --platformUserId 'yQq6jzmF' \
    --platformId 'oid4fdov' \
    > test.out 2>&1
eval_tap $? 152 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 153 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 153 'AdminListUsersV3' test.out

#- 154 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'esVoW0Bp' \
    --endDate 'Xxho1mYC' \
    --limit '50' \
    --offset '56' \
    --platformBy '4BF0toE7' \
    --platformId '8sePjKui' \
    --query 'MhzXaoBb' \
    --startDate 'vxOHEW25' \
    > test.out 2>&1
eval_tap $? 154 'AdminSearchUserV3' test.out

#- 155 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["EyM0lQjZ", "3i1Vsx8S", "bkdERJ0Q"]}' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetBulkUserByEmailAddressV3' test.out

#- 156 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'TSQaqUty' \
    > test.out 2>&1
eval_tap $? 156 'AdminGetUserByUserIdV3' test.out

#- 157 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'w4fpYiPO' \
    --body '{"avatarUrl": "ZauPap2M", "country": "zWmMX7Jz", "dateOfBirth": "QtMI9iEV", "displayName": "1vKjQ1Dl", "languageTag": "3mHDcdUg", "userName": "f8xXgx3o"}' \
    > test.out 2>&1
eval_tap $? 157 'AdminUpdateUserV3' test.out

#- 158 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'o0tkGmPk' \
    --activeOnly 'false' \
    --after 'AdGT8Fs5' \
    --before '0Q81HY5U' \
    --limit '11' \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserBanV3' test.out

#- 159 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hiXZaQuX' \
    --body '{"ban": "jbmpT20Q", "comment": "eSklJuj8", "endDate": "azqdmJUm", "reason": "AJXBY4G5", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 159 'AdminBanUserV3' test.out

#- 160 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'CgZ32MPB' \
    --namespace $AB_NAMESPACE \
    --userId 'TaWm80nO' \
    --body '{"enabled": false, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpdateUserBanV3' test.out

#- 161 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId '08EFKeGK' \
    --body '{"context": "9yhGsX52", "emailAddress": "wyRyDHB3", "languageTag": "N2T1b37C"}' \
    > test.out 2>&1
eval_tap $? 161 'AdminSendVerificationCodeV3' test.out

#- 162 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'gGDwoSDB' \
    --body '{"Code": "XJ9rmhKW", "ContactType": "BcgJsc2f", "LanguageTag": "hLXxRtQV", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 162 'AdminVerifyAccountV3' test.out

#- 163 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'YT89BT70' \
    > test.out 2>&1
eval_tap $? 163 'GetUserVerificationCode' test.out

#- 164 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'JJlecS2x' \
    > test.out 2>&1
eval_tap $? 164 'AdminGetUserDeletionStatusV3' test.out

#- 165 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'EH4waL7i' \
    --body '{"deletionDate": 29, "enabled": true}' \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateUserDeletionStatusV3' test.out

#- 166 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId '9HwVbCNg' \
    --body '{"code": "xS0a4asg", "country": "ieYHyfqK", "dateOfBirth": "m7QFjopE", "displayName": "TWKJOfvN", "emailAddress": "IjrvzFDI", "password": "LJN0hRnG", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 166 'AdminUpgradeHeadlessAccountV3' test.out

#- 167 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId '0FKtckma' \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserInformationV3' test.out

#- 168 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'W22v40BF' \
    --after '0.5363591948610019' \
    --before '0.6770410529363887' \
    --limit '42' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserLoginHistoriesV3' test.out

#- 169 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId '8k0jtkFo' \
    --body '{"languageTag": "buK0x4oH", "newPassword": "cR4ZALV0", "oldPassword": "eONU8YGB"}' \
    > test.out 2>&1
eval_tap $? 169 'AdminResetPasswordV3' test.out

#- 170 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'fmg8yzro' \
    --body '{"Permissions": [{"Action": 50, "Resource": "eSgMBJvn", "SchedAction": 54, "SchedCron": "O8Ovx77w", "SchedRange": ["vDKAafiW", "OYbdROmQ", "C75yr1NK"]}, {"Action": 68, "Resource": "95S6FX4o", "SchedAction": 8, "SchedCron": "FclP7ATA", "SchedRange": ["VSjJOoTn", "J0ET0r45", "KBZgPibe"]}, {"Action": 15, "Resource": "xh4lk2kD", "SchedAction": 78, "SchedCron": "zSU1vEzI", "SchedRange": ["9V2dkKTt", "A1hR6MK1", "JyR2hMYu"]}]}' \
    > test.out 2>&1
eval_tap $? 170 'AdminUpdateUserPermissionV3' test.out

#- 171 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jVVrX6s7' \
    --body '{"Permissions": [{"Action": 31, "Resource": "li85UEnD", "SchedAction": 2, "SchedCron": "JgI9vZPM", "SchedRange": ["Bg8ndcfZ", "ATrOrcSY", "oMqHFpFW"]}, {"Action": 23, "Resource": "nCi0ymdG", "SchedAction": 72, "SchedCron": "oNnirjm2", "SchedRange": ["v5m9gXDt", "sOayfqTv", "K5SSVZgD"]}, {"Action": 45, "Resource": "HWkC5S2x", "SchedAction": 8, "SchedCron": "z8mOO26U", "SchedRange": ["om2YEYN5", "QndpFFWN", "W2Lbv2Jf"]}]}' \
    > test.out 2>&1
eval_tap $? 171 'AdminAddUserPermissionsV3' test.out

#- 172 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'oqoY2DTf' \
    --body '[{"Action": 67, "Resource": "kIueyG7c"}, {"Action": 62, "Resource": "zOMribgi"}, {"Action": 17, "Resource": "oCYdacw8"}]' \
    > test.out 2>&1
eval_tap $? 172 'AdminDeleteUserPermissionBulkV3' test.out

#- 173 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '10' \
    --namespace $AB_NAMESPACE \
    --resource 'hMOuIeCL' \
    --userId 'UuubydlP' \
    > test.out 2>&1
eval_tap $? 173 'AdminDeleteUserPermissionV3' test.out

#- 174 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Pk8JGNqq' \
    --after 'm6smWyS7' \
    --before 'VusRUpQD' \
    --limit '11' \
    --platformId 'uUg6tHJx' \
    > test.out 2>&1
eval_tap $? 174 'AdminGetUserPlatformAccountsV3' test.out

#- 175 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'esfBd1Db' \
    > test.out 2>&1
eval_tap $? 175 'AdminGetListJusticePlatformAccounts' test.out

#- 176 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'qNXGP5rZ' \
    --userId 'upVAm6er' \
    > test.out 2>&1
eval_tap $? 176 'AdminGetUserMapping' test.out

#- 177 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace '7llmQadr' \
    --userId 'pZTZ4tlj' \
    > test.out 2>&1
eval_tap $? 177 'AdminCreateJusticeUser' test.out

#- 178 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId '0KiOZOpB' \
    --skipConflict 'false' \
    --body '{"platformId": "7QcJvYKA", "platformUserId": "WGnnB2LP"}' \
    > test.out 2>&1
eval_tap $? 178 'AdminLinkPlatformAccount' test.out

#- 179 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ZMAT2rRY' \
    --userId 'IaeDX2vf' \
    --body '{"platformNamespace": "GfafKjo0"}' \
    > test.out 2>&1
eval_tap $? 179 'AdminPlatformUnlinkV3' test.out

#- 180 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '6HhgeP0o' \
    --userId 'zC3RW7ps' \
    --ticket 'GglRlXE0' \
    > test.out 2>&1
eval_tap $? 180 'AdminPlatformLinkV3' test.out

#- 181 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'DFH2DlGO' \
    --userId 'rfrbGr8n' \
    --platformToken 'bXK2IXEM' \
    > test.out 2>&1
eval_tap $? 181 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 182 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'nnOkuqxm' \
    --userId 'cZ9ujDuM' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetUserSinglePlatformAccount' test.out

#- 183 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'iy4aM9zW' \
    --body '["OH41AJeV", "SOkbI9NQ", "pCupMIPN"]' \
    > test.out 2>&1
eval_tap $? 183 'AdminDeleteUserRolesV3' test.out

#- 184 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId '4YESdq2v' \
    --body '[{"namespace": "PntdEuDC", "roleId": "ZqNDta0j"}, {"namespace": "D6ZVrS13", "roleId": "RnsoLUQF"}, {"namespace": "ALTuvvc9", "roleId": "VunEPrkX"}]' \
    > test.out 2>&1
eval_tap $? 184 'AdminSaveUserRoleV3' test.out

#- 185 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'ztspN3DD' \
    --userId '18Kus8cF' \
    > test.out 2>&1
eval_tap $? 185 'AdminAddUserRoleV3' test.out

#- 186 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId '71xthSXW' \
    --userId 'TFWKGllt' \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteUserRoleV3' test.out

#- 187 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'S7E1KWNO' \
    --body '{"enabled": true, "reason": "CSkg2xQg"}' \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateUserStatusV3' test.out

#- 188 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'N3Oycbv0' \
    --body '{"emailAddress": "6eBECrNo", "password": "RO1RywNh"}' \
    > test.out 2>&1
eval_tap $? 188 'AdminTrustlyUpdateUserIdentity' test.out

#- 189 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Z36vO40N' \
    > test.out 2>&1
eval_tap $? 189 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 190 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'TrDrEGPS' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "KYkUqcPM"}' \
    > test.out 2>&1
eval_tap $? 190 'AdminUpdateClientSecretV3' test.out

#- 191 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'xz2o2dld' \
    --before 'DaNovlv2' \
    --isWildcard 'false' \
    --limit '27' \
    > test.out 2>&1
eval_tap $? 191 'AdminGetRolesV3' test.out

#- 192 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": true, "managers": [{"displayName": "6dXDPDSl", "namespace": "SVh3dMty", "userId": "WpbXcDsQ"}, {"displayName": "BXFqJJor", "namespace": "vs5X0rG0", "userId": "6QxpSuQ5"}, {"displayName": "kWFPuSHP", "namespace": "3b9QbKC0", "userId": "ekHzHsbw"}], "members": [{"displayName": "jkBRdvfY", "namespace": "dFVgGjIH", "userId": "NYqr4mUP"}, {"displayName": "dv8fbfAm", "namespace": "36UOtciD", "userId": "xDP8Dmax"}, {"displayName": "jY1pjkjA", "namespace": "7z5SBSdY", "userId": "wXlWtpL8"}], "permissions": [{"action": 54, "resource": "rJ5RwTdt", "schedAction": 98, "schedCron": "XsU7aMAO", "schedRange": ["Bx7YgkQP", "HSk0Vlhn", "rnvL2iQy"]}, {"action": 99, "resource": "PxOZMSbr", "schedAction": 65, "schedCron": "hT1DTRmH", "schedRange": ["gRRt5s0G", "1FS0F5KY", "vjFnzpIz"]}, {"action": 47, "resource": "PSCIL8ze", "schedAction": 8, "schedCron": "MJSJuwGx", "schedRange": ["xGfCdvyT", "yGGkEX95", "ln8vNHJt"]}], "roleName": "lmlKEDrI"}' \
    > test.out 2>&1
eval_tap $? 192 'AdminCreateRoleV3' test.out

#- 193 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'i79GIzpB' \
    > test.out 2>&1
eval_tap $? 193 'AdminGetRoleV3' test.out

#- 194 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId '6LibwQVI' \
    > test.out 2>&1
eval_tap $? 194 'AdminDeleteRoleV3' test.out

#- 195 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'qwUR4LUu' \
    --body '{"deletable": false, "isWildcard": true, "roleName": "jNLegyQI"}' \
    > test.out 2>&1
eval_tap $? 195 'AdminUpdateRoleV3' test.out

#- 196 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'GjafNsAF' \
    > test.out 2>&1
eval_tap $? 196 'AdminGetRoleAdminStatusV3' test.out

#- 197 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'IYFokHRy' \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateAdminRoleStatusV3' test.out

#- 198 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'FPqNMGSZ' \
    > test.out 2>&1
eval_tap $? 198 'AdminRemoveRoleAdminV3' test.out

#- 199 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'dcsVK15f' \
    --after 'xEGreBcb' \
    --before '54h608KM' \
    --limit '96' \
    > test.out 2>&1
eval_tap $? 199 'AdminGetRoleManagersV3' test.out

#- 200 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'aIcMFRFJ' \
    --body '{"managers": [{"displayName": "gWp8dHC0", "namespace": "p4Q7Cjgh", "userId": "gtT4ZENE"}, {"displayName": "T1TzndTF", "namespace": "LhpXwplP", "userId": "NveSiCbm"}, {"displayName": "UXDSrlN8", "namespace": "xbVCL7fZ", "userId": "gGmKmCxJ"}]}' \
    > test.out 2>&1
eval_tap $? 200 'AdminAddRoleManagersV3' test.out

#- 201 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'UWK43uaZ' \
    --body '{"managers": [{"displayName": "aZPReJHe", "namespace": "eOHNOOXg", "userId": "55kc4FF5"}, {"displayName": "rdUf0hQn", "namespace": "Tj7RUBKk", "userId": "auk9mTk9"}, {"displayName": "HmlMw7Xy", "namespace": "0nvGbFHF", "userId": "Qa28vOju"}]}' \
    > test.out 2>&1
eval_tap $? 201 'AdminRemoveRoleManagersV3' test.out

#- 202 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'f0TuGGYI' \
    --after 'vNkijDMy' \
    --before 'pe7psczn' \
    --limit '63' \
    > test.out 2>&1
eval_tap $? 202 'AdminGetRoleMembersV3' test.out

#- 203 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'VCTqV6sQ' \
    --body '{"members": [{"displayName": "jctxgGvR", "namespace": "7UbsCMnE", "userId": "ovJhHmXL"}, {"displayName": "EbUaG834", "namespace": "BZ5RbpgY", "userId": "YBh53N4U"}, {"displayName": "ZguuQrQ9", "namespace": "wus7KJVt", "userId": "4jzVsiuu"}]}' \
    > test.out 2>&1
eval_tap $? 203 'AdminAddRoleMembersV3' test.out

#- 204 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'If5gjkvd' \
    --body '{"members": [{"displayName": "qBOBZRrq", "namespace": "4IFawdqi", "userId": "pmCudhNg"}, {"displayName": "yIudzDE6", "namespace": "21Uqh9Xa", "userId": "8iMvEU5T"}, {"displayName": "4huSRfJH", "namespace": "MX3UAPyv", "userId": "lFyuQmSV"}]}' \
    > test.out 2>&1
eval_tap $? 204 'AdminRemoveRoleMembersV3' test.out

#- 205 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'Kd0VgZo0' \
    --body '{"permissions": [{"action": 2, "resource": "dlWIWPEp", "schedAction": 82, "schedCron": "EXSkF0NU", "schedRange": ["QJhwmukm", "XMmHXcl1", "95aZGFPj"]}, {"action": 14, "resource": "2JUj1r9m", "schedAction": 66, "schedCron": "ZwviBiEM", "schedRange": ["Dmy6JPKn", "arkGmL5c", "IvTM67tw"]}, {"action": 64, "resource": "0zpLFyfy", "schedAction": 17, "schedCron": "3z9gR9Cg", "schedRange": ["AxzBHrPX", "euncWif9", "YknHkcCZ"]}]}' \
    > test.out 2>&1
eval_tap $? 205 'AdminUpdateRolePermissionsV3' test.out

#- 206 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId '5M3Jyblg' \
    --body '{"permissions": [{"action": 66, "resource": "z49ULBzj", "schedAction": 2, "schedCron": "m9T2ZF0Y", "schedRange": ["T0TYGlTK", "ii4TA0F8", "fmJv60HG"]}, {"action": 19, "resource": "OLXVdChR", "schedAction": 86, "schedCron": "0o1rKBZj", "schedRange": ["UOCLHSuk", "ndZohaJi", "kd1AC33s"]}, {"action": 100, "resource": "tElsu20F", "schedAction": 24, "schedCron": "yzBS7QYg", "schedRange": ["k6IuoFF9", "XZ5fWzFe", "zl3Op4Rq"]}]}' \
    > test.out 2>&1
eval_tap $? 206 'AdminAddRolePermissionsV3' test.out

#- 207 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'fDvZXBoY' \
    --body '["xv4K7Jd2", "tnNDemzU", "QwZPfTLU"]' \
    > test.out 2>&1
eval_tap $? 207 'AdminDeleteRolePermissionsV3' test.out

#- 208 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '66' \
    --resource 'Zgs0S8w9' \
    --roleId 'a9vyVcxT' \
    > test.out 2>&1
eval_tap $? 208 'AdminDeleteRolePermissionV3' test.out

#- 209 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 209 'AdminGetMyUserV3' test.out

#- 210 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'VSHn0zyQ' \
    --extendExp 'false' \
    --redirectUri 'RYMNsdvj' \
    --password 'GDWO8CUu' \
    --requestId 'eUCqu5zn' \
    --userName 'UZFoHUvm' \
    > test.out 2>&1
eval_tap $? 210 'UserAuthenticationV3' test.out

#- 211 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'true' \
    --clientId '8pE5hCUd' \
    --linkingToken 'johY9CP2' \
    --password '5fqQPDFB' \
    --username 'TkKimZuK' \
    > test.out 2>&1
eval_tap $? 211 'AuthenticationWithPlatformLinkV3' test.out

#- 212 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData '4Yd76uBv' \
    --extendExp 'true' \
    --linkingToken 'c72wHkcx' \
    > test.out 2>&1
eval_tap $? 212 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 213 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'WxyBA78Q' \
    > test.out 2>&1
eval_tap $? 213 'RequestOneTimeLinkingCodeV3' test.out

#- 214 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'OJP49d4N' \
    > test.out 2>&1
eval_tap $? 214 'ValidateOneTimeLinkingCodeV3' test.out

#- 215 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'vDHhJ1tc' \
    --isTransient 'false' \
    --clientId 'KCrios50' \
    --oneTimeLinkCode 'fluSHCRd' \
    > test.out 2>&1
eval_tap $? 215 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 216 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 216 'GetCountryLocationV3' test.out

#- 217 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 217 'Logout' test.out

#- 218 RequestGameTokenCodeResponseV3
samples/cli/sample-apps Iam requestGameTokenCodeResponseV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'bMUcPKIq' \
    > test.out 2>&1
eval_tap $? 218 'RequestGameTokenCodeResponseV3' test.out

#- 219 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'wcm1m2KI' \
    --userId 'PuIGrtg1' \
    > test.out 2>&1
eval_tap $? 219 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 220 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'rOJG4neS' \
    --includeGameNamespace 'true' \
    > test.out 2>&1
eval_tap $? 220 'RevokeUserV3' test.out

#- 221 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge '6UMCIbeM' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'true' \
    --oneTimeLinkCode '3mmZaXOK' \
    --redirectUri 'rudzRSbg' \
    --scope '8fYUImRC' \
    --state 'Vapq5s1U' \
    --targetAuthPage 'VnJ1ubu1' \
    --useRedirectUriAsLoginUrlWhenLocked 'false' \
    --clientId '4Chen6WC' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 221 'AuthorizeV3' test.out

#- 222 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token '1ZKWaxsv' \
    > test.out 2>&1
eval_tap $? 222 'TokenIntrospectionV3' test.out

#- 223 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 223 'GetJWKSV3' test.out

#- 224 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId '0pTW6jk3' \
    --factor '2SESZKNi' \
    --mfaToken 'Pd69Ngw9' \
    > test.out 2>&1
eval_tap $? 224 'SendMFAAuthenticationCode' test.out

#- 225 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor '2AXCToIy' \
    --mfaToken 'NOR0ZCul' \
    > test.out 2>&1
eval_tap $? 225 'Change2faMethod' test.out

#- 226 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'HMtVmjQt' \
    --factor 'TEBNDzbq' \
    --mfaToken 'Ewm5iEPi' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 226 'Verify2faCode' test.out

#- 227 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'E6wrVreC' \
    --userId 'zdDYwTSz' \
    > test.out 2>&1
eval_tap $? 227 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 228 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'FQ2oBJoR' \
    --clientId 'b0UVyGSb' \
    --redirectUri 'wqZRcOwA' \
    --requestId 'FzEvmBUE' \
    > test.out 2>&1
eval_tap $? 228 'AuthCodeRequestV3' test.out

#- 229 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId '1NHq1iGA' \
    --additionalData 'gcMYMkpv' \
    --clientId 'NC3p4r8F' \
    --createHeadless 'true' \
    --deviceId 'ZvtKZRvk' \
    --macAddress '9Ac1TESv' \
    --platformToken 'XWl3Bprx' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 229 'PlatformTokenGrantV3' test.out

#- 230 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 230 'GetRevocationListV3' test.out

#- 231 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'kmdOn32z' \
    > test.out 2>&1
eval_tap $? 231 'TokenRevocationV3' test.out

#- 232 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData '0o9zu9se' \
    --clientId 'OH9jSIrI' \
    --code '3nIp0FEx' \
    --codeVerifier '1RoArO68' \
    --extendExp 'true' \
    --password 'iramhtji' \
    --redirectUri '1GJDQ8GZ' \
    --refreshToken 'uYYPRflJ' \
    --username 'nV2j0yaa' \
    --grantType 'password' \
    > test.out 2>&1
eval_tap $? 232 'TokenGrantV3' test.out

#- 233 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'U0nwSt8I' \
    > test.out 2>&1
eval_tap $? 233 'VerifyTokenV3' test.out

#- 234 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'QNDzgSnK' \
    --code 'wR2GKxYw' \
    --error 'ErnOulh5' \
    --openidAssocHandle 'XAnOYS88' \
    --openidClaimedId 'Xtf04pqQ' \
    --openidIdentity 'WBL2Dk21' \
    --openidMode 'RcrCmToc' \
    --openidNs 'AL42uXzZ' \
    --openidOpEndpoint 'NLKPjTN9' \
    --openidResponseNonce 'NiQCBCeZ' \
    --openidReturnTo '3mQzDJ2S' \
    --openidSig 'BIXwj1RB' \
    --openidSigned 'PxSctXCp' \
    --state 'O2BOp4dt' \
    > test.out 2>&1
eval_tap $? 234 'PlatformAuthenticationV3' test.out

#- 235 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'Y2JphXe5' \
    --platformToken '0GzH7e8Q' \
    > test.out 2>&1
eval_tap $? 235 'PlatformTokenRefreshV3' test.out

#- 236 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'w2SJParu' \
    > test.out 2>&1
eval_tap $? 236 'PublicGetInputValidations' test.out

#- 237 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'mAxLbeES' \
    > test.out 2>&1
eval_tap $? 237 'PublicGetInputValidationByField' test.out

#- 238 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'RfHr9WRS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 238 'PublicGetCountryAgeRestrictionV3' test.out

#- 239 PublicGetCountryListV3
samples/cli/sample-apps Iam publicGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 239 'PublicGetCountryListV3' test.out

#- 240 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 240 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 241 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'ONyGpjEs' \
    > test.out 2>&1
eval_tap $? 241 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 242 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'WX7CVBAc' \
    --rawPID 'false' \
    --body '{"platformUserIds": ["QSbPxrdg", "nxd6YSP4", "9fuA1GTB"]}' \
    > test.out 2>&1
eval_tap $? 242 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 243 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'pHKCf5Mu' \
    --platformUserId 'prlAsmjB' \
    > test.out 2>&1
eval_tap $? 243 'PublicGetUserByPlatformUserIDV3' test.out

#- 244 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'RvRNv2ub' \
    > test.out 2>&1
eval_tap $? 244 'PublicGetAsyncStatus' test.out

#- 245 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'BoE4Ufmc' \
    --limit '42' \
    --offset '85' \
    --query 'JTdsyAzO' \
    > test.out 2>&1
eval_tap $? 245 'PublicSearchUserV3' test.out

#- 246 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "aZmsY40F", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "POgSo1Jk", "policyId": "ZZCodgeA", "policyVersionId": "Dkq5SwV3"}, {"isAccepted": true, "localizedPolicyVersionId": "3TWLA05D", "policyId": "yQAvPsrv", "policyVersionId": "omJf6LSn"}, {"isAccepted": true, "localizedPolicyVersionId": "APGvJrie", "policyId": "hzmF16V5", "policyVersionId": "MuCMx48S"}], "authType": "hbs08i2x", "code": "WJLey8ci", "country": "AOLlKwdS", "dateOfBirth": "P0prnQKu", "displayName": "wVv5MDCO", "emailAddress": "OETxvIVj", "password": "uiboaCRn", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 246 'PublicCreateUserV3' test.out

#- 247 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'ynJaqcZA' \
    --query '4BZnSdZR' \
    > test.out 2>&1
eval_tap $? 247 'CheckUserAvailability' test.out

#- 248 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["ogBQO7Y1", "M0MU0PUD", "eYhkpvtf"]}' \
    > test.out 2>&1
eval_tap $? 248 'PublicBulkGetUsers' test.out

#- 249 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "4cnPn8zL", "languageTag": "mFgolRN7"}' \
    > test.out 2>&1
eval_tap $? 249 'PublicSendRegistrationCode' test.out

#- 250 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "fxPlzPhN", "emailAddress": "PufSXJfS"}' \
    > test.out 2>&1
eval_tap $? 250 'PublicVerifyRegistrationCode' test.out

#- 251 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "rKCMZ237", "languageTag": "XaWmNtR9"}' \
    > test.out 2>&1
eval_tap $? 251 'PublicForgotPasswordV3' test.out

#- 252 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 's1tRcHjt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 252 'GetAdminInvitationV3' test.out

#- 253 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'dhuJxiTo' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "8WpXiqJV", "policyId": "G0KT0QYn", "policyVersionId": "e3lxvIQJ"}, {"isAccepted": true, "localizedPolicyVersionId": "EmYrvdxR", "policyId": "sVZ33PWQ", "policyVersionId": "8jyUEYDw"}, {"isAccepted": false, "localizedPolicyVersionId": "hllIPQtM", "policyId": "JWOiYGtg", "policyVersionId": "Nru1BUf7"}], "authType": "EMAILPASSWD", "country": "0Wmss6e7", "dateOfBirth": "JVzcmMuN", "displayName": "KHeSqN6M", "password": "xpMIloaT", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 253 'CreateUserFromInvitationV3' test.out

#- 254 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "B3U0SZRi", "country": "U6c2pYu0", "dateOfBirth": "DznEvkjM", "displayName": "EVrXt5Yv", "languageTag": "bpStkpSE", "userName": "VA5fp3KY"}' \
    > test.out 2>&1
eval_tap $? 254 'UpdateUserV3' test.out

#- 255 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "kmfnLey2", "country": "ueaM9ycE", "dateOfBirth": "Ejv3U9rb", "displayName": "W8Ybnr1d", "languageTag": "ZVjayfYY", "userName": "3fworN7o"}' \
    > test.out 2>&1
eval_tap $? 255 'PublicPartialUpdateUserV3' test.out

#- 256 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "tt58weYc", "emailAddress": "NaRHz0UD", "languageTag": "jwa8SQlA"}' \
    > test.out 2>&1
eval_tap $? 256 'PublicSendVerificationCodeV3' test.out

#- 257 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "m5JdMC5u", "contactType": "aCTxCqNT", "languageTag": "1BMEc7JW", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 257 'PublicUserVerificationV3' test.out

#- 258 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "LFfeXPFA", "country": "jUo9mkix", "dateOfBirth": "6TMxwdd4", "displayName": "zoVnkqLg", "emailAddress": "D38k1mtX", "password": "DRECBbYx", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 258 'PublicUpgradeHeadlessAccountV3' test.out

#- 259 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'true' \
    --body '{"emailAddress": "OnjbKlKg", "password": "kM4PChZy"}' \
    > test.out 2>&1
eval_tap $? 259 'PublicVerifyHeadlessAccountV3' test.out

#- 260 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "B9VTCue6", "newPassword": "mk2pJhNc", "oldPassword": "V8rt8IE8"}' \
    > test.out 2>&1
eval_tap $? 260 'PublicUpdatePasswordV3' test.out

#- 261 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'vktam1Xc' \
    > test.out 2>&1
eval_tap $? 261 'PublicCreateJusticeUser' test.out

#- 262 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'WaWCRrZD' \
    --redirectUri 'DeEQt8tA' \
    --ticket 'Z4Y68SfV' \
    > test.out 2>&1
eval_tap $? 262 'PublicPlatformLinkV3' test.out

#- 263 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'DDSD5ttC' \
    --body '{"platformNamespace": "OWHwzxPH"}' \
    > test.out 2>&1
eval_tap $? 263 'PublicPlatformUnlinkV3' test.out

#- 264 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'zFGjeVT7' \
    > test.out 2>&1
eval_tap $? 264 'PublicPlatformUnlinkAllV3' test.out

#- 265 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '3SjMUO2S' \
    --ticket 'iOAbRpAH' \
    > test.out 2>&1
eval_tap $? 265 'PublicForcePlatformLinkV3' test.out

#- 266 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'dU4QhW1v' \
    --clientId 'BXwNaApF' \
    --redirectUri 'hSRXUUXW' \
    > test.out 2>&1
eval_tap $? 266 'PublicWebLinkPlatform' test.out

#- 267 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'HMwjB0g4' \
    --code 'w6PMc4Pa' \
    --state 'jKDbZulg' \
    > test.out 2>&1
eval_tap $? 267 'PublicWebLinkPlatformEstablish' test.out

#- 268 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'rJul4NFK' \
    --code 'FH3xUegQ' \
    --state 'uYRVHX0X' \
    > test.out 2>&1
eval_tap $? 268 'PublicProcessWebLinkPlatformV3' test.out

#- 269 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "q8tmRvJ7", "emailAddress": "i70Lngie", "newPassword": "hQpod6RS"}' \
    > test.out 2>&1
eval_tap $? 269 'ResetPasswordV3' test.out

#- 270 PublicGetUserByUserIdV3
eval_tap 0 270 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 271 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'DgMFJuBI' \
    --activeOnly 'true' \
    --after 'OvmbSJEQ' \
    --before 'EbcFlMmc' \
    --limit '44' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetUserBanHistoryV3' test.out

#- 272 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ALWpKonF' \
    > test.out 2>&1
eval_tap $? 272 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 273 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'c3Mpwuki' \
    > test.out 2>&1
eval_tap $? 273 'PublicGetUserInformationV3' test.out

#- 274 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ybayBkHp' \
    --after '0.5841680537124474' \
    --before '0.8727267930775069' \
    --limit '86' \
    > test.out 2>&1
eval_tap $? 274 'PublicGetUserLoginHistoriesV3' test.out

#- 275 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LeSVKZ8c' \
    --after 'AxW2oqvM' \
    --before 'yOR6BjPH' \
    --limit '90' \
    --platformId 'Y3Q5lhiv' \
    > test.out 2>&1
eval_tap $? 275 'PublicGetUserPlatformAccountsV3' test.out

#- 276 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'KK48pUoc' \
    > test.out 2>&1
eval_tap $? 276 'PublicListJusticePlatformAccountsV3' test.out

#- 277 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'ajiEDH97' \
    --body '{"platformId": "kGREyZ9O", "platformUserId": "aBfMwVlI"}' \
    > test.out 2>&1
eval_tap $? 277 'PublicLinkPlatformAccount' test.out

#- 278 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'AMpPKJeO' \
    --body '{"chosenNamespaces": ["5exlGnIU", "utcZp0Te", "L26qf9pK"], "requestId": "JBnHKgGm"}' \
    > test.out 2>&1
eval_tap $? 278 'PublicForceLinkPlatformWithProgression' test.out

#- 279 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'nG2H6F5O' \
    > test.out 2>&1
eval_tap $? 279 'PublicGetPublisherUserV3' test.out

#- 280 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'nLfTYhNz' \
    --password 'elcCj8DC' \
    > test.out 2>&1
eval_tap $? 280 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 281 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'b4cJSpXN' \
    --before '8REmZsd7' \
    --isWildcard 'true' \
    --limit '44' \
    > test.out 2>&1
eval_tap $? 281 'PublicGetRolesV3' test.out

#- 282 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'Nulnqznm' \
    > test.out 2>&1
eval_tap $? 282 'PublicGetRoleV3' test.out

#- 283 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 283 'PublicGetMyUserV3' test.out

#- 284 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'JnWkgBvh' \
    > test.out 2>&1
eval_tap $? 284 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 285 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["JMSDSqp5", "MDIulsNr", "1zITSsYy"], "oneTimeLinkCode": "x7jlXFOS"}' \
    > test.out 2>&1
eval_tap $? 285 'LinkHeadlessAccountToMyAccountV3' test.out

#- 286 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "4oVZWDg6"}' \
    > test.out 2>&1
eval_tap $? 286 'PublicSendVerificationLinkV3' test.out

#- 287 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'sB6FXcZE' \
    > test.out 2>&1
eval_tap $? 287 'PublicVerifyUserByLinkV3' test.out

#- 288 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId '2sTuq1p5' \
    --code 'Pp3tXeBu' \
    --error 'm6eBhCs2' \
    --state 'etQTUc8V' \
    > test.out 2>&1
eval_tap $? 288 'PlatformAuthenticateSAMLV3Handler' test.out

#- 289 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId '72adSGLp' \
    --payload '60xU3mqq' \
    > test.out 2>&1
eval_tap $? 289 'LoginSSOClient' test.out

#- 290 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'WF4WUV4v' \
    > test.out 2>&1
eval_tap $? 290 'LogoutSSOClient' test.out

#- 291 RequestGameTokenResponseV3
samples/cli/sample-apps Iam requestGameTokenResponseV3 \
    --additionalData '5wgMUwZZ' \
    --code 'FDtF6QA7' \
    > test.out 2>&1
eval_tap $? 291 'RequestGameTokenResponseV3' test.out

#- 292 PlatformTokenRefreshV3Deprecate
eval_tap 0 292 'PlatformTokenRefreshV3Deprecate # SKIP deprecated' test.out

#- 293 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId '7kyHRDF9' \
    > test.out 2>&1
eval_tap $? 293 'AdminGetDevicesByUserV4' test.out

#- 294 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'Swi0Kw8q' \
    --endDate 'dPIAKGno' \
    --limit '96' \
    --offset '6' \
    --startDate 'DgrdHW3a' \
    > test.out 2>&1
eval_tap $? 294 'AdminGetBannedDevicesV4' test.out

#- 295 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'MJiv9Qwh' \
    > test.out 2>&1
eval_tap $? 295 'AdminGetUserDeviceBansV4' test.out

#- 296 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "IKdpLzar", "deviceId": "Hok1Uoot", "deviceType": "i3y5ufXb", "enabled": true, "endDate": "wM5PBfIG", "ext": {"gqBfDHtQ": {}, "Nt1sG157": {}, "OLSYZlxs": {}}, "reason": "dNswztvB"}' \
    > test.out 2>&1
eval_tap $? 296 'AdminBanDeviceV4' test.out

#- 297 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'XstVqiy8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 297 'AdminGetDeviceBanV4' test.out

#- 298 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'gsDuOjd4' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateDeviceBanV4' test.out

#- 299 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'mIZ3Uvar' \
    --startDate 'Qp91j0lv' \
    --deviceType 'd06hiVrO' \
    > test.out 2>&1
eval_tap $? 299 'AdminGenerateReportV4' test.out

#- 300 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 300 'AdminGetDeviceTypesV4' test.out

#- 301 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'E7B2OZQZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 301 'AdminGetDeviceBansV4' test.out

#- 302 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'HIHsNbOM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 302 'AdminDecryptDeviceV4' test.out

#- 303 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'FMuSJHuo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 303 'AdminUnbanDeviceV4' test.out

#- 304 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId '3ntbOnov' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 304 'AdminGetUsersByDeviceV4' test.out

#- 305 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 76}' \
    > test.out 2>&1
eval_tap $? 305 'AdminCreateTestUsersV4' test.out

#- 306 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["6MDbA9Ad", "B9xLhe5D", "UrdkHmli"]}' \
    > test.out 2>&1
eval_tap $? 306 'AdminBulkCheckValidUserIDV4' test.out

#- 307 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'OuTkJTqG' \
    --body '{"avatarUrl": "RaRa9hjm", "country": "7fSd5fnW", "dateOfBirth": "fZbuOM1u", "displayName": "UAJXVSyY", "languageTag": "CGxoNQiX", "userName": "t7MXWzZ1"}' \
    > test.out 2>&1
eval_tap $? 307 'AdminUpdateUserV4' test.out

#- 308 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'VTNOkU0e' \
    --body '{"code": "nXJYV5Lo", "emailAddress": "ox2kBFSa"}' \
    > test.out 2>&1
eval_tap $? 308 'AdminUpdateUserEmailAddressV4' test.out

#- 309 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'bf1BipqT' \
    > test.out 2>&1
eval_tap $? 309 'AdminDisableUserMFAV4' test.out

#- 310 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'INs3TVTZ' \
    > test.out 2>&1
eval_tap $? 310 'AdminListUserRolesV4' test.out

#- 311 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'YqxEUNGO' \
    --body '{"assignedNamespaces": ["pxGxbaQE", "DSBXU7DN", "OjOkxbaZ"], "roleId": "9JwimDRp"}' \
    > test.out 2>&1
eval_tap $? 311 'AdminUpdateUserRoleV4' test.out

#- 312 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'yPawix0H' \
    --body '{"assignedNamespaces": ["ItSwm6eq", "WAK4fu8J", "Rac715cz"], "roleId": "tnoxw7hw"}' \
    > test.out 2>&1
eval_tap $? 312 'AdminAddUserRoleV4' test.out

#- 313 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'rsoXm4AJ' \
    --body '{"assignedNamespaces": ["WQvtpbrV", "VTHQE6uL", "cZKFoqK9"], "roleId": "wZhVSkln"}' \
    > test.out 2>&1
eval_tap $? 313 'AdminRemoveUserRoleV4' test.out

#- 314 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'false' \
    --limit '4' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 314 'AdminGetRolesV4' test.out

#- 315 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "5dPDFF9X"}' \
    > test.out 2>&1
eval_tap $? 315 'AdminCreateRoleV4' test.out

#- 316 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'C3yxjoNr' \
    > test.out 2>&1
eval_tap $? 316 'AdminGetRoleV4' test.out

#- 317 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'NQ2TGz9U' \
    > test.out 2>&1
eval_tap $? 317 'AdminDeleteRoleV4' test.out

#- 318 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'qzLiYpPY' \
    --body '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "MzIkfBpo"}' \
    > test.out 2>&1
eval_tap $? 318 'AdminUpdateRoleV4' test.out

#- 319 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'zCgQZMUr' \
    --body '{"permissions": [{"action": 6, "resource": "lo75WrcL", "schedAction": 85, "schedCron": "66jVmJar", "schedRange": ["vKJDvXXB", "yI25uA0Y", "TjlsJ7bi"]}, {"action": 70, "resource": "FmUGT547", "schedAction": 46, "schedCron": "e1xLMxkq", "schedRange": ["buVqFURT", "5ZKhAIAH", "2N0WbjkV"]}, {"action": 62, "resource": "qCGevbJF", "schedAction": 90, "schedCron": "l9QTU0xG", "schedRange": ["DUPHFGOu", "rCJTvKjh", "aaumVPSS"]}]}' \
    > test.out 2>&1
eval_tap $? 319 'AdminUpdateRolePermissionsV4' test.out

#- 320 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'nh2lQ3PO' \
    --body '{"permissions": [{"action": 73, "resource": "ZthW4jVF", "schedAction": 97, "schedCron": "d1crjvP7", "schedRange": ["Rnz39UdG", "4vzU8XgD", "fbEFPw9I"]}, {"action": 54, "resource": "FFfSTHGR", "schedAction": 56, "schedCron": "OIf0gV06", "schedRange": ["DA9UnZkM", "LUvx4X3f", "uyMIpUhw"]}, {"action": 85, "resource": "DDfDaybB", "schedAction": 73, "schedCron": "6q0xMCYR", "schedRange": ["npbYmcDi", "fHkspjhx", "6N1HeGe6"]}]}' \
    > test.out 2>&1
eval_tap $? 320 'AdminAddRolePermissionsV4' test.out

#- 321 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'KcVCe5Rg' \
    --body '["99WBRsxQ", "6kNlUlqc", "VvKI2HsY"]' \
    > test.out 2>&1
eval_tap $? 321 'AdminDeleteRolePermissionsV4' test.out

#- 322 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId '6TlihJHE' \
    --after 'J5cWVusv' \
    --before 'JpV1NQGU' \
    --limit '74' \
    > test.out 2>&1
eval_tap $? 322 'AdminListAssignedUsersV4' test.out

#- 323 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId '78JW1UFd' \
    --body '{"assignedNamespaces": ["9BQinUP8", "UFSd5dN3", "DFWx2tfH"], "namespace": "0Akkesem", "userId": "gKgR2xr2"}' \
    > test.out 2>&1
eval_tap $? 323 'AdminAssignUserToRoleV4' test.out

#- 324 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId '6UGRLlni' \
    --body '{"namespace": "TFwyAt8W", "userId": "rJEaZedm"}' \
    > test.out 2>&1
eval_tap $? 324 'AdminRevokeUserFromRoleV4' test.out

#- 325 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["qwRvokCr", "T9E9ASAZ", "NZiwYCVe"], "emailAddresses": ["Ek4rZ8nD", "JGnQaZy3", "wmPF2LyN"], "isAdmin": false, "namespace": "wUDjRW6k", "roleId": "jD24jxxy"}' \
    > test.out 2>&1
eval_tap $? 325 'AdminInviteUserNewV4' test.out

#- 326 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "hNeCny8U", "country": "VcmI9FCY", "dateOfBirth": "fZlfwlQL", "displayName": "igV0qO53", "languageTag": "a8NtJ1Hg", "userName": "VvddnZ7J"}' \
    > test.out 2>&1
eval_tap $? 326 'AdminUpdateMyUserV4' test.out

#- 327 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 327 'AdminDisableMyAuthenticatorV4' test.out

#- 328 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'Pnx5ao43' \
    > test.out 2>&1
eval_tap $? 328 'AdminEnableMyAuthenticatorV4' test.out

#- 329 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 329 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 330 AdminGetMyBackupCodesV4
samples/cli/sample-apps Iam adminGetMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 330 'AdminGetMyBackupCodesV4' test.out

#- 331 AdminGenerateMyBackupCodesV4
samples/cli/sample-apps Iam adminGenerateMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 331 'AdminGenerateMyBackupCodesV4' test.out

#- 332 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 332 'AdminDisableMyBackupCodesV4' test.out

#- 333 AdminDownloadMyBackupCodesV4
samples/cli/sample-apps Iam adminDownloadMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 333 'AdminDownloadMyBackupCodesV4' test.out

#- 334 AdminEnableMyBackupCodesV4
samples/cli/sample-apps Iam adminEnableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 334 'AdminEnableMyBackupCodesV4' test.out

#- 335 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    > test.out 2>&1
eval_tap $? 335 'AdminSendMyMFAEmailCodeV4' test.out

#- 336 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    > test.out 2>&1
eval_tap $? 336 'AdminDisableMyEmailV4' test.out

#- 337 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code '7Rm20x21' \
    > test.out 2>&1
eval_tap $? 337 'AdminEnableMyEmailV4' test.out

#- 338 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 338 'AdminGetMyEnabledFactorsV4' test.out

#- 339 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'qTxxYf3Z' \
    > test.out 2>&1
eval_tap $? 339 'AdminMakeFactorMyDefaultV4' test.out

#- 340 AdminInviteUserV4
eval_tap 0 340 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 341 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "3iTZD6av", "policyId": "WTKmKjCy", "policyVersionId": "6UwAFlFx"}, {"isAccepted": false, "localizedPolicyVersionId": "BGmtRAkB", "policyId": "j9tkYq9b", "policyVersionId": "xrJkbBOW"}, {"isAccepted": false, "localizedPolicyVersionId": "IgZHXuHP", "policyId": "acCzGx7w", "policyVersionId": "oLoaTOQp"}], "authType": "EMAILPASSWD", "country": "2qm3DtiY", "dateOfBirth": "yYqR7Jbs", "displayName": "Xc1hKpfH", "emailAddress": "5rvLlUYA", "password": "FBbeB26L", "passwordMD5Sum": "T8yL9jGw", "username": "kduaTRRZ", "verified": false}' \
    > test.out 2>&1
eval_tap $? 341 'PublicCreateTestUserV4' test.out

#- 342 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "RdV0bFkc", "policyId": "QEK9YpkU", "policyVersionId": "Rup9doYZ"}, {"isAccepted": false, "localizedPolicyVersionId": "KSf4hWzh", "policyId": "hSSJE3XK", "policyVersionId": "3N0HEoST"}, {"isAccepted": false, "localizedPolicyVersionId": "YhN7RbQC", "policyId": "Dou0AnxJ", "policyVersionId": "wtJ09gFk"}], "authType": "EMAILPASSWD", "code": "6WCVwvUw", "country": "iEBkwfq0", "dateOfBirth": "kkSlAJrO", "displayName": "mJnKlRom", "emailAddress": "0klINMyD", "password": "N1Z79eUQ", "passwordMD5Sum": "FgdAZ2WW", "reachMinimumAge": false, "username": "Pi3GhyJ3"}' \
    > test.out 2>&1
eval_tap $? 342 'PublicCreateUserV4' test.out

#- 343 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'vdMa48lK' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "WRe3Sddo", "policyId": "VAMDum5l", "policyVersionId": "duku3u2s"}, {"isAccepted": false, "localizedPolicyVersionId": "G4F6A41D", "policyId": "NBAJE7QH", "policyVersionId": "bvJt3zPg"}, {"isAccepted": true, "localizedPolicyVersionId": "mvTAbpPh", "policyId": "GkZ8dJ26", "policyVersionId": "xWHWCaJu"}], "authType": "EMAILPASSWD", "country": "dTPvWu4s", "dateOfBirth": "XZOtKvD6", "displayName": "qjHCFuqC", "password": "1Yq4eAl7", "reachMinimumAge": false, "username": "ozOBYFE5"}' \
    > test.out 2>&1
eval_tap $? 343 'CreateUserFromInvitationV4' test.out

#- 344 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "OZ5oQqgB", "country": "phDmHyZz", "dateOfBirth": "LkuFzp8s", "displayName": "vtN4gxu4", "languageTag": "eu9h2J9H", "userName": "T26JBeQF"}' \
    > test.out 2>&1
eval_tap $? 344 'PublicUpdateUserV4' test.out

#- 345 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "EarkRZw5", "emailAddress": "lV04rt0k"}' \
    > test.out 2>&1
eval_tap $? 345 'PublicUpdateUserEmailAddressV4' test.out

#- 346 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "IRuHLhqv", "country": "3MUulKVB", "dateOfBirth": "EcK1zr2y", "displayName": "vxxksjSf", "emailAddress": "PfexBCw5", "password": "4aQxukZc", "reachMinimumAge": true, "username": "ju1et9al", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 346 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 347 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "lh4vTzQX", "password": "lUxIM9eW", "username": "SRntyMhC"}' \
    > test.out 2>&1
eval_tap $? 347 'PublicUpgradeHeadlessAccountV4' test.out

#- 348 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 348 'PublicDisableMyAuthenticatorV4' test.out

#- 349 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code '8gIZWVo3' \
    > test.out 2>&1
eval_tap $? 349 'PublicEnableMyAuthenticatorV4' test.out

#- 350 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 350 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 351 PublicGetMyBackupCodesV4
samples/cli/sample-apps Iam publicGetMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 351 'PublicGetMyBackupCodesV4' test.out

#- 352 PublicGenerateMyBackupCodesV4
samples/cli/sample-apps Iam publicGenerateMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 352 'PublicGenerateMyBackupCodesV4' test.out

#- 353 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 353 'PublicDisableMyBackupCodesV4' test.out

#- 354 PublicDownloadMyBackupCodesV4
samples/cli/sample-apps Iam publicDownloadMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 354 'PublicDownloadMyBackupCodesV4' test.out

#- 355 PublicEnableMyBackupCodesV4
samples/cli/sample-apps Iam publicEnableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 355 'PublicEnableMyBackupCodesV4' test.out

#- 356 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 356 'PublicRemoveTrustedDeviceV4' test.out

#- 357 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 357 'PublicSendMyMFAEmailCodeV4' test.out

#- 358 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 358 'PublicDisableMyEmailV4' test.out

#- 359 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'K8oIuXv7' \
    > test.out 2>&1
eval_tap $? 359 'PublicEnableMyEmailV4' test.out

#- 360 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 360 'PublicGetMyEnabledFactorsV4' test.out

#- 361 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'SROi2WUc' \
    > test.out 2>&1
eval_tap $? 361 'PublicMakeFactorMyDefaultV4' test.out

#- 362 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ROU3AMsd' \
    > test.out 2>&1
eval_tap $? 362 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 363 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"emailAddress": "TZ9bsQ3P", "namespace": "3YJcEmhP", "namespaceDisplayName": "WvdKDRhs"}' \
    > test.out 2>&1
eval_tap $? 363 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE