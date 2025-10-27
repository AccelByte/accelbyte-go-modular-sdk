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
echo "1..435"

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
    --excludePermissions 'true' \
    > test.out 2>&1
eval_tap $? 108 'AdminListClientAvailablePermissions' test.out

#- 109 AdminUpdateAvailablePermissionsByModule
samples/cli/sample-apps Iam adminUpdateAvailablePermissionsByModule \
    --forceDelete 'true' \
    --body '{"modules": [{"docLink": "uM96UCmf", "groups": [{"group": "J7hplLpJ", "groupId": "7l6sbX3j", "permissions": [{"allowedActions": [90, 25, 87], "resource": "9ED2lif7"}, {"allowedActions": [60, 13, 43], "resource": "gXbJgsX8"}, {"allowedActions": [8, 96, 3], "resource": "3AKMKQLR"}]}, {"group": "2AW69CJn", "groupId": "kBmHVy3z", "permissions": [{"allowedActions": [28, 18, 16], "resource": "Wo4abDm9"}, {"allowedActions": [11, 2, 62], "resource": "dXbIvNPN"}, {"allowedActions": [96, 52, 71], "resource": "BuOtzuVS"}]}, {"group": "E7WonYx0", "groupId": "fNbBUmwO", "permissions": [{"allowedActions": [8, 80, 16], "resource": "HikSdHDq"}, {"allowedActions": [13, 42, 37], "resource": "7uqeMj2p"}, {"allowedActions": [75, 28, 59], "resource": "5GA7CAM2"}]}], "module": "iMj0Xw1H", "moduleId": "5L1seQKI"}, {"docLink": "dFBcicHj", "groups": [{"group": "RkgvowbE", "groupId": "uq8dXmR3", "permissions": [{"allowedActions": [88, 33, 41], "resource": "96MhdTeE"}, {"allowedActions": [89, 28, 52], "resource": "jYhW3WYR"}, {"allowedActions": [12, 46, 32], "resource": "KJwLpMSJ"}]}, {"group": "ha7yYgwk", "groupId": "aV1o7FJx", "permissions": [{"allowedActions": [3, 5, 13], "resource": "VxSVp8qk"}, {"allowedActions": [20, 35, 63], "resource": "YxsavWhq"}, {"allowedActions": [74, 53, 1], "resource": "Xz8XWKw2"}]}, {"group": "CeAr9RJI", "groupId": "TNHtGgq6", "permissions": [{"allowedActions": [36, 54, 77], "resource": "tRERkly8"}, {"allowedActions": [70, 58, 49], "resource": "NgP2GAPZ"}, {"allowedActions": [6, 38, 91], "resource": "S4jY83Iu"}]}], "module": "QHA9r6Af", "moduleId": "G8EB7NAV"}, {"docLink": "APNKMu18", "groups": [{"group": "kBf4NqrC", "groupId": "sItTLy4e", "permissions": [{"allowedActions": [1, 8, 30], "resource": "JvWbId6R"}, {"allowedActions": [33, 70, 28], "resource": "UIyygExM"}, {"allowedActions": [12, 72, 21], "resource": "8f68K2LQ"}]}, {"group": "J8vl8Eni", "groupId": "WFK9VZu9", "permissions": [{"allowedActions": [13, 3, 74], "resource": "OlPwEvxQ"}, {"allowedActions": [52, 3, 73], "resource": "y9OIKz9z"}, {"allowedActions": [85, 67, 4], "resource": "PCUXUVs6"}]}, {"group": "amRO4L1Q", "groupId": "v1iWqFF2", "permissions": [{"allowedActions": [14, 27, 72], "resource": "2pA5JDvI"}, {"allowedActions": [72, 61, 5], "resource": "NjkJoRV6"}, {"allowedActions": [42, 15, 50], "resource": "DPf44ZUP"}]}], "module": "FX7tT3XN", "moduleId": "CVdelAht"}]}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
samples/cli/sample-apps Iam adminDeleteConfigPermissionsByGroup \
    --forceDelete 'false' \
    --body '{"groupId": "inmICyAP", "moduleId": "AqsktfP1"}' \
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
    --body '[{"field": "3pE9Cqtp", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["cyJ6p4De", "1KZYOvDS", "P3Hv2wfG"], "preferRegex": false, "regex": "UVe9xKaF"}, "blockedWord": ["ZYiMVZ9Z", "qGI7C9vs", "cAfwXgC2"], "description": [{"language": "uDxM6Lzk", "message": ["xRXuIKfc", "1aTBjMep", "JbndIMFq"]}, {"language": "fsyWmaBB", "message": ["eWQO5eQ1", "a3wIqmv4", "xA6Ljsde"]}, {"language": "4k0nEcdG", "message": ["5FIWKQsF", "WwRFg9TT", "AM4Btqwp"]}], "isCustomRegex": true, "letterCase": "UB5OEF3Y", "maxLength": 74, "maxRepeatingAlphaNum": 31, "maxRepeatingSpecialCharacter": 35, "minCharType": 36, "minLength": 12, "profanityFilter": "l4kH7WwU", "regex": "vpGRYiB0", "specialCharacterLocation": "lAOp5D23", "specialCharacters": ["oSFEaWeX", "13Rcggb8", "LddkV3ur"]}}, {"field": "3Od4713s", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["jx8r0InC", "pqhAMhjR", "6OTCGkg2"], "preferRegex": false, "regex": "JLxDchIE"}, "blockedWord": ["qwERg2om", "0RAAkge9", "gQZTlPdn"], "description": [{"language": "vrUVN2S9", "message": ["7ZxbIVlo", "4CfFIrzN", "G5R8YiNf"]}, {"language": "HVYL3wPf", "message": ["QIe2WJof", "pZlSwAk4", "xq5AEmFX"]}, {"language": "SpwYi15m", "message": ["zfMFp4qh", "JEw4gzAV", "QaLxgWpT"]}], "isCustomRegex": false, "letterCase": "rXb3IvxR", "maxLength": 27, "maxRepeatingAlphaNum": 35, "maxRepeatingSpecialCharacter": 29, "minCharType": 15, "minLength": 95, "profanityFilter": "adZznLns", "regex": "Bh8UCHyE", "specialCharacterLocation": "aCXkVPkH", "specialCharacters": ["yHV1gTNH", "c8Dh68lW", "UlTnfWsG"]}}, {"field": "7P3Y4gAv", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["pHPr6J3p", "jVq3KTFl", "qT3XhGxK"], "preferRegex": true, "regex": "rXjUlZh0"}, "blockedWord": ["J47a7Tif", "FCEsariX", "QoyVPDwt"], "description": [{"language": "au4CQ988", "message": ["BB0KxVWt", "vjgjArd3", "FDFlOXUV"]}, {"language": "EGwFTgm7", "message": ["TQoniEdD", "5jTUpUIx", "As1Iwwk3"]}, {"language": "9FVuIKuw", "message": ["9kFbGVwS", "IYIwS7OD", "JkZ9bjmg"]}], "isCustomRegex": false, "letterCase": "nopY6pjY", "maxLength": 31, "maxRepeatingAlphaNum": 95, "maxRepeatingSpecialCharacter": 23, "minCharType": 96, "minLength": 51, "profanityFilter": "Y5DYvBsv", "regex": "n5caoReU", "specialCharacterLocation": "dj3R5dCe", "specialCharacters": ["PwZbEjda", "Tb6RtA2K", "NybqoDVh"]}}]' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'jUPdrSaV' \
    > test.out 2>&1
eval_tap $? 114 'AdminResetInputValidations' test.out

#- 115 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'citDtDWa' \
    --before 'w7wXiySN' \
    --endDate 'ysFQUj0W' \
    --limit '55' \
    --query 'FaIjzeHp' \
    --roleId 'nEm0iPZD' \
    --startDate 'ANgmOS39' \
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
    --body '{"ageRestriction": 80, "enable": false}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 118 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminGetListCountryAgeRestrictionV3' test.out

#- 119 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'HJEcH4tX' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 43}' \
    > test.out 2>&1
eval_tap $? 119 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 120 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType '504d73ty' \
    --limit '78' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetBannedUsersV3' test.out

#- 121 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "EryPu9Dl", "comment": "3Kda4OQm", "endDate": "RI6Y61Sm", "reason": "gbZSnc3a", "skipNotif": false, "userIds": ["SD5MheHP", "r3yi6jt5", "91z6gSkx"]}' \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "QRJfgbKc", "userId": "qdeANyhW"}, {"banId": "FTa7WqJx", "userId": "kKLJvFLi"}, {"banId": "AVOiSiqH", "userId": "ETAbBVmw"}]}' \
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
    --clientId 'dtdC0ljz' \
    --clientName 'z4Pa7mC6' \
    --clientType 'I5F1g3Yz' \
    --limit '13' \
    --offset '15' \
    --skipLoginQueue 'false' \
    > test.out 2>&1
eval_tap $? 124 'AdminGetClientsByNamespaceV3' test.out

#- 125 AdminBulkUpdateClientsV3
samples/cli/sample-apps Iam adminBulkUpdateClientsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientIds": ["lXPXoUnn", "SkzXcSrS", "aDhmcN8P"], "clientUpdateRequest": {"audiences": ["a18MBvGp", "Flapf6JU", "vQb3mU3q"], "baseUri": "WTb4gFv9", "clientName": "Xpy5brmR", "clientPermissions": [{"action": 34, "resource": "ptS7IYef", "schedAction": 88, "schedCron": "nieaQmeL", "schedRange": ["Bgd3bwmL", "qfAYp6wb", "oDu7cm52"]}, {"action": 2, "resource": "b42E3738", "schedAction": 89, "schedCron": "2o7LZAZC", "schedRange": ["biSiDxPw", "Wpf84t40", "bE00kYWD"]}, {"action": 88, "resource": "922XacM0", "schedAction": 24, "schedCron": "gt8zGtQ7", "schedRange": ["ShWZSLjs", "ytGjYOBL", "PBntxzjS"]}], "clientPlatform": "0qw71ROS", "deletable": false, "description": "LnTPeCLh", "modulePermissions": [{"moduleId": "Ebx9ccTF", "selectedGroups": [{"groupId": "2Zz89kql", "selectedActions": [75, 96, 11]}, {"groupId": "djA62MUt", "selectedActions": [46, 63, 72]}, {"groupId": "zOuqpTw9", "selectedActions": [74, 22, 15]}]}, {"moduleId": "fB4frqUD", "selectedGroups": [{"groupId": "QYjPe6cc", "selectedActions": [16, 18, 70]}, {"groupId": "q01mTP0m", "selectedActions": [37, 46, 10]}, {"groupId": "7YRXj5Wn", "selectedActions": [88, 94, 59]}]}, {"moduleId": "8RAyazxV", "selectedGroups": [{"groupId": "FEULbQfF", "selectedActions": [14, 41, 8]}, {"groupId": "YPmVphdU", "selectedActions": [35, 91, 37]}, {"groupId": "BtOAEtP2", "selectedActions": [92, 13, 65]}]}], "namespace": "GbvzccIM", "oauthAccessTokenExpiration": 13, "oauthAccessTokenExpirationTimeUnit": "OwFbjYmC", "oauthRefreshTokenExpiration": 91, "oauthRefreshTokenExpirationTimeUnit": "QbLri4MM", "redirectUri": "KjNUT8AN", "scopes": ["m1bnvO7p", "7npZotXN", "Gaq7rFUJ"], "skipLoginQueue": false, "twoFactorEnabled": false}}' \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["NX4jIZxP", "uhDSwZwg", "UhYP6KfO"], "baseUri": "gdrRbJDu", "clientId": "gh84QLaE", "clientName": "UjXhXqy9", "clientPermissions": [{"action": 51, "resource": "9xtruUYh", "schedAction": 23, "schedCron": "4gDSySzn", "schedRange": ["LnXbjEBd", "roRt3cHg", "AMuTBe3z"]}, {"action": 77, "resource": "26Rq2CUu", "schedAction": 69, "schedCron": "HlwnpqNM", "schedRange": ["uHf3ZBsZ", "kJuiBDob", "ax0Aljti"]}, {"action": 96, "resource": "et38D927", "schedAction": 20, "schedCron": "yRA5WFtG", "schedRange": ["tM5O2k8h", "DrAZh9Tl", "KsMrPF8f"]}], "clientPlatform": "UXkYlo0N", "deletable": true, "description": "aC38kDio", "modulePermissions": [{"moduleId": "RKQUAnrr", "selectedGroups": [{"groupId": "BSfrFzBE", "selectedActions": [54, 44, 59]}, {"groupId": "nhHvlMd5", "selectedActions": [93, 46, 0]}, {"groupId": "AaIjumTg", "selectedActions": [47, 7, 11]}]}, {"moduleId": "zdNjxZkA", "selectedGroups": [{"groupId": "MNhkrgCb", "selectedActions": [97, 79, 33]}, {"groupId": "jJwaJJhQ", "selectedActions": [100, 42, 53]}, {"groupId": "9iQMEGzs", "selectedActions": [20, 17, 16]}]}, {"moduleId": "WFhfXw2O", "selectedGroups": [{"groupId": "cIMCLYex", "selectedActions": [54, 80, 65]}, {"groupId": "PWQtaeF3", "selectedActions": [100, 73, 47]}, {"groupId": "LVuTdbRf", "selectedActions": [68, 79, 93]}]}], "namespace": "oWjvkhFQ", "oauthAccessTokenExpiration": 25, "oauthAccessTokenExpirationTimeUnit": "g5gybNu9", "oauthClientType": "pCIOiRU6", "oauthRefreshTokenExpiration": 59, "oauthRefreshTokenExpirationTimeUnit": "JzCkvte3", "parentNamespace": "f0WUTkUh", "redirectUri": "U3INJxS6", "scopes": ["VVwVpJbz", "O97Namcg", "PYctMF14"], "secret": "6kYuMf9N", "skipLoginQueue": false, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'EpUQeie6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'BL6icKxb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'LzY9TLkJ' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["wDGbO0j6", "pVVlxe40", "Ddq1H3uY"], "baseUri": "rp7hcLpB", "clientName": "kupchGAO", "clientPermissions": [{"action": 17, "resource": "oCyjUI9a", "schedAction": 61, "schedCron": "O59M0NoW", "schedRange": ["pra7X6ln", "UXEwoTMw", "xrNk18X2"]}, {"action": 82, "resource": "LAbI3fS4", "schedAction": 8, "schedCron": "3VXlINqW", "schedRange": ["KewqXfgh", "yC3MOuNp", "iDxaxESj"]}, {"action": 18, "resource": "1NJcedgd", "schedAction": 75, "schedCron": "aHQGIdRR", "schedRange": ["3VmE86nH", "C6fWvWjY", "mDIpKTZk"]}], "clientPlatform": "nWX1Yg1q", "deletable": false, "description": "RZmo0esb", "modulePermissions": [{"moduleId": "QWSxLIEj", "selectedGroups": [{"groupId": "qOV6r3bg", "selectedActions": [100, 29, 14]}, {"groupId": "qX8M2u4O", "selectedActions": [45, 14, 74]}, {"groupId": "6FSLHZEE", "selectedActions": [7, 77, 86]}]}, {"moduleId": "8jgUOsoj", "selectedGroups": [{"groupId": "54Wn42yc", "selectedActions": [80, 4, 64]}, {"groupId": "URIroba8", "selectedActions": [54, 100, 77]}, {"groupId": "Pgr7IFFS", "selectedActions": [78, 64, 48]}]}, {"moduleId": "i6mGVcwa", "selectedGroups": [{"groupId": "jU3V283e", "selectedActions": [32, 81, 52]}, {"groupId": "0HpDAI6q", "selectedActions": [81, 23, 0]}, {"groupId": "qKPJY5V4", "selectedActions": [88, 30, 15]}]}], "namespace": "ixoFdunh", "oauthAccessTokenExpiration": 8, "oauthAccessTokenExpirationTimeUnit": "qR7dzTeN", "oauthRefreshTokenExpiration": 7, "oauthRefreshTokenExpirationTimeUnit": "IMjWt0Se", "redirectUri": "KDCgMZrX", "scopes": ["v7g8omKM", "hPiITxlS", "HchCKCBU"], "skipLoginQueue": true, "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId '39wozVWX' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 91, "resource": "Wuemcg7q"}, {"action": 17, "resource": "T14GFT0Z"}, {"action": 52, "resource": "N4LBZtwO"}]}' \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'TLUbmO4z' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 4, "resource": "Z19bGQMQ"}, {"action": 29, "resource": "1QSQyNmN"}, {"action": 31, "resource": "EuA8k7dH"}]}' \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '38' \
    --clientId 'hszIVjD0' \
    --namespace $AB_NAMESPACE \
    --resource 'QOVBb3uY' \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
samples/cli/sample-apps Iam adminGetConfigValueV3 \
    --configKey 'r3JNk0su' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 133 'AdminGetConfigValueV3' test.out

#- 134 AdminGetCountryListV3
samples/cli/sample-apps Iam adminGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    --filterBlacklist 'true' \
    > test.out 2>&1
eval_tap $? 134 'AdminGetCountryListV3' test.out

#- 135 AdminGetCountryBlacklistV3
samples/cli/sample-apps Iam adminGetCountryBlacklistV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 135 'AdminGetCountryBlacklistV3' test.out

#- 136 AdminAddCountryBlacklistV3
samples/cli/sample-apps Iam adminAddCountryBlacklistV3 \
    --namespace $AB_NAMESPACE \
    --body '{"blacklist": ["IOOHwTSS", "WK67dHoZ", "GwEPMqC9"]}' \
    > test.out 2>&1
eval_tap $? 136 'AdminAddCountryBlacklistV3' test.out

#- 137 AdminGetLoginAllowlistV3
samples/cli/sample-apps Iam adminGetLoginAllowlistV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 137 'AdminGetLoginAllowlistV3' test.out

#- 138 AdminUpdateLoginAllowlistV3
samples/cli/sample-apps Iam adminUpdateLoginAllowlistV3 \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "roleIds": ["1kVa508T", "YCfmCdUu", "r5lPZMEw"]}' \
    > test.out 2>&1
eval_tap $? 138 'AdminUpdateLoginAllowlistV3' test.out

#- 139 RetrieveAllThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 139 'RetrieveAllThirdPartyLoginPlatformCredentialV3' test.out

#- 140 RetrieveAllActiveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'RetrieveAllActiveThirdPartyLoginPlatformCredentialV3' test.out

#- 141 RetrieveAllSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '35' \
    > test.out 2>&1
eval_tap $? 141 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 142 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ANUr1ZLk' \
    > test.out 2>&1
eval_tap $? 142 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 143 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Z3e8XlcD' \
    --body '{"ACSURL": "yx8PaiPJ", "AWSCognitoRegion": "NWjKP043", "AWSCognitoUserPool": "yGf0HIo4", "AllowedClients": ["2My8Kfdv", "F78fUY1L", "VOJkcQEe"], "AppId": "8lmmWwJz", "AuthorizationEndpoint": "eKj9PqW0", "ClientId": "wsHQYRBr", "EmptyStrFieldList": ["8boEXEsK", "Rh5KufzI", "NXp1bnRq"], "EnableServerLicenseValidation": true, "Environment": "mhAKYF25", "FederationMetadataURL": "PTGsFqwG", "GenericOauthFlow": false, "IncludePUID": true, "IsActive": true, "Issuer": "yeBsGgyr", "JWKSEndpoint": "k3je3RTZ", "KeyID": "RFrNBErf", "LogoURL": "M0vTCxrI", "NetflixCertificates": {"encryptedPrivateKey": "FNVeDgY5", "encryptedPrivateKeyName": "PglooDZ4", "publicCertificate": "1A97r3sW", "publicCertificateName": "noKbjnrc", "rootCertificate": "HfzeNvGt", "rootCertificateName": "fWlyeZKJ"}, "OrganizationId": "mwBDzgFy", "PlatformName": "atn3K2IZ", "PrivateKey": "P5vLw7O6", "RedirectUri": "YHCakNGq", "RegisteredDomains": [{"affectedClientIDs": ["0I80rHV1", "1GTZXTjx", "g26d24e7"], "domain": "e8i7eV6k", "namespaces": ["TBabFKjT", "uEC8PnPm", "IdbR5ahn"], "roleId": "XUYtuyAW", "ssoCfg": {"googleKey": {"QGBtzTAZ": {}, "kau3EL8C": {}, "6Bgq7PPJ": {}}, "groupConfigs": [{"assignNamespaces": ["h1tEaPev", "XNw9yETx", "9ZWZAKtu"], "group": "pEWSaf6j", "roleId": "dDEpA1Ha"}, {"assignNamespaces": ["vQBvx6Ap", "0iXIpzgL", "rT5xLkO7"], "group": "ZOwmMrQz", "roleId": "I9QxmlHA"}, {"assignNamespaces": ["zAMzeEvQ", "wRZkVwb0", "Be7Iiaol"], "group": "FMDz9MDi", "roleId": "fe55fQc2"}]}}, {"affectedClientIDs": ["GjMymp6P", "nuwSl2nO", "QAemWIXe"], "domain": "6i85qQgl", "namespaces": ["heVHUHVK", "rxhh6c9R", "wZM5B0nS"], "roleId": "hAJElsaQ", "ssoCfg": {"googleKey": {"EKe2BGWH": {}, "57FKbDRK": {}, "9BL4p3xy": {}}, "groupConfigs": [{"assignNamespaces": ["ZGyDEWLN", "KXeOAIv3", "8EZINvMV"], "group": "MvQWhoqh", "roleId": "EAjKFtl1"}, {"assignNamespaces": ["Sh9kY8HC", "r91hm4Qh", "5qnqC7PF"], "group": "Ithlzx6P", "roleId": "xI93qt5R"}, {"assignNamespaces": ["MZHuOC1O", "iNX2G8jT", "0MDF8AOp"], "group": "jssX3rDu", "roleId": "bTjsWeZT"}]}}, {"affectedClientIDs": ["vODhZhLP", "6dO40Nce", "vY3RRfBd"], "domain": "tCmkwUbq", "namespaces": ["YmJrNZVd", "X5yes4IJ", "RtpuRoBa"], "roleId": "gYTR8z7G", "ssoCfg": {"googleKey": {"u1Ch36Ba": {}, "NYt5AMuF": {}, "nEnWlypb": {}}, "groupConfigs": [{"assignNamespaces": ["S59b2B9C", "6DNgzJqt", "2AFWIlLB"], "group": "iRzC1UUq", "roleId": "E6HKIEWd"}, {"assignNamespaces": ["ftKMtrsv", "QWSOfsKL", "9Lk5Tgqs"], "group": "TapRavj5", "roleId": "jbuIJu7M"}, {"assignNamespaces": ["8SjVMyBX", "6CL2opOo", "IisQiRfj"], "group": "XcHcRh63", "roleId": "qYp96KEl"}]}}], "RelyingParty": "0xfIllwW", "SandboxId": "sE8jQ1zr", "Secret": "Wor2SpsT", "TeamID": "kipFO5p5", "TokenAuthenticationType": "v9LNFsBv", "TokenClaimsMapping": {"S4j17d49": "0bwfsSrn", "Ibc41pNw": "lQpvnC3n", "eIYjHWGy": "e6tSeFB8"}, "TokenEndpoint": "yYWyUrXY", "UserInfoEndpoint": "i7Jm5F1S", "UserInfoHTTPMethod": "hq8z6fE1", "googleAdminConsoleKey": "pKcYlfVm", "scopes": ["0kQfefXz", "S4B2OIkP", "J1UOhkAp"]}' \
    > test.out 2>&1
eval_tap $? 143 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 144 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'cd6wGQnw' \
    > test.out 2>&1
eval_tap $? 144 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 145 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'GG0xoTii' \
    --body '{"ACSURL": "o9exexFt", "AWSCognitoRegion": "Xi0Jf2Tx", "AWSCognitoUserPool": "QVFBEIMb", "AllowedClients": ["TB1DvlaD", "bmqtd0Wx", "T5scjsQE"], "AppId": "cxWQyuf5", "AuthorizationEndpoint": "DcW8u3zE", "ClientId": "M7OpOnus", "EmptyStrFieldList": ["FttnEMtC", "Hvgh8eUd", "cgYD7Vsr"], "EnableServerLicenseValidation": false, "Environment": "W7CgUXwS", "FederationMetadataURL": "tBjX8kRi", "GenericOauthFlow": false, "IncludePUID": false, "IsActive": false, "Issuer": "INLGf8zW", "JWKSEndpoint": "XS5Ng8Fo", "KeyID": "UBgf6t6r", "LogoURL": "JUd8sLwL", "NetflixCertificates": {"encryptedPrivateKey": "JWtCXAgJ", "encryptedPrivateKeyName": "sBuPQC0s", "publicCertificate": "caBagrnm", "publicCertificateName": "xesMAuCQ", "rootCertificate": "WQV8gBFi", "rootCertificateName": "99nx090Q"}, "OrganizationId": "QVFWN8X6", "PlatformName": "FCMj8U3l", "PrivateKey": "FfShZiim", "RedirectUri": "YqVg45dZ", "RegisteredDomains": [{"affectedClientIDs": ["tr0WaWVd", "G86eC5ma", "Woi3NF0x"], "domain": "xU0VeOyq", "namespaces": ["TobVDvMw", "QfVjix5w", "sGfhXigL"], "roleId": "Zw8ovupW", "ssoCfg": {"googleKey": {"cuhUsdcd": {}, "oxB92tyl": {}, "NBmvxPjX": {}}, "groupConfigs": [{"assignNamespaces": ["R0qeYFAA", "7ee09cC2", "uE7dq4Ez"], "group": "6Sz62yYw", "roleId": "MmMniq4u"}, {"assignNamespaces": ["ZSAGxK6Q", "rejf90aP", "2Yxx0OwX"], "group": "4EzxY1ef", "roleId": "8wDz61cY"}, {"assignNamespaces": ["kpwBAQU3", "4csOH1LG", "852r8xkh"], "group": "ofWtO70I", "roleId": "f1bPRFYj"}]}}, {"affectedClientIDs": ["9YXWiJLz", "GTPppFf1", "vXgwQaWn"], "domain": "QxXcJyo4", "namespaces": ["LVluvgAI", "ZUf1CDLX", "sDevOpFW"], "roleId": "Dqkw46hD", "ssoCfg": {"googleKey": {"CK1gGIAM": {}, "jlbJtcN3": {}, "fWhNg4a4": {}}, "groupConfigs": [{"assignNamespaces": ["l5OmfS08", "Pa75B5ms", "dobR421a"], "group": "0L3jpzDZ", "roleId": "han2Vxxk"}, {"assignNamespaces": ["Rg4PaY5Y", "LlTbwxLc", "FBlKIPQ1"], "group": "7B162pV9", "roleId": "kB3dSrS5"}, {"assignNamespaces": ["cb3t1f9V", "dnDgNSld", "DlV9MdAL"], "group": "5zEdXqHk", "roleId": "73Zc4bvT"}]}}, {"affectedClientIDs": ["VocgNndZ", "DmmHSrbH", "ZGJzD5Bo"], "domain": "j5on2L8i", "namespaces": ["FOgDqbLW", "r0XKx3XR", "yMg1LU2S"], "roleId": "yneoIAfs", "ssoCfg": {"googleKey": {"wbtczQUy": {}, "fFzCfIBx": {}, "W9pb34sG": {}}, "groupConfigs": [{"assignNamespaces": ["0f1qTWGK", "OFkjEwfY", "7oRcfRdj"], "group": "7tLjkwjq", "roleId": "Tp9wiQXe"}, {"assignNamespaces": ["hxEGqYUc", "ExHo9vrZ", "wxUYTmqV"], "group": "dJJrh3Um", "roleId": "ee1QalZi"}, {"assignNamespaces": ["WLqFn2I1", "PsAwYb4S", "8l6P93L4"], "group": "0ic3gK16", "roleId": "7adI4Fhz"}]}}], "RelyingParty": "qfJ9PnP6", "SandboxId": "grdTw3jb", "Secret": "1GhV0RY3", "TeamID": "8iSgeqCy", "TokenAuthenticationType": "BgpWzQ6T", "TokenClaimsMapping": {"mVjFTzkt": "7QScRa4p", "MCOx4whU": "Vh94Mtdh", "cb4ggAGw": "nxoXH0Ng"}, "TokenEndpoint": "cNcvzBVx", "UserInfoEndpoint": "NNb7KKpI", "UserInfoHTTPMethod": "kekQVNMa", "googleAdminConsoleKey": "oRf1nEYI", "scopes": ["VaulUBuN", "aCrO0rPt", "Z7cawNiq"]}' \
    > test.out 2>&1
eval_tap $? 145 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 146 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'P0gmR66Z' \
    --body '{"affectedClientIDs": ["XVyqtNcw", "e88YUtjN", "LKtZIL7D"], "assignedNamespaces": ["FFx0R9J5", "YDY3PTeX", "DVHqJ0es"], "domain": "pXeAneMp", "roleId": "VgQ1CK4Y", "ssoCfg": {"googleKey": {"HIQwUbCj": {}, "pUwhh6mk": {}, "gdk5YEaW": {}}, "groupConfigs": [{"assignNamespaces": ["XY6dhONk", "jiXZLuwX", "my2eKLlZ"], "group": "dxwJAU5b", "roleId": "KJdd8jVG"}, {"assignNamespaces": ["448Todfk", "asaaV6cm", "w8Ga8GCG"], "group": "0QAVH4W1", "roleId": "zwgj54zR"}, {"assignNamespaces": ["xx3caGej", "tyTyJ5cL", "9IlTTxy2"], "group": "MRgxBrCz", "roleId": "vvjPhhFl"}]}}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 147 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'skueRVn8' \
    --body '{"domain": "f7j4YTct", "ssoGroups": ["pRg4NCq3", "evdFa2Af", "jxVUO6w6"]}' \
    > test.out 2>&1
eval_tap $? 147 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 148 PartialUpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam partialUpdateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 's8pd7Xti' \
    --body '{"affectedClientIDs": ["HSz974Mg", "p7coRCDn", "nNvZojRN"], "assignedNamespaces": ["4mg9T1W0", "mNa5A36d", "19w1U7up"], "domain": "N6K25yA9", "roleId": "WJszXfes", "ssoCfg": {"googleKey": {"6hjLDjDL": {}, "mnurCsj3": {}, "OYqwNzbZ": {}}, "groupConfigs": [{"assignNamespaces": ["i8EGufVP", "qySQwt7d", "PkmfFgSA"], "group": "wtDEPIj4", "roleId": "9y49SW2Y"}, {"assignNamespaces": ["cre6xYdq", "2Q0I0Lbc", "b4WfqmbN"], "group": "FshKEUoH", "roleId": "lUV76Lf6"}, {"assignNamespaces": ["OPLPsN5C", "RWA4UHcq", "IwDfE5qq"], "group": "cdSpbq8r", "roleId": "HvTWKO5w"}]}}' \
    > test.out 2>&1
eval_tap $? 148 'PartialUpdateThirdPartyLoginPlatformDomainV3' test.out

#- 149 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'o0xG55WP' \
    > test.out 2>&1
eval_tap $? 149 'RetrieveSSOLoginPlatformCredential' test.out

#- 150 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'fWilHJDw' \
    --body '{"acsUrl": "7XkKWGY0", "apiKey": "cVpyjzRj", "appId": "ppMddM8e", "federationMetadataUrl": "IRJJSpJ3", "isActive": false, "redirectUri": "0Hk9kW5I", "secret": "Gt6e4Wqr", "ssoUrl": "vFJiklrJ"}' \
    > test.out 2>&1
eval_tap $? 150 'AddSSOLoginPlatformCredential' test.out

#- 151 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'tBVLHjsX' \
    > test.out 2>&1
eval_tap $? 151 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 152 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'VngvIkqX' \
    --body '{"acsUrl": "3mWQhYif", "apiKey": "8VA8lxUh", "appId": "r64fF3JA", "federationMetadataUrl": "XoX89VJM", "isActive": true, "redirectUri": "IkWQg2cU", "secret": "2BtmNilR", "ssoUrl": "szLCk11U"}' \
    > test.out 2>&1
eval_tap $? 152 'UpdateSSOPlatformCredential' test.out

#- 153 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId '7IYilzRx' \
    --rawPID 'false' \
    --rawPUID 'true' \
    --body '{"platformUserIds": ["zdUcMvlq", "SQ1SfBgo", "9axbKeSL"]}' \
    > test.out 2>&1
eval_tap $? 153 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 154 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'V7aI42fv' \
    --platformUserId 'b1YcBhxc' \
    --pidType 'iVfv8gbX' \
    > test.out 2>&1
eval_tap $? 154 'AdminGetUserByPlatformUserIDV3' test.out

#- 155 AdminGetProfileUpdateStrategyV3
samples/cli/sample-apps Iam adminGetProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'username' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetProfileUpdateStrategyV3' test.out

#- 156 AdminUpdateProfileUpdateStrategyV3
samples/cli/sample-apps Iam adminUpdateProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'dob' \
    --body '{"config": {"minimumAllowedInterval": 11}, "type": "9BAJP5sq"}' \
    > test.out 2>&1
eval_tap $? 156 'AdminUpdateProfileUpdateStrategyV3' test.out

#- 157 AdminGetRoleOverrideConfigV3
samples/cli/sample-apps Iam adminGetRoleOverrideConfigV3 \
    --namespace $AB_NAMESPACE \
    --identity 'USER' \
    > test.out 2>&1
eval_tap $? 157 'AdminGetRoleOverrideConfigV3' test.out

#- 158 AdminUpdateRoleOverrideConfigV3
samples/cli/sample-apps Iam adminUpdateRoleOverrideConfigV3 \
    --namespace $AB_NAMESPACE \
    --identity 'VIEW_ONLY' \
    --body '{"additions": [{"actions": [23, 48, 4], "resource": "eALqvZBS"}, {"actions": [90, 70, 43], "resource": "iDB0PsM3"}, {"actions": [7, 9, 95], "resource": "rzw6iEja"}], "exclusions": [{"actions": [47, 73, 65], "resource": "k8upYDpm"}, {"actions": [30, 37, 50], "resource": "DMHHQsW6"}, {"actions": [73, 95, 19], "resource": "ErSg4Gym"}], "overrides": [{"actions": [96, 75, 98], "resource": "8EHvdXtr"}, {"actions": [74, 41, 13], "resource": "DPVQNzgd"}, {"actions": [43, 4, 97], "resource": "qG1ktFac"}], "replacements": [{"replacement": {"actions": [53, 79, 49], "resource": "ml3Yevlr"}, "target": "QnSHEY74"}, {"replacement": {"actions": [77, 76, 14], "resource": "rxjgmc5z"}, "target": "IR3ScNDs"}, {"replacement": {"actions": [81, 37, 73], "resource": "0rjTcBT3"}, "target": "LaBIcyRj"}]}' \
    > test.out 2>&1
eval_tap $? 158 'AdminUpdateRoleOverrideConfigV3' test.out

#- 159 AdminGetRoleSourceV3
samples/cli/sample-apps Iam adminGetRoleSourceV3 \
    --namespace $AB_NAMESPACE \
    --identity 'USER' \
    > test.out 2>&1
eval_tap $? 159 'AdminGetRoleSourceV3' test.out

#- 160 AdminChangeRoleOverrideConfigStatusV3
samples/cli/sample-apps Iam adminChangeRoleOverrideConfigStatusV3 \
    --namespace $AB_NAMESPACE \
    --identity 'USER' \
    --body '{"active": false}' \
    > test.out 2>&1
eval_tap $? 160 'AdminChangeRoleOverrideConfigStatusV3' test.out

#- 161 AdminGetRoleNamespacePermissionV3
samples/cli/sample-apps Iam adminGetRoleNamespacePermissionV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'ghaAO9PX' \
    > test.out 2>&1
eval_tap $? 161 'AdminGetRoleNamespacePermissionV3' test.out

#- 162 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'nzXGq7Hn' \
    --after '92' \
    --before '76' \
    --limit '45' \
    > test.out 2>&1
eval_tap $? 162 'GetAdminUsersByRoleIdV3' test.out

#- 163 AdminQueryTagV3
samples/cli/sample-apps Iam adminQueryTagV3 \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '55' \
    --tagName 'QB5BL9pV' \
    > test.out 2>&1
eval_tap $? 163 'AdminQueryTagV3' test.out

#- 164 AdminCreateTagV3
samples/cli/sample-apps Iam adminCreateTagV3 \
    --namespace $AB_NAMESPACE \
    --body '{"tagName": "lylLB1p8"}' \
    > test.out 2>&1
eval_tap $? 164 'AdminCreateTagV3' test.out

#- 165 AdminUpdateTagV3
samples/cli/sample-apps Iam adminUpdateTagV3 \
    --namespace $AB_NAMESPACE \
    --tagId '2HDG05et' \
    --body '{"tagName": "Hl0BhOQu"}' \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateTagV3' test.out

#- 166 AdminDeleteTagV3
samples/cli/sample-apps Iam adminDeleteTagV3 \
    --namespace $AB_NAMESPACE \
    --tagId 'i0Wfi3PU' \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteTagV3' test.out

#- 167 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'Bq7ePrxc' \
    > test.out 2>&1
eval_tap $? 167 'AdminGetUserByEmailAddressV3' test.out

#- 168 AdminBulkUpdateUsersV3
samples/cli/sample-apps Iam adminBulkUpdateUsersV3 \
    --namespace $AB_NAMESPACE \
    --body '{"updateRequest": {"skipLoginQueue": false}, "userIds": ["pbITTciS", "kIYZo3lw", "2bxjQuOz"]}' \
    > test.out 2>&1
eval_tap $? 168 'AdminBulkUpdateUsersV3' test.out

#- 169 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType '8YXzFCHr' \
    --body '{"bulkUserId": ["8B9glioe", "86LNUPi9", "LjWBhojP"]}' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetBulkUserBanV3' test.out

#- 170 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"findByPublisherNamespace": true, "userIds": ["t6iQ8nX6", "uB7L73v2", "SgfesQ4R"]}' \
    > test.out 2>&1
eval_tap $? 170 'AdminListUserIDByUserIDsV3' test.out

#- 171 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["I2IFoNLk", "cwtRXQql", "6wbnynQ8"]}' \
    > test.out 2>&1
eval_tap $? 171 'AdminBulkGetUsersPlatform' test.out

#- 172 AdminCursorGetUserV3
samples/cli/sample-apps Iam adminCursorGetUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"cursor": {"cursorTime": "7Nvkfcs6", "userId": "4spQfKY9"}, "fields": ["2H52wUpo", "SVuEMeOh", "zLvYXQod"], "limit": 70}' \
    > test.out 2>&1
eval_tap $? 172 'AdminCursorGetUserV3' test.out

#- 173 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["GHIgju4u", "GIS5ZjUO", "Pq6k0gLY"], "isAdmin": true, "languageTag": "iv0Jm7sw", "namespace": "uyZYqhzA", "roles": ["HIKSbtVL", "11bF6HTK", "bAQ3lBE4"]}' \
    > test.out 2>&1
eval_tap $? 173 'AdminInviteUserV3' test.out

#- 174 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '83' \
    --platformUserId 'rFXplDaZ' \
    --platformId 'zgHrYzYY' \
    > test.out 2>&1
eval_tap $? 174 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 175 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 175 'AdminListUsersV3' test.out

#- 176 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by '9IFLu3Lv' \
    --endDate 'noyXwRzt' \
    --includeTotal 'false' \
    --limit '50' \
    --offset '14' \
    --platformBy 'JjCjbj3m' \
    --platformId 'b0aAjN93' \
    --query 'QL3LhGcN' \
    --roleIds '4B8m4Cx7' \
    --selectedFields '3kgkoNFt' \
    --skipLoginQueue 'false' \
    --startDate '3MEp8BwU' \
    --tagIds 'fJowdeca' \
    --testAccount 'true' \
    > test.out 2>&1
eval_tap $? 176 'AdminSearchUserV3' test.out

#- 177 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["CtArAKDi", "6S0uSM87", "RxAx98u0"]}' \
    > test.out 2>&1
eval_tap $? 177 'AdminGetBulkUserByEmailAddressV3' test.out

#- 178 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId '0UF6Zgox' \
    > test.out 2>&1
eval_tap $? 178 'AdminGetUserByUserIdV3' test.out

#- 179 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'QAmNhEet' \
    --body '{"avatarUrl": "7eObXqJF", "country": "eHUKXr53", "dateOfBirth": "ZrDWUP5q", "displayName": "AkAGXgfw", "languageTag": "BSloHHeF", "skipLoginQueue": true, "tags": ["1mDSxBD8", "eINlts4K", "dyoxayjx"], "uniqueDisplayName": "RajjqHqf", "userName": "nkOleBAc"}' \
    > test.out 2>&1
eval_tap $? 179 'AdminUpdateUserV3' test.out

#- 180 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId '89IoJm7X' \
    --activeOnly 'false' \
    --after 'fsvz0Jrt' \
    --before '8xJFCLXy' \
    --limit '46' \
    > test.out 2>&1
eval_tap $? 180 'AdminGetUserBanV3' test.out

#- 181 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'J4flFyYW' \
    --body '{"ban": "1sOTYnd2", "comment": "NwfH6CzO", "endDate": "kV1T4sE3", "reason": "8WHFnVEp", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 181 'AdminBanUserV3' test.out

#- 182 AdminGetUserBanSummaryV3
samples/cli/sample-apps Iam adminGetUserBanSummaryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'oqX9Grql' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetUserBanSummaryV3' test.out

#- 183 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'BBMzZhDz' \
    --namespace $AB_NAMESPACE \
    --userId 'pVBFBSAQ' \
    --body '{"enabled": false, "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 183 'AdminUpdateUserBanV3' test.out

#- 184 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'itogFbBC' \
    --body '{"context": "RqYEe5jG", "emailAddress": "YN7Jfe44", "languageTag": "WG82gj30", "upgradeToken": "Z1xULRp8"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminSendVerificationCodeV3' test.out

#- 185 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ziHqvQXb' \
    --body '{"Code": "b0U7sRGC", "ContactType": "gZaMUn4D", "LanguageTag": "evOWNnwz", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 185 'AdminVerifyAccountV3' test.out

#- 186 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'VIHqVwF0' \
    > test.out 2>&1
eval_tap $? 186 'GetUserVerificationCode' test.out

#- 187 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'NsvumJrZ' \
    > test.out 2>&1
eval_tap $? 187 'AdminGetUserDeletionStatusV3' test.out

#- 188 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'fukNjcfU' \
    --body '{"deletionDate": 15, "enabled": true}' \
    > test.out 2>&1
eval_tap $? 188 'AdminUpdateUserDeletionStatusV3' test.out

#- 189 AdminListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam adminListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'QIKLbYmy' \
    > test.out 2>&1
eval_tap $? 189 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 190 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId '58MPYkMJ' \
    --body '{"code": "rcQREkRh", "country": "fuGn5img", "dateOfBirth": "OpiLjXfW", "displayName": "g4qqG8l9", "emailAddress": "Zpd0w3Av", "password": "GNLvw2Rz", "uniqueDisplayName": "fR6KDc5Q", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 190 'AdminUpgradeHeadlessAccountV3' test.out

#- 191 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'eHYgxhkq' \
    > test.out 2>&1
eval_tap $? 191 'AdminDeleteUserInformationV3' test.out

#- 192 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hXjMQr7y' \
    --after '0.5923197901731458' \
    --before '0.3328182078759546' \
    --limit '4' \
    > test.out 2>&1
eval_tap $? 192 'AdminGetUserLoginHistoriesV3' test.out

#- 193 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'uCwBUqJt' \
    --body '{"languageTag": "at2tAxxj", "mfaToken": "2I4ld315", "newPassword": "vBL8mqKf", "oldPassword": "9EmR52LM"}' \
    > test.out 2>&1
eval_tap $? 193 'AdminResetPasswordV3' test.out

#- 194 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'fO2rJFaH' \
    --body '{"Permissions": [{"Action": 75, "Resource": "OaoxS74A", "SchedAction": 70, "SchedCron": "57f3JdRj", "SchedRange": ["QFfBsa8f", "GcaCwWKb", "yaF1JsUd"]}, {"Action": 74, "Resource": "mqd9hK4Z", "SchedAction": 29, "SchedCron": "2K2pdI0z", "SchedRange": ["CGSkLNXW", "HTgpKnel", "Ayem3M97"]}, {"Action": 83, "Resource": "zwPXoYSP", "SchedAction": 12, "SchedCron": "1sjQuKi0", "SchedRange": ["5ZW6eCM3", "wtdgYtdn", "k0j4TI0x"]}]}' \
    > test.out 2>&1
eval_tap $? 194 'AdminUpdateUserPermissionV3' test.out

#- 195 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Ol4l2ZoB' \
    --body '{"Permissions": [{"Action": 14, "Resource": "9nnCpJqU", "SchedAction": 64, "SchedCron": "HM9nSTX9", "SchedRange": ["OmTpKpp9", "3r0Jpb1g", "deHotSha"]}, {"Action": 88, "Resource": "C6dBQNQQ", "SchedAction": 61, "SchedCron": "e4Jq0ylZ", "SchedRange": ["ze5B9HV9", "yI73J0h9", "sx0eLYz7"]}, {"Action": 94, "Resource": "k8MGBzc5", "SchedAction": 45, "SchedCron": "xiJIkvbz", "SchedRange": ["CILS04x7", "IuLsaZtA", "Oa6W9GqY"]}]}' \
    > test.out 2>&1
eval_tap $? 195 'AdminAddUserPermissionsV3' test.out

#- 196 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'SXG9oFRD' \
    --body '[{"Action": 8, "Resource": "HiZzigei"}, {"Action": 59, "Resource": "9VPMnCET"}, {"Action": 42, "Resource": "KzskeNuq"}]' \
    > test.out 2>&1
eval_tap $? 196 'AdminDeleteUserPermissionBulkV3' test.out

#- 197 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '23' \
    --namespace $AB_NAMESPACE \
    --resource 'o1w9hTx6' \
    --userId 'pUQVdKr9' \
    > test.out 2>&1
eval_tap $? 197 'AdminDeleteUserPermissionV3' test.out

#- 198 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'BI2CdCIA' \
    --after 'b762Zr8v' \
    --before 'vbat6bFg' \
    --limit '74' \
    --platformId 'cKhufbyS' \
    --targetNamespace 'wi36PlqV' \
    > test.out 2>&1
eval_tap $? 198 'AdminGetUserPlatformAccountsV3' test.out

#- 199 AdminListAllDistinctPlatformAccountsV3
samples/cli/sample-apps Iam adminListAllDistinctPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'dC83M1cn' \
    --status '0R1xE86b' \
    > test.out 2>&1
eval_tap $? 199 'AdminListAllDistinctPlatformAccountsV3' test.out

#- 200 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'Xrqi7POC' \
    > test.out 2>&1
eval_tap $? 200 'AdminGetListJusticePlatformAccounts' test.out

#- 201 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace '4yDh40ak' \
    --userId 'KXSlkPkM' \
    --createIfNotFound 'false' \
    > test.out 2>&1
eval_tap $? 201 'AdminGetUserMapping' test.out

#- 202 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'CJ4biLwk' \
    --userId 'vYCGoWL2' \
    > test.out 2>&1
eval_tap $? 202 'AdminCreateJusticeUser' test.out

#- 203 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'hdFDzKBt' \
    --skipConflict 'false' \
    --body '{"platformId": "Sv1LxWpP", "platformUserId": "nz8NSozA"}' \
    > test.out 2>&1
eval_tap $? 203 'AdminLinkPlatformAccount' test.out

#- 204 AdminGetUserLinkHistoriesV3
samples/cli/sample-apps Iam adminGetUserLinkHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'pmhwbEVn' \
    --platformId 'FLGlboXC' \
    > test.out 2>&1
eval_tap $? 204 'AdminGetUserLinkHistoriesV3' test.out

#- 205 AdminPlatformUnlinkV3
eval_tap 0 205 'AdminPlatformUnlinkV3 # SKIP deprecated' test.out

#- 206 AdminPlatformUnlinkAllV3
samples/cli/sample-apps Iam adminPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId '6LSy9j0J' \
    --userId 'NZJzkps0' \
    > test.out 2>&1
eval_tap $? 206 'AdminPlatformUnlinkAllV3' test.out

#- 207 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'h21NV6h0' \
    --userId 'XfI3EiGQ' \
    --ticket 'gZrLdJJC' \
    > test.out 2>&1
eval_tap $? 207 'AdminPlatformLinkV3' test.out

#- 208 AdminDeleteUserLinkingHistoryByPlatformIDV3
eval_tap 0 208 'AdminDeleteUserLinkingHistoryByPlatformIDV3 # SKIP deprecated' test.out

#- 209 AdminDeleteUserLinkingRestrictionByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingRestrictionByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId '9pqU6RSF' \
    --userId 'YNbVLS4l' \
    > test.out 2>&1
eval_tap $? 209 'AdminDeleteUserLinkingRestrictionByPlatformIDV3' test.out

#- 210 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'vHQLDfnz' \
    --userId 'Iu4gRqzf' \
    --platformToken 'fEjUETcd' \
    > test.out 2>&1
eval_tap $? 210 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 211 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'gEBOwNxj' \
    --userId 'Fq6rvtEI' \
    --crossNamespace 'true' \
    > test.out 2>&1
eval_tap $? 211 'AdminGetUserSinglePlatformAccount' test.out

#- 212 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZRj8u5Ri' \
    --body '["IUTuHbpx", "g1rWz11z", "KkktNZnu"]' \
    > test.out 2>&1
eval_tap $? 212 'AdminDeleteUserRolesV3' test.out

#- 213 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'DxoLLFss' \
    --body '[{"namespace": "p5lZ4zcG", "roleId": "5jHSjK5b"}, {"namespace": "nsb0L8be", "roleId": "LrTt5bpJ"}, {"namespace": "xsE8tWNe", "roleId": "xpRPBhUu"}]' \
    > test.out 2>&1
eval_tap $? 213 'AdminSaveUserRoleV3' test.out

#- 214 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'vytZWBCP' \
    --userId 'X9rf2ViW' \
    > test.out 2>&1
eval_tap $? 214 'AdminAddUserRoleV3' test.out

#- 215 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'Da00JHe3' \
    --userId 'KN8kD7Mp' \
    > test.out 2>&1
eval_tap $? 215 'AdminDeleteUserRoleV3' test.out

#- 216 AdminGetUserStateByUserIdV3
samples/cli/sample-apps Iam adminGetUserStateByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'tPf8k1TX' \
    > test.out 2>&1
eval_tap $? 216 'AdminGetUserStateByUserIdV3' test.out

#- 217 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'mgrZrYue' \
    --body '{"enabled": false, "reason": "etH2imSU"}' \
    > test.out 2>&1
eval_tap $? 217 'AdminUpdateUserStatusV3' test.out

#- 218 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'RtdrdInM' \
    --body '{"emailAddress": "YZmFmqPp", "password": "2VwoxkWM"}' \
    > test.out 2>&1
eval_tap $? 218 'AdminTrustlyUpdateUserIdentity' test.out

#- 219 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId '0MTSeWQ3' \
    > test.out 2>&1
eval_tap $? 219 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 220 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'UdnK6GBj' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "qcfwovrO"}' \
    > test.out 2>&1
eval_tap $? 220 'AdminUpdateClientSecretV3' test.out

#- 221 AdminCheckThirdPartyLoginPlatformAvailabilityV3
samples/cli/sample-apps Iam adminCheckThirdPartyLoginPlatformAvailabilityV3 \
    --platformId 'RPPZwWLl' \
    > test.out 2>&1
eval_tap $? 221 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 222 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after '59vrZ8IQ' \
    --before 'EuU3zNhF' \
    --isWildcard 'false' \
    --limit '54' \
    > test.out 2>&1
eval_tap $? 222 'AdminGetRolesV3' test.out

#- 223 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": true, "managers": [{"displayName": "4SnBbAp3", "namespace": "Sd9pFpjH", "userId": "BfxCrfKN"}, {"displayName": "pSImYSaF", "namespace": "gg3J3en5", "userId": "rZpXi0g9"}, {"displayName": "JHbsik9r", "namespace": "i0MfdQ8E", "userId": "OBmqiMrC"}], "members": [{"displayName": "62t66zfs", "namespace": "fpq5vUUx", "userId": "H3UpKbBe"}, {"displayName": "VXvgfYq4", "namespace": "Vbfu3WrT", "userId": "IslsFZzM"}, {"displayName": "smujsJWZ", "namespace": "0eukueJj", "userId": "YKbdG8oz"}], "permissions": [{"action": 72, "resource": "Hzfbx6H1", "schedAction": 84, "schedCron": "qMVcoUaP", "schedRange": ["FgaLVV6x", "RZOJ3ZhC", "JabvN8Qx"]}, {"action": 37, "resource": "RaF0VTx8", "schedAction": 89, "schedCron": "cmZ0TGcn", "schedRange": ["c8HPyF6u", "1fPxeNFk", "bmUgrPRU"]}, {"action": 10, "resource": "CSIOBwLS", "schedAction": 64, "schedCron": "KVgmEiIz", "schedRange": ["P7P02Dsg", "cpI6etZ6", "fQFOa318"]}], "roleName": "ZjL7qZwY"}' \
    > test.out 2>&1
eval_tap $? 223 'AdminCreateRoleV3' test.out

#- 224 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'e2Eb4ZWf' \
    > test.out 2>&1
eval_tap $? 224 'AdminGetRoleV3' test.out

#- 225 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'Wc64fGbe' \
    > test.out 2>&1
eval_tap $? 225 'AdminDeleteRoleV3' test.out

#- 226 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'reFEYbCU' \
    --body '{"deletable": true, "isWildcard": false, "roleName": "yFtJkbqu"}' \
    > test.out 2>&1
eval_tap $? 226 'AdminUpdateRoleV3' test.out

#- 227 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'ENTMmxGN' \
    > test.out 2>&1
eval_tap $? 227 'AdminGetRoleAdminStatusV3' test.out

#- 228 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'WPc69gMt' \
    > test.out 2>&1
eval_tap $? 228 'AdminUpdateAdminRoleStatusV3' test.out

#- 229 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'aseO7Nrk' \
    > test.out 2>&1
eval_tap $? 229 'AdminRemoveRoleAdminV3' test.out

#- 230 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'eVj5UAuv' \
    --after 'fRZedXAW' \
    --before 'oHpB2564' \
    --limit '7' \
    > test.out 2>&1
eval_tap $? 230 'AdminGetRoleManagersV3' test.out

#- 231 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'w2f0tr4K' \
    --body '{"managers": [{"displayName": "PIZNiGHr", "namespace": "VBxtHXMr", "userId": "PXiEH3VL"}, {"displayName": "j6E9Q56g", "namespace": "fFb2eurb", "userId": "LsoL9iXo"}, {"displayName": "1z8uz9rr", "namespace": "CikD0J4G", "userId": "TevdVQEB"}]}' \
    > test.out 2>&1
eval_tap $? 231 'AdminAddRoleManagersV3' test.out

#- 232 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId '4vDYBJnE' \
    --body '{"managers": [{"displayName": "p0oeGYEe", "namespace": "2Wjgzw51", "userId": "8sEl0tgv"}, {"displayName": "t8OkaZli", "namespace": "jNxJx9iJ", "userId": "0Y3BOQX2"}, {"displayName": "QGlW9rSp", "namespace": "bZd9Bf7v", "userId": "u51BoEVi"}]}' \
    > test.out 2>&1
eval_tap $? 232 'AdminRemoveRoleManagersV3' test.out

#- 233 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'eS05MQNK' \
    --after '1lr9HGbg' \
    --before 'SZIEumNT' \
    --limit '93' \
    > test.out 2>&1
eval_tap $? 233 'AdminGetRoleMembersV3' test.out

#- 234 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'pwSCICRj' \
    --body '{"members": [{"displayName": "29OOuNXc", "namespace": "UeLmbnBw", "userId": "AwRXwW7g"}, {"displayName": "QKzVk1bi", "namespace": "Da0oz4Xw", "userId": "Skna2F0j"}, {"displayName": "SADyZLnu", "namespace": "D2aeFKN2", "userId": "g3SmaxlV"}]}' \
    > test.out 2>&1
eval_tap $? 234 'AdminAddRoleMembersV3' test.out

#- 235 AdminRemoveRoleMembersV3
eval_tap 0 235 'AdminRemoveRoleMembersV3 # SKIP deprecated' test.out

#- 236 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'PuquhvYn' \
    --body '{"permissions": [{"action": 34, "resource": "X8UqEk4Z", "schedAction": 99, "schedCron": "VmL1P7T7", "schedRange": ["oegPfv9d", "0koP65vZ", "XZ0Wq7n1"]}, {"action": 19, "resource": "Na5pZFuh", "schedAction": 26, "schedCron": "uZFhJYQe", "schedRange": ["jBd7Fbbd", "COSloNfK", "opEBoZW4"]}, {"action": 88, "resource": "SoDqEOnA", "schedAction": 47, "schedCron": "2kDeVdek", "schedRange": ["CwzCwiY5", "MydO4i7h", "oupnk0Pe"]}]}' \
    > test.out 2>&1
eval_tap $? 236 'AdminUpdateRolePermissionsV3' test.out

#- 237 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'hRzTDean' \
    --body '{"permissions": [{"action": 20, "resource": "QZbD6xiU", "schedAction": 16, "schedCron": "gduij8NK", "schedRange": ["21ZUAhkO", "BuEv3K4n", "obO6Gn6u"]}, {"action": 28, "resource": "cenlyudY", "schedAction": 48, "schedCron": "x70hGL0W", "schedRange": ["PsJp8Ntp", "Z95BSbjH", "IeIlftzK"]}, {"action": 93, "resource": "BYYaYz29", "schedAction": 98, "schedCron": "S4EBJgmg", "schedRange": ["FDj9Kjyc", "oUF0JmwY", "Ctv3gmxR"]}]}' \
    > test.out 2>&1
eval_tap $? 237 'AdminAddRolePermissionsV3' test.out

#- 238 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'eydzKV9Q' \
    --body '["hD85WpZN", "wQJOCz9D", "qosQ5FJW"]' \
    > test.out 2>&1
eval_tap $? 238 'AdminDeleteRolePermissionsV3' test.out

#- 239 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '91' \
    --resource 'go2gLVM3' \
    --roleId 'VhJSkaCK' \
    > test.out 2>&1
eval_tap $? 239 'AdminDeleteRolePermissionV3' test.out

#- 240 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 240 'AdminGetMyUserV3' test.out

#- 241 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'rb6PLkIW' \
    --extendExp 'false' \
    --redirectUri 'wAR8nvPx' \
    --password 'IEwZm7UG' \
    --requestId 'Gr0YIs4f' \
    --userName '8exx3Ypv' \
    > test.out 2>&1
eval_tap $? 241 'UserAuthenticationV3' test.out

#- 242 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId 'cTI1XY6j' \
    --linkingToken 'zOc27y4X' \
    --password 'I97yacOi' \
    --username 'ZELhhAhT' \
    > test.out 2>&1
eval_tap $? 242 'AuthenticationWithPlatformLinkV3' test.out

#- 243 AuthenticateAndLinkForwardV3
samples/cli/sample-apps Iam authenticateAndLinkForwardV3 \
    --extendExp 'false' \
    --clientId 'xYXJKMEK' \
    --linkingToken 'wEzfEaiM' \
    --password 'KoZH5Fpb' \
    --username 'YdTvVt8g' \
    > test.out 2>&1
eval_tap $? 243 'AuthenticateAndLinkForwardV3' test.out

#- 244 PublicGetSystemConfigV3
samples/cli/sample-apps Iam publicGetSystemConfigV3 \
    > test.out 2>&1
eval_tap $? 244 'PublicGetSystemConfigV3' test.out

#- 245 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'P1RrkRCl' \
    --extendExp 'true' \
    --linkingToken 'N4Wzzfwz' \
    > test.out 2>&1
eval_tap $? 245 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 246 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --redirectUri '9g08pRts' \
    --state '5zNEv3mR' \
    --platformId 'LxcFk28K' \
    > test.out 2>&1
eval_tap $? 246 'RequestOneTimeLinkingCodeV3' test.out

#- 247 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'jtwEA5gi' \
    > test.out 2>&1
eval_tap $? 247 'ValidateOneTimeLinkingCodeV3' test.out

#- 248 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'ryDo5BLG' \
    --isTransient 'true' \
    --clientId 'WW6xbYfa' \
    --oneTimeLinkCode 'ZGk5LPq0' \
    > test.out 2>&1
eval_tap $? 248 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 249 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 249 'GetCountryLocationV3' test.out

#- 250 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 250 'Logout' test.out

#- 251 RequestTokenExchangeCodeV3
samples/cli/sample-apps Iam requestTokenExchangeCodeV3 \
    --namespace $AB_NAMESPACE \
    --codeChallenge 'm6kC4YAv' \
    --codeChallengeMethod 'S256' \
    --clientId 'd7zwU07a' \
    > test.out 2>&1
eval_tap $? 251 'RequestTokenExchangeCodeV3' test.out

#- 252 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'x1MIVU2S' \
    --userId 'jChIJ3oB' \
    --platformUserId 'QD2F7mTc' \
    > test.out 2>&1
eval_tap $? 252 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 253 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ixBAeO7R' \
    --includeGameNamespace 'false' \
    > test.out 2>&1
eval_tap $? 253 'RevokeUserV3' test.out

#- 254 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --blockedPlatformId 'gttVQQxN' \
    --codeChallenge '7sipmEeF' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'false' \
    --loginWebBased 'false' \
    --nonce 'zC3LmVKU' \
    --oneTimeLinkCode 'xrJEg6MV' \
    --redirectUri 'RZ2YaZFr' \
    --scope 'dDFln4z7' \
    --state 'ONLOn9gA' \
    --targetAuthPage '8mpL7qpF' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId 'kwGbSYQt' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 254 'AuthorizeV3' test.out

#- 255 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'Q50ENEdS' \
    > test.out 2>&1
eval_tap $? 255 'TokenIntrospectionV3' test.out

#- 256 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 256 'GetJWKSV3' test.out

#- 257 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId '5xb0KviP' \
    --factor '5MQtJOJr' \
    --mfaToken 'XB4Rf3oG' \
    > test.out 2>&1
eval_tap $? 257 'SendMFAAuthenticationCode' test.out

#- 258 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'VTi8CZO8' \
    --mfaToken 'nyVKeEwO' \
    > test.out 2>&1
eval_tap $? 258 'Change2faMethod' test.out

#- 259 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'sI0O5wE8' \
    --factor 'UDUOMCVL' \
    --mfaToken 'KP8nDZMI' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 259 'Verify2faCode' test.out

#- 260 Verify2faCodeForward
samples/cli/sample-apps Iam verify2faCodeForward \
    --defaultFactor 't7F5UBYa' \
    --factors 'FxVHsrU7' \
    --rememberDevice 'false' \
    --clientId 'oGyFMjVc' \
    --code 'xfPCb9ra' \
    --factor 'Oqzq97s2' \
    --mfaToken 'JS9wtWxG' \
    > test.out 2>&1
eval_tap $? 260 'Verify2faCodeForward' test.out

#- 261 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'BSgMBLsp' \
    --userId 'Xyez6J2i' \
    > test.out 2>&1
eval_tap $? 261 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 262 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'rgfk4LKV' \
    --clientId 'Nr2vd4CY' \
    --redirectUri '5G4WRNgy' \
    --requestId 'ot0sQS80' \
    > test.out 2>&1
eval_tap $? 262 'AuthCodeRequestV3' test.out

#- 263 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'pYDHfOLr' \
    --additionalData '31vVeAht' \
    --clientId 'inJfkFI9' \
    --createHeadless 'true' \
    --deviceId 'nzV2ZRyr' \
    --macAddress 'wEkqudQS' \
    --platformToken 'WUuCKBdB' \
    --serviceLabel '0.01949835977445169' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 263 'PlatformTokenGrantV3' test.out

#- 264 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 264 'GetRevocationListV3' test.out

#- 265 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token '3YOZ18YM' \
    > test.out 2>&1
eval_tap $? 265 'TokenRevocationV3' test.out

#- 266 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'GLQBReGU' \
    --simultaneousTicket 'F1QWwsAe' \
    --nativePlatform 'epicgames' \
    --nativePlatformTicket 'xNQXD0fh' \
    > test.out 2>&1
eval_tap $? 266 'SimultaneousLoginV3' test.out

#- 267 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData '5rvqcbDZ' \
    --clientId 'aFu4dPtF' \
    --clientSecret 'nUMiqZlY' \
    --code 'kXe2Pk0V' \
    --codeVerifier 'B4blIxM2' \
    --extendNamespace 'TiOmunLX' \
    --extendExp 'true' \
    --password 'dRwN3Jfx' \
    --redirectUri 'UbuP9Zf7' \
    --refreshToken '3qwrrNQa' \
    --scope 'ZpXmSpzO' \
    --username 'WZLyeEKQ' \
    --grantType 'authorization_code' \
    > test.out 2>&1
eval_tap $? 267 'TokenGrantV3' test.out

#- 268 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'VpfFEsCv' \
    > test.out 2>&1
eval_tap $? 268 'VerifyTokenV3' test.out

#- 269 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId '17AZUF0Q' \
    --code 'XLhWWqVv' \
    --error 'K8rk5Okz' \
    --openidAssocHandle 'l3NqqnGn' \
    --openidClaimedId 'Iht4ucJ3' \
    --openidIdentity 'Ge8QShGR' \
    --openidMode '9rtDNUg8' \
    --openidNs '2JPBxAav' \
    --openidOpEndpoint 'pKFHBhJd' \
    --openidResponseNonce 'NA7JTaXl' \
    --openidReturnTo 'gBrMJy1w' \
    --openidSig 'RTU5K2Tg' \
    --openidSigned 'URXsEge1' \
    --state 'dbZlqPce' \
    > test.out 2>&1
eval_tap $? 269 'PlatformAuthenticationV3' test.out

#- 270 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'yJsZov1F' \
    --platformToken 'fs3gn24G' \
    > test.out 2>&1
eval_tap $? 270 'PlatformTokenRefreshV3' test.out

#- 271 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'yMF2Lcjf' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetInputValidations' test.out

#- 272 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'oKHykaPU' \
    > test.out 2>&1
eval_tap $? 272 'PublicGetInputValidationByField' test.out

#- 273 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'gwJ9W3Kv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 273 'PublicGetCountryAgeRestrictionV3' test.out

#- 274 PublicGetConfigValueV3
samples/cli/sample-apps Iam publicGetConfigValueV3 \
    --configKey 'xhbxz4aW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 274 'PublicGetConfigValueV3' test.out

#- 275 PublicGetCountryListV3
samples/cli/sample-apps Iam publicGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 275 'PublicGetCountryListV3' test.out

#- 276 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 276 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 277 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'GDoG0ylp' \
    > test.out 2>&1
eval_tap $? 277 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 278 PublicListUserIDByPlatformUserIDsV3
eval_tap 0 278 'PublicListUserIDByPlatformUserIDsV3 # SKIP deprecated' test.out

#- 279 PublicGetUserByPlatformUserIDV3
eval_tap 0 279 'PublicGetUserByPlatformUserIDV3 # SKIP deprecated' test.out

#- 280 PublicGetProfileUpdateStrategyV3
samples/cli/sample-apps Iam publicGetProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'username' \
    > test.out 2>&1
eval_tap $? 280 'PublicGetProfileUpdateStrategyV3' test.out

#- 281 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId '0AYxmBpq' \
    > test.out 2>&1
eval_tap $? 281 'PublicGetAsyncStatus' test.out

#- 282 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'Uc3Myqks' \
    --limit '93' \
    --offset '71' \
    --platformBy 'vZGJVhBw' \
    --platformId '3G6eohfC' \
    --query 'dXmt08Jr' \
    > test.out 2>&1
eval_tap $? 282 'PublicSearchUserV3' test.out

#- 283 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "vI8kTWT3", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "Ype7fJnz", "policyId": "bGs8HWYV", "policyVersionId": "JSNiXsvN"}, {"isAccepted": false, "localizedPolicyVersionId": "MfL5NUTK", "policyId": "rV2sI21D", "policyVersionId": "BInlPopp"}, {"isAccepted": false, "localizedPolicyVersionId": "pGbcwc2D", "policyId": "96Po1Il6", "policyVersionId": "jCR10qVA"}], "authType": "a8Evj1aS", "code": "TLaLx8CS", "country": "qIYphm0C", "dateOfBirth": "CgpCKEmn", "displayName": "095Y86jl", "emailAddress": "ZI16twK1", "password": "CoRIc6tC", "reachMinimumAge": true, "uniqueDisplayName": "wnH6HBrP"}' \
    > test.out 2>&1
eval_tap $? 283 'PublicCreateUserV3' test.out

#- 284 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'qnAympe7' \
    --query 'EqfXZGEm' \
    > test.out 2>&1
eval_tap $? 284 'CheckUserAvailability' test.out

#- 285 PublicBulkGetUsers
eval_tap 0 285 'PublicBulkGetUsers # SKIP deprecated' test.out

#- 286 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "ayCBg2ow", "languageTag": "3bYlu1lk"}' \
    > test.out 2>&1
eval_tap $? 286 'PublicSendRegistrationCode' test.out

#- 287 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Qhav8Q9y", "emailAddress": "79oeSMlQ"}' \
    > test.out 2>&1
eval_tap $? 287 'PublicVerifyRegistrationCode' test.out

#- 288 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "qULQHemr", "languageTag": "RLytR993"}' \
    > test.out 2>&1
eval_tap $? 288 'PublicForgotPasswordV3' test.out

#- 289 PublicValidateUserInput
samples/cli/sample-apps Iam publicValidateUserInput \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "GLxx8eXf", "password": "xQBZltDr", "uniqueDisplayName": "FDps5sD5", "username": "tE91P36w"}' \
    > test.out 2>&1
eval_tap $? 289 'PublicValidateUserInput' test.out

#- 290 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'c5NdrGjY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 290 'GetAdminInvitationV3' test.out

#- 291 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'JMoKADg7' \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "l0NjNq3G", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "UwYx6HBg", "policyId": "hFQebiyO", "policyVersionId": "dRWUX59e"}, {"isAccepted": false, "localizedPolicyVersionId": "qXwr3zyh", "policyId": "c4OvvFzr", "policyVersionId": "FFiLDQIS"}, {"isAccepted": false, "localizedPolicyVersionId": "jzB7sk0Y", "policyId": "iTHfFtrD", "policyVersionId": "3995OzCa"}], "authType": "GNIgdmVy", "code": "NFosePfT", "country": "sBGQfjee", "dateOfBirth": "eEp1zcsy", "displayName": "2XI0z76L", "emailAddress": "yXwjx7NW", "password": "B4M8RYUg", "reachMinimumAge": false, "uniqueDisplayName": "nCv3P9R5"}' \
    > test.out 2>&1
eval_tap $? 291 'CreateUserFromInvitationV3' test.out

#- 292 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "6in36Sjs", "country": "XqOZDphm", "dateOfBirth": "QqIKtzC3", "displayName": "UK2Ie91S", "languageTag": "sdwTdmKa", "uniqueDisplayName": "1MNCqqVP", "userName": "apbCCjQw"}' \
    > test.out 2>&1
eval_tap $? 292 'UpdateUserV3' test.out

#- 293 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "i3KYt7Gx", "country": "wx87n1gq", "dateOfBirth": "qzqgOASC", "displayName": "3dvfwHtY", "languageTag": "Kgfjd6sr", "uniqueDisplayName": "9Hk8bfVo", "userName": "Tswqe9i3"}' \
    > test.out 2>&1
eval_tap $? 293 'PublicPartialUpdateUserV3' test.out

#- 294 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "9bnc34ny", "emailAddress": "znviXUoq", "languageTag": "RNSfjSrY", "upgradeToken": "ImwXBAYF"}' \
    > test.out 2>&1
eval_tap $? 294 'PublicSendVerificationCodeV3' test.out

#- 295 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "F6QnlT3f", "contactType": "1pRDdOSl", "languageTag": "OThAvPN2", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 295 'PublicUserVerificationV3' test.out

#- 296 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "1WAk3ohg", "country": "O5piyzSR", "dateOfBirth": "De80DdNE", "displayName": "ejqc67LQ", "emailAddress": "AWWIWu4u", "password": "ipEwQ2Ts", "uniqueDisplayName": "ZMjPBbn3", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 296 'PublicUpgradeHeadlessAccountV3' test.out

#- 297 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'true' \
    --body '{"emailAddress": "1wyCxoMW", "password": "5qNHzcRK"}' \
    > test.out 2>&1
eval_tap $? 297 'PublicVerifyHeadlessAccountV3' test.out

#- 298 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "6xBdH7L8", "mfaToken": "2fYR49Cf", "newPassword": "oGrBb6qW", "oldPassword": "LUR27EfS"}' \
    > test.out 2>&1
eval_tap $? 298 'PublicUpdatePasswordV3' test.out

#- 299 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace '2IbIPEYG' \
    > test.out 2>&1
eval_tap $? 299 'PublicCreateJusticeUser' test.out

#- 300 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'nooF6ffG' \
    --redirectUri 'ZEQosvg6' \
    --ticket 'IAbwTdrA' \
    > test.out 2>&1
eval_tap $? 300 'PublicPlatformLinkV3' test.out

#- 301 PublicPlatformUnlinkV3
eval_tap 0 301 'PublicPlatformUnlinkV3 # SKIP deprecated' test.out

#- 302 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'yklj5y5a' \
    > test.out 2>&1
eval_tap $? 302 'PublicPlatformUnlinkAllV3' test.out

#- 303 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'D65ODA9S' \
    --ticket '905WBKo9' \
    > test.out 2>&1
eval_tap $? 303 'PublicForcePlatformLinkV3' test.out

#- 304 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId '7drkHGuH' \
    --clientId '9ZLE4CJT' \
    --redirectUri '6io66Rhx' \
    > test.out 2>&1
eval_tap $? 304 'PublicWebLinkPlatform' test.out

#- 305 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'ut6DcP2w' \
    --code 'nLaq1IBK' \
    --state 'eCHEgRC6' \
    > test.out 2>&1
eval_tap $? 305 'PublicWebLinkPlatformEstablish' test.out

#- 306 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId '0GI9857L' \
    --code 'Uuti4GyO' \
    --state 'k7Pc7SWf' \
    > test.out 2>&1
eval_tap $? 306 'PublicProcessWebLinkPlatformV3' test.out

#- 307 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "usIhZsf0", "userIds": ["O1x0XjTb", "muC2e04z", "XF0br3cD"]}' \
    > test.out 2>&1
eval_tap $? 307 'PublicGetUsersPlatformInfosV3' test.out

#- 308 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "Bt1dVzSE", "code": "rNvGcDiY", "emailAddress": "FnLhauE0", "languageTag": "BAYCIjda", "newPassword": "eaYWxnI7"}' \
    > test.out 2>&1
eval_tap $? 308 'ResetPasswordV3' test.out

#- 309 PublicGetUserByUserIdV3
eval_tap 0 309 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 310 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'WWE9ayaW' \
    --activeOnly 'true' \
    --after 'p5tx1WPH' \
    --before 'ExehjPpf' \
    --limit '40' \
    > test.out 2>&1
eval_tap $? 310 'PublicGetUserBanHistoryV3' test.out

#- 311 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'mFogogFh' \
    > test.out 2>&1
eval_tap $? 311 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 312 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId '267nwJ7a' \
    > test.out 2>&1
eval_tap $? 312 'PublicGetUserInformationV3' test.out

#- 313 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'kJDVjGLI' \
    --after '0.8188973663606629' \
    --before '0.7942516561473523' \
    --limit '38' \
    > test.out 2>&1
eval_tap $? 313 'PublicGetUserLoginHistoriesV3' test.out

#- 314 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'tFgvh3p6' \
    --after 'qxLUUUSQ' \
    --before 'nUdApPWk' \
    --limit '24' \
    --platformId '3G0rJl6P' \
    > test.out 2>&1
eval_tap $? 314 'PublicGetUserPlatformAccountsV3' test.out

#- 315 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'uGr8wj6B' \
    > test.out 2>&1
eval_tap $? 315 'PublicListJusticePlatformAccountsV3' test.out

#- 316 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'hx0Ng2mD' \
    --body '{"platformId": "OZO1Z6yD", "platformUserId": "sW2XNxZ5"}' \
    > test.out 2>&1
eval_tap $? 316 'PublicLinkPlatformAccount' test.out

#- 317 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'Jl9DSNxA' \
    --body '{"chosenNamespaces": ["K9xCL60I", "s1PJoJZK", "fvsRbqJh"], "requestId": "pRi9QIii"}' \
    > test.out 2>&1
eval_tap $? 317 'PublicForceLinkPlatformWithProgression' test.out

#- 318 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '82VKeSwD' \
    > test.out 2>&1
eval_tap $? 318 'PublicGetPublisherUserV3' test.out

#- 319 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'g2H0gFJZ' \
    --password 'X2AFwC24' \
    > test.out 2>&1
eval_tap $? 319 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 320 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'mJYG7Ras' \
    --before '5tuOR620' \
    --isWildcard 'true' \
    --limit '62' \
    > test.out 2>&1
eval_tap $? 320 'PublicGetRolesV3' test.out

#- 321 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'izmd2GOe' \
    > test.out 2>&1
eval_tap $? 321 'PublicGetRoleV3' test.out

#- 322 PublicForgotPasswordWithoutNamespaceV3
samples/cli/sample-apps Iam publicForgotPasswordWithoutNamespaceV3 \
    --body '{"clientId": "tnDU3BuX", "emailAddress": "xR8UzhF8", "languageTag": "5qc4Pkqt"}' \
    > test.out 2>&1
eval_tap $? 322 'PublicForgotPasswordWithoutNamespaceV3' test.out

#- 323 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'true' \
    > test.out 2>&1
eval_tap $? 323 'PublicGetMyUserV3' test.out

#- 324 PublicSendCodeForwardV3
samples/cli/sample-apps Iam publicSendCodeForwardV3 \
    --body '{"context": "Nt7mkDJ0", "emailAddress": "SHkuWpuV", "languageTag": "PAbqjuAJ", "upgradeToken": "arOUMvhq"}' \
    > test.out 2>&1
eval_tap $? 324 'PublicSendCodeForwardV3' test.out

#- 325 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'vRtDNQxQ' \
    > test.out 2>&1
eval_tap $? 325 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 326 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["75BLek8N", "FCbPShkL", "AA1iIWbl"], "oneTimeLinkCode": "A9h3RIGO"}' \
    > test.out 2>&1
eval_tap $? 326 'LinkHeadlessAccountToMyAccountV3' test.out

#- 327 PublicGetMyRedirectionAfterLinkV3
samples/cli/sample-apps Iam publicGetMyRedirectionAfterLinkV3 \
    --oneTimeLinkCode 'MjSiOe0i' \
    > test.out 2>&1
eval_tap $? 327 'PublicGetMyRedirectionAfterLinkV3' test.out

#- 328 PublicGetMyProfileAllowUpdateStatusV3
samples/cli/sample-apps Iam publicGetMyProfileAllowUpdateStatusV3 \
    > test.out 2>&1
eval_tap $? 328 'PublicGetMyProfileAllowUpdateStatusV3' test.out

#- 329 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "OdCJatgL"}' \
    > test.out 2>&1
eval_tap $? 329 'PublicSendVerificationLinkV3' test.out

#- 330 PublicGetOpenidUserInfoV3
samples/cli/sample-apps Iam publicGetOpenidUserInfoV3 \
    > test.out 2>&1
eval_tap $? 330 'PublicGetOpenidUserInfoV3' test.out

#- 331 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code '5DBXZjut' \
    > test.out 2>&1
eval_tap $? 331 'PublicVerifyUserByLinkV3' test.out

#- 332 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'Nl5qGHqu' \
    --code 'Nf4aNRX3' \
    --error 'qVJbiCdw' \
    --state 'nTMqfP4B' \
    > test.out 2>&1
eval_tap $? 332 'PlatformAuthenticateSAMLV3Handler' test.out

#- 333 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'kBrn4Mzi' \
    --payload 'Pd4yXllZ' \
    > test.out 2>&1
eval_tap $? 333 'LoginSSOClient' test.out

#- 334 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'UxJzghGT' \
    > test.out 2>&1
eval_tap $? 334 'LogoutSSOClient' test.out

#- 335 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 'ZvQPK3jZ' \
    --code '1hMUm0dw' \
    > test.out 2>&1
eval_tap $? 335 'RequestTargetTokenResponseV3' test.out

#- 336 UpgradeAndAuthenticateForwardV3
samples/cli/sample-apps Iam upgradeAndAuthenticateForwardV3 \
    --clientId 'x8jIyWBN' \
    --upgradeSuccessToken 'VhPVj1by' \
    > test.out 2>&1
eval_tap $? 336 'UpgradeAndAuthenticateForwardV3' test.out

#- 337 AdminListInvitationHistoriesV4
samples/cli/sample-apps Iam adminListInvitationHistoriesV4 \
    --limit '26' \
    --namespace 'Ef1vI6MM' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 337 'AdminListInvitationHistoriesV4' test.out

#- 338 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId '9YvYE0SX' \
    > test.out 2>&1
eval_tap $? 338 'AdminGetDevicesByUserV4' test.out

#- 339 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'RPBHbvO5' \
    --endDate '1fbMfWGl' \
    --limit '86' \
    --offset '51' \
    --startDate 'G7Qu96jm' \
    > test.out 2>&1
eval_tap $? 339 'AdminGetBannedDevicesV4' test.out

#- 340 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'kJaQKrJo' \
    > test.out 2>&1
eval_tap $? 340 'AdminGetUserDeviceBansV4' test.out

#- 341 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "JvEyKqdR", "deviceId": "9EP76paR", "deviceType": "2pSMMIok", "enabled": false, "endDate": "2Mom8GDQ", "ext": {"IR59hqZV": {}, "jLJbbcxC": {}, "eD5tSAkv": {}}, "reason": "QYjPthAs"}' \
    > test.out 2>&1
eval_tap $? 341 'AdminBanDeviceV4' test.out

#- 342 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'P0rSr8Vt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 342 'AdminGetDeviceBanV4' test.out

#- 343 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId '8HzWDc0u' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 343 'AdminUpdateDeviceBanV4' test.out

#- 344 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate '2t5a3NDF' \
    --startDate '9CNF5hrJ' \
    --deviceType 'Jwti1Qu7' \
    > test.out 2>&1
eval_tap $? 344 'AdminGenerateReportV4' test.out

#- 345 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 345 'AdminGetDeviceTypesV4' test.out

#- 346 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId '9eiXScVI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 346 'AdminGetDeviceBansV4' test.out

#- 347 AdminDecryptDeviceV4
eval_tap 0 347 'AdminDecryptDeviceV4 # SKIP deprecated' test.out

#- 348 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'IzMBUXNy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 348 'AdminUnbanDeviceV4' test.out

#- 349 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'HX0RwS6r' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 349 'AdminGetUsersByDeviceV4' test.out

#- 350 AdminGetNamespaceInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 350 'AdminGetNamespaceInvitationHistoryV4' test.out

#- 351 AdminGetNamespaceUserInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceUserInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 351 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 352 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "SR31cH4D", "policyId": "IDeMxpCj", "policyVersionId": "DdWagAYU"}, {"isAccepted": false, "localizedPolicyVersionId": "skw0kTlZ", "policyId": "tecab3YS", "policyVersionId": "13sk71ET"}, {"isAccepted": true, "localizedPolicyVersionId": "VW2lrP2T", "policyId": "R65eEnLz", "policyVersionId": "lM7SyObU"}], "count": 6, "userInfo": {"country": "FdMtWDIU"}}' \
    > test.out 2>&1
eval_tap $? 352 'AdminCreateTestUsersV4' test.out

#- 353 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "QaXYpVAt", "policyId": "fnKYj0Bd", "policyVersionId": "G3tdGOsG"}, {"isAccepted": true, "localizedPolicyVersionId": "Kc1Uw6X6", "policyId": "nHAHSrOt", "policyVersionId": "bhxEmSR9"}, {"isAccepted": true, "localizedPolicyVersionId": "rPIDp90p", "policyId": "7Us6bk34", "policyVersionId": "0XhOcHPg"}], "authType": "EMAILPASSWD", "code": "RxUWGb8b", "country": "S7smHy2n", "dateOfBirth": "dswwpFR6", "displayName": "Mi9CXrEa", "emailAddress": "yzroD6AT", "password": "zIKYWS4E", "passwordMD5Sum": "YRIIlBuB", "reachMinimumAge": true, "uniqueDisplayName": "fBJqTDnF", "username": "T9crvYky"}' \
    > test.out 2>&1
eval_tap $? 353 'AdminCreateUserV4' test.out

#- 354 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": true, "userIds": ["dHtIeQyN", "UUsezhPJ", "WKF6uSFt"]}' \
    > test.out 2>&1
eval_tap $? 354 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 355 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["koKSoznH", "qt9ZKids", "BLBbszJv"]}' \
    > test.out 2>&1
eval_tap $? 355 'AdminBulkCheckValidUserIDV4' test.out

#- 356 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'vcCFxlId' \
    --body '{"avatarUrl": "HT0npSxc", "country": "e1hDgOhw", "dateOfBirth": "DdgPFnDU", "displayName": "2LNE4gks", "languageTag": "FtpvSAEY", "skipLoginQueue": false, "tags": ["SMdDMECa", "8SkGVcpI", "SQu4nNVN"], "uniqueDisplayName": "nCFNScCZ", "userName": "0VUDkwkw"}' \
    > test.out 2>&1
eval_tap $? 356 'AdminUpdateUserV4' test.out

#- 357 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId '8OkoqmxE' \
    --body '{"code": "i6ak1cHe", "emailAddress": "oXild2eN"}' \
    > test.out 2>&1
eval_tap $? 357 'AdminUpdateUserEmailAddressV4' test.out

#- 358 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'PlmDWUKC' \
    --body '{"factor": "M8VEeshM", "mfaToken": "hIemCR3q"}' \
    > test.out 2>&1
eval_tap $? 358 'AdminDisableUserMFAV4' test.out

#- 359 AdminGetUserMFAStatusV4
samples/cli/sample-apps Iam adminGetUserMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    --userId 'hpsb7qPr' \
    > test.out 2>&1
eval_tap $? 359 'AdminGetUserMFAStatusV4' test.out

#- 360 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'PjACwQP1' \
    > test.out 2>&1
eval_tap $? 360 'AdminListUserRolesV4' test.out

#- 361 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '3sRgzqB9' \
    --body '{"assignedNamespaces": ["ArIToIc3", "urvD4lIU", "0ztvzYSo"], "roleId": "oCGhmR2A"}' \
    > test.out 2>&1
eval_tap $? 361 'AdminUpdateUserRoleV4' test.out

#- 362 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'AXERmgWT' \
    --body '{"assignedNamespaces": ["UYw0LxW6", "n3jFtHbC", "aUTUhR1g"], "roleId": "piTvL8fF"}' \
    > test.out 2>&1
eval_tap $? 362 'AdminAddUserRoleV4' test.out

#- 363 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'i8zV8Adx' \
    --body '{"assignedNamespaces": ["rRbxxGAx", "9zmed21n", "ORPtxoHM"], "roleId": "VC4BjZqN"}' \
    > test.out 2>&1
eval_tap $? 363 'AdminRemoveUserRoleV4' test.out

#- 364 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'true' \
    --isWildcard 'true' \
    --limit '54' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 364 'AdminGetRolesV4' test.out

#- 365 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "NMc7BjdI"}' \
    > test.out 2>&1
eval_tap $? 365 'AdminCreateRoleV4' test.out

#- 366 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'MEiBB7Qc' \
    > test.out 2>&1
eval_tap $? 366 'AdminGetRoleV4' test.out

#- 367 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'hL74Tolf' \
    > test.out 2>&1
eval_tap $? 367 'AdminDeleteRoleV4' test.out

#- 368 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'kGmnhYnn' \
    --body '{"adminRole": false, "deletable": true, "isWildcard": true, "roleName": "4BRclhe8"}' \
    > test.out 2>&1
eval_tap $? 368 'AdminUpdateRoleV4' test.out

#- 369 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'xTfbdzVr' \
    --body '{"permissions": [{"action": 87, "resource": "NpjTQVH9", "schedAction": 40, "schedCron": "1XK99Z4d", "schedRange": ["qx0Smdwg", "WhAmXkP7", "ebB1mrq1"]}, {"action": 92, "resource": "R6wkHkpD", "schedAction": 16, "schedCron": "j03YFZHN", "schedRange": ["ZMWbE04h", "jlmld1XP", "L4D0tg6v"]}, {"action": 71, "resource": "mytbpdVu", "schedAction": 65, "schedCron": "anx3CbFq", "schedRange": ["d6y4HJ2M", "1JCBCIRE", "MIWj4WVF"]}]}' \
    > test.out 2>&1
eval_tap $? 369 'AdminUpdateRolePermissionsV4' test.out

#- 370 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'uKkovXsg' \
    --body '{"permissions": [{"action": 42, "resource": "EcDHc4AU", "schedAction": 26, "schedCron": "I86Dpge6", "schedRange": ["HMfybaSf", "WbfSEVA2", "xM32syCb"]}, {"action": 51, "resource": "SVpjl2ab", "schedAction": 76, "schedCron": "gjIWWV67", "schedRange": ["6fKLX3fz", "zDOprikR", "XdOLGuqC"]}, {"action": 22, "resource": "IaVxgNBv", "schedAction": 99, "schedCron": "c5PRNvR2", "schedRange": ["l1TXLmvS", "ZXDfmCHX", "fsC4hZCP"]}]}' \
    > test.out 2>&1
eval_tap $? 370 'AdminAddRolePermissionsV4' test.out

#- 371 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'zd6newwj' \
    --body '["TaYzpRgg", "sPUWuFGo", "xRAWsYNE"]' \
    > test.out 2>&1
eval_tap $? 371 'AdminDeleteRolePermissionsV4' test.out

#- 372 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'qWcyhMmg' \
    --after 'hKPSOeNJ' \
    --before 'vkdoiDsU' \
    --limit '54' \
    > test.out 2>&1
eval_tap $? 372 'AdminListAssignedUsersV4' test.out

#- 373 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'cBqYg2r7' \
    --body '{"assignedNamespaces": ["a1kCF1YM", "oNWSWxz3", "0C7nB5Kh"], "namespace": "wBgwc3LT", "userId": "cxsFBcOE"}' \
    > test.out 2>&1
eval_tap $? 373 'AdminAssignUserToRoleV4' test.out

#- 374 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'RAdq4Vt4' \
    --body '{"namespace": "Iabh7j39", "userId": "20e13CWx"}' \
    > test.out 2>&1
eval_tap $? 374 'AdminRevokeUserFromRoleV4' test.out

#- 375 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["FTced4jP", "RwAX0pRA", "kbdfzjG5"], "emailAddresses": ["5p7xedcd", "ATqTdvnH", "y57J0GpZ"], "isAdmin": false, "isNewStudio": false, "languageTag": "GkwHACCf", "namespace": "3UMRJUHE", "roleId": "E4Aq6Ggb"}' \
    > test.out 2>&1
eval_tap $? 375 'AdminInviteUserNewV4' test.out

#- 376 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "90qN13NZ", "country": "tCRbqYQ7", "dateOfBirth": "g4MrxTIl", "displayName": "fBEccml5", "languageTag": "KM0JVp2b", "skipLoginQueue": false, "tags": ["sF0hwO1t", "XsZMWQ95", "fIJoASOL"], "uniqueDisplayName": "wIAtw71h", "userName": "MmyHBlWy"}' \
    > test.out 2>&1
eval_tap $? 376 'AdminUpdateMyUserV4' test.out

#- 377 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    --body '{"factor": "SSz1o8A5", "mfaToken": "Iss3odSV"}' \
    > test.out 2>&1
eval_tap $? 377 'AdminDisableMyAuthenticatorV4' test.out

#- 378 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'hoQ03uWa' \
    > test.out 2>&1
eval_tap $? 378 'AdminEnableMyAuthenticatorV4' test.out

#- 379 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 379 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 380 AdminGetMyBackupCodesV4
eval_tap 0 380 'AdminGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 381 AdminGenerateMyBackupCodesV4
eval_tap 0 381 'AdminGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 382 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    --body '{"factor": "nC8pehER", "mfaToken": "jjGdjJ5l"}' \
    > test.out 2>&1
eval_tap $? 382 'AdminDisableMyBackupCodesV4' test.out

#- 383 AdminDownloadMyBackupCodesV4
eval_tap 0 383 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 384 AdminEnableMyBackupCodesV4
eval_tap 0 384 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 385 AdminGetBackupCodesV4
samples/cli/sample-apps Iam adminGetBackupCodesV4 \
    --languageTag 'spxIo2pc' \
    > test.out 2>&1
eval_tap $? 385 'AdminGetBackupCodesV4' test.out

#- 386 AdminGenerateBackupCodesV4
samples/cli/sample-apps Iam adminGenerateBackupCodesV4 \
    --languageTag 'r1TFhz9W' \
    > test.out 2>&1
eval_tap $? 386 'AdminGenerateBackupCodesV4' test.out

#- 387 AdminEnableBackupCodesV4
samples/cli/sample-apps Iam adminEnableBackupCodesV4 \
    --languageTag '4cPmal0u' \
    > test.out 2>&1
eval_tap $? 387 'AdminEnableBackupCodesV4' test.out

#- 388 AdminChallengeMyMFAV4
samples/cli/sample-apps Iam adminChallengeMyMFAV4 \
    --code 'XFhDNWdJ' \
    --factor 'gwDMcrrM' \
    > test.out 2>&1
eval_tap $? 388 'AdminChallengeMyMFAV4' test.out

#- 389 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    --action 'B7i12P9C' \
    --languageTag 'd5XrK1sh' \
    > test.out 2>&1
eval_tap $? 389 'AdminSendMyMFAEmailCodeV4' test.out

#- 390 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    --body '{"factor": "zEqWdPCk", "mfaToken": "OlFKXa86"}' \
    > test.out 2>&1
eval_tap $? 390 'AdminDisableMyEmailV4' test.out

#- 391 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code '0JzXXwHK' \
    > test.out 2>&1
eval_tap $? 391 'AdminEnableMyEmailV4' test.out

#- 392 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 392 'AdminGetMyEnabledFactorsV4' test.out

#- 393 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'HsIiwd8r' \
    > test.out 2>&1
eval_tap $? 393 'AdminMakeFactorMyDefaultV4' test.out

#- 394 AdminGetMyOwnMFAStatusV4
samples/cli/sample-apps Iam adminGetMyOwnMFAStatusV4 \
    > test.out 2>&1
eval_tap $? 394 'AdminGetMyOwnMFAStatusV4' test.out

#- 395 AdminGetMyMFAStatusV4
eval_tap 0 395 'AdminGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 396 AdminInviteUserV4
eval_tap 0 396 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 397 AuthenticationWithPlatformLinkV4
samples/cli/sample-apps Iam authenticationWithPlatformLinkV4 \
    --extendExp 'true' \
    --clientId 'xEUxho5z' \
    --linkingToken '88PVojo8' \
    --password 'ZPa3MNvz' \
    --username 'btrABMEL' \
    > test.out 2>&1
eval_tap $? 397 'AuthenticationWithPlatformLinkV4' test.out

#- 398 GenerateTokenByNewHeadlessAccountV4
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV4 \
    --additionalData 'ZbKCol19' \
    --extendExp 'true' \
    --linkingToken 'vHowdkwL' \
    > test.out 2>&1
eval_tap $? 398 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 399 Verify2faCodeV4
samples/cli/sample-apps Iam verify2faCodeV4 \
    --code 'o5KSo57B' \
    --factor 'Zs4dVPbl' \
    --mfaToken 'lZrAmgzc' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 399 'Verify2faCodeV4' test.out

#- 400 PlatformTokenGrantV4
samples/cli/sample-apps Iam platformTokenGrantV4 \
    --platformId 'pQ14iahC' \
    --codeChallenge 'jkoYKntj' \
    --codeChallengeMethod 'S256' \
    --additionalData 'DHkJx54K' \
    --clientId 'zJjl917t' \
    --createHeadless 'false' \
    --deviceId 'oQU2OoCZ' \
    --macAddress 'JfmefwLK' \
    --platformToken 'TyASG3vk' \
    --serviceLabel '0.4066104018629355' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 400 'PlatformTokenGrantV4' test.out

#- 401 SimultaneousLoginV4
samples/cli/sample-apps Iam simultaneousLoginV4 \
    --codeChallenge 'XtgivyXe' \
    --codeChallengeMethod 'plain' \
    --simultaneousPlatform 'c3fqZbXH' \
    --simultaneousTicket 'DhktmtHk' \
    --nativePlatform 'steam' \
    --nativePlatformTicket 'y8I2YdUf' \
    > test.out 2>&1
eval_tap $? 401 'SimultaneousLoginV4' test.out

#- 402 TokenGrantV4
samples/cli/sample-apps Iam tokenGrantV4 \
    --codeChallenge 'eDNLghar' \
    --codeChallengeMethod 'S256' \
    --additionalData '9ENviCX4' \
    --clientId 'xVqcqEqc' \
    --clientSecret 'w5axaJku' \
    --code 'rDhGggBE' \
    --codeVerifier 'WO2YEhI3' \
    --extendNamespace 'zLNXON9i' \
    --extendExp 'false' \
    --loginQueueTicket 'X3YmPJUV' \
    --password 'EeMefzbQ' \
    --redirectUri '7qyoeUdd' \
    --refreshToken 'AaysUvjw' \
    --scope 'ViqBVx5U' \
    --username 'MOq7nj7n' \
    --grantType 'password' \
    > test.out 2>&1
eval_tap $? 402 'TokenGrantV4' test.out

#- 403 RequestTargetTokenResponseV4
samples/cli/sample-apps Iam requestTargetTokenResponseV4 \
    --additionalData 'qWl1UNdF' \
    --code 'NqV91w53' \
    > test.out 2>&1
eval_tap $? 403 'RequestTargetTokenResponseV4' test.out

#- 404 PublicListUserIDByPlatformUserIDsV4
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV4 \
    --namespace $AB_NAMESPACE \
    --platformId '486CQDmc' \
    --rawPUID 'false' \
    --body '{"pidType": "BQZOWgLz", "platformUserIds": ["SrJjakqR", "TmgURTV6", "0YIPTkVC"]}' \
    > test.out 2>&1
eval_tap $? 404 'PublicListUserIDByPlatformUserIDsV4' test.out

#- 405 PublicGetUserByPlatformUserIDV4
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'JZxk9v5r' \
    --platformUserId 'hnTgJWJG' \
    > test.out 2>&1
eval_tap $? 405 'PublicGetUserByPlatformUserIDV4' test.out

#- 406 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "QOcNzdOS", "policyId": "PcUxd3eq", "policyVersionId": "89N3qHiF"}, {"isAccepted": true, "localizedPolicyVersionId": "bbwh8Ph3", "policyId": "kuBZzYcP", "policyVersionId": "3bb38VJb"}, {"isAccepted": true, "localizedPolicyVersionId": "WJCtsB7H", "policyId": "xZRl2mnU", "policyVersionId": "WPh3a6Ib"}], "authType": "EMAILPASSWD", "country": "3x24nSbV", "dateOfBirth": "NWaNlsQs", "displayName": "2Mcj9LOq", "emailAddress": "ws6JXNlM", "password": "YTtHiMlu", "passwordMD5Sum": "7r1EOODV", "uniqueDisplayName": "H1DcbZjI", "username": "HV1SVdyb", "verified": false}' \
    > test.out 2>&1
eval_tap $? 406 'PublicCreateTestUserV4' test.out

#- 407 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "qYBJOA1g", "policyId": "7AQnUAl5", "policyVersionId": "5QzpSAcu"}, {"isAccepted": true, "localizedPolicyVersionId": "zHLCWXKN", "policyId": "Q2WMKELb", "policyVersionId": "BKJXpLSL"}, {"isAccepted": false, "localizedPolicyVersionId": "uxir6m4q", "policyId": "VcmlimcC", "policyVersionId": "5nlXJltS"}], "authType": "EMAILPASSWD", "code": "KPjwStl3", "country": "8bdLholc", "dateOfBirth": "1e20rdfR", "displayName": "3yG0rUHQ", "emailAddress": "vf6zgEEF", "password": "Xi0IgLVw", "passwordMD5Sum": "HlePGXmy", "reachMinimumAge": true, "uniqueDisplayName": "tNaOYD24", "username": "5acAtR5y"}' \
    > test.out 2>&1
eval_tap $? 407 'PublicCreateUserV4' test.out

#- 408 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'oIndAWwL' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "Xy72Jv8w", "policyId": "JeS3Wq6s", "policyVersionId": "xudGp6xW"}, {"isAccepted": false, "localizedPolicyVersionId": "JGKRaauQ", "policyId": "D4spenbM", "policyVersionId": "924Y0RJE"}, {"isAccepted": true, "localizedPolicyVersionId": "GWjGgIrL", "policyId": "gV6cX4dp", "policyVersionId": "cnE1U2jP"}], "authType": "EMAILPASSWD", "code": "9kM496PR", "country": "ViJ7m6nj", "dateOfBirth": "hDqmNZbF", "displayName": "DHAU44K0", "emailAddress": "zB4REWRg", "password": "WEzQgkjr", "passwordMD5Sum": "CTSSJpja", "reachMinimumAge": true, "uniqueDisplayName": "odNwfx4g", "username": "oQsBHKwl"}' \
    > test.out 2>&1
eval_tap $? 408 'CreateUserFromInvitationV4' test.out

#- 409 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "WiKCacCn", "country": "Vh7KWXCF", "dateOfBirth": "weIYXXdu", "displayName": "TIzEAJli", "languageTag": "8vBamc2t", "uniqueDisplayName": "hYaC2Dch", "userName": "iHXQhHVJ"}' \
    > test.out 2>&1
eval_tap $? 409 'PublicUpdateUserV4' test.out

#- 410 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "8KsWsm6y", "emailAddress": "dSyk4Dj0"}' \
    > test.out 2>&1
eval_tap $? 410 'PublicUpdateUserEmailAddressV4' test.out

#- 411 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "e4E7Bv8m", "country": "aXWlm5Wj", "dateOfBirth": "doQ82H7S", "displayName": "z7849bSR", "emailAddress": "UaBjtVB1", "password": "f815kECU", "reachMinimumAge": true, "uniqueDisplayName": "hQCjAIgS", "username": "qRkjiZtQ", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 411 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 412 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"dateOfBirth": "FHpT8BgJ", "displayName": "eRtc1Vs6", "emailAddress": "oKFrHeP6", "password": "86eI8zEJ", "uniqueDisplayName": "twfwd06X", "username": "JSsRVA6s"}' \
    > test.out 2>&1
eval_tap $? 412 'PublicUpgradeHeadlessAccountV4' test.out

#- 413 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "2guaWoI3", "mfaToken": "u4Anh1g2"}' \
    > test.out 2>&1
eval_tap $? 413 'PublicDisableMyAuthenticatorV4' test.out

#- 414 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'MrCu4Q9Z' \
    > test.out 2>&1
eval_tap $? 414 'PublicEnableMyAuthenticatorV4' test.out

#- 415 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 415 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 416 PublicGetMyBackupCodesV4
eval_tap 0 416 'PublicGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 417 PublicGenerateMyBackupCodesV4
eval_tap 0 417 'PublicGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 418 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "hiHpAp7j", "mfaToken": "dSkjcaao"}' \
    > test.out 2>&1
eval_tap $? 418 'PublicDisableMyBackupCodesV4' test.out

#- 419 PublicDownloadMyBackupCodesV4
eval_tap 0 419 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 420 PublicEnableMyBackupCodesV4
eval_tap 0 420 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 421 PublicGetBackupCodesV4
samples/cli/sample-apps Iam publicGetBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'sS9MSHaw' \
    > test.out 2>&1
eval_tap $? 421 'PublicGetBackupCodesV4' test.out

#- 422 PublicGenerateBackupCodesV4
samples/cli/sample-apps Iam publicGenerateBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'd5UyXiiV' \
    > test.out 2>&1
eval_tap $? 422 'PublicGenerateBackupCodesV4' test.out

#- 423 PublicEnableBackupCodesV4
samples/cli/sample-apps Iam publicEnableBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'jPwkbAv7' \
    > test.out 2>&1
eval_tap $? 423 'PublicEnableBackupCodesV4' test.out

#- 424 PublicChallengeMyMFAV4
samples/cli/sample-apps Iam publicChallengeMyMFAV4 \
    --namespace $AB_NAMESPACE \
    --code 'Rnh1ysMM' \
    --factor 'QOPaqMye' \
    > test.out 2>&1
eval_tap $? 424 'PublicChallengeMyMFAV4' test.out

#- 425 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 425 'PublicRemoveTrustedDeviceV4' test.out

#- 426 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    --action 'WtzSIg5I' \
    --languageTag 'joAGwGoT' \
    > test.out 2>&1
eval_tap $? 426 'PublicSendMyMFAEmailCodeV4' test.out

#- 427 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "DzOlQBVM", "mfaToken": "a81044UW"}' \
    > test.out 2>&1
eval_tap $? 427 'PublicDisableMyEmailV4' test.out

#- 428 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'axZUEzYx' \
    > test.out 2>&1
eval_tap $? 428 'PublicEnableMyEmailV4' test.out

#- 429 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 429 'PublicGetMyEnabledFactorsV4' test.out

#- 430 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'Vef7ckiS' \
    > test.out 2>&1
eval_tap $? 430 'PublicMakeFactorMyDefaultV4' test.out

#- 431 PublicGetMyOwnMFAStatusV4
samples/cli/sample-apps Iam publicGetMyOwnMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 431 'PublicGetMyOwnMFAStatusV4' test.out

#- 432 PublicGetMyMFAStatusV4
eval_tap 0 432 'PublicGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 433 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId '0q0PZjsh' \
    > test.out 2>&1
eval_tap $? 433 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 434 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "y1ZDdpkg", "emailAddress": "TZaGUOBL", "languageTag": "u9x1HrgG", "namespace": "FiZQgWJp", "namespaceDisplayName": "5aX8HZ5n"}' \
    > test.out 2>&1
eval_tap $? 434 'PublicInviteUserV4' test.out

#- 435 PublicUpgradeHeadlessWithCodeV4Forward
samples/cli/sample-apps Iam publicUpgradeHeadlessWithCodeV4Forward \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "yIia032T", "policyId": "vEZZSBBd", "policyVersionId": "NQygYPzZ"}, {"isAccepted": true, "localizedPolicyVersionId": "CyL4u59C", "policyId": "cbTz1AOe", "policyVersionId": "91yWrpDv"}, {"isAccepted": false, "localizedPolicyVersionId": "yO9o7BZh", "policyId": "1iCbsFIO", "policyVersionId": "iwsUX1fq"}], "code": "KjLEfvwM", "country": "IuPgZLjV", "dateOfBirth": "kNqeXjnN", "displayName": "0lgFdL1y", "emailAddress": "cJ9Cn2mG", "password": "SsHS9Wa9", "reachMinimumAge": true, "uniqueDisplayName": "VYLDdirr", "username": "TXdRF3kX", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 435 'PublicUpgradeHeadlessWithCodeV4Forward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE