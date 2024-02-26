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
echo "1..386"

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
    --body '{"modules": [{"docLink": "KSumX35a", "groups": [{"group": "KNAyM4Vd", "groupId": "zeq8s6pe", "permissions": [{"allowedActions": [0, 21, 62], "resource": "7ZnIo00R"}, {"allowedActions": [69, 27, 85], "resource": "Vywmq4sa"}, {"allowedActions": [59, 95, 79], "resource": "gUYKt4gY"}]}, {"group": "dICf2X72", "groupId": "hzpVac77", "permissions": [{"allowedActions": [49, 96, 57], "resource": "Sf07Yzre"}, {"allowedActions": [93, 43, 14], "resource": "mVDkZXNh"}, {"allowedActions": [62, 7, 96], "resource": "NtpLn7nQ"}]}, {"group": "hwgXKj2M", "groupId": "7hAYenfW", "permissions": [{"allowedActions": [11, 17, 6], "resource": "VaR7Ysri"}, {"allowedActions": [38, 20, 50], "resource": "d04r3JOG"}, {"allowedActions": [84, 53, 85], "resource": "5LI8dcuP"}]}], "module": "q4zumjnn", "moduleId": "vBZI8D9j"}, {"docLink": "uHkuq9db", "groups": [{"group": "WYpjL8pd", "groupId": "FwKzGeZu", "permissions": [{"allowedActions": [53, 31, 16], "resource": "3XicVMWi"}, {"allowedActions": [30, 25, 20], "resource": "A4msR1DO"}, {"allowedActions": [45, 66, 21], "resource": "vNyiKfOs"}]}, {"group": "omD170ay", "groupId": "8mtmRebA", "permissions": [{"allowedActions": [64, 27, 100], "resource": "2vviHsZb"}, {"allowedActions": [47, 49, 54], "resource": "DbG7psBc"}, {"allowedActions": [19, 91, 46], "resource": "T9oZ76zT"}]}, {"group": "t9AdjVUn", "groupId": "wc19ma7f", "permissions": [{"allowedActions": [67, 10, 57], "resource": "d14ouE2f"}, {"allowedActions": [98, 71, 60], "resource": "guuSFZ5g"}, {"allowedActions": [77, 34, 1], "resource": "Q58al2Dq"}]}], "module": "Rr093vn0", "moduleId": "Fxw5PaDj"}, {"docLink": "7kOAuPaz", "groups": [{"group": "qxxzrzaX", "groupId": "spu0QfAb", "permissions": [{"allowedActions": [18, 44, 33], "resource": "O6XP3XuQ"}, {"allowedActions": [47, 41, 50], "resource": "1XvS1kuN"}, {"allowedActions": [39, 56, 16], "resource": "nLMoUBL1"}]}, {"group": "9Wv1KZkf", "groupId": "KEAlXHm1", "permissions": [{"allowedActions": [0, 51, 83], "resource": "zLLgMJvI"}, {"allowedActions": [51, 4, 90], "resource": "XnkwaSRr"}, {"allowedActions": [4, 68, 22], "resource": "aSkzPSGK"}]}, {"group": "n4fdzKIk", "groupId": "InUOIppK", "permissions": [{"allowedActions": [54, 83, 0], "resource": "njpwgvm1"}, {"allowedActions": [29, 48, 58], "resource": "TIDOLAAv"}, {"allowedActions": [45, 15, 66], "resource": "nJkd9Kch"}]}], "module": "OSxATpoC", "moduleId": "0Dm16KR3"}]}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
samples/cli/sample-apps Iam adminDeleteConfigPermissionsByGroup \
    --body '{"groupId": "qPFmqF5O", "moduleId": "aLsy5m7F"}' \
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
    --body '[{"field": "T7iuMIBi", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["buioGUr4", "QGLY44Ce", "N4KesSA3"], "preferRegex": true, "regex": "gBmwA3Rv"}, "blockedWord": ["DFcY4qK7", "Ate8ZmdY", "m0GJEaNv"], "description": [{"language": "BlAHbsrZ", "message": ["DdPCPbiR", "JwFLcUIj", "14kOJrBV"]}, {"language": "qVxIR18c", "message": ["bGnXSLwn", "p4XhHWbt", "CbbJ7xDX"]}, {"language": "zTNFdt58", "message": ["QIQWqe7v", "pUR1GQgK", "HuEInPW1"]}], "isCustomRegex": false, "letterCase": "3cNf5xWM", "maxLength": 62, "maxRepeatingAlphaNum": 97, "maxRepeatingSpecialCharacter": 89, "minCharType": 30, "minLength": 32, "regex": "flHS6XKR", "specialCharacterLocation": "hmBoVive", "specialCharacters": ["q8fgjuru", "5EwUlOdN", "sx8Qp5lR"]}}, {"field": "exRbkhTc", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["8LdLPDsn", "HJbGQtZf", "AbBOecia"], "preferRegex": false, "regex": "HivSZ05W"}, "blockedWord": ["sXyb6KxH", "GFwVQt04", "ouGvVrX5"], "description": [{"language": "rZ4hvJhI", "message": ["oZRyIAES", "i04eb6hy", "gQRHGFFd"]}, {"language": "SrGsuoWn", "message": ["ykkgV0Sk", "xYIUrwlS", "KPl6SFpL"]}, {"language": "pKpzShlo", "message": ["PdxvfY0l", "MDr0xY1K", "LnJpi34T"]}], "isCustomRegex": true, "letterCase": "EhzwwL34", "maxLength": 32, "maxRepeatingAlphaNum": 4, "maxRepeatingSpecialCharacter": 84, "minCharType": 11, "minLength": 18, "regex": "qlfPyntq", "specialCharacterLocation": "EDDY7s4G", "specialCharacters": ["if40mZ5Q", "Olep6iBH", "mfC2WoSp"]}}, {"field": "91f0Dfr3", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["CYq84p9k", "Rl3Nfyl9", "QIKYWUzs"], "preferRegex": true, "regex": "9crjf5ar"}, "blockedWord": ["yGdHqRKw", "sQmZ6Vat", "gE2YdAZT"], "description": [{"language": "ZPYNerYc", "message": ["tNXkjfHm", "LxoQlFKp", "4BoH9Fsj"]}, {"language": "IPDASAcG", "message": ["dn0JkVXG", "kCCXn5ZN", "RgHOGaXK"]}, {"language": "AQvq2yyu", "message": ["kHgz2q9R", "Noq9TGuX", "Ui1QYCPY"]}], "isCustomRegex": true, "letterCase": "1PlICEU4", "maxLength": 30, "maxRepeatingAlphaNum": 33, "maxRepeatingSpecialCharacter": 34, "minCharType": 100, "minLength": 82, "regex": "lfSmOvrU", "specialCharacterLocation": "klF2hxFw", "specialCharacters": ["yYiScgtK", "yeMQW4JA", "JTjXF7US"]}}]' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'CAThzCtq' \
    > test.out 2>&1
eval_tap $? 114 'AdminResetInputValidations' test.out

#- 115 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'sbdaJk0B' \
    --before '6LfCDtAe' \
    --limit '96' \
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
    --body '{"ageRestriction": 92, "enable": false}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 118 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminGetListCountryAgeRestrictionV3' test.out

#- 119 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'NSTdVYR0' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 50}' \
    > test.out 2>&1
eval_tap $? 119 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 120 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'lavXd9W9' \
    --limit '94' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetBannedUsersV3' test.out

#- 121 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "7OTQ4GhK", "comment": "NWQuCCnY", "endDate": "5TlgYkHa", "reason": "oMDD5nAP", "skipNotif": true, "userIds": ["eHHkJXUP", "weOWsecO", "yUG30oYj"]}' \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "A9QUUsEA", "userId": "hgir1S53"}, {"banId": "S2SbI9JS", "userId": "hyDrDiUu"}, {"banId": "W1QVboU7", "userId": "hB6y27Kh"}]}' \
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
    --clientId 'GgOyAXxG' \
    --clientName 'sZe3YJhN' \
    --clientType '1kjypnUK' \
    --limit '62' \
    --offset '67' \
    --skipLoginQueue 'false' \
    > test.out 2>&1
eval_tap $? 124 'AdminGetClientsByNamespaceV3' test.out

#- 125 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["osIzWD6t", "yppx46uI", "XJuCIQG8"], "baseUri": "fe0WonOP", "clientId": "4ZluZcrU", "clientName": "z0sR50pk", "clientPermissions": [{"action": 13, "resource": "1OGRS79h", "schedAction": 71, "schedCron": "T4yp3fDf", "schedRange": ["djMmuyft", "8DbAcJxd", "8EERXtrf"]}, {"action": 33, "resource": "UqdF80o9", "schedAction": 44, "schedCron": "UiINj76N", "schedRange": ["iwAqkRUo", "5XyNXcYw", "GtdJPgdZ"]}, {"action": 64, "resource": "3IBA2uMn", "schedAction": 59, "schedCron": "G9XKmKpm", "schedRange": ["EUtR1LtI", "ABCFOkls", "iAtpSPrY"]}], "clientPlatform": "olosckrp", "deletable": true, "description": "YZbHZykE", "modulePermissions": [{"moduleId": "5QmQSD0g", "selectedGroups": [{"groupId": "Aoj0r1aE", "selectedActions": [36, 58, 18]}, {"groupId": "Da41KV7g", "selectedActions": [79, 54, 82]}, {"groupId": "EEllaR3m", "selectedActions": [8, 54, 19]}]}, {"moduleId": "TX0Wup2S", "selectedGroups": [{"groupId": "kfCwwjJn", "selectedActions": [95, 3, 36]}, {"groupId": "Ylje9Bb6", "selectedActions": [80, 78, 43]}, {"groupId": "C0CRhiVC", "selectedActions": [76, 24, 31]}]}, {"moduleId": "AgpbPDz9", "selectedGroups": [{"groupId": "SPoofSb9", "selectedActions": [74, 75, 94]}, {"groupId": "MYqJeh1Q", "selectedActions": [36, 65, 64]}, {"groupId": "z8ozZUXb", "selectedActions": [6, 46, 1]}]}], "namespace": "8yDJ2Lif", "oauthAccessTokenExpiration": 28, "oauthAccessTokenExpirationTimeUnit": "MpfQLDgL", "oauthClientType": "nipgxlgt", "oauthRefreshTokenExpiration": 44, "oauthRefreshTokenExpirationTimeUnit": "XiszmmnA", "parentNamespace": "k29xQNF4", "redirectUri": "IvQ5t4um", "scopes": ["ZbSkasNG", "J8OIfOBH", "2l8z8nEI"], "secret": "ssmY1QIB", "skipLoginQueue": true, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 125 'AdminCreateClientV3' test.out

#- 126 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId '0TSd8qZ8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 126 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 127 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'i2cRIq8U' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteClientV3' test.out

#- 128 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId '22OdTVlk' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["KE8x8MMT", "wbMWTngM", "aZFB3agG"], "baseUri": "gFRyuwdC", "clientName": "eCqtpDqT", "clientPermissions": [{"action": 12, "resource": "ZzAZ1uyU", "schedAction": 56, "schedCron": "1ErZ8XaR", "schedRange": ["yxHQAd5l", "M63ZbksU", "GmzXsUOz"]}, {"action": 39, "resource": "OKlLY24B", "schedAction": 52, "schedCron": "lqddLBio", "schedRange": ["gEIaaIW6", "5cRHfrw0", "hN9lflev"]}, {"action": 71, "resource": "7Qa67tof", "schedAction": 51, "schedCron": "7UWc97am", "schedRange": ["cgrSRm2L", "uquaM4Od", "Z5Ux8kJt"]}], "clientPlatform": "KTWQmemq", "deletable": true, "description": "NHo6W3lC", "modulePermissions": [{"moduleId": "uNNiomMK", "selectedGroups": [{"groupId": "8kVECizK", "selectedActions": [16, 15, 95]}, {"groupId": "Nuv4oE3X", "selectedActions": [79, 44, 100]}, {"groupId": "TAHIIROp", "selectedActions": [73, 71, 59]}]}, {"moduleId": "rKS0zBVf", "selectedGroups": [{"groupId": "7eqRNvXf", "selectedActions": [33, 77, 59]}, {"groupId": "KyNy2VFf", "selectedActions": [54, 64, 9]}, {"groupId": "u6KleJNY", "selectedActions": [85, 91, 11]}]}, {"moduleId": "iYsSRZzs", "selectedGroups": [{"groupId": "DsL4A4b1", "selectedActions": [83, 61, 6]}, {"groupId": "TO8zRZvz", "selectedActions": [99, 78, 48]}, {"groupId": "1FFVuvgk", "selectedActions": [32, 15, 48]}]}], "namespace": "zQg06sue", "oauthAccessTokenExpiration": 97, "oauthAccessTokenExpirationTimeUnit": "lvlm78wC", "oauthRefreshTokenExpiration": 37, "oauthRefreshTokenExpirationTimeUnit": "3UhUuWSC", "redirectUri": "PkOMbR3N", "scopes": ["5RR9RtP4", "JV9dvwRy", "BZ97GAeP"], "skipLoginQueue": false, "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateClientV3' test.out

#- 129 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'gW7QNwVT' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 69, "resource": "ptypA2Un"}, {"action": 49, "resource": "vb1S2sNZ"}, {"action": 8, "resource": "gjuSJmGS"}]}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientPermissionV3' test.out

#- 130 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'Ckb2bmxz' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 51, "resource": "PzjDxuJ4"}, {"action": 15, "resource": "k8ExHdmi"}, {"action": 60, "resource": "5rAkj1jx"}]}' \
    > test.out 2>&1
eval_tap $? 130 'AdminAddClientPermissionsV3' test.out

#- 131 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '100' \
    --clientId 'SpWjfYkn' \
    --namespace $AB_NAMESPACE \
    --resource 'FNRFzLuz' \
    > test.out 2>&1
eval_tap $? 131 'AdminDeleteClientPermissionV3' test.out

#- 132 AdminGetConfigValueV3
samples/cli/sample-apps Iam adminGetConfigValueV3 \
    --configKey 'whwFlEIF' \
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
    --body '{"blacklist": ["DdcX0JJ6", "T4a0KMCu", "96bQcQAm"]}' \
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
    --limit '37' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 138 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 139 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ZqjLLXsc' \
    > test.out 2>&1
eval_tap $? 139 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 140 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'yLpCxOO8' \
    --body '{"ACSURL": "WNZRkCT9", "AWSCognitoRegion": "Or3Q0QHR", "AWSCognitoUserPool": "1GBjDKDq", "AllowedClients": ["lKjNQVad", "Q0LM6ejS", "smjnTFCz"], "AppId": "RKC50K7F", "AuthorizationEndpoint": "4oPZEZth", "ClientId": "MCXJu3HT", "Environment": "fE4556Jp", "FederationMetadataURL": "tT7m9Bw4", "GenericOauthFlow": false, "IsActive": false, "Issuer": "0ppWMBpY", "JWKSEndpoint": "2qSOMVVy", "KeyID": "NNk0fTMT", "NetflixCertificates": {"encryptedPrivateKey": "6V8qH8YY", "encryptedPrivateKeyName": "hT4S96mo", "publicCertificate": "Rme4f1Yb", "publicCertificateName": "4GwmVmes", "rootCertificate": "rap2k0w0", "rootCertificateName": "UEgHxbmA"}, "OrganizationId": "kEHQHxBo", "PlatformName": "ClUEuJlK", "RedirectUri": "vaAbbGH0", "RegisteredDomains": [{"affectedClientIDs": ["e27dgh3F", "R7JcimgP", "B9Cvz601"], "domain": "7DZc7Zii", "namespaces": ["mocLqHKE", "paQUWVVH", "7MFY2sgB"], "roleId": "mewRLi0U"}, {"affectedClientIDs": ["14Z1pm0Q", "E1D0kmkD", "sp8w3FkM"], "domain": "bsZvsgGB", "namespaces": ["Hq43hFeu", "bKwOOjlW", "eOpDFMfM"], "roleId": "DOjrdPpz"}, {"affectedClientIDs": ["I3piSrUM", "lCV8FO4Z", "vQjGEInZ"], "domain": "7zbTSo4A", "namespaces": ["rv9PVTR0", "xHeAxiSh", "oWCCJdI7"], "roleId": "2PlhuYXt"}], "Secret": "PP40sJ6U", "TeamID": "bbcBLyoZ", "TokenAuthenticationType": "Apt3EXZa", "TokenClaimsMapping": {"2c9qMGW6": "ht6l6h11", "Qx7T34w2": "vCR24SZP", "QOUKmNxr": "hxVvxMAT"}, "TokenEndpoint": "8tRcNn9p", "UserInfoEndpoint": "E9cxJHwB", "UserInfoHTTPMethod": "EyTNbzgD", "scopes": ["Y0bcIV5B", "oB33rmN0", "osohL4Tw"]}' \
    > test.out 2>&1
eval_tap $? 140 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 141 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'XG9ohNXC' \
    > test.out 2>&1
eval_tap $? 141 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 142 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'NQm5msBm' \
    --body '{"ACSURL": "C45QuGfm", "AWSCognitoRegion": "4BkiTqPo", "AWSCognitoUserPool": "uegmfEz8", "AllowedClients": ["RAaem9p1", "CWYeiGDk", "I7wsP50q"], "AppId": "P9OuvxpV", "AuthorizationEndpoint": "YAQw445N", "ClientId": "USg44ycT", "Environment": "CAOoecM8", "FederationMetadataURL": "6qbjG3rO", "GenericOauthFlow": false, "IsActive": true, "Issuer": "3ndJnGBM", "JWKSEndpoint": "hwgzmY9H", "KeyID": "D5Cp6Ki4", "NetflixCertificates": {"encryptedPrivateKey": "jBWbYZWw", "encryptedPrivateKeyName": "7b2NBrVQ", "publicCertificate": "9oZNMkgD", "publicCertificateName": "i4VGAGFn", "rootCertificate": "cQeRKsNi", "rootCertificateName": "hk0hYql4"}, "OrganizationId": "0yTMAudW", "PlatformName": "h5H1Tf1b", "RedirectUri": "gDLKYtv4", "RegisteredDomains": [{"affectedClientIDs": ["44KCntuy", "uEHqHouL", "IMYkY5Ze"], "domain": "8spyemQr", "namespaces": ["XPoT0wdf", "u9S4mc1d", "o4NCCyaC"], "roleId": "45jgVRRc"}, {"affectedClientIDs": ["FFFLPbED", "p6ao4QF6", "p63MIrbP"], "domain": "AvQmb5I0", "namespaces": ["KiSVClyZ", "pDy1d5PL", "oxdvnYPj"], "roleId": "ncyaGZQo"}, {"affectedClientIDs": ["OX3ekoZx", "bCof0swW", "LU8aAfWi"], "domain": "Bg8pQA2B", "namespaces": ["s5EqtLoU", "50Fi9MXr", "0hGpw29K"], "roleId": "XABFlwrK"}], "Secret": "meFeegol", "TeamID": "voAOrCVl", "TokenAuthenticationType": "zfwtZAVD", "TokenClaimsMapping": {"ufq6Wfs3": "69mx7jRy", "g6oOu0HC": "Pk2mbVuX", "pbSggvES": "zUThdr1g"}, "TokenEndpoint": "sv11t9t1", "UserInfoEndpoint": "JSfqyPT8", "UserInfoHTTPMethod": "LO9fgSZM", "scopes": ["LCgEXTYb", "ht4xS5aA", "FrNxd4BF"]}' \
    > test.out 2>&1
eval_tap $? 142 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 143 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'iuEcu2Dj' \
    --body '{"affectedClientIDs": ["fLZ8TYZu", "djOsNOFi", "90MbbNx8"], "assignedNamespaces": ["egZm1keD", "w6AxxMrI", "GIgTP33k"], "domain": "v8myCEq0", "roleId": "hEmXDcjN"}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 144 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId '82EsWy8f' \
    --body '{"domain": "ALbrkQEX"}' \
    > test.out 2>&1
eval_tap $? 144 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 145 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'sJoJQgCo' \
    > test.out 2>&1
eval_tap $? 145 'RetrieveSSOLoginPlatformCredential' test.out

#- 146 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId '8NZIUZqy' \
    --body '{"acsUrl": "Kw2xCjmf", "apiKey": "mx5iMelf", "appId": "Ku9sBc7d", "federationMetadataUrl": "qicXTRhY", "isActive": false, "redirectUri": "bFmfHOsO", "secret": "l3rMba46", "ssoUrl": "cKUDyNG8"}' \
    > test.out 2>&1
eval_tap $? 146 'AddSSOLoginPlatformCredential' test.out

#- 147 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Rg95ptkQ' \
    > test.out 2>&1
eval_tap $? 147 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 148 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'FSA4UEM1' \
    --body '{"acsUrl": "do2DVJG3", "apiKey": "X7vSm3f3", "appId": "bGuIMxhp", "federationMetadataUrl": "t4sD4LMZ", "isActive": false, "redirectUri": "9Im5WfmZ", "secret": "n2hQM7Qm", "ssoUrl": "05quDtRD"}' \
    > test.out 2>&1
eval_tap $? 148 'UpdateSSOPlatformCredential' test.out

#- 149 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'QoJQT0eE' \
    --rawPID 'true' \
    --body '{"platformUserIds": ["tiEsSQah", "j2jeZPRV", "ODZVVR7N"]}' \
    > test.out 2>&1
eval_tap $? 149 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 150 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId '86rHtegH' \
    --platformUserId 'tUUqGKRD' \
    > test.out 2>&1
eval_tap $? 150 'AdminGetUserByPlatformUserIDV3' test.out

#- 151 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'aNKQvWtt' \
    --after '90' \
    --before '100' \
    --limit '32' \
    > test.out 2>&1
eval_tap $? 151 'GetAdminUsersByRoleIdV3' test.out

#- 152 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'mhXHM6XX' \
    > test.out 2>&1
eval_tap $? 152 'AdminGetUserByEmailAddressV3' test.out

#- 153 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'xJQyxHlq' \
    --body '{"bulkUserId": ["MoF2uo3n", "AeqA2sqs", "e1p4zKh4"]}' \
    > test.out 2>&1
eval_tap $? 153 'AdminGetBulkUserBanV3' test.out

#- 154 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["Y4R1ygkF", "hykq6cjR", "y4Qxouoz"]}' \
    > test.out 2>&1
eval_tap $? 154 'AdminListUserIDByUserIDsV3' test.out

#- 155 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["BXPzB2N1", "PqlZZEWV", "i5Z8xSor"]}' \
    > test.out 2>&1
eval_tap $? 155 'AdminBulkGetUsersPlatform' test.out

#- 156 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["9euSyqDW", "I79btamh", "amyttuEz"], "isAdmin": false, "namespace": "OMlbGk3W", "roles": ["4ADm9Cym", "e60utOjv", "GFQk0ovz"]}' \
    > test.out 2>&1
eval_tap $? 156 'AdminInviteUserV3' test.out

#- 157 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '25' \
    --platformUserId 'JlMbyISC' \
    --platformId 'OvelxBCy' \
    > test.out 2>&1
eval_tap $? 157 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 158 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 158 'AdminListUsersV3' test.out

#- 159 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by '5CoSabLb' \
    --endDate '2WDDdnUe' \
    --includeTotal 'true' \
    --limit '35' \
    --offset '99' \
    --platformBy '7dMZ9BnE' \
    --platformId 'jHOWxVmC' \
    --query 'wGB7s0aL' \
    --skipLoginQueue 'true' \
    --startDate '1rthyFnM' \
    --testAccount 'false' \
    > test.out 2>&1
eval_tap $? 159 'AdminSearchUserV3' test.out

#- 160 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["SZ38TQAR", "Hgpo9Lw7", "x9vBL6Rh"]}' \
    > test.out 2>&1
eval_tap $? 160 'AdminGetBulkUserByEmailAddressV3' test.out

#- 161 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'XTQbK1Y6' \
    > test.out 2>&1
eval_tap $? 161 'AdminGetUserByUserIdV3' test.out

#- 162 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'cmrPagDo' \
    --body '{"avatarUrl": "IhEHmkN1", "country": "iaX0sFYb", "dateOfBirth": "Oe73elNV", "displayName": "wdR4CQtE", "languageTag": "qAUUhZMs", "skipLoginQueue": true, "uniqueDisplayName": "E2zgmRgJ", "userName": "p0nDdipr"}' \
    > test.out 2>&1
eval_tap $? 162 'AdminUpdateUserV3' test.out

#- 163 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'dRcPU1MW' \
    --activeOnly 'false' \
    --after 'sYM1rnqh' \
    --before 'TI1R4fuZ' \
    --limit '35' \
    > test.out 2>&1
eval_tap $? 163 'AdminGetUserBanV3' test.out

#- 164 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'OZ3L0DMa' \
    --body '{"ban": "o7hFnVM0", "comment": "JLas02Tr", "endDate": "fHLSiy2v", "reason": "B7TVBNwg", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 164 'AdminBanUserV3' test.out

#- 165 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId '7UGCPc4C' \
    --namespace $AB_NAMESPACE \
    --userId 'J325lFBd' \
    --body '{"enabled": false, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateUserBanV3' test.out

#- 166 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'YhlDhaOs' \
    --body '{"context": "pMBIpWg3", "emailAddress": "WD8HEvWM", "languageTag": "RRjCOjJD"}' \
    > test.out 2>&1
eval_tap $? 166 'AdminSendVerificationCodeV3' test.out

#- 167 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'genu9Elo' \
    --body '{"Code": "RnAg3p6p", "ContactType": "cgY26MBp", "LanguageTag": "JRPui6gr", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 167 'AdminVerifyAccountV3' test.out

#- 168 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'L9LHb5nl' \
    > test.out 2>&1
eval_tap $? 168 'GetUserVerificationCode' test.out

#- 169 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ebs1Wu9x' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetUserDeletionStatusV3' test.out

#- 170 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jkSETawy' \
    --body '{"deletionDate": 65, "enabled": true}' \
    > test.out 2>&1
eval_tap $? 170 'AdminUpdateUserDeletionStatusV3' test.out

#- 171 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'fGolttCo' \
    --body '{"code": "0VFq1tAq", "country": "PobGHIB2", "dateOfBirth": "UVFzR9dK", "displayName": "7DmNVkLH", "emailAddress": "hGCkKvJf", "password": "Aj7o0g1w", "uniqueDisplayName": "oK8W5RGy", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 171 'AdminUpgradeHeadlessAccountV3' test.out

#- 172 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'lmVKup0k' \
    > test.out 2>&1
eval_tap $? 172 'AdminDeleteUserInformationV3' test.out

#- 173 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'kMCjtWPs' \
    --after '0.466330954530791' \
    --before '0.329643811766102' \
    --limit '90' \
    > test.out 2>&1
eval_tap $? 173 'AdminGetUserLoginHistoriesV3' test.out

#- 174 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'pgLUmZmI' \
    --body '{"languageTag": "LWiS8BYW", "newPassword": "rxo2W21n", "oldPassword": "VX2KGace"}' \
    > test.out 2>&1
eval_tap $? 174 'AdminResetPasswordV3' test.out

#- 175 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId '7G3Sz0ew' \
    --body '{"Permissions": [{"Action": 53, "Resource": "68DnYCKY", "SchedAction": 85, "SchedCron": "pZJkQWNF", "SchedRange": ["5APhUaIU", "fE07PfSE", "gXuOnBya"]}, {"Action": 40, "Resource": "YQnnaTkS", "SchedAction": 78, "SchedCron": "NcWJA2qL", "SchedRange": ["RxXqKbbV", "bsCTvMSm", "RSEkfULH"]}, {"Action": 48, "Resource": "qJ9YBG6c", "SchedAction": 1, "SchedCron": "4uryKqz1", "SchedRange": ["3CLtnRVa", "nKKDbZ0Q", "wdTdcdAW"]}]}' \
    > test.out 2>&1
eval_tap $? 175 'AdminUpdateUserPermissionV3' test.out

#- 176 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'YEakvTgm' \
    --body '{"Permissions": [{"Action": 1, "Resource": "SleCp4VP", "SchedAction": 69, "SchedCron": "gZQk1i9o", "SchedRange": ["ilYORrvV", "sQ6UD25R", "JoykYTWi"]}, {"Action": 60, "Resource": "IUQ9wiMZ", "SchedAction": 58, "SchedCron": "mHdSeTMx", "SchedRange": ["71Ottoda", "P5xfpCXL", "JTvMC1y3"]}, {"Action": 99, "Resource": "uX7uqE8s", "SchedAction": 61, "SchedCron": "uzFe6Zo5", "SchedRange": ["zwPxQzYz", "y9l4kGZ3", "o6Db7o1J"]}]}' \
    > test.out 2>&1
eval_tap $? 176 'AdminAddUserPermissionsV3' test.out

#- 177 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId '9OZ1OlA2' \
    --body '[{"Action": 3, "Resource": "eQPgUdIP"}, {"Action": 85, "Resource": "RoMhRzE6"}, {"Action": 66, "Resource": "275L0oDn"}]' \
    > test.out 2>&1
eval_tap $? 177 'AdminDeleteUserPermissionBulkV3' test.out

#- 178 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '36' \
    --namespace $AB_NAMESPACE \
    --resource 'WjDS1Fqu' \
    --userId 'weNsfNwU' \
    > test.out 2>&1
eval_tap $? 178 'AdminDeleteUserPermissionV3' test.out

#- 179 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId '13hWkuhj' \
    --after 'IkwR2PMK' \
    --before 'lL8YvWRg' \
    --limit '84' \
    --platformId '62z5pT6A' \
    > test.out 2>&1
eval_tap $? 179 'AdminGetUserPlatformAccountsV3' test.out

#- 180 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'kLQfji86' \
    > test.out 2>&1
eval_tap $? 180 'AdminGetListJusticePlatformAccounts' test.out

#- 181 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'wx27EJVg' \
    --userId 'LCftEMqD' \
    > test.out 2>&1
eval_tap $? 181 'AdminGetUserMapping' test.out

#- 182 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'vzTpQVix' \
    --userId 'I6qNkyCz' \
    > test.out 2>&1
eval_tap $? 182 'AdminCreateJusticeUser' test.out

#- 183 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'Efh9MovJ' \
    --skipConflict 'true' \
    --body '{"platformId": "cJyL1TJn", "platformUserId": "JHQpUQqD"}' \
    > test.out 2>&1
eval_tap $? 183 'AdminLinkPlatformAccount' test.out

#- 184 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'wgrv6Jlo' \
    --userId 'OmGIhen2' \
    --body '{"platformNamespace": "AFWdfGV0"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminPlatformUnlinkV3' test.out

#- 185 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'VG64YQzR' \
    --userId 'ntjhBrEw' \
    --ticket 'NdHVLesQ' \
    > test.out 2>&1
eval_tap $? 185 'AdminPlatformLinkV3' test.out

#- 186 AdminDeleteUserLinkingHistoryByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingHistoryByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId '78CCGgjB' \
    --userId 'cQoYjmwt' \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteUserLinkingHistoryByPlatformIDV3' test.out

#- 187 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'UX4CT7eO' \
    --userId 'hT6EEeQt' \
    --platformToken 'cy7ZQvHC' \
    > test.out 2>&1
eval_tap $? 187 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 188 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'gV9NkbpG' \
    --userId 'quwul731' \
    > test.out 2>&1
eval_tap $? 188 'AdminGetUserSinglePlatformAccount' test.out

#- 189 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'mSLpxNqJ' \
    --body '["SaPivZkd", "SUL7fE4R", "952pWbBE"]' \
    > test.out 2>&1
eval_tap $? 189 'AdminDeleteUserRolesV3' test.out

#- 190 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Ag6MAZxU' \
    --body '[{"namespace": "OjpE3VOY", "roleId": "h69Yzigu"}, {"namespace": "4hVH3kLW", "roleId": "qwso7PqC"}, {"namespace": "t8OYDdyX", "roleId": "AifxViNj"}]' \
    > test.out 2>&1
eval_tap $? 190 'AdminSaveUserRoleV3' test.out

#- 191 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'rPZFOmDJ' \
    --userId 'FVZ4tNwf' \
    > test.out 2>&1
eval_tap $? 191 'AdminAddUserRoleV3' test.out

#- 192 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId '5iMhuIHt' \
    --userId 'ULelj7vL' \
    > test.out 2>&1
eval_tap $? 192 'AdminDeleteUserRoleV3' test.out

#- 193 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'x2au0H3u' \
    --body '{"enabled": true, "reason": "GHCfbNDH"}' \
    > test.out 2>&1
eval_tap $? 193 'AdminUpdateUserStatusV3' test.out

#- 194 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'seQzt8cU' \
    --body '{"emailAddress": "FB4NdF5W", "password": "Dv6mp2vK"}' \
    > test.out 2>&1
eval_tap $? 194 'AdminTrustlyUpdateUserIdentity' test.out

#- 195 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'fttsHtY4' \
    > test.out 2>&1
eval_tap $? 195 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 196 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'ui1grDum' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "RGBYPdY7"}' \
    > test.out 2>&1
eval_tap $? 196 'AdminUpdateClientSecretV3' test.out

#- 197 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'DWV0wotk' \
    --before 'g0NnVGwV' \
    --isWildcard 'true' \
    --limit '28' \
    > test.out 2>&1
eval_tap $? 197 'AdminGetRolesV3' test.out

#- 198 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": false, "managers": [{"displayName": "AVJzxC4u", "namespace": "aubWfAcq", "userId": "EQbOvyZ4"}, {"displayName": "DViGDo71", "namespace": "Y7qws79R", "userId": "bm4y1A72"}, {"displayName": "wfrPd9ns", "namespace": "BEa99B4N", "userId": "Eh6oSA8t"}], "members": [{"displayName": "vBjzj5Ot", "namespace": "85QvBwFD", "userId": "Ya98YVIH"}, {"displayName": "qGeIsflq", "namespace": "NL8O2jq9", "userId": "tY5BFBdt"}, {"displayName": "QJAbUZFI", "namespace": "zvUUsBqi", "userId": "ug6Oqi35"}], "permissions": [{"action": 51, "resource": "F9RKYSvw", "schedAction": 73, "schedCron": "1Km2WxqB", "schedRange": ["8vh2Dw5h", "3eBCLLyK", "xK8EGxWc"]}, {"action": 14, "resource": "drs5whpF", "schedAction": 14, "schedCron": "INQklHC4", "schedRange": ["uUJSkfKU", "gyJsPJr3", "qNvrIV1Q"]}, {"action": 20, "resource": "jy3S87UP", "schedAction": 73, "schedCron": "5NG2qWe0", "schedRange": ["E0LpsFeb", "j4ehkTHZ", "8FCTER8q"]}], "roleName": "k1ahs6qY"}' \
    > test.out 2>&1
eval_tap $? 198 'AdminCreateRoleV3' test.out

#- 199 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'QrdXyegu' \
    > test.out 2>&1
eval_tap $? 199 'AdminGetRoleV3' test.out

#- 200 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'TXLvn7q5' \
    > test.out 2>&1
eval_tap $? 200 'AdminDeleteRoleV3' test.out

#- 201 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId '36xdVhqV' \
    --body '{"deletable": false, "isWildcard": true, "roleName": "BP0cPi3U"}' \
    > test.out 2>&1
eval_tap $? 201 'AdminUpdateRoleV3' test.out

#- 202 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'zkFbb3Kv' \
    > test.out 2>&1
eval_tap $? 202 'AdminGetRoleAdminStatusV3' test.out

#- 203 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'MVZaTkBU' \
    > test.out 2>&1
eval_tap $? 203 'AdminUpdateAdminRoleStatusV3' test.out

#- 204 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'YeyhCFAZ' \
    > test.out 2>&1
eval_tap $? 204 'AdminRemoveRoleAdminV3' test.out

#- 205 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'uSqqoK8G' \
    --after '1bvPENta' \
    --before 'l7VpwuFJ' \
    --limit '81' \
    > test.out 2>&1
eval_tap $? 205 'AdminGetRoleManagersV3' test.out

#- 206 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'FQoac8l2' \
    --body '{"managers": [{"displayName": "AlItz5fq", "namespace": "xKMLFFy4", "userId": "4nVl5WDz"}, {"displayName": "ak36ep5i", "namespace": "O1Zb7sSB", "userId": "p3Nim6RZ"}, {"displayName": "bpSNQgNg", "namespace": "N1x58i2P", "userId": "mycsdTZM"}]}' \
    > test.out 2>&1
eval_tap $? 206 'AdminAddRoleManagersV3' test.out

#- 207 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId '5UWa9hKV' \
    --body '{"managers": [{"displayName": "Oxc1tABb", "namespace": "8jWDp9CV", "userId": "ROA9iNWw"}, {"displayName": "8IRk2vWO", "namespace": "tLsd4IJI", "userId": "Ks6slhjN"}, {"displayName": "7Ux5faGw", "namespace": "cgEfXafD", "userId": "ngQz8m8z"}]}' \
    > test.out 2>&1
eval_tap $? 207 'AdminRemoveRoleManagersV3' test.out

#- 208 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 's8wjAugc' \
    --after 'sZBNEx5C' \
    --before 'zPiUB3L1' \
    --limit '7' \
    > test.out 2>&1
eval_tap $? 208 'AdminGetRoleMembersV3' test.out

#- 209 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'zTRuMRxX' \
    --body '{"members": [{"displayName": "bh76rHwp", "namespace": "R1WCgdSB", "userId": "rNWSU2lx"}, {"displayName": "0zmh256K", "namespace": "JThxfjuL", "userId": "GYwUeByZ"}, {"displayName": "jLfoE2QY", "namespace": "BE0E1ck6", "userId": "Q6F9ZuKu"}]}' \
    > test.out 2>&1
eval_tap $? 209 'AdminAddRoleMembersV3' test.out

#- 210 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'HgDmBcfJ' \
    --body '{"members": [{"displayName": "BAVolhPp", "namespace": "yvZ6hPJU", "userId": "iwyOyXUK"}, {"displayName": "wObN6E4M", "namespace": "aCu9Q8Vq", "userId": "mSw89Rgi"}, {"displayName": "p7sP2A0I", "namespace": "TQVXCsNY", "userId": "5CN3DB4Q"}]}' \
    > test.out 2>&1
eval_tap $? 210 'AdminRemoveRoleMembersV3' test.out

#- 211 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'Oq7d0cPf' \
    --body '{"permissions": [{"action": 8, "resource": "2wBpRmHt", "schedAction": 81, "schedCron": "Pgqz7cAp", "schedRange": ["RwOTowIL", "lLovgOiJ", "PgY3IBP6"]}, {"action": 63, "resource": "3PtBPb1I", "schedAction": 94, "schedCron": "xFx9waBn", "schedRange": ["W8tWHIzX", "aVFPqXBr", "nStjP8mu"]}, {"action": 26, "resource": "dv1ghvcV", "schedAction": 4, "schedCron": "F14LcnPN", "schedRange": ["XW6g1Eoc", "1vF3l135", "T5YaOXfu"]}]}' \
    > test.out 2>&1
eval_tap $? 211 'AdminUpdateRolePermissionsV3' test.out

#- 212 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId '1roGinMn' \
    --body '{"permissions": [{"action": 94, "resource": "k7bK99Qb", "schedAction": 39, "schedCron": "umNkoj1k", "schedRange": ["KjtARDVi", "FNCqVbYt", "kxciUmmL"]}, {"action": 71, "resource": "jdPDOvvd", "schedAction": 46, "schedCron": "EoMQMX6n", "schedRange": ["vwpZoF5z", "XaEeRQCA", "iK53bHra"]}, {"action": 45, "resource": "CQ5UyETH", "schedAction": 38, "schedCron": "Phaw5reJ", "schedRange": ["cHZvrSVt", "kAmq9Sx2", "xylXDsbW"]}]}' \
    > test.out 2>&1
eval_tap $? 212 'AdminAddRolePermissionsV3' test.out

#- 213 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'gEeFRtlL' \
    --body '["YHEBlbze", "8HyK97CY", "TgZzSuiQ"]' \
    > test.out 2>&1
eval_tap $? 213 'AdminDeleteRolePermissionsV3' test.out

#- 214 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '25' \
    --resource 'fTo21sZW' \
    --roleId 'kJEVwc6Y' \
    > test.out 2>&1
eval_tap $? 214 'AdminDeleteRolePermissionV3' test.out

#- 215 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 215 'AdminGetMyUserV3' test.out

#- 216 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'CAgDDwsh' \
    --extendExp 'false' \
    --redirectUri '5vqWj5Kh' \
    --password 'dnqHiUBU' \
    --requestId 'GYmePlVY' \
    --userName 'hSEaWYIC' \
    > test.out 2>&1
eval_tap $? 216 'UserAuthenticationV3' test.out

#- 217 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'true' \
    --clientId 'F1KJPOjy' \
    --linkingToken 'qyEcB4ZC' \
    --password 'Y1sBp88t' \
    --username 'kb0krq5h' \
    > test.out 2>&1
eval_tap $? 217 'AuthenticationWithPlatformLinkV3' test.out

#- 218 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'wo50UWUi' \
    --extendExp 'true' \
    --linkingToken 'vLiBVeMO' \
    > test.out 2>&1
eval_tap $? 218 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 219 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'uebRD0kH' \
    > test.out 2>&1
eval_tap $? 219 'RequestOneTimeLinkingCodeV3' test.out

#- 220 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'x0p0iN2W' \
    > test.out 2>&1
eval_tap $? 220 'ValidateOneTimeLinkingCodeV3' test.out

#- 221 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'mgPbF9wa' \
    --isTransient 'false' \
    --clientId 'ApV8HPUM' \
    --oneTimeLinkCode 'gD9Qonk6' \
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
    --codeChallenge 'DEOT6LMm' \
    --codeChallengeMethod 'plain' \
    --clientId 'DaPHN2cJ' \
    > test.out 2>&1
eval_tap $? 224 'RequestTokenExchangeCodeV3' test.out

#- 225 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'gjYCKPel' \
    --userId 'TGK83OP2' \
    > test.out 2>&1
eval_tap $? 225 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 226 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'PaGfqSA2' \
    --includeGameNamespace 'false' \
    > test.out 2>&1
eval_tap $? 226 'RevokeUserV3' test.out

#- 227 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'd3VQwUBm' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'false' \
    --oneTimeLinkCode 'afSMcnSY' \
    --redirectUri '7Nh40T2Y' \
    --scope 'oC70DzXA' \
    --state 'DnFMyRuX' \
    --targetAuthPage 'KscuVlq6' \
    --useRedirectUriAsLoginUrlWhenLocked 'false' \
    --clientId 'hAFCUVJX' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 227 'AuthorizeV3' test.out

#- 228 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'wX6PYoBW' \
    > test.out 2>&1
eval_tap $? 228 'TokenIntrospectionV3' test.out

#- 229 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 229 'GetJWKSV3' test.out

#- 230 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'GKPsfN5A' \
    --factor '5bnMHArz' \
    --mfaToken 'qL8xqLLu' \
    > test.out 2>&1
eval_tap $? 230 'SendMFAAuthenticationCode' test.out

#- 231 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'CgsoRFju' \
    --mfaToken 's98Pw0cs' \
    > test.out 2>&1
eval_tap $? 231 'Change2faMethod' test.out

#- 232 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'Omqc7oJ8' \
    --factor '7jOhmEge' \
    --mfaToken 'p8jKLSFl' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 232 'Verify2faCode' test.out

#- 233 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'yPYSOTOF' \
    --userId 'TLfcgng4' \
    > test.out 2>&1
eval_tap $? 233 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 234 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId '4LA73qca' \
    --clientId 'DW9Ae5EX' \
    --redirectUri 'Aux7RKvN' \
    --requestId 'eOxuNGEO' \
    > test.out 2>&1
eval_tap $? 234 'AuthCodeRequestV3' test.out

#- 235 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'fHDnm4NI' \
    --additionalData 'ioAxjsha' \
    --clientId 'yonYhFY1' \
    --createHeadless 'true' \
    --deviceId 'uFhJH1vV' \
    --macAddress '4utabeS7' \
    --platformToken 'Wfiqadl3' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 235 'PlatformTokenGrantV3' test.out

#- 236 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 236 'GetRevocationListV3' test.out

#- 237 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'zpUCyLzS' \
    > test.out 2>&1
eval_tap $? 237 'TokenRevocationV3' test.out

#- 238 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'pspc' \
    --simultaneousTicket 'nFHaUA3T' \
    --nativePlatform 'epicgames' \
    --nativePlatformTicket 'P7kIZTT7' \
    > test.out 2>&1
eval_tap $? 238 'SimultaneousLoginV3' test.out

#- 239 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'xr0TCVJG' \
    --clientId 'lRTlc3fm' \
    --code 'rfTYm4ln' \
    --codeVerifier 'NMoIJfZk' \
    --extendNamespace 'AECvUITt' \
    --extendExp 'false' \
    --password 'vXeSwOoo' \
    --redirectUri '0pYqRscy' \
    --refreshToken 'AWJB7VWc' \
    --username 'WvBO6Xen' \
    --grantType 'refresh_token' \
    > test.out 2>&1
eval_tap $? 239 'TokenGrantV3' test.out

#- 240 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token '2Vv6Pzyg' \
    > test.out 2>&1
eval_tap $? 240 'VerifyTokenV3' test.out

#- 241 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'jbR8vS94' \
    --code 'ZyT61qwa' \
    --error 'fO1mvI1w' \
    --openidAssocHandle 'KRds2TRV' \
    --openidClaimedId 'lxGNWneD' \
    --openidIdentity 'YWvBIIXC' \
    --openidMode 'EQQKY1MN' \
    --openidNs 'hhBHfS8t' \
    --openidOpEndpoint 'tqZI9JGY' \
    --openidResponseNonce 'BEU2NVPb' \
    --openidReturnTo 'xTjJLEiS' \
    --openidSig 'G6re3n8p' \
    --openidSigned 'VgH6RXg1' \
    --state 'yGShdwmV' \
    > test.out 2>&1
eval_tap $? 241 'PlatformAuthenticationV3' test.out

#- 242 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'L67W6JAY' \
    --platformToken 'fgeYjtld' \
    > test.out 2>&1
eval_tap $? 242 'PlatformTokenRefreshV3' test.out

#- 243 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'X34KZpCD' \
    > test.out 2>&1
eval_tap $? 243 'PublicGetInputValidations' test.out

#- 244 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'ut3ujgID' \
    > test.out 2>&1
eval_tap $? 244 'PublicGetInputValidationByField' test.out

#- 245 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'lzp0OGKA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 245 'PublicGetCountryAgeRestrictionV3' test.out

#- 246 PublicGetConfigValueV3
samples/cli/sample-apps Iam publicGetConfigValueV3 \
    --configKey 'JwhIC0lC' \
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
    --clientId '1QPmyzMx' \
    > test.out 2>&1
eval_tap $? 249 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 250 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'rSgDbFhm' \
    --rawPID 'false' \
    --body '{"platformUserIds": ["hVf4Lqp9", "1EQXmNQQ", "JBZUBauC"]}' \
    > test.out 2>&1
eval_tap $? 250 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 251 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId '5PGyNBeg' \
    --platformUserId 'J3keIvyu' \
    > test.out 2>&1
eval_tap $? 251 'PublicGetUserByPlatformUserIDV3' test.out

#- 252 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'RelZML8v' \
    > test.out 2>&1
eval_tap $? 252 'PublicGetAsyncStatus' test.out

#- 253 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by '5p4Io3d1' \
    --limit '95' \
    --offset '16' \
    --platformBy 'z5DVOg02' \
    --platformId 'UIpliFmT' \
    --query 'ekuKLNQy' \
    > test.out 2>&1
eval_tap $? 253 'PublicSearchUserV3' test.out

#- 254 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "r7qY71cb", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "HjTQWTtS", "policyId": "ohrydVCw", "policyVersionId": "ekyHaGQt"}, {"isAccepted": false, "localizedPolicyVersionId": "CvsUWIuX", "policyId": "KnnsedHB", "policyVersionId": "GwZN81YP"}, {"isAccepted": true, "localizedPolicyVersionId": "nRkwRID4", "policyId": "u7zIIrIs", "policyVersionId": "6e4752r4"}], "authType": "7lXNITRV", "code": "0s6QjQ9D", "country": "aylMCUiu", "dateOfBirth": "se9IRtq6", "displayName": "rth8TMvF", "emailAddress": "fdz0sglk", "password": "wqwe9Bus", "reachMinimumAge": false, "uniqueDisplayName": "t18rMYmF"}' \
    > test.out 2>&1
eval_tap $? 254 'PublicCreateUserV3' test.out

#- 255 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'mJBUKUH9' \
    --query 'Y9F4WHoP' \
    > test.out 2>&1
eval_tap $? 255 'CheckUserAvailability' test.out

#- 256 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["iKBLUGkI", "YJNCP3yv", "p7sQECNA"]}' \
    > test.out 2>&1
eval_tap $? 256 'PublicBulkGetUsers' test.out

#- 257 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "v8TgeDTV", "languageTag": "hq3k29yk"}' \
    > test.out 2>&1
eval_tap $? 257 'PublicSendRegistrationCode' test.out

#- 258 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "k7mmEqEJ", "emailAddress": "D4uSAKUX"}' \
    > test.out 2>&1
eval_tap $? 258 'PublicVerifyRegistrationCode' test.out

#- 259 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "iO96Kisc", "languageTag": "NFVrcpR1"}' \
    > test.out 2>&1
eval_tap $? 259 'PublicForgotPasswordV3' test.out

#- 260 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'lw2jdXGZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 260 'GetAdminInvitationV3' test.out

#- 261 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'vYBT49Yy' \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "UNH0Vzi1", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "qexSryno", "policyId": "t4TYb8gk", "policyVersionId": "kuCO2RSO"}, {"isAccepted": true, "localizedPolicyVersionId": "aagliy02", "policyId": "iDXuXSE2", "policyVersionId": "TzTh6d5v"}, {"isAccepted": false, "localizedPolicyVersionId": "IomI3Tfh", "policyId": "3fIq5sGl", "policyVersionId": "ulNVYMym"}], "authType": "PD2cVoMr", "code": "7pJNHCbJ", "country": "YFNrYL9W", "dateOfBirth": "Va3ltBwl", "displayName": "KH5jC6zf", "emailAddress": "0lz24K5e", "password": "gV1uwVQT", "reachMinimumAge": false, "uniqueDisplayName": "8jDSbIQ2"}' \
    > test.out 2>&1
eval_tap $? 261 'CreateUserFromInvitationV3' test.out

#- 262 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "ZzqnK6fi", "country": "jympnsKd", "dateOfBirth": "4WBEmasC", "displayName": "tAoY0HBV", "languageTag": "e6WhIEl7", "uniqueDisplayName": "o2AJj9o6", "userName": "kvBtd1HA"}' \
    > test.out 2>&1
eval_tap $? 262 'UpdateUserV3' test.out

#- 263 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "kMudx5LL", "country": "mX4ih35W", "dateOfBirth": "vd2waMl3", "displayName": "Y5BxVg47", "languageTag": "9n3PHGar", "uniqueDisplayName": "f2Cij8hP", "userName": "Nq3fWSzX"}' \
    > test.out 2>&1
eval_tap $? 263 'PublicPartialUpdateUserV3' test.out

#- 264 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "4gvYoQHl", "emailAddress": "ZvsS9GWT", "languageTag": "57Sx1JoA"}' \
    > test.out 2>&1
eval_tap $? 264 'PublicSendVerificationCodeV3' test.out

#- 265 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "quBXVBC0", "contactType": "bDbpXFNu", "languageTag": "TxsOgSWw", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 265 'PublicUserVerificationV3' test.out

#- 266 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "V0AP0GZt", "country": "lN1FrWhi", "dateOfBirth": "jNIaap5V", "displayName": "67ab0All", "emailAddress": "pD7XzO8i", "password": "JFxIirUf", "uniqueDisplayName": "lzRIpWxq", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 266 'PublicUpgradeHeadlessAccountV3' test.out

#- 267 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'true' \
    --body '{"emailAddress": "L585YMl8", "password": "nJ7tMOnu"}' \
    > test.out 2>&1
eval_tap $? 267 'PublicVerifyHeadlessAccountV3' test.out

#- 268 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "90HvhBUJ", "newPassword": "9s3gZt7A", "oldPassword": "JE1QQQ8X"}' \
    > test.out 2>&1
eval_tap $? 268 'PublicUpdatePasswordV3' test.out

#- 269 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'w9lh5jcW' \
    > test.out 2>&1
eval_tap $? 269 'PublicCreateJusticeUser' test.out

#- 270 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '5QRKFWY4' \
    --redirectUri 'SS5fMIZF' \
    --ticket 'wnfgSQYI' \
    > test.out 2>&1
eval_tap $? 270 'PublicPlatformLinkV3' test.out

#- 271 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'KEdgNj8H' \
    --body '{"platformNamespace": "CwiMADD7"}' \
    > test.out 2>&1
eval_tap $? 271 'PublicPlatformUnlinkV3' test.out

#- 272 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'quy9dzOe' \
    > test.out 2>&1
eval_tap $? 272 'PublicPlatformUnlinkAllV3' test.out

#- 273 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '9fSlihh1' \
    --ticket 'IevPGtLZ' \
    > test.out 2>&1
eval_tap $? 273 'PublicForcePlatformLinkV3' test.out

#- 274 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'Mwpd7xMh' \
    --clientId 'F0Tqhr8g' \
    --redirectUri 'QmLUdR0p' \
    > test.out 2>&1
eval_tap $? 274 'PublicWebLinkPlatform' test.out

#- 275 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId '8h3064mg' \
    --code 'mq54DqwM' \
    --state '7oaClXYb' \
    > test.out 2>&1
eval_tap $? 275 'PublicWebLinkPlatformEstablish' test.out

#- 276 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId '0yhZhOsG' \
    --code 'rvq4YP8l' \
    --state 'R4rFSwSn' \
    > test.out 2>&1
eval_tap $? 276 'PublicProcessWebLinkPlatformV3' test.out

#- 277 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "kHfSOQi1", "userIds": ["7IRgLu2q", "glTD2Zjv", "bQvuRbXa"]}' \
    > test.out 2>&1
eval_tap $? 277 'PublicGetUsersPlatformInfosV3' test.out

#- 278 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "JSeTxUtM", "emailAddress": "Uj0SLhiS", "newPassword": "tCR6YrNB"}' \
    > test.out 2>&1
eval_tap $? 278 'ResetPasswordV3' test.out

#- 279 PublicGetUserByUserIdV3
eval_tap 0 279 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 280 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'EqKXbCK9' \
    --activeOnly 'true' \
    --after 'vtwJqfj2' \
    --before 'fiI4v5Us' \
    --limit '60' \
    > test.out 2>&1
eval_tap $? 280 'PublicGetUserBanHistoryV3' test.out

#- 281 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'DBLs6GHS' \
    > test.out 2>&1
eval_tap $? 281 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 282 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId '1ZeLb7aZ' \
    > test.out 2>&1
eval_tap $? 282 'PublicGetUserInformationV3' test.out

#- 283 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'XESlUi8g' \
    --after '0.24878139460370485' \
    --before '0.3903739572089069' \
    --limit '58' \
    > test.out 2>&1
eval_tap $? 283 'PublicGetUserLoginHistoriesV3' test.out

#- 284 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZjEYCNjX' \
    --after '5wp8daNc' \
    --before 'NIOCnDv0' \
    --limit '49' \
    --platformId '9FJWsb7a' \
    > test.out 2>&1
eval_tap $? 284 'PublicGetUserPlatformAccountsV3' test.out

#- 285 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Yu1dIV5C' \
    > test.out 2>&1
eval_tap $? 285 'PublicListJusticePlatformAccountsV3' test.out

#- 286 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'qRlSyAOb' \
    --body '{"platformId": "Uge0ZiYm", "platformUserId": "Ud4XIoik"}' \
    > test.out 2>&1
eval_tap $? 286 'PublicLinkPlatformAccount' test.out

#- 287 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'uzUczFBn' \
    --body '{"chosenNamespaces": ["w7woenjk", "47mqIEzd", "B6mObOCn"], "requestId": "BxtnjAmV"}' \
    > test.out 2>&1
eval_tap $? 287 'PublicForceLinkPlatformWithProgression' test.out

#- 288 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Wi6vIP5t' \
    > test.out 2>&1
eval_tap $? 288 'PublicGetPublisherUserV3' test.out

#- 289 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ksE3LP6q' \
    --password 'yGfxWqml' \
    > test.out 2>&1
eval_tap $? 289 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 290 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'PjT7n9W9' \
    --before 'lHR0mh3m' \
    --isWildcard 'false' \
    --limit '16' \
    > test.out 2>&1
eval_tap $? 290 'PublicGetRolesV3' test.out

#- 291 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'RHFSDJ8I' \
    > test.out 2>&1
eval_tap $? 291 'PublicGetRoleV3' test.out

#- 292 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'false' \
    > test.out 2>&1
eval_tap $? 292 'PublicGetMyUserV3' test.out

#- 293 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'LzeqlBRa' \
    > test.out 2>&1
eval_tap $? 293 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 294 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["dhXiiOxi", "DnL4zhgw", "X6YBDLbW"], "oneTimeLinkCode": "KtLrjRlT"}' \
    > test.out 2>&1
eval_tap $? 294 'LinkHeadlessAccountToMyAccountV3' test.out

#- 295 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "eakC3Yo1"}' \
    > test.out 2>&1
eval_tap $? 295 'PublicSendVerificationLinkV3' test.out

#- 296 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'XZwE3BrK' \
    > test.out 2>&1
eval_tap $? 296 'PublicVerifyUserByLinkV3' test.out

#- 297 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'TVDbPoYW' \
    --code 'tmqZA6tm' \
    --error '6f8Hvqfi' \
    --state '55X42SHd' \
    > test.out 2>&1
eval_tap $? 297 'PlatformAuthenticateSAMLV3Handler' test.out

#- 298 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'g7y9ty3Y' \
    --payload '5449Fk5F' \
    > test.out 2>&1
eval_tap $? 298 'LoginSSOClient' test.out

#- 299 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'wuV3pBbl' \
    > test.out 2>&1
eval_tap $? 299 'LogoutSSOClient' test.out

#- 300 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 'qmj1MpW7' \
    --code 'CQOmsYPj' \
    > test.out 2>&1
eval_tap $? 300 'RequestTargetTokenResponseV3' test.out

#- 301 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'jlcwmQZL' \
    > test.out 2>&1
eval_tap $? 301 'AdminGetDevicesByUserV4' test.out

#- 302 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'WgFcgcvw' \
    --endDate 'W21nkYVS' \
    --limit '18' \
    --offset '25' \
    --startDate '0NRTYG2k' \
    > test.out 2>&1
eval_tap $? 302 'AdminGetBannedDevicesV4' test.out

#- 303 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId '31HrYs8L' \
    > test.out 2>&1
eval_tap $? 303 'AdminGetUserDeviceBansV4' test.out

#- 304 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "kuNkFOwG", "deviceId": "21GNvgoe", "deviceType": "2HVroarj", "enabled": false, "endDate": "5KmIIqcb", "ext": {"MNG7i2T1": {}, "S9B6LtIE": {}, "yP4Rg5g2": {}}, "reason": "9WWs2Aaa"}' \
    > test.out 2>&1
eval_tap $? 304 'AdminBanDeviceV4' test.out

#- 305 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'TGhmaDOQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 305 'AdminGetDeviceBanV4' test.out

#- 306 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'uPQXhxtM' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 306 'AdminUpdateDeviceBanV4' test.out

#- 307 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'wMu0uoS3' \
    --startDate 'oACwxz2x' \
    --deviceType 'afYoXG89' \
    > test.out 2>&1
eval_tap $? 307 'AdminGenerateReportV4' test.out

#- 308 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 308 'AdminGetDeviceTypesV4' test.out

#- 309 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'K5nCw82L' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 309 'AdminGetDeviceBansV4' test.out

#- 310 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'MCN5kQGq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 310 'AdminDecryptDeviceV4' test.out

#- 311 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'oXXt8cOy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 311 'AdminUnbanDeviceV4' test.out

#- 312 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'iK0K5RcN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 312 'AdminGetUsersByDeviceV4' test.out

#- 313 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 87}' \
    > test.out 2>&1
eval_tap $? 313 'AdminCreateTestUsersV4' test.out

#- 314 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "aNM64iNn", "policyId": "59e1md9r", "policyVersionId": "M33QHEc6"}, {"isAccepted": true, "localizedPolicyVersionId": "0WoGB7jh", "policyId": "PZB0x7wA", "policyVersionId": "8m8Z6bmj"}, {"isAccepted": true, "localizedPolicyVersionId": "kE5kcevF", "policyId": "F6WwwdWZ", "policyVersionId": "x4bExtmU"}], "authType": "EMAILPASSWD", "code": "DN8JZjww", "country": "WX6eP9xb", "dateOfBirth": "LcycaHPZ", "displayName": "VYE7muTM", "emailAddress": "QCBW7gWG", "password": "qdHFb8qi", "passwordMD5Sum": "OIm3LZ8K", "reachMinimumAge": false, "uniqueDisplayName": "dzGd7W7h", "username": "4ojr4o2m"}' \
    > test.out 2>&1
eval_tap $? 314 'AdminCreateUserV4' test.out

#- 315 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": true, "userIds": ["DgJZQhDZ", "y3W2Ols9", "cGyKRUsy"]}' \
    > test.out 2>&1
eval_tap $? 315 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 316 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["HXh11beY", "uuyKUYnA", "WH3Ydf21"]}' \
    > test.out 2>&1
eval_tap $? 316 'AdminBulkCheckValidUserIDV4' test.out

#- 317 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId '5aUTvbAH' \
    --body '{"avatarUrl": "nKrYJAbD", "country": "9IEpQQ5r", "dateOfBirth": "RS0m0xkl", "displayName": "QhcNYxYv", "languageTag": "FSbLpkU2", "skipLoginQueue": false, "uniqueDisplayName": "7Y2HzaKb", "userName": "1TGHNGeJ"}' \
    > test.out 2>&1
eval_tap $? 317 'AdminUpdateUserV4' test.out

#- 318 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ZlQeoMb0' \
    --body '{"code": "szaXuk6N", "emailAddress": "KHHv59PK"}' \
    > test.out 2>&1
eval_tap $? 318 'AdminUpdateUserEmailAddressV4' test.out

#- 319 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'V4nuYf3O' \
    > test.out 2>&1
eval_tap $? 319 'AdminDisableUserMFAV4' test.out

#- 320 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'UtnVC3LP' \
    > test.out 2>&1
eval_tap $? 320 'AdminListUserRolesV4' test.out

#- 321 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'MKcEeYjN' \
    --body '{"assignedNamespaces": ["J4kSGh7B", "KDYuSes9", "QwbWYuQt"], "roleId": "VonOHEQo"}' \
    > test.out 2>&1
eval_tap $? 321 'AdminUpdateUserRoleV4' test.out

#- 322 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'RqcofuZ2' \
    --body '{"assignedNamespaces": ["xILki5RQ", "brn8h9jU", "UHU63npT"], "roleId": "KJO6EAze"}' \
    > test.out 2>&1
eval_tap $? 322 'AdminAddUserRoleV4' test.out

#- 323 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '5r66mw70' \
    --body '{"assignedNamespaces": ["gL0CPTbY", "Wy8ciase", "Uu0t3dtk"], "roleId": "W2dIq2Ci"}' \
    > test.out 2>&1
eval_tap $? 323 'AdminRemoveUserRoleV4' test.out

#- 324 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'true' \
    --limit '25' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 324 'AdminGetRolesV4' test.out

#- 325 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": true, "roleName": "ZyhX93Kb"}' \
    > test.out 2>&1
eval_tap $? 325 'AdminCreateRoleV4' test.out

#- 326 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId '3aEhJT3T' \
    > test.out 2>&1
eval_tap $? 326 'AdminGetRoleV4' test.out

#- 327 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId '0Uu45NN8' \
    > test.out 2>&1
eval_tap $? 327 'AdminDeleteRoleV4' test.out

#- 328 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'xU1dC1MA' \
    --body '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "HBXRWGHu"}' \
    > test.out 2>&1
eval_tap $? 328 'AdminUpdateRoleV4' test.out

#- 329 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'kIBF5kuz' \
    --body '{"permissions": [{"action": 69, "resource": "inSMJPLr", "schedAction": 59, "schedCron": "3L1DoiaZ", "schedRange": ["K5ERyoCN", "7FgdbzRp", "BmPSXJyA"]}, {"action": 89, "resource": "klQFxRnZ", "schedAction": 16, "schedCron": "nx7ydC0X", "schedRange": ["N49Yx9hT", "COEKrbsT", "LqbJpCva"]}, {"action": 97, "resource": "Nd7G1Mgx", "schedAction": 63, "schedCron": "kCvGT50Q", "schedRange": ["QwxJWem2", "vaA7Tr8y", "Jshc9CNP"]}]}' \
    > test.out 2>&1
eval_tap $? 329 'AdminUpdateRolePermissionsV4' test.out

#- 330 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId '8BgeEmni' \
    --body '{"permissions": [{"action": 55, "resource": "uwrISTrx", "schedAction": 88, "schedCron": "zmWiPLeD", "schedRange": ["gMsCVJGH", "1Lv3sv9r", "SHhVXDgp"]}, {"action": 40, "resource": "slDkQJBX", "schedAction": 65, "schedCron": "cBkG6vxp", "schedRange": ["JCw67d0X", "ajMywo9b", "vqn1YumU"]}, {"action": 57, "resource": "SZQevUWC", "schedAction": 57, "schedCron": "r4xdNWeC", "schedRange": ["Wugyihaj", "OuRRxmn1", "sPPjDpL5"]}]}' \
    > test.out 2>&1
eval_tap $? 330 'AdminAddRolePermissionsV4' test.out

#- 331 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'YX9ztP4E' \
    --body '["LT6FYbO1", "JLAOMyrj", "KoDJW8s5"]' \
    > test.out 2>&1
eval_tap $? 331 'AdminDeleteRolePermissionsV4' test.out

#- 332 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'uczpeQNm' \
    --after 'IXjupSnu' \
    --before 'gpYXzSwz' \
    --limit '7' \
    > test.out 2>&1
eval_tap $? 332 'AdminListAssignedUsersV4' test.out

#- 333 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'QIyWRMQ9' \
    --body '{"assignedNamespaces": ["hfrSixSk", "e0Hf4XYR", "8CALyGxV"], "namespace": "i0Z7ffbD", "userId": "DvLVwITM"}' \
    > test.out 2>&1
eval_tap $? 333 'AdminAssignUserToRoleV4' test.out

#- 334 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'XSjgYRHy' \
    --body '{"namespace": "qEEySgth", "userId": "CGc6wqu3"}' \
    > test.out 2>&1
eval_tap $? 334 'AdminRevokeUserFromRoleV4' test.out

#- 335 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["TmfpAO9Z", "nsAnS4g5", "g4ZIxnZU"], "emailAddresses": ["qzvDumlA", "4kJY6CKF", "NBH9zdmX"], "isAdmin": true, "isNewStudio": false, "namespace": "roxQY1Dp", "roleId": "McQdoVmb"}' \
    > test.out 2>&1
eval_tap $? 335 'AdminInviteUserNewV4' test.out

#- 336 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "qbOsn2md", "country": "8cUzkxC4", "dateOfBirth": "bJ80yQhG", "displayName": "izR4B2WL", "languageTag": "pTBxDFkK", "skipLoginQueue": true, "uniqueDisplayName": "cjb2ZneG", "userName": "ZaC0aC1h"}' \
    > test.out 2>&1
eval_tap $? 336 'AdminUpdateMyUserV4' test.out

#- 337 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 337 'AdminDisableMyAuthenticatorV4' test.out

#- 338 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code '7NWJ5Hzi' \
    > test.out 2>&1
eval_tap $? 338 'AdminEnableMyAuthenticatorV4' test.out

#- 339 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 339 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 340 AdminGetMyBackupCodesV4
eval_tap 0 340 'AdminGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 341 AdminGenerateMyBackupCodesV4
eval_tap 0 341 'AdminGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 342 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 342 'AdminDisableMyBackupCodesV4' test.out

#- 343 AdminDownloadMyBackupCodesV4
eval_tap 0 343 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 344 AdminEnableMyBackupCodesV4
eval_tap 0 344 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 345 AdminGetBackupCodesV4
samples/cli/sample-apps Iam adminGetBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 345 'AdminGetBackupCodesV4' test.out

#- 346 AdminGenerateBackupCodesV4
samples/cli/sample-apps Iam adminGenerateBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 346 'AdminGenerateBackupCodesV4' test.out

#- 347 AdminEnableBackupCodesV4
samples/cli/sample-apps Iam adminEnableBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 347 'AdminEnableBackupCodesV4' test.out

#- 348 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    > test.out 2>&1
eval_tap $? 348 'AdminSendMyMFAEmailCodeV4' test.out

#- 349 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    > test.out 2>&1
eval_tap $? 349 'AdminDisableMyEmailV4' test.out

#- 350 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'dFD7JGbb' \
    > test.out 2>&1
eval_tap $? 350 'AdminEnableMyEmailV4' test.out

#- 351 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 351 'AdminGetMyEnabledFactorsV4' test.out

#- 352 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'wEP9sS9G' \
    > test.out 2>&1
eval_tap $? 352 'AdminMakeFactorMyDefaultV4' test.out

#- 353 AdminInviteUserV4
eval_tap 0 353 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 354 AuthenticationWithPlatformLinkV4
samples/cli/sample-apps Iam authenticationWithPlatformLinkV4 \
    --extendExp 'true' \
    --clientId '8b6wvvKq' \
    --linkingToken '8Qx1hMoI' \
    --password 'T6gwCbkO' \
    --username 'BWVqT68l' \
    > test.out 2>&1
eval_tap $? 354 'AuthenticationWithPlatformLinkV4' test.out

#- 355 GenerateTokenByNewHeadlessAccountV4
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV4 \
    --additionalData '0SNfeBC6' \
    --extendExp 'false' \
    --linkingToken 'Q7dusuE6' \
    > test.out 2>&1
eval_tap $? 355 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 356 Verify2faCodeV4
samples/cli/sample-apps Iam verify2faCodeV4 \
    --code 'wyfavwjr' \
    --factor 'ysRtfKPh' \
    --mfaToken 'dlECW81f' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 356 'Verify2faCodeV4' test.out

#- 357 PlatformTokenGrantV4
samples/cli/sample-apps Iam platformTokenGrantV4 \
    --platformId 'rCxfvi3p' \
    --codeChallenge 'fvBghHkN' \
    --codeChallengeMethod 'plain' \
    --additionalData '9OqeozLr' \
    --clientId 'SmGAGdt0' \
    --createHeadless 'false' \
    --deviceId 'lHK0RZP2' \
    --macAddress '5rqdXXXT' \
    --platformToken 'R0RjKoaG' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 357 'PlatformTokenGrantV4' test.out

#- 358 SimultaneousLoginV4
samples/cli/sample-apps Iam simultaneousLoginV4 \
    --codeChallenge 'NR177JPI' \
    --codeChallengeMethod 'plain' \
    --simultaneousPlatform 'pspc' \
    --simultaneousTicket '35FFohqu' \
    --nativePlatform 'epicgames' \
    --nativePlatformTicket 'GBFob5cX' \
    > test.out 2>&1
eval_tap $? 358 'SimultaneousLoginV4' test.out

#- 359 TokenGrantV4
samples/cli/sample-apps Iam tokenGrantV4 \
    --codeChallenge '9Rbhaan4' \
    --codeChallengeMethod 'S256' \
    --additionalData 'hKzt6W7F' \
    --clientId 'FExgHiGF' \
    --code 'GoEqj1qI' \
    --codeVerifier 'iWTVyCFD' \
    --extendNamespace 'BTk01O1Q' \
    --extendExp 'true' \
    --loginQueueTicket 'eLc56D5E' \
    --password 'sOTC62WU' \
    --redirectUri 'tcJ0al6V' \
    --refreshToken 'Hqu2dLLb' \
    --username 't1Qncfu0' \
    --grantType 'client_credentials' \
    > test.out 2>&1
eval_tap $? 359 'TokenGrantV4' test.out

#- 360 RequestTargetTokenResponseV4
samples/cli/sample-apps Iam requestTargetTokenResponseV4 \
    --additionalData 'SFqk72SC' \
    --code 'R3yNu1pO' \
    > test.out 2>&1
eval_tap $? 360 'RequestTargetTokenResponseV4' test.out

#- 361 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "l1J6pVvc", "policyId": "UgwGcdCf", "policyVersionId": "KmY5yyp5"}, {"isAccepted": true, "localizedPolicyVersionId": "0kcteBHg", "policyId": "lJO10JPr", "policyVersionId": "M6sCgASH"}, {"isAccepted": true, "localizedPolicyVersionId": "q7cMmLwP", "policyId": "ILqjc2Yv", "policyVersionId": "ovOyKa3R"}], "authType": "EMAILPASSWD", "country": "J8SfHw4q", "dateOfBirth": "2GFM6o4u", "displayName": "F52dHC2w", "emailAddress": "i6eJldGM", "password": "843lzElN", "passwordMD5Sum": "0kabuFiq", "uniqueDisplayName": "x4yjcx5W", "username": "xY1mgdnH", "verified": false}' \
    > test.out 2>&1
eval_tap $? 361 'PublicCreateTestUserV4' test.out

#- 362 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "GRW5F8ep", "policyId": "KWxOhfA6", "policyVersionId": "ZcqfJWQd"}, {"isAccepted": false, "localizedPolicyVersionId": "p5ktXPs4", "policyId": "wTlLGQ3M", "policyVersionId": "ch7xwL90"}, {"isAccepted": true, "localizedPolicyVersionId": "GDCpWjBi", "policyId": "wZa4vSDB", "policyVersionId": "sPAxXFJs"}], "authType": "EMAILPASSWD", "code": "RGVtcoaR", "country": "myIsBHoD", "dateOfBirth": "tUyeFnCS", "displayName": "AXaDhMgK", "emailAddress": "pG1spXRD", "password": "XPfTcYuZ", "passwordMD5Sum": "olfcRAME", "reachMinimumAge": false, "uniqueDisplayName": "SJARBTGv", "username": "LdLqAZ6B"}' \
    > test.out 2>&1
eval_tap $? 362 'PublicCreateUserV4' test.out

#- 363 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'D68nfmqs' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "V7LjMCVV", "policyId": "pRzeIkva", "policyVersionId": "PpOeYTno"}, {"isAccepted": true, "localizedPolicyVersionId": "3B4qtqOz", "policyId": "2xX50RC6", "policyVersionId": "KyHP4DMO"}, {"isAccepted": false, "localizedPolicyVersionId": "Gb6g6boC", "policyId": "kKHSJSs6", "policyVersionId": "3qNLpQFt"}], "authType": "EMAILPASSWD", "code": "tXjSMOJd", "country": "XRHnXPmE", "dateOfBirth": "jaAfLtQ6", "displayName": "9do4XXPD", "emailAddress": "xxr42uHp", "password": "if9fDs0r", "passwordMD5Sum": "YiinvBnc", "reachMinimumAge": true, "uniqueDisplayName": "EOoMCqRi", "username": "Z8VXHBi7"}' \
    > test.out 2>&1
eval_tap $? 363 'CreateUserFromInvitationV4' test.out

#- 364 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "GJsGAxoE", "country": "TOaBlTMj", "dateOfBirth": "dt261lBR", "displayName": "eIYIndjU", "languageTag": "kYItcZRL", "uniqueDisplayName": "iqXrh9C4", "userName": "Ufok5TZn"}' \
    > test.out 2>&1
eval_tap $? 364 'PublicUpdateUserV4' test.out

#- 365 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "6isji9ek", "emailAddress": "9C9b3MKc"}' \
    > test.out 2>&1
eval_tap $? 365 'PublicUpdateUserEmailAddressV4' test.out

#- 366 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "bnkqtbom", "country": "6eQC0EuR", "dateOfBirth": "2Ur0oaNI", "displayName": "Hy89sgsW", "emailAddress": "RRWxXfWh", "password": "iBClZrLW", "reachMinimumAge": false, "uniqueDisplayName": "uV348BSZ", "username": "NOkbewsS", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 366 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 367 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "o8rSSYBO", "password": "UqobrPys", "username": "xqkhHMkC"}' \
    > test.out 2>&1
eval_tap $? 367 'PublicUpgradeHeadlessAccountV4' test.out

#- 368 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 368 'PublicDisableMyAuthenticatorV4' test.out

#- 369 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'i0bqzDhL' \
    > test.out 2>&1
eval_tap $? 369 'PublicEnableMyAuthenticatorV4' test.out

#- 370 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 370 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 371 PublicGetMyBackupCodesV4
eval_tap 0 371 'PublicGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 372 PublicGenerateMyBackupCodesV4
eval_tap 0 372 'PublicGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 373 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 373 'PublicDisableMyBackupCodesV4' test.out

#- 374 PublicDownloadMyBackupCodesV4
eval_tap 0 374 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 375 PublicEnableMyBackupCodesV4
eval_tap 0 375 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 376 PublicGetBackupCodesV4
samples/cli/sample-apps Iam publicGetBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 376 'PublicGetBackupCodesV4' test.out

#- 377 PublicGenerateBackupCodesV4
samples/cli/sample-apps Iam publicGenerateBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 377 'PublicGenerateBackupCodesV4' test.out

#- 378 PublicEnableBackupCodesV4
samples/cli/sample-apps Iam publicEnableBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 378 'PublicEnableBackupCodesV4' test.out

#- 379 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 379 'PublicRemoveTrustedDeviceV4' test.out

#- 380 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 380 'PublicSendMyMFAEmailCodeV4' test.out

#- 381 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 381 'PublicDisableMyEmailV4' test.out

#- 382 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code '9xzbjdKl' \
    > test.out 2>&1
eval_tap $? 382 'PublicEnableMyEmailV4' test.out

#- 383 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 383 'PublicGetMyEnabledFactorsV4' test.out

#- 384 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'VDUMrqKa' \
    > test.out 2>&1
eval_tap $? 384 'PublicMakeFactorMyDefaultV4' test.out

#- 385 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'VmUxB8VG' \
    > test.out 2>&1
eval_tap $? 385 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 386 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "iTSIyIqe", "emailAddress": "JbVXKNT9", "namespace": "nUY8gSYs", "namespaceDisplayName": "nOEPFP5y"}' \
    > test.out 2>&1
eval_tap $? 386 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE