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
    --body '{"modules": [{"docLink": "3CXf7CEh", "groups": [{"group": "rnarnJzC", "groupId": "rpmac0Sg", "permissions": [{"allowedActions": [51, 33, 79], "resource": "ExPUAN1t"}, {"allowedActions": [58, 30, 18], "resource": "Oy7b8sWo"}, {"allowedActions": [51, 11, 83], "resource": "wxuZviQU"}]}, {"group": "3dO0XppB", "groupId": "WTLDRmz2", "permissions": [{"allowedActions": [43, 10, 100], "resource": "AdHggv0w"}, {"allowedActions": [64, 76, 2], "resource": "MCwrMsBu"}, {"allowedActions": [66, 86, 84], "resource": "FYCOoT6T"}]}, {"group": "nIV6k8Ta", "groupId": "5osBlIzd", "permissions": [{"allowedActions": [22, 27, 90], "resource": "FdTk6mhU"}, {"allowedActions": [57, 7, 6], "resource": "PAQulhPo"}, {"allowedActions": [93, 22, 70], "resource": "vGeciBJW"}]}], "module": "UcTUhEMk", "moduleId": "fADZiKnD"}, {"docLink": "M06GN8m8", "groups": [{"group": "gpkyWPx4", "groupId": "dtWJ3YPb", "permissions": [{"allowedActions": [66, 50, 92], "resource": "nOhf7ZL7"}, {"allowedActions": [12, 9, 34], "resource": "SDT0aqYT"}, {"allowedActions": [17, 8, 15], "resource": "fjyhLueo"}]}, {"group": "vWMfefdT", "groupId": "luLxNN9T", "permissions": [{"allowedActions": [61, 28, 29], "resource": "3Kz1QhGp"}, {"allowedActions": [16, 95, 97], "resource": "FV63omAU"}, {"allowedActions": [22, 68, 98], "resource": "zdo6vrJ7"}]}, {"group": "2r0oFd0h", "groupId": "mK22joHU", "permissions": [{"allowedActions": [59, 70, 0], "resource": "daUEfDgU"}, {"allowedActions": [33, 47, 99], "resource": "s1YudfkV"}, {"allowedActions": [37, 24, 7], "resource": "TAClMqbj"}]}], "module": "HsVxIB0p", "moduleId": "IeGQVUXO"}, {"docLink": "Y2Fh77gK", "groups": [{"group": "bwXfpiAL", "groupId": "ygSjf5NK", "permissions": [{"allowedActions": [97, 7, 60], "resource": "ll1eFNDc"}, {"allowedActions": [76, 74, 95], "resource": "DZISBnkA"}, {"allowedActions": [65, 53, 16], "resource": "rWtG9OFI"}]}, {"group": "alVcVIfb", "groupId": "ItdtDDxL", "permissions": [{"allowedActions": [45, 4, 90], "resource": "9wiUq6sh"}, {"allowedActions": [15, 86, 96], "resource": "gXJtkiyc"}, {"allowedActions": [6, 51, 11], "resource": "K0EwNs7O"}]}, {"group": "mQidLLAN", "groupId": "ZztnNLrE", "permissions": [{"allowedActions": [58, 62, 80], "resource": "QMONvWA4"}, {"allowedActions": [65, 17, 48], "resource": "FrLwf725"}, {"allowedActions": [82, 96, 61], "resource": "qt0Kl42I"}]}], "module": "DI1Y0QKR", "moduleId": "LxPNQdLV"}]}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
samples/cli/sample-apps Iam adminDeleteConfigPermissionsByGroup \
    --forceDelete 'true' \
    --body '{"groupId": "pfjXqNxe", "moduleId": "GSVezsHx"}' \
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
    --body '[{"field": "YAPzQlkX", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["QQBlBa8u", "JRDW2Cvu", "PotnTzgn"], "preferRegex": false, "regex": "cPVTUsNy"}, "blockedWord": ["TCcq7FZ4", "kxSi2gXr", "teWO1Ghd"], "description": [{"language": "C02q3XqW", "message": ["v4CRhJyK", "7j90ciAt", "BYjp5I6b"]}, {"language": "qRLrO2zu", "message": ["GYXBnU9u", "xax97dQa", "VKCUagDi"]}, {"language": "Oe8grYKG", "message": ["LJnRMT4X", "J1lv1TMf", "cCw7QRhD"]}], "isCustomRegex": false, "letterCase": "cO1hM8zz", "maxLength": 61, "maxRepeatingAlphaNum": 30, "maxRepeatingSpecialCharacter": 77, "minCharType": 62, "minLength": 47, "profanityFilter": "ClIpxChO", "regex": "vx5xtZkM", "specialCharacterLocation": "vfH8qyW0", "specialCharacters": ["3q1dRGT0", "AS3W4dUk", "c4PIUaK5"]}}, {"field": "Yl6i0K8e", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["fl4X63Wn", "HHMWULaf", "lXqqMGHQ"], "preferRegex": true, "regex": "BJpfCns8"}, "blockedWord": ["qY3JnpMz", "U5XAkjuq", "OYeIQ0eK"], "description": [{"language": "IQaMimxK", "message": ["6ANNAlMC", "RP1jtwLl", "SeCt5yzd"]}, {"language": "i5ml2HJg", "message": ["nfsIuY0S", "LPR12Otp", "7FhqsL3n"]}, {"language": "VAwc57UT", "message": ["C1BYNyd0", "GI1Kx4k1", "bnmskXrK"]}], "isCustomRegex": false, "letterCase": "SfjVIQhH", "maxLength": 42, "maxRepeatingAlphaNum": 17, "maxRepeatingSpecialCharacter": 52, "minCharType": 93, "minLength": 54, "profanityFilter": "zvxbdxNI", "regex": "KGwdnDb6", "specialCharacterLocation": "6Dxs5hgm", "specialCharacters": ["voQjaCwX", "UHcvziLT", "KpxXDvfC"]}}, {"field": "Y4IOviRs", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["UboJ01Yt", "liVmuJ08", "g6kXX4sg"], "preferRegex": true, "regex": "xZ0RKU9F"}, "blockedWord": ["JCCFHP46", "J9k3rPWJ", "XkxaETQ2"], "description": [{"language": "67OUtZJo", "message": ["hWsxLMXr", "TmIGkJLp", "QQYH5p42"]}, {"language": "WysW4szp", "message": ["oGwnzsap", "ESGlnjmb", "vO1HkrPl"]}, {"language": "5iVX62lA", "message": ["1dil5fd0", "kCYSJU0U", "zBmL1t1I"]}], "isCustomRegex": true, "letterCase": "vsOUlGyt", "maxLength": 89, "maxRepeatingAlphaNum": 23, "maxRepeatingSpecialCharacter": 72, "minCharType": 61, "minLength": 74, "profanityFilter": "WYSkgYT6", "regex": "jBLDwSCd", "specialCharacterLocation": "OQK5OL40", "specialCharacters": ["IKKn4I8Q", "R5G60BsJ", "V1XaXKZC"]}}]' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'yOPCa14F' \
    > test.out 2>&1
eval_tap $? 114 'AdminResetInputValidations' test.out

#- 115 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'IeRk9SF6' \
    --before '79Qd0EbP' \
    --endDate 'Gu5JE6ig' \
    --limit '45' \
    --query 'GBzB6P4w' \
    --roleId 'vP4XQ71e' \
    --startDate 'zZkBKt3T' \
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
    --body '{"ageRestriction": 14, "enable": false}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 118 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminGetListCountryAgeRestrictionV3' test.out

#- 119 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'lLGt8pSe' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 17}' \
    > test.out 2>&1
eval_tap $? 119 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 120 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'MFDdY8Bb' \
    --limit '17' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetBannedUsersV3' test.out

#- 121 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "HTfYvznH", "comment": "aq7smKzW", "endDate": "XeewYM6Q", "reason": "L765P0Si", "skipNotif": true, "userIds": ["44erbzsm", "VulkRDqW", "xNiS8sXg"]}' \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "eB0YkYZF", "userId": "wgxhk3Ri"}, {"banId": "ohqt9coC", "userId": "5K5R3Gl3"}, {"banId": "Qd2KV2Nx", "userId": "gDbQ04li"}]}' \
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
    --clientId '0QeQa9G9' \
    --clientName 'nfd09rlN' \
    --clientType 'yFtJY3l9' \
    --limit '28' \
    --offset '96' \
    --skipLoginQueue 'false' \
    > test.out 2>&1
eval_tap $? 124 'AdminGetClientsByNamespaceV3' test.out

#- 125 AdminBulkUpdateClientsV3
samples/cli/sample-apps Iam adminBulkUpdateClientsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientIds": ["m1TzGV1m", "vWt2NPrO", "DJoQD8uR"], "clientUpdateRequest": {"audiences": ["XgwaAoXm", "4t3SPp3u", "cRnNYHWo"], "baseUri": "boQMaa8X", "clientName": "QFI4PWF8", "clientPermissions": [{"action": 41, "resource": "0MHxqJsB", "schedAction": 99, "schedCron": "dsSH3hCm", "schedRange": ["6zuvzMmC", "L3PN1KWy", "gSfCoK2k"]}, {"action": 31, "resource": "PLTRxgBA", "schedAction": 79, "schedCron": "TUj92hcQ", "schedRange": ["IHvHYwrq", "xTdNfbfd", "E52Pws6i"]}, {"action": 93, "resource": "BbTVLGyL", "schedAction": 36, "schedCron": "i0W1UMD1", "schedRange": ["dyGzZljM", "HNuHKAOr", "HnhYnSDY"]}], "clientPlatform": "WljwErZ4", "deletable": false, "description": "yHYCJUIn", "modulePermissions": [{"moduleId": "yzKVgtUa", "selectedGroups": [{"groupId": "kZkxTCqr", "selectedActions": [19, 49, 70]}, {"groupId": "Ky8QgokH", "selectedActions": [28, 63, 72]}, {"groupId": "66qaZmw7", "selectedActions": [68, 71, 40]}]}, {"moduleId": "nsksPl9d", "selectedGroups": [{"groupId": "WKdeHH7x", "selectedActions": [94, 82, 9]}, {"groupId": "hdYjxrYQ", "selectedActions": [52, 53, 99]}, {"groupId": "vCGeA23h", "selectedActions": [47, 70, 15]}]}, {"moduleId": "B27MJ4K0", "selectedGroups": [{"groupId": "WipNB1bZ", "selectedActions": [88, 75, 80]}, {"groupId": "sV804RAX", "selectedActions": [54, 1, 78]}, {"groupId": "sJmhW25x", "selectedActions": [81, 20, 42]}]}], "namespace": "ljrZ9nXr", "oauthAccessTokenExpiration": 18, "oauthAccessTokenExpirationTimeUnit": "PVhJitjw", "oauthRefreshTokenExpiration": 20, "oauthRefreshTokenExpirationTimeUnit": "eReXBDoz", "redirectUri": "m5EGd9Jd", "scopes": ["x3OurenY", "h5WTSMAY", "5GFuYOzm"], "skipLoginQueue": true, "twoFactorEnabled": false}}' \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["kKXWiysT", "GLVEcSH1", "z0EqXB5q"], "baseUri": "mjpztHio", "clientId": "tx5eMcbv", "clientName": "qyQkIOxw", "clientPermissions": [{"action": 55, "resource": "IpzkH4lw", "schedAction": 20, "schedCron": "yUmVVfSC", "schedRange": ["HCDQdq8D", "8yNi0KYF", "c5E8ggfg"]}, {"action": 100, "resource": "fUPUWD2B", "schedAction": 42, "schedCron": "L7IN3a9U", "schedRange": ["ZFvqlLYT", "b0e0lJFf", "gVul2eCZ"]}, {"action": 21, "resource": "APHzi7Ld", "schedAction": 97, "schedCron": "frg1supc", "schedRange": ["WlPVNfL0", "5GiL3c2j", "J4CYDpaM"]}], "clientPlatform": "dDr9Qe5I", "deletable": true, "description": "UGQDLDEo", "modulePermissions": [{"moduleId": "eAFgyB7y", "selectedGroups": [{"groupId": "2ukvGURk", "selectedActions": [38, 8, 1]}, {"groupId": "yNT6CxBV", "selectedActions": [17, 32, 5]}, {"groupId": "11Ypi7KY", "selectedActions": [2, 65, 26]}]}, {"moduleId": "yov1S6Ql", "selectedGroups": [{"groupId": "95HgykUE", "selectedActions": [67, 59, 0]}, {"groupId": "qorHHlvz", "selectedActions": [59, 27, 21]}, {"groupId": "Fs5umIsn", "selectedActions": [82, 74, 89]}]}, {"moduleId": "nRtTGuQ2", "selectedGroups": [{"groupId": "bTyWdCFw", "selectedActions": [44, 84, 76]}, {"groupId": "ODD7PNFa", "selectedActions": [80, 29, 23]}, {"groupId": "3rgPFT1Q", "selectedActions": [50, 5, 37]}]}], "namespace": "O4jEKx6u", "oauthAccessTokenExpiration": 1, "oauthAccessTokenExpirationTimeUnit": "f4wr9Ee8", "oauthClientType": "u7RQVqtz", "oauthRefreshTokenExpiration": 37, "oauthRefreshTokenExpirationTimeUnit": "gYZCc5Uw", "parentNamespace": "Q94P3zyW", "redirectUri": "g43zioqr", "scopes": ["VWdKtyS3", "lqxyzAGG", "wcI9pnlC"], "secret": "DCnFKlHJ", "skipLoginQueue": true, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId '95sg8cEX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'AUuMj3aT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'o9R8lQzK' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["QWQwwtwD", "BnSRBzC2", "VHd9YIdL"], "baseUri": "3NG8iuq7", "clientName": "MOwfwS1X", "clientPermissions": [{"action": 67, "resource": "b23Kxdhj", "schedAction": 58, "schedCron": "4hmBsF6Y", "schedRange": ["H2NNv3wN", "ELdC7JTo", "UIGggY7i"]}, {"action": 34, "resource": "QFkXcBh1", "schedAction": 92, "schedCron": "PCEAM062", "schedRange": ["iJmzP4wP", "kQNzXPGb", "LFnckgD5"]}, {"action": 91, "resource": "LEW78KE4", "schedAction": 57, "schedCron": "dF6I7Tvm", "schedRange": ["Pk8iTBlX", "OnKa587G", "Jaszlyc5"]}], "clientPlatform": "fdPiBnO2", "deletable": true, "description": "KPGFjXd9", "modulePermissions": [{"moduleId": "LUlLB1OG", "selectedGroups": [{"groupId": "mIGzkOBp", "selectedActions": [26, 53, 13]}, {"groupId": "zD4R7aTt", "selectedActions": [14, 76, 69]}, {"groupId": "BW7Kkyv5", "selectedActions": [37, 49, 50]}]}, {"moduleId": "RTtTg1OG", "selectedGroups": [{"groupId": "aZqcb3IY", "selectedActions": [98, 61, 11]}, {"groupId": "Z9F7NpTJ", "selectedActions": [33, 70, 10]}, {"groupId": "laC2YKhq", "selectedActions": [58, 76, 37]}]}, {"moduleId": "birV9crT", "selectedGroups": [{"groupId": "HQIJ8EZk", "selectedActions": [16, 88, 23]}, {"groupId": "Kf0uUWEX", "selectedActions": [56, 73, 89]}, {"groupId": "UqXxv7m3", "selectedActions": [100, 63, 85]}]}], "namespace": "9pwNEXwr", "oauthAccessTokenExpiration": 100, "oauthAccessTokenExpirationTimeUnit": "WN8FTVEH", "oauthRefreshTokenExpiration": 6, "oauthRefreshTokenExpirationTimeUnit": "FjbzWbUZ", "redirectUri": "T8fCXg45", "scopes": ["bj3n3yYO", "o1liSlps", "oPsP0FXD"], "skipLoginQueue": false, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'yk8JjkZs' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 61, "resource": "cz0Kxzx0"}, {"action": 11, "resource": "bn2O4NnF"}, {"action": 92, "resource": "M4EWimoz"}]}' \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'nwl5Ehog' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 95, "resource": "XbTGCiA8"}, {"action": 83, "resource": "DJJJEQ0S"}, {"action": 42, "resource": "tyP9JdrJ"}]}' \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '37' \
    --clientId 'Ozy4etnR' \
    --namespace $AB_NAMESPACE \
    --resource 'mozPr4WK' \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
samples/cli/sample-apps Iam adminGetConfigValueV3 \
    --configKey 'djrtlJQ5' \
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
    --body '{"blacklist": ["LYHcZYFR", "hUOprX9M", "yR6uIwy2"]}' \
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
    --body '{"active": true, "roleIds": ["28VZXgBd", "8pgS7Nvi", "atFEpGcr"]}' \
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
    --limit '54' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 141 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 142 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'EWc6idrl' \
    > test.out 2>&1
eval_tap $? 142 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 143 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'leCMQfPh' \
    --body '{"ACSURL": "8uS7cZnV", "AWSCognitoRegion": "RFX8aQGs", "AWSCognitoUserPool": "3knfU4ST", "AllowedClients": ["W8G9yBBs", "diAcTrA4", "uwAbOrpv"], "AppId": "fSq8hw5X", "AuthorizationEndpoint": "fAj219xf", "ClientId": "Skg5KLNG", "EmptyStrFieldList": ["Dmsaej50", "ca80kabs", "NPOM9JFz"], "EnableServerLicenseValidation": false, "Environment": "HlZw9fVa", "FederationMetadataURL": "0Jyh0YcH", "GenericOauthFlow": true, "IncludePUID": false, "IsActive": true, "Issuer": "pE8nyNwn", "JWKSEndpoint": "9P0gzVXZ", "KeyID": "5ZZt62ml", "LogoURL": "0KBZDd9Q", "NetflixCertificates": {"encryptedPrivateKey": "oL4lQLgi", "encryptedPrivateKeyName": "dO8sftDs", "publicCertificate": "x47UoU35", "publicCertificateName": "XvzQ8kf7", "rootCertificate": "Y5FL2XN8", "rootCertificateName": "vFdkZzXx"}, "OrganizationId": "bLOm8ByE", "PlatformName": "2UucqV8l", "RedirectUri": "XsUdQfIy", "RegisteredDomains": [{"affectedClientIDs": ["AUWYNQ9b", "rDyylhU1", "cb94dJsO"], "domain": "zHy1LFUL", "namespaces": ["bQQVbj6s", "IzExhIaZ", "LqhLSin2"], "roleId": "40a3pE8Y", "ssoCfg": {"googleKey": {"DwQoqTX0": {}, "xDOJQi72": {}, "PCHuPNuu": {}}, "groupConfigs": [{"assignNamespaces": ["cKD6QarM", "AV6vUeQ2", "gP3HXp3i"], "group": "fYpq4tLr", "roleId": "4sUtdRis"}, {"assignNamespaces": ["OzrGWfOJ", "kaPpPME4", "5e20IJhs"], "group": "31FOmDZs", "roleId": "SHINYuG5"}, {"assignNamespaces": ["zGydEqfT", "GZRvx2C3", "Xwl1GgGV"], "group": "PCa3DzQ6", "roleId": "hzxyt3cJ"}]}}, {"affectedClientIDs": ["FgqOImoM", "GkqVdS7o", "yXA2Iipk"], "domain": "5teFNcWG", "namespaces": ["VlmEXzMK", "bNsl9Gcj", "ID82v1o8"], "roleId": "BOn2aT9O", "ssoCfg": {"googleKey": {"H8a9Y7As": {}, "tQ80KwjO": {}, "w8NibJFA": {}}, "groupConfigs": [{"assignNamespaces": ["PNk8unZ5", "xQaweQSi", "WgJNtAAH"], "group": "LSzSn3iw", "roleId": "2k0otuks"}, {"assignNamespaces": ["bv3jY1ac", "8ldWqWvr", "RnIR9fEa"], "group": "5arREX6w", "roleId": "fGEQiXCN"}, {"assignNamespaces": ["vyaNTHXH", "V7uMspSu", "TtsNPVSK"], "group": "PLht5XVr", "roleId": "5I2GvyQi"}]}}, {"affectedClientIDs": ["netqXHhr", "B6owMC2q", "ZHBAuR1o"], "domain": "Np1Ss6xn", "namespaces": ["pl5xx010", "NI56qTte", "wny9u6ow"], "roleId": "C96vENBp", "ssoCfg": {"googleKey": {"DILFP9gV": {}, "ZaX2m37m": {}, "KpSNr34J": {}}, "groupConfigs": [{"assignNamespaces": ["LrLh5hRU", "Fs1iSzvL", "oSVoeYD7"], "group": "YBPjNSr1", "roleId": "oiNCPTa6"}, {"assignNamespaces": ["IuzitPEt", "ljvFj5oq", "J6e4nvW1"], "group": "yTnEsHHG", "roleId": "LG8Hmq2Q"}, {"assignNamespaces": ["SmfBYGWj", "u9QsN1tG", "ajEA1fGO"], "group": "dLLCPA6a", "roleId": "W1FcMHT1"}]}}], "Secret": "VmXb9GZ8", "TeamID": "v6KnAEOv", "TokenAuthenticationType": "NlFiuTyg", "TokenClaimsMapping": {"FnIiEBvs": "HwsUCrWZ", "oRbHFDcT": "7hyuHIzw", "N8MnEBCa": "zi3uoBSD"}, "TokenEndpoint": "JTWGFG2q", "UserInfoEndpoint": "6dwbGmvC", "UserInfoHTTPMethod": "af7Iwp8l", "googleAdminConsoleKey": "T5XaZVUS", "scopes": ["To9NuFn1", "ZJUM5URc", "ULuwt3Ov"]}' \
    > test.out 2>&1
eval_tap $? 143 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 144 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '6d4jyD57' \
    > test.out 2>&1
eval_tap $? 144 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 145 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'dKKTxh9G' \
    --body '{"ACSURL": "P1mWFyR3", "AWSCognitoRegion": "c8d92Hc5", "AWSCognitoUserPool": "CU0fMlUT", "AllowedClients": ["8QYxRBlA", "t60EQUCK", "K8SxEtOb"], "AppId": "Gdfgqj0w", "AuthorizationEndpoint": "88MZLjq2", "ClientId": "RbqkDZeU", "EmptyStrFieldList": ["FBFVGdVG", "35CpHKzb", "74JcJYLf"], "EnableServerLicenseValidation": false, "Environment": "bAyFDjWn", "FederationMetadataURL": "QY27AThv", "GenericOauthFlow": true, "IncludePUID": false, "IsActive": false, "Issuer": "Kkfw1mJ0", "JWKSEndpoint": "RjPYHZbN", "KeyID": "xEcnmNYW", "LogoURL": "BeAgjGsi", "NetflixCertificates": {"encryptedPrivateKey": "TEi03dUI", "encryptedPrivateKeyName": "YCfmIinQ", "publicCertificate": "PHU5Uexi", "publicCertificateName": "yIfgoAmu", "rootCertificate": "Z9v9CyRo", "rootCertificateName": "RiU2EBPU"}, "OrganizationId": "9vT1Tjg1", "PlatformName": "d5Rn7Mfv", "RedirectUri": "0FxBKM6A", "RegisteredDomains": [{"affectedClientIDs": ["5x6hQFIZ", "4URtbtyL", "pSkz4BSF"], "domain": "ZuaUq23v", "namespaces": ["IQQZv6uE", "epdwAN4L", "JxACSA7c"], "roleId": "JzFHOmO3", "ssoCfg": {"googleKey": {"NOG4tPNs": {}, "j8CBS7Q5": {}, "k2cVsGlB": {}}, "groupConfigs": [{"assignNamespaces": ["1F6CeupQ", "2cUczEpK", "0AHPOn5s"], "group": "DbPJepiy", "roleId": "5W5yFrYG"}, {"assignNamespaces": ["ObADKFiK", "2lcFypQT", "aVUfl90F"], "group": "2uWNVA50", "roleId": "Qi9xYURS"}, {"assignNamespaces": ["MMCaJuOb", "6TPmLewJ", "0ZWgsk7v"], "group": "TuRLmU0H", "roleId": "Fb9culdP"}]}}, {"affectedClientIDs": ["tGVdiVPJ", "jSh18htl", "V7Yft6V3"], "domain": "lgVOELxP", "namespaces": ["sp4rYEXG", "trema8SA", "d50MVmeB"], "roleId": "xrsPX6xG", "ssoCfg": {"googleKey": {"8zkWwuuQ": {}, "lphzRGBY": {}, "Vq9Sen0B": {}}, "groupConfigs": [{"assignNamespaces": ["z6Nr03t4", "s3Vi51fh", "26DS4pf6"], "group": "lKpPZrod", "roleId": "KtkCvVoL"}, {"assignNamespaces": ["SgwZc3Nq", "1cGcfYTE", "vQwlGAuX"], "group": "NfKOG1he", "roleId": "qBIZSTXS"}, {"assignNamespaces": ["nqaVMkgk", "4L5LaTBV", "nLydK448"], "group": "TDGg5u4G", "roleId": "kgM0xbLK"}]}}, {"affectedClientIDs": ["FyBWulFm", "DcQQXQyo", "4gY28FRe"], "domain": "UWykVIBm", "namespaces": ["geKNfCTk", "D1CLVqyk", "mhC93qmb"], "roleId": "KmP5Vrqx", "ssoCfg": {"googleKey": {"NI9RYp1K": {}, "EnBXDsbx": {}, "sDMCsQFX": {}}, "groupConfigs": [{"assignNamespaces": ["XDLpqqH8", "AxArWvkN", "sC0iCUUZ"], "group": "0QPl64QA", "roleId": "16HUVYXb"}, {"assignNamespaces": ["496ErnZe", "2UylDicP", "YRloW3PP"], "group": "Q4ZQFxG0", "roleId": "VueiSJb4"}, {"assignNamespaces": ["obbxupkt", "RRQPfxeX", "iSbNP4Rf"], "group": "cjY3lo9f", "roleId": "pkHmbNWS"}]}}], "Secret": "loWLrCzF", "TeamID": "r8MAOB1p", "TokenAuthenticationType": "X9mc4sk8", "TokenClaimsMapping": {"WKsQnu8c": "iI8fOjv7", "yvp0vhG9": "gWhPgeGs", "WLOReK66": "e5CLfOjS"}, "TokenEndpoint": "evImnl3B", "UserInfoEndpoint": "ZrcbNjXj", "UserInfoHTTPMethod": "21mHrOK2", "googleAdminConsoleKey": "zR8ebKsY", "scopes": ["Vk7OCKmM", "LMx4VOHb", "q7DCgzAZ"]}' \
    > test.out 2>&1
eval_tap $? 145 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 146 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'WzMVFrvz' \
    --body '{"affectedClientIDs": ["1dESPtTz", "uq4laoa0", "Rh4bYILc"], "assignedNamespaces": ["I0CLODkz", "EAB1yPnI", "EYKTtN72"], "domain": "CcLQScYH", "roleId": "lqE2Vryd", "ssoCfg": {"googleKey": {"yg1ZXppC": {}, "trNt3D36": {}, "fObKf2TN": {}}, "groupConfigs": [{"assignNamespaces": ["d0aNcNBU", "TrhvLwSt", "Tf981gah"], "group": "t6W9Bioh", "roleId": "f0M4YXwc"}, {"assignNamespaces": ["8pA5vcJb", "kz7IWz5w", "Dj9fWnsZ"], "group": "ti9laA7p", "roleId": "sllTxCuV"}, {"assignNamespaces": ["U4B6QWNg", "zKkWuGjC", "PzrDV5yq"], "group": "yJj3fyGd", "roleId": "3l19b5se"}]}}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 147 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId '9VXGBQX9' \
    --body '{"domain": "NEIJOPI5", "ssoGroups": ["pYpnsdDq", "w7FXXvEY", "sodd9nit"]}' \
    > test.out 2>&1
eval_tap $? 147 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 148 PartialUpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam partialUpdateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'qA22pYQY' \
    --body '{"affectedClientIDs": ["K9RafPaO", "K9uOC3mh", "LaHGYJRQ"], "assignedNamespaces": ["K0FSiJlu", "EKB9pE27", "KgiUtYzB"], "domain": "YBkDuXYh", "roleId": "nIIHTKjQ", "ssoCfg": {"googleKey": {"k2sLzuzI": {}, "Sfz1rSLy": {}, "8qQW4Jwa": {}}, "groupConfigs": [{"assignNamespaces": ["XoCpuTe5", "tWa0Lzcv", "DxQKroOV"], "group": "eFCbkD5F", "roleId": "19J453Za"}, {"assignNamespaces": ["76TsdB1h", "qQXCDKkc", "4vgVE06I"], "group": "7rgTPNnu", "roleId": "fUdmFwO8"}, {"assignNamespaces": ["J0K3MP7u", "LevGcZiN", "SyWbm7th"], "group": "2wNVe7F0", "roleId": "hm3VSrsF"}]}}' \
    > test.out 2>&1
eval_tap $? 148 'PartialUpdateThirdPartyLoginPlatformDomainV3' test.out

#- 149 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'VQG2akY4' \
    > test.out 2>&1
eval_tap $? 149 'RetrieveSSOLoginPlatformCredential' test.out

#- 150 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'jGpQmgs8' \
    --body '{"acsUrl": "QtySxAoD", "apiKey": "hkle0Xxt", "appId": "4W7ZCj08", "federationMetadataUrl": "2QN42BIs", "isActive": true, "redirectUri": "E0ywWmrY", "secret": "YTtUJIfr", "ssoUrl": "Hdzamfxo"}' \
    > test.out 2>&1
eval_tap $? 150 'AddSSOLoginPlatformCredential' test.out

#- 151 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'lgbxM9yb' \
    > test.out 2>&1
eval_tap $? 151 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 152 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'vvsbghW0' \
    --body '{"acsUrl": "7zVLFJOC", "apiKey": "zS0hWllG", "appId": "VzJnMUYL", "federationMetadataUrl": "aPq0a9LS", "isActive": true, "redirectUri": "WCiAs4au", "secret": "YSC8Ds9z", "ssoUrl": "wtnWSZZg"}' \
    > test.out 2>&1
eval_tap $? 152 'UpdateSSOPlatformCredential' test.out

#- 153 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId '0w1pt7Nw' \
    --rawPID 'true' \
    --rawPUID 'false' \
    --body '{"platformUserIds": ["SBBWJPyZ", "VxPuWbhV", "WVkLNyrv"]}' \
    > test.out 2>&1
eval_tap $? 153 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 154 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'QQLoUDIh' \
    --platformUserId 'gWMHqxoG' \
    --pidType '7sD4mO4k' \
    > test.out 2>&1
eval_tap $? 154 'AdminGetUserByPlatformUserIDV3' test.out

#- 155 AdminGetProfileUpdateStrategyV3
samples/cli/sample-apps Iam adminGetProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'dob' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetProfileUpdateStrategyV3' test.out

#- 156 AdminUpdateProfileUpdateStrategyV3
samples/cli/sample-apps Iam adminUpdateProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'dob' \
    --body '{"config": {"minimumAllowedInterval": 87}, "type": "iH4dWKF9"}' \
    > test.out 2>&1
eval_tap $? 156 'AdminUpdateProfileUpdateStrategyV3' test.out

#- 157 AdminGetRoleOverrideConfigV3
samples/cli/sample-apps Iam adminGetRoleOverrideConfigV3 \
    --namespace $AB_NAMESPACE \
    --identity 'GAME_ADMIN' \
    > test.out 2>&1
eval_tap $? 157 'AdminGetRoleOverrideConfigV3' test.out

#- 158 AdminUpdateRoleOverrideConfigV3
samples/cli/sample-apps Iam adminUpdateRoleOverrideConfigV3 \
    --namespace $AB_NAMESPACE \
    --identity 'GAME_ADMIN' \
    --body '{"additions": [{"actions": [8, 5, 41], "resource": "EzxkbK63"}, {"actions": [83, 1, 34], "resource": "vS4R9HVX"}, {"actions": [100, 87, 16], "resource": "26L3Qb9e"}], "exclusions": [{"actions": [83, 19, 30], "resource": "JZvgbMge"}, {"actions": [37, 58, 8], "resource": "492C30mh"}, {"actions": [13, 58, 11], "resource": "M6hMvZfi"}], "overrides": [{"actions": [7, 66, 37], "resource": "EeJN77eu"}, {"actions": [2, 79, 56], "resource": "DXBifbAp"}, {"actions": [4, 26, 37], "resource": "wWkp2lGe"}], "replacements": [{"replacement": {"actions": [30, 50, 70], "resource": "AvqWFslT"}, "target": "hHskQjU2"}, {"replacement": {"actions": [89, 33, 42], "resource": "OZL6kpnR"}, "target": "BpROMyQw"}, {"replacement": {"actions": [96, 27, 33], "resource": "7aHKb6w2"}, "target": "1H8RZ8Bj"}]}' \
    > test.out 2>&1
eval_tap $? 158 'AdminUpdateRoleOverrideConfigV3' test.out

#- 159 AdminGetRoleSourceV3
samples/cli/sample-apps Iam adminGetRoleSourceV3 \
    --namespace $AB_NAMESPACE \
    --identity 'VIEW_ONLY' \
    > test.out 2>&1
eval_tap $? 159 'AdminGetRoleSourceV3' test.out

#- 160 AdminChangeRoleOverrideConfigStatusV3
samples/cli/sample-apps Iam adminChangeRoleOverrideConfigStatusV3 \
    --namespace $AB_NAMESPACE \
    --identity 'USER' \
    --body '{"active": true}' \
    > test.out 2>&1
eval_tap $? 160 'AdminChangeRoleOverrideConfigStatusV3' test.out

#- 161 AdminGetRoleNamespacePermissionV3
samples/cli/sample-apps Iam adminGetRoleNamespacePermissionV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'vlocA53A' \
    > test.out 2>&1
eval_tap $? 161 'AdminGetRoleNamespacePermissionV3' test.out

#- 162 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'raLae8rS' \
    --after '45' \
    --before '70' \
    --limit '9' \
    > test.out 2>&1
eval_tap $? 162 'GetAdminUsersByRoleIdV3' test.out

#- 163 AdminQueryTagV3
samples/cli/sample-apps Iam adminQueryTagV3 \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '51' \
    --tagName 'Shbve0rY' \
    > test.out 2>&1
eval_tap $? 163 'AdminQueryTagV3' test.out

#- 164 AdminCreateTagV3
samples/cli/sample-apps Iam adminCreateTagV3 \
    --namespace $AB_NAMESPACE \
    --body '{"tagName": "OYJ1TXkI"}' \
    > test.out 2>&1
eval_tap $? 164 'AdminCreateTagV3' test.out

#- 165 AdminUpdateTagV3
samples/cli/sample-apps Iam adminUpdateTagV3 \
    --namespace $AB_NAMESPACE \
    --tagId 'ezhm25dI' \
    --body '{"tagName": "Y1A9y1OC"}' \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateTagV3' test.out

#- 166 AdminDeleteTagV3
samples/cli/sample-apps Iam adminDeleteTagV3 \
    --namespace $AB_NAMESPACE \
    --tagId 'BPhHVPlS' \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteTagV3' test.out

#- 167 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'Os4AnIxv' \
    > test.out 2>&1
eval_tap $? 167 'AdminGetUserByEmailAddressV3' test.out

#- 168 AdminBulkUpdateUsersV3
samples/cli/sample-apps Iam adminBulkUpdateUsersV3 \
    --namespace $AB_NAMESPACE \
    --body '{"updateRequest": {"skipLoginQueue": false}, "userIds": ["y6Fnnerp", "WeGN6CE0", "MFNhWno7"]}' \
    > test.out 2>&1
eval_tap $? 168 'AdminBulkUpdateUsersV3' test.out

#- 169 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'Kb0fsyL8' \
    --body '{"bulkUserId": ["4UjjLBuT", "Cy77rENy", "3SZnl0fB"]}' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetBulkUserBanV3' test.out

#- 170 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"findByPublisherNamespace": true, "userIds": ["rqq2BuM4", "yQMPhLtU", "M7GHD75Z"]}' \
    > test.out 2>&1
eval_tap $? 170 'AdminListUserIDByUserIDsV3' test.out

#- 171 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["saKgIuIZ", "Vsj6E2Ul", "5JEJ3TCW"]}' \
    > test.out 2>&1
eval_tap $? 171 'AdminBulkGetUsersPlatform' test.out

#- 172 AdminCursorGetUserV3
samples/cli/sample-apps Iam adminCursorGetUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"cursor": {"cursorTime": "dMC9vJGX", "userId": "8dDFY8bb"}, "fields": ["YpxPFQHK", "xJXTCexj", "BBwqYXkP"], "limit": 1}' \
    > test.out 2>&1
eval_tap $? 172 'AdminCursorGetUserV3' test.out

#- 173 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["OKoVIvsD", "uKsoHjIO", "Gz3fg8yu"], "isAdmin": true, "languageTag": "OKzzJnwu", "namespace": "vs2q0PVJ", "roles": ["h92dqu51", "21wWR7nC", "30s7VIh1"]}' \
    > test.out 2>&1
eval_tap $? 173 'AdminInviteUserV3' test.out

#- 174 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '74' \
    --platformUserId 'xCvgidJJ' \
    --platformId 'UAXxSVGL' \
    > test.out 2>&1
eval_tap $? 174 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 175 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 175 'AdminListUsersV3' test.out

#- 176 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'dYVwcBzd' \
    --endDate 'pAxq675R' \
    --includeTotal 'true' \
    --limit '8' \
    --offset '34' \
    --platformBy 'CcJvx8d3' \
    --platformId '4LGyz7Eo' \
    --query 'eMNzqapD' \
    --roleIds 'KZGGBFSh' \
    --selectedFields 'ItHMAHkl' \
    --skipLoginQueue 'true' \
    --startDate 'EEKbQB7l' \
    --tagIds 'CwrVeDVt' \
    --testAccount 'false' \
    > test.out 2>&1
eval_tap $? 176 'AdminSearchUserV3' test.out

#- 177 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["zl38ofwH", "ZP5iSgiO", "cSuVz0HR"]}' \
    > test.out 2>&1
eval_tap $? 177 'AdminGetBulkUserByEmailAddressV3' test.out

#- 178 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'nL0JbhUt' \
    > test.out 2>&1
eval_tap $? 178 'AdminGetUserByUserIdV3' test.out

#- 179 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'tFtKolkc' \
    --body '{"avatarUrl": "MBcdG4vw", "country": "zdjRVP0g", "dateOfBirth": "XN5xS4rU", "displayName": "XqperQjz", "languageTag": "O8beuq41", "skipLoginQueue": true, "tags": ["1ZIQz1jU", "hIwWjYPU", "SLUPEz4y"], "uniqueDisplayName": "MTCjC5dK", "userName": "nzFbAQCK"}' \
    > test.out 2>&1
eval_tap $? 179 'AdminUpdateUserV3' test.out

#- 180 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'rjqxS1nb' \
    --activeOnly 'true' \
    --after 'jfyY4Ice' \
    --before 'R0PsmZkR' \
    --limit '52' \
    > test.out 2>&1
eval_tap $? 180 'AdminGetUserBanV3' test.out

#- 181 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'pkdXGL6o' \
    --body '{"ban": "WO2hjXEG", "comment": "P7AvIUld", "endDate": "86lK1Ra1", "reason": "4DfijvzD", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 181 'AdminBanUserV3' test.out

#- 182 AdminGetUserBanSummaryV3
samples/cli/sample-apps Iam adminGetUserBanSummaryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'RUpBGbkp' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetUserBanSummaryV3' test.out

#- 183 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'rXBNJ7nV' \
    --namespace $AB_NAMESPACE \
    --userId 'QccteTfh' \
    --body '{"enabled": true, "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 183 'AdminUpdateUserBanV3' test.out

#- 184 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId '4uLM5PWU' \
    --body '{"context": "lqoS3T7l", "emailAddress": "q5Mbkogg", "languageTag": "U6pBUy5k", "upgradeToken": "jZqNCKBn"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminSendVerificationCodeV3' test.out

#- 185 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId '6bo6v847' \
    --body '{"Code": "NGYFsDPV", "ContactType": "dFCQYfIh", "LanguageTag": "1Q7cJrrz", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 185 'AdminVerifyAccountV3' test.out

#- 186 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'QFYA1Ddo' \
    > test.out 2>&1
eval_tap $? 186 'GetUserVerificationCode' test.out

#- 187 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'rmPWHkQ3' \
    > test.out 2>&1
eval_tap $? 187 'AdminGetUserDeletionStatusV3' test.out

#- 188 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'iMky0FZo' \
    --body '{"deletionDate": 4, "enabled": false}' \
    > test.out 2>&1
eval_tap $? 188 'AdminUpdateUserDeletionStatusV3' test.out

#- 189 AdminListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam adminListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Afi8HL4j' \
    > test.out 2>&1
eval_tap $? 189 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 190 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'fdWizjYM' \
    --body '{"code": "Ayy42ATG", "country": "pqq4bCwE", "dateOfBirth": "nqjxy1cx", "displayName": "o241bwDx", "emailAddress": "RGP2UBuP", "password": "jK3Gq8Jc", "uniqueDisplayName": "e7gjlIMS", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 190 'AdminUpgradeHeadlessAccountV3' test.out

#- 191 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'YSPKjoWR' \
    > test.out 2>&1
eval_tap $? 191 'AdminDeleteUserInformationV3' test.out

#- 192 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId '4iVhC0SZ' \
    --after '0.6326348086316969' \
    --before '0.6372802304981439' \
    --limit '94' \
    > test.out 2>&1
eval_tap $? 192 'AdminGetUserLoginHistoriesV3' test.out

#- 193 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hAkdU4s8' \
    --body '{"languageTag": "73eEVg5E", "mfaToken": "DnYASvKt", "newPassword": "Idx8YT8B", "oldPassword": "tNG1pt8Y"}' \
    > test.out 2>&1
eval_tap $? 193 'AdminResetPasswordV3' test.out

#- 194 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Nn9S3nse' \
    --body '{"Permissions": [{"Action": 2, "Resource": "cOpdApuT", "SchedAction": 88, "SchedCron": "fFzzPwj7", "SchedRange": ["qXcKIeAz", "igqUHPSb", "6tqJlVKM"]}, {"Action": 14, "Resource": "Lr1QVAv5", "SchedAction": 40, "SchedCron": "30pbI8U6", "SchedRange": ["bFcKMu8h", "e6V3fDta", "2BPdAf0C"]}, {"Action": 54, "Resource": "10Eibg17", "SchedAction": 69, "SchedCron": "9Pnd0Q2A", "SchedRange": ["SYR4DZkZ", "bLfCSONM", "gqZGNRBc"]}]}' \
    > test.out 2>&1
eval_tap $? 194 'AdminUpdateUserPermissionV3' test.out

#- 195 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'PqdSeagE' \
    --body '{"Permissions": [{"Action": 36, "Resource": "i7Hg5e1q", "SchedAction": 24, "SchedCron": "vjDSuPzj", "SchedRange": ["ixKaJY8Q", "lMWOqRFa", "bHdaGNMG"]}, {"Action": 39, "Resource": "9nQSt1MV", "SchedAction": 38, "SchedCron": "fq3mNHim", "SchedRange": ["5NZnqDDt", "LaG4ZgIy", "glV637PD"]}, {"Action": 53, "Resource": "FBZejEMV", "SchedAction": 51, "SchedCron": "HMISxkHR", "SchedRange": ["FmmTHCfd", "cIGf2UsE", "ePgGl6m4"]}]}' \
    > test.out 2>&1
eval_tap $? 195 'AdminAddUserPermissionsV3' test.out

#- 196 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'NbwcMNwD' \
    --body '[{"Action": 75, "Resource": "8oCPn0GG"}, {"Action": 23, "Resource": "10MQAPNo"}, {"Action": 6, "Resource": "s3pfc78g"}]' \
    > test.out 2>&1
eval_tap $? 196 'AdminDeleteUserPermissionBulkV3' test.out

#- 197 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '49' \
    --namespace $AB_NAMESPACE \
    --resource 'cyzpbASn' \
    --userId 'SfDnem4M' \
    > test.out 2>&1
eval_tap $? 197 'AdminDeleteUserPermissionV3' test.out

#- 198 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'R80M8DVT' \
    --after '5ACcbaM3' \
    --before 'q3XDGuXI' \
    --limit '28' \
    --platformId '4nyv2o44' \
    --targetNamespace 'wyh2NYbt' \
    > test.out 2>&1
eval_tap $? 198 'AdminGetUserPlatformAccountsV3' test.out

#- 199 AdminListAllDistinctPlatformAccountsV3
samples/cli/sample-apps Iam adminListAllDistinctPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'QRqhxCq3' \
    --status 'vF1teF0C' \
    > test.out 2>&1
eval_tap $? 199 'AdminListAllDistinctPlatformAccountsV3' test.out

#- 200 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'VImezzLF' \
    > test.out 2>&1
eval_tap $? 200 'AdminGetListJusticePlatformAccounts' test.out

#- 201 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'V4fnEcui' \
    --userId 'CrAm7PxS' \
    > test.out 2>&1
eval_tap $? 201 'AdminGetUserMapping' test.out

#- 202 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'MmYv5ykE' \
    --userId 'gpt3yQFv' \
    > test.out 2>&1
eval_tap $? 202 'AdminCreateJusticeUser' test.out

#- 203 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'rotegexG' \
    --skipConflict 'true' \
    --body '{"platformId": "fmYCjEqo", "platformUserId": "Cs7Tw2kL"}' \
    > test.out 2>&1
eval_tap $? 203 'AdminLinkPlatformAccount' test.out

#- 204 AdminGetUserLinkHistoriesV3
samples/cli/sample-apps Iam adminGetUserLinkHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'WqFglQMk' \
    --platformId 'ZtJyJQgV' \
    > test.out 2>&1
eval_tap $? 204 'AdminGetUserLinkHistoriesV3' test.out

#- 205 AdminPlatformUnlinkV3
eval_tap 0 205 'AdminPlatformUnlinkV3 # SKIP deprecated' test.out

#- 206 AdminPlatformUnlinkAllV3
samples/cli/sample-apps Iam adminPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'zDqK1OrL' \
    --userId 'v1cVzpEW' \
    > test.out 2>&1
eval_tap $? 206 'AdminPlatformUnlinkAllV3' test.out

#- 207 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'aODafORw' \
    --userId 'g9BKJq5s' \
    --ticket 'GTzuw3qc' \
    > test.out 2>&1
eval_tap $? 207 'AdminPlatformLinkV3' test.out

#- 208 AdminDeleteUserLinkingHistoryByPlatformIDV3
eval_tap 0 208 'AdminDeleteUserLinkingHistoryByPlatformIDV3 # SKIP deprecated' test.out

#- 209 AdminDeleteUserLinkingRestrictionByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingRestrictionByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Ot0rGbDn' \
    --userId 'eJzIIthW' \
    > test.out 2>&1
eval_tap $? 209 'AdminDeleteUserLinkingRestrictionByPlatformIDV3' test.out

#- 210 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Z2wC0QRu' \
    --userId '4x4w8Fso' \
    --platformToken 'zNVHDxl7' \
    > test.out 2>&1
eval_tap $? 210 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 211 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'gd9S9qoj' \
    --userId 'T25JTJVw' \
    --crossNamespace 'false' \
    > test.out 2>&1
eval_tap $? 211 'AdminGetUserSinglePlatformAccount' test.out

#- 212 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZKwwUbzf' \
    --body '["lhrrs8De", "8ATiTqIl", "CPdTVyGw"]' \
    > test.out 2>&1
eval_tap $? 212 'AdminDeleteUserRolesV3' test.out

#- 213 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'CkeznhIq' \
    --body '[{"namespace": "JILtDAjz", "roleId": "MqJ2N2NB"}, {"namespace": "4ugLe67W", "roleId": "x2q8vR34"}, {"namespace": "01illxSv", "roleId": "OGzQjw1H"}]' \
    > test.out 2>&1
eval_tap $? 213 'AdminSaveUserRoleV3' test.out

#- 214 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'd5Iye3Yx' \
    --userId 'wZbYIhaT' \
    > test.out 2>&1
eval_tap $? 214 'AdminAddUserRoleV3' test.out

#- 215 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId '5WuqH9ZB' \
    --userId 'A56aSUgp' \
    > test.out 2>&1
eval_tap $? 215 'AdminDeleteUserRoleV3' test.out

#- 216 AdminGetUserStateByUserIdV3
samples/cli/sample-apps Iam adminGetUserStateByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId '60CSoND6' \
    > test.out 2>&1
eval_tap $? 216 'AdminGetUserStateByUserIdV3' test.out

#- 217 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Jpvh8Gpt' \
    --body '{"enabled": true, "reason": "W7oLG0Y2"}' \
    > test.out 2>&1
eval_tap $? 217 'AdminUpdateUserStatusV3' test.out

#- 218 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'd25QX3P9' \
    --body '{"emailAddress": "AV2QNVhR", "password": "8CR0Kz0z"}' \
    > test.out 2>&1
eval_tap $? 218 'AdminTrustlyUpdateUserIdentity' test.out

#- 219 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vhbzA1pn' \
    > test.out 2>&1
eval_tap $? 219 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 220 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'v4MNIXns' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "PbVXDL9S"}' \
    > test.out 2>&1
eval_tap $? 220 'AdminUpdateClientSecretV3' test.out

#- 221 AdminCheckThirdPartyLoginPlatformAvailabilityV3
samples/cli/sample-apps Iam adminCheckThirdPartyLoginPlatformAvailabilityV3 \
    --platformId 'gYFrPJvj' \
    > test.out 2>&1
eval_tap $? 221 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 222 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'WJ2pOL9c' \
    --before 'QwkRdrUY' \
    --isWildcard 'true' \
    --limit '27' \
    > test.out 2>&1
eval_tap $? 222 'AdminGetRolesV3' test.out

#- 223 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": false, "managers": [{"displayName": "5tJy1TLf", "namespace": "eoV8yVNk", "userId": "Jqv1xfAZ"}, {"displayName": "fLayLYoO", "namespace": "WLlWYpk6", "userId": "RsdLtoHu"}, {"displayName": "e6ZUxEeT", "namespace": "yigc2NPl", "userId": "9ZTNp7dA"}], "members": [{"displayName": "I6vzvGr1", "namespace": "so5HxvVY", "userId": "D1zhB60u"}, {"displayName": "q7Okn5Og", "namespace": "Vd4ZVuf6", "userId": "PU6lobYx"}, {"displayName": "K6j8engz", "namespace": "d7qjZeF4", "userId": "2hY5f2Rv"}], "permissions": [{"action": 2, "resource": "x8hnOO3a", "schedAction": 46, "schedCron": "ptcOmAkf", "schedRange": ["Qfulmeg2", "NrEBNyqY", "jDOrnkgA"]}, {"action": 98, "resource": "USw0quSr", "schedAction": 98, "schedCron": "HKGhkncp", "schedRange": ["0Ls95PZI", "CV6HYoSW", "CqkXpWbj"]}, {"action": 94, "resource": "A5V1qLll", "schedAction": 31, "schedCron": "45gPmCGc", "schedRange": ["KuJIT0Dq", "YhIisgSm", "TCBWSqVR"]}], "roleName": "KTSHkR3b"}' \
    > test.out 2>&1
eval_tap $? 223 'AdminCreateRoleV3' test.out

#- 224 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'lkxIQHcA' \
    > test.out 2>&1
eval_tap $? 224 'AdminGetRoleV3' test.out

#- 225 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId '7vq8yjek' \
    > test.out 2>&1
eval_tap $? 225 'AdminDeleteRoleV3' test.out

#- 226 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'FQFOHGkK' \
    --body '{"deletable": true, "isWildcard": true, "roleName": "cwbTFXo5"}' \
    > test.out 2>&1
eval_tap $? 226 'AdminUpdateRoleV3' test.out

#- 227 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'cdKXUtIs' \
    > test.out 2>&1
eval_tap $? 227 'AdminGetRoleAdminStatusV3' test.out

#- 228 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'Jwm3vrKA' \
    > test.out 2>&1
eval_tap $? 228 'AdminUpdateAdminRoleStatusV3' test.out

#- 229 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'aU7e8PY8' \
    > test.out 2>&1
eval_tap $? 229 'AdminRemoveRoleAdminV3' test.out

#- 230 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'uxyz3OJp' \
    --after 'PHFPPYzs' \
    --before '0WtpGmQf' \
    --limit '42' \
    > test.out 2>&1
eval_tap $? 230 'AdminGetRoleManagersV3' test.out

#- 231 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'DCQ0gkNL' \
    --body '{"managers": [{"displayName": "jPzFl4bs", "namespace": "zdnaeGNF", "userId": "2ZKPvAZq"}, {"displayName": "NQYljuKh", "namespace": "QMbvQAhl", "userId": "BxdFUTux"}, {"displayName": "Hxr9WR9t", "namespace": "F4lusKLT", "userId": "wJW11hw7"}]}' \
    > test.out 2>&1
eval_tap $? 231 'AdminAddRoleManagersV3' test.out

#- 232 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'xT552pWy' \
    --body '{"managers": [{"displayName": "ZATotVva", "namespace": "kSygXFHv", "userId": "dmLGARnx"}, {"displayName": "Q7kCMzej", "namespace": "0whw5pry", "userId": "Afuv2IQi"}, {"displayName": "cOwtttMW", "namespace": "kUeBcktw", "userId": "sMehU8BP"}]}' \
    > test.out 2>&1
eval_tap $? 232 'AdminRemoveRoleManagersV3' test.out

#- 233 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'KH7Dozjy' \
    --after '6zaqmNie' \
    --before 'Y3S8Ugnb' \
    --limit '48' \
    > test.out 2>&1
eval_tap $? 233 'AdminGetRoleMembersV3' test.out

#- 234 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'ZWgmSrlM' \
    --body '{"members": [{"displayName": "vgAiGghn", "namespace": "AAWfeEVy", "userId": "A8dAWbe0"}, {"displayName": "CYxVjPpL", "namespace": "BcVEiiOs", "userId": "H7pNlAfd"}, {"displayName": "bcJwRvKR", "namespace": "cFZzGWVp", "userId": "au58POI5"}]}' \
    > test.out 2>&1
eval_tap $? 234 'AdminAddRoleMembersV3' test.out

#- 235 AdminRemoveRoleMembersV3
eval_tap 0 235 'AdminRemoveRoleMembersV3 # SKIP deprecated' test.out

#- 236 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'wC0Lhw6S' \
    --body '{"permissions": [{"action": 33, "resource": "cp9tRdyB", "schedAction": 88, "schedCron": "mCNSO1jM", "schedRange": ["ClFFMPgi", "rjmCSjju", "iAxzkvRR"]}, {"action": 91, "resource": "VarxOgmC", "schedAction": 36, "schedCron": "LaOIZak5", "schedRange": ["rkwl1HuF", "ZElFEFey", "JM9aZSrG"]}, {"action": 3, "resource": "2xAMFW81", "schedAction": 83, "schedCron": "AHmyTQDa", "schedRange": ["cSwNMYSp", "uhsklWJb", "ww1vqVgK"]}]}' \
    > test.out 2>&1
eval_tap $? 236 'AdminUpdateRolePermissionsV3' test.out

#- 237 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'T5ZrO54c' \
    --body '{"permissions": [{"action": 69, "resource": "pbPU2hnw", "schedAction": 20, "schedCron": "X7u6wfDe", "schedRange": ["9Jcu3C6Q", "xRbralfi", "3TWlt8E2"]}, {"action": 48, "resource": "5fZ5RnSw", "schedAction": 90, "schedCron": "k2CipbsA", "schedRange": ["BrT0jzVo", "kPI4GKmc", "mgqAmqAp"]}, {"action": 43, "resource": "Eic7J5yC", "schedAction": 55, "schedCron": "EzxPAVl9", "schedRange": ["YmScYNLK", "lrvRv2nc", "jbQl8YO4"]}]}' \
    > test.out 2>&1
eval_tap $? 237 'AdminAddRolePermissionsV3' test.out

#- 238 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'GJA9quNt' \
    --body '["dd1JWw8x", "rs5qJ989", "0G8HcHJ1"]' \
    > test.out 2>&1
eval_tap $? 238 'AdminDeleteRolePermissionsV3' test.out

#- 239 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '53' \
    --resource 'eZTJMU58' \
    --roleId 'BK4kNUdu' \
    > test.out 2>&1
eval_tap $? 239 'AdminDeleteRolePermissionV3' test.out

#- 240 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 240 'AdminGetMyUserV3' test.out

#- 241 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'iy9CCqlB' \
    --extendExp 'false' \
    --redirectUri '9Po7vR77' \
    --password 'QMqClNwy' \
    --requestId '4JzsflKS' \
    --userName 'I7nECYga' \
    > test.out 2>&1
eval_tap $? 241 'UserAuthenticationV3' test.out

#- 242 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId 'VkYHqRgh' \
    --linkingToken 'csye7boM' \
    --password 'qOzyFMsM' \
    --username 'rKrfCzSS' \
    > test.out 2>&1
eval_tap $? 242 'AuthenticationWithPlatformLinkV3' test.out

#- 243 AuthenticateAndLinkForwardV3
samples/cli/sample-apps Iam authenticateAndLinkForwardV3 \
    --extendExp 'false' \
    --clientId 'vsAV7lEt' \
    --linkingToken 'BaY6QuRP' \
    --password 'P9ZaCu8U' \
    --username '0GDvItFS' \
    > test.out 2>&1
eval_tap $? 243 'AuthenticateAndLinkForwardV3' test.out

#- 244 PublicGetSystemConfigV3
samples/cli/sample-apps Iam publicGetSystemConfigV3 \
    > test.out 2>&1
eval_tap $? 244 'PublicGetSystemConfigV3' test.out

#- 245 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'y6Y94eIH' \
    --extendExp 'true' \
    --linkingToken 'vUt57JWN' \
    > test.out 2>&1
eval_tap $? 245 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 246 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --redirectUri 'boHK23Tw' \
    --state 'xfYfsHWg' \
    --platformId 'qvBWKsy6' \
    > test.out 2>&1
eval_tap $? 246 'RequestOneTimeLinkingCodeV3' test.out

#- 247 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'DNtvujNO' \
    > test.out 2>&1
eval_tap $? 247 'ValidateOneTimeLinkingCodeV3' test.out

#- 248 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'cLLa2WGh' \
    --isTransient 'true' \
    --clientId 'VBKT9aoT' \
    --oneTimeLinkCode 'Kye9ZK3j' \
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
    --codeChallenge 'tBf9AONO' \
    --codeChallengeMethod 'plain' \
    --clientId 'sZ5xQgJM' \
    > test.out 2>&1
eval_tap $? 251 'RequestTokenExchangeCodeV3' test.out

#- 252 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'uzGdpOVc' \
    --userId '6SwJ8geH' \
    --platformUserId '5KVCNuH3' \
    > test.out 2>&1
eval_tap $? 252 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 253 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'FD6S5Bz6' \
    --includeGameNamespace 'false' \
    > test.out 2>&1
eval_tap $? 253 'RevokeUserV3' test.out

#- 254 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --blockedPlatformId '39Udcf4i' \
    --codeChallenge '2nRFmY6e' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'true' \
    --loginWebBased 'true' \
    --nonce 'Vu3h3IdY' \
    --oneTimeLinkCode 'tpdbMlU3' \
    --redirectUri 'HUpUfh8i' \
    --scope 'sQllT1m6' \
    --state 'sXnw2mVz' \
    --targetAuthPage '01C0Fh8t' \
    --useRedirectUriAsLoginUrlWhenLocked 'false' \
    --clientId '0hK3psUh' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 254 'AuthorizeV3' test.out

#- 255 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token '3SpnwayV' \
    > test.out 2>&1
eval_tap $? 255 'TokenIntrospectionV3' test.out

#- 256 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 256 'GetJWKSV3' test.out

#- 257 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'LrxMAODY' \
    --factor '6ckIPEjm' \
    --mfaToken 'mcmvqHHj' \
    > test.out 2>&1
eval_tap $? 257 'SendMFAAuthenticationCode' test.out

#- 258 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'quYTLfMY' \
    --mfaToken 'jjheF0BK' \
    > test.out 2>&1
eval_tap $? 258 'Change2faMethod' test.out

#- 259 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'oQHknITY' \
    --factor 'MSNhg7Re' \
    --mfaToken 'Q7tnWhGT' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 259 'Verify2faCode' test.out

#- 260 Verify2faCodeForward
samples/cli/sample-apps Iam verify2faCodeForward \
    --defaultFactor 'idUOvAC1' \
    --factors 'zzuT5Pqo' \
    --rememberDevice 'true' \
    --clientId '03jYt99F' \
    --code 'tVfULL4P' \
    --factor '8Vu6E7uz' \
    --mfaToken 'Og1KlTaL' \
    > test.out 2>&1
eval_tap $? 260 'Verify2faCodeForward' test.out

#- 261 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'xxSC5aFa' \
    --userId 'fCMC7gx5' \
    > test.out 2>&1
eval_tap $? 261 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 262 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'dTJ5ULzD' \
    --clientId 'NOx3AtsA' \
    --redirectUri '1wIKp3Bf' \
    --requestId 'G02kLiyi' \
    > test.out 2>&1
eval_tap $? 262 'AuthCodeRequestV3' test.out

#- 263 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'h0IlNbl8' \
    --additionalData 'WQpmGG1l' \
    --clientId 'FEKOK4mg' \
    --createHeadless 'true' \
    --deviceId 'S7Zx9FR6' \
    --macAddress 'nmFha3wB' \
    --platformToken '3sSRGlRb' \
    --serviceLabel '0.2733588399329525' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 263 'PlatformTokenGrantV3' test.out

#- 264 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 264 'GetRevocationListV3' test.out

#- 265 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'cNr66dgI' \
    > test.out 2>&1
eval_tap $? 265 'TokenRevocationV3' test.out

#- 266 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'co57V6Bd' \
    --simultaneousTicket 'n8N1qGpu' \
    --nativePlatform 'steam' \
    --nativePlatformTicket 'WDlCxuct' \
    > test.out 2>&1
eval_tap $? 266 'SimultaneousLoginV3' test.out

#- 267 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'mPGjTuXq' \
    --clientId 'gRlkEifD' \
    --clientSecret '92Vs1zlB' \
    --code 'a1UzNNyw' \
    --codeVerifier 'VacTDgDd' \
    --extendNamespace 'UNzFQcDT' \
    --extendExp 'true' \
    --password 'D2JCMGJC' \
    --redirectUri 'n6frKZkZ' \
    --refreshToken 'DM8LBbR3' \
    --scope '7ic3dupR' \
    --username 'XrZK9MKX' \
    --grantType 'password' \
    > test.out 2>&1
eval_tap $? 267 'TokenGrantV3' test.out

#- 268 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'CcVL9wJE' \
    > test.out 2>&1
eval_tap $? 268 'VerifyTokenV3' test.out

#- 269 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'YJh4ouGA' \
    --code '5gIq6BEf' \
    --error 'JEjGNSJZ' \
    --openidAssocHandle 'opHMrupn' \
    --openidClaimedId 'b1PvTROG' \
    --openidIdentity 'gNSGUtFh' \
    --openidMode 'T1xWh6ey' \
    --openidNs 'QuHVoFDK' \
    --openidOpEndpoint 'TYqDGGnh' \
    --openidResponseNonce 'D8YWqxmk' \
    --openidReturnTo '1D2P6v41' \
    --openidSig 'aasyHObK' \
    --openidSigned '14HaWnjD' \
    --state 'wrJOtb3a' \
    > test.out 2>&1
eval_tap $? 269 'PlatformAuthenticationV3' test.out

#- 270 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'Paogglio' \
    --platformToken 'urh4VJMc' \
    > test.out 2>&1
eval_tap $? 270 'PlatformTokenRefreshV3' test.out

#- 271 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'false' \
    --languageCode 'M3QjAWrx' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetInputValidations' test.out

#- 272 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'JMTTrILG' \
    > test.out 2>&1
eval_tap $? 272 'PublicGetInputValidationByField' test.out

#- 273 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'WEo5zKCp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 273 'PublicGetCountryAgeRestrictionV3' test.out

#- 274 PublicGetConfigValueV3
samples/cli/sample-apps Iam publicGetConfigValueV3 \
    --configKey 'Lo6hY6eU' \
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
    --clientId 'iQcNMC8B' \
    > test.out 2>&1
eval_tap $? 277 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 278 PublicListUserIDByPlatformUserIDsV3
eval_tap 0 278 'PublicListUserIDByPlatformUserIDsV3 # SKIP deprecated' test.out

#- 279 PublicGetUserByPlatformUserIDV3
eval_tap 0 279 'PublicGetUserByPlatformUserIDV3 # SKIP deprecated' test.out

#- 280 PublicGetProfileUpdateStrategyV3
samples/cli/sample-apps Iam publicGetProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'display_name' \
    > test.out 2>&1
eval_tap $? 280 'PublicGetProfileUpdateStrategyV3' test.out

#- 281 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'BmqpPzM0' \
    > test.out 2>&1
eval_tap $? 281 'PublicGetAsyncStatus' test.out

#- 282 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'TLaFhyXB' \
    --limit '78' \
    --offset '5' \
    --platformBy 'e80Z8AZn' \
    --platformId 'Yiylwqdu' \
    --query '6xdolEux' \
    > test.out 2>&1
eval_tap $? 282 'PublicSearchUserV3' test.out

#- 283 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "zctw4YVV", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "cQhnLXI3", "policyId": "52GmMlb4", "policyVersionId": "QiQFV1UC"}, {"isAccepted": false, "localizedPolicyVersionId": "hpQpJsnr", "policyId": "QbgYJjIC", "policyVersionId": "YLmbhLQq"}, {"isAccepted": true, "localizedPolicyVersionId": "Zpn387nI", "policyId": "Kh9EH8CC", "policyVersionId": "X4wMSX1l"}], "authType": "aPiLd06x", "code": "CaE3vWvX", "country": "vHWapG7k", "dateOfBirth": "QtZzGLrH", "displayName": "IgidLN2v", "emailAddress": "nBRLngBE", "password": "TUuUOgfR", "reachMinimumAge": true, "uniqueDisplayName": "NqQGHfhH"}' \
    > test.out 2>&1
eval_tap $? 283 'PublicCreateUserV3' test.out

#- 284 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'IENQj4kE' \
    --query 'xJouziEF' \
    > test.out 2>&1
eval_tap $? 284 'CheckUserAvailability' test.out

#- 285 PublicBulkGetUsers
eval_tap 0 285 'PublicBulkGetUsers # SKIP deprecated' test.out

#- 286 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "u9BXY8an", "languageTag": "j6f33cnY"}' \
    > test.out 2>&1
eval_tap $? 286 'PublicSendRegistrationCode' test.out

#- 287 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "SpMKHCYh", "emailAddress": "YR7oFcgk"}' \
    > test.out 2>&1
eval_tap $? 287 'PublicVerifyRegistrationCode' test.out

#- 288 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "68qzrsst", "languageTag": "j5NgOlGr"}' \
    > test.out 2>&1
eval_tap $? 288 'PublicForgotPasswordV3' test.out

#- 289 PublicValidateUserInput
samples/cli/sample-apps Iam publicValidateUserInput \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "4dCkZenH", "password": "v5Q8sCt9", "uniqueDisplayName": "Y12tCk0V", "username": "qExCUJEB"}' \
    > test.out 2>&1
eval_tap $? 289 'PublicValidateUserInput' test.out

#- 290 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'gRGyADgH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 290 'GetAdminInvitationV3' test.out

#- 291 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'ObGq8lFF' \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "I2GbnJn5", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "q4HTUgwh", "policyId": "K4ikCk4o", "policyVersionId": "wgSx6DDM"}, {"isAccepted": false, "localizedPolicyVersionId": "1Gegds0L", "policyId": "bgtUoNtl", "policyVersionId": "srsHXaw6"}, {"isAccepted": true, "localizedPolicyVersionId": "KlEM4B61", "policyId": "ShZSt4UM", "policyVersionId": "8dhfiKFH"}], "authType": "z7Iev8ss", "code": "PtzO5EwO", "country": "t754gIvr", "dateOfBirth": "CRIrkJqA", "displayName": "Twx9HsBl", "emailAddress": "ekyfrCEu", "password": "Z1UzRI0w", "reachMinimumAge": true, "uniqueDisplayName": "9kytOoGo"}' \
    > test.out 2>&1
eval_tap $? 291 'CreateUserFromInvitationV3' test.out

#- 292 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "eM1z8ORZ", "country": "V4MEACWc", "dateOfBirth": "0U96EYCy", "displayName": "BFYXFkyD", "languageTag": "Ba9XZX37", "uniqueDisplayName": "zNhmVAKV", "userName": "IaCGTgMA"}' \
    > test.out 2>&1
eval_tap $? 292 'UpdateUserV3' test.out

#- 293 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "uVBUgOlk", "country": "eyJKmxDH", "dateOfBirth": "B5nyx88k", "displayName": "3mYXt2f2", "languageTag": "LvI4cnvT", "uniqueDisplayName": "d3BThTIu", "userName": "Mdi4fi3d"}' \
    > test.out 2>&1
eval_tap $? 293 'PublicPartialUpdateUserV3' test.out

#- 294 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "8mXyf1Ar", "emailAddress": "CaGxK7Bf", "languageTag": "CHyz0Aqo", "upgradeToken": "EkyfuVDR"}' \
    > test.out 2>&1
eval_tap $? 294 'PublicSendVerificationCodeV3' test.out

#- 295 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "SfD5PT0N", "contactType": "RJQzN1HX", "languageTag": "mG1Apl41", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 295 'PublicUserVerificationV3' test.out

#- 296 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "3taMnIAf", "country": "EoiSFA9D", "dateOfBirth": "EMbDY7VK", "displayName": "MhqXCen0", "emailAddress": "2F4z4CQL", "password": "TSG3XJRs", "uniqueDisplayName": "dkkf5M2z", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 296 'PublicUpgradeHeadlessAccountV3' test.out

#- 297 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'true' \
    --body '{"emailAddress": "EBqmhpYQ", "password": "1WM8eBhJ"}' \
    > test.out 2>&1
eval_tap $? 297 'PublicVerifyHeadlessAccountV3' test.out

#- 298 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "gBUUKt6I", "mfaToken": "hjqQIqqY", "newPassword": "IXCH5ySB", "oldPassword": "1JEjtFaa"}' \
    > test.out 2>&1
eval_tap $? 298 'PublicUpdatePasswordV3' test.out

#- 299 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'FgY7yhmd' \
    > test.out 2>&1
eval_tap $? 299 'PublicCreateJusticeUser' test.out

#- 300 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '1PUeh8E4' \
    --redirectUri 'th3kkxwR' \
    --ticket 'lN0gfGFT' \
    > test.out 2>&1
eval_tap $? 300 'PublicPlatformLinkV3' test.out

#- 301 PublicPlatformUnlinkV3
eval_tap 0 301 'PublicPlatformUnlinkV3 # SKIP deprecated' test.out

#- 302 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'u2mYHeN3' \
    > test.out 2>&1
eval_tap $? 302 'PublicPlatformUnlinkAllV3' test.out

#- 303 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '3yDMXKfj' \
    --ticket 'ovpaQIZf' \
    > test.out 2>&1
eval_tap $? 303 'PublicForcePlatformLinkV3' test.out

#- 304 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'HavUZVSn' \
    --clientId 'Yx1MDgxL' \
    --redirectUri 'odaWMUrJ' \
    > test.out 2>&1
eval_tap $? 304 'PublicWebLinkPlatform' test.out

#- 305 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'NnyVJI66' \
    --code 'EfKmstTd' \
    --state 'dSLm6mNt' \
    > test.out 2>&1
eval_tap $? 305 'PublicWebLinkPlatformEstablish' test.out

#- 306 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'RyaaNQkJ' \
    --code 'gTBNv7dy' \
    --state 'BtGnbQeP' \
    > test.out 2>&1
eval_tap $? 306 'PublicProcessWebLinkPlatformV3' test.out

#- 307 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "EdmOqMka", "userIds": ["oov4cHLx", "Mc2YL3hv", "Srqrd4aG"]}' \
    > test.out 2>&1
eval_tap $? 307 'PublicGetUsersPlatformInfosV3' test.out

#- 308 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "gySc9aXJ", "code": "6G6DuKw5", "emailAddress": "yBHkws7I", "languageTag": "dTBBjtwS", "newPassword": "K5eMCc9Y"}' \
    > test.out 2>&1
eval_tap $? 308 'ResetPasswordV3' test.out

#- 309 PublicGetUserByUserIdV3
eval_tap 0 309 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 310 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'awEIuxjr' \
    --activeOnly 'true' \
    --after 'PgmRQsl9' \
    --before 'eR9fkeqT' \
    --limit '53' \
    > test.out 2>&1
eval_tap $? 310 'PublicGetUserBanHistoryV3' test.out

#- 311 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'bTLykkMo' \
    > test.out 2>&1
eval_tap $? 311 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 312 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId '7f6UGBJi' \
    > test.out 2>&1
eval_tap $? 312 'PublicGetUserInformationV3' test.out

#- 313 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LDTEZojv' \
    --after '0.6469386666220027' \
    --before '0.8880453034915362' \
    --limit '35' \
    > test.out 2>&1
eval_tap $? 313 'PublicGetUserLoginHistoriesV3' test.out

#- 314 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'gqzghXzy' \
    --after 'K8agtXOw' \
    --before 'N5tmDNLo' \
    --limit '50' \
    --platformId 'rCTGsoMA' \
    > test.out 2>&1
eval_tap $? 314 'PublicGetUserPlatformAccountsV3' test.out

#- 315 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'lHs0qUQI' \
    > test.out 2>&1
eval_tap $? 315 'PublicListJusticePlatformAccountsV3' test.out

#- 316 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'Btcwvu8q' \
    --body '{"platformId": "oEOHNjPW", "platformUserId": "D8zntBvb"}' \
    > test.out 2>&1
eval_tap $? 316 'PublicLinkPlatformAccount' test.out

#- 317 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'uvYoH4oo' \
    --body '{"chosenNamespaces": ["z4PMVlQX", "5MQ39pVD", "LSE2nf3Z"], "requestId": "X7UBG60E"}' \
    > test.out 2>&1
eval_tap $? 317 'PublicForceLinkPlatformWithProgression' test.out

#- 318 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'HgjWAxTm' \
    > test.out 2>&1
eval_tap $? 318 'PublicGetPublisherUserV3' test.out

#- 319 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId '8rSdW4R9' \
    --password 'G2axTkdb' \
    > test.out 2>&1
eval_tap $? 319 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 320 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'RJBjHTIQ' \
    --before 'QQvsn5MJ' \
    --isWildcard 'false' \
    --limit '23' \
    > test.out 2>&1
eval_tap $? 320 'PublicGetRolesV3' test.out

#- 321 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'CzYdoO0k' \
    > test.out 2>&1
eval_tap $? 321 'PublicGetRoleV3' test.out

#- 322 PublicForgotPasswordWithoutNamespaceV3
samples/cli/sample-apps Iam publicForgotPasswordWithoutNamespaceV3 \
    --body '{"clientId": "9PXgGjSV", "emailAddress": "gcPOgFvI", "languageTag": "S9VxUoC5"}' \
    > test.out 2>&1
eval_tap $? 322 'PublicForgotPasswordWithoutNamespaceV3' test.out

#- 323 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'false' \
    > test.out 2>&1
eval_tap $? 323 'PublicGetMyUserV3' test.out

#- 324 PublicSendCodeForwardV3
samples/cli/sample-apps Iam publicSendCodeForwardV3 \
    --body '{"context": "W3FONerB", "emailAddress": "7eNoE197", "languageTag": "6xiaAodF", "upgradeToken": "HY2tHvQr"}' \
    > test.out 2>&1
eval_tap $? 324 'PublicSendCodeForwardV3' test.out

#- 325 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'CvQhPRhO' \
    > test.out 2>&1
eval_tap $? 325 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 326 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["Sla19Gcm", "bEgFGljx", "cwm5mvIS"], "oneTimeLinkCode": "jTvJfo8H"}' \
    > test.out 2>&1
eval_tap $? 326 'LinkHeadlessAccountToMyAccountV3' test.out

#- 327 PublicGetMyRedirectionAfterLinkV3
samples/cli/sample-apps Iam publicGetMyRedirectionAfterLinkV3 \
    --oneTimeLinkCode 'Mdp2otop' \
    > test.out 2>&1
eval_tap $? 327 'PublicGetMyRedirectionAfterLinkV3' test.out

#- 328 PublicGetMyProfileAllowUpdateStatusV3
samples/cli/sample-apps Iam publicGetMyProfileAllowUpdateStatusV3 \
    > test.out 2>&1
eval_tap $? 328 'PublicGetMyProfileAllowUpdateStatusV3' test.out

#- 329 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "86ARw558"}' \
    > test.out 2>&1
eval_tap $? 329 'PublicSendVerificationLinkV3' test.out

#- 330 PublicGetOpenidUserInfoV3
samples/cli/sample-apps Iam publicGetOpenidUserInfoV3 \
    > test.out 2>&1
eval_tap $? 330 'PublicGetOpenidUserInfoV3' test.out

#- 331 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'As03E9Ow' \
    > test.out 2>&1
eval_tap $? 331 'PublicVerifyUserByLinkV3' test.out

#- 332 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'M0hfY4Yl' \
    --code 'WWZW4eCA' \
    --error 'wDdns3tU' \
    --state 'Kl3kdGiJ' \
    > test.out 2>&1
eval_tap $? 332 'PlatformAuthenticateSAMLV3Handler' test.out

#- 333 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'STOSW4DJ' \
    --payload '9c35mCBd' \
    > test.out 2>&1
eval_tap $? 333 'LoginSSOClient' test.out

#- 334 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId '9y1BZ41P' \
    > test.out 2>&1
eval_tap $? 334 'LogoutSSOClient' test.out

#- 335 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 'umtaHsS4' \
    --code 'WG8I4b0S' \
    > test.out 2>&1
eval_tap $? 335 'RequestTargetTokenResponseV3' test.out

#- 336 UpgradeAndAuthenticateForwardV3
samples/cli/sample-apps Iam upgradeAndAuthenticateForwardV3 \
    --clientId '0TJySVY3' \
    --upgradeSuccessToken 'yDygOQpJ' \
    > test.out 2>&1
eval_tap $? 336 'UpgradeAndAuthenticateForwardV3' test.out

#- 337 AdminListInvitationHistoriesV4
samples/cli/sample-apps Iam adminListInvitationHistoriesV4 \
    --limit '55' \
    --namespace 'GV2s2cdn' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 337 'AdminListInvitationHistoriesV4' test.out

#- 338 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'CCYtX5MX' \
    > test.out 2>&1
eval_tap $? 338 'AdminGetDevicesByUserV4' test.out

#- 339 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'mGu3JujI' \
    --endDate 'TFfLz0Fd' \
    --limit '19' \
    --offset '0' \
    --startDate 'AcGXi57g' \
    > test.out 2>&1
eval_tap $? 339 'AdminGetBannedDevicesV4' test.out

#- 340 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'EcCCXT2B' \
    > test.out 2>&1
eval_tap $? 340 'AdminGetUserDeviceBansV4' test.out

#- 341 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "0VRRCHqO", "deviceId": "KE9YHy7m", "deviceType": "eU7hT3dg", "enabled": true, "endDate": "ezvk7FX3", "ext": {"Yw3LJnPI": {}, "aOVHjl9m": {}, "1fZVDWOQ": {}}, "reason": "5ms9B1UU"}' \
    > test.out 2>&1
eval_tap $? 341 'AdminBanDeviceV4' test.out

#- 342 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'UGPJjd8r' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 342 'AdminGetDeviceBanV4' test.out

#- 343 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'IaFVZCVF' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 343 'AdminUpdateDeviceBanV4' test.out

#- 344 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'DpsjKbOm' \
    --startDate 'sHEEZ08a' \
    --deviceType 'EBVgnJ08' \
    > test.out 2>&1
eval_tap $? 344 'AdminGenerateReportV4' test.out

#- 345 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 345 'AdminGetDeviceTypesV4' test.out

#- 346 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'lTcS0rB8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 346 'AdminGetDeviceBansV4' test.out

#- 347 AdminDecryptDeviceV4
eval_tap 0 347 'AdminDecryptDeviceV4 # SKIP deprecated' test.out

#- 348 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'FisXAkuj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 348 'AdminUnbanDeviceV4' test.out

#- 349 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'iZ9rnynF' \
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
    --limit '90' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 351 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 352 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 11, "userInfo": {"country": "ECpmNpzD"}}' \
    > test.out 2>&1
eval_tap $? 352 'AdminCreateTestUsersV4' test.out

#- 353 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "L2zLSGvv", "policyId": "xDoayMAr", "policyVersionId": "2LwdQNGt"}, {"isAccepted": true, "localizedPolicyVersionId": "dIKo98Ej", "policyId": "AVTzb4Es", "policyVersionId": "k9W0QhTD"}, {"isAccepted": false, "localizedPolicyVersionId": "cvHHgxhA", "policyId": "8dgOIljM", "policyVersionId": "bUHvY6Jn"}], "authType": "EMAILPASSWD", "code": "I3Yefv6W", "country": "xaek7p3F", "dateOfBirth": "dUcH7TZf", "displayName": "MDAPAOUH", "emailAddress": "ZQMDKcrk", "password": "F4oZmEtd", "passwordMD5Sum": "ch2wQAuj", "reachMinimumAge": false, "uniqueDisplayName": "qGz240TK", "username": "u46Q7kdh"}' \
    > test.out 2>&1
eval_tap $? 353 'AdminCreateUserV4' test.out

#- 354 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": true, "userIds": ["mFARoILk", "zZ6bueVQ", "vUHrngxD"]}' \
    > test.out 2>&1
eval_tap $? 354 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 355 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["BHVX7oit", "DjlfO0tq", "cKV7caBw"]}' \
    > test.out 2>&1
eval_tap $? 355 'AdminBulkCheckValidUserIDV4' test.out

#- 356 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'YSZQIT44' \
    --body '{"avatarUrl": "4Sdlhab3", "country": "u300tVUd", "dateOfBirth": "JEa67sEG", "displayName": "LMFXAxMu", "languageTag": "f2hfsbCo", "skipLoginQueue": true, "tags": ["cWc08Un9", "4svqBkU6", "JBDAvjDR"], "uniqueDisplayName": "SyxMsDaf", "userName": "4ejmBGBN"}' \
    > test.out 2>&1
eval_tap $? 356 'AdminUpdateUserV4' test.out

#- 357 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId '2uaPprra' \
    --body '{"code": "2I3QajKr", "emailAddress": "t7kP9iHT"}' \
    > test.out 2>&1
eval_tap $? 357 'AdminUpdateUserEmailAddressV4' test.out

#- 358 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'T0aPvrXP' \
    --body '{"factor": "TglZbXTr", "mfaToken": "1Sp0WkRk"}' \
    > test.out 2>&1
eval_tap $? 358 'AdminDisableUserMFAV4' test.out

#- 359 AdminGetUserMFAStatusV4
samples/cli/sample-apps Iam adminGetUserMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    --userId 'TaLlCeMP' \
    > test.out 2>&1
eval_tap $? 359 'AdminGetUserMFAStatusV4' test.out

#- 360 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'm7neq986' \
    > test.out 2>&1
eval_tap $? 360 'AdminListUserRolesV4' test.out

#- 361 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'jCmF317G' \
    --body '{"assignedNamespaces": ["oHx6YS4L", "4NERscgB", "Yl9Nr4cD"], "roleId": "5sjv7N1K"}' \
    > test.out 2>&1
eval_tap $? 361 'AdminUpdateUserRoleV4' test.out

#- 362 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'RwklAm4u' \
    --body '{"assignedNamespaces": ["wCf1hTaL", "rp9soq1Q", "Y3nCOBxf"], "roleId": "C25Fe3CV"}' \
    > test.out 2>&1
eval_tap $? 362 'AdminAddUserRoleV4' test.out

#- 363 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'WjLnfXY6' \
    --body '{"assignedNamespaces": ["IGDGei4D", "Bn303V1P", "q0eP0BGN"], "roleId": "lajo5CWj"}' \
    > test.out 2>&1
eval_tap $? 363 'AdminRemoveUserRoleV4' test.out

#- 364 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'true' \
    --limit '0' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 364 'AdminGetRolesV4' test.out

#- 365 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "083777XW"}' \
    > test.out 2>&1
eval_tap $? 365 'AdminCreateRoleV4' test.out

#- 366 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'ZYrYuh6u' \
    > test.out 2>&1
eval_tap $? 366 'AdminGetRoleV4' test.out

#- 367 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'MjIxZKtu' \
    > test.out 2>&1
eval_tap $? 367 'AdminDeleteRoleV4' test.out

#- 368 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'on1zaB27' \
    --body '{"adminRole": false, "deletable": false, "isWildcard": true, "roleName": "3rPFT4li"}' \
    > test.out 2>&1
eval_tap $? 368 'AdminUpdateRoleV4' test.out

#- 369 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'L3wbYexT' \
    --body '{"permissions": [{"action": 44, "resource": "5XRA8JIJ", "schedAction": 63, "schedCron": "l1G8CVdJ", "schedRange": ["5qRYlbsE", "yHLWvpLU", "sCxdRxA0"]}, {"action": 32, "resource": "U0up1jWW", "schedAction": 49, "schedCron": "IFauFTpY", "schedRange": ["Vf3ChynC", "pRK4VhI3", "vB2x4h4o"]}, {"action": 29, "resource": "7CpZMP8y", "schedAction": 25, "schedCron": "gzKIVlFA", "schedRange": ["x8Q4csOm", "ElYU1yBJ", "Qpj18Dgp"]}]}' \
    > test.out 2>&1
eval_tap $? 369 'AdminUpdateRolePermissionsV4' test.out

#- 370 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'UR81SwT2' \
    --body '{"permissions": [{"action": 84, "resource": "wdwqS4jv", "schedAction": 33, "schedCron": "a516p2gp", "schedRange": ["7k2K0gFC", "Fccx367G", "OT0a0tlP"]}, {"action": 37, "resource": "Z6qq0QG1", "schedAction": 46, "schedCron": "r4f5uwkS", "schedRange": ["GdKSaxfL", "HfOrvPbe", "Ifv8lqv8"]}, {"action": 82, "resource": "ykbEKxhZ", "schedAction": 62, "schedCron": "QbROyITl", "schedRange": ["6JV1DBZJ", "vStpRVO8", "6XAE2M81"]}]}' \
    > test.out 2>&1
eval_tap $? 370 'AdminAddRolePermissionsV4' test.out

#- 371 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'VmuQfqy0' \
    --body '["nDUSxr2Z", "nK3iGgJO", "HaV2BisH"]' \
    > test.out 2>&1
eval_tap $? 371 'AdminDeleteRolePermissionsV4' test.out

#- 372 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'tXt1fiGY' \
    --after 'zGdCgBVA' \
    --before 'pwJhEPc9' \
    --limit '26' \
    > test.out 2>&1
eval_tap $? 372 'AdminListAssignedUsersV4' test.out

#- 373 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'L3ObIxG6' \
    --body '{"assignedNamespaces": ["xS0ApPmQ", "0jqVeE32", "geHyu0hC"], "namespace": "AXUUffI4", "userId": "FXMOS3AU"}' \
    > test.out 2>&1
eval_tap $? 373 'AdminAssignUserToRoleV4' test.out

#- 374 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'Mzt3ZsUd' \
    --body '{"namespace": "P1R3OZrD", "userId": "cpDu8SCT"}' \
    > test.out 2>&1
eval_tap $? 374 'AdminRevokeUserFromRoleV4' test.out

#- 375 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["Y1bdWGiy", "IenZ2Ml3", "yEvlijl2"], "emailAddresses": ["Iag5mRDv", "p0DzhLIJ", "D9un281U"], "isAdmin": false, "isNewStudio": true, "languageTag": "2Wd0UdIY", "namespace": "zt6GUn8S", "roleId": "sD9wYRsg"}' \
    > test.out 2>&1
eval_tap $? 375 'AdminInviteUserNewV4' test.out

#- 376 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "7zw09miP", "country": "cncAM76t", "dateOfBirth": "GgXYLi5K", "displayName": "rw6yjxsg", "languageTag": "mcGsMbJl", "skipLoginQueue": false, "tags": ["6cWSojz7", "CrWldV80", "XZm8pnyS"], "uniqueDisplayName": "84qLsiyG", "userName": "eY0zshEA"}' \
    > test.out 2>&1
eval_tap $? 376 'AdminUpdateMyUserV4' test.out

#- 377 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    --body '{"factor": "9JexuRUr", "mfaToken": "9K7W12ZC"}' \
    > test.out 2>&1
eval_tap $? 377 'AdminDisableMyAuthenticatorV4' test.out

#- 378 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code '40oKRQ2A' \
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
    --body '{"factor": "PWmP9MEY", "mfaToken": "8BDuU8wT"}' \
    > test.out 2>&1
eval_tap $? 382 'AdminDisableMyBackupCodesV4' test.out

#- 383 AdminDownloadMyBackupCodesV4
eval_tap 0 383 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 384 AdminEnableMyBackupCodesV4
eval_tap 0 384 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 385 AdminGetBackupCodesV4
samples/cli/sample-apps Iam adminGetBackupCodesV4 \
    --languageTag 'ItF1QpUE' \
    > test.out 2>&1
eval_tap $? 385 'AdminGetBackupCodesV4' test.out

#- 386 AdminGenerateBackupCodesV4
samples/cli/sample-apps Iam adminGenerateBackupCodesV4 \
    --languageTag 'aGKfIZb9' \
    > test.out 2>&1
eval_tap $? 386 'AdminGenerateBackupCodesV4' test.out

#- 387 AdminEnableBackupCodesV4
samples/cli/sample-apps Iam adminEnableBackupCodesV4 \
    --languageTag 'cE3lPMSn' \
    > test.out 2>&1
eval_tap $? 387 'AdminEnableBackupCodesV4' test.out

#- 388 AdminChallengeMyMFAV4
samples/cli/sample-apps Iam adminChallengeMyMFAV4 \
    --code 'ZbI31S3U' \
    --factor 'pzsKEJ93' \
    > test.out 2>&1
eval_tap $? 388 'AdminChallengeMyMFAV4' test.out

#- 389 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    --action '8YQCOaxR' \
    --languageTag 'GDgw19zJ' \
    > test.out 2>&1
eval_tap $? 389 'AdminSendMyMFAEmailCodeV4' test.out

#- 390 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    --body '{"factor": "ysV15Lq4", "mfaToken": "siWYnEfk"}' \
    > test.out 2>&1
eval_tap $? 390 'AdminDisableMyEmailV4' test.out

#- 391 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'z3PZ17Rv' \
    > test.out 2>&1
eval_tap $? 391 'AdminEnableMyEmailV4' test.out

#- 392 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 392 'AdminGetMyEnabledFactorsV4' test.out

#- 393 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'AEZm5d5c' \
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
    --clientId 'l5ikl1ay' \
    --linkingToken 'Ftg4GjVv' \
    --password 'DAgXvLTZ' \
    --username '21xSOssG' \
    > test.out 2>&1
eval_tap $? 397 'AuthenticationWithPlatformLinkV4' test.out

#- 398 GenerateTokenByNewHeadlessAccountV4
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV4 \
    --additionalData 'dsSucdgh' \
    --extendExp 'true' \
    --linkingToken '8NvaUHfJ' \
    > test.out 2>&1
eval_tap $? 398 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 399 Verify2faCodeV4
samples/cli/sample-apps Iam verify2faCodeV4 \
    --code 'kyVTnT1u' \
    --factor 'aAcsJRov' \
    --mfaToken 'SClVPuAN' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 399 'Verify2faCodeV4' test.out

#- 400 PlatformTokenGrantV4
samples/cli/sample-apps Iam platformTokenGrantV4 \
    --platformId 'jYnwkzp1' \
    --codeChallenge '1DZuf1T9' \
    --codeChallengeMethod 'S256' \
    --additionalData 'ngJ4EjGf' \
    --clientId '2oZCu9nJ' \
    --createHeadless 'false' \
    --deviceId 'Nwm5qk5W' \
    --macAddress 's5cmrsRJ' \
    --platformToken '6gT8LvkP' \
    --serviceLabel '0.8217004543077852' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 400 'PlatformTokenGrantV4' test.out

#- 401 SimultaneousLoginV4
samples/cli/sample-apps Iam simultaneousLoginV4 \
    --codeChallenge 'YSc7ocVS' \
    --codeChallengeMethod 'S256' \
    --simultaneousPlatform 'jHULyBs4' \
    --simultaneousTicket 'xZQDLzSK' \
    --nativePlatform 'steam' \
    --nativePlatformTicket 'dKpubdHB' \
    > test.out 2>&1
eval_tap $? 401 'SimultaneousLoginV4' test.out

#- 402 TokenGrantV4
samples/cli/sample-apps Iam tokenGrantV4 \
    --codeChallenge 'c1aNkQ1X' \
    --codeChallengeMethod 'S256' \
    --additionalData 'ej0pcR1C' \
    --clientId 'PwXTbHMI' \
    --clientSecret 'ZLzQsOZg' \
    --code '10Fi9CIz' \
    --codeVerifier 'sC8H0rBq' \
    --extendNamespace 'uMEBuR5x' \
    --extendExp 'true' \
    --loginQueueTicket 'L2B0INvb' \
    --password 'ZEWYZHmm' \
    --redirectUri 'uIcJuox9' \
    --refreshToken 'iWtE0u8L' \
    --scope 'I4UlLRWv' \
    --username 'OZLfJXZq' \
    --grantType 'refresh_token' \
    > test.out 2>&1
eval_tap $? 402 'TokenGrantV4' test.out

#- 403 RequestTargetTokenResponseV4
samples/cli/sample-apps Iam requestTargetTokenResponseV4 \
    --additionalData 'sTIwqx5I' \
    --code 'vOIA3pWh' \
    > test.out 2>&1
eval_tap $? 403 'RequestTargetTokenResponseV4' test.out

#- 404 PublicListUserIDByPlatformUserIDsV4
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'lvKBjsKI' \
    --rawPUID 'false' \
    --body '{"pidType": "mFPdpVSC", "platformUserIds": ["V51fDfoK", "8tJFy3Sn", "JCvRpwou"]}' \
    > test.out 2>&1
eval_tap $? 404 'PublicListUserIDByPlatformUserIDsV4' test.out

#- 405 PublicGetUserByPlatformUserIDV4
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'dtHNP1ZX' \
    --platformUserId '53JUZ2Fd' \
    > test.out 2>&1
eval_tap $? 405 'PublicGetUserByPlatformUserIDV4' test.out

#- 406 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "abfJA7YW", "policyId": "ZxIVLKMZ", "policyVersionId": "atyNoa6g"}, {"isAccepted": true, "localizedPolicyVersionId": "bDyQTVKs", "policyId": "6KxKSWSB", "policyVersionId": "cUPK6dMW"}, {"isAccepted": true, "localizedPolicyVersionId": "yqHtlHg2", "policyId": "2tiR8mYn", "policyVersionId": "V74vb3OL"}], "authType": "EMAILPASSWD", "country": "MChDvyva", "dateOfBirth": "lfhdkc9L", "displayName": "0CDq9W7W", "emailAddress": "OlBQw9VU", "password": "HD0BI6JQ", "passwordMD5Sum": "pvQiIwDk", "uniqueDisplayName": "jNFC2Xxl", "username": "rt1Kz46v", "verified": false}' \
    > test.out 2>&1
eval_tap $? 406 'PublicCreateTestUserV4' test.out

#- 407 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "Lomf4UIy", "policyId": "kC0IOjNQ", "policyVersionId": "AjIegKpR"}, {"isAccepted": true, "localizedPolicyVersionId": "SQ58SXRk", "policyId": "8lbBnZe2", "policyVersionId": "hfVcEERp"}, {"isAccepted": false, "localizedPolicyVersionId": "Q0KvSesT", "policyId": "DuHuega5", "policyVersionId": "tI3oWyYz"}], "authType": "EMAILPASSWD", "code": "TljLJnNq", "country": "AAQfo6Wz", "dateOfBirth": "O9b7YZYO", "displayName": "YkRusgaD", "emailAddress": "6BmB53YT", "password": "fNrCs8Fc", "passwordMD5Sum": "hre3ZSfu", "reachMinimumAge": false, "uniqueDisplayName": "SEZpZKYt", "username": "Ep6zL1i6"}' \
    > test.out 2>&1
eval_tap $? 407 'PublicCreateUserV4' test.out

#- 408 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'NAD9twQ4' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "kshj9eIj", "policyId": "TNGHjFvL", "policyVersionId": "Yod4V9kL"}, {"isAccepted": false, "localizedPolicyVersionId": "dDmvmQGQ", "policyId": "E1FFUrPm", "policyVersionId": "HE4F2mUH"}, {"isAccepted": true, "localizedPolicyVersionId": "0Q1wukfq", "policyId": "zpK8Vh98", "policyVersionId": "SAj6iWui"}], "authType": "EMAILPASSWD", "code": "oprXrfh6", "country": "L6TJh3iV", "dateOfBirth": "aE3D6FY6", "displayName": "BLlNHWbJ", "emailAddress": "ugbMyi2S", "password": "EH2K5LWW", "passwordMD5Sum": "pOy1PVUQ", "reachMinimumAge": false, "uniqueDisplayName": "tmWDE07J", "username": "kdHaI7ln"}' \
    > test.out 2>&1
eval_tap $? 408 'CreateUserFromInvitationV4' test.out

#- 409 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "PvKJozif", "country": "80Goxr9O", "dateOfBirth": "EyXN24we", "displayName": "IwwBVbN7", "languageTag": "ZnIzG0xa", "uniqueDisplayName": "7QfO5s1B", "userName": "Bw4sEgOK"}' \
    > test.out 2>&1
eval_tap $? 409 'PublicUpdateUserV4' test.out

#- 410 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "dt3IUb3F", "emailAddress": "I6W8esUV"}' \
    > test.out 2>&1
eval_tap $? 410 'PublicUpdateUserEmailAddressV4' test.out

#- 411 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "E7ZyF0t4", "country": "7f1X9u6V", "dateOfBirth": "8ggMVSwh", "displayName": "h2QzEhLb", "emailAddress": "BuZyyZSN", "password": "XCiXVcG8", "reachMinimumAge": false, "uniqueDisplayName": "QG7WmnlP", "username": "Hxb6hOgK", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 411 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 412 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"dateOfBirth": "37O41Npe", "displayName": "QcTnpJm4", "emailAddress": "2DCk0T9X", "password": "C2AnSJKi", "uniqueDisplayName": "kwAmG2Je", "username": "aBFW7KMZ"}' \
    > test.out 2>&1
eval_tap $? 412 'PublicUpgradeHeadlessAccountV4' test.out

#- 413 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "RLiGOetj", "mfaToken": "u1vqXJyK"}' \
    > test.out 2>&1
eval_tap $? 413 'PublicDisableMyAuthenticatorV4' test.out

#- 414 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'Mk5GGlbq' \
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
    --body '{"factor": "50HnHItP", "mfaToken": "n6chf1rd"}' \
    > test.out 2>&1
eval_tap $? 418 'PublicDisableMyBackupCodesV4' test.out

#- 419 PublicDownloadMyBackupCodesV4
eval_tap 0 419 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 420 PublicEnableMyBackupCodesV4
eval_tap 0 420 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 421 PublicGetBackupCodesV4
samples/cli/sample-apps Iam publicGetBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag '9zs1AOF0' \
    > test.out 2>&1
eval_tap $? 421 'PublicGetBackupCodesV4' test.out

#- 422 PublicGenerateBackupCodesV4
samples/cli/sample-apps Iam publicGenerateBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'ZtXg7pnb' \
    > test.out 2>&1
eval_tap $? 422 'PublicGenerateBackupCodesV4' test.out

#- 423 PublicEnableBackupCodesV4
samples/cli/sample-apps Iam publicEnableBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'dYisjDc3' \
    > test.out 2>&1
eval_tap $? 423 'PublicEnableBackupCodesV4' test.out

#- 424 PublicChallengeMyMFAV4
samples/cli/sample-apps Iam publicChallengeMyMFAV4 \
    --namespace $AB_NAMESPACE \
    --code '1otiTr45' \
    --factor 'QhPAawJq' \
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
    --action 'xe3wvGtd' \
    --languageTag '4TTpaNw2' \
    > test.out 2>&1
eval_tap $? 426 'PublicSendMyMFAEmailCodeV4' test.out

#- 427 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "y5aCQkjU", "mfaToken": "KFnWhPqA"}' \
    > test.out 2>&1
eval_tap $? 427 'PublicDisableMyEmailV4' test.out

#- 428 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'Fvuzyy1i' \
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
    --factor 'uma68TAS' \
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
    --userId '8VMZV1B3' \
    > test.out 2>&1
eval_tap $? 433 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 434 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "SNxyfEl0", "emailAddress": "M7gap4Wf", "languageTag": "bCre5ED1", "namespace": "OgR0iMQS", "namespaceDisplayName": "FeraCsYd"}' \
    > test.out 2>&1
eval_tap $? 434 'PublicInviteUserV4' test.out

#- 435 PublicUpgradeHeadlessWithCodeV4Forward
samples/cli/sample-apps Iam publicUpgradeHeadlessWithCodeV4Forward \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "h3EgEioD", "policyId": "clUX1VyK", "policyVersionId": "Rq7dlWoM"}, {"isAccepted": false, "localizedPolicyVersionId": "VDFftHCZ", "policyId": "a9b536AY", "policyVersionId": "lrmi61Uo"}, {"isAccepted": false, "localizedPolicyVersionId": "qlsspS2i", "policyId": "mbBYNYTX", "policyVersionId": "NQoKjWRC"}], "code": "yL9QnfL9", "country": "C5lfhNOT", "dateOfBirth": "t6gGGLFk", "displayName": "v3zRz0nb", "emailAddress": "MmnqY2UG", "password": "TdVzu2GN", "reachMinimumAge": false, "uniqueDisplayName": "cyaVCAE0", "username": "QaPk7Bse", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 435 'PublicUpgradeHeadlessWithCodeV4Forward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE