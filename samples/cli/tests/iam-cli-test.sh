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
echo "1..404"

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
    --forceDelete 'false' \
    --body '{"modules": [{"docLink": "mJBjFxDe", "groups": [{"group": "vFEUosLV", "groupId": "QHi94h3H", "permissions": [{"allowedActions": [53, 71, 51], "resource": "WiUcuIfR"}, {"allowedActions": [42, 58, 29], "resource": "VWsp5w6I"}, {"allowedActions": [0, 32, 65], "resource": "Nc5WsUVO"}]}, {"group": "OhCr1HPh", "groupId": "ofckmi4Q", "permissions": [{"allowedActions": [61, 31, 31], "resource": "qKRWpwkt"}, {"allowedActions": [68, 69, 3], "resource": "MaTRR9ms"}, {"allowedActions": [46, 81, 64], "resource": "48AS66PM"}]}, {"group": "HmbMSMqi", "groupId": "8SqMbBaU", "permissions": [{"allowedActions": [58, 93, 69], "resource": "RUg3S5HH"}, {"allowedActions": [18, 67, 69], "resource": "KONMOhsq"}, {"allowedActions": [35, 49, 48], "resource": "jga8GPiE"}]}], "module": "IiFLqIHw", "moduleId": "K3i93qqJ"}, {"docLink": "GKWjzT9D", "groups": [{"group": "pZwnjhA9", "groupId": "kc1pfySw", "permissions": [{"allowedActions": [32, 33, 21], "resource": "SdXZ5fAv"}, {"allowedActions": [29, 34, 42], "resource": "pRwbaNoZ"}, {"allowedActions": [53, 71, 34], "resource": "xjhy2GeA"}]}, {"group": "3PP8O8Ls", "groupId": "8nRDLZ3l", "permissions": [{"allowedActions": [77, 81, 9], "resource": "XT2ajs9C"}, {"allowedActions": [97, 77, 0], "resource": "xUuVGwTp"}, {"allowedActions": [6, 81, 57], "resource": "wi9emyFt"}]}, {"group": "YbxvY3jd", "groupId": "aSXQHe48", "permissions": [{"allowedActions": [53, 62, 17], "resource": "xLxRyfDt"}, {"allowedActions": [42, 15, 73], "resource": "t7UHn0pc"}, {"allowedActions": [6, 28, 63], "resource": "nBkPatAD"}]}], "module": "35xVhSB6", "moduleId": "2FI2wx7m"}, {"docLink": "3Xatzdcp", "groups": [{"group": "F9ESzaOt", "groupId": "DfuOfvGm", "permissions": [{"allowedActions": [71, 4, 99], "resource": "slwkkawM"}, {"allowedActions": [81, 65, 0], "resource": "c0ON8JN7"}, {"allowedActions": [66, 51, 84], "resource": "0U6V0roF"}]}, {"group": "hUjFli07", "groupId": "yDRLm3aE", "permissions": [{"allowedActions": [28, 91, 7], "resource": "dtkUqzuG"}, {"allowedActions": [56, 79, 59], "resource": "EThoudNu"}, {"allowedActions": [38, 58, 58], "resource": "pQKHXWDq"}]}, {"group": "A0tGXsip", "groupId": "1xnnKxaT", "permissions": [{"allowedActions": [4, 87, 35], "resource": "kim32bvg"}, {"allowedActions": [79, 42, 33], "resource": "i6VSV0WL"}, {"allowedActions": [35, 23, 33], "resource": "k0cyBaaD"}]}], "module": "VX21zv3w", "moduleId": "WHjhMJyw"}]}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
samples/cli/sample-apps Iam adminDeleteConfigPermissionsByGroup \
    --forceDelete 'true' \
    --body '{"groupId": "b3qpqz9I", "moduleId": "k6LAjlK4"}' \
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
    --body '[{"field": "yLutng0L", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["NOTqT1VJ", "skgPmXlB", "4UWcL92C"], "preferRegex": false, "regex": "BHqUvNmQ"}, "blockedWord": ["WZIQMMzD", "qbIJptbh", "DwaYXFLH"], "description": [{"language": "A2t4TJG1", "message": ["QPrhK7OC", "axxZLvHt", "sxJKADWd"]}, {"language": "2irTMHoq", "message": ["XK9yOTcI", "47IQ2ATy", "6BGs6ziL"]}, {"language": "CJUf2GiR", "message": ["j8EyMFGN", "yabOfX7X", "vG3fPMEX"]}], "isCustomRegex": false, "letterCase": "IxnWQ9LX", "maxLength": 63, "maxRepeatingAlphaNum": 6, "maxRepeatingSpecialCharacter": 39, "minCharType": 42, "minLength": 42, "profanityFilter": "Zlrkruku", "regex": "A8OjAFXv", "specialCharacterLocation": "UaioQAce", "specialCharacters": ["CVmmDXXk", "Z7Xtdc3J", "dsB2HAEC"]}}, {"field": "vY1JTYZZ", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["1gcgyYWq", "1oiUkGDq", "r0TpHEre"], "preferRegex": false, "regex": "rBiBkE8f"}, "blockedWord": ["ycDtikGk", "etKhRMfp", "tgXXLhUZ"], "description": [{"language": "Mdb2mD8w", "message": ["6VWnpVoB", "fM8uJvIN", "WCMhV6eH"]}, {"language": "HlYR1swo", "message": ["fQxWm5XC", "8afMp4BW", "IKA41w3o"]}, {"language": "WlV7K90K", "message": ["ZW4k3Tza", "fgOCCe2B", "S0dOJbCQ"]}], "isCustomRegex": false, "letterCase": "FFamW6oI", "maxLength": 100, "maxRepeatingAlphaNum": 42, "maxRepeatingSpecialCharacter": 72, "minCharType": 30, "minLength": 47, "profanityFilter": "lVoexI1q", "regex": "5NHccTVZ", "specialCharacterLocation": "rh1Y1e3B", "specialCharacters": ["Asbu7tf2", "C16WzFgZ", "QuJFhQ4Z"]}}, {"field": "pdHlcG2J", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["h5v7QkOd", "jZ8t9QpZ", "Q0cGK4DR"], "preferRegex": true, "regex": "yahead9o"}, "blockedWord": ["rk4oLB1y", "vTj9Qa4r", "qCNX25DZ"], "description": [{"language": "PbhOhntg", "message": ["H5jjydnU", "mFtP5OVk", "TfQS2uk6"]}, {"language": "gQVLORGo", "message": ["mT9v6ydm", "ey2nR9dc", "EnVwrKfc"]}, {"language": "vcMEK8Bj", "message": ["sc00O9LC", "WTakh24v", "60isG4tY"]}], "isCustomRegex": true, "letterCase": "HbqlkMpm", "maxLength": 2, "maxRepeatingAlphaNum": 68, "maxRepeatingSpecialCharacter": 48, "minCharType": 84, "minLength": 85, "profanityFilter": "dudoTIiz", "regex": "TsnD3avD", "specialCharacterLocation": "GYMTwmbz", "specialCharacters": ["p6M73eCW", "eHSweFIq", "bBPykR1U"]}}]' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'MBDZFFW5' \
    > test.out 2>&1
eval_tap $? 114 'AdminResetInputValidations' test.out

#- 115 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'daj7re6k' \
    --before '57kMwHSo' \
    --endDate 'qmnmUiNX' \
    --limit '22' \
    --query 'bnlJLSsL' \
    --roleId 'k5pcj9Oj' \
    --startDate '4GEMvc5l' \
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
    --body '{"ageRestriction": 20, "enable": false}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 118 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminGetListCountryAgeRestrictionV3' test.out

#- 119 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'H9fKxrps' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 49}' \
    > test.out 2>&1
eval_tap $? 119 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 120 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'nBJ8BmUx' \
    --limit '96' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetBannedUsersV3' test.out

#- 121 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "RUFfhsrG", "comment": "yKMTuWS5", "endDate": "NCwDFj7j", "reason": "n16oWWnZ", "skipNotif": true, "userIds": ["Ff9eEIQ3", "KJLdxBf1", "wyEePSEH"]}' \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "5tbOUU0N", "userId": "88olLYRY"}, {"banId": "JYnlDpLd", "userId": "rqpp9WGD"}, {"banId": "SLJyXJu8", "userId": "p3OgHjJ3"}]}' \
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
    --clientId 'jAZSVips' \
    --clientName 'uSO0k2IE' \
    --clientType 'ISu9Xh25' \
    --limit '24' \
    --offset '58' \
    --skipLoginQueue 'true' \
    > test.out 2>&1
eval_tap $? 124 'AdminGetClientsByNamespaceV3' test.out

#- 125 AdminBulkUpdateClientsV3
samples/cli/sample-apps Iam adminBulkUpdateClientsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientIds": ["vYJkFE6Q", "XRzoymOf", "ymZkgFD0"], "clientUpdateRequest": {"audiences": ["M1WI6p0k", "EDgl1M0a", "vUfPwrIb"], "baseUri": "vSpLp8oK", "clientName": "WHTLbJNR", "clientPermissions": [{"action": 43, "resource": "u1OycxZE", "schedAction": 4, "schedCron": "SmANiLpZ", "schedRange": ["bmuyK7PL", "rXRpbEZL", "riS0mH7S"]}, {"action": 89, "resource": "bpkFj0fj", "schedAction": 38, "schedCron": "7TyL26Xo", "schedRange": ["iUNrGtFv", "6Q4PHvhA", "BNeuu4z7"]}, {"action": 9, "resource": "Tk6TVahP", "schedAction": 81, "schedCron": "5riwCXZP", "schedRange": ["R2cquUyW", "oi0cVWqv", "vpQTmLiJ"]}], "clientPlatform": "aqpUizkh", "deletable": true, "description": "k8SGz8SK", "modulePermissions": [{"moduleId": "G5v7eJpB", "selectedGroups": [{"groupId": "G1yT6MLx", "selectedActions": [40, 76, 32]}, {"groupId": "F1ZHSX8r", "selectedActions": [47, 23, 71]}, {"groupId": "Z45DCraO", "selectedActions": [39, 61, 54]}]}, {"moduleId": "cZx0AaID", "selectedGroups": [{"groupId": "YpdmKzof", "selectedActions": [55, 72, 86]}, {"groupId": "NGLzVuF6", "selectedActions": [29, 33, 95]}, {"groupId": "oqNmxC8n", "selectedActions": [25, 77, 74]}]}, {"moduleId": "PUaAi4dc", "selectedGroups": [{"groupId": "YwGq63vL", "selectedActions": [57, 95, 21]}, {"groupId": "2Egw8Kzv", "selectedActions": [99, 26, 92]}, {"groupId": "piYUkQru", "selectedActions": [54, 96, 23]}]}], "namespace": "y3oXh2Rz", "oauthAccessTokenExpiration": 16, "oauthAccessTokenExpirationTimeUnit": "oGDEVomv", "oauthRefreshTokenExpiration": 61, "oauthRefreshTokenExpirationTimeUnit": "PJEcDPwT", "redirectUri": "MZGrQEWQ", "scopes": ["miWrHNMU", "W5rqS5IU", "c3VCey3v"], "skipLoginQueue": false, "twoFactorEnabled": false}}' \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["KK2EFCJY", "kgB2WRrN", "vSCgtjTK"], "baseUri": "k0A97oHP", "clientId": "Ubx7MM2K", "clientName": "3jAtIfHL", "clientPermissions": [{"action": 93, "resource": "96y7tGpL", "schedAction": 8, "schedCron": "2b8dkdcI", "schedRange": ["VLXV9Ijg", "Fpu4t8Rr", "xo8DNXDM"]}, {"action": 11, "resource": "8YWHSYN4", "schedAction": 100, "schedCron": "LTIVLnCn", "schedRange": ["DT7I3Uy1", "zgVycjTR", "TCb7cGDx"]}, {"action": 46, "resource": "iVQJr6lq", "schedAction": 62, "schedCron": "kfhkrLrN", "schedRange": ["xUkJcakV", "NaBJN9CC", "YR5cVcT0"]}], "clientPlatform": "gztzfXtw", "deletable": true, "description": "9vFKdmZC", "modulePermissions": [{"moduleId": "MMcFtVLS", "selectedGroups": [{"groupId": "8sIA1M0T", "selectedActions": [16, 46, 5]}, {"groupId": "aGYDGJkQ", "selectedActions": [18, 50, 90]}, {"groupId": "UHhIsnbV", "selectedActions": [73, 92, 60]}]}, {"moduleId": "ertVPnQt", "selectedGroups": [{"groupId": "nzsnKqmV", "selectedActions": [16, 40, 92]}, {"groupId": "AJGoiVou", "selectedActions": [63, 23, 7]}, {"groupId": "O9f6C9NB", "selectedActions": [4, 74, 70]}]}, {"moduleId": "av0MTK7u", "selectedGroups": [{"groupId": "gbss0Br7", "selectedActions": [8, 16, 77]}, {"groupId": "bJegJkQH", "selectedActions": [24, 95, 67]}, {"groupId": "AeY9malm", "selectedActions": [47, 46, 50]}]}], "namespace": "a4saBuzM", "oauthAccessTokenExpiration": 11, "oauthAccessTokenExpirationTimeUnit": "Tb3wLu5o", "oauthClientType": "OCOmXfUI", "oauthRefreshTokenExpiration": 75, "oauthRefreshTokenExpirationTimeUnit": "n6Tb9AnE", "parentNamespace": "SJlsBChF", "redirectUri": "QK1dIzMy", "scopes": ["WEE6Y1Dy", "ri4O179e", "Pf6NKZdv"], "secret": "xYCP7hgv", "skipLoginQueue": true, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'Mp1vqQHh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'QP6T7If7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'SlOELB0Z' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["r2H2lZt3", "KDvOAGMy", "kbAfQ6H7"], "baseUri": "NqbO79yH", "clientName": "CcckymvJ", "clientPermissions": [{"action": 23, "resource": "xnH5SRfU", "schedAction": 44, "schedCron": "uDbbtX4I", "schedRange": ["EW1gUHfp", "T9TEX0qL", "dnE4akka"]}, {"action": 14, "resource": "0IfgkDjf", "schedAction": 1, "schedCron": "OhBLkqaP", "schedRange": ["jddTWeYL", "CfwX2lsu", "3pNn4ZDQ"]}, {"action": 0, "resource": "GjD258S4", "schedAction": 46, "schedCron": "puCGrxgY", "schedRange": ["oNfS931u", "ZUT4Ct6v", "TuFYSo2N"]}], "clientPlatform": "Fz91mQFm", "deletable": false, "description": "NB2yI7yP", "modulePermissions": [{"moduleId": "fItB0KfR", "selectedGroups": [{"groupId": "pWhsjhbj", "selectedActions": [78, 34, 37]}, {"groupId": "nGIjOjjx", "selectedActions": [60, 17, 96]}, {"groupId": "JKWTZ5FY", "selectedActions": [83, 36, 53]}]}, {"moduleId": "PoRbRgUu", "selectedGroups": [{"groupId": "AEz5WOyg", "selectedActions": [46, 17, 87]}, {"groupId": "brUdNKAZ", "selectedActions": [99, 53, 44]}, {"groupId": "jisfJIIH", "selectedActions": [24, 68, 99]}]}, {"moduleId": "9bfIJEYH", "selectedGroups": [{"groupId": "RgL8AvXT", "selectedActions": [69, 67, 10]}, {"groupId": "dmqnn7Ot", "selectedActions": [74, 78, 85]}, {"groupId": "0v18hXie", "selectedActions": [19, 91, 41]}]}], "namespace": "62aqvkmX", "oauthAccessTokenExpiration": 66, "oauthAccessTokenExpirationTimeUnit": "JFPY6qf8", "oauthRefreshTokenExpiration": 11, "oauthRefreshTokenExpirationTimeUnit": "vzf9bnc7", "redirectUri": "uPOe7QFw", "scopes": ["WE3MfQKW", "gI0IpDwY", "yNgFWHnw"], "skipLoginQueue": true, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'TvfbA635' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 74, "resource": "RGETYICU"}, {"action": 36, "resource": "2xZu8cUZ"}, {"action": 9, "resource": "eVMUP3mC"}]}' \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'ntPU8zpU' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 33, "resource": "G0rrMOBX"}, {"action": 8, "resource": "eLP9lpEw"}, {"action": 10, "resource": "gZTRLT9W"}]}' \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '99' \
    --clientId 'ol6K4iiA' \
    --namespace $AB_NAMESPACE \
    --resource 'Em93CuHP' \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
samples/cli/sample-apps Iam adminGetConfigValueV3 \
    --configKey 'XDUQ2018' \
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
    --body '{"blacklist": ["k6gNaJU9", "3Wl2ig1A", "IO9i5VBF"]}' \
    > test.out 2>&1
eval_tap $? 136 'AdminAddCountryBlacklistV3' test.out

#- 137 RetrieveAllThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 137 'RetrieveAllThirdPartyLoginPlatformCredentialV3' test.out

#- 138 RetrieveAllActiveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 138 'RetrieveAllActiveThirdPartyLoginPlatformCredentialV3' test.out

#- 139 RetrieveAllSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 139 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 140 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'AMxEn4py' \
    > test.out 2>&1
eval_tap $? 140 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 141 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'kcGzbRx8' \
    --body '{"ACSURL": "6bG92bB1", "AWSCognitoRegion": "OpMxTsND", "AWSCognitoUserPool": "e5noMNBd", "AllowedClients": ["hXDQwjno", "0HI076a1", "UVP4WoIs"], "AppId": "iExKwwvc", "AuthorizationEndpoint": "xgobiOTQ", "ClientId": "7hEPVXUq", "EmptyStrFieldList": ["TMV98jz5", "LoT1zzbG", "w89Vkbw1"], "EnableServerLicenseValidation": true, "Environment": "HozwQEoG", "FederationMetadataURL": "YUCQtTXS", "GenericOauthFlow": true, "IncludePUID": true, "IsActive": true, "Issuer": "nNr2kixe", "JWKSEndpoint": "Rih4O6YE", "KeyID": "sG4CZczf", "LogoURL": "bYZyRmUL", "NetflixCertificates": {"encryptedPrivateKey": "t5dBwEdT", "encryptedPrivateKeyName": "AMz9Xgrt", "publicCertificate": "JP6Ig5UI", "publicCertificateName": "AHVX79oR", "rootCertificate": "H0nFfuQj", "rootCertificateName": "7BB6a961"}, "OrganizationId": "nIpZujb1", "PlatformName": "osD67wWh", "RedirectUri": "5FB7ZXX4", "RegisteredDomains": [{"affectedClientIDs": ["SgOchtUi", "KqsGFaTI", "39veXu2S"], "domain": "2dhfE9mE", "namespaces": ["LmUfnUAq", "CntJIUAm", "00tlcyiv"], "roleId": "xd35xYNd"}, {"affectedClientIDs": ["xUQSP6r9", "qjl2VX32", "pVaXmrlp"], "domain": "5YD6PdLR", "namespaces": ["xvP9nyLj", "KORdvAx6", "Be6k4WIP"], "roleId": "KSODKtvI"}, {"affectedClientIDs": ["Qv5XvD6w", "Z7m88f4U", "lbDGPKuN"], "domain": "NSv5SJUB", "namespaces": ["F86EHeii", "EUx327pg", "9cwA8qdK"], "roleId": "ETsdYBp7"}], "Secret": "Pvx9LlDm", "TeamID": "6JnMj0Dl", "TokenAuthenticationType": "e337OlEi", "TokenClaimsMapping": {"M4b1xSWo": "lAxkfHvh", "xxZyGYrM": "G0jTPXm0", "q9Ik6QQi": "TRoNEYEf"}, "TokenEndpoint": "2V5rVa2Y", "UserInfoEndpoint": "ytrKCvTg", "UserInfoHTTPMethod": "7aCPRlPS", "scopes": ["6bmYH7BC", "6A9pXpAL", "gmFnPqlP"]}' \
    > test.out 2>&1
eval_tap $? 141 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 142 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'GUJVxQXQ' \
    > test.out 2>&1
eval_tap $? 142 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 143 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'RXW0CkPj' \
    --body '{"ACSURL": "c7AZzuro", "AWSCognitoRegion": "cjPFKoM7", "AWSCognitoUserPool": "6jiDRimg", "AllowedClients": ["9SWk3xpU", "8kei0cZv", "JVLvSsDx"], "AppId": "LwWYDyze", "AuthorizationEndpoint": "ETzbKsUG", "ClientId": "HIx1D4Mh", "EmptyStrFieldList": ["CoppALfS", "Ap8yrrco", "W2JXmoqc"], "EnableServerLicenseValidation": true, "Environment": "EDfaco1F", "FederationMetadataURL": "3daqHkVy", "GenericOauthFlow": true, "IncludePUID": false, "IsActive": false, "Issuer": "1eZVGxiP", "JWKSEndpoint": "m01kFq7M", "KeyID": "6C60mPq0", "LogoURL": "gPlYqENs", "NetflixCertificates": {"encryptedPrivateKey": "wYl3S3Yi", "encryptedPrivateKeyName": "wivtgxgm", "publicCertificate": "eX842gpf", "publicCertificateName": "SJslreeA", "rootCertificate": "xk7nJyj6", "rootCertificateName": "2YPBp0X6"}, "OrganizationId": "zdukWkbW", "PlatformName": "MoIr0rIq", "RedirectUri": "vjvnp8pi", "RegisteredDomains": [{"affectedClientIDs": ["aetPeTBI", "4wsq77OH", "KZTUW7LM"], "domain": "jlNodhjb", "namespaces": ["7VEViDzN", "Np4Eqa1d", "4qic0Ika"], "roleId": "qidE3iw6"}, {"affectedClientIDs": ["dXVuIUtG", "ym1yfeCD", "eYDBaiBN"], "domain": "CUkV9DAH", "namespaces": ["m1jcC2Zu", "2S5uqsC1", "cfbsbLN4"], "roleId": "pNfk3k5G"}, {"affectedClientIDs": ["TXv4PCcs", "sjSo3C0f", "OFV4YrdZ"], "domain": "6h7zukAP", "namespaces": ["35pRROv6", "gsf6QxU9", "1eN2RU9h"], "roleId": "qAMUoPj8"}], "Secret": "jKgsmlwN", "TeamID": "mPH2lzZY", "TokenAuthenticationType": "QEz5T3vs", "TokenClaimsMapping": {"m3ojYKXa": "Zo9LABg4", "Koibln2O": "wXUHhc0L", "cxTs89MV": "MBCMd0wi"}, "TokenEndpoint": "d8wxyuak", "UserInfoEndpoint": "zLEkPWZn", "UserInfoHTTPMethod": "iHfkov4H", "scopes": ["VRY0MrDR", "iQ3idSFZ", "onY0fBIg"]}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 144 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'F3TvlE3n' \
    --body '{"affectedClientIDs": ["DO8M2TJf", "CiWYtAib", "akIrs0Ub"], "assignedNamespaces": ["jCEJ0TLj", "szNbocbX", "76Thu8uO"], "domain": "pgEVk6Hd", "roleId": "vp0tvcfQ"}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 145 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ipbvj1GU' \
    --body '{"domain": "NZ4helbI"}' \
    > test.out 2>&1
eval_tap $? 145 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 146 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'kMeHFqZv' \
    > test.out 2>&1
eval_tap $? 146 'RetrieveSSOLoginPlatformCredential' test.out

#- 147 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'prG5Dsxc' \
    --body '{"acsUrl": "wi78fUsI", "apiKey": "o9Be6IJU", "appId": "Mzb94AR5", "federationMetadataUrl": "NYWHuogL", "isActive": false, "redirectUri": "iNzKfQ3h", "secret": "88nsakAa", "ssoUrl": "V8x8OjeS"}' \
    > test.out 2>&1
eval_tap $? 147 'AddSSOLoginPlatformCredential' test.out

#- 148 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'HjLFsDFD' \
    > test.out 2>&1
eval_tap $? 148 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 149 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'wSQbevHt' \
    --body '{"acsUrl": "dKQXV9do", "apiKey": "SzJqmQDX", "appId": "9YwCONZF", "federationMetadataUrl": "eFPVEwIR", "isActive": false, "redirectUri": "a7z3KRp9", "secret": "7lpuqE5r", "ssoUrl": "zKYl7WXn"}' \
    > test.out 2>&1
eval_tap $? 149 'UpdateSSOPlatformCredential' test.out

#- 150 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'bSLAExls' \
    --rawPID 'false' \
    --rawPUID 'true' \
    --body '{"platformUserIds": ["W4I0lUAc", "W3ABYt1T", "HCEtcvOK"]}' \
    > test.out 2>&1
eval_tap $? 150 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 151 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'jOEGHsjG' \
    --platformUserId 'KMuGKwjz' \
    > test.out 2>&1
eval_tap $? 151 'AdminGetUserByPlatformUserIDV3' test.out

#- 152 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId '7siXThu3' \
    --after '91' \
    --before '82' \
    --limit '39' \
    > test.out 2>&1
eval_tap $? 152 'GetAdminUsersByRoleIdV3' test.out

#- 153 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'TQtJhuQi' \
    > test.out 2>&1
eval_tap $? 153 'AdminGetUserByEmailAddressV3' test.out

#- 154 AdminBulkUpdateUsersV3
samples/cli/sample-apps Iam adminBulkUpdateUsersV3 \
    --namespace $AB_NAMESPACE \
    --body '{"updateRequest": {"skipLoginQueue": false}, "userIds": ["v49CrdGK", "fUb9NiR5", "D3t3l0Kh"]}' \
    > test.out 2>&1
eval_tap $? 154 'AdminBulkUpdateUsersV3' test.out

#- 155 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'uIa8kSll' \
    --body '{"bulkUserId": ["GzUjNDiS", "2AXlrk2F", "FULeR91n"]}' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetBulkUserBanV3' test.out

#- 156 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["8mm3AUwB", "giwhoJGJ", "gZONr5xK"]}' \
    > test.out 2>&1
eval_tap $? 156 'AdminListUserIDByUserIDsV3' test.out

#- 157 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["vlD0AW7G", "p7FCFwww", "svUVvxsR"]}' \
    > test.out 2>&1
eval_tap $? 157 'AdminBulkGetUsersPlatform' test.out

#- 158 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["Ewm4qQBR", "vCILAECO", "SeCoGvWe"], "isAdmin": true, "languageTag": "gmHVgGTd", "namespace": "hU2U6D7Q", "roles": ["YEddvxwh", "7VttDNg2", "6a4lp2ME"]}' \
    > test.out 2>&1
eval_tap $? 158 'AdminInviteUserV3' test.out

#- 159 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '2' \
    --platformUserId 'kxizj8xR' \
    --platformId 'VCFf7smE' \
    > test.out 2>&1
eval_tap $? 159 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 160 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 160 'AdminListUsersV3' test.out

#- 161 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'JaKdcZio' \
    --endDate 'jHktkN5x' \
    --includeTotal 'false' \
    --limit '10' \
    --offset '60' \
    --platformBy 'IVaqeCYv' \
    --platformId '4weZ2fZr' \
    --query 'xO4OIfCZ' \
    --roleIds 'jtylJ5N5' \
    --skipLoginQueue 'true' \
    --startDate 'TcAIjVkl' \
    --testAccount 'false' \
    > test.out 2>&1
eval_tap $? 161 'AdminSearchUserV3' test.out

#- 162 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["odCnM6gv", "PGzUWnpu", "13XWPrX5"]}' \
    > test.out 2>&1
eval_tap $? 162 'AdminGetBulkUserByEmailAddressV3' test.out

#- 163 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'RuiVt0e4' \
    > test.out 2>&1
eval_tap $? 163 'AdminGetUserByUserIdV3' test.out

#- 164 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'BwEASdTy' \
    --body '{"avatarUrl": "tdXyDwcH", "country": "Ozo3AqSZ", "dateOfBirth": "OQNAxrWa", "displayName": "cUzIvNnr", "languageTag": "YnHS1yuV", "skipLoginQueue": false, "uniqueDisplayName": "hXoVJOpP", "userName": "ISSSbdDb"}' \
    > test.out 2>&1
eval_tap $? 164 'AdminUpdateUserV3' test.out

#- 165 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId '57b2k73c' \
    --activeOnly 'true' \
    --after 'khDTTXjO' \
    --before 'tBDhAN0v' \
    --limit '84' \
    > test.out 2>&1
eval_tap $? 165 'AdminGetUserBanV3' test.out

#- 166 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'cpH5aDu1' \
    --body '{"ban": "FNJp9jnG", "comment": "9KbB7Bd4", "endDate": "vOfcwkSJ", "reason": "XZzxxZOk", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 166 'AdminBanUserV3' test.out

#- 167 AdminGetUserBanSummaryV3
samples/cli/sample-apps Iam adminGetUserBanSummaryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'DkO7lbmY' \
    > test.out 2>&1
eval_tap $? 167 'AdminGetUserBanSummaryV3' test.out

#- 168 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'aJfA2xGX' \
    --namespace $AB_NAMESPACE \
    --userId 'AtxAH1AK' \
    --body '{"enabled": true, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 168 'AdminUpdateUserBanV3' test.out

#- 169 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'sEUJPkST' \
    --body '{"context": "bTKyXvPL", "emailAddress": "Sd1yhndH", "languageTag": "eqgGipTN"}' \
    > test.out 2>&1
eval_tap $? 169 'AdminSendVerificationCodeV3' test.out

#- 170 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'AYQrsm0t' \
    --body '{"Code": "s1kngnOK", "ContactType": "a1dQMx2O", "LanguageTag": "Rer5ddJs", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 170 'AdminVerifyAccountV3' test.out

#- 171 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'AZVUz1xZ' \
    > test.out 2>&1
eval_tap $? 171 'GetUserVerificationCode' test.out

#- 172 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hsmu7GxO' \
    > test.out 2>&1
eval_tap $? 172 'AdminGetUserDeletionStatusV3' test.out

#- 173 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'dmYKrOl3' \
    --body '{"deletionDate": 29, "enabled": false}' \
    > test.out 2>&1
eval_tap $? 173 'AdminUpdateUserDeletionStatusV3' test.out

#- 174 AdminListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam adminListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'CMtjJMem' \
    > test.out 2>&1
eval_tap $? 174 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 175 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'j3br4yR3' \
    --body '{"code": "DQRGzn0r", "country": "Au8y3GrQ", "dateOfBirth": "ijPG3rB1", "displayName": "VTmxfQUZ", "emailAddress": "AQ7KpjEL", "password": "ml2gxvyZ", "uniqueDisplayName": "OZdLXAJi", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 175 'AdminUpgradeHeadlessAccountV3' test.out

#- 176 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'sj0pRZbB' \
    > test.out 2>&1
eval_tap $? 176 'AdminDeleteUserInformationV3' test.out

#- 177 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'eEDl4oK1' \
    --after '0.09707563495512717' \
    --before '0.24238822035040353' \
    --limit '71' \
    > test.out 2>&1
eval_tap $? 177 'AdminGetUserLoginHistoriesV3' test.out

#- 178 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'FN5OJ56L' \
    --body '{"languageTag": "VZDarBqU", "mfaToken": "w4PsY4tT", "newPassword": "wch0Aqke", "oldPassword": "Nyrr3kKt"}' \
    > test.out 2>&1
eval_tap $? 178 'AdminResetPasswordV3' test.out

#- 179 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'BBpSsUML' \
    --body '{"Permissions": [{"Action": 6, "Resource": "33jXB64K", "SchedAction": 13, "SchedCron": "ODYdw9xg", "SchedRange": ["eCa7dPEO", "YwKDXcVp", "1LLEDDWK"]}, {"Action": 92, "Resource": "Kchimhhu", "SchedAction": 64, "SchedCron": "YHn0Ywc5", "SchedRange": ["zjG29G4D", "wMLWceaP", "8WMsHWy9"]}, {"Action": 51, "Resource": "EFqPCzff", "SchedAction": 91, "SchedCron": "hiYIjsyY", "SchedRange": ["whqopmtE", "u1ONY0zC", "70t1GkWq"]}]}' \
    > test.out 2>&1
eval_tap $? 179 'AdminUpdateUserPermissionV3' test.out

#- 180 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'QQoBJgMn' \
    --body '{"Permissions": [{"Action": 33, "Resource": "KqqydVqE", "SchedAction": 92, "SchedCron": "SemT81EW", "SchedRange": ["vLQ4nmBQ", "16u8PcSn", "nZ6WAK4F"]}, {"Action": 8, "Resource": "UbC2nnno", "SchedAction": 47, "SchedCron": "B3TPmfMY", "SchedRange": ["1IkiNXcc", "KlbnJ0Q5", "lMIT6kFG"]}, {"Action": 27, "Resource": "3uOoUsTD", "SchedAction": 16, "SchedCron": "qPF6f5pu", "SchedRange": ["RJIMY2Ei", "1SIIUa29", "dXSagwbS"]}]}' \
    > test.out 2>&1
eval_tap $? 180 'AdminAddUserPermissionsV3' test.out

#- 181 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'fYhkw7yX' \
    --body '[{"Action": 5, "Resource": "19dXhGlS"}, {"Action": 86, "Resource": "9OOT5tsg"}, {"Action": 67, "Resource": "9HqO9wod"}]' \
    > test.out 2>&1
eval_tap $? 181 'AdminDeleteUserPermissionBulkV3' test.out

#- 182 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '85' \
    --namespace $AB_NAMESPACE \
    --resource 'zvulpnqZ' \
    --userId '6oHdfI95' \
    > test.out 2>&1
eval_tap $? 182 'AdminDeleteUserPermissionV3' test.out

#- 183 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId '58w3gfTu' \
    --after 'CvNJfLW7' \
    --before 'syPo2qTQ' \
    --limit '78' \
    --platformId 'qTyzOFvH' \
    --targetNamespace 'D2fOeqNn' \
    > test.out 2>&1
eval_tap $? 183 'AdminGetUserPlatformAccountsV3' test.out

#- 184 AdminListAllDistinctPlatformAccountsV3
samples/cli/sample-apps Iam adminListAllDistinctPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vIU8DKRU' \
    --status '3GYEHK7Z' \
    > test.out 2>&1
eval_tap $? 184 'AdminListAllDistinctPlatformAccountsV3' test.out

#- 185 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'uk1O9pFZ' \
    > test.out 2>&1
eval_tap $? 185 'AdminGetListJusticePlatformAccounts' test.out

#- 186 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'qvMDCKne' \
    --userId 'xwzsaoTg' \
    > test.out 2>&1
eval_tap $? 186 'AdminGetUserMapping' test.out

#- 187 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'kUvUSMSd' \
    --userId 'yGnmrExO' \
    > test.out 2>&1
eval_tap $? 187 'AdminCreateJusticeUser' test.out

#- 188 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'b9JgKg0J' \
    --skipConflict 'true' \
    --body '{"platformId": "e3wWdGYO", "platformUserId": "VmU3t18G"}' \
    > test.out 2>&1
eval_tap $? 188 'AdminLinkPlatformAccount' test.out

#- 189 AdminGetUserLinkHistoriesV3
samples/cli/sample-apps Iam adminGetUserLinkHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'SolHVCUk' \
    --platformId 'n5Zb31Bk' \
    > test.out 2>&1
eval_tap $? 189 'AdminGetUserLinkHistoriesV3' test.out

#- 190 AdminPlatformUnlinkV3
eval_tap 0 190 'AdminPlatformUnlinkV3 # SKIP deprecated' test.out

#- 191 AdminPlatformUnlinkAllV3
samples/cli/sample-apps Iam adminPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'P9pzMEui' \
    --userId 'KSA9EEZf' \
    > test.out 2>&1
eval_tap $? 191 'AdminPlatformUnlinkAllV3' test.out

#- 192 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Ey6jEzU8' \
    --userId 'Fb8f0JfU' \
    --ticket 'izpCpFOx' \
    > test.out 2>&1
eval_tap $? 192 'AdminPlatformLinkV3' test.out

#- 193 AdminDeleteUserLinkingHistoryByPlatformIDV3
eval_tap 0 193 'AdminDeleteUserLinkingHistoryByPlatformIDV3 # SKIP deprecated' test.out

#- 194 AdminDeleteUserLinkingRestrictionByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingRestrictionByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ETK0p7cQ' \
    --userId 'YROPWd5U' \
    > test.out 2>&1
eval_tap $? 194 'AdminDeleteUserLinkingRestrictionByPlatformIDV3' test.out

#- 195 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'opS23f6t' \
    --userId 'jVtHcxDh' \
    --platformToken '7EBFDUNG' \
    > test.out 2>&1
eval_tap $? 195 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 196 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId '4jbnXvUy' \
    --userId 'Y9kiRqN8' \
    > test.out 2>&1
eval_tap $? 196 'AdminGetUserSinglePlatformAccount' test.out

#- 197 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId '76d4dSEj' \
    --body '["eLH7Q8wD", "3dcZrcZb", "S3cANA3p"]' \
    > test.out 2>&1
eval_tap $? 197 'AdminDeleteUserRolesV3' test.out

#- 198 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LzfyOYG1' \
    --body '[{"namespace": "xXKmGvXZ", "roleId": "56JavEt0"}, {"namespace": "V99IB0Py", "roleId": "XvH3RKQh"}, {"namespace": "dY3kJWIh", "roleId": "lZ7ntLle"}]' \
    > test.out 2>&1
eval_tap $? 198 'AdminSaveUserRoleV3' test.out

#- 199 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId '2uTa0U57' \
    --userId 'yZz4Iq4y' \
    > test.out 2>&1
eval_tap $? 199 'AdminAddUserRoleV3' test.out

#- 200 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'V8hJ3YD2' \
    --userId 'XBRRZ4KM' \
    > test.out 2>&1
eval_tap $? 200 'AdminDeleteUserRoleV3' test.out

#- 201 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'OMSy0jIG' \
    --body '{"enabled": false, "reason": "LbuAFRjb"}' \
    > test.out 2>&1
eval_tap $? 201 'AdminUpdateUserStatusV3' test.out

#- 202 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId '9ITNH68D' \
    --body '{"emailAddress": "7mUzCYxt", "password": "FAmVvRUv"}' \
    > test.out 2>&1
eval_tap $? 202 'AdminTrustlyUpdateUserIdentity' test.out

#- 203 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'fXPpTNNS' \
    > test.out 2>&1
eval_tap $? 203 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 204 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId '9UesbNfV' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "VCwtoXt6"}' \
    > test.out 2>&1
eval_tap $? 204 'AdminUpdateClientSecretV3' test.out

#- 205 AdminCheckThirdPartyLoginPlatformAvailabilityV3
samples/cli/sample-apps Iam adminCheckThirdPartyLoginPlatformAvailabilityV3 \
    --platformId 'fIuTImzG' \
    > test.out 2>&1
eval_tap $? 205 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 206 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'oMHx0Fqm' \
    --before 'Bf3UwLnC' \
    --isWildcard 'true' \
    --limit '95' \
    > test.out 2>&1
eval_tap $? 206 'AdminGetRolesV3' test.out

#- 207 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": true, "managers": [{"displayName": "pwDp1g6n", "namespace": "1iw9cs37", "userId": "JZgeIrog"}, {"displayName": "nxopaUj6", "namespace": "BnwX2TDs", "userId": "OWqM6JvF"}, {"displayName": "5zUm2Yes", "namespace": "QXES5qXQ", "userId": "wENX020L"}], "members": [{"displayName": "1K0bYt4g", "namespace": "InyDKID5", "userId": "eMvD5IiW"}, {"displayName": "aHw1fHrh", "namespace": "T0mnd5j7", "userId": "BWpzmdBS"}, {"displayName": "5FFOdSaG", "namespace": "csVRzsIX", "userId": "MJ7XmRY3"}], "permissions": [{"action": 65, "resource": "0DvRxJ0y", "schedAction": 61, "schedCron": "vtP1Vmbx", "schedRange": ["xoVPOFA8", "es0U13Qj", "aGCjNjFU"]}, {"action": 94, "resource": "rOuyuFgO", "schedAction": 60, "schedCron": "Kf88XgD4", "schedRange": ["Y4BM2tAN", "JEJCcf5O", "LDVz9olF"]}, {"action": 20, "resource": "sTNBlJtI", "schedAction": 2, "schedCron": "rqJlVrWD", "schedRange": ["hSmTnV8P", "GHtm4nC5", "j3t7l434"]}], "roleName": "AKEewDSM"}' \
    > test.out 2>&1
eval_tap $? 207 'AdminCreateRoleV3' test.out

#- 208 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'mqQO1jm7' \
    > test.out 2>&1
eval_tap $? 208 'AdminGetRoleV3' test.out

#- 209 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId '7PSRzFI6' \
    > test.out 2>&1
eval_tap $? 209 'AdminDeleteRoleV3' test.out

#- 210 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'xzEgq0Bj' \
    --body '{"deletable": false, "isWildcard": false, "roleName": "6PLqsOYZ"}' \
    > test.out 2>&1
eval_tap $? 210 'AdminUpdateRoleV3' test.out

#- 211 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'u22zdV5C' \
    > test.out 2>&1
eval_tap $? 211 'AdminGetRoleAdminStatusV3' test.out

#- 212 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'SEjztSvG' \
    > test.out 2>&1
eval_tap $? 212 'AdminUpdateAdminRoleStatusV3' test.out

#- 213 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId '8FqLc238' \
    > test.out 2>&1
eval_tap $? 213 'AdminRemoveRoleAdminV3' test.out

#- 214 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'y1BXEc97' \
    --after '1RtXe8cf' \
    --before 'kwROfyW3' \
    --limit '99' \
    > test.out 2>&1
eval_tap $? 214 'AdminGetRoleManagersV3' test.out

#- 215 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'eI6s3Zq0' \
    --body '{"managers": [{"displayName": "Jh5LXvKH", "namespace": "WUuaHbMG", "userId": "61LOdVNM"}, {"displayName": "fQr24YQn", "namespace": "zwOXcKEt", "userId": "oacF04f2"}, {"displayName": "qB25gjj3", "namespace": "yoSF8HVm", "userId": "CbFyknEP"}]}' \
    > test.out 2>&1
eval_tap $? 215 'AdminAddRoleManagersV3' test.out

#- 216 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'p9O4UGls' \
    --body '{"managers": [{"displayName": "ULkK89AE", "namespace": "6qTy8W58", "userId": "45ttyLqE"}, {"displayName": "M52rVwku", "namespace": "dw5Vbq9U", "userId": "CKOIqitX"}, {"displayName": "8SImgQ5a", "namespace": "KseE3nwq", "userId": "c3JVUm5I"}]}' \
    > test.out 2>&1
eval_tap $? 216 'AdminRemoveRoleManagersV3' test.out

#- 217 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'k0BRjd5O' \
    --after 'aoWAdhHd' \
    --before '9Rdfemqk' \
    --limit '99' \
    > test.out 2>&1
eval_tap $? 217 'AdminGetRoleMembersV3' test.out

#- 218 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'GQBpuCGy' \
    --body '{"members": [{"displayName": "sdgwmH7z", "namespace": "w0o4Qvxs", "userId": "CEsu4YPC"}, {"displayName": "44uvC0Gf", "namespace": "AnSFcbQ9", "userId": "BXyJHGkj"}, {"displayName": "OxvUJ7aU", "namespace": "EcNEPfEI", "userId": "mTcEj8sw"}]}' \
    > test.out 2>&1
eval_tap $? 218 'AdminAddRoleMembersV3' test.out

#- 219 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'M1atI3bS' \
    --body '{"members": [{"displayName": "tx9Wtal2", "namespace": "eCF73TP1", "userId": "BD2AniAn"}, {"displayName": "61ICKWcC", "namespace": "Xcq6v67H", "userId": "URsMqofB"}, {"displayName": "ycZrIYii", "namespace": "1ov6hV04", "userId": "gTb4HNE7"}]}' \
    > test.out 2>&1
eval_tap $? 219 'AdminRemoveRoleMembersV3' test.out

#- 220 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'W3aivjKA' \
    --body '{"permissions": [{"action": 5, "resource": "0SsdruCA", "schedAction": 21, "schedCron": "BhsmklLc", "schedRange": ["vXr22CKm", "2EBgKd9K", "Gkf1kMfU"]}, {"action": 73, "resource": "1IPnxRW4", "schedAction": 71, "schedCron": "d8Ce86pH", "schedRange": ["lKYeaUer", "q8tktqhx", "qDOoHD5G"]}, {"action": 51, "resource": "jxxF2WHr", "schedAction": 43, "schedCron": "cNo08du0", "schedRange": ["0JHgvbXr", "wUEKGdZq", "beWPROCc"]}]}' \
    > test.out 2>&1
eval_tap $? 220 'AdminUpdateRolePermissionsV3' test.out

#- 221 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'SoR72L7Z' \
    --body '{"permissions": [{"action": 46, "resource": "diYoy5mQ", "schedAction": 92, "schedCron": "7NlGPy8B", "schedRange": ["z6ZRizSs", "yMuiu723", "jQ0573Gk"]}, {"action": 5, "resource": "Qawpdkjw", "schedAction": 26, "schedCron": "K1eMD79k", "schedRange": ["W66mKqOJ", "FwJdST60", "IVMeFsLk"]}, {"action": 95, "resource": "WyAF6n2X", "schedAction": 17, "schedCron": "iwwTVV58", "schedRange": ["dwYfSyvG", "mdgpzrJ5", "FrrEviTQ"]}]}' \
    > test.out 2>&1
eval_tap $? 221 'AdminAddRolePermissionsV3' test.out

#- 222 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'ynJyNcyG' \
    --body '["cDMFjo8F", "JDDlCQxc", "cghIoTiy"]' \
    > test.out 2>&1
eval_tap $? 222 'AdminDeleteRolePermissionsV3' test.out

#- 223 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '89' \
    --resource 'BG2feJVV' \
    --roleId '7UGcU9o5' \
    > test.out 2>&1
eval_tap $? 223 'AdminDeleteRolePermissionV3' test.out

#- 224 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 224 'AdminGetMyUserV3' test.out

#- 225 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'iPP6kXOE' \
    --extendExp 'false' \
    --redirectUri 'zin4x5cQ' \
    --password 'jmtk78Tb' \
    --requestId 'Gf3OsLzw' \
    --userName '0G8LuW1X' \
    > test.out 2>&1
eval_tap $? 225 'UserAuthenticationV3' test.out

#- 226 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId 'd9DxoYUK' \
    --linkingToken 'ID8xXoti' \
    --password 'kYgdYatN' \
    --username 'pFFlt5Co' \
    > test.out 2>&1
eval_tap $? 226 'AuthenticationWithPlatformLinkV3' test.out

#- 227 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'sB56kCBe' \
    --extendExp 'false' \
    --linkingToken '9aiseiID' \
    > test.out 2>&1
eval_tap $? 227 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 228 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'PLvzrqno' \
    > test.out 2>&1
eval_tap $? 228 'RequestOneTimeLinkingCodeV3' test.out

#- 229 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'q8EeiJON' \
    > test.out 2>&1
eval_tap $? 229 'ValidateOneTimeLinkingCodeV3' test.out

#- 230 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'aNgXzGoK' \
    --isTransient 'true' \
    --clientId 'CZ0XUxOF' \
    --oneTimeLinkCode 'KWeKJX5H' \
    > test.out 2>&1
eval_tap $? 230 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 231 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 231 'GetCountryLocationV3' test.out

#- 232 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 232 'Logout' test.out

#- 233 RequestTokenExchangeCodeV3
samples/cli/sample-apps Iam requestTokenExchangeCodeV3 \
    --namespace $AB_NAMESPACE \
    --codeChallenge 'aRrzXZEx' \
    --codeChallengeMethod 'plain' \
    --clientId '96ODy41h' \
    > test.out 2>&1
eval_tap $? 233 'RequestTokenExchangeCodeV3' test.out

#- 234 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId '52lEO8yu' \
    --userId 'KYS6k4nt' \
    --platformUserId 'djkDAQxO' \
    > test.out 2>&1
eval_tap $? 234 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 235 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'WPpem8bH' \
    --includeGameNamespace 'false' \
    > test.out 2>&1
eval_tap $? 235 'RevokeUserV3' test.out

#- 236 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'MjGJ0BnH' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'true' \
    --oneTimeLinkCode 'oLOXAadk' \
    --redirectUri 'bljMLpYN' \
    --scope '3F2Hilhe' \
    --state '9G12sYRi' \
    --targetAuthPage 'FVDxmMTA' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId '5nUxaxDP' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 236 'AuthorizeV3' test.out

#- 237 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token '49SrnxFl' \
    > test.out 2>&1
eval_tap $? 237 'TokenIntrospectionV3' test.out

#- 238 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 238 'GetJWKSV3' test.out

#- 239 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'wp6qxgMr' \
    --factor 'pxJtZXEe' \
    --mfaToken 'hZzUdUt8' \
    > test.out 2>&1
eval_tap $? 239 'SendMFAAuthenticationCode' test.out

#- 240 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'ualfpwvj' \
    --mfaToken 'ICeqWX1P' \
    > test.out 2>&1
eval_tap $? 240 'Change2faMethod' test.out

#- 241 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'ZDltQrm1' \
    --factor 'Gi3KOrG4' \
    --mfaToken 'IHRqgysL' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 241 'Verify2faCode' test.out

#- 242 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'OHvHWqio' \
    --userId 'tBnRsiMN' \
    > test.out 2>&1
eval_tap $? 242 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 243 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'leQEX8nx' \
    --clientId 'vFxBKAhc' \
    --redirectUri 'iSTpYyuo' \
    --requestId 'T8Sv5NvR' \
    > test.out 2>&1
eval_tap $? 243 'AuthCodeRequestV3' test.out

#- 244 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'wRTT2nWy' \
    --additionalData 'Vec4wZPG' \
    --clientId 'elFqORs3' \
    --createHeadless 'true' \
    --deviceId 'ehSQou8e' \
    --macAddress 'ey8HUdAl' \
    --platformToken 'PWPTGpdi' \
    --serviceLabel '0.8713173860702115' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 244 'PlatformTokenGrantV3' test.out

#- 245 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 245 'GetRevocationListV3' test.out

#- 246 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'SA7mu5C2' \
    > test.out 2>&1
eval_tap $? 246 'TokenRevocationV3' test.out

#- 247 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'ywZBbkXm' \
    --simultaneousTicket '797vBoKS' \
    --nativePlatform 'epicgames' \
    --nativePlatformTicket '1eqS2Eby' \
    > test.out 2>&1
eval_tap $? 247 'SimultaneousLoginV3' test.out

#- 248 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'CZwKlD7Z' \
    --clientId 'Pnnz3tXn' \
    --clientSecret 'YfvvlOy6' \
    --code 'jsEKm8fw' \
    --codeVerifier 'wUJVC402' \
    --extendNamespace 'gLMc8RfX' \
    --extendExp 'true' \
    --password 'k6cylMMv' \
    --redirectUri '3xamlQHv' \
    --refreshToken 'VMsonFpn' \
    --username 'IvJqXkNV' \
    --grantType 'password' \
    > test.out 2>&1
eval_tap $? 248 'TokenGrantV3' test.out

#- 249 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'fG8WxaHt' \
    > test.out 2>&1
eval_tap $? 249 'VerifyTokenV3' test.out

#- 250 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'ZAy4xZ79' \
    --code 'rD7yff1X' \
    --error 'BPdiRedR' \
    --openidAssocHandle 'AKuCuWEq' \
    --openidClaimedId 'LFEZx6fQ' \
    --openidIdentity 'GJTB6oGO' \
    --openidMode 'ZGeG6cGY' \
    --openidNs 'cAp0xJe6' \
    --openidOpEndpoint '8b0esT04' \
    --openidResponseNonce 'xCcySOxb' \
    --openidReturnTo 'Unw1LznA' \
    --openidSig 'ZwO0Rl71' \
    --openidSigned '0P4ASzwF' \
    --state 'KJRB9qqz' \
    > test.out 2>&1
eval_tap $? 250 'PlatformAuthenticationV3' test.out

#- 251 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'REltRcNi' \
    --platformToken 'EmU372d3' \
    > test.out 2>&1
eval_tap $? 251 'PlatformTokenRefreshV3' test.out

#- 252 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'false' \
    --languageCode '1corhv9I' \
    > test.out 2>&1
eval_tap $? 252 'PublicGetInputValidations' test.out

#- 253 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'hkD9srRQ' \
    > test.out 2>&1
eval_tap $? 253 'PublicGetInputValidationByField' test.out

#- 254 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode '6RCaUGhE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 254 'PublicGetCountryAgeRestrictionV3' test.out

#- 255 PublicGetConfigValueV3
samples/cli/sample-apps Iam publicGetConfigValueV3 \
    --configKey 'TfjvEEbn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 255 'PublicGetConfigValueV3' test.out

#- 256 PublicGetCountryListV3
samples/cli/sample-apps Iam publicGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 256 'PublicGetCountryListV3' test.out

#- 257 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 257 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 258 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'u3Wck7wv' \
    > test.out 2>&1
eval_tap $? 258 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 259 PublicListUserIDByPlatformUserIDsV3
eval_tap 0 259 'PublicListUserIDByPlatformUserIDsV3 # SKIP deprecated' test.out

#- 260 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'bGiy4FF6' \
    --platformUserId 'HXD456kT' \
    > test.out 2>&1
eval_tap $? 260 'PublicGetUserByPlatformUserIDV3' test.out

#- 261 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'RrHOAcDZ' \
    > test.out 2>&1
eval_tap $? 261 'PublicGetAsyncStatus' test.out

#- 262 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'XWECS2De' \
    --limit '16' \
    --offset '32' \
    --platformBy 'ctsmcfPi' \
    --platformId 'VRKxfZ1M' \
    --query '9JNQeDi3' \
    > test.out 2>&1
eval_tap $? 262 'PublicSearchUserV3' test.out

#- 263 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "6y4zG1kF", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "SQJFAHeq", "policyId": "Wo61sHej", "policyVersionId": "6N52fCms"}, {"isAccepted": true, "localizedPolicyVersionId": "SBMQ6sX0", "policyId": "6uwOtjhQ", "policyVersionId": "wSCDSnDm"}, {"isAccepted": false, "localizedPolicyVersionId": "8ntvz8VL", "policyId": "u7Kkns66", "policyVersionId": "CNXwuPR7"}], "authType": "K7x4cftn", "code": "zwaHSMTJ", "country": "NVPaNivC", "dateOfBirth": "WgDqMAAi", "displayName": "nFdRjtLb", "emailAddress": "vDwNmZPL", "password": "8OFe9iE7", "reachMinimumAge": false, "uniqueDisplayName": "lMSeEwTp"}' \
    > test.out 2>&1
eval_tap $? 263 'PublicCreateUserV3' test.out

#- 264 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'wW6Dwrcr' \
    --query 'tAENk3dh' \
    > test.out 2>&1
eval_tap $? 264 'CheckUserAvailability' test.out

#- 265 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["y9kOuNsE", "zsbmlbZX", "Ysup3s7i"]}' \
    > test.out 2>&1
eval_tap $? 265 'PublicBulkGetUsers' test.out

#- 266 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "VcFP05Dr", "languageTag": "qoksfdHq"}' \
    > test.out 2>&1
eval_tap $? 266 'PublicSendRegistrationCode' test.out

#- 267 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "e4LbtOm6", "emailAddress": "5GKAAYp1"}' \
    > test.out 2>&1
eval_tap $? 267 'PublicVerifyRegistrationCode' test.out

#- 268 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "yVQPB1p6", "languageTag": "cW5HNfPk"}' \
    > test.out 2>&1
eval_tap $? 268 'PublicForgotPasswordV3' test.out

#- 269 PublicValidateUserInput
samples/cli/sample-apps Iam publicValidateUserInput \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "goilFj8x", "uniqueDisplayName": "4OjJCHG4", "username": "RTXBdaTr"}' \
    > test.out 2>&1
eval_tap $? 269 'PublicValidateUserInput' test.out

#- 270 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'No1IJmL5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 270 'GetAdminInvitationV3' test.out

#- 271 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'EVgCBZYC' \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "SIU74Ll1", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "2l8OtqX0", "policyId": "vOw12aGJ", "policyVersionId": "WxYEEe7H"}, {"isAccepted": false, "localizedPolicyVersionId": "y5cY75nB", "policyId": "u1NbqxTD", "policyVersionId": "yNU3dE3K"}, {"isAccepted": false, "localizedPolicyVersionId": "4rnTTIej", "policyId": "XTpjzboL", "policyVersionId": "XAsImK88"}], "authType": "km00aBr0", "code": "GkYtnmYW", "country": "nMviwtUS", "dateOfBirth": "Fvw8bCqc", "displayName": "afeESGQ1", "emailAddress": "gGFbWdWe", "password": "kTsHAUOt", "reachMinimumAge": true, "uniqueDisplayName": "zHfiduyy"}' \
    > test.out 2>&1
eval_tap $? 271 'CreateUserFromInvitationV3' test.out

#- 272 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "afanoJwQ", "country": "rekVGKpx", "dateOfBirth": "Bx3WoTJl", "displayName": "1JtMcGRu", "languageTag": "Ck93JL05", "uniqueDisplayName": "zSmXeUUd", "userName": "7TIcl2d8"}' \
    > test.out 2>&1
eval_tap $? 272 'UpdateUserV3' test.out

#- 273 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "ZYJ6PMC9", "country": "3V6qj2Kl", "dateOfBirth": "tsSbTu2U", "displayName": "mQrgSt9j", "languageTag": "TZD974GC", "uniqueDisplayName": "QfoHM2ZM", "userName": "ivBQh5wA"}' \
    > test.out 2>&1
eval_tap $? 273 'PublicPartialUpdateUserV3' test.out

#- 274 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "lg3zsERo", "emailAddress": "zQYJ3gqK", "languageTag": "DqBhDenG"}' \
    > test.out 2>&1
eval_tap $? 274 'PublicSendVerificationCodeV3' test.out

#- 275 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "WgkFu68M", "contactType": "kwHa7eE7", "languageTag": "1j6onqqR", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 275 'PublicUserVerificationV3' test.out

#- 276 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "ZbTcnRX2", "country": "HdsI6AM9", "dateOfBirth": "Y1E440xk", "displayName": "V7XOkmdi", "emailAddress": "5cXGEhuF", "password": "EvXlPann", "uniqueDisplayName": "mvJRE6ev", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 276 'PublicUpgradeHeadlessAccountV3' test.out

#- 277 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'true' \
    --body '{"emailAddress": "OFHvGJmZ", "password": "rPIdQtMb"}' \
    > test.out 2>&1
eval_tap $? 277 'PublicVerifyHeadlessAccountV3' test.out

#- 278 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "KSX0oKfJ", "mfaToken": "PVS0PiGF", "newPassword": "DTnpUbY9", "oldPassword": "eakjbjjh"}' \
    > test.out 2>&1
eval_tap $? 278 'PublicUpdatePasswordV3' test.out

#- 279 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'AqrQBxrV' \
    > test.out 2>&1
eval_tap $? 279 'PublicCreateJusticeUser' test.out

#- 280 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'TLrU2g2p' \
    --redirectUri '8oO2am1J' \
    --ticket 'zzphxg9e' \
    > test.out 2>&1
eval_tap $? 280 'PublicPlatformLinkV3' test.out

#- 281 PublicPlatformUnlinkV3
eval_tap 0 281 'PublicPlatformUnlinkV3 # SKIP deprecated' test.out

#- 282 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'MvuvguYP' \
    > test.out 2>&1
eval_tap $? 282 'PublicPlatformUnlinkAllV3' test.out

#- 283 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Vyz9U2Ms' \
    --ticket '6z7GZCQm' \
    > test.out 2>&1
eval_tap $? 283 'PublicForcePlatformLinkV3' test.out

#- 284 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'YFayA7Rl' \
    --clientId 'HgcZgM5U' \
    --redirectUri '5N3KucGf' \
    > test.out 2>&1
eval_tap $? 284 'PublicWebLinkPlatform' test.out

#- 285 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'o68MEET4' \
    --code 'CdLIfXxt' \
    --state 'doGzJ27j' \
    > test.out 2>&1
eval_tap $? 285 'PublicWebLinkPlatformEstablish' test.out

#- 286 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'AvwmGpoN' \
    --code 'nvchT8CB' \
    --state 'IqrJ0P4Y' \
    > test.out 2>&1
eval_tap $? 286 'PublicProcessWebLinkPlatformV3' test.out

#- 287 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "nAceVm3P", "userIds": ["bPq19V9M", "iUtpW7Z6", "gG8yHdNV"]}' \
    > test.out 2>&1
eval_tap $? 287 'PublicGetUsersPlatformInfosV3' test.out

#- 288 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "j256wflo", "emailAddress": "BvSmXQM2", "languageTag": "io3x5vxO", "newPassword": "bwCfQViC"}' \
    > test.out 2>&1
eval_tap $? 288 'ResetPasswordV3' test.out

#- 289 PublicGetUserByUserIdV3
eval_tap 0 289 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 290 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ywMwD4Kv' \
    --activeOnly 'true' \
    --after '4V34Chgn' \
    --before 'x6IwodnY' \
    --limit '65' \
    > test.out 2>&1
eval_tap $? 290 'PublicGetUserBanHistoryV3' test.out

#- 291 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'AtNFMell' \
    > test.out 2>&1
eval_tap $? 291 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 292 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wNHC0HFB' \
    > test.out 2>&1
eval_tap $? 292 'PublicGetUserInformationV3' test.out

#- 293 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'pioqgPCI' \
    --after '0.49802579521245494' \
    --before '0.4393842881011645' \
    --limit '88' \
    > test.out 2>&1
eval_tap $? 293 'PublicGetUserLoginHistoriesV3' test.out

#- 294 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ubnRhMZA' \
    --after 'duDwgwA0' \
    --before '871hMKGO' \
    --limit '9' \
    --platformId 'M2HirnzI' \
    > test.out 2>&1
eval_tap $? 294 'PublicGetUserPlatformAccountsV3' test.out

#- 295 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'VjcbTGnK' \
    > test.out 2>&1
eval_tap $? 295 'PublicListJusticePlatformAccountsV3' test.out

#- 296 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId '89j57zF8' \
    --body '{"platformId": "6gAnOqRL", "platformUserId": "Z5RvHeea"}' \
    > test.out 2>&1
eval_tap $? 296 'PublicLinkPlatformAccount' test.out

#- 297 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'tDRsMa2N' \
    --body '{"chosenNamespaces": ["EpVvTmpc", "lsr5Clpu", "YWgUaZoW"], "requestId": "9wcUxy2p"}' \
    > test.out 2>&1
eval_tap $? 297 'PublicForceLinkPlatformWithProgression' test.out

#- 298 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'dnrbOB6O' \
    > test.out 2>&1
eval_tap $? 298 'PublicGetPublisherUserV3' test.out

#- 299 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'd1ZaPxau' \
    --password 'JS6YPzHN' \
    > test.out 2>&1
eval_tap $? 299 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 300 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'TjfQ8G3J' \
    --before 'TYEZSr8O' \
    --isWildcard 'true' \
    --limit '70' \
    > test.out 2>&1
eval_tap $? 300 'PublicGetRolesV3' test.out

#- 301 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'u48A5qUu' \
    > test.out 2>&1
eval_tap $? 301 'PublicGetRoleV3' test.out

#- 302 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'true' \
    > test.out 2>&1
eval_tap $? 302 'PublicGetMyUserV3' test.out

#- 303 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'lXTJCaan' \
    > test.out 2>&1
eval_tap $? 303 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 304 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["Jx4QCq0M", "P8zYSQ4f", "JbVkloxb"], "oneTimeLinkCode": "4QFLQeoQ"}' \
    > test.out 2>&1
eval_tap $? 304 'LinkHeadlessAccountToMyAccountV3' test.out

#- 305 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "ItUJeVQj"}' \
    > test.out 2>&1
eval_tap $? 305 'PublicSendVerificationLinkV3' test.out

#- 306 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code '2BjmQ7HF' \
    > test.out 2>&1
eval_tap $? 306 'PublicVerifyUserByLinkV3' test.out

#- 307 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'U9JGI6tQ' \
    --code 'x7zLLcg4' \
    --error 'CLc0LcFI' \
    --state 'CRWNeioP' \
    > test.out 2>&1
eval_tap $? 307 'PlatformAuthenticateSAMLV3Handler' test.out

#- 308 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'sxWld4De' \
    --payload 'u2J0X697' \
    > test.out 2>&1
eval_tap $? 308 'LoginSSOClient' test.out

#- 309 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'JMdmzUfg' \
    > test.out 2>&1
eval_tap $? 309 'LogoutSSOClient' test.out

#- 310 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 'lKypak8n' \
    --code 'pNCcT0RA' \
    > test.out 2>&1
eval_tap $? 310 'RequestTargetTokenResponseV3' test.out

#- 311 AdminListInvitationHistoriesV4
samples/cli/sample-apps Iam adminListInvitationHistoriesV4 \
    --limit '73' \
    --namespace 'MCqCiPTr' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 311 'AdminListInvitationHistoriesV4' test.out

#- 312 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'pOaXHVf2' \
    > test.out 2>&1
eval_tap $? 312 'AdminGetDevicesByUserV4' test.out

#- 313 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'K57nf2U7' \
    --endDate '7BAAATeZ' \
    --limit '42' \
    --offset '36' \
    --startDate 'W80hgLnR' \
    > test.out 2>&1
eval_tap $? 313 'AdminGetBannedDevicesV4' test.out

#- 314 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'yJPlmiZZ' \
    > test.out 2>&1
eval_tap $? 314 'AdminGetUserDeviceBansV4' test.out

#- 315 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "vi69MjIz", "deviceId": "hzXK11pR", "deviceType": "QRcwA9PK", "enabled": true, "endDate": "nfAAVpEH", "ext": {"V9UcCM5M": {}, "KBdNnj0l": {}, "bscHnWvd": {}}, "reason": "Q0zQEAQR"}' \
    > test.out 2>&1
eval_tap $? 315 'AdminBanDeviceV4' test.out

#- 316 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'Q5aWlu86' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 316 'AdminGetDeviceBanV4' test.out

#- 317 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'M7cZ2XqV' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 317 'AdminUpdateDeviceBanV4' test.out

#- 318 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'LROQ6hG5' \
    --startDate '0Ie6R76U' \
    --deviceType 'urPbZYzY' \
    > test.out 2>&1
eval_tap $? 318 'AdminGenerateReportV4' test.out

#- 319 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 319 'AdminGetDeviceTypesV4' test.out

#- 320 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'gS1Ytusc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 320 'AdminGetDeviceBansV4' test.out

#- 321 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'Mx6dYsTV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 321 'AdminDecryptDeviceV4' test.out

#- 322 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'XBk4kPOF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 322 'AdminUnbanDeviceV4' test.out

#- 323 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'bRNYwFYo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 323 'AdminGetUsersByDeviceV4' test.out

#- 324 AdminGetNamespaceInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 324 'AdminGetNamespaceInvitationHistoryV4' test.out

#- 325 AdminGetNamespaceUserInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceUserInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 325 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 326 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 44}' \
    > test.out 2>&1
eval_tap $? 326 'AdminCreateTestUsersV4' test.out

#- 327 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "R2eyy5e1", "policyId": "qwlzhOtr", "policyVersionId": "MoctMsJJ"}, {"isAccepted": false, "localizedPolicyVersionId": "D3ab6Arw", "policyId": "AWfCssF2", "policyVersionId": "KHjP7xI4"}, {"isAccepted": false, "localizedPolicyVersionId": "zxBKreM2", "policyId": "YVCt0J2Y", "policyVersionId": "pgxfnemr"}], "authType": "EMAILPASSWD", "code": "Wqjl4PGe", "country": "nFiZMYlv", "dateOfBirth": "cnvX5o0a", "displayName": "m41NKVgM", "emailAddress": "4RT2yPpQ", "password": "jA6MXUq8", "passwordMD5Sum": "f3AeRNhZ", "reachMinimumAge": true, "uniqueDisplayName": "ihaFoZZo", "username": "yjJIYDJl"}' \
    > test.out 2>&1
eval_tap $? 327 'AdminCreateUserV4' test.out

#- 328 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": false, "userIds": ["Tb5ZAonZ", "0JepbOih", "PGaupT1a"]}' \
    > test.out 2>&1
eval_tap $? 328 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 329 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["7Gnr5BNt", "ZRvoOzQh", "RC18FqBV"]}' \
    > test.out 2>&1
eval_tap $? 329 'AdminBulkCheckValidUserIDV4' test.out

#- 330 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'fEktZEDY' \
    --body '{"avatarUrl": "W8ookbbG", "country": "5RHyfQvx", "dateOfBirth": "ANBhscl0", "displayName": "Yhgg1QVY", "languageTag": "j16D87LO", "skipLoginQueue": true, "uniqueDisplayName": "Xd1a7bkw", "userName": "yKaYZVBf"}' \
    > test.out 2>&1
eval_tap $? 330 'AdminUpdateUserV4' test.out

#- 331 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'x6dRekqT' \
    --body '{"code": "Ixr8NpY1", "emailAddress": "HjpDZQfF"}' \
    > test.out 2>&1
eval_tap $? 331 'AdminUpdateUserEmailAddressV4' test.out

#- 332 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'FqVQvISh' \
    > test.out 2>&1
eval_tap $? 332 'AdminDisableUserMFAV4' test.out

#- 333 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'rKdwkB9q' \
    > test.out 2>&1
eval_tap $? 333 'AdminListUserRolesV4' test.out

#- 334 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'awF4cFMb' \
    --body '{"assignedNamespaces": ["PvPdKg6x", "nFyafWCm", "0IFQxzIY"], "roleId": "RUCwZT0t"}' \
    > test.out 2>&1
eval_tap $? 334 'AdminUpdateUserRoleV4' test.out

#- 335 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'yy4ySC7l' \
    --body '{"assignedNamespaces": ["had7qC0E", "nxzCcEMI", "BtkF7cBl"], "roleId": "5aP4Mn5N"}' \
    > test.out 2>&1
eval_tap $? 335 'AdminAddUserRoleV4' test.out

#- 336 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'bux7CMRd' \
    --body '{"assignedNamespaces": ["402Ur9TU", "WcFjKJJe", "yXyrKHJT"], "roleId": "Fq4elRQI"}' \
    > test.out 2>&1
eval_tap $? 336 'AdminRemoveUserRoleV4' test.out

#- 337 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'false' \
    --limit '98' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 337 'AdminGetRolesV4' test.out

#- 338 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "x9AQZsdh"}' \
    > test.out 2>&1
eval_tap $? 338 'AdminCreateRoleV4' test.out

#- 339 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'xybiRwV2' \
    > test.out 2>&1
eval_tap $? 339 'AdminGetRoleV4' test.out

#- 340 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'CNcx9xxJ' \
    > test.out 2>&1
eval_tap $? 340 'AdminDeleteRoleV4' test.out

#- 341 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'lv20kENr' \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "mGU5nnKr"}' \
    > test.out 2>&1
eval_tap $? 341 'AdminUpdateRoleV4' test.out

#- 342 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'nmju7eri' \
    --body '{"permissions": [{"action": 45, "resource": "7RWiYZ6a", "schedAction": 29, "schedCron": "CDWzLu6g", "schedRange": ["OHVxEYiB", "x31boS6X", "MC7tbfnj"]}, {"action": 45, "resource": "meJUOgch", "schedAction": 40, "schedCron": "ma1kRcZM", "schedRange": ["EhRJE2Or", "UEIdJVGe", "qCS9wdvF"]}, {"action": 0, "resource": "0V7U4Qn2", "schedAction": 20, "schedCron": "Tb6sOXdz", "schedRange": ["31xCZrDi", "fqQg31Uc", "rXhKd0Bv"]}]}' \
    > test.out 2>&1
eval_tap $? 342 'AdminUpdateRolePermissionsV4' test.out

#- 343 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'UiiZxAtp' \
    --body '{"permissions": [{"action": 44, "resource": "Co3W6IV8", "schedAction": 75, "schedCron": "DnaDDmxu", "schedRange": ["o9RBj3vJ", "aIsyvjGM", "uN0XJpOE"]}, {"action": 98, "resource": "Ilxr6KW6", "schedAction": 92, "schedCron": "WY6FXTA2", "schedRange": ["xEHWRJIf", "JqVhkvuk", "YZy8P5oR"]}, {"action": 3, "resource": "F4Rbvpxm", "schedAction": 51, "schedCron": "I3TPrlAf", "schedRange": ["4DQJiORC", "XcQipFyT", "gNRXg17B"]}]}' \
    > test.out 2>&1
eval_tap $? 343 'AdminAddRolePermissionsV4' test.out

#- 344 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'sdBudqp6' \
    --body '["fQdc4W3E", "jNhVirev", "vwdWcwPw"]' \
    > test.out 2>&1
eval_tap $? 344 'AdminDeleteRolePermissionsV4' test.out

#- 345 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'NN4tsbFk' \
    --after 'uoVvDCNS' \
    --before 'Ejf1PdDB' \
    --limit '20' \
    > test.out 2>&1
eval_tap $? 345 'AdminListAssignedUsersV4' test.out

#- 346 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'qaCyyofO' \
    --body '{"assignedNamespaces": ["QJEOICXD", "FAdKDG0a", "YC0N5zx4"], "namespace": "NCTjor3P", "userId": "gtVgcRAY"}' \
    > test.out 2>&1
eval_tap $? 346 'AdminAssignUserToRoleV4' test.out

#- 347 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'zOAaxEwG' \
    --body '{"namespace": "dIwsxPhM", "userId": "xqpN34VP"}' \
    > test.out 2>&1
eval_tap $? 347 'AdminRevokeUserFromRoleV4' test.out

#- 348 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["l5dTubyL", "gKaciShz", "qWRYQ2rW"], "emailAddresses": ["Y4LnmM7U", "05F13xCC", "VcUvUXgl"], "isAdmin": false, "isNewStudio": false, "languageTag": "77QHEilV", "namespace": "CC4Y5dDe", "roleId": "a0oNffk7"}' \
    > test.out 2>&1
eval_tap $? 348 'AdminInviteUserNewV4' test.out

#- 349 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "RHrSMvJI", "country": "ulzwdtaU", "dateOfBirth": "iCPNaN2B", "displayName": "OMsyJvrn", "languageTag": "vmOZp0o2", "skipLoginQueue": true, "uniqueDisplayName": "Rj4I2nPm", "userName": "ZlRhZR8g"}' \
    > test.out 2>&1
eval_tap $? 349 'AdminUpdateMyUserV4' test.out

#- 350 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    --body '{"mfaToken": "W9YbIGLo"}' \
    > test.out 2>&1
eval_tap $? 350 'AdminDisableMyAuthenticatorV4' test.out

#- 351 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code '2hGUQYHO' \
    > test.out 2>&1
eval_tap $? 351 'AdminEnableMyAuthenticatorV4' test.out

#- 352 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 352 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 353 AdminGetMyBackupCodesV4
eval_tap 0 353 'AdminGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 354 AdminGenerateMyBackupCodesV4
eval_tap 0 354 'AdminGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 355 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    --body '{"mfaToken": "xyNyb437"}' \
    > test.out 2>&1
eval_tap $? 355 'AdminDisableMyBackupCodesV4' test.out

#- 356 AdminDownloadMyBackupCodesV4
eval_tap 0 356 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 357 AdminEnableMyBackupCodesV4
eval_tap 0 357 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 358 AdminGetBackupCodesV4
samples/cli/sample-apps Iam adminGetBackupCodesV4 \
    --languageTag 'k023Fmtt' \
    > test.out 2>&1
eval_tap $? 358 'AdminGetBackupCodesV4' test.out

#- 359 AdminGenerateBackupCodesV4
samples/cli/sample-apps Iam adminGenerateBackupCodesV4 \
    --languageTag 'AOP4qluV' \
    > test.out 2>&1
eval_tap $? 359 'AdminGenerateBackupCodesV4' test.out

#- 360 AdminEnableBackupCodesV4
samples/cli/sample-apps Iam adminEnableBackupCodesV4 \
    --languageTag 'lwKWKrIq' \
    > test.out 2>&1
eval_tap $? 360 'AdminEnableBackupCodesV4' test.out

#- 361 AdminChallengeMyMFAV4
samples/cli/sample-apps Iam adminChallengeMyMFAV4 \
    --code 'ka0Aalau' \
    --factor 'np618osn' \
    > test.out 2>&1
eval_tap $? 361 'AdminChallengeMyMFAV4' test.out

#- 362 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    --action 'v61ky47T' \
    > test.out 2>&1
eval_tap $? 362 'AdminSendMyMFAEmailCodeV4' test.out

#- 363 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    --body '{"mfaToken": "FS3KpcCz"}' \
    > test.out 2>&1
eval_tap $? 363 'AdminDisableMyEmailV4' test.out

#- 364 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'uIdyg9YP' \
    > test.out 2>&1
eval_tap $? 364 'AdminEnableMyEmailV4' test.out

#- 365 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 365 'AdminGetMyEnabledFactorsV4' test.out

#- 366 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'tkYGOImA' \
    > test.out 2>&1
eval_tap $? 366 'AdminMakeFactorMyDefaultV4' test.out

#- 367 AdminGetMyMFAStatusV4
samples/cli/sample-apps Iam adminGetMyMFAStatusV4 \
    > test.out 2>&1
eval_tap $? 367 'AdminGetMyMFAStatusV4' test.out

#- 368 AdminInviteUserV4
eval_tap 0 368 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 369 AuthenticationWithPlatformLinkV4
samples/cli/sample-apps Iam authenticationWithPlatformLinkV4 \
    --extendExp 'false' \
    --clientId 'iLL9UbbK' \
    --linkingToken 'V2N4WFbP' \
    --password '9d5ZunLc' \
    --username 'SNwVb3lZ' \
    > test.out 2>&1
eval_tap $? 369 'AuthenticationWithPlatformLinkV4' test.out

#- 370 GenerateTokenByNewHeadlessAccountV4
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV4 \
    --additionalData 'wRF8R2NX' \
    --extendExp 'true' \
    --linkingToken 'Q4N3Inlu' \
    > test.out 2>&1
eval_tap $? 370 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 371 Verify2faCodeV4
samples/cli/sample-apps Iam verify2faCodeV4 \
    --code 'lHCecUEF' \
    --factor 'of8yrHl2' \
    --mfaToken 'nkg51TLx' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 371 'Verify2faCodeV4' test.out

#- 372 PlatformTokenGrantV4
samples/cli/sample-apps Iam platformTokenGrantV4 \
    --platformId 'u8AAlbGg' \
    --codeChallenge 'Gjly6IIz' \
    --codeChallengeMethod 'S256' \
    --additionalData 'dKVBPQ7Y' \
    --clientId 'fgJId8BF' \
    --createHeadless 'false' \
    --deviceId 'IqhYXHsA' \
    --macAddress 'JhExpZqO' \
    --platformToken 'zfPz0oYg' \
    --serviceLabel '0.8259226277760419' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 372 'PlatformTokenGrantV4' test.out

#- 373 SimultaneousLoginV4
samples/cli/sample-apps Iam simultaneousLoginV4 \
    --codeChallenge 'Jqvdho4O' \
    --codeChallengeMethod 'S256' \
    --simultaneousPlatform '57UD4F9M' \
    --simultaneousTicket '4KjPTO6l' \
    --nativePlatform 'steam' \
    --nativePlatformTicket 'YtlDO31S' \
    > test.out 2>&1
eval_tap $? 373 'SimultaneousLoginV4' test.out

#- 374 TokenGrantV4
samples/cli/sample-apps Iam tokenGrantV4 \
    --codeChallenge '33brSMxu' \
    --codeChallengeMethod 'plain' \
    --additionalData 'PrExDMld' \
    --clientId 'DHXBs3lG' \
    --clientSecret 'nQk2JMXg' \
    --code '8I9z5kF2' \
    --codeVerifier 'FNWONUfb' \
    --extendNamespace 'ATSY2h7F' \
    --extendExp 'true' \
    --loginQueueTicket 'x4Jsb66n' \
    --password '9i8LE81O' \
    --redirectUri 'hO7ioq4p' \
    --refreshToken 'H4fTFYEd' \
    --username 'cKD826Px' \
    --grantType 'authorization_code' \
    > test.out 2>&1
eval_tap $? 374 'TokenGrantV4' test.out

#- 375 RequestTargetTokenResponseV4
samples/cli/sample-apps Iam requestTargetTokenResponseV4 \
    --additionalData 'SxlQv3sU' \
    --code 'FzfFiTnw' \
    > test.out 2>&1
eval_tap $? 375 'RequestTargetTokenResponseV4' test.out

#- 376 PublicListUserIDByPlatformUserIDsV4
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'lZ0UJqa4' \
    --rawPUID 'true' \
    --body '{"platformUserIds": ["zXzUeplK", "rycv3Xor", "9hvb0LZY"]}' \
    > test.out 2>&1
eval_tap $? 376 'PublicListUserIDByPlatformUserIDsV4' test.out

#- 377 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "TSUtfAef", "policyId": "VHKcndyF", "policyVersionId": "KLlHtKXM"}, {"isAccepted": false, "localizedPolicyVersionId": "JiQc1w0k", "policyId": "FuZUuv9Z", "policyVersionId": "D0AgAfgq"}, {"isAccepted": true, "localizedPolicyVersionId": "9654n2rN", "policyId": "1J6HWcgv", "policyVersionId": "zoxWwMmZ"}], "authType": "EMAILPASSWD", "country": "UF5E6DGh", "dateOfBirth": "tZsvbZMi", "displayName": "7CGUhcKA", "emailAddress": "ddKfoFmT", "password": "tYsgFimz", "passwordMD5Sum": "aXOj8960", "uniqueDisplayName": "D9P67tPS", "username": "mfeRl65J", "verified": true}' \
    > test.out 2>&1
eval_tap $? 377 'PublicCreateTestUserV4' test.out

#- 378 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "fKo6Ek1B", "policyId": "WQSgbVk0", "policyVersionId": "HN8mpEuu"}, {"isAccepted": true, "localizedPolicyVersionId": "g1V4SOGH", "policyId": "b95OeEOy", "policyVersionId": "HgTb6E3j"}, {"isAccepted": false, "localizedPolicyVersionId": "Wa3Rof80", "policyId": "8ZDVdXlb", "policyVersionId": "myq02yXY"}], "authType": "EMAILPASSWD", "code": "JPiNOAPJ", "country": "nhwSlcJW", "dateOfBirth": "kBwMWAMw", "displayName": "2whL1pkK", "emailAddress": "lFd8ae5J", "password": "MaP1SZFt", "passwordMD5Sum": "kEhgq3ie", "reachMinimumAge": true, "uniqueDisplayName": "X2PjkGr5", "username": "VAQ4EgEX"}' \
    > test.out 2>&1
eval_tap $? 378 'PublicCreateUserV4' test.out

#- 379 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'iiuo0R6u' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "UzaEL9Pl", "policyId": "WiwJUzhM", "policyVersionId": "OOucAxsm"}, {"isAccepted": false, "localizedPolicyVersionId": "wG36YDOZ", "policyId": "z6wp06iG", "policyVersionId": "Ole3xmqS"}, {"isAccepted": true, "localizedPolicyVersionId": "hdUiX8TD", "policyId": "6q8dLLxE", "policyVersionId": "biLeOfPS"}], "authType": "EMAILPASSWD", "code": "TgWqCNeT", "country": "JS5MrXzh", "dateOfBirth": "L0bFZQUN", "displayName": "a1CeipJS", "emailAddress": "MERWUJw7", "password": "0t92FqkK", "passwordMD5Sum": "2Ddav4Nr", "reachMinimumAge": false, "uniqueDisplayName": "2WYrO7dO", "username": "DSzsEqBl"}' \
    > test.out 2>&1
eval_tap $? 379 'CreateUserFromInvitationV4' test.out

#- 380 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "9WkZehFI", "country": "aPuXUqeB", "dateOfBirth": "Twowvl7D", "displayName": "rOSiO6U8", "languageTag": "g8GaPCCf", "uniqueDisplayName": "BzfAMtsB", "userName": "q21fpvVL"}' \
    > test.out 2>&1
eval_tap $? 380 'PublicUpdateUserV4' test.out

#- 381 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "7qO7IXeW", "emailAddress": "MsGvr1te"}' \
    > test.out 2>&1
eval_tap $? 381 'PublicUpdateUserEmailAddressV4' test.out

#- 382 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "ZuaCf2xi", "country": "0MDRJyJX", "dateOfBirth": "uq6eU8iS", "displayName": "CD9AWav6", "emailAddress": "yn3LjjUu", "password": "m9DDaEZe", "reachMinimumAge": false, "uniqueDisplayName": "npX8ENKP", "username": "2uqrKvSB", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 382 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 383 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "uGFjaXnI", "password": "qM0RmCem", "username": "gH80oTon"}' \
    > test.out 2>&1
eval_tap $? 383 'PublicUpgradeHeadlessAccountV4' test.out

#- 384 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --body '{"mfaToken": "yKLo8Xhb"}' \
    > test.out 2>&1
eval_tap $? 384 'PublicDisableMyAuthenticatorV4' test.out

#- 385 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'GVEC59NV' \
    > test.out 2>&1
eval_tap $? 385 'PublicEnableMyAuthenticatorV4' test.out

#- 386 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 386 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 387 PublicGetMyBackupCodesV4
eval_tap 0 387 'PublicGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 388 PublicGenerateMyBackupCodesV4
eval_tap 0 388 'PublicGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 389 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --body '{"mfaToken": "ZJxDZQyj"}' \
    > test.out 2>&1
eval_tap $? 389 'PublicDisableMyBackupCodesV4' test.out

#- 390 PublicDownloadMyBackupCodesV4
eval_tap 0 390 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 391 PublicEnableMyBackupCodesV4
eval_tap 0 391 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 392 PublicGetBackupCodesV4
samples/cli/sample-apps Iam publicGetBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'BEOudejR' \
    > test.out 2>&1
eval_tap $? 392 'PublicGetBackupCodesV4' test.out

#- 393 PublicGenerateBackupCodesV4
samples/cli/sample-apps Iam publicGenerateBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'TRdrtliz' \
    > test.out 2>&1
eval_tap $? 393 'PublicGenerateBackupCodesV4' test.out

#- 394 PublicEnableBackupCodesV4
samples/cli/sample-apps Iam publicEnableBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'PmlZx6Lp' \
    > test.out 2>&1
eval_tap $? 394 'PublicEnableBackupCodesV4' test.out

#- 395 PublicChallengeMyMFAV4
samples/cli/sample-apps Iam publicChallengeMyMFAV4 \
    --namespace $AB_NAMESPACE \
    --code 'tLYVvmnn' \
    --factor 'DLFb3JLa' \
    > test.out 2>&1
eval_tap $? 395 'PublicChallengeMyMFAV4' test.out

#- 396 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 396 'PublicRemoveTrustedDeviceV4' test.out

#- 397 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    --action 'cvjdPvk5' \
    > test.out 2>&1
eval_tap $? 397 'PublicSendMyMFAEmailCodeV4' test.out

#- 398 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --body '{"mfaToken": "tyWB1Sqr"}' \
    > test.out 2>&1
eval_tap $? 398 'PublicDisableMyEmailV4' test.out

#- 399 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'enF15VCa' \
    > test.out 2>&1
eval_tap $? 399 'PublicEnableMyEmailV4' test.out

#- 400 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 400 'PublicGetMyEnabledFactorsV4' test.out

#- 401 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor '8rkbGaff' \
    > test.out 2>&1
eval_tap $? 401 'PublicMakeFactorMyDefaultV4' test.out

#- 402 PublicGetMyMFAStatusV4
samples/cli/sample-apps Iam publicGetMyMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 402 'PublicGetMyMFAStatusV4' test.out

#- 403 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'vLUg2g36' \
    > test.out 2>&1
eval_tap $? 403 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 404 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "a95FqMyL", "emailAddress": "HJjVsKxA", "languageTag": "riN62buX", "namespace": "R0g9vMAG", "namespaceDisplayName": "bVKAfEJx"}' \
    > test.out 2>&1
eval_tap $? 404 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE