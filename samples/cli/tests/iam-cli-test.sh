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
echo "1..432"

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
    --body '{"modules": [{"docLink": "zTHiF0n8", "groups": [{"group": "mQwQesLG", "groupId": "FDTOQYHb", "permissions": [{"allowedActions": [16, 40, 25], "resource": "6S9J2uh0"}, {"allowedActions": [83, 22, 0], "resource": "8u4giRq0"}, {"allowedActions": [40, 50, 9], "resource": "sRf8mzax"}]}, {"group": "eiF7wG7D", "groupId": "kxCCU4jz", "permissions": [{"allowedActions": [27, 25, 17], "resource": "ZifHF70q"}, {"allowedActions": [88, 94, 8], "resource": "hvnCLXKa"}, {"allowedActions": [80, 90, 1], "resource": "2AZtuz9a"}]}, {"group": "6rzRcHPI", "groupId": "Wwh9cS4j", "permissions": [{"allowedActions": [80, 11, 60], "resource": "3Ri4Ux5l"}, {"allowedActions": [13, 8, 28], "resource": "rr9QzysY"}, {"allowedActions": [84, 42, 100], "resource": "GdbZGrN5"}]}], "module": "ERr7hzde", "moduleId": "FWucc2ka"}, {"docLink": "D0xhuWVh", "groups": [{"group": "lUravKSi", "groupId": "QKsJLmhg", "permissions": [{"allowedActions": [61, 87, 6], "resource": "yNsjNrSA"}, {"allowedActions": [61, 76, 53], "resource": "pMpqgjUE"}, {"allowedActions": [48, 79, 14], "resource": "qvk4CfBD"}]}, {"group": "4UlVU4js", "groupId": "Mzx2EHY8", "permissions": [{"allowedActions": [81, 21, 35], "resource": "OrpXMuZH"}, {"allowedActions": [82, 27, 91], "resource": "ICthIgGJ"}, {"allowedActions": [31, 99, 60], "resource": "3pbtRBIL"}]}, {"group": "XtvdP50O", "groupId": "uFgfDzcr", "permissions": [{"allowedActions": [16, 35, 94], "resource": "diy26KDY"}, {"allowedActions": [75, 24, 50], "resource": "ex2wjFL2"}, {"allowedActions": [74, 44, 28], "resource": "V64170lz"}]}], "module": "ntQQMVEo", "moduleId": "JYPZoTWq"}, {"docLink": "KKMVHRYh", "groups": [{"group": "5g8eaNCq", "groupId": "i9l8lVNo", "permissions": [{"allowedActions": [52, 47, 51], "resource": "8y0o9YuT"}, {"allowedActions": [62, 94, 76], "resource": "S4Hat6Nm"}, {"allowedActions": [28, 1, 1], "resource": "fCDV9XBB"}]}, {"group": "zTDLrFed", "groupId": "CUNkPLTP", "permissions": [{"allowedActions": [21, 22, 9], "resource": "vUNcnORg"}, {"allowedActions": [59, 81, 23], "resource": "d6F1IHNS"}, {"allowedActions": [20, 32, 48], "resource": "CMorPRk2"}]}, {"group": "uwETQCyP", "groupId": "W18g9tRb", "permissions": [{"allowedActions": [84, 1, 55], "resource": "QGylDuj3"}, {"allowedActions": [16, 3, 62], "resource": "STxWsc3p"}, {"allowedActions": [50, 57, 12], "resource": "f67EigKD"}]}], "module": "lmMsrp7S", "moduleId": "ce1gyyeL"}]}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
samples/cli/sample-apps Iam adminDeleteConfigPermissionsByGroup \
    --forceDelete 'true' \
    --body '{"groupId": "bqAYUtYE", "moduleId": "M9QW5EDi"}' \
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
    --body '[{"field": "pzxuxl6T", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["G0jEcBh0", "vQArpXXZ", "d0oUgA5K"], "preferRegex": true, "regex": "buUxYn4x"}, "blockedWord": ["GssHierj", "AdYr5niH", "TllVo50z"], "description": [{"language": "EJ5r6CBb", "message": ["VoWuAOVr", "Vza1LpYf", "3G7gdgG7"]}, {"language": "iDj8QZBL", "message": ["DaRzIpQT", "OoUzoarH", "pARQDGSO"]}, {"language": "Bvkx6mir", "message": ["MHPbZDaZ", "sVpQ53NC", "IJSvlNzF"]}], "isCustomRegex": false, "letterCase": "kGQZ77JC", "maxLength": 57, "maxRepeatingAlphaNum": 61, "maxRepeatingSpecialCharacter": 76, "minCharType": 2, "minLength": 81, "profanityFilter": "gDqQPJfQ", "regex": "dXftw7pd", "specialCharacterLocation": "7KwUutfz", "specialCharacters": ["sG2vZYrs", "KBsfwSZg", "Xga559JK"]}}, {"field": "z6LIAJMR", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["jpOjcgti", "BobguKfG", "1WBCyjuB"], "preferRegex": true, "regex": "wCmUR2jJ"}, "blockedWord": ["r7qCZUJc", "n24A8BZa", "VnlMvE3n"], "description": [{"language": "Cks1Qisc", "message": ["UbDZtX5T", "vOpz5vgg", "T9UxVur5"]}, {"language": "vljeczYT", "message": ["sXRBKtdw", "GYbdJW12", "j3HTpw3b"]}, {"language": "5dmo8QGU", "message": ["fg5aVUOQ", "e493kWxa", "yB1eguiH"]}], "isCustomRegex": true, "letterCase": "NWClRKU6", "maxLength": 75, "maxRepeatingAlphaNum": 78, "maxRepeatingSpecialCharacter": 33, "minCharType": 45, "minLength": 25, "profanityFilter": "ENiF6qhh", "regex": "D4VJCtld", "specialCharacterLocation": "qvR4mCfg", "specialCharacters": ["0H6al69J", "Ieng4x60", "usFpSg8C"]}}, {"field": "nvkJWeTU", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["y7Nh4IBC", "tXo6dawY", "gC9jjfqN"], "preferRegex": false, "regex": "W9bgWu22"}, "blockedWord": ["l4wEs8ej", "wYW2B9xT", "4CV54dyp"], "description": [{"language": "eXVIbU7k", "message": ["pFPdHS9J", "JP8uBXYG", "mRsUfr9Y"]}, {"language": "ag7mPwky", "message": ["4BOPsby0", "II4tQR9x", "pRWf5BoS"]}, {"language": "50Ay5jEr", "message": ["dWCIsohX", "ph8jsSSN", "6Qlfnlqp"]}], "isCustomRegex": true, "letterCase": "zmbxnuL6", "maxLength": 55, "maxRepeatingAlphaNum": 8, "maxRepeatingSpecialCharacter": 75, "minCharType": 79, "minLength": 4, "profanityFilter": "DHCzsnhT", "regex": "XOhkeaHQ", "specialCharacterLocation": "sHIFs3vv", "specialCharacters": ["q1SxvezW", "vNVD5Yox", "cXKsdybo"]}}]' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'aYDE6zLs' \
    > test.out 2>&1
eval_tap $? 114 'AdminResetInputValidations' test.out

#- 115 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'azFUh5j1' \
    --before 'Rq8jJ60b' \
    --endDate 'G5yvtoCl' \
    --limit '22' \
    --query 'LleVyLYV' \
    --roleId '1HRrjkGA' \
    --startDate 'hCJV5rm7' \
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
    --body '{"ageRestriction": 83, "enable": true}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 118 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminGetListCountryAgeRestrictionV3' test.out

#- 119 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'vWsfAzZ5' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 70}' \
    > test.out 2>&1
eval_tap $? 119 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 120 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'UjsRDuma' \
    --limit '90' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetBannedUsersV3' test.out

#- 121 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "EINbhfYX", "comment": "cgAP2z8J", "endDate": "YZI57kQb", "reason": "HWEClFYA", "skipNotif": true, "userIds": ["hYQ2yPhV", "bvfIcmkM", "3YfZaWqn"]}' \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "a7YElLRb", "userId": "u0uU2kTL"}, {"banId": "F8MLRXMe", "userId": "gJL4YpVm"}, {"banId": "mdZqjfvE", "userId": "VWunLKG6"}]}' \
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
    --clientId 'EqFOZ4pG' \
    --clientName '7F1ki5u0' \
    --clientType 'tbls3TMf' \
    --limit '53' \
    --offset '36' \
    --skipLoginQueue 'true' \
    > test.out 2>&1
eval_tap $? 124 'AdminGetClientsByNamespaceV3' test.out

#- 125 AdminBulkUpdateClientsV3
samples/cli/sample-apps Iam adminBulkUpdateClientsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientIds": ["Emg7u3vR", "4ytyxwOE", "78tH7Uec"], "clientUpdateRequest": {"audiences": ["tR2yEKTT", "IsNIaxPW", "nJiiQ5uL"], "baseUri": "OFZqlc2s", "clientName": "cBZarC7S", "clientPermissions": [{"action": 10, "resource": "jcMRKjED", "schedAction": 36, "schedCron": "yPvJYaco", "schedRange": ["hohiU6z3", "QS0jnAi3", "8G4fdVXK"]}, {"action": 22, "resource": "iafjOZ3O", "schedAction": 23, "schedCron": "p6al1uZe", "schedRange": ["8pkQGX79", "KzBIWHCE", "vOLkUOAH"]}, {"action": 63, "resource": "1603jk5V", "schedAction": 1, "schedCron": "YuUgviUo", "schedRange": ["s7oFdqEQ", "Y9n6gk1g", "K0cCbJtx"]}], "clientPlatform": "OYnAqo7q", "deletable": false, "description": "PBDIzm3E", "modulePermissions": [{"moduleId": "AyQd5S9i", "selectedGroups": [{"groupId": "5brm4pKK", "selectedActions": [11, 66, 0]}, {"groupId": "3Esrm3fH", "selectedActions": [24, 57, 86]}, {"groupId": "MajcDZWa", "selectedActions": [29, 88, 90]}]}, {"moduleId": "Nlls0Cv9", "selectedGroups": [{"groupId": "PMgLWPKB", "selectedActions": [76, 93, 46]}, {"groupId": "xVlABpJ1", "selectedActions": [33, 83, 18]}, {"groupId": "svl34BPz", "selectedActions": [94, 73, 71]}]}, {"moduleId": "NjsoXDqs", "selectedGroups": [{"groupId": "QHQqp81C", "selectedActions": [92, 85, 90]}, {"groupId": "8HSVYmFI", "selectedActions": [20, 38, 77]}, {"groupId": "WUprrZaW", "selectedActions": [11, 99, 25]}]}], "namespace": "V7XwWK0C", "oauthAccessTokenExpiration": 27, "oauthAccessTokenExpirationTimeUnit": "2bBVIp2J", "oauthRefreshTokenExpiration": 7, "oauthRefreshTokenExpirationTimeUnit": "hlbYZRvB", "redirectUri": "6ozVq3ym", "scopes": ["TTVvroLp", "8i21x0EF", "Jpz5BxTZ"], "skipLoginQueue": true, "twoFactorEnabled": false}}' \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["BydL0Hg8", "gNBEsyUx", "QfjQKbGS"], "baseUri": "YozSR6RX", "clientId": "srGSeO9i", "clientName": "basIPdZo", "clientPermissions": [{"action": 17, "resource": "PQKf2uiI", "schedAction": 64, "schedCron": "KNa3HqVk", "schedRange": ["pflBeVMO", "H57D8tMk", "7hAjclT6"]}, {"action": 33, "resource": "Lk3wpE8s", "schedAction": 17, "schedCron": "RAYRJlDm", "schedRange": ["bux399Kz", "CZbyih0m", "UMIkxewN"]}, {"action": 42, "resource": "sUXdW55F", "schedAction": 65, "schedCron": "cnUMJvC7", "schedRange": ["6pJHWjOv", "JXrLeOST", "VoOmt2IU"]}], "clientPlatform": "gr5bEydb", "deletable": true, "description": "a84HGMe2", "modulePermissions": [{"moduleId": "22rUvBeJ", "selectedGroups": [{"groupId": "bVlAwOwr", "selectedActions": [23, 58, 52]}, {"groupId": "IthLyLgV", "selectedActions": [57, 47, 4]}, {"groupId": "W2WJPn4G", "selectedActions": [15, 51, 18]}]}, {"moduleId": "X8FoPKwj", "selectedGroups": [{"groupId": "TBsL11pF", "selectedActions": [18, 39, 56]}, {"groupId": "uuRPlNs3", "selectedActions": [76, 35, 92]}, {"groupId": "3bUskjGC", "selectedActions": [80, 27, 71]}]}, {"moduleId": "z0UShp5t", "selectedGroups": [{"groupId": "TZ69GEyG", "selectedActions": [43, 56, 44]}, {"groupId": "tSGBQv5w", "selectedActions": [78, 8, 40]}, {"groupId": "cxnYvRys", "selectedActions": [42, 9, 42]}]}], "namespace": "n7TYgAtu", "oauthAccessTokenExpiration": 78, "oauthAccessTokenExpirationTimeUnit": "TFZ9FaGs", "oauthClientType": "6efoEZOG", "oauthRefreshTokenExpiration": 52, "oauthRefreshTokenExpirationTimeUnit": "WRBJV6fu", "parentNamespace": "vOBUGwn5", "redirectUri": "lMlyBDzg", "scopes": ["sUepBXkr", "kXaPZGnL", "Mp0hK18X"], "secret": "vbg0LkF6", "skipLoginQueue": false, "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'sM18Hfse' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'QOhKThCU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'vmQYe2c2' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["tWxAR6oJ", "IeD3XCbt", "XDbkY3DE"], "baseUri": "g0sCRC3E", "clientName": "QF6ugEkY", "clientPermissions": [{"action": 46, "resource": "Lb3G5T98", "schedAction": 93, "schedCron": "f3SXVHPM", "schedRange": ["fXOscE9L", "gNwicMI3", "aEoMRP9A"]}, {"action": 96, "resource": "TzDPJOul", "schedAction": 94, "schedCron": "8BWvpqlt", "schedRange": ["6S8wjlPu", "3OihuwNQ", "lwhk4n4v"]}, {"action": 58, "resource": "a2ppGWWR", "schedAction": 9, "schedCron": "QA8fcObn", "schedRange": ["2qs0SAcg", "rLk1ZUUy", "quHisZ5T"]}], "clientPlatform": "wrfTr08G", "deletable": true, "description": "Ckf2Kec4", "modulePermissions": [{"moduleId": "xPSsHMGu", "selectedGroups": [{"groupId": "GN7HyCQl", "selectedActions": [13, 56, 26]}, {"groupId": "7CIFbJcM", "selectedActions": [70, 15, 79]}, {"groupId": "L1kimpJU", "selectedActions": [85, 27, 51]}]}, {"moduleId": "Y4FgXMhq", "selectedGroups": [{"groupId": "lUtFWJud", "selectedActions": [88, 97, 70]}, {"groupId": "2jzzvmJR", "selectedActions": [97, 34, 66]}, {"groupId": "TdwnKFIl", "selectedActions": [49, 9, 64]}]}, {"moduleId": "ss1Ij9uc", "selectedGroups": [{"groupId": "QbhiInjK", "selectedActions": [31, 19, 93]}, {"groupId": "bndSWChg", "selectedActions": [59, 37, 65]}, {"groupId": "E7uNi6Hh", "selectedActions": [89, 32, 62]}]}], "namespace": "jQEVHsG6", "oauthAccessTokenExpiration": 51, "oauthAccessTokenExpirationTimeUnit": "JRghqJYI", "oauthRefreshTokenExpiration": 100, "oauthRefreshTokenExpirationTimeUnit": "uFkrBCQJ", "redirectUri": "6RldRhiE", "scopes": ["IFVotDXy", "KQ8yArGN", "uxT9qZjx"], "skipLoginQueue": false, "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'UYHeGKHK' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 47, "resource": "cajqHCO8"}, {"action": 73, "resource": "hHUQbiIG"}, {"action": 7, "resource": "igBtDb90"}]}' \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'Ekb4nlN5' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 46, "resource": "xHVNrOKD"}, {"action": 36, "resource": "t4YTOljS"}, {"action": 64, "resource": "FdKMNeFG"}]}' \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '82' \
    --clientId 'mbptfhvZ' \
    --namespace $AB_NAMESPACE \
    --resource '8ZrLnE0G' \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
samples/cli/sample-apps Iam adminGetConfigValueV3 \
    --configKey 'rT7fk5Ej' \
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
    --body '{"blacklist": ["5sbCBU6b", "3tFurqcE", "p2ZgMC25"]}' \
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
    --body '{"active": true, "roleIds": ["3Es7eaMS", "wVAGe4Yj", "odHRS9d0"]}' \
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
    --limit '3' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 141 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 142 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'No9V3mqP' \
    > test.out 2>&1
eval_tap $? 142 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 143 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '0gJNzGfC' \
    --body '{"ACSURL": "gyjEqDoJ", "AWSCognitoRegion": "c1IHOOho", "AWSCognitoUserPool": "OcxRuomQ", "AllowedClients": ["Pr0Orwdy", "IR1847jA", "ZKYuOb8o"], "AppId": "EJI3KWQl", "AuthorizationEndpoint": "6kvWiAHf", "ClientId": "n9BZuStw", "EmptyStrFieldList": ["nk4XMC51", "iO6wjDYw", "I3T4Tc0Q"], "EnableServerLicenseValidation": true, "Environment": "5Pfr8qXF", "FederationMetadataURL": "a2bHxfOk", "GenericOauthFlow": true, "IncludePUID": false, "IsActive": false, "Issuer": "0agkEjBY", "JWKSEndpoint": "ZrFtWmRY", "KeyID": "Tu8PW69X", "LogoURL": "cYTtPYPE", "NetflixCertificates": {"encryptedPrivateKey": "IGhSJPXB", "encryptedPrivateKeyName": "Xo2Uhp46", "publicCertificate": "GikBzmtJ", "publicCertificateName": "jhORUOuz", "rootCertificate": "4WS1S9o8", "rootCertificateName": "OIcJyqcl"}, "OrganizationId": "sAKYvPPQ", "PlatformName": "oTq8T3Fa", "RedirectUri": "e7Flc9Dp", "RegisteredDomains": [{"affectedClientIDs": ["AM0yM4LW", "aAIQHgDC", "i2qZ4weW"], "domain": "XWO7NPQC", "namespaces": ["L4H9I6yQ", "HorbGJ9Z", "1NeIJ6Nm"], "roleId": "27StJDUV", "ssoCfg": {"googleKey": {"C2fbr3lr": {}, "D8oU6IiQ": {}, "VP0hyvHp": {}}, "groupConfigs": [{"assignNamespaces": ["d6c8nHnO", "r2Bn05I9", "O92gW5HL"], "group": "sHkafO8J", "roleId": "191JiTpV"}, {"assignNamespaces": ["WnBUuVyV", "4iFfCWGJ", "iyPNPlYm"], "group": "Rmtd0mLE", "roleId": "UrWh7mor"}, {"assignNamespaces": ["w9YP0sNy", "M3YjFJsj", "9mKda22n"], "group": "3hsJbUiy", "roleId": "yf7J5ntd"}]}}, {"affectedClientIDs": ["vHJpQ16v", "2XdYuhdw", "apSo2d83"], "domain": "otydSBVr", "namespaces": ["qKD5xXDV", "aNf9M4ZE", "BdsWnctD"], "roleId": "u8J2yvRo", "ssoCfg": {"googleKey": {"Fn15Gh7b": {}, "ZQFqVgOF": {}, "8MTnGIwU": {}}, "groupConfigs": [{"assignNamespaces": ["k8b8KLZ7", "snuB7ZDN", "189LPMaH"], "group": "6cnn5U7q", "roleId": "MCBn3GyO"}, {"assignNamespaces": ["nErMnIVJ", "oysIgsR1", "fPVyjolQ"], "group": "MvbfTAjm", "roleId": "rhp28MjZ"}, {"assignNamespaces": ["clpLEbQ5", "OFINWOMo", "T30jpYtO"], "group": "qeGauCjz", "roleId": "o1Z2RPVT"}]}}, {"affectedClientIDs": ["rvJ3GJn2", "EwkHKbOQ", "Ecq2x9wm"], "domain": "MZpEdzVB", "namespaces": ["JunqeUUD", "H2heeroX", "bJQoe4eC"], "roleId": "c1NaL9yV", "ssoCfg": {"googleKey": {"uprqauXA": {}, "mZ09sTGE": {}, "2lNKgo4u": {}}, "groupConfigs": [{"assignNamespaces": ["Kuu6kCSy", "no76oA4q", "KNvdAWka"], "group": "x1v8i6Vm", "roleId": "e7hhHwFA"}, {"assignNamespaces": ["Po7K9Iy8", "EIdu8zOI", "Me0gzGqM"], "group": "lieHQuio", "roleId": "Df0WXfc8"}, {"assignNamespaces": ["MzpDwLGF", "I1zXorLL", "EDYroiOJ"], "group": "vpyHlbIP", "roleId": "PwYAz2pY"}]}}], "Secret": "ncLYvnjp", "TeamID": "LR3hiP6E", "TokenAuthenticationType": "tipuaMmt", "TokenClaimsMapping": {"MK9vwhYd": "ksMLtISc", "kVmbIqAQ": "Goth9ryn", "Ua2v6v2u": "VTr8Rs7o"}, "TokenEndpoint": "DNIdCw2x", "UserInfoEndpoint": "8hybzzwB", "UserInfoHTTPMethod": "YV6zjc9I", "googleAdminConsoleKey": "ZxmNXJV3", "scopes": ["NKfss28R", "h836t1dM", "2qKudQJ2"]}' \
    > test.out 2>&1
eval_tap $? 143 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 144 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'W9u5kPEz' \
    > test.out 2>&1
eval_tap $? 144 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 145 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Bn7CzMRN' \
    --body '{"ACSURL": "xrPrNaU6", "AWSCognitoRegion": "t5QlxPCT", "AWSCognitoUserPool": "xY6lBkJP", "AllowedClients": ["ugjrjGza", "Lt3a8JwU", "zfdBHPYd"], "AppId": "G0oHp9bm", "AuthorizationEndpoint": "ShCMSJyT", "ClientId": "un05QSPt", "EmptyStrFieldList": ["rVS2VxBx", "4DmhRPbt", "MrXtkeK7"], "EnableServerLicenseValidation": false, "Environment": "YDdfbrs8", "FederationMetadataURL": "f0s7Wy40", "GenericOauthFlow": false, "IncludePUID": false, "IsActive": true, "Issuer": "yGNwJOXO", "JWKSEndpoint": "gkYoqQoa", "KeyID": "20YfpsIS", "LogoURL": "oLOiEfVo", "NetflixCertificates": {"encryptedPrivateKey": "FKFuvKTX", "encryptedPrivateKeyName": "SuLCjT6C", "publicCertificate": "XS5nfiIV", "publicCertificateName": "oDIZ7ubL", "rootCertificate": "SLPbqbj1", "rootCertificateName": "qyUizLOh"}, "OrganizationId": "dQQplcdD", "PlatformName": "nng4jTYE", "RedirectUri": "CrCTjn1v", "RegisteredDomains": [{"affectedClientIDs": ["SanhNatT", "v0WyT41i", "WMI7bDxb"], "domain": "Z9n2ApHR", "namespaces": ["vkfR1tui", "14A4WNrQ", "0NlFU4WZ"], "roleId": "xjr8MDhS", "ssoCfg": {"googleKey": {"rCMKro45": {}, "RVEhsKQW": {}, "SDWuADiH": {}}, "groupConfigs": [{"assignNamespaces": ["oUUes5vH", "XBxuB5ry", "Uxgw4frK"], "group": "sbRA75ia", "roleId": "xCOF4o3S"}, {"assignNamespaces": ["nK4X3H4N", "5ryioMb1", "Z8mGYqcw"], "group": "dTORFA5l", "roleId": "8rXMd0JJ"}, {"assignNamespaces": ["RG0Kf5Kp", "ZHC5s7bk", "qlQtVqbY"], "group": "xJ9rWLna", "roleId": "82nQ2MWP"}]}}, {"affectedClientIDs": ["driPwUTY", "INbBOIb5", "lTl2eXR7"], "domain": "qQoEdH0W", "namespaces": ["1TlLN4An", "FYwHRHH3", "21miclWs"], "roleId": "dRS4SYjK", "ssoCfg": {"googleKey": {"mkftHtnX": {}, "HIlGdx5z": {}, "AIim75gs": {}}, "groupConfigs": [{"assignNamespaces": ["vqTGhxFh", "sQeLhCy4", "R4kobutm"], "group": "NCmIfOXQ", "roleId": "bCXa220U"}, {"assignNamespaces": ["uDyHWbW2", "Bsq1C2Wy", "PRhirmSn"], "group": "VTNOB0Ib", "roleId": "Qilr3qAh"}, {"assignNamespaces": ["OPSTxWQx", "uWq2Poit", "G9s2E44c"], "group": "fgFESA3r", "roleId": "ZiIXd3Gp"}]}}, {"affectedClientIDs": ["IC70UwaM", "zrDw2iAc", "M0UOSEio"], "domain": "NPJEryEn", "namespaces": ["WCD5ORce", "qKlihtkO", "AGYeaBot"], "roleId": "6vh5XfD2", "ssoCfg": {"googleKey": {"FIU55N7U": {}, "spDOv8jx": {}, "dADb2RIm": {}}, "groupConfigs": [{"assignNamespaces": ["q37hl7dl", "WUzZBnrN", "gVQdR6NP"], "group": "vZsEd3f6", "roleId": "z3Q8bNPj"}, {"assignNamespaces": ["XnTnlN5Y", "oOJUtB0Y", "KxiHi0Tj"], "group": "qnALTcMo", "roleId": "rY5SWUwj"}, {"assignNamespaces": ["Ek1TXV1H", "C1Ejf5gl", "j6Yyr7KB"], "group": "Itpi60OO", "roleId": "DXnpnE57"}]}}], "Secret": "l0zBAYgS", "TeamID": "BpgBb6ZE", "TokenAuthenticationType": "a3JWAmwm", "TokenClaimsMapping": {"SitSoG02": "B8aRRm6T", "mhj6YyLF": "DcayoEe8", "PF6BGpPB": "i62PXEz7"}, "TokenEndpoint": "METGqopr", "UserInfoEndpoint": "d62FffeE", "UserInfoHTTPMethod": "tvsU0If0", "googleAdminConsoleKey": "zoLcBcn6", "scopes": ["ebKLS4Dw", "4oW23Hwz", "1YCYhf7S"]}' \
    > test.out 2>&1
eval_tap $? 145 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 146 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'xY1mLsgO' \
    --body '{"affectedClientIDs": ["DVtvCZ4v", "2rl20Paw", "ccMa4TW6"], "assignedNamespaces": ["X0ObnQvE", "ZGGgeg7A", "WkgCIxtu"], "domain": "qUAm7YEi", "roleId": "kMVBFms5", "ssoCfg": {"googleKey": {"FGrIhz5s": {}, "XCAY3q2p": {}, "4wuZXKXt": {}}, "groupConfigs": [{"assignNamespaces": ["vNtRHjCH", "g6ZvVZLm", "KUsnyuZa"], "group": "XSDdn9ye", "roleId": "1xhIaBy1"}, {"assignNamespaces": ["E27bH4vX", "tvKtTUDg", "sDVEEimN"], "group": "4aLPJpHT", "roleId": "HzHyisd1"}, {"assignNamespaces": ["ky1178kn", "FWGsuR12", "QtfyQykS"], "group": "OZd04BYz", "roleId": "2T9esAl8"}]}}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 147 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'tllU6Id5' \
    --body '{"domain": "70Gc1dVh", "ssoGroups": ["xfsKEfto", "XI53MZan", "okR5NOLw"]}' \
    > test.out 2>&1
eval_tap $? 147 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 148 PartialUpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam partialUpdateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId '4Itwt22p' \
    --body '{"affectedClientIDs": ["ttGO8kbn", "NYwNgRDw", "gbaYtNo8"], "assignedNamespaces": ["UqawK3j4", "nbKU930E", "O2lSZKol"], "domain": "iT6Ohuer", "roleId": "vgQKd5dH", "ssoCfg": {"googleKey": {"KmFEWrcN": {}, "HjvUyLc5": {}, "nxi6E5PK": {}}, "groupConfigs": [{"assignNamespaces": ["FWCzEYyo", "HkKVoFpf", "YKU2RcZw"], "group": "Dq50ZMaZ", "roleId": "UChUZFhl"}, {"assignNamespaces": ["2xLy9DVW", "K3m95oDA", "CFfYl3U5"], "group": "zZClsegh", "roleId": "XQA6dx2P"}, {"assignNamespaces": ["rehWwDXh", "wHruh5AT", "PRlnLWOT"], "group": "9Ah4HEr5", "roleId": "zrcCuIVn"}]}}' \
    > test.out 2>&1
eval_tap $? 148 'PartialUpdateThirdPartyLoginPlatformDomainV3' test.out

#- 149 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'c4BUpqTQ' \
    > test.out 2>&1
eval_tap $? 149 'RetrieveSSOLoginPlatformCredential' test.out

#- 150 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'j4YVRJom' \
    --body '{"acsUrl": "v5FiY3OI", "apiKey": "S9kliU7I", "appId": "drZVmoqk", "federationMetadataUrl": "XvIPgImg", "isActive": true, "redirectUri": "s78dDLhV", "secret": "zxcgvXND", "ssoUrl": "7eqPrQ6i"}' \
    > test.out 2>&1
eval_tap $? 150 'AddSSOLoginPlatformCredential' test.out

#- 151 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ZhXtnjU1' \
    > test.out 2>&1
eval_tap $? 151 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 152 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'jajW3p9r' \
    --body '{"acsUrl": "452du0WY", "apiKey": "jj1dbnOp", "appId": "EFNL1tkc", "federationMetadataUrl": "duf8HdQ9", "isActive": false, "redirectUri": "7GruQPX0", "secret": "0fkPGfB5", "ssoUrl": "0Qv4HyFJ"}' \
    > test.out 2>&1
eval_tap $? 152 'UpdateSSOPlatformCredential' test.out

#- 153 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Lb3QI7su' \
    --rawPID 'true' \
    --rawPUID 'false' \
    --body '{"platformUserIds": ["xrguyFtX", "gy4goTQf", "mewUp61L"]}' \
    > test.out 2>&1
eval_tap $? 153 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 154 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'JZ9Rku2D' \
    --platformUserId 'eadPQaMi' \
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
    --field 'display_name' \
    --body '{"config": {"minimumAllowedInterval": 79}, "type": "fjlZGa4d"}' \
    > test.out 2>&1
eval_tap $? 156 'AdminUpdateProfileUpdateStrategyV3' test.out

#- 157 AdminGetRoleOverrideConfigV3
samples/cli/sample-apps Iam adminGetRoleOverrideConfigV3 \
    --namespace $AB_NAMESPACE \
    --identity 'VIEW_ONLY' \
    > test.out 2>&1
eval_tap $? 157 'AdminGetRoleOverrideConfigV3' test.out

#- 158 AdminUpdateRoleOverrideConfigV3
samples/cli/sample-apps Iam adminUpdateRoleOverrideConfigV3 \
    --namespace $AB_NAMESPACE \
    --identity 'USER' \
    --body '{"additions": [{"actions": [83, 49, 91], "resource": "VPSn98Cb"}, {"actions": [88, 11, 75], "resource": "rqKVaf4w"}, {"actions": [36, 8, 3], "resource": "DNTYbJ5n"}], "exclusions": [{"actions": [99, 28, 83], "resource": "ilpllIsV"}, {"actions": [29, 80, 42], "resource": "EycYW2Ca"}, {"actions": [89, 32, 47], "resource": "rqEuNFwy"}], "overrides": [{"actions": [19, 49, 90], "resource": "Q7kppYKb"}, {"actions": [5, 67, 2], "resource": "0pMoVE3L"}, {"actions": [23, 43, 77], "resource": "lwfzIIXx"}], "replacements": [{"replacement": {"actions": [53, 55, 60], "resource": "bUyluWZe"}, "target": "CNQ7c90h"}, {"replacement": {"actions": [79, 69, 7], "resource": "f0bL8W8g"}, "target": "0KhjIAc5"}, {"replacement": {"actions": [53, 57, 49], "resource": "q4vgyvqB"}, "target": "Lzd3qEEb"}]}' \
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
    --identity 'GAME_ADMIN' \
    --body '{"active": false}' \
    > test.out 2>&1
eval_tap $? 160 'AdminChangeRoleOverrideConfigStatusV3' test.out

#- 161 AdminGetRoleNamespacePermissionV3
samples/cli/sample-apps Iam adminGetRoleNamespacePermissionV3 \
    --namespace $AB_NAMESPACE \
    --roleId '90GwI1WP' \
    > test.out 2>&1
eval_tap $? 161 'AdminGetRoleNamespacePermissionV3' test.out

#- 162 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'ououDfBN' \
    --after '75' \
    --before '78' \
    --limit '66' \
    > test.out 2>&1
eval_tap $? 162 'GetAdminUsersByRoleIdV3' test.out

#- 163 AdminQueryTagV3
samples/cli/sample-apps Iam adminQueryTagV3 \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '55' \
    --tagName 'oXEyd73p' \
    > test.out 2>&1
eval_tap $? 163 'AdminQueryTagV3' test.out

#- 164 AdminCreateTagV3
samples/cli/sample-apps Iam adminCreateTagV3 \
    --namespace $AB_NAMESPACE \
    --body '{"tagName": "URwVGemS"}' \
    > test.out 2>&1
eval_tap $? 164 'AdminCreateTagV3' test.out

#- 165 AdminUpdateTagV3
samples/cli/sample-apps Iam adminUpdateTagV3 \
    --namespace $AB_NAMESPACE \
    --tagId 's9K350qm' \
    --body '{"tagName": "l0FoXT3q"}' \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateTagV3' test.out

#- 166 AdminDeleteTagV3
samples/cli/sample-apps Iam adminDeleteTagV3 \
    --namespace $AB_NAMESPACE \
    --tagId 'DFfM8wrj' \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteTagV3' test.out

#- 167 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'ezRcy1Cv' \
    > test.out 2>&1
eval_tap $? 167 'AdminGetUserByEmailAddressV3' test.out

#- 168 AdminBulkUpdateUsersV3
samples/cli/sample-apps Iam adminBulkUpdateUsersV3 \
    --namespace $AB_NAMESPACE \
    --body '{"updateRequest": {"skipLoginQueue": true}, "userIds": ["eZoSme20", "8Fmp77zq", "CEhhH0BG"]}' \
    > test.out 2>&1
eval_tap $? 168 'AdminBulkUpdateUsersV3' test.out

#- 169 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType '03LfqtUq' \
    --body '{"bulkUserId": ["hHMmHeKy", "0asEMkOP", "lX9RGgdG"]}' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetBulkUserBanV3' test.out

#- 170 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["e13Z2K9F", "5ZO1Drhm", "LmxzOg2e"]}' \
    > test.out 2>&1
eval_tap $? 170 'AdminListUserIDByUserIDsV3' test.out

#- 171 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["Rub6v5XW", "E7vu9FK0", "SEDvPFS3"]}' \
    > test.out 2>&1
eval_tap $? 171 'AdminBulkGetUsersPlatform' test.out

#- 172 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["mup3s9lA", "mzWTYfBU", "xnze5h69"], "isAdmin": true, "languageTag": "hFC2uOSB", "namespace": "ybo02P7v", "roles": ["Mv7CGo2K", "lRCypsNC", "3roEBgAB"]}' \
    > test.out 2>&1
eval_tap $? 172 'AdminInviteUserV3' test.out

#- 173 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '25' \
    --platformUserId 'csoVM6hq' \
    --platformId 'XgZ3JNNf' \
    > test.out 2>&1
eval_tap $? 173 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 174 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 174 'AdminListUsersV3' test.out

#- 175 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'xZWqCx4p' \
    --endDate 'OPeh1QlG' \
    --includeTotal 'true' \
    --limit '18' \
    --offset '16' \
    --platformBy 'eJPzaTGs' \
    --platformId 'A7tmXAIu' \
    --query '1sFv9ucv' \
    --roleIds '4OtXI3ix' \
    --skipLoginQueue 'true' \
    --startDate 'aGTN3Yrm' \
    --testAccount 'false' \
    > test.out 2>&1
eval_tap $? 175 'AdminSearchUserV3' test.out

#- 176 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["pD3W7SQ3", "r9CNskbd", "xN1Mqksq"]}' \
    > test.out 2>&1
eval_tap $? 176 'AdminGetBulkUserByEmailAddressV3' test.out

#- 177 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'sqK6BYep' \
    > test.out 2>&1
eval_tap $? 177 'AdminGetUserByUserIdV3' test.out

#- 178 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'iZgWIWt9' \
    --body '{"avatarUrl": "k1MomuK9", "country": "KkpX7jWA", "dateOfBirth": "qrxDqxiz", "displayName": "g1lMfTAp", "languageTag": "bAHpBZwj", "skipLoginQueue": false, "tags": ["UddDoXmY", "Cj1zpWXq", "M4Z6SPqM"], "uniqueDisplayName": "UmkrHysH", "userName": "aKnadSjK"}' \
    > test.out 2>&1
eval_tap $? 178 'AdminUpdateUserV3' test.out

#- 179 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'eprcwfKC' \
    --activeOnly 'false' \
    --after 'zGSHbCWO' \
    --before 'tXL8jyMM' \
    --limit '27' \
    > test.out 2>&1
eval_tap $? 179 'AdminGetUserBanV3' test.out

#- 180 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '3eh5sE4N' \
    --body '{"ban": "bMVPVjLh", "comment": "GgNJXnXn", "endDate": "tAckcMBS", "reason": "K4RmfcLP", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 180 'AdminBanUserV3' test.out

#- 181 AdminGetUserBanSummaryV3
samples/cli/sample-apps Iam adminGetUserBanSummaryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'bH5W4pHv' \
    > test.out 2>&1
eval_tap $? 181 'AdminGetUserBanSummaryV3' test.out

#- 182 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId '9DeO2Fjd' \
    --namespace $AB_NAMESPACE \
    --userId '0PPTZ0Pg' \
    --body '{"enabled": true, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateUserBanV3' test.out

#- 183 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wor1YVvm' \
    --body '{"context": "H2CyuFV4", "emailAddress": "ng6fRSaX", "languageTag": "ehJ1nZby", "upgradeToken": "m3WsG6or"}' \
    > test.out 2>&1
eval_tap $? 183 'AdminSendVerificationCodeV3' test.out

#- 184 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'l6KAbIEz' \
    --body '{"Code": "93P78XQd", "ContactType": "vE2A6ASE", "LanguageTag": "5tMT5YfZ", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 184 'AdminVerifyAccountV3' test.out

#- 185 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'EgRtiqbu' \
    > test.out 2>&1
eval_tap $? 185 'GetUserVerificationCode' test.out

#- 186 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'gnV8ipaf' \
    > test.out 2>&1
eval_tap $? 186 'AdminGetUserDeletionStatusV3' test.out

#- 187 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '0bmo9B6j' \
    --body '{"deletionDate": 3, "enabled": true}' \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateUserDeletionStatusV3' test.out

#- 188 AdminListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam adminListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'KOILPtTT' \
    > test.out 2>&1
eval_tap $? 188 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 189 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'RLf783di' \
    --body '{"code": "HNirIHe9", "country": "LQSgf3Up", "dateOfBirth": "R9DXIRc6", "displayName": "L5pRUSVu", "emailAddress": "kmPKkkOJ", "password": "CiHxHesm", "uniqueDisplayName": "6IXuX7jL", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 189 'AdminUpgradeHeadlessAccountV3' test.out

#- 190 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId '62lWyhGE' \
    > test.out 2>&1
eval_tap $? 190 'AdminDeleteUserInformationV3' test.out

#- 191 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xT5DGniS' \
    --after '0.9425441641201117' \
    --before '0.49272705920689175' \
    --limit '73' \
    > test.out 2>&1
eval_tap $? 191 'AdminGetUserLoginHistoriesV3' test.out

#- 192 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'NzfViTVb' \
    --body '{"languageTag": "Xmo600Q1", "mfaToken": "lYqtMWmM", "newPassword": "T5n3SqEH", "oldPassword": "X92SdtMi"}' \
    > test.out 2>&1
eval_tap $? 192 'AdminResetPasswordV3' test.out

#- 193 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Z32wrwyI' \
    --body '{"Permissions": [{"Action": 99, "Resource": "1BdUCzBU", "SchedAction": 91, "SchedCron": "8YBGoUh4", "SchedRange": ["IRCOC5yS", "ozbeq7iR", "pJPYbB0q"]}, {"Action": 12, "Resource": "nATtyId7", "SchedAction": 97, "SchedCron": "TJPoksW6", "SchedRange": ["yYKXFWHI", "s2HJj7gc", "xStlGeM7"]}, {"Action": 9, "Resource": "mFJGveXa", "SchedAction": 47, "SchedCron": "EVY5EcGJ", "SchedRange": ["GTRXNtCK", "jtEYhC82", "v0CHKopA"]}]}' \
    > test.out 2>&1
eval_tap $? 193 'AdminUpdateUserPermissionV3' test.out

#- 194 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId '8mG7OGf0' \
    --body '{"Permissions": [{"Action": 52, "Resource": "gkgNJXnj", "SchedAction": 34, "SchedCron": "3PF9vKGm", "SchedRange": ["0hFEQOv4", "CNQLcqDZ", "p9oO1hmm"]}, {"Action": 16, "Resource": "hzJomGAE", "SchedAction": 43, "SchedCron": "zZIausKe", "SchedRange": ["tcSq35jI", "UsOQ1yXJ", "K6DU3WLR"]}, {"Action": 74, "Resource": "aXFAXOWL", "SchedAction": 70, "SchedCron": "MiMBhKFd", "SchedRange": ["5kc6g5q0", "DZ1cO79O", "RcSsdl2w"]}]}' \
    > test.out 2>&1
eval_tap $? 194 'AdminAddUserPermissionsV3' test.out

#- 195 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZpQk6pQg' \
    --body '[{"Action": 4, "Resource": "m0Fdls8R"}, {"Action": 72, "Resource": "E1ZwxEtb"}, {"Action": 63, "Resource": "eywUxEAQ"}]' \
    > test.out 2>&1
eval_tap $? 195 'AdminDeleteUserPermissionBulkV3' test.out

#- 196 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '17' \
    --namespace $AB_NAMESPACE \
    --resource 'CQMV8AQv' \
    --userId 'BgANQgf6' \
    > test.out 2>&1
eval_tap $? 196 'AdminDeleteUserPermissionV3' test.out

#- 197 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'z2cxQVIW' \
    --after 'c8xvG4kc' \
    --before '6KcVnjhA' \
    --limit '89' \
    --platformId 'HwvmLtWw' \
    --targetNamespace 'oCSyPrL2' \
    > test.out 2>&1
eval_tap $? 197 'AdminGetUserPlatformAccountsV3' test.out

#- 198 AdminListAllDistinctPlatformAccountsV3
samples/cli/sample-apps Iam adminListAllDistinctPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ubgFl9xG' \
    --status 'YHGMSTlv' \
    > test.out 2>&1
eval_tap $? 198 'AdminListAllDistinctPlatformAccountsV3' test.out

#- 199 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId '2TClUI3V' \
    > test.out 2>&1
eval_tap $? 199 'AdminGetListJusticePlatformAccounts' test.out

#- 200 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'aF7EHORF' \
    --userId '8w9Z4DP8' \
    > test.out 2>&1
eval_tap $? 200 'AdminGetUserMapping' test.out

#- 201 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'UcMONAWr' \
    --userId 'u296KvFR' \
    > test.out 2>&1
eval_tap $? 201 'AdminCreateJusticeUser' test.out

#- 202 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'wAnQuA56' \
    --skipConflict 'false' \
    --body '{"platformId": "ouXmTk3Y", "platformUserId": "jL6p1BA3"}' \
    > test.out 2>&1
eval_tap $? 202 'AdminLinkPlatformAccount' test.out

#- 203 AdminGetUserLinkHistoriesV3
samples/cli/sample-apps Iam adminGetUserLinkHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'VaE5mkEJ' \
    --platformId 'qZV4p6Mw' \
    > test.out 2>&1
eval_tap $? 203 'AdminGetUserLinkHistoriesV3' test.out

#- 204 AdminPlatformUnlinkV3
eval_tap 0 204 'AdminPlatformUnlinkV3 # SKIP deprecated' test.out

#- 205 AdminPlatformUnlinkAllV3
samples/cli/sample-apps Iam adminPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'h6E95nVo' \
    --userId 'W9sZjUfU' \
    > test.out 2>&1
eval_tap $? 205 'AdminPlatformUnlinkAllV3' test.out

#- 206 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'tdQNqZMk' \
    --userId '18KK88Z7' \
    --ticket 'ooBzpocx' \
    > test.out 2>&1
eval_tap $? 206 'AdminPlatformLinkV3' test.out

#- 207 AdminDeleteUserLinkingHistoryByPlatformIDV3
eval_tap 0 207 'AdminDeleteUserLinkingHistoryByPlatformIDV3 # SKIP deprecated' test.out

#- 208 AdminDeleteUserLinkingRestrictionByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingRestrictionByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'DVSM551j' \
    --userId 'wJXzL1sP' \
    > test.out 2>&1
eval_tap $? 208 'AdminDeleteUserLinkingRestrictionByPlatformIDV3' test.out

#- 209 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId '769g8R4l' \
    --userId 'Gos2REtk' \
    --platformToken 'tH8WHdPI' \
    > test.out 2>&1
eval_tap $? 209 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 210 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'e1bqDQ7n' \
    --userId 'oRUfQKOb' \
    --crossNamespace 'false' \
    > test.out 2>&1
eval_tap $? 210 'AdminGetUserSinglePlatformAccount' test.out

#- 211 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'toFpxqKr' \
    --body '["gE3Q21wN", "Thdh13gz", "X3sXRHrk"]' \
    > test.out 2>&1
eval_tap $? 211 'AdminDeleteUserRolesV3' test.out

#- 212 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jOT6q21k' \
    --body '[{"namespace": "aMljTxQs", "roleId": "zKsQ5nTP"}, {"namespace": "BbFRWsWP", "roleId": "lRpyZTMm"}, {"namespace": "Ol95Sim7", "roleId": "daJkSVw5"}]' \
    > test.out 2>&1
eval_tap $? 212 'AdminSaveUserRoleV3' test.out

#- 213 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'JDbgWAJc' \
    --userId 'JdV5CyPv' \
    > test.out 2>&1
eval_tap $? 213 'AdminAddUserRoleV3' test.out

#- 214 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'TOFXHWTv' \
    --userId 'ptROUfhz' \
    > test.out 2>&1
eval_tap $? 214 'AdminDeleteUserRoleV3' test.out

#- 215 AdminGetUserStateByUserIdV3
samples/cli/sample-apps Iam adminGetUserStateByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Se8jfnEn' \
    > test.out 2>&1
eval_tap $? 215 'AdminGetUserStateByUserIdV3' test.out

#- 216 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'OXU33xoO' \
    --body '{"enabled": false, "reason": "YmeH9Jm4"}' \
    > test.out 2>&1
eval_tap $? 216 'AdminUpdateUserStatusV3' test.out

#- 217 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'eeffpl4g' \
    --body '{"emailAddress": "TQkTCo2P", "password": "sk72Tddd"}' \
    > test.out 2>&1
eval_tap $? 217 'AdminTrustlyUpdateUserIdentity' test.out

#- 218 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Y1PcbyJ4' \
    > test.out 2>&1
eval_tap $? 218 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 219 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId '94ZA1Gy5' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "oaPZ5MTa"}' \
    > test.out 2>&1
eval_tap $? 219 'AdminUpdateClientSecretV3' test.out

#- 220 AdminCheckThirdPartyLoginPlatformAvailabilityV3
samples/cli/sample-apps Iam adminCheckThirdPartyLoginPlatformAvailabilityV3 \
    --platformId 'nFagB0Xz' \
    > test.out 2>&1
eval_tap $? 220 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 221 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'VUljzV1o' \
    --before '10tZn18K' \
    --isWildcard 'false' \
    --limit '96' \
    > test.out 2>&1
eval_tap $? 221 'AdminGetRolesV3' test.out

#- 222 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "managers": [{"displayName": "UwUvxKge", "namespace": "AT9OHUvT", "userId": "cu7eSH9d"}, {"displayName": "pTtZFiBo", "namespace": "F6iVrJky", "userId": "DJf7Gzwc"}, {"displayName": "mw6OzwUB", "namespace": "oFBp1qM9", "userId": "13iNtixV"}], "members": [{"displayName": "DGiNGVIY", "namespace": "5wsbW6UE", "userId": "NopRigoh"}, {"displayName": "HjdHpdmn", "namespace": "oXD15kXy", "userId": "awMZbZPm"}, {"displayName": "Bm6pEsQY", "namespace": "TzCcGxKT", "userId": "eHJLoHMm"}], "permissions": [{"action": 45, "resource": "DNkvHdsL", "schedAction": 30, "schedCron": "E5SgaKqf", "schedRange": ["GrTzc5iy", "iH7LNjm8", "2jfOuI5v"]}, {"action": 77, "resource": "mk9OV3ne", "schedAction": 2, "schedCron": "fjAYMwky", "schedRange": ["dCI1UwIf", "nrxsLVmx", "zoaPMtc6"]}, {"action": 29, "resource": "w41HdKCT", "schedAction": 51, "schedCron": "HAkzDBPT", "schedRange": ["jHpKW0pb", "PwAKMB14", "yvqodqJ7"]}], "roleName": "9CVDPAIB"}' \
    > test.out 2>&1
eval_tap $? 222 'AdminCreateRoleV3' test.out

#- 223 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId '4niTLyya' \
    > test.out 2>&1
eval_tap $? 223 'AdminGetRoleV3' test.out

#- 224 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'pnIQPXL8' \
    > test.out 2>&1
eval_tap $? 224 'AdminDeleteRoleV3' test.out

#- 225 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId '3ft06Ww3' \
    --body '{"deletable": false, "isWildcard": true, "roleName": "n8Rkrx9l"}' \
    > test.out 2>&1
eval_tap $? 225 'AdminUpdateRoleV3' test.out

#- 226 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'nl9Hi4xA' \
    > test.out 2>&1
eval_tap $? 226 'AdminGetRoleAdminStatusV3' test.out

#- 227 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId '1lFfNXKF' \
    > test.out 2>&1
eval_tap $? 227 'AdminUpdateAdminRoleStatusV3' test.out

#- 228 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'ZkjpQyCq' \
    > test.out 2>&1
eval_tap $? 228 'AdminRemoveRoleAdminV3' test.out

#- 229 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId '7B5kl6B7' \
    --after 'se3kWtuO' \
    --before 'HiyXVlX0' \
    --limit '53' \
    > test.out 2>&1
eval_tap $? 229 'AdminGetRoleManagersV3' test.out

#- 230 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'PiWn13rM' \
    --body '{"managers": [{"displayName": "xQ7wZlqL", "namespace": "2SfgTy6B", "userId": "RtLafnRk"}, {"displayName": "ZgeEvZdY", "namespace": "NyLUoctk", "userId": "5vHaDQ6W"}, {"displayName": "TtLOI8Ig", "namespace": "p3UyMLMX", "userId": "KeN5G1pb"}]}' \
    > test.out 2>&1
eval_tap $? 230 'AdminAddRoleManagersV3' test.out

#- 231 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'ouh7gnFA' \
    --body '{"managers": [{"displayName": "Sc1Olm1n", "namespace": "Qap6xrP0", "userId": "HyJRRw2v"}, {"displayName": "J5sHpjEE", "namespace": "a3lStOiJ", "userId": "a7zH8n0v"}, {"displayName": "IfEFle3x", "namespace": "WtmOZP1Z", "userId": "JalaSA76"}]}' \
    > test.out 2>&1
eval_tap $? 231 'AdminRemoveRoleManagersV3' test.out

#- 232 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'hnKuXYcD' \
    --after 'ub2BWKLD' \
    --before 'nW6gE193' \
    --limit '29' \
    > test.out 2>&1
eval_tap $? 232 'AdminGetRoleMembersV3' test.out

#- 233 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'C5aryN5M' \
    --body '{"members": [{"displayName": "Hnw4txuq", "namespace": "k38srQaF", "userId": "CT2ywMvU"}, {"displayName": "4nnhhpdR", "namespace": "FkVclEWd", "userId": "9hGd5KdZ"}, {"displayName": "afDfVIXm", "namespace": "SoWk95ny", "userId": "RAlXPO6t"}]}' \
    > test.out 2>&1
eval_tap $? 233 'AdminAddRoleMembersV3' test.out

#- 234 AdminRemoveRoleMembersV3
eval_tap 0 234 'AdminRemoveRoleMembersV3 # SKIP deprecated' test.out

#- 235 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'AsCeH468' \
    --body '{"permissions": [{"action": 55, "resource": "koJ9RIQt", "schedAction": 17, "schedCron": "r1r9GQq7", "schedRange": ["ElhSUBZ3", "z6DN6mde", "H6NIvBoE"]}, {"action": 47, "resource": "YogErZFG", "schedAction": 33, "schedCron": "yIvkCIWr", "schedRange": ["z1QgKxZj", "isSAtLCq", "CSxAOzxg"]}, {"action": 73, "resource": "hEcX4USq", "schedAction": 78, "schedCron": "muygzZKQ", "schedRange": ["7nJHSRlc", "yyJSCb4A", "l1vbDbkn"]}]}' \
    > test.out 2>&1
eval_tap $? 235 'AdminUpdateRolePermissionsV3' test.out

#- 236 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'F4rIpJvZ' \
    --body '{"permissions": [{"action": 97, "resource": "fLYsmrcf", "schedAction": 86, "schedCron": "1pnOnI0k", "schedRange": ["KawNGyq1", "DGIbJHea", "Z3NEPi1S"]}, {"action": 22, "resource": "vQWX7NEh", "schedAction": 5, "schedCron": "EnRAFOWT", "schedRange": ["hkzxf8On", "6oQzNXEf", "5nspZGmM"]}, {"action": 57, "resource": "UZDVcjDf", "schedAction": 17, "schedCron": "gSKkNpFl", "schedRange": ["bQPhhTdD", "J2XH6a5w", "9s3A6XD2"]}]}' \
    > test.out 2>&1
eval_tap $? 236 'AdminAddRolePermissionsV3' test.out

#- 237 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'wDIPcQOW' \
    --body '["whHL81gJ", "IT8LjrL2", "ZNqm0fAZ"]' \
    > test.out 2>&1
eval_tap $? 237 'AdminDeleteRolePermissionsV3' test.out

#- 238 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '55' \
    --resource 'HtT8UNDA' \
    --roleId 'Srtkn7mG' \
    > test.out 2>&1
eval_tap $? 238 'AdminDeleteRolePermissionV3' test.out

#- 239 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 239 'AdminGetMyUserV3' test.out

#- 240 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId '2PQINVB4' \
    --extendExp 'true' \
    --redirectUri 'ytr1qvQO' \
    --password 'ZgmeKJ8H' \
    --requestId 'U7TBbNGA' \
    --userName 'xktXpxS0' \
    > test.out 2>&1
eval_tap $? 240 'UserAuthenticationV3' test.out

#- 241 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'true' \
    --clientId '45iHtyt5' \
    --linkingToken 'jnUCp2UA' \
    --password '8ytkXm8Y' \
    --username 'WRtdW9Or' \
    > test.out 2>&1
eval_tap $? 241 'AuthenticationWithPlatformLinkV3' test.out

#- 242 AuthenticateAndLinkForwardV3
samples/cli/sample-apps Iam authenticateAndLinkForwardV3 \
    --extendExp 'false' \
    --clientId 'o1EXl7V7' \
    --linkingToken 'y4tiCLpO' \
    --password 'RLtLkvzW' \
    --username 'ezp3ze0r' \
    > test.out 2>&1
eval_tap $? 242 'AuthenticateAndLinkForwardV3' test.out

#- 243 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData '0lXNIrBn' \
    --extendExp 'true' \
    --linkingToken 'TzDNvr8i' \
    > test.out 2>&1
eval_tap $? 243 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 244 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --redirectUri 'GcjBaYEc' \
    --state 'IPScDAP7' \
    --platformId 'DQKlOtUI' \
    > test.out 2>&1
eval_tap $? 244 'RequestOneTimeLinkingCodeV3' test.out

#- 245 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 's9EJfmOO' \
    > test.out 2>&1
eval_tap $? 245 'ValidateOneTimeLinkingCodeV3' test.out

#- 246 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData '51l9upWT' \
    --isTransient 'false' \
    --clientId '0QLYId4c' \
    --oneTimeLinkCode 'rdcLTghK' \
    > test.out 2>&1
eval_tap $? 246 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 247 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 247 'GetCountryLocationV3' test.out

#- 248 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 248 'Logout' test.out

#- 249 RequestTokenExchangeCodeV3
samples/cli/sample-apps Iam requestTokenExchangeCodeV3 \
    --namespace $AB_NAMESPACE \
    --codeChallenge 'ELzQ9PJa' \
    --codeChallengeMethod 'plain' \
    --clientId 'xaZDR6D2' \
    > test.out 2>&1
eval_tap $? 249 'RequestTokenExchangeCodeV3' test.out

#- 250 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'dsxnspCQ' \
    --userId 'LAN7R8fE' \
    --platformUserId 'uii1LFuA' \
    > test.out 2>&1
eval_tap $? 250 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 251 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'q0D32Yv3' \
    --includeGameNamespace 'true' \
    > test.out 2>&1
eval_tap $? 251 'RevokeUserV3' test.out

#- 252 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --blockedPlatformId 'TbUOz1lV' \
    --codeChallenge '5Ojq2SZK' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'false' \
    --loginWebBased 'false' \
    --nonce 'YfNTT1kx' \
    --oneTimeLinkCode 'dD7Wbcj9' \
    --redirectUri 'gcydI5qR' \
    --scope 'j30k8rcj' \
    --state 'mhnC8K8L' \
    --targetAuthPage 'Q9rFzQYL' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId 'qzSScy56' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 252 'AuthorizeV3' test.out

#- 253 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'aotttwQ1' \
    > test.out 2>&1
eval_tap $? 253 'TokenIntrospectionV3' test.out

#- 254 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 254 'GetJWKSV3' test.out

#- 255 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'hy1H7Z0C' \
    --factor 'f5wTvbi3' \
    --mfaToken 'jBnELWJc' \
    > test.out 2>&1
eval_tap $? 255 'SendMFAAuthenticationCode' test.out

#- 256 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'ztTNeia4' \
    --mfaToken 'vbCMTebn' \
    > test.out 2>&1
eval_tap $? 256 'Change2faMethod' test.out

#- 257 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'Kbiqtnc9' \
    --factor 'vesEJXGJ' \
    --mfaToken 'ZQffoLEu' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 257 'Verify2faCode' test.out

#- 258 Verify2faCodeForward
samples/cli/sample-apps Iam verify2faCodeForward \
    --defaultFactor 'HLvt9QIs' \
    --factors '5e2c24wh' \
    --rememberDevice 'false' \
    --clientId 'a2iZ6hLJ' \
    --code 'X9ujLNGB' \
    --factor 'AvWG4MMC' \
    --mfaToken 'iWDNcQOj' \
    > test.out 2>&1
eval_tap $? 258 'Verify2faCodeForward' test.out

#- 259 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId '1JEXim2d' \
    --userId '20RhXMUy' \
    > test.out 2>&1
eval_tap $? 259 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 260 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'pLOKxT5c' \
    --clientId 'vCE2ebKA' \
    --redirectUri 'OZtEC1Es' \
    --requestId 'rSrOd2Ew' \
    > test.out 2>&1
eval_tap $? 260 'AuthCodeRequestV3' test.out

#- 261 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId '51ddd37k' \
    --additionalData 'rnQZ40fP' \
    --clientId 'HuT3tCMo' \
    --createHeadless 'true' \
    --deviceId 'BIVdigry' \
    --macAddress 'FfPf60sJ' \
    --platformToken 'Zf1Up5FP' \
    --serviceLabel '0.8993501552816905' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 261 'PlatformTokenGrantV3' test.out

#- 262 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 262 'GetRevocationListV3' test.out

#- 263 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'YuZBeooP' \
    > test.out 2>&1
eval_tap $? 263 'TokenRevocationV3' test.out

#- 264 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform '74aSOYs5' \
    --simultaneousTicket 'iSxrbm3t' \
    --nativePlatform 'epicgames' \
    --nativePlatformTicket 'MGJpS7pS' \
    > test.out 2>&1
eval_tap $? 264 'SimultaneousLoginV3' test.out

#- 265 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'Sv0vgtUP' \
    --clientId 'vABkvnmn' \
    --clientSecret 'W4H5twlX' \
    --code 'GbcAswxN' \
    --codeVerifier 'vdIVRdRy' \
    --extendNamespace 'tGLgLmjy' \
    --extendExp 'false' \
    --password '03oRClWq' \
    --redirectUri 'DEYjtDYn' \
    --refreshToken 'dJW0XOkj' \
    --scope 'f98KWD3a' \
    --username 'aPS5ZGgX' \
    --grantType 'client_credentials' \
    > test.out 2>&1
eval_tap $? 265 'TokenGrantV3' test.out

#- 266 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'TUjHwISD' \
    > test.out 2>&1
eval_tap $? 266 'VerifyTokenV3' test.out

#- 267 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'OIqF3dSH' \
    --code '0pWkTZ9p' \
    --error 'V9QVhNuv' \
    --openidAssocHandle 'C1m7iXlA' \
    --openidClaimedId 'i3cGEpYf' \
    --openidIdentity '2fGI8cW7' \
    --openidMode '0t8eMtCf' \
    --openidNs 'shlyrsA8' \
    --openidOpEndpoint '1fy1Px7J' \
    --openidResponseNonce 'XCYLAfAJ' \
    --openidReturnTo '46NWWlTP' \
    --openidSig 'kOc7u3mG' \
    --openidSigned 'y8FMWq7Q' \
    --state '38IMkLtP' \
    > test.out 2>&1
eval_tap $? 267 'PlatformAuthenticationV3' test.out

#- 268 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'QbDepgK9' \
    --platformToken 'UgAf18ou' \
    > test.out 2>&1
eval_tap $? 268 'PlatformTokenRefreshV3' test.out

#- 269 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'QzzdcVz6' \
    > test.out 2>&1
eval_tap $? 269 'PublicGetInputValidations' test.out

#- 270 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'RthheWfU' \
    > test.out 2>&1
eval_tap $? 270 'PublicGetInputValidationByField' test.out

#- 271 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'bDtwju1Q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 271 'PublicGetCountryAgeRestrictionV3' test.out

#- 272 PublicGetConfigValueV3
samples/cli/sample-apps Iam publicGetConfigValueV3 \
    --configKey 'Qb9pNvh7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 272 'PublicGetConfigValueV3' test.out

#- 273 PublicGetCountryListV3
samples/cli/sample-apps Iam publicGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 273 'PublicGetCountryListV3' test.out

#- 274 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 274 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 275 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'ttv9WuHF' \
    > test.out 2>&1
eval_tap $? 275 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 276 PublicListUserIDByPlatformUserIDsV3
eval_tap 0 276 'PublicListUserIDByPlatformUserIDsV3 # SKIP deprecated' test.out

#- 277 PublicGetUserByPlatformUserIDV3
eval_tap 0 277 'PublicGetUserByPlatformUserIDV3 # SKIP deprecated' test.out

#- 278 PublicGetProfileUpdateStrategyV3
samples/cli/sample-apps Iam publicGetProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'display_name' \
    > test.out 2>&1
eval_tap $? 278 'PublicGetProfileUpdateStrategyV3' test.out

#- 279 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'UeMOY25e' \
    > test.out 2>&1
eval_tap $? 279 'PublicGetAsyncStatus' test.out

#- 280 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'IHJZIeFN' \
    --limit '68' \
    --offset '68' \
    --platformBy 'yzl9wT2R' \
    --platformId '313uVwXC' \
    --query 'Xb5ZMHA9' \
    > test.out 2>&1
eval_tap $? 280 'PublicSearchUserV3' test.out

#- 281 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "tZU4bkRf", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "PDVYHrAE", "policyId": "s2bvp6NW", "policyVersionId": "e4zjLlng"}, {"isAccepted": true, "localizedPolicyVersionId": "kTQUKDi5", "policyId": "ZQj27p2B", "policyVersionId": "uSXmUQqQ"}, {"isAccepted": false, "localizedPolicyVersionId": "OXisjWsd", "policyId": "CdSlLsqw", "policyVersionId": "9IGNi1F8"}], "authType": "RHsiquNy", "code": "MtVc388t", "country": "C974VqSM", "dateOfBirth": "D7RXxmK8", "displayName": "nih4deqz", "emailAddress": "floAeAwa", "password": "WqL3vcSg", "reachMinimumAge": true, "uniqueDisplayName": "TTU4JdMP"}' \
    > test.out 2>&1
eval_tap $? 281 'PublicCreateUserV3' test.out

#- 282 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'xapkI6Wq' \
    --query 'LcBeqh9r' \
    > test.out 2>&1
eval_tap $? 282 'CheckUserAvailability' test.out

#- 283 PublicBulkGetUsers
eval_tap 0 283 'PublicBulkGetUsers # SKIP deprecated' test.out

#- 284 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "c5tElr5z", "languageTag": "W8enOnLB"}' \
    > test.out 2>&1
eval_tap $? 284 'PublicSendRegistrationCode' test.out

#- 285 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "YupMIQNl", "emailAddress": "9N3wBseG"}' \
    > test.out 2>&1
eval_tap $? 285 'PublicVerifyRegistrationCode' test.out

#- 286 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "JQ6GC8sJ", "languageTag": "0Ihr9jss"}' \
    > test.out 2>&1
eval_tap $? 286 'PublicForgotPasswordV3' test.out

#- 287 PublicValidateUserInput
samples/cli/sample-apps Iam publicValidateUserInput \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "fsjIfpEQ", "password": "700CRD6T", "uniqueDisplayName": "h0VYBHj5", "username": "RTHdhjTO"}' \
    > test.out 2>&1
eval_tap $? 287 'PublicValidateUserInput' test.out

#- 288 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'TdpdbJw0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 288 'GetAdminInvitationV3' test.out

#- 289 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'PreLBHDU' \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "jbRthKrZ", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "UW1fKo12", "policyId": "CO63LQCv", "policyVersionId": "i4V8uqg6"}, {"isAccepted": false, "localizedPolicyVersionId": "mfJP8YIN", "policyId": "XdcXHgqF", "policyVersionId": "4Szwwj9p"}, {"isAccepted": false, "localizedPolicyVersionId": "AYWJMxlZ", "policyId": "kIObWzQz", "policyVersionId": "st63HOA1"}], "authType": "fXqEKdYA", "code": "O10MxaRJ", "country": "y7coZDJ7", "dateOfBirth": "pBkEhqQY", "displayName": "8kd1pIUg", "emailAddress": "oK0CV4L9", "password": "Ib6u9HzQ", "reachMinimumAge": true, "uniqueDisplayName": "qQC5yCqN"}' \
    > test.out 2>&1
eval_tap $? 289 'CreateUserFromInvitationV3' test.out

#- 290 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "HfDsRnho", "country": "yDV1ASPv", "dateOfBirth": "WeeUI3dJ", "displayName": "F8YhxNEN", "languageTag": "2Eq2vJmE", "uniqueDisplayName": "y0rf1VPq", "userName": "0IfjXMEZ"}' \
    > test.out 2>&1
eval_tap $? 290 'UpdateUserV3' test.out

#- 291 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "oHM1z4hq", "country": "iUMX2M2o", "dateOfBirth": "NfK1qqJs", "displayName": "8J48Gwa8", "languageTag": "xIYuhf5b", "uniqueDisplayName": "P48RS6Na", "userName": "RLBAJb26"}' \
    > test.out 2>&1
eval_tap $? 291 'PublicPartialUpdateUserV3' test.out

#- 292 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "lPMljX4Y", "emailAddress": "iPh7a83v", "languageTag": "4UHqnGxv", "upgradeToken": "VO4o8nV8"}' \
    > test.out 2>&1
eval_tap $? 292 'PublicSendVerificationCodeV3' test.out

#- 293 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "dFZMfALD", "contactType": "ebtUPOyT", "languageTag": "kPyOBAl1", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 293 'PublicUserVerificationV3' test.out

#- 294 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "bfXHL5nn", "country": "hiHudDY4", "dateOfBirth": "9Elcq31a", "displayName": "yzadesN3", "emailAddress": "Tq4zT4am", "password": "e0YWUBQ5", "uniqueDisplayName": "GLGTZozW", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 294 'PublicUpgradeHeadlessAccountV3' test.out

#- 295 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'true' \
    --body '{"emailAddress": "hNnLo6bS", "password": "GzNAgZlD"}' \
    > test.out 2>&1
eval_tap $? 295 'PublicVerifyHeadlessAccountV3' test.out

#- 296 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "WFQN6hof", "mfaToken": "JQVrAJg4", "newPassword": "lgD7tOGc", "oldPassword": "f03PZAKA"}' \
    > test.out 2>&1
eval_tap $? 296 'PublicUpdatePasswordV3' test.out

#- 297 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace '5LlLuX2u' \
    > test.out 2>&1
eval_tap $? 297 'PublicCreateJusticeUser' test.out

#- 298 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'iefgCytV' \
    --redirectUri 'OHDbtyA9' \
    --ticket 'WMle8X2A' \
    > test.out 2>&1
eval_tap $? 298 'PublicPlatformLinkV3' test.out

#- 299 PublicPlatformUnlinkV3
eval_tap 0 299 'PublicPlatformUnlinkV3 # SKIP deprecated' test.out

#- 300 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'VB6L0hYq' \
    > test.out 2>&1
eval_tap $? 300 'PublicPlatformUnlinkAllV3' test.out

#- 301 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Adxl2Cwa' \
    --ticket '17URPH1v' \
    > test.out 2>&1
eval_tap $? 301 'PublicForcePlatformLinkV3' test.out

#- 302 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'cvXQkISi' \
    --clientId 'vBC7RDZy' \
    --redirectUri '6G3vC4fA' \
    > test.out 2>&1
eval_tap $? 302 'PublicWebLinkPlatform' test.out

#- 303 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'PNyP6FFB' \
    --code 'YYjzUgXA' \
    --state 'JlO1Ci2O' \
    > test.out 2>&1
eval_tap $? 303 'PublicWebLinkPlatformEstablish' test.out

#- 304 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Y0CBpJ96' \
    --code 'xfseVQic' \
    --state 'vgJy4P0I' \
    > test.out 2>&1
eval_tap $? 304 'PublicProcessWebLinkPlatformV3' test.out

#- 305 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "YDXhX2AC", "userIds": ["OePPQA13", "eAFasOci", "bvRp2pGN"]}' \
    > test.out 2>&1
eval_tap $? 305 'PublicGetUsersPlatformInfosV3' test.out

#- 306 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "IrPnIxzo", "code": "IwmQZEFZ", "emailAddress": "21A7e0PB", "languageTag": "pxrpQNuu", "newPassword": "00gkU1fY"}' \
    > test.out 2>&1
eval_tap $? 306 'ResetPasswordV3' test.out

#- 307 PublicGetUserByUserIdV3
eval_tap 0 307 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 308 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'c0xELEnn' \
    --activeOnly 'true' \
    --after 'YVM0rkA8' \
    --before 'vsTS64yY' \
    --limit '21' \
    > test.out 2>&1
eval_tap $? 308 'PublicGetUserBanHistoryV3' test.out

#- 309 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'iMM960ye' \
    > test.out 2>&1
eval_tap $? 309 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 310 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId '119DiyVC' \
    > test.out 2>&1
eval_tap $? 310 'PublicGetUserInformationV3' test.out

#- 311 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'WNZh3oqF' \
    --after '0.9607264952768125' \
    --before '0.7476819931385644' \
    --limit '37' \
    > test.out 2>&1
eval_tap $? 311 'PublicGetUserLoginHistoriesV3' test.out

#- 312 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Sqgthjw4' \
    --after 'fUyrqgl8' \
    --before '9HIl7vwn' \
    --limit '67' \
    --platformId 'qnlKVRO9' \
    > test.out 2>&1
eval_tap $? 312 'PublicGetUserPlatformAccountsV3' test.out

#- 313 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zYJnLxPl' \
    > test.out 2>&1
eval_tap $? 313 'PublicListJusticePlatformAccountsV3' test.out

#- 314 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'FzYxWInH' \
    --body '{"platformId": "pjsHJglo", "platformUserId": "22Ov1F4d"}' \
    > test.out 2>&1
eval_tap $? 314 'PublicLinkPlatformAccount' test.out

#- 315 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'r9o2fgJY' \
    --body '{"chosenNamespaces": ["L1Ehy0Y7", "Z4zmQJlP", "7qMRn6pT"], "requestId": "3BUdSpR3"}' \
    > test.out 2>&1
eval_tap $? 315 'PublicForceLinkPlatformWithProgression' test.out

#- 316 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'aL1gF8ap' \
    > test.out 2>&1
eval_tap $? 316 'PublicGetPublisherUserV3' test.out

#- 317 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'SI1Btfo0' \
    --password '79K7YSXL' \
    > test.out 2>&1
eval_tap $? 317 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 318 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'HymV4j1Z' \
    --before 'pXuT1B5V' \
    --isWildcard 'true' \
    --limit '40' \
    > test.out 2>&1
eval_tap $? 318 'PublicGetRolesV3' test.out

#- 319 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'ylG1BrJu' \
    > test.out 2>&1
eval_tap $? 319 'PublicGetRoleV3' test.out

#- 320 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'true' \
    > test.out 2>&1
eval_tap $? 320 'PublicGetMyUserV3' test.out

#- 321 PublicSendCodeForwardV3
samples/cli/sample-apps Iam publicSendCodeForwardV3 \
    --body '{"context": "VpEKHrsG", "emailAddress": "WZnDMPvQ", "languageTag": "Pc4Ed2EA", "upgradeToken": "4W4NTZ3v"}' \
    > test.out 2>&1
eval_tap $? 321 'PublicSendCodeForwardV3' test.out

#- 322 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'BCAI6jBc' \
    > test.out 2>&1
eval_tap $? 322 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 323 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["mLObGmfQ", "kJuoNeDT", "wlLs71tf"], "oneTimeLinkCode": "0tuAMHds"}' \
    > test.out 2>&1
eval_tap $? 323 'LinkHeadlessAccountToMyAccountV3' test.out

#- 324 PublicGetMyRedirectionAfterLinkV3
samples/cli/sample-apps Iam publicGetMyRedirectionAfterLinkV3 \
    --oneTimeLinkCode 'lKOAOYxt' \
    > test.out 2>&1
eval_tap $? 324 'PublicGetMyRedirectionAfterLinkV3' test.out

#- 325 PublicGetMyProfileAllowUpdateStatusV3
samples/cli/sample-apps Iam publicGetMyProfileAllowUpdateStatusV3 \
    > test.out 2>&1
eval_tap $? 325 'PublicGetMyProfileAllowUpdateStatusV3' test.out

#- 326 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "ugHFvM0x"}' \
    > test.out 2>&1
eval_tap $? 326 'PublicSendVerificationLinkV3' test.out

#- 327 PublicGetOpenidUserInfoV3
samples/cli/sample-apps Iam publicGetOpenidUserInfoV3 \
    > test.out 2>&1
eval_tap $? 327 'PublicGetOpenidUserInfoV3' test.out

#- 328 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'RQsmS3Gr' \
    > test.out 2>&1
eval_tap $? 328 'PublicVerifyUserByLinkV3' test.out

#- 329 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'sFlIbdM3' \
    --code 'Cxenuqfx' \
    --error 'Q2aYPXHb' \
    --state '7SMsEb0V' \
    > test.out 2>&1
eval_tap $? 329 'PlatformAuthenticateSAMLV3Handler' test.out

#- 330 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'aobjhXzh' \
    --payload 'hdcgrzdQ' \
    > test.out 2>&1
eval_tap $? 330 'LoginSSOClient' test.out

#- 331 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'yI4hM1JP' \
    > test.out 2>&1
eval_tap $? 331 'LogoutSSOClient' test.out

#- 332 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 'jzRo3pdk' \
    --code 'p65XKXyH' \
    > test.out 2>&1
eval_tap $? 332 'RequestTargetTokenResponseV3' test.out

#- 333 UpgradeAndAuthenticateForwardV3
samples/cli/sample-apps Iam upgradeAndAuthenticateForwardV3 \
    --clientId 'ZUAawIX2' \
    --upgradeSuccessToken 'ee8TOcJg' \
    > test.out 2>&1
eval_tap $? 333 'UpgradeAndAuthenticateForwardV3' test.out

#- 334 AdminListInvitationHistoriesV4
samples/cli/sample-apps Iam adminListInvitationHistoriesV4 \
    --limit '28' \
    --namespace 'eqB2j3Kd' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 334 'AdminListInvitationHistoriesV4' test.out

#- 335 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Rhj2xWHB' \
    > test.out 2>&1
eval_tap $? 335 'AdminGetDevicesByUserV4' test.out

#- 336 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'KhHbwtw2' \
    --endDate 'Yele7HMH' \
    --limit '48' \
    --offset '23' \
    --startDate 'YKdUUZx9' \
    > test.out 2>&1
eval_tap $? 336 'AdminGetBannedDevicesV4' test.out

#- 337 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'H9qxdL64' \
    > test.out 2>&1
eval_tap $? 337 'AdminGetUserDeviceBansV4' test.out

#- 338 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "33e4slff", "deviceId": "1yMnyENn", "deviceType": "hPe2R9AB", "enabled": true, "endDate": "rvL78uKx", "ext": {"2NcIvL9Y": {}, "Sg9DWhK9": {}, "cHjb91wL": {}}, "reason": "fn65ygbj"}' \
    > test.out 2>&1
eval_tap $? 338 'AdminBanDeviceV4' test.out

#- 339 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'WD3p0tCJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 339 'AdminGetDeviceBanV4' test.out

#- 340 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 's57o1OQJ' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 340 'AdminUpdateDeviceBanV4' test.out

#- 341 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate '3kqlEtDq' \
    --startDate 'YcFmuu3T' \
    --deviceType 'hJ6OImMG' \
    > test.out 2>&1
eval_tap $? 341 'AdminGenerateReportV4' test.out

#- 342 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 342 'AdminGetDeviceTypesV4' test.out

#- 343 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId '1iXKaPsc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 343 'AdminGetDeviceBansV4' test.out

#- 344 AdminDecryptDeviceV4
eval_tap 0 344 'AdminDecryptDeviceV4 # SKIP deprecated' test.out

#- 345 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'iewRZ0Es' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 345 'AdminUnbanDeviceV4' test.out

#- 346 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'ff90InRM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 346 'AdminGetUsersByDeviceV4' test.out

#- 347 AdminGetNamespaceInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 347 'AdminGetNamespaceInvitationHistoryV4' test.out

#- 348 AdminGetNamespaceUserInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceUserInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 348 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 349 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 87, "userInfo": {"country": "r1B3kbRk"}}' \
    > test.out 2>&1
eval_tap $? 349 'AdminCreateTestUsersV4' test.out

#- 350 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "lbDiYkWT", "policyId": "jYsMh8Bh", "policyVersionId": "qaw82wQg"}, {"isAccepted": false, "localizedPolicyVersionId": "VIhYoS7X", "policyId": "Yt5sqhpR", "policyVersionId": "sGQgQepv"}, {"isAccepted": false, "localizedPolicyVersionId": "4126IE5D", "policyId": "wLqfUviX", "policyVersionId": "OsuhZee9"}], "authType": "EMAILPASSWD", "code": "a7iKJdo9", "country": "p2GQ7KgG", "dateOfBirth": "ZI3iBXKS", "displayName": "OZfioz3m", "emailAddress": "uTCUyFF4", "password": "FCLEsHHt", "passwordMD5Sum": "hRPLjIJC", "reachMinimumAge": false, "uniqueDisplayName": "WPKpQvSp", "username": "2iTbbpQ2"}' \
    > test.out 2>&1
eval_tap $? 350 'AdminCreateUserV4' test.out

#- 351 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": false, "userIds": ["xM74ahXC", "EG2VHdyD", "u7f8z2w5"]}' \
    > test.out 2>&1
eval_tap $? 351 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 352 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["zA5ill1S", "3ptJnOTZ", "oA2x9XRt"]}' \
    > test.out 2>&1
eval_tap $? 352 'AdminBulkCheckValidUserIDV4' test.out

#- 353 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'dInRsKQZ' \
    --body '{"avatarUrl": "u99G9lt0", "country": "TymQjGKb", "dateOfBirth": "Gzr0KNmJ", "displayName": "11QD98Fl", "languageTag": "ro05M9ye", "skipLoginQueue": false, "tags": ["DEioB5Xv", "jci9A9fZ", "x93KiiTN"], "uniqueDisplayName": "BnwipMzb", "userName": "AcAtaqcL"}' \
    > test.out 2>&1
eval_tap $? 353 'AdminUpdateUserV4' test.out

#- 354 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'amPpg85P' \
    --body '{"code": "piimqiuh", "emailAddress": "jeJWDVm4"}' \
    > test.out 2>&1
eval_tap $? 354 'AdminUpdateUserEmailAddressV4' test.out

#- 355 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'FFeMppUv' \
    --body '{"factor": "neUMMDAE", "mfaToken": "LbrL6ZM7"}' \
    > test.out 2>&1
eval_tap $? 355 'AdminDisableUserMFAV4' test.out

#- 356 AdminGetUserMFAStatusV4
samples/cli/sample-apps Iam adminGetUserMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    --userId '3UqV3A8s' \
    > test.out 2>&1
eval_tap $? 356 'AdminGetUserMFAStatusV4' test.out

#- 357 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'JpiSOsZq' \
    > test.out 2>&1
eval_tap $? 357 'AdminListUserRolesV4' test.out

#- 358 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'm5Cx6b6D' \
    --body '{"assignedNamespaces": ["6PpALUYl", "3LbSSWzw", "aUzsVt6m"], "roleId": "jjLtcUBZ"}' \
    > test.out 2>&1
eval_tap $? 358 'AdminUpdateUserRoleV4' test.out

#- 359 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'cppzR9vn' \
    --body '{"assignedNamespaces": ["C9Mx92MH", "ibMCGqAX", "UA6yKSBp"], "roleId": "20hGx6U1"}' \
    > test.out 2>&1
eval_tap $? 359 'AdminAddUserRoleV4' test.out

#- 360 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '9yIsNjLT' \
    --body '{"assignedNamespaces": ["P8GoidMc", "XCtRZzjn", "kqNuYIXW"], "roleId": "OEvbzeMj"}' \
    > test.out 2>&1
eval_tap $? 360 'AdminRemoveUserRoleV4' test.out

#- 361 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'true' \
    --isWildcard 'false' \
    --limit '77' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 361 'AdminGetRolesV4' test.out

#- 362 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "w72lIwhR"}' \
    > test.out 2>&1
eval_tap $? 362 'AdminCreateRoleV4' test.out

#- 363 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'ckKX6lvu' \
    > test.out 2>&1
eval_tap $? 363 'AdminGetRoleV4' test.out

#- 364 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'WEmY7pC7' \
    > test.out 2>&1
eval_tap $? 364 'AdminDeleteRoleV4' test.out

#- 365 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'gxveU3ea' \
    --body '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "iFb6MHdt"}' \
    > test.out 2>&1
eval_tap $? 365 'AdminUpdateRoleV4' test.out

#- 366 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'fKOZWakq' \
    --body '{"permissions": [{"action": 26, "resource": "EfFU5AQe", "schedAction": 67, "schedCron": "reFbZeXR", "schedRange": ["fHOLwVDl", "Exu98GYP", "F3tBoEo5"]}, {"action": 57, "resource": "Q7fm9rHJ", "schedAction": 76, "schedCron": "AXIqXFmi", "schedRange": ["oMnGLt2x", "h6b3rp2w", "Kg5sXqns"]}, {"action": 48, "resource": "WrTvk40D", "schedAction": 41, "schedCron": "eFftzODe", "schedRange": ["x6y9FFes", "rZK7Fg7q", "gQw7yVHB"]}]}' \
    > test.out 2>&1
eval_tap $? 366 'AdminUpdateRolePermissionsV4' test.out

#- 367 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'PdY5TAW8' \
    --body '{"permissions": [{"action": 26, "resource": "XsIgXr4z", "schedAction": 66, "schedCron": "2L13c9UI", "schedRange": ["d9DA1H2H", "Bz9ITdxG", "106WXGIs"]}, {"action": 30, "resource": "zVU3Rw2u", "schedAction": 42, "schedCron": "cZJEFYXa", "schedRange": ["RGRBUBhy", "7Cxx8oSf", "FuR4CND7"]}, {"action": 14, "resource": "ErhOLLOJ", "schedAction": 45, "schedCron": "o9puZ8Jn", "schedRange": ["IIzBJRV9", "TKW0mmW2", "6x3dVbkh"]}]}' \
    > test.out 2>&1
eval_tap $? 367 'AdminAddRolePermissionsV4' test.out

#- 368 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'qm5ppKpi' \
    --body '["3ixii2oV", "Xivnqh68", "92jcO7yU"]' \
    > test.out 2>&1
eval_tap $? 368 'AdminDeleteRolePermissionsV4' test.out

#- 369 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'MPVTlt4o' \
    --after 'siiARM59' \
    --before 'u1c70n6s' \
    --limit '63' \
    > test.out 2>&1
eval_tap $? 369 'AdminListAssignedUsersV4' test.out

#- 370 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'wNzwCoR6' \
    --body '{"assignedNamespaces": ["l1I5IW45", "Yo17Fxb5", "ydeX0fsH"], "namespace": "vjHlIbML", "userId": "eZBDNMoZ"}' \
    > test.out 2>&1
eval_tap $? 370 'AdminAssignUserToRoleV4' test.out

#- 371 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'VtSPcTvU' \
    --body '{"namespace": "Ej19crr7", "userId": "vblFRBzl"}' \
    > test.out 2>&1
eval_tap $? 371 'AdminRevokeUserFromRoleV4' test.out

#- 372 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["7jlQSIYo", "gRbCLjGR", "ItjWSR4l"], "emailAddresses": ["TZvAp3Bf", "TKslJ99g", "WPUecjnw"], "isAdmin": true, "isNewStudio": false, "languageTag": "91p14hxw", "namespace": "noBkrYQ1", "roleId": "Crx05lBl"}' \
    > test.out 2>&1
eval_tap $? 372 'AdminInviteUserNewV4' test.out

#- 373 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "XipfCDao", "country": "886pn3dp", "dateOfBirth": "WhUbbXHu", "displayName": "JkRRUVjX", "languageTag": "kG3bFI3Q", "skipLoginQueue": false, "tags": ["JTIehNyV", "elSDFOQ4", "fkeCB10z"], "uniqueDisplayName": "GFEZdzKI", "userName": "9ludYnUg"}' \
    > test.out 2>&1
eval_tap $? 373 'AdminUpdateMyUserV4' test.out

#- 374 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    --body '{"factor": "JiWeXavy", "mfaToken": "URnFaER4"}' \
    > test.out 2>&1
eval_tap $? 374 'AdminDisableMyAuthenticatorV4' test.out

#- 375 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'g4hJjhKD' \
    > test.out 2>&1
eval_tap $? 375 'AdminEnableMyAuthenticatorV4' test.out

#- 376 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 376 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 377 AdminGetMyBackupCodesV4
eval_tap 0 377 'AdminGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 378 AdminGenerateMyBackupCodesV4
eval_tap 0 378 'AdminGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 379 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    --body '{"factor": "CPMCoR1C", "mfaToken": "NzFBRBc7"}' \
    > test.out 2>&1
eval_tap $? 379 'AdminDisableMyBackupCodesV4' test.out

#- 380 AdminDownloadMyBackupCodesV4
eval_tap 0 380 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 381 AdminEnableMyBackupCodesV4
eval_tap 0 381 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 382 AdminGetBackupCodesV4
samples/cli/sample-apps Iam adminGetBackupCodesV4 \
    --languageTag 'A7FBn0oJ' \
    > test.out 2>&1
eval_tap $? 382 'AdminGetBackupCodesV4' test.out

#- 383 AdminGenerateBackupCodesV4
samples/cli/sample-apps Iam adminGenerateBackupCodesV4 \
    --languageTag '7t1tFuY5' \
    > test.out 2>&1
eval_tap $? 383 'AdminGenerateBackupCodesV4' test.out

#- 384 AdminEnableBackupCodesV4
samples/cli/sample-apps Iam adminEnableBackupCodesV4 \
    --languageTag 'x5Pm7KQ5' \
    > test.out 2>&1
eval_tap $? 384 'AdminEnableBackupCodesV4' test.out

#- 385 AdminChallengeMyMFAV4
samples/cli/sample-apps Iam adminChallengeMyMFAV4 \
    --code 'ZWkpUgdl' \
    --factor 'gh6v9b9u' \
    > test.out 2>&1
eval_tap $? 385 'AdminChallengeMyMFAV4' test.out

#- 386 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    --action '8S9H9uyc' \
    --languageTag 'ucgYj0JC' \
    > test.out 2>&1
eval_tap $? 386 'AdminSendMyMFAEmailCodeV4' test.out

#- 387 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    --body '{"factor": "HEujY5Zq", "mfaToken": "HUgQJvCW"}' \
    > test.out 2>&1
eval_tap $? 387 'AdminDisableMyEmailV4' test.out

#- 388 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code '9cWg3kVA' \
    > test.out 2>&1
eval_tap $? 388 'AdminEnableMyEmailV4' test.out

#- 389 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 389 'AdminGetMyEnabledFactorsV4' test.out

#- 390 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor '9dYl3rqE' \
    > test.out 2>&1
eval_tap $? 390 'AdminMakeFactorMyDefaultV4' test.out

#- 391 AdminGetMyOwnMFAStatusV4
samples/cli/sample-apps Iam adminGetMyOwnMFAStatusV4 \
    > test.out 2>&1
eval_tap $? 391 'AdminGetMyOwnMFAStatusV4' test.out

#- 392 AdminGetMyMFAStatusV4
eval_tap 0 392 'AdminGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 393 AdminInviteUserV4
eval_tap 0 393 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 394 AuthenticationWithPlatformLinkV4
samples/cli/sample-apps Iam authenticationWithPlatformLinkV4 \
    --extendExp 'true' \
    --clientId 'N4Nk6Z97' \
    --linkingToken 'TGRtDhla' \
    --password '6MCLXl4Z' \
    --username 'elwJXFcM' \
    > test.out 2>&1
eval_tap $? 394 'AuthenticationWithPlatformLinkV4' test.out

#- 395 GenerateTokenByNewHeadlessAccountV4
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV4 \
    --additionalData 'we0VrD9q' \
    --extendExp 'true' \
    --linkingToken 'JL6GjrgG' \
    > test.out 2>&1
eval_tap $? 395 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 396 Verify2faCodeV4
samples/cli/sample-apps Iam verify2faCodeV4 \
    --code 'GYR9AuRm' \
    --factor 'uNhYSS3F' \
    --mfaToken 'fE6tjdv7' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 396 'Verify2faCodeV4' test.out

#- 397 PlatformTokenGrantV4
samples/cli/sample-apps Iam platformTokenGrantV4 \
    --platformId 'oCqx8Vkc' \
    --codeChallenge 'glQkhsNh' \
    --codeChallengeMethod 'plain' \
    --additionalData 'CxSBDXqi' \
    --clientId 'gQ7V3pvA' \
    --createHeadless 'false' \
    --deviceId 'p8ovl9Qf' \
    --macAddress 'NUWj5YMf' \
    --platformToken '6CxmqIIr' \
    --serviceLabel '0.13917800331550134' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 397 'PlatformTokenGrantV4' test.out

#- 398 SimultaneousLoginV4
samples/cli/sample-apps Iam simultaneousLoginV4 \
    --codeChallenge 'cnIxa1cT' \
    --codeChallengeMethod 'S256' \
    --simultaneousPlatform 'R1pO6yZH' \
    --simultaneousTicket 'foRbOLM6' \
    --nativePlatform 'epicgames' \
    --nativePlatformTicket '8F5RFx60' \
    > test.out 2>&1
eval_tap $? 398 'SimultaneousLoginV4' test.out

#- 399 TokenGrantV4
samples/cli/sample-apps Iam tokenGrantV4 \
    --codeChallenge 'ktsDX4LF' \
    --codeChallengeMethod 'S256' \
    --additionalData '2yKXSPzv' \
    --clientId '43BZBRVN' \
    --clientSecret 'b07oADgk' \
    --code 'EPESeaBJ' \
    --codeVerifier 'FvUgT3xi' \
    --extendNamespace 'y3RDlJrT' \
    --extendExp 'false' \
    --loginQueueTicket 'LI62HrhC' \
    --password '8KKwmIwS' \
    --redirectUri '81ZkFy4W' \
    --refreshToken 'sWu3RuQt' \
    --scope 'u40wEBsP' \
    --username '9cUe0fmw' \
    --grantType 'authorization_code' \
    > test.out 2>&1
eval_tap $? 399 'TokenGrantV4' test.out

#- 400 RequestTargetTokenResponseV4
samples/cli/sample-apps Iam requestTargetTokenResponseV4 \
    --additionalData 'Rdm4hkh2' \
    --code 'Q9IjZmAU' \
    > test.out 2>&1
eval_tap $? 400 'RequestTargetTokenResponseV4' test.out

#- 401 PublicListUserIDByPlatformUserIDsV4
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'R1akIP2m' \
    --rawPUID 'false' \
    --body '{"pidType": "muMlogFU", "platformUserIds": ["nnSSXHKa", "6SJRvg9z", "RBbCLLGd"]}' \
    > test.out 2>&1
eval_tap $? 401 'PublicListUserIDByPlatformUserIDsV4' test.out

#- 402 PublicGetUserByPlatformUserIDV4
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'ZDm0v7G4' \
    --platformUserId 'XbHN4eJT' \
    > test.out 2>&1
eval_tap $? 402 'PublicGetUserByPlatformUserIDV4' test.out

#- 403 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "edLBEsXJ", "policyId": "YDFzx7z4", "policyVersionId": "9l5rOMC2"}, {"isAccepted": false, "localizedPolicyVersionId": "DH56RVzE", "policyId": "PGYfZ0Nn", "policyVersionId": "qzm7RwUV"}, {"isAccepted": false, "localizedPolicyVersionId": "LywFyqoT", "policyId": "ccdrOtuu", "policyVersionId": "ohWmdokD"}], "authType": "EMAILPASSWD", "country": "Jmo8fn1y", "dateOfBirth": "BJouITMs", "displayName": "ktdtWeoU", "emailAddress": "XiNwZXYJ", "password": "vfgvSoWE", "passwordMD5Sum": "lK2rZNrZ", "uniqueDisplayName": "3jwBE8Jp", "username": "NNj10wC1", "verified": true}' \
    > test.out 2>&1
eval_tap $? 403 'PublicCreateTestUserV4' test.out

#- 404 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "7nMAxOCO", "policyId": "Jqm2Scfl", "policyVersionId": "VM8uR85R"}, {"isAccepted": false, "localizedPolicyVersionId": "MpFfpeNN", "policyId": "TQYnifHw", "policyVersionId": "u3IRhqrI"}, {"isAccepted": false, "localizedPolicyVersionId": "HezEkce3", "policyId": "owPgUowI", "policyVersionId": "Plm1GlYz"}], "authType": "EMAILPASSWD", "code": "f3QYlfyT", "country": "RNX4Rvyz", "dateOfBirth": "9CpUoanv", "displayName": "nivN31jc", "emailAddress": "v4ha9Dss", "password": "F6hRqt9S", "passwordMD5Sum": "mME7eesi", "reachMinimumAge": true, "uniqueDisplayName": "rEdRskpz", "username": "2m4StQQi"}' \
    > test.out 2>&1
eval_tap $? 404 'PublicCreateUserV4' test.out

#- 405 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'wSVTjYQq' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "oHAVpwOy", "policyId": "GNZeEMk5", "policyVersionId": "GvFrjhul"}, {"isAccepted": true, "localizedPolicyVersionId": "c6ymtiOh", "policyId": "npJc3j23", "policyVersionId": "Y2NgT9p8"}, {"isAccepted": false, "localizedPolicyVersionId": "o9MooGbm", "policyId": "cMSDocOF", "policyVersionId": "PJR45VpL"}], "authType": "EMAILPASSWD", "code": "B6b9KKRb", "country": "gFNJPX22", "dateOfBirth": "VvAHXmbx", "displayName": "PxF8Nr1W", "emailAddress": "nFaAYkTi", "password": "fHEn45oC", "passwordMD5Sum": "9secsM2D", "reachMinimumAge": false, "uniqueDisplayName": "5zinGMrV", "username": "sxMRz2Kv"}' \
    > test.out 2>&1
eval_tap $? 405 'CreateUserFromInvitationV4' test.out

#- 406 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "lWs0Y3Dg", "country": "RZkXGHxS", "dateOfBirth": "oS2ytmcw", "displayName": "mmfKg6lX", "languageTag": "pAs1Z1tY", "uniqueDisplayName": "NuCXPsU2", "userName": "LURqvHsD"}' \
    > test.out 2>&1
eval_tap $? 406 'PublicUpdateUserV4' test.out

#- 407 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "iPQez3bt", "emailAddress": "ViNXczyV"}' \
    > test.out 2>&1
eval_tap $? 407 'PublicUpdateUserEmailAddressV4' test.out

#- 408 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "r4tV7YvJ", "country": "XkEPHBI4", "dateOfBirth": "tSGh1BZO", "displayName": "3eVm3adT", "emailAddress": "VFs1fZgr", "password": "gfi2og1k", "reachMinimumAge": false, "uniqueDisplayName": "bFVqEgPk", "username": "FTVtVnjr", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 408 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 409 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"dateOfBirth": "IPyHR8JR", "displayName": "bitlMSiC", "emailAddress": "yeZTBzl5", "password": "KweCC8Yb", "uniqueDisplayName": "r4pEQaZB", "username": "Br14VtAv"}' \
    > test.out 2>&1
eval_tap $? 409 'PublicUpgradeHeadlessAccountV4' test.out

#- 410 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "0FPiIud3", "mfaToken": "IPjvdCdG"}' \
    > test.out 2>&1
eval_tap $? 410 'PublicDisableMyAuthenticatorV4' test.out

#- 411 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code '8KAVlEZm' \
    > test.out 2>&1
eval_tap $? 411 'PublicEnableMyAuthenticatorV4' test.out

#- 412 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 412 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 413 PublicGetMyBackupCodesV4
eval_tap 0 413 'PublicGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 414 PublicGenerateMyBackupCodesV4
eval_tap 0 414 'PublicGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 415 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "ADwVLdcd", "mfaToken": "tLSziCOL"}' \
    > test.out 2>&1
eval_tap $? 415 'PublicDisableMyBackupCodesV4' test.out

#- 416 PublicDownloadMyBackupCodesV4
eval_tap 0 416 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 417 PublicEnableMyBackupCodesV4
eval_tap 0 417 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 418 PublicGetBackupCodesV4
samples/cli/sample-apps Iam publicGetBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag '7BJkJ0Ie' \
    > test.out 2>&1
eval_tap $? 418 'PublicGetBackupCodesV4' test.out

#- 419 PublicGenerateBackupCodesV4
samples/cli/sample-apps Iam publicGenerateBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'PHZNsCGH' \
    > test.out 2>&1
eval_tap $? 419 'PublicGenerateBackupCodesV4' test.out

#- 420 PublicEnableBackupCodesV4
samples/cli/sample-apps Iam publicEnableBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'd4Gq2d1S' \
    > test.out 2>&1
eval_tap $? 420 'PublicEnableBackupCodesV4' test.out

#- 421 PublicChallengeMyMFAV4
samples/cli/sample-apps Iam publicChallengeMyMFAV4 \
    --namespace $AB_NAMESPACE \
    --code 'uTg5Gvv2' \
    --factor 'QJEWGWtn' \
    > test.out 2>&1
eval_tap $? 421 'PublicChallengeMyMFAV4' test.out

#- 422 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 422 'PublicRemoveTrustedDeviceV4' test.out

#- 423 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    --action 'Xlzd0HGp' \
    --languageTag 'PvVFoeJ7' \
    > test.out 2>&1
eval_tap $? 423 'PublicSendMyMFAEmailCodeV4' test.out

#- 424 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "LtMJXUV0", "mfaToken": "FX3Kumc5"}' \
    > test.out 2>&1
eval_tap $? 424 'PublicDisableMyEmailV4' test.out

#- 425 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code '4awoQhdC' \
    > test.out 2>&1
eval_tap $? 425 'PublicEnableMyEmailV4' test.out

#- 426 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 426 'PublicGetMyEnabledFactorsV4' test.out

#- 427 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'VpQh0FVK' \
    > test.out 2>&1
eval_tap $? 427 'PublicMakeFactorMyDefaultV4' test.out

#- 428 PublicGetMyOwnMFAStatusV4
samples/cli/sample-apps Iam publicGetMyOwnMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 428 'PublicGetMyOwnMFAStatusV4' test.out

#- 429 PublicGetMyMFAStatusV4
eval_tap 0 429 'PublicGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 430 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'kc45TgWb' \
    > test.out 2>&1
eval_tap $? 430 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 431 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "Y4yGu5wC", "emailAddress": "AG5WI8Tb", "languageTag": "9PGpUBFA", "namespace": "Xt337BJE", "namespaceDisplayName": "O10qyJi2"}' \
    > test.out 2>&1
eval_tap $? 431 'PublicInviteUserV4' test.out

#- 432 PublicUpgradeHeadlessWithCodeV4Forward
samples/cli/sample-apps Iam publicUpgradeHeadlessWithCodeV4Forward \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "fnKQZoxY", "policyId": "quZgORn6", "policyVersionId": "8feG8z70"}, {"isAccepted": true, "localizedPolicyVersionId": "ksfrv8at", "policyId": "l090n4tm", "policyVersionId": "yojWcEFS"}, {"isAccepted": true, "localizedPolicyVersionId": "zq2RTR3E", "policyId": "4jX6BHXZ", "policyVersionId": "QtUdSM4w"}], "code": "581f3wfZ", "country": "idxvmh8f", "dateOfBirth": "kPHTu4Oh", "displayName": "Rz8CMrRW", "emailAddress": "oXVAdOq3", "password": "SBXKKLnJ", "reachMinimumAge": false, "uniqueDisplayName": "TWhJpAAE", "username": "j8lgAuWW", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 432 'PublicUpgradeHeadlessWithCodeV4Forward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE